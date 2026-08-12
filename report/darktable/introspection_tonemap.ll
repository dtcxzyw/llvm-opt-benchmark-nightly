inline.NumInlined: 80
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 30
begin_hunk_0_@process:bb.a
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.t, float %i.v)
  %i.ab = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.ac = fmul reassoc nsz arcp contract afn double %i.z, %i.ab ; 2 uses
  %i.ad = fptrunc reassoc nsz arcp contract afn double %i.ac to float
  %i.ae = fcmp reassoc nsz arcp contract afn olt double %i.ac, f0x4007FFFFF0000000
  %i.af = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ad
  %i.ag = select i1 %i.ae, float f0x3EAAAAAB, float %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN20PermutohedralLatticeILi3ELi2EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %i.m, i64 noundef 1, i64 noundef -1)
  %i.ah = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.ah, label %.lr.ph123, label %._crit_edge124.split

.lr.ph123:                                        ; preds = %bb.a
  %i.ai = sext i32 %i.f to i64                    ; 2 uses
  %i.aj = icmp sgt i32 %i.h, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge124.split

.lr.ph.preheader:                                 ; preds = %.lr.ph123
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge124.split:                             ; preds = %._crit_edge, %.lr.ph123, %bb.a
  invoke void @_ZN20PermutohedralLatticeILi3ELi2EE19merge_splat_threadsEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.e unwind label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.an = mul nuw nsw i64 %indvars.iv, %i.k       ; 2 uses
  %i.ao = mul i64 %i.an, %i.ai
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ao
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fmul reassoc nsz arcp contract afn float %i.ag, %i.ar
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond138.not, label %._crit_edge124.split, label %.lr.ph, !llvm.loop !39

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0104120 = phi i64 [ %i.an, %.lr.ph ], [ %i.bm, %bb.c ] ; 2 uses
  %.0105119 = phi ptr [ %i.ap, %.lr.ph ], [ %i.bn, %bb.c ] ; 3 uses
  %.0112118 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %bb.c ] ; 2 uses
  %i.at = load float, ptr %.0105119, align 4, !tbaa !41
  %i.au = fpext reassoc nsz arcp contract afn float %i.at to double
  %i.av = fmul reassoc nsz arcp contract afn double %i.au, 2.126000e-01
  %i.aw = getelementptr inbounds nuw i8, ptr %.0105119, i64 4
  %i.ax = load <2 x float>, ptr %i.aw, align 4, !tbaa !41
  %i.ay = fpext <2 x float> %i.ax to <2 x double>
  %i.az = fmul reassoc nsz arcp contract afn <2 x double> %i.ay, <double 7.152000e-01, double 7.220000e-02> ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = fadd reassoc nsz arcp contract afn double %i.ba, %i.av
  %i.bc = extractelement <2 x double> %i.az, i64 1
  %i.bd = fadd reassoc nsz arcp contract afn double %i.bb, %i.bc ; 2 uses
  %i.be = fptrunc reassoc nsz arcp contract afn double %i.bd to float
  %i.bf = fcmp reassoc nsz arcp contract afn ugt double %i.bd, f0x3690000000000000
  %i.bg = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.be)
  %i.bh = select i1 %i.bf, float %i.bg, float f0xC15D0C55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bi = uitofp nneg i32 %.0112118 to float
  %i.bj = fmul reassoc nsz arcp contract afn float %i.ag, %i.bi
  store float %i.bj, ptr %i.a, align 4, !tbaa !41
  store float %i.as, ptr %i.ak, align 4, !tbaa !41
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, 2.500000e+00
  store float %i.bk, ptr %i.al, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store float %i.bh, ptr %i.b, align 4, !tbaa !41
  store float 1.000000e+00, ptr %i.am, align 4, !tbaa !41
  invoke void @_ZNK20PermutohedralLatticeILi3ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.0104120, i32 noundef 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bl = add nuw nsw i32 %.0112118, 1            ; 2 uses
  %i.bm = add nuw nsw i64 %.0104120, 1
  %i.bn = getelementptr inbounds [4 x i8], ptr %.0105119, i64 %i.ai
  %exitcond.not = icmp eq i32 %i.bl, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !42

bb.d:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge124.split
  invoke void @_ZNK20PermutohedralLatticeILi3ELi2EE4blurEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = load float, ptr %i.d, align 4, !tbaa !43
  %i.bq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bp ; 2 uses
  br i1 %i.ah, label %.lr.ph134, label %.._crit_edge135.split_crit_edge

.._crit_edge135.split_crit_edge:                  ; preds = %bb.f
  %.pre = fadd reassoc nsz arcp contract afn float %i.bq, -1.000000e+00
  br label %._crit_edge135.split

.lr.ph134:                                        ; preds = %bb.f
  %i.br = sext i32 %i.f to i64                    ; 3 uses
  %i.bs = icmp sgt i32 %i.h, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bq, -1.000000e+00 ; 3 uses
  br i1 %i.bs, label %.lr.ph134.split, label %._crit_edge135.split

.lr.ph134.split:                                  ; preds = %.lr.ph134
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !44 ; 4 uses
  %wide.trip.count143 = zext nneg i32 %i.j to i64
  br label %.lr.ph130

._crit_edge135.split:                             ; preds = %._crit_edge131, %.._crit_edge135.split_crit_edge, %.lr.ph134
  %.pre-phi = phi float [ %.pre, %.._crit_edge135.split_crit_edge ], [ %i.bv, %.lr.ph134 ], [ %i.bv, %._crit_edge131 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !49 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 272 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !41 ; 2 uses
  %i.ce = fpext reassoc nsz arcp contract afn float %i.cd to double
  %i.cf = fmul reassoc nsz arcp contract afn double %i.ce, 2.126000e-01
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 276
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !41 ; 2 uses
  %i.ci = fpext reassoc nsz arcp contract afn float %i.ch to double
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, 7.152000e-01
  %i.ck = fadd reassoc nsz arcp contract afn double %i.cj, %i.cf
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 280
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !41 ; 2 uses
  %i.cn = fpext reassoc nsz arcp contract afn float %i.cm to double
  %i.co = fmul reassoc nsz arcp contract afn double %i.cn, 7.220000e-02
  %i.cp = fadd reassoc nsz arcp contract afn double %i.ck, %i.co ; 2 uses
  %i.cq = fptrunc reassoc nsz arcp contract afn double %i.cp to float
  %i.cr = fcmp reassoc nsz arcp contract afn ugt double %i.cp, f0x3690000000000000
  %i.cs = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.cq)
  %i.ct = select i1 %i.cr, float %i.cs, float f0xC15D0C55
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %.pre-phi
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, -1.000000e+00
  %i.cw = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cv) ; 3 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cd, %i.cw
  store float %i.cx, ptr %i.cc, align 4, !tbaa !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 276
  %i.cz = fmul reassoc nsz arcp contract afn float %i.ch, %i.cw
  store float %i.cz, ptr %i.cy, align 4, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %i.cb, i64 280
  %i.db = fmul reassoc nsz arcp contract afn float %i.cm, %i.cw
  store float %i.db, ptr %i.da, align 4, !tbaa !41
  call void @_ZN20PermutohedralLatticeILi3ELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.g:                                             ; preds = %bb.e, %._crit_edge124.split
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph130:                                        ; preds = %.lr.ph134.split, %._crit_edge131
  %indvars.iv140 = phi i64 [ 0, %.lr.ph134.split ], [ %indvars.iv.next141, %._crit_edge131 ] ; 2 uses
  %i.dd = mul nuw nsw i64 %indvars.iv140, %i.k    ; 2 uses
  %i.de = mul i64 %i.dd, %i.br                    ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.de
  br label %bb.h

._crit_edge131:                                   ; preds = %bb.h
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge135.split, label %.lr.ph130, !llvm.loop !50

bb.h:                                             ; preds = %.lr.ph130, %bb.h
  %.0107128 = phi i32 [ 0, %.lr.ph130 ], [ %i.gk, %bb.h ]
  %.0108127 = phi ptr [ %i.dg, %.lr.ph130 ], [ %i.gn, %bb.h ] ; 5 uses
  %.0109126 = phi ptr [ %i.df, %.lr.ph130 ], [ %i.gm, %bb.h ] ; 5 uses
  %.0110125 = phi i64 [ %i.dd, %.lr.ph130 ], [ %i.gl, %bb.h ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [36 x i8], ptr %i.bu, i64 %.0110125 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !36
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dl ; 2 uses
  %i.dn = load float, ptr %i.dj, align 4, !tbaa !41 ; 2 uses
  %i.do = load float, ptr %i.dm, align 4, !tbaa !41
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.dn
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !41
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.dn
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !36
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !41 ; 2 uses
  %i.dz = load float, ptr %i.dw, align 4, !tbaa !41
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.dy
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, %i.dp
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !41
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.dy
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.ds
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !36
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.el = load float, ptr %i.ek, align 4, !tbaa !41 ; 2 uses
  %i.em = load float, ptr %i.ej, align 4, !tbaa !41
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, %i.el
  %i.eo = fadd reassoc nsz arcp contract afn float %i.eb, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !41
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, %i.el
  %i.es = fadd reassoc nsz arcp contract afn float %i.ef, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !36
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !41 ; 2 uses
  %i.ez = load float, ptr %i.ew, align 4, !tbaa !41
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ez, %i.ey
  %i.fb = fadd reassoc nsz arcp contract afn float %i.eo, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !41
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.ey
  %i.ff = fadd reassoc nsz arcp contract afn float %i.es, %i.fe
  %i.fg = load float, ptr %.0109126, align 4, !tbaa !41 ; 2 uses
  %i.fh = fpext reassoc nsz arcp contract afn float %i.fg to double
  %i.fi = fmul reassoc nsz arcp contract afn double %i.fh, 2.126000e-01
  %i.fj = getelementptr inbounds nuw i8, ptr %.0109126, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0109126, i64 8
  %i.fl = load <2 x float>, ptr %i.fj, align 4, !tbaa !41
  %i.fm = fpext <2 x float> %i.fl to <2 x double>
  %i.fn = fmul reassoc nsz arcp contract afn <2 x double> %i.fm, <double 7.152000e-01, double 7.220000e-02> ; 2 uses
  %i.fo = extractelement <2 x double> %i.fn, i64 0
  %i.fp = fadd reassoc nsz arcp contract afn double %i.fo, %i.fi
  %i.fq = extractelement <2 x double> %i.fn, i64 1
  %i.fr = fadd reassoc nsz arcp contract afn double %i.fp, %i.fq ; 2 uses
  %i.fs = fptrunc reassoc nsz arcp contract afn double %i.fr to float
  %i.ft = fcmp reassoc nsz arcp contract afn ugt double %i.fr, f0x3690000000000000
  %i.fu = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.fs)
  %i.fv = select i1 %i.ft, float %i.fu, float f0xC15D0C55
  %i.fw = fdiv reassoc nsz arcp contract afn float %i.fb, %i.ff ; 2 uses
  %7 = fmul reassoc nsz arcp contract afn float %i.fw, %i.bv
  %8 = fsub reassoc nsz arcp contract afn float -1.000000e+00, %i.fw
  %i.fx = fadd reassoc nsz arcp contract afn float %8, %7
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fx, %i.fv
  %i.fz = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.fy) ; 3 uses
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.fg
  store float %i.ga, ptr %.0108127, align 4, !tbaa !41
  %i.gb = load float, ptr %i.fj, align 4, !tbaa !41
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fz, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %.0108127, i64 4
  store float %i.gc, ptr %i.gd, align 4, !tbaa !41
  %i.ge = load float, ptr %i.fk, align 4, !tbaa !41
  %i.gf = fmul reassoc nsz arcp contract afn float %i.fz, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %.0108127, i64 8
  store float %i.gf, ptr %i.gg, align 4, !tbaa !41
  %i.gh = getelementptr inbounds nuw i8, ptr %.0109126, i64 12
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !41
  %i.gj = getelementptr inbounds nuw i8, ptr %.0108127, i64 12
  store float %i.gi, ptr %i.gj, align 4, !tbaa !41
  %i.gk = add nuw nsw i32 %.0107128, 1            ; 2 uses
  %i.gl = add nuw nsw i64 %.0110125, 1
  %i.gm = getelementptr inbounds [4 x i8], ptr %.0109126, i64 %i.br
  %i.gn = getelementptr inbounds [4 x i8], ptr %.0108127, i64 %i.br
  %exitcond139.not = icmp eq i32 %i.gk, %i.h
  br i1 %exitcond139.not, label %._crit_edge131, label %bb.h, !llvm.loop !51

bb.i:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.d ], [ %i.dc, %bb.g ]
  call void @_ZN20PermutohedralLatticeILi3ELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN20PermutohedralLatticeILi3ELi2EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.3:
  store i64 %1, ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !56
  %i.b = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #21 ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znam(i64 noundef 64) #21 ; 5 uses
  %i.d = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 36) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = select i1 %i.e, i64 -1, i64 %i.f
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.i, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <8 x i32> <i32 1, i32 1, i32 1, i32 -3, i32 2, i32 2, i32 -2, i32 -2>, ptr %i.j, align 4, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 3, ptr %i.k, align 4, !tbaa !36
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 -1, i64 12, i1 false), !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.l, align 8, !tbaa !58
  store <2 x float> <float f0x4013CD3B, float f0x3FAAAAAB>, ptr %i.b, align 4, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float f0x3F715BF0, ptr %i.m, align 4, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.n, align 8, !tbaa !59
  %i.o = uitofp reassoc nsz arcp contract afn i64 %3 to float
  %i.p = uitofp reassoc nsz arcp contract afn i64 %1 to float
  %i.q = fdiv reassoc nsz arcp contract afn float %i.o, %i.p
  %i.r = fpext reassoc nsz arcp contract afn float %i.q to double ; 2 uses
  %i.s = fcmp reassoc nsz arcp contract afn olt double %i.r, 1.000000e-01
  br i1 %i.s, label %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge.3
  %i.t = fmul reassoc nsz arcp contract afn double %i.r, 2.000000e-02
  %i.u = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.t)
  %i.v = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double 1.800000e+00, double %i.u)
  br label %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit

_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit: ; preds = %._crit_edge.3, %bb.a
  %i.w = phi double [ %i.v, %bb.a ], [ f0x3FCA323591D23FB1, %._crit_edge.3 ]
  %i.x = uitofp reassoc nsz arcp contract afn i64 %1 to double
  %i.y = fmul reassoc nsz arcp contract afn double %i.w, %i.x
  %i.z = fptoui double %i.y to i64
  %i.aa = shl i64 %1, 2
  %i.ab = tail call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z)
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 80) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = or disjoint i64 %i.ae, 8
  %i.ag = select i1 %i.ad, i64 -1, i64 %i.af
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #21 ; 2 uses
  store i64 %2, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  %i.aj = icmp eq i64 %2, 0
  br i1 %i.aj, label %.loopexit.thread, label %bb.b

.loopexit.thread:                                 ; preds = %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !60
  br label %._crit_edge51

bb.b:                                             ; preds = %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit
  %i.al = getelementptr inbounds [80 x i8], ptr %i.ai, i64 %2
  %i.am = mul i64 %2, 80
  %i.an = add i64 %i.am, -80                      ; 2 uses
  %i.ao = udiv i64 %i.an, 80
  %i.ap = add nuw nsw i64 %i.ao, 1
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.aq = phi ptr [ %i.av, %.prol.preheader ], [ %i.ai, %bb.b ] ; 6 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 0, ptr %i.as, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.at, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 80 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.ai, %bb.b ], [ %i.av, %.prol.preheader ]
  %i.aw = icmp ult i64 %i.an, 560
  br i1 %i.aw, label %.lr.ph50.preheader, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ax = phi ptr [ %i.cl, %.new ], [ %.unr, %.prol.loopexit ] ; 41 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 0, ptr %i.az, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.ba, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store i64 0, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.bf, align 8, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 184
  store i64 0, ptr %i.bj, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.bk, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bh, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 240
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 296
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 264
  store i64 0, ptr %i.bo, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.bp, align 8, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 320
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 376
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 344
  store i64 0, ptr %i.bt, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.bu, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.br, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 400
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 456
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 424
  store i64 0, ptr %i.by, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.bz, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bw, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 480
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 536
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 504
  store i64 0, ptr %i.cd, align 8, !tbaa !61
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.ce, align 8, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 560
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 616
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ax, i64 584
  store i64 0, ptr %i.ci, align 8, !tbaa !61
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.cj, align 8, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 640 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.al
  br i1 %i.cm, label %.lr.ph50.preheader, label %.new

.lr.ph50.preheader:                               ; preds = %.new, %.prol.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.cn, align 8, !tbaa !60
  br label %.lr.ph50

._crit_edge51:                                    ; preds = %.lr.ph50, %.loopexit.thread
  ret void

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %.lr.ph50
  %i.co = phi i64 [ %i.ct, %.lr.ph50 ], [ %2, %.lr.ph50.preheader ]
  %.048 = phi i64 [ %i.cs, %.lr.ph50 ], [ 0, %.lr.ph50.preheader ] ; 2 uses
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !60
  %i.cq = getelementptr inbounds nuw [80 x i8], ptr %i.cp, i64 %.048
  %i.cr = udiv i64 %i.ab, %i.co
  tail call void @_ZN22HashTablePermutohedralILi3ELi2EE7setSizeEm(ptr noundef nonnull align 8 dereferenceable(80) %i.cq, i64 noundef %i.cr)
  %i.cs = add nuw i64 %.048, 1                    ; 2 uses
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.cu = icmp ult i64 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph50, label %._crit_edge51, !llvm.loop !65
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK20PermutohedralLatticeILi3ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 {
.lr.ph:
  %i.a = alloca [5 x float], align 16             ; 15 uses
  %5 = alloca %"struct.HashTablePermutohedral<3, 2>::Key", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !41 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 2.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !41 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.j
  %i.n = load float, ptr %1, align 4, !tbaa !41   ; 2 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !41 ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.n
  %i.q = fmul reassoc nsz arcp contract afn float %i.i, 3.000000e+00
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.l
  %i.s = fmul reassoc nsz arcp contract afn float %i.n, 2.000000e+00
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.o
  %i.u = insertelement <2 x float> poison, float %i.c, i64 0
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.u
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, <float 4.000000e+00, float -3.000000e+00> ; 4 uses
  %i.z = extractelement <2 x float> %i.y, i64 1
  %i.aa = fsub reassoc nsz arcp contract afn float %i.z, %i.m
  %i.ab = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.aa, i64 0
  %i.ac = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.ab ; 7 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ae = extractelement <2 x float> %i.ac, i64 0
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.p
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.r ; 4 uses
  %i.ah = fadd reassoc nsz arcp contract afn float %i.t, %i.ag ; 2 uses
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ag, i64 1 ; 5 uses
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 2.500000e-01) ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ak)
  %i.am = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, splat (float 2.500000e-01) ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn <2 x float> %i.al, splat (float 4.000000e+00) ; 2 uses
  %i.ao = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.ak)
  %i.ap = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, splat (float 4.000000e+00) ; 2 uses
  %i.aq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> %i.an, %i.aj
  %i.as = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.am)
  %i.at = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ap
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.aq, splat (float 4.000000e+00) ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.as, splat (float 4.000000e+00) ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ar, %i.at
  %i.ax = fsub reassoc nsz arcp contract afn <2 x float> %i.au, %i.ac
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.ac, %i.av
  %i.az = select <2 x i1> %i.aw, <2 x float> %i.an, <2 x float> %i.ap
  %i.ba = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ax, %i.ay
  %i.bb = fptosi <2 x float> %i.az to <2 x i32>   ; 5 uses
  %i.bc = select <2 x i1> %i.ba, <2 x float> %i.au, <2 x float> %i.av
  %i.bd = fptosi <2 x float> %i.bc to <2 x i32>   ; 6 uses
  %i.be = shufflevector <2 x i32> %i.bd, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.bf = extractelement <2 x i32> %i.bb, i64 1
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nsz arcp contract afn float %i.ag, %i.bg
  %i.bi = extractelement <2 x i32> %i.bd, i64 0
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  %i.bk = sitofp <2 x i32> %i.bb to <2 x float>   ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.bk ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.bn = shufflevector <2 x float> %i.ac, <2 x float> %i.aj, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.bo = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bp = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.bo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bs = fsub reassoc nsz arcp contract afn <4 x float> %i.bn, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 0
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.bh ; 2 uses
  %i.bv = sitofp <4 x i32> %i.be to <4 x float>
  %i.bw = shufflevector <2 x i32> %i.bd, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bx = sitofp <4 x i32> %i.bw to <4 x float>
  %i.by = fsub reassoc nsz arcp contract afn <4 x float> %i.ad, %i.bv ; 2 uses
  %i.bz = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = fsub reassoc nsz arcp contract afn <4 x float> %i.bz, %i.bx
  %i.cb = fcmp reassoc nsz arcp contract afn uge <4 x float> %i.bm, %i.by ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bm, %i.by
  %i.cd = shufflevector <4 x i1> %i.cc, <4 x i1> %i.cb, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ce = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bs, %i.ca ; 2 uses
  %not. = xor i1 %i.bu, true
  %i.cf = shufflevector <4 x i1> %i.ce, <4 x i1> %i.cb, <4 x i32> <i32 1, i32 poison, i32 poison, i32 5>
  %i.cg = insertelement <4 x i1> %i.cf, i1 %i.bu, i64 1 ; 2 uses
  %i.ch = xor <4 x i1> %i.cg, <i1 true, i1 false, i1 poison, i1 false>
  %i.ci = shufflevector <4 x i1> %i.ch, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.cj = select <4 x i1> %i.ci, <4 x i32> splat (i32 1), <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ck = insertelement <4 x i1> %i.cg, i1 %not., i64 2
  %i.cl = select <4 x i1> %i.ck, <4 x i32> <i32 1, i32 2, i32 1, i32 2>, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.cm = select <4 x i1> %i.cd, <4 x i32> %i.cj, <4 x i32> %i.cl
  %i.cn = xor <4 x i1> %i.ce, <i1 true, i1 false, i1 false, i1 false>
  %i.co = zext <4 x i1> %i.cn to <4 x i32>
  %i.cp = add nuw nsw <4 x i32> %i.cm, %i.co      ; 5 uses
  %i.cq = shufflevector <2 x i32> %i.bd, <2 x i32> %i.bb, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.cr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cq) ; 3 uses
  %i.cs = sdiv i32 %i.cr, 4                       ; 6 uses
  %i.ct = icmp sgt i32 %i.cr, 3
  br i1 %i.ct, label %.preheader107, label %bb.a

.preheader107:                                    ; preds = %.lr.ph
  %i.cu = sub nsw i32 4, %i.cs
  %i.cv = add nsw i32 %i.cs, -4
  %i.cw = shufflevector <2 x i32> %i.bd, <2 x i32> %i.bb, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.cx = add nsw <4 x i32> %i.cw, splat (i32 -4)
  %i.cy = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %i.cz = shufflevector <4 x i32> %i.cy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.da = icmp slt <4 x i32> %i.cp, %i.cz         ; 2 uses
  %i.db = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dd = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.de = shufflevector <4 x i32> %i.dd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.df = select <4 x i1> %i.da, <4 x i32> %i.dc, <4 x i32> %i.de
  %i.dg = select <4 x i1> %i.da, <4 x i32> %i.cw, <4 x i32> %i.cx
  %i.dh = add nsw <4 x i32> %i.df, %i.cp
  br label %.loopexit

bb.a:                                             ; preds = %.lr.ph
  %i.di = icmp slt i32 %i.cr, -3
  %i.dj = shufflevector <2 x i32> %i.bd, <2 x i32> %i.bb, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 3 uses
  br i1 %i.di, label %.preheader108, label %.loopexit

.preheader108:                                    ; preds = %bb.a
  %i.dk = sub nsw i32 0, %i.cs
  %i.dl = add nsw i32 %i.cs, 4
  %i.dm = add nsw <4 x i32> %i.dj, splat (i32 4)
  %i.dn = insertelement <4 x i32> poison, i32 %i.dk, i64 0
  %i.do = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dp = icmp slt <4 x i32> %i.cp, %i.do         ; 2 uses
  %i.dq = insertelement <4 x i32> poison, i32 %i.dl, i64 0
  %i.dr = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ds = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %i.dt = shufflevector <4 x i32> %i.ds, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.du = select <4 x i1> %i.dp, <4 x i32> %i.dr, <4 x i32> %i.dt
  %i.dv = select <4 x i1> %i.dp, <4 x i32> %i.dm, <4 x i32> %i.dj
  %i.dw = add nsw <4 x i32> %i.du, %i.cp
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader108, %.preheader107, %bb.a
  %i.dx = phi <4 x i32> [ %i.dh, %.preheader107 ], [ %i.dw, %.preheader108 ], [ %i.cp, %bb.a ] ; 4 uses
  %i.dy = phi <4 x i32> [ %i.dg, %.preheader107 ], [ %i.dv, %.preheader108 ], [ %i.dj, %bb.a ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.dz = extractelement <4 x i32> %i.dx, i64 1   ; 3 uses
  %i.ea = sub nsw i32 3, %i.dz
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eb ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !41
  %i.ee = sub nsw i32 4, %i.dz
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ef ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !41
  %i.ei = extractelement <4 x i32> %i.dx, i64 2   ; 3 uses
  %i.ej = sub nsw i32 3, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ek ; 2 uses
  %i.em = sub nsw i32 4, %i.ei
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.en ; 2 uses
  %i.ep = extractelement <4 x i32> %i.dx, i64 3   ; 3 uses
  %i.eq = sub nsw i32 3, %i.ep
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.er ; 2 uses
  %i.et = sub nsw i32 4, %i.ep
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eu ; 2 uses
  %i.ew = sitofp <4 x i32> %i.dy to <4 x float>
  %i.ex = shufflevector <2 x float> %i.y, <2 x float> %i.ac, <4 x i32> <i32 1, i32 poison, i32 poison, i32 2>
  %i.ey = insertelement <4 x float> %i.ex, float %i.ah, i64 1
  %i.ez = insertelement <4 x float> %i.ey, float %i.ag, i64 2
  %i.fa = fsub reassoc nsz arcp contract afn <4 x float> %i.ez, %i.ew ; 4 uses
  %i.fb = extractelement <4 x float> %i.fa, i64 1
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, 2.500000e-01 ; 2 uses
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fc, %i.ed
  store float %i.fd, ptr %i.ec, align 4, !tbaa !41
  %i.fe = fsub reassoc nsz arcp contract afn float %i.eh, %i.fc
  store float %i.fe, ptr %i.eg, align 4, !tbaa !41
  %i.ff = extractelement <4 x float> %i.fa, i64 2
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, 2.500000e-01 ; 2 uses
  %i.fh = load float, ptr %i.el, align 4, !tbaa !41
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fg, %i.fh
  store float %i.fi, ptr %i.el, align 4, !tbaa !41
  %i.fj = load float, ptr %i.eo, align 4, !tbaa !41
  %i.fk = fsub reassoc nsz arcp contract afn float %i.fj, %i.fg
  store float %i.fk, ptr %i.eo, align 4, !tbaa !41
  %i.fl = extractelement <4 x float> %i.fa, i64 3
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, 2.500000e-01 ; 2 uses
  %i.fn = load float, ptr %i.es, align 4, !tbaa !41
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fm, %i.fn
  store float %i.fo, ptr %i.es, align 4, !tbaa !41
  %i.fp = load float, ptr %i.ev, align 4, !tbaa !41
  %i.fq = fsub reassoc nsz arcp contract afn float %i.fp, %i.fm
  store float %i.fq, ptr %i.ev, align 4, !tbaa !41
  %i.fr = extractelement <4 x float> %i.fa, i64 0
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, 2.500000e-01 ; 2 uses
  %i.ft = extractelement <4 x i32> %i.dx, i64 0   ; 2 uses
  %i.fu = sub nsw i32 3, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fv ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !41
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fs, %i.fx
  store float %i.fy, ptr %i.fw, align 4, !tbaa !41
  %i.fz = sub nsw i32 4, %i.ft
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ga ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !41
  %i.gd = fsub reassoc nsz arcp contract afn float %i.gc, %i.fs
  store float %i.gd, ptr %i.gb, align 4, !tbaa !41
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gf = load float, ptr %i.ge, align 16, !tbaa !41
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, 1.000000e+00
  %i.gh = load float, ptr %i.a, align 16, !tbaa !41
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gg, %i.gh
  store float %i.gi, ptr %i.a, align 16, !tbaa !41
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !57 ; 2 uses
  %i.gl = getelementptr inbounds nuw [36 x i8], ptr %i.gk, i64 %3
  store i32 %4, ptr %i.gl, align 4, !tbaa !66
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gp = sext i32 %4 to i64                      ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.go, align 8, !tbaa !60
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gt = extractelement <4 x i32> %i.dy, i64 1
  %i.gu = extractelement <4 x i32> %i.dy, i64 2
  %i.gv = extractelement <4 x i32> %i.dy, i64 3
  br label %.preheader

.preheader:                                       ; preds = %.loopexit, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  %i.gw = phi ptr [ %i.gk, %.loopexit ], [ %i.jx, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ]
end_hunk_0
