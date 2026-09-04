Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ma?download=true
inline.NumInlined: 4528
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN3jxl6N_SSE413FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
  %.sroa.14.0995 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.14.2, %bb.cu ] ; 7 uses
  %.sroa.35.0994 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_SSE413FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.35.2, %bb.cu ] ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -48 ; 8 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !235 ; 8 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -40 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !236 ; 40 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -32 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !237 ; 22 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !238 ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -16 ; 2 uses
  %.sroa.0216.0.copyload = load i64, ptr %i.ch, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.14.0995, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !25 ; 5 uses
  %i.ci = icmp eq i64 %i.cc, %i.ce
  br i1 %i.ci, label %bb.cu, label %bb.b, !llvm.loop !167

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i64 0, ptr %7, align 8, !tbaa !240
  store i32 0, ptr %i.aa, align 8, !tbaa !241
  store i64 0, ptr %i.ab, align 8, !tbaa !242
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ac, align 8, !tbaa !68
  store i32 0, ptr %i.ae, align 8, !tbaa !243
  store i32 0, ptr %i.af, align 4, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store i64 0, ptr %8, align 8, !tbaa !240
  store i32 0, ptr %i.ag, align 8, !tbaa !241
  store i64 0, ptr %i.ah, align 8, !tbaa !242
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ai, align 8, !tbaa !68
  store i32 0, ptr %i.ak, align 8, !tbaa !243
  store i32 0, ptr %i.al, align 4, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store i64 0, ptr %9, align 8, !tbaa !240
  store i32 0, ptr %i.am, align 8, !tbaa !241
  store i64 0, ptr %i.an, align 8, !tbaa !242
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ao, align 8, !tbaa !68
  store i32 0, ptr %i.aq, align 8, !tbaa !243
  store i32 0, ptr %i.ar, align 4, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store i64 0, ptr %10, align 8, !tbaa !240
  store i32 0, ptr %i.as, align 8, !tbaa !241
  store i64 0, ptr %i.at, align 8, !tbaa !242
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.au, align 8, !tbaa !68
  store i32 0, ptr %i.aw, align 8, !tbaa !243
  store i32 0, ptr %i.ax, align 4, !tbaa !244
  %i.cj = icmp ult i64 %i.cc, %i.ce
  %or.cond = and i1 %.not1000, %i.cj
  br i1 %or.cond, label %.preheader840.lr.ph.split.us, label %._crit_edge932

.preheader840.lr.ph.split.us:                     ; preds = %bb.b
  %i.ck = load ptr, ptr %0, align 8, !tbaa !73
  %i.cl = sub nuw i64 %i.ce, %i.cc
  %xtraiter = and i64 %i.cl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cm = sub i64 %i.cc, %i.ce
  %i.cn = icmp ugt i64 %i.cm, -4
  br label %.preheader840.us

.preheader840.us:                                 ; preds = %._crit_edge.us, %.preheader840.lr.ph.split.us
  %.0348931.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %i.du, %._crit_edge.us ] ; 2 uses
  %.0349930.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %.lcssa, %._crit_edge.us ] ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.0348931.us
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !78 ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader840.us, %.prol.preheader
  %.0347929.us.prol = phi i64 [ %i.cv, %.prol.preheader ], [ %i.cc, %.preheader840.us ] ; 2 uses
  %.1350928.us.prol = phi i64 [ %i.cu, %.prol.preheader ], [ %.0349930.us, %.preheader840.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader840.us ]
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347929.us.prol
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !80
  %i.cs = zext i8 %i.cr to i64
  %i.ct = add nuw nsw i64 %i.cs, 1
  %i.cu = tail call i64 @llvm.umax.i64(i64 %.1350928.us.prol, i64 %i.ct) ; 3 uses
  %i.cv = add nuw i64 %.0347929.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !168

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader840.us
  %.lcssa.unr = phi i64 [ poison, %.preheader840.us ], [ %i.cu, %.prol.preheader ]
  %.0347929.us.unr = phi i64 [ %i.cc, %.preheader840.us ], [ %i.cv, %.prol.preheader ]
  %.1350928.us.unr = phi i64 [ %.0349930.us, %.preheader840.us ], [ %i.cu, %.prol.preheader ]
  br i1 %i.cn, label %._crit_edge.us, label %.preheader840.us.new

.preheader840.us.new:                             ; preds = %.prol.loopexit, %.preheader840.us.new
  %.0347929.us = phi i64 [ %i.dt, %.preheader840.us.new ], [ %.0347929.us.unr, %.prol.loopexit ] ; 5 uses
  %.1350928.us = phi i64 [ %i.ds, %.preheader840.us.new ], [ %.1350928.us.unr, %.prol.loopexit ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347929.us
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !80
  %i.cy = zext i8 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = tail call i64 @llvm.umax.i64(i64 %.1350928.us, i64 %i.cz)
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347929.us
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !80
  %i.de = zext i8 %i.dd to i64
  %i.df = add nuw nsw i64 %i.de, 1
  %i.dg = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.df)
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347929.us
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !80
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add nuw nsw i64 %i.dk, 1
  %i.dm = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 %i.dl)
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347929.us
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 6
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !80
  %i.dq = zext i8 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1
  %i.ds = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.dr) ; 2 uses
  %i.dt = add nuw i64 %.0347929.us, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dt, %i.ce
  br i1 %exitcond.not.3, label %._crit_edge.us, label %.preheader840.us.new, !llvm.loop !169

._crit_edge.us:                                   ; preds = %.preheader840.us.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ds, %.preheader840.us.new ] ; 2 uses
  %i.du = add nuw i64 %.0348931.us, 1             ; 2 uses
  %exitcond1024.not = icmp eq i64 %i.du, %umax
  br i1 %exitcond1024.not, label %._crit_edge932.loopexit, label %.preheader840.us, !llvm.loop !170

._crit_edge932.loopexit:                          ; preds = %._crit_edge.us
  %i.dv = add nuw nsw i64 %.lcssa, 3
  %i.dw = and i64 %i.dv, -4
  br label %._crit_edge932

._crit_edge932:                                   ; preds = %._crit_edge932.loopexit, %bb.b
  %.0349.lcssa = phi i64 [ 0, %bb.b ], [ %i.dw, %._crit_edge932.loopexit ] ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.dx = mul i64 %.0349.lcssa, %i.r              ; 4 uses
  %.not.i = icmp eq i64 %i.dx, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge932
  %i.dy = icmp ugt i64 %i.dx, 4611686018427387903
  br i1 %i.dy, label %bb.d, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #34
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i: ; preds = %bb.c
  %i.dz = shl nuw i64 %i.dx, 2                    ; 3 uses
  %i.ea = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #35 ; 5 uses
  store ptr %i.ea, ptr %11, align 8, !tbaa !85
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dx
  store ptr %i.eb, ptr %i.az, align 8, !tbaa !86
  %i.ec = getelementptr i8, ptr %i.ea, i64 %i.dz
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ea, i8 0, i64 %i.dz, i1 false), !tbaa !21
  store ptr %i.ec, ptr %i.ay, align 8, !tbaa !87
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit:    ; preds = %._crit_edge932, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i
  %i.ed = phi ptr [ null, %._crit_edge932 ], [ %i.ea, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %.not1000, label %bb.e, label %._crit_edge938

bb.e:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit
  br i1 %i.bc, label %bb.f, label %.lr.ph937

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #34
  unreachable

.lr.ph937:                                        ; preds = %bb.e
  %i.ee = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 5 uses
  store ptr %i.ee, ptr %12, align 8, !tbaa !65
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.q   ; 2 uses
  store ptr %i.ef, ptr %i.bb, align 8, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ee, i8 0, i64 %i.q, i1 false), !tbaa !21
  store ptr %i.ef, ptr %i.ba, align 8, !tbaa !64
  %i.eg = load ptr, ptr %0, align 8, !tbaa !73
  %i.eh = icmp ult i64 %i.cc, %i.ce
  %i.ei = sub i64 %i.ce, %i.cc                    ; 3 uses
  %.neg = add i64 %i.cc, 1
  %xtraiter1302 = and i64 %i.ei, 1
  %i.ej = icmp eq i64 %i.ce, %.neg
  %unroll_iter = and i64 %i.ei, -2
  %lcmp.mod1303.not = icmp eq i64 %xtraiter1302, 0
  %lcmp.mod1305 = trunc i64 %i.ei to i1
  br label %bb.g

._crit_edge938:                                   ; preds = %._crit_edge, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit
  %i.ek = phi ptr [ null, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ], [ %i.ee, %._crit_edge ]
  %i.el = load ptr, ptr %6, align 8, !tbaa !32
  %i.em = getelementptr inbounds nuw [40 x i8], ptr %i.el, i64 %i.ca
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !41
  %i.ep = load ptr, ptr %i.k, align 8, !tbaa !59  ; 2 uses
  %i.eq = load ptr, ptr %i.l, align 8, !tbaa !58  ; 2 uses
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 2
  %i.ev = tail call noundef ptr @wmemchr(ptr noundef %i.ep, i32 noundef signext %i.eo, i64 noundef %i.eu) #38 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ev, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.eq, ptr %i.ev
  %18 = ptrtoint ptr %spec.select.i.i.i to i64
  %19 = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.ew = ptrtoint ptr %19 to i64
  %i.ex = sub i64 %18, %i.ew                      ; 2 uses
  %i.ey = ashr exact i64 %i.ex, 2
  %i.ez = mul i64 %i.ey, %.0349.lcssa
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ez ; 5 uses
  %.idx.i = shl i64 %.0349.lcssa, 2               ; 13 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %.0349.lcssa, 0        ; 5 uses
  br i1 %.not6.i.i, label %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge938
  %i.fc = add i64 %.idx.i, -4                     ; 2 uses
  %i.fd = lshr exact i64 %i.fc, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check1250 = icmp ult i64 %i.fc, 28
  br i1 %min.iters.check1250, label %.lr.ph.i.i.preheader1275, label %vector.ph1251

vector.ph1251:                                    ; preds = %.lr.ph.i.i.preheader
  %n.vec1252 = and i64 %i.fe, 9223372036854775800 ; 3 uses
  %i.ff = shl i64 %n.vec1252, 2
  %i.fg = getelementptr i8, ptr %i.fa, i64 %i.ff
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1260, %vector.body1253 ] ; 2 uses
  %vec.phi1255 = phi <4 x i32> [ zeroinitializer, %vector.ph1251 ], [ %i.fj, %vector.body1253 ]
  %vec.phi1256 = phi <4 x i32> [ zeroinitializer, %vector.ph1251 ], [ %i.fk, %vector.body1253 ]
  %i.fh = shl i64 %index1254, 2
  %next.gep1257 = getelementptr i8, ptr %i.fa, i64 %i.fh ; 2 uses
  %i.fi = getelementptr i8, ptr %next.gep1257, i64 16
  %wide.load1258 = load <4 x i32>, ptr %next.gep1257, align 4, !tbaa !21
  %wide.load1259 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !21
  %i.fj = add <4 x i32> %wide.load1258, %vec.phi1255 ; 2 uses
  %i.fk = add <4 x i32> %wide.load1259, %vec.phi1256 ; 2 uses
  %index.next1260 = add nuw i64 %index1254, 8     ; 2 uses
  %i.fl = icmp eq i64 %index.next1260, %n.vec1252
  br i1 %i.fl, label %middle.block1261, label %vector.body1253, !llvm.loop !171

middle.block1261:                                 ; preds = %vector.body1253
  %bin.rdx1262 = add <4 x i32> %i.fk, %i.fj
  %i.fm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1262) ; 2 uses
  %cmp.n1263 = icmp eq i64 %i.fe, %n.vec1252
  br i1 %cmp.n1263, label %.lr.ph.preheader.i, label %.lr.ph.i.i.preheader1275

.lr.ph.i.i.preheader1275:                         ; preds = %.lr.ph.i.i.preheader, %middle.block1261
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.fm, %middle.block1261 ]
  %.057.i.i.ph = phi ptr [ %i.fa, %.lr.ph.i.i.preheader ], [ %i.fg, %middle.block1261 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader1275, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %i.fo, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader1275 ]
  %.057.i.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader1275 ] ; 2 uses
  %i.fn = load i32, ptr %.057.i.i, align 4, !tbaa !21
  %i.fo = add nsw i32 %i.fn, %.08.i.i             ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fp, %i.fb
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !172

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i, %middle.block1261
  %.lcssa1144 = phi i32 [ %i.fm, %middle.block1261 ], [ %i.fo, %.lr.ph.i.i ] ; 2 uses
  %i.fq = sitofp i32 %.lcssa1144 to float
  %i.fr = fdiv nnan float 1.000000e+00, %i.fq
  %i.fs = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = insertelement <4 x i32> poison, i32 %.lcssa1144, i64 0
  %i.fv = shufflevector <4 x i32> %i.fu, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.031.046.i = phi <4 x float> [ %i.gw, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %.045.i = phi i64 [ %i.gx, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.045.i
  %i.fx = load <4 x i32>, ptr %i.fw, align 1, !tbaa !25 ; 2 uses
  %i.fy = sitofp <4 x i32> %i.fx to <4 x float>   ; 2 uses
  %i.fz = fmul <4 x float> %i.ft, %i.fy
  %i.ga = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fz, <4 x float> splat (float f0x39800000))
  %i.gb = icmp eq <4 x i32> %i.fx, %i.fv
  %i.gc = bitcast <4 x float> %i.ga to <4 x i32>  ; 2 uses
  %i.gd = add <4 x i32> %i.gc, splat (i32 -1059760811) ; 2 uses
  %i.ge = ashr <4 x i32> %i.gd, splat (i32 23)
  %i.gf = and <4 x i32> %i.gd, splat (i32 -8388608)
  %i.gg = sub <4 x i32> %i.gc, %i.gf
  %i.gh = bitcast <4 x i32> %i.gg to <4 x float>
  %i.gi = sitofp <4 x i32> %i.ge to <4 x float>
  %i.gj = fadd <4 x float> %i.gh, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.gk = fmul <4 x float> %i.gj, splat (float f0x3F3E11C7)
  %i.gl = fadd <4 x float> %i.gk, splat (float f0x3FB6E02B)
  %i.gm = fmul <4 x float> %i.gj, splat (float f0x3E32458C)
  %i.gn = fadd <4 x float> %i.gm, splat (float f0x3F813CED)
  fence acq_rel
  %i.go = fmul <4 x float> %i.gj, %i.gl
  %i.gp = fadd <4 x float> %i.go, splat (float f0xB5F85AB0)
  %i.gq = fmul <4 x float> %i.gj, %i.gn
  %i.gr = fadd <4 x float> %i.gq, splat (float f0x3F7D8625)
  fence acq_rel
  %i.gs = fdiv <4 x float> %i.gp, %i.gr
  %i.gt = fadd <4 x float> %i.gs, %i.gi
  %i.gu = select <4 x i1> %i.gb, <4 x float> zeroinitializer, <4 x float> %i.gt
  %i.gv = fmul <4 x float> %i.gu, %i.fy
  %i.gw = fsub <4 x float> %.sroa.031.046.i, %i.gv ; 2 uses
  %i.gx = add nuw i64 %.045.i, 4                  ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %.0349.lcssa
  br i1 %i.gy, label %.lr.ph.i, label %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit, !llvm.loop !0

_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit:  ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %12, align 8, !tbaa !65
  br label %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit

_ZN3jxl6N_SSE412EstimateBitsEPKim.exit:           ; preds = %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit, %._crit_edge938
  %i.gz = phi ptr [ %i.ek, %._crit_edge938 ], [ %.pre, %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit ]
  %.sroa.031.0.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge938 ], [ %i.gw, %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit.loopexit ] ; 2 uses
  %i.ha = shufflevector <4 x float> %.sroa.031.0.lcssa.i, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.hb = fadd <4 x float> %.sroa.031.0.lcssa.i, %i.ha ; 2 uses
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hd = fadd <4 x float> %i.hb, %i.hc
  %i.he = extractelement <4 x float> %i.hd, i64 0
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ex
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !21
  %i.hh = uitofp i32 %i.hg to float
  %i.hi = fadd float %i.he, %i.hh                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  store i64 0, ptr %13, align 8, !tbaa !240
  store i32 0, ptr %i.bd, align 8, !tbaa !241
  store i64 0, ptr %i.be, align 8, !tbaa !242
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bf, align 8, !tbaa !68
  store i32 0, ptr %i.bh, align 8, !tbaa !243
  store i32 0, ptr %i.bi, align 4, !tbaa !244
  %i.hj = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.hk = load ptr, ptr %i.bj, align 8, !tbaa !93 ; 2 uses
  %.not833939 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not833939, label %.thread812, label %.lr.ph941

.lr.ph941:                                        ; preds = %_ZN3jxl6N_SSE412EstimateBitsEPKim.exit
  %.sroa.033.0.extract.trunc.i = trunc i64 %.sroa.0216.0.copyload to i32 ; 2 uses
  %.sroa.234.0.extract.shift.i = lshr i64 %.sroa.0216.0.copyload, 32 ; 2 uses
  %.sroa.234.0.extract.trunc.i = trunc nuw i64 %.sroa.234.0.extract.shift.i to i32
  %.sroa.335.8.extract.trunc.i = trunc i64 %.sroa.6.0.copyload to i32 ; 2 uses
  %.sroa.536.8.extract.shift.i = lshr i64 %.sroa.6.0.copyload, 32 ; 2 uses
  %.sroa.536.8.extract.trunc.i = trunc nuw i64 %.sroa.536.8.extract.shift.i to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph937, %._crit_edge
  %.0345936 = phi i64 [ 0, %.lr.ph937 ], [ %i.if, %._crit_edge ] ; 4 uses
  br i1 %i.eh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %.0345936
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !78 ; 3 uses
  %i.hn = load ptr, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  %i.ho = mul i64 %.0345936, %.0349.lcssa
  %i.hp = getelementptr [4 x i8], ptr %i.ed, i64 %i.ho ; 3 uses
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod1303.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0343935.epil.init = phi i64 [ %i.cc, %.lr.ph ], [ %i.jj, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0344934.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ji, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1305)
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %.0343935.epil.init ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %.0343935.epil.init
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !45
  %i.ht = zext i16 %i.hs to i32                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !94
  %i.hw = zext i8 %i.hv to i32
  %i.hx = mul nuw nsw i32 %i.hw, %i.ht
  %i.hy = load i8, ptr %i.hq, align 1, !tbaa !80
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr [4 x i8], ptr %i.hp, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !21
  %i.ic = add i32 %i.ib, %i.ht
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !21
  %i.id = add i32 %i.hx, %.0344934.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.0344.lcssa = phi i32 [ 0, %bb.g ], [ %i.ji, %._crit_edge.loopexit.unr-lcssa ], [ %i.id, %.epil.preheader ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.0345936
  store i32 %.0344.lcssa, ptr %i.ie, align 4, !tbaa !21
  %i.if = add nuw i64 %.0345936, 1                ; 2 uses
  %exitcond1027.not = icmp eq i64 %i.if, %umax
  br i1 %exitcond1027.not, label %._crit_edge938, label %bb.g, !llvm.loop !173

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.0343935 = phi i64 [ %i.jj, %.lr.ph.new ], [ %i.cc, %.lr.ph ] ; 4 uses
  %.0344934 = phi i32 [ %i.ji, %.lr.ph.new ], [ 0, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %.0343935 ; 2 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %.0343935
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !45
  %i.ij = zext i16 %i.ii to i32                   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !94
  %i.im = zext i8 %i.il to i32
  %i.in = mul nuw nsw i32 %i.im, %i.ij
  %i.io = load i8, ptr %i.ig, align 1, !tbaa !80
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr [4 x i8], ptr %i.hp, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !21
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_AVX213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
  %min.iters.check1559 = icmp ult i64 %i.cl, 5
  %min.iters.check1561 = icmp ult i64 %i.cl, 17
  %i.cm = and i64 %i.cl, 15                       ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 16, i64 %i.cm      ; 2 uses
  %n.vec1563 = sub i64 %i.cl, %i.co               ; 3 uses
  %i.cp = add i64 %i.cc, %n.vec1563
  %min.epilog.iters.check1588 = icmp samesign ult i64 %i.co, 5
  %i.cq = and i64 %i.cl, 3                        ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %i.cq
  %n.vec1590 = sub i64 %i.cl, %i.cs               ; 2 uses
  %i.ct = add i64 %i.cc, %n.vec1590
  br label %iter.check1585

iter.check1585:                                   ; preds = %._crit_edge.us, %.preheader840.lr.ph.split.us
  %.0348931.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %i.ef, %._crit_edge.us ] ; 2 uses
  %.0349930.us = phi i64 [ 0, %.preheader840.lr.ph.split.us ], [ %i.ed, %._crit_edge.us ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.0348931.us
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !78 ; 6 uses
  br i1 %min.iters.check1559, label %vec.epilog.scalar.ph1586.preheader, label %vector.main.loop.iter.check1560

vector.main.loop.iter.check1560:                  ; preds = %iter.check1585
  br i1 %min.iters.check1561, label %vec.epilog.ph1589, label %vector.ph1562

vector.ph1562:                                    ; preds = %vector.main.loop.iter.check1560
  %broadcast.splatinsert1564 = insertelement <4 x i64> poison, i64 %.0349930.us, i64 0
  %broadcast.splat1565 = shufflevector <4 x i64> %broadcast.splatinsert1564, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1566

vector.body1566:                                  ; preds = %vector.body1566, %vector.ph1562
  %index1567 = phi i64 [ 0, %vector.ph1562 ], [ %index.next1578, %vector.body1566 ] ; 2 uses
  %vec.phi1568 = phi <4 x i64> [ %broadcast.splat1565, %vector.ph1562 ], [ %i.dm, %vector.body1566 ]
  %vec.phi1569 = phi <4 x i64> [ %broadcast.splat1565, %vector.ph1562 ], [ %i.dn, %vector.body1566 ]
  %vec.phi1570 = phi <4 x i64> [ %broadcast.splat1565, %vector.ph1562 ], [ %i.do, %vector.body1566 ]
  %vec.phi1571 = phi <4 x i64> [ %broadcast.splat1565, %vector.ph1562 ], [ %i.dp, %vector.body1566 ]
  %i.cw = add nuw i64 %i.cc, %index1567           ; 4 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = getelementptr [2 x i8], ptr %i.cv, i64 %i.cw
  %i.dd = getelementptr i8, ptr %i.dc, i64 24
  %wide.vec = load <8 x i8>, ptr %i.cx, align 1, !tbaa !80
  %strided.vec = shufflevector <8 x i8> %wide.vec, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec1572 = load <8 x i8>, ptr %i.cz, align 1, !tbaa !80
  %strided.vec1573 = shufflevector <8 x i8> %wide.vec1572, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec1574 = load <8 x i8>, ptr %i.db, align 1, !tbaa !80
  %strided.vec1575 = shufflevector <8 x i8> %wide.vec1574, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec1576 = load <8 x i8>, ptr %i.dd, align 1, !tbaa !80
  %strided.vec1577 = shufflevector <8 x i8> %wide.vec1576, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.de = zext <4 x i8> %strided.vec to <4 x i64>
  %i.df = zext <4 x i8> %strided.vec1573 to <4 x i64>
  %i.dg = zext <4 x i8> %strided.vec1575 to <4 x i64>
  %i.dh = zext <4 x i8> %strided.vec1577 to <4 x i64>
  %i.di = add nuw nsw <4 x i64> %i.de, splat (i64 1)
  %i.dj = add nuw nsw <4 x i64> %i.df, splat (i64 1)
  %i.dk = add nuw nsw <4 x i64> %i.dg, splat (i64 1)
  %i.dl = add nuw nsw <4 x i64> %i.dh, splat (i64 1)
  %i.dm = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1568, <4 x i64> %i.di) ; 2 uses
  %i.dn = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1569, <4 x i64> %i.dj) ; 2 uses
  %i.do = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1570, <4 x i64> %i.dk) ; 2 uses
  %i.dp = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1571, <4 x i64> %i.dl) ; 2 uses
  %index.next1578 = add nuw i64 %index1567, 16    ; 2 uses
  %i.dq = icmp eq i64 %index.next1578, %n.vec1563
  br i1 %i.dq, label %vec.epilog.iter.check1587, label %vector.body1566, !llvm.loop !269

vec.epilog.iter.check1587:                        ; preds = %vector.body1566
  %rdx.minmax = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %i.dm, <4 x i64> %i.dn)
  %rdx.minmax1580 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax, <4 x i64> %i.do)
  %rdx.minmax1581 = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax1580, <4 x i64> %i.dp)
  %i.dr = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %rdx.minmax1581) ; 2 uses
  br i1 %min.epilog.iters.check1588, label %vec.epilog.scalar.ph1586.preheader, label %vec.epilog.ph1589, !prof !366

vec.epilog.ph1589:                                ; preds = %vector.main.loop.iter.check1560, %vec.epilog.iter.check1587
  %vec.epilog.resume.val1582 = phi i64 [ %n.vec1563, %vec.epilog.iter.check1587 ], [ 0, %vector.main.loop.iter.check1560 ]
  %bc.merge.rdx1584 = phi i64 [ %i.dr, %vec.epilog.iter.check1587 ], [ %.0349930.us, %vector.main.loop.iter.check1560 ]
  %broadcast.splatinsert1591 = insertelement <4 x i64> poison, i64 %bc.merge.rdx1584, i64 0
  %broadcast.splat1592 = shufflevector <4 x i64> %broadcast.splatinsert1591, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cc
  br label %vec.epilog.vector.body1593

vec.epilog.vector.body1593:                       ; preds = %vec.epilog.vector.body1593, %vec.epilog.ph1589
  %index1594 = phi i64 [ %vec.epilog.resume.val1582, %vec.epilog.ph1589 ], [ %index.next1598, %vec.epilog.vector.body1593 ] ; 2 uses
  %vec.phi1595 = phi <4 x i64> [ %broadcast.splat1592, %vec.epilog.ph1589 ], [ %i.dw, %vec.epilog.vector.body1593 ]
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %index1594
  %wide.vec1596 = load <8 x i8>, ptr %i.dt, align 1, !tbaa !80
  %strided.vec1597 = shufflevector <8 x i8> %wide.vec1596, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.du = zext <4 x i8> %strided.vec1597 to <4 x i64>
  %i.dv = add nuw nsw <4 x i64> %i.du, splat (i64 1)
  %i.dw = tail call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi1595, <4 x i64> %i.dv) ; 2 uses
  %index.next1598 = add nuw i64 %index1594, 4     ; 2 uses
  %i.dx = icmp eq i64 %index.next1598, %n.vec1590
  br i1 %i.dx, label %vec.epilog.middle.block1599, label %vec.epilog.vector.body1593, !llvm.loop !270

vec.epilog.middle.block1599:                      ; preds = %vec.epilog.vector.body1593
  %i.dy = tail call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %i.dw)
  br label %vec.epilog.scalar.ph1586.preheader

vec.epilog.scalar.ph1586.preheader:               ; preds = %iter.check1585, %vec.epilog.iter.check1587, %vec.epilog.middle.block1599
  %.0347929.us.ph = phi i64 [ %i.cc, %iter.check1585 ], [ %i.cp, %vec.epilog.iter.check1587 ], [ %i.ct, %vec.epilog.middle.block1599 ]
  %.1350928.us.ph = phi i64 [ %.0349930.us, %iter.check1585 ], [ %i.dr, %vec.epilog.iter.check1587 ], [ %i.dy, %vec.epilog.middle.block1599 ]
  br label %vec.epilog.scalar.ph1586

vec.epilog.scalar.ph1586:                         ; preds = %vec.epilog.scalar.ph1586.preheader, %vec.epilog.scalar.ph1586
  %.0347929.us = phi i64 [ %i.ee, %vec.epilog.scalar.ph1586 ], [ %.0347929.us.ph, %vec.epilog.scalar.ph1586.preheader ] ; 2 uses
  %.1350928.us = phi i64 [ %i.ed, %vec.epilog.scalar.ph1586 ], [ %.1350928.us.ph, %vec.epilog.scalar.ph1586.preheader ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %.0347929.us
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !80
  %i.eb = zext i8 %i.ea to i64
  %i.ec = add nuw nsw i64 %i.eb, 1
  %i.ed = tail call i64 @llvm.umax.i64(i64 %.1350928.us, i64 %i.ec) ; 3 uses
  %i.ee = add nuw i64 %.0347929.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %i.ce
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph1586, !llvm.loop !271

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph1586
  %i.ef = add nuw i64 %.0348931.us, 1             ; 2 uses
  %exitcond1024.not = icmp eq i64 %i.ef, %umax
  br i1 %exitcond1024.not, label %._crit_edge932.loopexit, label %iter.check1585, !llvm.loop !272

._crit_edge932.loopexit:                          ; preds = %._crit_edge.us
  %i.eg = add nuw nsw i64 %i.ed, 7
  %i.eh = and i64 %i.eg, -8
  br label %._crit_edge932

._crit_edge932:                                   ; preds = %._crit_edge932.loopexit, %bb.b
  %.0349.lcssa = phi i64 [ 0, %bb.b ], [ %i.eh, %._crit_edge932.loopexit ] ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.ei = mul i64 %.0349.lcssa, %i.r              ; 4 uses
  %.not.i = icmp eq i64 %i.ei, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge932
  %i.ej = icmp ugt i64 %i.ei, 4611686018427387903
  br i1 %i.ej, label %bb.d, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #34
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i: ; preds = %bb.c
  %i.ek = shl nuw i64 %i.ei, 2                    ; 3 uses
  %i.el = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #35 ; 5 uses
  store ptr %i.el, ptr %11, align 8, !tbaa !85
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ei
  store ptr %i.em, ptr %i.az, align 8, !tbaa !86
  %i.en = getelementptr i8, ptr %i.el, i64 %i.ek
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.el, i8 0, i64 %i.ek, i1 false), !tbaa !21
  store ptr %i.en, ptr %i.ay, align 8, !tbaa !87
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit:    ; preds = %._crit_edge932, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i
  %i.eo = phi ptr [ null, %._crit_edge932 ], [ %i.el, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %.not1000, label %bb.e, label %._crit_edge938

bb.e:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit
  br i1 %i.bc, label %bb.f, label %.lr.ph937

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #34
  unreachable

.lr.ph937:                                        ; preds = %bb.e
  %i.ep = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 5 uses
  store ptr %i.ep, ptr %12, align 8, !tbaa !65
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.q   ; 2 uses
  store ptr %i.eq, ptr %i.bb, align 8, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ep, i8 0, i64 %i.q, i1 false), !tbaa !21
  store ptr %i.eq, ptr %i.ba, align 8, !tbaa !64
  %i.er = load ptr, ptr %0, align 8, !tbaa !73
  %i.es = icmp ult i64 %i.cc, %i.ce
  %i.et = sub i64 %i.ce, %i.cc                    ; 3 uses
  %.neg1682 = add i64 %i.cc, 1
  %xtraiter = and i64 %i.et, 1
  %i.eu = icmp eq i64 %i.ce, %.neg1682
  %unroll_iter = and i64 %i.et, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1660 = trunc i64 %i.et to i1
  br label %bb.g

._crit_edge938:                                   ; preds = %._crit_edge, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit
  %i.ev = phi ptr [ null, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ], [ %i.ep, %._crit_edge ]
  %i.ew = load ptr, ptr %6, align 8, !tbaa !32
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.ew, i64 %i.ca
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !41
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !59  ; 2 uses
  %i.fb = load ptr, ptr %i.l, align 8, !tbaa !58  ; 2 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 2
  %i.fg = tail call noundef ptr @wmemchr(ptr noundef %i.fa, i32 noundef signext %i.ez, i64 noundef %i.ff) #38 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.fg, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.fb, ptr %i.fg
  %18 = ptrtoint ptr %spec.select.i.i.i to i64
  %19 = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.fh = ptrtoint ptr %19 to i64
  %i.fi = sub i64 %18, %i.fh                      ; 2 uses
  %i.fj = ashr exact i64 %i.fi, 2
  %i.fk = mul i64 %i.fj, %.0349.lcssa
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fk ; 5 uses
  %.idx.i = shl i64 %.0349.lcssa, 2               ; 12 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %.0349.lcssa, 0        ; 5 uses
  br i1 %.not6.i.i, label %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit, label %iter.check1542

iter.check1542:                                   ; preds = %._crit_edge938
  %i.fn = add i64 %.idx.i, -4                     ; 2 uses
  %i.fo = lshr exact i64 %i.fn, 2
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 5 uses
  %min.iters.check1519 = icmp ult i64 %i.fn, 124
  br i1 %min.iters.check1519, label %vec.epilog.ph1546, label %vector.ph1520

vector.ph1520:                                    ; preds = %iter.check1542
  %i.fq = and i64 %i.fp, 24
  %n.vec1521 = and i64 %i.fp, 9223372036854775776 ; 4 uses
  br label %vector.body1522

vector.body1522:                                  ; preds = %vector.body1522, %vector.ph1520
  %index1523 = phi i64 [ 0, %vector.ph1520 ], [ %index.next1533, %vector.body1522 ] ; 2 uses
  %vec.phi1524 = phi <8 x i32> [ zeroinitializer, %vector.ph1520 ], [ %i.fv, %vector.body1522 ]
  %vec.phi1525 = phi <8 x i32> [ zeroinitializer, %vector.ph1520 ], [ %i.fw, %vector.body1522 ]
  %vec.phi1526 = phi <8 x i32> [ zeroinitializer, %vector.ph1520 ], [ %i.fx, %vector.body1522 ]
  %vec.phi1527 = phi <8 x i32> [ zeroinitializer, %vector.ph1520 ], [ %i.fy, %vector.body1522 ]
  %i.fr = shl i64 %index1523, 2
  %next.gep1528 = getelementptr i8, ptr %i.fl, i64 %i.fr ; 4 uses
  %i.fs = getelementptr i8, ptr %next.gep1528, i64 32
  %i.ft = getelementptr i8, ptr %next.gep1528, i64 64
  %i.fu = getelementptr i8, ptr %next.gep1528, i64 96
  %wide.load1529 = load <8 x i32>, ptr %next.gep1528, align 4, !tbaa !21
  %wide.load1530 = load <8 x i32>, ptr %i.fs, align 4, !tbaa !21
  %wide.load1531 = load <8 x i32>, ptr %i.ft, align 4, !tbaa !21
  %wide.load1532 = load <8 x i32>, ptr %i.fu, align 4, !tbaa !21
  %i.fv = add <8 x i32> %wide.load1529, %vec.phi1524 ; 2 uses
  %i.fw = add <8 x i32> %wide.load1530, %vec.phi1525 ; 2 uses
  %i.fx = add <8 x i32> %wide.load1531, %vec.phi1526 ; 2 uses
  %i.fy = add <8 x i32> %wide.load1532, %vec.phi1527 ; 2 uses
  %index.next1533 = add nuw i64 %index1523, 32    ; 2 uses
  %i.fz = icmp eq i64 %index.next1533, %n.vec1521
  br i1 %i.fz, label %middle.block1534, label %vector.body1522, !llvm.loop !273

middle.block1534:                                 ; preds = %vector.body1522
  %bin.rdx1535 = add <8 x i32> %i.fw, %i.fv
  %bin.rdx1536 = add <8 x i32> %i.fx, %bin.rdx1535
  %bin.rdx1537 = add <8 x i32> %i.fy, %bin.rdx1536
  %i.ga = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1537) ; 3 uses
  %cmp.n1538 = icmp eq i64 %i.fp, %n.vec1521
  br i1 %cmp.n1538, label %.lr.ph.preheader.i, label %vec.epilog.iter.check1544

vec.epilog.iter.check1544:                        ; preds = %middle.block1534
  %min.epilog.iters.check1545 = icmp eq i64 %i.fq, 0
  br i1 %min.epilog.iters.check1545, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1546, !prof !127

vec.epilog.ph1546:                                ; preds = %iter.check1542, %vec.epilog.iter.check1544
  %vec.epilog.resume.val1539 = phi i64 [ %n.vec1521, %vec.epilog.iter.check1544 ], [ 0, %iter.check1542 ]
  %bc.merge.rdx1540 = phi i32 [ %i.ga, %vec.epilog.iter.check1544 ], [ 0, %iter.check1542 ]
  %n.vec1547 = and i64 %i.fp, 9223372036854775800 ; 3 uses
  %i.gb = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1540, i64 0
  br label %vec.epilog.vector.body1548

vec.epilog.vector.body1548:                       ; preds = %vec.epilog.vector.body1548, %vec.epilog.ph1546
  %index1549 = phi i64 [ %vec.epilog.resume.val1539, %vec.epilog.ph1546 ], [ %index.next1553, %vec.epilog.vector.body1548 ] ; 2 uses
  %vec.phi1550 = phi <8 x i32> [ %i.gb, %vec.epilog.ph1546 ], [ %i.gd, %vec.epilog.vector.body1548 ]
  %i.gc = shl i64 %index1549, 2
  %next.gep1551 = getelementptr i8, ptr %i.fl, i64 %i.gc
  %wide.load1552 = load <8 x i32>, ptr %next.gep1551, align 4, !tbaa !21
  %i.gd = add <8 x i32> %wide.load1552, %vec.phi1550 ; 2 uses
  %index.next1553 = add nuw i64 %index1549, 8     ; 2 uses
  %i.ge = icmp eq i64 %index.next1553, %n.vec1547
  br i1 %i.ge, label %vec.epilog.middle.block1554, label %vec.epilog.vector.body1548, !llvm.loop !274

vec.epilog.middle.block1554:                      ; preds = %vec.epilog.vector.body1548
  %i.gf = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.gd) ; 2 uses
  %cmp.n1555 = icmp eq i64 %i.fp, %n.vec1547
  br i1 %cmp.n1555, label %.lr.ph.preheader.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.iter.check1544, %vec.epilog.middle.block1554
  %.08.i.i.ph = phi i32 [ %i.ga, %vec.epilog.iter.check1544 ], [ %i.gf, %vec.epilog.middle.block1554 ]
  %.pn.in = phi i64 [ %n.vec1521, %vec.epilog.iter.check1544 ], [ %n.vec1547, %vec.epilog.middle.block1554 ]
  %.pn = shl i64 %.pn.in, 2
  %.057.i.i.ph = getelementptr i8, ptr %i.fl, i64 %.pn
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %i.gh, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ]
  %.057.i.i = phi ptr [ %i.gi, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.gg = load i32, ptr %.057.i.i, align 4, !tbaa !21
  %i.gh = add nsw i32 %i.gg, %.08.i.i             ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gi, %i.fm
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !275

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i, %vec.epilog.middle.block1554, %middle.block1534
  %.lcssa1144 = phi i32 [ %i.gf, %vec.epilog.middle.block1554 ], [ %i.ga, %middle.block1534 ], [ %i.gh, %.lr.ph.i.i ] ; 2 uses
  %i.gj = sitofp i32 %.lcssa1144 to float
  %i.gk = fdiv nnan float 1.000000e+00, %i.gj
  %i.gl = insertelement <8 x float> poison, float %i.gk, i64 0
  %i.gm = shufflevector <8 x float> %i.gl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gn = insertelement <8 x i32> poison, i32 %.lcssa1144, i64 0
  %i.go = shufflevector <8 x i32> %i.gn, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.031.049.i = phi <8 x float> [ %i.hl, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %.048.i = phi i64 [ %i.hm, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.048.i
  %i.gq = load <8 x i32>, ptr %i.gp, align 1, !tbaa !25 ; 2 uses
  %i.gr = sitofp <8 x i32> %i.gq to <8 x float>   ; 2 uses
  %i.gs = fmul <8 x float> %i.gm, %i.gr
  %i.gt = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gs, <8 x float> splat (float f0x39800000))
  %i.gu = icmp eq <8 x i32> %i.gq, %i.go
  %i.gv = bitcast <8 x float> %i.gt to <8 x i32>  ; 2 uses
  %i.gw = add <8 x i32> %i.gv, splat (i32 -1059760811) ; 2 uses
  %i.gx = ashr <8 x i32> %i.gw, splat (i32 23)
  %i.gy = and <8 x i32> %i.gw, splat (i32 -8388608)
  %i.gz = sub <8 x i32> %i.gv, %i.gy
  %i.ha = bitcast <8 x i32> %i.gz to <8 x float>
  %i.hb = sitofp <8 x i32> %i.gx to <8 x float>
  %i.hc = fadd <8 x float> %i.ha, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.hd = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hc, <8 x float> splat (float f0x3F3E11C7), <8 x float> splat (float f0x3FB6E02B))
  %i.he = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hc, <8 x float> splat (float f0x3E32458C), <8 x float> splat (float f0x3F813CED))
  fence acq_rel
  %i.hf = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hd, <8 x float> %i.hc, <8 x float> splat (float f0xB5F85AB0))
  %i.hg = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.he, <8 x float> %i.hc, <8 x float> splat (float f0x3F7D8625))
  fence acq_rel
  %i.hh = fdiv <8 x float> %i.hf, %i.hg
  %i.hi = fadd <8 x float> %i.hh, %i.hb
  %i.hj = select <8 x i1> %i.gu, <8 x float> zeroinitializer, <8 x float> %i.hi
  %i.hk = fmul <8 x float> %i.hj, %i.gr
  %i.hl = fsub <8 x float> %.sroa.031.049.i, %i.hk ; 2 uses
  %i.hm = add nuw i64 %.048.i, 8                  ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %.0349.lcssa
  br i1 %i.hn, label %.lr.ph.i, label %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit, !llvm.loop !4

_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit:  ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %12, align 8, !tbaa !65
  br label %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit

_ZN3jxl6N_AVX212EstimateBitsEPKim.exit:           ; preds = %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit, %._crit_edge938
  %i.ho = phi ptr [ %i.ev, %._crit_edge938 ], [ %.pre, %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit ]
  %.sroa.031.0.lcssa.i = phi <8 x float> [ zeroinitializer, %._crit_edge938 ], [ %i.hl, %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit.loopexit ] ; 2 uses
  %i.hp = shufflevector <8 x float> %.sroa.031.0.lcssa.i, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.hq = fadd <8 x float> %.sroa.031.0.lcssa.i, %i.hp ; 2 uses
  %i.hr = shufflevector <8 x float> %i.hq, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.hs = fadd <8 x float> %i.hq, %i.hr           ; 2 uses
  %i.ht = shufflevector <8 x float> %i.hs, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hu = fadd <8 x float> %i.hs, %i.ht
  %i.hv = extractelement <8 x float> %i.hu, i64 0
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.fi
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !21
  %i.hy = uitofp i32 %i.hx to float
  %i.hz = fadd float %i.hv, %i.hy                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  store i64 0, ptr %13, align 8, !tbaa !361
  store i32 0, ptr %i.bd, align 8, !tbaa !362
  store i64 0, ptr %i.be, align 8, !tbaa !363
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bf, align 8, !tbaa !68
  store i32 0, ptr %i.bh, align 8, !tbaa !364
  store i32 0, ptr %i.bi, align 4, !tbaa !365
  %i.ia = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.ib = load ptr, ptr %i.bj, align 8, !tbaa !93 ; 2 uses
  %.not833939 = icmp eq ptr %i.ia, %i.ib
  br i1 %.not833939, label %.thread812, label %.lr.ph941

.lr.ph941:                                        ; preds = %_ZN3jxl6N_AVX212EstimateBitsEPKim.exit
  %.sroa.033.0.extract.trunc.i = trunc i64 %.sroa.0216.0.copyload to i32 ; 2 uses
  %.sroa.234.0.extract.shift.i = lshr i64 %.sroa.0216.0.copyload, 32 ; 2 uses
  %.sroa.234.0.extract.trunc.i = trunc nuw i64 %.sroa.234.0.extract.shift.i to i32
  %.sroa.335.8.extract.trunc.i = trunc i64 %.sroa.6.0.copyload to i32 ; 2 uses
  %.sroa.536.8.extract.shift.i = lshr i64 %.sroa.6.0.copyload, 32 ; 2 uses
  %.sroa.536.8.extract.trunc.i = trunc nuw i64 %.sroa.536.8.extract.shift.i to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph937, %._crit_edge
  %.0345936 = phi i64 [ 0, %.lr.ph937 ], [ %i.iw, %._crit_edge ] ; 4 uses
  br i1 %i.es, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %.0345936
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !78 ; 3 uses
  %i.ie = load ptr, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  %i.if = mul i64 %.0345936, %.0349.lcssa
  %i.ig = getelementptr [4 x i8], ptr %i.eo, i64 %i.if ; 3 uses
  br i1 %i.eu, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0343935.epil.init = phi i64 [ %i.cc, %.lr.ph ], [ %i.ka, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0344934.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.jz, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1660)
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.id, i64 %.0343935.epil.init ; 2 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %.0343935.epil.init
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !45
  %i.ik = zext i16 %i.ij to i32                   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE213FindBestSplitERNS_11TreeSamplesEfRKNSt3__16vectorINS_21ModularMultiplierInfoENS3_9allocatorIS5_EEEENS3_5arrayINSB_IjLm2EEELm2EEEfPNS4_INS_20PropertyDecisionNodeENS6_ISE_EEEE:_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit
  %.sroa.14.0997 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.14.2, %bb.cu ] ; 7 uses
  %.sroa.35.0996 = phi ptr [ %i.j, %_ZNSt3__16vectorIZN3jxl6N_SSE213FindBestSplitERNS1_11TreeSamplesEfRKNS0_INS1_21ModularMultiplierInfoENS_9allocatorIS5_EEEENS_5arrayINSB_IjLm2EEELm2EEEfPNS0_INS1_20PropertyDecisionNodeENS6_ISE_EEEEE8NodeInfoNS6_ISI_EEE9push_backB8nn180100EOSI_.exit ], [ %.sroa.35.2, %bb.cu ] ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -48 ; 8 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !458 ; 8 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -40 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !459 ; 40 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -32 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !460 ; 22 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !461 ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -16 ; 2 uses
  %.sroa.0216.0.copyload = load i64, ptr %i.ch, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.14.0997, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !25 ; 5 uses
  %i.ci = icmp eq i64 %i.cc, %i.ce
  br i1 %i.ci, label %bb.cu, label %bb.b, !llvm.loop !390

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i64 0, ptr %7, align 8, !tbaa !463
  store i32 0, ptr %i.aa, align 8, !tbaa !464
  store i64 0, ptr %i.ab, align 8, !tbaa !465
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ac, align 8, !tbaa !68
  store i32 0, ptr %i.ae, align 8, !tbaa !466
  store i32 0, ptr %i.af, align 4, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store i64 0, ptr %8, align 8, !tbaa !463
  store i32 0, ptr %i.ag, align 8, !tbaa !464
  store i64 0, ptr %i.ah, align 8, !tbaa !465
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ai, align 8, !tbaa !68
  store i32 0, ptr %i.ak, align 8, !tbaa !466
  store i32 0, ptr %i.al, align 4, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store i64 0, ptr %9, align 8, !tbaa !463
  store i32 0, ptr %i.am, align 8, !tbaa !464
  store i64 0, ptr %i.an, align 8, !tbaa !465
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ao, align 8, !tbaa !68
  store i32 0, ptr %i.aq, align 8, !tbaa !466
  store i32 0, ptr %i.ar, align 4, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  store i64 0, ptr %10, align 8, !tbaa !463
  store i32 0, ptr %i.as, align 8, !tbaa !464
  store i64 0, ptr %i.at, align 8, !tbaa !465
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.au, align 8, !tbaa !68
  store i32 0, ptr %i.aw, align 8, !tbaa !466
  store i32 0, ptr %i.ax, align 4, !tbaa !467
  %i.cj = icmp ult i64 %i.cc, %i.ce
  %or.cond1144 = and i1 %.not1003, %i.cj
  br i1 %or.cond1144, label %.preheader842.lr.ph.split.us, label %._crit_edge934

.preheader842.lr.ph.split.us:                     ; preds = %bb.b
  %i.ck = load ptr, ptr %0, align 8, !tbaa !73
  %i.cl = sub nuw i64 %i.ce, %i.cc
  %xtraiter = and i64 %i.cl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cm = sub i64 %i.cc, %i.ce
  %i.cn = icmp ugt i64 %i.cm, -4
  br label %.preheader842.us

.preheader842.us:                                 ; preds = %._crit_edge.us, %.preheader842.lr.ph.split.us
  %.0348933.us = phi i64 [ 0, %.preheader842.lr.ph.split.us ], [ %i.du, %._crit_edge.us ] ; 2 uses
  %.0349932.us = phi i64 [ 0, %.preheader842.lr.ph.split.us ], [ %.lcssa, %._crit_edge.us ] ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.0348933.us
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !78 ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader842.us, %.prol.preheader
  %.0347931.us.prol = phi i64 [ %i.cv, %.prol.preheader ], [ %i.cc, %.preheader842.us ] ; 2 uses
  %.1350930.us.prol = phi i64 [ %i.cu, %.prol.preheader ], [ %.0349932.us, %.preheader842.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader842.us ]
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347931.us.prol
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !80
  %i.cs = zext i8 %i.cr to i64
  %i.ct = add nuw nsw i64 %i.cs, 1
  %i.cu = tail call i64 @llvm.umax.i64(i64 %.1350930.us.prol, i64 %i.ct) ; 3 uses
  %i.cv = add nuw i64 %.0347931.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !391

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader842.us
  %.lcssa.unr = phi i64 [ poison, %.preheader842.us ], [ %i.cu, %.prol.preheader ]
  %.0347931.us.unr = phi i64 [ %i.cc, %.preheader842.us ], [ %i.cv, %.prol.preheader ]
  %.1350930.us.unr = phi i64 [ %.0349932.us, %.preheader842.us ], [ %i.cu, %.prol.preheader ]
  br i1 %i.cn, label %._crit_edge.us, label %.preheader842.us.new

.preheader842.us.new:                             ; preds = %.prol.loopexit, %.preheader842.us.new
  %.0347931.us = phi i64 [ %i.dt, %.preheader842.us.new ], [ %.0347931.us.unr, %.prol.loopexit ] ; 5 uses
  %.1350930.us = phi i64 [ %i.ds, %.preheader842.us.new ], [ %.1350930.us.unr, %.prol.loopexit ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347931.us
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !80
  %i.cy = zext i8 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = tail call i64 @llvm.umax.i64(i64 %.1350930.us, i64 %i.cz)
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347931.us
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !80
  %i.de = zext i8 %i.dd to i64
  %i.df = add nuw nsw i64 %i.de, 1
  %i.dg = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.df)
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347931.us
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !80
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add nuw nsw i64 %i.dk, 1
  %i.dm = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 %i.dl)
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.0347931.us
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 6
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !80
  %i.dq = zext i8 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1
  %i.ds = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.dr) ; 2 uses
  %i.dt = add nuw i64 %.0347931.us, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dt, %i.ce
  br i1 %exitcond.not.3, label %._crit_edge.us, label %.preheader842.us.new, !llvm.loop !392

._crit_edge.us:                                   ; preds = %.preheader842.us.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ds, %.preheader842.us.new ] ; 2 uses
  %i.du = add nuw i64 %.0348933.us, 1             ; 2 uses
  %exitcond1027.not = icmp eq i64 %i.du, %umax
  br i1 %exitcond1027.not, label %._crit_edge934.loopexit, label %.preheader842.us, !llvm.loop !393

._crit_edge934.loopexit:                          ; preds = %._crit_edge.us
  %i.dv = add nuw nsw i64 %.lcssa, 3
  %i.dw = and i64 %i.dv, -4
  br label %._crit_edge934

._crit_edge934:                                   ; preds = %._crit_edge934.loopexit, %bb.b
  %.0349.lcssa = phi i64 [ 0, %bb.b ], [ %i.dw, %._crit_edge934.loopexit ] ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.dx = mul i64 %.0349.lcssa, %i.r              ; 4 uses
  %.not.i = icmp eq i64 %i.dx, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge934
  %i.dy = icmp ugt i64 %i.dx, 4611686018427387903
  br i1 %i.dy, label %bb.d, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #34
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i: ; preds = %bb.c
  %i.dz = shl nuw i64 %i.dx, 2                    ; 3 uses
  %i.ea = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #35 ; 5 uses
  store ptr %i.ea, ptr %11, align 8, !tbaa !85
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dx
  store ptr %i.eb, ptr %i.az, align 8, !tbaa !86
  %i.ec = getelementptr i8, ptr %i.ea, i64 %i.dz
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ea, i8 0, i64 %i.dz, i1 false), !tbaa !21
  store ptr %i.ec, ptr %i.ay, align 8, !tbaa !87
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit:    ; preds = %._crit_edge934, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i
  %i.ed = phi ptr [ null, %._crit_edge934 ], [ %i.ea, %_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %.not1003, label %bb.e, label %._crit_edge940

bb.e:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit
  br i1 %i.bc, label %bb.f, label %.lr.ph939

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #34
  unreachable

.lr.ph939:                                        ; preds = %bb.e
  %i.ee = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 5 uses
  store ptr %i.ee, ptr %12, align 8, !tbaa !65
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.q   ; 2 uses
  store ptr %i.ef, ptr %i.bb, align 8, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ee, i8 0, i64 %i.q, i1 false), !tbaa !21
  store ptr %i.ef, ptr %i.ba, align 8, !tbaa !64
  %i.eg = load ptr, ptr %0, align 8, !tbaa !73
  %i.eh = icmp ult i64 %i.cc, %i.ce
  %i.ei = sub i64 %i.ce, %i.cc                    ; 3 uses
  %.neg = add i64 %i.cc, 1
  %xtraiter1306 = and i64 %i.ei, 1
  %i.ej = icmp eq i64 %i.ce, %.neg
  %unroll_iter = and i64 %i.ei, -2
  %lcmp.mod1307.not = icmp eq i64 %xtraiter1306, 0
  %lcmp.mod1309 = trunc i64 %i.ei to i1
  br label %bb.g

._crit_edge940:                                   ; preds = %._crit_edge, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit
  %i.ek = phi ptr [ null, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ], [ %i.ee, %._crit_edge ]
  %i.el = load ptr, ptr %6, align 8, !tbaa !32
  %i.em = getelementptr inbounds nuw [40 x i8], ptr %i.el, i64 %i.ca
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !41
  %i.ep = load ptr, ptr %i.k, align 8, !tbaa !59  ; 2 uses
  %i.eq = load ptr, ptr %i.l, align 8, !tbaa !58  ; 2 uses
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 2
  %i.ev = tail call noundef ptr @wmemchr(ptr noundef %i.ep, i32 noundef signext %i.eo, i64 noundef %i.eu) #38 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ev, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.eq, ptr %i.ev
  %18 = ptrtoint ptr %spec.select.i.i.i to i64
  %19 = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.ew = ptrtoint ptr %19 to i64
  %i.ex = sub i64 %18, %i.ew                      ; 2 uses
  %i.ey = ashr exact i64 %i.ex, 2
  %i.ez = mul i64 %i.ey, %.0349.lcssa
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ez ; 5 uses
  %.idx.i = shl i64 %.0349.lcssa, 2               ; 13 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %.0349.lcssa, 0        ; 5 uses
  br i1 %.not6.i.i, label %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge940
  %i.fc = add i64 %.idx.i, -4                     ; 2 uses
  %i.fd = lshr exact i64 %i.fc, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check1254 = icmp ult i64 %i.fc, 28
  br i1 %min.iters.check1254, label %.lr.ph.i.i.preheader1279, label %vector.ph1255

vector.ph1255:                                    ; preds = %.lr.ph.i.i.preheader
  %n.vec1256 = and i64 %i.fe, 9223372036854775800 ; 3 uses
  %i.ff = shl i64 %n.vec1256, 2
  %i.fg = getelementptr i8, ptr %i.fa, i64 %i.ff
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %vector.ph1255
  %index1258 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1264, %vector.body1257 ] ; 2 uses
  %vec.phi1259 = phi <4 x i32> [ zeroinitializer, %vector.ph1255 ], [ %i.fj, %vector.body1257 ]
  %vec.phi1260 = phi <4 x i32> [ zeroinitializer, %vector.ph1255 ], [ %i.fk, %vector.body1257 ]
  %i.fh = shl i64 %index1258, 2
  %next.gep1261 = getelementptr i8, ptr %i.fa, i64 %i.fh ; 2 uses
  %i.fi = getelementptr i8, ptr %next.gep1261, i64 16
  %wide.load1262 = load <4 x i32>, ptr %next.gep1261, align 4, !tbaa !21
  %wide.load1263 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !21
  %i.fj = add <4 x i32> %wide.load1262, %vec.phi1259 ; 2 uses
  %i.fk = add <4 x i32> %wide.load1263, %vec.phi1260 ; 2 uses
  %index.next1264 = add nuw i64 %index1258, 8     ; 2 uses
  %i.fl = icmp eq i64 %index.next1264, %n.vec1256
  br i1 %i.fl, label %middle.block1265, label %vector.body1257, !llvm.loop !394

middle.block1265:                                 ; preds = %vector.body1257
  %bin.rdx1266 = add <4 x i32> %i.fk, %i.fj
  %i.fm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1266) ; 2 uses
  %cmp.n1267 = icmp eq i64 %i.fe, %n.vec1256
  br i1 %cmp.n1267, label %.lr.ph.preheader.i, label %.lr.ph.i.i.preheader1279

.lr.ph.i.i.preheader1279:                         ; preds = %.lr.ph.i.i.preheader, %middle.block1265
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.fm, %middle.block1265 ]
  %.057.i.i.ph = phi ptr [ %i.fa, %.lr.ph.i.i.preheader ], [ %i.fg, %middle.block1265 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader1279, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %i.fo, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader1279 ]
  %.057.i.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader1279 ] ; 2 uses
  %i.fn = load i32, ptr %.057.i.i, align 4, !tbaa !21
  %i.fo = add nsw i32 %i.fn, %.08.i.i             ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fp, %i.fb
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph.i.i, !llvm.loop !395

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i, %middle.block1265
  %.lcssa1148 = phi i32 [ %i.fm, %middle.block1265 ], [ %i.fo, %.lr.ph.i.i ] ; 2 uses
  %i.fq = sitofp i32 %.lcssa1148 to float
  %i.fr = fdiv nnan float 1.000000e+00, %i.fq
  %i.fs = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = insertelement <4 x i32> poison, i32 %.lcssa1148, i64 0
  %i.fv = shufflevector <4 x i32> %i.fu, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.031.055.i = phi <4 x float> [ %i.gv, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %.054.i = phi i64 [ %i.gw, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.054.i
  %i.fx = load <4 x i32>, ptr %i.fw, align 1, !tbaa !25 ; 2 uses
  %i.fy = sitofp <4 x i32> %i.fx to <4 x float>   ; 2 uses
  %i.fz = fmul <4 x float> %i.ft, %i.fy
  %i.ga = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fz, <4 x float> splat (float f0x39800000))
  %.not.i468 = icmp eq <4 x i32> %i.fx, %i.fv
  %i.gb = bitcast <4 x float> %i.ga to <4 x i32>  ; 2 uses
  %i.gc = add <4 x i32> %i.gb, splat (i32 -1059760811) ; 2 uses
  %i.gd = ashr <4 x i32> %i.gc, splat (i32 23)
  %i.ge = and <4 x i32> %i.gc, splat (i32 -8388608)
  %i.gf = sub <4 x i32> %i.gb, %i.ge
  %i.gg = bitcast <4 x i32> %i.gf to <4 x float>
  %i.gh = sitofp <4 x i32> %i.gd to <4 x float>
  %i.gi = fadd <4 x float> %i.gg, splat (float -1.000000e+00) ; 4 uses
  fence acq_rel
  %i.gj = fmul <4 x float> %i.gi, splat (float f0x3F3E11C7)
  %i.gk = fadd <4 x float> %i.gj, splat (float f0x3FB6E02B)
  %i.gl = fmul <4 x float> %i.gi, splat (float f0x3E32458C)
  %i.gm = fadd <4 x float> %i.gl, splat (float f0x3F813CED)
  fence acq_rel
  %i.gn = fmul <4 x float> %i.gi, %i.gk
  %i.go = fadd <4 x float> %i.gn, splat (float f0xB5F85AB0)
  %i.gp = fmul <4 x float> %i.gi, %i.gm
  %i.gq = fadd <4 x float> %i.gp, splat (float f0x3F7D8625)
  fence acq_rel
  %i.gr = fdiv <4 x float> %i.go, %i.gq
  %i.gs = fadd <4 x float> %i.gr, %i.gh
  %i.gt = select <4 x i1> %.not.i468, <4 x float> zeroinitializer, <4 x float> %i.gs
  %i.gu = fmul <4 x float> %i.gt, %i.fy
  %i.gv = fsub <4 x float> %.sroa.031.055.i, %i.gu ; 2 uses
  %i.gw = add nuw i64 %.054.i, 4                  ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %.0349.lcssa
  br i1 %i.gx, label %.lr.ph.i, label %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit, !llvm.loop !5

_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit:  ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %12, align 8, !tbaa !65
  br label %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit

_ZN3jxl6N_SSE212EstimateBitsEPKim.exit:           ; preds = %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit, %._crit_edge940
  %i.gy = phi ptr [ %i.ek, %._crit_edge940 ], [ %.pre, %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit ]
  %.sroa.031.0.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge940 ], [ %i.gv, %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit.loopexit ] ; 2 uses
  %i.gz = shufflevector <4 x float> %.sroa.031.0.lcssa.i, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ha = fadd <4 x float> %.sroa.031.0.lcssa.i, %i.gz ; 2 uses
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hc = fadd <4 x float> %i.ha, %i.hb
  %i.hd = extractelement <4 x float> %i.hc, i64 0
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ex
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !21
  %i.hg = uitofp i32 %i.hf to float
  %i.hh = fadd float %i.hd, %i.hg                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  store i64 0, ptr %13, align 8, !tbaa !463
  store i32 0, ptr %i.bd, align 8, !tbaa !464
  store i64 0, ptr %i.be, align 8, !tbaa !465
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bf, align 8, !tbaa !68
  store i32 0, ptr %i.bh, align 8, !tbaa !466
  store i32 0, ptr %i.bi, align 4, !tbaa !467
  %i.hi = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.hj = load ptr, ptr %i.bj, align 8, !tbaa !93 ; 2 uses
  %.not835941 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not835941, label %.thread814, label %.lr.ph943

.lr.ph943:                                        ; preds = %_ZN3jxl6N_SSE212EstimateBitsEPKim.exit
  %.sroa.033.0.extract.trunc.i = trunc i64 %.sroa.0216.0.copyload to i32 ; 2 uses
  %.sroa.234.0.extract.shift.i = lshr i64 %.sroa.0216.0.copyload, 32 ; 2 uses
  %.sroa.234.0.extract.trunc.i = trunc nuw i64 %.sroa.234.0.extract.shift.i to i32
  %.sroa.335.8.extract.trunc.i = trunc i64 %.sroa.6.0.copyload to i32 ; 2 uses
  %.sroa.536.8.extract.shift.i = lshr i64 %.sroa.6.0.copyload, 32 ; 2 uses
  %.sroa.536.8.extract.trunc.i = trunc nuw i64 %.sroa.536.8.extract.shift.i to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph939, %._crit_edge
  %.0345938 = phi i64 [ 0, %.lr.ph939 ], [ %i.ie, %._crit_edge ] ; 4 uses
  br i1 %i.eh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %.0345938
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !78 ; 3 uses
  %i.hm = load ptr, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  %i.hn = mul i64 %.0345938, %.0349.lcssa
  %i.ho = getelementptr [4 x i8], ptr %i.ed, i64 %i.hn ; 3 uses
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph.new

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod1307.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0343937.epil.init = phi i64 [ %i.cc, %.lr.ph ], [ %i.ji, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0344936.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.jh, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1309)
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %.0343937.epil.init ; 2 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %.0343937.epil.init
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !45
  %i.hs = zext i16 %i.hr to i32                   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !94
  %i.hv = zext i8 %i.hu to i32
  %i.hw = mul nuw nsw i32 %i.hv, %i.hs
  %i.hx = load i8, ptr %i.hp, align 1, !tbaa !80
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr [4 x i8], ptr %i.ho, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !21
  %i.ib = add i32 %i.ia, %i.hs
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !21
  %i.ic = add i32 %i.hw, %.0344936.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.0344.lcssa = phi i32 [ 0, %bb.g ], [ %i.jh, %._crit_edge.loopexit.unr-lcssa ], [ %i.ic, %.epil.preheader ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.0345938
  store i32 %.0344.lcssa, ptr %i.id, align 4, !tbaa !21
  %i.ie = add nuw i64 %.0345938, 1                ; 2 uses
  %exitcond1030.not = icmp eq i64 %i.ie, %umax
  br i1 %exitcond1030.not, label %._crit_edge940, label %bb.g, !llvm.loop !396

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.0343937 = phi i64 [ %i.ji, %.lr.ph.new ], [ %i.cc, %.lr.ph ] ; 4 uses
  %.0344936 = phi i32 [ %i.jh, %.lr.ph.new ], [ 0, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %.0343937 ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %.0343937
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !45
  %i.ii = zext i16 %i.ih to i32                   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !94
  %i.il = zext i8 %i.ik to i32
  %i.im = mul nuw nsw i32 %i.il, %i.ii
  %i.in = load i8, ptr %i.if, align 1, !tbaa !80
  %i.io = zext i8 %i.in to i64
  %i.ip = getelementptr [4 x i8], ptr %i.ho, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !21
end_hunk_2
begin_hunk_3_@_ZN3jxl11TreeSamples12SetPredictorENS_9PredictorENS_14ModularOptions8TreeModeE:bb.a
  %i.x = icmp eq i32 %1, 6
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %1, label %bb.q [
    i32 15, label %.preheader
    i32 14, label %bb.p
  ]

.preheader:                                       ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !58
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !59  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20 ; 2 uses
  %i.ad = load <2 x i32>, ptr %i.ac, align 4, !tbaa !46
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.af = load <2 x i32>, ptr %i.ab, align 4, !tbaa !46
  store <2 x i32> %i.ae, ptr %i.ab, align 4, !tbaa !46
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ag, ptr %i.ac, align 4, !tbaa !46
  br label %bb.r

bb.j:                                             ; preds = %.preheader, %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit
  %i.ah = phi ptr [ %.pre, %.preheader ], [ %.0.i, %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit ] ; 4 uses
  %.041 = phi i64 [ 0, %.preheader ], [ %i.cg, %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit ] ; 2 uses
  %i.ai = trunc nuw nsw i64 %.041 to i32          ; 2 uses
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 2 uses
  %i.ak = icmp ult ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  br label %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.an = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, 1                    ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 4611686018427387903
  br i1 %i.as, label %bb.m, label %_ZNKSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNKSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #34
  unreachable

_ZNKSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i: ; preds = %bb.l
  %i.at = ptrtoint ptr %i.aj to i64
  %i.au = sub i64 %i.at, %i.ao                    ; 2 uses
  %.not.i.i.i21 = icmp ult i64 %i.au, 9223372036854775804
  %i.av = ashr exact i64 %i.au, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.ar)
  %.0.i.i.i = select i1 %.not.i.i.i21, i64 %.sroa.speculated.i.i.i, i64 4611686018427387903 ; 4 uses
  %i.aw = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp ugt i64 %.0.i.i.i, 4611686018427387903
  br i1 %i.ax, label %bb.n, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl9PredictorEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i

bb.n:                                             ; preds = %_ZNKSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #34
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl9PredictorEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i
  %i.ay = shl nuw i64 %.0.i.i.i, 2
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #35 ; 3 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap ; 7 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.0.i.i.i
  store i32 %i.ai, ptr %i.bb, align 4, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 3 uses
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !58  ; 6 uses
  %i.bf = ptrtoaddr ptr %i.be to i64              ; 2 uses
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !59  ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl9PredictorERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl9PredictorEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = add i64 %i.bf, -4
  %i.bj = sub i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader76, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.bm = add i64 %i.ao, %i.bf
  %i.bn = add i64 %i.ba, %i.an
  %i.bo = sub i64 %i.bn, %i.bm
  %diff.check = icmp ugt i64 %i.bo, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader76, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 9223372036854775800     ; 3 uses
  %i.bp = mul i64 %n.vec, -4                      ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bb, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.be, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bs ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.be, i64 %i.bs ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %next.gep73, i64 -16
  %i.bu = getelementptr inbounds i8, ptr %next.gep73, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bt, align 4, !tbaa !46, !noalias !501
  %wide.load74 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !46, !noalias !501
  %i.bv = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bw = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bv, align 4, !tbaa !46, !noalias !501
  store <4 x i32> %wide.load74, ptr %i.bw, align 4, !tbaa !46, !noalias !501
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIN3jxl9PredictorERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader76

.lr.ph.i.i.i.i.i.i.i.i.i.preheader76:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader76, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.by = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader76 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader76 ]
  %i.bz = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !46, !noalias !501
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 3 uses
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !46, !noalias !501
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.bg
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl9PredictorERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !498

_ZNSt3__114__split_bufferIN3jxl9PredictorERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl9PredictorEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i
  %storemerge.i.i = phi ptr [ %i.bb, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl9PredictorEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ], [ %i.bq, %middle.block ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i, ptr %i.y, align 8, !tbaa !128
  store ptr %i.bd, ptr %i.z, align 8, !tbaa !128
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !128
  store ptr %i.bc, ptr %i.aa, align 8, !tbaa !128
  %.not.i4.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i4.i.i, label %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl9PredictorERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.bg to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.cf) #36
  br label %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit

_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE9push_backB8nn180100EOS2_.exit: ; preds = %bb.k, %_ZNSt3__114__split_bufferIN3jxl9PredictorERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i, %bb.o
  %.0.i = phi ptr [ %i.al, %bb.k ], [ %i.bd, %_ZNSt3__114__split_bufferIN3jxl9PredictorERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.bd, %bb.o ] ; 2 uses
  store ptr %.0.i, ptr %i.z, align 8, !tbaa !58
  %i.cg = add nuw nsw i64 %.041, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, 14
  br i1 %exitcond.not, label %bb.i, label %bb.j, !llvm.loop !499

bb.p:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE18__assign_with_sizeB8nn180100IPKS2_S8_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull @.ref.tmp.5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.ref.tmp.5, i64 8), i64 noundef 2) #33
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 %1, ptr %i.a, align 4, !tbaa !46
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE18__assign_with_sizeB8nn180100IPKS2_S8_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cj, i64 noundef 1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.i
  br i1 %i.w, label %bb.s, label %._ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit_crit_edge

._ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit_crit_edge: ; preds = %bb.r
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre45 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !59 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !58 ; 5 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  %i.cs = call noundef ptr @wmemchr(ptr noundef %i.cl, i32 noundef signext 6, i64 noundef %i.cr) #38 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.cs, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.cn, ptr %i.cs ; 3 uses
  %i.ct = ptrtoint ptr %spec.select.i.i.i to i64
  %i.cu = sub i64 %i.ct, %i.cp
  %i.cv = getelementptr inbounds i8, ptr %i.cl, i64 %i.cu ; 2 uses
  %.not.i = icmp eq ptr %spec.select.i.i.i, %i.cn
  %i.cw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 4 ; 2 uses
  %.not1314.i = icmp eq ptr %i.cw, %i.cn
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1314.i
  br i1 %or.cond.i, label %_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPN3jxl9PredictorEEES3_EET_S6_S6_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.u
  %i.cx = phi ptr [ %i.db, %bb.u ], [ %i.cw, %bb.s ] ; 2 uses
  %.sroa.010.015.i = phi ptr [ %.sroa.010.1.i, %bb.u ], [ %i.cv, %bb.s ] ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !46 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 6
  br i1 %i.cz, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  store i32 %i.cy, ptr %.sroa.010.015.i, align 4, !tbaa !46
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %.sroa.010.1.i = phi ptr [ %.sroa.010.015.i, %.lr.ph.i ], [ %i.da, %bb.t ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %.not13.i = icmp eq ptr %i.db, %i.cn
  br i1 %.not13.i, label %_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPN3jxl9PredictorEEES3_EET_S6_S6_RKT0_.exit, label %.lr.ph.i, !llvm.loop !500

_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPN3jxl9PredictorEEES3_EET_S6_S6_RKT0_.exit: ; preds = %bb.u, %bb.s
  %.sroa.010.2.i = phi ptr [ %i.cv, %bb.s ], [ %.sroa.010.1.i, %bb.u ] ; 3 uses
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !58 ; 3 uses
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !59 ; 2 uses
  %i.de = ptrtoint ptr %.sroa.010.2.i to i64      ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg ; 3 uses
  %.not.i22 = icmp eq ptr %.sroa.010.2.i, %i.dc
  br i1 %.not.i22, label %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPN3jxl9PredictorEEES3_EET_S6_S6_RKT0_.exit
  %i.di = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dj = sub i64 %i.di, %i.de
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.dj ; 3 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.di, %i.dl                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, %i.dk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl9PredictorES3_EET0_T_S5_S4_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dh, ptr nonnull align 4 %i.dk, i64 %i.dm, i1 false)
  br label %_ZNSt3__14moveB8nn180100IPN3jxl9PredictorES3_EET0_T_S5_S4_.exit.i

_ZNSt3__14moveB8nn180100IPN3jxl9PredictorES3_EET0_T_S5_S4_.exit.i: ; preds = %bb.w, %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dm ; 2 uses
  store ptr %i.dn, ptr %i.cm, align 8, !tbaa !58
  br label %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit

_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit: ; preds = %._ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit_crit_edge, %_ZNSt3__14moveB8nn180100IPN3jxl9PredictorES3_EET0_T_S5_S4_.exit.i, %_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPN3jxl9PredictorEEES3_EET_S6_S6_RKT0_.exit
  %i.do = phi ptr [ %.pre45, %._ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit_crit_edge ], [ %i.dn, %_ZNSt3__14moveB8nn180100IPN3jxl9PredictorES3_EET0_T_S5_S4_.exit.i ], [ %.sroa.010.2.i, %_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPN3jxl9PredictorEEES3_EET_S6_S6_RKT0_.exit ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !59
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2                 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !125 ; 3 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !73    ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 24                ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.du
  br i1 %i.ec, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  %i.ed = sub nuw nsw i64 %i.du, %i.eb
  call void @_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ed) #33
  br label %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit

bb.y:                                             ; preds = %_ZNSt3__16vectorIN3jxl9PredictorENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_.exit
  %i.ee = icmp ugt i64 %i.eb, %i.du
  br i1 %i.ee, label %bb.z, label %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.du ; 3 uses
  %.not6.i.i.i23 = icmp eq ptr %i.ef, %i.dw
  br i1 %.not6.i.i.i23, label %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i29, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.z, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl13ResidualTokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i27
  %.07.i.i.i25 = phi ptr [ %i.eg, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl13ResidualTokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i27 ], [ %i.dw, %bb.z ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.07.i.i.i25, i64 -24 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !78 ; 4 uses
  %.not.i.i.i.i.i.i.i26 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i.i.i26, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl13ResidualTokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i27, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i24
  %i.ei = getelementptr inbounds i8, ptr %.07.i.i.i25, i64 -16
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !129
  %i.ej = getelementptr inbounds i8, ptr %.07.i.i.i25, i64 -8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !130
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.eh to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.en) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl13ResidualTokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i27

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl13ResidualTokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i27: ; preds = %bb.aa, %.lr.ph.i.i.i24
  %.not.i.i.i28 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i.i.i28, label %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i29, label %.lr.ph.i.i.i24, !llvm.loop !488

_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i29: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl13ResidualTokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i27, %bb.z
  store ptr %i.ef, ptr %i.dv, align 8, !tbaa !125
  br label %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit

_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit: ; preds = %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i29, %bb.y, %bb.x, %bb.g, %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i, %bb.d, %bb.c
  %.sroa.038.0 = phi i32 [ 1, %bb.g ], [ 0, %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %_ZNSt3__16vectorINS0_IN3jxl13ResidualTokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i29 ]
  ret i32 %.sroa.038.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl11TreeSamples13SetPropertiesERKNSt3__16vectorIjNS1_9allocatorIjEEEENS_14ModularOptions8TreeModeE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %.not.i = icmp eq ptr %i.a, %1
  br i1 %.not.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEEaSB8nn180100ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  tail call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE18__assign_with_sizeB8nn180100IPjS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEEaSB8nn180100ERKS3_.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEEaSB8nn180100ERKS3_.exit: ; preds = %bb.a, %bb.b
  switch i32 %2, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE5eraseENS_11__wrap_iterIPKjEES7_.exit [
    i32 1, label %bb.c
    i32 0, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEEaSB8nn180100ERKS3_.exit
  tail call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE18__assign_with_sizeB8nn180100IPKjS6_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull @.ref.tmp.6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.ref.tmp.6, i64 4), i64 noundef 1) #33
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE5eraseENS_11__wrap_iterIPKjEES7_.exit

bb.d:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEEaSB8nn180100ERKS3_.exit
  tail call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE18__assign_with_sizeB8nn180100IPKjS6_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull @.ref.tmp.7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.ref.tmp.7, i64 4), i64 noundef 1) #33
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE5eraseENS_11__wrap_iterIPKjEES7_.exit

bb.e:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEEaSB8nn180100ERKS3_.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 5 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = tail call noundef ptr @wmemchr(ptr noundef %i.i, i32 noundef signext 15, i64 noundef %i.o) #38 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.p, null
  %spec.select.i.i.i.i = select i1 %.not.not.i.i.i.i, ptr %i.k, ptr %i.p ; 2 uses
  %i.q = ptrtoint ptr %spec.select.i.i.i.i to i64
  %i.r = sub i64 %i.q, %i.m
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 %i.r ; 3 uses
  %.not.i14 = icmp eq ptr %spec.select.i.i.i.i, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %.not1314.i = icmp eq ptr %i.t, %i.k
  %or.cond = select i1 %.not.i14, i1 true, i1 %.not1314.i
  br i1 %or.cond, label %_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPjEEmEET_S4_S4_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %i.u = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.010.015.i = phi ptr [ %.sroa.010.1.i, %bb.g ], [ %i.s, %bb.e ] ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21   ; 2 uses
  %i.w = icmp eq i32 %i.v, 15
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  store i32 %i.v, ptr %.sroa.010.015.i, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.010.1.i = phi ptr [ %.sroa.010.015.i, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %.not13.i = icmp eq ptr %i.y, %i.k
  br i1 %.not13.i, label %_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPjEEmEET_S4_S4_RKT0_.exit, label %.lr.ph.i, !llvm.loop !502

_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPjEEmEET_S4_S4_RKT0_.exit: ; preds = %bb.g, %bb.e
  %.sroa.010.2.i = phi ptr [ %i.s, %bb.e ], [ %.sroa.010.1.i, %bb.g ] ; 2 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !64   ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !65  ; 2 uses
  %i.ab = ptrtoint ptr %.sroa.010.2.i to i64      ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 3 uses
  %.not.i15 = icmp eq ptr %.sroa.010.2.i, %i.z
  br i1 %.not.i15, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE5eraseENS_11__wrap_iterIPKjEES7_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16removeB8nn180100INS_11__wrap_iterIPjEEmEET_S4_S4_RKT0_.exit
  %i.af = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ag = sub i64 %i.af, %i.ab
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag ; 3 uses
end_hunk_3
