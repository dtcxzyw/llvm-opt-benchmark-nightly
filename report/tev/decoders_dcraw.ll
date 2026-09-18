Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/decoders_dcraw?download=true
inline.NumInlined: 216
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN6LibRaw14nikon_load_rawEv:bb.a
  %i.gb = or disjoint i32 %i.fz, %i.ga
  store i32 %i.gb, ptr %i.fx, align 8, !tbaa !81
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !80
  %i.ge = add nsw i32 %i.gd, 8                    ; 2 uses
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !80
  %i.gf = icmp slt i32 %i.ge, %i.er
  br i1 %i.gf, label %.lr.ph125, label %.critedge.loopexit.i93, !llvm.loop !0

.critedge.loopexit.i93:                           ; preds = %bb.ac, %.noexc103, %.lr.ph.i92, %..critedge.loopexit_crit_edge.i100
  %.pre.i94 = phi ptr [ %.pre.pre.i101, %..critedge.loopexit_crit_edge.i100 ], [ %i.ex, %.lr.ph.i92 ], [ %i.fx, %bb.ac ], [ %i.ft, %.noexc103 ] ; 2 uses
  %.phi.trans.insert.i95 = getelementptr inbounds nuw i8, ptr %.pre.i94, i64 4
  %.pre29.i96 = load i32, ptr %.phi.trans.insert.i95, align 4, !tbaa !80
  br label %.critedge.i89

.critedge.i89:                                    ; preds = %.critedge.loopexit.i93, %.preheader.i87
  %i.gg = phi i32 [ %.pre29.i96, %.critedge.loopexit.i93 ], [ %i.ez, %.preheader.i87 ] ; 3 uses
  %i.gh = phi ptr [ %.pre.i94, %.critedge.loopexit.i93 ], [ %i.ex, %.preheader.i87 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = icmp eq i32 %i.gg, 0
  br i1 %i.gj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i89
  %i.gk = load i32, ptr %i.gh, align 8, !tbaa !81
  %i.gl = sub nsw i32 32, %i.gg
  %i.gm = shl i32 %i.gk, %i.gl
  %i.gn = sub nuw nsw i32 32, %i.er
  %i.go = lshr i32 %i.gm, %i.gn
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.critedge.i89
  %i.gp = phi i32 [ %i.go, %bb.ad ], [ 0, %.critedge.i89 ] ; 2 uses
  %.sink.i90 = sub nsw i32 %i.gg, %i.er           ; 2 uses
  store i32 %.sink.i90, ptr %i.gi, align 4, !tbaa !80
  %i.gq = icmp slt i32 %.sink.i90, 0
  br i1 %i.gq, label %bb.af, label %_ZN6LibRaw10getbithuffEiPt.exit105

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN6LibRaw10getbithuffEiPt.exit105:               ; preds = %bb.ae, %bb.z, %bb.y, %bb.x, %bb.af
  %.016.i91 = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.gp, %bb.af ], [ 0, %bb.z ], [ %i.gp, %bb.ae ]
  %i.gr = shl nuw nsw i32 %.016.i91, 1
  %i.gs = or disjoint i32 %i.gr, 1
  %i.gt = shl nuw nsw i32 %i.gs, %i.eq
  %i.gu = lshr i32 %i.gt, 1                       ; 4 uses
  %.not77 = icmp eq i32 %i.ep, 0
  br i1 %.not77, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZN6LibRaw10getbithuffEiPt.exit105
  %i.gv = add nsw i32 %i.ep, -1
  %i.gw = shl nuw nsw i32 1, %i.gv
  %i.gx = and i32 %i.gu, %i.gw
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.neg79 = shl nsw i32 -1, %i.ep
  %.not78 = icmp eq i32 %i.eq, 0
  %.neg.neg = zext i1 %.not78 to i32
  %.neg80 = or disjoint i32 %.neg79, %.neg.neg
  %i.gz = add nsw i32 %.neg80, %i.gu
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %_ZN6LibRaw10getbithuffEiPt.exit105
  %.0 = phi i32 [ %i.gz, %bb.ah ], [ %i.gu, %bb.ag ], [ %i.gu, %_ZN6LibRaw10getbithuffEiPt.exit105 ] ; 2 uses
  %i.ha = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.ha, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !87
  %i.hd = trunc i32 %.0 to i16
  %i.he = add i16 %i.hc, %i.hd                    ; 2 uses
  store i16 %i.he, ptr %i.hb, align 2, !tbaa !87
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !87
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.hg = and i64 %indvars.iv, 1                  ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hg ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !87
  %i.hj = trunc i32 %.0 to i16
  %i.hk = add i16 %i.hi, %i.hj
  store i16 %i.hk, ptr %i.hh, align 2, !tbaa !87
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre-phi150 = phi i64 [ %i.hg, %bb.ak ], [ %indvars.iv, %bb.aj ]
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.pre-phi150
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !87 ; 2 uses
  %i.hn = add i16 %i.hm, %.170
  %i.ho = zext i16 %i.hn to i32
  %.not81 = icmp sgt i32 %.4, %i.ho
  br i1 %.not81, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hp = call i16 @llvm.smax.i16(i16 %i.hm, i16 0)
  %i.hq = call i16 @llvm.umin.i16(i16 %i.hp, i16 16383)
  %i.hr = zext nneg i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !87
  %i.hu = load ptr, ptr %i.cb, align 8, !tbaa !94
  %i.hv = load i16, ptr %i.bz, align 2, !tbaa !93
  %i.hw = zext i16 %i.hv to i32
  %i.hx = mul nuw nsw i32 %.064133, %i.hw
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %indvars.iv
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.hy
  store i16 %i.ht, ptr %i.ia, align 2, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ib = load i16, ptr %i.bz, align 2, !tbaa !93
  %i.ic = zext i16 %i.ib to i64
  %i.id = icmp samesign ult i64 %indvars.iv.next, %i.ic
  br i1 %i.id, label %bb.p, label %._crit_edge, !llvm.loop !183

._crit_edge:                                      ; preds = %bb.an, %bb.o
  %i.ie = add nuw nsw i32 %.064133, 1             ; 2 uses
  %i.if = load i16, ptr %i.bw, align 4, !tbaa !113
  %i.ig = zext i16 %i.if to i32
  %i.ih = icmp samesign ult i32 %i.ie, %i.ig
  br i1 %i.ih, label %bb.i, label %._crit_edge135, !llvm.loop !184

bb.ao:                                            ; preds = %bb.n, %.loopexit.split-lp
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  resume { ptr, i32 } %i.ii

._crit_edge135:                                   ; preds = %._crit_edge, %.critedge
  %.071.lcssa = phi ptr [ %i.bk, %.critedge ], [ %.273, %._crit_edge ]
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.071.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret void

bb.aq:                                            ; preds = %bb.ao
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #17
  unreachable

bb.ar:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw18nikon_yuv_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader43

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.d, align 16, !tbaa !110
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

.preheader43:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.f = load float, ptr %i.e, align 4, !tbaa !117 ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.000000e-03
  %i.h = select i1 %i.g, float %i.f, float 1.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.j = load <2 x float>, ptr %i.i, align 8, !tbaa !117 ; 2 uses
  %i.k = fcmp ogt <2 x float> %i.j, splat (float 1.000000e-03)
  %i.l = select <2 x i1> %i.k, <2 x float> %i.j, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !92
  %.not53 = icmp eq i16 %i.n, 0
  br i1 %.not53, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = extractelement <2 x float> %i.l, i64 0
  %i.u = extractelement <2 x float> %i.l, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph51, %._crit_edge
  %i.v = phi i32 [ 0, %.lr.ph51 ], [ %i.ef, %._crit_edge ] ; 4 uses
  %1 = phi <2 x i32> [ zeroinitializer, %.lr.ph51 ], [ %19, %._crit_edge ] ; 2 uses
  tail call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.w = load i16, ptr %i.o, align 2, !tbaa !93
  %.not54 = icmp eq i16 %i.w, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.loopexit
  %i.x = phi i32 [ %i.eb, %.loopexit ], [ 0, %bb.c ] ; 5 uses
  %2 = phi <2 x i32> [ %10, %.loopexit ], [ %1, %bb.c ]
  %i.y = and i32 %i.x, 1                          ; 2 uses
  %.not39 = icmp eq i32 %i.y, 0
  br i1 %.not39, label %.preheader42.preheader, label %.loopexit

.preheader42.preheader:                           ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !82   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ae = sext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !82  ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 8
  %i.am = or i64 %i.al, %i.ae                     ; 2 uses
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !82  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !84
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 16
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !82  ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !84
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 24
  %i.bb = or i64 %i.at, %i.ba
  %i.bc = or i64 %i.bb, %i.am                     ; 2 uses
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !82  ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 32
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !82  ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !84
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl i64 %i.bp, 40
  %i.br = or i64 %i.bj, %i.bq
  %i.bs = or i64 %i.br, %i.bc                     ; 2 uses
  %i.bt = trunc i64 %i.am to i32
  %i.bu = and i32 %i.bt, 4095
  store i32 %i.bu, ptr %i.a, align 16, !tbaa !96
  %i.bv = trunc i64 %i.bc to i32
  %i.bw = lshr i32 %i.bv, 12
  %i.bx = and i32 %i.bw, 4095
  store i32 %i.bx, ptr %i.s, align 4, !tbaa !96
  %i.by = lshr i64 %i.bs, 24
  %3 = lshr i64 %i.bs, 36
  %4 = trunc i64 %i.by to i32
  %5 = trunc nuw nsw i64 %3 to i32
  %6 = insertelement <2 x i32> poison, i32 %5, i64 0
  %7 = insertelement <2 x i32> %6, i32 %4, i64 1
  %8 = and <2 x i32> %7, splat (i32 4095)
  %9 = add nsw <2 x i32> %8, splat (i32 -2048)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader42.preheader, %.lr.ph
  %10 = phi <2 x i32> [ %9, %.preheader42.preheader ], [ %2, %.lr.ph ] ; 3 uses
  %i.bz = zext nneg i32 %i.y to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !96
  %11 = sitofp <2 x i32> %10 to <2 x float>       ; 3 uses
  %i.cc = sitofp i32 %i.cb to float               ; 3 uses
  %12 = extractelement <2 x float> %11, i64 0
  %i.cd = tail call float @llvm.fmuladd.f32(float %12, float f0x3FAF7343, float %i.cc)
  %i.ce = fptosi float %i.cd to i32
  %13 = extractelement <2 x float> %11, i64 1
  %i.cf = tail call float @llvm.fmuladd.f32(float %13, float -3.376330e-01, float %i.cc)
  %14 = insertelement <2 x float> poison, float %i.cf, i64 0
  %15 = insertelement <2 x float> %14, float %i.cc, i64 1
  %16 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> <float -6.980010e-01, float f0x3FDDC0CA>, <2 x float> %15) ; 2 uses
  %17 = extractelement <2 x float> %16, i64 0
  %i.cg = fptosi float %17 to i32
  %18 = extractelement <2 x float> %16, i64 1
  %i.ch = fptosi float %18 to i32
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !115 ; 3 uses
  %i.cj = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 4095)
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !87
  %i.co = uitofp i16 %i.cn to float
  %i.cp = fdiv float %i.co, %i.h
  %i.cq = fptoui float %i.cp to i16
  %i.cr = load i16, ptr %i.r, align 2, !tbaa !114
  %i.cs = zext i16 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.v, %i.cs
  %i.cu = add nuw nsw i32 %i.ct, %i.x
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cv
  store i16 %i.cq, ptr %i.cw, align 2, !tbaa !87
  %i.cx = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.cx, i32 4095)
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !87
  %i.dc = uitofp i16 %i.db to float
  %i.dd = fdiv float %i.dc, %i.t
  %i.de = fptoui float %i.dd to i16
  %i.df = load i16, ptr %i.r, align 2, !tbaa !114
  %i.dg = zext i16 %i.df to i32
  %i.dh = mul nuw nsw i32 %i.v, %i.dg
  %i.di = add nuw nsw i32 %i.dh, %i.x
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  store i16 %i.de, ptr %i.dl, align 2, !tbaa !87
  %i.dm = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 0)
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 4095)
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !87
  %i.dr = uitofp i16 %i.dq to float
  %i.ds = fdiv float %i.dr, %i.u
  %i.dt = fptoui float %i.ds to i16
  %i.du = load i16, ptr %i.r, align 2, !tbaa !114
  %i.dv = zext i16 %i.du to i32
  %i.dw = mul nuw nsw i32 %i.v, %i.dv
  %i.dx = add nuw nsw i32 %i.dw, %i.x
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i16 %i.dt, ptr %i.ea, align 2, !tbaa !87
  %i.eb = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.ec = load i16, ptr %i.o, align 2, !tbaa !93
  %i.ed = zext i16 %i.ec to i32
  %i.ee = icmp samesign ult i32 %i.eb, %i.ed
  br i1 %i.ee, label %.lr.ph, label %._crit_edge, !llvm.loop !185

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %19 = phi <2 x i32> [ %1, %bb.c ], [ %10, %.loopexit ]
  %i.ef = add nuw nsw i32 %i.v, 1                 ; 2 uses
  %i.eg = load i16, ptr %i.m, align 8, !tbaa !92
  %i.eh = zext i16 %i.eg to i32
  %i.ei = icmp samesign ult i32 %i.ef, %i.eh
  br i1 %i.ei, label %bb.c, label %._crit_edge52, !llvm.loop !186

._crit_edge52:                                    ; preds = %._crit_edge, %.preheader43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15rollei_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.c = load i16, ptr %i.b, align 2, !tbaa !93   ; 2 uses
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %i.e = icmp ugt i16 %i.c, 16383
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i16, ptr %i.f, align 8, !tbaa !92   ; 2 uses
  %i.h = icmp ugt i16 %i.g, 16383
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 8, ptr %i.i, align 16, !tbaa !110
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = zext nneg i16 %i.g to i32                ; 2 uses
  %i.k = add nuw nsw i32 %i.j, 7
  %i.l = mul nuw nsw i32 %i.k, %i.d               ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 10)
  %i.s = icmp eq i32 %i.r, 10
  br i1 %i.s, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %bb.d
  %i.t = mul nuw nsw i32 %i.d, 5
  %i.u = mul nuw nsw i32 %i.t, %i.j
  %i.v = lshr i32 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph41, %.loopexit
  %.02439 = phi i32 [ %i.v, %.lr.ph41 ], [ %i.cc, %.loopexit ] ; 5 uses
  %.02638 = phi i32 [ 0, %.lr.ph41 ], [ %i.bc, %.loopexit ] ; 7 uses
  call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ag = add i32 %.02638, 1                      ; 2 uses
  %i.ah = load i8, ptr %i.a, align 1, !tbaa !89   ; 2 uses
  %i.ai = add i32 %.02638, 2                      ; 2 uses
  %i.aj = load i8, ptr %i.y, align 1, !tbaa !89   ; 2 uses
  %i.ak = zext i8 %i.aj to i16
  %i.al = shl nuw i16 %i.ak, 8
  %i.am = load i8, ptr %i.z, align 1, !tbaa !89
  %i.an = zext i8 %i.am to i16
  %i.ao = add i32 %.02638, 3                      ; 2 uses
  %i.ap = load i8, ptr %i.aa, align 1, !tbaa !89  ; 2 uses
  %i.aq = zext i8 %i.ap to i16
  %i.ar = shl nuw i16 %i.aq, 8
  %i.as = load i8, ptr %i.ab, align 1, !tbaa !89
  %i.at = zext i8 %i.as to i16
  %i.au = add i32 %.02638, 4                      ; 2 uses
  %i.av = load i8, ptr %i.ac, align 1, !tbaa !89  ; 2 uses
  %i.aw = zext i8 %i.av to i16
  %i.ax = shl nuw i16 %i.aw, 8
  %i.ay = load i8, ptr %i.ad, align 1, !tbaa !89
  %i.az = zext i8 %i.ay to i16
  %i.ba = lshr i8 %i.av, 2
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = add i32 %.02638, 5
  %i.bd = load i8, ptr %i.ae, align 1, !tbaa !89  ; 2 uses
  %i.be = zext i8 %i.bd to i16
  %i.bf = shl nuw i16 %i.be, 8
  %i.bg = load i8, ptr %i.af, align 1, !tbaa !89
  %i.bh = zext i8 %i.bg to i16
  %i.bi = lshr i8 %i.bd, 2
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bb, 6                ; 2 uses
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %i.bm = lshr i8 %i.ah, 2
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 12
  %i.bp = lshr i8 %i.aj, 2
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 6
  %i.bs = or disjoint i32 %i.bo, %i.br            ; 2 uses
  %i.bt = lshr i8 %i.ap, 2
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = shl nuw nsw i32 %i.bv, 12
  %i.bx = or disjoint i32 %i.bk, %i.bw
  %i.by = add i32 %.02439, 1                      ; 2 uses
  %i.bz = lshr i32 %i.bs, 8
  %i.ca = add i32 %.02439, 2                      ; 2 uses
  %i.cb = lshr i32 %i.bx, 10
  %i.cc = add i32 %.02439, 3
  %i.cd = icmp ult i32 %.02638, %i.l
  br i1 %i.cd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ce = load i8, ptr %i.x, align 1, !tbaa !89
  %i.cf = zext i8 %i.ce to i16
  %i.cg = zext i8 %i.ah to i16
  %i.ch = shl nuw i16 %i.cg, 8
  %.masked = and i16 %i.ch, 768
  %i.ci = or disjoint i16 %.masked, %i.cf
  %i.cj = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.ck = zext nneg i32 %.02638 to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.ck
  store i16 %i.ci, ptr %i.cl, align 2, !tbaa !87
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cm = icmp ult i32 %i.ag, %i.l
  br i1 %i.cm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.masked52 = and i16 %i.al, 768
  %i.cn = or disjoint i16 %.masked52, %i.an
  %i.co = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.cp = zext nneg i32 %i.ag to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cp
  store i16 %i.cn, ptr %i.cq, align 2, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cr = icmp ult i32 %i.ai, %i.l
  br i1 %i.cr, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.masked53 = and i16 %i.ar, 768
  %i.cs = or disjoint i16 %.masked53, %i.at
  %i.ct = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.cu = zext nneg i32 %i.ai to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cu
  store i16 %i.cs, ptr %i.cv, align 2, !tbaa !87
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cw = icmp ult i32 %i.ao, %i.l
  br i1 %i.cw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.masked54 = and i16 %i.ax, 768
  %i.cx = or disjoint i16 %.masked54, %i.az
  %i.cy = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.cz = zext nneg i32 %i.ao to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.cz
  store i16 %i.cx, ptr %i.da, align 2, !tbaa !87
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.db = icmp ult i32 %i.au, %i.l
  br i1 %i.db, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %.masked55 = and i16 %i.bf, 768
  %i.dc = or disjoint i16 %.masked55, %i.bh
  %i.dd = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.de = zext nneg i32 %i.au to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.de
end_hunk_0
begin_hunk_1_@_ZN6LibRaw17samsung2_load_rawEv:.lr.ph.preheader
..critedge.loopexit_crit_edge.i:                  ; preds = %.lr.ph69
  %.pre.pre.i = load ptr, ptr %i.eb, align 8, !tbaa !72
  br label %.critedge.loopexit.i

bb.i:                                             ; preds = %.lr.ph69
  %i.hi = load i32, ptr %i.ek, align 8, !tbaa !85
  %i.hj = icmp ne i32 %i.hi, 0
  %i.hk = icmp eq i32 %i.hh, 255
  %or.cond.i28 = and i1 %i.hk, %i.hj
  br i1 %or.cond.i28, label %bb.j, label %.critedge24.i

bb.j:                                             ; preds = %bb.i
  %i.hl = load ptr, ptr %i.ej, align 8, !tbaa !82 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !84
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = tail call noundef i32 %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hl), !inline_history !95
  %i.hq = icmp ne i32 %i.hp, 0                    ; 2 uses
  %i.hr = zext i1 %i.hq to i32
  %i.hs = load ptr, ptr %i.eb, align 8, !tbaa !72 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i32 %i.hr, ptr %i.ht, align 8, !tbaa !79
  br i1 %i.hq, label %.critedge.loopexit.i, label %bb.k

.critedge24.i:                                    ; preds = %bb.i
  %i.hu = load ptr, ptr %i.eb, align 8, !tbaa !72 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i32 0, ptr %i.hv, align 8, !tbaa !79
  br label %bb.k

bb.k:                                             ; preds = %.critedge24.i, %bb.j
  %i.hw = phi ptr [ %i.hu, %.critedge24.i ], [ %i.hs, %bb.j ] ; 4 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !81
  %i.hy = shl i32 %i.hx, 8
  %i.hz = and i32 %i.hh, 255
  %i.ia = or disjoint i32 %i.hy, %i.hz
  store i32 %i.ia, ptr %i.hw, align 8, !tbaa !81
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 4 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !80
  %i.id = add nsw i32 %i.ic, 8                    ; 2 uses
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !80
  %i.ie = icmp slt i32 %i.id, %.016.i34475059
  br i1 %i.ie, label %.lr.ph69, label %.critedge.loopexit.i, !llvm.loop !0

.critedge.loopexit.i:                             ; preds = %bb.k, %bb.j, %.lr.ph.i, %..critedge.loopexit_crit_edge.i
  %.pre.i = phi ptr [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ], [ %i.gw, %.lr.ph.i ], [ %i.hw, %bb.k ], [ %i.hs, %bb.j ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre29.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !80
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.if = phi i32 [ %.pre29.i, %.critedge.loopexit.i ], [ %i.gy, %.preheader.i ] ; 3 uses
  %i.ig = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.gw, %.preheader.i ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ii = icmp eq i32 %i.if, 0
  br i1 %i.ii, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge.i
  %i.ij = load i32, ptr %i.ig, align 8, !tbaa !81
  %i.ik = sub nsw i32 32, %i.if
  %i.il = shl i32 %i.ij, %i.ik
  %i.im = sub nuw nsw i32 32, %.016.i34475059
  %i.in = lshr i32 %i.il, %i.im
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge.i
  %i.io = phi i32 [ %i.in, %bb.l ], [ 0, %.critedge.i ] ; 2 uses
  %.sink.i27 = sub nsw i32 %i.if, %.016.i34475059 ; 2 uses
  store i32 %.sink.i27, ptr %i.ih, align 4, !tbaa !80
  %i.ip = icmp slt i32 %.sink.i27, 0
  br i1 %i.ip, label %bb.n, label %_ZN6LibRaw10getbithuffEiPt.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %_ZN6LibRaw10getbithuffEiPt.exit

_ZN6LibRaw10getbithuffEiPt.exit:                  ; preds = %bb.a, %.split.i, %.split.i.thread.thread55, %bb.m, %bb.n
  %.016.i344751 = phi i32 [ 0, %bb.a ], [ %.016.i34475059, %bb.m ], [ %i.gq, %.split.i ], [ %.016.i34475059, %.split.i.thread.thread55 ], [ %.016.i34475059, %bb.n ] ; 2 uses
  %.016.i = phi i32 [ 0, %bb.a ], [ %i.io, %bb.m ], [ 0, %.split.i ], [ 0, %.split.i.thread.thread55 ], [ %i.io, %bb.n ] ; 2 uses
  %i.iq = add nsw i32 %.016.i344751, -1
  %i.ir = shl nuw i32 1, %i.iq
  %i.is = and i32 %i.ir, %.016.i
  %i.it = icmp eq i32 %i.is, 0
  %notmask.i = shl nsw i32 -1, %.016.i344751
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.iu = select i1 %i.it, i32 %.neg.i, i32 0
  %.0.i = add nsw i32 %i.iu, %.016.i
  %i.iv = trunc i32 %.0.i to i16
  br label %_ZN6LibRaw10ljpeg_diffEPt.exit

_ZN6LibRaw10ljpeg_diffEPt.exit:                   ; preds = %bb.h, %_ZN6LibRaw10getbithuffEiPt.exit
  %.011.i = phi i16 [ %i.iv, %_ZN6LibRaw10getbithuffEiPt.exit ], [ -32768, %bb.h ] ; 2 uses
  %i.iw = icmp samesign ult i64 %indvars.iv95, 2
  br i1 %i.iw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %indvars.iv95 ; 2 uses
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !87
  %i.iz = add i16 %i.iy, %.011.i                  ; 2 uses
  store i16 %i.iz, ptr %i.ix, align 2, !tbaa !87
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv95
  store i16 %i.iz, ptr %i.ja, align 2, !tbaa !87
  br label %bb.q

bb.p:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit
  %i.jb = and i64 %indvars.iv95, 1                ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.jb ; 2 uses
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !87
  %i.je = add i16 %i.jd, %.011.i
  store i16 %i.je, ptr %i.jc, align 2, !tbaa !87
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi105 = phi i64 [ %i.jb, %bb.p ], [ %indvars.iv95, %bb.o ]
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.pre-phi105
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !87 ; 2 uses
  %i.jh = load ptr, ptr %i.em, align 8, !tbaa !94
  %i.ji = load i16, ptr %i.eh, align 2, !tbaa !93
  %i.jj = zext i16 %i.ji to i32
  %i.jk = mul nuw nsw i32 %.02277, %i.jj
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.jh, i64 %indvars.iv95
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %i.jl
  store i16 %i.jg, ptr %i.jn, align 2, !tbaa !87
  %i.jo = zext i16 %i.jg to i32
  %i.jp = load i32, ptr %i.en, align 4, !tbaa !121
  %i.jq = lshr i32 %i.jo, %i.jp
  %.not = icmp eq i32 %i.jq, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.jr = load i16, ptr %i.eh, align 2, !tbaa !93
  %i.js = zext i16 %i.jr to i64
  %i.jt = icmp samesign ult i64 %indvars.iv.next96, %i.js
  br i1 %i.jt, label %bb.a, label %._crit_edge76.split, !llvm.loop !234

._crit_edge76.split:                              ; preds = %bb.s, %.lr.ph80.split
  %i.ju = add nuw nsw i32 %.02277, 1              ; 2 uses
  %i.jv = load i16, ptr %i.ef, align 8, !tbaa !92
  %i.jw = zext i16 %i.jv to i32
  %i.jx = icmp samesign ult i32 %i.ju, %i.jw
  br i1 %i.jx, label %.lr.ph80.split, label %._crit_edge81, !llvm.loop !235

._crit_edge81:                                    ; preds = %._crit_edge76.split, %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { cold noreturn }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !86}
!1 = distinct !{!1, !86}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 short", !10, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = !{!"_ZTS20libraw_image_sizes_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !7, i64 16, !13, i64 24, !7, i64 32, !6, i64 36, !12, i64 164, !6, i64 166}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"_ZTS16libraw_iparams_t", !6, i64 0, !6, i64 4, !6, i64 68, !6, i64 132, !6, i64 196, !6, i64 260, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !6, i64 348, !6, i64 384, !6, i64 420, !7, i64 428, !15, i64 432}
!17 = !{!"float", !6, i64 0}
!18 = !{!"_ZTS18libraw_nikonlens_t", !17, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7}
!19 = !{!"_ZTS16libraw_dnglens_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!20 = !{!"long long", !6, i64 0}
!21 = !{!"_ZTS24libraw_makernotes_lens_t", !20, i64 0, !6, i64 8, !12, i64 136, !12, i64 138, !20, i64 144, !12, i64 152, !12, i64 154, !6, i64 156, !12, i64 220, !6, i64 222, !6, i64 238, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !17, i64 272, !17, i64 276, !17, i64 280, !17, i64 284, !17, i64 288, !17, i64 292, !17, i64 296, !17, i64 300, !17, i64 304, !17, i64 308, !17, i64 312, !20, i64 320, !6, i64 328, !20, i64 456, !6, i64 464, !20, i64 592, !6, i64 600, !12, i64 728, !17, i64 732}
!22 = !{!"_ZTS17libraw_lensinfo_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !6, i64 20, !6, i64 148, !6, i64 276, !6, i64 404, !12, i64 532, !18, i64 536, !19, i64 544, !21, i64 560}
!23 = !{!"_ZTS13libraw_area_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6}
!24 = !{!"_ZTS25libraw_canon_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !6, i64 16, !7, i64 32, !6, i64 36, !12, i64 52, !12, i64 54, !6, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !12, i64 68, !12, i64 70, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 84, !17, i64 88, !12, i64 92, !12, i64 94, !12, i64 96, !12, i64 98, !7, i64 100, !12, i64 104, !7, i64 108, !7, i64 112, !12, i64 116, !7, i64 120, !23, i64 124, !23, i64 132, !23, i64 140, !23, i64 148, !23, i64 156, !6, i64 164}
!25 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6}
!26 = !{!"_ZTS25libraw_nikon_makernotes_t", !13, i64 0, !12, i64 8, !12, i64 10, !6, i64 12, !6, i64 19, !6, i64 20, !6, i64 21, !6, i64 34, !6, i64 54, !6, i64 58, !6, i64 62, !6, i64 66, !6, i64 67, !6, i64 68, !6, i64 69, !6, i64 70, !6, i64 71, !6, i64 73, !6, i64 74, !6, i64 75, !6, i64 76, !6, i64 77, !6, i64 78, !6, i64 82, !6, i64 86, !12, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !6, i64 112, !6, i64 144, !6, i64 145, !6, i64 146, !7, i64 148, !7, i64 152, !7, i64 156, !6, i64 160, !6, i64 162, !12, i64 170, !25, i64 172, !12, i64 180, !12, i64 182, !12, i64 184, !7, i64 188, !6, i64 192, !6, i64 212, !7, i64 232, !6, i64 236, !7, i64 248, !15, i64 256, !12, i64 264, !12, i64 266, !6, i64 268, !12, i64 270, !13, i64 272, !13, i64 280, !13, i64 288}
!27 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !7, i64 0, !13, i64 8, !6, i64 16, !6, i64 24, !6, i64 88, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !6, i64 168, !6, i64 200, !7, i64 264, !6, i64 268, !6, i64 276, !6, i64 288}
!28 = !{!"_ZTS18libraw_fuji_info_t", !17, i64 0, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !6, i64 20, !6, i64 53, !17, i64 88, !12, i64 92, !12, i64 94, !6, i64 96, !12, i64 100, !7, i64 104, !7, i64 108, !12, i64 112, !6, i64 114, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !12, i64 128, !7, i64 132, !12, i64 136, !6, i64 138, !6, i64 151, !6, i64 156, !7, i64 164, !12, i64 168, !7, i64 172, !12, i64 176, !6, i64 178, !6, i64 196, !7, i64 324, !7, i64 328, !7, i64 332, !6, i64 336, !7, i64 344}
!29 = !{!"_ZTS27libraw_olympus_makernotes_t", !6, i64 0, !12, i64 6, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !6, i64 64, !6, i64 72, !12, i64 82, !6, i64 84, !12, i64 88, !12, i64 90, !6, i64 92, !6, i64 352, !12, i64 392, !6, i64 394, !6, i64 396, !6, i64 404, !12, i64 416, !12, i64 418, !12, i64 420, !12, i64 422, !13, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !7, i64 452, !12, i64 456, !12, i64 458}
!30 = !{!"_ZTS18libraw_sony_info_t", !12, i64 0, !6, i64 2, !6, i64 3, !7, i64 4, !6, i64 8, !7, i64 12, !6, i64 16, !6, i64 17, !12, i64 18, !6, i64 20, !6, i64 24, !6, i64 25, !12, i64 26, !6, i64 28, !6, i64 38, !6, i64 39, !6, i64 40, !12, i64 48, !6, i64 50, !6, i64 51, !6, i64 52, !12, i64 54, !7, i64 56, !12, i64 60, !6, i64 62, !12, i64 66, !12, i64 68, !12, i64 70, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !7, i64 80, !17, i64 84, !12, i64 88, !7, i64 92, !7, i64 96, !12, i64 100, !6, i64 102, !7, i64 124, !12, i64 128, !7, i64 132, !6, i64 136, !6, i64 137, !12, i64 138, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !7, i64 156, !12, i64 160, !6, i64 162, !17, i64 180}
!31 = !{!"_ZTS25libraw_kodak_makernotes_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !6, i64 12, !6, i64 48, !6, i64 84, !6, i64 120, !6, i64 156, !6, i64 192, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !17, i64 236, !17, i64 240}
!32 = !{!"_ZTS29libraw_panasonic_makernotes_t", !12, i64 0, !12, i64 2, !6, i64 4, !7, i64 36, !17, i64 40, !6, i64 44, !12, i64 56, !12, i64 58, !7, i64 60, !7, i64 64}
!33 = !{!"_ZTS26libraw_pentax_makernotes_t", !6, i64 0, !6, i64 4, !6, i64 8, !12, i64 12, !7, i64 16, !7, i64 20, !12, i64 24, !6, i64 26, !12, i64 30, !6, i64 32, !6, i64 33, !12, i64 34}
!34 = !{!"_ZTS22libraw_p1_makernotes_t", !6, i64 0, !6, i64 64, !6, i64 128, !6, i64 384}
!35 = !{!"_ZTS25libraw_ricoh_makernotes_t", !12, i64 0, !6, i64 4, !6, i64 12, !12, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !12, i64 48, !12, i64 50, !13, i64 56, !13, i64 64}
!36 = !{!"_ZTS27libraw_samsung_makernotes_t", !6, i64 0, !6, i64 16, !6, i64 32, !6, i64 40, !13, i64 88, !7, i64 96, !6, i64 100}
!37 = !{!"_ZTS24libraw_metadata_common_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !12, i64 64, !6, i64 66, !17, i64 196, !6, i64 200, !7, i64 296}
!38 = !{!"_ZTS19libraw_makernotes_t", !24, i64 0, !26, i64 168, !27, i64 464, !28, i64 848, !29, i64 1200, !30, i64 1664, !31, i64 1848, !32, i64 2092, !33, i64 2160, !34, i64 2196, !35, i64 2648, !36, i64 2720, !37, i64 2856}
!39 = !{!"_ZTS21libraw_shootinginfo_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !12, i64 12, !6, i64 14, !6, i64 78}
!40 = !{!"_ZTS22libraw_output_params_t", !6, i64 0, !6, i64 16, !6, i64 32, !6, i64 64, !6, i64 112, !17, i64 128, !17, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !6, i64 224, !7, i64 240, !7, i64 244, !17, i64 248, !17, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !17, i64 288, !17, i64 292, !7, i64 296, !7, i64 300}
!41 = !{!"any p2 pointer", !10, i64 0}
!42 = !{!"p2 omnipotent char", !41, i64 0}
!43 = !{!"_ZTS26libraw_raw_unpack_params_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !17, i64 28, !6, i64 32, !42, i64 40}
!44 = !{!"_ZTS5ph1_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !17, i64 32}
!45 = !{!"_ZTS19libraw_dng_levels_t", !7, i64 0, !6, i64 4, !7, i64 16420, !6, i64 16424, !17, i64 32840, !6, i64 32844, !6, i64 32860, !6, i64 32868, !7, i64 32884, !6, i64 32888, !6, i64 32904, !17, i64 32920, !17, i64 32924, !6, i64 32928}
!46 = !{!"_ZTS18libraw_colordata_t", !6, i64 0, !6, i64 131072, !7, i64 147488, !7, i64 147492, !7, i64 147496, !6, i64 147500, !17, i64 147516, !17, i64 147520, !6, i64 147524, !6, i64 147652, !6, i64 147668, !6, i64 147684, !6, i64 147732, !6, i64 147780, !6, i64 147828, !44, i64 147876, !17, i64 147912, !17, i64 147916, !6, i64 147920, !6, i64 147984, !6, i64 148048, !6, i64 148112, !6, i64 148176, !6, i64 148193, !10, i64 148264, !7, i64 148272, !6, i64 148276, !6, i64 148308, !45, i64 148648, !6, i64 181624, !6, i64 185720, !7, i64 187000, !6, i64 187004, !7, i64 187076, !7, i64 187080}
!47 = !{!"long", !6, i64 0}
!48 = !{!"_ZTS17libraw_gps_info_t", !6, i64 0, !6, i64 12, !6, i64 24, !17, i64 36, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44}
!49 = !{!"_ZTS17libraw_imgother_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !47, i64 16, !7, i64 24, !6, i64 28, !48, i64 156, !6, i64 204, !6, i64 716, !6, i64 780}
!50 = !{!"_ZTS24LibRaw_thumbnail_formats", !6, i64 0}
!51 = !{!"_ZTS18libraw_thumbnail_t", !50, i64 0, !12, i64 4, !12, i64 6, !7, i64 8, !7, i64 12, !15, i64 16}
!52 = !{!"_ZTS23libraw_thumbnail_list_t", !7, i64 0, !6, i64 8}
!53 = !{!"p1 float", !10, i64 0}
!54 = !{!"_ZTS31libraw_internal_output_params_t", !7, i64 0, !7, i64 4, !7, i64 8, !12, i64 12, !12, i64 14}
!55 = !{!"_ZTS16libraw_rawdata_t", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !11, i64 56, !11, i64 64, !16, i64 72, !14, i64 512, !54, i64 696, !46, i64 712}
!56 = !{!"_ZTS13libraw_data_t", !11, i64 0, !14, i64 8, !16, i64 192, !22, i64 632, !38, i64 1928, !39, i64 5088, !40, i64 5232, !43, i64 5536, !7, i64 5584, !7, i64 5588, !46, i64 5592, !49, i64 192680, !51, i64 193480, !52, i64 193504, !55, i64 193768, !10, i64 381568}
!57 = !{!"p1 _ZTS10LibRaw_TLS", !10, i64 0}
!58 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !10, i64 0}
!59 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!60 = !{!"_ZTS15internal_data_t", !58, i64 0, !59, i64 8, !7, i64 16, !15, i64 24, !20, i64 32, !20, i64 40, !6, i64 48}
!61 = !{!"p1 int", !10, i64 0}
!62 = !{!"_ZTS13output_data_t", !61, i64 0, !61, i64 8}
!63 = !{!"_ZTS15identify_data_t", !7, i64 0, !20, i64 8, !20, i64 16, !7, i64 24, !7, i64 28, !7, i64 32}
!64 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !6, i64 0}
!65 = !{!"_ZTS12pana8_tags_t", !6, i64 0, !6, i64 24, !12, i64 36, !6, i64 38, !6, i64 46, !6, i64 80, !6, i64 114, !12, i64 148, !12, i64 150, !6, i64 152, !6, i64 192, !6, i64 204, !6, i64 224, !6, i64 234}
!66 = !{!"_ZTS15unpacker_data_t", !12, i64 0, !6, i64 2, !6, i64 10, !7, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !64, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !20, i64 144, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !65, i64 192, !6, i64 440, !7, i64 2488, !7, i64 2492, !12, i64 2496, !12, i64 2498, !7, i64 2500, !7, i64 2504, !7, i64 2508, !7, i64 2512, !7, i64 2516, !7, i64 2520, !7, i64 2524, !6, i64 2528, !12, i64 2608}
!67 = !{!"_ZTS22libraw_internal_data_t", !60, i64 0, !54, i64 64, !62, i64 80, !63, i64 96, !66, i64 136}
!68 = !{!"p1 _ZTS6decode", !10, i64 0}
!69 = !{!"_ZTS13libraw_memmgr", !41, i64 0, !7, i64 8}
!70 = !{!"_ZTS18libraw_callbacks_t", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144}
!71 = !{!"_ZTS6LibRaw", !56, i64 8, !57, i64 381584, !67, i64 381592, !6, i64 384344, !68, i64 433496, !68, i64 433504, !6, i64 433512, !69, i64 768232, !70, i64 768248, !6, i64 768400, !6, i64 768416, !6, i64 768432, !10, i64 768448, !10, i64 768456, !10, i64 768464, !47, i64 768472, !10, i64 768480, !10, i64 768488, !10, i64 768496, !10, i64 768504}
!72 = !{!71, !57, i64 381584}
!73 = !{!"_ZTSN10LibRaw_TLSUt_E", !7, i64 0, !7, i64 4, !7, i64 8}
!74 = !{!"_ZTSN10LibRaw_TLSUt0_E", !20, i64 0, !7, i64 8}
!75 = !{!"_ZTSN10LibRaw_TLSUt1_E", !6, i64 0, !7, i64 512}
!76 = !{!"_ZTSN10LibRaw_TLSUt2_E", !6, i64 0, !7, i64 16388, !7, i64 16392}
!77 = !{!"_ZTSN10LibRaw_TLSUt3_E", !6, i64 0, !6, i64 262144}
!78 = !{!"_ZTS10LibRaw_TLS", !73, i64 0, !74, i64 16, !75, i64 32, !76, i64 548, !6, i64 16944, !77, i64 21040}
!79 = !{!78, !7, i64 8}
!80 = !{!78, !7, i64 4}
!81 = !{!78, !7, i64 0}
!82 = !{!71, !58, i64 381592}
!83 = !{!"vtable pointer", !5, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!71, !7, i64 381848}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!12, !12, i64 0}
!88 = !{!15, !15, i64 0}
!89 = !{!6, !6, i64 0}
!90 = !{!11, !11, i64 0}
!91 = !{!71, !7, i64 153096}
!92 = !{!71, !12, i64 16}
!93 = !{!71, !12, i64 18}
!94 = !{!71, !11, i64 193784}
!95 = !{ptr @_ZN6LibRaw10getbithuffEiPt}
!96 = !{!7, !7, i64 0}
!97 = !{!"_ZTS5jhead", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !6, i64 32, !6, i64 56, !6, i64 184, !6, i64 312, !6, i64 472, !11, i64 632}
!98 = !{!97, !7, i64 28}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{!97, !7, i64 20}
!102 = !{!97, !7, i64 4}
!103 = !{!97, !7, i64 8}
!104 = !{!97, !7, i64 12}
!105 = !{!97, !7, i64 16}
!106 = !{!71, !7, i64 532}
!107 = !{!97, !7, i64 24}
!108 = !{!97, !11, i64 632}
!109 = !{!"_ZTS17LibRaw_exceptions", !6, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!71, !7, i64 381860}
!112 = !{!"llvm.loop.unswitch.partial.disable"}
!113 = !{!71, !12, i64 20}
!114 = !{!71, !12, i64 22}
!115 = !{!71, !11, i64 8}
!116 = !{!71, !7, i64 5560}
!117 = !{!17, !17, i64 0}
!118 = !{!71, !20, i64 381768}
!119 = !{!"branch_weights", i32 4, i32 12}
!120 = !{!71, !20, i64 381760}
!121 = !{!71, !7, i64 381836}
!122 = !{!71, !12, i64 381728}
!123 = !{!78, !7, i64 16936}
!124 = !{!71, !7, i64 381908}
!125 = distinct !{!125, !86}
!126 = distinct !{!126, !86}
!127 = distinct !{!127, !86}
!128 = distinct !{!128, !86}
!129 = distinct !{!129, !86}
!130 = distinct !{!130, !86}
!131 = distinct !{!131, !86}
!132 = distinct !{!132, !86}
!133 = !{!71, !7, i64 381840}
!134 = !{ptr @_ZN6LibRaw17canon_has_lowbitsEv}
!135 = distinct !{!135, !86, !99, !100}
!136 = distinct !{!136, !86}
!137 = distinct !{!137, !86}
!138 = distinct !{!138, !86, !99, !100}
!139 = distinct !{!139, !86, !99}
!140 = !{!97, !7, i64 0}
!141 = distinct !{!141, !86}
!142 = distinct !{!142, !86}
!143 = distinct !{!143, !86, !112}
!144 = distinct !{!144, !86}
!145 = distinct !{!145, !86}
!146 = distinct !{!146, !86}
!147 = distinct !{!147, !86, !112}
!148 = distinct !{!148, !86}
!149 = distinct !{!149, !86, !112}
!150 = distinct !{!150, !86}
!151 = distinct !{!151, !86, !112}
!152 = distinct !{!152, !86}
!153 = distinct !{!153, !86}
!154 = distinct !{!154, !86}
!155 = distinct !{!155, !86}
!156 = distinct !{!156, !86}
!157 = distinct !{!157, !86}
!158 = distinct !{!158, !86}
!159 = distinct !{!159, !86}
!160 = distinct !{!160, !86}
!161 = distinct !{!161, !86}
!162 = distinct !{!162, !86}
!163 = distinct !{!163, !86}
!164 = distinct !{!164, !86}
!165 = !{!71, !20, i64 381696}
!166 = distinct !{!166, !86}
!167 = distinct !{!167, !86}
!168 = distinct !{!168, !86, !171}
!169 = distinct !{!169, !86}
!170 = distinct !{!170, !86, !99, !100}
!171 = !{!"llvm.loop.peeled.count", i32 1}
!172 = distinct !{!172, !86}
!173 = distinct !{!173, !86}
end_hunk_1
