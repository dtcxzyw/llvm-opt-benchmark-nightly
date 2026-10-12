Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colortemperature?download=true
inline.NumInlined: 45
inline.NumDeleted: 4
begin_hunk_0_@temperature_slice16:bb.a
  %i.do = fcmp nsz ogt <8 x float> %i.da, %i.dc   ; 2 uses
  %i.dp = select nsz <8 x i1> %i.do, <8 x float> %i.da, <8 x float> %i.dc ; 2 uses
  %i.dq = fcmp nsz ogt <8 x float> %i.dp, %i.de
  %i.dr = select nsz <8 x i1> %i.dq, <8 x float> %i.dp, <8 x float> %i.de
  %i.ds = select nsz <8 x i1> %i.do, <8 x float> %i.dc, <8 x float> %i.da ; 2 uses
  %i.dt = fcmp nsz ogt <8 x float> %i.ds, %i.de
  %i.du = select nsz <8 x i1> %i.dt, <8 x float> %i.de, <8 x float> %i.ds
  %i.dv = fadd nsz <8 x float> %i.dr, %i.du
  %i.dw = fadd nsz <8 x float> %i.dv, splat (float f0x34000000)
  %i.dx = fdiv nsz <8 x float> %i.dn, %i.dw       ; 3 uses
  %i.dy = fmul nsz <8 x float> %i.da, %i.dx
  %i.dz = fmul nsz <8 x float> %i.dc, %i.dx
  %i.ea = fmul nsz <8 x float> %i.de, %i.dx
  %i.eb = fsub nsz <8 x float> %i.dy, %i.da
  %i.ec = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.eb, <8 x float> %broadcast.splat179, <8 x float> %i.da)
  %i.ed = fsub nsz <8 x float> %i.dz, %i.dc
  %i.ee = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ed, <8 x float> %broadcast.splat179, <8 x float> %i.dc)
  %i.ef = fsub nsz <8 x float> %i.ea, %i.de
  %i.eg = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ef, <8 x float> %broadcast.splat179, <8 x float> %i.de)
  %i.eh = fptosi <8 x float> %i.ee to <8 x i32>   ; 3 uses
  %i.ei = and <8 x i32> %broadcast.splat181, %i.eh
  %i.ej = icmp eq <8 x i32> %i.ei, zeroinitializer
  %i.ek = icmp slt <8 x i32> %i.eh, zeroinitializer
  %i.el = select <8 x i1> %i.ek, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat183
  %i.em = select <8 x i1> %i.ej, <8 x i32> %i.eh, <8 x i32> %i.el
  %i.en = trunc <8 x i32> %i.em to <8 x i16>
  store <8 x i16> %i.en, ptr %i.cq, align 2, !tbaa !51, !alias.scope !83, !noalias !84
  %i.eo = fptosi <8 x float> %i.eg to <8 x i32>   ; 3 uses
  %i.ep = and <8 x i32> %broadcast.splat181, %i.eo
  %i.eq = icmp eq <8 x i32> %i.ep, zeroinitializer
  %i.er = icmp slt <8 x i32> %i.eo, zeroinitializer
  %i.es = select <8 x i1> %i.er, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat183
  %i.et = select <8 x i1> %i.eq, <8 x i32> %i.eo, <8 x i32> %i.es
  %i.eu = trunc <8 x i32> %i.et to <8 x i16>
  store <8 x i16> %i.eu, ptr %i.cs, align 2, !tbaa !51, !alias.scope !85, !noalias !86
  %i.ev = fptosi <8 x float> %i.ec to <8 x i32>   ; 3 uses
  %i.ew = and <8 x i32> %broadcast.splat181, %i.ev
  %i.ex = icmp eq <8 x i32> %i.ew, zeroinitializer
  %i.ey = icmp slt <8 x i32> %i.ev, zeroinitializer
  %i.ez = select <8 x i1> %i.ey, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat183
  %i.fa = select <8 x i1> %i.ex, <8 x i32> %i.ev, <8 x i32> %i.ez
  %i.fb = trunc <8 x i32> %i.fa to <8 x i16>
  store <8 x i16> %i.fb, ptr %i.cu, align 2, !tbaa !51, !alias.scope !86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge152.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.0131148, i64 %i.z
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %.0130149, i64 %i.ae
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.0129150, i64 %i.ah
  %i.fg = add nsw i32 %.0128151, 1                ; 2 uses
  %exitcond154.not = icmp eq i32 %i.fg, %i.v
  br i1 %exitcond154.not, label %._crit_edge152.split, label %.preheader, !llvm.loop !81

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %.0131148, i64 %indvars.iv ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !51
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.0130149, i64 %indvars.iv ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !51
  %i.fl = uitofp nsz i16 %i.fk to float           ; 7 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %.0129150, i64 %indvars.iv ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !51
  %i.fo = fmul nsz float %i.bb, %i.fl
  %i.fp = insertelement <2 x i16> poison, i16 %i.fn, i64 0
  %i.fq = insertelement <2 x i16> %i.fp, i16 %i.fi, i64 1
  %i.fr = uitofp <2 x i16> %i.fq to <2 x float>   ; 5 uses
  %i.fs = fmul nsz <2 x float> %i.ba, %i.fr
  %i.ft = fsub nsz <2 x float> %i.fs, %i.fr
  %i.fu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.cl, <2 x float> %i.fr) ; 3 uses
  %i.fv = fsub nsz float %i.fo, %i.fl
  %i.fw = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fv, float %i.j, float %i.fl) ; 5 uses
  %i.fx = extractelement <2 x float> %i.fr, i64 0 ; 3 uses
  %i.fy = extractelement <2 x float> %i.fr, i64 1 ; 3 uses
  %i.fz = fcmp nsz ogt float %i.fx, %i.fy         ; 2 uses
  %i.ga = select nsz i1 %i.fz, float %i.fx, float %i.fy ; 2 uses
  %i.gb = fcmp nsz ogt float %i.ga, %i.fl
  %. = select nsz i1 %i.gb, float %i.ga, float %i.fl
  %i.gc = select nsz i1 %i.fz, float %i.fy, float %i.fx ; 2 uses
  %i.gd = fcmp nsz ogt float %i.gc, %i.fl
  %i.ge = select nsz i1 %i.gd, float %i.fl, float %i.gc
  %i.gf = fadd nsz float %., %i.ge
  %i.gg = fadd nsz float %i.gf, f0x34000000
  %i.gh = extractelement <2 x float> %i.fu, i64 0 ; 6 uses
  %i.gi = extractelement <2 x float> %i.fu, i64 1 ; 3 uses
  %i.gj = fcmp nsz ogt float %i.gh, %i.gi         ; 2 uses
  %i.gk = select nsz i1 %i.gj, float %i.gh, float %i.gi ; 2 uses
  %i.gl = fcmp nsz ogt float %i.gk, %i.fw
  %i.gm = select nsz i1 %i.gl, float %i.gk, float %i.fw
  %i.gn = select nsz i1 %i.gj, float %i.gi, float %i.gh ; 2 uses
  %i.go = fcmp nsz ogt float %i.gn, %i.fw
  %i.gp = select nsz i1 %i.go, float %i.fw, float %i.gn
  %i.gq = fadd nsz float %i.gm, %i.gp
  %i.gr = fadd nsz float %i.gq, f0x34000000
  %i.gs = fdiv nsz float %i.gg, %i.gr             ; 2 uses
  %i.gt = fmul nsz float %i.gh, %i.gs
  %i.gu = fsub nsz float %i.gt, %i.gh
  %i.gv = tail call nsz noundef float @llvm.fmuladd.f32(float %i.gu, float %i.h, float %i.gh)
  %i.gw = insertelement <2 x float> %i.fu, float %i.fw, i64 0 ; 3 uses
  %i.gx = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul nsz <2 x float> %i.gw, %i.gy
  %i.ha = fsub nsz <2 x float> %i.gz, %i.gw
  %i.hb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.cn, <2 x float> %i.gw)
  %i.hc = fptosi <2 x float> %i.hb to <2 x i32>   ; 3 uses
  %i.hd = extractelement <2 x i32> %i.hc, i64 1   ; 2 uses
  %isnotneg.inv.i145 = icmp slt i32 %i.hd, 0
  %i.he = select i1 %isnotneg.inv.i145, i32 0, i32 %i.ay
  %i.hf = and <2 x i32> %i.cp, %i.hc
  %i.hg = icmp eq <2 x i32> %i.hf, zeroinitializer ; 2 uses
  %i.hh = extractelement <2 x i1> %i.hg, i64 1
  %.0.i146 = select i1 %i.hh, i32 %i.hd, i32 %i.he
  %i.hi = trunc i32 %.0.i146 to i16
  store i16 %i.hi, ptr %i.fh, align 2, !tbaa !51
  %i.hj = extractelement <2 x i32> %i.hc, i64 0   ; 2 uses
  %isnotneg.inv.i141 = icmp slt i32 %i.hj, 0
  %i.hk = select i1 %isnotneg.inv.i141, i32 0, i32 %i.ay
  %i.hl = extractelement <2 x i1> %i.hg, i64 0
  %.0.i142 = select i1 %i.hl, i32 %i.hj, i32 %i.hk
  %i.hm = trunc i32 %.0.i142 to i16
  store i16 %i.hm, ptr %i.fj, align 2, !tbaa !51
  %i.hn = fptosi float %i.gv to i32               ; 3 uses
  %i.ho = and i32 %notmask.i143, %i.hn
  %.not.i = icmp eq i32 %i.ho, 0
  %isnotneg.inv.i = icmp slt i32 %i.hn, 0
  %i.hp = select i1 %isnotneg.inv.i, i32 0, i32 %i.ay
  %.0.i = select i1 %.not.i, i32 %i.hn, i32 %i.hp
  %i.hq = trunc i32 %.0.i to i16
  store i16 %i.hq, ptr %i.fm, align 2, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !82
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @temperature_slice8p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !42 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load float, ptr %i.k, align 8, !tbaa !43 ; 3 uses
  %i.m = getelementptr i8, ptr %i.b, i64 20       ; 5 uses
  %i.n = sext i32 %i.h to i64                     ; 2 uses
  %i.o = sext i32 %2 to i64
  %i.p = mul nsw i64 %i.n, %i.o
  %i.q = sext i32 %3 to i64                       ; 2 uses
  %i.r = sdiv i64 %i.p, %i.q                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = add nsw i32 %2, 1
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.n, %i.u
  %i.w = sdiv i64 %i.v, %i.q                      ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !44   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = icmp slt i32 %i.s, %i.x
  br i1 %i.ab, label %.preheader.lr.ph, label %._crit_edge149.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ac = icmp sgt i32 %i.f, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  br i1 %i.ac, label %.preheader.preheader, label %._crit_edge149.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !46
  %i.al = load ptr, ptr %1, align 8, !tbaa !45    ; 7 uses
  %sext = shl i64 %i.r, 32
  %i.am = ashr exact i64 %sext, 32                ; 2 uses
  %i.an = mul nsw i64 %i.am, %i.aa                ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  %i.ap = sext i32 %i.d to i64
  %i.aq = zext i8 %i.ak to i64                    ; 3 uses
  %i.ar = zext i8 %i.ai to i64                    ; 3 uses
  %i.as = zext i8 %i.ag to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 5 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.an
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.aq ; 3 uses
  %i.au = xor i64 %i.r, -1
  %i.av = add i64 %i.w, %i.au
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = add nsw i64 %i.am, %i.aw
  %i.ay = mul i64 %i.ax, %i.aa                    ; 2 uses
  %4 = add i64 %i.ay, %wide.trip.count            ; 2 uses
  %i.az = getelementptr i8, ptr %i.al, i64 %4
  %scevgep159 = getelementptr i8, ptr %i.az, i64 %i.aq ; 3 uses
  %i.ba = getelementptr i8, ptr %i.al, i64 %i.an
  %scevgep160 = getelementptr i8, ptr %i.ba, i64 %i.ar ; 3 uses
  %i.bb = getelementptr i8, ptr %i.al, i64 %4
  %scevgep161 = getelementptr i8, ptr %i.bb, i64 %i.ar ; 3 uses
  %i.bc = getelementptr i8, ptr %i.al, i64 %i.an
  %scevgep162 = getelementptr i8, ptr %i.bc, i64 %i.as ; 3 uses
  %i.bd = getelementptr i8, ptr %i.al, i64 %i.ay
  %i.be = getelementptr i8, ptr %i.bd, i64 %wide.trip.count
  %scevgep163 = getelementptr i8, ptr %i.be, i64 %i.as ; 3 uses
  %min.iters.check = icmp ugt i32 %i.f, 3
  %ident.check.not = icmp eq i32 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep, %scevgep161
  %bound1 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict = and i1 %bound0, %bound1
  %bound0165 = icmp ult ptr %scevgep, %scevgep163
  %bound1166 = icmp ult ptr %scevgep162, %scevgep159
  %found.conflict167 = and i1 %bound0165, %bound1166
  %stride.check168 = icmp slt i32 %i.z, 0
  %i.bf = or i1 %found.conflict167, %stride.check168
  %conflict.rdx = or i1 %found.conflict, %i.bf
  %bound0170 = icmp ult ptr %scevgep, %i.c
  %bound1171 = icmp ult ptr %i.m, %scevgep159
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx174 = or i1 %found.conflict172, %conflict.rdx
  %bound0175 = icmp ult ptr %scevgep160, %scevgep163
  %bound1176 = icmp ult ptr %scevgep162, %scevgep161
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx180 = or i1 %found.conflict177, %conflict.rdx174
  %bound0181 = icmp ult ptr %scevgep160, %i.c
  %bound1182 = icmp ult ptr %i.m, %scevgep161
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx185 = or i1 %found.conflict183, %conflict.rdx180
  %bound0186 = icmp ult ptr %scevgep162, %i.c
  %bound1187 = icmp ult ptr %i.m, %scevgep163
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx190 = or i1 %found.conflict188, %conflict.rdx185
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert191 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat192 = shufflevector <4 x float> %broadcast.splatinsert191, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.bg = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0128148 = phi i32 [ %i.ds, %._crit_edge ], [ %i.s, %.preheader.preheader ]
  %.0129147 = phi ptr [ %i.dr, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %.0129147, i64 %i.aq ; 2 uses
  %invariant.gep155 = getelementptr i8, ptr %.0129147, i64 %i.ar ; 2 uses
  %invariant.gep157 = getelementptr i8, ptr %.0129147, i64 %i.as ; 2 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx190
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.bk = load float, ptr %i.m, align 4, !tbaa !31, !alias.scope !95
  %broadcast.splatinsert195 = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat196 = shufflevector <4 x float> %broadcast.splatinsert195, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = load float, ptr %i.ad, align 8, !tbaa !31, !alias.scope !95
  %broadcast.splatinsert197 = insertelement <4 x float> poison, float %i.bl, i64 0
  %broadcast.splat198 = shufflevector <4 x float> %broadcast.splatinsert197, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = load float, ptr %i.ae, align 4, !tbaa !31, !alias.scope !95
  %broadcast.splatinsert199 = insertelement <4 x float> poison, float %i.bm, i64 0
  %broadcast.splat200 = shufflevector <4 x float> %broadcast.splatinsert199, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bn = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.bn, align 1, !tbaa !46, !alias.scope !96, !noalias !97
  %i.bo = uitofp <4 x i8> %wide.load to <4 x float> ; 6 uses
  %i.bp = getelementptr i8, ptr %invariant.gep155, i64 %index ; 2 uses
  %wide.load193 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !46, !alias.scope !98, !noalias !99
  %i.bq = uitofp <4 x i8> %wide.load193 to <4 x float> ; 7 uses
  %i.br = getelementptr i8, ptr %invariant.gep157, i64 %index ; 2 uses
  %wide.load194 = load <4 x i8>, ptr %i.br, align 1, !tbaa !46, !alias.scope !100, !noalias !95
  %i.bs = uitofp <4 x i8> %wide.load194 to <4 x float> ; 6 uses
  %i.bt = fmul nsz <4 x float> %broadcast.splat196, %i.bs
  %i.bu = fmul nsz <4 x float> %broadcast.splat198, %i.bo
  %i.bv = fmul nsz <4 x float> %broadcast.splat200, %i.bq
  %i.bw = fsub nsz <4 x float> %i.bt, %i.bs
  %i.bx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %broadcast.splat, <4 x float> %i.bs) ; 6 uses
  %i.by = fsub nsz <4 x float> %i.bu, %i.bo
  %i.bz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %broadcast.splat, <4 x float> %i.bo) ; 6 uses
  %i.ca = fsub nsz <4 x float> %i.bv, %i.bq
  %i.cb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %broadcast.splat, <4 x float> %i.bq) ; 7 uses
  %i.cc = fcmp nsz ogt <4 x float> %i.bs, %i.bo   ; 2 uses
  %i.cd = select nsz <4 x i1> %i.cc, <4 x float> %i.bs, <4 x float> %i.bo ; 2 uses
  %i.ce = fcmp nsz ogt <4 x float> %i.cd, %i.bq
  %i.cf = select nsz <4 x i1> %i.ce, <4 x float> %i.cd, <4 x float> %i.bq
  %i.cg = select nsz <4 x i1> %i.cc, <4 x float> %i.bo, <4 x float> %i.bs ; 2 uses
  %i.ch = fcmp nsz ogt <4 x float> %i.cg, %i.bq
  %i.ci = select nsz <4 x i1> %i.ch, <4 x float> %i.bq, <4 x float> %i.cg
  %i.cj = fadd nsz <4 x float> %i.cf, %i.ci
  %i.ck = fadd nsz <4 x float> %i.cj, splat (float f0x34000000)
  %i.cl = fcmp nsz ogt <4 x float> %i.bx, %i.bz   ; 2 uses
  %i.cm = select nsz <4 x i1> %i.cl, <4 x float> %i.bx, <4 x float> %i.bz ; 2 uses
  %i.cn = fcmp nsz ogt <4 x float> %i.cm, %i.cb
  %i.co = select nsz <4 x i1> %i.cn, <4 x float> %i.cm, <4 x float> %i.cb
  %i.cp = select nsz <4 x i1> %i.cl, <4 x float> %i.bz, <4 x float> %i.bx ; 2 uses
  %i.cq = fcmp nsz ogt <4 x float> %i.cp, %i.cb
  %i.cr = select nsz <4 x i1> %i.cq, <4 x float> %i.cb, <4 x float> %i.cp
  %i.cs = fadd nsz <4 x float> %i.co, %i.cr
  %i.ct = fadd nsz <4 x float> %i.cs, splat (float f0x34000000)
  %i.cu = fdiv nsz <4 x float> %i.ck, %i.ct       ; 3 uses
  %i.cv = fmul nsz <4 x float> %i.bx, %i.cu
  %i.cw = fmul nsz <4 x float> %i.bz, %i.cu
  %i.cx = fmul nsz <4 x float> %i.cb, %i.cu
  %i.cy = fsub nsz <4 x float> %i.cv, %i.bx
  %i.cz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %broadcast.splat192, <4 x float> %i.bx)
  %i.da = fsub nsz <4 x float> %i.cw, %i.bz
  %i.db = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %broadcast.splat192, <4 x float> %i.bz)
  %i.dc = fsub nsz <4 x float> %i.cx, %i.cb
  %i.dd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %broadcast.splat192, <4 x float> %i.cb)
  %i.de = fptosi <4 x float> %i.db to <4 x i32>
  %i.df = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.de, <4 x i32> zeroinitializer)
  %i.dg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.df, <4 x i32> splat (i32 255))
  %i.dh = trunc nuw <4 x i32> %i.dg to <4 x i8>
  store <4 x i8> %i.dh, ptr %i.bn, align 1, !tbaa !46, !alias.scope !96, !noalias !97
  %i.di = fptosi <4 x float> %i.dd to <4 x i32>
  %i.dj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.di, <4 x i32> zeroinitializer)
  %i.dk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dj, <4 x i32> splat (i32 255))
  %i.dl = trunc nuw <4 x i32> %i.dk to <4 x i8>
  store <4 x i8> %i.dl, ptr %i.bp, align 1, !tbaa !46, !alias.scope !98, !noalias !99
  %i.dm = fptosi <4 x float> %i.cz to <4 x i32>
  %i.dn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dm, <4 x i32> zeroinitializer)
  %i.do = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dn, <4 x i32> splat (i32 255))
  %i.dp = trunc nuw <4 x i32> %i.do to <4 x i8>
  store <4 x i8> %i.dp, ptr %i.br, align 1, !tbaa !46, !alias.scope !100, !noalias !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge149.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.dr = getelementptr inbounds i8, ptr %.0129147, i64 %i.aa
  %i.ds = add nsw i32 %.0128148, 1                ; 2 uses
  %exitcond151.not = icmp eq i32 %i.ds, %i.x
  br i1 %exitcond151.not, label %._crit_edge149.split, label %.preheader, !llvm.loop !93

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dt = mul nsw i64 %indvars.iv, %i.ap          ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dt ; 2 uses
  %i.du = load i8, ptr %gep, align 1, !tbaa !46
  %gep156 = getelementptr i8, ptr %invariant.gep155, i64 %i.dt ; 2 uses
  %i.dv = load i8, ptr %gep156, align 1, !tbaa !46
  %i.dw = uitofp nsz i8 %i.dv to float            ; 7 uses
  %gep158 = getelementptr i8, ptr %invariant.gep157, i64 %i.dt ; 2 uses
  %i.dx = load i8, ptr %gep158, align 1, !tbaa !46
  %i.dy = load float, ptr %i.ae, align 4, !tbaa !31
  %i.dz = fmul nsz float %i.dy, %i.dw
  %i.ea = insertelement <2 x i8> poison, i8 %i.dx, i64 0
  %i.eb = insertelement <2 x i8> %i.ea, i8 %i.du, i64 1
  %i.ec = uitofp <2 x i8> %i.eb to <2 x float>    ; 5 uses
  %i.ed = load <2 x float>, ptr %i.m, align 4, !tbaa !31
  %i.ee = fmul nsz <2 x float> %i.ed, %i.ec
  %i.ef = fsub nsz <2 x float> %i.ee, %i.ec
  %i.eg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.bh, <2 x float> %i.ec) ; 3 uses
  %i.eh = fsub nsz float %i.dz, %i.dw
  %i.ei = tail call nsz noundef float @llvm.fmuladd.f32(float %i.eh, float %i.j, float %i.dw) ; 5 uses
  %i.ej = extractelement <2 x float> %i.ec, i64 0 ; 3 uses
  %i.ek = extractelement <2 x float> %i.ec, i64 1 ; 3 uses
  %i.el = fcmp nsz ogt float %i.ej, %i.ek         ; 2 uses
  %i.em = select nsz i1 %i.el, float %i.ej, float %i.ek ; 2 uses
  %i.en = fcmp nsz ogt float %i.em, %i.dw
  %. = select nsz i1 %i.en, float %i.em, float %i.dw
  %i.eo = select nsz i1 %i.el, float %i.ek, float %i.ej ; 2 uses
  %i.ep = fcmp nsz ogt float %i.eo, %i.dw
  %i.eq = select nsz i1 %i.ep, float %i.dw, float %i.eo
  %i.er = fadd nsz float %., %i.eq
  %i.es = fadd nsz float %i.er, f0x34000000
  %i.et = extractelement <2 x float> %i.eg, i64 0 ; 3 uses
  %i.eu = extractelement <2 x float> %i.eg, i64 1 ; 6 uses
  %i.ev = fcmp nsz ogt float %i.et, %i.eu         ; 2 uses
  %i.ew = select nsz i1 %i.ev, float %i.et, float %i.eu ; 2 uses
  %i.ex = fcmp nsz ogt float %i.ew, %i.ei
  %i.ey = select nsz i1 %i.ex, float %i.ew, float %i.ei
  %i.ez = select nsz i1 %i.ev, float %i.eu, float %i.et ; 2 uses
  %i.fa = fcmp nsz ogt float %i.ez, %i.ei
  %i.fb = select nsz i1 %i.fa, float %i.ei, float %i.ez
  %i.fc = fadd nsz float %i.ey, %i.fb
  %i.fd = fadd nsz float %i.fc, f0x34000000
  %i.fe = fdiv nsz float %i.es, %i.fd             ; 2 uses
  %i.ff = fmul nsz float %i.eu, %i.fe
  %i.fg = fsub nsz float %i.ff, %i.eu
  %i.fh = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fg, float %i.l, float %i.eu)
  %i.fi = fptosi float %i.fh to i32
  %i.fj = tail call i32 @llvm.smax.i32(i32 %i.fi, i32 0)
  %.0.i142143 = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 255)
  %.0.i142 = trunc nuw i32 %.0.i142143 to i8
  store i8 %.0.i142, ptr %gep, align 1, !tbaa !46
  %i.fk = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fl = insertelement <2 x float> %i.fk, float %i.ei, i64 0 ; 3 uses
  %i.fm = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fmul nsz <2 x float> %i.fl, %i.fn
  %i.fp = fsub nsz <2 x float> %i.fo, %i.fl
  %i.fq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.bj, <2 x float> %i.fl)
  %i.fr = fptosi <2 x float> %i.fq to <2 x i32>
  %i.fs = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fr, <2 x i32> zeroinitializer)
  %i.ft = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.fs, <2 x i32> splat (i32 255))
  %i.fu = trunc nuw <2 x i32> %i.ft to <2 x i8>   ; 2 uses
  %i.fv = extractelement <2 x i8> %i.fu, i64 0
  store i8 %i.fv, ptr %gep156, align 1, !tbaa !46
  %i.fw = extractelement <2 x i8> %i.fu, i64 1
  store i8 %i.fw, ptr %gep158, align 1, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !94
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @temperature_slice16p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load float, ptr %i.i, align 8, !tbaa !43 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !42 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.n = sext i32 %i.h to i64                     ; 2 uses
  %i.o = sext i32 %2 to i64
  %i.p = mul nsw i64 %i.n, %i.o
  %i.q = sext i32 %3 to i64                       ; 2 uses
  %i.r = sdiv i64 %i.p, %i.q                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = add nsw i32 %2, 1
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.n, %i.u
  %i.w = sdiv i64 %i.v, %i.q                      ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !44   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = lshr i64 %i.aa, 1                       ; 4 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !45    ; 7 uses
  %sext = shl i64 %i.r, 32                        ; 2 uses
  %i.ad = ashr exact i64 %sext, 32                ; 2 uses
  %i.ae = mul nsw i64 %i.ab, %i.ad
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = icmp slt i32 %i.s, %i.x
  br i1 %i.ag, label %.preheader.lr.ph, label %._crit_edge152.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.aj = icmp sgt i32 %i.f, 0
  %notmask.i145 = shl nsw i32 -1, %i.ai           ; 4 uses
  %i.ak = xor i32 %notmask.i145, -1               ; 4 uses
  br i1 %i.aj, label %.preheader.lr.ph.split, label %._crit_edge152.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.am = load i8, ptr %i.al, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.as = load <2 x float>, ptr %i.m, align 4, !tbaa !31 ; 3 uses
  %i.at = load float, ptr %i.ar, align 4, !tbaa !31 ; 2 uses
  %i.au = sext i32 %i.d to i64
  %i.av = zext i8 %i.aq to i64                    ; 2 uses
  %i.aw = zext i8 %i.ao to i64                    ; 2 uses
  %i.ax = zext i8 %i.am to i64                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 4 uses
  %i.ay = mul i64 %i.ab, %i.ad
  %i.az = shl i64 %i.ay, 1                        ; 3 uses
  %i.ba = shl nuw nsw i64 %i.av, 1                ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ac, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bc = ashr exact i64 %sext, 31
  %i.bd = xor i64 %i.r, -1
  %i.be = add i64 %i.w, %i.bd
  %i.bf = shl i64 %i.be, 1
  %i.bg = and i64 %i.bf, 8589934590
  %i.bh = add nsw i64 %i.bc, %i.bg
  %i.bi = mul i64 %i.ab, %i.bh                    ; 2 uses
  %i.bj = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ac, i64 %i.bi
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  %scevgep162 = getelementptr i8, ptr %i.bl, i64 %i.ba ; 2 uses
  %i.bm = shl nuw nsw i64 %i.aw, 1                ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ac, i64 %i.az
  %scevgep163 = getelementptr i8, ptr %i.bn, i64 %i.bm ; 2 uses
  %4 = add i64 %i.bi, %i.bj                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.ac, i64 %4
  %scevgep164 = getelementptr i8, ptr %i.bo, i64 %i.bm ; 2 uses
  %i.bp = shl nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.bq = getelementptr i8, ptr %i.ac, i64 %i.az
  %scevgep165 = getelementptr i8, ptr %i.bq, i64 %i.bp ; 2 uses
  %i.br = getelementptr i8, ptr %i.ac, i64 %4
  %scevgep166 = getelementptr i8, ptr %i.br, i64 %i.bp ; 2 uses
  %min.iters.check = icmp ugt i32 %i.f, 7
  %ident.check.not = icmp eq i32 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep, %scevgep164
  %bound1 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict = and i1 %bound0, %bound1
  %bound0168 = icmp ult ptr %scevgep, %scevgep166
  %bound1169 = icmp ult ptr %scevgep165, %scevgep162
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i32 %i.z, 0
  %i.bs = or i1 %found.conflict170, %stride.check171
  %conflict.rdx = or i1 %found.conflict, %i.bs
  %bound0173 = icmp ult ptr %scevgep163, %scevgep166
  %bound1174 = icmp ult ptr %scevgep165, %scevgep164
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx178 = or i1 %found.conflict175, %conflict.rdx
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.as, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat180 = shufflevector <2 x float> %i.as, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert181 = insertelement <8 x float> poison, float %i.at, i64 0
  %broadcast.splat182 = shufflevector <8 x float> %broadcast.splatinsert181, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert183 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat184 = shufflevector <8 x float> %broadcast.splatinsert183, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert185 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat186 = shufflevector <8 x float> %broadcast.splatinsert185, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert187 = insertelement <8 x i32> poison, i32 %notmask.i145, i64 0
  %broadcast.splat188 = shufflevector <8 x i32> %broadcast.splatinsert187, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert189 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat190 = shufflevector <8 x i32> %broadcast.splatinsert189, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.bt = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = insertelement <2 x i32> poison, i32 %notmask.i145, i64 0
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.0132151 = phi i32 [ %i.s, %.preheader.lr.ph.split ], [ %i.en, %._crit_edge ]
  %.0133150 = phi ptr [ %i.af, %.preheader.lr.ph.split ], [ %i.em, %._crit_edge ] ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0133150, i64 %i.av ; 2 uses
  %invariant.gep158 = getelementptr [2 x i8], ptr %.0133150, i64 %i.aw ; 2 uses
  %invariant.gep160 = getelementptr [2 x i8], ptr %.0133150, i64 %i.ax ; 2 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx178
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.bz = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bz, align 2, !tbaa !51, !alias.scope !108, !noalias !109
  %i.ca = uitofp <8 x i16> %wide.load to <8 x float> ; 6 uses
  %i.cb = getelementptr [2 x i8], ptr %invariant.gep158, i64 %index ; 2 uses
  %wide.load191 = load <8 x i16>, ptr %i.cb, align 2, !tbaa !51, !alias.scope !110, !noalias !111
  %i.cc = uitofp <8 x i16> %wide.load191 to <8 x float> ; 7 uses
  %i.cd = getelementptr [2 x i8], ptr %invariant.gep160, i64 %index ; 2 uses
  %wide.load192 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !51, !alias.scope !111
  %i.ce = uitofp <8 x i16> %wide.load192 to <8 x float> ; 6 uses
  %i.cf = fmul nsz <8 x float> %broadcast.splat, %i.ce
  %i.cg = fmul nsz <8 x float> %broadcast.splat180, %i.ca
  %i.ch = fmul nsz <8 x float> %broadcast.splat182, %i.cc
  %i.ci = fsub nsz <8 x float> %i.cf, %i.ce
  %i.cj = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ci, <8 x float> %broadcast.splat184, <8 x float> %i.ce) ; 6 uses
  %i.ck = fsub nsz <8 x float> %i.cg, %i.ca
  %i.cl = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ck, <8 x float> %broadcast.splat184, <8 x float> %i.ca) ; 6 uses
  %i.cm = fsub nsz <8 x float> %i.ch, %i.cc
  %i.cn = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cm, <8 x float> %broadcast.splat184, <8 x float> %i.cc) ; 7 uses
  %i.co = fcmp nsz ogt <8 x float> %i.ce, %i.ca   ; 2 uses
  %i.cp = select nsz <8 x i1> %i.co, <8 x float> %i.ce, <8 x float> %i.ca ; 2 uses
  %i.cq = fcmp nsz ogt <8 x float> %i.cp, %i.cc
  %i.cr = select nsz <8 x i1> %i.cq, <8 x float> %i.cp, <8 x float> %i.cc
  %i.cs = select nsz <8 x i1> %i.co, <8 x float> %i.ca, <8 x float> %i.ce ; 2 uses
  %i.ct = fcmp nsz ogt <8 x float> %i.cs, %i.cc
  %i.cu = select nsz <8 x i1> %i.ct, <8 x float> %i.cc, <8 x float> %i.cs
  %i.cv = fadd nsz <8 x float> %i.cr, %i.cu
  %i.cw = fadd nsz <8 x float> %i.cv, splat (float f0x34000000)
  %i.cx = fcmp nsz ogt <8 x float> %i.cj, %i.cl   ; 2 uses
  %i.cy = select nsz <8 x i1> %i.cx, <8 x float> %i.cj, <8 x float> %i.cl ; 2 uses
  %i.cz = fcmp nsz ogt <8 x float> %i.cy, %i.cn
  %i.da = select nsz <8 x i1> %i.cz, <8 x float> %i.cy, <8 x float> %i.cn
  %i.db = select nsz <8 x i1> %i.cx, <8 x float> %i.cl, <8 x float> %i.cj ; 2 uses
  %i.dc = fcmp nsz ogt <8 x float> %i.db, %i.cn
  %i.dd = select nsz <8 x i1> %i.dc, <8 x float> %i.cn, <8 x float> %i.db
  %i.de = fadd nsz <8 x float> %i.da, %i.dd
  %i.df = fadd nsz <8 x float> %i.de, splat (float f0x34000000)
  %i.dg = fdiv nsz <8 x float> %i.cw, %i.df       ; 3 uses
  %i.dh = fmul nsz <8 x float> %i.cj, %i.dg
  %i.di = fmul nsz <8 x float> %i.cl, %i.dg
  %i.dj = fmul nsz <8 x float> %i.cn, %i.dg
  %i.dk = fsub nsz <8 x float> %i.dh, %i.cj
  %i.dl = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dk, <8 x float> %broadcast.splat186, <8 x float> %i.cj)
  %i.dm = fsub nsz <8 x float> %i.di, %i.cl
  %i.dn = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dm, <8 x float> %broadcast.splat186, <8 x float> %i.cl)
  %i.do = fsub nsz <8 x float> %i.dj, %i.cn
  %i.dp = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.do, <8 x float> %broadcast.splat186, <8 x float> %i.cn)
  %i.dq = fptosi <8 x float> %i.dn to <8 x i32>   ; 3 uses
  %i.dr = and <8 x i32> %broadcast.splat188, %i.dq
  %i.ds = icmp eq <8 x i32> %i.dr, zeroinitializer
  %i.dt = icmp slt <8 x i32> %i.dq, zeroinitializer
  %i.du = select <8 x i1> %i.dt, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat190
  %i.dv = select <8 x i1> %i.ds, <8 x i32> %i.dq, <8 x i32> %i.du
  %i.dw = trunc <8 x i32> %i.dv to <8 x i16>
  store <8 x i16> %i.dw, ptr %i.bz, align 2, !tbaa !51, !alias.scope !108, !noalias !109
  %i.dx = fptosi <8 x float> %i.dp to <8 x i32>   ; 3 uses
  %i.dy = and <8 x i32> %broadcast.splat188, %i.dx
  %i.dz = icmp eq <8 x i32> %i.dy, zeroinitializer
  %i.ea = icmp slt <8 x i32> %i.dx, zeroinitializer
  %i.eb = select <8 x i1> %i.ea, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat190
  %i.ec = select <8 x i1> %i.dz, <8 x i32> %i.dx, <8 x i32> %i.eb
  %i.ed = trunc <8 x i32> %i.ec to <8 x i16>
  store <8 x i16> %i.ed, ptr %i.cb, align 2, !tbaa !51, !alias.scope !110, !noalias !111
  %i.ee = fptosi <8 x float> %i.dl to <8 x i32>   ; 3 uses
  %i.ef = and <8 x i32> %broadcast.splat188, %i.ee
  %i.eg = icmp eq <8 x i32> %i.ef, zeroinitializer
  %i.eh = icmp slt <8 x i32> %i.ee, zeroinitializer
  %i.ei = select <8 x i1> %i.eh, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat190
  %i.ej = select <8 x i1> %i.eg, <8 x i32> %i.ee, <8 x i32> %i.ei
  %i.ek = trunc <8 x i32> %i.ej to <8 x i16>
  store <8 x i16> %i.ek, ptr %i.cd, align 2, !tbaa !51, !alias.scope !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge152.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.0133150, i64 %i.ab
  %i.en = add nsw i32 %.0132151, 1                ; 2 uses
  %exitcond154.not = icmp eq i32 %i.en, %i.x
  br i1 %exitcond154.not, label %._crit_edge152.split, label %.preheader, !llvm.loop !106

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.eo = mul nsw i64 %indvars.iv, %i.au          ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.eo ; 2 uses
  %i.ep = load i16, ptr %gep, align 2, !tbaa !51
  %gep159 = getelementptr [2 x i8], ptr %invariant.gep158, i64 %i.eo ; 2 uses
  %i.eq = load i16, ptr %gep159, align 2, !tbaa !51
  %i.er = uitofp nsz i16 %i.eq to float           ; 7 uses
  %gep161 = getelementptr [2 x i8], ptr %invariant.gep160, i64 %i.eo ; 2 uses
  %i.es = load i16, ptr %gep161, align 2, !tbaa !51
  %i.et = fmul nsz float %i.at, %i.er
  %i.eu = insertelement <2 x i16> poison, i16 %i.es, i64 0
  %i.ev = insertelement <2 x i16> %i.eu, i16 %i.ep, i64 1
  %i.ew = uitofp <2 x i16> %i.ev to <2 x float>   ; 5 uses
  %i.ex = fmul nsz <2 x float> %i.as, %i.ew
  %i.ey = fsub nsz <2 x float> %i.ex, %i.ew
  %i.ez = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.bu, <2 x float> %i.ew) ; 3 uses
  %i.fa = fsub nsz float %i.et, %i.er
  %i.fb = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fa, float %i.l, float %i.er) ; 5 uses
  %i.fc = extractelement <2 x float> %i.ew, i64 0 ; 3 uses
  %i.fd = extractelement <2 x float> %i.ew, i64 1 ; 3 uses
  %i.fe = fcmp nsz ogt float %i.fc, %i.fd         ; 2 uses
  %i.ff = select nsz i1 %i.fe, float %i.fc, float %i.fd ; 2 uses
  %i.fg = fcmp nsz ogt float %i.ff, %i.er
  %. = select nsz i1 %i.fg, float %i.ff, float %i.er
  %i.fh = select nsz i1 %i.fe, float %i.fd, float %i.fc ; 2 uses
  %i.fi = fcmp nsz ogt float %i.fh, %i.er
  %i.fj = select nsz i1 %i.fi, float %i.er, float %i.fh
  %i.fk = fadd nsz float %., %i.fj
  %i.fl = fadd nsz float %i.fk, f0x34000000
  %i.fm = extractelement <2 x float> %i.ez, i64 0 ; 6 uses
  %i.fn = extractelement <2 x float> %i.ez, i64 1 ; 3 uses
  %i.fo = fcmp nsz ogt float %i.fm, %i.fn         ; 2 uses
  %i.fp = select nsz i1 %i.fo, float %i.fm, float %i.fn ; 2 uses
  %i.fq = fcmp nsz ogt float %i.fp, %i.fb
  %i.fr = select nsz i1 %i.fq, float %i.fp, float %i.fb
  %i.fs = select nsz i1 %i.fo, float %i.fn, float %i.fm ; 2 uses
  %i.ft = fcmp nsz ogt float %i.fs, %i.fb
  %i.fu = select nsz i1 %i.ft, float %i.fb, float %i.fs
  %i.fv = fadd nsz float %i.fr, %i.fu
  %i.fw = fadd nsz float %i.fv, f0x34000000
  %i.fx = fdiv nsz float %i.fl, %i.fw             ; 2 uses
  %i.fy = fmul nsz float %i.fm, %i.fx
  %i.fz = fsub nsz float %i.fy, %i.fm
  %i.ga = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fz, float %i.j, float %i.fm)
  %i.gb = insertelement <2 x float> %i.ez, float %i.fb, i64 0 ; 3 uses
  %i.gc = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fmul nsz <2 x float> %i.gb, %i.gd
  %i.gf = fsub nsz <2 x float> %i.ge, %i.gb
  %i.gg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.bw, <2 x float> %i.gb)
  %i.gh = fptosi <2 x float> %i.gg to <2 x i32>   ; 3 uses
  %i.gi = extractelement <2 x i32> %i.gh, i64 1   ; 2 uses
  %isnotneg.inv.i147 = icmp slt i32 %i.gi, 0
  %i.gj = select i1 %isnotneg.inv.i147, i32 0, i32 %i.ak
  %i.gk = and <2 x i32> %i.by, %i.gh
  %i.gl = icmp eq <2 x i32> %i.gk, zeroinitializer ; 2 uses
  %i.gm = extractelement <2 x i1> %i.gl, i64 1
  %.0.i148 = select i1 %i.gm, i32 %i.gi, i32 %i.gj
  %i.gn = trunc i32 %.0.i148 to i16
  store i16 %i.gn, ptr %gep, align 2, !tbaa !51
  %i.go = extractelement <2 x i32> %i.gh, i64 0   ; 2 uses
  %isnotneg.inv.i143 = icmp slt i32 %i.go, 0
  %i.gp = select i1 %isnotneg.inv.i143, i32 0, i32 %i.ak
  %i.gq = extractelement <2 x i1> %i.gl, i64 0
  %.0.i144 = select i1 %i.gq, i32 %i.go, i32 %i.gp
  %i.gr = trunc i32 %.0.i144 to i16
  store i16 %i.gr, ptr %gep159, align 2, !tbaa !51
  %i.gs = fptosi float %i.ga to i32               ; 3 uses
  %i.gt = and i32 %notmask.i145, %i.gs
  %.not.i = icmp eq i32 %i.gt, 0
  %isnotneg.inv.i = icmp slt i32 %i.gs, 0
  %i.gu = select i1 %isnotneg.inv.i, i32 0, i32 %i.ak
  %.0.i = select i1 %.not.i, i32 %i.gs, i32 %i.gu
end_hunk_0
