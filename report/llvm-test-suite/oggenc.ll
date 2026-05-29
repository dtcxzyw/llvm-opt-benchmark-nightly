inline.NumInlined: 678
inline.NumDeleted: 90
begin_hunk_0_@ov_pcm_seek:bb.a
  %vec.phi250 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fy, %vector.body ]
  %i.fp = shl nuw nsw i64 %index, 4
  %i.fq = shl i64 %index, 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fp
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fv = load <3 x i64>, ptr %i.ft, align 8, !alias.scope !223
  %strided.vec = shufflevector <3 x i64> %i.fv, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fw = load <3 x i64>, ptr %i.fu, align 8, !alias.scope !223
  %strided.vec252 = shufflevector <3 x i64> %i.fw, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fx = add <2 x i64> %vec.phi, %strided.vec    ; 2 uses
  %i.fy = add <2 x i64> %vec.phi250, %strided.vec252 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fy, %i.fx
  %i.ga = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.ga, ptr %i.ae, align 8, !alias.scope !227, !noalias !223
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph189, %middle.block
  %indvars.iv199.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph189 ], [ %n.vec, %middle.block ] ; 4 uses
  %.ph = phi i64 [ %spec.select, %vector.memcheck ], [ %spec.select, %.lr.ph189 ], [ %i.ga, %middle.block ] ; 2 uses
  %i.gb = sub nsw i64 %wide.trip.count202, %indvars.iv199.ph
  %xtraiter = and i64 %i.gb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv199.prol = phi i64 [ %indvars.iv.next200.prol, %scalar.ph.prol ], [ %indvars.iv199.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gc = phi i64 [ %i.gg, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.idx.prol = shl nuw nsw i64 %indvars.iv199.prol, 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx.prol
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = add nsw i64 %i.gc, %i.gf                ; 3 uses
  store i64 %i.gg, ptr %i.ae, align 8
  %indvars.iv.next200.prol = add nuw nsw i64 %indvars.iv199.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !229

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv199.unr = phi i64 [ %indvars.iv199.ph, %scalar.ph.preheader ], [ %indvars.iv.next200.prol, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.gg, %scalar.ph.prol ]
  %i.gh = sub nsw i64 %indvars.iv199.ph, %wide.trip.count202
  %i.gi = icmp ugt i64 %i.gh, -4
  br i1 %i.gi, label %ogg_stream_packetout.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.3, %scalar.ph ], [ %indvars.iv199.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.gj = phi i64 [ %i.gz, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %.idx = shl nuw nsw i64 %indvars.iv199, 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = add nsw i64 %i.gj, %i.gm                ; 2 uses
  store i64 %i.gn, ptr %i.ae, align 8
  %indvars.iv.next200 = shl i64 %indvars.iv199, 4
  %i.go = getelementptr i8, ptr %i.fd, i64 %indvars.iv.next200
  %i.gp = getelementptr i8, ptr %i.go, i64 24
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = add nsw i64 %i.gn, %i.gq                ; 2 uses
  store i64 %i.gr, ptr %i.ae, align 8
  %indvars.iv.next200.1 = shl i64 %indvars.iv199, 4
  %i.gs = getelementptr i8, ptr %i.fd, i64 %indvars.iv.next200.1
  %i.gt = getelementptr i8, ptr %i.gs, i64 40
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add nsw i64 %i.gr, %i.gu                ; 2 uses
  store i64 %i.gv, ptr %i.ae, align 8
  %indvars.iv.next200.2 = shl i64 %indvars.iv199, 4
  %i.gw = getelementptr i8, ptr %i.fd, i64 %indvars.iv.next200.2
  %i.gx = getelementptr i8, ptr %i.gw, i64 56
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = add nsw i64 %i.gv, %i.gy                ; 2 uses
  store i64 %i.gz, ptr %i.ae, align 8
  %indvars.iv.next200.3 = add nuw nsw i64 %indvars.iv199, 4 ; 2 uses
  %exitcond203.not.3 = icmp eq i64 %indvars.iv.next200.3, %wide.trip.count202
  br i1 %exitcond203.not.3, label %ogg_stream_packetout.exit, label %scalar.ph, !llvm.loop !230

bb.u:                                             ; preds = %bb.d
  %i.ha = add nsw i64 %i.ag, 1
  store i64 %i.ha, ptr %i.e, align 8
  %i.hb = load i64, ptr %i.t, align 8
  %i.hc = add nsw i64 %i.hb, 1
  store i64 %i.hc, ptr %i.t, align 8
  br label %.loopexit171

bb.v:                                             ; preds = %bb.c
  %i.hd = call fastcc i64 @_get_next_page(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef -1)
  %i.he = icmp slt i64 %i.hd, 0
  br i1 %i.he, label %.loopexit171, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hf = load i64, ptr %i.g, align 8
  %i.hg = load ptr, ptr %3, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 14 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 1
  %i.hj = sext i32 %i.hi to i64
  %.not103 = icmp eq i64 %i.hf, %i.hj
  br i1 %.not103, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.w
  call void @vorbis_dsp_clear(ptr noundef nonnull %i.h)
  %i.hk = call i32 @vorbis_block_clear(ptr noundef nonnull %i.i) ; 0 uses
  store i32 2, ptr %i.j, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.pre = load i32, ptr %i.j, align 8
  %i.hl = icmp slt i32 %.pre, 3
  br i1 %i.hl, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.thread, %bb.x
  %i.hm = load i32, ptr %i.hh, align 1
  %i.hn = sext i32 %i.hm to i64                   ; 3 uses
  store i64 %i.hn, ptr %i.g, align 8
  %i.ho = load i32, ptr %i.l, align 8             ; 3 uses
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y
  %i.hq = load ptr, ptr %i.k, align 8
  %wide.trip.count = zext nneg i32 %i.ho to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = icmp eq i64 %i.hs, %i.hn
  br i1 %i.ht, label %._crit_edge.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ogg_stream_packetout.exit.thread164, label %bb.z, !llvm.loop !231

._crit_edge.loopexit:                             ; preds = %bb.z
  %i.hu = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %.083.lcssa = phi i32 [ 0, %bb.y ], [ %i.hu, %._crit_edge.loopexit ] ; 2 uses
  %i.hv = icmp eq i32 %.083.lcssa, %i.ho
  br i1 %i.hv, label %ogg_stream_packetout.exit.thread164, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  store i32 %.083.lcssa, ptr %i.m, align 8
  store i32 0, ptr %i.p, align 4
  store i32 0, ptr %i.q, align 8
  store i32 0, ptr %i.r, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.s, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 %i.hn, ptr %i.u, align 8
  store i32 3, ptr %i.j, align 8
  %i.hw = call fastcc i32 @_make_decode_ready(ptr noundef nonnull %0) ; 2 uses
  %.not104 = icmp eq i32 %i.hw, 0
  br i1 %.not104, label %bb.ac, label %ogg_stream_packetout.exit.thread164

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.289 = phi i32 [ 0, %bb.ab ], [ %.087, %bb.x ]
  %i.hx = call i32 @ogg_stream_pagein(ptr noundef nonnull %i.d, ptr noundef nonnull %3) ; 0 uses
  br label %ogg_stream_packetout.exit

ogg_stream_packetout.exit.thread164:              ; preds = %bb.ab, %._crit_edge, %bb.aa
  %.4.ph = phi i32 [ -137, %bb.aa ], [ -137, %._crit_edge ], [ %i.hw, %bb.ab ]
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
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i8 0, i64 16, i1 false)
  %i.hz = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ia = icmp slt i64 %i.hz, %1
  br i1 %i.ia, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %.loopexit171
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph191, %bb.ai
  %i.id = phi i64 [ %i.hz, %.lr.ph191 ], [ %i.it, %bb.ai ] ; 2 uses
  %i.ie = sub nsw i64 %1, %i.id                   ; 2 uses
  %i.if = load i32, ptr %i.ib, align 8            ; 5 uses
  %i.ig = icmp sgt i32 %i.if, -1
  br i1 %i.ig, label %bb.ae, label %vorbis_synthesis_pcmout.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ih = load i32, ptr %i.ic, align 4            ; 2 uses
  %i.ii = icmp slt i32 %i.if, %i.ih
  %i.ij = sub nsw i32 %i.ih, %i.if
  %spec.select168 = select i1 %i.ii, i32 %i.ij, i32 0
  %i.ik = sext i32 %spec.select168 to i64
  br label %vorbis_synthesis_pcmout.exit

vorbis_synthesis_pcmout.exit:                     ; preds = %bb.ae, %bb.ad
  %.017.i = phi i64 [ 0, %bb.ad ], [ %i.ik, %bb.ae ] ; 2 uses
  %spec.select107 = call i64 @llvm.smin.i64(i64 %i.ie, i64 %.017.i) ; 2 uses
  %4 = trunc i64 %spec.select107 to i32           ; 2 uses
  %.not.i146 = icmp eq i32 %4, 0
  br i1 %.not.i146, label %._crit_edge.i148, label %bb.af

bb.af:                                            ; preds = %vorbis_synthesis_pcmout.exit
  %i.il = add nsw i32 %i.if, %4                   ; 2 uses
  %i.im = load i32, ptr %i.ic, align 4
  %i.in = icmp sgt i32 %i.il, %i.im
  br i1 %i.in, label %vorbis_synthesis_read.exit, label %._crit_edge.i148

._crit_edge.i148:                                 ; preds = %bb.af, %vorbis_synthesis_pcmout.exit
  %.pre-phi.i = phi i32 [ %i.il, %bb.af ], [ %i.if, %vorbis_synthesis_pcmout.exit ]
  store i32 %.pre-phi.i, ptr %i.ib, align 8
  br label %vorbis_synthesis_read.exit

vorbis_synthesis_read.exit:                       ; preds = %bb.af, %._crit_edge.i148
  %i.io = add nsw i64 %spec.select107, %i.id      ; 2 uses
  store i64 %i.io, ptr %i.ae, align 8
  %i.ip = icmp slt i64 %.017.i, %i.ie
  br i1 %i.ip, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %vorbis_synthesis_read.exit
  %i.iq = call fastcc i32 @_fetch_and_process_packet(ptr noundef nonnull %0, i32 noundef 1)
  %i.ir = icmp slt i32 %i.iq, 1
  br i1 %i.ir, label %bb.ah, label %._crit_edge206

._crit_edge206:                                   ; preds = %bb.ag
  %.pre207 = load i64, ptr %i.ae, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.is = call i64 @ov_pcm_total(ptr noundef nonnull %0, i32 noundef -1) ; 2 uses
  store i64 %i.is, ptr %i.ae, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge206, %bb.ah, %vorbis_synthesis_read.exit
  %i.it = phi i64 [ %.pre207, %._crit_edge206 ], [ %i.is, %bb.ah ], [ %i.io, %vorbis_synthesis_read.exit ] ; 2 uses
  %i.iu = icmp slt i64 %i.it, %1
  br i1 %i.iu, label %bb.ad, label %.loopexit, !llvm.loop !232

.loopexit:                                        ; preds = %bb.ai, %.loopexit171, %ogg_stream_packetout.exit.thread164, %bb.b, %bb.a
  %.5 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ], [ %.4.ph, %ogg_stream_packetout.exit.thread164 ], [ 0, %.loopexit171 ], [ 0, %bb.ai ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -137, 1) i32 @_make_decode_ready(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 3
  br i1 %i.c, label %vorbis_synthesis_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 3
  br i1 %.not, label %bb.c, label %vorbis_synthesis_init.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %.not14 = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %.not14, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i32, ptr %i.i, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.k
  %i.m = tail call fastcc i32 @_vds_shared_init(ptr noundef nonnull %i.f, ptr noundef %i.l, i32 noundef 0)
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %vorbis_synthesis_init.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.not19.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not19.i.i
  br i1 %or.cond.i.i, label %vorbis_synthesis_init.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not20.i.i = icmp eq ptr %i.s, null
  br i1 %.not20.i.i, label %vorbis_synthesis_init.exit.thread, label %vorbis_synthesis_init.exit.thread.sink.split

bb.g:                                             ; preds = %bb.c
  %i.t = tail call fastcc i32 @_vds_shared_init(ptr noundef nonnull %i.f, ptr noundef %i.h, i32 noundef 0)
  %.not.i17 = icmp eq i32 %i.t, 0
  br i1 %.not.i17, label %bb.h, label %vorbis_synthesis_init.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.x, null
  %.not19.i.i20 = icmp eq ptr %i.v, null
  %or.cond.i.i21 = select i1 %.not.i.i19, i1 true, i1 %.not19.i.i20
  br i1 %or.cond.i.i21, label %vorbis_synthesis_init.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not20.i.i22 = icmp eq ptr %i.z, null
  br i1 %.not20.i.i22, label %vorbis_synthesis_init.exit.thread, label %vorbis_synthesis_init.exit.thread.sink.split

vorbis_synthesis_init.exit.thread.sink.split:     ; preds = %bb.i, %bb.f
  %.sink48 = phi ptr [ %i.s, %bb.f ], [ %i.z, %bb.i ] ; 2 uses
  %.sink36 = phi ptr [ %i.q, %bb.f ], [ %i.x, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink48, i64 5808
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink48, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add nsw i32 %i.ab, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = ashr i64 %i.ad, %i.af                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = zext nneg i32 %i.ab to i64
  %i.aj = ashr i64 %i.ag, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i32 -1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 -1, i64 16, i1 false)
  store i32 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink36, i64 296
  store i64 -1, ptr %i.ap, align 8
  br label %vorbis_synthesis_init.exit.thread

vorbis_synthesis_init.exit.thread:                ; preds = %vorbis_synthesis_init.exit.thread.sink.split, %bb.i, %bb.h, %bb.f, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 720
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ar, i8 0, i64 192, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.aq, ptr %i.as, align 8
  %i.at = load i32, ptr %i.aq, align 8
  %.not.i24 = icmp eq i32 %i.at, 0
  br i1 %.not.i24, label %vorbis_block_init.exit, label %bb.j

bb.j:                                             ; preds = %vorbis_synthesis_init.exit.thread
  %i.au = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #71 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 728
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #69 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %i.ax, ptr %i.az, align 8
  store i8 0, ptr %i.ax, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i64 256, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store float -9.999000e+03, ptr %i.bb, align 8
  br label %vorbis_block_init.exit

vorbis_block_init.exit:                           ; preds = %vorbis_synthesis_init.exit.thread, %bb.j
  store i32 4, ptr %i.a, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %vorbis_synthesis_init.exit

vorbis_synthesis_init.exit:                       ; preds = %bb.g, %bb.d, %bb.b, %bb.a, %vorbis_block_init.exit
  %.0 = phi i32 [ -137, %bb.d ], [ 0, %bb.a ], [ -129, %bb.b ], [ 0, %vorbis_block_init.exit ], [ -137, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @vorbis_info_blocksize(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.g
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -136, 1) i32 @vorbis_synthesis_trackonly(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not19.i = icmp eq ptr %i.k, null
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.020.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.k, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@_preextrapolate_helper:bb.a
  %i.v = load ptr, ptr %i.q, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8
  %invariant.gep = getelementptr [4 x i8], ptr %i.x, i64 %i.t ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.t, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = xor i64 %index, -1
  %i.z = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = getelementptr i8, ptr %i.z, i64 -28
  %wide.load = load <4 x float>, ptr %i.aa, align 4
  %wide.load55 = load <4 x float>, ptr %i.ab, align 4
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse56 = shufflevector <4 x float> %wide.load55, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x float> %reverse, ptr %i.ac, align 16
  store <4 x float> %reverse56, ptr %i.ad, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.t
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.047.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.047 = phi i64 [ %i.ai, %scalar.ph ], [ %.047.ph, %scalar.ph.preheader ] ; 3 uses
  %i.af = xor i64 %.047, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.af
  %i.ag = load float, ptr %gep, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.047
  store float %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.047, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !403

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aj = load i64, ptr %i.h, align 8             ; 3 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = sub i32 %i.s, %i.ak
  %i.am = call float @vorbis_lpc_from_data(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef %i.al, i32 noundef 32) ; 0 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.t
  %i.ao = sub i64 0, %i.aj
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -128
  call void @vorbis_lpc_predict(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aq, i32 noundef 32, ptr noundef nonnull %i.ap, i64 noundef %i.aj)
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge, %.lr.ph51
  %i.ar = phi i64 [ %i.bc, %.lr.ph51 ], [ %i.t, %._crit_edge ]
  %.149 = phi i64 [ %i.ba, %.lr.ph51 ], [ 0, %._crit_edge ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.149
  %i.at = load float, ptr %i.as, align 4
  %i.au = load ptr, ptr %i.q, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = xor i64 %.149, -1
  %i.ay = getelementptr [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.ar
  store float %i.at, ptr %i.az, align 4
  %i.ba = add nuw nsw i64 %.149, 1                ; 2 uses
  %i.bb = load i32, ptr %i.b, align 4             ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  br i1 %i.bd, label %.lr.ph51, label %._crit_edge52.loopexit, !llvm.loop !404

._crit_edge52.loopexit:                           ; preds = %.lr.ph51
  %.pre = load ptr, ptr %i.l, align 8
  br label %._crit_edge52

._crit_edge52.critedge:                           ; preds = %.preheader
  %i.be = load i64, ptr %i.h, align 8             ; 3 uses
  %i.bf = trunc i64 %i.be to i32
  %i.bg = sub i32 %i.s, %i.bf
  %i.bh = call float @vorbis_lpc_from_data(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef %i.bg, i32 noundef 32) ; 0 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.t
  %i.bj = sub i64 0, %i.be
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -128
  call void @vorbis_lpc_predict(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bl, i32 noundef 32, ptr noundef nonnull %i.bk, i64 noundef %i.be)
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.critedge, %._crit_edge52.loopexit
  %i.bm = phi ptr [ %.pre, %._crit_edge52.loopexit ], [ %i.r, %._crit_edge52.critedge ] ; 2 uses
  %i.bn = phi i32 [ %i.bb, %._crit_edge52.loopexit ], [ %i.s, %._crit_edge52.critedge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %.preheader, label %.loopexit, !llvm.loop !405

.loopexit:                                        ; preds = %._crit_edge52, %.preheader45, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local float @vorbis_lpc_from_data(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #43 {
bb.a:
  %i.a = add nsw i32 %3, 1                        ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = alloca i8, i64 %i.c, align 16            ; 8 uses
  %i.e = sext i32 %3 to i64                       ; 3 uses
  %i.f = shl nsw i64 %i.e, 3
  %i.g = alloca i8, i64 %i.f, align 16            ; 13 uses
  %.not91 = icmp eq i32 %i.a, 0
  br i1 %.not91, label %._crit_edge111, label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %bb.a
  %i.h = sext i32 %2 to i64
  %i.i = sub i32 %2, %3
  %i.j = sub i32 %3, %2
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.preheader87.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ %i.e, %.preheader87.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 9 uses
  %i.k = icmp slt i64 %indvars.iv, %i.h
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader87
  %i.l = add i32 %i.i, %indvar
  %xtraiter = and i32 %i.l, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load float, ptr %i.m, align 4
  %i.o = fpext float %i.n to double
  %i.p = load float, ptr %0, align 4
  %i.q = fpext float %i.p to double
  %i.r = fmul double %i.o, %i.q
  %i.s = fadd double %i.r, 0.000000e+00           ; 2 uses
  %indvars.iv.next118.prol = add nsw i64 %indvars.iv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa150.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %indvars.iv117.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next118.prol, %.lr.ph.prol ]
  %.07690.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.t = add i32 %indvar, -1
  %i.u = icmp eq i32 %i.j, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv117 = phi i64 [ %indvars.iv.next118.1, %.lr.ph ], [ %indvars.iv117.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.07690 = phi double [ %i.am, %.lr.ph ], [ %.07690.unr, %.lr.ph.prol.loopexit ]
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv117
  %i.w = load float, ptr %i.v, align 4
  %i.x = fpext float %i.w to double
  %i.y = sub nsw i64 %indvars.iv117, %indvars.iv
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fpext float %i.aa to double
  %i.ac = fmul double %i.x, %i.ab
  %i.ad = fadd double %.07690, %i.ac
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next118
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fpext float %i.af to double
  %i.ah = sub nsw i64 %indvars.iv.next118, %indvars.iv
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fpext float %i.aj to double
  %i.al = fmul double %i.ag, %i.ak
  %i.am = fadd double %i.ad, %i.al                ; 2 uses
  %indvars.iv.next118.1 = add nsw i64 %indvars.iv117, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next118.1 to i32
  %exitcond.not.1 = icmp eq i32 %2, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !406

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader87
  %.076.lcssa = phi double [ 0.000000e+00, %.preheader87 ], [ %.lcssa150.unr, %.lr.ph.prol.loopexit ], [ %i.am, %.lr.ph ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %.076.lcssa, ptr %i.an, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ao = icmp eq i64 %indvars.iv, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ao, label %._crit_edge92, label %.preheader87, !llvm.loop !407

._crit_edge92:                                    ; preds = %._crit_edge
  %.pre = load double, ptr %i.d, align 16         ; 2 uses
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.lr.ph107.preheader, label %._crit_edge111

.lr.ph107.preheader:                              ; preds = %._crit_edge92
  %wide.trip.count133 = zext nneg i32 %3 to i64   ; 3 uses
  br label %.lr.ph107

.lr.ph110.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph110.preheader148, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110.preheader
  %n.vec = and i64 %wide.trip.count133, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 16
  %wide.load147 = load <2 x double>, ptr %i.ar, align 16
  %i.as = fptrunc <2 x double> %wide.load to <2 x float>
  %i.at = fptrunc <2 x double> %wide.load147 to <2 x float>
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> %i.as, ptr %i.au, align 4
  store <2 x float> %i.at, ptr %i.av, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count133
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader148

.lr.ph110.preheader148:                           ; preds = %.lr.ph110.preheader, %middle.block
  %indvars.iv135.ph = phi i64 [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph110

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.d
  %indvars.iv130 = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvars.iv.next131, %bb.d ] ; 15 uses
  %.082104 = phi double [ %.pre, %.lr.ph107.preheader ], [ %i.eh, %bb.d ] ; 3 uses
  %i.ax = lshr i64 %indvars.iv130, 1              ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv130 to i32 ; 2 uses
  %i.az = lshr i32 %i.ay, 1                       ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 3 uses
  %i.ba = fcmp une double %.082104, 0.000000e+00
  br i1 %i.ba, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph107
  %i.bb = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.bb, i1 false)
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph107
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next131
  %i.bd = load double, ptr %i.bc, align 8
  %i.be = fneg double %i.bd                       ; 3 uses
  %.not112 = icmp eq i64 %indvars.iv130, 0
  br i1 %.not112, label %._crit_edge97, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %bb.b
  %xtraiter151 = and i64 %indvars.iv130, 3        ; 3 uses
  %i.bf = icmp samesign ult i64 %indvars.iv130, 4
  br i1 %i.bf, label %.lr.ph96.epil.preheader, label %.lr.ph96.preheader.new

.lr.ph96.preheader.new:                           ; preds = %.lr.ph96.preheader
  %unroll_iter = and i64 %indvars.iv130, 9223372036854775804
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96, %.lr.ph96.preheader.new
  %indvars.iv121 = phi i64 [ 0, %.lr.ph96.preheader.new ], [ %indvars.iv.next122.3, %.lr.ph96 ] ; 6 uses
  %.07594 = phi double [ %i.be, %.lr.ph96.preheader.new ], [ %i.ch, %.lr.ph96 ]
  %niter = phi i64 [ 0, %.lr.ph96.preheader.new ], [ %niter.next.3, %.lr.ph96 ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv121
  %i.bh = load double, ptr %i.bg, align 16
  %i.bi = sub nuw nsw i64 %indvars.iv130, %indvars.iv121
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = fmul double %i.bh, %i.bk
  %i.bm = fsub double %.07594, %i.bl
  %indvars.iv.next122 = or disjoint i64 %indvars.iv121, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next122
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = sub nuw nsw i64 %indvars.iv130, %indvars.iv.next122
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8
  %i.bs = fmul double %i.bo, %i.br
  %i.bt = fsub double %i.bm, %i.bs
  %indvars.iv.next122.1 = or disjoint i64 %indvars.iv121, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next122.1
  %i.bv = load double, ptr %i.bu, align 16
  %i.bw = sub nuw nsw i64 %indvars.iv130, %indvars.iv.next122.1
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8
  %i.bz = fmul double %i.bv, %i.by
  %i.ca = fsub double %i.bt, %i.bz
  %indvars.iv.next122.2 = or disjoint i64 %indvars.iv121, 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next122.2
  %i.cc = load double, ptr %i.cb, align 8
  %i.cd = sub nuw nsw i64 %indvars.iv130, %indvars.iv.next122.2
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8
  %i.cg = fmul double %i.cc, %i.cf
  %i.ch = fsub double %i.ca, %i.cg                ; 3 uses
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge97.loopexit.unr-lcssa, label %.lr.ph96, !llvm.loop !409

._crit_edge97.loopexit.unr-lcssa:                 ; preds = %.lr.ph96
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %._crit_edge97, label %.lr.ph96.epil.preheader

.lr.ph96.epil.preheader:                          ; preds = %._crit_edge97.loopexit.unr-lcssa, %.lr.ph96.preheader
  %indvars.iv121.epil.init = phi i64 [ 0, %.lr.ph96.preheader ], [ %indvars.iv.next122.3, %._crit_edge97.loopexit.unr-lcssa ]
  %.07594.epil.init = phi double [ %i.be, %.lr.ph96.preheader ], [ %i.ch, %._crit_edge97.loopexit.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter151, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph96.epil

.lr.ph96.epil:                                    ; preds = %.lr.ph96.epil, %.lr.ph96.epil.preheader
  %indvars.iv121.epil = phi i64 [ %indvars.iv.next122.epil, %.lr.ph96.epil ], [ %indvars.iv121.epil.init, %.lr.ph96.epil.preheader ] ; 3 uses
  %.07594.epil = phi double [ %i.co, %.lr.ph96.epil ], [ %.07594.epil.init, %.lr.ph96.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph96.epil ], [ 0, %.lr.ph96.epil.preheader ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv121.epil
  %i.cj = load double, ptr %i.ci, align 8
  %i.ck = sub nuw nsw i64 %indvars.iv130, %indvars.iv121.epil
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8
  %i.cn = fmul double %i.cj, %i.cm
  %i.co = fsub double %.07594.epil, %i.cn         ; 2 uses
  %indvars.iv.next122.epil = add nuw nsw i64 %indvars.iv121.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter151
  br i1 %epil.iter.cmp.not, label %._crit_edge97, label %.lr.ph96.epil, !llvm.loop !410

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit.unr-lcssa, %.lr.ph96.epil, %bb.b
  %.075.lcssa = phi double [ %i.be, %bb.b ], [ %i.ch, %._crit_edge97.loopexit.unr-lcssa ], [ %i.co, %.lr.ph96.epil ]
  %i.cp = fdiv double %.075.lcssa, %.082104       ; 10 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv130
  store double %i.cp, ptr %i.cq, align 8
  %.not113 = icmp eq i32 %i.az, 0
  br i1 %.not113, label %._crit_edge102, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %._crit_edge97
  %i.cr = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv130 ; 3 uses
  %i.cs = icmp eq i64 %i.ax, 1
  br i1 %i.cs, label %.lr.ph101.epil.preheader, label %.lr.ph101.preheader.new

.lr.ph101.preheader.new:                          ; preds = %.lr.ph101.preheader
  %unroll_iter159 = and i64 %i.ax, 4611686018427387902
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101, %.lr.ph101.preheader.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph101.preheader.new ], [ %indvars.iv.next126.1, %.lr.ph101 ] ; 5 uses
  %niter160 = phi i64 [ 0, %.lr.ph101.preheader.new ], [ %niter160.next.1, %.lr.ph101 ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv125 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 16        ; 2 uses
  %i.cv = xor i64 %indvars.iv125, -1
  %i.cw = getelementptr [8 x i8], ptr %i.cr, i64 %i.cv ; 3 uses
  %i.cx = load double, ptr %i.cw, align 8
  %i.cy = fmul double %i.cp, %i.cx
  %i.cz = fadd double %i.cu, %i.cy
  store double %i.cz, ptr %i.ct, align 16
  %i.da = fmul double %i.cp, %i.cu
  %i.db = load double, ptr %i.cw, align 8
  %i.dc = fadd double %i.da, %i.db
  store double %i.dc, ptr %i.cw, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv125
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load double, ptr %i.de, align 8         ; 2 uses
  %i.dg = xor i64 %indvars.iv125, -2
  %i.dh = getelementptr [8 x i8], ptr %i.cr, i64 %i.dg ; 3 uses
  %i.di = load double, ptr %i.dh, align 8
  %i.dj = fmul double %i.cp, %i.di
  %i.dk = fadd double %i.df, %i.dj
  store double %i.dk, ptr %i.de, align 8
  %i.dl = fmul double %i.cp, %i.df
  %i.dm = load double, ptr %i.dh, align 8
  %i.dn = fadd double %i.dl, %i.dm
  store double %i.dn, ptr %i.dh, align 8
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter160.next.1 = add i64 %niter160, 2         ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %._crit_edge102.loopexit.unr-lcssa, label %.lr.ph101, !llvm.loop !411

._crit_edge102.loopexit.unr-lcssa:                ; preds = %.lr.ph101
  %i.do = and i64 %indvars.iv130, 2
  %lcmp.mod157.not = icmp eq i64 %i.do, 0
  br i1 %lcmp.mod157.not, label %._crit_edge102.loopexit, label %.lr.ph101.epil.preheader

.lr.ph101.epil.preheader:                         ; preds = %._crit_edge102.loopexit.unr-lcssa, %.lr.ph101.preheader
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph101.preheader ], [ %indvars.iv.next126.1, %._crit_edge102.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod158 = trunc i64 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv125.epil.init ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8         ; 2 uses
  %i.dr = xor i64 %indvars.iv125.epil.init, -1
  %i.ds = getelementptr [8 x i8], ptr %i.cr, i64 %i.dr ; 3 uses
  %i.dt = load double, ptr %i.ds, align 8
  %i.du = fmul double %i.cp, %i.dt
  %i.dv = fadd double %i.dq, %i.du
  store double %i.dv, ptr %i.dp, align 8
  %i.dw = fmul double %i.cp, %i.dq
  %i.dx = load double, ptr %i.ds, align 8
  %i.dy = fadd double %i.dw, %i.dx
  store double %i.dy, ptr %i.ds, align 8
  br label %._crit_edge102.loopexit

._crit_edge102.loopexit:                          ; preds = %._crit_edge102.loopexit.unr-lcssa, %.lr.ph101.epil.preheader
  %i.dz = zext nneg i32 %i.az to i64
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %._crit_edge102.loopexit, %._crit_edge97
  %.279.lcssa = phi i64 [ 0, %._crit_edge97 ], [ %i.dz, %._crit_edge102.loopexit ]
  %i.ea = and i32 %i.ay, 1
  %.not85 = icmp eq i32 %i.ea, 0
  br i1 %.not85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge102
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.279.lcssa ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8         ; 2 uses
  %i.ed = fmul double %i.cp, %i.ec
  %i.ee = fadd double %i.ec, %i.ed
  store double %i.ee, ptr %i.eb, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge102, %bb.c
  %i.ef = fmul double %i.cp, %i.cp
  %i.eg = fsub double 1.000000e+00, %i.ef
  %i.eh = fmul double %.082104, %i.eg             ; 3 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
end_hunk_1
begin_hunk_2_@setup_tone_curves:bb.a
  %i.iiq = load float, ptr %i.iip, align 4
  %i.iir = fcmp ogt float %i.iiq, -2.000000e+02
  br i1 %i.iir, label %bb.bz, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iis = getelementptr inbounds nuw i8, ptr %i.ifr, i64 124
  %i.iit = load float, ptr %i.iis, align 4
  %i.iiu = fcmp ogt float %i.iit, -2.000000e+02
  br i1 %i.iiu, label %bb.bz, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iiv = getelementptr inbounds nuw i8, ptr %i.ifr, i64 120
  %i.iiw = load float, ptr %i.iiv, align 4
  %i.iix = fcmp ogt float %i.iiw, -2.000000e+02
  br i1 %i.iix, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iiy = getelementptr inbounds nuw i8, ptr %i.ifr, i64 116
  %i.iiz = load float, ptr %i.iiy, align 4
  %i.ija = fcmp ogt float %i.iiz, -2.000000e+02
  br i1 %i.ija, label %bb.bz, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ijb = getelementptr inbounds nuw i8, ptr %i.ifr, i64 112
  %i.ijc = load float, ptr %i.ijb, align 4
  %i.ijd = fcmp ogt float %i.ijc, -2.000000e+02
  br i1 %i.ijd, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ije = getelementptr inbounds nuw i8, ptr %i.ifr, i64 108
  %i.ijf = load float, ptr %i.ije, align 4
  %i.ijg = fcmp ogt float %i.ijf, -2.000000e+02
  br i1 %i.ijg, label %bb.bz, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ijh = getelementptr inbounds nuw i8, ptr %i.ifr, i64 104
  %i.iji = load float, ptr %i.ijh, align 4
  %i.ijj = fcmp ogt float %i.iji, -2.000000e+02
  br i1 %i.ijj, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ijk = getelementptr inbounds nuw i8, ptr %i.ifr, i64 100
  %i.ijl = load float, ptr %i.ijk, align 4
  %i.ijm = fcmp ogt float %i.ijl, -2.000000e+02
  br i1 %i.ijm, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ijn = getelementptr inbounds nuw i8, ptr %i.ifr, i64 96
  %i.ijo = load float, ptr %i.ijn, align 4
  %i.ijp = fcmp ogt float %i.ijo, -2.000000e+02
  br i1 %i.ijp, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ijq = getelementptr inbounds nuw i8, ptr %i.ifr, i64 92
  %i.ijr = load float, ptr %i.ijq, align 4
  %i.ijs = fcmp ogt float %i.ijr, -2.000000e+02
  br i1 %i.ijs, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ijt = getelementptr inbounds nuw i8, ptr %i.ifr, i64 88
  %i.iju = load float, ptr %i.ijt, align 4
  %i.ijv = fcmp ogt float %i.iju, -2.000000e+02
  br i1 %i.ijv, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ijw = getelementptr inbounds nuw i8, ptr %i.ifr, i64 84
  %i.ijx = load float, ptr %i.ijw, align 4
  %i.ijy = fcmp ogt float %i.ijx, -2.000000e+02
  br i1 %i.ijy, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ijz = getelementptr inbounds nuw i8, ptr %i.ifr, i64 80
  %i.ika = load float, ptr %i.ijz, align 4
  %i.ikb = fcmp ogt float %i.ika, -2.000000e+02
  br i1 %i.ikb, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.10.lcssa = phi float [ 5.500000e+01, %bb.am ], [ 1.700000e+01, %bb.by ], [ 5.400000e+01, %bb.an ], [ 1.800000e+01, %bb.bx ], [ 5.300000e+01, %bb.ao ], [ 2.700000e+01, %bb.bo ], [ 5.200000e+01, %bb.ap ], [ 1.900000e+01, %bb.bw ], [ 5.100000e+01, %bb.aq ], [ 3.500000e+01, %bb.bg ], [ 5.000000e+01, %bb.ar ], [ 2.000000e+01, %bb.bv ], [ 4.900000e+01, %bb.as ], [ 3.100000e+01, %bb.bk ], [ 4.800000e+01, %bb.at ], [ 2.100000e+01, %bb.bu ], [ 4.700000e+01, %bb.au ], [ 3.400000e+01, %bb.bh ], [ 4.600000e+01, %bb.av ], [ 2.200000e+01, %bb.bt ], [ 4.500000e+01, %bb.aw ], [ 2.800000e+01, %bb.bn ], [ 4.400000e+01, %bb.ax ], [ 2.300000e+01, %bb.bs ], [ 4.300000e+01, %bb.ay ], [ 3.300000e+01, %bb.bi ], [ 4.200000e+01, %bb.az ], [ 2.400000e+01, %bb.br ], [ 4.100000e+01, %bb.ba ], [ 3.000000e+01, %bb.bl ], [ 4.000000e+01, %bb.bb ], [ 2.500000e+01, %bb.bq ], [ 3.900000e+01, %bb.bc ], [ 3.200000e+01, %bb.bj ], [ 3.800000e+01, %bb.bd ], [ 2.600000e+01, %bb.bp ], [ 3.700000e+01, %bb.be ], [ 2.900000e+01, %bb.bm ], [ 3.600000e+01, %bb.bf ]
  %i.ikc = getelementptr inbounds nuw i8, ptr %i.ifr, i64 4
  store float %.10.lcssa, ptr %i.ikc, align 4
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %exitcond434.not = icmp eq i64 %indvars.iv.next432, 8
  br i1 %exitcond434.not, label %bb.ca, label %bb.j, !llvm.loop !562

bb.ca:                                            ; preds = %bb.bz
  %exitcond438.not = icmp eq i64 %indvars.iv.next436, 17
  br i1 %exitcond438.not, label %bb.cb, label %bb.i, !llvm.loop !563

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret ptr %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_vp_remove_floor(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #43 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.a) ; 6 uses
  %i.b = icmp sgt i32 %spec.select, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %spec.select, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod27 = trunc i32 %spec.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.h
  %i.j = load float, ptr %i.i, align 4
  %i.k = fmul float %i.e, %i.j
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  store float %i.k, ptr %i.l, align 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.a
  %.017.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %.preheader.loopexit.unr-lcssa ], [ %spec.select, %.lr.ph.epil.preheader ] ; 3 uses
  %i.m = icmp slt i32 %.017.lcssa, %i.a
  br i1 %i.m, label %.lr.ph22.preheader, label %._crit_edge

.lr.ph22.preheader:                               ; preds = %.preheader
  %i.n = zext nneg i32 %.017.lcssa to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.o
  %i.p = xor i32 %.017.lcssa, -1
  %i.q = add nsw i32 %i.a, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.t, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fmul float %i.v, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.ab, ptr %i.ac, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fmul float %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store float %i.ak, ptr %i.al, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !564

._crit_edge:                                      ; preds = %.lr.ph22.preheader, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vp_noisemask(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #25 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 10 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = alloca i8, i64 %i.c, align 16            ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call fastcc void @bark_noise_hybridmp(i32 noundef %i.a, ptr noundef %i.f, ptr noundef %1, ptr noundef %2, float noundef 1.400000e+02, i32 noundef -1)
  %i.g = icmp sgt i32 %i.a, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge49.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <4 x float>, ptr %i.h, align 4
  %wide.load61 = load <4 x float>, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load62 = load <4 x float>, ptr %i.j, align 4
  %wide.load63 = load <4 x float>, ptr %i.k, align 4
  %i.l = fsub <4 x float> %wide.load, %wide.load62
  %i.m = fsub <4 x float> %wide.load61, %wide.load63
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> %i.l, ptr %i.n, align 16
  store <4 x float> %i.m, ptr %i.o, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !565

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader79, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader79 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.t = load float, ptr %i.s, align 4
  %i.u = fsub float %i.r, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.u, ptr %i.v, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !566

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.aa = load i32, ptr %i.z, align 8
  call fastcc void @bark_noise_hybridmp(i32 noundef %i.a, ptr noundef %i.w, ptr noundef nonnull %i.d, ptr noundef %2, float noundef 0.000000e+00, i32 noundef %i.aa)
  %wide.trip.count54 = zext nneg i32 %i.a to i64
  %min.iters.check65 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check65, label %.lr.ph46.preheader, label %vector.ph66

vector.ph66:                                      ; preds = %._crit_edge
  %n.vec68 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph66
  %index70 = phi i64 [ 0, %vector.ph66 ], [ %index.next75, %vector.body69 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index70 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load71 = load <4 x float>, ptr %i.ab, align 4
  %wide.load72 = load <4 x float>, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index70 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load73 = load <4 x float>, ptr %i.ad, align 16
  %wide.load74 = load <4 x float>, ptr %i.ae, align 16
  %i.af = fsub <4 x float> %wide.load71, %wide.load73
  %i.ag = fsub <4 x float> %wide.load72, %wide.load74
  store <4 x float> %i.af, ptr %i.ad, align 16
  store <4 x float> %i.ag, ptr %i.ae, align 16
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.ah, label %middle.block76, label %vector.body69, !llvm.loop !567

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %n.vec68, %wide.trip.count
  br i1 %cmp.n77, label %.lr.ph48.preheader, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %._crit_edge, %middle.block76
  %indvars.iv51.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec68, %middle.block76 ]
  br label %.lr.ph46

.lr.ph48.preheader:                               ; preds = %.lr.ph46, %middle.block76
  %wide.trip.count59 = zext nneg i32 %i.a to i64
  br label %.lr.ph48

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %.lr.ph46
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph46 ], [ %indvars.iv51.ph, %.lr.ph46.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv51
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv51 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4
  %i.am = fsub float %i.aj, %i.al
  store float %i.am, ptr %i.ak, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.lr.ph48.preheader, label %.lr.ph46, !llvm.loop !568

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %.lr.ph48
  %indvars.iv56 = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next57, %.lr.ph48 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv56 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.as, i32 39)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv56
  %i.av = load float, ptr %i.au, align 4
  %i.aw = load ptr, ptr %i.x, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 336
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fadd float %i.av, %i.ba
  store float %i.bb, ptr %i.an, align 4
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge49, label %.lr.ph48, !llvm.loop !569

._crit_edge49.critedge:                           ; preds = %bb.a
  %i.bc = load ptr, ptr %i.e, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bg = load i32, ptr %i.bf, align 8
  call fastcc void @bark_noise_hybridmp(i32 noundef %i.a, ptr noundef %i.bc, ptr noundef nonnull %i.d, ptr noundef %2, float noundef 0.000000e+00, i32 noundef %i.bg)
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %.lr.ph48, %._crit_edge49.critedge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @bark_noise_hybridmp(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef captures(none) %3, float noundef nofpclass(nan inf nzero sub nnorm) %4, i32 noundef %5) unnamed_addr #43 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 2                      ; 5 uses
  %i.c = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.d = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.e = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.f = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.g = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.h = load float, ptr %2, align 4
  %i.i = fadd float %4, %i.h                      ; 2 uses
  %i.j = fcmp olt float %i.i, 1.000000e+00
  %.0 = select i1 %i.j, float 1.000000e+00, float %i.i ; 3 uses
  %i.k = fmul float %.0, %.0
  %i.l = fmul float %i.k, 5.000000e-01            ; 5 uses
  %i.m = fmul float %.0, %i.l
  %i.n = fadd float %i.m, 0.000000e+00            ; 2 uses
  store float %i.l, ptr %i.c, align 16
  store float %i.l, ptr %i.d, align 16
  store float 0.000000e+00, ptr %i.e, align 16
  store float %i.n, ptr %i.f, align 16
  store float 0.000000e+00, ptr %i.g, align 16
  %i.o = icmp sgt i32 %0, 1
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader345

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.preheader345:                                    ; preds = %.lr.ph, %bb.a
  %i.p = load i64, ptr %1, align 8                ; 3 uses
  %i.q = and i64 %i.p, 140737488355328
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.preheader344, label %.lr.ph355

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 7 uses
  %.0297352 = phi float [ 1.000000e+00, %.lr.ph.preheader ], [ %i.al, %.lr.ph ] ; 3 uses
  %.0321350 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.af, %.lr.ph ]
  %.0322349 = phi float [ %i.n, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ]
  %.0323348 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %.0324347 = phi float [ %i.l, %.lr.ph.preheader ], [ %i.z, %.lr.ph ]
  %.0325346 = phi float [ %i.l, %.lr.ph.preheader ], [ %i.x, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.t = load float, ptr %i.s, align 4
  %i.u = fadd float %4, %i.t                      ; 2 uses
  %i.v = fcmp olt float %i.u, 1.000000e+00
  %.1 = select i1 %i.v, float 1.000000e+00, float %i.u ; 4 uses
  %i.w = fmul float %.1, %.1                      ; 3 uses
  %i.x = fadd float %.0325346, %i.w               ; 2 uses
  %i.y = fmul float %.0297352, %i.w               ; 3 uses
  %i.z = fadd float %.0324347, %i.y               ; 2 uses
  %i.aa = fmul float %.0297352, %i.y
  %i.ab = fadd float %.0323348, %i.aa             ; 2 uses
  %i.ac = fmul float %.1, %i.w
  %i.ad = fadd float %.0322349, %i.ac             ; 2 uses
  %i.ae = fmul float %.1, %i.y
  %i.af = fadd float %.0321350, %i.ae             ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store float %i.x, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.z, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.ab, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store float %i.ad, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.af, ptr %i.ak, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = fadd float %.0297352, 1.000000e+00
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader345, label %.lr.ph, !llvm.loop !570

.preheader344.loopexit:                           ; preds = %.lr.ph355
  %i.am = trunc nuw nsw i64 %indvars.iv.next414 to i32
  %.phi.trans.insert = and i64 %indvars.iv.next414, 4294967295
  %.phi.trans.insert439 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.phi.trans.insert
  %.pre = load i64, ptr %.phi.trans.insert439, align 8
  br label %.preheader344

.preheader344:                                    ; preds = %.preheader345, %.preheader344.loopexit
  %i.an = phi i64 [ %.pre, %.preheader344.loopexit ], [ %i.p, %.preheader345 ] ; 2 uses
  %.1315.lcssa = phi i32 [ %i.am, %.preheader344.loopexit ], [ 0, %.preheader345 ] ; 2 uses
  %.0307.lcssa = phi float [ %i.bx, %.preheader344.loopexit ], [ undef, %.preheader345 ]
  %.0303.lcssa = phi float [ %i.ca, %.preheader344.loopexit ], [ undef, %.preheader345 ]
  %.0299.lcssa = phi float [ %i.cd, %.preheader344.loopexit ], [ undef, %.preheader345 ]
  %.1298.lcssa = phi float [ %i.ck, %.preheader344.loopexit ], [ 0.000000e+00, %.preheader345 ] ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 65535
  %.not360 = icmp slt i32 %i.ap, %0
  br i1 %.not360, label %.lr.ph363.preheader, label %.preheader343

.lr.ph363.preheader:                              ; preds = %.preheader344
  %i.aq = zext nneg i32 %.1315.lcssa to i64
  br label %.lr.ph363

.lr.ph355:                                        ; preds = %.preheader345, %.lr.ph355
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %.lr.ph355 ], [ 0, %.preheader345 ] ; 2 uses
  %i.ar = phi i64 [ %i.cm, %.lr.ph355 ], [ %i.p, %.preheader345 ] ; 2 uses
  %.1298354 = phi float [ %i.ck, %.lr.ph355 ], [ 0.000000e+00, %.preheader345 ] ; 2 uses
  %i.as = lshr i64 %i.ar, 16
  %i.at = and i64 %i.ar, 65535                    ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load float, ptr %i.au, align 4
  %i.aw = sub nsw i64 0, %i.as
  %i.ax = and i64 %i.aw, 4294967295               ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fadd float %i.av, %i.az                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.at
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ax
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = fsub float %i.bc, %i.be                 ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.at
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ax
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = fadd float %i.bh, %i.bj                 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.at
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = fadd float %i.bm, %i.bo                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fsub float %i.br, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.bk, %i.bp
  %i.bw = fmul float %i.bf, %i.bu
  %i.bx = fsub float %i.bv, %i.bw                 ; 2 uses
  %i.by = fmul float %i.ba, %i.bu
  %i.bz = fmul float %i.bf, %i.bp
  %i.ca = fsub float %i.by, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.ba, %i.bk
  %i.cc = fmul float %i.bf, %i.bf
  %i.cd = fsub float %i.cb, %i.cc                 ; 2 uses
  %i.ce = fmul float %.1298354, %i.ca
  %i.cf = fadd float %i.bx, %i.ce
  %i.cg = fdiv float %i.cf, %i.cd                 ; 2 uses
  %i.ch = fcmp olt float %i.cg, 0.000000e+00
end_hunk_2
begin_hunk_3_@vorbis_lpc_to_lsp:bb.a
  %lcmp.mod290 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod290)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv171.epil.init
  %i.hg = load float, ptr %i.hf, align 4
  %i.hh = fpext float %i.hg to double
  %i.hi = call double @acos(double noundef %i.hh) #62
  %i.hj = fptrunc double %i.hi to float
  %.idx177.epil = shl nuw nsw i64 %indvars.iv171.epil.init, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %.idx177.epil
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store float %i.hj, ptr %i.hl, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph143.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %cheby.exit117, %bb.b
  %.096 = phi i32 [ -1, %cheby.exit117 ], [ -1, %bb.b ], [ 0, %.preheader ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph143.epil.preheader ]
  ret i32 %.096
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc range(i32 -1, 1) i32 @Laguerre_With_Deflation(ptr noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #56 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = alloca i8, i64 %i.c, align 16            ; 4 uses
  %.not101 = icmp slt i32 %1, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x float>, ptr %i.e, align 4
  %wide.load142 = load <2 x float>, ptr %i.f, align 4
  %i.g = fpext <2 x float> %wide.load to <2 x double>
  %i.h = fpext <2 x float> %wide.load142 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16
  store <2 x double> %i.h, ptr %i.j, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader97, label %.lr.ph.preheader147

.lr.ph.preheader147:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader97:                                     ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader97
  %i.l = zext nneg i32 %1 to i64                  ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 3
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.m ; 2 uses
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader147, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader147 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4
  %i.p = fpext float %i.o to double
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.p, ptr %i.q, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader97, label %.lr.ph, !llvm.loop !680

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge113
  %indvars.iv121 = phi i64 [ %i.l, %.preheader.preheader ], [ %indvars.iv.next122, %._crit_edge113 ] ; 5 uses
  %.072115 = phi ptr [ %i.d, %.preheader.preheader ], [ %i.bj, %._crit_edge113 ] ; 3 uses
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, -1 ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.next122 to i32
  %i.s = uitofp nneg i32 %i.r to double           ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv121 to i32
  %i.u = uitofp nneg i32 %i.t to double
  %.pre = load double, ptr %scevgep, align 8
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader, %bb.h
  %.070 = phi double [ %i.au, %bb.h ], [ 0.000000e+00, %.preheader ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %bb.b
  %indvars.iv123 = phi i64 [ %indvars.iv121, %.lr.ph107 ], [ %indvars.iv.next124, %bb.b ] ; 3 uses
  %.066106 = phi double [ 0.000000e+00, %.lr.ph107 ], [ %i.w, %bb.b ]
  %.067105 = phi double [ 0.000000e+00, %.lr.ph107 ], [ %i.y, %bb.b ] ; 2 uses
  %.068104 = phi double [ %.pre, %.lr.ph107 ], [ %i.ad, %bb.b ] ; 2 uses
  %i.v = fmul double %.070, %.066106
  %i.w = fadd double %.067105, %i.v               ; 2 uses
  %i.x = fmul double %.070, %.067105
  %i.y = fadd double %.068104, %i.x               ; 6 uses
  %i.z = fmul double %.070, %.068104
  %i.aa = getelementptr [8 x i8], ptr %.072115, i64 %indvars.iv123
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = fadd double %i.z, %i.ac                 ; 2 uses
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, -1
  %i.ae = trunc nuw i64 %indvars.iv123 to i32
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !681

._crit_edge:                                      ; preds = %bb.b
  %i.ag = fmul double %i.y, %i.s
  %i.ah = fmul double %i.y, %i.ag
  %i.ai = fmul double %i.ad, %i.u                 ; 2 uses
  %i.aj = fmul double %i.ai, %i.w
  %i.ak = fsub double %i.ah, %i.aj
  %i.al = fmul double %i.ak, %i.s                 ; 2 uses
  %i.am = fcmp olt double %i.al, 0.000000e+00
  br i1 %i.am, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.an = fcmp ogt double %i.y, 0.000000e+00
  %i.ao = tail call double @sqrt(double noundef %i.al) #62 ; 2 uses
  br i1 %i.an, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ap = fadd double %i.y, %i.ao                 ; 2 uses
  %i.aq = fcmp olt double %i.ap, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aq, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ar = fsub double %i.y, %i.ao                 ; 2 uses
  %i.as = fcmp ogt double %i.ar, f0xBEB0C6F7A0B5ED8D
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  %.065 = phi double [ f0x3EB0C6F7A0B5ED8D, %bb.e ], [ %i.ap, %bb.d ], [ f0xBEB0C6F7A0B5ED8D, %bb.g ], [ %i.ar, %bb.f ]
  %i.at = fdiv double %i.ai, %.065                ; 4 uses
  %i.au = fsub double %.070, %i.at                ; 4 uses
  %i.av = fcmp olt double %i.at, 0.000000e+00
  %i.aw = fneg double %i.at
  %.069 = select i1 %i.av, double %i.aw, double %i.at
  %i.ax = fdiv double %.069, %i.au
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp olt double %i.ay, f0x3DA5FD7FE1796495
  br i1 %i.az, label %.lr.ph112.preheader, label %.lr.ph107

.lr.ph112.preheader:                              ; preds = %bb.h
  %i.ba = fptrunc double %i.au to float
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next122
  store float %i.ba, ptr %i.bb, align 4
  %load_initial = load double, ptr %scevgep, align 8
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  %store_forwarded = phi double [ %load_initial, %.lr.ph112.preheader ], [ %i.bg, %.lr.ph112 ]
  %indvars.iv126 = phi i64 [ %indvars.iv121, %.lr.ph112.preheader ], [ %indvars.iv.next127, %.lr.ph112 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.072115, i64 %indvars.iv126
  %i.bd = fmul double %i.au, %store_forwarded
  %i.be = getelementptr i8, ptr %i.bc, i64 -8     ; 2 uses
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = fadd double %i.bf, %i.bd                ; 2 uses
  store double %i.bg, ptr %i.be, align 8
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1
  %i.bh = trunc nuw i64 %indvars.iv126 to i32
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %.lr.ph112, label %._crit_edge113, !llvm.loop !682

._crit_edge113:                                   ; preds = %.lr.ph112
  %i.bj = getelementptr inbounds nuw i8, ptr %.072115, i64 8
  %i.bk = icmp sgt i64 %indvars.iv121, 1
  br i1 %i.bk, label %.preheader, label %.loopexit, !llvm.loop !683

.loopexit:                                        ; preds = %._crit_edge113, %._crit_edge, %bb.a, %.preheader97
  %.3 = phi i32 [ 0, %.preheader97 ], [ -1, %._crit_edge ], [ 0, %bb.a ], [ 0, %._crit_edge113 ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Newton_Raphson(ptr noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, ptr noundef nonnull captures(none) %2) unnamed_addr #43 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 3
  %i.c = alloca i8, i64 %i.b, align 16            ; 5 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x float>, ptr %i.e, align 4
  %wide.load4 = load <2 x float>, ptr %i.f, align 4
  %i.g = fpext <2 x float> %wide.load to <2 x double>
  %i.h = fpext <2 x float> %wide.load4 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16
  store <2 x double> %i.h, ptr %i.j, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !684

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader52.split.us, label %.lr.ph.preheader22

.lr.ph.preheader22:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader52.split.us:                            ; preds = %.lr.ph, %middle.block
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.m = load float, ptr %i.l, align 4
  %i.n = fpext float %i.m to double
  %i.o = zext nneg i32 %1 to i64                  ; 2 uses
  br label %.preheader51.us

.preheader51.us:                                  ; preds = %bb.b, %.preheader52.split.us
  %.04965.us = phi i32 [ 0, %.preheader52.split.us ], [ %i.p, %bb.b ] ; 2 uses
  br label %.lr.ph58.us.us

bb.b:                                             ; preds = %._crit_edge63.split.us.us
  %i.p = add nuw nsw i32 %.04965.us, 1
  %i.q = fcmp ogt double %i.ae, f0x3BC79CA10C924223
  br i1 %i.q, label %.preheader51.us, label %.lr.ph67.preheader, !llvm.loop !685

.lr.ph58.us.us:                                   ; preds = %._crit_edge.us.us, %.preheader51.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %._crit_edge.us.us ], [ 0, %.preheader51.us ] ; 2 uses
  %.14860.us.us = phi double [ %i.ae, %._crit_edge.us.us ], [ 0.000000e+00, %.preheader51.us ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv75 ; 2 uses
  %i.s = load double, ptr %i.r, align 8           ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph58.us.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %bb.c ], [ %i.o, %.lr.ph58.us.us ] ; 2 uses
  %.057.us.us = phi double [ %i.z, %bb.c ], [ %i.n, %.lr.ph58.us.us ] ; 2 uses
  %.04556.us.us = phi double [ %i.u, %bb.c ], [ 0.000000e+00, %.lr.ph58.us.us ]
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1 ; 2 uses
  %i.t = fmul double %i.s, %.04556.us.us
  %i.u = fadd double %i.t, %.057.us.us            ; 2 uses
  %i.v = fmul double %i.s, %.057.us.us
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next73
  %i.x = load float, ptr %i.w, align 4
  %i.y = fpext float %i.x to double
  %i.z = fadd double %i.v, %i.y                   ; 2 uses
  %i.aa = icmp sgt i64 %indvars.iv72, 1
  br i1 %i.aa, label %bb.c, label %._crit_edge.us.us, !llvm.loop !686

._crit_edge.us.us:                                ; preds = %bb.c
  %i.ab = fdiv double %i.z, %i.u                  ; 3 uses
  %i.ac = fsub double %i.s, %i.ab
  store double %i.ac, ptr %i.r, align 8
  %i.ad = fmul double %i.ab, %i.ab
  %i.ae = fadd double %.14860.us.us, %i.ad        ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %i.o
  br i1 %exitcond79.not, label %._crit_edge63.split.us.us, label %.lr.ph58.us.us, !llvm.loop !687

._crit_edge63.split.us.us:                        ; preds = %._crit_edge.us.us
  %exitcond80 = icmp eq i32 %.04965.us, 41
  br i1 %exitcond80, label %.loopexit, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader22, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader22 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fpext float %i.ag to double
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.ah, ptr %i.ai, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader52.split.us, label %.lr.ph, !llvm.loop !688

.lr.ph67.preheader:                               ; preds = %bb.b
  %wide.trip.count84 = zext nneg i32 %1 to i64
  %min.iters.check6 = icmp ult i32 %1, 4
  br i1 %min.iters.check6, label %.lr.ph67.preheader18, label %vector.ph7

vector.ph7:                                       ; preds = %.lr.ph67.preheader
  %n.vec9 = and i64 %wide.trip.count, 2147483644  ; 3 uses
  br label %vector.body10

vector.body10:                                    ; preds = %vector.body10, %vector.ph7
  %index11 = phi i64 [ 0, %vector.ph7 ], [ %index.next14, %vector.body10 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load12 = load <2 x double>, ptr %i.aj, align 16
  %wide.load13 = load <2 x double>, ptr %i.ak, align 16
  %i.al = fptrunc <2 x double> %wide.load12 to <2 x float>
  %i.am = fptrunc <2 x double> %wide.load13 to <2 x float>
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store <2 x float> %i.al, ptr %i.an, align 4
  store <2 x float> %i.am, ptr %i.ao, align 4
  %index.next14 = add nuw i64 %index11, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next14, %n.vec9
  br i1 %i.ap, label %middle.block15, label %vector.body10, !llvm.loop !689

middle.block15:                                   ; preds = %vector.body10
  %cmp.n16 = icmp eq i64 %n.vec9, %wide.trip.count
  br i1 %cmp.n16, label %.loopexit, label %.lr.ph67.preheader18

.lr.ph67.preheader18:                             ; preds = %.lr.ph67.preheader, %middle.block15
  %indvars.iv81.ph = phi i64 [ 0, %.lr.ph67.preheader ], [ %n.vec9, %middle.block15 ]
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader18, %.lr.ph67
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.lr.ph67 ], [ %indvars.iv81.ph, %.lr.ph67.preheader18 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv81
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = fptrunc double %i.ar to float
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv81
  store float %i.as, ptr %i.at, align 4
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph67, !llvm.loop !690

.loopexit:                                        ; preds = %._crit_edge63.split.us.us, %.lr.ph67, %middle.block15, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @comp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #17 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 2 uses
  %i.b = load float, ptr %1, align 4              ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  %i.e = fcmp ogt float %i.a, %i.b
  %.neg = sext i1 %i.e to i32
  %i.f = add nsw i32 %.neg, %i.d
  ret i32 %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @floor1_fit(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %4 = alloca [64 x %struct.lsfit_acc], align 16  ; 7 uses
  %i.a = alloca [65 x i32], align 16              ; 12 uses
  %i.b = alloca [65 x i32], align 16              ; 12 uses
  %i.c = alloca [65 x i32], align 16              ; 5 uses
  %i.d = alloca [65 x i32], align 16              ; 6 uses
  %i.e = alloca [65 x i32], align 16              ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1284
  %i.q = load i32, ptr %i.p, align 4              ; 10 uses
  %i.r = sext i32 %i.q to i64                     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #62
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> splat (i32 -200), ptr %i.t, align 16
  store <4 x i32> splat (i32 -200), ptr %i.u, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br i1 %cmp.n, label %.lr.ph183.preheader, label %.lr.ph.preheader270

.lr.ph.preheader270:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0181.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader270, %.lr.ph
  %.0181 = phi i64 [ %i.x, %.lr.ph ], [ %.0181.ph, %.lr.ph.preheader270 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0181
  store i32 -200, ptr %i.w, align 4
  %i.x = add nuw nsw i64 %.0181, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.r
  br i1 %exitcond.not, label %.lr.ph183.preheader, label %.lr.ph, !llvm.loop !692

.lr.ph183.preheader:                              ; preds = %.lr.ph, %middle.block
  %min.iters.check246 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check246, label %.lr.ph183.preheader269, label %vector.ph247

vector.ph247:                                     ; preds = %.lr.ph183.preheader
  %n.vec249 = and i64 %i.r, 2147483640            ; 3 uses
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph247
  %index251 = phi i64 [ 0, %vector.ph247 ], [ %index.next252, %vector.body250 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index251 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> splat (i32 -200), ptr %i.y, align 16
  store <4 x i32> splat (i32 -200), ptr %i.z, align 16
  %index.next252 = add nuw i64 %index251, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next252, %n.vec249
  br i1 %i.aa, label %middle.block253, label %vector.body250, !llvm.loop !693

middle.block253:                                  ; preds = %vector.body250
  %cmp.n254 = icmp eq i64 %n.vec249, %i.r
  br i1 %cmp.n254, label %.lr.ph187.preheader, label %.lr.ph183.preheader269

.lr.ph183.preheader269:                           ; preds = %.lr.ph183.preheader, %middle.block253
  %.1182.ph = phi i64 [ 0, %.lr.ph183.preheader ], [ %n.vec249, %middle.block253 ]
  br label %.lr.ph183

.lr.ph183:                                        ; preds = %.lr.ph183.preheader269, %.lr.ph183
  %.1182 = phi i64 [ %i.ac, %.lr.ph183 ], [ %.1182.ph, %.lr.ph183.preheader269 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1182
  store i32 -200, ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.1182, 1               ; 2 uses
  %exitcond212.not = icmp eq i64 %i.ac, %i.r
  br i1 %exitcond212.not, label %.lr.ph187.preheader, label %.lr.ph183, !llvm.loop !694

.lr.ph187.preheader:                              ; preds = %.lr.ph183, %middle.block253
  %i.ad = shl nuw nsw i64 %i.r, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.ad, i1 false)
  %min.iters.check257 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check257, label %.lr.ph187.preheader268, label %vector.ph258

vector.ph258:                                     ; preds = %.lr.ph187.preheader
  %n.vec260 = and i64 %i.r, 2147483640            ; 3 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph258
  %index262 = phi i64 [ 0, %vector.ph258 ], [ %index.next263, %vector.body261 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index262 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> splat (i32 1), ptr %i.ae, align 16
  store <4 x i32> splat (i32 1), ptr %i.af, align 16
  %index.next263 = add nuw i64 %index262, 8       ; 2 uses
  %i.ag = icmp eq i64 %index.next263, %n.vec260
  br i1 %i.ag, label %middle.block264, label %vector.body261, !llvm.loop !695

middle.block264:                                  ; preds = %vector.body261
  %cmp.n265 = icmp eq i64 %n.vec260, %i.r
  br i1 %cmp.n265, label %.preheader, label %.lr.ph187.preheader268

.lr.ph187.preheader268:                           ; preds = %.lr.ph187.preheader, %middle.block264
  %.3186.ph = phi i64 [ 0, %.lr.ph187.preheader ], [ %n.vec260, %middle.block264 ]
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.preheader268, %.lr.ph187
  %.3186 = phi i64 [ %i.ai, %.lr.ph187 ], [ %.3186.ph, %.lr.ph187.preheader268 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.3186
  store i32 1, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.3186, 1               ; 2 uses
  %exitcond213.not = icmp eq i64 %i.ai, %i.r
  br i1 %exitcond213.not, label %.preheader, label %.lr.ph187, !llvm.loop !696

._crit_edge:                                      ; preds = %bb.a
  %i.aj = icmp eq i32 %i.q, 0
  br i1 %i.aj, label %bb.b, label %.loopexit175.thread

.preheader:                                       ; preds = %.lr.ph187, %middle.block264
  %i.ak = shl nuw nsw i64 %i.r, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.e, i8 -1, i64 %i.ak, i1 false)
  %.not243 = icmp eq i32 %i.q, 1
  br i1 %.not243, label %.loopexit175.thread, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %.preheader
  %.pre = load i32, ptr %1, align 8
  %i.al = add nsw i64 %i.r, -2
  br label %.lr.ph192

bb.b:                                             ; preds = %._crit_edge
  %i.am = call fastcc i32 @accumulate_fit(ptr noundef %3, ptr noundef %2, i32 noundef 0, i32 noundef %i.o, ptr noundef %4, i32 noundef %i.o, ptr noundef %i.m)
  %i.an = sext i32 %i.am to i64
  br label %.loopexit175

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %.lr.ph192
  %i.ao = phi i32 [ %i.ar, %.lr.ph192 ], [ %.pre, %.lr.ph192.preheader ]
  %.5191 = phi i64 [ %i.ap, %.lr.ph192 ], [ 0, %.lr.ph192.preheader ] ; 3 uses
  %.0146190 = phi i64 [ %i.av, %.lr.ph192 ], [ 0, %.lr.ph192.preheader ]
  %i.ap = add nuw nsw i64 %.5191, 1               ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %.5191
end_hunk_3
begin_hunk_4_@floor1_unpack:bb.a
  %i.je = sext i32 %i.jb to i64
  %i.jf = add nsw i64 %i.jd, %i.je
  %i.jg = icmp sgt i64 %i.jf, %i.im
  br i1 %i.jg, label %oggpack_read.exit157, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jh = load i8, ptr %.pre.i156184, align 1
  %i.ji = zext i8 %i.jh to i32
  %i.jj = lshr i32 %i.ji, %i.ja                   ; 2 uses
  %i.jk = icmp sgt i32 %i.jb, 8
  br i1 %i.jk, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.jl = getelementptr inbounds nuw i8, ptr %.pre.i156184, i64 1
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = zext i8 %i.jm to i32
  %i.jo = sub nuw nsw i32 8, %i.ja
  %i.jp = shl nuw nsw i32 %i.jn, %i.jo
  %i.jq = or i32 %i.jp, %i.jj                     ; 2 uses
  %i.jr = icmp samesign ugt i32 %i.jb, 16
  br i1 %i.jr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.js = getelementptr inbounds nuw i8, ptr %.pre.i156184, i64 2
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i32
  %i.jv = sub nuw nsw i32 16, %i.ja
  %i.jw = shl nuw nsw i32 %i.ju, %i.jv
  %i.jx = or i32 %i.jq, %i.jw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.0.i151.in = phi i32 [ %i.jx, %bb.ay ], [ %i.jj, %bb.aw ], [ %i.jq, %bb.ax ]
  %i.jy = and i32 %.0.i151.in, %i.iy
  br label %oggpack_read.exit157

oggpack_read.exit157:                             ; preds = %bb.av, %bb.az
  %.1.i152 = phi i32 [ %i.jy, %bb.az ], [ -1, %bb.av ] ; 3 uses
  %i.jz = sdiv i32 %i.jb, 8
  %i.ka = zext nneg i32 %i.jz to i64              ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.pre.i156184, i64 %i.ka ; 3 uses
  store ptr %i.kb, ptr %i.ba, align 8
  %i.kc = add nsw i64 %i.iz, %i.ka                ; 3 uses
  store i64 %i.kc, ptr %1, align 8
  %i.kd = and i32 %i.jb, 7                        ; 3 uses
  store i32 %i.kd, ptr %i.d, align 8
  %i.ke = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv202
  %i.kf = getelementptr i8, ptr %i.ke, i64 844
  store i32 %.1.i152, ptr %i.kf, align 4
  %i.kg = icmp sgt i32 %.1.i152, -1
  %.not90 = icmp sgt i32 %i.in, %.1.i152
  %or.cond = select i1 %i.kg, i1 %.not90, i1 false
  br i1 %or.cond, label %bb.ba, label %floor1_free_info.exit

bb.ba:                                            ; preds = %oggpack_read.exit157
  %indvars.iv.next203 = add nsw i64 %indvars.iv202, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next203 to i32
  %exitcond205.not = icmp eq i32 %i.iu, %lftr.wideiv
  br i1 %exitcond205.not, label %._crit_edge179.loopexit, label %bb.au, !llvm.loop !741

._crit_edge179.loopexit:                          ; preds = %bb.ba
  %.pre231 = load i32, ptr %i.c, align 4
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %._crit_edge179.loopexit, %bb.at
  %i.kh = phi i32 [ %i.io, %bb.at ], [ %.pre231, %._crit_edge179.loopexit ] ; 2 uses
  %.promoted183230 = phi ptr [ %.promoted183, %bb.at ], [ %i.kb, %._crit_edge179.loopexit ]
  %.promoted182228 = phi i64 [ %.promoted182, %bb.at ], [ %i.kc, %._crit_edge179.loopexit ]
  %.promoted181226 = phi i32 [ %.promoted181, %bb.at ], [ %i.kd, %._crit_edge179.loopexit ]
  %.280.lcssa = phi i32 [ %.179186, %bb.at ], [ %i.iu, %._crit_edge179.loopexit ]
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next207, %i.ki
  br i1 %i.kj, label %bb.at, label %._crit_edge189, !llvm.loop !742

._crit_edge189:                                   ; preds = %._crit_edge179, %oggpack_read.exit149.._crit_edge189_crit_edge
  %.pre-phi = phi i32 [ %.pre232, %oggpack_read.exit149.._crit_edge189_crit_edge ], [ %i.in, %._crit_edge179 ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 836
  store i32 0, ptr %i.kk, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 840
  store i32 %.pre-phi, ptr %i.kl, align 4
  br label %bb.bb

floor1_free_info.exit:                            ; preds = %bb.ac, %bb.ad, %oggpack_read.exit117, %oggpack_read.exit133, %bb.ak, %oggpack_read.exit157
  tail call void @free(ptr noundef nonnull %i.c) #62
  br label %bb.bb

bb.bb:                                            ; preds = %floor1_free_info.exit, %._crit_edge189
  %.076 = phi ptr [ null, %floor1_free_info.exit ], [ %i.c, %._crit_edge189 ]
  ret ptr %.076
}

; Function Attrs: nofree nounwind uwtable
define internal noalias noundef ptr @floor1_look(ptr readnone captures(none) %0, ptr noundef %1) #13 {
bb.a:
  %i.a = alloca [65 x ptr], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.b = tail call noalias dereferenceable_or_null(1328) ptr @calloc(i64 noundef 1, i64 noundef 1328) #71 ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1296
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 836 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1288 ; 2 uses
  store i32 %i.f, ptr %i.g, align 8
  %i.h = load i32, ptr %1, align 4                ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1284
  store i32 2, ptr %i.j, align 4
  br label %.lr.ph97.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp ult i32 %i.h, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.08793 = phi i32 [ 0, %.lr.ph.new ], [ %i.an, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add nsw i32 %i.r, %.08793
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add nsw i32 %i.y, %i.s
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add nsw i32 %i.af, %i.z
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add nsw i32 %i.am, %i.ag                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !743

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.08793.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.an, %._crit_edge.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.08793.epil = phi i32 [ %.08793.epil.init, %.epil.preheader ], [ %i.at, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.epil
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add nsw i32 %i.as, %.08793.epil         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !744

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.unr-lcssa
  %.lcssa = phi i32 [ %i.an, %._crit_edge.unr-lcssa ], [ %i.at, %bb.c ] ; 4 uses
  %i.au = add i32 %.lcssa, 2                      ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1284
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = icmp sgt i32 %.lcssa, -2
  br i1 %i.aw, label %.lr.ph97.preheader, label %.preheader

.lr.ph97.preheader:                               ; preds = %._crit_edge.thread, %._crit_edge
  %i.ax = phi i32 [ 2, %._crit_edge.thread ], [ %i.au, %._crit_edge ] ; 7 uses
  %.087.lcssa158 = phi i32 [ 0, %._crit_edge.thread ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %wide.trip.count120 = zext nneg i32 %smax to i64 ; 9 uses
  %min.iters.check = icmp slt i32 %i.ax, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %wide.trip.count120, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.d, <2 x i64> %vec.ind
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.d, <2 x i64> %step.add
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x ptr> %i.ay, ptr %i.ba, align 16
  store <2 x ptr> %i.az, ptr %i.bb, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count120
  br i1 %cmp.n, label %.lr.ph101, label %.lr.ph97.preheader181

.lr.ph97.preheader181:                            ; preds = %.lr.ph97.preheader, %middle.block
  %indvars.iv117.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader181, %.lr.ph97
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.lr.ph97 ], [ %indvars.iv117.ph, %.lr.ph97.preheader181 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv117
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv117
  store ptr %i.bd, ptr %i.be, align 8
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %.lr.ph101, label %.lr.ph97, !llvm.loop !746

.lr.ph101:                                        ; preds = %.lr.ph97, %middle.block
  %i.bf = sext i32 %i.ax to i64
  call void @qsort(ptr noundef nonnull %i.a, i64 noundef %i.bf, i64 noundef 8, ptr noundef nonnull @icomp) #62
  %i.bg = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 2 uses
  %smax125 = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %wide.trip.count126 = zext nneg i32 %smax125 to i64
  %min.iters.check170 = icmp slt i32 %i.ax, 4
  br i1 %min.iters.check170, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph101
  %n.vec173 = and i64 %wide.trip.count120, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph171
  %index175 = phi i64 [ 0, %vector.ph171 ], [ %index.next177, %vector.body174 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index175 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bi, align 16
  %wide.load176 = load <2 x ptr>, ptr %i.bj, align 16
  %i.bk = ptrtoint <2 x ptr> %wide.load to <2 x i64>
  %i.bl = ptrtoint <2 x ptr> %wide.load176 to <2 x i64>
  %i.bm = sub <2 x i64> %i.bk, %broadcast.splat
  %i.bn = sub <2 x i64> %i.bl, %broadcast.splat
  %i.bo = lshr exact <2 x i64> %i.bm, splat (i64 2)
  %i.bp = lshr exact <2 x i64> %i.bn, splat (i64 2)
  %i.bq = trunc <2 x i64> %i.bo to <2 x i32>
  %i.br = trunc <2 x i64> %i.bp to <2 x i32>
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index175 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <2 x i32> %i.bq, ptr %i.bs, align 4
  store <2 x i32> %i.br, ptr %i.bt, align 4
  %index.next177 = add nuw i64 %index175, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next177, %n.vec173
  br i1 %i.bu, label %middle.block178, label %vector.body174, !llvm.loop !747

middle.block178:                                  ; preds = %vector.body174
  %cmp.n179 = icmp eq i64 %n.vec173, %wide.trip.count120
  br i1 %cmp.n179, label %.lr.ph103, label %scalar.ph169.preheader

scalar.ph169.preheader:                           ; preds = %.lr.ph101, %middle.block178
  %indvars.iv122.ph = phi i64 [ 0, %.lr.ph101 ], [ %n.vec173, %middle.block178 ]
  br label %scalar.ph169

.lr.ph103:                                        ; preds = %scalar.ph169, %middle.block178
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 5 uses
  %xtraiter185 = and i64 %wide.trip.count120, 3   ; 3 uses
  %i.bx = icmp slt i32 %i.ax, 4
  br i1 %i.bx, label %.epil.preheader184, label %.lr.ph103.new

.lr.ph103.new:                                    ; preds = %.lr.ph103
  %unroll_iter189 = and i64 %wide.trip.count120, 2147483644
  br label %bb.e

scalar.ph169:                                     ; preds = %scalar.ph169.preheader, %scalar.ph169
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %scalar.ph169 ], [ %indvars.iv122.ph, %scalar.ph169.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv122
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bg
  %i.cc = lshr exact i64 %i.cb, 2
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv122
  store i32 %i.cd, ptr %i.ce, align 4
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count126
  br i1 %exitcond127.not, label %.lr.ph103, label %scalar.ph169, !llvm.loop !748

.preheader:                                       ; preds = %._crit_edge
  %i.cf = sext i32 %i.au to i64
  call void @qsort(ptr noundef nonnull %i.a, i64 noundef %i.cf, i64 noundef 8, ptr noundef nonnull @icomp) #62
  br label %._crit_edge106

.lr.ph105.unr-lcssa:                              ; preds = %bb.e
  %lcmp.mod187.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod187.not, label %.lr.ph105, label %.epil.preheader184

.epil.preheader184:                               ; preds = %.lr.ph105.unr-lcssa, %.lr.ph103
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next129.3, %.lr.ph105.unr-lcssa ]
  %lcmp.mod188 = icmp ne i64 %xtraiter185, 0
  call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader184
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.epil.preheader184 ], [ %indvars.iv.next129.epil, %bb.d ] ; 3 uses
  %epil.iter186 = phi i64 [ 0, %.epil.preheader184 ], [ %epil.iter186.next, %bb.d ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv128.epil
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv128.epil to i32
  store i32 %i.ck, ptr %i.cj, align 4
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter186.next = add i64 %epil.iter186, 1   ; 2 uses
  %epil.iter186.cmp.not = icmp eq i64 %epil.iter186.next, %xtraiter185
  br i1 %epil.iter186.cmp.not, label %.lr.ph105, label %bb.d, !llvm.loop !749

.lr.ph105:                                        ; preds = %bb.d, %.lr.ph105.unr-lcssa
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 5 uses
  %xtraiter192 = and i64 %wide.trip.count120, 3   ; 3 uses
  %i.cm = icmp slt i32 %i.ax, 4
  br i1 %i.cm, label %.epil.preheader191, label %.lr.ph105.new

.lr.ph105.new:                                    ; preds = %.lr.ph105
  %unroll_iter196 = and i64 %wide.trip.count120, 2147483644
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph103.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph103.new ], [ %indvars.iv.next129.3, %bb.e ] ; 6 uses
  %niter190 = phi i64 [ 0, %.lr.ph103.new ], [ %niter190.next.3, %bb.e ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv128
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cp
  %i.cr = trunc nuw nsw i64 %indvars.iv128 to i32
  store i32 %i.cr, ptr %i.cq, align 4
  %indvars.iv.next129 = or disjoint i64 %indvars.iv128, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next129
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv.next129 to i32
  store i32 %i.cw, ptr %i.cv, align 4
  %indvars.iv.next129.1 = or disjoint i64 %indvars.iv128, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next129.1
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cz
  %i.db = trunc nuw nsw i64 %indvars.iv.next129.1 to i32
  store i32 %i.db, ptr %i.da, align 4
  %indvars.iv.next129.2 = or disjoint i64 %indvars.iv128, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next129.2
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.de
  %i.dg = trunc nuw nsw i64 %indvars.iv.next129.2 to i32
  store i32 %i.dg, ptr %i.df, align 4
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter190.next.3 = add i64 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i64 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %.lr.ph105.unr-lcssa, label %bb.e, !llvm.loop !750

bb.f:                                             ; preds = %bb.f, %.lr.ph105.new
  %indvars.iv134 = phi i64 [ 0, %.lr.ph105.new ], [ %indvars.iv.next135.3, %bb.f ] ; 6 uses
  %niter197 = phi i64 [ 0, %.lr.ph105.new ], [ %niter197.next.3, %bb.f ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv134
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv134
  store i32 %i.dl, ptr %i.dm, align 4
  %indvars.iv.next135 = or disjoint i64 %indvars.iv134, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next135
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next135
  store i32 %i.dr, ptr %i.ds, align 4
  %indvars.iv.next135.1 = or disjoint i64 %indvars.iv134, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next135.1
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next135.1
  store i32 %i.dx, ptr %i.dy, align 4
  %indvars.iv.next135.2 = or disjoint i64 %indvars.iv134, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next135.2
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next135.2
  store i32 %i.ed, ptr %i.ee, align 4
  %indvars.iv.next135.3 = add nuw nsw i64 %indvars.iv134, 4 ; 2 uses
  %niter197.next.3 = add i64 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %._crit_edge106.loopexit.unr-lcssa, label %bb.f, !llvm.loop !751

._crit_edge106.loopexit.unr-lcssa:                ; preds = %bb.f
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %._crit_edge106, label %.epil.preheader191

.epil.preheader191:                               ; preds = %._crit_edge106.loopexit.unr-lcssa, %.lr.ph105
  %indvars.iv134.epil.init = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next135.3, %._crit_edge106.loopexit.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader191
  %indvars.iv134.epil = phi i64 [ %indvars.iv134.epil.init, %.epil.preheader191 ], [ %indvars.iv.next135.epil, %bb.g ] ; 3 uses
  %epil.iter193 = phi i64 [ 0, %.epil.preheader191 ], [ %epil.iter193.next, %bb.g ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv134.epil
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv134.epil
  store i32 %i.ej, ptr %i.ek, align 4
  %indvars.iv.next135.epil = add nuw nsw i64 %indvars.iv134.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %._crit_edge106, label %bb.g, !llvm.loop !752

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit.unr-lcssa, %bb.g, %.preheader
  %.087.lcssa157160163166 = phi i32 [ %.lcssa, %.preheader ], [ %.087.lcssa158, %bb.g ], [ %.087.lcssa158, %._crit_edge106.loopexit.unr-lcssa ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.em = load i32, ptr %i.el, align 4
  %switch.tableidx = add i32 %i.em, -1            ; 2 uses
  %i.en = icmp ult i32 %switch.tableidx, 4
  br i1 %i.en, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %._crit_edge106
  %i.eo = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.floor1_look, i64 %i.eo
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 1292
  store i32 %switch.load, ptr %i.ep, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge106, %switch.lookup
  %i.eq = icmp sgt i32 %.087.lcssa157160163166, 0
  br i1 %i.eq, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.h
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 1032
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 780
  %wide.trip.count154 = zext nneg i32 %.087.lcssa157160163166 to i64
  br label %.new

.new:                                             ; preds = %.lr.ph114, %bb.j
  %indvars.iv149 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next150, %bb.j ] ; 4 uses
  %indvars.iv147 = phi i64 [ 2, %.lr.ph114 ], [ %indvars.iv.next148, %bb.j ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv149
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
end_hunk_4
