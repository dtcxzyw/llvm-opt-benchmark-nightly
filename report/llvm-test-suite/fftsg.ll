inline.NumInlined: 74
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cftf1st:bb.a
  %i.ig = shufflevector <2 x double> %i.ie, <2 x double> %i.if, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ih = insertelement <2 x double> poison, double %i.go, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ij = fneg <2 x double> %i.ig
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> %i.ie, <2 x i32> <i32 1, i32 2>
  %i.il = fmul <2 x double> %i.ii, %i.ik
  %i.im = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.io = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> %i.ig, <2 x double> %i.il)
  store <2 x double> %i.io, ptr %i.ha, align 8, !tbaa !8
  %i.ip = shufflevector <2 x double> %i.if, <2 x double> %i.ie, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.iq = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.is = fneg <2 x double> %i.ip
  %i.it = shufflevector <2 x double> %i.ie, <2 x double> %i.is, <2 x i32> <i32 1, i32 2>
  %i.iu = fmul <2 x double> %i.ir, %i.it
  %i.iv = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> %i.ip, <2 x double> %i.iu)
  store <2 x double> %i.ix, ptr %i.hk, align 8, !tbaa !8
  %i.iy = load double, ptr %i.hc, align 8, !tbaa !8 ; 2 uses
  %i.iz = load double, ptr %i.gz, align 8, !tbaa !8 ; 2 uses
  %i.ja = fadd double %i.iy, %i.iz                ; 2 uses
  %i.jb = getelementptr i8, ptr %i.hc, i64 8      ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !8 ; 2 uses
  %i.jd = getelementptr i8, ptr %i.gz, i64 8      ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !8 ; 2 uses
  %i.jf = fadd double %i.jc, %i.je                ; 2 uses
  %i.jg = fsub double %i.iy, %i.iz                ; 2 uses
  %i.jh = fsub double %i.jc, %i.je                ; 2 uses
  %i.ji = load double, ptr %i.hg, align 8, !tbaa !8 ; 2 uses
  %i.jj = load double, ptr %i.hj, align 8, !tbaa !8 ; 2 uses
  %i.jk = fadd double %i.ji, %i.jj                ; 2 uses
  %i.jl = getelementptr i8, ptr %i.hg, i64 8      ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !8 ; 2 uses
  %i.jn = getelementptr i8, ptr %i.hj, i64 8      ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !8 ; 2 uses
  %i.jp = fadd double %i.jm, %i.jo                ; 2 uses
  %i.jq = fsub double %i.ji, %i.jj                ; 2 uses
  %i.jr = fsub double %i.jm, %i.jo                ; 2 uses
  %i.js = fadd double %i.ja, %i.jk
  store double %i.js, ptr %i.hc, align 8, !tbaa !8
  %i.jt = fadd double %i.jf, %i.jp
  store double %i.jt, ptr %i.jb, align 8, !tbaa !8
  %i.ju = fsub double %i.ja, %i.jk
  store double %i.ju, ptr %i.hg, align 8, !tbaa !8
  %i.jv = fsub double %i.jf, %i.jp
  store double %i.jv, ptr %i.jl, align 8, !tbaa !8
  %i.jw = fsub double %i.jg, %i.jr                ; 2 uses
  %i.jx = fadd double %i.jh, %i.jq                ; 2 uses
  %i.jy = fsub double %i.jw, %i.jx
  %i.jz = fmul double %i.an, %i.jy
  store double %i.jz, ptr %i.gz, align 8, !tbaa !8
  %i.ka = fadd double %i.jx, %i.jw
  %i.kb = fmul double %i.an, %i.ka
  store double %i.kb, ptr %i.jd, align 8, !tbaa !8
  %i.kc = fadd double %i.jg, %i.jr                ; 2 uses
  %i.kd = fsub double %i.jh, %i.jq                ; 2 uses
  %i.ke = fneg double %i.an                       ; 2 uses
  %i.kf = fadd double %i.kd, %i.kc
  %i.kg = fmul double %i.kf, %i.ke
  store double %i.kg, ptr %i.hj, align 8, !tbaa !8
  %i.kh = fsub double %i.kd, %i.kc
  %i.ki = fmul double %i.kh, %i.ke
  store double %i.ki, ptr %i.jn, align 8, !tbaa !8
  %i.kj = getelementptr i8, ptr %i.hc, i64 16     ; 2 uses
  %i.kk = getelementptr i8, ptr %i.gz, i64 16     ; 2 uses
  %i.kl = getelementptr i8, ptr %i.hc, i64 24
  %i.km = getelementptr i8, ptr %i.hg, i64 16     ; 2 uses
  %i.kn = getelementptr i8, ptr %i.hj, i64 16     ; 2 uses
  %i.ko = getelementptr i8, ptr %i.hg, i64 24
  %i.kp = load <2 x double>, ptr %i.kj, align 8, !tbaa !8 ; 3 uses
  %i.kq = load <2 x double>, ptr %i.kk, align 8, !tbaa !8 ; 3 uses
  %foldExtExtBinop719 = fadd <2 x double> %i.kp, %i.kq ; 2 uses
  %foldExtExtBinop721 = fadd <2 x double> %i.kp, %i.kq
  %i.kr = extractelement <2 x double> %foldExtExtBinop721, i64 1 ; 2 uses
  %i.ks = fsub <2 x double> %i.kp, %i.kq          ; 2 uses
  %i.kt = load <2 x double>, ptr %i.km, align 8, !tbaa !8 ; 3 uses
  %i.ku = load <2 x double>, ptr %i.kn, align 8, !tbaa !8 ; 3 uses
  %foldExtExtBinop723 = fadd <2 x double> %i.kt, %i.ku ; 2 uses
  %foldExtExtBinop725 = fadd <2 x double> %i.kt, %i.ku
  %i.kv = extractelement <2 x double> %foldExtExtBinop725, i64 1 ; 2 uses
  %i.kw = fsub <2 x double> %i.kt, %i.ku
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop727 = fadd <2 x double> %foldExtExtBinop719, %foldExtExtBinop723
  %i.ky = extractelement <2 x double> %foldExtExtBinop727, i64 0
  store double %i.ky, ptr %i.kj, align 8, !tbaa !8
  %i.kz = fadd double %i.kr, %i.kv
  store double %i.kz, ptr %i.kl, align 8, !tbaa !8
  %foldExtExtBinop729 = fsub <2 x double> %foldExtExtBinop719, %foldExtExtBinop723
  %i.la = extractelement <2 x double> %foldExtExtBinop729, i64 0
  store double %i.la, ptr %i.km, align 8, !tbaa !8
  %i.lb = fsub double %i.kr, %i.kv
  store double %i.lb, ptr %i.ko, align 8, !tbaa !8
  %i.lc = fsub <2 x double> %i.ks, %i.kx          ; 4 uses
  %i.ld = fadd <2 x double> %i.ks, %i.kx          ; 2 uses
  %i.le = shufflevector <2 x double> %i.lc, <2 x double> %i.ld, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.lf = fneg <2 x double> %i.le
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> %i.lc, <2 x i32> <i32 1, i32 2>
  %i.lh = fmul <2 x double> %i.in, %i.lg
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.le, <2 x double> %i.lh)
  store <2 x double> %i.li, ptr %i.kk, align 8, !tbaa !8
  %i.lj = shufflevector <2 x double> %i.ld, <2 x double> %i.lc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.lk = fneg <2 x double> %i.lj
  %i.ll = shufflevector <2 x double> %i.lc, <2 x double> %i.lk, <2 x i32> <i32 1, i32 2>
  %i.lm = fmul <2 x double> %i.iw, %i.ll
  %i.ln = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.lj, <2 x double> %i.lm)
  store <2 x double> %i.ln, ptr %i.kn, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftrec1(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 2 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.c = sub nsw i32 %2, %i.b
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %3, i64 %i.d
  tail call void @cftmdl1(i32 noundef %0, ptr noundef %1, ptr noundef %i.e)
  %i.f = icmp sgt i32 %0, 512
  br i1 %i.f, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.g = phi i32 [ %i.q, %tailrecurse ], [ %i.b, %bb.a ]
  %i.h = phi i32 [ %i.p, %tailrecurse ], [ %i.a, %bb.a ] ; 9 uses
  %.tr2932 = phi ptr [ %i.o, %tailrecurse ], [ %1, %bb.a ] ; 4 uses
  tail call void @cftrec1(i32 noundef %i.h, ptr noundef %.tr2932, i32 noundef %2, ptr noundef %3)
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.tr2932, i64 %i.i
  tail call void @cftrec2(i32 noundef %i.h, ptr noundef %i.j, i32 noundef %2, ptr noundef %3)
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.tr2932, i64 %i.k
  tail call void @cftrec1(i32 noundef %i.h, ptr noundef %i.l, i32 noundef %2, ptr noundef %3)
  %i.m = mul nuw nsw i32 %i.h, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.tr2932, i64 %i.n ; 3 uses
  %i.p = lshr i32 %i.h, 2                         ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = sub nsw i32 %2, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %3, i64 %i.s
  tail call void @cftmdl1(i32 noundef %i.h, ptr noundef %i.o, ptr noundef %i.t)
  %i.u = icmp sgt i32 %i.h, 512
  br i1 %i.u, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi i32 [ %0, %bb.a ], [ %i.h, %tailrecurse ]
  %.tr29.lcssa = phi ptr [ %1, %bb.a ], [ %i.o, %tailrecurse ]
  tail call void @cftexp1(i32 noundef %.tr.lcssa, ptr noundef %.tr29.lcssa, i32 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftrec2(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = sub nsw i32 %2, %0
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %3, i64 %i.b
  tail call void @cftmdl2(i32 noundef %0, ptr noundef %1, ptr noundef %i.c)
  %i.d = icmp sgt i32 %0, 512
  br i1 %i.d, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr2933 = phi ptr [ %i.m, %tailrecurse ], [ %1, %bb.a ] ; 4 uses
  %.tr32 = phi i32 [ %i.e, %tailrecurse ], [ %0, %bb.a ] ; 2 uses
  %i.e = lshr i32 %.tr32, 2                       ; 10 uses
  tail call void @cftrec1(i32 noundef %i.e, ptr noundef %.tr2933, i32 noundef %2, ptr noundef %3)
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.tr2933, i64 %i.f
  tail call void @cftrec2(i32 noundef %i.e, ptr noundef %i.g, i32 noundef %2, ptr noundef %3)
  %i.h = shl nuw nsw i32 %i.e, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.tr2933, i64 %i.i
  tail call void @cftrec1(i32 noundef %i.e, ptr noundef %i.j, i32 noundef %2, ptr noundef %3)
  %i.k = mul nuw nsw i32 %i.e, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.tr2933, i64 %i.l ; 3 uses
  %i.n = sub nsw i32 %2, %i.e
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %3, i64 %i.o
  tail call void @cftmdl2(i32 noundef %i.e, ptr noundef %i.m, ptr noundef %i.p)
  %i.q = icmp samesign ugt i32 %.tr32, 2051
  br i1 %i.q, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi i32 [ %0, %bb.a ], [ %i.e, %tailrecurse ]
  %.tr29.lcssa = phi ptr [ %1, %bb.a ], [ %i.m, %tailrecurse ]
  tail call void @cftexp2(i32 noundef %.tr.lcssa, ptr noundef %.tr29.lcssa, i32 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftexp1(i32 noundef %0, ptr nofree noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 128
  br i1 %i.b, label %.preheader105.preheader, label %.preheader

.preheader105.preheader:                          ; preds = %bb.a
  %4 = sext i32 %0 to i64
  br label %.preheader105

.preheader105:                                    ; preds = %.preheader105.preheader, %._crit_edge109
  %.0110 = phi i32 [ %i.at, %._crit_edge109 ], [ %i.a, %.preheader105.preheader ] ; 13 uses
  %i.c = icmp slt i32 %.0110, %0
  %i.d = lshr i32 %.0110, 1
  %i.e = sub nsw i32 %2, %i.d
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  br i1 %i.c, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader105
  %i.g = getelementptr inbounds [8 x i8], ptr %3, i64 %i.f ; 2 uses
  %i.h = sub nsw i32 %2, %.0110
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %3, i64 %i.i
  %i.k = sub nsw i32 0, %.0110
  %i.l = sext i32 %i.k to i64
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge109, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.at, %._crit_edge109 ] ; 15 uses
  %i.m = icmp slt i32 %.0.lcssa, %0
  %i.n = ashr i32 %.0.lcssa, 1
  %i.o = sub nsw i32 %2, %i.n
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  br i1 %i.m, label %.lr.ph116, label %._crit_edge117

.lr.ph116:                                        ; preds = %.preheader
  %i.q = getelementptr inbounds [8 x i8], ptr %3, i64 %i.p ; 3 uses
  %i.r = icmp eq i32 %.0.lcssa, 128
  %i.s = sext i32 %2 to i64
  %i.t = getelementptr [8 x i8], ptr %3, i64 %i.s ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -120     ; 12 uses
  %i.v = getelementptr i8, ptr %i.t, i64 -96      ; 4 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -64      ; 8 uses
  %i.x = getelementptr i8, ptr %i.t, i64 -256     ; 4 uses
  %i.y = sub nsw i32 %2, %.0.lcssa
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %3, i64 %i.z ; 2 uses
  %i.ab = sub nsw i32 0, %.0.lcssa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sext i32 %0 to i64
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph108, %._crit_edge
  %.099107 = phi i32 [ %.0110, %.lr.ph108 ], [ %.pre-phi, %._crit_edge ] ; 5 uses
  %i.ae = sub nsw i32 %.099107, %.0110
  %i.af = icmp slt i32 %i.ae, %0
  br i1 %i.af, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = shl i32 %.099107, 2
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ag = shl nsw i32 %.099107, 1
  %i.ah = shl i32 %.099107, 2                     ; 2 uses
  %i.ai = sext i32 %.099107 to i64                ; 2 uses
  %i.aj = add nsw i64 %i.l, %i.ai
  %i.ak = sext i32 %i.ah to i64
  %i.al = sext i32 %i.ag to i64
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.ai
  %invariant.gep138 = getelementptr [8 x i8], ptr %1, i64 %i.al
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  tail call void @cftmdl1(i32 noundef %.0110, ptr noundef %i.am, ptr noundef %i.g)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  tail call void @cftmdl2(i32 noundef %.0110, ptr noundef %gep, ptr noundef %i.j)
  %gep139 = getelementptr [8 x i8], ptr %invariant.gep138, i64 %indvars.iv
  tail call void @cftmdl1(i32 noundef %.0110, ptr noundef %gep139, ptr noundef %i.g)
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ak ; 2 uses
  %i.an = icmp slt i64 %indvars.iv.next, %4
  br i1 %i.an, label %bb.c, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.c, %.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ah, %bb.c ] ; 2 uses
  %i.ao = icmp slt i32 %.pre-phi, %0
  br i1 %i.ao, label %bb.b, label %._crit_edge109, !llvm.loop !99

._crit_edge109:                                   ; preds = %._crit_edge, %.preheader105
  %i.ap = sub nsw i32 %0, %.0110
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %3, i64 %i.f
  tail call void @cftmdl1(i32 noundef %.0110, ptr noundef %i.ar, ptr noundef %i.as)
  %i.at = lshr i32 %.0110, 2                      ; 2 uses
  %i.au = icmp samesign ugt i32 %.0110, 515
  br i1 %i.au, label %.preheader105, label %.preheader, !llvm.loop !100

bb.d:                                             ; preds = %.lr.ph116, %._crit_edge114
  %.1115 = phi i32 [ %.0.lcssa, %.lr.ph116 ], [ %.pre-phi129, %._crit_edge114 ] ; 5 uses
  %i.av = sub nsw i32 %.1115, %.0.lcssa
  %i.aw = icmp slt i32 %i.av, %0
  br i1 %i.aw, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.d
  %.pre128 = shl i32 %.1115, 2
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.d
  %i.ax = shl nsw i32 %.1115, 1
  %i.ay = shl i32 %.1115, 2                       ; 2 uses
  %i.az = sext i32 %.1115 to i64                  ; 3 uses
  %i.ba = add nsw i64 %i.ac, %i.az
  %i.bb = sext i32 %i.ay to i64
  %i.bc = sext i32 %i.ax to i64                   ; 2 uses
  %invariant.gep140 = getelementptr [8 x i8], ptr %1, i64 %i.az
  %invariant.gep142 = getelementptr [8 x i8], ptr %1, i64 %i.bc
  %invariant.gep144 = getelementptr [8 x i8], ptr %1, i64 %i.az
  %invariant.gep146 = getelementptr [8 x i8], ptr %1, i64 %i.bc
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph113, %cftfx41.exit104
  %indvars.iv119 = phi i64 [ %i.ba, %.lr.ph113 ], [ %indvars.iv.next120, %cftfx41.exit104 ] ; 6 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv119 ; 51 uses
  tail call void @cftmdl1(i32 noundef %.0.lcssa, ptr noundef %i.bd, ptr noundef %i.q)
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @cftf161(ptr noundef %i.bd, ptr noundef readonly %i.w)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.be, ptr noundef readonly %i.x)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.bf, ptr noundef readonly %i.w)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 768
  tail call void @cftf161(ptr noundef nonnull %i.bg, ptr noundef readonly %i.w)
  %gep145 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv119 ; 5 uses
  tail call void @cftmdl2(i32 noundef %.0.lcssa, ptr noundef %gep145, ptr noundef %i.aa)
  tail call void @cftf161(ptr noundef %gep145, ptr noundef readonly %i.w)
  %i.bh = getelementptr inbounds nuw i8, ptr %gep145, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.bh, ptr noundef readonly %i.x)
  %i.bi = getelementptr inbounds nuw i8, ptr %gep145, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.bi, ptr noundef readonly %i.w)
  %i.bj = getelementptr inbounds nuw i8, ptr %gep145, i64 768
  tail call void @cftf162(ptr noundef nonnull %i.bj, ptr noundef readonly %i.x)
  %gep147 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv119 ; 5 uses
  tail call void @cftmdl1(i32 noundef %.0.lcssa, ptr noundef %gep147, ptr noundef %i.q)
  tail call void @cftf161(ptr noundef %gep147, ptr noundef readonly %i.w)
  %i.bk = getelementptr inbounds nuw i8, ptr %gep147, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.bk, ptr noundef readonly %i.x)
  %i.bl = getelementptr inbounds nuw i8, ptr %gep147, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.bl, ptr noundef readonly %i.w)
  %i.bm = getelementptr inbounds nuw i8, ptr %gep147, i64 768
  tail call void @cftf161(ptr noundef nonnull %i.bm, ptr noundef readonly %i.w)
  br label %cftfx41.exit104

bb.g:                                             ; preds = %bb.e
  %i.bn = load double, ptr %i.u, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.bx = load <2 x double>, ptr %i.bd, align 8, !tbaa !8 ; 2 uses
  %i.by = load <2 x double>, ptr %i.bo, align 8, !tbaa !8 ; 2 uses
  %i.bz = fadd <2 x double> %i.bx, %i.by          ; 2 uses
  %i.ca = load <2 x double>, ptr %i.bp, align 8, !tbaa !8 ; 2 uses
  %i.cb = load <2 x double>, ptr %i.bq, align 8, !tbaa !8 ; 2 uses
  %i.cc = fadd <2 x double> %i.ca, %i.cb          ; 2 uses
  %i.cd = fadd <2 x double> %i.bz, %i.cc          ; 2 uses
  %i.ce = load <2 x double>, ptr %i.bs, align 8, !tbaa !8 ; 2 uses
  %i.cf = load <2 x double>, ptr %i.bt, align 8, !tbaa !8 ; 2 uses
  %i.cg = fadd <2 x double> %i.ce, %i.cf          ; 2 uses
  %i.ch = load <2 x double>, ptr %i.bu, align 8, !tbaa !8 ; 2 uses
  %i.ci = load <2 x double>, ptr %i.bv, align 8, !tbaa !8 ; 2 uses
  %i.cj = fadd <2 x double> %i.ch, %i.ci          ; 2 uses
  %i.ck = fadd <2 x double> %i.cg, %i.cj          ; 2 uses
  %i.cl = fsub <2 x double> %i.ce, %i.cf
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.cn = fsub <2 x double> %i.ch, %i.ci          ; 4 uses
  %i.co = fadd <2 x double> %i.cm, %i.cn
  %i.cp = fsub <2 x double> %i.cm, %i.cn
  %foldExtExtBinop = fadd <2 x double> %i.cm, %i.cn
  %i.cq = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop149 = fsub <2 x double> %i.cm, %i.cn
  %i.cr = extractelement <2 x double> %foldExtExtBinop149, i64 0 ; 2 uses
  %i.cs = fsub <2 x double> %i.bx, %i.by          ; 2 uses
  %i.ct = fsub <2 x double> %i.ca, %i.cb
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cv = fsub <2 x double> %i.cs, %i.cu          ; 2 uses
  %i.cw = fadd <2 x double> %i.cs, %i.cu          ; 2 uses
  %i.cx = shufflevector <2 x double> %i.cv, <2 x double> %i.cw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cy = extractelement <2 x double> %i.co, i64 0 ; 2 uses
  %i.cz = extractelement <2 x double> %i.cp, i64 1 ; 2 uses
  %i.da = fadd double %i.cy, %i.cz
  %i.db = fsub double %i.cz, %i.cy
  %i.dc = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = insertelement <2 x double> poison, double %i.db, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.da, i64 1
  %i.dg = fmul <2 x double> %i.dd, %i.df          ; 2 uses
  %i.dh = fadd <2 x double> %i.cx, %i.dg
  store <2 x double> %i.dh, ptr %i.bo, align 8, !tbaa !8
end_hunk_0
