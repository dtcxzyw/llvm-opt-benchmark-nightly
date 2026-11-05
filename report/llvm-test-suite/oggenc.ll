Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 195
begin_hunk_0_@vorbis_lsp_to_curve:bb.a
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = fsub float %i.ab, %i.w
  %i.ad = fpext float %i.ac to double
  %i.ae = fmul double %i.z, %i.ad
  %i.af = fadd double %i.ae, %i.x
  %i.ag = fptrunc double %i.af to float
  store float %i.ag, ptr %i.n, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !4083

bb.b:                                             ; preds = %.lr.ph66, %bb.i
  %i.ah = phi i32 [ %.pre, %.lr.ph66 ], [ %i.eo, %bb.i ] ; 2 uses
  %.15665 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next72, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fmul float %i.d, %i.ai
  %i.ak = fpext float %i.aj to double
  %i.al = fmul double %i.ak, f0x40445F3071E2C65E  ; 2 uses
  %i.am = fadd double %i.al, -5.000000e-01
  %i.an = fadd double %i.am, 5.000000e-01
  %i.ao = fptosi double %i.an to i32              ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr @COS_LOOKUP, i64 %i.ap ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4          ; 2 uses
  %i.as = fpext float %i.ar to double
  %i.at = sitofp i32 %i.ao to double
  %i.au = fsub double %i.al, %i.at
  %i.av = getelementptr i8, ptr %i.aq, i64 4
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fsub float %i.aw, %i.ar
  %i.ay = fpext float %i.ax to double
  %i.az = fmul double %i.au, %i.ay
  %i.ba = fadd double %i.az, %i.as
  %i.bb = fptrunc double %i.ba to float           ; 6 uses
  %i.bc = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %.051.prol = phi ptr [ %i.bi, %.prol.preheader ], [ %4, %bb.b ] ; 2 uses
  %.0.prol = phi i32 [ %i.bj, %.prol.preheader ], [ %i.g, %bb.b ]
  %i.be = phi <2 x float> [ %i.bh, %.prol.preheader ], [ splat (float f0x3F3504F3), %bb.b ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  %i.bf = load <2 x float>, ptr %.051.prol, align 4
  %i.bg = fsub <2 x float> %i.bf, %i.bd
  %i.bh = fmul <2 x float> %i.be, %i.bg           ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.051.prol, i64 8 ; 2 uses
  %i.bj = add nsw i32 %.0.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !4084

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.lcssa.unr = phi <2 x float> [ poison, %bb.b ], [ %i.bh, %.prol.preheader ]
  %.051.unr = phi ptr [ %4, %bb.b ], [ %i.bi, %.prol.preheader ]
  %.0.unr = phi i32 [ %i.g, %bb.b ], [ %i.bj, %.prol.preheader ]
  %.unr = phi <2 x float> [ splat (float f0x3F3504F3), %bb.b ], [ %i.bh, %.prol.preheader ]
  br i1 %i.m, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.051 = phi ptr [ %i.ca, %.new ], [ %.051.unr, %.prol.loopexit ] ; 5 uses
  %.0 = phi i32 [ %i.cb, %.new ], [ %.0.unr, %.prol.loopexit ]
  %i.bk = phi <2 x float> [ %i.bz, %.new ], [ %.unr, %.prol.loopexit ]
  %i.bl = load <2 x float>, ptr %.051, align 4
  %i.bm = fsub <2 x float> %i.bl, %i.bd
  %i.bn = fmul <2 x float> %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.051, i64 8
  %i.bp = load <2 x float>, ptr %i.bo, align 4
  %i.bq = fsub <2 x float> %i.bp, %i.bd
  %i.br = fmul <2 x float> %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.bt = load <2 x float>, ptr %i.bs, align 4
  %i.bu = fsub <2 x float> %i.bt, %i.bd
  %i.bv = fmul <2 x float> %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.051, i64 24
  %i.bx = load <2 x float>, ptr %i.bw, align 4
  %i.by = fsub <2 x float> %i.bx, %i.bd
  %i.bz = fmul <2 x float> %i.bv, %i.by           ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.051, i64 32
  %i.cb = add nsw i32 %.0, -4                     ; 2 uses
  %.not.3 = icmp eq i32 %i.cb, 0
  br i1 %.not.3, label %.unr-lcssa, label %.new, !llvm.loop !4085

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa = phi <2 x float> [ %.lcssa.unr, %.prol.loopexit ], [ %i.bz, %.new ] ; 3 uses
  br i1 %.not58, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.unr-lcssa
  %i.cc = load float, ptr %scevgep, align 4
  %i.cd = fsub float %i.cc, %i.bb
  %i.ce = extractelement <2 x float> %.lcssa, i64 0
  %i.cf = fmul float %i.ce, %i.cd                 ; 2 uses
  %i.cg = fmul float %i.cf, %i.cf
  %i.ch = fmul float %i.bb, %i.bb
  br label %bb.e

bb.d:                                             ; preds = %.unr-lcssa
  %i.ci = fadd float %i.bb, 1.000000e+00
  %i.cj = extractelement <2 x float> %.lcssa, i64 0 ; 2 uses
  %i.ck = fmul float %i.ci, %i.cj
  %i.cl = fmul float %i.cj, %i.ck
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn60 = phi float [ %i.ch, %bb.c ], [ %i.bb, %bb.d ]
  %.1 = phi float [ %i.cg, %bb.c ], [ %i.cl, %bb.d ]
  %.pn59 = fsub float 1.000000e+00, %.pn60
  %i.cm = extractelement <2 x float> %.lcssa, i64 1 ; 2 uses
  %.pn = fmul float %i.cm, %.pn59
  %.154 = fmul float %i.cm, %.pn
  %i.cn = fadd float %.1, %.154
  %i.co = fpext float %i.cn to double
  %i.cp = call double @frexp(double noundef %i.co, ptr noundef nonnull %i.a) #62
  %i.cq = fptrunc double %i.cp to float
  %i.cr = fmul float %i.cq, 6.400000e+01
  %i.cs = fadd float %i.cr, -3.200000e+01
  %i.ct = fpext float %i.cs to double             ; 2 uses
  %i.cu = fadd double %i.ct, -5.000000e-01
  %i.cv = fadd double %i.cu, 5.000000e-01
  %i.cw = fptosi double %i.cv to i32              ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr @INVSQ_LOOKUP, i64 %i.cx ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4          ; 2 uses
  %i.da = fpext float %i.cz to double
  %i.db = sitofp i32 %i.cw to double
  %i.dc = fsub double %i.ct, %i.db
  %i.dd = getelementptr i8, ptr %i.cy, i64 4
  %i.de = load float, ptr %i.dd, align 4
  %i.df = fsub float %i.de, %i.cz
  %i.dg = fpext float %i.df to double
  %i.dh = fmul double %i.dc, %i.dg
  %i.di = fadd double %i.dh, %i.da
  %i.dj = fptrunc double %i.di to float
  %i.dk = fmul float %6, %i.dj
  %i.dl = load i32, ptr %i.a, align 4
  %i.dm = add nsw i32 %i.dl, %5
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr [4 x i8], ptr @INVSQ2EXP_LOOKUP, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 128
  %i.dq = load float, ptr %i.dp, align 4
  %i.dr = fmul float %i.dq, %i.dk
  %i.ds = fsub float %i.dr, %7
  %i.dt = fmul float %i.ds, 8.000000e+00
  %i.du = fsub float -5.000000e-01, %i.dt
  %i.dv = fpext float %i.du to double
  %i.dw = fadd double %i.dv, 5.000000e-01
  %i.dx = fptosi double %i.dw to i32              ; 4 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %vorbis_fromdBlook.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dz = icmp samesign ugt i32 %i.dx, 1119
  br i1 %i.dz, label %vorbis_fromdBlook.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ea = lshr i32 %i.dx, 5
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @FROMdB_LOOKUP, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4
  %i.ee = and i32 %i.dx, 31
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @FROMdB2_LOOKUP, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = fmul float %i.ed, %i.eh
  br label %vorbis_fromdBlook.exit

vorbis_fromdBlook.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  %i.ej = phi float [ 1.000000e+00, %bb.e ], [ %i.ei, %bb.g ], [ 0.000000e+00, %bb.f ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %vorbis_fromdBlook.exit
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %bb.h ], [ %.15665, %vorbis_fromdBlook.exit ] ; 2 uses
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, 1 ; 4 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv71 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4
  %i.em = fmul float %i.ej, %i.el
  store float %i.em, ptr %i.ek, align 4
  %i.en = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next72
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = icmp eq i32 %i.eo, %i.ah
  br i1 %i.ep, label %bb.h, label %bb.i, !llvm.loop !4086

bb.i:                                             ; preds = %bb.h
  %i.eq = trunc nsw i64 %indvars.iv.next72 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  %i.er = icmp sgt i32 %2, %i.eq
  br i1 %i.er, label %bb.b, label %._crit_edge, !llvm.loop !4087

._crit_edge:                                      ; preds = %bb.i, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #55

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 1) i32 @vorbis_lpc_to_lsp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #13 !guid !4106 {
bb.a:
  %i.a = add nsw i32 %2, 1
  %i.b = ashr i32 %i.a, 1                         ; 15 uses
  %i.c = add nsw i32 %i.b, 1                      ; 4 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = alloca i8, i64 %i.e, align 16            ; 16 uses
  %i.g = alloca i8, i64 %i.e, align 16            ; 19 uses
  %i.h = alloca i8, i64 %i.e, align 16            ; 6 uses
  %i.i = alloca i8, i64 %i.e, align 16            ; 6 uses
  %i.j = ashr i32 %2, 1                           ; 21 uses
  %i.k = sext i32 %i.b to i64                     ; 4 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  store float 1.000000e+00, ptr %i.l, align 4
  %.not123 = icmp slt i32 %i.b, 1                 ; 2 uses
  br i1 %.not123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.m = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %i.n = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 9
  br i1 %min.iters.check, label %.lr.ph.preheader266, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, -8                       ; 3 uses
  %i.o = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = or disjoint i64 %index, 1                ; 3 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = getelementptr i8, ptr %i.q, i64 12
  %wide.load = load <4 x float>, ptr %i.r, align 4
  %wide.load181.a = load <4 x float>, ptr %i.s, align 4
  %i.t = sub nsw i64 %i.m, %i.p
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load182 = load <4 x float>, ptr %i.v, align 4
  %wide.load183 = load <4 x float>, ptr %i.w, align 4
  %i.x = sub nuw nsw i64 %i.k, %i.p
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -28
  %i.ab = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse185 = fadd <4 x float> %i.ab, %wide.load182
  %i.ac = shufflevector <4 x float> %wide.load181.a, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse186 = fadd <4 x float> %i.ac, %wide.load183
  store <4 x float> %reverse185, ptr %i.z, align 4
  store <4 x float> %reverse186, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !4089

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader266

.lr.ph.preheader266:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader266, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader266 ] ; 4 uses
  %i.ae = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = sub nsw i64 %i.m, %indvars.iv
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fadd float %i.ag, %i.aj
  %i.al = sub nuw nsw i64 %i.k, %indvars.iv
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.al
  store float %i.ak, ptr %i.am, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4090

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.an = sext i32 %i.j to i64                    ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.an
  store float 1.000000e+00, ptr %i.ao, align 4
  %.not101125 = icmp slt i32 %i.j, 1              ; 2 uses
  br i1 %.not101125, label %._crit_edge129, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %._crit_edge
  %i.ap = zext nneg i32 %2 to i64                 ; 2 uses
  %i.aq = add nuw nsw i32 %i.j, 1
  %wide.trip.count149 = zext nneg i32 %i.aq to i64
  %i.ar = zext nneg i32 %i.j to i64               ; 2 uses
  %min.iters.check188 = icmp ult i32 %i.j, 8
  br i1 %min.iters.check188, label %.lr.ph128.preheader265, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph128.preheader
  %n.vec190 = and i64 %i.ar, 2147483640           ; 3 uses
  %i.as = or disjoint i64 %n.vec190, 1
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next201, %vector.body191 ] ; 2 uses
  %i.at = or disjoint i64 %index192, 1            ; 3 uses
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = getelementptr i8, ptr %i.au, i64 12
  %wide.load193.a = load <4 x float>, ptr %i.av, align 4
  %wide.load194.a = load <4 x float>, ptr %i.aw, align 4
  %i.ax = sub nsw i64 %i.ap, %i.at
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -28
  %wide.load195 = load <4 x float>, ptr %i.az, align 4
  %wide.load196 = load <4 x float>, ptr %i.ba, align 4
  %i.bb = sub nuw nsw i64 %i.an, %i.at
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -12
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -28
  %i.bf = shufflevector <4 x float> %wide.load193.a, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse199 = fsub <4 x float> %i.bf, %wide.load195
  %i.bg = shufflevector <4 x float> %wide.load194.a, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse200 = fsub <4 x float> %i.bg, %wide.load196
  store <4 x float> %reverse199, ptr %i.bd, align 4
  store <4 x float> %reverse200, ptr %i.be, align 4
  %index.next201 = add nuw i64 %index192, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next201, %n.vec190
  br i1 %i.bh, label %middle.block202, label %vector.body191, !llvm.loop !4091

middle.block202:                                  ; preds = %vector.body191
  %cmp.n203 = icmp eq i64 %n.vec190, %i.ar
  br i1 %cmp.n203, label %._crit_edge129, label %.lr.ph128.preheader265

.lr.ph128.preheader265:                           ; preds = %.lr.ph128.preheader, %middle.block202
  %indvars.iv146.ph = phi i64 [ 1, %.lr.ph128.preheader ], [ %i.as, %middle.block202 ]
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader265, %.lr.ph128
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %.lr.ph128 ], [ %indvars.iv146.ph, %.lr.ph128.preheader265 ] ; 4 uses
  %i.bi = getelementptr [4 x i8], ptr %0, i64 %indvars.iv146
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = sub nsw i64 %i.ap, %indvars.iv146
  %i.bm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4
  %i.bo = fsub float %i.bk, %i.bn
  %i.bp = sub nuw nsw i64 %i.an, %indvars.iv146
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bp
  store float %i.bo, ptr %i.bq, align 4
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge129, label %.lr.ph128, !llvm.loop !4092

._crit_edge129:                                   ; preds = %.lr.ph128, %middle.block202, %._crit_edge
  %i.br = icmp sgt i32 %i.b, %i.j
  br i1 %i.br, label %.preheader118.a, label %.preheader122

.preheader122:                                    ; preds = %._crit_edge129
  br i1 %.not123, label %.preheader120, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.preheader122
  %i.bs = zext nneg i32 %i.b to i64               ; 6 uses
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %scevgep257 = getelementptr i8, ptr %i.f, i64 %i.bt
  %load_initial258 = load float, ptr %scevgep257, align 4 ; 2 uses
  %i.bu = zext nneg i32 %i.b to i64               ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 3 uses
  %i.bv = icmp ult i32 %i.b, 4
  br i1 %i.bv, label %.lr.ph132.epil.preheader, label %.lr.ph132.preheader.new

.lr.ph132.preheader.new:                          ; preds = %.lr.ph132.preheader
  %unroll_iter = and i64 %i.bu, 2147483644
  %invariant.gep = getelementptr [4 x i8], ptr %i.f, i64 %i.bs
  br label %.lr.ph132

.preheader118.a:                                  ; preds = %._crit_edge129
  %.not104136 = icmp slt i32 %i.j, 2
  br i1 %.not104136, label %.loopexit119, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %.preheader118.a
  %i.bw = zext nneg i32 %i.j to i64               ; 3 uses
  %i.bx = add nuw nsw i32 %i.j, 1
  %wide.trip.count164 = zext nneg i32 %i.bx to i64 ; 2 uses
  %i.by = add nsw i64 %wide.trip.count164, -2     ; 3 uses
  %min.iters.check206 = icmp ult i64 %i.by, 2
  br i1 %min.iters.check206, label %.lr.ph138.preheader263, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph138.preheader
  %n.vec208 = and i64 %i.by, -2                   ; 3 uses
  %i.bz = add nsw i64 %n.vec208, 2
  %i.ca = shl nuw nsw i64 %i.bw, 2
  %i.cb = getelementptr i8, ptr %i.g, i64 %i.ca
  %scevgep260 = getelementptr i8, ptr %i.cb, i64 -4
  %load_initial261 = load <2 x float>, ptr %scevgep260, align 4
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %store_forwarded262 = phi <2 x float> [ %load_initial261, %vector.ph207 ], [ %i.cg, %vector.body209 ]
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ] ; 2 uses
  %i.cc = add nuw i64 %index210, 2
  %i.cd = sub nuw nsw i64 %i.bw, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %wide.load212 = load <2 x float>, ptr %i.cf, align 4
  %i.cg = fadd <2 x float> %store_forwarded262, %wide.load212 ; 2 uses
  store <2 x float> %i.cg, ptr %i.cf, align 4
  %index.next213 = add nuw i64 %index210, 2       ; 2 uses
  %i.ch = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.ch, label %middle.block214, label %vector.body209, !llvm.loop !4093

middle.block214:                                  ; preds = %vector.body209
  %cmp.n215 = icmp eq i64 %i.by, %n.vec208
  br i1 %cmp.n215, label %.loopexit119, label %.lr.ph138.preheader263

.lr.ph138.preheader263:                           ; preds = %.lr.ph138.preheader, %middle.block214
  %indvars.iv161.ph = phi i64 [ 2, %.lr.ph138.preheader ], [ %i.bz, %middle.block214 ]
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader263, %.lr.ph138
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.lr.ph138 ], [ %indvars.iv161.ph, %.lr.ph138.preheader263 ] ; 2 uses
  %i.ci = sub nuw nsw i64 %i.bw, %indvars.iv161
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = load float, ptr %i.cj, align 4
  %i.cn = fadd float %i.cl, %i.cm
  store float %i.cn, ptr %i.cj, align 4
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.loopexit119, label %.lr.ph138, !llvm.loop !4094

.preheader120.loopexit.unr-lcssa:                 ; preds = %.lr.ph132
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader120, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.preheader
  %store_forwarded259.epil.init = phi float [ %load_initial258, %.lr.ph132.preheader ], [ %i.dj, %.preheader120.loopexit.unr-lcssa ]
  %indvars.iv151.epil.init = phi i64 [ 1, %.lr.ph132.preheader ], [ %indvars.iv.next152.3, %.preheader120.loopexit.unr-lcssa ]
  %lcmp.mod267 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod267)
  br label %.lr.ph132.epil

.lr.ph132.epil:                                   ; preds = %.lr.ph132.epil, %.lr.ph132.epil.preheader
  %store_forwarded259.epil = phi float [ %store_forwarded259.epil.init, %.lr.ph132.epil.preheader ], [ %i.cr, %.lr.ph132.epil ]
  %indvars.iv151.epil = phi i64 [ %indvars.iv151.epil.init, %.lr.ph132.epil.preheader ], [ %indvars.iv.next152.epil, %.lr.ph132.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph132.epil.preheader ], [ %epil.iter.next, %.lr.ph132.epil ]
  %i.co = sub nuw nsw i64 %i.bs, %indvars.iv151.epil
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.co ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = fsub float %i.cq, %store_forwarded259.epil ; 2 uses
  store float %i.cr, ptr %i.cp, align 4
  %indvars.iv.next152.epil = add nuw nsw i64 %indvars.iv151.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader120, label %.lr.ph132.epil, !llvm.loop !4095

.preheader120:                                    ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.epil, %.preheader122
  br i1 %.not101125, label %.loopexit119, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %.preheader120
  %i.cs = zext nneg i32 %i.j to i64               ; 6 uses
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %scevgep254 = getelementptr i8, ptr %i.g, i64 %i.ct
  %load_initial255 = load float, ptr %scevgep254, align 4 ; 2 uses
  %i.cu = zext nneg i32 %i.j to i64               ; 2 uses
  %xtraiter268 = and i64 %i.cu, 3                 ; 3 uses
  %i.cv = icmp ult i32 %i.j, 4
  br i1 %i.cv, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter272 = and i64 %i.cu, 2147483644
  %invariant.gep287 = getelementptr [4 x i8], ptr %i.g, i64 %i.cs
  br label %.lr.ph135

.lr.ph132:                                        ; preds = %.lr.ph132, %.lr.ph132.preheader.new
  %store_forwarded259 = phi float [ %load_initial258, %.lr.ph132.preheader.new ], [ %i.dj, %.lr.ph132 ]
  %indvars.iv151 = phi i64 [ 1, %.lr.ph132.preheader.new ], [ %indvars.iv.next152.3, %.lr.ph132 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph132.preheader.new ], [ %niter.next.3, %.lr.ph132 ]
  %i.cw = sub nuw nsw i64 %i.bs, %indvars.iv151
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cw ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = fsub float %i.cy, %store_forwarded259   ; 2 uses
  store float %i.cz, ptr %i.cx, align 4
  %indvars.iv.next152.neg = xor i64 %indvars.iv151, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next152.neg ; 2 uses
  %i.da = load float, ptr %gep, align 4
  %i.db = fsub float %i.da, %i.cz                 ; 2 uses
  store float %i.db, ptr %gep, align 4
  %indvars.iv.next152.1 = add nuw nsw i64 %indvars.iv151, 2
  %i.dc = sub nuw nsw i64 %i.bs, %indvars.iv.next152.1
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dc ; 2 uses
  %i.de = load float, ptr %i.dd, align 4
  %i.df = fsub float %i.de, %i.db                 ; 2 uses
  store float %i.df, ptr %i.dd, align 4
  %indvars.iv.next152.2 = add nuw nsw i64 %indvars.iv151, 3
  %i.dg = sub nuw nsw i64 %i.bs, %indvars.iv.next152.2
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = fsub float %i.di, %i.df                 ; 3 uses
  store float %i.dj, ptr %i.dh, align 4
  %indvars.iv.next152.3 = add nuw nsw i64 %indvars.iv151, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader120.loopexit.unr-lcssa, label %.lr.ph132, !llvm.loop !4096

.lr.ph135:                                        ; preds = %.lr.ph135, %.lr.ph135.preheader.new
  %store_forwarded256 = phi float [ %load_initial255, %.lr.ph135.preheader.new ], [ %i.dx, %.lr.ph135 ]
  %indvars.iv156 = phi i64 [ 1, %.lr.ph135.preheader.new ], [ %indvars.iv.next157.3, %.lr.ph135 ] ; 5 uses
  %niter273 = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %niter273.next.3, %.lr.ph135 ]
  %i.dk = sub nuw nsw i64 %i.cs, %indvars.iv156
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dk ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4
  %i.dn = fadd float %store_forwarded256, %i.dm   ; 2 uses
  store float %i.dn, ptr %i.dl, align 4
  %indvars.iv.next157.neg = xor i64 %indvars.iv156, -1
  %gep288 = getelementptr [4 x i8], ptr %invariant.gep287, i64 %indvars.iv.next157.neg ; 2 uses
  %i.do = load float, ptr %gep288, align 4
  %i.dp = fadd float %i.dn, %i.do                 ; 2 uses
  store float %i.dp, ptr %gep288, align 4
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2
  %i.dq = sub nuw nsw i64 %i.cs, %indvars.iv.next157.1
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dq ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = fadd float %i.dp, %i.ds                 ; 2 uses
  store float %i.dt, ptr %i.dr, align 4
  %indvars.iv.next157.2 = add nuw nsw i64 %indvars.iv156, 3
  %i.du = sub nuw nsw i64 %i.cs, %indvars.iv.next157.2
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.du ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4
  %i.dx = fadd float %i.dt, %i.dw                 ; 3 uses
  store float %i.dx, ptr %i.dv, align 4
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %niter273.next.3 = add nuw i64 %niter273, 4     ; 2 uses
  %niter273.ncmp.3 = icmp eq i64 %niter273.next.3, %unroll_iter272
  br i1 %niter273.ncmp.3, label %.loopexit119.loopexit264.unr-lcssa, label %.lr.ph135, !llvm.loop !4097

.loopexit119.loopexit264.unr-lcssa:               ; preds = %.lr.ph135
  %lcmp.mod270.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod270.not, label %.loopexit119, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %.loopexit119.loopexit264.unr-lcssa, %.lr.ph135.preheader
  %store_forwarded256.epil.init = phi float [ %load_initial255, %.lr.ph135.preheader ], [ %i.dx, %.loopexit119.loopexit264.unr-lcssa ]
  %indvars.iv156.epil.init = phi i64 [ 1, %.lr.ph135.preheader ], [ %indvars.iv.next157.3, %.loopexit119.loopexit264.unr-lcssa ]
  %lcmp.mod271 = icmp ne i64 %xtraiter268, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %.lr.ph135.epil

.lr.ph135.epil:                                   ; preds = %.lr.ph135.epil, %.lr.ph135.epil.preheader
  %store_forwarded256.epil = phi float [ %store_forwarded256.epil.init, %.lr.ph135.epil.preheader ], [ %i.eb, %.lr.ph135.epil ]
  %indvars.iv156.epil = phi i64 [ %indvars.iv156.epil.init, %.lr.ph135.epil.preheader ], [ %indvars.iv.next157.epil, %.lr.ph135.epil ] ; 2 uses
  %epil.iter269 = phi i64 [ 0, %.lr.ph135.epil.preheader ], [ %epil.iter269.next, %.lr.ph135.epil ]
  %i.dy = sub nuw nsw i64 %i.cs, %indvars.iv156.epil
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dy ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = fadd float %store_forwarded256.epil, %i.ea ; 2 uses
  store float %i.eb, ptr %i.dz, align 4
  %indvars.iv.next157.epil = add nuw nsw i64 %indvars.iv156.epil, 1
  %epil.iter269.next = add i64 %epil.iter269, 1   ; 2 uses
  %epil.iter269.cmp.not = icmp eq i64 %epil.iter269.next, %xtraiter268
  br i1 %epil.iter269.cmp.not, label %.loopexit119, label %.lr.ph135.epil, !llvm.loop !4098

.loopexit119:                                     ; preds = %.loopexit119.loopexit264.unr-lcssa, %.lr.ph135.epil, %.lr.ph138, %middle.block214, %.preheader120, %.preheader118.a
  %i.ec = load float, ptr %i.f, align 16
  %i.ed = fmul float %i.ec, 5.000000e-01
  store float %i.ed, ptr %i.f, align 16
  %.not19.i = icmp slt i32 %i.b, 2
  br i1 %.not19.i, label %cheby.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit119
  %i.ee = zext nneg i32 %i.b to i64               ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = getelementptr i8, ptr %i.f, i64 %i.ef
  %scevgep251 = getelementptr i8, ptr %i.eg, i64 -4
  %3 = add nuw nsw i64 %i.ee, 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit250, %.preheader.preheader.i
  %indvars.iv22.i = phi i64 [ 2, %.preheader.preheader.i ], [ %indvars.iv.next23.i, %.loopexit250 ] ; 3 uses
  %4 = tail call i64 @llvm.smin.i64(i64 %indvars.iv22.i, i64 %i.ee)
  %5 = sub nsw i64 %3, %4                         ; 3 uses
  %min.iters.check218 = icmp ult i64 %5, 2
  br i1 %min.iters.check218, label %scalar.ph217.preheader, label %vector.ph219

vector.ph219:                                     ; preds = %.preheader.i
  %n.vec220 = and i64 %5, -2                      ; 3 uses
  %i.eh = sub nsw i64 %i.ee, %n.vec220
  %load_initial252 = load <2 x float>, ptr %scevgep251, align 4
  %i.ei = shufflevector <2 x float> %load_initial252, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %store_forwarded253 = phi <2 x float> [ %i.ei, %vector.ph219 ], [ %i.en, %vector.body221 ] ; 3 uses
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next229, %vector.body221 ] ; 2 uses
  %i.ej = sub i64 %i.ee, %index222
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.em = getelementptr i8, ptr %i.ek, i64 -12    ; 2 uses
  %wide.load225 = load <2 x float>, ptr %i.em, align 4
  %reverse226.a = shufflevector <2 x float> %wide.load225, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.en = fsub <2 x float> %reverse226.a, %store_forwarded253 ; 2 uses
  %reverse227 = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse227, ptr %i.em, align 4
  %i.eo = fadd <2 x float> %store_forwarded253, %store_forwarded253
  %reverse228 = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse228, ptr %i.el, align 4
  %index.next229 = add nuw i64 %index222, 2       ; 2 uses
  %i.ep = icmp eq i64 %index.next229, %n.vec220
  br i1 %i.ep, label %middle.block230, label %vector.body221, !llvm.loop !4099

middle.block230:                                  ; preds = %vector.body221
  %cmp.n231 = icmp eq i64 %5, %n.vec220
  br i1 %cmp.n231, label %.loopexit250, label %scalar.ph217.preheader

scalar.ph217.preheader:                           ; preds = %.preheader.i, %middle.block230
  %indvars.iv.i.ph = phi i64 [ %i.ee, %.preheader.i ], [ %i.eh, %middle.block230 ]
  br label %scalar.ph217

scalar.ph217:                                     ; preds = %scalar.ph217.preheader, %scalar.ph217
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph217 ], [ %indvars.iv.i.ph, %scalar.ph217.preheader ] ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.er = load float, ptr %i.eq, align 4          ; 3 uses
  %i.es = getelementptr i8, ptr %i.eq, i64 -8     ; 2 uses
  %i.et = load float, ptr %i.es, align 4
  %i.eu = fsub float %i.et, %i.er
  store float %i.eu, ptr %i.es, align 4
  %i.ev = fadd float %i.er, %i.er
  store float %i.ev, ptr %i.eq, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not17.not.i = icmp sgt i64 %indvars.iv.i, %indvars.iv22.i
  br i1 %.not17.not.i, label %scalar.ph217, label %.loopexit250, !llvm.loop !4100

.loopexit250:                                     ; preds = %scalar.ph217, %middle.block230
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next23.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cheby.exit, label %.preheader.i, !llvm.loop !4101

cheby.exit:                                       ; preds = %.loopexit250, %.loopexit119
  %i.ew = load float, ptr %i.g, align 16
  %i.ex = fmul float %i.ew, 5.000000e-01
  store float %i.ex, ptr %i.g, align 16
  %.not19.i107 = icmp slt i32 %i.j, 2
  br i1 %.not19.i107, label %cheby.exit117, label %.preheader.preheader.i108

.preheader.preheader.i108:                        ; preds = %cheby.exit
  %i.ey = zext nneg i32 %i.j to i64               ; 6 uses
  %6 = add nuw nsw i32 %i.j, 1
  %wide.trip.count.i109 = zext nneg i32 %6 to i64
  %i.ez = shl nuw nsw i64 %i.ey, 2
  %i.fa = getelementptr i8, ptr %i.g, i64 %i.ez
  %scevgep = getelementptr i8, ptr %i.fa, i64 -4
  %7 = add nuw nsw i64 %i.ey, 1
  br label %.preheader.i110

.preheader.i110:                                  ; preds = %.loopexit249, %.preheader.preheader.i108
  %indvars.iv22.i111 = phi i64 [ 2, %.preheader.preheader.i108 ], [ %indvars.iv.next23.i115, %.loopexit249 ] ; 3 uses
  %8 = tail call i64 @llvm.smin.i64(i64 %indvars.iv22.i111, i64 %i.ey)
  %9 = sub nsw i64 %7, %8                         ; 3 uses
  %min.iters.check234 = icmp ult i64 %9, 2
  br i1 %min.iters.check234, label %scalar.ph233.preheader, label %vector.ph235

vector.ph235:                                     ; preds = %.preheader.i110
  %n.vec236 = and i64 %9, -2                      ; 3 uses
  %i.fb = sub nsw i64 %i.ey, %n.vec236
  %load_initial = load <2 x float>, ptr %scevgep, align 4
  %i.fc = shufflevector <2 x float> %load_initial, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph235
  %store_forwarded = phi <2 x float> [ %i.fc, %vector.ph235 ], [ %i.fh, %vector.body237 ] ; 3 uses
  %index238 = phi i64 [ 0, %vector.ph235 ], [ %index.next245, %vector.body237 ] ; 2 uses
  %i.fd = sub i64 %i.ey, %index238
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -4
  %i.fg = getelementptr i8, ptr %i.fe, i64 -12    ; 2 uses
  %wide.load241 = load <2 x float>, ptr %i.fg, align 4
  %reverse242.a = shufflevector <2 x float> %wide.load241, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fh = fsub <2 x float> %reverse242.a, %store_forwarded ; 2 uses
  %reverse243 = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse243, ptr %i.fg, align 4
  %i.fi = fadd <2 x float> %store_forwarded, %store_forwarded
  %reverse244 = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse244, ptr %i.ff, align 4
  %index.next245 = add nuw i64 %index238, 2       ; 2 uses
  %i.fj = icmp eq i64 %index.next245, %n.vec236
  br i1 %i.fj, label %middle.block246, label %vector.body237, !llvm.loop !4102

middle.block246:                                  ; preds = %vector.body237
  %cmp.n247 = icmp eq i64 %9, %n.vec236
  br i1 %cmp.n247, label %.loopexit249, label %scalar.ph233.preheader

scalar.ph233.preheader:                           ; preds = %.preheader.i110, %middle.block246
  %indvars.iv.i112.ph = phi i64 [ %i.ey, %.preheader.i110 ], [ %i.fb, %middle.block246 ]
  br label %scalar.ph233

scalar.ph233:                                     ; preds = %scalar.ph233.preheader, %scalar.ph233
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %scalar.ph233 ], [ %indvars.iv.i112.ph, %scalar.ph233.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.i112 ; 3 uses
  %i.fl = load float, ptr %i.fk, align 4          ; 3 uses
  %i.fm = getelementptr i8, ptr %i.fk, i64 -8     ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4
  %i.fo = fsub float %i.fn, %i.fl
  store float %i.fo, ptr %i.fm, align 4
  %i.fp = fadd float %i.fl, %i.fl
  store float %i.fp, ptr %i.fk, align 4
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i112, -1
  %.not17.not.i114 = icmp sgt i64 %indvars.iv.i112, %indvars.iv22.i111
  br i1 %.not17.not.i114, label %scalar.ph233, label %.loopexit249, !llvm.loop !4103

.loopexit249:                                     ; preds = %scalar.ph233, %middle.block246
  %indvars.iv.next23.i115 = add nuw nsw i64 %indvars.iv22.i111, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next23.i115, %wide.trip.count.i109
  br i1 %exitcond.not.i116, label %cheby.exit117, label %.preheader.i110, !llvm.loop !4101

cheby.exit117:                                    ; preds = %.loopexit249, %cheby.exit
  %i.fq = call fastcc i32 @Laguerre_With_Deflation(ptr noundef %i.f, i32 noundef %i.b, ptr noundef %i.h)
  %.not105 = icmp eq i32 %i.fq, 0
  br i1 %.not105, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %cheby.exit117
  %i.fr = call fastcc i32 @Laguerre_With_Deflation(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %i.i)
  %.not106 = icmp eq i32 %i.fr, 0
  br i1 %.not106, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call fastcc void @Newton_Raphson(ptr noundef %i.f, i32 noundef %i.b, ptr noundef %i.h)
  call fastcc void @Newton_Raphson(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %i.i)
  call void @qsort(ptr noundef nonnull %i.h, i64 noundef %i.k, i64 noundef 4, ptr noundef nonnull @comp) #62
  call void @qsort(ptr noundef nonnull %i.i, i64 noundef %i.an, i64 noundef 4, ptr noundef nonnull @comp) #62
  %i.fs = icmp sgt i32 %i.b, 0
  br i1 %i.fs, label %.lr.ph141.preheader.a, label %.preheader

.lr.ph141.preheader.a:                            ; preds = %bb.c
  %wide.trip.count169 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter274 = and i64 %wide.trip.count169, 1
  %i.ft = icmp eq i32 %i.b, 1
  br i1 %i.ft, label %.lr.ph141.epil.preheader.a, label %.lr.ph141.preheader.new.a

.lr.ph141.preheader.new.a:                        ; preds = %.lr.ph141.preheader.a
  %unroll_iter278 = and i64 %wide.trip.count169, 2147483646
  br label %.lr.ph141.a

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph141.a
  %lcmp.mod276.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod276.not, label %.preheader, label %.lr.ph141.epil.preheader.a

.lr.ph141.epil.preheader.a:                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph141.preheader.a
  %indvars.iv166.epil.init = phi i64 [ 0, %.lr.ph141.preheader.a ], [ %indvars.iv.next167.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod277 = trunc i32 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod277)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv166.epil.init
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = fpext float %i.fv to double
  %i.fx = call double @acos(double noundef %i.fw) #62
  %i.fy = fptrunc double %i.fx to float
  %.idx.epil = shl nuw nsw i64 %indvars.iv166.epil.init, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.epil
  store float %i.fy, ptr %i.fz, align 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph141.epil.preheader.a, %.preheader.loopexit.unr-lcssa, %bb.c
  %i.ga = icmp sgt i32 %i.j, 0
  br i1 %i.ga, label %.lr.ph143.preheader, label %.loopexit

.lr.ph143.preheader:                              ; preds = %.preheader
  %wide.trip.count174 = zext nneg i32 %i.j to i64 ; 2 uses
  %xtraiter280 = and i64 %wide.trip.count174, 1
  %i.gb = icmp eq i32 %i.j, 1
  br i1 %i.gb, label %.lr.ph143.epil.preheader, label %.lr.ph143.preheader.new

.lr.ph143.preheader.new:                          ; preds = %.lr.ph143.preheader
  %unroll_iter284 = and i64 %wide.trip.count174, 2147483646
  br label %.lr.ph143

.lr.ph141.a:                                      ; preds = %.lr.ph141.a, %.lr.ph141.preheader.new.a
  %indvars.iv166 = phi i64 [ 0, %.lr.ph141.preheader.new.a ], [ %indvars.iv.next167.1, %.lr.ph141.a ] ; 4 uses
  %niter279 = phi i64 [ 0, %.lr.ph141.preheader.new.a ], [ %niter279.next.1, %.lr.ph141.a ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv166
  %i.gd = load float, ptr %i.gc, align 8
  %i.ge = fpext float %i.gd to double
  %i.gf = call double @acos(double noundef %i.ge) #62
  %i.gg = fptrunc double %i.gf to float
  %.idx = shl nuw nsw i64 %indvars.iv166, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  store float %i.gg, ptr %i.gh, align 4
  %indvars.iv.next167 = or disjoint i64 %indvars.iv166, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next167
  %i.gj = load float, ptr %i.gi, align 4
  %i.gk = fpext float %i.gj to double
  %i.gl = call double @acos(double noundef %i.gk) #62
  %i.gm = fptrunc double %i.gl to float
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next167, 3
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.1
  store float %i.gm, ptr %i.gn, align 4
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %niter279.next.1 = add i64 %niter279, 2         ; 2 uses
  %niter279.ncmp.1 = icmp eq i64 %niter279.next.1, %unroll_iter278
  br i1 %niter279.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph141.a, !llvm.loop !4104

.lr.ph143:                                        ; preds = %.lr.ph143, %.lr.ph143.preheader.new
  %indvars.iv171 = phi i64 [ 0, %.lr.ph143.preheader.new ], [ %indvars.iv.next172.1, %.lr.ph143 ] ; 4 uses
  %niter285 = phi i64 [ 0, %.lr.ph143.preheader.new ], [ %niter285.next.1, %.lr.ph143 ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv171
  %i.gp = load float, ptr %i.go, align 8
  %i.gq = fpext float %i.gp to double
  %i.gr = call double @acos(double noundef %i.gq) #62
  %i.gs = fptrunc double %i.gr to float
  %.idx178 = shl nuw nsw i64 %indvars.iv171, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %.idx178
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store float %i.gs, ptr %i.gu, align 4
  %indvars.iv.next172 = or disjoint i64 %indvars.iv171, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next172
  %i.gw = load float, ptr %i.gv, align 4
  %i.gx = fpext float %i.gw to double
  %i.gy = call double @acos(double noundef %i.gx) #62
  %i.gz = fptrunc double %i.gy to float
  %.idx178.1 = shl nuw nsw i64 %indvars.iv.next172, 3
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 %.idx178.1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store float %i.gz, ptr %i.hb, align 4
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %niter285.next.1 = add i64 %niter285, 2         ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph143, !llvm.loop !4105

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph143
  %lcmp.mod282.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod282.not, label %.loopexit, label %.lr.ph143.epil.preheader

.lr.ph143.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph143.preheader
  %indvars.iv171.epil.init = phi i64 [ 0, %.lr.ph143.preheader ], [ %indvars.iv.next172.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod283 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod283)
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv171.epil.init
  %i.hd = load float, ptr %i.hc, align 4
  %i.he = fpext float %i.hd to double
  %i.hf = call double @acos(double noundef %i.he) #62
  %i.hg = fptrunc double %i.hf to float
  %.idx178.epil = shl nuw nsw i64 %indvars.iv171.epil.init, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx178.epil
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store float %i.hg, ptr %i.hi, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph143.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %cheby.exit117, %bb.b
  %.096 = phi i32 [ -1, %cheby.exit117 ], [ -1, %bb.b ], [ 0, %.preheader ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph143.epil.preheader ]
  ret i32 %.096
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc range(i32 -1, 1) i32 @Laguerre_With_Deflation(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #56 !guid !4112 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = alloca i8, i64 %i.c, align 16            ; 4 uses
  %.not100 = icmp slt i32 %1, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x float>, ptr %i.e, align 4
  %wide.load139 = load <2 x float>, ptr %i.f, align 4
  %i.g = fpext <2 x float> %wide.load to <2 x double>
  %i.h = fpext <2 x float> %wide.load139 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16
  store <2 x double> %i.h, ptr %i.j, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !4107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader96, label %.lr.ph.preheader147

.lr.ph.preheader147:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader96:                                     ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader96
  %i.l = zext nneg i32 %1 to i64                  ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 3
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.m ; 2 uses
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader147, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader147 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4
  %i.p = fpext float %i.o to double
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.p, ptr %i.q, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_0
