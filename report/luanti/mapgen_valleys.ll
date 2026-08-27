Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_valleys?download=true
inline.NumInlined: 378
inline.NumDeleted: 49
begin_hunk_0_@_ZN13MapgenValleys20getSpawnLevelAtPointEN4core8vector2dIsEE:bb.a
  %i.aa = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.y, float noundef %i.c, float noundef %i.d, i32 noundef %i.z)
  %i.ab = fmul nsz float %i.w, %i.w               ; 2 uses
  %i.ac = fadd nsz float %i.s, %i.ab              ; 2 uses
  %i.ad = load float, ptr %i.i, align 8, !tbaa !58
  %i.ae = fsub nsz float %i.h, %i.ad
  %i.af = fdiv nsz float %i.ae, %i.aa
  %i.ag = tail call nsz noundef float @llvm.maxnum.f32(float %i.af, float 0.000000e+00) ; 2 uses
  %i.ah = fneg nsz float %i.ag
  %i.ai = fmul nsz float %i.ag, %i.ah
  %i.aj = tail call nsz noundef float @llvm.exp.f32(float %i.ai)
  %i.ak = fsub nsz float 1.000000e+00, %i.aj
  %i.al = fmul nsz float %i.ab, %i.ak             ; 2 uses
  %i.am = fadd nsz float %i.ac, %i.al             ; 2 uses
  %i.an = fmul nsz float %i.o, %i.al              ; 2 uses
  %i.ao = fadd nsz float %i.ac, -1.000000e+00
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !136
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.as = load float, ptr %i.ar, align 8, !tbaa !136 ; 2 uses
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !139 ; 2 uses
  %i.aw = add nsw i32 %i.av, 16
  %i.ax = fpext nsz float %i.at to double
  %i.ay = sitofp nsz i32 %i.aw to double
  %i.az = tail call nsz noundef double @llvm.maxnum.f64(double %i.ax, double %i.ay)
  %i.ba = fptosi double %i.az to i16              ; 2 uses
  %i.bb = add i16 %i.ba, 128                      ; 4 uses
  %i.bc = sext i16 %i.bb to i32                   ; 2 uses
  %.not57 = icmp sgt i32 %i.av, %i.bc
  br i1 %.not57, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !80
  %i.bf = sitofp nsz i16 %i.bb to float           ; 2 uses
  %i.bg = load i32, ptr %i.e, align 8, !tbaa !70
  %i.bh = tail call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef %i.be, float noundef %i.c, float noundef %i.bf, float noundef %i.d, i32 noundef %i.bg)
  %i.bi = fsub nsz float %i.am, %i.bf
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.bh, float %i.bi)
  %i.bk = fcmp nsz ule float %i.bj, 0.000000e+00
  br i1 %i.bk, label %.lr.ph68, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph68
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !80
  %i.bm = sitofp nsz i16 %i.by to float           ; 2 uses
  %i.bn = load i32, ptr %i.e, align 8, !tbaa !70
  %i.bo = tail call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef %i.bl, float noundef %i.c, float noundef %i.bm, float noundef %i.d, i32 noundef %i.bn)
  %i.bp = fsub nsz float %i.am, %i.bm
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.bo, float %i.bp)
  %i.br = fcmp nsz ule float %i.bq, 0.000000e+00
  br i1 %i.br, label %.lr.ph68, label %._crit_edge, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.c, %.lr.ph
  %.lcssa = phi i32 [ %i.bc, %.lr.ph ], [ %i.bz, %bb.c ] ; 2 uses
  %.058.lcssa = phi i16 [ %i.bb, %.lr.ph ], [ %i.by, %bb.c ] ; 2 uses
  %i.bs = load i32, ptr %i.au, align 4, !tbaa !139
  %i.bt = icmp sgt i32 %i.bs, %.lcssa
  %i.bu = icmp sgt i16 %.058.lcssa, %i.ba
  %or.cond = or i1 %i.bt, %i.bu
  %i.bv = fptosi float %i.ao to i16
  %i.bw = icmp slt i16 %.058.lcssa, %i.bv
  %or.cond51 = select i1 %or.cond, i1 true, i1 %i.bw
  %i.bx = add nsw i32 %.lcssa, 2
  %spec.select52 = select i1 %or.cond51, i32 31007, i32 %i.bx
  br label %.loopexit

.lr.ph68:                                         ; preds = %.lr.ph, %bb.c
  %.05867 = phi i16 [ %i.by, %bb.c ], [ %i.bb, %.lr.ph ]
  %i.by = add i16 %.05867, -1                     ; 4 uses
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = load i32, ptr %i.au, align 4, !tbaa !139
  %.not = icmp sgt i32 %i.ca, %i.bz
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !140

.loopexit:                                        ; preds = %.lr.ph68, %bb.b, %._crit_edge, %bb.a
  %.4 = phi i32 [ 31007, %bb.a ], [ %spec.select52, %._crit_edge ], [ 31007, %bb.b ], [ 31007, %.lr.ph68 ]
  ret i32 %.4
}

declare noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -31007, 32768) i32 @_ZN13MapgenValleys15generateTerrainEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.b = load i16, ptr %i.a, align 4, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i16, ptr %i.c, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.f = load i16, ptr %i.e, align 2, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 9 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !145
  %i.k = sitofp nsz i16 %i.j to float
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 8 uses
  %i.m = load i16, ptr %i.l, align 4, !tbaa !146
  %i.n = sitofp nsz i16 %i.m to float
  %i.o = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.h, float noundef %i.k, float noundef %i.n, ptr noundef null) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.r = load i16, ptr %i.i, align 8, !tbaa !145
  %i.s = sitofp nsz i16 %i.r to float
  %i.t = load i16, ptr %i.l, align 4, !tbaa !146
  %i.u = sitofp nsz i16 %i.t to float
  %i.v = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.q, float noundef %i.s, float noundef %i.u, ptr noundef null) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.y = load i16, ptr %i.i, align 8, !tbaa !145
  %i.z = sitofp nsz i16 %i.y to float
  %i.aa = load i16, ptr %i.l, align 4, !tbaa !146
  %i.ab = sitofp nsz i16 %i.aa to float
  %i.ac = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.x, float noundef %i.z, float noundef %i.ab, ptr noundef null) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !77
  %i.af = load i16, ptr %i.i, align 8, !tbaa !145
  %i.ag = sitofp nsz i16 %i.af to float
  %i.ah = load i16, ptr %i.l, align 4, !tbaa !146
  %i.ai = sitofp nsz i16 %i.ah to float
  %i.aj = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.ae, float noundef %i.ag, float noundef %i.ai, ptr noundef null) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78
  %i.am = load i16, ptr %i.i, align 8, !tbaa !145
  %i.an = sitofp nsz i16 %i.am to float
  %i.ao = load i16, ptr %i.l, align 4, !tbaa !146
  %i.ap = sitofp nsz i16 %i.ao to float
  %i.aq = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.al, float noundef %i.an, float noundef %i.ap, ptr noundef null) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !80
  %i.at = load i16, ptr %i.i, align 8, !tbaa !145
  %i.au = sitofp nsz i16 %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !147
  %i.ax = sext i16 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = sitofp nsz i32 %i.ay to float
  %i.ba = load i16, ptr %i.l, align 4, !tbaa !146
  %i.bb = sitofp nsz i16 %i.ba to float
  %i.bc = tail call noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.as, float noundef %i.au, float noundef %i.az, float noundef %i.bb, ptr noundef null) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !124
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bg = load i16, ptr %i.l, align 4, !tbaa !146 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 222 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !148 ; 2 uses
  %.not148 = icmp sgt i16 %i.bg, %i.bj
  br i1 %.not148, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %.sroa.0.0.insert.ext = zext i16 %i.f to i32
  %.sroa.0126.0.insert.ext = zext i16 %i.b to i32
  %.sroa.0123.0.insert.ext = zext i16 %i.d to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bt = load i16, ptr %i.i, align 8, !tbaa !145
  %i.bu = load i16, ptr %i.bh, align 2, !tbaa !149 ; 2 uses
  %i.bv = icmp sgt i16 %i.bt, %i.bu
  br i1 %i.bv, label %._crit_edge154, label %.lr.ph153.split

._crit_edge154.loopexit156:                       ; preds = %._crit_edge145
  %i.bw = sext i16 %.1.lcssa to i32
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %.lr.ph153, %._crit_edge154.loopexit156, %bb.a
  %.0.lcssa = phi i32 [ -31007, %bb.a ], [ %i.bw, %._crit_edge154.loopexit156 ], [ -31007, %.lr.ph153 ]
  ret i32 %.0.lcssa

.lr.ph153.split:                                  ; preds = %.lr.ph153, %._crit_edge145
  %i.bx = phi i16 [ %i.cb, %._crit_edge145 ], [ %i.bj, %.lr.ph153 ]
  %i.by = phi i16 [ %i.cc, %._crit_edge145 ], [ %i.bu, %.lr.ph153 ] ; 2 uses
  %.0151 = phi i16 [ %.1.lcssa, %._crit_edge145 ], [ -31007, %.lr.ph153 ] ; 2 uses
  %.091150 = phi i32 [ %.192.lcssa, %._crit_edge145 ], [ 0, %.lr.ph153 ] ; 2 uses
  %.093149 = phi i16 [ %i.cd, %._crit_edge145 ], [ %i.bg, %.lr.ph153 ] ; 2 uses
  %i.bz = sext i16 %.093149 to i32                ; 2 uses
  %i.ca = load i16, ptr %i.i, align 8, !tbaa !145 ; 2 uses
  %.not108139 = icmp sgt i16 %i.ca, %i.by
  br i1 %.not108139, label %._crit_edge145, label %.lr.ph144

._crit_edge145.loopexit:                          ; preds = %bb.y
  %.pre157 = load i16, ptr %i.bi, align 2, !tbaa !148
  br label %._crit_edge145

._crit_edge145:                                   ; preds = %._crit_edge145.loopexit, %.lr.ph153.split
  %i.cb = phi i16 [ %i.bx, %.lr.ph153.split ], [ %.pre157, %._crit_edge145.loopexit ] ; 2 uses
  %i.cc = phi i16 [ %i.by, %.lr.ph153.split ], [ %i.jw, %._crit_edge145.loopexit ]
  %.192.lcssa = phi i32 [ %.091150, %.lr.ph153.split ], [ %i.jv, %._crit_edge145.loopexit ]
  %.1.lcssa = phi i16 [ %.0151, %.lr.ph153.split ], [ %.088.lcssa.a, %._crit_edge145.loopexit ] ; 2 uses
  %i.cd = add i16 %.093149, 1                     ; 2 uses
  %.not = icmp sgt i16 %i.cd, %i.cb
  br i1 %.not, label %._crit_edge154.loopexit156, label %.lr.ph153.split, !llvm.loop !150

.lr.ph144:                                        ; preds = %.lr.ph153.split, %bb.y
  %.1142 = phi i16 [ %.088.lcssa.a, %bb.y ], [ %.0151, %.lr.ph153.split ] ; 2 uses
  %.192141 = phi i32 [ %i.jv, %bb.y ], [ %.091150, %.lr.ph153.split ] ; 2 uses
  %.098140 = phi i16 [ %i.ju, %bb.y ], [ %i.ca, %.lr.ph153.split ] ; 2 uses
  %i.ce = sext i16 %.098140 to i32                ; 2 uses
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !152
  %i.ci = zext i32 %.192141 to i64                ; 10 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !67
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !152
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ci
  %i.cp = load float, ptr %i.co, align 4, !tbaa !67
  %i.cq = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !152
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ci
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !67
  %i.cv = load ptr, ptr %i.ad, align 8, !tbaa !77
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !152
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ci
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !67 ; 2 uses
  %i.da = load ptr, ptr %i.ak, align 8, !tbaa !78
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !152
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ci
  %i.de = load float, ptr %i.dd, align 4, !tbaa !67
  %i.df = fmul nsz float %i.cz, %i.cz             ; 2 uses
  %i.dg = fadd nsz float %i.cu, %i.df             ; 8 uses
  %i.dh = tail call nsz noundef float @llvm.fabs.f32(float %i.cp)
  %i.di = load float, ptr %i.bk, align 8, !tbaa !58 ; 2 uses
  %i.dj = fsub nsz float %i.dh, %i.di             ; 3 uses
  %i.dk = fdiv nsz float %i.dj, %i.de
  %i.dl = tail call nsz noundef float @llvm.maxnum.f32(float %i.dk, float 0.000000e+00) ; 2 uses
  %i.dm = fneg nsz float %i.dl
  %i.dn = fmul nsz float %i.dl, %i.dm
  %i.do = tail call nsz noundef float @llvm.exp.f32(float %i.dn)
  %i.dp = fsub nsz float 1.000000e+00, %i.do
  %i.dq = fmul nsz float %i.df, %i.dp             ; 2 uses
  %i.dr = fadd nsz float %i.dg, %i.dq             ; 2 uses
  %i.ds = fmul nsz float %i.ck, %i.dq
  %i.dt = fadd nsz float %i.dg, -1.000000e+00     ; 3 uses
  %i.du = fcmp nsz olt float %i.dj, 0.000000e+00
  br i1 %i.du, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph144
  %i.dv = fdiv nsz float %i.dj, %i.di
  %i.dw = fadd nsz float %i.dv, 1.000000e+00      ; 2 uses
  %i.dx = load float, ptr %i.bl, align 4, !tbaa !56
  %i.dy = fneg nsz float %i.dw
  %i.dz = tail call nsz float @llvm.fmuladd.f32(float %i.dy, float %i.dw, float 1.000000e+00)
  %i.ea = tail call nsz noundef float @llvm.maxnum.f32(float %i.dz, float 0.000000e+00)
  %i.eb = tail call nnan nsz float @llvm.sqrt.f32(float %i.ea)
  %i.ec = fmul nsz float %i.eb, %i.dx
  %i.ed = fsub nsz float %i.dg, %i.ec
  %i.ee = load i32, ptr %i.bm, align 4, !tbaa !139
  %i.ef = add nsw i32 %i.ee, -3
  %i.eg = sitofp nsz i32 %i.ef to float
  %i.eh = tail call nsz noundef float @llvm.maxnum.f32(float %i.ed, float %i.eg)
  %i.ei = tail call nsz noundef float @llvm.minnum.f32(float %i.eh, float %i.dr)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph144
  %.097.a = phi nsz float [ %i.ei, %bb.b ], [ %i.dr, %.lr.ph144 ] ; 2 uses
  %.096 = phi nsz float [ 0.000000e+00, %bb.b ], [ %i.ds, %.lr.ph144 ]
  %i.ej = load i32, ptr %i.bn, align 4, !tbaa !51 ; 3 uses
  %i.ek = and i32 %i.ej, 4
  %.not109.a = icmp eq i32 %i.ek, 0
  br i1 %.not109.a, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.el = load ptr, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !153
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ci
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !67 ; 2 uses
  %i.eq = and i32 %i.ej, 1
  %.not110 = icmp eq i32 %i.eq, 0
  br i1 %.not110, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.er = fadd nsz float %i.ep, 5.000000e+00
  %i.es = load i32, ptr %i.bm, align 4, !tbaa !139
  %i.et = sitofp nsz i32 %i.es to float
  %i.eu = fsub nsz float %i.dg, %i.et
  %i.ev = fmul nsz float %i.eu, 2.000000e+01
  %i.ew = load float, ptr %i.bp, align 8, !tbaa !54
  %i.ex = fdiv nsz float %i.ev, %i.ew
  %i.ey = fsub nsz float %i.er, %i.ex
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ez = phi nsz float [ %i.ey, %bb.e ], [ %i.ep, %bb.d ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !161
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ci
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !67
  %i.fe = fadd nsz float %i.fd, -5.000000e+01     ; 2 uses
  %i.ff = fcmp nsz olt float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fg = fadd nsz float %i.ez, -3.200000e+01
  %i.fh = fdiv nsz float %i.fg, 3.000000e+02
  %i.fi = tail call nsz noundef float @llvm.maxnum.f32(float %i.fh, float 8.000000e-02)
  %i.fj = tail call nsz float @llvm.fmuladd.f32(float %i.fe, float %i.fi, float %i.dt)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.195 = phi nsz float [ %i.dt, %bb.c ], [ %i.fj, %bb.g ], [ %i.dt, %bb.f ]
  %i.fk = fptosi float %.097.a to i16             ; 2 uses
  %i.fl = load i16, ptr %i.av, align 2, !tbaa !147
  %i.fm = add i16 %i.fl, -1                       ; 2 uses
  %i.fn = sext i16 %i.fm to i32                   ; 3 uses
  %i.fo = load i16, ptr %i.br, align 8, !tbaa !162
  %i.fp = sext i16 %i.fo to i32
  %i.fq = add nsw i32 %i.fp, 1
  %.not111132 = icmp slt i32 %i.fq, %i.fn
  br i1 %.not111132, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.fr = load ptr, ptr %i.bd, align 8, !tbaa !124 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i16, ptr %i.fs, align 4, !tbaa !163
  %i.fu = sext i16 %i.ft to i32
  %i.fv = sub nsw i32 %i.ce, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.fx = load i16, ptr %i.fw, align 4, !tbaa !166
  %i.fy = sext i16 %i.fx to i32
  %i.fz = sub nsw i32 %i.bz, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !167
  %i.gc = mul nsw i32 %i.fz, %i.gb
  %i.gd = add i32 %i.gc, %i.fn
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 10
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !168
  %i.gg = sext i16 %i.gf to i32
  %i.gh = sub i32 %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !169
  %i.gk = mul i32 %i.gh, %i.gj
  %i.gl = add nsw i32 %i.fv, %i.gk
  %i.gm = load i16, ptr %i.i, align 8, !tbaa !145
  %i.gn = sext i16 %i.gm to i32
  %i.go = sub nsw i32 %i.ce, %i.gn
  %i.gp = load i16, ptr %i.l, align 4, !tbaa !146
  %i.gq = sext i16 %i.gp to i32
  %i.gr = sub nsw i32 %i.bz, %i.gq
  %i.gs = load i32, ptr %i.bq, align 8, !tbaa !170
  %i.gt = mul nsw i32 %i.gr, %i.gs
  %i.gu = add nsw i32 %i.go, %i.gt
  %i.gv = fptosi float %.195 to i16
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.q
  %.pre = load i32, ptr %i.bn, align 4, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.gw = phi i32 [ %i.ej, %bb.h ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.088.lcssa.a = phi i16 [ %.1142, %bb.h ], [ %.290, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi i16 [ %i.fk, %bb.h ], [ %.5, %._crit_edge.loopexit ] ; 3 uses
  %i.gx = and i32 %i.gw, 2
  %.not112.a = icmp eq i32 %i.gx, 0
  br i1 %.not112.a, label %bb.s, label %bb.r

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %i.gy = phi i32 [ %i.fn, %.lr.ph ], [ %i.hw, %bb.q ]
  %.2137 = phi i16 [ %i.fm, %.lr.ph ], [ %i.hv, %bb.q ] ; 5 uses
  %.087137 = phi i32 [ %i.gu, %.lr.ph ], [ %i.hu, %bb.q ] ; 2 uses
  %.088136 = phi i16 [ %i.fk, %.lr.ph ], [ %.5, %bb.q ] ; 5 uses
  %.088134 = phi i16 [ %.1142, %.lr.ph ], [ %.290, %bb.q ] ; 5 uses
  %.0129133 = phi i32 [ %i.gl, %.lr.ph ], [ %i.hs, %bb.q ] ; 2 uses
  %i.gz = load ptr, ptr %i.bd, align 8, !tbaa !124
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !171
  %i.hc = zext i32 %.0129133 to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hc ; 5 uses
  %i.he = load i16, ptr %i.hd, align 4, !tbaa !174
  %i.hf = icmp eq i16 %i.he, 127
  br i1 %i.hf, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.hg = load ptr, ptr %i.ar, align 8, !tbaa !80
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 80
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !152
  %i.hj = zext i32 %.087137 to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !67
  %i.hm = sitofp nsz i16 %.2137 to float
  %i.hn = fsub nsz float %.097.a, %i.hm
  %i.ho = tail call nsz float @llvm.fmuladd.f32(float %.096, float %i.hl, float %i.hn)
  %i.hp = fcmp nsz ogt float %i.ho, 0.000000e+00
  br i1 %i.hp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %.sroa.0123.0.insert.ext, ptr %i.hd, align 4
  %spec.select = tail call i16 @llvm.smax.i16(i16 %.2137, i16 %.088134)
  %spec.select117 = tail call i16 @llvm.smax.i16(i16 %.2137, i16 %.088136)
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.hq = load i32, ptr %i.bm, align 4, !tbaa !139
  %.not115.a = icmp slt i32 %i.hq, %i.gy
  br i1 %.not115.a, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %.sroa.0.0.insert.ext, ptr %i.hd, align 4
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %.not116 = icmp sgt i16 %.2137, %i.gv
  br i1 %.not116, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.sroa.0126.0.insert.ext, ptr %i.hd, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 126, ptr %i.hd, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.o, %bb.p, %bb.m, %bb.i
  %.290 = phi i16 [ %.088134, %bb.i ], [ %.088134, %bb.p ], [ %spec.select, %bb.k ], [ %.088134, %bb.m ], [ %.088134, %bb.o ] ; 2 uses
  %.5 = phi i16 [ %.088136, %bb.i ], [ %.088136, %bb.p ], [ %spec.select117, %bb.k ], [ %.088136, %bb.m ], [ %.088136, %bb.o ] ; 2 uses
  %i.hr = load i32, ptr %i.bf, align 4, !tbaa !176
  %i.hs = add i32 %i.hr, %.0129133
  %i.ht = load i32, ptr %i.bs, align 4, !tbaa !177
  %i.hu = add i32 %i.ht, %.087137
  %i.hv = add i16 %.2137, 1                       ; 2 uses
  %i.hw = sext i16 %i.hv to i32                   ; 2 uses
  %i.hx = load i16, ptr %i.br, align 8, !tbaa !162
  %i.hy = sext i16 %i.hx to i32
  %i.hz = add nsw i32 %i.hy, 1
  %.not111 = icmp slt i32 %i.hz, %i.hw
  br i1 %.not111, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !178

bb.r:                                             ; preds = %._crit_edge
  %i.ia = load ptr, ptr %i.bo, align 8, !tbaa !11
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !161
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ci ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !67
  %i.if = fmul nsz float %i.ie, 8.000000e-01
  %i.ig = sitofp nsz i16 %.2.lcssa to float
  %i.ih = tail call nsz noundef float @llvm.maxnum.f32(float %i.dg, float %i.ig)
  %i.ii = fsub nsz float %i.ih, %i.dg
  %i.ij = fmul nsz float %i.ii, 2.500000e-01
  %i.ik = tail call nsz noundef float @llvm.maxnum.f32(float %i.ij, float 1.000000e+00)
  %mul = fneg nsz float %i.ik
  %exp2 = tail call nnan nsz float @llvm.exp2.f32(float %mul)
  %i.il = fadd nnan nsz float %exp2, 1.000000e+00
  %i.im = fmul nsz float %i.il, %i.if
  store float %i.im, ptr %i.id, align 4, !tbaa !67
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.in = and i32 %i.gw, 8
  %.not113 = icmp eq i32 %i.in, 0
  br i1 %.not113, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.io = sitofp nsz i16 %.2.lcssa to float
  %i.ip = tail call nsz noundef float @llvm.maxnum.f32(float %i.dg, float %i.io) ; 2 uses
  %i.iq = load i32, ptr %i.bm, align 4, !tbaa !139
  %i.ir = sitofp nsz i32 %i.iq to float           ; 2 uses
  %i.is = fcmp nsz ogt float %i.ip, %i.ir
  br i1 %i.is, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.it = fsub nnan nsz float %i.ip, %i.ir
  %i.iu = fmul nnan nsz float %i.it, 1.000000e+01
  %i.iv = load float, ptr %i.bp, align 8, !tbaa !54
  %i.iw = fdiv nsz float %i.iu, %i.iv
  %i.ix = load ptr, ptr %i.bo, align 8, !tbaa !11
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !161
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ci ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !67
  %i.jc = fsub nsz float %i.jb, %i.iw
  store float %i.jc, ptr %i.ja, align 4, !tbaa !67
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %i.jd = and i32 %i.gw, 1
  %.not114 = icmp eq i32 %i.jd, 0
  br i1 %.not114, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.je = load ptr, ptr %i.bo, align 8, !tbaa !11
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !153
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ci ; 3 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !67
  %i.jj = fadd nsz float %i.ji, 5.000000e+00      ; 2 uses
  store float %i.jj, ptr %i.jh, align 4, !tbaa !67
  %i.jk = sitofp nsz i16 %.2.lcssa to float
  %i.jl = tail call nsz noundef float @llvm.maxnum.f32(float %i.dg, float %i.jk) ; 2 uses
  %i.jm = load i32, ptr %i.bm, align 4, !tbaa !139
  %i.jn = sitofp nsz i32 %i.jm to float           ; 2 uses
  %i.jo = fcmp nsz ogt float %i.jl, %i.jn
  br i1 %i.jo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jp = fsub nnan nsz float %i.jl, %i.jn
  %i.jq = fmul nnan nsz float %i.jp, 2.000000e+01
  %i.jr = load float, ptr %i.bp, align 8, !tbaa !54
  %i.js = fdiv nsz float %i.jq, %i.jr
  %i.jt = fsub nsz float %i.jj, %i.js
  store float %i.jt, ptr %i.jh, align 4, !tbaa !67
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.ju = add i16 %.098140, 1                     ; 2 uses
  %i.jv = add i32 %.192141, 1                     ; 2 uses
  %i.jw = load i16, ptr %i.bh, align 2, !tbaa !149 ; 2 uses
  %.not108 = icmp sgt i16 %i.ju, %i.jw
  br i1 %.not108, label %._crit_edge145.loopexit, label %.lr.ph144, !llvm.loop !179
}

declare noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK13MapgenValleys7getTypeEv(ptr noundef nonnull align 8 dereferenceable(552) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN6Mapgen21getGroundLevelAtPointEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZN11MapgenBasic14generateBiomesEv(ptr noundef nonnull align 8 dereferenceable(474)) unnamed_addr #1

declare void @_ZN11MapgenBasic12dustTopNodesEv(ptr noundef nonnull align 8 dereferenceable(474)) unnamed_addr #1

declare void @_ZN11MapgenBasic30generateCavesNoiseIntersectionEs(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext) unnamed_addr #1

declare void @_ZN11MapgenBasic23generateCavesRandomWalkEss(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext, i16 noundef signext) unnamed_addr #1

declare noundef zeroext i1 @_ZN11MapgenBasic20generateCavernsNoiseEs(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext) unnamed_addr #1

declare void @_ZN11MapgenBasic16generateDungeonsEs(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN12MapgenParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19MapgenValleysParamsD0Ev(ptr noundef nonnull align 8 dereferenceable(536) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN12MapgenParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 536) #13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !45, i64 480}
!12 = !{!"_ZTS13MapgenValleys", !13, i64 0, !45, i64 480, !40, i64 488, !40, i64 492, !40, i64 496, !42, i64 504, !42, i64 512, !42, i64 520, !42, i64 528, !42, i64 536, !42, i64 544}
!13 = !{!"_ZTS11MapgenBasic", !14, i64 0, !41, i64 200, !42, i64 208, !21, i64 216, !21, i64 222, !21, i64 228, !21, i64 234, !22, i64 240, !22, i64 242, !22, i64 244, !22, i64 246, !22, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !43, i64 272, !43, i64 312, !43, i64 352, !43, i64 392, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !40, i64 464, !22, i64 468, !22, i64 470, !22, i64 472}
!14 = !{!"_ZTS6Mapgen", !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !15, i64 24, !6, i64 28, !16, i64 32, !18, i64 40, !19, i64 48, !6, i64 56, !20, i64 64, !20, i64 72, !21, i64 80, !23, i64 88, !24, i64 96}
!15 = !{!"bool", !7, i64 0}
!16 = !{!"p1 _ZTS8MMVManip", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"p1 _ZTS12EmergeParams", !17, i64 0}
!19 = !{!"p1 _ZTS14NodeDefManager", !17, i64 0}
!20 = !{!"p1 short", !17, i64 0}
!21 = !{!"_ZTSN4core8vector3dIsEE", !22, i64 0, !22, i64 2, !22, i64 4}
!22 = !{!"short", !7, i64 0}
!23 = !{!"p1 _ZTS8BiomeGen", !17, i64 0}
!24 = !{!"_ZTS16GenerateNotifier", !6, i64 0, !25, i64 8, !26, i64 16, !27, i64 24, !32, i64 48}
!25 = !{!"p1 _ZTSSt3setIjSt4lessIjESaIjEE", !17, i64 0}
!26 = !{!"p1 _ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !17, i64 0}
!27 = !{!"_ZTSSt6vectorIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN16GenerateNotifier14GenNotifyEventE", !17, i64 0}
!32 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !33, i64 0}
!33 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !34, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !39, i64 32, !38, i64 48}
!34 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !35, i64 0}
!35 = !{!"any p2 pointer", !17, i64 0}
!36 = !{!"long", !7, i64 0}
!37 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !38, i64 0}
!38 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!39 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !40, i64 0, !36, i64 8}
!40 = !{!"float", !7, i64 0}
!41 = !{!"p1 _ZTS12BiomeManager", !17, i64 0}
!42 = !{!"p1 _ZTS5Noise", !17, i64 0}
!43 = !{!"_ZTS11NoiseParams", !40, i64 0, !40, i64 4, !44, i64 8, !6, i64 20, !22, i64 24, !40, i64 28, !40, i64 32, !6, i64 36}
!44 = !{!"_ZTSN4core8vector3dIfEE", !40, i64 0, !40, i64 4, !40, i64 8}
!45 = !{!"p1 _ZTS16BiomeGenOriginal", !17, i64 0}
!46 = !{!14, !23, i64 88}
!47 = !{!48, !6, i64 40}
!48 = !{!"_ZTS12MapgenParams", !49, i64 8, !21, i64 12, !36, i64 24, !22, i64 32, !22, i64 34, !6, i64 36, !6, i64 40, !50, i64 48}
!49 = !{!"_ZTS10MapgenType", !7, i64 0}
!50 = !{!"p1 _ZTS11BiomeParams", !17, i64 0}
!51 = !{!13, !6, i64 268}
!52 = !{!53, !22, i64 56}
!53 = !{!"_ZTS19MapgenValleysParams", !48, i64 0, !22, i64 56, !22, i64 58, !22, i64 60, !40, i64 64, !22, i64 68, !22, i64 70, !22, i64 72, !22, i64 74, !22, i64 76, !40, i64 80, !22, i64 84, !22, i64 86, !40, i64 88, !22, i64 92, !22, i64 94, !43, i64 96, !43, i64 136, !43, i64 176, !43, i64 216, !43, i64 256, !43, i64 296, !43, i64 336, !43, i64 376, !43, i64 416, !43, i64 456, !43, i64 496}
!54 = !{!12, !40, i64 488}
!55 = !{!53, !22, i64 58}
!56 = !{!12, !40, i64 492}
!57 = !{!53, !22, i64 60}
!58 = !{!12, !40, i64 496}
!59 = !{!53, !40, i64 64}
!60 = !{!13, !40, i64 432}
!61 = !{!53, !22, i64 68}
!62 = !{!13, !22, i64 468}
!63 = !{!22, !22, i64 0}
!64 = !{!6, !6, i64 0}
!65 = !{!53, !40, i64 80}
!66 = !{!13, !40, i64 464}
!67 = !{!40, !40, i64 0}
!68 = !{!53, !40, i64 88}
!69 = !{!13, !40, i64 444}
!70 = !{!14, !6, i64 8}
!71 = !{!14, !22, i64 80}
!72 = !{!14, !22, i64 84}
!73 = !{!13, !42, i64 208}
!74 = !{!12, !42, i64 512}
!75 = !{!12, !42, i64 520}
!76 = !{!12, !42, i64 528}
!77 = !{!12, !42, i64 536}
!78 = !{!12, !42, i64 544}
!79 = !{!14, !22, i64 82}
!80 = !{!12, !42, i64 504}
!81 = !{i64 0, i64 4, !67, i64 4, i64 4, !67, i64 8, i64 4, !67, i64 12, i64 4, !67, i64 16, i64 4, !67, i64 20, i64 4, !64, i64 24, i64 2, !63, i64 28, i64 4, !67, i64 32, i64 4, !67, i64 36, i64 4, !64}
!82 = !{!48, !49, i64 8}
!83 = !{!21, !22, i64 0}
!84 = !{!21, !22, i64 2}
!85 = !{!21, !22, i64 4}
!86 = !{!48, !36, i64 24}
!87 = !{!48, !22, i64 32}
!88 = !{!48, !22, i64 34}
end_hunk_0
