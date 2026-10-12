Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/operators.ompif?download=true
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@rebuild_lambda:bb.a
  br i1 %i.dt, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge166
  %i.du = icmp eq i32 %1, 0
  br i1 %i.du, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %1, double noundef %.0144.lcssa) ; 0 uses
  %i.dw = load ptr, ptr @stdout, align 8, !tbaa !42
  %i.dx = tail call i32 @fflush(ptr noundef %i.dw) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge166
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.b
  store double %.0144.lcssa, ptr %i.dz, align 8, !tbaa !28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @smooth(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %i.d = load i32, ptr %i.c, align 4, !tbaa !103  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1                     ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exchange_boundary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = zext i1 %i.e to i32                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.b
  %i.j = sext i32 %3 to i64
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge226
  %.0207227 = phi i32 [ 0, %bb.c ], [ %i.kl, %._crit_edge226 ] ; 4 uses
  %i.m = and i32 %.0207227, 1
  %i.n = icmp eq i32 %i.m, 0
  %. = select i1 %i.n, i32 %2, i32 10
  tail call void @exchange_boundary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %., i32 noundef 1, i32 noundef %i.f, i32 noundef %i.f)
  %i.o = tail call i64 (...) @CycleTime() #10
  %i.p = load i32, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph225, label %._crit_edge226

.lr.ph225:                                        ; preds = %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph225, %._crit_edge222
  %indvars.iv240 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next241, %._crit_edge222 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.r, i64 %indvars.iv240
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds [216 x i8], ptr %i.u, i64 %i.b ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load <2 x i32>, ptr %i.w, align 8, !tbaa !7 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !36   ; 16 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !39 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26 ; 8 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.j
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27 ; 3 uses
  %i.ak = extractelement <2 x i32> %i.x, i64 0    ; 12 uses
  %i.al = add i32 %i.ak, 1
  %i.am = extractelement <2 x i32> %i.x, i64 1    ; 12 uses
  %i.an = add i32 %i.al, %i.am                    ; 3 uses
  %i.ao = mul i32 %i.z, %i.an
  %i.ap = sext i32 %i.ao to i64                   ; 11 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !27 ; 3 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27 ; 5 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ap ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 5 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ap ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 5 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ap ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27 ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ap ; 2 uses
  %i.bg = add nsw i32 %i.z, %.0207227
  %i.bh = icmp sgt i32 %i.z, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge222

.lr.ph:                                           ; preds = %bb.e
  %i.bi = load double, ptr %i.i, align 8, !tbaa !28 ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fdiv double 1.000000e+00, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.k ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 2 uses
  %i.bn = fmul double %5, %i.bk                   ; 2 uses
  %i.bo = sub nsw i32 1, %i.z                     ; 3 uses
  %i.bp = add i32 %i.af, -1
  %i.bq = add i32 %i.bp, %i.z
  %i.br = add i32 %i.ae, -1
  %i.bs = add i32 %i.br, %i.z
  %i.bt = add i32 %i.ac, -1
  %i.bu = add i32 %i.bt, %i.z
  %i.bv = add i32 %i.af, -3
  %i.bw = shl nuw i32 %i.z, 1
  %i.bx = add i32 %i.bv, %i.bw
  %i.by = add i32 %i.am, %i.ak
  %i.bz = mul i32 %i.by, %i.bo
  %i.ca = add <2 x i32> %i.x, splat (i32 1)
  %i.cb = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.cc = shufflevector <4 x i32> %i.cb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cd = shufflevector <2 x i32> %i.ca, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>, <4 x i32> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cf = add <4 x i32> %i.cc, %i.ce
  %i.cg = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ci = sub <4 x i32> %i.cf, %i.ch              ; 2 uses
  %i.cj = shl nsw i64 %i.ap, 3                    ; 28 uses
  %i.ck = add i32 %i.am, %i.ak
  %i.cl = mul i32 %i.ck, %i.bo                    ; 4 uses
  %i.cm = add i32 %i.cl, 1
  %i.cn = sub i32 %i.cm, %i.z
  %i.co = add i32 %i.af, -3
  %i.cp = shl nuw i32 %i.z, 1
  %i.cq = add i32 %i.co, %i.cp
  %scevgep260 = getelementptr i8, ptr %i.as, i64 %i.cj
  %scevgep262 = getelementptr i8, ptr %i.as, i64 8
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.cj
  %i.cr = sext i32 %i.am to i64
  %i.cs = sub nsw i64 %i.ap, %i.cr
  %i.ct = shl nsw i64 %i.cs, 3                    ; 2 uses
  %i.cu = add i32 %i.am, 1
  %i.cv = add i32 %i.cu, %i.cl
  %i.cw = sub i32 %i.cv, %i.z
  %i.cx = sext i32 %i.ak to i64
  %i.cy = sub nsw i64 %i.ap, %i.cx
  %i.cz = shl nsw i64 %i.cy, 3                    ; 2 uses
  %i.da = add i32 %i.ak, 1
  %i.db = add i32 %i.da, %i.cl
  %i.dc = sub i32 %i.db, %i.z
  %i.dd = add i32 %i.cl, 2
  %i.de = sub i32 %i.dd, %i.z
  %scevgep303 = getelementptr i8, ptr %i.av, i64 %i.cj
  %scevgep305 = getelementptr i8, ptr %i.av, i64 8
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.cj
  %scevgep309 = getelementptr i8, ptr %i.av, i64 %i.cj
  %scevgep311 = getelementptr i8, ptr %i.av, i64 8
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.cj
  %scevgep315 = getelementptr i8, ptr %i.ay, i64 %i.cj
  %scevgep317 = getelementptr i8, ptr %i.ay, i64 8
  %scevgep318 = getelementptr i8, ptr %scevgep317, i64 %i.cj
  %scevgep321 = getelementptr i8, ptr %i.ay, i64 %i.cj
  %scevgep323 = getelementptr i8, ptr %i.ay, i64 8
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.cj
  %scevgep327 = getelementptr i8, ptr %i.bb, i64 %i.cj
  %scevgep329 = getelementptr i8, ptr %i.bb, i64 8
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.cj
  %scevgep333 = getelementptr i8, ptr %i.bb, i64 %i.cj
  %scevgep335 = getelementptr i8, ptr %i.bb, i64 8
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.cj
  %scevgep339 = getelementptr i8, ptr %i.be, i64 %i.cj
  %scevgep341 = getelementptr i8, ptr %i.be, i64 8
  %scevgep342 = getelementptr i8, ptr %scevgep341, i64 %i.cj
  %scevgep345 = getelementptr i8, ptr %i.aj, i64 %i.cj
  %scevgep347 = getelementptr i8, ptr %i.aj, i64 8
  %scevgep348 = getelementptr i8, ptr %scevgep347, i64 %i.cj
  %6 = add i32 %i.af, -3
  %7 = shl nuw i32 %i.z, 1
  %i.df = add i32 %6, %7
  %broadcast.splatinsert406 = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat407 = shufflevector <2 x double> %broadcast.splatinsert406, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %._crit_edge215.split
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %._crit_edge215.split ] ; 6 uses
  %indvars.iv237 = phi i32 [ %i.bu, %.lr.ph ], [ %indvars.iv.next238, %._crit_edge215.split ] ; 2 uses
  %indvars.iv234 = phi i32 [ %i.bs, %.lr.ph ], [ %indvars.iv.next235, %._crit_edge215.split ] ; 2 uses
  %indvars.iv232 = phi i32 [ %i.bq, %.lr.ph ], [ %indvars.iv.next233, %._crit_edge215.split ] ; 2 uses
  %indvars.iv = phi i32 [ %i.bo, %.lr.ph ], [ %indvars.iv.next, %._crit_edge215.split ] ; 3 uses
  %.0202.in219 = phi i32 [ %i.z, %.lr.ph ], [ %.0202220, %._crit_edge215.split ] ; 2 uses
  %.0203218 = phi i32 [ %.0207227, %.lr.ph ], [ %i.kf, %._crit_edge215.split ] ; 2 uses
  %8 = shl i32 %indvar, 1
  %9 = sub i32 %i.df, %8                          ; 2 uses
  %i.dg = mul i32 %i.an, %indvar                  ; 4 uses
  %i.dh = add i32 %i.cn, %i.dg
  %i.di = shl i32 %indvar, 1
  %i.dj = sub i32 %i.cq, %i.di
  %i.dk = zext i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 3                ; 16 uses
  %i.dm = add i32 %i.cw, %i.dg
  %i.dn = add i32 %i.dc, %i.dg
  %i.do = add i32 %i.de, %i.dg
  %i.dp = shl i32 %indvar, 1
  %i.dq = sub i32 %i.bx, %i.dp
  %i.dr = mul i32 %i.an, %indvar
  %i.ds = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.dt = zext i32 %indvars.iv to i64             ; 4 uses
  %.0202220 = add nsw i32 %.0202.in219, -1        ; 4 uses
  %i.du = and i32 %.0203218, 1
  %i.dv = icmp eq i32 %i.du, 0                    ; 2 uses
  %.pn.in = select i1 %i.dv, ptr %i.bl, ptr %i.bm
  %.pn209.in = select i1 %i.dv, ptr %i.bm, ptr %i.bl
  %.pn209 = load ptr, ptr %.pn209.in, align 8, !tbaa !27 ; 3 uses
  %.0 = getelementptr inbounds [8 x i8], ptr %.pn209, i64 %i.ap ; 2 uses
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !27 ; 13 uses
  %.0201 = getelementptr inbounds [8 x i8], ptr %.pn, i64 %i.ap ; 12 uses
  %i.dw = sub nsw i32 1, %.0202.in219             ; 5 uses
  %i.dx = add nsw i32 %.0202220, %i.ac
  %i.dy = icmp slt i32 %i.dw, %i.dx
  br i1 %i.dy, label %.preheader210.lr.ph, label %._crit_edge215.split

.preheader210.lr.ph:                              ; preds = %bb.f
  %i.dz = add nsw i32 %.0202220, %i.ae
  %i.ea = icmp sge i32 %i.dw, %i.dz
  %i.eb = add nsw i32 %.0202220, %i.af
  %i.ec = icmp sge i32 %i.dw, %i.eb
  %brmerge = select i1 %i.ea, i1 true, i1 %i.ec
  br i1 %brmerge, label %._crit_edge215.split, label %.preheader210.preheader

.preheader210.preheader:                          ; preds = %.preheader210.lr.ph
  %scevgep = getelementptr i8, ptr %.pn209, i64 %i.cj
  %scevgep256 = getelementptr i8, ptr %.pn209, i64 8
  %scevgep257 = getelementptr i8, ptr %scevgep256, i64 %i.cj
  %scevgep258 = getelementptr i8, ptr %scevgep257, i64 %i.dl
  %scevgep264 = getelementptr i8, ptr %scevgep263, i64 %i.dl
  %scevgep266 = getelementptr i8, ptr %.pn, i64 %i.ct
  %scevgep268 = getelementptr i8, ptr %.pn, i64 8
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %i.ct
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.dl
  %scevgep272 = getelementptr i8, ptr %.pn, i64 %i.cj
  %scevgep274 = getelementptr i8, ptr %.pn, i64 8
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.cj
  %scevgep276 = getelementptr i8, ptr %scevgep275, i64 %i.dl
  %scevgep278 = getelementptr i8, ptr %.pn, i64 %i.cz
  %scevgep280 = getelementptr i8, ptr %.pn, i64 8
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %i.cz
  %scevgep282 = getelementptr i8, ptr %scevgep281, i64 %i.dl
  %scevgep284 = getelementptr i8, ptr %.pn, i64 %i.cj
  %scevgep286 = getelementptr i8, ptr %.pn, i64 8
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %i.cj
  %scevgep288 = getelementptr i8, ptr %scevgep287, i64 %i.dl
  %scevgep290 = getelementptr i8, ptr %.pn, i64 -8
  %scevgep291 = getelementptr i8, ptr %scevgep290, i64 %i.cj
  %scevgep293 = getelementptr i8, ptr %.pn, i64 8
  %scevgep294 = getelementptr i8, ptr %scevgep293, i64 %i.cj
  %scevgep295 = getelementptr i8, ptr %scevgep294, i64 %i.dl
  %scevgep297 = getelementptr i8, ptr %.pn, i64 %i.cj
  %scevgep299 = getelementptr i8, ptr %.pn, i64 8
  %scevgep300 = getelementptr i8, ptr %scevgep299, i64 %i.cj
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.dl
  %scevgep307 = getelementptr i8, ptr %scevgep306, i64 %i.dl
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.dl
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.dl
  %scevgep325 = getelementptr i8, ptr %scevgep324, i64 %i.dl
  %scevgep331 = getelementptr i8, ptr %scevgep330, i64 %i.dl
  %scevgep337 = getelementptr i8, ptr %scevgep336, i64 %i.dl
  %scevgep343 = getelementptr i8, ptr %scevgep342, i64 %i.dl
  %scevgep349 = getelementptr i8, ptr %scevgep348, i64 %i.dl
  %i.ed = insertelement <4 x i32> poison, i32 %i.dq, i64 0
  %i.ee = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ef = zext i32 %9 to i64
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %9, 5
  %invariant.op423 = add <4 x i32> %i.ci, %i.ee
  %n.vec = and i64 %i.eg, 8589934590              ; 3 uses
  %i.eh = add nuw nsw i64 %n.vec, %i.dt
  %cmp.n = icmp eq i64 %i.eg, %n.vec
  br label %.preheader210

.preheader210:                                    ; preds = %.preheader210.preheader, %._crit_edge213
  %indvar251 = phi i32 [ 0, %.preheader210.preheader ], [ %indvar.next252, %._crit_edge213 ] ; 3 uses
  %.0204214 = phi i32 [ %i.dw, %.preheader210.preheader ], [ %i.ke, %._crit_edge213 ] ; 2 uses
  %i.ei = mul i32 %i.am, %indvar251               ; 4 uses
  %i.ej = add i32 %i.dh, %i.ei
  %i.ek = add i32 %i.dm, %i.ei
  %i.el = add i32 %i.dn, %i.ei
  %i.em = add i32 %i.do, %i.ei
  %i.en = mul i32 %i.am, %indvar251
  %i.eo = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %i.ep = add <4 x i32> %i.eo, %i.ds
  %i.eq = mul nsw i32 %.0204214, %i.am
  br label %.preheader

.preheader:                                       ; preds = %.preheader210, %._crit_edge
  %indvar253 = phi i32 [ 0, %.preheader210 ], [ %indvar.next254, %._crit_edge ] ; 3 uses
  %.0205212 = phi i32 [ %i.dw, %.preheader210 ], [ %i.kd, %._crit_edge ] ; 2 uses
  %i.er = mul i32 %i.ak, %indvar253               ; 4 uses
  %i.es = add i32 %i.ej, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = shl nsw i64 %i.et, 3                    ; 20 uses
  %scevgep255 = getelementptr i8, ptr %scevgep, i64 %i.eu ; 15 uses
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.eu ; 15 uses
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %i.eu
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.eu
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.eu
  %scevgep271 = getelementptr i8, ptr %scevgep270, i64 %i.eu
  %i.ev = add i32 %i.ek, %i.er
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 3                    ; 4 uses
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.ex
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.ex
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.eu
  %scevgep283 = getelementptr i8, ptr %scevgep282, i64 %i.eu
  %i.ey = add i32 %i.el, %i.er
  %i.ez = sext i32 %i.ey to i64
  %i.fa = shl nsw i64 %i.ez, 3                    ; 4 uses
  %scevgep285 = getelementptr i8, ptr %scevgep284, i64 %i.fa
  %scevgep289 = getelementptr i8, ptr %scevgep288, i64 %i.fa
  %scevgep292 = getelementptr i8, ptr %scevgep291, i64 %i.eu
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.eu
  %i.fb = add i32 %i.em, %i.er
  %i.fc = sext i32 %i.fb to i64
  %i.fd = shl nsw i64 %i.fc, 3                    ; 4 uses
  %scevgep298 = getelementptr i8, ptr %scevgep297, i64 %i.fd
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.fd
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.eu
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.eu
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.fd
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.fd
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.eu
  %scevgep320 = getelementptr i8, ptr %scevgep319, i64 %i.eu
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.fa
  %scevgep326 = getelementptr i8, ptr %scevgep325, i64 %i.fa
  %scevgep328 = getelementptr i8, ptr %scevgep327, i64 %i.eu
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.eu
  %scevgep334 = getelementptr i8, ptr %scevgep333, i64 %i.ex
  %scevgep338 = getelementptr i8, ptr %scevgep337, i64 %i.ex
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %i.eu
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.eu
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.eu
  %scevgep350 = getelementptr i8, ptr %scevgep349, i64 %i.eu
  %i.fe = mul nsw i32 %.0205212, %i.ak
  %i.ff = add i32 %i.fe, %i.eq                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.fg = mul i32 %i.ak, %indvar253
  %i.fh = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %i.fi = add <4 x i32> %i.fh, %i.ep
  %i.fj = shufflevector <4 x i32> %i.fi, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fk = add <4 x i32> %i.fj, %i.ci
  %.reass424 = add <4 x i32> %i.fj, %invariant.op423
  %i.fl = icmp slt <4 x i32> %.reass424, %i.fk
  %i.fm = bitcast <4 x i1> %i.fl to i4
  %.not = icmp eq i4 %i.fm, 0
  br i1 %.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep255, %scevgep265
  %bound1 = icmp ult ptr %scevgep261, %scevgep259
  %found.conflict = and i1 %bound0, %bound1
  %bound0351 = icmp ult ptr %scevgep255, %scevgep271
  %bound1352 = icmp ult ptr %scevgep267, %scevgep259
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx = or i1 %found.conflict, %found.conflict353
  %bound0354 = icmp ult ptr %scevgep255, %scevgep277
  %bound1355 = icmp ult ptr %scevgep273, %scevgep259
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx, %found.conflict356
  %bound0358 = icmp ult ptr %scevgep255, %scevgep283
  %bound1359 = icmp ult ptr %scevgep279, %scevgep259
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %conflict.rdx357, %found.conflict360
  %bound0362 = icmp ult ptr %scevgep255, %scevgep289
  %bound1363 = icmp ult ptr %scevgep285, %scevgep259
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx361, %found.conflict364
  %bound0366 = icmp ult ptr %scevgep255, %scevgep296
  %bound1367 = icmp ult ptr %scevgep292, %scevgep259
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  %bound0370 = icmp ult ptr %scevgep255, %scevgep302
  %bound1371 = icmp ult ptr %scevgep298, %scevgep259
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  %bound0374 = icmp ult ptr %scevgep255, %scevgep308
  %bound1375 = icmp ult ptr %scevgep304, %scevgep259
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  %bound0378 = icmp ult ptr %scevgep255, %scevgep314
  %bound1379 = icmp ult ptr %scevgep310, %scevgep259
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %conflict.rdx377, %found.conflict380
  %bound0382 = icmp ult ptr %scevgep255, %scevgep320
  %bound1383 = icmp ult ptr %scevgep316, %scevgep259
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx381, %found.conflict384
  %bound0386 = icmp ult ptr %scevgep255, %scevgep326
  %bound1387 = icmp ult ptr %scevgep322, %scevgep259
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx389 = or i1 %conflict.rdx385, %found.conflict388
  %bound0390 = icmp ult ptr %scevgep255, %scevgep332
  %bound1391 = icmp ult ptr %scevgep328, %scevgep259
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %conflict.rdx389, %found.conflict392
  %bound0394 = icmp ult ptr %scevgep255, %scevgep338
  %bound1395 = icmp ult ptr %scevgep334, %scevgep259
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict396
  %bound0398 = icmp ult ptr %scevgep255, %scevgep344
  %bound1399 = icmp ult ptr %scevgep340, %scevgep259
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %conflict.rdx397, %found.conflict400
  %bound0402 = icmp ult ptr %scevgep255, %scevgep350
  %bound1403 = icmp ult ptr %scevgep346, %scevgep259
  %found.conflict404 = and i1 %bound0402, %bound1403
  %conflict.rdx405 = or i1 %conflict.rdx401, %found.conflict404
  br i1 %conflict.rdx405, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %invariant.op = add i32 %indvars.iv, %i.ff
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = trunc i64 %index to i32
  %.reass = add i32 %i.fn, %invariant.op          ; 6 uses
  %i.fo = sext i32 %.reass to i64                 ; 8 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.fo
  %wide.load = load <2 x double>, ptr %i.fp, align 8, !tbaa !28, !alias.scope !104
  %i.fq = fmul <2 x double> %broadcast.splat, %wide.load
  %i.fr = getelementptr inbounds [8 x i8], ptr %.0201, i64 %i.fo ; 2 uses
  %wide.load408 = load <2 x double>, ptr %i.fr, align 8, !tbaa !28, !alias.scope !105 ; 8 uses
  %i.fs = add nsw i32 %.reass, 1
  %i.ft = sext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ft
  %wide.load409 = load <2 x double>, ptr %i.fu, align 8, !tbaa !28, !alias.scope !106
  %i.fv = getelementptr inbounds [8 x i8], ptr %.0201, i64 %i.ft
  %wide.load410 = load <2 x double>, ptr %i.fv, align 8, !tbaa !28, !alias.scope !107
  %i.fw = fsub <2 x double> %wide.load410, %wide.load408
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.fo
  %wide.load411 = load <2 x double>, ptr %i.fx, align 8, !tbaa !28, !alias.scope !108
  %i.fy = getelementptr i8, ptr %i.fr, i64 -8
  %wide.load412 = load <2 x double>, ptr %i.fy, align 8, !tbaa !28, !alias.scope !105
  %i.fz = fsub <2 x double> %wide.load408, %wide.load412
  %i.ga = fneg <2 x double> %i.fz
  %i.gb = fmul <2 x double> %wide.load411, %i.ga
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load409, <2 x double> %i.fw, <2 x double> %i.gb)
  %i.gd = add nsw i32 %.reass, %i.ak
  %i.ge = sext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ge
  %wide.load413 = load <2 x double>, ptr %i.gf, align 8, !tbaa !28, !alias.scope !109
  %i.gg = getelementptr inbounds [8 x i8], ptr %.0201, i64 %i.ge
  %wide.load414 = load <2 x double>, ptr %i.gg, align 8, !tbaa !28, !alias.scope !110
  %i.gh = fsub <2 x double> %wide.load414, %wide.load408
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load413, <2 x double> %i.gh, <2 x double> %i.gc)
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.fo
  %wide.load415 = load <2 x double>, ptr %i.gj, align 8, !tbaa !28, !alias.scope !111
  %i.gk = sub nsw i32 %.reass, %i.ak
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0201, i64 %i.gl
  %wide.load416 = load <2 x double>, ptr %i.gm, align 8, !tbaa !28, !alias.scope !112
  %i.gn = fsub <2 x double> %wide.load408, %wide.load416
  %i.go = fneg <2 x double> %wide.load415
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gn, <2 x double> %i.gi)
  %i.gq = add nsw i32 %.reass, %i.am
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.gr
  %wide.load417 = load <2 x double>, ptr %i.gs, align 8, !tbaa !28, !alias.scope !113
  %i.gt = getelementptr inbounds [8 x i8], ptr %.0201, i64 %i.gr
end_hunk_0
