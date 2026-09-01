Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec_fixed?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 24
begin_hunk_0_@apply_dependent_coupling_fixed:bb.a
  br i1 %i.cv, label %._crit_edge92, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op177 = add nuw nsw i64 1, %i.bs
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv113 = phi i64 [ %indvars.iv113.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next114.1, %scalar.ph ] ; 3 uses
  %i.cw = add nuw nsw i64 %indvars.iv113, %i.bs   ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.079102, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !47
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %i.cz, %i.bj
  %i.db = add nsw i64 %i.da, 68719476736
  %i.dc = ashr i64 %i.db, 37
  %i.dd = add nsw i64 %i.dc, %i.bk
  %i.de = ashr i64 %i.dd, %i.bl
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.080101, i64 %i.cw ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !47
  %i.dh = trunc nsw i64 %i.de to i32
  %i.di = add i32 %i.dg, %i.dh
  store i32 %i.di, ptr %i.df, align 4, !tbaa !47
  %.reass178 = add nuw nsw i64 %indvars.iv113, %invariant.op177 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.079102, i64 %.reass178
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !47
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.dl, %i.bj
  %i.dn = add nsw i64 %i.dm, 68719476736
  %i.do = ashr i64 %i.dn, 37
  %i.dp = add nsw i64 %i.do, %i.bk
  %i.dq = ashr i64 %i.dp, %i.bl
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.080101, i64 %.reass178 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !47
  %i.dt = trunc nsw i64 %i.dq to i32
  %i.du = add i32 %i.ds, %i.dt
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !47
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %exitcond117.not.1 = icmp eq i64 %indvars.iv.next114.1, %wide.trip.count116
  br i1 %exitcond117.not.1, label %._crit_edge92, label %scalar.ph, !llvm.loop !247

._crit_edge92:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.dv = load i8, ptr %i.t, align 1, !tbaa !41
  %i.dw = zext i8 %i.dv to i64
  %i.dx = icmp samesign ult i64 %indvars.iv.next119, %i.dw
  br i1 %i.dx, label %.lr.ph91, label %.loopexit, !llvm.loop !248

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv110 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next111, %._crit_edge ] ; 3 uses
  %i.dy = shl nuw nsw i64 %indvars.iv110, 7       ; 4 uses
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph
  %i.dz = shl nuw nsw i64 %indvars.iv110, 9       ; 2 uses
  %i.ea = add nuw i64 %i.ax, %i.dz                ; 2 uses
  %scevgep150 = getelementptr i8, ptr %.079102, i64 %i.ea
  %i.eb = add nuw i64 %i.aw, %i.dz                ; 2 uses
  %scevgep149 = getelementptr nuw i8, ptr %.079102, i64 %i.eb
  %scevgep148 = getelementptr i8, ptr %.080101, i64 %i.ea
  %scevgep147 = getelementptr nuw i8, ptr %.080101, i64 %i.eb
  %bound0151 = icmp ult ptr %scevgep147, %scevgep150
  %bound1152 = icmp ult ptr %scevgep149, %scevgep148
  %found.conflict153 = and i1 %bound0151, %bound1152
  br i1 %found.conflict153, label %scalar.ph154.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck146
  %invariant.op = add nuw i64 %i.av, %i.dy
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph156
  %index163 = phi i64 [ 0, %vector.ph156 ], [ %index.next166, %vector.body162 ] ; 2 uses
  %.reass = add nuw i64 %index163, %invariant.op  ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.079102, i64 %.reass
  %wide.load164 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !47, !alias.scope !249
  %i.ed = sext <4 x i32> %wide.load164 to <4 x i64>
  %i.ee = mul nsw <4 x i64> %broadcast.splat159, %i.ed
  %i.ef = add nsw <4 x i64> %i.ee, splat (i64 68719476736)
  %i.eg = ashr <4 x i64> %i.ef, splat (i64 37)
  %i.eh = trunc nsw <4 x i64> %i.eg to <4 x i32>
  %i.ei = shl <4 x i32> %i.eh, %broadcast.splat161
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.080101, i64 %.reass ; 2 uses
  %wide.load165 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !47, !alias.scope !252, !noalias !249
  %i.ek = add <4 x i32> %i.ei, %wide.load165
  store <4 x i32> %i.ek, ptr %i.ej, align 4, !tbaa !47, !alias.scope !252, !noalias !249
  %index.next166 = add nuw i64 %index163, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next166, %n.vec157
  br i1 %i.el, label %middle.block167, label %vector.body162, !llvm.loop !254

middle.block167:                                  ; preds = %vector.body162
  br i1 %cmp.n168, label %._crit_edge, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %vector.memcheck146, %.lr.ph, %middle.block167
  %indvars.iv.ph = phi i64 [ %i.av, %vector.memcheck146 ], [ %i.av, %.lr.ph ], [ %i.az, %middle.block167 ] ; 5 uses
  %i.em = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.em, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph154.prol.loopexit, label %scalar.ph154.prol

scalar.ph154.prol:                                ; preds = %scalar.ph154.preheader
  %i.en = add nuw nsw i64 %indvars.iv.ph, %i.dy   ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.079102, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !47
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul nsw i64 %i.eq, %i.au
  %i.es = add nsw i64 %i.er, 68719476736
  %i.et = ashr i64 %i.es, 37
  %i.eu = trunc nsw i64 %i.et to i32
  %i.ev = shl i32 %i.eu, %.071
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.080101, i64 %i.en ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !47
  %i.ey = add i32 %i.ev, %i.ex
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !47
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph154.prol.loopexit

scalar.ph154.prol.loopexit:                       ; preds = %scalar.ph154.prol, %scalar.ph154.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph154.preheader ], [ %indvars.iv.next.prol, %scalar.ph154.prol ]
  %i.ez = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.ez, label %._crit_edge, label %scalar.ph154.preheader.new

scalar.ph154.preheader.new:                       ; preds = %scalar.ph154.prol.loopexit
  %invariant.op173 = add nuw nsw i64 1, %i.dy
  br label %scalar.ph154

scalar.ph154:                                     ; preds = %scalar.ph154, %scalar.ph154.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph154.preheader.new ], [ %indvars.iv.next.1, %scalar.ph154 ] ; 3 uses
  %i.fa = add nuw nsw i64 %indvars.iv, %i.dy      ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.079102, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !47
  %i.fd = sext i32 %i.fc to i64
  %i.fe = mul nsw i64 %i.fd, %i.au
  %i.ff = add nsw i64 %i.fe, 68719476736
  %i.fg = ashr i64 %i.ff, 37
  %i.fh = trunc nsw i64 %i.fg to i32
  %i.fi = shl i32 %i.fh, %.071
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.080101, i64 %i.fa ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !47
  %i.fl = add i32 %i.fi, %i.fk
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !47
  %.reass174 = add nuw nsw i64 %indvars.iv, %invariant.op173 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.079102, i64 %.reass174
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !47
  %i.fo = sext i32 %i.fn to i64
  %i.fp = mul nsw i64 %i.fo, %i.au
  %i.fq = add nsw i64 %i.fp, 68719476736
  %i.fr = ashr i64 %i.fq, 37
  %i.fs = trunc nsw i64 %i.fr to i32
  %i.ft = shl i32 %i.fs, %.071
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.080101, i64 %.reass174 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !47
  %i.fw = add i32 %i.ft, %i.fv
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph154, !llvm.loop !255

._crit_edge:                                      ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154, %middle.block167
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.fx = load i8, ptr %i.t, align 1, !tbaa !41
  %i.fy = zext i8 %i.fx to i64
  %i.fz = icmp samesign ult i64 %indvars.iv.next111, %i.fy
  br i1 %i.fz, label %.lr.ph, label %.loopexit, !llvm.loop !256

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge92, %.preheader, %.lr.ph88, %bb.j, %.lr.ph95, %bb.h, %bb.d
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge100, label %bb.d, !llvm.loop !257

._crit_edge100:                                   ; preds = %.loopexit
  %i.ga = load i8, ptr %i.t, align 1, !tbaa !41
  %i.gb = zext i8 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 7                ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.080101, i64 %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.079102, i64 %i.gc
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.gf = load i32, ptr %i.i, align 8, !tbaa !42
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next131, %i.gg
  br i1 %i.gh, label %.preheader84, label %.loopexit85, !llvm.loop !258

.loopexit85:                                      ; preds = %._crit_edge100, %bb.c, %.preheader84.lr.ph, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @apply_independent_coupling_fixed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80952
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [480 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 8, !tbaa !41
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40488
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 23272
  %i.k = load i32, ptr %i.j, align 8, !tbaa !259
  %i.l = icmp eq i32 %i.k, 1
  %i.m = zext i1 %i.l to i32
  %i.n = shl nuw nsw i32 1024, %i.m               ; 2 uses
  %i.o = and i32 %i.e, 7
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @cce_scale_fixed, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  %i.s = add nsw i32 %i.e, -1024
  %i.t = ashr i32 %i.s, 3                         ; 7 uses
  %i.u = icmp slt i32 %i.t, -31
  br i1 %i.u, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %vector.memcheck48, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.w = sext i32 %i.r to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %4 = shl nuw nsw i64 %wide.trip.count, 2        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %4
  %scevgep44 = getelementptr i8, ptr %i.g, i64 %4
  %bound0 = icmp ult ptr %i.i, %scevgep44
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat46 = shufflevector <4 x i32> %broadcast.splatinsert45, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !47, !alias.scope !260
  %i.y = sext <4 x i32> %wide.load to <4 x i64>
  %i.z = mul nsw <4 x i64> %broadcast.splat, %i.y
  %i.aa = add nsw <4 x i64> %i.z, splat (i64 68719476736)
  %i.ab = ashr <4 x i64> %i.aa, splat (i64 37)
  %i.ac = trunc nsw <4 x i64> %i.ab to <4 x i32>
  %i.ad = shl <4 x i32> %i.ac, %broadcast.splat46
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %wide.load47 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !47, !alias.scope !263, !noalias !260
  %i.af = add <4 x i32> %i.ad, %wide.load47
  store <4 x i32> %i.af, ptr %i.ae, align 4, !tbaa !47, !alias.scope !263, !noalias !260
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %wide.trip.count
  br i1 %i.ag, label %.loopexit, label %vector.body, !llvm.loop !265

vector.memcheck48:                                ; preds = %bb.b
  %i.ah = sub nsw i32 0, %i.t                     ; 3 uses
  %i.ai = xor i32 %i.t, -1
  %i.aj = shl nuw nsw i32 1, %i.ai                ; 3 uses
  %i.ak = sext i32 %i.r to i64                    ; 3 uses
  %wide.trip.count40 = zext nneg i32 %i.n to i64  ; 3 uses
  %5 = shl nuw nsw i64 %wide.trip.count40, 2      ; 2 uses
  %scevgep49 = getelementptr i8, ptr %i.i, i64 %5
  %scevgep50 = getelementptr i8, ptr %i.g, i64 %5
  %bound051 = icmp ult ptr %i.i, %scevgep50
  %bound152 = icmp ult ptr %i.g, %scevgep49
  %found.conflict53 = and i1 %bound051, %bound152
  br i1 %found.conflict53, label %scalar.ph54, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck48
  %broadcast.splatinsert57 = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat58 = shufflevector <4 x i32> %broadcast.splatinsert57, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat60 = shufflevector <4 x i32> %broadcast.splatinsert59, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert61 = insertelement <4 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat62 = shufflevector <4 x i64> %broadcast.splatinsert61, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph55
  %index64 = phi i64 [ 0, %vector.ph55 ], [ %index.next67, %vector.body63 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index64
  %wide.load65 = load <4 x i32>, ptr %i.al, align 4, !tbaa !47, !alias.scope !266
  %i.am = sext <4 x i32> %wide.load65 to <4 x i64>
  %i.an = mul nsw <4 x i64> %broadcast.splat62, %i.am
  %i.ao = add nsw <4 x i64> %i.an, splat (i64 68719476736)
  %i.ap = ashr <4 x i64> %i.ao, splat (i64 37)
  %i.aq = trunc nsw <4 x i64> %i.ap to <4 x i32>
  %i.ar = add nsw <4 x i32> %broadcast.splat60, %i.aq
  %i.as = ashr <4 x i32> %i.ar, %broadcast.splat58
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index64 ; 2 uses
  %wide.load66 = load <4 x i32>, ptr %i.at, align 4, !tbaa !47, !alias.scope !269, !noalias !266
  %i.au = add <4 x i32> %i.as, %wide.load66
  store <4 x i32> %i.au, ptr %i.at, align 4, !tbaa !47, !alias.scope !269, !noalias !266
  %index.next67 = add nuw i64 %index64, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next67, %wide.trip.count40
  br i1 %i.av, label %.loopexit, label %vector.body63, !llvm.loop !271

scalar.ph54:                                      ; preds = %vector.memcheck48, %scalar.ph54
  %indvars.iv37 = phi i64 [ %indvars.iv.next38.1, %scalar.ph54 ], [ 0, %vector.memcheck48 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv37
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.ay, %i.ak
  %i.ba = add nsw i64 %i.az, 68719476736
  %i.bb = ashr i64 %i.ba, 37
  %i.bc = trunc nsw i64 %i.bb to i32
  %i.bd = add nsw i32 %i.aj, %i.bc
  %i.be = ashr i32 %i.bd, %i.ah
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv37 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !47
  %i.bh = add i32 %i.be, %i.bg
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !47
  %indvars.iv.next38 = or disjoint i64 %indvars.iv37, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next38
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %i.bk, %i.ak
  %i.bm = add nsw i64 %i.bl, 68719476736
  %i.bn = ashr i64 %i.bm, 37
  %i.bo = trunc nsw i64 %i.bn to i32
  %i.bp = add nsw i32 %i.aj, %i.bo
  %i.bq = ashr i32 %i.bp, %i.ah
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next38 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !47
  %i.bt = add i32 %i.bq, %i.bs
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !47
  %indvars.iv.next38.1 = add nuw nsw i64 %indvars.iv37, 2 ; 2 uses
  %exitcond41.not.1 = icmp eq i64 %indvars.iv.next38.1, %wide.trip.count40
  br i1 %exitcond41.not.1, label %.loopexit, label %scalar.ph54, !llvm.loop !272

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %.preheader ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.w
  %i.by = add nsw i64 %i.bx, 68719476736
  %i.bz = ashr i64 %i.by, 37
  %i.ca = trunc nsw i64 %i.bz to i32
  %i.cb = shl i32 %i.ca, %i.t
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !47
  %i.ce = add i32 %i.cb, %i.cd
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !47
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !47
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.ch, %i.w
  %i.cj = add nsw i64 %i.ci, 68719476736
  %i.ck = ashr i64 %i.cj, 37
  %i.cl = trunc nsw i64 %i.ck to i32
  %i.cm = shl i32 %i.cl, %i.t
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !47
  %i.cp = add i32 %i.cm, %i.co
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !273

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %vector.body63, %scalar.ph54, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @clip_output_fixed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #7 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40488
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23296
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80840
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 7
  %i.j = icmp slt i32 %i.g, -16777216
  %..i14 = tail call i64 @llvm.smin.i64(i64 %i.i, i64 2147450879)
  %i.k = trunc nsw i64 %..i14 to i32
  %i.l = add nsw i32 %i.k, 32768
  %i.m = select i1 %i.j, i32 -2147450880, i32 %i.l
  store i32 %i.m, ptr %i.f, align 4, !tbaa !47
  switch i32 %2, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.c, align 8, !tbaa !274
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47   ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 7
  %i.u = icmp slt i32 %i.r, -16777216
  %..i = tail call i64 @llvm.smin.i64(i64 %i.t, i64 2147450879)
  %i.v = trunc nsw i64 %..i to i32
  %i.w = add nsw i32 %i.v, 32768
  %i.x = select i1 %i.u, i32 -2147450880, i32 %i.w
  store i32 %i.x, ptr %i.q, align 4, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !275
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @decode_spectrum_and_dequant_fixed(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 5520 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.c = load i32, ptr %i.b, align 4, !tbaa !74   ; 5 uses
  %i.d = sdiv i32 1024, %i.c                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4996 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 3972 ; 3 uses
  %i.i = icmp sgt i32 %i.c, 0
  br i1 %i.i, label %.lr.ph, label %.preheader620

.lr.ph:                                           ; preds = %bb.a
  %i.j = load i8, ptr %3, align 8, !tbaa !46
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.k ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.c, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.preheader620.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_0
