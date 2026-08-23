Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/net?download=true
inline.NumInlined: 978
inline.NumDeleted: 433
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4ncnn10NetPrivate14convert_layoutERNS_3MatEPKNS_5LayerERKNS_6OptionE:bb.a
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %i.ar = load <2 x ptr>, ptr %4, align 16, !tbaa !105
  store <2 x ptr> %i.ar, ptr %1, align 8, !tbaa !105
  %i.as = load i64, ptr %i.x, align 16, !tbaa !106
  store i64 %i.as, ptr %i.l, align 8, !tbaa !106
  %i.at = load i32, ptr %i.y, align 8, !tbaa !107
  store i32 %i.at, ptr %i.j, align 8, !tbaa !107
  %i.au = load ptr, ptr %i.z, align 16, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.au, ptr %i.av, align 8, !tbaa !64
  %i.aw = load <4 x i32>, ptr %i.aa, align 8, !tbaa !80
  store <4 x i32> %i.aw, ptr %i.ap, align 8, !tbaa !80
  %i.ax = load i32, ptr %i.ab, align 8, !tbaa !108
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !108
  %i.ay = load i64, ptr %i.ac, align 16, !tbaa !67
  store i64 %i.ay, ptr %i.c, align 8, !tbaa !67
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = atomicrmw add ptr %i.aq, i32 -1 acq_rel, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.p, label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.z, align 16, !tbaa !64 ; 3 uses
  %.not3.i = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %4, align 16, !tbaa !65   ; 3 uses
  br i1 %.not3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %i.bc)
          to label %bb.ab unwind label %bb.t, !inline_history !66

bb.r:                                             ; preds = %bb.p
  %.not.i106 = icmp eq ptr %i.bc, null
  br i1 %.not.i106, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.bc) #28
  br label %bb.ab

bb.t:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #30
  unreachable

bb.u:                                             ; preds = %bb.k, %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %.not.i77 = icmp eq ptr %i.bj, null
  br i1 %.not.i77, label %_ZN4ncnn3MatD2Ev.exit75, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.w, label %_ZN4ncnn3MatD2Ev.exit75

bb.w:                                             ; preds = %bb.v
  %i.bm = load ptr, ptr %i.z, align 16, !tbaa !64 ; 3 uses
  %.not3.i78 = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %4, align 16, !tbaa !65   ; 3 uses
  br i1 %.not3.i78, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.bn)
          to label %_ZN4ncnn3MatD2Ev.exit75 unwind label %bb.aa, !inline_history !66

bb.y:                                             ; preds = %bb.w
  %.not.i104 = icmp eq ptr %i.bn, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit75, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.bn) #28
  br label %_ZN4ncnn3MatD2Ev.exit75

bb.aa:                                            ; preds = %bb.x
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit75:                          ; preds = %bb.v, %bb.u, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.cm

bb.ab:                                            ; preds = %bb.s, %bb.r, %bb.q, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pre = load ptr, ptr %1, align 8, !tbaa !65
  %i.bt = icmp eq ptr %.pre, null
  br i1 %i.bt, label %_ZNK4ncnn3Mat5emptyEv.exit110.thread, label %_ZNK4ncnn3Mat5emptyEv.exit109

_ZNK4ncnn3Mat5emptyEv.exit109:                    ; preds = %bb.d, %bb.c, %bb.ab
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !67
  %i.bv = load i32, ptr %i.e, align 8, !tbaa !108 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %i.bu, %i.bw
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_ZNK4ncnn3Mat5emptyEv.exit110.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit117.thread

_ZNK4ncnn3Mat8elembitsEv.exit117.thread:          ; preds = %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit109, %_ZNK4ncnn3Mat8elembitsEv.exit117
  %i.bz = phi i32 [ %i.f, %bb.b ], [ %i.bv, %_ZNK4ncnn3Mat5emptyEv.exit109 ], [ %i.f, %_ZNK4ncnn3Mat8elembitsEv.exit117 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !122, !range !94, !noundef !95
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ac, label %_ZNK4ncnn3Mat8elembitsEv.exit117.thread._crit_edge

_ZNK4ncnn3Mat8elembitsEv.exit117.thread._crit_edge: ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit117.thread
  %.pre145.a = load i32, ptr %i.j, align 8, !tbaa !107
  br label %bb.aq

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit117.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !82 ; 2 uses
  switch i32 %i.ce, label %bb.ae [
    i32 1, label %.thread
    i32 2, label %bb.ad
  ]

.thread:                                          ; preds = %bb.ac
  %i.cf = load i32, ptr %i.j, align 8, !tbaa !107 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !123
  %i.ci = mul nsw i32 %i.ch, %i.cf
  br label %thread-pre-split

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load i32, ptr %i.j, align 8, !tbaa !107 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !124
  %i.cm = mul nsw i32 %i.cl, %i.cj
  br label %thread-pre-split

bb.ae:                                            ; preds = %bb.ac
  %i.cn = add i32 %i.ce, -3
  %or.cond = icmp ult i32 %i.cn, 2
  %.pr.pre = load i32, ptr %i.j, align 8, !tbaa !107 ; 2 uses
  %i.co = mul nsw i32 %i.bz, %.pr.pre
  %spec.select191 = select i1 %or.cond, i32 %i.co, i32 0
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ae, %.thread, %bb.ad
  %i.cp = phi i32 [ %i.cj, %bb.ad ], [ %.pr.pre, %bb.ae ], [ %i.cf, %.thread ] ; 3 uses
  %.2 = phi i32 [ %i.cm, %bb.ad ], [ %spec.select191, %bb.ae ], [ %i.ci, %.thread ] ; 7 uses
  %.not.i112 = icmp eq i32 %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !125, !range !94, !noundef !95
  %i.cs = trunc nuw i8 %i.cr to i1                ; 2 uses
  br i1 %.not.i112, label %_ZNK4ncnn3Mat8elembitsEv.exit114.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit114

_ZNK4ncnn3Mat8elembitsEv.exit114:                 ; preds = %thread-pre-split
  br i1 %i.cs, label %bb.af, label %bb.aq

_ZNK4ncnn3Mat8elembitsEv.exit114.thread:          ; preds = %thread-pre-split
  br i1 %i.cs, label %.thread140, label %.thread185

bb.af:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit114
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !106
  %.tr.i113 = trunc i64 %i.cu to i32
  %i.cv = shl i32 %.tr.i113, 3
  %i.cw = sdiv i32 %i.cv, %i.cp                   ; 2 uses
  switch i32 %i.cw, label %.thread140 [
    i32 32, label %bb.ag
    i32 16, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  %i.cx = and i32 %.2, 15
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cz = call noundef i32 @_ZN4ncnn22cpu_support_x86_avx512Ev()
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %bb.ai, label %.thread140

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.da = and i32 %.2, 7
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dc = call noundef i32 @_ZN4ncnn19cpu_support_x86_avxEv()
  %.not63 = icmp eq i32 %i.dc, 0
  br i1 %.not63, label %bb.ak, label %.thread140

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dd = and i32 %.2, 3
  %i.de = icmp eq i32 %i.dd, 0
  %spec.select = select i1 %i.de, i32 4, i32 1
  br label %.thread140

bb.al:                                            ; preds = %bb.af
  %i.df = and i32 %.2, 15
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dh = call noundef i32 @_ZN4ncnn22cpu_support_x86_avx512Ev()
  %.not64 = icmp eq i32 %i.dh, 0
  br i1 %.not64, label %bb.an, label %.thread140

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.di = and i32 %.2, 7
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dk = call noundef i32 @_ZN4ncnn19cpu_support_x86_avxEv()
  %.not65 = icmp eq i32 %i.dk, 0
  br i1 %.not65, label %bb.ap, label %.thread140

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dl = and i32 %.2, 3
  %i.dm = icmp eq i32 %i.dl, 0
  %spec.select69 = select i1 %i.dm, i32 4, i32 1
  br label %.thread140

.thread140:                                       ; preds = %bb.af, %_ZNK4ncnn3Mat8elembitsEv.exit114.thread, %bb.ak, %bb.aj, %bb.ah, %bb.ap, %bb.ao, %bb.am
  %7 = phi i32 [ %i.cw, %bb.af ], [ 16, %bb.am ], [ 16, %bb.ao ], [ 16, %bb.ap ], [ 32, %bb.ah ], [ 32, %bb.ak ], [ 32, %bb.aj ], [ 0, %_ZNK4ncnn3Mat8elembitsEv.exit114.thread ]
  %.154 = phi i32 [ 1, %bb.af ], [ 16, %bb.am ], [ 8, %bb.ao ], [ %spec.select69, %bb.ap ], [ 16, %bb.ah ], [ %spec.select, %bb.ak ], [ 8, %bb.aj ], [ 1, %_ZNK4ncnn3Mat8elembitsEv.exit114.thread ]
  %i.dn = icmp eq i32 %7, 8
  %i.do = and i32 %.2, 7
  %i.dp = icmp eq i32 %i.do, 0
  %or.cond71 = select i1 %i.dn, i1 %i.dp, i1 false
  %.255 = select i1 %or.cond71, i32 8, i32 %.154
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !126, !range !94, !noundef !95
  %i.ds = trunc nuw i8 %i.dr to i1
  %.pre146 = load i32, ptr %i.j, align 8, !tbaa !107 ; 2 uses
  br i1 %i.ds, label %.thread182, label %bb.aq

bb.aq:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit117.thread._crit_edge, %_ZNK4ncnn3Mat8elembitsEv.exit114, %.thread140
  %i.dt = phi i32 [ %.pre145.a, %_ZNK4ncnn3Mat8elembitsEv.exit117.thread._crit_edge ], [ %i.cp, %_ZNK4ncnn3Mat8elembitsEv.exit114 ], [ %.pre146, %.thread140 ] ; 2 uses
  %.4 = phi i32 [ 1, %_ZNK4ncnn3Mat8elembitsEv.exit117.thread._crit_edge ], [ 1, %_ZNK4ncnn3Mat8elembitsEv.exit114 ], [ %.255, %.thread140 ] ; 2 uses
  %.not66 = icmp eq i32 %i.dt, %.4
  br i1 %.not66, label %_ZNK4ncnn3Mat8elembitsEv.exit, label %.thread185

.thread185:                                       ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit114.thread, %bb.aq
  %.4188 = phi i32 [ %.4, %bb.aq ], [ 1, %_ZNK4ncnn3Mat8elembitsEv.exit114.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.ea, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dx, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.4188, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ar unwind label %bb.az

bb.ar:                                            ; preds = %.thread185
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !62 ; 2 uses
  %.not.i120 = icmp eq ptr %i.eb, null
  br i1 %.not.i120, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ec = atomicrmw add ptr %i.eb, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !62 ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i121, label %_ZNK4ncnn3Mat5emptyEv.exit108, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = atomicrmw add ptr %i.ee, i32 -1 acq_rel, align 4
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.av, label %_ZNK4ncnn3Mat5emptyEv.exit108

bb.av:                                            ; preds = %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !64 ; 3 uses
  %.not3.i.i122 = icmp eq ptr %i.ei, null
  %i.ej = load ptr, ptr %1, align 8, !tbaa !65    ; 3 uses
  br i1 %.not3.i.i122, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  invoke void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.ej)
          to label %_ZNK4ncnn3Mat5emptyEv.exit108 unwind label %bb.az, !inline_history !104

bb.ax:                                            ; preds = %bb.av
  %.not.i18.i123 = icmp eq ptr %i.ej, null
  br i1 %.not.i18.i123, label %_ZNK4ncnn3Mat5emptyEv.exit108, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef nonnull %i.ej) #28
  br label %_ZNK4ncnn3Mat5emptyEv.exit108

_ZNK4ncnn3Mat5emptyEv.exit108:                    ; preds = %bb.au, %bb.at, %bb.aw, %bb.ay, %bb.ax
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ep = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  store ptr %i.ep, ptr %1, align 8, !tbaa !65
  %i.eq = load ptr, ptr %i.du, align 8, !tbaa !62 ; 3 uses
  store ptr %i.eq, ptr %i.ed, align 8, !tbaa !62
  %i.er = load i64, ptr %i.dv, align 8, !tbaa !106
  store i64 %i.er, ptr %i.en, align 8, !tbaa !106
  %i.es = load i32, ptr %i.dw, align 8, !tbaa !107
  store i32 %i.es, ptr %i.j, align 8, !tbaa !107
  %i.et = load ptr, ptr %i.dx, align 8, !tbaa !64
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !64
  %i.ev = load <4 x i32>, ptr %i.dy, align 8, !tbaa !80
  store <4 x i32> %i.ev, ptr %i.eo, align 8, !tbaa !80
  %i.ew = load i32, ptr %i.dz, align 8, !tbaa !108 ; 2 uses
  store i32 %i.ew, ptr %i.e, align 8, !tbaa !108
  %i.ex = load i64, ptr %i.ea, align 8, !tbaa !67 ; 2 uses
  store i64 %i.ex, ptr %i.c, align 8, !tbaa !67
  %i.ey = icmp eq ptr %i.ep, null
  %i.ez = sext i32 %i.ew to i64
  %i.fa = mul i64 %i.ex, %i.ez
  %i.fb = icmp eq i64 %i.fa, 0
  %i.fc = select i1 %i.ey, i1 true, i1 %i.fb
  %.not.i85 = icmp eq ptr %i.eq, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.bg

bb.az:                                            ; preds = %bb.aw, %.thread185
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %i.du, align 8, !tbaa !62 ; 2 uses
  %.not.i81 = icmp eq ptr %i.fe, null
  br i1 %.not.i81, label %_ZN4ncnn3MatD2Ev.exit74, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ff = atomicrmw add ptr %i.fe, i32 -1 acq_rel, align 4
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.bb, label %_ZN4ncnn3MatD2Ev.exit74

bb.bb:                                            ; preds = %bb.ba
  %i.fh = load ptr, ptr %i.dx, align 8, !tbaa !64 ; 3 uses
  %.not3.i82 = icmp eq ptr %i.fh, null
  %i.fi = load ptr, ptr %5, align 8, !tbaa !65    ; 3 uses
  br i1 %.not3.i82, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef %i.fi)
          to label %_ZN4ncnn3MatD2Ev.exit74 unwind label %bb.bf, !inline_history !66

bb.bd:                                            ; preds = %bb.bb
  %.not.i102 = icmp eq ptr %i.fi, null
  br i1 %.not.i102, label %_ZN4ncnn3MatD2Ev.exit74, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.fi) #28
  br label %_ZN4ncnn3MatD2Ev.exit74

bb.bf:                                            ; preds = %bb.bc
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit74:                          ; preds = %bb.ba, %bb.az, %bb.bc, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.cm

bb.bg:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit108
  %i.fo = atomicrmw add ptr %i.eq, i32 -1 acq_rel, align 4
  %i.fp = icmp eq i32 %i.fo, 1
  br i1 %i.fp, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit73

bb.bh:                                            ; preds = %bb.bg
  %i.fq = load ptr, ptr %i.dx, align 8, !tbaa !64 ; 3 uses
  %.not3.i86 = icmp eq ptr %i.fq, null
  %i.fr = load ptr, ptr %5, align 8, !tbaa !65    ; 3 uses
  br i1 %.not3.i86, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  invoke void %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef %i.fr)
          to label %_ZN4ncnn3MatD2Ev.exit73 unwind label %bb.bl, !inline_history !66

bb.bj:                                            ; preds = %bb.bh
  %.not.i100 = icmp eq ptr %i.fr, null
  br i1 %.not.i100, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.fr) #28
  br label %_ZN4ncnn3MatD2Ev.exit73

bb.bl:                                            ; preds = %bb.bi
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit73:                          ; preds = %bb.bg, %_ZNK4ncnn3Mat5emptyEv.exit108, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.fc, label %_ZNK4ncnn3Mat5emptyEv.exit110.thread, label %thread-pre-split142

thread-pre-split142:                              ; preds = %_ZN4ncnn3MatD2Ev.exit73
  %.pr143 = load i32, ptr %i.j, align 8, !tbaa !107
  br label %.thread182

.thread182:                                       ; preds = %.thread140, %thread-pre-split142
  %i.fx = phi i32 [ %.pr143, %thread-pre-split142 ], [ %.pre146, %.thread140 ] ; 2 uses
  %.not.i111 = icmp eq i32 %i.fx, 0
  br i1 %.not.i111, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.aq, %.thread182
  %i.fy = phi i32 [ %i.fx, %.thread182 ], [ %i.dt, %bb.aq ]
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !106
  %.tr.i = trunc i64 %i.ga to i32
  %i.gb = shl i32 %.tr.i, 3
  %i.gc = sdiv i32 %i.gb, %i.fy
  %i.gd = icmp eq i32 %i.gc, 16
end_hunk_0
