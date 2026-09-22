Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 168
begin_hunk_0_@_ZN15IntersectorDataILi3EE7touchesI14GridLayoutViewILi3ELi3EEEEvRKT_:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph45, %bb.u
  %i.ce = phi ptr [ %i.bo, %.lr.ph45 ], [ %i.eq, %bb.u ] ; 2 uses
  %.sroa.033.043 = phi ptr [ %i.bn, %.lr.ph45 ], [ %i.ep, %bb.u ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.033.043, align 8, !tbaa !586 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !165
  %i.ci = icmp slt i32 %i.ch, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp slt i32 %i.ck, 1
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp slt i32 %i.cn, 1
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.co
  br i1 %or.cond14.i, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.cp = load i64, ptr %i.ce, align 8, !tbaa !706
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cf, align 4, !tbaa !165
  store <4 x i32> %i.cr, ptr %2, align 16, !tbaa !165
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ct = load <2 x i32>, ptr %i.cs, align 4, !tbaa !165
  store <2 x i32> %i.ct, ptr %i.bw, align 16, !tbaa !165
  store ptr %i.bs, ptr %i.by, align 8, !tbaa !719
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !616 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !615 ; 2 uses
  %i.cy = load ptr, ptr %i.bz, align 8, !tbaa !314 ; 9 uses
  %i.cz = load ptr, ptr %i.bs, align 8, !tbaa !315 ; 5 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = sub i64 %i.da, %i.db                    ; 3 uses
  %i.dd = ashr exact i64 %i.dc, 4                 ; 4 uses
  %i.de = load ptr, ptr %i.ca, align 8, !tbaa !316
  %.not.i.i.i.i25 = icmp eq ptr %i.cy, %i.de
  br i1 %.not.i.i.i.i25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.cq, ptr %i.cy, align 4, !tbaa !165
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cv, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !165
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.cx, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !165
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !165
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.df, ptr %i.bz, align 8, !tbaa !314
  br label %_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit

bb.p:                                             ; preds = %bb.n
  %i.dg = icmp eq i64 %i.dc, 9223372036854775792
  br i1 %i.dg, label %bb.q, label %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.dd ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dd
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 576460752303423487)
  %i.dk = select i1 %i.di, i64 576460752303423487, i64 %i.dj ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.dl = shl nuw nsw i64 %i.dk, 4
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #45 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dc ; 4 uses
  store i32 %i.cq, ptr %i.dn, align 4, !tbaa !165
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 %i.cv, ptr %.sroa.5.0..sroa_idx5.i.i, align 4, !tbaa !165
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 %i.cx, ptr %.sroa.6.0..sroa_idx7.i.i, align 4, !tbaa !165
  %.sroa.7.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 -1, ptr %.sroa.7.0..sroa_idx9.i.i, align 4, !tbaa !165
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cy
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.dm, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cz, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !317, !alias.scope !3426
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.do, %i.cy
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dm, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i
  %i.dr = load ptr, ptr %i.ca, align 8, !tbaa !316
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dt) #48
  br label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i
  store ptr %i.dm, ptr %i.bs, align 8, !tbaa !315
  store ptr %i.dq, ptr %i.bz, align 8, !tbaa !314
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.du, ptr %i.ca, align 8, !tbaa !316
  br label %_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit

_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit: ; preds = %bb.o, %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i
  %i.dv = trunc i64 %i.dd to i32
  store i32 %i.dv, ptr %i.cb, align 16, !tbaa !720
  %i.dw = load ptr, ptr %i.cc, align 8, !tbaa !749 ; 11 uses
  %i.dx = load ptr, ptr %i.cd, align 8, !tbaa !750
  %.not.i.i26 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i.i26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit
  %i.dy = load i32, ptr %2, align 16, !tbaa !165
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !165
  %i.dz = load i32, ptr %i.bt, align 4, !tbaa !165
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !165
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i32, ptr %i.bu, align 8, !tbaa !165
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !165
  %i.ed = load i32, ptr %i.bv, align 4, !tbaa !165
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !165
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eg = load i32, ptr %i.bw, align 16, !tbaa !165
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !165
  %i.eh = load i32, ptr %i.bx, align 4, !tbaa !165
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !165
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.ek = load ptr, ptr %i.by, align 8, !tbaa !719
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !719
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.em = load i32, ptr %i.cb, align 16, !tbaa !720
  store i32 %i.em, ptr %i.el, align 8, !tbaa !720
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store ptr %i.en, ptr %i.cc, align 8, !tbaa !749
  br label %_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit

bb.t:                                             ; preds = %_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit
  call void @_ZNSt6vectorI5INodeILi3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr %i.dw, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br label %_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %.pre49 = load ptr, ptr %1, align 8, !tbaa !709, !noalias !3425
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit, %bb.m
  %i.eo = phi ptr [ %.pre49, %_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit ], [ %i.ce, %bb.m ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.033.043, i64 8 ; 2 uses
  call void @_ZNK18LayoutBaseViewDataILi3ELi3E10GridLayoutILi3EEE17computeSubdomainsEv(ptr noundef nonnull align 8 dereferenceable(281) %i.eo), !noalias !3425
  %i.eq = load ptr, ptr %1, align 8, !tbaa !709, !noalias !3425 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 216
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !578, !noalias !3425
  %.not = icmp eq ptr %i.ep, %i.es
  br i1 %.not, label %_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.m, !llvm.loop !3419

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit24
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !749
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !751 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = sdiv exact i64 %i.ez, 40                ; 3 uses
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count = and i64 %i.fa, 2147483647
  br label %bb.z

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre48 = load ptr, ptr %i.et, align 8, !tbaa !716
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %i.ff = phi ptr [ %.pre48, %._crit_edge.loopexit ], [ %i.ew, %bb.v ] ; 3 uses
  %sext = shl i64 %i.fa, 32                       ; 2 uses
  %i.fg = ashr exact i64 %sext, 32
  %.idx = mul nsw i64 %i.fg, 40
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %.idx ; 3 uses
  %.not.i.i27 = icmp eq i64 %sext, 0
  br i1 %.not.i.i27, label %_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = load ptr, ptr %i.eu, align 8, !tbaa !716 ; 3 uses
  %.not11.i.i = icmp ne ptr %i.fh, %i.fj
  %.pre.i.i = ptrtoint ptr %i.fj to i64
  %.pre14.i.i = sub i64 %.pre.i.i, %i.fi          ; 3 uses
  %i.fk = icmp sgt i64 %.pre14.i.i, 0
  %or.cond.i.i = and i1 %.not11.i.i, %i.fk
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.w
  %i.fl = udiv exact i64 %.pre14.i.i, 40
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.gk, %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i ], [ %i.fl, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.gj, %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 10 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.gi, %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i ], [ %i.fh, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 10 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i.i.i, %.0811.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fm = load i32, ptr %.0910.i.i.i.i.i.i.i, align 4, !tbaa !165
  store i32 %i.fm, ptr %.0811.i.i.i.i.i.i.i, align 4, !tbaa !165
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !165
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !165
  %i.fq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !165
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !165
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !165
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 12
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !165
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !165
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !165
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 20
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !165
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 20
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !165
  %i.gc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !719
  %i.ge = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !719
  %i.gf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !720
  %i.gh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 32
  store i32 %i.gg, ptr %i.gh, align 8, !tbaa !720
  br label %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i

_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i:       ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 40
  %i.gk = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.gl = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, !llvm.loop !3420

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i, %bb.w
  %i.gm = getelementptr inbounds i8, ptr %i.ff, i64 %.pre14.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fj, %i.gm
  br i1 %.not.i.i.i, label %_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i
  store ptr %i.gm, ptr %i.eu, align 8, !tbaa !749
  br label %_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.gn = load ptr, ptr %i.et, align 8, !tbaa !751
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gn, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.gp = load ptr, ptr %1, align 8, !tbaa !709   ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !706
  call void @llvm.experimental.noalias.scope.decl(metadata !3427)
  %sext40 = shl i64 %i.gq, 32
  %i.gr = ashr exact i64 %sext40, 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !720, !noalias !3427
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !719, !noalias !3427
  store i64 %i.gr, ptr %3, align 8, !tbaa !753, !alias.scope !3427
  store i32 %i.gt, ptr %i.fd, align 8, !tbaa !754, !alias.scope !3427
  store ptr %i.gv, ptr %i.fe, align 8, !tbaa !755, !alias.scope !3427
  %i.gw = call noundef i32 @_ZNK18LayoutBaseViewDataILi3ELi3E10GridLayoutILi3EEE7touchesI8IntervalILi3EESt20back_insert_iteratorISt6vectorI5INodeILi3EESaIS9_EEE21TouchesConstructINodeILi3EEEEiRKT_T0_RKT1_(ptr noundef nonnull align 8 dereferenceable(281) %i.gp, ptr noundef nonnull align 4 dereferenceable(24) %i.go, ptr nonnull %i.et, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.z, !llvm.loop !3423

_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %bb.u, %bb.l, %bb.y, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15IntersectorDataILi3EE14pushBaseDomainILi3EEEvRK5RangeIXT_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %class.Range.319, align 16          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !756  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !280
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %i.g, align 4, !tbaa !165
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.j, ptr %i.f, align 8, !tbaa !281
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !279  ; 4 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775804
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 2305843009213693951)
  %i.t = select i1 %i.r, i64 2305843009213693951, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store i32 3, ptr %i.w, align 4, !tbaa !165
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !280
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ab) #48
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !279
  store ptr %i.y, ptr %i.f, align 8, !tbaa !281
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !280
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !756
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.ad = phi ptr [ %i.c, %bb.b ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %2, align 16, !tbaa !165
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %i.ae, align 16, !tbaa !165
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.af, align 16, !tbaa !165
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.ag, align 16, !tbaa !165
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %i.ah, align 16, !tbaa !165
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 1, ptr %i.ai, align 16, !tbaa !165
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !757
  %.not.i.i10 = icmp eq ptr %i.ad, %i.ak
  br i1 %.not.i.i10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.ad, align 4, !tbaa !165
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %i.al, align 4, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.am, align 4, !tbaa !165
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.an, align 4, !tbaa !165
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %i.ao, align 4, !tbaa !165
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i32 1, ptr %i.ap, align 4, !tbaa !165
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !756
  br label %_ZNSt6vectorI5RangeILi7EESaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  call void @_ZNSt6vectorI5RangeILi7EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ad, ptr noundef nonnull align 4 dereferenceable(84) %2)
  br label %_ZNSt6vectorI5RangeILi7EESaIS1_EE9push_backEOS1_.exit
end_hunk_0
