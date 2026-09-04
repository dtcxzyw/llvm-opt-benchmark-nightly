Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/arena?download=true
inline.NumInlined: 316
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_arena_stats_merge:atomic_load_zu.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  store ptr %i.l, ptr %3, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10648 ; 5 uses
  %i.n = tail call i64 @je_pa_decay_ms_get(ptr noundef nonnull %i.m, i32 noundef 1) #16
  store i64 %i.n, ptr %4, align 8, !tbaa !20
  %i.o = tail call i64 @je_pa_decay_ms_get(ptr noundef nonnull %i.m, i32 noundef 2) #16
  store i64 %i.o, ptr %5, align 8, !tbaa !20
  tail call void @je_pa_shard_basic_stats_merge(ptr noundef nonnull %i.m, ptr noundef %6, ptr noundef %7, ptr noundef %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 78936 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  call void @je_base_stats_get(ptr noundef %0, ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #16
  %i.r = getelementptr i8, ptr %1, i64 72896
  %.val = load ptr, ptr %i.r, align 8, !tbaa !154
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.t = load atomic i64, ptr %i.s monotonic, align 8
  %i.u = load i64, ptr %i.c, align 8, !tbaa !20
  %i.v = add i64 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !155
  %i.y = add i64 %i.v, %i.x
  store i64 %i.y, ptr %i.w, align 8, !tbaa !155
  %i.z = load i64, ptr %i.b, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !156
  %i.ac = add i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !156
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !20
  %i.ae = load i64, ptr %9, align 8, !tbaa !157
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %9, align 8, !tbaa !157
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8
  %i.aj = load atomic i64, ptr %i.ag monotonic, align 8
  %i.ak = add i64 %i.aj, %i.ai
  store atomic i64 %i.ak, ptr %i.ag monotonic, align 8
  %i.al = load i64, ptr %i.d, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !158
  %i.ao = add i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !158
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  br label %bb.e

bb.a:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 88
  call void @je_pa_shard_stats_merge(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.aw, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef nonnull %i.aa) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 168 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10408 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 10472 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.bb = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ba) #16
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.az) #16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 10512
  store atomic i8 1, ptr %i.bc monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10464 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !75
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 10456 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.bh, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.bg, align 8, !tbaa !76
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 10448 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !77
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 10400
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 5 uses
  %.not152 = icmp eq ptr %i.bm, null
  br i1 %.not152, label %select.unfold._crit_edge, label %.preheader148.lr.ph

.preheader148.lr.ph:                              ; preds = %malloc_mutex_lock.exit
  %i.bn = load i32, ptr @je_nhbins, align 4, !tbaa !15 ; 3 uses
  %.not160 = icmp eq i32 %i.bn, 0
  %i.bo = load ptr, ptr @je_tcache_bin_info, align 8 ; 2 uses
  br i1 %.not160, label %.preheader148, label %.preheader148.lr.ph.split.us

.preheader148.lr.ph.split.us:                     ; preds = %.preheader148.lr.ph
  %.promoted = load i64, ptr %i.ax, align 8, !tbaa !159
  %.promoted155 = load i64, ptr %i.ay, align 8, !tbaa !160
  %wide.trip.count = zext i32 %i.bn to i64        ; 4 uses
  %scevgep = getelementptr i8, ptr %9, i64 184
  %i.bp = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep185 = getelementptr i8, ptr @je_sz_index2size_tab, i64 %i.bp
  %min.iters.check = icmp ult i32 %i.bn, 5
  %bound0 = icmp ult ptr %i.ax, %scevgep185
  %bound1 = icmp ugt ptr %scevgep, @je_sz_index2size_tab
  %found.conflict = and i1 %bound0, %bound1
  %i.bq = and i64 %wide.trip.count, 3             ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 4, i64 %i.bq
  %n.vec = sub nsw i64 %wide.trip.count, %i.bs    ; 2 uses
  br label %.preheader148.us

.preheader148.us:                                 ; preds = %._crit_edge.us, %.preheader148.lr.ph.split.us
  %.promoted151.us156 = phi i64 [ %.promoted155, %.preheader148.lr.ph.split.us ], [ %i.fp, %._crit_edge.us ] ; 2 uses
  %.promoted.us154 = phi i64 [ %.promoted, %.preheader148.lr.ph.split.us ], [ %i.fl, %._crit_edge.us ] ; 2 uses
  %.0133153.us = phi ptr [ %i.bm, %.preheader148.lr.ph.split.us ], [ %i.fq, %._crit_edge.us ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0133153.us, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !82 ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader148.us
  %i.bv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted151.us156, i64 0
  %i.bw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.us154, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %vec.phi = phi <2 x i64> [ %i.bv, %vector.ph ], [ %i.eo, %vector.body ]
  %vec.phi186 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ep, %vector.body ]
  %vec.phi187 = phi <2 x i64> [ %i.bw, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi188 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ej, %vector.body ]
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %index ; 2 uses
  %i.cf = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !87
  %i.ch = insertelement <2 x ptr> poison, ptr %i.cf, i64 0
  %i.ci = insertelement <2 x ptr> %i.ch, ptr %i.cg, i64 1
  %i.cj = load ptr, ptr %i.cb, align 8, !tbaa !87
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !87
  %i.cl = insertelement <2 x ptr> poison, ptr %i.cj, i64 0
  %i.cm = insertelement <2 x ptr> %i.cl, ptr %i.ck, i64 1
  %i.cn = getelementptr i8, ptr %i.bx, i64 20
  %i.co = getelementptr i8, ptr %i.by, i64 44
  %i.cp = getelementptr i8, ptr %i.ca, i64 68
  %i.cq = getelementptr i8, ptr %i.cc, i64 92
  %i.cr = load i16, ptr %i.cn, align 4, !tbaa !88
  %i.cs = load i16, ptr %i.co, align 4, !tbaa !88
  %i.ct = insertelement <2 x i16> poison, i16 %i.cr, i64 0
  %i.cu = insertelement <2 x i16> %i.ct, i16 %i.cs, i64 1 ; 2 uses
  %i.cv = load i16, ptr %i.cp, align 4, !tbaa !88
  %i.cw = load i16, ptr %i.cq, align 4, !tbaa !88
  %i.cx = insertelement <2 x i16> poison, i16 %i.cv, i64 0
  %i.cy = insertelement <2 x i16> %i.cx, i16 %i.cw, i64 1 ; 2 uses
  %i.cz = ptrtoint <2 x ptr> %i.ci to <2 x i64>
  %i.da = ptrtoint <2 x ptr> %i.cm to <2 x i64>
  %i.db = trunc <2 x i64> %i.cz to <2 x i16>
  %i.dc = trunc <2 x i64> %i.da to <2 x i16>
  %i.dd = sub <2 x i16> %i.cu, %i.db
  %i.de = sub <2 x i16> %i.cy, %i.dc
  %i.df = lshr <2 x i16> %i.dd, splat (i16 3)
  %i.dg = lshr <2 x i16> %i.de, splat (i16 3)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %wide.load = load <2 x i16>, ptr %i.ce, align 2, !tbaa !90
  %wide.load189 = load <2 x i16>, ptr %i.dh, align 2, !tbaa !90
  %i.di = shl <2 x i16> %wide.load, splat (i16 3)
  %i.dj = shl <2 x i16> %wide.load189, splat (i16 3)
  %i.dk = sub <2 x i16> %i.di, %i.cu
  %i.dl = sub <2 x i16> %i.dj, %i.cy
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bx, i64 18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.by, i64 42
  %i.do = getelementptr inbounds nuw i8, ptr %i.ca, i64 66
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cc, i64 90
  %i.dq = load i16, ptr %i.dm, align 2, !tbaa !91
  %i.dr = load i16, ptr %i.dn, align 2, !tbaa !91
  %i.ds = insertelement <2 x i16> poison, i16 %i.dq, i64 0
  %i.dt = insertelement <2 x i16> %i.ds, i16 %i.dr, i64 1
  %i.du = load i16, ptr %i.do, align 2, !tbaa !91
  %i.dv = load i16, ptr %i.dp, align 2, !tbaa !91
  %i.dw = insertelement <2 x i16> poison, i16 %i.du, i64 0
  %i.dx = insertelement <2 x i16> %i.dw, i16 %i.dv, i64 1
  %i.dy = add <2 x i16> %i.dk, %i.dt
  %i.dz = add <2 x i16> %i.dl, %i.dx
  %i.ea = lshr <2 x i16> %i.dy, splat (i16 3)
  %i.eb = lshr <2 x i16> %i.dz, splat (i16 3)
  %i.ec = zext nneg <2 x i16> %i.df to <2 x i64>
  %i.ed = zext nneg <2 x i16> %i.dg to <2 x i64>
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %index ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %wide.load190 = load <2 x i64>, ptr %i.ee, align 16, !tbaa !20, !alias.scope !161
  %wide.load191 = load <2 x i64>, ptr %i.ef, align 16, !tbaa !20, !alias.scope !161
  %i.eg = mul <2 x i64> %wide.load190, %i.ec
  %i.eh = mul <2 x i64> %wide.load191, %i.ed
  %i.ei = add <2 x i64> %i.eg, %vec.phi187        ; 2 uses
  %i.ej = add <2 x i64> %i.eh, %vec.phi188        ; 2 uses
  %i.ek = zext nneg <2 x i16> %i.ea to <2 x i64>
  %i.el = zext nneg <2 x i16> %i.eb to <2 x i64>
  %wide.load192 = load <2 x i64>, ptr %i.ee, align 16, !tbaa !20, !alias.scope !161
  %wide.load193 = load <2 x i64>, ptr %i.ef, align 16, !tbaa !20, !alias.scope !161
  %i.em = mul <2 x i64> %wide.load192, %i.ek
  %i.en = mul <2 x i64> %wide.load193, %i.el
  %i.eo = add <2 x i64> %vec.phi, %i.em           ; 2 uses
  %i.ep = add <2 x i64> %vec.phi186, %i.en        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ep, %i.eo
  %i.er = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx194 = add <2 x i64> %i.ej, %i.ei
  %i.es = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx194) ; 2 uses
  store i64 %i.es, ptr %i.ax, align 8, !tbaa !159, !alias.scope !164, !noalias !161
  store i64 %i.er, ptr %i.ay, align 8, !tbaa !160, !alias.scope !164, !noalias !161
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader148.us, %middle.block
  %indvars.iv166.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader148.us ]
  %.ph = phi i64 [ %i.er, %middle.block ], [ %.promoted151.us156, %.preheader148.us ]
  %.ph196 = phi i64 [ %i.es, %middle.block ], [ %.promoted.us154, %.preheader148.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %scalar.ph ], [ %indvars.iv166.ph, %scalar.ph.preheader ] ; 4 uses
  %i.et = phi i64 [ %i.fp, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.eu = phi i64 [ %i.fl, %scalar.ph ], [ %.ph196, %scalar.ph.preheader ]
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %indvars.iv166 ; 3 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv166
  %.val.i.us = load ptr, ptr %i.ev, align 8, !tbaa !87
  %i.ex = getelementptr i8, ptr %i.ev, i64 20
  %.val6.i.us = load i16, ptr %i.ex, align 4, !tbaa !88 ; 2 uses
  %i.ey = ptrtoint ptr %.val.i.us to i64
  %i.ez = trunc i64 %i.ey to i16
  %i.fa = sub i16 %.val6.i.us, %i.ez
  %i.fb = lshr i16 %i.fa, 3
  %.val9.i.us = load i16, ptr %i.ew, align 2, !tbaa !90
  %i.fc = shl i16 %.val9.i.us, 3
  %.neg.i.us = sub i16 %i.fc, %.val6.i.us
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 18
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !91
  %i.ff = add i16 %.neg.i.us, %i.fe
  %i.fg = lshr i16 %i.ff, 3
  %i.fh = zext nneg i16 %i.fb to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %indvars.iv166 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !20
  %i.fk = mul i64 %i.fj, %i.fh
  %i.fl = add i64 %i.fk, %i.eu                    ; 3 uses
  store i64 %i.fl, ptr %i.ax, align 8, !tbaa !159
  %i.fm = zext nneg i16 %i.fg to i64
  %i.fn = load i64, ptr %i.fi, align 8, !tbaa !20
  %i.fo = mul i64 %i.fn, %i.fm
  %i.fp = add i64 %i.et, %i.fo                    ; 3 uses
  store i64 %i.fp, ptr %i.ay, align 8, !tbaa !160
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count
  br i1 %exitcond169.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !150

._crit_edge.us:                                   ; preds = %scalar.ph
  %i.fq = load ptr, ptr %.0133153.us, align 8, !tbaa !93 ; 3 uses
  %.not138.us = icmp eq ptr %i.fq, %i.bm
  %.not.us182 = icmp eq ptr %i.fq, null
  %.not.us = or i1 %.not138.us, %.not.us182
  br i1 %.not.us, label %select.unfold._crit_edge, label %.preheader148.us

bb.e:                                             ; preds = %atomic_load_zu.exit, %bb.e
  %indvars.iv = phi i64 [ 0, %atomic_load_zu.exit ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [48 x i8], ptr %i.ap, i64 %indvars.iv ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr monotonic, align 8 ; 6 uses
  %i.ft = getelementptr inbounds nuw [48 x i8], ptr %11, i64 %indvars.iv ; 7 uses
  %i.fu = load atomic i64, ptr %i.ft monotonic, align 8
  %i.fv = add i64 %i.fu, %i.fs
  store atomic i64 %i.fv, ptr %i.ft monotonic, align 8
  %i.fw = load i64, ptr %i.aq, align 8, !tbaa !165
  %i.fx = add i64 %i.fw, %i.fs
  store i64 %i.fx, ptr %i.aq, align 8, !tbaa !165
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fz = load atomic i64, ptr %i.fy monotonic, align 8 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.gb = load atomic i64, ptr %i.ga monotonic, align 8
  %i.gc = add i64 %i.gb, %i.fz
  store atomic i64 %i.gc, ptr %i.ga monotonic, align 8
  %i.gd = load i64, ptr %i.ar, align 8, !tbaa !166
  %i.ge = add i64 %i.gd, %i.fz
  store i64 %i.ge, ptr %i.ar, align 8, !tbaa !166
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.gg = load atomic i64, ptr %i.gf monotonic, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.gi = add i64 %i.gg, %i.fs                    ; 2 uses
  %i.gj = load atomic i64, ptr %i.gh monotonic, align 8
  %i.gk = add i64 %i.gj, %i.gi
  store atomic i64 %i.gk, ptr %i.gh monotonic, align 8
  %i.gl = load i64, ptr %i.as, align 8, !tbaa !167
  %i.gm = add i64 %i.gl, %i.gi
  store i64 %i.gm, ptr %i.as, align 8, !tbaa !167
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.go = load atomic i64, ptr %i.gn monotonic, align 8
  %i.gp = add i64 %i.go, %i.fs
  store atomic i64 %i.gp, ptr %i.gn monotonic, align 8
  %i.gq = load i64, ptr %i.at, align 8, !tbaa !168
  %i.gr = add i64 %i.gq, %i.fs
  store i64 %i.gr, ptr %i.at, align 8, !tbaa !168
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.gt = load atomic i64, ptr %i.gs monotonic, align 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.gv = load atomic i64, ptr %i.gu monotonic, align 8
  %i.gw = add i64 %i.gv, %i.gt
  store atomic i64 %i.gw, ptr %i.gu monotonic, align 8
  %i.gx = load i64, ptr %i.au, align 8, !tbaa !169
  %i.gy = add i64 %i.gx, %i.gt
  store i64 %i.gy, ptr %i.au, align 8, !tbaa !169
  %i.gz = sub i64 %i.fs, %i.fz                    ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ft, i64 40 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !171
  %i.hc = add i64 %i.hb, %i.gz
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !171
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %indvars.iv
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 312
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !20
  %i.hg = mul i64 %i.hf, %i.gz
  %i.hh = load i64, ptr %i.av, align 8, !tbaa !172
  %i.hi = add i64 %i.hh, %i.hg
  store i64 %i.hi, ptr %i.av, align 8, !tbaa !172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 196
  br i1 %exitcond.not, label %bb.a, label %bb.e, !llvm.loop !151

.preheader148:                                    ; preds = %.preheader148.lr.ph, %.preheader148
  %.0133153 = phi ptr [ %i.hj, %.preheader148 ], [ %i.bm, %.preheader148.lr.ph ]
  %i.hj = load ptr, ptr %.0133153, align 8, !tbaa !93 ; 3 uses
  %.not138 = icmp eq ptr %i.hj, %i.bm
  %.not161 = icmp eq ptr %i.hj, null
  %.not = or i1 %.not138, %.not161
  br i1 %.not, label %select.unfold._crit_edge, label %.preheader148

select.unfold._crit_edge:                         ; preds = %._crit_edge.us, %.preheader148, %malloc_mutex_lock.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 184 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hl, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.az, i64 64, i1 false), !tbaa.struct !174
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 732
  store atomic i32 0, ptr %i.hm monotonic, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 10512
  store atomic i8 0, ptr %i.hn monotonic, align 8
  %i.ho = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ba) #16 ; 0 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 10536 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 10600 ; 2 uses
  %i.hr = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.hq) #16
  %.not.i140 = icmp eq i32 %i.hr, 0
  br i1 %.not.i140, label %bb.g, label %bb.f

bb.f:                                             ; preds = %select.unfold._crit_edge
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.hp) #16
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 10640
  store atomic i8 1, ptr %i.hs monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %select.unfold._crit_edge
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 10592 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !75
  %i.hv = add i64 %i.hu, 1
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !75
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 10584 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !76
  %.not.i.i141 = icmp eq ptr %i.hx, %0
  br i1 %.not.i.i141, label %malloc_mutex_lock.exit142, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.hw, align 8, !tbaa !76
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 10576 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !77
  %i.ia = add i64 %i.hz, 1
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !77
  br label %malloc_mutex_lock.exit142

malloc_mutex_lock.exit142:                        ; preds = %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hk, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.hp, i64 64, i1 false), !tbaa.struct !174
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 220
  store atomic i32 0, ptr %i.ib monotonic, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 10640
  store atomic i8 0, ptr %i.ic monotonic, align 8
  %i.id = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hq) #16 ; 0 uses
  %i.ie = load ptr, ptr %i.p, align 8, !tbaa !73  ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 96
  %i.ig = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.if) #16
  %.not.i143 = icmp eq i32 %i.ig, 0
  br i1 %.not.i143, label %bb.j, label %bb.i

bb.i:                                             ; preds = %malloc_mutex_lock.exit142
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ih) #16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 136
  store atomic i8 1, ptr %i.ii monotonic, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %malloc_mutex_lock.exit142
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 88 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !75
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !75
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 80 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !76
  %.not.i.i144 = icmp eq ptr %i.in, %0
end_hunk_0
