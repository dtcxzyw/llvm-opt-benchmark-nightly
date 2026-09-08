Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/packing_x86_avx512?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn18Packing_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, i8 0, i64 20, i1 false)
  %i.ar = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.ar, ptr %2, align 8, !tbaa !40
  %i.as = load i64, ptr %i.j, align 8, !tbaa !16
  store i64 %i.as, ptr %i.am, align 8, !tbaa !16
  %i.at = load i32, ptr %i.h, align 8, !tbaa !15
  store i32 %i.at, ptr %i.an, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load <4 x i32>, ptr %i.ax, align 8, !tbaa !41
  store <4 x i32> %i.ay, ptr %i.ao, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !42
  store i32 %i.ba, ptr %i.ap, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !39
  store i64 %i.bc, ptr %i.aq, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit240

bb.q:                                             ; preds = %bb.g
  %i.bd = icmp eq i32 %i.i, 1                     ; 2 uses
  %i.be = icmp eq i32 %i.w, 4                     ; 3 uses
  %spec.select = and i1 %i.bd, %i.be              ; 3 uses
  %i.bf = icmp eq i32 %i.i, 4
  br i1 %i.bf, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bd, label %.thread312, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %i.i, label %.thread360 [
    i32 8, label %bb.u
    i32 16, label %bb.v
  ]

.thread312:                                       ; preds = %bb.r
  %i.bg = icmp eq i32 %i.w, 8
  %i.bh = icmp eq i32 %i.w, 16
  br label %.thread360

bb.t:                                             ; preds = %bb.q
  %i.bi = icmp eq i32 %i.w, 1
  %i.bj = icmp eq i32 %i.w, 8
  %i.bk = icmp eq i32 %i.w, 16
  br label %.thread360

bb.u:                                             ; preds = %bb.s
  %i.bl = icmp eq i32 %i.w, 1
  %i.bm = icmp eq i32 %i.w, 16
  br label %.thread360

bb.v:                                             ; preds = %bb.s
  %i.bn = icmp eq i32 %i.w, 1
  %i.bo = icmp eq i32 %i.w, 8
  br label %.thread360

.thread360:                                       ; preds = %bb.s, %bb.t, %.thread312, %bb.u, %bb.v
  %i.bp = phi i1 [ %i.bm, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bq = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ %i.bk, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.br = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ %i.bh, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bs = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ %i.bj, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bt = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ %i.bg, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bu = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ %i.bi, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bv = phi i1 [ %i.bl, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bw = phi i1 [ %i.be, %bb.u ], [ false, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bx = phi i1 [ false, %bb.u ], [ %i.bn, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.by = phi i1 [ false, %bb.u ], [ %i.be, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %i.bz = phi i1 [ false, %bb.u ], [ %i.bo, %bb.v ], [ false, %.thread312 ], [ false, %bb.t ], [ false, %bb.s ] ; 3 uses
  %or.cond = or i1 %spec.select, %i.bu
  %or.cond3 = or i1 %i.bt, %or.cond
  %or.cond5 = or i1 %i.bv, %or.cond3
  %or.cond7 = or i1 %i.bs, %or.cond5
  %or.cond9 = or i1 %i.bw, %or.cond7
  %or.cond11 = or i1 %i.br, %or.cond9
  %or.cond13 = or i1 %i.bx, %or.cond11
  %or.cond15 = or i1 %i.bq, %or.cond13
  %or.cond17 = or i1 %i.by, %or.cond15
  %or.cond19 = or i1 %i.bp, %or.cond17
  %or.cond21 = or i1 %i.bz, %or.cond19
  br i1 %or.cond21, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread360
  %i.ca = tail call noundef i32 @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit240

bb.x:                                             ; preds = %.thread360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !43 ; 6 uses
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !44 ; 5 uses
  store i32 %i.ce, ptr %i.b, align 4, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !42 ; 3 uses
  store i32 %i.ci, ptr %i.c, align 4, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !46 ; 3 uses
  switch i32 %i.ck, label %bb.as [
    i32 1, label %bb.y
    i32 2, label %bb.ai
  ]

bb.y:                                             ; preds = %bb.x
  %i.cl = mul nsw i32 %i.cc, %i.i                 ; 2 uses
  %i.cm = srem i32 %i.cl, %i.w
  %.not229 = icmp eq i32 %i.cm, 0
  %i.cn = icmp eq ptr %2, %1                      ; 2 uses
  br i1 %.not229, label %.thread363.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.cn, label %_ZN4ncnn3MataSERKS0_.exit238, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !34 ; 2 uses
  %.not.i237 = icmp eq ptr %i.cp, null
  br i1 %.not.i237, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = atomicrmw add ptr %i.cp, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !34 ; 2 uses
  %.not.i243 = icmp eq ptr %i.cs, null
  br i1 %.not.i243, label %_ZN4ncnn3Mat7releaseEv.exit245, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.ae, label %_ZN4ncnn3Mat7releaseEv.exit245

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !35 ; 3 uses
  %.not3.i244 = icmp eq ptr %i.cw, null
  %i.cx = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i244, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef %i.cx), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit245

bb.ag:                                            ; preds = %bb.ae
  %.not.i260 = icmp eq ptr %i.cx, null
  br i1 %.not.i260, label %_ZN4ncnn3Mat7releaseEv.exit245, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @free(ptr noundef nonnull %i.cx) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit245

_ZN4ncnn3Mat7releaseEv.exit245:                   ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.ad, %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.df, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dd, i8 0, i64 20, i1 false)
  %i.dg = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.dg, ptr %2, align 8, !tbaa !40
  %i.dh = load i64, ptr %i.j, align 8, !tbaa !16
  store i64 %i.dh, ptr %i.db, align 8, !tbaa !16
  %i.di = load i32, ptr %i.h, align 8, !tbaa !15
  store i32 %i.di, ptr %i.dc, align 8, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !35
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !35
  %i.dm = load <4 x i32>, ptr %i.cj, align 8, !tbaa !41
  store <4 x i32> %i.dm, ptr %i.dd, align 8, !tbaa !41
  %i.dn = load i32, ptr %i.ch, align 8, !tbaa !42
  store i32 %i.dn, ptr %i.de, align 8, !tbaa !42
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !39
  store i64 %i.dp, ptr %i.df, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit238

bb.ai:                                            ; preds = %bb.x
  %i.dq = mul nsw i32 %i.ce, %i.i                 ; 2 uses
  %i.dr = srem i32 %i.dq, %i.w
  %i.ds = sdiv exact i32 %i.dq, %i.w              ; 2 uses
  %.not230 = icmp eq i32 %i.dr, 0
  br i1 %.not230, label %.thread363.thread392, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = icmp eq ptr %2, %1
  br i1 %i.dt, label %_ZN4ncnn3MataSERKS0_.exit238, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !34 ; 2 uses
  %.not.i235 = icmp eq ptr %i.dv, null
  br i1 %.not.i235, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = atomicrmw add ptr %i.dv, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !34 ; 2 uses
  %.not.i246 = icmp eq ptr %i.dy, null
  br i1 %.not.i246, label %_ZN4ncnn3Mat7releaseEv.exit248, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dz = atomicrmw add ptr %i.dy, i32 -1 acq_rel, align 4
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %bb.ao, label %_ZN4ncnn3Mat7releaseEv.exit248

bb.ao:                                            ; preds = %bb.an
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !35 ; 3 uses
  %.not3.i247 = icmp eq ptr %i.ec, null
  %i.ed = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i247, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !38
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  tail call void %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef %i.ed), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit248

bb.aq:                                            ; preds = %bb.ao
  %.not.i258 = icmp eq ptr %i.ed, null
  br i1 %.not.i258, label %_ZN4ncnn3Mat7releaseEv.exit248, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef nonnull %i.ed) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit248

_ZN4ncnn3Mat7releaseEv.exit248:                   ; preds = %bb.ar, %bb.aq, %bb.am, %bb.an, %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.el, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ej, i8 0, i64 20, i1 false)
  %i.em = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.em, ptr %2, align 8, !tbaa !40
  %i.en = load i64, ptr %i.j, align 8, !tbaa !16
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !16
  %i.eo = load i32, ptr %i.h, align 8, !tbaa !15
  store i32 %i.eo, ptr %i.ei, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !35
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !35
  %i.es = load <4 x i32>, ptr %i.cj, align 8, !tbaa !41
  store <4 x i32> %i.es, ptr %i.ej, align 8, !tbaa !41
  %i.et = load i32, ptr %i.ch, align 8, !tbaa !42
  store i32 %i.et, ptr %i.ek, align 8, !tbaa !42
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !39
  store i64 %i.ev, ptr %i.el, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit238

bb.as:                                            ; preds = %bb.x
  %i.ew = add i32 %i.ck, -3
  %or.cond23 = icmp ult i32 %i.ew, 2
  br i1 %or.cond23, label %bb.at, label %_ZN4ncnn3MataSERKS0_.exit238

bb.at:                                            ; preds = %bb.as
  %i.ex = mul nsw i32 %i.ci, %i.i
  %i.ey = srem i32 %i.ex, %i.w
  %.not231 = icmp eq i32 %i.ey, 0
  br i1 %.not231, label %bb.cj, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = icmp eq ptr %2, %1
  br i1 %i.ez, label %_ZN4ncnn3MataSERKS0_.exit238, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !34 ; 2 uses
  %.not.i233 = icmp eq ptr %i.fb, null
  br i1 %.not.i233, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fc = atomicrmw add ptr %i.fb, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !34 ; 2 uses
  %.not.i249 = icmp eq ptr %i.fe, null
  br i1 %.not.i249, label %_ZN4ncnn3Mat7releaseEv.exit251, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ff = atomicrmw add ptr %i.fe, i32 -1 acq_rel, align 4
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.az, label %_ZN4ncnn3Mat7releaseEv.exit251

bb.az:                                            ; preds = %bb.ay
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !35 ; 3 uses
  %.not3.i250 = icmp eq ptr %i.fi, null
  %i.fj = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i250, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !38
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  tail call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef %i.fj), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit251

bb.bb:                                            ; preds = %bb.az
  %.not.i256 = icmp eq ptr %i.fj, null
  br i1 %.not.i256, label %_ZN4ncnn3Mat7releaseEv.exit251, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.fj) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit251

_ZN4ncnn3Mat7releaseEv.exit251:                   ; preds = %bb.bc, %bb.bb, %bb.ax, %bb.ay, %bb.ba
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.fr, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fp, i8 0, i64 20, i1 false)
  %i.fs = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.fs, ptr %2, align 8, !tbaa !40
  %i.ft = load i64, ptr %i.j, align 8, !tbaa !16
  store i64 %i.ft, ptr %i.fn, align 8, !tbaa !16
  %i.fu = load i32, ptr %i.h, align 8, !tbaa !15
  store i32 %i.fu, ptr %i.fo, align 8, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !35
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !35
  %i.fy = load <4 x i32>, ptr %i.cj, align 8, !tbaa !41
  store <4 x i32> %i.fy, ptr %i.fp, align 8, !tbaa !41
  %i.fz = load i32, ptr %i.ch, align 8, !tbaa !42
  store i32 %i.fz, ptr %i.fq, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !39
  store i64 %i.gb, ptr %i.fr, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit238

.thread363.thread:                                ; preds = %bb.y
  br i1 %i.cn, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.bd

bb.bd:                                            ; preds = %.thread363.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !34 ; 2 uses
  %.not.i232 = icmp eq ptr %i.gd, null
  br i1 %.not.i232, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ge = atomicrmw add ptr %i.gd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !34 ; 2 uses
  %.not.i252 = icmp eq ptr %i.gg, null
  br i1 %.not.i252, label %_ZN4ncnn3Mat7releaseEv.exit254, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gh = atomicrmw add ptr %i.gg, i32 -1 acq_rel, align 4
  %i.gi = icmp eq i32 %i.gh, 1
  br i1 %i.gi, label %bb.bh, label %_ZN4ncnn3Mat7releaseEv.exit254

bb.bh:                                            ; preds = %bb.bg
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !35 ; 3 uses
  %.not3.i253 = icmp eq ptr %i.gk, null
  %i.gl = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i253, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !38
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  tail call void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef %i.gl), !inline_history !0
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Packing_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq ptr %2, %1
  br i1 %i.r, label %_ZN4ncnn3MataSERKS0_.exit104, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %.not.i103 = icmp eq ptr %i.t, null
  br i1 %.not.i103, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = atomicrmw add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 2 uses
  %.not.i106 = icmp eq ptr %i.w, null
  br i1 %.not.i106, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN4ncnn3Mat7releaseEv.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 3 uses
  %.not3.i = icmp eq ptr %i.aa, null
  %i.ab = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.k:                                             ; preds = %bb.i
  %.not.i126 = icmp eq ptr %i.ab, null
  br i1 %.not.i126, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ab) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.l, %bb.k, %bb.g, %bb.h, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i8 0, i64 20, i1 false)
  %i.ak = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.ak, ptr %2, align 8, !tbaa !40
  %i.al = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.al, ptr %i.af, align 8, !tbaa !16
  %i.am = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.am, ptr %i.ag, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load <4 x i32>, ptr %i.aq, align 8, !tbaa !41
  store <4 x i32> %i.ar, ptr %i.ah, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !42
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.av = load i64, ptr %i.au, align 8, !tbaa !39
  store i64 %i.av, ptr %i.aj, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit104

bb.m:                                             ; preds = %bb.c
  %i.aw = icmp eq i32 %i.n, 1
  %i.ax = icmp eq i32 %i.p, 8
  %spec.select = and i1 %i.aw, %i.ax              ; 3 uses
  %i.ay = icmp eq i32 %i.n, 8
  %i.az = icmp eq i32 %i.p, 1
  %spec.select130 = and i1 %i.ay, %i.az           ; 3 uses
  %or.cond = or i1 %spec.select, %spec.select130
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call noundef i32 @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit104

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !43 ; 6 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !44 ; 5 uses
  store i32 %i.be, ptr %i.b, align 4, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !42 ; 3 uses
  store i32 %i.bi, ptr %i.c, align 4, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !46 ; 3 uses
  switch i32 %i.bk, label %bb.aj [
    i32 1, label %bb.p
    i32 2, label %bb.z
  ]

bb.p:                                             ; preds = %bb.o
  %i.bl = mul nsw i32 %i.bc, %i.n                 ; 2 uses
  %i.bm = srem i32 %i.bl, %i.p
  %.not94 = icmp eq i32 %i.bm, 0
  %i.bn = icmp eq ptr %2, %1                      ; 2 uses
  br i1 %.not94, label %.thread.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.bn, label %_ZN4ncnn3MataSERKS0_.exit102, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34 ; 2 uses
  %.not.i101 = icmp eq ptr %i.bp, null
  br i1 %.not.i101, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = atomicrmw add ptr %i.bp, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !34 ; 2 uses
  %.not.i107 = icmp eq ptr %i.bs, null
  br i1 %.not.i107, label %_ZN4ncnn3Mat7releaseEv.exit109, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = atomicrmw add ptr %i.bs, i32 -1 acq_rel, align 4
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.v, label %_ZN4ncnn3Mat7releaseEv.exit109

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 3 uses
  %.not3.i108 = icmp eq ptr %i.bw, null
  %i.bx = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i108, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.bx), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit109

bb.x:                                             ; preds = %bb.v
  %.not.i124 = icmp eq ptr %i.bx, null
  br i1 %.not.i124, label %_ZN4ncnn3Mat7releaseEv.exit109, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.bx) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit109

_ZN4ncnn3Mat7releaseEv.exit109:                   ; preds = %bb.y, %bb.x, %bb.t, %bb.u, %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cd, i8 0, i64 20, i1 false)
  %i.cg = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.cg, ptr %2, align 8, !tbaa !40
  %i.ch = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !16
  %i.ci = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.ci, ptr %i.cc, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !35
  %i.cm = load <4 x i32>, ptr %i.bj, align 8, !tbaa !41
  store <4 x i32> %i.cm, ptr %i.cd, align 8, !tbaa !41
  %i.cn = load i32, ptr %i.bh, align 8, !tbaa !42
  store i32 %i.cn, ptr %i.ce, align 8, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !39
  store i64 %i.cp, ptr %i.cf, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit102

bb.z:                                             ; preds = %bb.o
  %i.cq = mul nsw i32 %i.be, %i.n                 ; 2 uses
  %i.cr = srem i32 %i.cq, %i.p
  %i.cs = sdiv exact i32 %i.cq, %i.p              ; 2 uses
  %.not95 = icmp eq i32 %i.cr, 0
  br i1 %.not95, label %.thread.thread129, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = icmp eq ptr %2, %1
  br i1 %i.ct, label %_ZN4ncnn3MataSERKS0_.exit102, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !34 ; 2 uses
  %.not.i99 = icmp eq ptr %i.cv, null
  br i1 %.not.i99, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = atomicrmw add ptr %i.cv, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34 ; 2 uses
  %.not.i110 = icmp eq ptr %i.cy, null
  br i1 %.not.i110, label %_ZN4ncnn3Mat7releaseEv.exit112, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = atomicrmw add ptr %i.cy, i32 -1 acq_rel, align 4
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.af, label %_ZN4ncnn3Mat7releaseEv.exit112

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !35 ; 3 uses
  %.not3.i111 = icmp eq ptr %i.dc, null
  %i.dd = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i111, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.dd), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit112

bb.ah:                                            ; preds = %bb.af
  %.not.i122 = icmp eq ptr %i.dd, null
  br i1 %.not.i122, label %_ZN4ncnn3Mat7releaseEv.exit112, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @free(ptr noundef nonnull %i.dd) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit112

_ZN4ncnn3Mat7releaseEv.exit112:                   ; preds = %bb.ai, %bb.ah, %bb.ad, %bb.ae, %bb.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.dl, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dj, i8 0, i64 20, i1 false)
  %i.dm = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.dm, ptr %2, align 8, !tbaa !40
  %i.dn = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.dn, ptr %i.dh, align 8, !tbaa !16
  %i.do = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.do, ptr %i.di, align 8, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !35
  %i.ds = load <4 x i32>, ptr %i.bj, align 8, !tbaa !41
  store <4 x i32> %i.ds, ptr %i.dj, align 8, !tbaa !41
  %i.dt = load i32, ptr %i.bh, align 8, !tbaa !42
  store i32 %i.dt, ptr %i.dk, align 8, !tbaa !42
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !39
  store i64 %i.dv, ptr %i.dl, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit102

bb.aj:                                            ; preds = %bb.o
  %i.dw = add i32 %i.bk, -3
  %or.cond3 = icmp ult i32 %i.dw, 2
  br i1 %or.cond3, label %bb.ak, label %_ZN4ncnn3MataSERKS0_.exit102

bb.ak:                                            ; preds = %bb.aj
  %i.dx = mul nsw i32 %i.bi, %i.n
  %i.dy = srem i32 %i.dx, %i.p
  %.not96 = icmp eq i32 %i.dy, 0
  br i1 %.not96, label %bb.bg, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = icmp eq ptr %2, %1
  br i1 %i.dz, label %_ZN4ncnn3MataSERKS0_.exit102, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !34 ; 2 uses
  %.not.i97 = icmp eq ptr %i.eb, null
  br i1 %.not.i97, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = atomicrmw add ptr %i.eb, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !34 ; 2 uses
  %.not.i113 = icmp eq ptr %i.ee, null
  br i1 %.not.i113, label %_ZN4ncnn3Mat7releaseEv.exit115, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ef = atomicrmw add ptr %i.ee, i32 -1 acq_rel, align 4
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.aq, label %_ZN4ncnn3Mat7releaseEv.exit115

bb.aq:                                            ; preds = %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !35 ; 3 uses
  %.not3.i114 = icmp eq ptr %i.ei, null
  %i.ej = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i114, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !38
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.ej), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit115

bb.as:                                            ; preds = %bb.aq
  %.not.i120 = icmp eq ptr %i.ej, null
  br i1 %.not.i120, label %_ZN4ncnn3Mat7releaseEv.exit115, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @free(ptr noundef nonnull %i.ej) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit115

_ZN4ncnn3Mat7releaseEv.exit115:                   ; preds = %bb.at, %bb.as, %bb.ao, %bb.ap, %bb.ar
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.er, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ep, i8 0, i64 20, i1 false)
  %i.es = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.es, ptr %2, align 8, !tbaa !40
  %i.et = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.et, ptr %i.en, align 8, !tbaa !16
  %i.eu = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.eu, ptr %i.eo, align 8, !tbaa !15
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !35
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !35
  %i.ey = load <4 x i32>, ptr %i.bj, align 8, !tbaa !41
  store <4 x i32> %i.ey, ptr %i.ep, align 8, !tbaa !41
  %i.ez = load i32, ptr %i.bh, align 8, !tbaa !42
  store i32 %i.ez, ptr %i.eq, align 8, !tbaa !42
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !39
  store i64 %i.fb, ptr %i.er, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit102

.thread.thread:                                   ; preds = %bb.p
  br i1 %i.bn, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.au

bb.au:                                            ; preds = %.thread.thread
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !34 ; 2 uses
  %.not.i = icmp eq ptr %i.fd, null
  br i1 %.not.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = atomicrmw add ptr %i.fd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !34 ; 2 uses
  %.not.i116 = icmp eq ptr %i.fg, null
  br i1 %.not.i116, label %_ZN4ncnn3Mat7releaseEv.exit118, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fh = atomicrmw add ptr %i.fg, i32 -1 acq_rel, align 4
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.ay, label %_ZN4ncnn3Mat7releaseEv.exit118

bb.ay:                                            ; preds = %bb.ax
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !35 ; 3 uses
  %.not3.i117 = icmp eq ptr %i.fk, null
  %i.fl = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i117, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !38
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef %i.fl), !inline_history !0
end_hunk_1
begin_hunk_2_@_ZNK4ncnn18Packing_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i8 0, i64 20, i1 false)
  %i.ak = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.ak, ptr %2, align 8, !tbaa !40
  %i.al = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.al, ptr %i.af, align 8, !tbaa !16
  %i.am = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.am, ptr %i.ag, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load <4 x i32>, ptr %i.aq, align 8, !tbaa !41
  store <4 x i32> %i.ar, ptr %i.ah, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !42
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.av = load i64, ptr %i.au, align 8, !tbaa !39
  store i64 %i.av, ptr %i.aj, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit224

bb.m:                                             ; preds = %bb.c
  %i.aw = icmp eq i32 %i.n, 1                     ; 2 uses
  %i.ax = icmp eq i32 %i.p, 4                     ; 3 uses
  %spec.select = and i1 %i.aw, %i.ax              ; 3 uses
  %i.ay = icmp eq i32 %i.n, 4
  br i1 %i.ay, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.aw, label %.thread292, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i32 %i.n, label %.thread340 [
    i32 8, label %bb.q
    i32 16, label %bb.r
  ]

.thread292:                                       ; preds = %bb.n
  %i.az = icmp eq i32 %i.p, 8
  %i.ba = icmp eq i32 %i.p, 16
  br label %.thread340

bb.p:                                             ; preds = %bb.m
  %i.bb = icmp eq i32 %i.p, 1
  %i.bc = icmp eq i32 %i.p, 8
  %i.bd = icmp eq i32 %i.p, 16
  br label %.thread340

bb.q:                                             ; preds = %bb.o
  %i.be = icmp eq i32 %i.p, 1
  %i.bf = icmp eq i32 %i.p, 16
  br label %.thread340

bb.r:                                             ; preds = %bb.o
  %i.bg = icmp eq i32 %i.p, 1
  %i.bh = icmp eq i32 %i.p, 8
  br label %.thread340

.thread340:                                       ; preds = %bb.o, %bb.p, %.thread292, %bb.q, %bb.r
  %i.bi = phi i1 [ %i.bf, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bj = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ %i.bd, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bk = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ %i.ba, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bl = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ %i.bc, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bm = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ %i.az, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bn = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ %i.bb, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bo = phi i1 [ %i.be, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bp = phi i1 [ %i.ax, %bb.q ], [ false, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bq = phi i1 [ false, %bb.q ], [ %i.bg, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.br = phi i1 [ false, %bb.q ], [ %i.ax, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %i.bs = phi i1 [ false, %bb.q ], [ %i.bh, %bb.r ], [ false, %.thread292 ], [ false, %bb.p ], [ false, %bb.o ] ; 3 uses
  %or.cond = or i1 %spec.select, %i.bn
  %or.cond3 = or i1 %i.bm, %or.cond
  %or.cond5 = or i1 %i.bo, %or.cond3
  %or.cond7 = or i1 %i.bl, %or.cond5
  %or.cond9 = or i1 %i.bp, %or.cond7
  %or.cond11 = or i1 %i.bk, %or.cond9
  %or.cond13 = or i1 %i.bq, %or.cond11
  %or.cond15 = or i1 %i.bj, %or.cond13
  %or.cond17 = or i1 %i.br, %or.cond15
  %or.cond19 = or i1 %i.bi, %or.cond17
  %or.cond21 = or i1 %i.bs, %or.cond19
  br i1 %or.cond21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread340
  %i.bt = tail call noundef i32 @_ZNK4ncnn7Packing7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnn3MataSERKS0_.exit224

bb.t:                                             ; preds = %.thread340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !43 ; 6 uses
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !44 ; 5 uses
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !42 ; 3 uses
  store i32 %i.cb, ptr %i.c, align 4, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !46 ; 3 uses
  switch i32 %i.cd, label %bb.ao [
    i32 1, label %bb.u
    i32 2, label %bb.ae
  ]

bb.u:                                             ; preds = %bb.t
  %i.ce = mul nsw i32 %i.bv, %i.n                 ; 2 uses
  %i.cf = srem i32 %i.ce, %i.p
  %.not214 = icmp eq i32 %i.cf, 0
  %i.cg = icmp eq ptr %2, %1                      ; 2 uses
  br i1 %.not214, label %.thread343.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.cg, label %_ZN4ncnn3MataSERKS0_.exit222, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !34 ; 2 uses
  %.not.i221 = icmp eq ptr %i.ci, null
  br i1 %.not.i221, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = atomicrmw add ptr %i.ci, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !34 ; 2 uses
  %.not.i227 = icmp eq ptr %i.cl, null
  br i1 %.not.i227, label %_ZN4ncnn3Mat7releaseEv.exit229, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = atomicrmw add ptr %i.cl, i32 -1 acq_rel, align 4
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.aa, label %_ZN4ncnn3Mat7releaseEv.exit229

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !35 ; 3 uses
  %.not3.i228 = icmp eq ptr %i.cp, null
  %i.cq = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i228, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef %i.cq), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit229

bb.ac:                                            ; preds = %bb.aa
  %.not.i244 = icmp eq ptr %i.cq, null
  br i1 %.not.i244, label %_ZN4ncnn3Mat7releaseEv.exit229, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.cq) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit229

_ZN4ncnn3Mat7releaseEv.exit229:                   ; preds = %bb.ad, %bb.ac, %bb.y, %bb.z, %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.cy, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cw, i8 0, i64 20, i1 false)
  %i.cz = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.cz, ptr %2, align 8, !tbaa !40
  %i.da = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !16
  %i.db = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.db, ptr %i.cv, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !35
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !35
  %i.df = load <4 x i32>, ptr %i.cc, align 8, !tbaa !41
  store <4 x i32> %i.df, ptr %i.cw, align 8, !tbaa !41
  %i.dg = load i32, ptr %i.ca, align 8, !tbaa !42
  store i32 %i.dg, ptr %i.cx, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !39
  store i64 %i.di, ptr %i.cy, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit222

bb.ae:                                            ; preds = %bb.t
  %i.dj = mul nsw i32 %i.bx, %i.n                 ; 2 uses
  %i.dk = srem i32 %i.dj, %i.p
  %i.dl = sdiv exact i32 %i.dj, %i.p              ; 2 uses
  %.not215 = icmp eq i32 %i.dk, 0
  br i1 %.not215, label %.thread343.thread372, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = icmp eq ptr %2, %1
  br i1 %i.dm, label %_ZN4ncnn3MataSERKS0_.exit222, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !34 ; 2 uses
  %.not.i219 = icmp eq ptr %i.do, null
  br i1 %.not.i219, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dp = atomicrmw add ptr %i.do, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !34 ; 2 uses
  %.not.i230 = icmp eq ptr %i.dr, null
  br i1 %.not.i230, label %_ZN4ncnn3Mat7releaseEv.exit232, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = atomicrmw add ptr %i.dr, i32 -1 acq_rel, align 4
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.ak, label %_ZN4ncnn3Mat7releaseEv.exit232

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !35 ; 3 uses
  %.not3.i231 = icmp eq ptr %i.dv, null
  %i.dw = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i231, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef %i.dw), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit232

bb.am:                                            ; preds = %bb.ak
  %.not.i242 = icmp eq ptr %i.dw, null
  br i1 %.not.i242, label %_ZN4ncnn3Mat7releaseEv.exit232, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @free(ptr noundef nonnull %i.dw) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit232

_ZN4ncnn3Mat7releaseEv.exit232:                   ; preds = %bb.an, %bb.am, %bb.ai, %bb.aj, %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.ee, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ec, i8 0, i64 20, i1 false)
  %i.ef = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.ef, ptr %2, align 8, !tbaa !40
  %i.eg = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.eg, ptr %i.ea, align 8, !tbaa !16
  %i.eh = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.eh, ptr %i.eb, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !35
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !35
  %i.el = load <4 x i32>, ptr %i.cc, align 8, !tbaa !41
  store <4 x i32> %i.el, ptr %i.ec, align 8, !tbaa !41
  %i.em = load i32, ptr %i.ca, align 8, !tbaa !42
  store i32 %i.em, ptr %i.ed, align 8, !tbaa !42
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !39
  store i64 %i.eo, ptr %i.ee, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit222

bb.ao:                                            ; preds = %bb.t
  %i.ep = add i32 %i.cd, -3
  %or.cond23 = icmp ult i32 %i.ep, 2
  br i1 %or.cond23, label %bb.ap, label %_ZN4ncnn3MataSERKS0_.exit222

bb.ap:                                            ; preds = %bb.ao
  %i.eq = mul nsw i32 %i.cb, %i.n
  %i.er = srem i32 %i.eq, %i.p
  %.not216 = icmp eq i32 %i.er, 0
  br i1 %.not216, label %bb.cf, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.es = icmp eq ptr %2, %1
  br i1 %i.es, label %_ZN4ncnn3MataSERKS0_.exit222, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !34 ; 2 uses
  %.not.i217 = icmp eq ptr %i.eu, null
  br i1 %.not.i217, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ev = atomicrmw add ptr %i.eu, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !34 ; 2 uses
  %.not.i233 = icmp eq ptr %i.ex, null
  br i1 %.not.i233, label %_ZN4ncnn3Mat7releaseEv.exit235, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ey = atomicrmw add ptr %i.ex, i32 -1 acq_rel, align 4
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.av, label %_ZN4ncnn3Mat7releaseEv.exit235

bb.av:                                            ; preds = %bb.au
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !35 ; 3 uses
  %.not3.i234 = icmp eq ptr %i.fb, null
  %i.fc = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i234, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !38
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef %i.fc), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit235

bb.ax:                                            ; preds = %bb.av
  %.not.i240 = icmp eq ptr %i.fc, null
  br i1 %.not.i240, label %_ZN4ncnn3Mat7releaseEv.exit235, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @free(ptr noundef nonnull %i.fc) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit235

_ZN4ncnn3Mat7releaseEv.exit235:                   ; preds = %bb.ay, %bb.ax, %bb.at, %bb.au, %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.fk, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fi, i8 0, i64 20, i1 false)
  %i.fl = load <2 x ptr>, ptr %1, align 8, !tbaa !40
  store <2 x ptr> %i.fl, ptr %2, align 8, !tbaa !40
  %i.fm = load i64, ptr %i.k, align 8, !tbaa !16
  store i64 %i.fm, ptr %i.fg, align 8, !tbaa !16
  %i.fn = load i32, ptr %i.m, align 8, !tbaa !15
  store i32 %i.fn, ptr %i.fh, align 8, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !35
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !35
  %i.fr = load <4 x i32>, ptr %i.cc, align 8, !tbaa !41
  store <4 x i32> %i.fr, ptr %i.fi, align 8, !tbaa !41
  %i.fs = load i32, ptr %i.ca, align 8, !tbaa !42
  store i32 %i.fs, ptr %i.fj, align 8, !tbaa !42
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !39
  store i64 %i.fu, ptr %i.fk, align 8, !tbaa !39
  br label %_ZN4ncnn3MataSERKS0_.exit222

.thread343.thread:                                ; preds = %bb.u
  br i1 %i.cg, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.az

bb.az:                                            ; preds = %.thread343.thread
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !34 ; 2 uses
  %.not.i = icmp eq ptr %i.fw, null
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = atomicrmw add ptr %i.fw, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !34 ; 2 uses
  %.not.i236 = icmp eq ptr %i.fz, null
  br i1 %.not.i236, label %_ZN4ncnn3Mat7releaseEv.exit238, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ga = atomicrmw add ptr %i.fz, i32 -1 acq_rel, align 4
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.bd, label %_ZN4ncnn3Mat7releaseEv.exit238

bb.bd:                                            ; preds = %bb.bc
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35 ; 3 uses
  %.not3.i237 = icmp eq ptr %i.gd, null
  %i.ge = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  br i1 %.not3.i237, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !38
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef %i.ge), !inline_history !0
end_hunk_2
