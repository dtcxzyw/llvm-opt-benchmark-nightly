Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/circpos?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.nodelist_t = type { %union.anon, ptr, ptr }
%union.anon = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @circPos(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load double, ptr %i.a, align 8, !tbaa !41
  tail call fastcc void @doBlock(ptr noundef %0, ptr noundef %1, double noundef %i.b, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @doBlock(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.nodelist_t, align 8         ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.02537 = load ptr, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  %.not38 = icmp eq ptr %.02537, null
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02540 = phi ptr [ %.025, %.lr.ph ], [ %.02537, %bb.a ] ; 2 uses
  %.039 = phi i64 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  tail call fastcc void @doBlock(ptr noundef %0, ptr noundef nonnull %.02540, double noundef %2, ptr noundef %3)
  %i.b = add i64 %.039, 1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02540, i64 8
  %.025 = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %.not = icmp eq ptr %.025, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %.lr.ph ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @layout_block(ptr dead_on_unwind nonnull writable sret(%struct.nodelist_t) align 8 %4, ptr noundef %0, ptr noundef nonnull %1, double noundef %2, ptr noundef %3) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !52
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.val = load i64, ptr %i.e, align 8, !tbaa !54  ; 4 uses
  %.not27 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not27, label %bb.as, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %mul.ov.i.i = icmp ugt i64 %.0.lcssa, 329406144173384850
  br i1 %mul.ov.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str, i64 noundef range(i64 1, 0) %.0.lcssa, i64 noundef 56) #11 ; 0 uses
  call fastcc void @graphviz_exit() #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = call noalias ptr @calloc(i64 noundef range(i64 1, 0) %.0.lcssa, i64 noundef 56) #13 ; 19 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %gv_calloc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.k = mul nuw i64 %.0.lcssa, 56
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.1, i64 noundef %i.k) #11 ; 0 uses
  call fastcc void @graphviz_exit() #12
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !57
  %.fr.i = freeze ptr %i.m                        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !58 ; 4 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !59
  %i.q = uitofp i64 %.val to double
  %i.r = fdiv nnan double f0x401921FB54442D18, %i.q ; 2 uses
  %.not110.i = icmp eq i64 %.val, 0
  br i1 %.not110.i, label %._crit_edge105.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %gv_calloc.exit.i
  %.not30.i.i = icmp eq ptr %.fr.i, null          ; 2 uses
  %i.s = fadd double %2, %i.o                     ; 2 uses
  br i1 %.not30.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.t = fadd double %i.s, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.split.us.i
  %.093.us.i = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.y, %bb.g ] ; 3 uses
  %.07392.us.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %.174.us.i, %bb.g ] ; 3 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !49
  %i.v = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.093.us.i) #10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51   ; 2 uses
  %i.y = add nuw i64 %.093.us.i, 1                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !62
  %i.af = and i32 %i.ae, 8
  %.not.us.i = icmp eq i32 %i.af, 0
  br i1 %.not.us.i, label %bb.g, label %getInfo.exit.us.i

getInfo.exit.us.i:                                ; preds = %bb.f
  %indvars113.i = trunc i64 %.093.us.i to i32
  %i.ag = uitofp nneg i32 %indvars113.i to double
  %i.ah = fmul double %i.r, %i.ag
  %i.ai = sext i32 %.07392.us.i to i64
  %i.aj = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.ai ; 5 uses
  store ptr %i.x, ptr %i.aj, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store double %i.ah, ptr %i.ak, align 8, !tbaa !65
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i32 0, ptr %i.al, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store double %i.t, ptr %i.am, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store <2 x double> zeroinitializer, ptr %i.an, align 8, !tbaa !36
  %i.ao = add nsw i32 %.07392.us.i, 1
  br label %bb.g

bb.g:                                             ; preds = %getInfo.exit.us.i, %bb.f
  %.174.us.i = phi i32 [ %i.ao, %getInfo.exit.us.i ], [ %.07392.us.i, %bb.f ] ; 2 uses
  %.val.us.i = load i64, ptr %i.e, align 8, !tbaa !54
  %i.ap = icmp ult i64 %i.y, %.val.us.i
  br i1 %i.ap, label %bb.f, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.l, %bb.g
  %.075.lcssa.i = phi double [ 0.000000e+00, %bb.g ], [ %.176.i, %bb.l ] ; 2 uses
  %.073.lcssa.i = phi i32 [ %.174.us.i, %bb.g ], [ %.174.i, %bb.l ] ; 4 uses
  switch i32 %.073.lcssa.i, label %.preheader.i [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.aq = icmp sgt i32 %.073.lcssa.i, 0
  br i1 %i.aq, label %.lr.ph98.split.i, label %._crit_edge105.i

.lr.ph98.split.i:                                 ; preds = %.preheader.i
  %i.ar = add nsw i32 %.073.lcssa.i, -2
  br label %bb.o

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.l
  %.093.i = phi i64 [ %i.aw, %bb.l ], [ 0, %.lr.ph.i ] ; 3 uses
  %.07392.i = phi i32 [ %.174.i, %bb.l ], [ 0, %.lr.ph.i ] ; 3 uses
  %.07591.i = phi double [ %.176.i, %bb.l ], [ 0.000000e+00, %.lr.ph.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !49
  %i.at = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.093.i) #10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51 ; 3 uses
  %i.aw = add nuw i64 %.093.i, 1                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !62
  %i.bd = and i32 %i.bc, 8
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %bb.l, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.split.i
  %indvars112.i = trunc i64 %.093.i to i32
  %i.be = uitofp nneg i32 %indvars112.i to double
  %i.bf = fmul double %i.r, %i.be
  %i.bg = sext i32 %.07392.i to i64
  %i.bh = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.bg ; 6 uses
  store ptr %i.av, ptr %i.bh, align 8, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store double %i.bf, ptr %i.bi, align 8, !tbaa !65
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.preheader.i
  %.02634.i.i = phi ptr [ %.026.i.i, %bb.k ], [ %.fr.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.033.i.i = phi i32 [ %.1.i.i, %bb.k ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02232.i.i = phi double [ %.123.i.i, %bb.k ], [ 0.000000e+00, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02431.i.i = phi double [ %.125.i.i, %bb.k ], [ 0.000000e+00, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bj = load ptr, ptr %.02634.i.i, align 8, !tbaa !59 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.bj, null
  br i1 %.not28.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.bq = phi ptr [ %i.bp, %bb.h ], [ null, %.lr.ph.i.i ]
  %i.br = icmp eq ptr %i.bq, %i.av
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = add nsw i32 %.033.i.i, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.02634.i.i, i64 24
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !58 ; 2 uses
  %i.bv = call nsz double @llvm.maxnum.f64(double %.02431.i.i, double %i.bu)
  %i.bw = call double @llvm.fmuladd.f64(double %i.bu, double 2.000000e+00, double %2)
  %i.bx = fadd double %.02232.i.i, %i.bw
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i.i = phi double [ %i.bv, %bb.j ], [ %.02431.i.i, %bb.i ] ; 4 uses
  %.123.i.i = phi double [ %i.bx, %bb.j ], [ %.02232.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.bs, %bb.j ], [ %.033.i.i, %bb.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.02634.i.i, i64 8
  %.026.i.i = load ptr, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp eq ptr %.026.i.i, null
  br i1 %.not.i.i, label %getInfo.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !44

getInfo.exit.loopexit.i:                          ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store double %.123.i.i, ptr %i.bz, align 8, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store i32 %.1.i.i, ptr %i.ca, align 8, !tbaa !66
  %i.cb = fadd double %i.s, %.125.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store double %i.cb, ptr %i.cc, align 8, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store double %.125.i.i, ptr %i.cd, align 8, !tbaa !70
  %i.ce = add nsw i32 %.07392.i, 1
  br label %bb.l

bb.l:                                             ; preds = %getInfo.exit.loopexit.i, %.lr.ph.split.i
  %.176.i = phi double [ %.125.i.i, %getInfo.exit.loopexit.i ], [ %.07591.i, %.lr.ph.split.i ] ; 2 uses
  %.174.i = phi i32 [ %i.ce, %getInfo.exit.loopexit.i ], [ %.07392.i, %.lr.ph.split.i ] ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !54
  %i.cf = icmp ult i64 %i.aw, %.val.i
  br i1 %i.cf, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !43

bb.m:                                             ; preds = %._crit_edge.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !71
  br label %.lr.ph104.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !65
  %i.cl = fsub double %i.ci, %i.ck                ; 3 uses
  %i.cm = fcmp ogt double %i.cl, f0x400921FB54442D18
  %i.cn = fsub double f0x401921FB54442D18, %i.cl
  %.070.i = select i1 %i.cm, double %i.cn, double %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.cp = load double, ptr %i.co, align 8, !tbaa !69
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !67 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !69
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !67 ; 2 uses
  %i.cw = fmul double %i.ct, %i.cv
  %i.cx = call double @llvm.fmuladd.f64(double %i.cp, double %i.cr, double %i.cw)
  %i.cy = fmul double %.070.i, 2.000000e+00
  %i.cz = fmul double %i.cy, %i.cv
  %i.da = fmul double %i.cr, %i.cz
  %i.db = fdiv double %i.cx, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.dd = call nsz double @llvm.maxnum.f64(double %i.db, double 1.000000e+00) ; 2 uses
  store double %i.dd, ptr %i.dc, align 8, !tbaa !71
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store double %i.dd, ptr %i.de, align 8, !tbaa !71
  br label %.lr.ph104.i

bb.o:                                             ; preds = %bb.o, %.lr.ph98.split.i
  %.07197.i = phi ptr [ %i.h, %.lr.ph98.split.i ], [ %i.eg, %bb.o ] ; 10 uses
  %.07896.i = phi i32 [ 0, %.lr.ph98.split.i ], [ %i.df, %bb.o ] ; 2 uses
  %i.df = add nuw nsw i32 %.07896.i, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.07197.i, i64 64
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !65 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.07197.i, i64 8
  %i.dj = load double, ptr %i.di, align 8, !tbaa !65
  %i.dk = fsub double %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.07197.i, i64 32
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !69
  %i.dn = getelementptr inbounds nuw i8, ptr %.07197.i, i64 72
  %i.do = load double, ptr %i.dn, align 8, !tbaa !67 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.07197.i, i64 88
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !69 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.07197.i, i64 16
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !67 ; 2 uses
  %i.dt = fmul double %i.dq, %i.ds
  %i.du = call double @llvm.fmuladd.f64(double %i.dm, double %i.do, double %i.dt)
  %i.dv = fmul double %i.dk, 2.000000e+00
  %i.dw = fmul double %i.dv, %i.ds
  %i.dx = fmul double %i.do, %i.dw
  %i.dy = fdiv double %i.du, %i.dx
  %i.dz = call nsz double @llvm.maxnum.f64(double %i.dy, double 1.000000e+00) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.07197.i, i64 40 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !71
  %i.ec = call nsz double @llvm.maxnum.f64(double %i.eb, double %i.dz)
  store double %i.ec, ptr %i.ea, align 8, !tbaa !71
  %i.ed = getelementptr inbounds nuw i8, ptr %.07197.i, i64 96 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !71
  %i.ef = call nsz double @llvm.maxnum.f64(double %i.ee, double %i.dz) ; 2 uses
  store double %i.ef, ptr %i.ed, align 8, !tbaa !71
  %i.eg = getelementptr inbounds nuw i8, ptr %.07197.i, i64 56
  %exitcond.not.i = icmp eq i32 %.07896.i, %i.ar
  br i1 %exitcond.not.i, label %.loopexit.loopexit.peel.begin.i, label %bb.o, !llvm.loop !45

.loopexit.loopexit.peel.begin.i:                  ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %.07197.i, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !65
  %i.ek = fsub double %i.ej, %i.dh
  %i.el = fadd double %i.ek, f0x401921FB54442D18
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !67 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !69
  %i.eq = fmul double %i.do, %i.ep
  %i.er = call double @llvm.fmuladd.f64(double %i.dq, double %i.en, double %i.eq)
  %i.es = fmul double %i.el, 2.000000e+00
  %i.et = fmul double %i.do, %i.es
  %i.eu = fmul double %i.en, %i.et
  %i.ev = fdiv double %i.er, %i.eu
  %i.ew = call nsz double @llvm.maxnum.f64(double %i.ev, double 1.000000e+00) ; 2 uses
  %i.ex = call nsz double @llvm.maxnum.f64(double %i.ef, double %i.ew)
  store double %i.ex, ptr %i.eh, align 8, !tbaa !71
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !71
  %i.fa = call nsz double @llvm.maxnum.f64(double %i.ez, double %i.ew)
  store double %i.fa, ptr %i.ey, align 8, !tbaa !71
  %i.fb = zext nneg i32 %.073.lcssa.i to i64
  br label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.loopexit.loopexit.peel.begin.i, %bb.n, %bb.m
  %.073.lcssa140.ph.i = phi i64 [ 1, %bb.m ], [ 2, %bb.n ], [ %i.fb, %.loopexit.loopexit.peel.begin.i ]
  %i.fc = icmp eq i64 %.val, 1                    ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %positionChildren.exit.i, %.lr.ph104.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph104.i ], [ %indvars.iv.next.i, %positionChildren.exit.i ] ; 2 uses
  %.sroa.4.0101.i = phi double [ %i.o, %.lr.ph104.i ], [ %i.kv, %positionChildren.exit.i ]
  %.sroa.10.0100.i = phi double [ -1.000000e+00, %.lr.ph104.i ], [ %.079.lcssa.i.i, %positionChildren.exit.i ] ; 2 uses
  %.sroa.14.099.i = phi double [ -1.000000e+00, %.lr.ph104.i ], [ %.0.lcssa.i84.i, %positionChildren.exit.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv.i ; 11 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !71
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !67
  %i.fi = fmul double %i.ff, %i.fh                ; 3 uses
  br i1 %i.fc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !69 ; 2 uses
  %i.fl = fdiv double %i.fk, f0x401921FB54442D18
  %i.fm = call nsz double @llvm.maxnum.f64(double %i.fi, double %i.fl) ; 3 uses
  %i.fn = fneg double %i.fk
  %i.fo = call double @llvm.fmuladd.f64(double %i.fm, double f0x401921FB54442D18, double %i.fn) ; 2 uses
  %i.fp = fcmp ogt double %i.fo, 0.000000e+00
  br i1 %i.fp, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !66
  %i.fs = sitofp i32 %i.fr to double
  %i.ft = fdiv double %i.fo, %i.fs
  %i.fu = fadd double %2, %i.ft
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !65
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !69
  %i.fz = fmul double %i.fi, 2.000000e+00
  %i.ga = fdiv double %i.fy, %i.fz
  %i.gb = fsub double %i.fw, %i.ga
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.092.i.i = phi double [ %i.fu, %bb.r ], [ %2, %bb.q ], [ %2, %bb.s ]
  %.087.i.i = phi double [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.q ], [ %i.gb, %bb.s ]
  %.086.i.i = phi double [ %i.fm, %bb.r ], [ %i.fm, %bb.q ], [ %i.fi, %bb.s ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !70
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !66 ; 3 uses
  %i.gg = add nsw i32 %i.gf, 1
  %i.gh = sdiv i32 %i.gg, 2                       ; 2 uses
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i82.i

.lr.ph.i82.i:                                     ; preds = %bb.t
  %i.gi = fdiv double %.092.i.i, %.086.i.i        ; 2 uses
  %i.gj = fmul double %i.gi, 5.000000e-01         ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.pn100.i.i = select i1 %i.fc, double %i.gi, double %i.gj
  %i.gl = load ptr, ptr %i.fd, align 8, !tbaa !64
  %i.gm = icmp eq i32 %i.gf, 1
  %i.gn = icmp eq i32 %i.gf, 2
  %i.go = insertelement <2 x double> poison, double %.086.i.i, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.ao, %.lr.ph.i82.i
  %.091108.i.i = phi ptr [ %.fr.i, %.lr.ph.i82.i ], [ %.091.i.i, %bb.ao ] ; 9 uses
  %.0107.i.i = phi double [ %.sroa.14.099.i, %.lr.ph.i82.i ], [ %.2.i.i, %bb.ao ] ; 4 uses
  %.079106.i.i = phi double [ %.sroa.10.0100.i, %.lr.ph.i82.i ], [ %.3.i.i, %bb.ao ] ; 6 uses
  %.082105.i.i = phi i32 [ 0, %.lr.ph.i82.i ], [ %.183.i.i, %bb.ao ] ; 3 uses
  %.084104.i.i = phi double [ 0.000000e+00, %.lr.ph.i82.i ], [ %.185.i.i, %bb.ao ] ; 3 uses
  %.188103.i.i = phi double [ %.087.i.i, %.lr.ph.i82.i ], [ %.5.i.i, %bb.ao ] ; 6 uses
  %i.gq = load ptr, ptr %.091108.i.i, align 8, !tbaa !59 ; 6 uses
  %.not98.i.i = icmp eq ptr %i.gq, null
  br i1 %.not98.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !23
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 152
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !60
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !68
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gx = phi ptr [ %i.gw, %bb.v ], [ null, %bb.u ]
  %.not99.i.i = icmp eq ptr %i.gx, %i.gl
  br i1 %.not99.i.i, label %bb.x, label %bb.ao

bb.x:                                             ; preds = %bb.w
  %i.gy = getelementptr i8, ptr %.091108.i.i, i64 56
  %.val.i.i = load i64, ptr %i.gy, align 8, !tbaa !54 ; 2 uses
  %i.gz = icmp eq i64 %.val.i.i, 0
  br i1 %i.gz, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ha = getelementptr inbounds nuw i8, ptr %.091108.i.i, i64 24 ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !58
  %i.hc = fdiv double %i.hb, %.086.i.i            ; 3 uses
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hd = fcmp oeq double %.188103.i.i, 0.000000e+00
  %i.he = fadd double %.188103.i.i, %i.hc
  %.188103.i.mux.i = select i1 %i.gn, double f0x400921FB54442D18, double %i.he
  %.289.i.i = select i1 %i.hd, double %.188103.i.i, double %.188103.i.mux.i ; 3 uses
  %i.hf = fcmp olt double %.079106.i.i, 0.000000e+00
  %.180.i.i = select i1 %i.hf, double %.289.i.i, double %.079106.i.i
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  br i1 %i.gm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hg = load double, ptr %i.gk, align 8, !tbaa !65
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.hh = fadd double %i.gj, %i.hc
  %i.hi = fadd double %.188103.i.i, %i.hh
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %.390.i.i = phi double [ %.289.i.i, %bb.z ], [ %i.hg, %bb.ab ], [ %i.hi, %bb.ac ] ; 7 uses
  %.281.i.i = phi double [ %.180.i.i, %bb.z ], [ %.079106.i.i, %bb.ab ], [ %.079106.i.i, %bb.ac ] ; 2 uses
  %.1.i85.i = phi double [ %.289.i.i, %bb.z ], [ %.0107.i.i, %bb.ab ], [ %.0107.i.i, %bb.ac ] ; 2 uses
  %5 = call double @cos(double noundef %.390.i.i) #10
  %6 = call double @sin(double noundef %.390.i.i) #10
  %i.hj = insertelement <2 x double> poison, double %5, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %6, i64 1
  %i.hl = fmul <2 x double> %i.gp, %i.hk          ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.091108.i.i, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !37 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.091108.i.i, i64 104
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !73 ; 2 uses
  %i.hq = fcmp ult double %i.hp, 0.000000e+00
  br i1 %i.hq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hr = fsub double f0x400921FB54442D18, %i.hp
  %i.hs = fadd double %.390.i.i, %i.hr            ; 3 uses
  %i.ht = fcmp olt double %i.hs, 0.000000e+00
  %i.hu = fadd double %i.hs, f0x401921FB54442D18
  %.066.i.i.i = select i1 %i.ht, double %i.hu, double %i.hs
  br label %getRotation.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.hv = icmp eq i64 %.val.i.i, 2
  br i1 %i.hv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hw = fadd double %.390.i.i, f0xBFF921FB54442D18
  br label %getRotation.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !23
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 176
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !38
  %i.ib = load <2 x double>, ptr %i.ia, align 8, !tbaa !36
  %i.ic = fadd <2 x double> %i.hl, %i.ib          ; 2 uses
  %i.id = extractelement <2 x double> %i.ic, i64 0
  %i.ie = extractelement <2 x double> %i.ic, i64 1
  %i.if = call double @hypot(double noundef %i.id, double noundef %i.ie) #10
  %i.ig = call ptr @agfstnode(ptr noundef %i.hn) #10 ; 2 uses
  %.not85.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not85.i.i.i, label %getRotation.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %bb.aj
  %.06888.i.i.i = phi ptr [ %i.is, %bb.aj ], [ %i.ig, %bb.ah ] ; 4 uses
  %.06987.i.i.i = phi double [ %.271.i.i.i, %bb.aj ], [ %i.if, %bb.ah ] ; 3 uses
  %.07286.i.i.i = phi ptr [ %.274.i.i.i, %bb.aj ], [ %i.gq, %bb.ah ] ; 2 uses
  %i.ih = icmp eq ptr %.06888.i.i.i, %i.gq
  br i1 %i.ih, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %.06888.i.i.i, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !23
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 176
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !38
  %i.im = load <2 x double>, ptr %i.il, align 8, !tbaa !36
  %i.in = fadd <2 x double> %i.hl, %i.im          ; 2 uses
  %i.io = extractelement <2 x double> %i.in, i64 0
  %i.ip = extractelement <2 x double> %i.in, i64 1
  %i.iq = call double @hypot(double noundef %i.io, double noundef %i.ip) #10 ; 2 uses
  %i.ir = fcmp olt double %i.iq, %.06987.i.i.i    ; 2 uses
  %.173.i.i.i = select i1 %i.ir, ptr %.06888.i.i.i, ptr %.07286.i.i.i
  %.170.i.i.i = select i1 %i.ir, double %i.iq, double %.06987.i.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i.i
  %.274.i.i.i = phi ptr [ %.07286.i.i.i, %.lr.ph.i.i.i ], [ %.173.i.i.i, %bb.ai ] ; 2 uses
  %.271.i.i.i = phi double [ %.06987.i.i.i, %.lr.ph.i.i.i ], [ %.170.i.i.i, %bb.ai ]
  %i.is = call ptr @agnxtnode(ptr noundef %i.hn, ptr noundef nonnull %.06888.i.i.i) #10 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !46

._crit_edge.i.i.i:                                ; preds = %bb.aj
  %i.it = icmp eq ptr %i.gq, %.274.i.i.i
  br i1 %i.it, label %getRotation.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.091108.i.i, i64 32
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !74 ; 2 uses
  %i.iw = load double, ptr %i.ha, align 8, !tbaa !58
  %i.ix = fsub double %i.iw, %i.iv                ; 3 uses
  %i.iy = load ptr, ptr %i.hx, align 8, !tbaa !23 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 176
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !38 ; 3 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !36 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.091108.i.i, i64 112
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !75
  %.not83.i.i.i = trunc i32 %i.jd to i1
  %i.je = fneg double %i.ix
  %i.jf = fcmp ogt double %i.jb, %i.je
  %or.cond.i.i.i = select i1 %.not83.i.i.i, i1 %i.jf, i1 false
  br i1 %or.cond.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jg = extractelement <2 x double> %i.hl, i64 0
  %i.jh = extractelement <2 x double> %i.hl, i64 1
  %i.ji = call double @hypot(double noundef %i.jg, double noundef %i.jh) #10
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !36
  %i.jl = fadd double %i.ix, %i.jb
  %i.jm = call double @atan2(double noundef %i.jk, double noundef %i.jl) #10 ; 2 uses
  %i.jn = call double @cos(double noundef %i.jm) #10 ; 2 uses
  %i.jo = fdiv double %i.iv, %i.jn
  %i.jp = fsub double %i.ix, %i.jo
  %i.jq = fsub double f0x3FF921FB54442D18, %i.jm
  %i.jr = fdiv double %i.jp, %i.ji
  %i.js = fmul double %i.jn, %i.jr
  %i.jt = call double @asin(double noundef %i.js) #10
  %i.ju = fsub double %i.jq, %i.jt
  %i.jv = fadd double %.390.i.i, %i.ju
  br label %getRotation.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !36
  %i.jy = call double @atan2(double noundef %i.jx, double noundef %i.jb) #10
  %i.jz = fsub double f0x400921FB54442D18, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.iy, i64 152
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !60
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !49
  %i.ke = fsub double %i.jz, %i.kd
  %i.kf = fadd double %.390.i.i, %i.ke            ; 3 uses
  %i.kg = fcmp ogt double %i.kf, f0x401921FB54442D18
  %i.kh = fadd double %i.kf, f0xC01921FB54442D18
  %.167.i.i.i = select i1 %i.kg, double %i.kh, double %i.kf
  br label %getRotation.exit.i.i

getRotation.exit.i.i:                             ; preds = %bb.am, %bb.al, %._crit_edge.i.i.i, %bb.ah, %bb.ag, %bb.ae
  %.1.i.i.i = phi double [ %.066.i.i.i, %bb.ae ], [ %i.hw, %bb.ag ], [ %.167.i.i.i, %bb.am ], [ %i.jv, %bb.al ], [ 0.000000e+00, %._crit_edge.i.i.i ], [ 0.000000e+00, %bb.ah ]
  %i.ki = extractelement <2 x double> %i.hl, i64 0
  %i.kj = extractelement <2 x double> %i.hl, i64 1
  call fastcc void @applyDelta(ptr noundef nonnull %.091108.i.i, double noundef %i.ki, double noundef %i.kj, double noundef %.1.i.i.i)
  %.pn.i.i = fadd double %.pn100.i.i, %i.hc
  %.4.i.i = fadd double %.pn.i.i, %.390.i.i       ; 3 uses
  %i.kk = add nsw i32 %.082105.i.i, 1             ; 2 uses
  %i.kl = icmp eq i32 %i.kk, %i.gh
  br i1 %i.kl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %getRotation.exit.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %getRotation.exit.i.i, %bb.x, %bb.w
  %.5.i.i = phi double [ %.188103.i.i, %bb.w ], [ %.188103.i.i, %bb.x ], [ %.4.i.i, %bb.an ], [ %.4.i.i, %getRotation.exit.i.i ]
  %.185.i.i = phi double [ %.084104.i.i, %bb.w ], [ %.084104.i.i, %bb.x ], [ %.4.i.i, %bb.an ], [ %.084104.i.i, %getRotation.exit.i.i ] ; 2 uses
  %.183.i.i = phi i32 [ %.082105.i.i, %bb.w ], [ %.082105.i.i, %bb.x ], [ %i.gh, %bb.an ], [ %i.kk, %getRotation.exit.i.i ]
  %.3.i.i = phi double [ %.079106.i.i, %bb.w ], [ %.079106.i.i, %bb.x ], [ %.281.i.i, %bb.an ], [ %.281.i.i, %getRotation.exit.i.i ] ; 2 uses
  %.2.i.i = phi double [ %.0107.i.i, %bb.w ], [ %.0107.i.i, %bb.x ], [ %.1.i85.i, %bb.an ], [ %.1.i85.i, %getRotation.exit.i.i ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.091108.i.i, i64 8
  %.091.i.i = load ptr, ptr %i.km, align 8, !tbaa !13 ; 2 uses
  %.not.i83.i = icmp eq ptr %.091.i.i, null
  br i1 %.not.i83.i, label %._crit_edge.i.i, label %bb.u, !llvm.loop !47

._crit_edge.i.i:                                  ; preds = %bb.ao, %bb.t
  %.084.lcssa.i.i = phi double [ 0.000000e+00, %bb.t ], [ %.185.i.i, %bb.ao ]
  %.079.lcssa.i.i = phi double [ %.sroa.10.0100.i, %bb.t ], [ %.3.i.i, %bb.ao ] ; 2 uses
  %.0.lcssa.i84.i = phi double [ %.sroa.14.099.i, %bb.t ], [ %.2.i.i, %bb.ao ] ; 2 uses
  br i1 %i.fc, label %positionChildren.exit.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.i.i
  %i.kn = load ptr, ptr %i.fd, align 8, !tbaa !64 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.p
  br i1 %i.ko, label %bb.aq, label %positionChildren.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !23
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 152
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !60
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  store double %.084.lcssa.i.i, ptr %i.kt, align 8, !tbaa !49
  br label %positionChildren.exit.i

positionChildren.exit.i:                          ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i
  %i.ku = fadd nsz double %.086.i.i, %i.gd
  %i.kv = call nsz double @llvm.maxnum.f64(double %.sroa.4.0101.i, double %i.ku) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next.i, %.073.lcssa140.ph.i
  br i1 %exitcond116.not.i, label %._crit_edge105.loopexit.i, label %bb.p, !llvm.loop !48

._crit_edge105.loopexit.i:                        ; preds = %positionChildren.exit.i
  %i.kw = fadd double %.079.lcssa.i.i, %.0.lcssa.i84.i
  %i.kx = fmul double %i.kw, 5.000000e-01
  %i.ky = fadd double %i.kx, f0xC00921FB54442D18
  br label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %._crit_edge105.loopexit.i, %.preheader.i, %gv_calloc.exit.i
  %.075.lcssa137146.i = phi double [ %.075.lcssa.i, %._crit_edge105.loopexit.i ], [ %.075.lcssa.i, %.preheader.i ], [ 0.000000e+00, %gv_calloc.exit.i ]
  %.sroa.14.0.lcssa.i = phi double [ %i.ky, %._crit_edge105.loopexit.i ], [ f0xC01090FDAA22168C, %.preheader.i ], [ f0xC01090FDAA22168C, %gv_calloc.exit.i ]
  %.sroa.4.0.lcssa.i = phi double [ %i.kv, %._crit_edge105.loopexit.i ], [ %i.o, %.preheader.i ], [ %i.o, %gv_calloc.exit.i ]
  call void @free(ptr noundef %i.h) #10
  %i.kz = icmp eq i64 %.0.lcssa, 1
  br i1 %i.kz, label %bb.ar, label %position.exit

bb.ar:                                            ; preds = %._crit_edge105.i
  %i.la = fmul double %2, 5.000000e-01
  %i.lb = fadd double %i.la, %.075.lcssa137146.i  ; 2 uses
  %i.lc = fneg double %i.lb
  call fastcc void @applyDelta(ptr noundef nonnull %1, double noundef %i.lc, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %i.ld = load double, ptr %i.n, align 8, !tbaa !58
  %i.le = fadd double %i.lb, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !75
  %i.lh = or i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 8, !tbaa !75
  br label %position.exit

position.exit:                                    ; preds = %._crit_edge105.i, %bb.ar
  %.sroa.4.0.lcssa.sink.i = phi double [ %i.le, %bb.ar ], [ %.sroa.4.0.lcssa.i, %._crit_edge105.i ]
  store double %.sroa.4.0.lcssa.sink.i, ptr %i.n, align 8, !tbaa !58
  br label %bb.as

bb.as:                                            ; preds = %position.exit, %._crit_edge
  %.024 = phi double [ %.sroa.14.0.lcssa.i, %position.exit ], [ f0x400921FB54442D18, %._crit_edge ] ; 3 uses
  %i.li = icmp eq i64 %.val, 1
  br i1 %i.li, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.lj = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %.not28 = icmp eq ptr %i.lj, null
  br i1 %.not28, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !23
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 152
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !60
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !68
  %.not29 = icmp eq ptr %i.lp, null
  br i1 %.not29, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store double %.024, ptr %i.lq, align 8, !tbaa !73
  %i.lr = fcmp olt double %.024, 0.000000e+00
  br i1 %i.lr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ls = fadd double %.024, f0x401921FB54442D18
  store double %i.ls, ptr %i.lq, align 8, !tbaa !73
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.at, %bb.au, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @layout_block(ptr dead_on_unwind writable sret(%struct.nodelist_t) align 8, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @applyDelta(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = tail call ptr @agfstnode(ptr noundef %i.b) #10 ; 2 uses
  %.not32 = icmp eq ptr %i.c, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = insertelement <2 x double> poison, double %1, i64 0
  %i.e = insertelement <2 x double> %i.d, double %2, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03033 = phi ptr [ %9, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03033, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %4 = tail call double @cos(double noundef %3) #10 ; 2 uses
  %5 = tail call double @sin(double noundef %3) #10 ; 2 uses
  %6 = fneg double %5
  %7 = load <2 x double>, ptr %i.i, align 8, !tbaa !36 ; 2 uses
  %i.j = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.k = insertelement <2 x double> poison, double %6, i64 0
  %i.l = insertelement <2 x double> %i.k, double %4, i64 1
  %i.m = fmul <2 x double> %i.j, %i.l
  %i.n = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = insertelement <2 x double> poison, double %4, i64 0
  %i.p = insertelement <2 x double> %i.o, double %5, i64 1
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.p, <2 x double> %i.m)
  %i.q = fadd <2 x double> %i.e, %8
  store <2 x double> %i.q, ptr %i.i, align 8, !tbaa !36
  %9 = tail call ptr @agnxtnode(ptr noundef %i.b, ptr noundef nonnull %.03033) #10 ; 2 uses
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.034 = load ptr, ptr %i.r, align 8, !tbaa !13  ; 2 uses
  %.not3135 = icmp eq ptr %.034, null
  br i1 %.not3135, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %._crit_edge, %.lr.ph38
  %.036 = phi ptr [ %.0, %.lr.ph38 ], [ %.034, %._crit_edge ] ; 2 uses
  tail call fastcc void @applyDelta(ptr noundef nonnull %.036, double noundef %1, double noundef %2, double noundef %3)
  %i.s = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %.0 = load ptr, ptr %i.s, align 8, !tbaa !13    ; 2 uses
  %.not31 = icmp eq ptr %.0, null
  br i1 %.not31, label %._crit_edge39, label %.lr.ph38, !llvm.loop !77

._crit_edge39:                                    ; preds = %.lr.ph38, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #5 {
bb.a:
  tail call void @exit(i32 noundef 1) #14
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #9

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS5block", !8, i64 0}
!10 = !{!"", !9, i64 0, !9, i64 8}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!"double", !4, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"p1 _ZTS8Agnode_s", !8, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 _ZTS8Agraph_s", !8, i64 0}
!18 = !{!"", !4, i64 0, !8, i64 32, !15, i64 40}
!19 = !{!"block", !15, i64 0, !9, i64 8, !17, i64 16, !12, i64 24, !12, i64 32, !18, i64 40, !10, i64 88, !12, i64 104, !5, i64 112}
!20 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !16, i64 8}
!21 = !{!"p1 _ZTS7Agrec_s", !8, i64 0}
!22 = !{!"Agobj_s", !20, i64 0, !21, i64 16}
!23 = !{!22, !21, i64 16}
!24 = !{!"Agrec_s", !11, i64 0, !21, i64 8}
!25 = !{!"p1 _ZTS10shape_desc", !8, i64 0}
!26 = !{!"pointf_s", !12, i64 0, !12, i64 8}
!27 = !{!"", !26, i64 0, !26, i64 16}
!28 = !{!"p1 _ZTS11textlabel_t", !8, i64 0}
!29 = !{!"_Bool", !4, i64 0}
!30 = !{!"p1 double", !8, i64 0}
!31 = !{!"any p2 pointer", !8, i64 0}
!32 = !{!"p2 _ZTS8Agedge_s", !31, i64 0}
!33 = !{!"elist", !32, i64 0, !16, i64 8}
!34 = !{!"p1 _ZTS8Agedge_s", !8, i64 0}
!35 = !{!"Agnodeinfo_t", !24, i64 0, !25, i64 16, !8, i64 24, !26, i64 32, !12, i64 48, !12, i64 56, !27, i64 64, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !28, i64 136, !28, i64 144, !8, i64 152, !4, i64 160, !4, i64 161, !29, i64 162, !4, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !30, i64 176, !12, i64 184, !4, i64 192, !29, i64 193, !15, i64 200, !15, i64 208, !4, i64 216, !16, i64 224, !4, i64 232, !4, i64 233, !4, i64 234, !15, i64 240, !15, i64 248, !33, i64 256, !33, i64 272, !33, i64 288, !33, i64 304, !33, i64 320, !17, i64 336, !5, i64 344, !15, i64 352, !5, i64 360, !5, i64 364, !12, i64 368, !33, i64 376, !33, i64 392, !33, i64 408, !33, i64 424, !34, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !4, i64 464}
!36 = !{!12, !12, i64 0}
!37 = !{!19, !17, i64 16}
!38 = !{!35, !30, i64 176}
!39 = !{!"p1 _ZTS7Agsym_s", !8, i64 0}
!40 = !{!"", !10, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !39, i64 32, !11, i64 40, !12, i64 48}
!41 = !{!40, !12, i64 48}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14, !72}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = !{!4, !4, i64 0}
!50 = !{!8, !8, i64 0}
!51 = !{!15, !15, i64 0}
!52 = !{i64 0, i64 32, !49, i64 32, i64 8, !50, i64 40, i64 8, !51}
!53 = !{!"", !8, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!54 = !{!53, !16, i64 16}
!55 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!19, !9, i64 88}
!58 = !{!19, !12, i64 24}
!59 = !{!19, !15, i64 0}
!60 = !{!35, !8, i64 152}
!61 = !{!"", !4, i64 0, !5, i64 8, !15, i64 16, !9, i64 24, !4, i64 32}
!62 = !{!61, !5, i64 8}
!63 = !{!"", !15, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !5, i64 48}
!64 = !{!63, !15, i64 0}
!65 = !{!63, !12, i64 8}
!66 = !{!63, !5, i64 48}
!67 = !{!63, !12, i64 16}
!68 = !{!61, !15, i64 16}
!69 = !{!63, !12, i64 32}
!70 = !{!63, !12, i64 24}
!71 = !{!63, !12, i64 40}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = !{!19, !12, i64 104}
!74 = !{!19, !12, i64 32}
!75 = !{!19, !5, i64 112}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
end_hunk_0
