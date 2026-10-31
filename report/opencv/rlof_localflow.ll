Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rlof_localflow?download=true
inline.NumInlined: 1717
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK2cv7optflow3plk6radial14TrackerInvokerclERKNS_5RangeE:bb.a
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #22
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit

_ZN2cv10AutoBufferIsLm520EED2Ev.exit:             ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.br

bb.i:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit639

bb.j:                                             ; preds = %_ZN2cv10AutoBufferIsLm520EEC2Em.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.k:                                             ; preds = %bb.e
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.l:                                             ; preds = %.lr.ph961, %.thread
  %indvars.iv1050 = phi i64 [ %i.cc, %.lr.ph961 ], [ %indvars.iv.next1051, %.thread ] ; 17 uses
  %i.cj = load ptr, ptr %i.as, align 8, !tbaa !370
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv1050
  %i.cl = load i32, ptr %i.at, align 8, !tbaa !124 ; 2 uses
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = sitofp i32 %i.cm to double
  %i.co = fdiv double 1.000000e+00, %i.cn
  %i.cp = fptrunc double %i.co to float           ; 2 uses
  %i.cq = load <2 x float>, ptr %i.ck, align 4, !tbaa !48
  %i.cr = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.cq, %i.cs           ; 3 uses
  %i.cu = load i32, ptr %i.au, align 4, !tbaa !125
  %i.cv = icmp eq i32 %i.cl, %i.cu
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = load i8, ptr %i.aw, align 8, !tbaa !128, !range !25, !noundef !26
  %i.cx = trunc nuw i8 %i.cw to i1
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !371 ; 2 uses
  br i1 %i.cx, label %.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cy = load ptr, ptr %i.av, align 8, !tbaa !371
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.pre.sink = phi ptr [ %i.cy, %bb.n ], [ %.pre, %bb.m ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.n ], [ %i.cp, %bb.m ]
  %i.cz = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv1050
  %i.da = load <2 x float>, ptr %i.cz, align 4, !tbaa !48
  %i.db = insertelement <2 x float> poison, float %.sink, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.da, %i.dc
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m
  %i.de = phi ptr [ %.pre, %bb.m ], [ %.pre.sink, %.sink.split ]
  %.sroa.0678.0 = phi <2 x float> [ %i.ct, %bb.m ], [ %i.dd, %.sink.split ] ; 3 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %indvars.iv1050
  store <2 x float> %.sroa.0678.0, ptr %i.df, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.dg = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ct)
  %i.dh = fptosi <2 x float> %i.dg to <2 x i32>
  store <2 x i32> %i.dh, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.di = load i32, ptr %i.m, align 8, !tbaa !121 ; 4 uses
  %i.dj = mul nsw i32 %i.di, %i.di
  store i32 %i.dj, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !76
  store i32 0, ptr %i.ax, align 4, !tbaa !77
  store i32 %i.di, ptr %i.ay, align 4, !tbaa !50
  store i32 %i.di, ptr %i.az, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !90
  store i32 -1056833530, ptr %12, align 8, !tbaa !32
  store ptr %i.c, ptr %i.bb, align 8, !tbaa !33
  store i64 4294967297, ptr %i.ba, align 8, !tbaa !46
  %i.dk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.dl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.dm = load i32, ptr %i.bc, align 8, !tbaa !126
  %i.dn = load i32, ptr %i.bd, align 4, !tbaa !120
  %i.do = load i32, ptr %i.m, align 8, !tbaa !121
  %i.dp = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.l, i32 noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dn, i32 noundef %i.do)
          to label %bb.s unwind label %bb.ak

bb.s:                                             ; preds = %bb.r
  br i1 %i.dp, label %bb.v, label %.thread

bb.t:                                             ; preds = %bb.o
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bn

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.bm

bb.v:                                             ; preds = %bb.s
  %i.ds = load i32, ptr %i.m, align 8, !tbaa !121
  %i.dt = sitofp i32 %i.ds to float
  %i.du = load <2 x float>, ptr %3, align 8, !tbaa !48
  %i.dv = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fsub <2 x float> %i.dw, %i.du           ; 4 uses
  store <2 x float> %i.dx, ptr %3, align 8, !tbaa !48
  %i.dy = fadd <2 x float> %i.ct, %i.dx           ; 3 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 0
  %i.ea = call float @llvm.floor.f32(float %i.dz)
  %i.eb = extractelement <2 x float> %i.dy, i64 1
  %i.ec = call float @llvm.floor.f32(float %i.eb)
  %i.ed = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.ec, i64 1
  %i.ef = fptosi <2 x float> %i.ee to <2 x i32>   ; 4 uses
  %i.eg = extractelement <2 x i32> %i.ef, i64 0   ; 2 uses
  store <2 x i32> %i.ef, ptr %9, align 8, !tbaa !46
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = load i32, ptr %i.be, align 4, !tbaa !43
  %i.ej = load i32, ptr %2, align 8, !tbaa !29
  %i.ek = sub nsw i32 %i.ei, %i.ej
  %i.el = icmp sle i32 %i.ek, %i.eg
  %i.em = extractelement <2 x i32> %i.ef, i64 1   ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  %or.cond = or i1 %i.en, %i.el
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = load i32, ptr %i.bf, align 8, !tbaa !44
  %i.ep = load i32, ptr %i.d, align 4, !tbaa !30  ; 3 uses
  %i.eq = xor i32 %i.ep, -1                       ; 2 uses
  %i.er = add i32 %i.eo, %i.eq
  %.not = icmp sgt i32 %i.er, %i.em
  br i1 %.not, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.es = load i32, ptr %i.at, align 8, !tbaa !124
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.eu = load ptr, ptr %i.bi, align 8, !tbaa !117 ; 2 uses
  %.not583 = icmp eq ptr %i.eu, null
  br i1 %.not583, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %indvars.iv1050
  store i8 3, ptr %i.ev, align 1, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ew = load ptr, ptr %i.ca, align 8, !tbaa !118 ; 2 uses
  %.not584 = icmp eq ptr %i.ew, null
  br i1 %.not584, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %indvars.iv1050
  store float 0.000000e+00, ptr %i.ex, align 4, !tbaa !48
  br label %.thread

bb.ad:                                            ; preds = %bb.x
  %i.ey = uitofp <2 x i32> %i.ef to <2 x float>
  %i.ez = fsub <2 x float> %i.dy, %i.ey           ; 3 uses
  %i.fa = fsub <2 x float> splat (float 1.000000e+00), %i.ez ; 3 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0
  %i.fc = extractelement <2 x float> %i.fa, i64 1 ; 2 uses
  %i.fd = fmul float %i.fb, %i.fc
  %i.fe = fmul float %i.fd, 1.638400e+04
  %i.ff = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fg = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ff) ; 2 uses
  %i.fh = extractelement <2 x float> %i.ez, i64 0
  %i.fi = fmul float %i.fh, %i.fc
  %i.fj = fmul float %i.fi, 1.638400e+04
  %i.fk = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fl = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fk) ; 2 uses
  %shift = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fa, %shift
  %i.fm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fn = fmul float %i.fm, 1.638400e+04
  %i.fo = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fo) ; 2 uses
  %i.fq = add i32 %i.fg, %i.fl
  %i.fr = add i32 %i.fq, %i.fp
  %i.fs = sub i32 16384, %i.fr
  %.sroa.085.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.084.0.copyload = load i64, ptr %9, align 8, !tbaa !46
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_NS_6Point_IiEE(i32 noundef %i.fg, i32 noundef %i.fl, i32 noundef %i.fp, i32 noundef %i.fs, i64 %.sroa.085.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.084.0.copyload)
  %i.ft = load ptr, ptr %i.bg, align 8, !tbaa !119
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %indvars.iv1050
  %i.fv = load <2 x float>, ptr %i.fu, align 4, !tbaa !48 ; 6 uses
  %i.fw = load i32, ptr %i.bh, align 4, !tbaa !122
  %i.fx = icmp sgt i32 %i.fw, 0
  %i.fy = trunc i64 %.sroa.085.0.copyload to i32  ; 2 uses
  br i1 %i.fx, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ad
  %i.fz = fadd <2 x float> %.sroa.0678.0, %i.dx
  %i.ga = icmp sgt i32 %i.ep, 0
  %i.gb = mul i32 %i.x, %i.fy                     ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  %i.gd = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ge = sitofp i32 %i.gd to float
  %i.gf = fmul nnan float %i.ge, f0x37800000
  %i.gg = shl nsw i32 %i.gd, 1
  %i.gh = sitofp i32 %i.gg to float
  %wide.trip.count1048 = zext nneg i32 %i.ep to i64
  %wide.trip.count = zext nneg i32 %i.gb to i64
  %wide.trip.count1043 = zext nneg i32 %i.gb to i64
  %i.gi = extractelement <2 x float> %i.fv, i64 0
  %i.gj = extractelement <2 x float> %i.fv, i64 1
  %i.gk = extractelement <2 x float> %i.fv, i64 0
  %i.gl = extractelement <2 x float> %i.fv, i64 1
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.bl
  %.0455958 = phi i32 [ 0, %.lr.ph ], [ %i.abq, %bb.bl ] ; 3 uses
  %.0473954 = phi float [ 0.000000e+00, %.lr.ph ], [ %.2475, %bb.bl ]
  %.sroa.0664.0947 = phi float [ 1.000000e+00, %.lr.ph ], [ %i.zh, %bb.bl ]
  %.sroa.0666.0946 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ze, %bb.bl ]
  %.sroa.7668.0945 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.zg, %bb.bl ] ; 2 uses
  %.sroa.0678.1944 = phi <2 x float> [ %i.fz, %.lr.ph ], [ %i.zi, %bb.bl ] ; 4 uses
  %i.gm = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.qg, %bb.bl ]
  %i.gn = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.qh, %bb.bl ]
  %i.go = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.qi, %bb.bl ]
  %i.gp = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.qj, %bb.bl ]
  %i.gq = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.qk, %bb.bl ]
  %i.gr = trunc i32 %.0455958 to i8
  %i.gs = load ptr, ptr %i.bi, align 8, !tbaa !117
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %indvars.iv1050
  store i8 %i.gr, ptr %i.gt, align 1, !tbaa !39
  %.sroa.0678.0.vec.extract = extractelement <2 x float> %.sroa.0678.1944, i64 0
  %.sroa.0678.4.vec.extract696 = extractelement <2 x float> %.sroa.0678.1944, i64 1
  %i.gu = call float @llvm.floor.f32(float %.sroa.0678.0.vec.extract)
  %i.gv = call float @llvm.floor.f32(float %.sroa.0678.4.vec.extract696)
  %i.gw = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.gx = insertelement <2 x float> %i.gw, float %i.gv, i64 1
  %i.gy = fptosi <2 x float> %i.gx to <2 x i32>   ; 3 uses
  %i.gz = extractelement <2 x i32> %i.gy, i64 0   ; 3 uses
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hb = load i32, ptr %i.bj, align 4, !tbaa !43
  %i.hc = sub nsw i32 %i.hb, %i.fy
  %i.hd = icmp sle i32 %i.hc, %i.gz
  %i.he = extractelement <2 x i32> %i.gy, i64 1   ; 3 uses
  %i.hf = icmp slt i32 %i.he, 0
  %or.cond5 = or i1 %i.hf, %i.hd
  br i1 %or.cond5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hg = load i32, ptr %i.bk, align 8, !tbaa !44
  %i.hh = add i32 %i.hg, %i.eq
  %.not559 = icmp sgt i32 %i.hh, %i.he
  br i1 %.not559, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.hi = load i32, ptr %i.at, align 8, !tbaa !124
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.hk = load ptr, ptr %i.bi, align 8, !tbaa !117 ; 2 uses
  %.not582 = icmp eq ptr %i.hk, null
  br i1 %.not582, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 %indvars.iv1050
  store i8 3, ptr %i.hl, align 1, !tbaa !39
  br label %.thread

bb.ak:                                            ; preds = %bb.r
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.al:                                            ; preds = %bb.ag
  %i.hn = uitofp <2 x i32> %i.gy to <2 x float>
  %i.ho = fsub <2 x float> %.sroa.0678.1944, %i.hn ; 3 uses
  %i.hp = fsub <2 x float> splat (float 1.000000e+00), %i.ho ; 3 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0
  %i.hr = extractelement <2 x float> %i.hp, i64 1 ; 2 uses
  %i.hs = fmul float %i.hq, %i.hr
  %i.ht = fmul float %i.hs, 1.638400e+04
  %i.hu = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hv = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hu) ; 3 uses
  %i.hw = extractelement <2 x float> %i.ho, i64 0
  %i.hx = fmul float %i.hw, %i.hr
  %i.hy = fmul float %i.hx, 1.638400e+04
  %i.hz = insertelement <4 x float> poison, float %i.hy, i64 0
  %i.ia = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hz) ; 3 uses
  %shift1233 = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1234 = fmul <2 x float> %shift1233, %i.hp
  %i.ib = extractelement <2 x float> %foldExtExtBinop1234, i64 0
  %i.ic = fmul float %i.ib, 1.638400e+04
  %i.id = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.ie = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.id) ; 3 uses
  %i.if = add i32 %i.hv, %i.ia
  %i.ig = add i32 %i.if, %i.ie
  %i.ih = sub i32 16384, %i.ig                    ; 2 uses
  %i.ii = icmp eq i32 %.0455958, 0                ; 5 uses
  br i1 %i.ii, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.1474 = phi float [ 0.000000e+00, %bb.am ], [ %.0473954, %bb.al ]
  %i.ij = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gm, %bb.al ] ; 3 uses
  %i.ik = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gn, %bb.al ] ; 4 uses
  %i.il = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.go, %bb.al ] ; 3 uses
  %i.im = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gp, %bb.al ] ; 3 uses
  %i.in = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gq, %bb.al ] ; 3 uses
  br i1 %i.ga, label %.lr.ph844, label %._crit_edge845

.lr.ph844:                                        ; preds = %bb.an
  %i.io = mul nuw nsw i32 %i.x, %i.gz
  %i.ip = load i32, ptr %i.bl, align 4, !tbaa !72
  %i.iq = icmp slt i32 %i.ip, 2
  %i.ir = load ptr, ptr %i.bm, align 8, !tbaa !79 ; 3 uses
  %i.is = zext nneg i32 %i.io to i64              ; 2 uses
  %i.it = load i32, ptr %i.bp, align 4, !tbaa !72
  %i.iu = icmp slt i32 %i.it, 2
  %i.iv = load ptr, ptr %i.bq, align 8, !tbaa !79
  %i.iw = load i64, ptr %i.br, align 8
  %i.ix = load i32, ptr %i.bs, align 4, !tbaa !72
  %i.iy = icmp slt i32 %i.ix, 2
  %i.iz = load ptr, ptr %i.bt, align 8, !tbaa !79
  %i.ja = load i64, ptr %i.bu, align 8
  %i.jb = load i32, ptr %i.bv, align 4, !tbaa !72
  %i.jc = icmp slt i32 %i.jb, 2
  %i.jd = load ptr, ptr %i.bw, align 8, !tbaa !79
  %i.je = load i64, ptr %i.bx, align 8
  br i1 %i.gc, label %.lr.ph844.split.us.preheader, label %._crit_edge845

.lr.ph844.split.us.preheader:                     ; preds = %.lr.ph844
  %i.jf = zext nneg i32 %i.he to i64
  %i.jg = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2>
  br label %.lr.ph844.split.us

.lr.ph844.split.us:                               ; preds = %.lr.ph844.split.us.preheader, %._crit_edge.us
  %indvars.iv1045 = phi i64 [ 0, %.lr.ph844.split.us.preheader ], [ %indvars.iv.next1046, %._crit_edge.us ] ; 5 uses
  %i.jh = phi <2 x float> [ %i.jg, %.lr.ph844.split.us.preheader ], [ %i.po, %._crit_edge.us ] ; 2 uses
  %i.ji = phi <2 x float> [ %i.ik, %.lr.ph844.split.us.preheader ], [ %i.pp, %._crit_edge.us ] ; 2 uses
  %i.jj = phi <2 x float> [ %i.il, %.lr.ph844.split.us.preheader ], [ %i.pq, %._crit_edge.us ] ; 2 uses
  %i.jk = phi <2 x float> [ %i.im, %.lr.ph844.split.us.preheader ], [ %i.pr, %._crit_edge.us ] ; 2 uses
  %i.jl = phi <4 x float> [ zeroinitializer, %.lr.ph844.split.us.preheader ], [ %i.ps, %._crit_edge.us ] ; 2 uses
  %i.jm = phi <2 x float> [ %i.in, %.lr.ph844.split.us.preheader ], [ %i.pt, %._crit_edge.us ] ; 2 uses
  br i1 %i.iq, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph844.split.us
  %i.jn = add nuw nsw i64 %indvars.iv1045, %i.jf  ; 2 uses
  %i.jo = load i64, ptr %i.bn, align 8, !tbaa !84 ; 2 uses
  %i.jp = mul i64 %i.jo, %i.jn
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jp
  %i.jr = load i64, ptr %i.bo, align 8, !tbaa !84
  %i.js = mul i64 %i.jr, %i.is                    ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.js
  %i.ju = add nuw nsw i64 %i.jn, 1
  %i.jv = mul i64 %i.jo, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.js
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us

bb.ap:                                            ; preds = %.lr.ph844.split.us
  %i.jy = load i64, ptr %i.bn, align 8, !tbaa !84
  %i.jz = mul i64 %i.jy, %i.is
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jz ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us:             ; preds = %bb.ap, %bb.ao
  %.0.i752.us = phi ptr [ %i.ka, %bb.ap ], [ %i.jt, %bb.ao ] ; 4 uses
  %.0.i623.us = phi ptr [ %i.ka, %bb.ap ], [ %i.jx, %bb.ao ] ; 4 uses
  %i.kb = mul i64 %i.iw, %indvars.iv1045
  %.0.i625.us.idx = select i1 %i.iu, i64 0, i64 %i.kb
  %.0.i625.us = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.0.i625.us.idx ; 2 uses
  %i.kc = mul i64 %i.ja, %indvars.iv1045
  %.0.i626.us.idx = select i1 %i.iy, i64 0, i64 %i.kc
  %.0.i626.us = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.0.i626.us.idx ; 2 uses
  %i.kd = mul i64 %i.je, %indvars.iv1045
  %.0.i628.us.idx = select i1 %i.jc, i64 0, i64 %i.kd
  %.0.i628.us = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0.i628.us.idx ; 2 uses
  br i1 %i.ii, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us858

.lr.ph.split.us.us.preheader:                     ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us
  %i.ke = extractelement <2 x float> %i.ji, i64 1
  br label %.lr.ph.split.us.us

.lr.ph.split.us858:                               ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us, %bb.ar
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ar ], [ 0, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 6 uses
  %.0443803.us860 = phi ptr [ %i.mf, %bb.ar ], [ %.0.i626.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 3 uses
  %i.kf = phi <4 x float> [ %i.me, %bb.ar ], [ %i.jl, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i628.us, i64 %indvars.iv
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !39
  %i.ki = icmp eq i8 %i.kh, 0
  br i1 %i.ki, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.us858
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %indvars.iv
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !39
  %i.kl = zext i8 %i.kk to i32
  %i.km = mul nsw i32 %i.hv, %i.kl
  %i.kn = add nuw nsw i64 %indvars.iv, %i.cb      ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !39
  %i.kq = zext i8 %i.kp to i32
  %i.kr = mul nsw i32 %i.ia, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %indvars.iv
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !39
  %i.ku = zext i8 %i.kt to i32
  %i.kv = mul nsw i32 %i.ie, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %i.kn
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !39
  %i.ky = zext i8 %i.kx to i32
  %i.kz = mul nsw i32 %i.ih, %i.ky
  %i.la = add i32 %i.km, 256
  %i.lb = add i32 %i.la, %i.kr
  %i.lc = add i32 %i.lb, %i.kv
  %i.ld = add i32 %i.lc, %i.kz
  %i.le = ashr i32 %i.ld, 9
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.0.i625.us, i64 %indvars.iv
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !86 ; 2 uses
  %i.lh = sext i16 %i.lg to i32
  %i.li = sub nsw i32 %i.le, %i.lh
  %i.lj = sitofp i32 %i.li to float
  %i.lk = sitofp i16 %i.lg to float               ; 2 uses
  %i.ll = call float @llvm.fmuladd.f32(float %i.lk, float %i.gi, float %i.lj)
  %i.lm = fadd float %i.gj, %i.ll
  %i.ln = fptosi float %i.lm to i32               ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.0443803.us860, i64 2
  %i.lp = load i16, ptr %.0443803.us860, align 2, !tbaa !86
  %i.lq = sext i16 %i.lp to i32
  %i.lr = mul nsw i32 %i.ln, %i.lq
  %i.ls = load i16, ptr %i.lo, align 2, !tbaa !86
  %i.lt = sext i16 %i.ls to i32
  %i.lu = mul nsw i32 %i.ln, %i.lt
  %i.lv = insertelement <4 x i32> poison, i32 %i.lr, i64 0
  %i.lw = insertelement <4 x i32> %i.lv, i32 %i.lu, i64 1
  %i.lx = insertelement <4 x i32> poison, i32 %i.ln, i64 0
  %i.ly = shufflevector <4 x i32> %i.lx, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.lz = shufflevector <4 x i32> %i.lw, <4 x i32> %i.ly, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ma = sitofp <4 x i32> %i.lz to <4 x float>
  %i.mb = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.lk, i64 2
  %i.mc = fmul nnan <4 x float> %i.mb, %i.ma
  %i.md = fadd <4 x float> %i.kf, %i.mc
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.split.us858
  %i.me = phi <4 x float> [ %i.kf, %.lr.ph.split.us858 ], [ %i.md, %bb.aq ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0443803.us860, i64 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us858, !llvm.loop !366

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.at
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %bb.at ], [ 0, %.lr.ph.split.us.us.preheader ] ; 6 uses
  %.0443803.us.us = phi ptr [ %i.pl, %bb.at ], [ %.0.i626.us, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %.3486794.us.us = phi float [ %.5488.us.us, %bb.at ], [ %i.ke, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.mg = phi <2 x float> [ %i.pg, %bb.at ], [ %i.jh, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.mh = phi <2 x float> [ %i.ph, %bb.at ], [ %i.jj, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.mi = phi <2 x float> [ %i.pi, %bb.at ], [ %i.jk, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.mj = phi <4 x float> [ %i.pj, %bb.at ], [ %i.jl, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.mk = phi <2 x float> [ %i.pk, %bb.at ], [ %i.jm, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i628.us, i64 %indvars.iv1040
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !39
  %i.mn = icmp eq i8 %i.mm, 0
  br i1 %i.mn, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.split.us.us
  %i.mo = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %indvars.iv1040
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !39
  %i.mq = zext i8 %i.mp to i32
  %i.mr = mul nsw i32 %i.hv, %i.mq
  %i.ms = add nuw nsw i64 %indvars.iv1040, %i.cb  ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !39
  %i.mv = zext i8 %i.mu to i32
  %i.mw = mul nsw i32 %i.ia, %i.mv
end_hunk_0
begin_hunk_1_@_ZNK2cv7optflow5beplk6radial14TrackerInvokerclERKNS_5RangeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.bv

bb.i:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit867

bb.j:                                             ; preds = %_ZN2cv10AutoBufferIsLm520EEC2Em.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.k:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.l:                                             ; preds = %.lr.ph1758, %bb.bp
  %indvars.iv1906 = phi i64 [ %i.ce, %.lr.ph1758 ], [ %indvars.iv.next1907, %bb.bp ] ; 19 uses
  %.sroa.17.01746 = phi float [ 0.000000e+00, %.lr.ph1758 ], [ %.sroa.17.8, %bb.bp ] ; 7 uses
  %.sroa.61101.01742 = phi float [ 0.000000e+00, %.lr.ph1758 ], [ %.sroa.61101.8, %bb.bp ] ; 7 uses
  %i.cl = phi <2 x float> [ zeroinitializer, %.lr.ph1758 ], [ %i.amz, %bb.bp ] ; 6 uses
  %i.cm = phi <2 x float> [ zeroinitializer, %.lr.ph1758 ], [ %i.ana, %bb.bp ] ; 7 uses
  %i.cn = phi <2 x float> [ zeroinitializer, %.lr.ph1758 ], [ %i.anb, %bb.bp ] ; 6 uses
  %i.co = phi <2 x float> [ zeroinitializer, %.lr.ph1758 ], [ %i.anc, %bb.bp ] ; 7 uses
  %i.cp = phi <2 x float> [ zeroinitializer, %.lr.ph1758 ], [ %i.and, %bb.bp ] ; 7 uses
  %i.cq = phi <2 x float> [ zeroinitializer, %.lr.ph1758 ], [ %i.ane, %bb.bp ] ; 6 uses
  %i.cr = phi <2 x float> [ zeroinitializer, %.lr.ph1758 ], [ %i.anf, %bb.bp ] ; 6 uses
  %i.cs = load ptr, ptr %i.as, align 8, !tbaa !381
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %indvars.iv1906
  %i.cu = load i32, ptr %i.at, align 8, !tbaa !140 ; 2 uses
  %i.cv = shl nuw i32 1, %i.cu
  %i.cw = sitofp i32 %i.cv to double
  %i.cx = fdiv double 1.000000e+00, %i.cw
  %i.cy = fptrunc double %i.cx to float           ; 2 uses
  %i.cz = load <2 x float>, ptr %i.ct, align 4, !tbaa !48
  %i.da = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.cz, %i.db           ; 3 uses
  %i.dd = load i32, ptr %i.au, align 4, !tbaa !141
  %i.de = icmp eq i32 %i.cu, %i.dd
  br i1 %i.de, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.df = load i8, ptr %i.aw, align 8, !tbaa !144, !range !25, !noundef !26
  %i.dg = trunc nuw i8 %i.df to i1
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !382 ; 2 uses
  br i1 %i.dg, label %.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dh = load ptr, ptr %i.av, align 8, !tbaa !382
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.pre.sink = phi ptr [ %i.dh, %bb.n ], [ %.pre, %bb.m ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.n ], [ %i.cy, %bb.m ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv1906
  %i.dj = load <2 x float>, ptr %i.di, align 4, !tbaa !48
  %i.dk = insertelement <2 x float> poison, float %.sink, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.dj, %i.dl
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m
  %i.dn = phi ptr [ %.pre, %bb.m ], [ %.pre.sink, %.sink.split ]
  %.sroa.01032.0 = phi <2 x float> [ %i.dc, %bb.m ], [ %i.dm, %.sink.split ] ; 4 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %indvars.iv1906
  store <2 x float> %.sroa.01032.0, ptr %i.do, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.dp = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.dc)
  %i.dq = fptosi <2 x float> %i.dp to <2 x i32>
  store <2 x i32> %i.dq, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.dr = load i32, ptr %i.m, align 8, !tbaa !138 ; 4 uses
  %i.ds = mul nsw i32 %i.dr, %i.dr
  store i32 %i.ds, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !76
  store i32 0, ptr %i.ax, align 4, !tbaa !77
  store i32 %i.dr, ptr %i.ay, align 4, !tbaa !50
  store i32 %i.dr, ptr %i.az, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !90
  store i32 -1056833530, ptr %12, align 8, !tbaa !32
  store ptr %i.c, ptr %i.bb, align 8, !tbaa !33
  store i64 4294967297, ptr %i.ba, align 8, !tbaa !46
  %i.dt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.du = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.dv = load i32, ptr %i.bc, align 8, !tbaa !142
  %i.dw = load i32, ptr %i.bd, align 4, !tbaa !137
  %i.dx = load i32, ptr %i.m, align 8, !tbaa !138
  %i.dy = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.l, i32 noundef %i.dv, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dw, i32 noundef %i.dx)
          to label %bb.s unwind label %bb.an

bb.s:                                             ; preds = %bb.r
  br i1 %i.dy, label %bb.v, label %bb.bp

bb.t:                                             ; preds = %bb.o
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.br

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.bq

bb.v:                                             ; preds = %bb.s
  %i.eb = load i32, ptr %i.m, align 8, !tbaa !138
  %i.ec = sitofp i32 %i.eb to float
  %i.ed = load <2 x float>, ptr %2, align 8, !tbaa !48
  %i.ee = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fsub <2 x float> %i.ef, %i.ed           ; 5 uses
  store <2 x float> %i.eg, ptr %2, align 8, !tbaa !48
  %i.eh = fadd <2 x float> %i.dc, %i.eg           ; 3 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0
  %i.ej = call float @llvm.floor.f32(float %i.ei)
  %i.ek = extractelement <2 x float> %i.eh, i64 1
  %i.el = call float @llvm.floor.f32(float %i.ek)
  %i.em = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.el, i64 1
  %i.eo = fptosi <2 x float> %i.en to <2 x i32>   ; 4 uses
  %i.ep = extractelement <2 x i32> %i.eo, i64 0   ; 2 uses
  store <2 x i32> %i.eo, ptr %9, align 8, !tbaa !46
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = load i32, ptr %i.be, align 4, !tbaa !43
  %i.es = load i32, ptr %3, align 8, !tbaa !29
  %i.et = sub nsw i32 %i.er, %i.es
  %i.eu = icmp sle i32 %i.et, %i.ep
  %i.ev = extractelement <2 x i32> %i.eo, i64 1   ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  %or.cond = or i1 %i.ew, %i.eu
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = load i32, ptr %i.bf, align 8, !tbaa !44
  %i.ey = load i32, ptr %i.d, align 4, !tbaa !30  ; 4 uses
  %i.ez = xor i32 %i.ey, -1                       ; 2 uses
  %i.fa = add i32 %i.ex, %i.ez
  %.not = icmp sgt i32 %i.fa, %i.ev
  br i1 %.not, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.fb = load i32, ptr %i.at, align 8, !tbaa !140
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.z, label %bb.bp

bb.z:                                             ; preds = %bb.y
  %i.fd = load ptr, ptr %i.cb, align 8, !tbaa !134 ; 2 uses
  %.not792 = icmp eq ptr %i.fd, null
  br i1 %.not792, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %indvars.iv1906
  store i8 3, ptr %i.fe, align 1, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ff = load ptr, ptr %i.cc, align 8, !tbaa !135 ; 2 uses
  %.not793 = icmp eq ptr %i.ff, null
  br i1 %.not793, label %bb.bp, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %indvars.iv1906
  store float 0.000000e+00, ptr %i.fg, align 4, !tbaa !48
  br label %bb.bp

bb.ad:                                            ; preds = %bb.x
  %i.fh = uitofp <2 x i32> %i.eo to <2 x float>
  %i.fi = fsub <2 x float> %i.eh, %i.fh           ; 3 uses
  %i.fj = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 3 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 0
  %i.fl = extractelement <2 x float> %i.fj, i64 1 ; 2 uses
  %i.fm = fmul float %i.fk, %i.fl
  %i.fn = fmul float %i.fm, 1.638400e+04
  %i.fo = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fo) ; 2 uses
  %i.fq = extractelement <2 x float> %i.fi, i64 0
  %i.fr = fmul float %i.fq, %i.fl
  %i.fs = fmul float %i.fr, 1.638400e+04
  %i.ft = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fu = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ft) ; 2 uses
  %shift = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fj, %shift
  %i.fv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fw = fmul float %i.fv, 1.638400e+04
  %i.fx = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.fy = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fx) ; 2 uses
  %i.fz = add i32 %i.fp, %i.fu
  %i.ga = add i32 %i.fz, %i.fy
  %i.gb = sub i32 16384, %i.ga
  %.sroa.0220.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.0219.0.copyload = load i64, ptr %9, align 8, !tbaa !46
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_NS_6Point_IiEE(i32 noundef %i.fp, i32 noundef %i.fu, i32 noundef %i.fy, i32 noundef %i.gb, i64 %.sroa.0220.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.0219.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.gc = trunc i64 %.sroa.0220.0.copyload to i32 ; 3 uses
  %i.gd = add nsw i32 %i.gc, 8
  %i.ge = mul i32 %i.ey, %i.x
  %i.gf = mul i32 %i.ge, %i.gd
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i32 noundef %i.gf, i32 noundef 1, i32 noundef 3)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #20
  %i.gg = load ptr, ptr %14, align 8, !tbaa !96, !noalias !383 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !98
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef -1)
          to label %bb.af unwind label %.body

.body:                                            ; preds = %bb.ae
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #20
  br label %bb.ap

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bg) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bh) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bi) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.gl = load ptr, ptr %i.bj, align 8, !tbaa !136
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %indvars.iv1906
  %i.gn = load <2 x float>, ptr %i.gm, align 4    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #20
  %i.go = load i32, ptr %i.bk, align 4, !tbaa !139 ; 2 uses
  %i.gp = icmp sgt i32 %i.go, 0
  %i.gq = extractelement <2 x float> %i.cm, i64 0
  %i.gr = extractelement <2 x float> %i.cm, i64 1
  %i.gs = extractelement <2 x float> %i.co, i64 0
  %i.gt = extractelement <2 x float> %i.co, i64 1
  %i.gu = extractelement <2 x float> %i.cp, i64 0
  %i.gv = extractelement <2 x float> %i.cp, i64 1
  br i1 %i.gp, label %.lr.ph, label %.thread1319

.lr.ph:                                           ; preds = %bb.af
  %i.gw = fadd <2 x float> %.sroa.01032.0, %i.eg
  %i.gx = icmp sgt i32 %i.ey, 0
  %i.gy = load i32, ptr %i.br, align 4
  %i.gz = icmp slt i32 %i.gy, 2
  %i.ha = load ptr, ptr %i.bs, align 8
  %i.hb = load i32, ptr %i.bu, align 4
  %i.hc = icmp slt i32 %i.hb, 2
  %i.hd = load ptr, ptr %i.bv, align 8
  %i.he = load i32, ptr %i.bx, align 4
  %i.hf = icmp slt i32 %i.he, 2
  %i.hg = load ptr, ptr %i.by, align 8
  %i.hh = mul i32 %i.x, %i.gc                     ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  %i.hj = load i32, ptr %i.b, align 4             ; 2 uses
  %i.hk = sitofp i32 %i.hj to float
  %i.hl = fmul nnan float %i.hk, f0x37800000      ; 12 uses
  %i.hm = fmul nnan float %i.hl, 2.000000e+00
  %i.hn = shl nsw i32 %i.hj, 1
  %i.ho = sitofp i32 %i.hn to float
  %wide.trip.count1903 = zext nneg i32 %i.ey to i64
  %wide.trip.count = zext nneg i32 %i.hh to i64
  %i.hp = insertelement <2 x float> poison, float %.sroa.61101.01742, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %.sroa.17.01746, i64 1
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.bo
  %.05981725 = phi i32 [ 0, %.lr.ph ], [ %i.aml, %bb.bo ] ; 3 uses
  %.06531718 = phi float [ 0.000000e+00, %.lr.ph ], [ %.86611301, %bb.bo ] ; 2 uses
  %.06631717 = phi float [ 0.000000e+00, %.lr.ph ], [ %.86711300, %bb.bo ] ; 2 uses
  %.06731716 = phi float [ 0.000000e+00, %.lr.ph ], [ %.86811299, %bb.bo ] ; 2 uses
  %.sroa.15971.01715 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.15971.21295, %bb.bo ]
  %.sroa.12969.01714 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.12969.21294, %bb.bo ]
  %.sroa.8.01713 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.8.21293, %bb.bo ]
  %.sroa.0964.01712 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.0964.21292, %bb.bo ]
  %.sroa.8986.01705 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.8986.21285, %bb.bo ]
  %.sroa.0983.01704 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.0983.21284, %bb.bo ]
  %.sroa.01012.01693 = phi float [ 1.000000e+00, %.lr.ph ], [ %i.amo, %bb.bo ]
  %.sroa.01017.01692 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.amm, %bb.bo ]
  %.sroa.61018.01691 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.amn, %bb.bo ]
  %.sroa.01032.11688 = phi <2 x float> [ %i.gw, %.lr.ph ], [ %i.ajd, %bb.bo ] ; 7 uses
  %.sroa.17.11677 = phi float [ %.sroa.17.01746, %.lr.ph ], [ %.sroa.17.51267, %bb.bo ] ; 8 uses
  %.sroa.61101.11673 = phi float [ %.sroa.61101.01742, %.lr.ph ], [ %.sroa.61101.51263, %bb.bo ] ; 7 uses
  %i.hr = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.agt, %bb.bo ] ; 2 uses
  %i.hs = phi <2 x float> [ %i.cl, %.lr.ph ], [ %i.agu, %bb.bo ] ; 8 uses
  %i.ht = phi <2 x float> [ %i.cm, %.lr.ph ], [ %i.agv, %bb.bo ] ; 4 uses
  %i.hu = phi <2 x float> [ %i.cr, %.lr.ph ], [ %i.ahh, %bb.bo ] ; 8 uses
  %i.hv = phi <2 x float> [ %i.hq, %.lr.ph ], [ %i.agw, %bb.bo ] ; 2 uses
  %i.hw = phi <2 x float> [ %i.cn, %.lr.ph ], [ %i.agx, %bb.bo ] ; 8 uses
  %i.hx = phi <2 x float> [ %i.co, %.lr.ph ], [ %i.agy, %bb.bo ] ; 4 uses
  %i.hy = phi <2 x float> [ %i.cp, %.lr.ph ], [ %i.agz, %bb.bo ] ; 4 uses
  %i.hz = phi <2 x float> [ %i.cq, %.lr.ph ], [ %i.aha, %bb.bo ] ; 8 uses
  %i.ia = phi <2 x float> [ %i.gn, %.lr.ph ], [ %i.ajj, %bb.bo ] ; 4 uses
  %i.ib = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.ahb, %bb.bo ]
  %i.ic = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.ahc, %bb.bo ] ; 2 uses
  %i.id = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.ahd, %bb.bo ] ; 4 uses
  %i.ie = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ahe, %bb.bo ]
  %i.if = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ahg, %bb.bo ]
  %i.ig = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ahi, %bb.bo ]
  %i.ih = extractelement <2 x float> %i.hy, i64 1 ; 7 uses
  %i.ii = extractelement <2 x float> %i.hy, i64 0 ; 7 uses
  %i.ij = extractelement <2 x float> %i.hx, i64 1 ; 7 uses
  %i.ik = extractelement <2 x float> %i.hx, i64 0 ; 8 uses
  %i.il = extractelement <2 x float> %i.ht, i64 1 ; 7 uses
  %i.im = extractelement <2 x float> %i.ht, i64 0 ; 7 uses
  %.sroa.01032.0.vec.extract = extractelement <2 x float> %.sroa.01032.11688, i64 0
  %.sroa.01032.4.vec.extract1066 = extractelement <2 x float> %.sroa.01032.11688, i64 1 ; 2 uses
  %i.in = icmp ne i32 %.05981725, 0               ; 5 uses
  %.pre1912 = call float @llvm.floor.f32(float %.sroa.01032.0.vec.extract)
  %.pre1913 = fptosi float %.pre1912 to i32       ; 6 uses
  %i.io = extractelement <2 x i32> %i.id, i64 0
  %.not752 = icmp eq i32 %i.io, %.pre1913
  %or.cond2074 = select i1 %i.in, i1 %.not752, i1 false
  br i1 %or.cond2074, label %bb.ah, label %._crit_edge1911

bb.ah:                                            ; preds = %bb.ag
  %i.ip = uitofp <2 x i32> %i.id to <2 x float>
  %i.iq = fsub <2 x float> %.sroa.01032.11688, %i.ip ; 3 uses
  %i.ir = extractelement <2 x float> %i.iq, i64 1 ; 2 uses
  %i.is = extractelement <2 x float> %i.iq, i64 0 ; 2 uses
  %i.it = fmul float %i.ir, %i.is
  %i.iu = call float @llvm.floor.f32(float %.sroa.01032.4.vec.extract1066)
  %i.iv = fptosi float %i.iu to i32
  %i.iw = extractelement <2 x i32> %i.id, i64 1
  %.not753 = icmp eq i32 %i.iw, %i.iv
  %i.ix = and i32 %.05981725, 1
  %.not754 = icmp eq i32 %i.ix, 0
  %or.cond794 = and i1 %.not753, %.not754
  br i1 %or.cond794, label %.thread1211, label %._crit_edge1911

._crit_edge1911:                                  ; preds = %bb.ag, %bb.ah
  %i.iy = call float @llvm.floor.f32(float %.sroa.01032.4.vec.extract1066)
  %i.iz = fptosi float %i.iy to i32               ; 5 uses
  %i.ja = icmp slt i32 %.pre1913, 0
  br i1 %i.ja, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge1911
  %i.jb = load i32, ptr %i.bl, align 4, !tbaa !43
  %i.jc = sub nsw i32 %i.jb, %i.gc
  %i.jd = icmp sle i32 %i.jc, %.pre1913
  %i.je = icmp slt i32 %i.iz, 0
  %or.cond6 = or i1 %i.je, %i.jd
  br i1 %or.cond6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jf = load i32, ptr %i.bm, align 8, !tbaa !44
  %i.jg = add i32 %i.jf, %i.ez
  %.not755 = icmp sgt i32 %i.jg, %i.iz
  br i1 %.not755, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge1911
  %i.jh = load i32, ptr %i.at, align 8, !tbaa !140 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.al, label %thread-pre-split

bb.al:                                            ; preds = %bb.ak
  %i.jj = load ptr, ptr %i.cb, align 8, !tbaa !134 ; 2 uses
  %.not791 = icmp eq ptr %i.jj, null
  br i1 %.not791, label %.thread1319, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %indvars.iv1906
  store i8 3, ptr %i.jk, align 1, !tbaa !39
  %.pr.pre = load i32, ptr %i.at, align 8, !tbaa !140
  br label %thread-pre-split

bb.an:                                            ; preds = %bb.r
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ao:                                            ; preds = %bb.ad
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %bb.ao
  %.pn750 = phi { ptr, i32 } [ %i.gk, %.body ], [ %i.jm, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bq

thread-pre-split:                                 ; preds = %bb.am, %bb.ak
  %i.jn = phi i32 [ %i.jh, %bb.ak ], [ %.pr.pre, %bb.am ]
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %bb.aq, label %.thread1319

bb.aq:                                            ; preds = %thread-pre-split
  %i.jp = load ptr, ptr %i.av, align 8, !tbaa !382
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %indvars.iv1906
  store <2 x float> %.sroa.01032.0, ptr %i.jq, align 4, !tbaa !48
  %i.jr = load ptr, ptr %i.bj, align 8, !tbaa !136
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %indvars.iv1906
  store <2 x float> %i.gn, ptr %i.js, align 4, !tbaa !48
  br label %.thread1319

bb.ar:                                            ; preds = %bb.aj
  %i.jt = insertelement <2 x i32> poison, i32 %.pre1913, i64 0
  %i.ju = insertelement <2 x i32> %i.jt, i32 %i.iz, i64 1 ; 3 uses
  %i.jv = uitofp <2 x i32> %i.ju to <2 x float>
  %i.jw = fsub <2 x float> %.sroa.01032.11688, %i.jv ; 4 uses
  %i.jx = extractelement <2 x float> %i.jw, i64 1 ; 3 uses
  %i.jy = extractelement <2 x float> %i.jw, i64 0 ; 3 uses
  %i.jz = fmul float %i.jy, %i.jx                 ; 2 uses
  br i1 %i.in, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1674 = phi float [ 0.000000e+00, %bb.as ], [ %.06731716, %bb.ar ] ; 3 uses
  %.1664 = phi float [ 0.000000e+00, %bb.as ], [ %.06631717, %bb.ar ] ; 3 uses
  %.1654 = phi float [ 0.000000e+00, %bb.as ], [ %.06531718, %bb.ar ] ; 3 uses
  %i.ka = phi <2 x float> [ zeroinitializer, %bb.as ], [ %i.hr, %bb.ar ] ; 3 uses
  %i.kb = phi <4 x float> [ zeroinitializer, %bb.as ], [ %i.ic, %bb.ar ] ; 3 uses
  br i1 %i.gx, label %.lr.ph1568, label %._crit_edge1569

.lr.ph1568:                                       ; preds = %bb.at
  %i.kc = mul nuw nsw i32 %i.x, %.pre1913
  %i.kd = load i32, ptr %i.bn, align 4, !tbaa !72
  %i.ke = icmp slt i32 %i.kd, 2
  %i.kf = load ptr, ptr %i.bo, align 8, !tbaa !79 ; 3 uses
  %i.kg = zext nneg i32 %i.kc to i64              ; 2 uses
  %i.kh = load i64, ptr %i.bt, align 8
  %i.ki = load i64, ptr %i.bw, align 8
  %i.kj = load i64, ptr %i.bz, align 8
  br i1 %i.hi, label %.lr.ph1568.split.us.preheader, label %._crit_edge1569

.lr.ph1568.split.us.preheader:                    ; preds = %.lr.ph1568
  %i.kk = zext nneg i32 %i.iz to i64
  %i.kl = extractelement <2 x float> %i.ia, i64 0
  %i.km = extractelement <2 x float> %i.ia, i64 1
  br label %.lr.ph1568.split.us

.lr.ph1568.split.us:                              ; preds = %.lr.ph1568.split.us.preheader, %._crit_edge.us
  %indvars.iv1900 = phi i64 [ 0, %.lr.ph1568.split.us.preheader ], [ %indvars.iv.next1901, %._crit_edge.us ] ; 5 uses
  %.26551543.us = phi float [ %.1654, %.lr.ph1568.split.us.preheader ], [ %.5658.us, %._crit_edge.us ]
  %.26651542.us = phi float [ %.1664, %.lr.ph1568.split.us.preheader ], [ %.5668.us, %._crit_edge.us ]
  %.26751541.us = phi float [ %.1674, %.lr.ph1568.split.us.preheader ], [ %.5678.us, %._crit_edge.us ]
  %i.kn = phi <2 x float> [ %i.ka, %.lr.ph1568.split.us.preheader ], [ %i.oz, %._crit_edge.us ]
  %i.ko = phi <4 x float> [ zeroinitializer, %.lr.ph1568.split.us.preheader ], [ %i.pa, %._crit_edge.us ]
  %i.kp = phi <4 x float> [ %i.kb, %.lr.ph1568.split.us.preheader ], [ %i.pb, %._crit_edge.us ]
  %i.kq = phi <2 x float> [ zeroinitializer, %.lr.ph1568.split.us.preheader ], [ %i.pc, %._crit_edge.us ]
  %i.kr = phi <2 x float> [ zeroinitializer, %.lr.ph1568.split.us.preheader ], [ %i.pd, %._crit_edge.us ]
  %i.ks = phi <2 x float> [ zeroinitializer, %.lr.ph1568.split.us.preheader ], [ %i.pe, %._crit_edge.us ]
  %i.kt = phi <2 x float> [ zeroinitializer, %.lr.ph1568.split.us.preheader ], [ %i.pf, %._crit_edge.us ]
  %i.ku = phi <2 x float> [ zeroinitializer, %.lr.ph1568.split.us.preheader ], [ %i.pg, %._crit_edge.us ]
  %i.kv = phi <2 x float> [ zeroinitializer, %.lr.ph1568.split.us.preheader ], [ %i.ph, %._crit_edge.us ]
  br i1 %i.ke, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph1568.split.us
  %i.kw = add nuw nsw i64 %indvars.iv1900, %i.kk  ; 2 uses
  %i.kx = load i64, ptr %i.bp, align 8, !tbaa !84 ; 2 uses
  %i.ky = mul i64 %i.kx, %i.kw
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ky
  %i.la = load i64, ptr %i.bq, align 8, !tbaa !84
  %i.lb = mul i64 %i.la, %i.kg                    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lb
  %i.ld = add nuw nsw i64 %i.kw, 1
  %i.le = mul i64 %i.kx, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lb
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us

bb.av:                                            ; preds = %.lr.ph1568.split.us
  %i.lh = load i64, ptr %i.bp, align 8, !tbaa !84
  %i.li = mul i64 %i.lh, %i.kg
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.li ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us:             ; preds = %bb.av, %bb.au
  %.0.i1137.us = phi ptr [ %i.lj, %bb.av ], [ %i.lc, %bb.au ] ; 2 uses
  %.0.i841.us = phi ptr [ %i.lj, %bb.av ], [ %i.lg, %bb.au ] ; 2 uses
  %i.lk = mul i64 %i.kh, %indvars.iv1900
  %.0.i843.us.idx = select i1 %i.gz, i64 0, i64 %i.lk
  %.0.i843.us = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.0.i843.us.idx
  %i.ll = mul i64 %i.ki, %indvars.iv1900
  %.0.i844.us.idx = select i1 %i.hc, i64 0, i64 %i.ll
  %.0.i844.us = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.0.i844.us.idx
  %i.lm = mul i64 %i.kj, %indvars.iv1900
  %.0.i846.us.idx = select i1 %i.hf, i64 0, i64 %i.lm
  %.0.i846.us = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.0.i846.us.idx
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us, %bb.az
  %indvars.iv = phi i64 [ 0, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %indvars.iv.next, %bb.az ] ; 6 uses
  %.05911515.us = phi ptr [ %.0.i844.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.pi, %bb.az ] ; 2 uses
  %.36561492.us = phi float [ %.26551543.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %.5658.us, %bb.az ] ; 3 uses
  %.36661491.us = phi float [ %.26651542.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %.5668.us, %bb.az ] ; 3 uses
  %.36761490.us = phi float [ %.26751541.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %.5678.us, %bb.az ] ; 3 uses
  %i.ln = phi <2 x float> [ %i.kn, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.oz, %bb.az ] ; 3 uses
  %i.lo = phi <4 x float> [ %i.ko, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.pa, %bb.az ] ; 2 uses
  %i.lp = phi <4 x float> [ %i.kp, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.pb, %bb.az ] ; 3 uses
  %i.lq = phi <2 x float> [ %i.kq, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.pc, %bb.az ] ; 2 uses
  %i.lr = phi <2 x float> [ %i.kr, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.pd, %bb.az ] ; 2 uses
  %i.ls = phi <2 x float> [ %i.ks, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.pe, %bb.az ] ; 2 uses
  %i.lt = phi <2 x float> [ %i.kt, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.pf, %bb.az ] ; 2 uses
  %i.lu = phi <2 x float> [ %i.ku, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.pg, %bb.az ] ; 2 uses
  %i.lv = phi <2 x float> [ %i.kv, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit842.us ], [ %i.ph, %bb.az ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i846.us, i64 %indvars.iv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !39
  %i.ly = icmp eq i8 %i.lx, 0
  br i1 %i.ly, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lz = load <2 x i16>, ptr %.05911515.us, align 2, !tbaa !86 ; 2 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.0.i843.us, i64 %indvars.iv
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !86 ; 2 uses
  %i.mc = sitofp i16 %i.mb to float               ; 4 uses
  %i.md = call float @llvm.fmuladd.f32(float %i.mc, float %i.kl, float %i.km)
  %i.me = fsub float %i.md, %i.mc
  %i.mf = fptosi float %i.me to i32               ; 3 uses
  %i.mg = add nuw nsw i64 %indvars.iv, %i.cd      ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i841.us, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !39
  %i.mj = zext i8 %i.mi to i32
  %i.mk = shl nuw nsw i32 %i.mj, 5
  %i.ml = add nsw i32 %i.mk, %i.mf                ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.i1137.us, i64 %i.mg
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !39
  %i.mo = zext i8 %i.mn to i32
  %i.mp = shl nuw nsw i32 %i.mo, 5
  %i.mq = add nsw i32 %i.mp, %i.mf                ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.i841.us, i64 %indvars.iv
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !39
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i1137.us, i64 %indvars.iv
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !39
  %i.mv = shufflevector <2 x i16> %i.lz, <2 x i16> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.mw = insertelement <2 x i8> poison, i8 %i.mu, i64 0
  %i.mx = insertelement <2 x i8> %i.mw, i8 %i.ms, i64 1
  %i.my = zext <2 x i8> %i.mx to <2 x i32>
  %i.mz = shl nuw nsw <2 x i32> %i.my, splat (i32 5)
  %i.na = insertelement <2 x i32> poison, i32 %i.mf, i64 0
  %i.nb = shufflevector <2 x i32> %i.na, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.nc = add nsw <2 x i32> %i.mz, %i.nb          ; 3 uses
  %i.nd = shufflevector <2 x i32> %i.nc, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ne = sext <4 x i16> %i.mv to <4 x i32>       ; 3 uses
  %i.nf = extractelement <4 x i32> %i.ne, i64 1   ; 5 uses
  %i.ng = mul nsw <4 x i32> %i.nd, %i.ne
  %i.nh = sitofp <4 x i32> %i.ng to <4 x float>
  %i.ni = extractelement <4 x i32> %i.ne, i64 0   ; 5 uses
  %i.nj = mul nsw i32 %i.ml, %i.nf
  %i.nk = mul nsw i32 %i.ml, %i.ni
  %i.nl = insertelement <2 x i32> poison, i32 %i.nk, i64 0
  %i.nm = insertelement <2 x i32> %i.nl, i32 %i.nj, i64 1
  %i.nn = sitofp <2 x i32> %i.nm to <2 x float>
  %i.no = fadd <2 x float> %i.lt, %i.nn           ; 2 uses
  %i.np = mul nsw i32 %i.mq, %i.nf
  %i.nq = mul nsw i32 %i.mq, %i.ni
  %i.nr = insertelement <2 x i32> poison, i32 %i.np, i64 0
  %i.ns = insertelement <2 x i32> %i.nr, i32 %i.nq, i64 1
  %i.nt = sitofp <2 x i32> %i.ns to <2 x float>
  %i.nu = fadd <2 x float> %i.ls, %i.nt           ; 2 uses
  %i.nv = fadd <4 x float> %i.lo, %i.nh           ; 2 uses
  %i.nw = insertelement <2 x i32> %i.nc, i32 %i.mq, i64 0
  %i.nx = sitofp <2 x i32> %i.nw to <2 x float>   ; 2 uses
  %i.ny = insertelement <2 x float> poison, float %i.mc, i64 0
  %i.nz = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.oa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nx, <2 x float> %i.nz, <2 x float> %i.lr) ; 2 uses
  %i.ob = shufflevector <2 x i32> %i.nc, <2 x i32> poison, <2 x i32> <i32 poison, i32 0>
  %i.oc = insertelement <2 x i32> %i.ob, i32 %i.ml, i64 0
  %i.od = sitofp <2 x i32> %i.oc to <2 x float>   ; 2 uses
  %i.oe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.od, <2 x float> %i.nz, <2 x float> %i.lv) ; 2 uses
  %i.of = fadd <2 x float> %i.lq, %i.nx           ; 2 uses
  %i.og = fadd <2 x float> %i.lu, %i.od           ; 2 uses
  br i1 %i.in, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oh = sext i16 %i.mb to i32                   ; 2 uses
  %i.oi = mul nsw i32 %i.nf, %i.nf
  %i.oj = uitofp nneg i32 %i.oi to float
  %i.ok = fadd float %.36761490.us, %i.oj
  %i.ol = mul nsw i32 %i.ni, %i.nf
  %i.om = sitofp i32 %i.ol to float
  %i.on = fadd float %.36661491.us, %i.om
  %i.oo = mul nsw i32 %i.ni, %i.ni
  %i.op = uitofp nneg i32 %i.oo to float
  %i.oq = fadd float %.36561492.us, %i.op
  %i.or = mul nsw i32 %i.oh, %i.oh
  %i.os = uitofp nneg i32 %i.or to float
  %i.ot = sitofp <2 x i16> %i.lz to <2 x float>   ; 2 uses
  %i.ou = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ot, <2 x float> %i.nz, <2 x float> %i.ln)
  %i.ov = shufflevector <2 x float> %i.ot, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>
  %i.ow = insertelement <4 x float> %i.ov, float %i.os, i64 0
  %i.ox = insertelement <4 x float> %i.ow, float %i.mc, i64 1
  %i.oy = fadd <4 x float> %i.lp, %i.ox
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.5678.us = phi float [ %.36761490.us, %bb.aw ], [ %i.ok, %bb.ay ], [ %.36761490.us, %bb.ax ] ; 3 uses
  %.5668.us = phi float [ %.36661491.us, %bb.aw ], [ %i.on, %bb.ay ], [ %.36661491.us, %bb.ax ] ; 3 uses
  %.5658.us = phi float [ %.36561492.us, %bb.aw ], [ %i.oq, %bb.ay ], [ %.36561492.us, %bb.ax ] ; 3 uses
  %i.oz = phi <2 x float> [ %i.ln, %bb.aw ], [ %i.ou, %bb.ay ], [ %i.ln, %bb.ax ] ; 3 uses
  %i.pa = phi <4 x float> [ %i.lo, %bb.aw ], [ %i.nv, %bb.ay ], [ %i.nv, %bb.ax ] ; 3 uses
  %i.pb = phi <4 x float> [ %i.lp, %bb.aw ], [ %i.oy, %bb.ay ], [ %i.lp, %bb.ax ] ; 3 uses
  %i.pc = phi <2 x float> [ %i.lq, %bb.aw ], [ %i.of, %bb.ay ], [ %i.of, %bb.ax ] ; 3 uses
  %i.pd = phi <2 x float> [ %i.lr, %bb.aw ], [ %i.oa, %bb.ay ], [ %i.oa, %bb.ax ] ; 3 uses
  %i.pe = phi <2 x float> [ %i.ls, %bb.aw ], [ %i.nu, %bb.ay ], [ %i.nu, %bb.ax ] ; 3 uses
  %i.pf = phi <2 x float> [ %i.lt, %bb.aw ], [ %i.no, %bb.ay ], [ %i.no, %bb.ax ] ; 3 uses
  %i.pg = phi <2 x float> [ %i.lu, %bb.aw ], [ %i.og, %bb.ay ], [ %i.og, %bb.ax ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNK2cv7optflow3plk3ica14TrackerInvokerclERKNS_5RangeE:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bv = zext nneg i32 %i.aa to i64
  %i.bw = sext i32 %i.ao to i64
  br label %bb.g

_ZNSt6vectorIsSaIsEED2Ev.exit:                    ; preds = %bb.at, %bb.d
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ag) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit228

bb.f:                                             ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit228

.thread311:                                       ; preds = %.noexc211
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.thread316:                                       ; preds = %bb.c
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  br label %bb.av

bb.g:                                             ; preds = %.lr.ph360, %bb.at
  %indvars.iv374 = phi i64 [ %i.bw, %.lr.ph360 ], [ %indvars.iv.next375, %bb.at ] ; 12 uses
  %i.cb = load ptr, ptr %i.as, align 8, !tbaa !388
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv374
  %i.cd = load i32, ptr %i.at, align 8, !tbaa !156 ; 2 uses
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fdiv double 1.000000e+00, %i.cf
  %i.ch = fptrunc double %i.cg to float           ; 2 uses
  %i.ci = load <2 x float>, ptr %i.cc, align 4, !tbaa !48
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %i.ci, %i.ck           ; 3 uses
  %i.cm = load i32, ptr %i.au, align 4, !tbaa !157
  %i.cn = icmp eq i32 %i.cd, %i.cm
  br i1 %i.cn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = load i8, ptr %i.aw, align 8, !tbaa !160, !range !25, !noundef !26
  %i.cp = trunc nuw i8 %i.co to i1
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !389 ; 2 uses
  br i1 %i.cp, label %.sink.split, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %i.av, align 8, !tbaa !389
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.pre.sink = phi ptr [ %i.cq, %bb.i ], [ %.pre, %bb.h ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.i ], [ %i.ch, %bb.h ]
  %i.cr = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv374
  %i.cs = load <2 x float>, ptr %i.cr, align 4, !tbaa !48
  %i.ct = insertelement <2 x float> poison, float %.sink, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x float> %i.cs, %i.cu
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %i.cw = phi ptr [ %.pre, %bb.h ], [ %.pre.sink, %.sink.split ]
  %.sroa.0241.0 = phi <2 x float> [ %i.cl, %bb.h ], [ %i.cv, %.sink.split ] ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv374
  store <2 x float> %.sroa.0241.0, ptr %i.cx, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.cy = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.cl)
  %i.cz = fptosi <2 x float> %i.cy to <2 x i32>
  store <2 x i32> %i.cz, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.da = load i32, ptr %i.o, align 8, !tbaa !153 ; 4 uses
  %i.db = mul nsw i32 %i.da, %i.da
  store i32 %i.db, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !tbaa !76
  store i32 0, ptr %i.ax, align 4, !tbaa !77
  store i32 %i.da, ptr %i.ay, align 4, !tbaa !50
  store i32 %i.da, ptr %i.az, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.dc = load i32, ptr %i.ba, align 8, !tbaa !158
  %i.dd = load i32, ptr %i.bb, align 4, !tbaa !152
  %i.de = load i32, ptr %i.o, align 8, !tbaa !153
  %i.df = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.n, i32 noundef %i.dc, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dd, i32 noundef %i.de)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  br i1 %i.df, label %bb.n, label %bb.at

bb.m:                                             ; preds = %bb.j
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.au

bb.n:                                             ; preds = %bb.l
  %i.dh = load i32, ptr %i.o, align 8, !tbaa !153
  %i.di = sitofp i32 %i.dh to float
  %i.dj = load <2 x float>, ptr %3, align 8, !tbaa !48
  %i.dk = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fsub <2 x float> %i.dl, %i.dj           ; 4 uses
  store <2 x float> %i.dm, ptr %3, align 8, !tbaa !48
  %i.dn = fadd <2 x float> %i.cl, %i.dm           ; 3 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %i.dp = call float @llvm.floor.f32(float %i.do)
  %i.dq = extractelement <2 x float> %i.dn, i64 1
  %i.dr = call float @llvm.floor.f32(float %i.dq)
  %i.ds = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.dr, i64 1
  %i.du = fptosi <2 x float> %i.dt to <2 x i32>   ; 4 uses
  %i.dv = extractelement <2 x i32> %i.du, i64 0   ; 2 uses
  store <2 x i32> %i.du, ptr %8, align 8, !tbaa !46
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = load i32, ptr %i.bc, align 4, !tbaa !43
  %i.dy = load i32, ptr %2, align 8, !tbaa !29
  %i.dz = sub nsw i32 %i.dx, %i.dy
  %i.ea = icmp sle i32 %i.dz, %i.dv
  %i.eb = extractelement <2 x i32> %i.du, i64 1   ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  %or.cond = or i1 %i.ec, %i.ea
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = load i32, ptr %i.bd, align 8, !tbaa !44
  %i.ee = load i32, ptr %i.f, align 4, !tbaa !30  ; 3 uses
  %i.ef = xor i32 %i.ee, -1                       ; 2 uses
  %i.eg = add i32 %i.ed, %i.ef
  %.not = icmp sgt i32 %i.eg, %i.eb
  br i1 %.not, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.eh = load i32, ptr %i.at, align 8, !tbaa !156
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.r, label %bb.at

bb.r:                                             ; preds = %bb.q
  %i.ej = load ptr, ptr %i.bh, align 8, !tbaa !150 ; 2 uses
  %.not186 = icmp eq ptr %i.ej, null
  br i1 %.not186, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %indvars.iv374
  store i8 3, ptr %i.ek, align 1, !tbaa !39
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.el = load ptr, ptr %i.be, align 8, !tbaa !151 ; 2 uses
  %.not187 = icmp eq ptr %i.el, null
  br i1 %.not187, label %bb.at, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv374
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !48
  br label %bb.at

bb.v:                                             ; preds = %bb.p
  %i.en = uitofp <2 x i32> %i.du to <2 x float>
  %i.eo = fsub <2 x float> %i.dn, %i.en           ; 3 uses
  %i.ep = fsub <2 x float> splat (float 1.000000e+00), %i.eo ; 3 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0
  %i.er = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  %i.es = fmul float %i.eq, %i.er
  %i.et = fmul float %i.es, 1.638400e+04
  %i.eu = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ev = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.eu) ; 2 uses
  %i.ew = extractelement <2 x float> %i.eo, i64 0
  %i.ex = fmul float %i.ew, %i.er
  %i.ey = fmul float %i.ex, 1.638400e+04
  %i.ez = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fa = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ez) ; 2 uses
  %shift = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ep, %shift
  %i.fb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fc = fmul float %i.fb, 1.638400e+04
  %i.fd = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.fe = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fd) ; 2 uses
  %i.ff = add i32 %i.ev, %i.fa
  %i.fg = add i32 %i.ff, %i.fe
  %i.fh = sub i32 16384, %i.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !48
  %.sroa.033.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.032.0.copyload = load i64, ptr %8, align 8, !tbaa !46
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_RfS7_S7_NS_6Point_IiEE(i32 noundef %i.ev, i32 noundef %i.fa, i32 noundef %i.fe, i32 noundef %i.fh, i64 %.sroa.033.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i64 %.sroa.032.0.copyload)
  %i.fi = load float, ptr %i.c, align 4, !tbaa !48 ; 3 uses
  %i.fj = load float, ptr %i.e, align 4, !tbaa !48 ; 4 uses
  %i.fk = load float, ptr %i.d, align 4, !tbaa !48 ; 3 uses
  %i.fl = fneg float %i.fk
  %i.fm = fadd float %i.fi, %i.fj
  %i.fn = fsub float %i.fi, %i.fj
  %i.fo = fmul float %i.fk, 4.000000e+00
  %i.fp = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fr = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %i.fo, i64 1
  %i.ft = fmul <2 x float> %i.fq, %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.fi, i64 0 ; 2 uses
  %i.fv = insertelement <2 x float> %i.fu, float %i.fn, i64 1 ; 2 uses
  %i.fw = insertelement <2 x float> %i.fv, float %i.fj, i64 0
  %i.fx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.ft) ; 2 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 1
  %i.fz = call noundef float @sqrtf(float noundef %i.fy) #20
  %i.ga = fsub float %i.fm, %i.fz
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !46
  %i.gc = shl nsw i32 %i.gb, 1
  %i.gd = sitofp i32 %i.gc to float
  %i.ge = fdiv float %i.ga, %i.gd                 ; 2 uses
  %i.gf = load ptr, ptr %i.be, align 8, !tbaa !151 ; 2 uses
  %.not166 = icmp eq ptr %i.gf, null
  %i.gg = trunc i64 %.sroa.033.0.copyload to i32  ; 2 uses
  br i1 %.not166, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %indvars.iv374
  store float %i.ge, ptr %i.gh, align 4, !tbaa !48
  br label %bb.y

bb.x:                                             ; preds = %bb.k
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.au

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.gj = load float, ptr %i.bf, align 4, !tbaa !159
  %i.gk = fcmp olt float %i.ge, %i.gj
  %i.gl = extractelement <2 x float> %i.fx, i64 0 ; 2 uses
  %i.gm = fcmp olt float %i.gl, f0x34000000
  %or.cond4 = or i1 %i.gm, %i.gk
  br i1 %or.cond4, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.gn = load i32, ptr %i.at, align 8, !tbaa !156
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.gp = load ptr, ptr %i.bh, align 8, !tbaa !150 ; 2 uses
  %.not185 = icmp eq ptr %i.gp, null
  br i1 %.not185, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 %indvars.iv374
  store i8 0, ptr %i.gq, align 1, !tbaa !39
  br label %.thread

bb.ac:                                            ; preds = %bb.y
  %i.gr = load i32, ptr %i.bg, align 4, !tbaa !154
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ac
  %i.gt = fdiv float 1.000000e+00, %i.gl
  %i.gu = fadd <2 x float> %.sroa.0241.0, %i.dm
  %i.gv = icmp sgt i32 %i.ee, 0
  %i.gw = mul i32 %i.aa, %i.gg                    ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  %wide.trip.count372 = zext nneg i32 %i.ee to i64
  %wide.trip.count = zext nneg i32 %i.gw to i64
  %i.gy = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = insertelement <2 x float> %i.fu, float %i.fj, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.as
  %.0135357 = phi i32 [ 0, %.lr.ph ], [ %i.mq, %bb.as ] ; 3 uses
  %.sroa.0235.0356 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.lx, %bb.as ]
  %.sroa.6.0355 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.lz, %bb.as ]
  %.sroa.0241.1354 = phi <2 x float> [ %i.gu, %.lr.ph ], [ %i.lt, %bb.as ] ; 4 uses
  %i.hb = trunc i32 %.0135357 to i8
  %i.hc = load ptr, ptr %i.bh, align 8, !tbaa !150
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %indvars.iv374
  store i8 %i.hb, ptr %i.hd, align 1, !tbaa !39
  %.sroa.0241.0.vec.extract = extractelement <2 x float> %.sroa.0241.1354, i64 0
  %.sroa.0241.4.vec.extract258 = extractelement <2 x float> %.sroa.0241.1354, i64 1
  %i.he = call float @llvm.floor.f32(float %.sroa.0241.0.vec.extract)
  %i.hf = call float @llvm.floor.f32(float %.sroa.0241.4.vec.extract258)
  %i.hg = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.hf, i64 1
  %i.hi = fptosi <2 x float> %i.hh to <2 x i32>   ; 3 uses
  %i.hj = extractelement <2 x i32> %i.hi, i64 0   ; 3 uses
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hl = load i32, ptr %i.bi, align 4, !tbaa !43
  %i.hm = sub nsw i32 %i.hl, %i.gg
  %i.hn = icmp sle i32 %i.hm, %i.hj
  %i.ho = extractelement <2 x i32> %i.hi, i64 1   ; 3 uses
  %i.hp = icmp slt i32 %i.ho, 0
  %or.cond7 = or i1 %i.hp, %i.hn
  br i1 %or.cond7, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hq = load i32, ptr %i.bj, align 8, !tbaa !44
  %i.hr = add i32 %i.hq, %i.ef
  %.not167 = icmp sgt i32 %i.hr, %i.ho
  br i1 %.not167, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.hs = load i32, ptr %i.at, align 8, !tbaa !156
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.hu = load ptr, ptr %i.bh, align 8, !tbaa !150 ; 2 uses
  %.not184 = icmp eq ptr %i.hu, null
  br i1 %.not184, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 %indvars.iv374
  store i8 3, ptr %i.hv, align 1, !tbaa !39
  br label %.thread

bb.aj:                                            ; preds = %bb.af
  %i.hw = uitofp <2 x i32> %i.hi to <2 x float>
  %i.hx = fsub <2 x float> %.sroa.0241.1354, %i.hw ; 3 uses
  %i.hy = fsub <2 x float> splat (float 1.000000e+00), %i.hx ; 3 uses
  %i.hz = extractelement <2 x float> %i.hy, i64 0
  %i.ia = extractelement <2 x float> %i.hy, i64 1 ; 2 uses
  %i.ib = fmul float %i.hz, %i.ia
  %i.ic = fmul float %i.ib, 1.638400e+04
  %i.id = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.ie = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.id) ; 2 uses
  %i.if = extractelement <2 x float> %i.hx, i64 0
  %i.ig = fmul float %i.if, %i.ia
  %i.ih = fmul float %i.ig, 1.638400e+04
  %i.ii = insertelement <4 x float> poison, float %i.ih, i64 0
  %i.ij = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ii) ; 2 uses
  %shift419 = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop420 = fmul <2 x float> %shift419, %i.hy
  %i.ik = extractelement <2 x float> %foldExtExtBinop420, i64 0
  %i.il = fmul float %i.ik, 1.638400e+04
  %i.im = insertelement <4 x float> poison, float %i.il, i64 0
  %i.in = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.im) ; 2 uses
  %i.io = add i32 %i.ie, %i.ij
  %i.ip = add i32 %i.io, %i.in
  %i.iq = sub i32 16384, %i.ip
  br i1 %i.gv, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %bb.aj
  %i.ir = mul nuw nsw i32 %i.aa, %i.hj
  %i.is = load i32, ptr %i.bk, align 4, !tbaa !72
  %i.it = icmp slt i32 %i.is, 2
  %i.iu = load ptr, ptr %i.bl, align 8, !tbaa !79 ; 3 uses
  %i.iv = zext nneg i32 %i.ir to i64              ; 2 uses
  %i.iw = load i32, ptr %i.bo, align 4, !tbaa !72
  %i.ix = icmp slt i32 %i.iw, 2
  %i.iy = load ptr, ptr %i.bp, align 8, !tbaa !79
  %i.iz = load i64, ptr %i.bq, align 8
  %i.ja = load i32, ptr %i.br, align 4, !tbaa !72
  %i.jb = icmp slt i32 %i.ja, 2
  %i.jc = load ptr, ptr %i.bs, align 8, !tbaa !79
  %i.jd = load i64, ptr %i.bt, align 8
  br i1 %i.gx, label %.lr.ph342.split.us.preheader, label %._crit_edge343

.lr.ph342.split.us.preheader:                     ; preds = %.lr.ph342
  %i.je = zext nneg i32 %i.ho to i64
  br label %.lr.ph342.split.us

.lr.ph342.split.us:                               ; preds = %.lr.ph342.split.us.preheader, %._crit_edge.us
  %indvars.iv369 = phi i64 [ 0, %.lr.ph342.split.us.preheader ], [ %indvars.iv.next370, %._crit_edge.us ] ; 4 uses
  %i.jf = phi <2 x float> [ zeroinitializer, %.lr.ph342.split.us.preheader ], [ %i.lk, %._crit_edge.us ]
  br i1 %i.it, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph342.split.us
  %i.jg = add nuw nsw i64 %indvars.iv369, %i.je   ; 2 uses
  %i.jh = load i64, ptr %i.bm, align 8, !tbaa !84 ; 2 uses
  %i.ji = mul i64 %i.jh, %i.jg
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ji
  %i.jk = load i64, ptr %i.bn, align 8, !tbaa !84
  %i.jl = mul i64 %i.jk, %i.iv                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jl
  %i.jn = add nuw nsw i64 %i.jg, 1
  %i.jo = mul i64 %i.jh, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jl
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us

bb.al:                                            ; preds = %.lr.ph342.split.us
  %i.jr = load i64, ptr %i.bm, align 8, !tbaa !84
  %i.js = mul i64 %i.jr, %i.iv
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.js ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us:             ; preds = %bb.al, %bb.ak
  %.0.i306.us = phi ptr [ %i.jt, %bb.al ], [ %i.jm, %bb.ak ] ; 2 uses
  %.0.i218.us = phi ptr [ %i.jt, %bb.al ], [ %i.jq, %bb.ak ] ; 2 uses
  %i.ju = mul i64 %i.iz, %indvars.iv369
  %.0.i220.us.idx = select i1 %i.ix, i64 0, i64 %i.ju
  %.0.i220.us = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0.i220.us.idx
  %i.jv = mul i64 %i.jd, %indvars.iv369
  %.0.i221.us.idx = select i1 %i.jb, i64 0, i64 %i.jv
  %.0.i221.us = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.0.i221.us.idx
  br label %bb.am

bb.am:                                            ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us, %bb.an
  %indvars.iv = phi i64 [ 0, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us ], [ %indvars.iv.next, %bb.an ] ; 5 uses
  %.0336.us = phi ptr [ %.0.i221.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us ], [ %i.ll, %bb.an ] ; 3 uses
  %i.jw = phi <2 x float> [ %i.jf, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us ], [ %i.lk, %bb.an ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0336.us, i64 2
  %i.jy = load i16, ptr %.0336.us, align 2, !tbaa !86 ; 2 uses
  %i.jz = icmp eq i16 %i.jy, 0
  %i.ka = load i16, ptr %i.jx, align 2, !tbaa !86 ; 2 uses
  %i.kb = icmp eq i16 %i.ka, 0
  %or.cond408 = select i1 %i.jz, i1 %i.kb, i1 false
  br i1 %or.cond408, label %bb.an, label %._crit_edge

._crit_edge:                                      ; preds = %bb.am
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i306.us, i64 %indvars.iv
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !39
  %i.ke = zext i8 %i.kd to i32
  %i.kf = mul nsw i32 %i.ie, %i.ke
  %i.kg = add nuw nsw i64 %indvars.iv, %i.bv      ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i306.us, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !39
  %i.kj = zext i8 %i.ki to i32
  %i.kk = mul nsw i32 %i.ij, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i218.us, i64 %indvars.iv
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !39
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul nsw i32 %i.in, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i218.us, i64 %i.kg
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !39
  %i.kr = zext i8 %i.kq to i32
  %i.ks = mul nsw i32 %i.iq, %i.kr
  %i.kt = add i32 %i.kf, 256
  %i.ku = add i32 %i.kt, %i.kk
  %i.kv = add i32 %i.ku, %i.ko
  %i.kw = add i32 %i.kv, %i.ks
  %i.kx = ashr i32 %i.kw, 9
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %.0.i220.us, i64 %indvars.iv
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !86
  %i.la = sext i16 %i.kz to i32
  %i.lb = sub nsw i32 %i.kx, %i.la                ; 2 uses
  %i.lc = sext i16 %i.jy to i32
  %i.ld = sext i16 %i.ka to i32
  %i.le = mul nsw i32 %i.lb, %i.lc
  %i.lf = mul nsw i32 %i.lb, %i.ld
  %i.lg = insertelement <2 x i32> poison, i32 %i.lf, i64 0
  %i.lh = insertelement <2 x i32> %i.lg, i32 %i.le, i64 1
  %i.li = sitofp <2 x i32> %i.lh to <2 x float>
  %i.lj = fadd <2 x float> %i.jw, %i.li
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge
  %i.lk = phi <2 x float> [ %i.jw, %bb.am ], [ %i.lj, %._crit_edge ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.0336.us, i64 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.am, !llvm.loop !384

._crit_edge.us:                                   ; preds = %bb.an
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %._crit_edge343.loopexit, label %.lr.ph342.split.us, !llvm.loop !385

._crit_edge343.loopexit:                          ; preds = %._crit_edge.us
  %i.lm = fmul <2 x float> %i.lk, splat (float f0x35800000)
  br label %._crit_edge343

._crit_edge343:                                   ; preds = %.lr.ph342, %._crit_edge343.loopexit, %bb.aj
  %i.ln = phi <2 x float> [ zeroinitializer, %bb.aj ], [ %i.lm, %._crit_edge343.loopexit ], [ zeroinitializer, %.lr.ph342 ] ; 2 uses
  %i.lo = fneg <2 x float> %i.ln
  %i.lp = fmul <2 x float> %i.ha, %i.lo
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.ln, <2 x float> %i.lq)
  %i.ls = fmul <2 x float> %i.gz, %i.lr           ; 4 uses
  %i.lt = fadd <2 x float> %.sroa.0241.1354, %i.ls ; 2 uses
  %i.lu = fsub <2 x float> %i.lt, %i.dm           ; 2 uses
  %i.lv = load ptr, ptr %i.av, align 8, !tbaa !389 ; 2 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %indvars.iv374
  store <2 x float> %i.lu, ptr %i.lw, align 4, !tbaa !48
  %i.lx = extractelement <2 x float> %i.ls, i64 0 ; 3 uses
  %i.ly = fpext float %i.lx to double             ; 2 uses
  %i.lz = extractelement <2 x float> %i.ls, i64 1 ; 3 uses
  %i.ma = fpext float %i.lz to double             ; 2 uses
  %i.mb = fmul double %i.ma, %i.ma
  %i.mc = call noundef double @llvm.fmuladd.f64(double %i.ly, double %i.ly, double %i.mb)
  %i.md = load double, ptr %i.bu, align 8, !tbaa !155
  %i.me = fcmp ugt double %i.mc, %i.md
  br i1 %i.me, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %._crit_edge343
  %.not168 = icmp eq i32 %.0135357, 0
  br i1 %.not168, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mf = fsub float %i.lx, %.sroa.0235.0356
  %i.mg = call noundef float @llvm.fabs.f32(float %i.mf)
  %i.mh = fpext float %i.mg to double
  %i.mi = fcmp olt double %i.mh, 1.000000e-02
  br i1 %i.mi, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.mj = fsub float %i.lz, %.sroa.6.0355
  %i.mk = call noundef float @llvm.fabs.f32(float %i.mj)
  %i.ml = fpext float %i.mk to double
  %i.mm = fcmp olt double %i.ml, 1.000000e-02
  br i1 %i.mm, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %indvars.iv374
  %i.mo = fmul <2 x float> %i.ls, splat (float 5.000000e-01)
  %i.mp = fsub <2 x float> %i.lu, %i.mo
  store <2 x float> %i.mp, ptr %i.mn, align 4, !tbaa !48
  br label %.thread

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.mq = add nuw nsw i32 %.0135357, 1            ; 2 uses
  %i.mr = load i32, ptr %i.bg, align 4, !tbaa !154
  %i.ms = icmp slt i32 %i.mq, %i.mr
  br i1 %i.ms, label %bb.ad, label %.thread, !llvm.loop !386

.thread:                                          ; preds = %bb.as, %._crit_edge343, %bb.ac, %bb.ar, %bb.ai, %bb.ah, %bb.ag, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
end_hunk_2
begin_hunk_3_@_ZNK2cv7optflow5beplk3ica14TrackerInvokerclERKNS_5RangeE:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bu = zext nneg i32 %i.aa to i64
  %i.bv = sext i32 %i.ao to i64
  br label %bb.g

_ZNSt6vectorIsSaIsEED2Ev.exit:                    ; preds = %bb.ba, %bb.d
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ag) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit373

bb.f:                                             ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit373

.thread528:                                       ; preds = %.noexc347
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.thread533:                                       ; preds = %bb.c
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  br label %bb.bc

bb.g:                                             ; preds = %.lr.ph647, %bb.ba
  %indvars.iv698 = phi i64 [ %i.bv, %.lr.ph647 ], [ %indvars.iv.next699, %bb.ba ] ; 13 uses
  %i.ca = load ptr, ptr %i.as, align 8, !tbaa !396
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv698
  %i.cc = load i32, ptr %i.at, align 8, !tbaa !172 ; 2 uses
  %i.cd = shl nuw i32 1, %i.cc
  %i.ce = sitofp i32 %i.cd to double
  %i.cf = fdiv double 1.000000e+00, %i.ce
  %i.cg = fptrunc double %i.cf to float           ; 2 uses
  %i.ch = load <2 x float>, ptr %i.cb, align 4, !tbaa !48
  %i.ci = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.ch, %i.cj           ; 3 uses
  %i.cl = load i32, ptr %i.au, align 4, !tbaa !173
  %i.cm = icmp eq i32 %i.cc, %i.cl
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = load i8, ptr %i.aw, align 8, !tbaa !175, !range !25, !noundef !26
  %i.co = trunc nuw i8 %i.cn to i1
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !397 ; 2 uses
  br i1 %i.co, label %.sink.split, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !397
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.pre.sink = phi ptr [ %i.cp, %bb.i ], [ %.pre, %bb.h ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.i ], [ %i.cg, %bb.h ]
  %i.cq = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv698
  %i.cr = load <2 x float>, ptr %i.cq, align 4, !tbaa !48
  %i.cs = insertelement <2 x float> poison, float %.sink, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.cr, %i.ct
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %i.cv = phi ptr [ %.pre, %bb.h ], [ %.pre.sink, %.sink.split ]
  %.sroa.0423.0 = phi <2 x float> [ %i.ck, %bb.h ], [ %i.cu, %.sink.split ] ; 3 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %indvars.iv698
  store <2 x float> %.sroa.0423.0, ptr %i.cw, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.cx = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ck)
  %i.cy = fptosi <2 x float> %i.cx to <2 x i32>
  store <2 x i32> %i.cy, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cz = load i32, ptr %i.o, align 8, !tbaa !169 ; 4 uses
  %i.da = mul nsw i32 %i.cz, %i.cz
  store i32 %i.da, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !tbaa !76
  store i32 0, ptr %i.ax, align 4, !tbaa !77
  store i32 %i.cz, ptr %i.ay, align 4, !tbaa !50
  store i32 %i.cz, ptr %i.az, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.db = load i32, ptr %i.ba, align 8, !tbaa !174
  %i.dc = load i32, ptr %i.bb, align 4, !tbaa !168
  %i.dd = load i32, ptr %i.o, align 8, !tbaa !169
  %i.de = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.n, i32 noundef %i.db, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dc, i32 noundef %i.dd)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  br i1 %i.de, label %bb.n, label %bb.ba

bb.m:                                             ; preds = %bb.j
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.bb

bb.n:                                             ; preds = %bb.l
  %i.dg = load i32, ptr %i.o, align 8, !tbaa !169
  %i.dh = sitofp i32 %i.dg to float
  %i.di = load <2 x float>, ptr %3, align 8, !tbaa !48
  %i.dj = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fsub <2 x float> %i.dk, %i.di           ; 5 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.dl, ptr %3, align 8, !tbaa !48
  %i.dn = fadd <2 x float> %i.ck, %i.dl           ; 3 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %i.dp = call float @llvm.floor.f32(float %i.do)
  %i.dq = extractelement <2 x float> %i.dn, i64 1
  %i.dr = call float @llvm.floor.f32(float %i.dq)
  %i.ds = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.dr, i64 1
  %i.du = fptosi <2 x float> %i.dt to <2 x i32>   ; 4 uses
  %i.dv = extractelement <2 x i32> %i.du, i64 0   ; 2 uses
  store <2 x i32> %i.du, ptr %8, align 8, !tbaa !46
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = load i32, ptr %i.bc, align 4, !tbaa !43
  %i.dy = load i32, ptr %2, align 8, !tbaa !29
  %i.dz = sub nsw i32 %i.dx, %i.dy
  %i.ea = icmp sle i32 %i.dz, %i.dv
  %i.eb = extractelement <2 x i32> %i.du, i64 1   ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  %or.cond = or i1 %i.ec, %i.ea
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = load i32, ptr %i.bd, align 8, !tbaa !44
  %i.ee = load i32, ptr %i.f, align 4, !tbaa !30  ; 3 uses
  %i.ef = xor i32 %i.ee, -1                       ; 2 uses
  %i.eg = add i32 %i.ed, %i.ef
  %.not = icmp sgt i32 %i.eg, %i.eb
  br i1 %.not, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.eh = load i32, ptr %i.at, align 8, !tbaa !172
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.r, label %bb.ba

bb.r:                                             ; preds = %bb.q
  %i.ej = load ptr, ptr %i.bt, align 8, !tbaa !166 ; 2 uses
  %.not314 = icmp eq ptr %i.ej, null
  br i1 %.not314, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %indvars.iv698
  store i8 3, ptr %i.ek, align 1, !tbaa !39
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.el = load ptr, ptr %i.be, align 8, !tbaa !167 ; 2 uses
  %.not315 = icmp eq ptr %i.el, null
  br i1 %.not315, label %bb.ba, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %indvars.iv698
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !48
  br label %bb.ba

bb.v:                                             ; preds = %bb.p
  %i.en = uitofp <2 x i32> %i.du to <2 x float>
  %i.eo = fsub <2 x float> %i.dn, %i.en           ; 3 uses
  %i.ep = fsub <2 x float> splat (float 1.000000e+00), %i.eo ; 3 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0
  %i.er = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  %i.es = fmul float %i.eq, %i.er
  %i.et = fmul float %i.es, 1.638400e+04
  %i.eu = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ev = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.eu) ; 2 uses
  %i.ew = extractelement <2 x float> %i.eo, i64 0
  %i.ex = fmul float %i.ew, %i.er
  %i.ey = fmul float %i.ex, 1.638400e+04
  %i.ez = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fa = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ez) ; 2 uses
  %shift = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ep, %shift
  %i.fb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fc = fmul float %i.fb, 1.638400e+04
  %i.fd = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.fe = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fd) ; 2 uses
  %i.ff = add i32 %i.ev, %i.fa
  %i.fg = add i32 %i.ff, %i.fe
  %i.fh = sub i32 16384, %i.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !48
  %.sroa.0166.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.0165.0.copyload = load i64, ptr %8, align 8, !tbaa !46
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_RfS7_S7_NS_6Point_IiEE(i32 noundef %i.ev, i32 noundef %i.fa, i32 noundef %i.fe, i32 noundef %i.fh, i64 %.sroa.0166.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i64 %.sroa.0165.0.copyload)
  %i.fi = load float, ptr %i.c, align 4, !tbaa !48 ; 3 uses
  %i.fj = load float, ptr %i.e, align 4, !tbaa !48 ; 4 uses
  %i.fk = load float, ptr %i.d, align 4, !tbaa !48 ; 4 uses
  %i.fl = fneg float %i.fk
  %i.fm = fsub float %i.fi, %i.fj
  %i.fn = fmul float %i.fk, 4.000000e+00
  %i.fo = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fn, i64 1
  %i.fs = fmul <2 x float> %i.fp, %i.fr
  %i.ft = insertelement <2 x float> poison, float %i.fi, i64 0 ; 2 uses
  %i.fu = insertelement <2 x float> %i.ft, float %i.fm, i64 1 ; 2 uses
  %i.fv = insertelement <2 x float> %i.fu, float %i.fj, i64 0
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.fv, <2 x float> %i.fs) ; 2 uses
  %i.fx = extractelement <2 x float> %i.fw, i64 1
  %i.fy = call noundef float @sqrtf(float noundef %i.fx) #20
  %i.fz = load ptr, ptr %i.be, align 8, !tbaa !167 ; 2 uses
  %.not292 = icmp eq ptr %i.fz, null
  %i.ga = trunc i64 %.sroa.0166.0.copyload to i32 ; 2 uses
  br i1 %.not292, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gb = fadd float %i.fi, %i.fj
  %i.gc = fsub float %i.gb, %i.fy
  %i.gd = load i32, ptr %i.b, align 4, !tbaa !46
  %i.ge = shl nsw i32 %i.gd, 1
  %i.gf = sitofp i32 %i.ge to float
  %i.gg = fdiv float %i.gc, %i.gf
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %indvars.iv698
  store float %i.gg, ptr %i.gh, align 4, !tbaa !48
  br label %bb.y

bb.x:                                             ; preds = %bb.k
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.bb

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.gj = extractelement <2 x float> %i.fw, i64 0 ; 2 uses
  %i.gk = fcmp olt float %i.gj, f0x34000000
  br i1 %i.gk, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.gl = load i32, ptr %i.at, align 8, !tbaa !172
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.aa, label %.thread521

bb.aa:                                            ; preds = %bb.z
  %i.gn = load ptr, ptr %i.bt, align 8, !tbaa !166 ; 2 uses
  %.not313 = icmp eq ptr %i.gn, null
  br i1 %.not313, label %.thread521, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %indvars.iv698
  store i8 0, ptr %i.go, align 1, !tbaa !39
  br label %.thread521

bb.ac:                                            ; preds = %bb.y
  %i.gp = load i32, ptr %i.bf, align 4, !tbaa !170 ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph, label %.thread521

.lr.ph:                                           ; preds = %bb.ac
  %i.gr = fadd <2 x float> %.sroa.0423.0, %i.dl
  %i.gs = fdiv float 1.000000e+00, %i.gj          ; 2 uses
  %i.gt = icmp sgt i32 %i.ee, 0
  %i.gu = load i32, ptr %i.bm, align 4
  %i.gv = icmp slt i32 %i.gu, 2
  %i.gw = load ptr, ptr %i.bn, align 8
  %i.gx = load i32, ptr %i.bp, align 4
  %i.gy = icmp slt i32 %i.gx, 2
  %i.gz = load ptr, ptr %i.bq, align 8
  %i.ha = mul i32 %i.aa, %i.ga                    ; 2 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  %i.hc = fmul float %i.fk, %i.gs
  %i.hd = insertelement <2 x float> %i.ft, float %i.fj, i64 1
  %i.he = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = fmul <2 x float> %i.hd, %i.hf           ; 4 uses
  %wide.trip.count695 = zext nneg i32 %i.ee to i64
  %wide.trip.count = zext nneg i32 %i.ha to i64
  %i.hh = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.az
  %.0274644 = phi i32 [ 0, %.lr.ph ], [ %i.ty, %bb.az ] ; 3 uses
  %.sroa.0410.0643 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ua, %bb.az ]
  %.sroa.6.0642 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.tz, %bb.az ]
  %.sroa.0423.1639 = phi <2 x float> [ %i.gr, %.lr.ph ], [ %i.ss, %bb.az ] ; 5 uses
  %i.hj = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.se, %bb.az ] ; 3 uses
  %i.hk = shufflevector <2 x float> %.sroa.0423.1639, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hl = call <2 x float> @llvm.floor.v2f32(<2 x float> %.sroa.0423.1639)
  %i.hm = fptosi <2 x float> %i.hl to <2 x i32>   ; 8 uses
  %i.hn = sitofp <2 x i32> %i.hm to <2 x float>   ; 2 uses
  %i.ho = fsub <2 x float> %.sroa.0423.1639, %i.hn ; 4 uses
  %i.hp = extractelement <2 x i32> %i.hm, i64 0   ; 3 uses
  %i.hq = icmp eq <2 x i32> %i.hj, %i.hm
  %.not293 = extractelement <2 x i1> %i.hq, i64 0
  br i1 %.not293, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hr = icmp ne <2 x i32> %i.hj, %i.hm
  %i.hs = extractelement <2 x i1> %i.hr, i64 1
  %i.ht = icmp eq i32 %.0274644, 0
  %or.cond4 = or i1 %i.hs, %i.ht
  br i1 %or.cond4, label %bb.af, label %bb.au

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hu = icmp slt i32 %i.hp, 0
  br i1 %i.hu, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = load i32, ptr %i.bg, align 4, !tbaa !43
  %i.hw = sub nsw i32 %i.hv, %i.ga
  %i.hx = icmp sle i32 %i.hw, %i.hp
  %i.hy = extractelement <2 x i32> %i.hm, i64 1   ; 3 uses
  %i.hz = icmp slt i32 %i.hy, 0
  %or.cond7 = or i1 %i.hz, %i.hx
  br i1 %or.cond7, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ia = load i32, ptr %i.bh, align 8, !tbaa !44
  %i.ib = add i32 %i.ia, %i.ef
  %.not294 = icmp sgt i32 %i.ib, %i.hy
  br i1 %.not294, label %.preheader, label %bb.am

.preheader:                                       ; preds = %bb.ah
  br i1 %i.gt, label %.lr.ph593, label %._crit_edge594

.lr.ph593:                                        ; preds = %.preheader
  %i.ic = mul nuw nsw i32 %i.aa, %i.hp
  %i.id = load i32, ptr %i.bi, align 4, !tbaa !72
  %i.ie = icmp slt i32 %i.id, 2
  %i.if = load ptr, ptr %i.bj, align 8, !tbaa !79 ; 3 uses
  %i.ig = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.ih = load i64, ptr %i.bo, align 8
  %i.ii = load i64, ptr %i.br, align 8
  br i1 %i.hb, label %.lr.ph593.split.us.preheader, label %._crit_edge594

.lr.ph593.split.us.preheader:                     ; preds = %.lr.ph593
  %i.ij = zext nneg i32 %i.hy to i64
  br label %.lr.ph593.split.us

.lr.ph593.split.us:                               ; preds = %.lr.ph593.split.us.preheader, %._crit_edge.us
  %indvars.iv692 = phi i64 [ 0, %.lr.ph593.split.us.preheader ], [ %indvars.iv.next693, %._crit_edge.us ] ; 4 uses
  %.sroa.18149.0586.us = phi float [ 0.000000e+00, %.lr.ph593.split.us.preheader ], [ %.sroa.18149.2.us, %._crit_edge.us ]
  %.sroa.12145.0585.us = phi float [ 0.000000e+00, %.lr.ph593.split.us.preheader ], [ %.sroa.12145.2.us, %._crit_edge.us ]
  %i.ik = phi <4 x float> [ zeroinitializer, %.lr.ph593.split.us.preheader ], [ %i.lk, %._crit_edge.us ]
  %i.il = phi <2 x float> [ zeroinitializer, %.lr.ph593.split.us.preheader ], [ %i.lj, %._crit_edge.us ]
  br i1 %i.ie, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph593.split.us
  %i.im = add nuw nsw i64 %indvars.iv692, %i.ij   ; 2 uses
  %i.in = load i64, ptr %i.bk, align 8, !tbaa !84 ; 2 uses
  %i.io = mul i64 %i.in, %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.io
  %i.iq = load i64, ptr %i.bl, align 8, !tbaa !84
  %i.ir = mul i64 %i.iq, %i.ig                    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir
  %i.it = add nuw nsw i64 %i.im, 1
  %i.iu = mul i64 %i.in, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ir
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit355.us

bb.aj:                                            ; preds = %.lr.ph593.split.us
end_hunk_3
begin_hunk_4_@_ZNK2cv7optflow4rlof6radial14TrackerInvokerclERKNS_5RangeE:bb.a
_ZNSt6vectorIsSaIsEED2Ev.exit:                    ; preds = %bb.cf, %bb.d
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit764

bb.f:                                             ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit764

.thread927:                                       ; preds = %.noexc731
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.thread932:                                       ; preds = %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  br label %bb.cj

bb.g:                                             ; preds = %.lr.ph1052, %bb.cf
  %indvars.iv1087 = phi i64 [ %i.cn, %.lr.ph1052 ], [ %indvars.iv.next1088, %bb.cf ] ; 17 uses
  %i.cs = load ptr, ptr %i.ap, align 8, !tbaa !406
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %indvars.iv1087
  %i.cu = load i32, ptr %i.aq, align 8, !tbaa !188 ; 2 uses
  %i.cv = shl nuw i32 1, %i.cu
  %i.cw = sitofp i32 %i.cv to double
  %i.cx = fdiv double 1.000000e+00, %i.cw
  %i.cy = fptrunc double %i.cx to float           ; 2 uses
  %i.cz = load <2 x float>, ptr %i.ct, align 4, !tbaa !48
  %i.da = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.cz, %i.db           ; 3 uses
  %i.dd = load i32, ptr %i.ar, align 4, !tbaa !189
  %i.de = icmp eq i32 %i.cu, %i.dd
  br i1 %i.de, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.df = load i8, ptr %i.at, align 8, !tbaa !192, !range !25, !noundef !26
  %i.dg = trunc nuw i8 %i.df to i1
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !407 ; 2 uses
  br i1 %i.dg, label %.sink.split, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.dh = load ptr, ptr %i.as, align 8, !tbaa !407
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.pre.sink = phi ptr [ %i.dh, %bb.i ], [ %.pre, %bb.h ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.i ], [ %i.cy, %bb.h ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv1087
  %i.dj = load <2 x float>, ptr %i.di, align 4, !tbaa !48
  %i.dk = insertelement <2 x float> poison, float %.sink, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.dj, %i.dl
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %i.dn = phi ptr [ %.pre, %bb.h ], [ %.pre.sink, %.sink.split ]
  %.sroa.0810.0 = phi <2 x float> [ %i.dc, %bb.h ], [ %i.dm, %.sink.split ] ; 4 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %indvars.iv1087
  store <2 x float> %.sroa.0810.0, ptr %i.do, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.dp = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.dc)
  %i.dq = fptosi <2 x float> %i.dp to <2 x i32>
  store <2 x i32> %i.dq, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.dr = load i32, ptr %i.m, align 8, !tbaa !186 ; 4 uses
  %i.ds = mul nsw i32 %i.dr, %i.dr
  store i32 %i.ds, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !tbaa !76
  store i32 0, ptr %i.au, align 4, !tbaa !77
  store i32 %i.dr, ptr %i.av, align 4, !tbaa !50
  store i32 %i.dr, ptr %i.aw, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !90
  store i32 -1056833530, ptr %11, align 8, !tbaa !32
  store ptr %i.c, ptr %i.ay, align 8, !tbaa !33
  store i64 4294967297, ptr %i.ax, align 8, !tbaa !46
  %i.dt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.du = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.dv = load i32, ptr %i.az, align 8, !tbaa !190
  %i.dw = load i32, ptr %i.ba, align 4, !tbaa !185
  %i.dx = load i32, ptr %i.m, align 8, !tbaa !186
  %i.dy = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.l, i32 noundef %i.dv, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dw, i32 noundef %i.dx)
          to label %bb.n unwind label %bb.ag

bb.n:                                             ; preds = %bb.m
  br i1 %i.dy, label %bb.q, label %bb.cf

bb.o:                                             ; preds = %bb.j
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ci

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ch

bb.q:                                             ; preds = %bb.n
  %i.eb = load i32, ptr %i.m, align 8, !tbaa !186
  %i.ec = sitofp i32 %i.eb to float
  %i.ed = load <2 x float>, ptr %2, align 8, !tbaa !48
  %i.ee = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fsub <2 x float> %i.ef, %i.ed           ; 4 uses
  store <2 x float> %i.eg, ptr %2, align 8, !tbaa !48
  %i.eh = fadd <2 x float> %i.dc, %i.eg           ; 3 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0
  %i.ej = call float @llvm.floor.f32(float %i.ei)
  %i.ek = extractelement <2 x float> %i.eh, i64 1
  %i.el = call float @llvm.floor.f32(float %i.ek)
  %i.em = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.el, i64 1
  %i.eo = fptosi <2 x float> %i.en to <2 x i32>   ; 4 uses
  %i.ep = extractelement <2 x i32> %i.eo, i64 0   ; 2 uses
  store <2 x i32> %i.eo, ptr %8, align 8, !tbaa !46
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = load i32, ptr %i.bb, align 4, !tbaa !43
  %i.es = load i32, ptr %3, align 8, !tbaa !29
  %i.et = sub nsw i32 %i.er, %i.es
  %i.eu = icmp sle i32 %i.et, %i.ep
  %i.ev = extractelement <2 x i32> %i.eo, i64 1   ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  %or.cond = or i1 %i.ew, %i.eu
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = load i32, ptr %i.bc, align 8, !tbaa !44
  %i.ey = load i32, ptr %i.d, align 4, !tbaa !30  ; 5 uses
  %i.ez = xor i32 %i.ey, -1                       ; 2 uses
  %i.fa = add i32 %i.ex, %i.ez
  %.not = icmp sgt i32 %i.fa, %i.ev
  br i1 %.not, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.fb = load i32, ptr %i.aq, align 8, !tbaa !188
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.u, label %bb.cf

bb.u:                                             ; preds = %bb.t
  %i.fd = load ptr, ptr %i.ck, align 8, !tbaa !182 ; 2 uses
  %.not696 = icmp eq ptr %i.fd, null
  br i1 %.not696, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %indvars.iv1087
  store i8 3, ptr %i.fe, align 1, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ff = load ptr, ptr %i.cl, align 8, !tbaa !183 ; 2 uses
  %.not697 = icmp eq ptr %i.ff, null
  br i1 %.not697, label %bb.cf, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %indvars.iv1087
  store float 0.000000e+00, ptr %i.fg, align 4, !tbaa !48
  br label %bb.cf

bb.y:                                             ; preds = %bb.s
  %i.fh = uitofp <2 x i32> %i.eo to <2 x float>
  %i.fi = fsub <2 x float> %i.eh, %i.fh           ; 3 uses
  %i.fj = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 3 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 0
  %i.fl = extractelement <2 x float> %i.fj, i64 1 ; 2 uses
  %i.fm = fmul float %i.fk, %i.fl
  %i.fn = fmul float %i.fm, 1.638400e+04
  %i.fo = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fo) ; 2 uses
  %i.fq = extractelement <2 x float> %i.fi, i64 0
  %i.fr = fmul float %i.fq, %i.fl
  %i.fs = fmul float %i.fr, 1.638400e+04
  %i.ft = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fu = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ft) ; 2 uses
  %shift = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fj, %shift
  %i.fv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fw = fmul float %i.fv, 1.638400e+04
  %i.fx = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.fy = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fx) ; 2 uses
  %i.fz = add i32 %i.fp, %i.fu
  %i.ga = add i32 %i.fz, %i.fy
  %i.gb = sub i32 16384, %i.ga
  %.sroa.0146.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.0145.0.copyload = load i64, ptr %8, align 8, !tbaa !46
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_NS_6Point_IiEE(i32 noundef %i.fp, i32 noundef %i.fu, i32 noundef %i.fy, i32 noundef %i.gb, i64 %.sroa.0146.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 %.sroa.0145.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.gc = trunc i64 %.sroa.0146.0.copyload to i32 ; 3 uses
  %i.gd = add nsw i32 %i.gc, 8
  %i.ge = mul i32 %i.ey, %i.x
  %i.gf = mul i32 %i.ge, %i.gd
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %13, i32 noundef %i.gf, i32 noundef 1, i32 noundef 3)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #20
  %i.gg = load ptr, ptr %13, align 8, !tbaa !96, !noalias !408 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !98
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, ptr noundef nonnull align 8 dereferenceable(688) %13, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.z
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #20
  br label %bb.ai

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.z
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bd) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.be) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bf) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.gl = load ptr, ptr %i.bg, align 8, !tbaa !184
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %indvars.iv1087
  %i.gn = load i64, ptr %i.gm, align 4            ; 3 uses
  %i.go = load i32, ptr %i.bh, align 4, !tbaa !187
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph1049, label %.thread919

.lr.ph1049:                                       ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.gq = bitcast i64 %i.gn to <2 x float>
  %i.gr = fadd <2 x float> %.sroa.0810.0, %i.eg
  %i.gs = icmp sgt i32 %i.ey, 0                   ; 2 uses
  %i.gt = mul i32 %i.x, %i.gc                     ; 4 uses
  %i.gu = icmp sgt i32 %i.gt, 0                   ; 2 uses
  %i.gv = load i32, ptr %i.b, align 4
  %i.gw = sitofp i32 %i.gv to float               ; 2 uses
  %i.gx = fdiv float 1.000000e+00, %i.gw          ; 2 uses
  %i.gy = fmul nnan float %i.gw, 2.000000e+00
  %wide.trip.count1075 = zext nneg i32 %i.ey to i64
  %wide.trip.count = zext nneg i32 %i.gt to i64
  %wide.trip.count1070 = zext nneg i32 %i.gt to i64
  %wide.trip.count1085 = zext nneg i32 %i.ey to i64
  %wide.trip.count1080 = zext nneg i32 %i.gt to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1049, %bb.ce
  %.05321048 = phi float [ 1.000000e+00, %.lr.ph1049 ], [ %.2534.lcssa, %bb.ce ]
  %.05351047 = phi i32 [ 0, %.lr.ph1049 ], [ %i.agn, %bb.ce ] ; 2 uses
  %.05431045 = phi float [ 0.000000e+00, %.lr.ph1049 ], [ %.6549, %bb.ce ]
  %.05571043 = phi float [ 0.000000e+00, %.lr.ph1049 ], [ %.6563, %bb.ce ]
  %.sroa.0793.01032 = phi float [ 0.000000e+00, %.lr.ph1049 ], [ %i.aeu, %bb.ce ]
  %.sroa.0795.01031 = phi float [ 0.000000e+00, %.lr.ph1049 ], [ %i.afl, %bb.ce ]
  %.sroa.6796.01030 = phi float [ 0.000000e+00, %.lr.ph1049 ], [ %i.agq, %bb.ce ]
  %.sroa.0810.11029 = phi <2 x float> [ %i.gr, %.lr.ph1049 ], [ %i.afa, %bb.ce ] ; 4 uses
  %i.gz = phi <2 x float> [ zeroinitializer, %.lr.ph1049 ], [ %i.vj, %bb.ce ]
  %i.ha = phi <2 x float> [ zeroinitializer, %.lr.ph1049 ], [ %i.vk, %bb.ce ]
  %i.hb = phi <2 x float> [ %i.gq, %.lr.ph1049 ], [ %i.afk, %bb.ce ] ; 7 uses
  %i.hc = phi <4 x float> [ zeroinitializer, %.lr.ph1049 ], [ %i.vl, %bb.ce ]
  %.sroa.0810.0.vec.extract = extractelement <2 x float> %.sroa.0810.11029, i64 0
  %.sroa.0810.4.vec.extract828 = extractelement <2 x float> %.sroa.0810.11029, i64 1
  %i.hd = call float @llvm.floor.f32(float %.sroa.0810.0.vec.extract)
  %i.he = call float @llvm.floor.f32(float %.sroa.0810.4.vec.extract828)
  %i.hf = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hg = insertelement <2 x float> %i.hf, float %i.he, i64 1
  %i.hh = fptosi <2 x float> %i.hg to <2 x i32>   ; 3 uses
  %i.hi = extractelement <2 x i32> %i.hh, i64 0   ; 4 uses
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = load i32, ptr %i.bi, align 4, !tbaa !43
  %i.hl = sub nsw i32 %i.hk, %i.gc
  %i.hm = icmp sle i32 %i.hl, %i.hi
  %i.hn = extractelement <2 x i32> %i.hh, i64 1   ; 4 uses
  %i.ho = icmp slt i32 %i.hn, 0
  %or.cond5 = or i1 %i.ho, %i.hm
  br i1 %or.cond5, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hp = load i32, ptr %i.bj, align 8, !tbaa !44
  %i.hq = add i32 %i.hp, %i.ez
  %.not670 = icmp sgt i32 %i.hq, %i.hn
  br i1 %.not670, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.hr = load i32, ptr %i.aq, align 8, !tbaa !188 ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.ae, label %thread-pre-split

bb.ae:                                            ; preds = %bb.ad
  %i.ht = load ptr, ptr %i.ck, align 8, !tbaa !182 ; 2 uses
  %.not695 = icmp eq ptr %i.ht, null
  br i1 %.not695, label %.thread919, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 %indvars.iv1087
  store i8 3, ptr %i.hu, align 1, !tbaa !39
  %.pr.pre = load i32, ptr %i.aq, align 8, !tbaa !188
  br label %thread-pre-split

bb.ag:                                            ; preds = %bb.m
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ah:                                            ; preds = %bb.y
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ah
  %.pn668 = phi { ptr, i32 } [ %i.gk, %.body ], [ %i.hw, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.cg

thread-pre-split:                                 ; preds = %bb.af, %bb.ad
  %i.hx = phi i32 [ %i.hr, %bb.ad ], [ %.pr.pre, %bb.af ]
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %bb.aj, label %.thread919

bb.aj:                                            ; preds = %thread-pre-split
  %i.hz = load ptr, ptr %i.as, align 8, !tbaa !407
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %indvars.iv1087
  store <2 x float> %.sroa.0810.0, ptr %i.ia, align 4, !tbaa !48
  %i.ib = load ptr, ptr %i.bg, align 8, !tbaa !184
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv1087
  store i64 %i.gn, ptr %i.ic, align 4, !tbaa !48
  br label %.thread919

bb.ak:                                            ; preds = %bb.ac
  %i.id = uitofp <2 x i32> %i.hh to <2 x float>
  %i.ie = fsub <2 x float> %.sroa.0810.11029, %i.id ; 3 uses
  %i.if = fsub <2 x float> splat (float 1.000000e+00), %i.ie ; 3 uses
  %i.ig = extractelement <2 x float> %i.if, i64 0
  %i.ih = extractelement <2 x float> %i.if, i64 1 ; 2 uses
  %i.ii = fmul float %i.ig, %i.ih
  %i.ij = fmul float %i.ii, 1.638400e+04
  %i.ik = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.il = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ik) ; 4 uses
  %i.im = extractelement <2 x float> %i.ie, i64 0
  %i.in = fmul float %i.im, %i.ih
  %i.io = fmul float %i.in, 1.638400e+04
  %i.ip = insertelement <4 x float> poison, float %i.io, i64 0
  %i.iq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ip) ; 4 uses
  %shift1143 = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1144 = fmul <2 x float> %shift1143, %i.if
  %i.ir = extractelement <2 x float> %foldExtExtBinop1144, i64 0
  %i.is = fmul float %i.ir, 1.638400e+04
  %i.it = insertelement <4 x float> poison, float %i.is, i64 0
  %i.iu = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.it) ; 4 uses
  %i.iv = add i32 %i.il, %i.iq
  %i.iw = add i32 %i.iv, %i.iu
  %i.ix = sub i32 16384, %i.iw                    ; 3 uses
  %i.iy = icmp eq i32 %.05351047, 0               ; 4 uses
  br i1 %i.iy, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.ak
  br i1 %i.gs, label %.lr.ph957, label %._crit_edge958

.lr.ph957:                                        ; preds = %.preheader
  %i.iz = mul nuw nsw i32 %i.x, %i.hi
  %i.ja = load i32, ptr %i.bk, align 4, !tbaa !72
  %i.jb = icmp slt i32 %i.ja, 2
  %i.jc = load ptr, ptr %i.bl, align 8, !tbaa !79 ; 3 uses
  %i.jd = zext nneg i32 %i.iz to i64              ; 2 uses
  %i.je = load i32, ptr %i.bo, align 4, !tbaa !72
  %i.jf = icmp slt i32 %i.je, 2
  %i.jg = load ptr, ptr %i.bp, align 8, !tbaa !79
  %i.jh = load i32, ptr %i.br, align 4, !tbaa !72
  %i.ji = icmp slt i32 %i.jh, 2
  %i.jj = load ptr, ptr %i.bs, align 8, !tbaa !79
  %i.jk = zext nneg i32 %i.hn to i64
  %i.jl = extractelement <2 x float> %i.hb, i64 0
  %i.jm = extractelement <2 x float> %i.hb, i64 1
  %i.jn = extractelement <2 x float> %i.hb, i64 0
  %i.jo = extractelement <2 x float> %i.hb, i64 1
  br label %bb.al

._crit_edge958:                                   ; preds = %._crit_edge, %.preheader
  %.0531.lcssa = phi i32 [ 0, %.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store i32 0, ptr %15, align 4, !tbaa !76
  store i32 0, ptr %i.ca, align 4, !tbaa !77
  store i32 1, ptr %i.cb, align 4, !tbaa !50
  store i32 %.0531.lcssa, ptr %i.cc, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 4 dereferenceable(16) %15)
          to label %bb.ax unwind label %bb.bb

bb.al:                                            ; preds = %.lr.ph957, %._crit_edge
  %indvars.iv1072 = phi i64 [ 0, %.lr.ph957 ], [ %indvars.iv.next1073, %._crit_edge ] ; 4 uses
  %.0531955 = phi i32 [ 0, %.lr.ph957 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  br i1 %i.jb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jp = load i64, ptr %i.bm, align 8, !tbaa !84
  %i.jq = mul i64 %i.jp, %i.jd
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jq ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739

bb.an:                                            ; preds = %bb.al
  %i.js = add nuw nsw i64 %indvars.iv1072, %i.jk  ; 2 uses
  %i.jt = load i64, ptr %i.bm, align 8, !tbaa !84 ; 2 uses
  %i.ju = mul i64 %i.jt, %i.js
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ju
  %i.jw = load i64, ptr %i.bn, align 8, !tbaa !84
  %i.jx = mul i64 %i.jw, %i.jd                    ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jx
  %i.jz = add nuw nsw i64 %i.js, 1
  %i.ka = mul i64 %i.jt, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jx
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739:                ; preds = %bb.am, %bb.an
  %.0.i912 = phi ptr [ %i.jr, %bb.am ], [ %i.jy, %bb.an ] ; 4 uses
  %.0.i738 = phi ptr [ %i.jr, %bb.am ], [ %i.kc, %bb.an ] ; 4 uses
  %i.kd = load i64, ptr %i.bq, align 8
  %i.ke = mul i64 %i.kd, %indvars.iv1072
  %.0.i740.idx = select i1 %i.jf, i64 0, i64 %i.ke
  %.0.i740 = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.0.i740.idx ; 2 uses
  br i1 %i.gu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739
  %i.kf = load i64, ptr %i.bt, align 8
  %i.kg = mul i64 %i.kf, %indvars.iv1072
  %.0.i741.idx = select i1 %i.ji, i64 0, i64 %i.kg
  %.0.i741 = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.0.i741.idx ; 2 uses
  %i.kh = load i32, ptr %i.bu, align 4
  %.fr1053 = freeze i32 %i.kh
  %i.ki = icmp slt i32 %.fr1053, 2
  %i.kj = load i32, ptr %12, align 8
  %i.kk = and i32 %i.kj, 16384
  %i.kl = icmp ne i32 %i.kk, 0
  %i.km = load i32, ptr %i.bw, align 8
  %i.kn = icmp eq i32 %i.km, 1
  %i.ko = load i32, ptr %i.bx, align 4            ; 3 uses
  %i.kp = load ptr, ptr %i.by, align 8            ; 4 uses
  %i.kq = load i64, ptr %i.bz, align 8            ; 2 uses
  br i1 %i.ki, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ap
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %bb.ap ], [ 0, %.lr.ph ] ; 5 uses
  %.0529953.us = phi ptr [ %i.mf, %bb.ap ], [ %.0.i741, %.lr.ph ] ; 3 uses
  %.1952.us = phi i32 [ %.2.us, %bb.ap ], [ %.0531955, %.lr.ph ] ; 3 uses
  %i.kr = load i16, ptr %.0529953.us, align 2, !tbaa !86
  %i.ks = icmp eq i16 %i.kr, 0
  br i1 %i.ks, label %bb.ao, label %_ZN2cv3Mat2atIsEERT_i.exit.us

bb.ao:                                            ; preds = %.lr.ph.split.us
  %i.kt = getelementptr inbounds nuw i8, ptr %.0529953.us, i64 2
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !86
  %i.kv = icmp eq i16 %i.ku, 0
  br i1 %i.kv, label %bb.ap, label %_ZN2cv3Mat2atIsEERT_i.exit.us

_ZN2cv3Mat2atIsEERT_i.exit.us:                    ; preds = %bb.ao, %.lr.ph.split.us
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i912, i64 %indvars.iv1067
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !39
  %i.ky = zext i8 %i.kx to i32
  %i.kz = mul nsw i32 %i.il, %i.ky
  %i.la = add nuw nsw i64 %indvars.iv1067, %i.cm  ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.i912, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !39
  %i.ld = zext i8 %i.lc to i32
  %i.le = mul nsw i32 %i.iq, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i738, i64 %indvars.iv1067
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !39
  %i.lh = zext i8 %i.lg to i32
  %i.li = mul nsw i32 %i.iu, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %.0.i738, i64 %i.la
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !39
  %i.ll = zext i8 %i.lk to i32
  %i.lm = mul nsw i32 %i.ix, %i.ll
  %i.ln = add i32 %i.kz, 256
  %i.lo = add i32 %i.ln, %i.le
  %i.lp = add i32 %i.lo, %i.li
  %i.lq = add i32 %i.lp, %i.lm
  %i.lr = ashr i32 %i.lq, 9
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %.0.i740, i64 %indvars.iv1067
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !86 ; 2 uses
  %i.lu = sext i16 %i.lt to i32
  %i.lv = sub nsw i32 %i.lr, %i.lu
  %i.lw = sitofp i32 %i.lv to float
  %i.lx = sitofp i16 %i.lt to float
  %i.ly = call float @llvm.fmuladd.f32(float %i.lx, float %i.jn, float %i.lw)
  %i.lz = fadd float %i.jo, %i.ly
  %i.ma = fptosi float %i.lz to i32
  %i.mb = trunc i32 %i.ma to i16
  %i.mc = add nsw i32 %.1952.us, 1
  %i.md = sext i32 %.1952.us to i64
  %i.me = getelementptr inbounds [2 x i8], ptr %i.kp, i64 %i.md
  store i16 %i.mb, ptr %i.me, align 2, !tbaa !86
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN2cv3Mat2atIsEERT_i.exit.us, %bb.ao
  %.2.us = phi i32 [ %.1952.us, %bb.ao ], [ %i.mc, %_ZN2cv3Mat2atIsEERT_i.exit.us ] ; 2 uses
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0529953.us, i64 4
  %exitcond1071.not = icmp eq i64 %indvars.iv.next1068, %wide.trip.count1070
  br i1 %exitcond1071.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !400

._crit_edge:                                      ; preds = %bb.aw, %bb.ap, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739
  %.1.lcssa = phi i32 [ %.0531955, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739 ], [ %.2.us, %bb.ap ], [ %.2, %bb.aw ] ; 2 uses
  %indvars.iv.next1073 = add nuw nsw i64 %indvars.iv1072, 1 ; 2 uses
  %exitcond1076.not = icmp eq i64 %indvars.iv.next1073, %wide.trip.count1075
  br i1 %exitcond1076.not, label %._crit_edge958, label %bb.al, !llvm.loop !401

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aw ], [ 0, %.lr.ph ] ; 5 uses
  %.0529953 = phi ptr [ %i.og, %bb.aw ], [ %.0.i741, %.lr.ph ] ; 3 uses
  %.1952 = phi i32 [ %.2, %bb.aw ], [ %.0531955, %.lr.ph ] ; 6 uses
  %i.mg = load i16, ptr %.0529953, align 2, !tbaa !86
  %i.mh = icmp eq i16 %i.mg, 0
  br i1 %i.mh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.split
  %i.mi = getelementptr inbounds nuw i8, ptr %.0529953, i64 2
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !86
  %i.mk = icmp eq i16 %i.mj, 0
  br i1 %i.mk, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.split
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i912, i64 %indvars.iv
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !39
  %i.mn = zext i8 %i.mm to i32
  %i.mo = mul nsw i32 %i.il, %i.mn
  %i.mp = add nuw nsw i64 %indvars.iv, %i.cm      ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.i912, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !39
  %i.ms = zext i8 %i.mr to i32
  %i.mt = mul nsw i32 %i.iq, %i.ms
end_hunk_4
begin_hunk_5_@_ZNK2cv7optflow6berlof6radial14TrackerInvokerclERKNS_5RangeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.cu

bb.i:                                             ; preds = %bb.d
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit1027

bb.j:                                             ; preds = %_ZN2cv10AutoBufferIsLm520EEC2Em.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.k:                                             ; preds = %bb.e
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.l:                                             ; preds = %.lr.ph1954, %bb.cn
  %indvars.iv2163 = phi i64 [ %i.cq, %.lr.ph1954 ], [ %indvars.iv.next2164, %bb.cn ] ; 19 uses
  %.sroa.17.01941 = phi float [ 0.000000e+00, %.lr.ph1954 ], [ %.sroa.17.8, %bb.cn ] ; 7 uses
  %.sroa.61267.01937 = phi float [ 0.000000e+00, %.lr.ph1954 ], [ %.sroa.61267.8, %bb.cn ] ; 7 uses
  %i.cx = phi <2 x float> [ zeroinitializer, %.lr.ph1954 ], [ %i.awv, %bb.cn ] ; 6 uses
  %i.cy = phi <2 x float> [ zeroinitializer, %.lr.ph1954 ], [ %i.aww, %bb.cn ] ; 7 uses
  %i.cz = phi <2 x float> [ zeroinitializer, %.lr.ph1954 ], [ %i.awx, %bb.cn ] ; 6 uses
  %i.da = phi <2 x float> [ zeroinitializer, %.lr.ph1954 ], [ %i.awy, %bb.cn ] ; 7 uses
  %i.db = phi <2 x float> [ zeroinitializer, %.lr.ph1954 ], [ %i.awz, %bb.cn ] ; 7 uses
  %i.dc = phi <2 x float> [ zeroinitializer, %.lr.ph1954 ], [ %i.axa, %bb.cn ] ; 6 uses
  %i.dd = phi <2 x float> [ zeroinitializer, %.lr.ph1954 ], [ %i.axb, %bb.cn ] ; 6 uses
  %i.de = load ptr, ptr %i.as, align 8, !tbaa !426
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %indvars.iv2163
  %i.dg = load i32, ptr %i.at, align 8, !tbaa !205 ; 2 uses
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = sitofp i32 %i.dh to double
  %i.dj = fdiv double 1.000000e+00, %i.di
  %i.dk = fptrunc double %i.dj to float           ; 2 uses
  %i.dl = load <2 x float>, ptr %i.df, align 4, !tbaa !48
  %i.dm = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.dl, %i.dn           ; 3 uses
  %i.dp = load i32, ptr %i.au, align 4, !tbaa !206
  %i.dq = icmp eq i32 %i.dg, %i.dp
  br i1 %i.dq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dr = load i8, ptr %i.aw, align 8, !tbaa !209, !range !25, !noundef !26
  %i.ds = trunc nuw i8 %i.dr to i1
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !427 ; 2 uses
  br i1 %i.ds, label %.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dt = load ptr, ptr %i.av, align 8, !tbaa !427
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.pre.sink = phi ptr [ %i.dt, %bb.n ], [ %.pre, %bb.m ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.n ], [ %i.dk, %bb.m ]
  %i.du = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv2163
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !48
  %i.dw = insertelement <2 x float> poison, float %.sink, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x float> %i.dv, %i.dx
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m
  %i.dz = phi ptr [ %.pre, %bb.m ], [ %.pre.sink, %.sink.split ]
  %.sroa.01198.0 = phi <2 x float> [ %i.do, %bb.m ], [ %i.dy, %.sink.split ] ; 4 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %indvars.iv2163
  store <2 x float> %.sroa.01198.0, ptr %i.ea, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.eb = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.do)
  %i.ec = fptosi <2 x float> %i.eb to <2 x i32>
  store <2 x i32> %i.ec, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ed = load i32, ptr %i.m, align 8, !tbaa !203 ; 4 uses
  %i.ee = mul nsw i32 %i.ed, %i.ed
  store i32 %i.ee, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !76
  store i32 0, ptr %i.ax, align 4, !tbaa !77
  store i32 %i.ed, ptr %i.ay, align 4, !tbaa !50
  store i32 %i.ed, ptr %i.az, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !90
  store i32 -1056833530, ptr %12, align 8, !tbaa !32
  store ptr %i.c, ptr %i.bb, align 8, !tbaa !33
  store i64 4294967297, ptr %i.ba, align 8, !tbaa !46
  %i.ef = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.eg = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.eh = load i32, ptr %i.bc, align 8, !tbaa !207
  %i.ei = load i32, ptr %i.bd, align 4, !tbaa !202
  %i.ej = load i32, ptr %i.m, align 8, !tbaa !203
  %i.ek = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.l, i32 noundef %i.eh, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.ei, i32 noundef %i.ej)
          to label %bb.s unwind label %bb.an

bb.s:                                             ; preds = %bb.r
  br i1 %i.ek, label %bb.v, label %bb.cn

bb.t:                                             ; preds = %bb.o
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.cq

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.cp

bb.v:                                             ; preds = %bb.s
  %i.en = load i32, ptr %i.m, align 8, !tbaa !203
  %i.eo = sitofp i32 %i.en to float
  %i.ep = load <2 x float>, ptr %2, align 8, !tbaa !48
  %i.eq = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fsub <2 x float> %i.er, %i.ep           ; 5 uses
  store <2 x float> %i.es, ptr %2, align 8, !tbaa !48
  %i.et = fadd <2 x float> %i.do, %i.es           ; 3 uses
  %i.eu = extractelement <2 x float> %i.et, i64 0
  %i.ev = call float @llvm.floor.f32(float %i.eu)
  %i.ew = extractelement <2 x float> %i.et, i64 1
  %i.ex = call float @llvm.floor.f32(float %i.ew)
  %i.ey = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.ex, i64 1
  %i.fa = fptosi <2 x float> %i.ez to <2 x i32>   ; 4 uses
  %i.fb = extractelement <2 x i32> %i.fa, i64 0   ; 2 uses
  store <2 x i32> %i.fa, ptr %9, align 8, !tbaa !46
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fd = load i32, ptr %i.be, align 4, !tbaa !43
  %i.fe = load i32, ptr %3, align 8, !tbaa !29
  %i.ff = sub nsw i32 %i.fd, %i.fe
  %i.fg = icmp sle i32 %i.ff, %i.fb
  %i.fh = extractelement <2 x i32> %i.fa, i64 1   ; 2 uses
  %i.fi = icmp slt i32 %i.fh, 0
  %or.cond = or i1 %i.fi, %i.fg
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = load i32, ptr %i.bf, align 8, !tbaa !44
  %i.fk = load i32, ptr %i.d, align 4, !tbaa !30  ; 5 uses
  %i.fl = xor i32 %i.fk, -1                       ; 2 uses
  %i.fm = add i32 %i.fj, %i.fl
  %.not = icmp sgt i32 %i.fm, %i.fh
  br i1 %.not, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.fn = load i32, ptr %i.at, align 8, !tbaa !205
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.z, label %bb.cn

bb.z:                                             ; preds = %bb.y
  %i.fp = load ptr, ptr %i.cn, align 8, !tbaa !199 ; 2 uses
  %.not940 = icmp eq ptr %i.fp, null
  br i1 %.not940, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %indvars.iv2163
  store i8 3, ptr %i.fq, align 1, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fr = load ptr, ptr %i.co, align 8, !tbaa !200 ; 2 uses
  %.not941 = icmp eq ptr %i.fr, null
  br i1 %.not941, label %bb.cn, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %indvars.iv2163
  store float 0.000000e+00, ptr %i.fs, align 4, !tbaa !48
  br label %bb.cn

bb.ad:                                            ; preds = %bb.x
  %i.ft = uitofp <2 x i32> %i.fa to <2 x float>
  %i.fu = fsub <2 x float> %i.et, %i.ft           ; 3 uses
  %i.fv = fsub <2 x float> splat (float 1.000000e+00), %i.fu ; 3 uses
  %i.fw = extractelement <2 x float> %i.fv, i64 0
  %i.fx = extractelement <2 x float> %i.fv, i64 1 ; 2 uses
  %i.fy = fmul float %i.fw, %i.fx
  %i.fz = fmul float %i.fy, 1.638400e+04
  %i.ga = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.gb = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ga) ; 2 uses
  %i.gc = extractelement <2 x float> %i.fu, i64 0
  %i.gd = fmul float %i.gc, %i.fx
  %i.ge = fmul float %i.gd, 1.638400e+04
  %i.gf = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gg = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gf) ; 2 uses
  %shift = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fv, %shift
  %i.gh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gi = fmul float %i.gh, 1.638400e+04
  %i.gj = insertelement <4 x float> poison, float %i.gi, i64 0
  %i.gk = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gj) ; 2 uses
  %i.gl = add i32 %i.gb, %i.gg
  %i.gm = add i32 %i.gl, %i.gk
  %i.gn = sub i32 16384, %i.gm
  %.sroa.0316.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.0315.0.copyload = load i64, ptr %9, align 8, !tbaa !46
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_NS_6Point_IiEE(i32 noundef %i.gb, i32 noundef %i.gg, i32 noundef %i.gk, i32 noundef %i.gn, i64 %.sroa.0316.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.0315.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.go = trunc i64 %.sroa.0316.0.copyload to i32 ; 3 uses
  %i.gp = add nsw i32 %i.go, 8
  %i.gq = mul i32 %i.fk, %i.x
  %i.gr = mul i32 %i.gq, %i.gp
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i32 noundef %i.gr, i32 noundef 1, i32 noundef 3)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #20
  %i.gs = load ptr, ptr %14, align 8, !tbaa !96, !noalias !428 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !98
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  invoke void %i.gv(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef -1)
          to label %bb.af unwind label %.body

.body:                                            ; preds = %bb.ae
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #20
  br label %bb.ap

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bg) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bh) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bi) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.gx = load ptr, ptr %i.bj, align 8, !tbaa !201
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %indvars.iv2163
  %i.gz = load <2 x float>, ptr %i.gy, align 4    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #20
  %i.ha = load i32, ptr %i.bk, align 4, !tbaa !204
  %i.hb = icmp sgt i32 %i.ha, 0
  %i.hc = extractelement <2 x float> %i.cy, i64 0
  %i.hd = extractelement <2 x float> %i.cy, i64 1
  %i.he = extractelement <2 x float> %i.da, i64 0
  %i.hf = extractelement <2 x float> %i.da, i64 1
  %i.hg = extractelement <2 x float> %i.db, i64 0
  %i.hh = extractelement <2 x float> %i.db, i64 1
  br i1 %i.hb, label %.lr.ph1919, label %.thread1515

.lr.ph1919:                                       ; preds = %bb.af
  %i.hi = fadd <2 x float> %.sroa.01198.0, %i.es
  %i.hj = icmp sgt i32 %i.fk, 0                   ; 2 uses
  %i.hk = mul i32 %i.x, %i.go                     ; 4 uses
  %i.hl = icmp sgt i32 %i.hk, 0                   ; 2 uses
  %i.hm = load i32, ptr %i.b, align 4             ; 2 uses
  %i.hn = sitofp i32 %i.hm to float
  %i.ho = fdiv float 1.000000e+00, %i.hn          ; 2 uses
  %i.hp = fneg float %i.ho
  %i.hq = shl nsw i32 %i.hm, 1
  %i.hr = sitofp i32 %i.hq to float
  %wide.trip.count2151 = zext nneg i32 %i.fk to i64
  %wide.trip.count = zext nneg i32 %i.hk to i64
  %wide.trip.count2146 = zext nneg i32 %i.hk to i64
  %wide.trip.count2161 = zext nneg i32 %i.fk to i64
  %wide.trip.count2156 = zext nneg i32 %i.hk to i64
  %i.hs = insertelement <2 x float> poison, float %.sroa.61267.01937, i64 0
  %i.ht = insertelement <2 x float> %i.hs, float %.sroa.17.01941, i64 1
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph1919, %bb.cm
  %.07201917 = phi float [ 1.000000e+00, %.lr.ph1919 ], [ %.51503, %bb.cm ] ; 2 uses
  %.07241916 = phi i32 [ 0, %.lr.ph1919 ], [ %i.awf, %bb.cm ] ; 3 uses
  %.07521912 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %.87601499, %bb.cm ] ; 2 uses
  %.08131906 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %.98221493, %bb.cm ] ; 2 uses
  %.sroa.151131.01905 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %.sroa.151131.21489, %bb.cm ]
  %.sroa.121129.01904 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %.sroa.121129.21488, %bb.cm ]
  %.sroa.8.01903 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %.sroa.8.21487, %bb.cm ]
  %.sroa.01124.01902 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %.sroa.01124.21486, %bb.cm ]
  %.sroa.81146.01895 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %.sroa.81146.21479, %bb.cm ]
  %.sroa.01143.01894 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %.sroa.01143.21478, %bb.cm ]
  %.sroa.01173.01883 = phi float [ 1.000000e+00, %.lr.ph1919 ], [ %i.awk, %bb.cm ]
  %.sroa.01178.01882 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %i.awi, %bb.cm ]
  %.sroa.61179.01881 = phi float [ 0.000000e+00, %.lr.ph1919 ], [ %i.awj, %bb.cm ]
  %.sroa.01198.11878 = phi <2 x float> [ %i.hi, %.lr.ph1919 ], [ %i.asy, %bb.cm ] ; 7 uses
  %.sroa.17.11867 = phi float [ %.sroa.17.01941, %.lr.ph1919 ], [ %.sroa.17.51461, %bb.cm ] ; 8 uses
  %.sroa.61267.11863 = phi float [ %.sroa.61267.01937, %.lr.ph1919 ], [ %.sroa.61267.51457, %bb.cm ] ; 7 uses
  %i.hu = phi <2 x float> [ zeroinitializer, %.lr.ph1919 ], [ %i.aqn, %bb.cm ] ; 2 uses
  %i.hv = phi <2 x float> [ %i.cx, %.lr.ph1919 ], [ %i.aqo, %bb.cm ] ; 8 uses
  %i.hw = phi <2 x float> [ %i.cy, %.lr.ph1919 ], [ %i.aqp, %bb.cm ] ; 4 uses
  %i.hx = phi <2 x float> [ %i.dd, %.lr.ph1919 ], [ %i.arc, %bb.cm ] ; 8 uses
  %i.hy = phi <2 x float> [ %i.ht, %.lr.ph1919 ], [ %i.aqq, %bb.cm ] ; 2 uses
  %i.hz = phi <2 x float> [ %i.cz, %.lr.ph1919 ], [ %i.aqr, %bb.cm ] ; 8 uses
  %i.ia = phi <2 x float> [ %i.da, %.lr.ph1919 ], [ %i.aqs, %bb.cm ] ; 4 uses
  %i.ib = phi <2 x float> [ %i.db, %.lr.ph1919 ], [ %i.aqt, %bb.cm ] ; 4 uses
  %i.ic = phi <2 x float> [ %i.dc, %.lr.ph1919 ], [ %i.aqu, %bb.cm ] ; 8 uses
  %i.id = phi <2 x float> [ %i.gz, %.lr.ph1919 ], [ %i.ate, %bb.cm ] ; 8 uses
  %i.ie = phi <4 x float> [ zeroinitializer, %.lr.ph1919 ], [ %i.aqv, %bb.cm ]
  %i.if = phi <4 x float> [ zeroinitializer, %.lr.ph1919 ], [ %i.aqw, %bb.cm ] ; 2 uses
  %i.ig = phi <2 x float> [ zeroinitializer, %.lr.ph1919 ], [ %i.aqx, %bb.cm ] ; 2 uses
  %i.ih = phi <2 x i32> [ zeroinitializer, %.lr.ph1919 ], [ %i.aqy, %bb.cm ] ; 4 uses
  %i.ii = phi <2 x float> [ zeroinitializer, %.lr.ph1919 ], [ %i.aqz, %bb.cm ]
  %i.ij = phi <2 x float> [ zeroinitializer, %.lr.ph1919 ], [ %i.arb, %bb.cm ]
  %i.ik = phi <2 x float> [ zeroinitializer, %.lr.ph1919 ], [ %i.ard, %bb.cm ]
  %i.il = extractelement <2 x float> %i.ib, i64 1 ; 7 uses
  %i.im = extractelement <2 x float> %i.ib, i64 0 ; 7 uses
  %i.in = extractelement <2 x float> %i.ia, i64 1 ; 7 uses
  %i.io = extractelement <2 x float> %i.ia, i64 0 ; 8 uses
  %i.ip = extractelement <2 x float> %i.hw, i64 1 ; 7 uses
  %i.iq = extractelement <2 x float> %i.hw, i64 0 ; 7 uses
  %.sroa.01198.0.vec.extract = extractelement <2 x float> %.sroa.01198.11878, i64 0
  %.sroa.01198.4.vec.extract1232 = extractelement <2 x float> %.sroa.01198.11878, i64 1 ; 2 uses
  %i.ir = icmp ne i32 %.07241916, 0               ; 5 uses
  %.pre2169 = call float @llvm.floor.f32(float %.sroa.01198.0.vec.extract)
  %.pre2170 = fptosi float %.pre2169 to i32       ; 7 uses
  %i.is = extractelement <2 x i32> %i.ih, i64 0
  %.not897 = icmp eq i32 %i.is, %.pre2170
  %or.cond2379 = select i1 %i.ir, i1 %.not897, i1 false
  br i1 %or.cond2379, label %bb.ah, label %._crit_edge2168

bb.ah:                                            ; preds = %bb.ag
  %i.it = uitofp <2 x i32> %i.ih to <2 x float>
  %i.iu = fsub <2 x float> %.sroa.01198.11878, %i.it ; 3 uses
  %i.iv = extractelement <2 x float> %i.iu, i64 1 ; 2 uses
  %i.iw = extractelement <2 x float> %i.iu, i64 0 ; 2 uses
  %i.ix = fmul float %i.iv, %i.iw
  %i.iy = call float @llvm.floor.f32(float %.sroa.01198.4.vec.extract1232)
  %i.iz = fptosi float %i.iy to i32
  %i.ja = extractelement <2 x i32> %i.ih, i64 1
  %.not898 = icmp eq i32 %i.ja, %i.iz
  %i.jb = and i32 %.07241916, 1
  %.not899 = icmp eq i32 %i.jb, 0
  %or.cond942 = and i1 %.not898, %.not899
  br i1 %or.cond942, label %.thread1403, label %._crit_edge2168

._crit_edge2168:                                  ; preds = %bb.ag, %bb.ah
  %i.jc = call float @llvm.floor.f32(float %.sroa.01198.4.vec.extract1232)
  %i.jd = fptosi float %i.jc to i32               ; 6 uses
  %i.je = icmp slt i32 %.pre2170, 0
  br i1 %i.je, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge2168
  %i.jf = load i32, ptr %i.bl, align 4, !tbaa !43
  %i.jg = sub nsw i32 %i.jf, %i.go
  %i.jh = icmp sle i32 %i.jg, %.pre2170
  %i.ji = icmp slt i32 %i.jd, 0
  %or.cond6 = or i1 %i.ji, %i.jh
  br i1 %or.cond6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jj = load i32, ptr %i.bm, align 8, !tbaa !44
  %i.jk = add i32 %i.jj, %i.fl
  %.not900 = icmp sgt i32 %i.jk, %i.jd
  br i1 %.not900, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge2168
  %i.jl = load i32, ptr %i.at, align 8, !tbaa !205 ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.al, label %thread-pre-split

bb.al:                                            ; preds = %bb.ak
  %i.jn = load ptr, ptr %i.cn, align 8, !tbaa !199 ; 2 uses
  %.not939 = icmp eq ptr %i.jn, null
  br i1 %.not939, label %.thread1515, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %indvars.iv2163
  store i8 3, ptr %i.jo, align 1, !tbaa !39
  %.pr.pre = load i32, ptr %i.at, align 8, !tbaa !205
  br label %thread-pre-split

bb.an:                                            ; preds = %bb.r
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ao:                                            ; preds = %bb.ad
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %bb.ao
  %.pn895 = phi { ptr, i32 } [ %i.gw, %.body ], [ %i.jq, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.co

thread-pre-split:                                 ; preds = %bb.am, %bb.ak
  %i.jr = phi i32 [ %i.jl, %bb.ak ], [ %.pr.pre, %bb.am ]
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %bb.aq, label %.thread1515

bb.aq:                                            ; preds = %thread-pre-split
  %i.jt = load ptr, ptr %i.av, align 8, !tbaa !427
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %indvars.iv2163
  store <2 x float> %.sroa.01198.0, ptr %i.ju, align 4, !tbaa !48
  %i.jv = load ptr, ptr %i.bj, align 8, !tbaa !201
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %indvars.iv2163
  store <2 x float> %i.gz, ptr %i.jw, align 4, !tbaa !48
  br label %.thread1515

bb.ar:                                            ; preds = %bb.aj
  %i.jx = insertelement <2 x i32> poison, i32 %.pre2170, i64 0
  %i.jy = insertelement <2 x i32> %i.jx, i32 %i.jd, i64 1 ; 3 uses
  %i.jz = uitofp <2 x i32> %i.jy to <2 x float>
  %i.ka = fsub <2 x float> %.sroa.01198.11878, %i.jz ; 5 uses
  %i.kb = extractelement <2 x float> %i.ka, i64 1 ; 4 uses
  %i.kc = extractelement <2 x float> %i.ka, i64 0 ; 4 uses
  %i.kd = fmul float %i.kc, %i.kb                 ; 2 uses
  %i.ke = fsub <2 x float> splat (float 1.000000e+00), %i.ka ; 2 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0 ; 2 uses
  %i.kg = extractelement <2 x float> %i.ke, i64 1 ; 2 uses
  %i.kh = fmul float %i.kf, %i.kg
  %i.ki = fmul float %i.kh, 1.638400e+04
  %i.kj = insertelement <4 x float> poison, float %i.ki, i64 0
  %i.kk = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.kj) ; 4 uses
  %i.kl = fmul float %i.kc, %i.kg
  %i.km = fmul float %i.kl, 1.638400e+04
  %i.kn = insertelement <4 x float> poison, float %i.km, i64 0
  %i.ko = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.kn) ; 4 uses
  %i.kp = fmul float %i.kb, %i.kf
  %i.kq = fmul float %i.kp, 1.638400e+04
  %i.kr = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.ks = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.kr) ; 4 uses
  %i.kt = add i32 %i.kk, %i.ko
  %i.ku = add i32 %i.kt, %i.ks
  %i.kv = sub i32 16384, %i.ku                    ; 3 uses
  br i1 %i.ir, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ar
  br i1 %i.hj, label %.lr.ph1743, label %._crit_edge1744

.lr.ph1743:                                       ; preds = %.preheader
  %i.kw = mul nuw nsw i32 %i.x, %.pre2170
  %i.kx = load i32, ptr %i.bn, align 4, !tbaa !72
  %i.ky = icmp slt i32 %i.kx, 2
  %i.kz = load ptr, ptr %i.bo, align 8, !tbaa !79 ; 3 uses
  %i.la = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.lb = load i32, ptr %i.br, align 4, !tbaa !72
  %i.lc = icmp slt i32 %i.lb, 2
  %i.ld = load ptr, ptr %i.bs, align 8, !tbaa !79
  %i.le = load i32, ptr %i.bu, align 4, !tbaa !72
  %i.lf = icmp slt i32 %i.le, 2
  %i.lg = load ptr, ptr %i.bv, align 8, !tbaa !79
  %i.lh = zext nneg i32 %i.jd to i64
  %i.li = extractelement <2 x float> %i.id, i64 0
  %i.lj = extractelement <2 x float> %i.id, i64 1
  %i.lk = extractelement <2 x float> %i.id, i64 0
  %i.ll = extractelement <2 x float> %i.id, i64 1
  br label %bb.as

._crit_edge1744:                                  ; preds = %._crit_edge, %.preheader
  %.0717.lcssa = phi i32 [ 0, %.preheader ], [ %.1718.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store i32 0, ptr %20, align 4, !tbaa !76
  store i32 0, ptr %i.cd, align 4, !tbaa !77
  store i32 1, ptr %i.ce, align 4, !tbaa !50
  store i32 %.0717.lcssa, ptr %i.cf, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %bb.bc unwind label %bb.bg

bb.as:                                            ; preds = %.lr.ph1743, %._crit_edge
  %indvars.iv2148 = phi i64 [ 0, %.lr.ph1743 ], [ %indvars.iv.next2149, %._crit_edge ] ; 4 uses
  %.07171741 = phi i32 [ 0, %.lr.ph1743 ], [ %.1718.lcssa, %._crit_edge ] ; 3 uses
  br i1 %i.ky, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lm = load i64, ptr %i.bp, align 8, !tbaa !84
  %i.ln = mul i64 %i.lm, %i.la
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.ln ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit990

bb.au:                                            ; preds = %bb.as
  %i.lp = add nuw nsw i64 %indvars.iv2148, %i.lh  ; 2 uses
  %i.lq = load i64, ptr %i.bp, align 8, !tbaa !84 ; 2 uses
  %i.lr = mul i64 %i.lq, %i.lp
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lr
  %i.lt = load i64, ptr %i.bq, align 8, !tbaa !84
  %i.lu = mul i64 %i.lt, %i.la                    ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lu
  %i.lw = add nuw nsw i64 %i.lp, 1
  %i.lx = mul i64 %i.lq, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lu
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit990

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit990:                ; preds = %bb.at, %bb.au
  %.0.i1324 = phi ptr [ %i.lo, %bb.at ], [ %i.lv, %bb.au ] ; 4 uses
  %.0.i989 = phi ptr [ %i.lo, %bb.at ], [ %i.lz, %bb.au ] ; 4 uses
  %i.ma = load i64, ptr %i.bt, align 8
  %i.mb = mul i64 %i.ma, %indvars.iv2148
  %.0.i991.idx = select i1 %i.lc, i64 0, i64 %i.mb
  %.0.i991 = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.0.i991.idx ; 2 uses
  %i.mc = load i64, ptr %i.bw, align 8
  %i.md = mul i64 %i.mc, %indvars.iv2148
  %.0.i994.idx = select i1 %i.lf, i64 0, i64 %i.md
  %.0.i994 = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.0.i994.idx ; 2 uses
  br i1 %i.hl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit990
  %i.me = load i32, ptr %i.bx, align 4
  %.fr1956 = freeze i32 %i.me
  %i.mf = icmp slt i32 %.fr1956, 2
  %i.mg = load i32, ptr %13, align 8
  %i.mh = and i32 %i.mg, 16384
  %i.mi = icmp ne i32 %i.mh, 0
  %i.mj = load i32, ptr %i.bz, align 8
  %i.mk = icmp eq i32 %i.mj, 1
  %i.ml = load i32, ptr %i.ca, align 4            ; 3 uses
  %i.mm = load ptr, ptr %i.cb, align 8            ; 4 uses
  %i.mn = load i64, ptr %i.cc, align 8            ; 2 uses
  br i1 %i.mf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.av
  %indvars.iv2143 = phi i64 [ %indvars.iv.next2144, %bb.av ], [ 0, %.lr.ph ] ; 6 uses
  %.17181739.us = phi i32 [ %.2719.us, %bb.av ], [ %.07171741, %.lr.ph ] ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.0.i994, i64 %indvars.iv2143
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !39
  %i.mq = icmp eq i8 %i.mp, 0
  br i1 %i.mq, label %bb.av, label %_ZN2cv3Mat2atIsEERT_i.exit.us

_ZN2cv3Mat2atIsEERT_i.exit.us:                    ; preds = %.lr.ph.split.us
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.i1324, i64 %indvars.iv2143
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !39
  %i.mt = zext i8 %i.ms to i32
  %i.mu = mul nsw i32 %i.kk, %i.mt
  %i.mv = add nuw nsw i64 %indvars.iv2143, %i.cp  ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.0.i1324, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !39
  %i.my = zext i8 %i.mx to i32
  %i.mz = mul nsw i32 %i.ko, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i989, i64 %indvars.iv2143
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !39
  %i.nc = zext i8 %i.nb to i32
  %i.nd = mul nsw i32 %i.ks, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %.0.i989, i64 %i.mv
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !39
  %i.ng = zext i8 %i.nf to i32
  %i.nh = mul nsw i32 %i.kv, %i.ng
  %i.ni = add i32 %i.mu, 256
  %i.nj = add i32 %i.ni, %i.mz
  %i.nk = add i32 %i.nj, %i.nd
  %i.nl = add i32 %i.nk, %i.nh
  %i.nm = ashr i32 %i.nl, 9
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.0.i991, i64 %indvars.iv2143
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !86 ; 2 uses
  %i.np = sext i16 %i.no to i32
  %i.nq = sub nsw i32 %i.nm, %i.np
  %i.nr = sitofp i32 %i.nq to float
  %i.ns = sitofp i16 %i.no to float
  %i.nt = call float @llvm.fmuladd.f32(float %i.ns, float %i.lk, float %i.nr)
  %i.nu = fadd float %i.ll, %i.nt
  %i.nv = fptosi float %i.nu to i32
  %i.nw = trunc i32 %i.nv to i16
  %i.nx = add nsw i32 %.17181739.us, 1
  %i.ny = sext i32 %.17181739.us to i64
  %i.nz = getelementptr inbounds [2 x i8], ptr %i.mm, i64 %i.ny
  store i16 %i.nw, ptr %i.nz, align 2, !tbaa !86
  br label %bb.av

bb.av:                                            ; preds = %_ZN2cv3Mat2atIsEERT_i.exit.us, %.lr.ph.split.us
  %.2719.us = phi i32 [ %.17181739.us, %.lr.ph.split.us ], [ %i.nx, %_ZN2cv3Mat2atIsEERT_i.exit.us ] ; 2 uses
  %indvars.iv.next2144 = add nuw nsw i64 %indvars.iv2143, 1 ; 2 uses
  %exitcond2147.not = icmp eq i64 %indvars.iv.next2144, %wide.trip.count2146
  br i1 %exitcond2147.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !420

._crit_edge:                                      ; preds = %bb.bb, %bb.av, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit990
  %.1718.lcssa = phi i32 [ %.07171741, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit990 ], [ %.2719.us, %bb.av ], [ %.2719, %bb.bb ] ; 2 uses
  %indvars.iv.next2149 = add nuw nsw i64 %indvars.iv2148, 1 ; 2 uses
  %exitcond2152.not = icmp eq i64 %indvars.iv.next2149, %wide.trip.count2151
  br i1 %exitcond2152.not, label %._crit_edge1744, label %bb.as, !llvm.loop !421

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.bb
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bb ], [ 0, %.lr.ph ] ; 6 uses
  %.17181739 = phi i32 [ %.2719, %bb.bb ], [ %.07171741, %.lr.ph ] ; 6 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.i994, i64 %indvars.iv
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !39
  %i.oc = icmp eq i8 %i.ob, 0
  br i1 %i.oc, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.split
  %i.od = getelementptr inbounds nuw i8, ptr %.0.i1324, i64 %indvars.iv
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !39
  %i.of = zext i8 %i.oe to i32
  %i.og = mul nsw i32 %i.kk, %i.of
  %i.oh = add nuw nsw i64 %indvars.iv, %i.cp      ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i1324, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !39
  %i.ok = zext i8 %i.oj to i32
  %i.ol = mul nsw i32 %i.ko, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i989, i64 %indvars.iv
  %i.on = load i8, ptr %i.om, align 1, !tbaa !39
  %i.oo = zext i8 %i.on to i32
  %i.op = mul nsw i32 %i.ks, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %.0.i989, i64 %i.oh
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !39
  %i.os = zext i8 %i.or to i32
  %i.ot = mul nsw i32 %i.kv, %i.os
  %i.ou = add i32 %i.og, 256
  %i.ov = add i32 %i.ou, %i.ol
  %i.ow = add i32 %i.ov, %i.op
  %i.ox = add i32 %i.ow, %i.ot
  %i.oy = ashr i32 %i.ox, 9
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %.0.i991, i64 %indvars.iv
end_hunk_5
begin_hunk_6_@_ZNK2cv7optflow4rlof3ica14TrackerInvokerclERKNS_5RangeE:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 84
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = zext nneg i32 %i.x to i64               ; 3 uses
  %i.ck = sext i32 %i.al to i64
  br label %bb.g

_ZNSt6vectorIsSaIsEED2Ev.exit:                    ; preds = %bb.bz, %bb.d
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit406

bb.f:                                             ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit406

.thread505:                                       ; preds = %.noexc375
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.thread510:                                       ; preds = %bb.c
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  br label %bb.cd

bb.g:                                             ; preds = %.lr.ph579, %bb.bz
  %indvars.iv608 = phi i64 [ %i.ck, %.lr.ph579 ], [ %indvars.iv.next609, %bb.bz ] ; 12 uses
  %i.cp = load ptr, ptr %i.ap, align 8, !tbaa !439
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %indvars.iv608
  %i.cr = load i32, ptr %i.aq, align 8, !tbaa !221 ; 2 uses
  %i.cs = shl nuw i32 1, %i.cr
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = fdiv double 1.000000e+00, %i.ct
  %i.cv = fptrunc double %i.cu to float           ; 2 uses
  %i.cw = load <2 x float>, ptr %i.cq, align 4, !tbaa !48
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x float> %i.cw, %i.cy           ; 3 uses
  %i.da = load i32, ptr %i.ar, align 4, !tbaa !222
  %i.db = icmp eq i32 %i.cr, %i.da
  br i1 %i.db, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dc = load i8, ptr %i.at, align 8, !tbaa !225, !range !25, !noundef !26
  %i.dd = trunc nuw i8 %i.dc to i1
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !440 ; 2 uses
  br i1 %i.dd, label %.sink.split, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.as, align 8, !tbaa !440
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.pre.sink = phi ptr [ %i.de, %bb.i ], [ %.pre, %bb.h ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.i ], [ %i.cv, %bb.h ]
  %i.df = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv608
  %i.dg = load <2 x float>, ptr %i.df, align 4, !tbaa !48
  %i.dh = insertelement <2 x float> poison, float %.sink, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.dg, %i.di
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %i.dk = phi ptr [ %.pre, %bb.h ], [ %.pre.sink, %.sink.split ]
  %.sroa.0425.0 = phi <2 x float> [ %i.cz, %bb.h ], [ %i.dj, %.sink.split ] ; 4 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %indvars.iv608
  store <2 x float> %.sroa.0425.0, ptr %i.dl, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.dm = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.cz)
  %i.dn = fptosi <2 x float> %i.dm to <2 x i32>
  store <2 x i32> %i.dn, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.do = load i32, ptr %i.l, align 8, !tbaa !219 ; 4 uses
  %i.dp = mul nsw i32 %i.do, %i.do
  store i32 %i.dp, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !tbaa !76
  store i32 0, ptr %i.au, align 4, !tbaa !77
  store i32 %i.do, ptr %i.av, align 4, !tbaa !50
  store i32 %i.do, ptr %i.aw, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.dq = load i32, ptr %i.ax, align 8, !tbaa !223
  %i.dr = load i32, ptr %i.ay, align 4, !tbaa !218
  %i.ds = load i32, ptr %i.l, align 8, !tbaa !219
  %i.dt = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.k, i32 noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dr, i32 noundef %i.ds)
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k
  br i1 %i.dt, label %bb.n, label %bb.bz

bb.m:                                             ; preds = %bb.j
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.cc

bb.n:                                             ; preds = %bb.l
  %i.dv = load i32, ptr %i.l, align 8, !tbaa !219
  %i.dw = sitofp i32 %i.dv to float
  %i.dx = load <2 x float>, ptr %3, align 8, !tbaa !48
  %i.dy = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fsub <2 x float> %i.dz, %i.dx           ; 4 uses
  store <2 x float> %i.ea, ptr %3, align 8, !tbaa !48
  %i.eb = fadd <2 x float> %i.cz, %i.ea           ; 3 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 0
  %i.ed = call float @llvm.floor.f32(float %i.ec)
  %i.ee = extractelement <2 x float> %i.eb, i64 1
  %i.ef = call float @llvm.floor.f32(float %i.ee)
  %i.eg = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.ef, i64 1
  %i.ei = fptosi <2 x float> %i.eh to <2 x i32>   ; 4 uses
  %i.ej = extractelement <2 x i32> %i.ei, i64 0   ; 2 uses
  store <2 x i32> %i.ei, ptr %8, align 8, !tbaa !46
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.el = load i32, ptr %i.az, align 4, !tbaa !43
  %i.em = load i32, ptr %2, align 8, !tbaa !29
  %i.en = sub nsw i32 %i.el, %i.em
  %i.eo = icmp sle i32 %i.en, %i.ej
  %i.ep = extractelement <2 x i32> %i.ei, i64 1   ; 2 uses
  %i.eq = icmp slt i32 %i.ep, 0
  %or.cond = or i1 %i.eq, %i.eo
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.er = load i32, ptr %i.ba, align 8, !tbaa !44
  %i.es = load i32, ptr %i.c, align 4, !tbaa !30  ; 5 uses
  %i.et = xor i32 %i.es, -1                       ; 2 uses
  %i.eu = add i32 %i.er, %i.et
  %.not = icmp sgt i32 %i.eu, %i.ep
  br i1 %.not, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ev = load i32, ptr %i.aq, align 8, !tbaa !221
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.r, label %bb.bz

bb.r:                                             ; preds = %bb.q
  %i.ex = load ptr, ptr %i.ch, align 8, !tbaa !216 ; 2 uses
  %.not348 = icmp eq ptr %i.ex, null
  br i1 %.not348, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %indvars.iv608
  store i8 3, ptr %i.ey, align 1, !tbaa !39
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ez = load ptr, ptr %i.ci, align 8, !tbaa !217 ; 2 uses
  %.not349 = icmp eq ptr %i.ez, null
  br i1 %.not349, label %bb.bz, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv608
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !48
  br label %bb.bz

bb.v:                                             ; preds = %bb.p
  %i.fb = uitofp <2 x i32> %i.ei to <2 x float>
  %i.fc = fsub <2 x float> %i.eb, %i.fb           ; 3 uses
  %i.fd = fsub <2 x float> splat (float 1.000000e+00), %i.fc ; 3 uses
  %i.fe = extractelement <2 x float> %i.fd, i64 0
  %i.ff = extractelement <2 x float> %i.fd, i64 1 ; 2 uses
  %i.fg = fmul float %i.fe, %i.ff
  %i.fh = fmul float %i.fg, 1.638400e+04
  %i.fi = insertelement <4 x float> poison, float %i.fh, i64 0
  %i.fj = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fi) ; 2 uses
  %i.fk = extractelement <2 x float> %i.fc, i64 0
  %i.fl = fmul float %i.fk, %i.ff
  %i.fm = fmul float %i.fl, 1.638400e+04
  %i.fn = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.fo = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fn) ; 2 uses
  %shift = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fd, %shift
  %i.fp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fq = fmul float %i.fp, 1.638400e+04
  %i.fr = insertelement <4 x float> poison, float %i.fq, i64 0
  %i.fs = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fr) ; 2 uses
  %i.ft = add i32 %i.fj, %i.fo
  %i.fu = add i32 %i.ft, %i.fs
  %i.fv = sub i32 16384, %i.fu
  %.sroa.0110.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.0109.0.copyload = load i64, ptr %8, align 8, !tbaa !46
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_NS_6Point_IiEE(i32 noundef %i.fj, i32 noundef %i.fo, i32 noundef %i.fs, i32 noundef %i.fv, i64 %.sroa.0110.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.i, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 %.sroa.0109.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.fw = trunc i64 %.sroa.0110.0.copyload to i32 ; 3 uses
  %i.fx = add nsw i32 %i.fw, 8
  %i.fy = mul i32 %i.es, %i.x
  %i.fz = mul i32 %i.fy, %i.fx
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %12, i32 noundef %i.fz, i32 noundef 1, i32 noundef 3)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #20
  %i.ga = load ptr, ptr %12, align 8, !tbaa !96, !noalias !441 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !98
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull align 8 dereferenceable(688) %12, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.w
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #20
  br label %bb.af

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.w
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bb) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bc) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bd) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.gf = load i32, ptr %i.be, align 4, !tbaa !220
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph576, label %.thread

.lr.ph576:                                        ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.gh = fadd <2 x float> %.sroa.0425.0, %i.ea
  %i.gi = icmp sgt i32 %i.es, 0                   ; 2 uses
  %i.gj = mul i32 %i.x, %i.fw                     ; 4 uses
  %i.gk = icmp sgt i32 %i.gj, 0                   ; 2 uses
  %i.gl = load i32, ptr %i.b, align 4             ; 2 uses
  %i.gm = sitofp i32 %i.gl to float
  %i.gn = fdiv float 1.000000e+00, %i.gm          ; 2 uses
  %i.go = shl nsw i32 %i.gl, 1
  %i.gp = sitofp i32 %i.go to float
  %wide.trip.count596 = zext nneg i32 %i.es to i64
  %wide.trip.count = zext nneg i32 %i.gj to i64
  %wide.trip.count591 = zext nneg i32 %i.gj to i64
  %wide.trip.count606 = zext nneg i32 %i.es to i64
  %wide.trip.count601 = zext nneg i32 %i.gj to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph576, %bb.by
  %.0242575 = phi float [ 1.000000e+00, %.lr.ph576 ], [ %.2244.lcssa, %bb.by ]
  %.0245574 = phi i32 [ 0, %.lr.ph576 ], [ %i.uc, %bb.by ] ; 2 uses
  %.0246573 = phi float [ 0.000000e+00, %.lr.ph576 ], [ %.1247, %bb.by ]
  %.0270570 = phi float [ 0.000000e+00, %.lr.ph576 ], [ %.6276, %bb.by ]
  %.sroa.0412.0569 = phi float [ 0.000000e+00, %.lr.ph576 ], [ %i.uf, %bb.by ]
  %.sroa.6.0568 = phi float [ 0.000000e+00, %.lr.ph576 ], [ %i.ug, %bb.by ]
  %.sroa.0425.1567 = phi <2 x float> [ %i.gh, %.lr.ph576 ], [ %i.tl, %bb.by ] ; 4 uses
  %i.gq = phi <2 x float> [ zeroinitializer, %.lr.ph576 ], [ %i.sv, %bb.by ]
  %.sroa.0425.0.vec.extract = extractelement <2 x float> %.sroa.0425.1567, i64 0
  %.sroa.0425.4.vec.extract443 = extractelement <2 x float> %.sroa.0425.1567, i64 1
  %i.gr = call float @llvm.floor.f32(float %.sroa.0425.0.vec.extract)
  %i.gs = call float @llvm.floor.f32(float %.sroa.0425.4.vec.extract443)
  %i.gt = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.gs, i64 1
  %i.gv = fptosi <2 x float> %i.gu to <2 x i32>   ; 3 uses
  %i.gw = extractelement <2 x i32> %i.gv, i64 0   ; 4 uses
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gy = load i32, ptr %i.bf, align 4, !tbaa !43
  %i.gz = sub nsw i32 %i.gy, %i.fw
  %i.ha = icmp sle i32 %i.gz, %i.gw
  %i.hb = extractelement <2 x i32> %i.gv, i64 1   ; 4 uses
  %i.hc = icmp slt i32 %i.hb, 0
  %or.cond5 = or i1 %i.hc, %i.ha
  br i1 %or.cond5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hd = load i32, ptr %i.bg, align 8, !tbaa !44
  %i.he = add i32 %i.hd, %i.et
  %.not322 = icmp sgt i32 %i.he, %i.hb
  br i1 %.not322, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.hf = load i32, ptr %i.aq, align 8, !tbaa !221 ; 2 uses
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.ab, label %thread-pre-split

bb.ab:                                            ; preds = %bb.aa
  %i.hh = load ptr, ptr %i.ch, align 8, !tbaa !216 ; 2 uses
  %.not347 = icmp eq ptr %i.hh, null
  br i1 %.not347, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 %indvars.iv608
  store i8 3, ptr %i.hi, align 1, !tbaa !39
  %.pr.pre = load i32, ptr %i.aq, align 8, !tbaa !221
  br label %thread-pre-split

bb.ad:                                            ; preds = %bb.k
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ae:                                            ; preds = %bb.v
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.body, %bb.ae
  %.pn320 = phi { ptr, i32 } [ %i.ge, %.body ], [ %i.hk, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ca

thread-pre-split:                                 ; preds = %bb.ac, %bb.aa
  %i.hl = phi i32 [ %i.hf, %bb.aa ], [ %.pr.pre, %bb.ac ]
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %thread-pre-split
  %i.hn = load ptr, ptr %i.as, align 8, !tbaa !440
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %indvars.iv608
  store <2 x float> %.sroa.0425.0, ptr %i.ho, align 4, !tbaa !48
  br label %.thread

bb.ah:                                            ; preds = %bb.z
  %i.hp = uitofp <2 x i32> %i.gv to <2 x float>
  %i.hq = fsub <2 x float> %.sroa.0425.1567, %i.hp ; 3 uses
  %i.hr = fsub <2 x float> splat (float 1.000000e+00), %i.hq ; 3 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 0
  %i.ht = extractelement <2 x float> %i.hr, i64 1 ; 2 uses
  %i.hu = fmul float %i.hs, %i.ht
  %i.hv = fmul float %i.hu, 1.638400e+04
  %i.hw = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.hx = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hw) ; 4 uses
  %i.hy = extractelement <2 x float> %i.hq, i64 0
  %i.hz = fmul float %i.hy, %i.ht
  %i.ia = fmul float %i.hz, 1.638400e+04
  %i.ib = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.ic = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ib) ; 4 uses
  %shift659 = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop660 = fmul <2 x float> %shift659, %i.hr
  %i.id = extractelement <2 x float> %foldExtExtBinop660, i64 0
  %i.ie = fmul float %i.id, 1.638400e+04
  %i.if = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.ig = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.if) ; 4 uses
  %i.ih = add i32 %i.hx, %i.ic
  %i.ii = add i32 %i.ih, %i.ig
  %i.ij = sub i32 16384, %i.ii                    ; 3 uses
  %i.ik = icmp eq i32 %.0245574, 0                ; 6 uses
  %.1271 = select i1 %i.ik, float 0.000000e+00, float %.0270570 ; 2 uses
  %i.il = insertelement <2 x i1> poison, i1 %i.ik, i64 0
  %i.im = shufflevector <2 x i1> %i.il, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.in = select <2 x i1> %i.im, <2 x float> zeroinitializer, <2 x float> %i.gq ; 2 uses
  br i1 %i.ik, label %.preheader, label %bb.az

.preheader:                                       ; preds = %bb.ah
  br i1 %i.gi, label %.lr.ph531, label %._crit_edge532

.lr.ph531:                                        ; preds = %.preheader
  %i.io = mul nuw nsw i32 %i.x, %i.gw
  %i.ip = load i32, ptr %i.bh, align 4, !tbaa !72
  %i.iq = icmp slt i32 %i.ip, 2
  %i.ir = load ptr, ptr %i.bi, align 8, !tbaa !79 ; 3 uses
  %i.is = zext nneg i32 %i.io to i64              ; 2 uses
  %i.it = load i32, ptr %i.bl, align 4, !tbaa !72
  %i.iu = icmp slt i32 %i.it, 2
  %i.iv = load ptr, ptr %i.bm, align 8, !tbaa !79
  %i.iw = load i32, ptr %i.bo, align 4, !tbaa !72
  %i.ix = icmp slt i32 %i.iw, 2
  %i.iy = load ptr, ptr %i.bp, align 8, !tbaa !79
  %i.iz = zext nneg i32 %i.hb to i64
  br label %bb.ai

._crit_edge532:                                   ; preds = %._crit_edge, %.preheader
  %.0241.lcssa = phi i32 [ 0, %.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store i32 0, ptr %14, align 4, !tbaa !76
  store i32 0, ptr %i.bx, align 4, !tbaa !77
  store i32 1, ptr %i.by, align 4, !tbaa !50
  store i32 %.0241.lcssa, ptr %i.bz, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 4 dereferenceable(16) %14)
          to label %bb.as unwind label %bb.aw

bb.ai:                                            ; preds = %.lr.ph531, %._crit_edge
  %indvars.iv593 = phi i64 [ 0, %.lr.ph531 ], [ %indvars.iv.next594, %._crit_edge ] ; 4 uses
  %.0241529 = phi i32 [ 0, %.lr.ph531 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  br i1 %i.iq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ja = load i64, ptr %i.bj, align 8, !tbaa !84
  %i.jb = mul i64 %i.ja, %i.is
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jb ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit383

bb.ak:                                            ; preds = %bb.ai
  %i.jd = add nuw nsw i64 %indvars.iv593, %i.iz   ; 2 uses
  %i.je = load i64, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %i.jf = mul i64 %i.je, %i.jd
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jf
  %i.jh = load i64, ptr %i.bk, align 8, !tbaa !84
  %i.ji = mul i64 %i.jh, %i.is                    ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ji
  %i.jk = add nuw nsw i64 %i.jd, 1
  %i.jl = mul i64 %i.je, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.ji
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit383

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit383:                ; preds = %bb.aj, %bb.ak
  %.0.i490 = phi ptr [ %i.jc, %bb.aj ], [ %i.jj, %bb.ak ] ; 4 uses
  %.0.i382 = phi ptr [ %i.jc, %bb.aj ], [ %i.jn, %bb.ak ] ; 4 uses
  %i.jo = load i64, ptr %i.bn, align 8
  %i.jp = mul i64 %i.jo, %indvars.iv593
  %.0.i384.idx = select i1 %i.iu, i64 0, i64 %i.jp
  %.0.i384 = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.0.i384.idx ; 2 uses
  %i.jq = load i64, ptr %i.bq, align 8
  %i.jr = mul i64 %i.jq, %indvars.iv593
  %.0.i387.idx = select i1 %i.ix, i64 0, i64 %i.jr
  %.0.i387 = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0.i387.idx ; 2 uses
  br i1 %i.gk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit383
  %i.js = load i32, ptr %i.br, align 4
  %.fr580 = freeze i32 %i.js
  %i.jt = icmp slt i32 %.fr580, 2
  %i.ju = load i32, ptr %11, align 8
  %i.jv = and i32 %i.ju, 16384
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = load i32, ptr %i.bt, align 8
  %i.jy = icmp eq i32 %i.jx, 1
  %i.jz = load i32, ptr %i.bu, align 4            ; 3 uses
  %i.ka = load ptr, ptr %i.bv, align 8            ; 4 uses
  %i.kb = load i64, ptr %i.bw, align 8            ; 2 uses
  br i1 %i.jt, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.al
  %indvars.iv588 = phi i64 [ %indvars.iv.next589, %bb.al ], [ 0, %.lr.ph ] ; 6 uses
  %.1527.us = phi i32 [ %.2.us, %bb.al ], [ %.0241529, %.lr.ph ] ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i387, i64 %indvars.iv588
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !39
  %i.ke = icmp eq i8 %i.kd, 0
  br i1 %i.ke, label %bb.al, label %_ZN2cv3Mat2atIsEERT_i.exit.us

_ZN2cv3Mat2atIsEERT_i.exit.us:                    ; preds = %.lr.ph.split.us
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i490, i64 %indvars.iv588
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !39
  %i.kh = zext i8 %i.kg to i32
  %i.ki = mul nsw i32 %i.hx, %i.kh
  %i.kj = add nuw nsw i64 %indvars.iv588, %i.cj   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i490, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !39
  %i.km = zext i8 %i.kl to i32
  %i.kn = mul nsw i32 %i.ic, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i382, i64 %indvars.iv588
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !39
  %i.kq = zext i8 %i.kp to i32
  %i.kr = mul nsw i32 %i.ig, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i382, i64 %i.kj
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !39
  %i.ku = zext i8 %i.kt to i32
  %i.kv = mul nsw i32 %i.ij, %i.ku
  %i.kw = add i32 %i.ki, 256
  %i.kx = add i32 %i.kw, %i.kn
  %i.ky = add i32 %i.kx, %i.kr
  %i.kz = add i32 %i.ky, %i.kv
  %i.la = lshr i32 %i.kz, 9
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %.0.i384, i64 %indvars.iv588
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !86
  %i.ld = trunc i32 %i.la to i16
  %i.le = sub i16 %i.ld, %i.lc
  %i.lf = add nsw i32 %.1527.us, 1
  %i.lg = sext i32 %.1527.us to i64
  %i.lh = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.lg
  store i16 %i.le, ptr %i.lh, align 2, !tbaa !86
  br label %bb.al

bb.al:                                            ; preds = %_ZN2cv3Mat2atIsEERT_i.exit.us, %.lr.ph.split.us
  %.2.us = phi i32 [ %.1527.us, %.lr.ph.split.us ], [ %i.lf, %_ZN2cv3Mat2atIsEERT_i.exit.us ] ; 2 uses
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next589, %wide.trip.count591
  br i1 %exitcond592.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !433

._crit_edge:                                      ; preds = %bb.ar, %bb.al, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit383
  %.1.lcssa = phi i32 [ %.0241529, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit383 ], [ %.2.us, %bb.al ], [ %.2, %bb.ar ] ; 2 uses
  %indvars.iv.next594 = add nuw nsw i64 %indvars.iv593, 1 ; 2 uses
  %exitcond597.not = icmp eq i64 %indvars.iv.next594, %wide.trip.count596
  br i1 %exitcond597.not, label %._crit_edge532, label %bb.ai, !llvm.loop !434

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ar
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ar ], [ 0, %.lr.ph ] ; 6 uses
  %.1527 = phi i32 [ %.2, %bb.ar ], [ %.0241529, %.lr.ph ] ; 6 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0.i387, i64 %indvars.iv
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !39
  %i.lk = icmp eq i8 %i.lj, 0
  br i1 %i.lk, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %.lr.ph.split
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.i490, i64 %indvars.iv
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !39
  %i.ln = zext i8 %i.lm to i32
  %i.lo = mul nsw i32 %i.hx, %i.ln
  %i.lp = add nuw nsw i64 %indvars.iv, %i.cj      ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i490, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !39
  %i.ls = zext i8 %i.lr to i32
  %i.lt = mul nsw i32 %i.ic, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i382, i64 %indvars.iv
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !39
  %i.lw = zext i8 %i.lv to i32
  %i.lx = mul nsw i32 %i.ig, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i382, i64 %i.lp
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !39
  %i.ma = zext i8 %i.lz to i32
  %i.mb = mul nsw i32 %i.ij, %i.ma
  %i.mc = add i32 %i.lo, 256
  %i.md = add i32 %i.mc, %i.lt
  %i.me = add i32 %i.md, %i.lx
  %i.mf = add i32 %i.me, %i.mb
  %i.mg = lshr i32 %i.mf, 9
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.0.i384, i64 %indvars.iv
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !86
  %i.mj = trunc i32 %i.mg to i16
  %i.mk = sub i16 %i.mj, %i.mi
  %i.ml = add nsw i32 %.1527, 1
  %i.mm = load i32, ptr %i.bs, align 4
end_hunk_6
begin_hunk_7_@_ZNK2cv7optflow6berlof3ica14TrackerInvokerclERKNS_5RangeE:bb.a
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge999
  call void @_ZdaPv(ptr noundef nonnull %i.cq) #22
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit

_ZN2cv10AutoBufferIsLm520EED2Ev.exit:             ; preds = %._crit_edge999, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.cs

bb.i:                                             ; preds = %bb.d
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit621

bb.j:                                             ; preds = %_ZN2cv10AutoBufferIsLm520EEC2Em.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.k:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.l:                                             ; preds = %.lr.ph998, %bb.cl
  %indvars.iv1061 = phi i64 [ %i.cp, %.lr.ph998 ], [ %indvars.iv.next1062, %bb.cl ] ; 12 uses
  %i.cw = load ptr, ptr %i.as, align 8, !tbaa !452
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv1061
  %i.cy = load i32, ptr %i.at, align 8, !tbaa !237 ; 2 uses
  %i.cz = shl nuw i32 1, %i.cy
  %i.da = sitofp i32 %i.cz to double
  %i.db = fdiv double 1.000000e+00, %i.da
  %i.dc = fptrunc double %i.db to float           ; 2 uses
  %i.dd = load <2 x float>, ptr %i.cx, align 4, !tbaa !48
  %i.de = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.dd, %i.df           ; 3 uses
  %i.dh = load i32, ptr %i.au, align 4, !tbaa !238
  %i.di = icmp eq i32 %i.cy, %i.dh
  br i1 %i.di, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dj = load i8, ptr %i.aw, align 8, !tbaa !241, !range !25, !noundef !26
  %i.dk = trunc nuw i8 %i.dj to i1
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !453 ; 2 uses
  br i1 %i.dk, label %.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dl = load ptr, ptr %i.av, align 8, !tbaa !453
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.pre.sink = phi ptr [ %i.dl, %bb.n ], [ %.pre, %bb.m ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.n ], [ %i.dc, %bb.m ]
  %i.dm = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv1061
  %i.dn = load <2 x float>, ptr %i.dm, align 4, !tbaa !48
  %i.do = insertelement <2 x float> poison, float %.sink, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dn, %i.dp
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m
  %i.dr = phi ptr [ %.pre, %bb.m ], [ %.pre.sink, %.sink.split ]
  %.sroa.0685.0 = phi <2 x float> [ %i.dg, %bb.m ], [ %i.dq, %.sink.split ] ; 3 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %indvars.iv1061
  store <2 x float> %.sroa.0685.0, ptr %i.ds, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.dt = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.dg)
  %i.du = fptosi <2 x float> %i.dt to <2 x i32>
  store <2 x i32> %i.du, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.dv = load i32, ptr %i.m, align 8, !tbaa !235 ; 4 uses
  %i.dw = mul nsw i32 %i.dv, %i.dv
  store i32 %i.dw, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !76
  store i32 0, ptr %i.ax, align 4, !tbaa !77
  store i32 %i.dv, ptr %i.ay, align 4, !tbaa !50
  store i32 %i.dv, ptr %i.az, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !90
  store i32 -1056833530, ptr %12, align 8, !tbaa !32
  store ptr %i.c, ptr %i.bb, align 8, !tbaa !33
  store i64 4294967297, ptr %i.ba, align 8, !tbaa !46
  %i.dx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.dy = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.dz = load i32, ptr %i.bc, align 8, !tbaa !239
  %i.ea = load i32, ptr %i.bd, align 4, !tbaa !234
  %i.eb = load i32, ptr %i.m, align 8, !tbaa !235
  %i.ec = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.l, i32 noundef %i.dz, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.ea, i32 noundef %i.eb)
          to label %bb.s unwind label %bb.an

bb.s:                                             ; preds = %bb.r
  br i1 %i.ec, label %bb.v, label %bb.cl

bb.t:                                             ; preds = %bb.o
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.co

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.cn

bb.v:                                             ; preds = %bb.s
  %i.ef = load i32, ptr %i.m, align 8, !tbaa !235
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = load <2 x float>, ptr %2, align 8, !tbaa !48
  %i.ei = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fsub <2 x float> %i.ej, %i.eh           ; 5 uses
  store <2 x float> %i.ek, ptr %2, align 8, !tbaa !48
  %i.el = fadd <2 x float> %i.dg, %i.ek           ; 3 uses
  %i.em = extractelement <2 x float> %i.el, i64 0
  %i.en = call float @llvm.floor.f32(float %i.em)
  %i.eo = extractelement <2 x float> %i.el, i64 1
  %i.ep = call float @llvm.floor.f32(float %i.eo)
  %i.eq = insertelement <2 x float> poison, float %i.en, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.ep, i64 1
  %i.es = fptosi <2 x float> %i.er to <2 x i32>   ; 4 uses
  %i.et = extractelement <2 x i32> %i.es, i64 0   ; 2 uses
  store <2 x i32> %i.es, ptr %9, align 8, !tbaa !46
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = load i32, ptr %i.be, align 4, !tbaa !43
  %i.ew = load i32, ptr %3, align 8, !tbaa !29
  %i.ex = sub nsw i32 %i.ev, %i.ew
  %i.ey = icmp sle i32 %i.ex, %i.et
  %i.ez = extractelement <2 x i32> %i.es, i64 1   ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 0
  %or.cond = or i1 %i.fa, %i.ey
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = load i32, ptr %i.bf, align 8, !tbaa !44
  %i.fc = load i32, ptr %i.d, align 4, !tbaa !30  ; 5 uses
  %i.fd = xor i32 %i.fc, -1                       ; 2 uses
  %i.fe = add i32 %i.fb, %i.fd
  %.not = icmp sgt i32 %i.fe, %i.ez
  br i1 %.not, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.ff = load i32, ptr %i.at, align 8, !tbaa !237
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.z, label %bb.cl

bb.z:                                             ; preds = %bb.y
  %i.fh = load ptr, ptr %i.cm, align 8, !tbaa !232 ; 2 uses
  %.not532 = icmp eq ptr %i.fh, null
  br i1 %.not532, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %indvars.iv1061
  store i8 3, ptr %i.fi, align 1, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fj = load ptr, ptr %i.cn, align 8, !tbaa !233 ; 2 uses
  %.not533 = icmp eq ptr %i.fj, null
  br i1 %.not533, label %bb.cl, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %indvars.iv1061
  store float 0.000000e+00, ptr %i.fk, align 4, !tbaa !48
  br label %bb.cl

bb.ad:                                            ; preds = %bb.x
  %i.fl = uitofp <2 x i32> %i.es to <2 x float>
  %i.fm = fsub <2 x float> %i.el, %i.fl           ; 3 uses
  %i.fn = fsub <2 x float> splat (float 1.000000e+00), %i.fm ; 3 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 0
  %i.fp = extractelement <2 x float> %i.fn, i64 1 ; 2 uses
  %i.fq = fmul float %i.fo, %i.fp
  %i.fr = fmul float %i.fq, 1.638400e+04
  %i.fs = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ft = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fs) ; 2 uses
  %i.fu = extractelement <2 x float> %i.fm, i64 0
  %i.fv = fmul float %i.fu, %i.fp
  %i.fw = fmul float %i.fv, 1.638400e+04
  %i.fx = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.fy = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fx) ; 2 uses
  %shift = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fn, %shift
  %i.fz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ga = fmul float %i.fz, 1.638400e+04
  %i.gb = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gb) ; 2 uses
  %i.gd = add i32 %i.ft, %i.fy
  %i.ge = add i32 %i.gd, %i.gc
  %i.gf = sub i32 16384, %i.ge
  %.sroa.0230.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.0229.0.copyload = load i64, ptr %9, align 8, !tbaa !46
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_NS_6Point_IiEE(i32 noundef %i.ft, i32 noundef %i.fy, i32 noundef %i.gc, i32 noundef %i.gf, i64 %.sroa.0230.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.0229.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.gg = trunc i64 %.sroa.0230.0.copyload to i32 ; 3 uses
  %i.gh = add nsw i32 %i.gg, 8
  %i.gi = mul i32 %i.fc, %i.x
  %i.gj = mul i32 %i.gi, %i.gh
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i32 noundef %i.gj, i32 noundef 1, i32 noundef 3)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #20
  %i.gk = load ptr, ptr %14, align 8, !tbaa !96, !noalias !454 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !98
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef -1)
          to label %bb.af unwind label %.body

.body:                                            ; preds = %bb.ae
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #20
  br label %bb.ap

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bg) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bh) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bi) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #20
  %i.gp = load i32, ptr %i.bj, align 4, !tbaa !236
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph995, label %.thread848

.lr.ph995:                                        ; preds = %bb.af
  %i.gr = fadd <2 x float> %.sroa.0685.0, %i.ek
  %i.gs = icmp sgt i32 %i.fc, 0                   ; 2 uses
  %i.gt = mul i32 %i.x, %i.gg                     ; 4 uses
  %i.gu = icmp sgt i32 %i.gt, 0                   ; 2 uses
  %i.gv = load i32, ptr %i.b, align 4             ; 2 uses
  %i.gw = sitofp i32 %i.gv to float
  %i.gx = fdiv float 1.000000e+00, %i.gw          ; 2 uses
  %i.gy = fneg float %i.gx
  %i.gz = shl nsw i32 %i.gv, 1
  %i.ha = sitofp i32 %i.gz to float
  %wide.trip.count1049 = zext nneg i32 %i.fc to i64
  %wide.trip.count = zext nneg i32 %i.gt to i64
  %wide.trip.count1044 = zext nneg i32 %i.gt to i64
  %wide.trip.count1059 = zext nneg i32 %i.fc to i64
  %wide.trip.count1054 = zext nneg i32 %i.gt to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph995, %bb.ck
  %.0386993 = phi float [ 1.000000e+00, %.lr.ph995 ], [ %.5837, %bb.ck ] ; 2 uses
  %.0390992 = phi float [ 0.000000e+00, %.lr.ph995 ], [ %.4394836, %bb.ck ] ; 2 uses
  %.0403990 = phi float [ 0.000000e+00, %.lr.ph995 ], [ %.8411834, %bb.ck ] ; 2 uses
  %.0435988 = phi i32 [ 0, %.lr.ph995 ], [ %i.adx, %bb.ck ] ; 3 uses
  %.sroa.0668.0979 = phi float [ 0.000000e+00, %.lr.ph995 ], [ %i.aea, %bb.ck ]
  %.sroa.6.0978 = phi float [ 0.000000e+00, %.lr.ph995 ], [ %i.aeb, %bb.ck ]
  %.sroa.0672.0977 = phi i32 [ 0, %.lr.ph995 ], [ %.sroa.0672.1822, %bb.ck ] ; 3 uses
  %.sroa.12.0976 = phi i32 [ 0, %.lr.ph995 ], [ %.sroa.12.1821, %bb.ck ] ; 3 uses
  %.sroa.0685.1975 = phi <2 x float> [ %i.gr, %.lr.ph995 ], [ %i.acq, %bb.ck ] ; 6 uses
  %i.hb = phi <2 x float> [ zeroinitializer, %.lr.ph995 ], [ %i.abj, %bb.ck ]
  %i.hc = phi <2 x float> [ zeroinitializer, %.lr.ph995 ], [ %i.abk, %bb.ck ] ; 2 uses
  %i.hd = phi <4 x float> [ zeroinitializer, %.lr.ph995 ], [ %i.abl, %bb.ck ]
  %i.he = phi <2 x float> [ zeroinitializer, %.lr.ph995 ], [ %i.abm, %bb.ck ]
  %.sroa.0685.0.vec.extract = extractelement <2 x float> %.sroa.0685.1975, i64 0 ; 2 uses
  %.sroa.0685.4.vec.extract719 = extractelement <2 x float> %.sroa.0685.1975, i64 1 ; 3 uses
  %i.hf = icmp ne i32 %.0435988, 0                ; 7 uses
  %.pre1066 = call float @llvm.floor.f32(float %.sroa.0685.0.vec.extract)
  %.pre1067 = fptosi float %.pre1066 to i32       ; 9 uses
  %.not493 = icmp eq i32 %.sroa.0672.0977, %.pre1067
  %or.cond1133 = select i1 %i.hf, i1 %.not493, i1 false
  br i1 %or.cond1133, label %bb.ah, label %._crit_edge1065

bb.ah:                                            ; preds = %bb.ag
  %i.hg = uitofp nneg i32 %.sroa.12.0976 to float
  %i.hh = uitofp nneg i32 %.sroa.0672.0977 to float
  %i.hi = fsub float %.sroa.0685.4.vec.extract719, %i.hg ; 2 uses
  %i.hj = fsub float %.sroa.0685.0.vec.extract, %i.hh ; 2 uses
  %i.hk = fmul float %i.hi, %i.hj
  %i.hl = call float @llvm.floor.f32(float %.sroa.0685.4.vec.extract719)
  %i.hm = fptosi float %i.hl to i32
  %.not494 = icmp eq i32 %.sroa.12.0976, %i.hm
  %i.hn = and i32 %.0435988, 1
  %.not495 = icmp eq i32 %i.hn, 0
  %or.cond534 = and i1 %.not494, %.not495
  br i1 %or.cond534, label %.thread799, label %._crit_edge1065

._crit_edge1065:                                  ; preds = %bb.ag, %bb.ah
  %i.ho = call float @llvm.floor.f32(float %.sroa.0685.4.vec.extract719)
  %i.hp = fptosi float %i.ho to i32               ; 8 uses
  %i.hq = icmp slt i32 %.pre1067, 0
  br i1 %i.hq, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge1065
  %i.hr = load i32, ptr %i.bk, align 4, !tbaa !43
  %i.hs = sub nsw i32 %i.hr, %i.gg
  %i.ht = icmp sle i32 %i.hs, %.pre1067
  %i.hu = icmp slt i32 %i.hp, 0
  %or.cond6 = or i1 %i.hu, %i.ht
  br i1 %or.cond6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hv = load i32, ptr %i.bl, align 8, !tbaa !44
  %i.hw = add i32 %i.hv, %i.fd
  %.not496 = icmp sgt i32 %i.hw, %i.hp
  br i1 %.not496, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge1065
  %i.hx = load i32, ptr %i.at, align 8, !tbaa !237
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.al, label %.thread848

bb.al:                                            ; preds = %bb.ak
  %i.hz = load ptr, ptr %i.cm, align 8, !tbaa !232 ; 2 uses
  %.not531 = icmp eq ptr %i.hz, null
  br i1 %.not531, label %.thread848, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 %indvars.iv1061
  store i8 3, ptr %i.ia, align 1, !tbaa !39
  br label %.thread848

bb.an:                                            ; preds = %bb.r
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ao:                                            ; preds = %bb.ad
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %bb.ao
  %.pn491 = phi { ptr, i32 } [ %i.go, %.body ], [ %i.ic, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.cm

bb.aq:                                            ; preds = %bb.aj
  %i.id = uitofp nneg i32 %.pre1067 to float
  %i.ie = uitofp nneg i32 %i.hp to float
  %i.if = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ie, i64 1
  %i.ih = fsub <2 x float> %.sroa.0685.1975, %i.ig ; 3 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 0 ; 4 uses
  %i.ij = extractelement <2 x float> %i.ih, i64 1 ; 4 uses
  %i.ik = fmul float %i.ii, %i.ij                 ; 2 uses
  %i.il = fsub <2 x float> splat (float 1.000000e+00), %i.ih ; 2 uses
  %i.im = extractelement <2 x float> %i.il, i64 0 ; 2 uses
  %i.in = extractelement <2 x float> %i.il, i64 1 ; 2 uses
  %i.io = fmul float %i.im, %i.in
  %i.ip = fmul float %i.io, 1.638400e+04
  %i.iq = insertelement <4 x float> poison, float %i.ip, i64 0
  %i.ir = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.iq) ; 4 uses
  %i.is = fmul float %i.ii, %i.in
  %i.it = fmul float %i.is, 1.638400e+04
  %i.iu = insertelement <4 x float> poison, float %i.it, i64 0
  %i.iv = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.iu) ; 4 uses
  %i.iw = fmul float %i.ij, %i.im
  %i.ix = fmul float %i.iw, 1.638400e+04
  %i.iy = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.iz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.iy) ; 4 uses
  %i.ja = add i32 %i.ir, %i.iv
  %i.jb = add i32 %i.ja, %i.iz
  %i.jc = sub i32 16384, %i.jb                    ; 3 uses
  %.1404 = select i1 %i.hf, float %.0403990, float 0.000000e+00 ; 2 uses
end_hunk_7
