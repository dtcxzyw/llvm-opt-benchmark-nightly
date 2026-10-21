Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfDeepTiledOutputFile?download=true
inline.NumInlined: 1001
inline.NumDeleted: 475
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7Imf_3_412_GLOBAL__N_114TileBufferTask7executeEv:bb.a
  %i.cy = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ex, %._crit_edge.loopexit.unr-lcssa ], [ %i.cv, %.epil.preheader ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 416
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !111
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 424
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !112
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cc, i64 428
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !113
  %i.df = load i32, ptr %1, align 16, !tbaa !132
  %i.dg = load i32, ptr %i.z, align 8, !tbaa !134
  %i.dh = load i32, ptr %i.aa, align 4, !tbaa !138
  invoke void @_ZN7Imf_3_421calculateBytesPerLineERKNS_6HeaderEPciiiiiiRSt6vectorIiSaIiEES7_RS4_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(49) %i.cc, ptr noundef %i.da, i32 noundef %i.dc, i32 noundef %i.de, i32 noundef %i.df, i32 noundef %i.dg, i32 noundef %i.cy, i32 noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.preheader151 unwind label %bb.o

.preheader151:                                    ; preds = %._crit_edge
  %i.di = load ptr, ptr %i.as, align 8, !tbaa !293 ; 2 uses
  %i.dj = load ptr, ptr %2, align 8, !tbaa !82    ; 4 uses
  %.not188 = icmp eq ptr %i.di, %i.dj
  br i1 %.not188, label %._crit_edge157, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.preheader151
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.dn, 4
  br i1 %min.iters.check, label %.lr.ph156.preheader276, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph156.preheader
  %n.vec = and i64 %i.dn, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ds, %vector.body ]
  %vec.phi264 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dt, %vector.body ]
  %vec.phi265 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dq, %vector.body ]
  %vec.phi266 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dr, %vector.body ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <2 x i64>, ptr %i.do, align 8, !tbaa !154 ; 2 uses
  %wide.load267 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !154 ; 2 uses
  %i.dq = add <2 x i64> %wide.load, %vec.phi265   ; 2 uses
  %i.dr = add <2 x i64> %wide.load267, %vec.phi266 ; 2 uses
  %i.ds = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load, <2 x i64> %vec.phi) ; 2 uses
  %i.dt = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load267, <2 x i64> %vec.phi264) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.ds, <2 x i64> %i.dt)
  %i.dv = call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %bin.rdx = add <2 x i64> %i.dr, %i.dq
  %i.dw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %._crit_edge157, label %.lr.ph156.preheader276

.lr.ph156.preheader276:                           ; preds = %.lr.ph156.preheader, %middle.block
  %.062155.ph = phi i64 [ 0, %.lr.ph156.preheader ], [ %n.vec, %middle.block ]
  %.063154.ph = phi i64 [ 0, %.lr.ph156.preheader ], [ %i.dv, %middle.block ]
  %.065153.ph = phi i64 [ 0, %.lr.ph156.preheader ], [ %i.dw, %middle.block ]
  br label %.lr.ph156

bb.h:                                             ; preds = %bb.a
  %i.dx = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.aq

bb.i:                                             ; preds = %bb.c
  %i.dy = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt6vectorImSaImEED2Ev.exit138

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.dz = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit136

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.ea = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit134

bb.l:                                             ; preds = %bb.l, %.lr.ph.new
  %.068152 = phi i64 [ 0, %.lr.ph.new ], [ %i.fa, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.val105, i64 %.068152
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !110 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 44
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !161
  %i.ef = load i32, ptr %1, align 16, !tbaa !132
  %i.eg = mul nsw i32 %i.ef, %i.ee
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.068152
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !129
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !162
  %i.ek = load i32, ptr %i.ac, align 4, !tbaa !136
  %i.el = mul nsw i32 %i.ek, %i.ej
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.068152
  store i32 %i.el, ptr %i.em, align 4, !tbaa !129
  %i.en = or disjoint i64 %.068152, 1             ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.val105, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !110 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !161
  %i.es = load i32, ptr %1, align 16, !tbaa !132
  %i.et = mul nsw i32 %i.es, %i.er
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.en
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !129
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !162
  %i.ex = load i32, ptr %i.ac, align 4, !tbaa !136 ; 2 uses
  %i.ey = mul nsw i32 %i.ex, %i.ew
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.en
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !129
  %i.fa = add nuw i64 %.068152, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !281

._crit_edge157:                                   ; preds = %.lr.ph156, %middle.block, %.preheader151
  %.065.lcssa = phi i64 [ 0, %.preheader151 ], [ %i.dw, %middle.block ], [ %i.fi, %.lr.ph156 ] ; 2 uses
  %.063.lcssa = phi i64 [ 0, %.preheader151 ], [ %i.dv, %middle.block ], [ %spec.select, %.lr.ph156 ]
  %i.fb = load ptr, ptr %i.p, align 8, !tbaa !169 ; 2 uses
  %i.fc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.065.lcssa) #25
          to label %.noexc128 unwind label %bb.o

.noexc128:                                        ; preds = %._crit_edge157
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !108 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc128
  call void @_ZdaPv(ptr noundef nonnull %i.fe) #26
  br label %bb.n

.lr.ph156:                                        ; preds = %.lr.ph156.preheader276, %.lr.ph156
  %.062155 = phi i64 [ %i.fj, %.lr.ph156 ], [ %.062155.ph, %.lr.ph156.preheader276 ] ; 2 uses
  %.063154 = phi i64 [ %spec.select, %.lr.ph156 ], [ %.063154.ph, %.lr.ph156.preheader276 ]
  %.065153 = phi i64 [ %i.fi, %.lr.ph156 ], [ %.065153.ph, %.lr.ph156.preheader276 ]
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.062155
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !154 ; 2 uses
  %i.fi = add i64 %i.fh, %.065153                 ; 2 uses
  %spec.select = call i64 @llvm.umax.i64(i64 %i.fh, i64 %.063154) ; 2 uses
  %i.fj = add nuw i64 %.062155, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.fj, %i.dn
  br i1 %exitcond197.not, label %._crit_edge157, label %.lr.ph156, !llvm.loop !282

bb.n:                                             ; preds = %bb.m, %.noexc128
  store i64 %.065.lcssa, ptr %i.fb, align 8, !tbaa !151
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.fk = load ptr, ptr %i.p, align 8, !tbaa !169 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !108
  store ptr %i.fm, ptr %i.c, align 8, !tbaa !157
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !168 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 432
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !155
  %i.fq = icmp eq i32 %i.fp, 0
  %i.fr = load i32, ptr %1, align 16
  %i.fs = select i1 %i.fq, i32 0, i32 %i.fr       ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 436
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !156
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = load i32, ptr %i.ac, align 4            ; 4 uses
  %i.fx = select i1 %i.fv, i32 0, i32 %i.fw       ; 2 uses
  %i.fy = load i32, ptr %i.aa, align 4, !tbaa !138 ; 3 uses
  %.not166 = icmp sgt i32 %i.fw, %i.fy
  br i1 %.not166, label %._crit_edge168, label %.preheader

.preheader:                                       ; preds = %bb.n, %._crit_edge165
  %i.fz = phi i32 [ %i.go, %._crit_edge165 ], [ %i.fy, %bb.n ]
  %i.ga = phi ptr [ %i.gp, %._crit_edge165 ], [ %i.fn, %bb.n ] ; 4 uses
  %.061167 = phi i32 [ %i.gq, %._crit_edge165 ], [ %i.fw, %bb.n ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 288
  %.val160 = load ptr, ptr %i.gb, align 8, !tbaa !95 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.ga, i64 296
  %.val104161 = load ptr, ptr %i.gc, align 8, !tbaa !96
  %.not189 = icmp eq ptr %.val104161, %.val160
  br i1 %.not189, label %._crit_edge165, label %.lr.ph164

._crit_edge168.loopexit:                          ; preds = %._crit_edge165
  %.pre203 = load i32, ptr %i.ac, align 4, !tbaa !136
  %.pre206.pre = load ptr, ptr %i.p, align 8, !tbaa !169
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %._crit_edge168.loopexit, %bb.n
  %.pre206.a = phi ptr [ %.pre206.pre, %._crit_edge168.loopexit ], [ %i.fk, %bb.n ] ; 3 uses
  %i.gd = phi i32 [ %i.go, %._crit_edge168.loopexit ], [ %i.fy, %bb.n ] ; 2 uses
  %i.ge = phi i32 [ %.pre203, %._crit_edge168.loopexit ], [ %i.fw, %bb.n ] ; 2 uses
  %.not83179 = icmp sgt i32 %i.ge, %i.gd
  br i1 %.not83179, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %._crit_edge168
  %i.gf = load i32, ptr %1, align 16, !tbaa !132  ; 2 uses
  %i.gg = load i32, ptr %i.z, align 8, !tbaa !134 ; 2 uses
  %i.gh = icmp sgt i32 %i.gf, %i.gg
  br i1 %i.gh, label %._crit_edge185, label %.lr.ph184.split.preheader

.lr.ph184.split.preheader:                        ; preds = %.lr.ph184
  %i.gi = getelementptr inbounds nuw i8, ptr %.pre206.a, i64 56
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !108
  %i.gk = sext i32 %i.fs to i64
  %i.gl = sext i32 %i.ge to i64
  %i.gm = sext i32 %i.fx to i64
  br label %.lr.ph184.split

bb.o:                                             ; preds = %._crit_edge157, %._crit_edge
  %i.gn = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.am

._crit_edge165.loopexit:                          ; preds = %bb.r
  %.pre202 = load i32, ptr %i.aa, align 4, !tbaa !138
  br label %._crit_edge165

._crit_edge165:                                   ; preds = %._crit_edge165.loopexit, %.preheader
  %i.go = phi i32 [ %.pre202, %._crit_edge165.loopexit ], [ %i.fz, %.preheader ] ; 3 uses
  %i.gp = phi ptr [ %i.il, %._crit_edge165.loopexit ], [ %i.ga, %.preheader ]
  %i.gq = add nsw i32 %.061167, 1
  %.not.not = icmp slt i32 %.061167, %i.go
  br i1 %.not.not, label %.preheader, label %._crit_edge168.loopexit, !llvm.loop !283

.lr.ph164:                                        ; preds = %.preheader, %bb.r
  %.val163 = phi ptr [ %.val, %bb.r ], [ %.val160, %.preheader ]
  %i.gr = phi ptr [ %i.il, %bb.r ], [ %i.ga, %.preheader ] ; 5 uses
  %i.gs = phi i64 [ %i.ik, %bb.r ], [ 0, %.preheader ]
  %.060162 = phi i32 [ %i.ij, %bb.r ], [ 0, %.preheader ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !110 ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !160, !range !152, !noundef !153
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph164
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 280
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !145
  %i.ha = load i32, ptr %i.gu, align 8, !tbaa !159
  %i.hb = load i32, ptr %i.ac, align 4, !tbaa !136
  %i.hc = sub nsw i32 %.061167, %i.hb
  %i.hd = sext i32 %i.hc to i64
  %i.he = load ptr, ptr %2, align 8, !tbaa !82
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !154
  invoke void @_ZN7Imf_3_421fillChannelWithZeroesERPcNS_10Compressor6FormatENS_9PixelTypeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.gz, i32 noundef %i.ha, i64 noundef %i.hg)
          to label %bb.r unwind label %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %.lr.ph164
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gu, i64 44
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !161
  %.not91 = icmp eq i32 %i.hi, 0
  %i.hj = load i32, ptr %1, align 16              ; 2 uses
  %i.hk = select i1 %.not91, i32 0, i32 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !162
  %.not92 = icmp eq i32 %i.hm, 0
  %i.hn = load i32, ptr %i.ac, align 4
  %i.ho = select i1 %.not92, i32 0, i32 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !164
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gr, i64 416
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !111
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gr, i64 424
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !112
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gr, i64 428
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !113
  %i.hy = sext i32 %i.hx to i64
  %i.hz = load i32, ptr %i.z, align 8, !tbaa !134
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !163
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !298
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !299
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gr, i64 280
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !145
  %i.ii = load i32, ptr %i.gu, align 8, !tbaa !159
  invoke void @_ZN7Imf_3_423copyFromDeepFrameBufferERPcPKcS0_lliiiiiiilllNS_10Compressor6FormatENS_9PixelTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.hq, ptr noundef %i.hs, i64 noundef %i.hv, i64 noundef %i.hy, i32 noundef %.061167, i32 noundef %i.hj, i32 noundef %i.hz, i32 noundef %i.fs, i32 noundef %i.fx, i32 noundef %i.hk, i32 noundef %i.ho, i64 noundef %i.ib, i64 noundef %i.id, i64 noundef %i.if, i32 noundef %i.ih, i32 noundef %i.ii)
          to label %bb.r unwind label %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ij = add i32 %.060162, 1                     ; 2 uses
  %i.ik = zext i32 %i.ij to i64                   ; 2 uses
  %i.il = load ptr, ptr %i.e, align 8, !tbaa !168 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 288
  %.val = load ptr, ptr %i.im, align 8, !tbaa !95 ; 2 uses
  %i.in = getelementptr i8, ptr %i.il, i64 296
  %.val104 = load ptr, ptr %i.in, align 8, !tbaa !96
  %i.io = ptrtoint ptr %.val104 to i64
  %i.ip = ptrtoint ptr %.val to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = ashr exact i64 %i.iq, 3
  %i.is = icmp ugt i64 %i.ir, %i.ik
  br i1 %i.is, label %.lr.ph164, label %._crit_edge165.loopexit, !llvm.loop !284

._crit_edge185.loopexit191:                       ; preds = %._crit_edge176
  %.pre205 = load ptr, ptr %i.p, align 8, !tbaa !169
  br label %._crit_edge185

._crit_edge185:                                   ; preds = %.lr.ph184, %._crit_edge185.loopexit191, %._crit_edge168
  %i.it = phi ptr [ %.pre206.a, %._crit_edge168 ], [ %.pre205, %._crit_edge185.loopexit191 ], [ %.pre206.a, %.lr.ph184 ] ; 4 uses
  %.059.lcssa = phi i32 [ 0, %._crit_edge168 ], [ %.1.lcssa, %._crit_edge185.loopexit191 ], [ 0, %.lr.ph184 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !106 ; 3 uses
  %.not84 = icmp eq ptr %i.iv, null
  br i1 %.not84, label %.thread, label %bb.t

.thread:                                          ; preds = %._crit_edge185
  %.pre208244 = load ptr, ptr %i.e, align 8, !tbaa !168
  br label %._crit_edge209

.lr.ph184.split:                                  ; preds = %.lr.ph184.split.preheader, %._crit_edge176
  %6 = phi i32 [ %i.gd, %.lr.ph184.split.preheader ], [ %7, %._crit_edge176 ]
  %i.iw = phi i32 [ %i.gg, %.lr.ph184.split.preheader ], [ %i.ja, %._crit_edge176 ] ; 2 uses
  %i.ix = phi i32 [ %i.gf, %.lr.ph184.split.preheader ], [ %i.jb, %._crit_edge176 ] ; 3 uses
  %indvars.iv199 = phi i64 [ %i.gl, %.lr.ph184.split.preheader ], [ %indvars.iv.next200, %._crit_edge176 ] ; 3 uses
  %.059181 = phi i32 [ 0, %.lr.ph184.split.preheader ], [ %.1.lcssa, %._crit_edge176 ] ; 2 uses
  %.0144180 = phi ptr [ %i.gj, %.lr.ph184.split.preheader ], [ %.1145.lcssa, %._crit_edge176 ] ; 2 uses
  %.not89169 = icmp sgt i32 %i.ix, %i.iw
  br i1 %.not89169, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph184.split
  %i.iy = sub nsw i64 %indvars.iv199, %i.gm
  %i.iz = sext i32 %i.ix to i64
  br label %bb.s

._crit_edge176.loopexit:                          ; preds = %bb.s
  %.pre204 = load i32, ptr %1, align 16, !tbaa !132
  %.pre204.a = load i32, ptr %i.aa, align 4, !tbaa !138
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %._crit_edge176.loopexit, %.lr.ph184.split
  %7 = phi i32 [ %6, %.lr.ph184.split ], [ %.pre204.a, %._crit_edge176.loopexit ] ; 2 uses
  %i.ja = phi i32 [ %i.iw, %.lr.ph184.split ], [ %i.jv, %._crit_edge176.loopexit ]
  %i.jb = phi i32 [ %i.ix, %.lr.ph184.split ], [ %.pre204, %._crit_edge176.loopexit ]
  %.1145.lcssa = phi ptr [ %.0144180, %.lr.ph184.split ], [ %i.jt, %._crit_edge176.loopexit ]
  %.1.lcssa = phi i32 [ %.059181, %.lr.ph184.split ], [ %i.ju, %._crit_edge176.loopexit ] ; 2 uses
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, 1
  %i.jc = sext i32 %7 to i64
  %.not83.not = icmp slt i64 %indvars.iv199, %i.jc
  br i1 %.not83.not, label %.lr.ph184.split, label %._crit_edge185.loopexit191, !llvm.loop !285

bb.s:                                             ; preds = %.lr.ph175, %bb.s
  %indvars.iv = phi i64 [ %i.iz, %.lr.ph175 ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %.057172 = phi i32 [ 0, %.lr.ph175 ], [ %i.js, %bb.s ]
  %.1171 = phi i32 [ %.059181, %.lr.ph175 ], [ %i.ju, %bb.s ]
  %.1145170 = phi ptr [ %.0144180, %.lr.ph175 ], [ %i.jt, %bb.s ] ; 2 uses
  %i.jd = load ptr, ptr %i.e, align 8, !tbaa !168 ; 3 uses
  %i.je = sub nsw i64 %indvars.iv, %i.gk
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 416
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !111
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 424
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !112
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 428
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !113
  %i.jl = sext i32 %i.jk to i64
  %i.jm = mul nsw i64 %i.iy, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.jg, i64 %i.jm
  %i.jo = sext i32 %i.ji to i64
  %i.jp = mul nsw i64 %i.je, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %i.jn, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !129
  %i.js = add nsw i32 %i.jr, %.057172             ; 2 uses
  store i32 %i.js, ptr %.1145170, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %.1145170, i64 4 ; 2 uses
  %i.ju = add i32 %.1171, 4                       ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.jv = load i32, ptr %i.z, align 8, !tbaa !134 ; 2 uses
  %i.jw = sext i32 %i.jv to i64
  %.not89.not = icmp slt i64 %indvars.iv, %i.jw
  br i1 %.not89.not, label %bb.s, label %._crit_edge176.loopexit, !llvm.loop !286

bb.t:                                             ; preds = %._crit_edge185
  %i.jx = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !108
  %i.jz = load i32, ptr %i.ac, align 4, !tbaa !136
  %i.ka = getelementptr inbounds nuw i8, ptr %i.it, i64 64
  %i.kb = load ptr, ptr %i.iv, align 8, !tbaa !105
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = invoke noundef i32 %i.kd(ptr noundef nonnull align 8 dereferenceable(1112) %i.iv, ptr noundef %i.jy, i32 noundef %.059.lcssa, i32 noundef %i.jz, ptr noundef nonnull align 8 dereferenceable(8) %i.ka)
          to label %bb.u unwind label %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.p, %bb.aa, %bb.z, %bb.t
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.loopexit.split-lp147

bb.u:                                             ; preds = %bb.t
  %i.kf = sext i32 %i.ke to i64
  %i.kg = load ptr, ptr %i.p, align 8, !tbaa !169 ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 72
  store i64 %i.kf, ptr %i.kh, align 8, !tbaa !174
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kg, i64 80
  %.pre207 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !106
  %i.ki = icmp eq ptr %.pre207, null
  %.pre208 = load ptr, ptr %i.e, align 8, !tbaa !168 ; 4 uses
  br i1 %i.ki, label %._crit_edge209, label %bb.v

._crit_edge209:                                   ; preds = %.thread, %bb.u
  %.pre208245 = phi ptr [ %.pre208244, %.thread ], [ %.pre208, %bb.u ] ; 2 uses
  %i.kj = phi ptr [ %i.it, %.thread ], [ %i.kg, %bb.u ]
  %.phi.trans.insert210 = getelementptr inbounds nuw i8, ptr %.pre208245, i64 440
  %.pre211 = load i64, ptr %.phi.trans.insert210, align 8, !tbaa !142
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 72
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !174
  %i.km = getelementptr inbounds nuw i8, ptr %.pre208, i64 440
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !142 ; 2 uses
  %.not86 = icmp ult i64 %i.kl, %i.kn
  br i1 %.not86, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge209, %bb.v
  %.pre208246 = phi ptr [ %.pre208245, %._crit_edge209 ], [ %.pre208, %bb.v ]
  %i.ko = phi ptr [ %i.kj, %._crit_edge209 ], [ %i.kg, %bb.v ] ; 4 uses
  %i.kp = phi i64 [ %.pre211, %._crit_edge209 ], [ %i.kn, %bb.v ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 72
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !174
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 56
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !108
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 64
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !173
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre208247 = phi ptr [ %.pre208246, %bb.w ], [ %.pre208, %bb.v ]
  %i.ku = phi ptr [ %i.ko, %bb.w ], [ %i.kg, %bb.v ] ; 5 uses
  %i.kv = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !108 ; 2 uses
  %i.ky = ptrtoint ptr %i.kv to i64
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !171
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  store i64 %i.la, ptr %i.lc, align 8, !tbaa !172
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store ptr %i.kx, ptr %i.ld, align 8, !tbaa !170
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !103 ; 3 uses
  %.not87 = icmp eq ptr %i.lf, null
  br i1 %.not87, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !105
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(1112) %i.lf) #24
  %.pre212 = load ptr, ptr %i.e, align 8, !tbaa !168
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.lj = phi ptr [ %.pre212, %bb.y ], [ %.pre208247, %bb.x ]
  %i.lk = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.lj)
          to label %bb.aa unwind label %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !144
  %i.lm = load ptr, ptr %i.e, align 8, !tbaa !168 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 68
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !140
  %i.lp = zext i32 %i.lo to i64
  %i.lq = invoke noundef ptr @_ZN7Imf_3_417newTileCompressorENS_11CompressionEmmRKNS_6HeaderE(i32 noundef %i.ll, i64 noundef %.063.lcssa, i64 noundef %i.lp, ptr noundef nonnull align 8 dereferenceable(49) %i.lm)
          to label %bb.ab unwind label %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.ab:                                            ; preds = %bb.aa
  %i.lr = load ptr, ptr %i.p, align 8, !tbaa !169 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 40
  store ptr %i.lq, ptr %i.ls, align 8, !tbaa !103
  %.not88 = icmp eq ptr %i.lq, null
  br i1 %.not88, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 96
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 1104
  %i.lv = load <2 x i32>, ptr %i.lt, align 8, !tbaa !129
  store <2 x i32> %i.lv, ptr %i.lu, align 8, !tbaa !129
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !170
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !171
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = load <4 x i32>, ptr %1, align 16, !tbaa !129
  store <4 x i32> %i.mb, ptr %5, align 16, !tbaa !129
  %i.mc = load ptr, ptr %i.lq, align 8, !tbaa !105
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = invoke noundef i32 %i.me(ptr noundef nonnull align 8 dereferenceable(1112) %i.lq, ptr noundef %i.lx, i32 noundef %i.ma, ptr noundef nonnull align 4 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.mg = sext i32 %i.mf to i64                   ; 2 uses
  %i.mh = load ptr, ptr %i.p, align 8, !tbaa !169 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !171
  %i.mk = icmp ugt i64 %i.mj, %i.mg
  br i1 %i.mk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.mg, ptr %i.mi, align 8, !tbaa !171
  %i.ml = load ptr, ptr %i.d, align 8, !tbaa !157
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !170
  br label %bb.ah

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.loopexit.split-lp147

bb.af:                                            ; preds = %bb.ad
  %i.mn = load ptr, ptr %i.e, align 8, !tbaa !168 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 280
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !145
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.mr = getelementptr i8, ptr %i.mh, i64 8
  %.val113 = load ptr, ptr %i.mr, align 8, !tbaa !108 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %.val113, ptr %i.a, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %.val113, ptr %i.b, align 8, !tbaa !157
  %i.ms = icmp sgt i32 %i.ae, -1
  br i1 %i.ms, label %.preheader.lr.ph.i, label %_ZN7Imf_3_412_GLOBAL__N_112convertToXdrEPNS_19DeepTiledOutputFile4DataERNS_5ArrayIcEEiRSt6vectorImSaImEE.exit

.preheader.lr.ph.i:                               ; preds = %bb.ag
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 288 ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mn, i64 296    ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.af to i64
  %.val1.pre.i = load ptr, ptr %i.mt, align 8, !tbaa !95
end_hunk_0
