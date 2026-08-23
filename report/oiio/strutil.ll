Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/strutil?download=true
inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL18stbsp__real_to_strPPKcPjPcPidj:bb.a
  %i.ck = fmul double %i.bz, %i.br
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.cj, double %i.ck)
  %i.cm = fadd double %i.cl, %i.ch
  br label %_ZL23stbsp__raise_to_power10PdS_di.exit

bb.m:                                             ; preds = %bb.h
  br i1 %.not235.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %spec.store.select2.i = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 22) ; 2 uses
  %i.cn = sext i32 %spec.store.select2.i to i64
  %i.co = getelementptr inbounds [8 x i8], ptr @_ZL10stbsp__bot, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8         ; 3 uses
  %i.cq = fmul double %i.e, %i.cp                 ; 4 uses
  %i.cr = bitcast double %i.e to i64
  %i.cs = and i64 %i.cr, 9223372036720558080
  %i.ct = bitcast i64 %i.cs to double             ; 3 uses
  %i.cu = bitcast double %i.cp to i64
  %i.cv = and i64 %i.cu, -134217728
  %i.cw = bitcast i64 %i.cv to double             ; 3 uses
  %i.cx = fsub double %i.e, %i.ct                 ; 2 uses
  %i.cy = fsub double %i.cp, %i.cw                ; 2 uses
  %i.cz = fneg double %i.cq
  %i.da = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cw, double %i.cz)
  %i.db = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cy, double %i.da)
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cw, double %i.db)
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cy, double %i.dc) ; 3 uses
  %.not233.i = icmp slt i32 %i.aq, 23
  br i1 %.not233.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = sub nsw i32 %i.aq, %spec.store.select2.i
  %i.df = fadd double %i.cq, %i.dd                ; 4 uses
  %i.dg = zext nneg i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @_ZL10stbsp__bot, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8         ; 4 uses
  %i.dj = bitcast double %i.df to i64
  %i.dk = and i64 %i.dj, -134217728
  %i.dl = bitcast i64 %i.dk to double             ; 3 uses
  %i.dm = bitcast double %i.di to i64
  %i.dn = and i64 %i.dm, -134217728
  %i.do = bitcast i64 %i.dn to double             ; 3 uses
  %i.dp = fsub double %i.df, %i.cq
  %i.dq = fsub double %i.dd, %i.dp
  %i.dr = fmul double %i.df, %i.di                ; 2 uses
  %i.ds = fsub double %i.df, %i.dl                ; 2 uses
  %i.dt = fsub double %i.di, %i.do                ; 2 uses
  %i.du = fneg double %i.dr
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.do, double %i.du)
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dt, double %i.dv)
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.do, double %i.dw)
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.dt, double %i.dx)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dq, double %i.dy)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.1.i = phi double [ %i.dz, %bb.o ], [ %i.dd, %bb.n ], [ 0.000000e+00, %bb.m ] ; 3 uses
  %i.ea = phi double [ %i.dr, %bb.o ], [ %i.cq, %bb.n ], [ %i.e, %bb.m ] ; 3 uses
  %.not234.i = icmp eq i32 %i.ap, 0
  br i1 %.not234.i, label %_ZL23stbsp__raise_to_power10PdS_di.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eb = fadd double %.1.i, %i.ea                ; 5 uses
  %i.ec = add nsw i32 %spec.store.select.i, -1
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @_ZL10stbsp__top, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8         ; 4 uses
  %i.eg = bitcast double %i.eb to i64
  %i.eh = and i64 %i.eg, -134217728
  %i.ei = bitcast i64 %i.eh to double             ; 3 uses
  %i.ej = bitcast double %i.ef to i64
  %i.ek = and i64 %i.ej, -134217728
  %i.el = bitcast i64 %i.ek to double             ; 3 uses
  %i.em = fsub double %i.eb, %i.ea
  %i.en = fsub double %.1.i, %i.em
  %i.eo = fmul double %i.eb, %i.ef                ; 2 uses
  %i.ep = fsub double %i.eb, %i.ei                ; 2 uses
  %i.eq = fsub double %i.ef, %i.el                ; 2 uses
  %i.er = fneg double %i.eo
  %i.es = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.el, double %i.er)
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.eq, double %i.es)
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.el, double %i.et)
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.eq, double %i.eu)
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr @_ZL13stbsp__toperr, i64 %i.ed
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !20
  %i.ey = fmul double %i.en, %i.ef
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ex, double %i.ey)
  %i.fa = fadd double %i.ez, %i.ev
  br label %_ZL23stbsp__raise_to_power10PdS_di.exit

_ZL23stbsp__raise_to_power10PdS_di.exit:          ; preds = %bb.g, %bb.k, %bb.l, %bb.p, %bb.q
  %.3.i = phi double [ %i.am, %bb.g ], [ %i.cm, %bb.l ], [ %.0.i, %bb.k ], [ %i.fa, %bb.q ], [ %.1.i, %bb.p ] ; 2 uses
  %i.fb = phi double [ %i.z, %bb.g ], [ %i.ca, %bb.l ], [ %i.bm, %bb.k ], [ %i.eo, %bb.q ], [ %i.ea, %bb.p ] ; 2 uses
  %i.fc = fadd double %.3.i, %i.fb                ; 5 uses
  %i.fd = fsub double %i.fc, %i.fb
  %i.fe = fsub double %.3.i, %i.fd
  %i.ff = fptosi double %i.fc to i64              ; 2 uses
  %i.fg = sitofp i64 %i.ff to double              ; 2 uses
  %i.fh = fsub double %i.fc, %i.fg                ; 3 uses
  %i.fi = fsub double %i.fh, %i.fc                ; 2 uses
  %i.fj = fsub double %i.fh, %i.fi
  %i.fk = fsub double %i.fc, %i.fj
  %i.fl = fadd double %i.fi, %i.fg
  %i.fm = fsub double %i.fk, %i.fl
  %i.fn = fadd double %i.fh, %i.fm
  %i.fo = fadd double %i.fe, %i.fn
  %i.fp = fptosi double %i.fo to i64
  %i.fq = add nsw i64 %i.fp, %i.ff                ; 7 uses
  %i.fr = icmp ugt i64 %i.fq, 999999999999999999
  %i.fs = zext i1 %i.fr to i32
  %spec.select = add nsw i32 %i.u, %i.fs          ; 5 uses
  %i.ft = and i32 %5, 134217727
  %i.fu = add nuw nsw i32 %i.ft, 1
  %i.fv = add i32 %spec.select, %5
  %.not111131 = icmp slt i32 %5, 0
  %i.fw = select i1 %.not111131, i32 %i.fu, i32 %i.fv ; 3 uses
  %i.fx = icmp ult i32 %i.fw, 24
  br i1 %i.fx, label %bb.r, label %thread-pre-split

bb.r:                                             ; preds = %_ZL23stbsp__raise_to_power10PdS_di.exit
  %i.fy = icmp ugt i64 %i.fq, 999999999
  %i.fz = select i1 %i.fy, i64 10, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ %i.fz, %bb.r ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr @_ZL13stbsp__powten, i64 %indvars.iv
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !39 ; 2 uses
  %.not112 = icmp ult i64 %i.fq, %i.gb
  br i1 %.not112, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gc = icmp eq i64 %indvars.iv.next, 20
  br i1 %i.gc, label %thread-pre-split, label %bb.s, !llvm.loop !69

bb.u:                                             ; preds = %bb.s
  %i.gd = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ge = icmp ult i32 %i.fw, %i.gd
  br i1 %i.ge, label %bb.v, label %thread-pre-split

bb.v:                                             ; preds = %bb.u
  %i.gf = sub nuw i32 %i.gd, %i.fw
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @_ZL13stbsp__powten, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !39 ; 2 uses
  %i.gj = lshr i64 %i.gi, 1
  %i.gk = add i64 %i.gj, %i.fq                    ; 2 uses
  %.not113 = icmp uge i64 %i.gk, %i.gb
  %i.gl = zext i1 %.not113 to i32
  %spec.select121 = add nsw i32 %spec.select, %i.gl
  %i.gm = udiv i64 %i.gk, %i.gi
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.t, %bb.u, %_ZL23stbsp__raise_to_power10PdS_di.exit, %bb.v
  %.0187 = phi i64 [ %i.gm, %bb.v ], [ %i.fq, %bb.u ], [ %i.fq, %_ZL23stbsp__raise_to_power10PdS_di.exit ], [ %i.fq, %bb.t ] ; 4 uses
  %.494 = phi i32 [ %spec.select121, %bb.v ], [ %spec.select, %bb.u ], [ %spec.select, %_ZL23stbsp__raise_to_power10PdS_di.exit ], [ %spec.select, %bb.t ]
  %.not114 = icmp eq i64 %.0187, 0
  br i1 %.not114, label %.loopexit, label %thread-pre-split123

thread-pre-split123:                              ; preds = %thread-pre-split
  %i.gn = icmp slt i64 %.0187, 4294967296
  br i1 %i.gn, label %._crit_edge, label %.lr.ph143

.lr.ph143:                                        ; preds = %thread-pre-split123, %bb.w
  %i.go = phi i64 [ %i.gq, %bb.w ], [ %.0187, %thread-pre-split123 ] ; 4 uses
  %i.gp = urem i64 %i.go, 1000
  %i.gq = udiv i64 %i.go, 1000                    ; 2 uses
  %.not115 = icmp eq i64 %i.gp, 0
  br i1 %.not115, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.lr.ph143
  %i.gr = icmp samesign ult i64 %i.go, 4294967296000
  br i1 %i.gr, label %._crit_edge, label %.lr.ph143, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.w, %thread-pre-split123
  %.lcssa = phi i64 [ %.0187, %thread-pre-split123 ], [ %i.gq, %bb.w ]
  %i.gs = trunc i64 %.lcssa to i32                ; 3 uses
  %i.gt = urem i32 %i.gs, 1000
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %._crit_edge, %.lr.ph148
  %.080146 = phi i32 [ %i.gv, %.lr.ph148 ], [ %i.gs, %._crit_edge ]
  %i.gv = udiv i32 %.080146, 1000                 ; 3 uses
  %i.gw = urem i32 %i.gv, 1000
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph148, label %._crit_edge149, !llvm.loop !71

._crit_edge149:                                   ; preds = %.lr.ph148, %._crit_edge
  %.080.lcssa = phi i32 [ %i.gs, %._crit_edge ], [ %i.gv, %.lr.ph148 ]
  %i.gy = zext i32 %.080.lcssa to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph143, %._crit_edge149, %thread-pre-split
  %.1 = phi i64 [ 0, %thread-pre-split ], [ %i.gy, %._crit_edge149 ], [ %i.go, %.lr.ph143 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge166, %.loopexit
  %storemerge170 = phi i64 [ %.1, %.loopexit ], [ %storemerge213, %._crit_edge166 ] ; 5 uses
  %.095 = phi i32 [ 0, %.loopexit ], [ %.398.lcssa, %._crit_edge166 ] ; 3 uses
  %.083 = phi ptr [ %i.gz, %.loopexit ], [ %.3.ptr, %._crit_edge166 ] ; 4 uses
  %i.ha = icmp samesign ugt i64 %storemerge170, 99999999
  br i1 %i.ha, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hb = urem i64 %storemerge170, 100000000      ; 2 uses
  %i.hc = udiv i64 %storemerge170, 100000000      ; 2 uses
  %.not116152 = icmp eq i64 %i.hb, 0
  br i1 %.not116152, label %._crit_edge158.loopexit, label %.lr.ph157.preheader

bb.z:                                             ; preds = %bb.x
  %.not116152.a = icmp eq i64 %storemerge170, 0
  br i1 %.not116152.a, label %._crit_edge158.a, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %bb.z, %bb.y
  %.0216.in = phi i64 [ %storemerge170, %bb.z ], [ %i.hb, %bb.y ]
  %storemerge212 = phi i64 [ 0, %bb.z ], [ %i.hc, %bb.y ] ; 3 uses
  %.0216 = trunc nuw i64 %.0216.in to i32
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.lr.ph157
  %.1155 = phi i32 [ %i.hd, %.lr.ph157 ], [ %.0216, %.lr.ph157.preheader ] ; 3 uses
  %.184.idx154 = phi i64 [ %.184.add, %.lr.ph157 ], [ 0, %.lr.ph157.preheader ]
  %.196153 = phi i32 [ %i.he, %.lr.ph157 ], [ %.095, %.lr.ph157.preheader ]
  %.184.add = add nsw i64 %.184.idx154, -2        ; 5 uses
  %.ptr118 = getelementptr inbounds i8, ptr %.083, i64 %.184.add
  %6 = urem i32 %.1155, 100
  %7 = shl nuw nsw i32 %6, 1
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16stbsp__digitpair, i64 2), i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !42
  store i16 %10, ptr %.ptr118, align 2, !tbaa !42
  %i.hd = udiv i32 %.1155, 100
  %i.he = add nsw i32 %.196153, 2                 ; 4 uses
  %.not116 = icmp ult i32 %.1155, 100
  br i1 %.not116, label %._crit_edge158, label %.lr.ph157, !llvm.loop !72

._crit_edge158:                                   ; preds = %.lr.ph157
  %11 = icmp eq i64 %storemerge212, 0
  br i1 %11, label %._crit_edge158.a, label %.preheader

.preheader:                                       ; preds = %._crit_edge158
  %.not117162 = icmp eq i64 %.184.add, -8
  br i1 %.not117162, label %._crit_edge166, label %._crit_edge158.loopexit

._crit_edge158.loopexit:                          ; preds = %bb.y, %.preheader
  %storemerge214 = phi i64 [ %storemerge212, %.preheader ], [ %i.hc, %bb.y ]
  %.184.idx.lcssa151199207 = phi i64 [ %.184.add, %.preheader ], [ 0, %bb.y ] ; 2 uses
  %.196.lcssa201206 = phi i32 [ %i.he, %.preheader ], [ %.095, %bb.y ]
  %i.hf = getelementptr i8, ptr %.083, i64 -8
  %12 = add nsw i64 %.184.idx.lcssa151199207, 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hf, i8 48, i64 %12, i1 false), !tbaa !7
  %13 = add i32 %.196.lcssa201206, 8
  %14 = trunc i64 %.184.idx.lcssa151199207 to i32
  %15 = add i32 %13, %14
  br label %._crit_edge166

._crit_edge158.a:                                 ; preds = %bb.z, %._crit_edge158
  %.196.lcssa202 = phi i32 [ %.095, %bb.z ], [ %i.he, %._crit_edge158 ] ; 3 uses
  %.184.idx.lcssa151 = phi i64 [ 0, %bb.z ], [ %.184.add, %._crit_edge158 ]
  %.184.ptr.le.le = getelementptr inbounds i8, ptr %.083, i64 %.184.idx.lcssa151 ; 4 uses
  %i.hg = icmp eq i32 %.196.lcssa202, 0
  br i1 %i.hg, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge158.a
  %i.hh = load i8, ptr %.184.ptr.le.le, align 1, !tbaa !7
  %i.hi = icmp eq i8 %i.hh, 48
  br i1 %i.hi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hj = getelementptr inbounds nuw i8, ptr %.184.ptr.le.le, i64 1
  %i.hk = add nsw i32 %.196.lcssa202, -1
  br label %bb.ac

._crit_edge166:                                   ; preds = %._crit_edge158.loopexit, %.preheader
  %storemerge213 = phi i64 [ %storemerge212, %.preheader ], [ %storemerge214, %._crit_edge158.loopexit ]
  %.398.lcssa = phi i32 [ %i.he, %.preheader ], [ %15, %._crit_edge158.loopexit ]
  %.3.ptr = getelementptr inbounds i8, ptr %.083, i64 -8
  br label %bb.x

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge158.a
  %.499.ph = phi i32 [ 0, %._crit_edge158.a ], [ %.196.lcssa202, %bb.aa ], [ %i.hk, %bb.ab ]
  %.4.ph = phi ptr [ %.184.ptr.le.le, %._crit_edge158.a ], [ %.184.ptr.le.le, %bb.aa ], [ %i.hj, %bb.ab ]
  store i32 %.494, ptr %3, align 4, !tbaa !3
  store ptr %.4.ph, ptr %0, align 8, !tbaa !13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.d, %bb.b
  %.499.ph.sink = phi i32 [ %.499.ph, %bb.ac ], [ 1, %bb.d ], [ 3, %bb.b ]
  store i32 %.499.ph.sink, ptr %1, align 4, !tbaa !3
  %i.hl = lshr i64 %i.a, 63
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  ret i32 %i.hm
}

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_sprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #1 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @oiio_stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.stbsp__context, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = call i32 @oiio_stbsp_vsprintfcb(ptr noundef nonnull @_ZL27stbsp__count_clamp_callbackPKcPvi, ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %.not34.i = icmp eq ptr %0, null
  %.pre36.i = sext i32 %1 to i64
  tail call void @llvm.assume(i1 %.not34.i)
  %i.h = getelementptr inbounds i8, ptr null, i64 %.pre36.i
  store ptr %i.h, ptr %4, align 8, !tbaa !75
  store i32 0, ptr %i.f, align 8, !tbaa !76
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_ZL21stbsp__clamp_callbackPKcPvi.exit

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 511
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %spec.select17 = select i1 %i.k, ptr %0, ptr %i.l
  br label %_ZL21stbsp__clamp_callbackPKcPvi.exit

_ZL21stbsp__clamp_callbackPKcPvi.exit:            ; preds = %bb.f, %bb.e
  %.028.i = phi ptr [ %i.j, %bb.e ], [ %spec.select17, %bb.f ]
  %i.m = call i32 @oiio_stbsp_vsprintfcb(ptr noundef nonnull @_ZL21stbsp__clamp_callbackPKcPvi, ptr noundef nonnull %4, ptr noundef %.028.i, ptr noundef %2, ptr noundef %3) ; 0 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !75
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %1, -1
  %spec.select = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s)
  %i.t = sext i32 %spec.select to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %_ZL21stbsp__clamp_callbackPKcPvi.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef nonnull ptr @_ZL27stbsp__count_clamp_callbackPKcPvi(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = add nsw i32 %i.b, %2
  store i32 %i.c, ptr %i.a, align 4, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZL21stbsp__clamp_callbackPKcPvi(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !73
  %i.d = add nsw i32 %i.c, %2
  store i32 %i.d, ptr %i.b, align 4, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !76   ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.f) ; 3 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !75     ; 8 uses
  %.not34 = icmp eq ptr %0, %i.g
  %.pre36 = sext i32 %spec.select to i64          ; 3 uses
  br i1 %.not34, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %.pre36
  %i.j = add i64 %i.a, %.pre36
  %i.k = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.k)
  %i.l = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 4
  %i.m = sub i64 %i.a, %i.h
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 %n.vec
  %i.p = getelementptr i8, ptr %i.g, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !7
  %wide.load42 = load <16 x i8>, ptr %i.q, align 1, !tbaa !7
  %i.r = getelementptr i8, ptr %next.gep41, i64 16
  store <16 x i8> %wide.load, ptr %next.gep41, align 1, !tbaa !7
  store <16 x i8> %wide.load42, ptr %i.r, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.l, -4                     ; 4 uses
  %i.t = getelementptr i8, ptr %0, i64 %n.vec44
  %i.u = getelementptr i8, ptr %i.g, i64 %n.vec44
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %next.gep46 = getelementptr i8, ptr %0, i64 %index45
  %next.gep47 = getelementptr i8, ptr %i.g, i64 %index45
  %wide.load48 = load <4 x i8>, ptr %next.gep46, align 1, !tbaa !7
  store <4 x i8> %wide.load48, ptr %next.gep47, align 1, !tbaa !7
  %index.next49 = add nuw i64 %index45, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.l, %n.vec44
  br i1 %cmp.n50, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_0
