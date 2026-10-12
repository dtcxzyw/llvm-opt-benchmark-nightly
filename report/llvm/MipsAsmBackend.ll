Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsAsmBackend?download=true
inline.NumInlined: 283
inline.NumDeleted: 138
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm14MipsAsmBackend10applyFixupERKNS_10MCFragmentERKNS_7MCFixupERKNS_7MCValueEPhmb:_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit
  %i.bh = call ptr @_ZNK4llvm7MCFixup6getLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.bj, align 1, !tbaa !44
  store ptr @.str.116, ptr %13, align 8, !tbaa !27
  store i8 3, ptr %i.bi, align 8, !tbaa !45
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(34) %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %.loopexit

bb.u:                                             ; preds = %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit
  %i.bk = and i64 %i.g, 7
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = call ptr @_ZNK4llvm7MCFixup6getLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.bn, align 1, !tbaa !44
  store ptr @.str.116, ptr %14, align 8, !tbaa !27
  store i8 3, ptr %i.bm, align 8, !tbaa !45
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(34) %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bo = sdiv i64 %i.g, 8                        ; 2 uses
  %i.bp = add nsw i64 %i.bo, 131072
  %i.bq = icmp ult i64 %i.bp, 262144
  br i1 %i.bq, label %_ZL16adjustFixupValueRKN4llvm7MCFixupEmRNS_9MCContextE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = call ptr @_ZNK4llvm7MCFixup6getLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.bt, align 1, !tbaa !44
  store ptr @.str.116, ptr %15, align 8, !tbaa !27
  store i8 3, ptr %i.bs, align 8, !tbaa !45
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr %i.br, ptr noundef nonnull align 8 dereferenceable(34) %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %.loopexit

bb.y:                                             ; preds = %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit
  %i.bu = sdiv i64 %i.g, 4                        ; 2 uses
  %i.bv = add nsw i64 %i.bu, 1048576
  %i.bw = icmp ult i64 %i.bv, 2097152
  br i1 %i.bw, label %_ZL16adjustFixupValueRKN4llvm7MCFixupEmRNS_9MCContextE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = call ptr @_ZNK4llvm7MCFixup6getLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.bz, align 1, !tbaa !44
  store ptr @.str.117, ptr %16, align 8, !tbaa !27
  store i8 3, ptr %i.by, align 8, !tbaa !45
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr %i.bx, ptr noundef nonnull align 8 dereferenceable(34) %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  br label %.loopexit

bb.aa:                                            ; preds = %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit
  %i.ca = sdiv i64 %i.g, 4                        ; 2 uses
  %i.cb = add nsw i64 %i.ca, 33554432
  %i.cc = icmp ult i64 %i.cb, 67108864
  br i1 %i.cc, label %_ZL16adjustFixupValueRKN4llvm7MCFixupEmRNS_9MCContextE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = call ptr @_ZNK4llvm7MCFixup6getLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.cf, align 1, !tbaa !44
  store ptr @.str.118, ptr %17, align 8, !tbaa !27
  store i8 3, ptr %i.ce, align 8, !tbaa !45
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(34) %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  br label %.loopexit

bb.ac:                                            ; preds = %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit
  %i.cg = sdiv i64 %i.g, 2                        ; 2 uses
  %i.ch = add nsw i64 %i.cg, 33554432
  %i.ci = icmp ult i64 %i.ch, 67108864
  br i1 %i.ci, label %_ZL16adjustFixupValueRKN4llvm7MCFixupEmRNS_9MCContextE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = call ptr @_ZNK4llvm7MCFixup6getLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.cl, align 1, !tbaa !44
  store ptr @.str.118, ptr %18, align 8, !tbaa !27
  store i8 3, ptr %i.ck, align 8, !tbaa !45
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr %i.cj, ptr noundef nonnull align 8 dereferenceable(34) %18) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br label %.loopexit

bb.ae:                                            ; preds = %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit
  %i.cm = sdiv i64 %i.g, 2                        ; 2 uses
  %i.cn = add nsw i64 %i.cm, 1048576
  %i.co = icmp ult i64 %i.cn, 2097152
  br i1 %i.co, label %_ZL16adjustFixupValueRKN4llvm7MCFixupEmRNS_9MCContextE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = call ptr @_ZNK4llvm7MCFixup6getLocEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  %i.cq = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.cr, align 1, !tbaa !44
  store ptr @.str.117, ptr %19, align 8, !tbaa !27
  store i8 3, ptr %i.cq, align 8, !tbaa !45
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr %i.cp, ptr noundef nonnull align 8 dereferenceable(34) %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  br label %.loopexit

_ZL16adjustFixupValueRKN4llvm7MCFixupEmRNS_9MCContextE.exit: ; preds = %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.q, %bb.s, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae
  %.075.i = phi i64 [ %i.i, %bb.a ], [ %i.g, %bb.b ], [ %i.cm, %bb.ae ], [ %i.g, %bb.c ], [ %i.g, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit ], [ %i.g, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit ], [ %i.g, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit ], [ %i.g, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit ], [ %i.g, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit ], [ %i.g, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit ], [ %i.g, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit ], [ %i.g, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit ], [ %i.g, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit ], [ %i.n, %bb.d ], [ %i.t, %bb.f ], [ %i.z, %bb.h ], [ %i.ac, %bb.i ], [ %i.af, %bb.j ], [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.ak, %bb.m ], [ %i.ar, %bb.o ], [ %i.ay, %bb.q ], [ %i.be, %bb.s ], [ %i.bo, %bb.w ], [ %i.bu, %bb.y ], [ %i.ca, %bb.aa ], [ %i.cg, %bb.ac ]
  %i.cs = and i64 %.075.i, 4294967295             ; 2 uses
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !26
  %.not = icmp eq i64 %i.cs, 0
  br i1 %.not, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %_ZL16adjustFixupValueRKN4llvm7MCFixupEmRNS_9MCContextE.exit
  %i.ct = load ptr, ptr %0, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call { ptr, i64 } %i.cv(ptr noundef nonnull align 8 dereferenceable(81) %0, i16 noundef zeroext %i.e) #8
  %i.cx = extractvalue { ptr, i64 } %i.cw, 1
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = lshr i32 %i.cy, 8
  %i.da = and i32 %i.cz, 255                      ; 2 uses
  %i.db = add nuw nsw i32 %i.da, 7
  %i.dc = lshr i32 %i.db, 3                       ; 9 uses
  switch i16 %i.e, label %bb.ai [
    i16 4002, label %bb.aj
    i16 4010, label %bb.aj
    i16 4064, label %bb.aj
    i16 4004, label %bb.ah
    i16 4029, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ai, %bb.ah
  %.043 = phi i32 [ 4, %bb.ai ], [ 8, %bb.ah ], [ 2, %bb.ag ], [ 2, %bb.ag ], [ 2, %bb.ag ] ; 7 uses
  %i.dd = icmp ne i16 %i.e, 4064
  %i.de = add i16 %i.e, -4059
  %i.df = icmp ult i16 %i.de, 26
  %i.dg = and i1 %i.dd, %i.df                     ; 2 uses
  %.not4554 = icmp eq i32 %i.dc, 0                ; 2 uses
  br i1 %.not4554, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !30
  %i.dj = icmp eq i32 %i.di, 1
  %i.dk = zext nneg i32 %i.dc to i64              ; 6 uses
  br i1 %i.dj, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %i.dk, 1
  %i.dl = icmp eq i32 %i.dc, 1
  br i1 %i.dl, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.dk, 62
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.dg, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %xtraiter98 = and i64 %i.dk, 3                  ; 3 uses
  %i.dm = icmp samesign ult i32 %i.da, 25
  br i1 %i.dm, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter102 = and i64 %i.dk, 60
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %xtraiter104 = and i64 %i.dk, 1
  %i.dn = icmp eq i32 %i.dc, 1
  br i1 %i.dn, label %.lr.ph.split.us.split.us.epil.preheader, label %.lr.ph.split.us.split.us.preheader.new

.lr.ph.split.us.split.us.preheader.new:           ; preds = %.lr.ph.split.us.split.us.preheader
  %unroll_iter109 = and i64 %i.dk, 62
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.preheader.new
  %indvars.iv72 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.new ], [ %indvars.iv.next73.1, %.lr.ph.split.us.split.us ] ; 5 uses
  %.04255.us.us = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.new ], [ %i.ed, %.lr.ph.split.us.split.us ]
  %niter110 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.new ], [ %niter110.next.1, %.lr.ph.split.us.split.us ]
  %20 = and i64 %indvars.iv72, 2147483646
  %i.do = sub nsw i64 2, %20
  %i.dp = and i64 %i.do, 4294967294
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !27
  %i.ds = zext i8 %i.dr to i64
  %i.dt = shl nuw nsw i64 %indvars.iv72, 3
  %i.du = shl i64 %i.ds, %i.dt
  %i.dv = or i64 %i.du, %.04255.us.us
  %21 = and i64 %indvars.iv72, 2147483646
  %i.dw = sub nsw i64 3, %21
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !27
  %i.ea = zext i8 %i.dz to i64
  %indvars.iv.next73 = shl i64 %indvars.iv72, 3
  %i.eb = or disjoint i64 %indvars.iv.next73, 8
  %i.ec = shl i64 %i.ea, %i.eb
  %i.ed = or i64 %i.ec, %i.dv                     ; 3 uses
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %niter110.next.1 = add i64 %niter110, 2         ; 2 uses
  %niter110.ncmp.1 = icmp eq i64 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us, !llvm.loop !35

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split.preheader.new
  %indvars.iv69 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next70.3, %.lr.ph.split.us.split ] ; 6 uses
  %.04255.us = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %i.fb, %.lr.ph.split.us.split ]
  %niter103 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter103.next.3, %.lr.ph.split.us.split ]
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv69
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !27
  %i.eg = zext i8 %i.ef to i64
  %i.eh = shl nuw nsw i64 %indvars.iv69, 3
  %i.ei = shl i64 %i.eg, %i.eh
  %i.ej = or i64 %i.ei, %.04255.us
  %indvars.iv.next70 = or disjoint i64 %indvars.iv69, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next70
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !27
  %i.em = zext i8 %i.el to i64
  %i.en = shl nuw nsw i64 %indvars.iv.next70, 3
  %i.eo = shl i64 %i.em, %i.en
  %i.ep = or i64 %i.eo, %i.ej
  %indvars.iv.next70.1 = or disjoint i64 %indvars.iv69, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next70.1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !27
  %i.es = zext i8 %i.er to i64
  %i.et = shl nuw nsw i64 %indvars.iv.next70.1, 3
  %i.eu = shl i64 %i.es, %i.et
  %i.ev = or i64 %i.eu, %i.ep
  %indvars.iv.next70.2 = or disjoint i64 %indvars.iv69, 3 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next70.2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !27
  %i.ey = zext i8 %i.ex to i64
  %i.ez = shl nuw nsw i64 %indvars.iv.next70.2, 3
  %i.fa = shl i64 %i.ey, %i.ez
  %i.fb = or i64 %i.fa, %i.ev                     ; 3 uses
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %niter103.next.3 = add i64 %niter103, 4         ; 2 uses
  %niter103.ncmp.3 = icmp eq i64 %niter103.next.3, %unroll_iter102
  br i1 %niter103.ncmp.3, label %._crit_edge.loopexit92.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !35

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us.split.us
  %lcmp.mod106.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod106.not, label %._crit_edge, label %.lr.ph.split.us.split.us.epil.preheader

.lr.ph.split.us.split.us.epil.preheader:          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.preheader
  %indvars.iv72.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next73.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.04255.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %i.ed, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod108 = trunc i32 %i.dc to i1
  call void @llvm.assume(i1 %lcmp.mod108)
  %i.fc = and i64 %indvars.iv72.epil.init, 2147483646
  %i.fd = and i64 %indvars.iv72.epil.init, 1
  %reass.sub.epil = sub nsw i64 %i.fd, %i.fc
  %i.fe = add nsw i64 %reass.sub.epil, 2
  %i.ff = and i64 %i.fe, 4294967295
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !27
  %i.fi = zext i8 %i.fh to i64
  %i.fj = shl nuw nsw i64 %indvars.iv72.epil.init, 3
  %i.fk = shl i64 %i.fi, %i.fj
  %i.fl = or i64 %i.fk, %.04255.us.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit92.unr-lcssa:                 ; preds = %.lr.ph.split.us.split
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %._crit_edge, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %._crit_edge.loopexit92.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv69.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next70.3, %._crit_edge.loopexit92.unr-lcssa ]
  %.04255.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %i.fb, %._crit_edge.loopexit92.unr-lcssa ]
  %lcmp.mod101 = icmp ne i64 %xtraiter98, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.split.us.split.epil

.lr.ph.split.us.split.epil:                       ; preds = %.lr.ph.split.us.split.epil, %.lr.ph.split.us.split.epil.preheader
  %indvars.iv69.epil = phi i64 [ %indvars.iv.next70.epil, %.lr.ph.split.us.split.epil ], [ %indvars.iv69.epil.init, %.lr.ph.split.us.split.epil.preheader ] ; 3 uses
  %.04255.us.epil = phi i64 [ %i.fr, %.lr.ph.split.us.split.epil ], [ %.04255.us.epil.init, %.lr.ph.split.us.split.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.split.epil ], [ 0, %.lr.ph.split.us.split.epil.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv69.epil
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !27
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl nuw nsw i64 %indvars.iv69.epil, 3
  %i.fq = shl i64 %i.fo, %i.fp
  %i.fr = or i64 %i.fq, %.04255.us.epil           ; 2 uses
  %indvars.iv.next70.epil = add nuw nsw i64 %indvars.iv69.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter98
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us.split.epil, !llvm.loop !36

._crit_edge.loopexit94.unr-lcssa:                 ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit94.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit94.unr-lcssa ] ; 2 uses
  %.04255.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.hz, %._crit_edge.loopexit94.unr-lcssa ]
  %lcmp.mod97 = trunc i32 %i.dc to i1
  call void @llvm.assume(i1 %lcmp.mod97)
  %i.fs = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ft = xor i32 %i.fs, -1
  %i.fu = add nsw i32 %.043, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !27
  %i.fy = zext i8 %i.fx to i64
  %i.fz = shl nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ga = shl i64 %i.fy, %i.fz
  %i.gb = or i64 %i.ga, %.04255.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit94.unr-lcssa, %._crit_edge.loopexit92.unr-lcssa, %.lr.ph.split.us.split.epil, %.lr.ph.split.us.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.aj
  %.042.lcssa = phi i64 [ 0, %bb.aj ], [ %i.fr, %.lr.ph.split.us.split.epil ], [ %i.fl, %.lr.ph.split.us.split.us.epil.preheader ], [ %i.ed, %._crit_edge.loopexit.unr-lcssa ], [ %i.fb, %._crit_edge.loopexit92.unr-lcssa ], [ %i.hz, %._crit_edge.loopexit94.unr-lcssa ], [ %i.gb, %.lr.ph.split.epil.preheader ]
  %i.gc = load ptr, ptr %0, align 8, !tbaa !29
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call { ptr, i64 } %i.ge(ptr noundef nonnull align 8 dereferenceable(81) %0, i16 noundef zeroext %i.e) #8
  %i.gg = extractvalue { ptr, i64 } %i.gf, 1
  %i.gh = lshr i64 %i.gg, 8
  %i.gi = and i64 %i.gh, 255
  %i.gj = sub nsw i64 64, %i.gi
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = lshr i64 -1, %i.gk
  %i.gm = load i64, ptr %i.a, align 8, !tbaa !26
  %i.gn = and i64 %i.gl, %i.gm
  %i.go = or i64 %i.gn, %.042.lcssa               ; 4 uses
  br i1 %.not4554, label %.loopexit, label %.lr.ph61

.lr.ph61:                                         ; preds = %._crit_edge
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.gq = zext nneg i32 %i.dc to i64              ; 3 uses
  br i1 %i.dg, label %.lr.ph61.split.us, label %.lr.ph61.split.preheader

.lr.ph61.split.preheader:                         ; preds = %.lr.ph61
  %xtraiter111 = and i64 %i.gq, 1
  %i.gr = icmp eq i32 %i.dc, 1
  br i1 %i.gr, label %.lr.ph61.split.epil.preheader, label %.lr.ph61.split.preheader.new

.lr.ph61.split.preheader.new:                     ; preds = %.lr.ph61.split.preheader
  %unroll_iter115 = and i64 %i.gq, 62
  br label %.lr.ph61.split

.lr.ph61.split.us:                                ; preds = %.lr.ph61, %bb.am
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.am ], [ 0, %.lr.ph61 ] ; 3 uses
  %i.gs = load i32, ptr %i.gp, align 4, !tbaa !30
  %i.gt = icmp eq i32 %i.gs, 1
  %i.gu = trunc nuw nsw i64 %indvars.iv78 to i32  ; 3 uses
  br i1 %i.gt, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph61.split.us
  %i.gv = xor i32 %i.gu, -1
  %i.gw = add nsw i32 %.043, %i.gv
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph61.split.us
  %i.gx = and i32 %i.gu, 2147483646
  %i.gy = and i32 %i.gu, 1
  %reass.sub62 = sub nsw i32 %i.gy, %i.gx
  %i.gz = add nsw i32 %reass.sub62, 2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ha = phi i32 [ %i.gw, %bb.ak ], [ %i.gz, %bb.al ]
  %i.hb = shl nuw nsw i64 %indvars.iv78, 3
  %i.hc = lshr i64 %i.go, %i.hb
  %i.hd = trunc i64 %i.hc to i8
  %i.he = zext i32 %i.ha to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 %i.he
  store i8 %i.hd, ptr %i.hf, align 1, !tbaa !27
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %.not46.us = icmp eq i64 %indvars.iv.next79, %i.gq
  br i1 %.not46.us, label %.loopexit, label %.lr.ph61.split.us, !llvm.loop !37

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 4 uses
  %.04255 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.hz, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.hg = trunc nuw nsw i64 %indvars.iv to i32
  %i.hh = xor i32 %i.hg, -1
  %i.hi = add nsw i32 %.043, %i.hh
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !27
  %i.hm = zext i8 %i.hl to i64
  %i.hn = shl nuw nsw i64 %indvars.iv, 3
  %i.ho = shl i64 %i.hm, %i.hn
  %i.hp = or i64 %i.ho, %.04255
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.hq = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.hr = xor i32 %i.hq, -1
  %i.hs = add nsw i32 %.043, %i.hr
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !27
  %i.hw = zext i8 %i.hv to i64
  %i.hx = shl nuw nsw i64 %indvars.iv.next, 3
  %i.hy = shl i64 %i.hw, %i.hx
  %i.hz = or i64 %i.hy, %i.hp                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit94.unr-lcssa, label %.lr.ph.split, !llvm.loop !35

.lr.ph61.split:                                   ; preds = %.lr.ph61.split, %.lr.ph61.split.preheader.new
  %indvars.iv75 = phi i64 [ 0, %.lr.ph61.split.preheader.new ], [ %indvars.iv.next76.1, %.lr.ph61.split ] ; 4 uses
  %niter116 = phi i64 [ 0, %.lr.ph61.split.preheader.new ], [ %niter116.next.1, %.lr.ph61.split ]
  %i.ia = load i32, ptr %i.gp, align 4, !tbaa !30
  %i.ib = icmp eq i32 %i.ia, 1
  %i.ic = trunc nuw nsw i64 %indvars.iv75 to i32  ; 2 uses
  %i.id = xor i32 %i.ic, -1
  %i.ie = add nsw i32 %.043, %i.id
  %i.if = select i1 %i.ib, i32 %i.ic, i32 %i.ie
  %i.ig = shl nuw nsw i64 %indvars.iv75, 3
  %i.ih = lshr i64 %i.go, %i.ig
  %i.ii = trunc i64 %i.ih to i8
  %i.ij = zext i32 %i.if to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 %i.ij
  store i8 %i.ii, ptr %i.ik, align 1, !tbaa !27
  %indvars.iv.next76 = or disjoint i64 %indvars.iv75, 1 ; 2 uses
  %i.il = load i32, ptr %i.gp, align 4, !tbaa !30
  %i.im = icmp eq i32 %i.il, 1
  %i.in = trunc nuw nsw i64 %indvars.iv.next76 to i32 ; 2 uses
  %i.io = xor i32 %i.in, -1
  %i.ip = add nsw i32 %.043, %i.io
  %i.iq = select i1 %i.im, i32 %i.in, i32 %i.ip
  %i.ir = shl nuw nsw i64 %indvars.iv.next76, 3
  %i.is = lshr i64 %i.go, %i.ir
  %i.it = trunc i64 %i.is to i8
  %i.iu = zext i32 %i.iq to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 %i.iu
  store i8 %i.it, ptr %i.iv, align 1, !tbaa !27
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %niter116.next.1 = add i64 %niter116, 2         ; 2 uses
  %niter116.ncmp.1 = icmp eq i64 %niter116.next.1, %unroll_iter115
  br i1 %niter116.ncmp.1, label %.loopexit.loopexit91.unr-lcssa, label %.lr.ph61.split, !llvm.loop !37

.loopexit.loopexit91.unr-lcssa:                   ; preds = %.lr.ph61.split
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %.loopexit, label %.lr.ph61.split.epil.preheader

.lr.ph61.split.epil.preheader:                    ; preds = %.loopexit.loopexit91.unr-lcssa, %.lr.ph61.split.preheader
  %indvars.iv75.epil.init = phi i64 [ 0, %.lr.ph61.split.preheader ], [ %indvars.iv.next76.1, %.loopexit.loopexit91.unr-lcssa ] ; 2 uses
  %lcmp.mod114 = trunc i32 %i.dc to i1
  call void @llvm.assume(i1 %lcmp.mod114)
  %i.iw = load i32, ptr %i.gp, align 4, !tbaa !30
  %i.ix = icmp eq i32 %i.iw, 1
  %i.iy = trunc nuw nsw i64 %indvars.iv75.epil.init to i32 ; 2 uses
  %i.iz = xor i32 %i.iy, -1
  %i.ja = add nsw i32 %.043, %i.iz
  %i.jb = select i1 %i.ix, i32 %i.iy, i32 %i.ja
  %i.jc = shl nuw nsw i64 %indvars.iv75.epil.init, 3
  %i.jd = lshr i64 %i.go, %i.jc
  %i.je = trunc i64 %i.jd to i8
  %i.jf = zext i32 %i.jb to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 %i.jf
  store i8 %i.je, ptr %i.jg, align 1, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph61.split.epil.preheader, %.loopexit.loopexit91.unr-lcssa, %bb.am, %_ZL21shouldForceRelocationRKN4llvm7MCFixupE.exit, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.t, %bb.r, %bb.p, %bb.n, %bb.g, %bb.e, %bb.af, %._crit_edge, %_ZL16adjustFixupValueRKN4llvm7MCFixupEmRNS_9MCContextE.exit
  ret void
}

declare void @_ZN4llvm12MCAsmBackend13maybeAddRelocERKNS_10MCFragmentERKNS_7MCFixupERKNS_7MCValueERmb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(2208) ptr @_ZNK4llvm12MCAsmBackend10getContextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @_ZNK4llvm14MipsAsmBackend12getFixupKindENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  switch i64 %2, label %_ZN4llvm12StringSwitchISt8optionalItES2_E4CaseENS_13StringLiteralES2_.exit320.thread1145 [
    i64 14, label %bb.b
    i64 12, label %bb.c
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i46
    i64 16, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i55
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i73
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i91
    i64 19, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i136
    i64 22, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i145
    i64 24, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i244
    i64 27, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i253
    i64 21, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i181
    i64 18, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i199
    i64 20, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i208
    i64 17, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i235
    i64 26, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i289
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 1
  %i.b = xor i64 %i.a, 5714018247314261570
  %i.c = getelementptr i8, ptr %1, i64 6
  %i.d = load i64, ptr %i.c, align 1
  %i.e = xor i64 %i.d, 4994016234824748876
  %i.f = or i64 %i.b, %i.e
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit34, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i172

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 1
  %i.j = xor i64 %i.i, 5714018247314261570
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 1
  %i.m = zext i32 %i.l to i64
  %i.n = xor i64 %i.m, 909205315
  %i.o = or i64 %i.j, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not.i.i16 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i16, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit34, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %1, align 1
  %i.s = xor i64 %i.r, 5714018247314261570
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 1
  %i.v = zext i32 %i.u to i64
  %i.w = xor i64 %i.v, 842227523
  %i.x = or i64 %i.s, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not.i.i24 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i24, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit34, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %1, align 1
  %i.ab = xor i64 %i.aa, 5714018247314261570
  %i.ac = getelementptr i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = xor i64 %i.ae, 875978563
  %i.ag = or i64 %i.ab, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not.i.i32 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit34, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i82

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.aj = load i64, ptr %1, align 1
  %i.ak = xor i64 %i.aj, 5647324062038187858
  %i.al = getelementptr i8, ptr %1, i64 3
  %i.am = load i64, ptr %i.al, align 1
  %i.an = xor i64 %i.am, 4994016234825797705
  %i.ao = or i64 %i.ak, %i.an
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %.not.i.i41 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalItES2_E4CaseENS_13StringLiteralES2_.exit320.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i307

_ZN4llvmneENS_9StringRefES0_.exit.i.i46:          ; preds = %bb.a
  %i.ar = load i64, ptr %1, align 1
end_hunk_0
