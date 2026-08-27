Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rlof_localflow?download=true
inline.NumInlined: 1717
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK2cv7optflow3plk6radial14TrackerInvokerclERKNS_5RangeE:bb.a
          cleanup
  br label %bb.bo

bb.l:                                             ; preds = %.lr.ph957, %.thread
  %indvars.iv1043 = phi i64 [ %i.cc, %.lr.ph957 ], [ %indvars.iv.next1044, %.thread ] ; 17 uses
  %i.cj = load ptr, ptr %i.as, align 8, !tbaa !369
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv1043
  %i.cl = load i32, ptr %i.at, align 8, !tbaa !207 ; 2 uses
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = sitofp i32 %i.cm to double
  %i.co = fdiv double 1.000000e+00, %i.cn
  %i.cp = fptrunc double %i.co to float           ; 2 uses
  %i.cq = load <2 x float>, ptr %i.ck, align 4, !tbaa !48
  %i.cr = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.cq, %i.cs           ; 3 uses
  %i.cu = load i32, ptr %i.au, align 4, !tbaa !208
  %i.cv = icmp eq i32 %i.cl, %i.cu
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = load i8, ptr %i.aw, align 8, !tbaa !211, !range !24, !noundef !25
  %i.cx = trunc nuw i8 %i.cw to i1
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !370 ; 2 uses
  br i1 %i.cx, label %.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cy = load ptr, ptr %i.av, align 8, !tbaa !370
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.pre.sink = phi ptr [ %i.cy, %bb.n ], [ %.pre, %bb.m ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.n ], [ %i.cp, %bb.m ]
  %i.cz = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv1043
  %i.da = load <2 x float>, ptr %i.cz, align 4, !tbaa !48
  %i.db = insertelement <2 x float> poison, float %.sink, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.da, %i.dc
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m
  %i.de = phi ptr [ %.pre, %bb.m ], [ %.pre.sink, %.sink.split ]
  %.sroa.0678.0 = phi <2 x float> [ %i.ct, %bb.m ], [ %i.dd, %.sink.split ] ; 3 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %indvars.iv1043
  store <2 x float> %.sroa.0678.0, ptr %i.df, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.dg = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ct)
  %i.dh = fptosi <2 x float> %i.dg to <2 x i32>
  store <2 x i32> %i.dh, ptr %9, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.di = load i32, ptr %i.m, align 8, !tbaa !204 ; 4 uses
  %i.dj = mul nsw i32 %i.di, %i.di
  store i32 %i.dj, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !102
  store i32 0, ptr %i.ax, align 4, !tbaa !103
  store i32 %i.di, ptr %i.ay, align 4, !tbaa !51
  store i32 %i.di, ptr %i.az, align 4, !tbaa !53
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !158
  store i32 -1056833530, ptr %12, align 8, !tbaa !30
  store ptr %i.c, ptr %i.bb, align 8, !tbaa !32
  store i64 4294967297, ptr %i.ba, align 8
  %i.dk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.dl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.dm = load i32, ptr %i.bc, align 8, !tbaa !209
  %i.dn = load i32, ptr %i.bd, align 4, !tbaa !203
  %i.do = load i32, ptr %i.m, align 8, !tbaa !204
  %i.dp = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.l, i32 noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dn, i32 noundef %i.do)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %i.dp, label %bb.w, label %.thread

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

bb.v:                                             ; preds = %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.w:                                             ; preds = %bb.s
  %i.dt = load i32, ptr %i.m, align 8, !tbaa !204
  %i.du = sitofp i32 %i.dt to float
  %i.dv = load <2 x float>, ptr %3, align 8, !tbaa !48
  %i.dw = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fsub <2 x float> %i.dx, %i.dv           ; 4 uses
  store <2 x float> %i.dy, ptr %3, align 8
  %i.dz = fadd <2 x float> %i.ct, %i.dy           ; 3 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 1
  %i.eb = call float @llvm.floor.f32(float %i.ea)
  %i.ec = extractelement <2 x float> %i.dz, i64 0
  %i.ed = call float @llvm.floor.f32(float %i.ec)
  %i.ee = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.eb, i64 1
  %i.eg = fptosi <2 x float> %i.ef to <2 x i32>   ; 4 uses
  %i.eh = extractelement <2 x i32> %i.eg, i64 0   ; 2 uses
  store <2 x i32> %i.eg, ptr %9, align 8, !tbaa !50
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ej = load i32, ptr %i.be, align 4, !tbaa !45
  %i.ek = load i32, ptr %2, align 8, !tbaa !27
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = icmp sle i32 %i.el, %i.eh
  %i.en = extractelement <2 x i32> %i.eg, i64 1   ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0
  %or.cond = or i1 %i.eo, %i.em
  br i1 %or.cond, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = load i32, ptr %i.bf, align 8, !tbaa !46
  %i.eq = load i32, ptr %i.d, align 4, !tbaa !29  ; 3 uses
  %i.er = xor i32 %i.eq, -1                       ; 2 uses
  %i.es = add i32 %i.ep, %i.er
  %.not = icmp sgt i32 %i.es, %i.en
  br i1 %.not, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.et = load i32, ptr %i.at, align 8, !tbaa !207
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.ev = load ptr, ptr %i.bi, align 8, !tbaa !200 ; 2 uses
  %.not583 = icmp eq ptr %i.ev, null
  br i1 %.not583, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %indvars.iv1043
  store i8 3, ptr %i.ew, align 1, !tbaa !41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ex = load ptr, ptr %i.ca, align 8, !tbaa !201 ; 2 uses
  %.not584.a = icmp eq ptr %i.ex, null
  br i1 %.not584.a, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %indvars.iv1043
  store float 0.000000e+00, ptr %i.ey, align 4, !tbaa !48
  br label %.thread

bb.ae:                                            ; preds = %bb.y
  %i.ez = uitofp <2 x i32> %i.eg to <2 x float>
  %i.fa = fsub <2 x float> %i.dz, %i.ez           ; 3 uses
  %i.fb = fsub <2 x float> splat (float 1.000000e+00), %i.fa ; 3 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 0
  %i.fd = extractelement <2 x float> %i.fb, i64 1 ; 2 uses
  %i.fe = fmul float %i.fc, %i.fd
  %i.ff = fmul float %i.fe, 1.638400e+04
  %i.fg = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.fh = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fg) ; 2 uses
  %i.fi = extractelement <2 x float> %i.fa, i64 0
  %i.fj = fmul float %i.fi, %i.fd
  %i.fk = fmul float %i.fj, 1.638400e+04
  %i.fl = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fm = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fl) ; 2 uses
  %shift = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fb, %shift
  %i.fn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fo = fmul float %i.fn, 1.638400e+04
  %i.fp = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.fq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fp) ; 2 uses
  %i.fr = add i32 %i.fh, %i.fm
  %i.fs = add i32 %i.fr, %i.fq
  %i.ft = sub i32 16384, %i.fs
  %.sroa.085.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.084.0.copyload = load i64, ptr %9, align 8
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_NS_6Point_IiEE(i32 noundef %i.fh, i32 noundef %i.fm, i32 noundef %i.fq, i32 noundef %i.ft, i64 %.sroa.085.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.084.0.copyload)
  %i.fu = load ptr, ptr %i.bg, align 8, !tbaa !202
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %indvars.iv1043
  %i.fw = load <2 x float>, ptr %i.fv, align 4, !tbaa !48 ; 3 uses
  %13 = extractelement <2 x float> %i.fw, i64 0   ; 3 uses
  %14 = bitcast float %13 to i32
  %15 = extractelement <2 x float> %i.fw, i64 1   ; 3 uses
  %16 = bitcast float %15 to i32
  %i.fx = load i32, ptr %i.bh, align 4, !tbaa !205
  %i.fy = icmp sgt i32 %i.fx, 0
  %i.fz = trunc i64 %.sroa.085.0.copyload to i32  ; 2 uses
  br i1 %i.fy, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ae
  %i.ga = fadd <2 x float> %.sroa.0678.0, %i.dy
  %i.gb = icmp sgt i32 %i.eq, 0
  %i.gc = mul i32 %i.x, %i.fz                     ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  %i.ge = load i32, ptr %i.b, align 4             ; 2 uses
  %i.gf = sitofp i32 %i.ge to float
  %i.gg = fmul nnan float %i.gf, f0x37800000
  %i.gh = shl nsw i32 %i.ge, 1
  %i.gi = sitofp i32 %i.gh to float
  %wide.trip.count1041 = zext nneg i32 %i.eq to i64
  %wide.trip.count = zext nneg i32 %i.gc to i64
  %wide.trip.count1036 = zext nneg i32 %i.gc to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %bb.bl
  %.0455954 = phi i32 [ 0, %.lr.ph ], [ %i.abc, %bb.bl ] ; 3 uses
  %.0473950 = phi float [ 0.000000e+00, %.lr.ph ], [ %.2475, %bb.bl ]
  %.0504945 = phi float [ 0.000000e+00, %.lr.ph ], [ %.6510, %bb.bl ]
  %.sroa.0664.0943 = phi float [ 1.000000e+00, %.lr.ph ], [ %i.yr, %bb.bl ]
  %.sroa.0666.0942 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.yo, %bb.bl ]
  %.sroa.7668.0941 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.yq, %bb.bl ] ; 2 uses
  %.sroa.0678.1940 = phi <2 x float> [ %i.ga, %.lr.ph ], [ %i.ys, %bb.bl ] ; 4 uses
  %i.gj = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.pq, %bb.bl ]
  %i.gk = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.pr, %bb.bl ]
  %i.gl = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ps, %bb.bl ]
  %i.gm = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.pt, %bb.bl ]
  %i.gn = trunc i32 %.0455954 to i8
  %i.go = load ptr, ptr %i.bi, align 8, !tbaa !200
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 %indvars.iv1043
  store i8 %i.gn, ptr %i.gp, align 1, !tbaa !41
  %.sroa.0678.0.vec.extract = extractelement <2 x float> %.sroa.0678.1940, i64 0
  %.sroa.0678.4.vec.extract696 = extractelement <2 x float> %.sroa.0678.1940, i64 1
  %i.gq = call float @llvm.floor.f32(float %.sroa.0678.4.vec.extract696)
  %i.gr = call float @llvm.floor.f32(float %.sroa.0678.0.vec.extract)
  %i.gs = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gt = insertelement <2 x float> %i.gs, float %i.gq, i64 1
  %i.gu = fptosi <2 x float> %i.gt to <2 x i32>   ; 3 uses
  %i.gv = extractelement <2 x i32> %i.gu, i64 0   ; 3 uses
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gx = load i32, ptr %i.bj, align 4, !tbaa !45
  %i.gy = sub nsw i32 %i.gx, %i.fz
  %i.gz = icmp sle i32 %i.gy, %i.gv
  %i.ha = extractelement <2 x i32> %i.gu, i64 1   ; 3 uses
  %i.hb = icmp slt i32 %i.ha, 0
  %or.cond5 = or i1 %i.hb, %i.gz
  br i1 %or.cond5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hc = load i32, ptr %i.bk, align 8, !tbaa !46
  %i.hd = add i32 %i.hc, %i.er
  %.not559 = icmp sgt i32 %i.hd, %i.ha
  br i1 %.not559, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.he = load i32, ptr %i.at, align 8, !tbaa !207
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.hg = load ptr, ptr %i.bi, align 8, !tbaa !200 ; 2 uses
  %.not582 = icmp eq ptr %i.hg, null
  br i1 %.not582, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %indvars.iv1043
  store i8 3, ptr %i.hh, align 1, !tbaa !41
  br label %.thread

bb.al:                                            ; preds = %bb.ah
  %i.hi = uitofp <2 x i32> %i.gu to <2 x float>
  %i.hj = fsub <2 x float> %.sroa.0678.1940, %i.hi ; 3 uses
  %i.hk = fsub <2 x float> splat (float 1.000000e+00), %i.hj ; 3 uses
  %i.hl = extractelement <2 x float> %i.hk, i64 0
  %i.hm = extractelement <2 x float> %i.hk, i64 1 ; 2 uses
  %i.hn = fmul float %i.hl, %i.hm
  %i.ho = fmul float %i.hn, 1.638400e+04
  %i.hp = insertelement <4 x float> poison, float %i.ho, i64 0
  %i.hq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hp) ; 3 uses
  %i.hr = extractelement <2 x float> %i.hj, i64 0
  %i.hs = fmul float %i.hr, %i.hm
  %i.ht = fmul float %i.hs, 1.638400e+04
  %i.hu = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hv = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hu) ; 3 uses
  %shift1218 = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1219 = fmul <2 x float> %shift1218, %i.hk
  %i.hw = extractelement <2 x float> %foldExtExtBinop1219, i64 0
  %i.hx = fmul float %i.hw, 1.638400e+04
  %i.hy = insertelement <4 x float> poison, float %i.hx, i64 0
  %i.hz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hy) ; 3 uses
  %i.ia = add i32 %i.hq, %i.hv
  %i.ib = add i32 %i.ia, %i.hz
  %i.ic = sub i32 16384, %i.ib                    ; 2 uses
  %i.id = icmp eq i32 %.0455954, 0                ; 5 uses
  br i1 %i.id, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.1505 = phi float [ 0.000000e+00, %bb.am ], [ %.0504945, %bb.al ] ; 3 uses
  %.1474 = phi float [ 0.000000e+00, %bb.am ], [ %.0473950, %bb.al ]
  %i.ie = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gj, %bb.al ] ; 3 uses
  %i.if = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gk, %bb.al ] ; 3 uses
  %i.ig = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gl, %bb.al ] ; 3 uses
  %i.ih = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gm, %bb.al ] ; 3 uses
  br i1 %i.gb, label %.lr.ph842, label %._crit_edge843

.lr.ph842:                                        ; preds = %bb.an
  %i.ii = mul nuw nsw i32 %i.x, %i.gv
  %i.ij = load i32, ptr %i.bl, align 4, !tbaa !98
  %i.ik = icmp slt i32 %i.ij, 2
  %i.il = load ptr, ptr %i.bm, align 8, !tbaa !99 ; 3 uses
  %i.im = zext nneg i32 %i.ii to i64              ; 2 uses
  %i.in = load i32, ptr %i.bp, align 4, !tbaa !98
  %i.io = icmp slt i32 %i.in, 2
  %i.ip = load ptr, ptr %i.bq, align 8, !tbaa !99
  %i.iq = load i64, ptr %i.br, align 8
  %i.ir = load i32, ptr %i.bs, align 4, !tbaa !98
  %i.is = icmp slt i32 %i.ir, 2
  %i.it = load ptr, ptr %i.bt, align 8, !tbaa !99
  %i.iu = load i64, ptr %i.bu, align 8
  %i.iv = load i32, ptr %i.bv, align 4, !tbaa !98
  %i.iw = icmp slt i32 %i.iv, 2
  %i.ix = load ptr, ptr %i.bw, align 8, !tbaa !99
  %i.iy = load i64, ptr %i.bx, align 8
  br i1 %i.gd, label %.lr.ph842.split.us.preheader, label %._crit_edge843

.lr.ph842.split.us.preheader:                     ; preds = %.lr.ph842
  %i.iz = zext nneg i32 %i.ha to i64
  br label %.lr.ph842.split.us

.lr.ph842.split.us:                               ; preds = %.lr.ph842.split.us.preheader, %._crit_edge.us
  %indvars.iv1038 = phi i64 [ 0, %.lr.ph842.split.us.preheader ], [ %indvars.iv.next1039, %._crit_edge.us ] ; 5 uses
  %.2506828.us = phi float [ %.1505, %.lr.ph842.split.us.preheader ], [ %.us-phi815.us, %._crit_edge.us ] ; 2 uses
  %i.ja = phi <2 x float> [ %i.ie, %.lr.ph842.split.us.preheader ], [ %i.lx, %._crit_edge.us ] ; 2 uses
  %i.jb = phi <2 x float> [ %i.if, %.lr.ph842.split.us.preheader ], [ %i.ly, %._crit_edge.us ] ; 2 uses
  %i.jc = phi <2 x float> [ %i.ig, %.lr.ph842.split.us.preheader ], [ %i.lz, %._crit_edge.us ] ; 2 uses
  %i.jd = phi <4 x float> [ zeroinitializer, %.lr.ph842.split.us.preheader ], [ %i.ma, %._crit_edge.us ] ; 2 uses
  %i.je = phi <2 x float> [ %i.ih, %.lr.ph842.split.us.preheader ], [ %i.mb, %._crit_edge.us ] ; 2 uses
  br i1 %i.ik, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph842.split.us
  %i.jf = add nuw nsw i64 %indvars.iv1038, %i.iz  ; 2 uses
  %i.jg = load i64, ptr %i.bn, align 8, !tbaa !100 ; 2 uses
  %i.jh = mul i64 %i.jg, %i.jf
  %i.ji = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jh
  %i.jj = load i64, ptr %i.bo, align 8, !tbaa !100
  %i.jk = mul i64 %i.jj, %i.im                    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jk
  %i.jm = add nuw nsw i64 %i.jf, 1
  %i.jn = mul i64 %i.jg, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jk
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us

bb.ap:                                            ; preds = %.lr.ph842.split.us
  %i.jq = load i64, ptr %i.bn, align 8, !tbaa !100
  %i.jr = mul i64 %i.jq, %i.im
  %i.js = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jr ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us:             ; preds = %bb.ap, %bb.ao
  %.0.i752.us = phi ptr [ %i.js, %bb.ap ], [ %i.jl, %bb.ao ] ; 4 uses
  %.0.i623.us = phi ptr [ %i.js, %bb.ap ], [ %i.jp, %bb.ao ] ; 4 uses
  %i.jt = mul i64 %i.iq, %indvars.iv1038
  %.0.i625.us.idx = select i1 %i.io, i64 0, i64 %i.jt
  %.0.i625.us = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.0.i625.us.idx ; 2 uses
  %i.ju = mul i64 %i.iu, %indvars.iv1038
  %.0.i626.us.idx = select i1 %i.is, i64 0, i64 %i.ju
  %.0.i626.us = getelementptr inbounds nuw i8, ptr %i.it, i64 %.0.i626.us.idx ; 2 uses
  %i.jv = mul i64 %i.iy, %indvars.iv1038
  %.0.i628.us.idx = select i1 %i.iw, i64 0, i64 %i.jv
  %.0.i628.us = getelementptr inbounds nuw i8, ptr %i.ix, i64 %.0.i628.us.idx ; 2 uses
  br i1 %i.id, label %.lr.ph.split.us.us, label %.lr.ph.split.us871

.lr.ph.split.us871:                               ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us, %bb.ar
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ar ], [ 0, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 6 uses
  %.0443801.us857 = phi ptr [ %i.lw, %bb.ar ], [ %.0.i626.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 3 uses
  %i.jw = phi <4 x float> [ %i.lv, %bb.ar ], [ %i.jd, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.i628.us, i64 %indvars.iv
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !41
  %i.jz = icmp eq i8 %i.jy, 0
  br i1 %i.jz, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.us871
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %indvars.iv
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !41
  %i.kc = zext i8 %i.kb to i32
  %i.kd = mul nsw i32 %i.hq, %i.kc
  %i.ke = add nuw nsw i64 %indvars.iv, %i.cb      ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !41
  %i.kh = zext i8 %i.kg to i32
  %i.ki = mul nsw i32 %i.hv, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %indvars.iv
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !41
  %i.kl = zext i8 %i.kk to i32
  %i.km = mul nsw i32 %i.hz, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %i.ke
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !41
  %i.kp = zext i8 %i.ko to i32
  %i.kq = mul nsw i32 %i.ic, %i.kp
  %i.kr = add i32 %i.kd, 256
  %i.ks = add i32 %i.kr, %i.ki
  %i.kt = add i32 %i.ks, %i.km
  %i.ku = add i32 %i.kt, %i.kq
  %i.kv = ashr i32 %i.ku, 9
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %.0.i625.us, i64 %indvars.iv
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !128 ; 2 uses
  %i.ky = sext i16 %i.kx to i32
  %i.kz = sub nsw i32 %i.kv, %i.ky
  %i.la = sitofp i32 %i.kz to float
  %i.lb = sitofp i16 %i.kx to float               ; 2 uses
  %i.lc = call float @llvm.fmuladd.f32(float %i.lb, float %13, float %i.la)
  %i.ld = fadd float %15, %i.lc
  %i.le = fptosi float %i.ld to i32               ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.0443801.us857, i64 2
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !128
  %i.lh = load i16, ptr %.0443801.us857, align 2, !tbaa !128
  %i.li = sext i16 %i.lg to i32
  %i.lj = sext i16 %i.lh to i32
  %i.lk = mul nsw i32 %i.le, %i.li
  %i.ll = mul nsw i32 %i.le, %i.lj
  %i.lm = insertelement <4 x i32> poison, i32 %i.ll, i64 0
  %i.ln = insertelement <4 x i32> %i.lm, i32 %i.lk, i64 1
  %i.lo = insertelement <4 x i32> poison, i32 %i.le, i64 0
  %i.lp = shufflevector <4 x i32> %i.lo, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.lq = shufflevector <4 x i32> %i.ln, <4 x i32> %i.lp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.lr = sitofp <4 x i32> %i.lq to <4 x float>
  %i.ls = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.lb, i64 2
  %i.lt = fmul nnan <4 x float> %i.ls, %i.lr
  %i.lu = fadd <4 x float> %i.jw, %i.lt
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.split.us871
  %i.lv = phi <4 x float> [ %i.jw, %.lr.ph.split.us871 ], [ %i.lu, %bb.aq ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0443801.us857, i64 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us871, !llvm.loop !371

._crit_edge.us:                                   ; preds = %bb.ar, %bb.at
  %.us-phi815.us = phi float [ %.5509.us.us, %bb.at ], [ %.2506828.us, %bb.ar ] ; 2 uses
  %i.lx = phi <2 x float> [ %i.pc, %bb.at ], [ %i.ja, %bb.ar ] ; 2 uses
  %i.ly = phi <2 x float> [ %i.oz, %bb.at ], [ %i.jb, %bb.ar ] ; 2 uses
  %i.lz = phi <2 x float> [ %i.pa, %bb.at ], [ %i.jc, %bb.ar ] ; 2 uses
  %i.ma = phi <4 x float> [ %i.pb, %bb.at ], [ %i.lv, %bb.ar ] ; 2 uses
  %i.mb = phi <2 x float> [ %i.pd, %bb.at ], [ %i.je, %bb.ar ] ; 2 uses
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 1 ; 2 uses
  %exitcond1042.not = icmp eq i64 %indvars.iv.next1039, %wide.trip.count1041
  br i1 %exitcond1042.not, label %._crit_edge843.loopexit, label %.lr.ph842.split.us, !llvm.loop !372

.lr.ph.split.us.us:                               ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us, %bb.at
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %bb.at ], [ 0, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 6 uses
  %.0443801.us.us = phi ptr [ %i.pe, %bb.at ], [ %.0.i626.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %.3507789.us.us = phi float [ %.5509.us.us, %bb.at ], [ %.2506828.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %i.mc = phi <2 x float> [ %i.oz, %bb.at ], [ %i.jb, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %i.md = phi <2 x float> [ %i.pa, %bb.at ], [ %i.jc, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %i.me = phi <4 x float> [ %i.pb, %bb.at ], [ %i.jd, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %i.mf = phi <2 x float> [ %i.pc, %bb.at ], [ %i.ja, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %i.mg = phi <2 x float> [ %i.pd, %bb.at ], [ %i.je, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0.i628.us, i64 %indvars.iv1033
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !41
  %i.mj = icmp eq i8 %i.mi, 0
  br i1 %i.mj, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.split.us.us
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %indvars.iv1033
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !41
  %i.mm = zext i8 %i.ml to i32
  %i.mn = mul nsw i32 %i.hq, %i.mm
  %i.mo = add nuw nsw i64 %indvars.iv1033, %i.cb  ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !41
  %i.mr = zext i8 %i.mq to i32
  %i.ms = mul nsw i32 %i.hv, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %indvars.iv1033
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !41
  %i.mv = zext i8 %i.mu to i32
  %i.mw = mul nsw i32 %i.hz, %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %i.mo
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !41
  %i.mz = zext i8 %i.my to i32
  %i.na = mul nsw i32 %i.ic, %i.mz
  %i.nb = add i32 %i.mn, 256
  %i.nc = add i32 %i.nb, %i.ms
  %i.nd = add i32 %i.nc, %i.mw
  %i.ne = add i32 %i.nd, %i.na
  %i.nf = ashr i32 %i.ne, 9
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %.0.i625.us, i64 %indvars.iv1033
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !128 ; 2 uses
  %i.ni = sext i16 %i.nh to i32                   ; 3 uses
  %i.nj = sub nsw i32 %i.nf, %i.ni
  %i.nk = sitofp i32 %i.nj to float
  %i.nl = sitofp i16 %i.nh to float               ; 4 uses
  %i.nm = call float @llvm.fmuladd.f32(float %i.nl, float %13, float %i.nk)
  %i.nn = fadd float %15, %i.nm
  %i.no = fptosi float %i.nn to i32               ; 3 uses
  %i.np = mul nsw i32 %i.ni, %i.ni
  %i.nq = uitofp nneg i32 %i.np to float
  %i.nr = load <2 x i16>, ptr %.0443801.us.us, align 2, !tbaa !128 ; 3 uses
  %i.ns = extractelement <2 x i16> %i.nr, i64 0
  %i.nt = extractelement <2 x i16> %i.nr, i64 1
  %i.nu = insertelement <4 x i32> poison, i32 %i.no, i64 0
  %i.nv = shufflevector <4 x i32> %i.nu, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.nw = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.nl, i64 2
  %i.nx = sext i16 %i.nt to i32                   ; 4 uses
  %i.ny = sext i16 %i.ns to i32                   ; 4 uses
  %i.nz = mul nsw i32 %i.no, %i.nx
  %i.oa = mul nsw i32 %i.no, %i.ny
  %i.ob = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %i.oc = insertelement <4 x i32> %i.ob, i32 %i.nz, i64 1
  %i.od = shufflevector <4 x i32> %i.oc, <4 x i32> %i.nv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.oe = sitofp <4 x i32> %i.od to <4 x float>
  %i.of = fmul nnan <4 x float> %i.nw, %i.oe
  %i.og = fadd <4 x float> %i.me, %i.of
  %i.oh = mul nsw i32 %i.nx, %i.nx
  %i.oi = mul nsw i32 %i.ny, %i.ny
  %i.oj = uitofp nneg i32 %i.oh to float
  %i.ok = uitofp nneg i32 %i.oi to float
  %i.ol = mul nsw i32 %i.nx, %i.ny
  %i.om = sitofp i32 %i.ol to float
  %i.on = fadd float %.3507789.us.us, %i.om
  %i.oo = insertelement <2 x float> poison, float %i.ok, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.oj, i64 1
  %i.oq = fadd <2 x float> %i.mg, %i.op
  %i.or = sitofp <2 x i16> %i.nr to <2 x float>   ; 2 uses
  %i.os = fadd <2 x float> %i.mf, %i.or
  %i.ot = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ov = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.ou, <2 x float> %i.mc)
  %i.ow = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.ox = insertelement <2 x float> %i.ow, float %i.nl, i64 1
  %i.oy = fadd <2 x float> %i.md, %i.ox
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.split.us.us
  %.5509.us.us = phi float [ %.3507789.us.us, %.lr.ph.split.us.us ], [ %i.on, %bb.as ] ; 2 uses
  %i.oz = phi <2 x float> [ %i.mc, %.lr.ph.split.us.us ], [ %i.ov, %bb.as ] ; 2 uses
  %i.pa = phi <2 x float> [ %i.md, %.lr.ph.split.us.us ], [ %i.oy, %bb.as ] ; 2 uses
  %i.pb = phi <4 x float> [ %i.me, %.lr.ph.split.us.us ], [ %i.og, %bb.as ] ; 2 uses
  %i.pc = phi <2 x float> [ %i.mf, %.lr.ph.split.us.us ], [ %i.os, %bb.as ] ; 2 uses
  %i.pd = phi <2 x float> [ %i.mg, %.lr.ph.split.us.us ], [ %i.oq, %bb.as ] ; 2 uses
  %indvars.iv.next1034 = add nuw nsw i64 %indvars.iv1033, 1 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.0443801.us.us, i64 4
  %exitcond1037.not = icmp eq i64 %indvars.iv.next1034, %wide.trip.count1036
  br i1 %exitcond1037.not, label %._crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !371

._crit_edge843.loopexit:                          ; preds = %._crit_edge.us
  %i.pf = fmul <4 x float> %i.ma, <float f0x37800000, float f0x37800000, float f0xB7800000, float f0xB7800000>
  br label %._crit_edge843

._crit_edge843:                                   ; preds = %.lr.ph842, %._crit_edge843.loopexit, %bb.an
  %.2506.lcssa = phi float [ %.1505, %bb.an ], [ %.us-phi815.us, %._crit_edge843.loopexit ], [ %.1505, %.lr.ph842 ] ; 2 uses
  %i.pg = phi <2 x float> [ %i.ie, %bb.an ], [ %i.lx, %._crit_edge843.loopexit ], [ %i.ie, %.lr.ph842 ] ; 2 uses
  %i.ph = phi <2 x float> [ %i.if, %bb.an ], [ %i.ly, %._crit_edge843.loopexit ], [ %i.if, %.lr.ph842 ] ; 2 uses
  %i.pi = phi <2 x float> [ %i.ig, %bb.an ], [ %i.lz, %._crit_edge843.loopexit ], [ %i.ig, %.lr.ph842 ] ; 2 uses
  %i.pj = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %bb.an ], [ %i.pf, %._crit_edge843.loopexit ], [ <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %.lr.ph842 ] ; 8 uses
  %i.pk = phi <2 x float> [ %i.ih, %bb.an ], [ %i.mb, %._crit_edge843.loopexit ], [ %i.ih, %.lr.ph842 ] ; 2 uses
  br i1 %i.id, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge843
  %i.pl = fmul <2 x float> %i.pg, splat (float f0xB7800000)
  %i.pm = fmul <2 x float> %i.ph, splat (float f0xB7800000)
  %i.pn = fmul <2 x float> %i.pi, splat (float f0x37800000)
  %i.po = fmul float %.2506.lcssa, f0x37800000
  %i.pp = fmul <2 x float> %i.pk, splat (float f0x37800000)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge843
  %.6510 = phi float [ %i.po, %bb.au ], [ %.2506.lcssa, %._crit_edge843 ] ; 19 uses
  %.2475 = phi float [ %i.gg, %bb.au ], [ %.1474, %._crit_edge843 ] ; 13 uses
  %i.pq = phi <2 x float> [ %i.pl, %bb.au ], [ %i.pg, %._crit_edge843 ] ; 12 uses
  %i.pr = phi <2 x float> [ %i.pm, %bb.au ], [ %i.ph, %._crit_edge843 ] ; 9 uses
  %i.ps = phi <2 x float> [ %i.pn, %bb.au ], [ %i.pi, %._crit_edge843 ] ; 7 uses
  %i.pt = phi <2 x float> [ %i.pp, %bb.au ], [ %i.pk, %._crit_edge843 ] ; 5 uses
  %i.pu = fneg float %.6510
  %i.pv = fmul float %.6510, %i.pu
  %i.pw = extractelement <2 x float> %i.ps, i64 1 ; 14 uses
  %i.px = fmul float %i.pv, %i.pw
  %i.py = extractelement <2 x float> %i.ps, i64 0 ; 6 uses
  %i.pz = fmul float %.2475, %i.py
  %i.qa = fmul float %.6510, %i.pz
  %i.qb = fmul float %.6510, %i.qa
  %i.qc = call float @llvm.fmuladd.f32(float %i.px, float %i.pw, float %i.qb)
  %i.qd = fmul float %.6510, 2.000000e+00         ; 3 uses
  %i.qe = fmul float %i.qd, %i.pw                 ; 2 uses
  %i.qf = extractelement <2 x float> %i.pq, i64 0 ; 11 uses
  %i.qg = fmul float %i.qf, %i.qe
  %i.qh = extractelement <2 x float> %i.pr, i64 1 ; 14 uses
  %i.qi = call float @llvm.fmuladd.f32(float %i.qg, float %i.qh, float %i.qc)
  %i.qj = extractelement <2 x float> %i.pq, i64 1 ; 14 uses
  %i.qk = fmul float %i.qj, %i.qe
  %i.ql = extractelement <2 x float> %i.pr, i64 0 ; 12 uses
  %i.qm = call float @llvm.fmuladd.f32(float %i.qk, float %i.ql, float %i.qi)
  %i.qn = fmul float %i.py, 2.000000e+00
  %i.qo = fmul float %.6510, %i.qn
  %i.qp = fneg float %i.qf                        ; 2 uses
  %i.qq = fmul float %i.qo, %i.qp
  %i.qr = call float @llvm.fmuladd.f32(float %i.qq, float %i.qj, float %i.qm)
  %i.qs = fmul float %.2475, 2.000000e+00
  %i.qt = fmul float %.6510, %i.qs
  %i.qu = fneg float %i.ql                        ; 4 uses
  %i.qv = fmul float %i.qt, %i.qu
  %i.qw = call float @llvm.fmuladd.f32(float %i.qv, float %i.qh, float %i.qr)
  %i.qx = extractelement <2 x float> %i.pt, i64 0 ; 7 uses
  %i.qy = extractelement <2 x float> %i.pt, i64 1 ; 7 uses
  %i.qz = fmul float %i.qx, %i.qy                 ; 4 uses
  %i.ra = fmul float %i.qz, %i.pw
  %i.rb = call float @llvm.fmuladd.f32(float %i.ra, float %i.pw, float %i.qw)
  %i.rc = fmul float %i.qy, 2.000000e+00
  %i.rd = fmul float %i.rc, %i.pw
  %i.re = fmul float %i.rd, %i.qp
  %i.rf = call float @llvm.fmuladd.f32(float %i.re, float %i.ql, float %i.rb)
  %i.rg = fmul float %i.qx, 2.000000e+00
  %i.rh = fmul float %i.rg, %i.pw
  %i.ri = fneg float %i.qj                        ; 4 uses
  %i.rj = fmul float %i.rh, %i.ri
  %i.rk = call float @llvm.fmuladd.f32(float %i.rj, float %i.qh, float %i.rf)
  %foldExtExtBinop1221 = fmul <2 x float> %i.pq, %i.pq ; 2 uses
  %i.rl = extractelement <2 x float> %foldExtExtBinop1221, i64 0
  %i.rm = fneg float %i.qh                        ; 4 uses
  %i.rn = fmul float %i.rl, %i.rm
  %i.ro = call float @llvm.fmuladd.f32(float %i.rn, float %i.qh, float %i.rk)
  %i.rp = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rq = fmul <2 x float> %i.pt, %i.rp           ; 4 uses
  %i.rr = extractelement <2 x float> %i.rq, i64 1 ; 2 uses
  %i.rs = fmul float %i.qf, %i.rr
  %i.rt = call float @llvm.fmuladd.f32(float %i.rs, float %i.qf, float %i.ro)
  %i.ru = fmul float %i.qf, 2.000000e+00
  %i.rv = fmul float %i.ru, %i.qj
  %i.rw = fmul float %i.rv, %i.ql
  %i.rx = call float @llvm.fmuladd.f32(float %i.rw, float %i.qh, float %i.rt)
  %i.ry = fmul float %i.qj, %i.qj
  %i.rz = fmul float %i.ry, %i.qu                 ; 2 uses
  %i.sa = call float @llvm.fmuladd.f32(float %i.rz, float %i.ql, float %i.rx)
  %i.sb = extractelement <2 x float> %i.rq, i64 0
  %i.sc = fmul float %i.qj, %i.sb
  %i.sd = call float @llvm.fmuladd.f32(float %i.sc, float %i.qj, float %i.sa)
  %i.se = fmul float %i.qy, %.2475                ; 2 uses
  %i.sf = fmul float %i.se, %i.ql
  %i.sg = call float @llvm.fmuladd.f32(float %i.sf, float %i.ql, float %i.sd)
  %i.sh = fmul float %i.qx, %.2475                ; 2 uses
  %i.si = fmul float %i.sh, %i.qh
  %i.sj = call float @llvm.fmuladd.f32(float %i.si, float %i.qh, float %i.sg)
  %i.sk = fneg float %i.py
  %i.sl = fmul float %i.qz, %i.sk
  %i.sm = call float @llvm.fmuladd.f32(float %i.sl, float %.2475, float %i.sj) ; 3 uses
  %i.sn = fadd float %i.qx, %i.qy
  %i.so = fsub float %i.qx, %i.qy                 ; 2 uses
  %i.sp = fmul float %.6510, 4.000000e+00
  %i.sq = fmul float %.6510, %i.sp
  %i.sr = call float @llvm.fmuladd.f32(float %i.so, float %i.so, float %i.sq)
  %i.ss = call noundef float @sqrtf(float noundef %i.sr) #20
  %i.st = fsub float %i.sn, %i.ss
  %i.su = fdiv float %i.st, %i.gi
  %i.sv = load float, ptr %i.by, align 4, !tbaa !210
  %i.sw = fcmp olt float %i.su, %i.sv
  br i1 %i.sw, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.sx = load i32, ptr %i.at, align 8, !tbaa !207 ; 2 uses
  %i.sy = icmp eq i32 %i.sx, 0
  br i1 %i.sy, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.sz = load ptr, ptr %i.bi, align 8, !tbaa !200 ; 2 uses
  %.not564 = icmp ne ptr %i.sz, null
  %i.ta = call float @llvm.fabs.f32(float %i.sm)
  %i.tb = fcmp olt float %i.ta, f0x34000000
  %or.cond760 = select i1 %.not564, i1 true, i1 %i.tb
  br i1 %or.cond760, label %bb.az, label %.thread

bb.ay:                                            ; preds = %bb.aw
  %.old = call noundef float @llvm.fabs.f32(float %i.sm)
  %.old759 = fcmp olt float %.old, f0x34000000
  br i1 %.old759, label %._crit_edge1046, label %bb.ba

._crit_edge1046:                                  ; preds = %bb.ay
  %.pre1047 = load ptr, ptr %i.bi, align 8, !tbaa !200
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge1046, %bb.ax
  %i.tc = phi ptr [ %.pre1047, %._crit_edge1046 ], [ %i.sz, %bb.ax ]
  %i.td = getelementptr inbounds i8, ptr %i.tc, i64 %indvars.iv1043
  store i8 0, ptr %i.td, align 1, !tbaa !41
  %.pre1048 = load i32, ptr %i.at, align 8, !tbaa !207
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.te = phi i32 [ %i.sx, %bb.ay ], [ %.pre1048, %bb.az ]
  %i.tf = icmp sgt i32 %i.te, 0
  br i1 %i.tf, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  %i.tg = load ptr, ptr %i.av, align 8, !tbaa !370
  %i.th = getelementptr inbounds [8 x i8], ptr %i.tg, i64 %indvars.iv1043
  store <2 x float> %.sroa.0678.0, ptr %i.th, align 4
  %i.ti = load ptr, ptr %i.bg, align 8, !tbaa !202
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.ti, i64 %indvars.iv1043
  %.sroa.076.sroa.5.0.insert.ext = zext i32 %16 to i64
  %.sroa.076.sroa.5.0.insert.shift = shl nuw i64 %.sroa.076.sroa.5.0.insert.ext, 32
  %.sroa.076.sroa.0.0.insert.ext = zext i32 %14 to i64
  %.sroa.076.sroa.0.0.insert.insert = or disjoint i64 %.sroa.076.sroa.5.0.insert.shift, %.sroa.076.sroa.0.0.insert.ext
  store i64 %.sroa.076.sroa.0.0.insert.insert, ptr %i.tj, align 4
  br label %.thread

bb.bc:                                            ; preds = %bb.av
  %i.tk = fdiv float 1.000000e+00, %i.sm          ; 5 uses
  %i.tl = fmul float %i.qy, %i.pw                 ; 2 uses
  %i.tm = fmul float %i.pw, 2.000000e+00          ; 2 uses
  %i.tn = fmul float %i.qj, %i.tm
  %i.to = fmul float %i.tn, %i.rm
  %i.tp = call float @llvm.fmuladd.f32(float %i.tl, float %i.pw, float %i.to)
  %i.tq = fmul float %i.qj, %i.py
  %i.tr = fmul float %.2475, %i.qh
  %i.ts = fmul float %.6510, %i.py                ; 4 uses
  %i.tt = fmul float %.6510, %i.pw                ; 3 uses
  %i.tu = fneg float %i.pw                        ; 2 uses
  %i.tv = fmul float %i.tt, %i.tu
  %i.tw = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tx = fmul <2 x float> %i.tw, %i.ps           ; 2 uses
  %i.ty = insertelement <2 x float> %i.pq, float %.2475, i64 0
  %i.tz = shufflevector <2 x float> %i.pr, <2 x float> %i.ps, <2 x i32> <i32 0, i32 3>
  %i.ua = fmul <2 x float> %i.ty, %i.tz           ; 2 uses
  %i.ub = fmul float %.6510, %.2475               ; 2 uses
  %i.uc = fneg float %i.ub                        ; 2 uses
  %i.ud = fmul float %i.qf, %i.qj
  %i.ue = fmul float %i.qf, %i.rm
  %i.uf = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ug = fmul <2 x float> %i.pq, %i.uf           ; 2 uses
  %i.uh = fmul float %i.qx, %i.pw                 ; 3 uses
  %i.ui = fmul float %i.qf, %i.tm
  %i.uj = fmul float %i.uh, %i.ri
  %i.uk = fneg float %i.ts
  %i.ul = fneg float %i.uh
  %i.um = fmul float %i.qd, %i.qf
  %i.un = fmul float %i.um, %i.ri
  %i.uo = call float @llvm.fmuladd.f32(float %i.ub, float %.6510, float %i.un)
  %i.up = fneg float %i.qz                        ; 2 uses
  %i.uq = fmul float %.6510, %.6510
  %i.ur = fmul float %i.uq, %i.tu
  %i.us = call float @llvm.fmuladd.f32(float %i.qz, float %i.pw, float %i.ur)
  %i.ut = fmul float %.6510, %i.qf
  %i.uu = fmul float %.6510, %i.qj
  %i.uv = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.uw = fmul <2 x float> %i.pt, %i.uv           ; 3 uses
  %i.ux = extractelement <2 x float> %i.uw, i64 1
  %i.uy = call float @llvm.fmuladd.f32(float %i.ux, float %i.qf, float %i.uo)
  %i.uz = extractelement <2 x float> %i.uw, i64 0
  %i.va = call float @llvm.fmuladd.f32(float %i.uz, float %i.qj, float %i.uy)
  %i.vb = call float @llvm.fmuladd.f32(float %i.up, float %.2475, float %i.va)
  %i.vc = fmul float %i.vb, %i.tk
  %i.vd = fneg <2 x float> %i.uw                  ; 2 uses
  %i.ve = extractelement <2 x float> %i.vd, i64 0
  %i.vf = call float @llvm.fmuladd.f32(float %i.ve, float %i.qh, float %i.us)
  %i.vg = call float @llvm.fmuladd.f32(float %i.ut, float %i.qh, float %i.vf)
  %i.vh = call float @llvm.fmuladd.f32(float %i.uu, float %i.ql, float %i.vg)
  %i.vi = extractelement <2 x float> %i.vd, i64 1
  %i.vj = call float @llvm.fmuladd.f32(float %i.vi, float %i.ql, float %i.vh)
  %i.vk = fmul float %i.vj, %i.tk                 ; 2 uses
  %i.vl = call float @llvm.fmuladd.f32(float %i.tq, float %i.qj, float %i.tp)
  %i.vm = fmul float %i.ui, %i.qu
  %i.vn = call float @llvm.fmuladd.f32(float %i.ts, float %.2475, float %i.tv)
  %i.vo = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.vp = fneg <2 x float> %i.tx
  %i.vq = shufflevector <2 x float> %i.vo, <2 x float> %i.vp, <2 x i32> <i32 0, i32 2>
  %i.vr = shufflevector <2 x float> %i.pq, <2 x float> %i.ps, <2 x i32> <i32 3, i32 1>
  %i.vs = insertelement <2 x float> poison, float %i.vm, i64 0
  %i.vt = insertelement <2 x float> %i.vs, float %i.vn, i64 1
  %i.vu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vq, <2 x float> %i.vr, <2 x float> %i.vt)
  %i.vv = shufflevector <2 x float> %i.pq, <2 x float> %i.pr, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.vw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tx, <2 x float> %i.vv, <2 x float> %i.vu)
  %i.vx = call float @llvm.fmuladd.f32(float %i.tr, float %i.qh, float %i.vl)
  %i.vy = fneg float %i.rr
  %i.vz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ua, <2 x float> %i.uf, <2 x float> %i.vw)
  %i.wa = shufflevector <2 x float> %i.rq, <2 x float> %i.ua, <2 x i32> <i32 0, i32 2>
  %i.wb = fneg <2 x float> %i.wa
  %i.wc = call float @llvm.fmuladd.f32(float %i.vy, float %.2475, float %i.vx)
  %i.wd = insertelement <2 x float> %i.pr, float %.2475, i64 0
  %i.we = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wb, <2 x float> %i.wd, <2 x float> %i.vz)
  %i.wf = fmul float %i.wc, %i.tk
  %i.wg = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.wh = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.wi = fmul <2 x float> %i.we, %i.wh           ; 2 uses
  %i.wj = insertelement <2 x float> poison, float %i.tt, i64 0
  %i.wk = shufflevector <2 x float> %i.wj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wl = insertelement <2 x float> poison, float %i.uj, i64 0
  %i.wm = insertelement <2 x float> %i.wl, float %i.rz, i64 1
  %i.wn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wk, <2 x float> %i.pq, <2 x float> %i.wm)
  %i.wo = insertelement <2 x float> %foldExtExtBinop1221, float %i.tl, i64 1
  %i.wp = fneg <2 x float> %i.wo                  ; 2 uses
  %i.wq = shufflevector <2 x float> %i.vv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wp, <2 x float> %i.wq, <2 x float> %i.wn)
  %i.ws = insertelement <2 x float> poison, float %i.sh, i64 0
  %i.wt = insertelement <2 x float> %i.ws, float %i.uc, i64 1
  %i.wu = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.wv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wt, <2 x float> %i.wu, <2 x float> %i.wr)
  %i.ww = insertelement <2 x float> poison, float %i.uc, i64 0
  %i.wx = insertelement <2 x float> %i.ww, float %i.se, i64 1
  %i.wy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wx, <2 x float> %i.uf, <2 x float> %i.wv)
  %i.wz = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.xa = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xa, <2 x float> %i.pr, <2 x float> %i.wy)
  %i.xc = fmul <2 x float> %i.xb, %i.wh           ; 3 uses
  %i.xd = shufflevector <2 x float> %i.ug, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xe = insertelement <2 x float> %i.xd, float %i.ts, i64 1
  %i.xf = insertelement <2 x float> poison, float %i.qu, i64 0
  %i.xg = insertelement <2 x float> %i.xf, float %i.ri, i64 1
  %i.xh = fmul <2 x float> %i.xe, %i.xg
  %i.xi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rq, <2 x float> %i.uv, <2 x float> %i.xh)
  %i.xj = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.xk = insertelement <2 x float> %i.xj, float %i.ue, i64 1
  %i.xl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xk, <2 x float> %i.vv, <2 x float> %i.xi)
  %i.xm = insertelement <2 x float> %i.wk, float %i.ul, i64 0
  %i.xn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xm, <2 x float> %i.wu, <2 x float> %i.xl)
  %i.xo = insertelement <2 x float> %i.wp, float %i.tt, i64 0
  %i.xp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xo, <2 x float> %i.uf, <2 x float> %i.xn)
  %i.xq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ug, <2 x float> %i.wu, <2 x float> %i.xp)
  %i.xr = fmul <2 x float> %i.xq, %i.wh           ; 3 uses
  %i.xs = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xt = insertelement <2 x float> %i.xs, float %i.wf, i64 1
  %i.xu = shufflevector <4 x float> %i.pj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.xv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xt, <2 x float> %i.xu, <2 x float> zeroinitializer)
  %i.xw = shufflevector <4 x float> %i.pj, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wi, <2 x float> %i.xw, <2 x float> %i.xv)
  %i.xy = shufflevector <4 x float> %i.pj, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.xz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xc, <2 x float> %i.xy, <2 x float> %i.xx)
  %i.ya = shufflevector <4 x float> %i.pj, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.yb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xr, <2 x float> %i.ya, <2 x float> %i.xz) ; 5 uses
  %i.yc = extractelement <2 x float> %i.xc, i64 1
  %i.yd = extractelement <2 x float> %i.xc, i64 0
  %i.ye = extractelement <4 x float> %i.pj, i64 0 ; 2 uses
  %i.yf = call float @llvm.fmuladd.f32(float %i.yc, float %i.ye, float 0.000000e+00)
  %i.yg = extractelement <4 x float> %i.pj, i64 1 ; 2 uses
  %i.yh = call float @llvm.fmuladd.f32(float %i.yd, float %i.yg, float %i.yf)
  %i.yi = extractelement <4 x float> %i.pj, i64 2 ; 2 uses
  %i.yj = call float @llvm.fmuladd.f32(float %i.vc, float %i.yi, float %i.yh)
  %i.yk = extractelement <4 x float> %i.pj, i64 3 ; 2 uses
  %i.yl = call float @llvm.fmuladd.f32(float %i.vk, float %i.yk, float %i.yj) ; 3 uses
  %i.ym = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yn = extractelement <2 x float> %i.yb, i64 1
  %i.yo = fneg float %i.yn                        ; 3 uses
  %i.yp = extractelement <2 x float> %i.yb, i64 0
  %i.yq = fneg float %i.yp                        ; 4 uses
  %i.yr = fneg float %i.yl                        ; 2 uses
  %.sroa.0664.1 = select i1 %i.id, float %i.yr, float %.sroa.0664.0943
  %i.ys = fsub <2 x float> %.sroa.0678.1940, %i.ym ; 2 uses
  %i.yt = fsub <2 x float> %i.ys, %i.dy
  %i.yu = load ptr, ptr %i.av, align 8, !tbaa !370
  %i.yv = getelementptr inbounds [8 x i8], ptr %i.yu, i64 %indvars.iv1043
  store <2 x float> %i.yt, ptr %i.yv, align 4
  %i.yw = load ptr, ptr %i.bg, align 8, !tbaa !202 ; 2 uses
  %i.yx = getelementptr inbounds [8 x i8], ptr %i.yw, i64 %indvars.iv1043
  store <2 x float> %i.fw, ptr %i.yx, align 4, !tbaa !48
  %i.yy = fpext float %i.yo to double             ; 2 uses
  %i.yz = fpext float %i.yq to double             ; 2 uses
  %i.za = fmul double %i.yz, %i.yz
  %i.zb = call noundef double @llvm.fmuladd.f64(double %i.yy, double %i.yy, double %i.za) ; 2 uses
  %i.zc = load double, ptr %i.bz, align 8, !tbaa !206
  %i.zd = fcmp ugt double %i.zb, %i.zc
  br i1 %i.zd, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  %i.ze = fsub float %i.yo, %.sroa.0666.0942
  %i.zf = call noundef float @llvm.fabs.f32(float %i.ze)
  %i.zg = fpext float %i.zf to double
  %i.zh = fcmp uge double %i.zg, 1.000000e-02     ; 2 uses
  br i1 %i.zh, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.zi = fsub float %i.yq, %.sroa.7668.0941
  %i.zj = call noundef float @llvm.fabs.f32(float %i.zi)
  %i.zk = fpext float %i.zj to double
  %i.zl = fcmp olt double %i.zk, 1.000000e-02
  br i1 %i.zl, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.zm = fcmp ugt double %i.zb, 1.000000e-03
  br i1 %i.zm, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.zn = fadd float %i.yl, %.sroa.0664.1
  %i.zo = call noundef float @llvm.fabs.f32(float %i.zn)
  %i.zp = fpext float %i.zo to double
  %i.zq = fcmp olt double %i.zp, 1.000000e-02
  br i1 %i.zq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %i.zr = getelementptr inbounds [8 x i8], ptr %i.yw, i64 %indvars.iv1043 ; 2 uses
  %i.zs = fmul float %i.qd, %i.ql
  %i.zt = fmul float %i.zs, %i.rm
  %i.zu = call float @llvm.fmuladd.f32(float %i.ts, float %.6510, float %i.zt)
  %i.zv = fmul float %i.qy, %i.ql
  %i.zw = call float @llvm.fmuladd.f32(float %i.zv, float %i.ql, float %i.zu)
  %i.zx = fmul float %i.qx, %i.qh
  %i.zy = call float @llvm.fmuladd.f32(float %i.zx, float %i.qh, float %i.zw)
  %i.zz = call float @llvm.fmuladd.f32(float %i.up, float %i.py, float %i.zy)
  %i.aaa = fmul float %i.zz, %i.tk
  %i.aab = extractelement <2 x float> %i.xr, i64 1
  %i.aac = extractelement <2 x float> %i.xr, i64 0
  %i.aad = load ptr, ptr %i.av, align 8, !tbaa !370
  %i.aae = getelementptr inbounds [8 x i8], ptr %i.aad, i64 %indvars.iv1043 ; 2 uses
  %i.aaf = fmul <2 x float> %i.yb, splat (float 5.000000e-01)
  %i.aag = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
end_hunk_0
