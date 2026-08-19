loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6LibRaw18kodak_thumb_loaderEv:bb.a

bb.d:                                             ; preds = %bb.c
  %i.y = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 4, ptr %i.y, align 16, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = load i16, ptr %i.c, align 2, !tbaa !76   ; 6 uses
  %i.aa = zext i16 %i.z to i64
  %i.ab = load i16, ptr %i.d, align 4, !tbaa !77  ; 6 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, %i.aa            ; 3 uses
  %i.ae = icmp samesign ugt i64 %i.ad, 536870912
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 5, ptr %i.af, align 16, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp samesign ult i64 %i.ad, 64
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 5, ptr %i.ah, align 16, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ai = add i16 %i.ab, -8193
  %or.cond = icmp ult i16 %i.ai, -8177
  %i.aj = add i16 %i.z, -8193
  %i.ak = icmp ult i16 %i.aj, -8177
  %or.cond167 = or i1 %i.ak, %or.cond
  br i1 %or.cond167, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 5, ptr %i.al, align 16, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 18 uses
  %i.an = load i16, ptr %i.am, align 4, !tbaa !90 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 18 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !91 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 6 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !92 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.at = load i16, ptr %i.as, align 4, !tbaa !93 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !94 ; 2 uses
  store i32 12, ptr %i.au, align 4, !tbaa !94
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 15 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !95 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !96 ; 2 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !97  ; 2 uses
  store i16 %i.z, ptr %i.am, align 4, !tbaa !90
  store i16 %i.ab, ptr %i.ao, align 2, !tbaa !91
  store i32 0, ptr %i.ay, align 8, !tbaa !96
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 381824 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !98
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = and i16 %i.z, 1
  %i.bf = add nuw nsw i16 %i.be, %i.z             ; 3 uses
  store i16 %i.bf, ptr %i.am, align 4, !tbaa !90
  %i.bg = and i16 %i.ab, 1
  %i.bh = add nuw nsw i16 %i.bg, %i.ab            ; 3 uses
  store i16 %i.bh, ptr %i.ao, align 2, !tbaa !91
  %.pre291 = zext nneg i16 %i.bf to i64
  %.pre292 = zext nneg i16 %i.bh to i64
  %.pre294 = mul nuw nsw i64 %.pre292, %.pre291
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi295 = phi i64 [ %.pre294, %bb.l ], [ %i.ad, %bb.k ]
  %i.bi = phi i16 [ %i.bh, %bb.l ], [ %i.ab, %bb.k ]
  %i.bj = phi i16 [ %i.bf, %bb.l ], [ %i.z, %bb.k ]
  store i16 %i.bj, ptr %i.as, align 4, !tbaa !93
  store i16 %i.bi, ptr %i.aq, align 2, !tbaa !92
  %i.bk = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.pre-phi295, i64 noundef 8)
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !78  ; 2 uses
  %i.bm = load i64, ptr %i.f, align 8, !tbaa !13
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %i.bm, i32 noundef 0), !call_target !99 ; 0 uses
  %i.br = load i32, ptr %i.bb, align 8, !tbaa !98
  switch i32 %i.br, label %.preheader180 [
    i32 2, label %bb.n
    i32 3, label %bb.q
    i32 1, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6LibRaw20kodak_ycbcr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader180 unwind label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.q, %bb.n
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  %i.bu = tail call ptr @__cxa_begin_catch(ptr %i.bt) #13 ; 0 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !97
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bv)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !97
  store i16 0, ptr %i.d, align 4, !tbaa !77
  store i16 %i.ap, ptr %i.ao, align 2, !tbaa !91
  store i16 %i.ar, ptr %i.aq, align 2, !tbaa !92
  store i16 %i.at, ptr %i.as, align 4, !tbaa !93
  store i16 0, ptr %i.c, align 2, !tbaa !76
  store i16 %i.an, ptr %i.am, align 4, !tbaa !90
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 193500
  store i32 0, ptr %i.bw, align 4, !tbaa !103
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !95
  store i32 %i.az, ptr %i.ay, align 8, !tbaa !96
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 193496
  store i32 0, ptr %i.bx, align 8, !tbaa !104
  %i.by = and i32 %i.av, 65535
  store i32 %i.by, ptr %i.au, align 4, !tbaa !94
  tail call void @__cxa_end_catch()
  br label %bb.aq

bb.q:                                             ; preds = %bb.m
  invoke void @_ZN6LibRaw18kodak_rgb_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader180 unwind label %bb.o

bb.r:                                             ; preds = %bb.m
  invoke void @_ZN6LibRaw20kodak_thumb_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader180 unwind label %bb.o

bb.s:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.ar

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.bz

.preheader180:                                    ; preds = %bb.m, %bb.n, %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !105
  %i.cd = uitofp reassoc nsz arcp contract afn i32 %i.cc to double
  %i.ce = load <3 x float>, ptr %i.ca, align 4, !tbaa !106
  %i.cf = shufflevector <3 x float> %i.ce, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.cg = fpext <4 x float> %i.cf to <4 x double> ; 4 uses
  %i.ch = extractelement <4 x double> %i.cg, i64 0 ; 2 uses
  %i.ci = fcmp reassoc nsz arcp contract afn olt double %i.ch, f0x7FEFFFFFFFFFFFFF
  %.1143 = select nsz i1 %i.ci, double %i.ch, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %i.cj = extractelement <4 x double> %i.cg, i64 1 ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ogt double %.1143, %i.cj
  %.1143.1 = select nsz i1 %i.ck, double %i.cj, double %.1143 ; 2 uses
  %i.cl = extractelement <4 x double> %i.cg, i64 2 ; 2 uses
  %i.cm = fcmp reassoc nsz arcp contract afn ogt double %.1143.1, %i.cl
  %.1143.2 = select nsz i1 %i.cm, double %i.cl, double %.1143.1
  %i.cn = fmul reassoc nsz arcp contract afn double %.1143.2, %i.cd
  %i.co = fmul reassoc nsz arcp contract afn <4 x double> %i.cg, splat (double 6.553500e+04)
  %i.cp = insertelement <4 x double> poison, double %i.cn, i64 0
  %i.cq = shufflevector <4 x double> %i.cp, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cr = fdiv reassoc nsz arcp contract afn <4 x double> %i.co, %i.cq
  %i.cs = fptrunc <4 x double> %i.cr to <4 x float>
  store <4 x float> %i.cs, ptr %i.a, align 16, !tbaa !106
  %i.ct = load i16, ptr %i.am, align 4, !tbaa !90
  %i.cu = zext i16 %i.ct to i64
  %i.cv = load i16, ptr %i.ao, align 2, !tbaa !91
  %i.cw = zext i16 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cu, 2
  %i.cy = mul nuw nsw i64 %i.cx, %i.cw            ; 2 uses
  %.not227 = icmp eq i64 %i.cy, 0
  br i1 %.not227, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader180
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !97
  br label %bb.u

._crit_edge:                                      ; preds = %bb.w, %.preheader180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.da = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 32768, i64 noundef 4) ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !107
  %i.dd = icmp eq i32 %i.dc, 8
  br i1 %i.dd, label %bb.x, label %bb.y

bb.u:                                             ; preds = %iter.check, %bb.w
  %indvars.iv.a = phi i64 [ 0, %iter.check ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.a ; 2 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !108 ; 2 uses
  %.not165 = icmp eq i16 %i.df, 0
  br i1 %.not165, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = uitofp i16 %i.df to float
  %1 = and i64 %indvars.iv.a, 3
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %1
  %i.di = load float, ptr %i.dh, align 4, !tbaa !106
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, %i.dg
  %i.dk = fptosi float %i.dj to i32
  %i.dl = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 0)
  %i.dm = tail call i32 @llvm.umin.i32(i32 %i.dl, i32 65535)
  %i.dn = trunc nuw i32 %i.dm to i16
  store i16 %i.dn, ptr %i.de, align 2, !tbaa !108
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add i64 %indvars.iv.a, 1     ; 2 uses
  %2 = and i64 %indvars.iv.next, 4294967295
  %i.do = icmp samesign ugt i64 %i.cy, %2
  br i1 %i.do, label %bb.u, label %._crit_edge, !llvm.loop !109

bb.x:                                             ; preds = %._crit_edge
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.dq = load i16, ptr %i.am, align 4, !tbaa !90 ; 2 uses
  %i.dr = zext i16 %i.dq to i32
  %.not230 = icmp eq i16 %i.dq, 0
  br i1 %.not230, label %.loopexit176, label %.preheader175.lr.ph

.preheader175.lr.ph:                              ; preds = %bb.x
  %i.ds = load i16, ptr %i.ao, align 2, !tbaa !91 ; 3 uses
  %i.dt = zext i16 %i.ds to i32                   ; 3 uses
  %.not231 = icmp eq i16 %i.ds, 0
  br i1 %.not231, label %.loopexit176, label %.preheader175.lr.ph.split

.preheader175.lr.ph.split:                        ; preds = %.preheader175.lr.ph
  %i.du = load i32, ptr %i.aw, align 4, !tbaa !95 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.preheader175.preheader, label %.loopexit176

.preheader175.preheader:                          ; preds = %.preheader175.lr.ph.split
  %i.dw = add nsw i32 %i.dt, -1                   ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 3
  %xtraiter = and i32 %i.dt, 1
  %i.dz = icmp eq i32 %i.dw, 0
  %unroll_iter = and i32 %i.dt, 65534
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod366 = trunc i16 %i.ds to i1
  br label %.preheader175

.preheader175:                                    ; preds = %.preheader175.preheader, %._crit_edge205
  %i.ea = phi i32 [ %i.fv, %._crit_edge205 ], [ %i.du, %.preheader175.preheader ] ; 3 uses
  %i.eb = phi i32 [ %i.fw, %._crit_edge205 ], [ %i.du, %.preheader175.preheader ] ; 2 uses
  %.0134208 = phi i32 [ %i.fx, %._crit_edge205 ], [ 0, %.preheader175.preheader ]
  %.0136207 = phi ptr [ %.us-phi, %._crit_edge205 ], [ %i.dp, %.preheader175.preheader ] ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.preheader174.preheader, label %.preheader174.us.preheader

.preheader174.preheader:                          ; preds = %.preheader175
  br i1 %i.dz, label %.preheader174.epil.preheader, label %.preheader174

.preheader174.us.preheader:                       ; preds = %.preheader175
  %i.ed = getelementptr i8, ptr %.0136207, i64 %i.dy
  %scevgep = getelementptr i8, ptr %i.ed, i64 8
  br label %._crit_edge205

.preheader174:                                    ; preds = %.preheader174.preheader, %._crit_edge202.1
  %i.ee = phi i32 [ %i.eu, %._crit_edge202.1 ], [ %i.ea, %.preheader174.preheader ] ; 2 uses
  %.1137203 = phi ptr [ %i.ev, %._crit_edge202.1 ], [ %.0136207, %.preheader174.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %._crit_edge202.1 ], [ 0, %.preheader174.preheader ]
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph201, label %._crit_edge202

._crit_edge202:                                   ; preds = %.lr.ph201, %.preheader174
  %i.eg = phi i32 [ %i.ee, %.preheader174 ], [ %i.fe, %.lr.ph201 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1137203, i64 8
  %i.ei = icmp sgt i32 %i.eg, 0
  br i1 %i.ei, label %.lr.ph201.1, label %._crit_edge202.1

.lr.ph201.1:                                      ; preds = %._crit_edge202, %.lr.ph201.1
  %indvars.iv261.1 = phi i64 [ %indvars.iv.next262.1, %.lr.ph201.1 ], [ 0, %._crit_edge202 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [32768 x i8], ptr %i.da, i64 %indvars.iv261.1
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %indvars.iv261.1
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !108
  %i.em = lshr i16 %i.el, 3
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !112
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !112
  %indvars.iv.next262.1 = add nuw nsw i64 %indvars.iv261.1, 1 ; 2 uses
  %i.er = load i32, ptr %i.aw, align 4, !tbaa !95 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next262.1, %i.es
  br i1 %i.et, label %.lr.ph201.1, label %._crit_edge202.1, !llvm.loop !113

._crit_edge202.1:                                 ; preds = %.lr.ph201.1, %._crit_edge202
  %i.eu = phi i32 [ %i.eg, %._crit_edge202 ], [ %i.er, %.lr.ph201.1 ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.1137203, i64 16 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge205.loopexit.unr-lcssa, label %.preheader174, !llvm.loop !114

.lr.ph201:                                        ; preds = %.preheader174, %.lr.ph201
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.lr.ph201 ], [ 0, %.preheader174 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [32768 x i8], ptr %i.da, i64 %indvars.iv261
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.1137203, i64 %indvars.iv261
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !108
  %i.ez = lshr i16 %i.ey, 3
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !112
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !112
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %i.fe = load i32, ptr %i.aw, align 4, !tbaa !95 ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next262, %i.ff
  br i1 %i.fg, label %.lr.ph201, label %._crit_edge202, !llvm.loop !113

._crit_edge205.loopexit.unr-lcssa:                ; preds = %._crit_edge202.1
  br i1 %lcmp.mod.not, label %._crit_edge205, label %.preheader174.epil.preheader

.preheader174.epil.preheader:                     ; preds = %._crit_edge205.loopexit.unr-lcssa, %.preheader174.preheader
  %.epil.init = phi i32 [ %i.ea, %.preheader174.preheader ], [ %i.eu, %._crit_edge205.loopexit.unr-lcssa ] ; 2 uses
  %.1137203.epil.init = phi ptr [ %.0136207, %.preheader174.preheader ], [ %i.ev, %._crit_edge205.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod366)
  %i.fh = icmp sgt i32 %.epil.init, 0
  br i1 %i.fh, label %.lr.ph201.epil, label %._crit_edge202.epil

.lr.ph201.epil:                                   ; preds = %.preheader174.epil.preheader, %.lr.ph201.epil
  %indvars.iv261.epil = phi i64 [ %indvars.iv.next262.epil, %.lr.ph201.epil ], [ 0, %.preheader174.epil.preheader ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [32768 x i8], ptr %i.da, i64 %indvars.iv261.epil
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.1137203.epil.init, i64 %indvars.iv261.epil
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !108
  %i.fl = lshr i16 %i.fk, 3
  %i.fm = zext nneg i16 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fm ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !112
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !112
  %indvars.iv.next262.epil = add nuw nsw i64 %indvars.iv261.epil, 1 ; 2 uses
  %i.fq = load i32, ptr %i.aw, align 4, !tbaa !95 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next262.epil, %i.fr
  br i1 %i.fs, label %.lr.ph201.epil, label %._crit_edge202.epil, !llvm.loop !113

._crit_edge202.epil:                              ; preds = %.lr.ph201.epil, %.preheader174.epil.preheader
  %i.ft = phi i32 [ %.epil.init, %.preheader174.epil.preheader ], [ %i.fq, %.lr.ph201.epil ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1137203.epil.init, i64 8
  br label %._crit_edge205

._crit_edge205:                                   ; preds = %._crit_edge202.epil, %._crit_edge205.loopexit.unr-lcssa, %.preheader174.us.preheader
  %i.fv = phi i32 [ %i.ea, %.preheader174.us.preheader ], [ %i.eu, %._crit_edge205.loopexit.unr-lcssa ], [ %i.ft, %._crit_edge202.epil ]
  %i.fw = phi i32 [ %i.eb, %.preheader174.us.preheader ], [ %i.eu, %._crit_edge205.loopexit.unr-lcssa ], [ %i.ft, %._crit_edge202.epil ]
  %.us-phi = phi ptr [ %scevgep, %.preheader174.us.preheader ], [ %i.ev, %._crit_edge205.loopexit.unr-lcssa ], [ %i.fu, %._crit_edge202.epil ]
  %i.fx = add nuw nsw i32 %.0134208, 1            ; 2 uses
  %exitcond265.not = icmp eq i32 %i.fx, %i.dr
  br i1 %exitcond265.not, label %.loopexit176, label %.preheader175, !llvm.loop !116

bb.y:                                             ; preds = %._crit_edge
  %i.fy = load i16, ptr %i.am, align 4, !tbaa !90 ; 2 uses
  %.not228 = icmp eq i16 %i.fy, 0
  br i1 %.not228, label %.loopexit176, label %.preheader179.lr.ph

.preheader179.lr.ph:                              ; preds = %bb.y
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !97
  %.pre = load i16, ptr %i.ao, align 2, !tbaa !91
  br label %.preheader179

.preheader179:                                    ; preds = %.preheader179.lr.ph, %._crit_edge196
  %i.ga = phi i16 [ %i.fy, %.preheader179.lr.ph ], [ %i.hx, %._crit_edge196 ]
  %i.gb = phi i16 [ %.pre, %.preheader179.lr.ph ], [ %i.hy, %._crit_edge196 ]
  %.1135198 = phi i32 [ 0, %.preheader179.lr.ph ], [ %i.hz, %._crit_edge196 ]
  %.2138197 = phi ptr [ %i.fz, %.preheader179.lr.ph ], [ %.3.lcssa, %._crit_edge196 ] ; 2 uses
  %.not229 = icmp eq i16 %i.gb, 0
  br i1 %.not229, label %._crit_edge196, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %.preheader179
  %.pre283 = load i32, ptr %i.aw, align 4, !tbaa !95
  br label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %._crit_edge192
  %i.gc = phi i32 [ %i.hr, %._crit_edge192 ], [ %.pre283, %.lr.ph195.preheader ] ; 2 uses
  %.1133194 = phi i32 [ %i.hs, %._crit_edge192 ], [ 0, %.lr.ph195.preheader ]
  %.3193 = phi ptr [ %i.ht, %._crit_edge192 ], [ %.2138197, %.lr.ph195.preheader ] ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.3193, i64 4 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !108
  %i.gf = uitofp i16 %i.ge to float               ; 2 uses
  %i.gg = fmul reassoc nnan nsz arcp contract afn float %i.gf, f0x3FF6EF66
  %i.gh = load <2 x i16>, ptr %.3193, align 2, !tbaa !108
  %i.gi = uitofp <2 x i16> %i.gh to <2 x float>   ; 4 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 0
  %i.gk = fmul reassoc nnan nsz arcp contract afn float %i.gj, f0xBD1B4998
  %i.gl = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.gi, <float f0xBDE514C0, float f0xBFFDE99D>
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.gi, <float f0x403453C6, float f0x3FDE524A>
  %i.go = fadd reassoc nsz arcp contract afn <2 x float> %i.gn, %i.gm
  %i.gp = extractelement <2 x float> %i.gi, i64 1
  %i.gq = fmul reassoc nnan nsz arcp contract afn float %i.gp, f0xBF642A32
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %i.gk
  %i.gs = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.gt, <float f0x3E2A1084, float f0xBF2001FD>
  %i.gv = fadd reassoc nsz arcp contract afn <2 x float> %i.gu, %i.go
  %i.gw = fadd reassoc nsz arcp contract afn float %i.gg, %i.gr
  %i.gx = fptosi <2 x float> %i.gv to <2 x i32>
  %i.gy = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gx, <2 x i32> zeroinitializer)
  %i.gz = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.gy, <2 x i32> splat (i32 65535))
  %i.ha = trunc nuw <2 x i32> %i.gz to <2 x i16>
  store <2 x i16> %i.ha, ptr %.3193, align 2, !tbaa !108
  %i.hb = fptosi float %i.gw to i32
  %i.hc = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.hd = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 65535)
  %i.he = trunc nuw i32 %i.hd to i16
  store i16 %i.he, ptr %i.gd, align 2, !tbaa !108
  %i.hf = icmp sgt i32 %i.gc, 0
  br i1 %i.hf, label %.lr.ph191, label %._crit_edge192

end_hunk_0
