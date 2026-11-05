Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/thumb_utils?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6LibRaw18kodak_thumb_loaderEv:bb.a
  invoke void @_ZN6LibRaw20kodak_thumb_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader181 unwind label %bb.o

bb.s:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.an

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.bz

.preheader181:                                    ; preds = %bb.m, %bb.n, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !104
  %i.cd = fpext float %i.cc to double             ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !105
  %i.cg = uitofp i32 %i.cf to double              ; 2 uses
  %i.ch = load <2 x float>, ptr %i.ca, align 4, !tbaa !104
  %i.ci = fpext <2 x float> %i.ch to <2 x double> ; 3 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0 ; 2 uses
  %i.ck = fcmp olt double %i.cj, f0x7FEFFFFFFFFFFFFF
  %.1143 = select i1 %i.ck, double %i.cj, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %i.cl = extractelement <2 x double> %i.ci, i64 1 ; 2 uses
  %i.cm = fcmp ogt double %.1143, %i.cl
  %.1143.1 = select i1 %i.cm, double %i.cl, double %.1143 ; 2 uses
  %i.cn = fcmp ogt double %.1143.1, %i.cd
  %.1143.2 = select i1 %i.cn, double %i.cd, double %.1143.1 ; 2 uses
  %i.co = insertelement <2 x double> poison, double %.1143.2, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fdiv <2 x double> %i.ci, %i.cp
  %i.cr = fmul <2 x double> %i.cq, splat (double 6.553500e+04)
  %i.cs = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fdiv <2 x double> %i.cr, %i.ct
  %i.cv = fptrunc <2 x double> %i.cu to <2 x float> ; 2 uses
  store <2 x float> %i.cv, ptr %i.a, align 16, !tbaa !104
  %i.cw = fdiv double %i.cd, %.1143.2
  %i.cx = fmul double %i.cw, 6.553500e+04
  %i.cy = fdiv double %i.cx, %i.cg
  %i.cz = fptrunc double %i.cy to float
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.cz, ptr %i.da, align 8, !tbaa !104
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dc = extractelement <2 x float> %i.cv, i64 1
  store float %i.dc, ptr %i.db, align 4, !tbaa !104
  %i.dd = load i16, ptr %i.am, align 4, !tbaa !96
  %i.de = zext i16 %i.dd to i64
  %i.df = load i16, ptr %i.ao, align 2, !tbaa !97
  %i.dg = zext i16 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.de, 2
  %i.di = mul nuw nsw i64 %i.dh, %i.dg            ; 2 uses
  %.not228 = icmp eq i64 %i.di, 0
  br i1 %.not228, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader181
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !103
  br label %bb.u

._crit_edge:                                      ; preds = %bb.w, %.preheader181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dk = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 32768, i64 noundef 4) ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !106
  %i.dn = icmp eq i32 %i.dm, 8
  br i1 %i.dn, label %bb.x, label %bb.y

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !107 ; 2 uses
  %.not165 = icmp eq i16 %i.dp, 0
  br i1 %.not165, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = uitofp i16 %i.dp to float
  %i.dr = and i64 %indvars.iv, 3
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !104
  %i.du = fmul float %i.dt, %i.dq
  %i.dv = fptosi float %i.du to i32
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 0)
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 65535)
  %i.dy = trunc nuw i32 %i.dx to i16
  store i16 %i.dy, ptr %i.do, align 2, !tbaa !107
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dz = and i64 %indvars.iv.next, 4294967295
  %i.ea = icmp samesign ugt i64 %i.di, %i.dz
  br i1 %i.ea, label %bb.u, label %._crit_edge, !llvm.loop !84

bb.x:                                             ; preds = %._crit_edge
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.ec = load i16, ptr %i.am, align 4, !tbaa !96 ; 2 uses
  %i.ed = zext i16 %i.ec to i32
  %.not231 = icmp eq i16 %i.ec, 0
  br i1 %.not231, label %.loopexit177, label %.preheader176.lr.ph

.preheader176.lr.ph:                              ; preds = %bb.x
  %i.ee = load i16, ptr %i.ao, align 2, !tbaa !97 ; 2 uses
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %.not232 = icmp eq i16 %i.ee, 0
  br i1 %.not232, label %.loopexit177, label %.preheader176.lr.ph.split

.preheader176.lr.ph.split:                        ; preds = %.preheader176.lr.ph
  %i.eg = load i32, ptr %i.aw, align 4, !tbaa !101 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.preheader176.preheader, label %.loopexit177

.preheader176.preheader:                          ; preds = %.preheader176.lr.ph.split
  %i.ei = add nsw i32 %i.ef, -1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 3
  br label %.preheader176

.preheader176:                                    ; preds = %.preheader176.preheader, %._crit_edge206
  %i.el = phi i32 [ %i.ff, %._crit_edge206 ], [ %i.eg, %.preheader176.preheader ] ; 2 uses
  %i.em = phi i32 [ %i.fg, %._crit_edge206 ], [ %i.eg, %.preheader176.preheader ] ; 2 uses
  %.0134209 = phi i32 [ %i.fh, %._crit_edge206 ], [ 0, %.preheader176.preheader ]
  %.0136208 = phi ptr [ %.us-phi, %._crit_edge206 ], [ %i.eb, %.preheader176.preheader ] ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.preheader175, label %.preheader175.us.preheader

.preheader175.us.preheader:                       ; preds = %.preheader176
  %i.eo = getelementptr i8, ptr %.0136208, i64 %i.ek
  %scevgep = getelementptr i8, ptr %i.eo, i64 8
  br label %._crit_edge206

.preheader175:                                    ; preds = %.preheader176, %._crit_edge203
  %i.ep = phi i32 [ %i.er, %._crit_edge203 ], [ %i.el, %.preheader176 ] ; 2 uses
  %.0132205 = phi i32 [ %i.es, %._crit_edge203 ], [ 0, %.preheader176 ]
  %.1137204 = phi ptr [ %i.et, %._crit_edge203 ], [ %.0136208, %.preheader176 ] ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph202, label %._crit_edge203

._crit_edge203:                                   ; preds = %.lr.ph202, %.preheader175
  %i.er = phi i32 [ %i.ep, %.preheader175 ], [ %i.fc, %.lr.ph202 ] ; 3 uses
  %i.es = add nuw nsw i32 %.0132205, 1            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1137204, i64 8 ; 2 uses
  %exitcond.not = icmp eq i32 %i.es, %i.ef
  br i1 %exitcond.not, label %._crit_edge206, label %.preheader175, !llvm.loop !85

.lr.ph202:                                        ; preds = %.preheader175, %.lr.ph202
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %.lr.ph202 ], [ 0, %.preheader175 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [32768 x i8], ptr %i.dk, i64 %indvars.iv262
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %.1137204, i64 %indvars.iv262
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !107
  %i.ex = lshr i16 %i.ew, 3
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !81
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !81
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %i.fc = load i32, ptr %i.aw, align 4, !tbaa !101 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next263, %i.fd
  br i1 %i.fe, label %.lr.ph202, label %._crit_edge203, !llvm.loop !86

._crit_edge206:                                   ; preds = %._crit_edge203, %.preheader175.us.preheader
  %i.ff = phi i32 [ %i.el, %.preheader175.us.preheader ], [ %i.er, %._crit_edge203 ]
  %i.fg = phi i32 [ %i.em, %.preheader175.us.preheader ], [ %i.er, %._crit_edge203 ]
  %.us-phi = phi ptr [ %scevgep, %.preheader175.us.preheader ], [ %i.et, %._crit_edge203 ]
  %i.fh = add nuw nsw i32 %.0134209, 1            ; 2 uses
  %exitcond266.not = icmp eq i32 %i.fh, %i.ed
  br i1 %exitcond266.not, label %.loopexit177, label %.preheader176, !llvm.loop !87

bb.y:                                             ; preds = %._crit_edge
  %i.fi = load i16, ptr %i.am, align 4, !tbaa !96 ; 2 uses
  %.not229 = icmp eq i16 %i.fi, 0
  br i1 %.not229, label %.loopexit177, label %.preheader180.lr.ph

.preheader180.lr.ph:                              ; preds = %bb.y
  %i.fj = load ptr, ptr %i.b, align 8, !tbaa !103
  %.pre = load i16, ptr %i.ao, align 2, !tbaa !97
  br label %.preheader180

.preheader180:                                    ; preds = %.preheader180.lr.ph, %._crit_edge197
  %i.fk = phi i16 [ %i.fi, %.preheader180.lr.ph ], [ %i.gz, %._crit_edge197 ]
  %i.fl = phi i16 [ %.pre, %.preheader180.lr.ph ], [ %i.ha, %._crit_edge197 ]
  %.1135199 = phi i32 [ 0, %.preheader180.lr.ph ], [ %i.hb, %._crit_edge197 ]
  %.2138198 = phi ptr [ %i.fj, %.preheader180.lr.ph ], [ %.3.lcssa, %._crit_edge197 ] ; 2 uses
  %.not230 = icmp eq i16 %i.fl, 0
  br i1 %.not230, label %._crit_edge197, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %.preheader180
  %.pre284 = load i32, ptr %i.aw, align 4, !tbaa !101
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %._crit_edge193
  %i.fm = phi i32 [ %i.gt, %._crit_edge193 ], [ %.pre284, %.lr.ph196.preheader ] ; 2 uses
  %.1133195 = phi i32 [ %i.gu, %._crit_edge193 ], [ 0, %.lr.ph196.preheader ]
  %.3194 = phi ptr [ %i.gv, %._crit_edge193 ], [ %.2138198, %.lr.ph196.preheader ] ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.3194, i64 4
  %i.fo = load <3 x i16>, ptr %.3194, align 2, !tbaa !107
  %i.fp = uitofp <3 x i16> %i.fo to <3 x float>   ; 5 uses
  %1 = extractelement <3 x float> %i.fp, i64 0    ; 3 uses
  %2 = fmul nnan float %1, f0x403453C6
  %3 = tail call float @llvm.fmuladd.f32(float %1, float f0xBDE514C0, float 0.000000e+00)
  %i.fq = tail call float @llvm.fmuladd.f32(float %1, float f0xBD1B4998, float 0.000000e+00)
  %i.fr = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %4 = insertelement <2 x float> poison, float %2, i64 0
  %5 = insertelement <2 x float> %4, float %3, i64 1
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> <float f0xBFFDE99D, float f0x3FDE524A>, <2 x float> %5)
  %i.ft = extractelement <3 x float> %i.fp, i64 1
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float f0xBF642A32, float %i.fq)
  %i.fv = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> <float f0x3E2A1084, float f0xBF2001FD>, <2 x float> %i.fs)
  %i.fx = extractelement <3 x float> %i.fp, i64 2
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fx, float f0x3FF6EF66, float %i.fu)
  %i.fz = fptosi <2 x float> %i.fw to <2 x i32>
  %i.ga = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fz, <2 x i32> zeroinitializer)
  %i.gb = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ga, <2 x i32> splat (i32 65535))
  %i.gc = trunc nuw <2 x i32> %i.gb to <2 x i16>
  store <2 x i16> %i.gc, ptr %.3194, align 2, !tbaa !107
  %i.gd = fptosi float %i.fy to i32
  %i.ge = tail call i32 @llvm.smax.i32(i32 %i.gd, i32 0)
  %i.gf = tail call i32 @llvm.umin.i32(i32 %i.ge, i32 65535)
  %i.gg = trunc nuw i32 %i.gf to i16
  store i16 %i.gg, ptr %i.fn, align 2, !tbaa !107
  %i.gh = icmp sgt i32 %i.fm, 0
  br i1 %i.gh, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %.lr.ph196, %.lr.ph192
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %.lr.ph192 ], [ 0, %.lr.ph196 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [32768 x i8], ptr %i.dk, i64 %indvars.iv258
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.3194, i64 %indvars.iv258
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !107
  %i.gl = lshr i16 %i.gk, 3
  %i.gm = zext nneg i16 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !81
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !81
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.gq = load i32, ptr %i.aw, align 4, !tbaa !101 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp slt i64 %indvars.iv.next259, %i.gr
  br i1 %i.gs, label %.lr.ph192, label %._crit_edge193, !llvm.loop !88

._crit_edge193:                                   ; preds = %.lr.ph192, %.lr.ph196
  %i.gt = phi i32 [ %i.fm, %.lr.ph196 ], [ %i.gq, %.lr.ph192 ]
  %i.gu = add nuw nsw i32 %.1133195, 1            ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.3194, i64 8 ; 2 uses
  %i.gw = load i16, ptr %i.ao, align 2, !tbaa !97 ; 2 uses
  %i.gx = zext i16 %i.gw to i32
  %i.gy = icmp samesign ult i32 %i.gu, %i.gx
  br i1 %i.gy, label %.lr.ph196, label %._crit_edge197.loopexit, !llvm.loop !89

._crit_edge197.loopexit:                          ; preds = %._crit_edge193
  %.pre285 = load i16, ptr %i.am, align 4, !tbaa !96
  br label %._crit_edge197

._crit_edge197:                                   ; preds = %._crit_edge197.loopexit, %.preheader180
  %i.gz = phi i16 [ %i.fk, %.preheader180 ], [ %.pre285, %._crit_edge197.loopexit ] ; 2 uses
  %i.ha = phi i16 [ 0, %.preheader180 ], [ %i.gw, %._crit_edge197.loopexit ]
  %.3.lcssa = phi ptr [ %.2138198, %.preheader180 ], [ %i.gv, %._crit_edge197.loopexit ]
  %i.hb = add nuw nsw i32 %.1135199, 1            ; 2 uses
  %i.hc = zext i16 %i.gz to i32
  %i.hd = icmp samesign ult i32 %i.hb, %i.hc
  br i1 %i.hd, label %.preheader180, label %.loopexit177, !llvm.loop !90

.loopexit177:                                     ; preds = %._crit_edge197, %._crit_edge206, %bb.y, %.preheader176.lr.ph.split, %bb.x, %.preheader176.lr.ph
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 381672 ; 4 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !110
  store ptr %i.dk, ptr %i.he, align 8, !tbaa !110
  %i.hg = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 131072, i64 noundef 1) ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.hg, ptr noundef nonnull align 8 dereferenceable(131072) %i.hh, i64 131072, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.hh, i8 0, i64 131072, i1 false)
  %i.hi = load i16, ptr %i.ao, align 2, !tbaa !97
  %i.hj = zext i16 %i.hi to i32
  %i.hk = load i16, ptr %i.am, align 4, !tbaa !96
  %i.hl = zext i16 %i.hk to i32
  %i.hm = mul nuw nsw i32 %i.hl, %i.hj
  %i.hn = uitofp nneg i32 %i.hm to float
  %i.ho = fmul nnan float %i.hn, f0x3C23D70A
  %i.hp = fptosi float %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 381670
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !111
  %.not = icmp ne i16 %i.hr, 0
  %i.hs = zext i1 %.not to i32
  %spec.select169 = lshr i32 %i.hp, %i.hs         ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 5384
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !112
  %i.hv = and i32 %i.hu, -3
  %.not159 = icmp eq i32 %i.hv, 0
  br i1 %.not159, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.loopexit177
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 5496
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !113
  %.not160 = icmp eq i32 %i.hx, 0
  br i1 %.not160, label %.preheader174, label %.loopexit

.preheader174:                                    ; preds = %bb.z
  %i.hy = load i32, ptr %i.aw, align 4, !tbaa !101 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %.preheader173.preheader, label %.loopexit

.preheader173.preheader:                          ; preds = %.preheader174
  %wide.trip.count = zext nneg i32 %i.hy to i64
  %i.ia = load ptr, ptr %i.he, align 8, !tbaa !110
  br label %.preheader173

.preheader173:                                    ; preds = %.preheader173.preheader, %.split.loop.exit327
  %indvars.iv271 = phi i64 [ 0, %.preheader173.preheader ], [ %indvars.iv.next272, %.split.loop.exit327 ] ; 2 uses
  %.0123212 = phi i32 [ 0, %.preheader173.preheader ], [ %spec.select170, %.split.loop.exit327 ]
  %i.ib = getelementptr inbounds nuw [32768 x i8], ptr %i.ia, i64 %indvars.iv271 ; 4 uses
  br label %bb.ae

bb.aa:                                            ; preds = %bb.ae
  %indvars.iv.next268.1 = add nsw i64 %indvars.iv267338, -2 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv.next268.1
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !81
  %i.ie = add nsw i32 %i.id, %i.ir                ; 2 uses
  %i.if = icmp sgt i32 %i.ie, %spec.select169
  br i1 %i.if, label %.split.loop.exit, label %bb.ab, !llvm.loop !91

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next268.2 = add nsw i64 %indvars.iv267338, -3 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv.next268.2
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !81
  %i.ii = add nsw i32 %i.ih, %i.ie                ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, %spec.select169
  br i1 %i.ij, label %.split.loop.exit, label %bb.ac, !llvm.loop !91

bb.ac:                                            ; preds = %bb.ab
  %i.ik = icmp sgt i64 %indvars.iv267338, 36
  br i1 %i.ik, label %bb.ad, label %.split.loop.exit327

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next268.3 = add nsw i64 %indvars.iv267338, -4 ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv.next268.3
  %i.im = load i32, ptr %i.il, align 4, !tbaa !81
  %i.in = add nsw i32 %i.im, %i.ii                ; 2 uses
  %i.io = icmp sgt i32 %i.in, %spec.select169
  br i1 %i.io, label %.split.loop.exit, label %bb.ae, !llvm.loop !91

bb.ae:                                            ; preds = %bb.ad, %.preheader173
  %.0125339 = phi i32 [ 0, %.preheader173 ], [ %i.in, %bb.ad ]
  %indvars.iv267338 = phi i64 [ 8192, %.preheader173 ], [ %indvars.iv.next268.3, %bb.ad ] ; 5 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267338, -1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv.next268
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !81
  %i.ir = add nsw i32 %i.iq, %.0125339            ; 2 uses
  %i.is = icmp sgt i32 %i.ir, %spec.select169
  br i1 %i.is, label %.split.loop.exit, label %bb.aa, !llvm.loop !91

.split.loop.exit:                                 ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.ae
  %indvars.iv.next268.lcssa = phi i64 [ %indvars.iv.next268, %bb.ae ], [ %indvars.iv.next268.1, %bb.aa ], [ %indvars.iv.next268.2, %bb.ab ], [ %indvars.iv.next268.3, %bb.ad ]
  %i.it = trunc nuw nsw i64 %indvars.iv.next268.lcssa to i32
  br label %.split.loop.exit327

.split.loop.exit327:                              ; preds = %bb.ac, %.split.loop.exit
  %.lcssa239 = phi i32 [ %i.it, %.split.loop.exit ], [ 32, %bb.ac ]
  %spec.select170 = tail call i32 @llvm.smax.i32(i32 %.0123212, i32 %.lcssa239) ; 2 uses
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count
  br i1 %exitcond275.not, label %.loopexit.loopexit, label %.preheader173, !llvm.loop !92

.loopexit.loopexit:                               ; preds = %.split.loop.exit327
  %i.iu = shl i32 %spec.select170, 3
  %i.iv = sitofp i32 %i.iu to float
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader174, %bb.z, %.loopexit177
  %.2 = phi float [ 6.553600e+04, %.loopexit177 ], [ 6.553600e+04, %bb.z ], [ 0.000000e+00, %.preheader174 ], [ %i.iv, %.loopexit.loopexit ]
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 5304
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !114
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 5312
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !114
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 5368
  %i.jb = load float, ptr %i.ja, align 8, !tbaa !115
  %i.jc = fdiv float %.2, %i.jb
  %i.jd = fptosi float %i.jc to i32
  tail call void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512) %0, double noundef %i.ix, double noundef %i.iz, i32 noundef 2, i32 noundef %i.jd)
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !110
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.dk)
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !116 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 5552 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !82
  %i.ji = and i32 %i.jh, 8
  %.not161 = icmp eq i32 %i.ji, 0
  br i1 %.not161, label %bb.af, label %.thread

.thread:                                          ; preds = %.loopexit
  store i32 0, ptr %i.je, align 8, !tbaa !116
  %i.jj = load i16, ptr %i.am, align 4, !tbaa !96 ; 2 uses
  store i16 %i.jj, ptr %i.as, align 4, !tbaa !99
  %i.jk = load i16, ptr %i.ao, align 2, !tbaa !97 ; 2 uses
  store i16 %i.jk, ptr %i.aq, align 2, !tbaa !98
  br label %bb.ah

bb.af:                                            ; preds = %.loopexit
  %i.jl = load i16, ptr %i.am, align 4, !tbaa !96 ; 4 uses
  store i16 %i.jl, ptr %i.as, align 4, !tbaa !99
  %i.jm = load i16, ptr %i.ao, align 2, !tbaa !97 ; 4 uses
  store i16 %i.jm, ptr %i.aq, align 2, !tbaa !98
  %i.jn = and i32 %i.jf, 4
  %.not162 = icmp eq i32 %i.jn, 0
  br i1 %.not162, label %bb.ah, label %bb.ag

end_hunk_0
