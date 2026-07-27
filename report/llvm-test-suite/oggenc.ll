inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@ov_raw_seek:bb.a
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 31
  %i.fc = and i64 %i.fb, 2147483648
  %i.fd = or disjoint i64 %i.fc, %i.ew
  br label %oggpack_read.exit22.i

oggpack_read.exit22.i:                            ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.0.i16.i = phi i64 [ %i.fd, %bb.r ], [ %i.ee, %bb.n ], [ %i.ew, %bb.q ], [ %i.eq, %bb.p ], [ %i.ek, %bb.o ]
  %i.fe = and i64 %.0.i16.i, %i.dz                ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967295
  br i1 %i.ff, label %vorbis_packet_blocksize.exit.thread, label %vorbis_packet_blocksize.exit

vorbis_packet_blocksize.exit:                     ; preds = %oggpack_read.exit22.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %sext.i = shl nuw i64 %i.fe, 32
  %i.fh = ashr exact i64 %sext.i, 29
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = trunc i64 %i.fn to i32                  ; 6 uses
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %vorbis_packet_blocksize.exit.thread, label %bb.v

vorbis_packet_blocksize.exit.thread:              ; preds = %._crit_edge.i, %bb.l, %oggpack_read.exit22.i, %oggpack_read.exit.i, %vorbis_packet_blocksize.exit
  %i.fq = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.fr = load i64, ptr %i.bx, align 8
  %sext.i.i101 = shl i64 %i.fq, 32                ; 2 uses
  %i.fs = ashr exact i64 %sext.i.i101, 32         ; 3 uses
  %.not.i.i102 = icmp sgt i64 %i.fr, %i.fs
  br i1 %.not.i.i102, label %bb.s, label %ogg_stream_packetout.exit120

bb.s:                                             ; preds = %vorbis_packet_blocksize.exit.thread
  %i.ft = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fs
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %i.fw = and i32 %i.fv, 1024
  %.not51.i.i104 = icmp eq i32 %i.fw, 0
  br i1 %.not51.i.i104, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fx = add nsw i64 %i.fq, 1
  br label %.sink.split.i.i105

bb.u:                                             ; preds = %bb.s
  %i.fy = and i32 %i.fv, 255                      ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 255
  br i1 %i.fz, label %.lr.ph.i.i113, label %._crit_edge.i.i108

.lr.ph.i.i113:                                    ; preds = %bb.u, %.lr.ph.i.i113
  %indvars.iv.i.i114 = phi i64 [ %indvars.iv.next.i.i117, %.lr.ph.i.i113 ], [ %i.fs, %bb.u ]
  %.04753.i.i116 = phi i32 [ %i.gd, %.lr.ph.i.i113 ], [ 255, %bb.u ]
  %indvars.iv.next.i.i117 = add nsw i64 %indvars.iv.i.i114, 1 ; 3 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.next.i.i117
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = and i32 %i.gb, 255                      ; 2 uses
  %i.gd = add nuw nsw i32 %i.gc, %.04753.i.i116   ; 2 uses
  %i.ge = icmp eq i32 %i.gc, 255
  br i1 %i.ge, label %.lr.ph.i.i113, label %._crit_edge.i.i108.loopexit, !llvm.loop !192

._crit_edge.i.i108.loopexit:                      ; preds = %.lr.ph.i.i113
  %.pre272 = shl i64 %indvars.iv.next.i.i117, 32
  br label %._crit_edge.i.i108

._crit_edge.i.i108:                               ; preds = %._crit_edge.i.i108.loopexit, %bb.u
  %.pre2.i.pre-phi = phi i64 [ %.pre272, %._crit_edge.i.i108.loopexit ], [ %sext.i.i101, %bb.u ]
  %.047.lcssa.i.i109 = phi i32 [ %i.gd, %._crit_edge.i.i108.loopexit ], [ %i.fy, %bb.u ]
  %.pre.i = zext nneg i32 %.047.lcssa.i.i109 to i64
  %i.gf = load i64, ptr %i.bz, align 8
  %i.gg = add nsw i64 %i.gf, %.pre.i
  store i64 %i.gg, ptr %i.bz, align 8
  %sext64.i.i112 = add i64 %.pre2.i.pre-phi, 4294967296
  %i.gh = ashr exact i64 %sext64.i.i112, 32
  br label %.sink.split.i.i105

.sink.split.i.i105:                               ; preds = %._crit_edge.i.i108, %bb.t
  %.sink.i.i106 = phi i64 [ %i.gh, %._crit_edge.i.i108 ], [ %i.fx, %bb.t ]
  store i64 %.sink.i.i106, ptr %i.bw, align 8
  %i.gi = load i64, ptr %i.t, align 8
  %i.gj = add nsw i64 %i.gi, 1
  store i64 %i.gj, ptr %i.t, align 8
  br label %ogg_stream_packetout.exit120

bb.v:                                             ; preds = %vorbis_packet_blocksize.exit
  %.not89 = icmp eq i32 %.077, 0
  br i1 %.not89, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gk = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.gl = load i64, ptr %i.bx, align 8
  %sext.i.i121 = shl i64 %i.gk, 32                ; 2 uses
  %i.gm = ashr exact i64 %sext.i.i121, 32         ; 3 uses
  %.not.i.i122 = icmp sgt i64 %i.gl, %i.gm
  br i1 %.not.i.i122, label %bb.x, label %ogg_stream_packetout.exit120

bb.x:                                             ; preds = %bb.w
  %i.gn = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = load i32, ptr %i.go, align 4            ; 2 uses
  %i.gq = and i32 %i.gp, 1024
  %.not51.i.i124 = icmp eq i32 %i.gq, 0
  br i1 %.not51.i.i124, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gr = add nsw i64 %i.gk, 1
  br label %.sink.split.i.i125

bb.z:                                             ; preds = %bb.x
  %i.gs = and i32 %i.gp, 255                      ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 255
  br i1 %i.gt, label %.lr.ph.i.i135, label %._crit_edge.i.i128

.lr.ph.i.i135:                                    ; preds = %bb.z, %.lr.ph.i.i135
  %indvars.iv.i.i136 = phi i64 [ %indvars.iv.next.i.i139, %.lr.ph.i.i135 ], [ %i.gm, %bb.z ]
  %.04753.i.i138 = phi i32 [ %i.gx, %.lr.ph.i.i135 ], [ 255, %bb.z ]
  %indvars.iv.next.i.i139 = add nsw i64 %indvars.iv.i.i136, 1 ; 3 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i.i139
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = and i32 %i.gv, 255                      ; 2 uses
  %i.gx = add nuw nsw i32 %i.gw, %.04753.i.i138   ; 2 uses
  %i.gy = icmp eq i32 %i.gw, 255
  br i1 %i.gy, label %.lr.ph.i.i135, label %._crit_edge.i.i128.loopexit, !llvm.loop !192

._crit_edge.i.i128.loopexit:                      ; preds = %.lr.ph.i.i135
  %.pre273 = shl i64 %indvars.iv.next.i.i139, 32
  br label %._crit_edge.i.i128

._crit_edge.i.i128:                               ; preds = %._crit_edge.i.i128.loopexit, %bb.z
  %.pre2.i133.pre-phi = phi i64 [ %.pre273, %._crit_edge.i.i128.loopexit ], [ %sext.i.i121, %bb.z ]
  %.047.lcssa.i.i129 = phi i32 [ %i.gx, %._crit_edge.i.i128.loopexit ], [ %i.gs, %bb.z ]
  %.pre.i132 = zext nneg i32 %.047.lcssa.i.i129 to i64
  %i.gz = load i64, ptr %i.bz, align 8
  %i.ha = add nsw i64 %i.gz, %.pre.i132
  store i64 %i.ha, ptr %i.bz, align 8
  %sext64.i.i134 = add i64 %.pre2.i133.pre-phi, 4294967296
  %i.hb = ashr exact i64 %sext64.i.i134, 32
  br label %.sink.split.i.i125

.sink.split.i.i125:                               ; preds = %._crit_edge.i.i128, %bb.y
  %.sink.i.i126 = phi i64 [ %i.hb, %._crit_edge.i.i128 ], [ %i.gr, %bb.y ]
  store i64 %.sink.i.i126, ptr %i.bw, align 8
  %i.hc = load i64, ptr %i.t, align 8
  %i.hd = add nsw i64 %i.hc, 1
  store i64 %i.hd, ptr %i.t, align 8
  br label %ogg_stream_packetout.exit120

bb.aa:                                            ; preds = %bb.v
  %.not90 = icmp eq i32 %.082, 0
  br i1 %.not90, label %ogg_stream_packetout.exit120, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.he = add nuw nsw i32 %.082, %i.fo
  %i.hf = lshr i32 %i.he, 2
  %i.hg = add nsw i32 %i.hf, %.079.ph
  br label %ogg_stream_packetout.exit120

ogg_stream_packetout.exit120:                     ; preds = %.sink.split.i.i125, %bb.w, %.sink.split.i.i105, %vorbis_packet_blocksize.exit.thread, %bb.ab, %bb.aa
  %.180 = phi i32 [ %.079.ph, %bb.aa ], [ %.079.ph, %.sink.split.i.i105 ], [ %i.hg, %bb.ab ], [ %.079.ph, %vorbis_packet_blocksize.exit.thread ], [ %.079.ph, %bb.w ], [ %.079.ph, %.sink.split.i.i125 ] ; 2 uses
  %.078 = phi i32 [ %i.fo, %bb.aa ], [ 0, %.sink.split.i.i105 ], [ %i.fo, %bb.ab ], [ 0, %vorbis_packet_blocksize.exit.thread ], [ %i.fo, %bb.w ], [ %i.fo, %.sink.split.i.i125 ]
  %.not91 = icmp eq i64 %i.db, -1
  br i1 %.not91, label %ogg_stream_packetout.exit164.outer, label %bb.ac

bb.ac:                                            ; preds = %ogg_stream_packetout.exit120
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hi = load ptr, ptr %i.hh, align 8            ; 4 uses
  %i.hj = shl nsw i32 %i.di, 1
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hk
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = sub nsw i64 %i.db, %i.hm
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.hn, i64 0) ; 3 uses
  %i.ho = icmp sgt i32 %i.di, 0
  br i1 %i.ho, label %.lr.ph243.preheader, label %ogg_stream_packetout.exit164.thread203

.lr.ph243.preheader:                              ; preds = %bb.ac
  %wide.trip.count267 = zext nneg i32 %i.di to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.di, 5
  br i1 %min.iters.check, label %.lr.ph243.preheader354, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph243.preheader
  %n.mod.vf = and i64 %wide.trip.count267, 3      ; 2 uses
  %i.hp = icmp eq i64 %n.mod.vf, 0
  %i.hq = select i1 %i.hp, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count267, %i.hq ; 2 uses
  %i.hr = insertelement <2 x i64> <i64 poison, i64 0>, i64 %spec.store.select, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.hr, %vector.ph ], [ %i.hy, %vector.body ]
  %vec.phi351 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.hz, %vector.body ]
  %i.hs = shl nuw nsw i64 %index, 4
  %i.ht = shl i64 %index, 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.ht
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %wide.vec = load <4 x i64>, ptr %i.hw, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec352 = load <4 x i64>, ptr %i.hx, align 8
  %strided.vec353 = shufflevector <4 x i64> %wide.vec352, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.hy = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.hz = add <2 x i64> %strided.vec353, %vec.phi351 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.hz, %i.hy
  %i.ib = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph243.preheader354

.lr.ph243.preheader354:                           ; preds = %.lr.ph243.preheader, %middle.block
  %indvars.iv263.ph = phi i64 [ 0, %.lr.ph243.preheader ], [ %n.vec, %middle.block ]
  %.073241.ph = phi i64 [ %spec.store.select, %.lr.ph243.preheader ], [ %i.ib, %middle.block ]
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader354, %.lr.ph243
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %.lr.ph243 ], [ %indvars.iv263.ph, %.lr.ph243.preheader354 ] ; 2 uses
  %.073241 = phi i64 [ %i.if, %.lr.ph243 ], [ %.073241.ph, %.lr.ph243.preheader354 ]
  %.idx = shl nuw nsw i64 %indvars.iv263, 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.idx
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = add nsw i64 %i.ie, %.073241             ; 2 uses
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next264, %wide.trip.count267
  br i1 %exitcond268.not, label %ogg_stream_packetout.exit164.thread203, label %.lr.ph243, !llvm.loop !206

ogg_stream_packetout.exit164.thread203:           ; preds = %.lr.ph243, %bb.ac
  %.073.lcssa = phi i64 [ %spec.store.select, %bb.ac ], [ %i.if, %.lr.ph243 ]
  %i.ig = sext i32 %.180 to i64
  %i.ih = sub nsw i64 %.073.lcssa, %i.ig
  br label %.loopexit329

bb.ad:                                            ; preds = %.loopexit
  %i.ii = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.ij = load i64, ptr %i.bx, align 8
  %sext.i.i143 = shl i64 %i.ii, 32                ; 2 uses
  %i.ik = ashr exact i64 %sext.i.i143, 32         ; 3 uses
  %.not.i.i144 = icmp sgt i64 %i.ij, %i.ik
  br i1 %.not.i.i144, label %bb.ae, label %ogg_stream_packetout.exit164.thread

bb.ae:                                            ; preds = %bb.ad
  %i.il = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ik
  %i.in = load i32, ptr %i.im, align 4            ; 2 uses
  %i.io = and i32 %i.in, 1024
  %.not51.i.i146 = icmp eq i32 %i.io, 0
  br i1 %.not51.i.i146, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ip = add nsw i64 %i.ii, 1
  br label %.sink.split.i.i147

bb.ag:                                            ; preds = %bb.ae
  %i.iq = and i32 %i.in, 255                      ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 255
  br i1 %i.ir, label %.lr.ph.i.i157, label %._crit_edge.i.i150

.lr.ph.i.i157:                                    ; preds = %bb.ag, %.lr.ph.i.i157
  %indvars.iv.i.i158 = phi i64 [ %indvars.iv.next.i.i161, %.lr.ph.i.i157 ], [ %i.ik, %bb.ag ]
  %.04753.i.i160 = phi i32 [ %i.iv, %.lr.ph.i.i157 ], [ 255, %bb.ag ]
  %indvars.iv.next.i.i161 = add nsw i64 %indvars.iv.i.i158, 1 ; 3 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.il, i64 %indvars.iv.next.i.i161
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = and i32 %i.it, 255                      ; 2 uses
  %i.iv = add nuw nsw i32 %i.iu, %.04753.i.i160   ; 2 uses
  %i.iw = icmp eq i32 %i.iu, 255
  br i1 %i.iw, label %.lr.ph.i.i157, label %._crit_edge.i.i150.loopexit, !llvm.loop !192

._crit_edge.i.i150.loopexit:                      ; preds = %.lr.ph.i.i157
  %.pre271 = shl i64 %indvars.iv.next.i.i161, 32
  br label %._crit_edge.i.i150

._crit_edge.i.i150:                               ; preds = %._crit_edge.i.i150.loopexit, %bb.ag
  %.pre2.i155.pre-phi = phi i64 [ %.pre271, %._crit_edge.i.i150.loopexit ], [ %sext.i.i143, %bb.ag ]
  %.047.lcssa.i.i151 = phi i32 [ %i.iv, %._crit_edge.i.i150.loopexit ], [ %i.iq, %bb.ag ]
  %.pre.i154 = zext nneg i32 %.047.lcssa.i.i151 to i64
  %i.ix = load i64, ptr %i.bz, align 8
  %i.iy = add nsw i64 %i.ix, %.pre.i154
  store i64 %i.iy, ptr %i.bz, align 8
  %sext64.i.i156 = add i64 %.pre2.i155.pre-phi, 4294967296
  %i.iz = ashr exact i64 %sext64.i.i156, 32
  br label %.sink.split.i.i147

.sink.split.i.i147:                               ; preds = %._crit_edge.i.i150, %bb.af
  %.sink.i.i148 = phi i64 [ %i.iz, %._crit_edge.i.i150 ], [ %i.ip, %bb.af ]
  store i64 %.sink.i.i148, ptr %i.bw, align 8
  %i.ja = load i64, ptr %i.t, align 8
  %i.jb = add nsw i64 %i.ja, 1
  store i64 %i.jb, ptr %i.t, align 8
  br label %ogg_stream_packetout.exit164.thread

ogg_stream_packetout.exit164.thread:              ; preds = %bb.i, %.sink.split.i.i147, %bb.ad, %ogg_stream_packetout.exit, %ogg_stream_packetout.exit164
  %.not92 = icmp eq i32 %.082, 0
  br i1 %.not92, label %bb.ah, label %.loopexit329

bb.ah:                                            ; preds = %ogg_stream_packetout.exit164.thread
  %i.jc = call fastcc i64 @_get_next_page(ptr noundef %0, ptr noundef nonnull %3, i64 noundef -1)
  %i.jd = icmp slt i64 %i.jc, 0
  br i1 %i.jd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.je = call i64 @ov_pcm_total(ptr noundef %0, i32 noundef -1)
  br label %.loopexit329

bb.aj:                                            ; preds = %bb.ah
  %i.jf = load i32, ptr %i.a, align 8
  %i.jg = icmp sgt i32 %i.jf, 2
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.jg, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.jh = load i64, ptr %i.l, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.jj = load i32, ptr %i.ji, align 1
  %i.jk = sext i32 %i.jj to i64
  %.not93 = icmp eq i64 %i.jh, %i.jk
  br i1 %.not93, label %.thread303, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @vorbis_dsp_clear(ptr noundef nonnull %i.w)
  %i.jl = call i32 @vorbis_block_clear(ptr noundef nonnull %i.ca) ; 0 uses
  store i32 2, ptr %i.a, align 8
  %i.jm = load ptr, ptr %2, align 8               ; 2 uses
  %.not11.i = icmp eq ptr %i.jm, null
  br i1 %.not11.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.jm) #62
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jn = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not12.i = icmp eq ptr %i.jn, null
  br i1 %.not12.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef nonnull %i.jn) #62
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jo = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.jo, null
  br i1 %.not13.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.jo) #62
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %2, i8 0, i64 408, i1 false)
  %.pr.pre = load i32, ptr %i.a, align 8
  %i.jp = icmp slt i32 %.pr.pre, 3
  br i1 %i.jp, label %.thread, label %.thread303

.thread:                                          ; preds = %bb.aj, %bb.ar
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.jr = load i32, ptr %i.jq, align 1
  %i.js = sext i32 %i.jr to i64                   ; 4 uses
  store i64 %i.js, ptr %i.l, align 8
  %i.jt = load i32, ptr %i.cc, align 8            ; 3 uses
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.jv = load ptr, ptr %i.cb, align 8
  %wide.trip.count = zext nneg i32 %i.jt to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.at
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.at ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = icmp eq i64 %i.jx, %i.js
  br i1 %i.jy, label %._crit_edge.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.as, !llvm.loop !207

._crit_edge.loopexit:                             ; preds = %bb.as
  %i.jz = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread
  %.0.lcssa = phi i32 [ 0, %.thread ], [ %i.jz, %._crit_edge.loopexit ] ; 2 uses
  %.not94 = icmp eq i32 %.0.lcssa, %i.jt
  br i1 %.not94, label %._crit_edge.thread, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  store i32 %.0.lcssa, ptr %i.bv, align 8
  store i32 0, ptr %i.p, align 4
  store i32 0, ptr %i.q, align 8
  store i32 0, ptr %i.r, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.s, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@ov_pcm_seek:bb.a

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 23
  %i.cw = or disjoint i64 %i.cv, %i.cq            ; 2 uses
  %i.cx = icmp samesign ult i32 %.012.lcssa.i, 32
  br i1 %i.cx, label %oggpack_read.exit22.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 31
  %i.dc = and i64 %i.db, 2147483648
  %i.dd = or disjoint i64 %i.dc, %i.cw
  br label %oggpack_read.exit22.i

oggpack_read.exit22.i:                            ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i16.i = phi i64 [ %i.dd, %bb.l ], [ %i.ce, %bb.h ], [ %i.cw, %bb.k ], [ %i.cq, %bb.j ], [ %i.ck, %bb.i ]
  %i.de = and i64 %.0.i16.i, %i.bz                ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967295
  br i1 %i.df, label %vorbis_packet_blocksize.exit.thread, label %vorbis_packet_blocksize.exit

vorbis_packet_blocksize.exit:                     ; preds = %oggpack_read.exit22.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %sext.i = shl nuw i64 %i.de, 32
  %i.dh = ashr exact i64 %sext.i, 29
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = trunc i64 %i.dn to i32                  ; 7 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %vorbis_packet_blocksize.exit.thread, label %bb.m

vorbis_packet_blocksize.exit.thread:              ; preds = %._crit_edge.i, %bb.f, %oggpack_read.exit22.i, %oggpack_read.exit.i, %vorbis_packet_blocksize.exit
  br i1 %i.aq, label %.lr.ph.i.i116, label %.sink.split.i.i

.lr.ph.i.i116:                                    ; preds = %vorbis_packet_blocksize.exit.thread, %.lr.ph.i.i116
  %indvars.iv.i.i117 = phi i64 [ %indvars.iv.next.i.i120, %.lr.ph.i.i116 ], [ %i.ai, %vorbis_packet_blocksize.exit.thread ]
  %.04753.i.i119 = phi i32 [ %i.dt, %.lr.ph.i.i116 ], [ 255, %vorbis_packet_blocksize.exit.thread ]
  %indvars.iv.next.i.i120 = add nsw i64 %indvars.iv.i.i117, 1 ; 3 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i120
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = and i32 %i.dr, 255                      ; 2 uses
  %i.dt = add nuw nsw i32 %i.ds, %.04753.i.i119   ; 2 uses
  %i.du = icmp eq i32 %i.ds, 255
  br i1 %i.du, label %.lr.ph.i.i116, label %._crit_edge.i.i.loopexit, !llvm.loop !192

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph.i.i116
  %.pre208 = shl i64 %indvars.iv.next.i.i120, 32
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %vorbis_packet_blocksize.exit.thread, %._crit_edge.i.i.loopexit
  %.pre2.i.pre-phi = phi i64 [ %.pre208, %._crit_edge.i.i.loopexit ], [ %sext.i.i, %vorbis_packet_blocksize.exit.thread ]
  %.047.lcssa.i.i113 = phi i32 [ %i.dt, %._crit_edge.i.i.loopexit ], [ %i.an, %vorbis_packet_blocksize.exit.thread ]
  %.pre.i115 = zext nneg i32 %.047.lcssa.i.i113 to i64
  %i.dv = add nsw i64 %i.ba, %.pre.i115
  store i64 %i.dv, ptr %i.y, align 8
  %sext64.i.i = add i64 %.pre2.i.pre-phi, 4294967296
  %i.dw = ashr exact i64 %sext64.i.i, 32
  store i64 %i.dw, ptr %i.e, align 8
  %i.dx = add nsw i64 %i.bc, 1
  store i64 %i.dx, ptr %i.t, align 8
  br label %ogg_stream_packetout.exit

bb.m:                                             ; preds = %vorbis_packet_blocksize.exit
  %.not105 = icmp eq i32 %.087, 0
  %.pre205 = load i64, ptr %i.ae, align 8         ; 2 uses
  br i1 %.not105, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = add nuw nsw i32 %.087, %i.do
  %i.dz = lshr i32 %i.dy, 2
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = add nsw i64 %.pre205, %i.ea             ; 2 uses
  store i64 %i.eb, ptr %i.ae, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ec = phi i64 [ %i.eb, %bb.n ], [ %.pre205, %bb.m ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %.not.i123 = icmp eq ptr %i.ee, null
  br i1 %.not.i123, label %vorbis_info_blocksize.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = trunc i64 %i.eg to i32
  br label %vorbis_info_blocksize.exit

vorbis_info_blocksize.exit:                       ; preds = %bb.o, %bb.p
  %i.ei = phi i32 [ %i.eh, %bb.p ], [ -1, %bb.o ]
  %i.ej = add nsw i32 %i.ei, %i.do
  %i.ek = ashr i32 %i.ej, 2
  %i.el = sext i32 %i.ek to i64
  %i.em = add nsw i64 %i.ec, %i.el
  %.not106 = icmp slt i64 %i.em, %1
  br i1 %.not106, label %bb.q, label %.loopexit171

bb.q:                                             ; preds = %vorbis_info_blocksize.exit
  %i.en = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.eo = and i32 %i.en, 1024
  %.not51.i.i127 = icmp eq i32 %i.eo, 0
  br i1 %.not51.i.i127, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = add nsw i64 %i.ag, 1
  br label %ogg_stream_packetout.exit145

bb.s:                                             ; preds = %bb.q
  %i.eq = and i32 %i.en, 255                      ; 2 uses
  %i.er = icmp eq i32 %i.eq, 255
  br i1 %i.er, label %.lr.ph.i.i138, label %._crit_edge.i.i131

.lr.ph.i.i138:                                    ; preds = %bb.s, %.lr.ph.i.i138
  %indvars.iv.i.i139 = phi i64 [ %indvars.iv.next.i.i142, %.lr.ph.i.i138 ], [ %i.ai, %bb.s ]
  %.04753.i.i141 = phi i32 [ %i.ev, %.lr.ph.i.i138 ], [ 255, %bb.s ]
  %indvars.iv.next.i.i142 = add nsw i64 %indvars.iv.i.i139, 1 ; 3 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i142
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = and i32 %i.et, 255                      ; 2 uses
  %i.ev = add nuw nsw i32 %i.eu, %.04753.i.i141   ; 2 uses
  %i.ew = icmp eq i32 %i.eu, 255
  br i1 %i.ew, label %.lr.ph.i.i138, label %._crit_edge.i.i131.loopexit, !llvm.loop !192

._crit_edge.i.i131.loopexit:                      ; preds = %.lr.ph.i.i138
  %.pre209 = shl i64 %indvars.iv.next.i.i142, 32
  br label %._crit_edge.i.i131

._crit_edge.i.i131:                               ; preds = %._crit_edge.i.i131.loopexit, %bb.s
  %.pre2.i136.pre-phi = phi i64 [ %.pre209, %._crit_edge.i.i131.loopexit ], [ %sext.i.i, %bb.s ]
  %.047.lcssa.i.i132 = phi i32 [ %i.ev, %._crit_edge.i.i131.loopexit ], [ %i.eq, %bb.s ]
  %.pre.i135 = zext nneg i32 %.047.lcssa.i.i132 to i64
  %i.ex = add nsw i64 %i.ba, %.pre.i135
  store i64 %i.ex, ptr %i.y, align 8
  %sext64.i.i137 = add i64 %.pre2.i136.pre-phi, 4294967296
  %i.ey = ashr exact i64 %sext64.i.i137, 32
  br label %ogg_stream_packetout.exit145

ogg_stream_packetout.exit145:                     ; preds = %bb.r, %._crit_edge.i.i131
  %.sink.i.i129 = phi i64 [ %i.ey, %._crit_edge.i.i131 ], [ %i.ep, %bb.r ]
  store i64 %.sink.i.i129, ptr %i.e, align 8
  %i.ez = add nsw i64 %i.bc, 1
  store i64 %i.ez, ptr %i.t, align 8
  %i.fa = call i32 @vorbis_synthesis_trackonly(ptr noundef nonnull %i.i, ptr noundef nonnull %2) ; 0 uses
  %i.fb = call i32 @vorbis_synthesis_blockin(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) ; 0 uses
  %i.fc = icmp sgt i64 %i.bg, -1
  br i1 %i.fc, label %bb.t, label %ogg_stream_packetout.exit

bb.t:                                             ; preds = %ogg_stream_packetout.exit145
  %i.fd = load ptr, ptr %i.af, align 8            ; 10 uses
  %i.fe = load i32, ptr %i.m, align 8             ; 4 uses
  %i.ff = shl nsw i32 %i.fe, 1
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = sub nsw i64 %i.bg, %i.fi
  %spec.select = call i64 @llvm.smax.i64(i64 %i.fj, i64 0) ; 4 uses
  store i64 %spec.select, ptr %i.ae, align 8
  %i.fk = icmp sgt i32 %i.fe, 0
  br i1 %i.fk, label %.lr.ph189, label %ogg_stream_packetout.exit

.lr.ph189:                                        ; preds = %bb.t
  %wide.trip.count202 = zext nneg i32 %i.fe to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.fe, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph189
  %scevgep252 = getelementptr i8, ptr %i.fd, i64 8
  %i.fl = shl nuw nsw i64 %wide.trip.count202, 4
  %scevgep253 = getelementptr i8, ptr %i.fd, i64 %i.fl
  %bound0 = icmp ult ptr %i.ae, %scevgep253
  %bound1 = icmp ult ptr %scevgep252, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %wide.trip.count202, 3      ; 2 uses
  %i.fm = icmp eq i64 %n.mod.vf, 0
  %i.fn = select i1 %i.fm, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count202, %i.fn ; 2 uses
  %i.fo = insertelement <2 x i64> <i64 poison, i64 0>, i64 %spec.select, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.fo, %vector.ph ], [ %i.fv, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fw, %vector.body ]
  %i.fp = shl nuw nsw i64 %index, 4
  %i.fq = shl i64 %index, 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fp
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %wide.vec = load <4 x i64>, ptr %i.ft, align 8, !alias.scope !223
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec255 = load <4 x i64>, ptr %i.fu, align 8, !alias.scope !223
  %strided.vec256 = shufflevector <4 x i64> %wide.vec255, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fv = add <2 x i64> %vec.phi, %strided.vec    ; 2 uses
  %i.fw = add <2 x i64> %vec.phi254, %strided.vec256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fw, %i.fv
  %i.fy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.fy, ptr %i.ae, align 8, !alias.scope !227, !noalias !223
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph189, %middle.block
  %indvars.iv199.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph189 ], [ %n.vec, %middle.block ] ; 4 uses
  %.ph = phi i64 [ %spec.select, %vector.memcheck ], [ %spec.select, %.lr.ph189 ], [ %i.fy, %middle.block ] ; 2 uses
  %i.fz = sub nsw i64 %wide.trip.count202, %indvars.iv199.ph
  %xtraiter = and i64 %i.fz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv199.prol = phi i64 [ %indvars.iv.next200.prol, %scalar.ph.prol ], [ %indvars.iv199.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ga = phi i64 [ %i.ge, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.idx.prol = shl nuw nsw i64 %indvars.iv199.prol, 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx.prol
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = add nsw i64 %i.ga, %i.gd                ; 3 uses
  store i64 %i.ge, ptr %i.ae, align 8
  %indvars.iv.next200.prol = add nuw nsw i64 %indvars.iv199.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !229

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv199.unr = phi i64 [ %indvars.iv199.ph, %scalar.ph.preheader ], [ %indvars.iv.next200.prol, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ge, %scalar.ph.prol ]
  %i.gf = sub nsw i64 %indvars.iv199.ph, %wide.trip.count202
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %ogg_stream_packetout.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.3, %scalar.ph ], [ %indvars.iv199.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.gh = phi i64 [ %i.gx, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %.idx = shl nuw nsw i64 %indvars.iv199, 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = add nsw i64 %i.gh, %i.gk                ; 2 uses
  store i64 %i.gl, ptr %i.ae, align 8
  %indvars.iv.next200 = shl i64 %indvars.iv199, 4
  %i.gm = getelementptr i8, ptr %i.fd, i64 %indvars.iv.next200
  %i.gn = getelementptr i8, ptr %i.gm, i64 24
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = add nsw i64 %i.gl, %i.go                ; 2 uses
  store i64 %i.gp, ptr %i.ae, align 8
  %indvars.iv.next200.1 = shl i64 %indvars.iv199, 4
  %i.gq = getelementptr i8, ptr %i.fd, i64 %indvars.iv.next200.1
  %i.gr = getelementptr i8, ptr %i.gq, i64 40
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = add nsw i64 %i.gp, %i.gs                ; 2 uses
  store i64 %i.gt, ptr %i.ae, align 8
  %indvars.iv.next200.2 = shl i64 %indvars.iv199, 4
  %i.gu = getelementptr i8, ptr %i.fd, i64 %indvars.iv.next200.2
  %i.gv = getelementptr i8, ptr %i.gu, i64 56
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = add nsw i64 %i.gt, %i.gw                ; 2 uses
  store i64 %i.gx, ptr %i.ae, align 8
  %indvars.iv.next200.3 = add nuw nsw i64 %indvars.iv199, 4 ; 2 uses
  %exitcond203.not.3 = icmp eq i64 %indvars.iv.next200.3, %wide.trip.count202
  br i1 %exitcond203.not.3, label %ogg_stream_packetout.exit, label %scalar.ph, !llvm.loop !230

bb.u:                                             ; preds = %bb.d
  %i.gy = add nsw i64 %i.ag, 1
  store i64 %i.gy, ptr %i.e, align 8
  %i.gz = load i64, ptr %i.t, align 8
  %i.ha = add nsw i64 %i.gz, 1
  store i64 %i.ha, ptr %i.t, align 8
  br label %.loopexit171

bb.v:                                             ; preds = %bb.c
  %i.hb = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef -1)
  %i.hc = icmp slt i64 %i.hb, 0
  br i1 %i.hc, label %.loopexit171, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hd = load i64, ptr %i.g, align 8
  %i.he = load ptr, ptr %3, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 14 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 1
  %i.hh = sext i32 %i.hg to i64
  %.not103 = icmp eq i64 %i.hd, %i.hh
  br i1 %.not103, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.w
  call void @vorbis_dsp_clear(ptr noundef nonnull %i.h)
  %i.hi = call i32 @vorbis_block_clear(ptr noundef nonnull %i.i) ; 0 uses
  store i32 2, ptr %i.j, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.pre = load i32, ptr %i.j, align 8
  %i.hj = icmp slt i32 %.pre, 3
  br i1 %i.hj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.thread, %bb.x
  %i.hk = load i32, ptr %i.hf, align 1
  %i.hl = sext i32 %i.hk to i64                   ; 3 uses
  store i64 %i.hl, ptr %i.g, align 8
  %i.hm = load i32, ptr %i.l, align 8             ; 3 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y
  %i.ho = load ptr, ptr %i.k, align 8
  %wide.trip.count = zext nneg i32 %i.hm to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = icmp eq i64 %i.hq, %i.hl
  br i1 %i.hr, label %._crit_edge.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ogg_stream_packetout.exit.thread164, label %bb.z, !llvm.loop !231

._crit_edge.loopexit:                             ; preds = %bb.z
  %i.hs = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %.083.lcssa = phi i32 [ 0, %bb.y ], [ %i.hs, %._crit_edge.loopexit ] ; 2 uses
  %i.ht = icmp eq i32 %.083.lcssa, %i.hm
  br i1 %i.ht, label %ogg_stream_packetout.exit.thread164, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  store i32 %.083.lcssa, ptr %i.m, align 8
  store i32 0, ptr %i.p, align 4
  store i32 0, ptr %i.q, align 8
  store i32 0, ptr %i.r, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.s, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 %i.hl, ptr %i.u, align 8
  store i32 3, ptr %i.j, align 8
  %i.hu = call fastcc i32 @_make_decode_ready(ptr noundef nonnull %0) ; 2 uses
  %.not104 = icmp eq i32 %i.hu, 0
  br i1 %.not104, label %bb.ac, label %ogg_stream_packetout.exit.thread164

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.289 = phi i32 [ 0, %bb.ab ], [ %.087, %bb.x ]
  %i.hv = call i32 @ogg_stream_pagein(ptr noundef nonnull %i.d, ptr noundef nonnull %3) ; 0 uses
  br label %ogg_stream_packetout.exit

ogg_stream_packetout.exit.thread164:              ; preds = %bb.ab, %._crit_edge, %bb.aa
  %.4.ph = phi i32 [ -137, %bb.aa ], [ -137, %._crit_edge ], [ %i.hu, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  br label %.loopexit

ogg_stream_packetout.exit:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.t, %.sink.split.i.i, %bb.ac, %ogg_stream_packetout.exit145
  %.491 = phi i32 [ %i.do, %ogg_stream_packetout.exit145 ], [ %.289, %bb.ac ], [ %i.do, %bb.t ], [ %.087, %.sink.split.i.i ], [ %i.do, %scalar.ph ], [ %i.do, %scalar.ph.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  br label %bb.c

.loopexit171:                                     ; preds = %bb.v, %vorbis_info_blocksize.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i8 0, i64 16, i1 false)
  %i.hx = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.hy = icmp slt i64 %i.hx, %1
  br i1 %i.hy, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %.loopexit171
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph191, %bb.ah
  %i.ib = phi i64 [ %i.hx, %.lr.ph191 ], [ %i.it, %bb.ah ] ; 2 uses
  %i.ic = sub nsw i64 %1, %i.ib                   ; 2 uses
  %i.id = load i32, ptr %i.hz, align 8            ; 6 uses
  %i.ie = icmp sgt i32 %i.id, -1
  br i1 %i.ie, label %vorbis_synthesis_pcmout.exit, label %._crit_edge.i148

vorbis_synthesis_pcmout.exit:                     ; preds = %bb.ad
  %i.if = load i32, ptr %i.ia, align 4            ; 2 uses
  %i.ig = icmp slt i32 %i.id, %i.if
  %i.ih = sub nsw i32 %i.if, %i.id
  %spec.select168 = select i1 %i.ig, i32 %i.ih, i32 0
  %i.ii = sext i32 %spec.select168 to i64
  %i.ij = call i64 @llvm.smin.i64(i64 %i.ic, i64 %i.ii) ; 4 uses
end_hunk_1
begin_hunk_2_@_fetch_and_process_packet:bb.a
  br i1 %i.ag, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #62
  %i.ah = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ai = load i64, ptr %i.d, align 8
  %sext.i.i49 = shl i64 %i.ah, 32
  %i.aj = ashr exact i64 %sext.i.i49, 32          ; 2 uses
  %.not.i.i50 = icmp sgt i64 %i.ai, %i.aj
  br i1 %.not.i.i50, label %.lr.ph, label %.thread21

.thread21.loopexit:                               ; preds = %bb.l
  %.pr.pre = load i32, ptr %i.a, align 8
  br label %.thread21

.thread21:                                        ; preds = %.thread21.loopexit, %.preheader
  %.pr = phi i32 [ %.pr.pre, %.thread21.loopexit ], [ 4, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  br label %bb.m

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.ak = phi i64 [ %i.dz, %bb.l ], [ %i.aj, %.preheader ] ; 2 uses
  %i.al = phi i64 [ %i.dx, %bb.l ], [ %i.ah, %.preheader ] ; 2 uses
  %i.am = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load i32, ptr %i.an, align 4            ; 4 uses
  %i.ap = and i32 %i.ao, 1024
  %.not51.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not51.i.i, label %bb.c, label %ogg_stream_packetout.exit.thread3

ogg_stream_packetout.exit.thread3:                ; preds = %.lr.ph
  %i.aq = add nsw i64 %i.al, 1
  store i64 %i.aq, ptr %i.c, align 8
  %i.ar = load i64, ptr %i.i, align 8
  %i.as = add nsw i64 %i.ar, 1
  store i64 %i.as, ptr %i.i, align 8
  br label %.thread18

bb.c:                                             ; preds = %.lr.ph
  %i.at = and i32 %i.ao, 255                      ; 2 uses
  %i.au = and i32 %i.ao, 512                      ; 2 uses
  %i.av = and i32 %i.ao, 256
  %i.aw = icmp eq i32 %i.at, 255
  br i1 %i.aw, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %i.ak, %bb.c ]
  %.04654.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.au, %bb.c ]
  %.04753.i.i = phi i32 [ %i.bb, %.lr.ph.i.i ], [ 255, %bb.c ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv.next.i.i
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = and i32 %i.ay, 255                      ; 2 uses
  %i.ba = and i32 %i.ay, 512
  %.not52.i.i = icmp eq i32 %i.ba, 0
  %spec.select.i.i = select i1 %.not52.i.i, i32 %.04654.i.i, i32 512 ; 2 uses
  %i.bb = add nuw nsw i32 %i.az, %.04753.i.i      ; 2 uses
  %i.bc = icmp eq i32 %i.az, 255
  br i1 %i.bc, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !192

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.c
  %.047.lcssa.i.i = phi i32 [ %i.at, %bb.c ], [ %i.bb, %.lr.ph.i.i ]
  %.046.lcssa.i.i = phi i32 [ %i.au, %bb.c ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %.045.lcssa.in.i.i = phi i64 [ %i.al, %bb.c ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %i.bd = zext nneg i32 %.046.lcssa.i.i to i64
  store i64 %i.bd, ptr %i.f, align 8
  %i.be = zext nneg i32 %i.av to i64
  store i64 %i.be, ptr %i.g, align 8
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = load i64, ptr %i.h, align 8             ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg
  store ptr %i.bh, ptr %3, align 8
  %i.bi = load i64, ptr %i.i, align 8             ; 2 uses
  store i64 %i.bi, ptr %i.j, align 8
  %i.bj = load ptr, ptr %i.k, align 8
  %sext63.i.i = shl i64 %.045.lcssa.in.i.i, 32    ; 2 uses
  %i.bk = ashr exact i64 %sext63.i.i, 29
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8            ; 5 uses
  store i64 %i.bm, ptr %i.l, align 8
  %i.bn = zext nneg i32 %.047.lcssa.i.i to i64    ; 3 uses
  store i64 %i.bn, ptr %i.m, align 8
  %i.bo = add nsw i64 %i.bg, %i.bn
  store i64 %i.bo, ptr %i.h, align 8
  %sext64.i.i = add i64 %sext63.i.i, 4294967296
  %i.bp = ashr exact i64 %sext64.i.i, 32
  store i64 %i.bp, ptr %i.c, align 8
  %i.bq = add nsw i64 %i.bi, 1
  store i64 %i.bq, ptr %i.i, align 8
  %i.br = call i32 @vorbis_synthesis(ptr noundef nonnull %i.n, ptr noundef nonnull %3)
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.d, label %bb.l

bb.d:                                             ; preds = %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.e, label %vorbis_synthesis_pcmout.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.bw = load i32, ptr %i.bv, align 4
  %.not38 = icmp slt i32 %i.bt, %i.bw
  br i1 %.not38, label %.thread18, label %vorbis_synthesis_pcmout.exit.thread

vorbis_synthesis_pcmout.exit.thread:              ; preds = %bb.d, %bb.e
  %i.bx = call i32 @vorbis_synthesis_blockin(ptr noundef nonnull %i.r, ptr noundef nonnull %i.n) ; 0 uses
  %i.by = load i32, ptr %i.bs, align 8            ; 5 uses
  %i.bz = icmp sgt i32 %i.by, -1                  ; 2 uses
  br i1 %i.bz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %vorbis_synthesis_pcmout.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.cb = load i32, ptr %i.ca, align 4            ; 2 uses
  %i.cc = icmp slt i32 %i.by, %i.cb
  %i.cd = sub nsw i32 %i.cb, %i.by
  %spec.select = select i1 %i.cc, i32 %i.cd, i32 0
  %i.ce = sitofp i32 %spec.select to double
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %vorbis_synthesis_pcmout.exit.thread
  %.017.i124 = phi double [ 0.000000e+00, %vorbis_synthesis_pcmout.exit.thread ], [ %i.ce, %bb.f ]
  %i.cf = shl nuw nsw i64 %i.bn, 3
  %i.cg = uitofp nneg i64 %i.cf to double
  %i.ch = load <2 x double>, ptr %i.p, align 8
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %.017.i124, i64 1
  %i.ck = fadd <2 x double> %i.ch, %i.cj
  store <2 x double> %i.ck, ptr %i.p, align 8
  %.not112 = icmp ne i64 %i.bm, -1
  %.not113 = icmp eq i32 %.046.lcssa.i.i, 0
  %or.cond123 = select i1 %.not112, i1 %.not113, i1 false
  br i1 %or.cond123, label %bb.h, label %.thread18

bb.h:                                             ; preds = %bb.g
  %i.cl = load i32, ptr %i.s, align 8
  %.not114 = icmp eq i32 %i.cl, 0
  br i1 %.not114, label %.thread14, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = load i32, ptr %i.x, align 8             ; 4 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.j, label %.thread14

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = shl nuw nsw i32 %i.cm, 1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = sub nsw i64 %i.bm, %i.ct
  br label %.thread14

.thread14:                                        ; preds = %bb.h, %bb.j, %bb.i
  %i.cv = phi i32 [ %i.cm, %bb.j ], [ %i.cm, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %.095 = phi i64 [ %i.cu, %bb.j ], [ %i.bm, %bb.i ], [ %i.bm, %bb.h ]
  %spec.store.select = call i64 @llvm.smax.i64(i64 %.095, i64 0)
  br i1 %i.bz, label %bb.k, label %vorbis_synthesis_pcmout.exit127

bb.k:                                             ; preds = %.thread14
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = icmp slt i32 %i.by, %i.cx
  %i.cz = sub nsw i32 %i.cx, %i.by
  %spec.select37 = select i1 %i.cy, i32 %i.cz, i32 0
  %i.da = sext i32 %spec.select37 to i64
  br label %vorbis_synthesis_pcmout.exit127

vorbis_synthesis_pcmout.exit127:                  ; preds = %bb.k, %.thread14
  %.017.i126 = phi i64 [ 0, %.thread14 ], [ %i.da, %bb.k ]
  %i.db = sub nsw i64 %spec.store.select, %.017.i126 ; 3 uses
  %i.dc = icmp sgt i32 %i.cv, 0
  br i1 %i.dc, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %vorbis_synthesis_pcmout.exit127
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %wide.trip.count75 = zext nneg i32 %i.cv to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.cv, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59
  %n.mod.vf = and i64 %wide.trip.count75, 3       ; 2 uses
  %i.df = icmp eq i64 %n.mod.vf, 0
  %i.dg = select i1 %i.df, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count75, %i.dg  ; 2 uses
  %i.dh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.db, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.dh, %vector.ph ], [ %i.do, %vector.body ]
  %vec.phi12 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %i.di = shl nuw nsw i64 %index, 4
  %i.dj = shl i64 %index, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %wide.vec = load <4 x i64>, ptr %i.dm, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec13 = load <4 x i64>, ptr %i.dn, align 8
  %strided.vec14 = shufflevector <4 x i64> %wide.vec13, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.do = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.dp = add <2 x i64> %strided.vec14, %vec.phi12 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dp, %i.do
  %i.dr = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph59, %middle.block
  %indvars.iv72.ph = phi i64 [ 0, %.lr.ph59 ], [ %n.vec, %middle.block ]
  %.19658.ph = phi i64 [ %i.db, %.lr.ph59 ], [ %i.dr, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %scalar.ph ], [ %indvars.iv72.ph, %scalar.ph.preheader ] ; 2 uses
  %.19658 = phi i64 [ %i.dv, %scalar.ph ], [ %.19658.ph, %scalar.ph.preheader ]
  %.idx = shl nuw nsw i64 %indvars.iv72, 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = add nsw i64 %i.du, %.19658              ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %._crit_edge60, label %scalar.ph, !llvm.loop !288

._crit_edge60:                                    ; preds = %scalar.ph, %vorbis_synthesis_pcmout.exit127
  %.196.lcssa = phi i64 [ %i.db, %vorbis_synthesis_pcmout.exit127 ], [ %i.dv, %scalar.ph ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.196.lcssa, ptr %i.dw, align 8
  br label %.thread18

.thread18:                                        ; preds = %bb.e, %bb.g, %ogg_stream_packetout.exit.thread3, %._crit_edge60
  %.3.ph = phi i32 [ -129, %bb.e ], [ 1, %._crit_edge60 ], [ -3, %ogg_stream_packetout.exit.thread3 ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  br label %.thread31

bb.l:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #62
  %i.dx = load i64, ptr %i.c, align 8             ; 2 uses
  %i.dy = load i64, ptr %i.d, align 8
  %sext.i.i = shl i64 %i.dx, 32
  %i.dz = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %.not.i.i = icmp sgt i64 %i.dy, %i.dz
  br i1 %.not.i.i, label %.lr.ph, label %.thread21.loopexit

bb.m:                                             ; preds = %.thread21, %bb.b
  %i.ea = phi i32 [ %.pr, %.thread21 ], [ %i.af, %bb.b ]
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.n, label %.thread25.thread.thread

bb.n:                                             ; preds = %bb.m
  %i.ec = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef -1)
  %i.ed = and i64 %i.ec, 2147483648
  %.not115 = icmp eq i64 %i.ed, 0
  br i1 %.not115, label %bb.o, label %.thread31

bb.o:                                             ; preds = %bb.n
  %i.ee = load i64, ptr %i.o, align 8
  %i.ef = shl nsw i64 %i.ee, 3
  %i.eg = sitofp i64 %i.ef to double
  %i.eh = load double, ptr %i.p, align 8
  %i.ei = fadd double %i.eh, %i.eg
  store double %i.ei, ptr %i.p, align 8
  %i.ej = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 4
  br i1 %i.ek, label %bb.p, label %.thread25.thread

bb.p:                                             ; preds = %bb.o
  %i.el = load i64, ptr %i.q, align 8
  %i.em = load ptr, ptr %2, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 14
  %i.eo = load i32, ptr %i.en, align 1
  %i.ep = sext i32 %i.eo to i64
  %.not116 = icmp eq i64 %i.el, %i.ep
  br i1 %.not116, label %.thread25.thread102, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not117, label %.thread31, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @vorbis_dsp_clear(ptr noundef nonnull %i.r)
  %i.eq = call i32 @vorbis_block_clear(ptr noundef nonnull %i.n) ; 0 uses
  store i32 2, ptr %i.a, align 8
  %i.er = load i32, ptr %i.s, align 8
  %.not118 = icmp eq i32 %i.er, 0
  br i1 %.not118, label %bb.s, label %.thread25.thread.thread.thread

bb.s:                                             ; preds = %bb.r
  %i.es = load ptr, ptr %i.t, align 8
  call void @vorbis_info_clear(ptr noundef %i.es)
  %i.et = load ptr, ptr %i.u, align 8             ; 7 uses
  %.not.i = icmp eq ptr %i.et, null
  br i1 %.not.i, label %.thread25, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8            ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.u
  %i.ex = phi i32 [ %i.fb, %bb.u ], [ %i.ev, %.preheader.i ]
  %.023.i = phi i64 [ %i.fc, %bb.u ], [ 0, %.preheader.i ] ; 2 uses
  %i.ey = load ptr, ptr %i.et, align 8
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.023.i
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %.not22.i = icmp eq ptr %i.fa, null
  br i1 %.not22.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull %i.fa) #62
  %.pre.i = load i32, ptr %i.eu, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %i.fb = phi i32 [ %i.ex, %.lr.ph.i ], [ %.pre.i, %bb.t ] ; 2 uses
  %i.fc = add nuw nsw i64 %.023.i, 1              ; 2 uses
  %i.fd = sext i32 %i.fb to i64
  %i.fe = icmp slt i64 %i.fc, %i.fd
  br i1 %i.fe, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %bb.u, %.preheader.i
  %i.ff = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not19.i = icmp eq ptr %i.ff, null
  br i1 %.not19.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef nonnull %i.ff) #62
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.fh, null
  br i1 %.not20.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef nonnull %i.fh) #62
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not21.i = icmp eq ptr %i.fj, null
  br i1 %.not21.i, label %.thread25, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.fj) #62
  br label %.thread25

.thread25:                                        ; preds = %bb.z, %bb.y, %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i8 0, i64 32, i1 false)
  %.pr34.pre = load i32, ptr %i.a, align 8        ; 2 uses
  %.not119 = icmp eq i32 %.pr34.pre, 4
  br i1 %.not119, label %.thread25.thread102, label %.thread25.thread

.thread25.thread:                                 ; preds = %bb.o, %.thread25
  %i.fk = phi i32 [ %.pr34.pre, %.thread25 ], [ %i.ej, %bb.o ]
  %i.fl = icmp slt i32 %i.fk, 3
  br i1 %i.fl, label %.thread25.thread.thread, label %bb.ae

.thread25.thread.thread:                          ; preds = %bb.m, %.thread25.thread
  %.pre = load i32, ptr %i.s, align 8
  %i.fm = icmp eq i32 %.pre, 0
  br i1 %i.fm, label %bb.ad, label %.thread25.thread.thread.thread

.thread25.thread.thread.thread:                   ; preds = %bb.r, %.thread25.thread.thread
  %i.fn = load ptr, ptr %2, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 14
  %i.fp = load i32, ptr %i.fo, align 1
  %i.fq = sext i32 %i.fp to i64                   ; 3 uses
  store i64 %i.fq, ptr %i.q, align 8
  %i.fr = load i32, ptr %i.w, align 8             ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.thread25.thread.thread.thread
  %i.ft = load ptr, ptr %i.v, align 8
  %wide.trip.count = zext nneg i32 %i.fr to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph52, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = icmp eq i64 %i.fv, %i.fq
  br i1 %i.fw, label %._crit_edge.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread31, label %bb.aa, !llvm.loop !289

._crit_edge.loopexit:                             ; preds = %bb.aa
  %i.fx = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge
end_hunk_2
