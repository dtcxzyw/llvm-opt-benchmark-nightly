Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fgs_filter?download=true
inline.NumInlined: 262
inline.NumDeleted: 107
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv8ximgproc28FastGlobalSmootherFilterImpl18process_4row_blockEPNS_3MatEi:bb.a
  store float %i.bu, ptr %i.aq, align 4, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !46 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %.lr.ph.preheader, label %._crit_edge169

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.bw to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 10 uses
  %i.by = load <1 x float>, ptr %i.ar, align 8
  %i.bz = add nsw i64 %indvars.iv, -1             ; 12 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.bz
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bz
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bz
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bz
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !18
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.bz
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !18
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bz
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !18
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bz
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !18
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.cp = load <2 x float>, ptr %i.ca, align 4, !tbaa !18 ; 2 uses
  %i.cq = load <2 x float>, ptr %i.cb, align 4, !tbaa !18 ; 2 uses
  %i.cr = load <2 x float>, ptr %i.cc, align 4, !tbaa !18
  %i.cs = load <2 x float>, ptr %i.cd, align 4, !tbaa !18
  %i.ct = shufflevector <1 x float> %i.by, <1 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cu = shufflevector <2 x float> %i.cp, <2 x float> %i.cq, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cv = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cx = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cz = fmul <4 x float> %i.ct, %i.cy           ; 6 uses
  %i.da = shufflevector <2 x float> %i.cp, <2 x float> %i.cq, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.db = shufflevector <4 x float> %i.da, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dd = fmul <4 x float> %i.ct, %i.dc           ; 2 uses
  %i.de = fsub <4 x float> splat (float 1.000000e+00), %i.cz
  %i.df = fsub <4 x float> %i.de, %i.dd
  %i.dg = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.dh = insertelement <4 x float> %i.dg, float %i.ch, i64 1
  %i.di = insertelement <4 x float> %i.dh, float %i.cj, i64 2
  %i.dj = insertelement <4 x float> %i.di, float %i.cl, i64 3
  %i.dk = fneg <4 x float> %i.dj
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.cz, <4 x float> %i.df) ; 5 uses
  %i.dm = fdiv <4 x float> %i.dd, %i.dl           ; 4 uses
  %i.dn = extractelement <4 x float> %i.dm, i64 0
  store float %i.dn, ptr %i.cm, align 4, !tbaa !18
  %i.do = extractelement <4 x float> %i.dm, i64 1
  store float %i.do, ptr %i.cn, align 4, !tbaa !18
  %i.dp = extractelement <4 x float> %i.dm, i64 2
  store float %i.dp, ptr %i.co, align 4, !tbaa !18
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.dr = extractelement <4 x float> %i.dm, i64 3
  store float %i.dr, ptr %i.dq, align 4, !tbaa !18
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !18
  %i.du = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bz
  %i.dv = load float, ptr %i.du, align 4, !tbaa !18
  %i.dw = fneg float %i.dv
  %i.dx = extractelement <4 x float> %i.cz, i64 0
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dx, float %i.dt)
  %i.dz = extractelement <4 x float> %i.dl, i64 0
  %i.ea = fdiv float %i.dy, %i.dz
  store float %i.ea, ptr %i.ds, align 4, !tbaa !18
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !18
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bz
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !18
  %i.ef = fneg float %i.ee
  %i.eg = extractelement <4 x float> %i.cz, i64 1
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.eg, float %i.ec)
  %i.ei = extractelement <4 x float> %i.dl, i64 1
  %i.ej = fdiv float %i.eh, %i.ei
  store float %i.ej, ptr %i.eb, align 4, !tbaa !18
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !18
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bz
  %i.en = load float, ptr %i.em, align 4, !tbaa !18
  %i.eo = fneg float %i.en
  %i.ep = extractelement <4 x float> %i.cz, i64 2
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ep, float %i.el)
  %i.er = extractelement <4 x float> %i.dl, i64 2
  %i.es = fdiv float %i.eq, %i.er
  store float %i.es, ptr %i.ek, align 4, !tbaa !18
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !18
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bz
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !18
  %i.ex = fneg float %i.ew
  %i.ey = extractelement <4 x float> %i.cz, i64 3
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ey, float %i.eu)
  %i.fa = extractelement <4 x float> %i.dl, i64 3
  %i.fb = fdiv float %i.ez, %i.fa
  store float %i.fb, ptr %i.et, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph168.preheader, label %.lr.ph, !llvm.loop !125

.lr.ph168.preheader:                              ; preds = %.lr.ph
  %i.fc = add nsw i32 %i.bw, -2
  %i.fd = zext nneg i32 %i.fc to i64
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %.lr.ph168
  %indvars.iv171 = phi i64 [ %i.fd, %.lr.ph168.preheader ], [ %indvars.iv.next172, %.lr.ph168 ] ; 11 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv171 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !18
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv171
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !18
  %i.fi = add nuw nsw i64 %indvars.iv171, 1       ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !18
  %i.fl = fneg float %i.fh
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.fk, float %i.ff)
  store float %i.fm, ptr %i.fe, align 4, !tbaa !18
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv171 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !18
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv171
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !18
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.fi
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !18
  %i.ft = fneg float %i.fq
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.fs, float %i.fo)
  store float %i.fu, ptr %i.fn, align 4, !tbaa !18
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv171 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !18
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv171
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !18
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.fi
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !18
  %i.gb = fneg float %i.fy
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.ga, float %i.fw)
  store float %i.gc, ptr %i.fv, align 4, !tbaa !18
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv171 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !18
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv171
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !18
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.fi
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !18
  %i.gj = fneg float %i.gg
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.gi, float %i.ge)
  store float %i.gk, ptr %i.gd, align 4, !tbaa !18
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, -1
  %.not = icmp eq i64 %indvars.iv171, 0
  br i1 %.not, label %._crit_edge169, label %.lr.ph168, !llvm.loop !126

._crit_edge169:                                   ; preds = %.lr.ph168, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv8ximgproc28FastGlobalSmootherFilterImpl20VerticalPass_ParBodyC2ERS1_RNS_3MatEii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(36) initializes((0, 36)) %0, ptr noundef nonnull align 8 dereferenceable(872) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc28FastGlobalSmootherFilterImpl20VerticalPass_ParBodyE, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.c, align 8, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %4, ptr %i.d, align 8, !tbaa !94
  %i.e = sitofp i32 %4 to double
  %i.f = sitofp i32 %3 to double
  %i.g = fdiv double %i.e, %i.f
  %i.h = tail call double @llvm.ceil.f64(double %i.g)
  %i.i = fptosi double %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.i, ptr %i.j, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK2cv8ximgproc28FastGlobalSmootherFilterImpl20VerticalPass_ParBodyclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !95   ; 2 uses
  %i.d = mul nsw i32 %i.c, %i.a                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !97   ; 5 uses
  %.sroa.speculated76 = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.d) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = mul nsw i32 %i.h, %i.c
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.i) ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !91   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 584
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 688
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 792 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 21 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 2 uses
  %i.w = icmp slt i32 %i.d, %.sroa.speculated
  br i1 %i.w, label %.lr.ph, label %._crit_edge92.split

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr i8, ptr %i.k, i64 24       ; 8 uses
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.d) ; 8 uses
  %smin = sext i32 %i.y to i64                    ; 9 uses
  %i.z = add i32 %.sroa.speculated, %i.y
  %i.aa = sub i32 %i.z, %.sroa.speculated76
  %i.ab = add i32 %.sroa.speculated, -1           ; 2 uses
  %i.ac = sub i32 %i.ab, %i.y                     ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ac, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.af = shl nsw i64 %smin, 2                    ; 3 uses
  %i.ag = getelementptr i8, ptr %i.p, i64 %i.af   ; 3 uses
  %i.ah = sub i32 %i.ab, %i.y
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nsw i64 %smin, %i.ai
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = add nsw i64 %i.ak, 4                    ; 3 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.al   ; 3 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.af   ; 3 uses
  %i.ao = getelementptr i8, ptr %i.u, i64 %i.al   ; 3 uses
  %bound0 = icmp ult ptr %i.ag, %i.ao
  %bound1 = icmp ult ptr %i.an, %i.am
  %found.conflict = and i1 %bound0, %bound1
  %i.ap = getelementptr i8, ptr %i.k, i64 28      ; 2 uses
  %bound0137 = icmp ult ptr %i.ag, %i.ap
  %bound1138 = icmp ult ptr %i.x, %i.am
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx = or i1 %found.conflict, %found.conflict139
  %i.aq = getelementptr i8, ptr %i.m, i64 %i.af   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.m, i64 %i.al   ; 2 uses
  %bound0140 = icmp ult ptr %i.ag, %i.ar
  %bound1141 = icmp ult ptr %i.aq, %i.am
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx143 = or i1 %conflict.rdx, %found.conflict142
  %bound0144 = icmp ult ptr %i.an, %i.ap
  %bound1145 = icmp ult ptr %i.x, %i.ao
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx143, %found.conflict146
  %bound0148 = icmp ult ptr %i.an, %i.ar
  %bound1149 = icmp ult ptr %i.aq, %i.ao
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %conflict.rdx147, %found.conflict150
  br i1 %conflict.rdx151, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 8589934588              ; 3 uses
  %i.as = add nsw i64 %n.vec, %smin
  %i.at = load float, ptr %i.x, align 8, !tbaa !82, !alias.scope !152
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.at, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add i64 %index, %smin                   ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.au
  %wide.load = load <4 x float>, ptr %i.av, align 4, !tbaa !18, !alias.scope !153
  %i.aw = fmul <4 x float> %broadcast.splat, %wide.load ; 2 uses
  %i.ax = fsub <4 x float> splat (float 1.000000e+00), %i.aw ; 2 uses
  %i.ay = fdiv <4 x float> %i.aw, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.au
  store <4 x float> %i.ay, ptr %i.az, align 4, !tbaa !18, !alias.scope !154, !noalias !155
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.au ; 2 uses
  %wide.load152 = load <4 x float>, ptr %i.ba, align 4, !tbaa !18, !alias.scope !156, !noalias !157
  %i.bb = fdiv <4 x float> %wide.load152, %i.ax
  store <4 x float> %i.bb, ptr %i.ba, align 4, !tbaa !18, !alias.scope !156, !noalias !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %smin, %vector.memcheck ], [ %smin, %.lr.ph ], [ %i.as, %middle.block ] ; 6 uses
  %i.bd = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.be = sub i32 %.sroa.speculated, %i.bd
  %.neg = add i32 %i.bd, 1
  %xtraiter = and i32 %i.be, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bf = load float, ptr %i.x, align 8, !tbaa !82
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !18
  %i.bi = fmul float %i.bf, %i.bh                 ; 2 uses
  %i.bj = fsub float 1.000000e+00, %i.bi          ; 2 uses
  %i.bk = fdiv float %i.bi, %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.ph
  store float %i.bk, ptr %i.bl, align 4, !tbaa !18
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.ph ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !18
  %i.bo = fdiv float %i.bn, %i.bj
  store float %i.bo, ptr %i.bm, align 4, !tbaa !18
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bp = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.bp, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !47 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %.lr.ph83, label %._crit_edge92.split

.lr.ph83:                                         ; preds = %.preheader
  %i.bt = load i64, ptr %i.n, align 8, !tbaa !68  ; 6 uses
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !68  ; 7 uses
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !68  ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.d) ; 2 uses
  %smin93 = sext i32 %i.bx to i64                 ; 3 uses
  %i.by = add i32 %.sroa.speculated, %i.bx
  %i.bz = sub i32 %i.by, %.sroa.speculated76
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 3 uses
  %i.ca = shl nsw i64 %smin, 2                    ; 15 uses
  %i.cb = xor i32 %i.y, -1
  %i.cc = add i32 %.sroa.speculated, %i.cb
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 2                ; 9 uses
  %2 = add nsw i64 %i.ca, %i.ce
  %3 = add nsw i64 %2, 4                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %3
  %4 = getelementptr i8, ptr %i.u, i64 %i.bv
  %5 = getelementptr i8, ptr %4, i64 %i.ca
  %6 = getelementptr i8, ptr %5, i64 %i.ce
  %i.cf = getelementptr i8, ptr %6, i64 4
  %7 = add nsw i64 %wide.trip.count, -2           ; 3 uses
  %8 = mul i64 %i.bu, %7
  %i.cg = getelementptr i8, ptr %i.p, i64 %8
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.ca
  %scevgep.a = getelementptr i8, ptr %i.ch, i64 %i.ce
  %scevgep211 = getelementptr i8, ptr %scevgep.a, i64 4
  %i.ci = mul i64 %i.bv, %7
  %9 = getelementptr i8, ptr %i.u, i64 %i.ci
  %10 = getelementptr i8, ptr %9, i64 %i.ca
  %11 = getelementptr i8, ptr %10, i64 %i.ce
  %scevgep217 = getelementptr i8, ptr %11, i64 4
  %scevgep218 = getelementptr i8, ptr %i.u, i64 %i.ca ; 2 uses
  %scevgep219 = getelementptr i8, ptr %i.p, i64 %3
  %i.cj = getelementptr i8, ptr %i.p, i64 %i.ca   ; 2 uses
  %i.ck = getelementptr i8, ptr %i.p, i64 %i.bu
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.ca
  %scevgep212 = getelementptr i8, ptr %i.cl, i64 %i.ce
  %scevgep213 = getelementptr i8, ptr %scevgep212, i64 4
  %i.cm = mul i64 %i.bt, %7
  %i.cn = getelementptr i8, ptr %i.m, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.ca
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.ce
  %scevgep214 = getelementptr i8, ptr %i.cp, i64 4 ; 2 uses
  %scevgep215 = getelementptr i8, ptr %i.m, i64 %i.ca ; 2 uses
  %i.cq = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.cr = mul i64 %i.bt, %i.cq
  %i.cs = getelementptr i8, ptr %i.m, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.ca
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.ce
  %scevgep216 = getelementptr i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.m, i64 %i.bt
  %scevgep217.a = getelementptr i8, ptr %i.cv, i64 %i.ca ; 2 uses
  %scevgep218.a = getelementptr i8, ptr %i.k, i64 28 ; 2 uses
  %i.cw = mul i64 %i.bv, %i.cq
  %i.cx = getelementptr i8, ptr %i.u, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.ca
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.ce
  %scevgep219.a = getelementptr i8, ptr %i.cz, i64 4 ; 5 uses
  %i.da = getelementptr i8, ptr %i.u, i64 %i.bv
  %scevgep220 = getelementptr i8, ptr %i.da, i64 %i.ca ; 6 uses
  %i.db = mul i64 %i.bu, %i.cq
  %i.dc = getelementptr i8, ptr %i.p, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.ca
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.ce
  %scevgep221 = getelementptr i8, ptr %i.de, i64 4 ; 5 uses
  %i.df = getelementptr i8, ptr %i.p, i64 %i.bu
  %scevgep222 = getelementptr i8, ptr %i.df, i64 %i.ca ; 6 uses
  %i.dg = xor i32 %i.y, -1
  %i.dh = add i32 %.sroa.speculated, %i.dg        ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check224 = icmp ult i32 %i.dh, 3
  %bound0226 = icmp ult ptr %scevgep222, %scevgep219.a
  %bound1227 = icmp ult ptr %scevgep220, %scevgep221
  %found.conflict228 = and i1 %bound0226, %bound1227
  %i.dk = or i64 %i.bv, %i.bu
  %i.dl = icmp slt i64 %i.dk, 0
  %i.dm = or i1 %found.conflict228, %i.dl
  %bound0230 = icmp ult ptr %scevgep222, %scevgep218.a
  %bound1231 = icmp ult ptr %i.x, %scevgep221
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %i.dm, %found.conflict232
  %bound0234 = icmp ult ptr %scevgep222, %scevgep216
  %bound1235 = icmp ult ptr %scevgep217.a, %scevgep221
  %found.conflict236 = and i1 %bound0234, %bound1235
  %stride.check237 = icmp slt i64 %i.bt, 0
  %i.dn = or i1 %found.conflict236, %stride.check237
  %conflict.rdx238 = or i1 %conflict.rdx233, %i.dn
  %bound0239 = icmp ult ptr %scevgep222, %scevgep214
  %bound1240 = icmp ult ptr %scevgep215, %scevgep221
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %conflict.rdx238, %found.conflict241
  %bound0243 = icmp ult ptr %scevgep222, %scevgep219
  %bound1244 = icmp ult ptr %i.cj, %scevgep213
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %bound0247 = icmp ult ptr %scevgep222, %scevgep217
  %bound1248 = icmp ult ptr %scevgep218, %scevgep221
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  %bound0251 = icmp ult ptr %scevgep220, %scevgep218.a
  %bound1252 = icmp ult ptr %i.x, %scevgep219.a
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  %bound0255 = icmp ult ptr %scevgep220, %scevgep216
  %bound1256 = icmp ult ptr %scevgep217.a, %scevgep219.a
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  %bound0259 = icmp ult ptr %scevgep220, %scevgep214
  %bound1260 = icmp ult ptr %scevgep215, %scevgep219.a
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  %bound0263 = icmp ult ptr %scevgep220, %scevgep211
  %bound1264 = icmp ult ptr %i.cj, %scevgep219.a
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx262, %found.conflict265
  %bound0267 = icmp ult ptr %scevgep220, %scevgep
  %bound1268 = icmp ult ptr %scevgep218, %i.cf
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx270 = or i1 %conflict.rdx266, %found.conflict269
  %n.vec272 = and i64 %i.dj, 8589934588           ; 3 uses
  %i.do = add nsw i64 %n.vec272, %smin93
  %cmp.n284 = icmp eq i64 %i.dj, %n.vec272
  br label %.lr.ph81

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dp = load float, ptr %i.x, align 8, !tbaa !82
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !18
  %i.ds = fmul float %i.dp, %i.dr                 ; 2 uses
  %i.dt = fsub float 1.000000e+00, %i.ds          ; 2 uses
  %i.du = fdiv float %i.ds, %i.dt
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  store float %i.du, ptr %i.dv, align 4, !tbaa !18
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !18
  %i.dy = fdiv float %i.dx, %i.dt
  store float %i.dy, ptr %i.dw, align 4, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.dz = load float, ptr %i.x, align 8, !tbaa !82
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !18
  %i.ec = fmul float %i.dz, %i.eb                 ; 2 uses
  %i.ed = fsub float 1.000000e+00, %i.ec          ; 2 uses
  %i.ee = fdiv float %i.ec, %i.ed
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next
  store float %i.ee, ptr %i.ef, align 4, !tbaa !18
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !18
  %i.ei = fdiv float %i.eh, %i.ed
  store float %i.ei, ptr %i.eg, align 4, !tbaa !18
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.aa, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !133

.lr.ph91:                                         ; preds = %._crit_edge
  %i.ej = load i64, ptr %i.q, align 8, !tbaa !68  ; 3 uses
  %i.ek = load i64, ptr %i.v, align 8, !tbaa !68  ; 5 uses
  %i.el = add nsw i32 %i.br, -2
  %i.em = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.d) ; 2 uses
  %smin102 = sext i32 %i.em to i64                ; 3 uses
  %i.en = add i32 %.sroa.speculated, %i.em
  %i.eo = sub i32 %i.en, %.sroa.speculated76
  %i.ep = zext i32 %i.el to i64                   ; 4 uses
  %12 = add nuw nsw i64 %i.ep, 1
  %13 = mul i64 %i.ek, %12                        ; 2 uses
  %i.eq = shl nsw i64 %smin, 2                    ; 5 uses
  %i.er = xor i32 %i.y, -1
  %i.es = add i32 %.sroa.speculated, %i.er
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = shl nuw nsw i64 %i.et, 2                ; 2 uses
  %14 = getelementptr i8, ptr %i.u, i64 %13
  %i.ev = getelementptr i8, ptr %14, i64 %i.eq
  %i.ew = getelementptr i8, ptr %i.ev, i64 %i.eu
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %scevgep302 = getelementptr i8, ptr %i.u, i64 %13
  %scevgep312 = getelementptr i8, ptr %scevgep302, i64 %i.eq
  %i.ey = mul i64 %i.ek, %i.ep                    ; 2 uses
  %15 = getelementptr i8, ptr %i.u, i64 %i.ey
  %16 = getelementptr i8, ptr %15, i64 %i.eq
  %i.ez = getelementptr i8, ptr %16, i64 %i.eu
  %scevgep303 = getelementptr i8, ptr %i.ez, i64 4
  %i.fa = add nsw i64 %smin, %i.et
  %i.fb = shl nsw i64 %i.fa, 2
  %i.fc = add nsw i64 %i.fb, 4                    ; 2 uses
  %scevgep304 = getelementptr i8, ptr %i.p, i64 %i.fc
  %i.fd = mul i64 %i.ej, %i.ep
  %i.fe = getelementptr i8, ptr %i.p, i64 %i.fd
  %scevgep305 = getelementptr i8, ptr %i.fe, i64 %i.eq
  %scevgep306 = getelementptr i8, ptr %i.u, i64 %i.fc
  %i.ff = getelementptr i8, ptr %i.u, i64 %i.ey
  %scevgep307 = getelementptr i8, ptr %i.ff, i64 %i.eq ; 2 uses
  %i.fg = xor i32 %i.y, -1
  %i.fh = add i32 %.sroa.speculated, %i.fg        ; 2 uses
  %i.fi = zext i32 %i.fh to i64
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check309 = icmp ult i32 %i.fh, 7
  %bound0311 = icmp ult ptr %scevgep307, %scevgep304
  %bound1312 = icmp ult ptr %scevgep305, %scevgep306
  %found.conflict313 = and i1 %bound0311, %bound1312
  %notsub = add i64 %i.ek, -1
  %notsub334 = add i64 %i.ej, -1
  %i.fk = and i64 %notsub334, %notsub
  %i.fl = icmp sgt i64 %i.fk, -1
  %i.fm = or i1 %found.conflict313, %i.fl
  %bound0316 = icmp ult ptr %scevgep307, %i.ex
  %bound1317 = icmp ult ptr %scevgep312, %scevgep303
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %i.fm, %found.conflict318
  %n.vec321 = and i64 %i.fj, 8589934584           ; 3 uses
  %i.fn = add nsw i64 %n.vec321, %smin102
  %cmp.n332 = icmp eq i64 %i.fj, %n.vec321
  br label %.lr.ph87

.lr.ph81:                                         ; preds = %.lr.ph83, %._crit_edge
  %indvars.iv98 = phi i64 [ 1, %.lr.ph83 ], [ %indvars.iv.next99, %._crit_edge ] ; 5 uses
  %i.fo = mul i64 %i.bt, %indvars.iv98
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.fo ; 2 uses
  %i.fq = add nsw i64 %indvars.iv98, -1           ; 3 uses
  %i.fr = mul i64 %i.bt, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.fr ; 2 uses
  %i.ft = mul i64 %i.bu, %indvars.iv98
  %i.fu = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ft ; 2 uses
  %i.fv = mul i64 %i.bu, %i.fq
  %i.fw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.fv ; 2 uses
  %i.fx = mul i64 %i.bv, %indvars.iv98
  %i.fy = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.fx ; 2 uses
  %i.fz = mul i64 %i.bv, %i.fq
  %i.ga = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.fz ; 2 uses
  %brmerge = select i1 %min.iters.check224, i1 true, i1 %conflict.rdx270
  br i1 %brmerge, label %scalar.ph223.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %.lr.ph81
  %i.gb = load float, ptr %i.bw, align 8, !tbaa !82, !alias.scope !160
  %broadcast.splatinsert276 = insertelement <4 x float> poison, float %i.gb, i64 0
  %broadcast.splat277 = shufflevector <4 x float> %broadcast.splatinsert276, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next282, %vector.body273 ] ; 2 uses
  %i.gc = add i64 %index274, %smin93              ; 6 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.gc
  %wide.load275 = load <4 x float>, ptr %i.gd, align 4, !tbaa !18, !alias.scope !161
  %i.ge = fmul <4 x float> %broadcast.splat277, %wide.load275 ; 3 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.gc
  %wide.load278 = load <4 x float>, ptr %i.gf, align 4, !tbaa !18, !alias.scope !162
  %i.gg = fmul <4 x float> %broadcast.splat277, %wide.load278 ; 2 uses
  %i.gh = fsub <4 x float> splat (float 1.000000e+00), %i.ge
  %i.gi = fsub <4 x float> %i.gh, %i.gg
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gc
  %wide.load279 = load <4 x float>, ptr %i.gj, align 4, !tbaa !18, !alias.scope !163
  %i.gk = fneg <4 x float> %wide.load279
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.ge, <4 x float> %i.gi) ; 2 uses
  %i.gm = fdiv <4 x float> %i.gg, %i.gl
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.gc
  store <4 x float> %i.gm, ptr %i.gn, align 4, !tbaa !18, !alias.scope !164, !noalias !165
  %i.go = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.gc ; 2 uses
  %wide.load280 = load <4 x float>, ptr %i.go, align 4, !tbaa !18, !alias.scope !166, !noalias !167
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gc
  %wide.load281 = load <4 x float>, ptr %i.gp, align 4, !tbaa !18, !alias.scope !168
  %i.gq = fneg <4 x float> %wide.load281
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.ge, <4 x float> %wide.load280)
  %i.gs = fdiv <4 x float> %i.gr, %i.gl
  store <4 x float> %i.gs, ptr %i.go, align 4, !tbaa !18, !alias.scope !166, !noalias !167
  %index.next282 = add nuw i64 %index274, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next282, %n.vec272
  br i1 %i.gt, label %middle.block283, label %vector.body273, !llvm.loop !142

middle.block283:                                  ; preds = %vector.body273
  br i1 %cmp.n284, label %._crit_edge, label %scalar.ph223.preheader

scalar.ph223.preheader:                           ; preds = %.lr.ph81, %middle.block283
  %indvars.iv94.ph = phi i64 [ %i.do, %middle.block283 ], [ %smin93, %.lr.ph81 ]
  br label %scalar.ph223

scalar.ph223:                                     ; preds = %scalar.ph223.preheader, %scalar.ph223
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %scalar.ph223 ], [ %indvars.iv94.ph, %scalar.ph223.preheader ] ; 7 uses
  %i.gu = load float, ptr %i.bw, align 8, !tbaa !82 ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %indvars.iv94
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !18
  %i.gx = fmul float %i.gu, %i.gw                 ; 3 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %indvars.iv94
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !18
  %i.ha = fmul float %i.gu, %i.gz                 ; 2 uses
  %i.hb = fsub float 1.000000e+00, %i.gx
  %i.hc = fsub float %i.hb, %i.ha
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv94
  %i.he = load float, ptr %i.hd, align 4, !tbaa !18
  %i.hf = fneg float %i.he
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.gx, float %i.hc) ; 2 uses
  %i.hh = fdiv float %i.ha, %i.hg
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %indvars.iv94
  store float %i.hh, ptr %i.hi, align 4, !tbaa !18
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %indvars.iv94 ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !18
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %indvars.iv94
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !18
  %i.hn = fneg float %i.hm
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.gx, float %i.hk)
  %i.hp = fdiv float %i.ho, %i.hg
  store float %i.hp, ptr %i.hj, align 4, !tbaa !18
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv96 = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %i.bz, %lftr.wideiv96
  br i1 %exitcond97.not, label %._crit_edge, label %scalar.ph223, !llvm.loop !143

._crit_edge:                                      ; preds = %scalar.ph223, %middle.block283
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond101.not, label %.lr.ph91, label %.lr.ph81, !llvm.loop !144

._crit_edge92.split:                              ; preds = %._crit_edge88, %bb.a, %.preheader
  ret void

.lr.ph87:                                         ; preds = %.lr.ph91, %._crit_edge88
  %indvars.iv107 = phi i64 [ %i.ep, %.lr.ph91 ], [ %indvars.iv.next108, %._crit_edge88 ] ; 5 uses
  %i.hq = mul i64 %i.ej, %indvars.iv107
  %i.hr = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.hq ; 4 uses
  %i.hs = mul i64 %i.ek, %indvars.iv107
  %i.ht = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.hs ; 4 uses
  %i.hu = add nuw nsw i64 %indvars.iv107, 1
  %i.hv = mul i64 %i.ek, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.hv ; 4 uses
  %brmerge338 = select i1 %min.iters.check309, i1 true, i1 %conflict.rdx319
  br i1 %brmerge338, label %scalar.ph308.preheader, label %vector.body322

vector.body322:                                   ; preds = %.lr.ph87, %vector.body322
  %index323 = phi i64 [ %index.next330, %vector.body322 ], [ 0, %.lr.ph87 ] ; 2 uses
  %i.hx = add i64 %index323, %smin102             ; 3 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.hx ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %wide.load324 = load <4 x float>, ptr %i.hy, align 4, !tbaa !18, !alias.scope !169, !noalias !170
  %wide.load325 = load <4 x float>, ptr %i.hz, align 4, !tbaa !18, !alias.scope !169, !noalias !170
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.hx ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %wide.load326 = load <4 x float>, ptr %i.ia, align 4, !tbaa !18, !alias.scope !171
  %wide.load327 = load <4 x float>, ptr %i.ib, align 4, !tbaa !18, !alias.scope !171
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hx ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load328 = load <4 x float>, ptr %i.ic, align 4, !tbaa !18, !alias.scope !172
  %wide.load329 = load <4 x float>, ptr %i.id, align 4, !tbaa !18, !alias.scope !172
  %i.ie = fneg <4 x float> %wide.load326
  %i.if = fneg <4 x float> %wide.load327
  %i.ig = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %wide.load328, <4 x float> %wide.load324)
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.if, <4 x float> %wide.load329, <4 x float> %wide.load325)
  store <4 x float> %i.ig, ptr %i.hy, align 4, !tbaa !18, !alias.scope !169, !noalias !170
  store <4 x float> %i.ih, ptr %i.hz, align 4, !tbaa !18, !alias.scope !169, !noalias !170
  %index.next330 = add nuw i64 %index323, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next330, %n.vec321
  br i1 %i.ii, label %middle.block331, label %vector.body322, !llvm.loop !149

middle.block331:                                  ; preds = %vector.body322
  br i1 %cmp.n332, label %._crit_edge88, label %scalar.ph308.preheader

scalar.ph308.preheader:                           ; preds = %.lr.ph87, %middle.block331
  %indvars.iv103.ph = phi i64 [ %i.fn, %middle.block331 ], [ %smin102, %.lr.ph87 ] ; 6 uses
  %i.ij = trunc i64 %indvars.iv103.ph to i32      ; 2 uses
  %i.ik = sub i32 %.sroa.speculated, %i.ij
  %.neg337 = add i32 %i.ij, 1
  %xtraiter335 = and i32 %i.ik, 1
  %lcmp.mod336.not = icmp eq i32 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %scalar.ph308.prol.loopexit, label %scalar.ph308.prol

scalar.ph308.prol:                                ; preds = %scalar.ph308.preheader
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %indvars.iv103.ph ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !18
  %i.in = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv103.ph
  %i.io = load float, ptr %i.in, align 4, !tbaa !18
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %indvars.iv103.ph
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !18
  %i.ir = fneg float %i.io
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.iq, float %i.im)
  store float %i.is, ptr %i.il, align 4, !tbaa !18
  %indvars.iv.next104.prol = add nsw i64 %indvars.iv103.ph, 1
  br label %scalar.ph308.prol.loopexit

scalar.ph308.prol.loopexit:                       ; preds = %scalar.ph308.prol, %scalar.ph308.preheader
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %scalar.ph308.preheader ], [ %indvars.iv.next104.prol, %scalar.ph308.prol ]
  %i.it = icmp eq i32 %.sroa.speculated, %.neg337
  br i1 %i.it, label %._crit_edge88, label %scalar.ph308

scalar.ph308:                                     ; preds = %scalar.ph308.prol.loopexit, %scalar.ph308
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %scalar.ph308 ], [ %indvars.iv103.unr, %scalar.ph308.prol.loopexit ] ; 5 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %indvars.iv103 ; 2 uses
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !18
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv103
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !18
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %indvars.iv103
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !18
  %i.ja = fneg float %i.ix
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.iz, float %i.iv)
  store float %i.jb, ptr %i.iu, align 4, !tbaa !18
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1 ; 3 uses
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %indvars.iv.next104 ; 2 uses
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !18
  %i.je = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv.next104
  %i.jf = load float, ptr %i.je, align 4, !tbaa !18
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %indvars.iv.next104
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !18
  %i.ji = fneg float %i.jf
  %i.jj = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.jh, float %i.jd)
  store float %i.jj, ptr %i.jc, align 4, !tbaa !18
  %indvars.iv.next104.1 = add nsw i64 %indvars.iv103, 2 ; 2 uses
  %lftr.wideiv105.1 = trunc i64 %indvars.iv.next104.1 to i32
  %exitcond106.not.1 = icmp eq i32 %i.eo, %lftr.wideiv105.1
  br i1 %exitcond106.not.1, label %._crit_edge88, label %scalar.ph308, !llvm.loop !150

end_hunk_0
