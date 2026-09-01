Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/thumb_utils?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6LibRaw18kodak_thumb_loaderEv:bb.a
          to label %.preheader180 unwind label %bb.o

bb.r:                                             ; preds = %bb.m
  invoke void @_ZN6LibRaw20kodak_thumb_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader180 unwind label %bb.o

bb.s:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.an

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.bz

.preheader180:                                    ; preds = %bb.m, %bb.n, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !89
  %i.cd = fpext float %i.cc to double             ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !90
  %i.cg = uitofp i32 %i.cf to double              ; 2 uses
  %i.ch = load <2 x float>, ptr %i.ca, align 4, !tbaa !89
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
  store <2 x float> %i.cv, ptr %i.a, align 16, !tbaa !89
  %i.cw = fdiv double %i.cd, %.1143.2
  %i.cx = fmul double %i.cw, 6.553500e+04
  %i.cy = fdiv double %i.cx, %i.cg
  %i.cz = fptrunc double %i.cy to float
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.cz, ptr %i.da, align 8, !tbaa !89
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dc = extractelement <2 x float> %i.cv, i64 1
  store float %i.dc, ptr %i.db, align 4, !tbaa !89
  %i.dd = load i16, ptr %i.am, align 4, !tbaa !78
  %i.de = zext i16 %i.dd to i64
  %i.df = load i16, ptr %i.ao, align 2, !tbaa !79
  %i.dg = zext i16 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.de, 2
  %i.di = mul nuw nsw i64 %i.dh, %i.dg            ; 2 uses
  %.not227 = icmp eq i64 %i.di, 0
  br i1 %.not227, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader180
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !85
  br label %bb.u

._crit_edge:                                      ; preds = %bb.w, %.preheader180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dk = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 32768, i64 noundef 4) ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !91
  %i.dn = icmp eq i32 %i.dm, 8
  br i1 %i.dn, label %bb.x, label %bb.y

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !92 ; 2 uses
  %.not165 = icmp eq i16 %i.dp, 0
  br i1 %.not165, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = uitofp i16 %i.dp to float
  %i.dr = and i64 %indvars.iv, 3
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !89
  %i.du = fmul float %i.dt, %i.dq
  %i.dv = fptosi float %i.du to i32
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 0)
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 65535)
  %i.dy = trunc nuw i32 %i.dx to i16
  store i16 %i.dy, ptr %i.do, align 2, !tbaa !92
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dz = and i64 %indvars.iv.next, 4294967295
  %i.ea = icmp samesign ugt i64 %i.di, %i.dz
  br i1 %i.ea, label %bb.u, label %._crit_edge, !llvm.loop !93

bb.x:                                             ; preds = %._crit_edge
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.ec = load i16, ptr %i.am, align 4, !tbaa !78 ; 2 uses
  %i.ed = zext i16 %i.ec to i32
  %.not230 = icmp eq i16 %i.ec, 0
  br i1 %.not230, label %.loopexit176, label %.preheader175.lr.ph

.preheader175.lr.ph:                              ; preds = %bb.x
  %i.ee = load i16, ptr %i.ao, align 2, !tbaa !79 ; 2 uses
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %.not231 = icmp eq i16 %i.ee, 0
  br i1 %.not231, label %.loopexit176, label %.preheader175.lr.ph.split

.preheader175.lr.ph.split:                        ; preds = %.preheader175.lr.ph
  %i.eg = load i32, ptr %i.aw, align 4, !tbaa !83 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.preheader175.preheader, label %.loopexit176

.preheader175.preheader:                          ; preds = %.preheader175.lr.ph.split
  %i.ei = add nsw i32 %i.ef, -1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 3
  br label %.preheader175

.preheader175:                                    ; preds = %.preheader175.preheader, %._crit_edge205
  %i.el = phi i32 [ %i.ff, %._crit_edge205 ], [ %i.eg, %.preheader175.preheader ] ; 2 uses
  %i.em = phi i32 [ %i.fg, %._crit_edge205 ], [ %i.eg, %.preheader175.preheader ] ; 2 uses
  %.0134208 = phi i32 [ %i.fh, %._crit_edge205 ], [ 0, %.preheader175.preheader ]
  %.0136207 = phi ptr [ %.us-phi, %._crit_edge205 ], [ %i.eb, %.preheader175.preheader ] ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.preheader174, label %.preheader174.us.preheader

.preheader174.us.preheader:                       ; preds = %.preheader175
  %i.eo = getelementptr i8, ptr %.0136207, i64 %i.ek
  %scevgep = getelementptr i8, ptr %i.eo, i64 8
  br label %._crit_edge205

.preheader174:                                    ; preds = %.preheader175, %._crit_edge202
  %i.ep = phi i32 [ %i.er, %._crit_edge202 ], [ %i.el, %.preheader175 ] ; 2 uses
  %.0132204 = phi i32 [ %i.es, %._crit_edge202 ], [ 0, %.preheader175 ]
  %.1137203 = phi ptr [ %i.et, %._crit_edge202 ], [ %.0136207, %.preheader175 ] ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph201, label %._crit_edge202

._crit_edge202:                                   ; preds = %.lr.ph201, %.preheader174
  %i.er = phi i32 [ %i.ep, %.preheader174 ], [ %i.fc, %.lr.ph201 ] ; 3 uses
  %i.es = add nuw nsw i32 %.0132204, 1            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1137203, i64 8 ; 2 uses
  %exitcond.not = icmp eq i32 %i.es, %i.ef
  br i1 %exitcond.not, label %._crit_edge205, label %.preheader174, !llvm.loop !95

.lr.ph201:                                        ; preds = %.preheader174, %.lr.ph201
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.lr.ph201 ], [ 0, %.preheader174 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [32768 x i8], ptr %i.dk, i64 %indvars.iv261
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %.1137203, i64 %indvars.iv261
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !92
  %i.ex = lshr i16 %i.ew, 3
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !97
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !97
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %i.fc = load i32, ptr %i.aw, align 4, !tbaa !83 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next262, %i.fd
  br i1 %i.fe, label %.lr.ph201, label %._crit_edge202, !llvm.loop !98

._crit_edge205:                                   ; preds = %._crit_edge202, %.preheader174.us.preheader
  %i.ff = phi i32 [ %i.el, %.preheader174.us.preheader ], [ %i.er, %._crit_edge202 ]
  %i.fg = phi i32 [ %i.em, %.preheader174.us.preheader ], [ %i.er, %._crit_edge202 ]
  %.us-phi = phi ptr [ %scevgep, %.preheader174.us.preheader ], [ %i.et, %._crit_edge202 ]
  %i.fh = add nuw nsw i32 %.0134208, 1            ; 2 uses
  %exitcond265.not = icmp eq i32 %i.fh, %i.ed
  br i1 %exitcond265.not, label %.loopexit176, label %.preheader175, !llvm.loop !99

bb.y:                                             ; preds = %._crit_edge
  %i.fi = load i16, ptr %i.am, align 4, !tbaa !78 ; 2 uses
  %.not228 = icmp eq i16 %i.fi, 0
  br i1 %.not228, label %.loopexit176, label %.preheader179.lr.ph

.preheader179.lr.ph:                              ; preds = %bb.y
  %i.fj = load ptr, ptr %i.b, align 8, !tbaa !85
  %.pre = load i16, ptr %i.ao, align 2, !tbaa !79
  br label %.preheader179

.preheader179:                                    ; preds = %.preheader179.lr.ph, %._crit_edge196
  %i.fk = phi i16 [ %i.fi, %.preheader179.lr.ph ], [ %i.gq, %._crit_edge196 ]
  %i.fl = phi i16 [ %.pre, %.preheader179.lr.ph ], [ %i.gr, %._crit_edge196 ]
  %.1135198 = phi i32 [ 0, %.preheader179.lr.ph ], [ %i.gs, %._crit_edge196 ]
  %.2138197 = phi ptr [ %i.fj, %.preheader179.lr.ph ], [ %.3.lcssa, %._crit_edge196 ] ; 2 uses
  %.not229 = icmp eq i16 %i.fl, 0
  br i1 %.not229, label %._crit_edge196, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %.preheader179
  %.pre283 = load i32, ptr %i.aw, align 4, !tbaa !83
  br label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %._crit_edge192
  %i.fm = phi i32 [ %i.gk, %._crit_edge192 ], [ %.pre283, %.lr.ph195.preheader ] ; 2 uses
  %.1133194 = phi i32 [ %i.gl, %._crit_edge192 ], [ 0, %.lr.ph195.preheader ]
  %.3193 = phi ptr [ %i.gm, %._crit_edge192 ], [ %.2138197, %.lr.ph195.preheader ] ; 6 uses
  %1 = load i16, ptr %.3193, align 2, !tbaa !92
  %2 = uitofp i16 %1 to float                     ; 2 uses
  %3 = tail call float @llvm.fmuladd.f32(float %2, float f0xBD1B4998, float 0.000000e+00)
  %i.fn = getelementptr inbounds nuw i8, ptr %.3193, i64 2
  %4 = load i16, ptr %i.fn, align 2, !tbaa !92
  %5 = uitofp i16 %4 to float                     ; 2 uses
  %6 = tail call float @llvm.fmuladd.f32(float %5, float f0xBF642A32, float %3)
  %7 = getelementptr inbounds nuw i8, ptr %.3193, i64 4 ; 2 uses
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = uitofp i16 %8 to float                     ; 2 uses
  %i.fo = tail call float @llvm.fmuladd.f32(float %9, float f0x3FF6EF66, float %6)
  %10 = insertelement <2 x float> poison, float %2, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> <float f0x403453C6, float f0xBDE514C0>, <2 x float> zeroinitializer)
  %12 = insertelement <2 x float> poison, float %5, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> <float f0xBFFDE99D, float f0x3FDE524A>, <2 x float> %i.fp)
  %15 = insertelement <2 x float> poison, float %9, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> <float f0x3E2A1084, float f0xBF2001FD>, <2 x float> %14)
  %i.fq = fptosi <2 x float> %17 to <2 x i32>
  %i.fr = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fq, <2 x i32> zeroinitializer)
  %i.fs = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.fr, <2 x i32> splat (i32 65535))
  %i.ft = trunc nuw <2 x i32> %i.fs to <2 x i16>
  store <2 x i16> %i.ft, ptr %.3193, align 2, !tbaa !92
  %i.fu = fptosi float %i.fo to i32
  %i.fv = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %i.fw = tail call i32 @llvm.umin.i32(i32 %i.fv, i32 65535)
  %i.fx = trunc nuw i32 %i.fw to i16
  store i16 %i.fx, ptr %7, align 2, !tbaa !92
  %i.fy = icmp sgt i32 %i.fm, 0
  br i1 %i.fy, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %.lr.ph195, %.lr.ph191
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.lr.ph191 ], [ 0, %.lr.ph195 ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [32768 x i8], ptr %i.dk, i64 %indvars.iv257
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %.3193, i64 %indvars.iv257
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !92
  %i.gc = lshr i16 %i.gb, 3
  %i.gd = zext nneg i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !97
  %i.gg = add nsw i32 %i.gf, 1
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !97
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.gh = load i32, ptr %i.aw, align 4, !tbaa !83 ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next258, %i.gi
  br i1 %i.gj, label %.lr.ph191, label %._crit_edge192, !llvm.loop !100

._crit_edge192:                                   ; preds = %.lr.ph191, %.lr.ph195
  %i.gk = phi i32 [ %i.fm, %.lr.ph195 ], [ %i.gh, %.lr.ph191 ]
  %i.gl = add nuw nsw i32 %.1133194, 1            ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.3193, i64 8 ; 2 uses
  %i.gn = load i16, ptr %i.ao, align 2, !tbaa !79 ; 2 uses
  %i.go = zext i16 %i.gn to i32
  %i.gp = icmp samesign ult i32 %i.gl, %i.go
  br i1 %i.gp, label %.lr.ph195, label %._crit_edge196.loopexit, !llvm.loop !101

._crit_edge196.loopexit:                          ; preds = %._crit_edge192
  %.pre284 = load i16, ptr %i.am, align 4, !tbaa !78
  br label %._crit_edge196

._crit_edge196:                                   ; preds = %._crit_edge196.loopexit, %.preheader179
  %i.gq = phi i16 [ %i.fk, %.preheader179 ], [ %.pre284, %._crit_edge196.loopexit ] ; 2 uses
  %i.gr = phi i16 [ 0, %.preheader179 ], [ %i.gn, %._crit_edge196.loopexit ]
  %.3.lcssa = phi ptr [ %.2138197, %.preheader179 ], [ %i.gm, %._crit_edge196.loopexit ]
  %i.gs = add nuw nsw i32 %.1135198, 1            ; 2 uses
  %i.gt = zext i16 %i.gq to i32
  %i.gu = icmp samesign ult i32 %i.gs, %i.gt
  br i1 %i.gu, label %.preheader179, label %.loopexit176, !llvm.loop !102

.loopexit176:                                     ; preds = %._crit_edge196, %._crit_edge205, %bb.y, %.preheader175.lr.ph.split, %bb.x, %.preheader175.lr.ph
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 381672 ; 4 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !103
  store ptr %i.dk, ptr %i.gv, align 8, !tbaa !103
  %i.gx = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 131072, i64 noundef 1) ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.gx, ptr noundef nonnull align 8 dereferenceable(131072) %i.gy, i64 131072, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.gy, i8 0, i64 131072, i1 false)
  %i.gz = load i16, ptr %i.ao, align 2, !tbaa !79
  %i.ha = zext i16 %i.gz to i32
  %i.hb = load i16, ptr %i.am, align 4, !tbaa !78
  %i.hc = zext i16 %i.hb to i32
  %i.hd = mul nuw nsw i32 %i.hc, %i.ha
  %i.he = uitofp nneg i32 %i.hd to float
  %i.hf = fmul nnan float %i.he, f0x3C23D70A
  %i.hg = fptosi float %i.hf to i32               ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 381670
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !104
  %.not = icmp eq i16 %i.hi, 0
  %i.hj = sdiv i32 %i.hg, 2
  %.0127 = select i1 %.not, i32 %i.hg, i32 %i.hj  ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 5384
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !105
  %i.hm = and i32 %i.hl, -3
  %.not159 = icmp eq i32 %i.hm, 0
  br i1 %.not159, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.loopexit176
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 5496
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !106
  %.not160 = icmp eq i32 %i.ho, 0
  br i1 %.not160, label %.preheader173, label %.loopexit

.preheader173:                                    ; preds = %bb.z
  %i.hp = load i32, ptr %i.aw, align 4, !tbaa !83 ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, 0
  br i1 %i.hq, label %.preheader172.preheader, label %.loopexit

.preheader172.preheader:                          ; preds = %.preheader173
  %wide.trip.count = zext nneg i32 %i.hp to i64
  %i.hr = load ptr, ptr %i.gv, align 8, !tbaa !103
  br label %.preheader172

.preheader172:                                    ; preds = %.preheader172.preheader, %.split.loop.exit326
  %indvars.iv270 = phi i64 [ 0, %.preheader172.preheader ], [ %indvars.iv.next271, %.split.loop.exit326 ] ; 2 uses
  %.0123211 = phi i32 [ 0, %.preheader172.preheader ], [ %spec.select169, %.split.loop.exit326 ]
  %i.hs = getelementptr inbounds nuw [32768 x i8], ptr %i.hr, i64 %indvars.iv270 ; 4 uses
  br label %bb.ae

bb.aa:                                            ; preds = %bb.ae
  %indvars.iv.next267.1 = add nsw i64 %indvars.iv266337, -2 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.next267.1
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !97
  %i.hv = add nsw i32 %i.hu, %i.ii                ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, %.0127
  br i1 %i.hw, label %.split.loop.exit, label %bb.ab, !llvm.loop !107

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next267.2 = add nsw i64 %indvars.iv266337, -3 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.next267.2
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !97
  %i.hz = add nsw i32 %i.hy, %i.hv                ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, %.0127
  br i1 %i.ia, label %.split.loop.exit, label %bb.ac, !llvm.loop !107

bb.ac:                                            ; preds = %bb.ab
  %i.ib = icmp sgt i64 %indvars.iv266337, 36
  br i1 %i.ib, label %bb.ad, label %.split.loop.exit326

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next267.3 = add nsw i64 %indvars.iv266337, -4 ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.next267.3
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !97
  %i.ie = add nsw i32 %i.id, %i.hz                ; 2 uses
  %i.if = icmp sgt i32 %i.ie, %.0127
  br i1 %i.if, label %.split.loop.exit, label %bb.ae, !llvm.loop !107

bb.ae:                                            ; preds = %bb.ad, %.preheader172
  %.0125338 = phi i32 [ 0, %.preheader172 ], [ %i.ie, %bb.ad ]
  %indvars.iv266337 = phi i64 [ 8192, %.preheader172 ], [ %indvars.iv.next267.3, %bb.ad ] ; 5 uses
  %indvars.iv.next267 = add nsw i64 %indvars.iv266337, -1 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.next267
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !97
  %i.ii = add nsw i32 %i.ih, %.0125338            ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, %.0127
  br i1 %i.ij, label %.split.loop.exit, label %bb.aa, !llvm.loop !107

.split.loop.exit:                                 ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.ae
  %indvars.iv.next267.lcssa = phi i64 [ %indvars.iv.next267, %bb.ae ], [ %indvars.iv.next267.1, %bb.aa ], [ %indvars.iv.next267.2, %bb.ab ], [ %indvars.iv.next267.3, %bb.ad ]
  %i.ik = trunc nuw nsw i64 %indvars.iv.next267.lcssa to i32
  br label %.split.loop.exit326

.split.loop.exit326:                              ; preds = %bb.ac, %.split.loop.exit
  %.lcssa238 = phi i32 [ %i.ik, %.split.loop.exit ], [ 32, %bb.ac ]
  %spec.select169 = tail call i32 @llvm.smax.i32(i32 %.0123211, i32 %.lcssa238) ; 2 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count
  br i1 %exitcond274.not, label %.loopexit.loopexit, label %.preheader172, !llvm.loop !108

.loopexit.loopexit:                               ; preds = %.split.loop.exit326
  %i.il = shl i32 %spec.select169, 3
  %i.im = sitofp i32 %i.il to float
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader173, %bb.z, %.loopexit176
  %.2 = phi float [ 6.553600e+04, %.loopexit176 ], [ 6.553600e+04, %bb.z ], [ 0.000000e+00, %.preheader173 ], [ %i.im, %.loopexit.loopexit ]
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 5304
  %i.io = load double, ptr %i.in, align 8, !tbaa !109
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 5312
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !109
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 5368
  %i.is = load float, ptr %i.ir, align 8, !tbaa !110
  %i.it = fdiv float %.2, %i.is
  %i.iu = fptosi float %i.it to i32
  tail call void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512) %0, double noundef %i.io, double noundef %i.iq, i32 noundef 2, i32 noundef %i.iu)
  store ptr %i.gw, ptr %i.gv, align 8, !tbaa !103
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.dk)
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !111 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 5552 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !112
  %i.iz = and i32 %i.iy, 8
  %.not161 = icmp eq i32 %i.iz, 0
  br i1 %.not161, label %bb.af, label %.thread

.thread:                                          ; preds = %.loopexit
  store i32 0, ptr %i.iv, align 8, !tbaa !111
  %i.ja = load i16, ptr %i.am, align 4, !tbaa !78 ; 2 uses
  store i16 %i.ja, ptr %i.as, align 4, !tbaa !81
  %i.jb = load i16, ptr %i.ao, align 2, !tbaa !79 ; 2 uses
  store i16 %i.jb, ptr %i.aq, align 2, !tbaa !80
  br label %bb.ah

bb.af:                                            ; preds = %.loopexit
  %i.jc = load i16, ptr %i.am, align 4, !tbaa !78 ; 4 uses
  store i16 %i.jc, ptr %i.as, align 4, !tbaa !81
  %i.jd = load i16, ptr %i.ao, align 2, !tbaa !79 ; 4 uses
  store i16 %i.jd, ptr %i.aq, align 2, !tbaa !80
  %i.je = and i32 %i.iw, 4
  %.not162 = icmp eq i32 %i.je, 0
  br i1 %.not162, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i16 %i.jc, ptr %i.ao, align 2, !tbaa !79
  store i16 %i.jd, ptr %i.am, align 4, !tbaa !78
  br label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag, %bb.af
  %i.jf = phi i16 [ %i.jd, %bb.ag ], [ %i.jc, %bb.af ], [ %i.ja, %.thread ]
  %i.jg = phi i16 [ %i.jc, %bb.ag ], [ %i.jd, %bb.af ], [ %i.jb, %.thread ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 193504 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !113 ; 2 uses
  %.not163 = icmp eq ptr %i.ji, null
  br i1 %.not163, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ji)
  %.pre285 = load i16, ptr %i.ao, align 2, !tbaa !79
end_hunk_0
