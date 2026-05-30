inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@tt_glyph_load:bb.a
.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 65532
  br label %bb.ay

.preheader.i.i.i.loopexit.unr-lcssa:              ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %.preheader.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod62 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod62)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.ax ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %indvars.iv.i.i.i.epil
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv.i.i.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oj, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i8 0, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i, label %bb.ax, !llvm.loop !229

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.loopexit.unr-lcssa, %bb.ax, %.preheader30.i.i.i
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.om = load i16, ptr %i.ol, align 8, !tbaa !217 ; 2 uses
  %.not35.i.i.i = icmp eq i16 %i.om, 0
  br i1 %.not35.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph33.i.i.i

.lr.ph33.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !183
  %i.op = zext i16 %i.om to i64
  %i.oq = shl nuw nsw i64 %i.op, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.oo, i8 0, i64 %i.oq, i1 false), !tbaa !223
  br label %._crit_edge.i.i.i

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.ay ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.ay ]
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %indvars.iv.i.i.i
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.or, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.os, i8 0, i64 16, i1 false)
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %indvars.iv.next.i.i.i
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv.next.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ot, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ou, i8 0, i64 16, i1 false)
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %indvars.iv.next.i.i.i.1
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv.next.i.i.i.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ov, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ow, i8 0, i64 16, i1 false)
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %indvars.iv.next.i.i.i.2
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv.next.i.i.i.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, i8 0, i64 16, i1 false)
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !231

._crit_edge.i.i.i:                                ; preds = %.lr.ph33.i.i.i, %.preheader.i.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.oz, ptr noundef nonnull align 8 dereferenceable(96) @tt_default_graphics_state, i64 96, i1 false), !tbaa.struct !222
  %i.pa = call fastcc i32 @tt_size_run_prep(ptr noundef nonnull %1, i8 noundef zeroext range(i8 0, 2) %i.jp)
  br label %tt_size_ready_bytecode.exit.i.i

tt_size_ready_bytecode.exit.i.i:                  ; preds = %._crit_edge.i.i.i, %bb.aw
  %.127.i.i.i = phi i32 [ %i.oa, %bb.aw ], [ %i.pa, %._crit_edge.i.i.i ] ; 2 uses
  %.not122.i.i = icmp eq i32 %.127.i.i.i, 0
  br i1 %.not122.i.i, label %bb.bb, label %TT_Load_Glyph.exit

bb.az:                                            ; preds = %bb.ah
  %.not.i182.i = icmp eq i32 %i.jt, 0
  br i1 %.not.i182.i, label %bb.ba, label %TT_Load_Glyph.exit

bb.ba:                                            ; preds = %bb.az
  %.not121.i.i = icmp eq i32 %i.jw, 0
  br i1 %.not121.i.i, label %bb.bb, label %TT_Load_Glyph.exit

bb.bb:                                            ; preds = %bb.ba, %tt_size_ready_bytecode.exit.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !184 ; 16 uses
  %.not123.i.i = icmp eq ptr %i.pc, null
  br i1 %.not123.i.i, label %TT_Load_Glyph.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pd = and i32 %.2, 983040
  %i.pe = icmp ne i32 %i.pd, 131072               ; 2 uses
  %i.pf = zext i1 %i.pe to i8                     ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.jr, i64 120 ; 3 uses
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !7
  %i.pi = icmp eq i32 %i.ph, 40
  br i1 %i.pi, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.pj = and i32 %.2, 458752
  %.not124.i.i = icmp eq i32 %i.pj, 0
  %narrow.i.i = and i1 %i.pe, %.not124.i.i
  %i.pk = zext i1 %narrow.i.i to i8
  %i.pl = lshr i32 %.2, 18
  %i.pm = trunc i32 %i.pl to i8
  %i.pn = and i8 %i.pm, 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink.i.i = phi i8 [ %i.pn, %bb.bd ], [ 0, %bb.bc ]
  %.0110.i.i = phi i8 [ 0, %bb.bd ], [ %i.pf, %bb.bc ] ; 4 uses
  %.0109.i.i = phi i8 [ %i.pf, %bb.bd ], [ 0, %bb.bc ] ; 3 uses
  %.0108.i.i = phi i8 [ %i.pk, %bb.bd ], [ 0, %bb.bc ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pc, i64 1098
  store i8 %.sink.i.i, ptr %i.po, align 2, !tbaa !233
  %i.pp = call fastcc i32 @TT_Load_Context(ptr noundef nonnull %i.pc, ptr noundef nonnull %i.jk, ptr noundef nonnull %1) ; 2 uses
  %.not125.i.i = icmp eq i32 %i.pp, 0
  br i1 %.not125.i.i, label %bb.bf, label %TT_Load_Glyph.exit

bb.bf:                                            ; preds = %bb.be
  %i.pq = load i32, ptr %i.pg, align 8, !tbaa !7
  %i.pr = icmp eq i32 %i.pq, 40
  br i1 %i.pr, label %bb.bg, label %.thread188.i

bb.bg:                                            ; preds = %bb.bf
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pc, i64 1097 ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !234
  %.not126.i.i = icmp eq i8 %.0109.i.i, %i.pt     ; 2 uses
  br i1 %.not126.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i8 %.0109.i.i, ptr %i.ps, align 1, !tbaa !234
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pc, i64 1102 ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 2, !tbaa !235
  %.not127.i.i = icmp eq i8 %.0108.i.i, %i.pv
  br i1 %.not127.i.i, label %bb.bj, label %.thread.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pc, i64 1096 ; 2 uses
  %i.px = load i8, ptr %i.pw, align 8, !tbaa !236
  %.not128.i.i = icmp eq i8 %.0110.i.i, %i.px
  br i1 %.not128.i.i, label %bb.bk, label %.thread142.i.i

.thread188.i:                                     ; preds = %bb.bf
  %i.py = getelementptr inbounds nuw i8, ptr %i.pc, i64 1096 ; 2 uses
  %i.pz = load i8, ptr %i.py, align 8, !tbaa !236
  %.not128.i190.i = icmp eq i8 %.0110.i.i, %i.pz
  br i1 %.not128.i190.i, label %.thread192.i, label %.thread142.i.i

.thread.i.i:                                      ; preds = %bb.bi
  store i8 %.0108.i.i, ptr %i.pu, align 2, !tbaa !235
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pc, i64 1096 ; 2 uses
  %i.qb = load i8, ptr %i.qa, align 8, !tbaa !236
  %.not128166.i.i = icmp eq i8 %.0110.i.i, %i.qb
  br i1 %.not128166.i.i, label %.thread168.i.i, label %.thread142.i.i

.thread142.i.i:                                   ; preds = %.thread.i.i, %.thread188.i, %bb.bj
  %i.qc = phi ptr [ %i.qa, %.thread.i.i ], [ %i.pw, %bb.bj ], [ %i.py, %.thread188.i ]
  store i8 %.0110.i.i, ptr %i.qc, align 8, !tbaa !236
  br label %.thread168.i.i

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not126.i.i, label %.thread192.i, label %.thread168.i.i

.thread168.i.i:                                   ; preds = %bb.bk, %.thread142.i.i, %.thread.i.i
  %i.qd = call fastcc i32 @tt_size_run_prep(ptr noundef nonnull %1, i8 noundef zeroext %i.jp) ; 2 uses
  %.not130.i.i = icmp eq i32 %i.qd, 0
  br i1 %.not130.i.i, label %bb.bl, label %TT_Load_Glyph.exit

bb.bl:                                            ; preds = %.thread168.i.i
  %i.qe = call fastcc i32 @TT_Load_Context(ptr noundef nonnull %i.pc, ptr noundef nonnull %i.jk, ptr noundef nonnull %1) ; 2 uses
  %.not131.i.i = icmp eq i32 %i.qe, 0
  br i1 %.not131.i.i, label %.thread192.i, label %TT_Load_Glyph.exit

.thread192.i:                                     ; preds = %bb.bl, %bb.bk, %.thread188.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pc, i64 612
  %i.qg = load i8, ptr %i.qf, align 4, !tbaa !237 ; 3 uses
  %i.qh = shl i8 %i.qg, 1
  %i.qi = and i8 %i.qh, 2
  %i.qj = zext nneg i8 %i.qi to i32
  %spec.select.i.i = or disjoint i32 %.2, %i.qj
  %i.qk = and i8 %i.qg, 2
  %.not133.i.i = icmp eq i8 %i.qk, 0
  br i1 %.not133.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.thread192.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pc, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ql, ptr noundef nonnull align 8 dereferenceable(96) @tt_default_graphics_state, i64 96, i1 false), !tbaa.struct !222
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.thread192.i
  %i.qm = phi i8 [ 0, %bb.bm ], [ %i.qg, %.thread192.i ]
  %i.qn = load i32, ptr %i.pg, align 8, !tbaa !7
  %i.qo = icmp eq i32 %i.qn, 40                   ; 2 uses
  %6 = trunc nuw i8 %.0109.i.i to i1
  %or.cond4.i.i = and i1 %i.qo, %6
  br i1 %or.cond4.i.i, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.qp = load ptr, ptr %i.k, align 8, !tbaa !127
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !73
  %i.qs = and i64 %i.qr, 8192
  %.not134.i.i = icmp eq i64 %i.qs, 0
  br i1 %.not134.i.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qt = lshr i8 %i.qm, 2                        ; 2 uses
  %.lobit.i.i = and i8 %i.qt, 1
  %i.qu = xor i8 %.lobit.i.i, 1
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pc, i64 1099
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !238
  %i.qw = trunc i8 %i.qt to i1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pc, i64 1099
  store i8 0, ptr %i.qx, align 1, !tbaa !238
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.not137.i.i = phi i1 [ true, %bb.bq ], [ %i.qw, %bb.bp ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pc, i64 1001
  store i8 %i.jp, ptr %i.qy, align 1, !tbaa !239
  %i.qz = getelementptr inbounds nuw i8, ptr %5, i64 272
  store ptr %i.pc, ptr %i.qz, align 8, !tbaa !240
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pc, i64 720
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !195
  %i.rc = getelementptr inbounds nuw i8, ptr %5, i64 280
  store ptr %i.rb, ptr %i.rc, align 8, !tbaa !241
  %i.rd = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !162
  %i.rf = and i64 %i.re, 2097154
  %or.cond139.i.i = icmp eq i64 %i.rf, 0
  %.not171.i.i = xor i1 %i.qo, true
  %brmerge.i.i = or i1 %.not137.i.i, %.not171.i.i
  %or.cond174.i.i = and i1 %brmerge.i.i, %or.cond139.i.i
  br i1 %or.cond174.i.i, label %bb.bs, label %.thread150.sink.split.i.i

bb.bs:                                            ; preds = %bb.br
  %i.rg = getelementptr inbounds nuw i8, ptr %i.jk, i64 776
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !242
  %.not138.i.i = icmp eq i64 %i.rh, 0
  br i1 %.not138.i.i, label %bb.bt, label %.thread150.sink.split.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !243
  br label %.thread150.sink.split.i.i

.thread150.sink.split.i.i:                        ; preds = %bb.bt, %bb.bs, %bb.br
  %.sink172.i.i = phi ptr [ %i.rj, %bb.bt ], [ null, %bb.bs ], [ null, %bb.br ]
  %i.rk = getelementptr inbounds nuw i8, ptr %5, i64 376
  store ptr %.sink172.i.i, ptr %i.rk, align 8, !tbaa !244
  br label %bb.bu

bb.bu:                                            ; preds = %.thread150.sink.split.i.i, %bb.af
  %.2113152.i.i = phi i32 [ %spec.select.i.i, %.thread150.sink.split.i.i ], [ %.2, %bb.af ]
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !118
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !125 ; 2 uses
  call void @FT_GlyphLoader_Rewind(ptr noundef %i.rn) #22
  %i.ro = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !245
  %i.rp = sext i32 %.2113152.i.i to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.rp, ptr %i.rq, align 8, !tbaa !162
  store ptr %i.jk, ptr %5, align 8, !tbaa !166
  %i.rr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.rr, align 8, !tbaa !167
  %i.rs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.rs, align 8, !tbaa !168
  %i.rt = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.jm, ptr %i.rt, align 8, !tbaa !169
  %i.ru = getelementptr inbounds nuw i8, ptr %5, i64 360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ru, i8 0, i64 16, i1 false)
  %i.rv = and i32 %.2, 256
  %.not173.i = icmp eq i32 %i.rv, 0
  br i1 %.not173.i, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rw = and i32 %.2, 16
  %i.rx = icmp eq i32 %i.rw, 0
  %i.ry = getelementptr inbounds nuw i8, ptr %5, i64 376
  %i.rz = load ptr, ptr %i.ry, align 8            ; 2 uses
  %i.sa = icmp ne ptr %i.rz, null
  %or.cond7.i = select i1 %i.rx, i1 %i.sa, i1 false
  br i1 %or.cond7.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.sb = zext i32 %2 to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !224
  %i.se = zext i8 %i.sd to i64
  %i.sf = shl nuw nsw i64 %i.se, 6
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.sf, ptr %i.sg, align 8, !tbaa !143
  br label %bb.cm

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 1869968492, ptr %i.sh, align 8, !tbaa !147
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store i32 0, ptr %i.si, align 8, !tbaa !246
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 7 uses
  store i32 0, ptr %i.sk, align 8, !tbaa !247
  %i.sl = call fastcc i32 @load_truetype_glyph(ptr noundef %5, i32 noundef %2, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not174.i = icmp eq i32 %i.sl, 0
  br i1 %.not174.i, label %bb.by, label %bb.cj

bb.by:                                            ; preds = %bb.bx
  %i.sm = load i32, ptr %i.sh, align 8, !tbaa !147
  %i.sn = icmp eq i32 %i.sm, 1668246896
  %i.so = load ptr, ptr %i.ro, align 8, !tbaa !245 ; 3 uses
  br i1 %i.sn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 80
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !248
  store i32 %i.sq, ptr %i.si, align 8, !tbaa !246
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 88
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !251
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.ss, ptr %i.st, align 8, !tbaa !252
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.sj, ptr noundef nonnull align 8 dereferenceable(40) %i.su, i64 40, i1 false), !tbaa.struct !253
  %i.sv = load i32, ptr %i.sk, align 8, !tbaa !247
  %i.sw = and i32 %i.sv, -513
  store i32 %i.sw, ptr %i.sk, align 8, !tbaa !247
  %i.sx = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !257 ; 2 uses
  %.not175.i = icmp eq i64 %i.sy, 0
  br i1 %.not175.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sz = sub nsw i64 0, %i.sy
  call void @FT_Outline_Translate(ptr noundef nonnull %i.sj, i64 noundef %i.sz, i64 noundef 0) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  br i1 %.not40, label %bb.cd, label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.ta = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !240 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 720
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !195
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.td, ptr %i.te, align 8, !tbaa !258
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 712
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !196
  %i.th = zext i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.th, ptr %i.ti, align 8, !tbaa !259
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 613
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !260
  %.not176.i = icmp eq i8 %i.tk, 0
  br i1 %.not176.i, label %.sink.split.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tb, i64 616
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !261
  switch i32 %i.tm, label %bb.ch [
    i32 0, label %.sink.split.i
    i32 1, label %bb.ci
    i32 4, label %bb.cf
    i32 5, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  br label %.sink.split.i

bb.cg:                                            ; preds = %bb.ce
  br label %.sink.split.i

bb.ch:                                            ; preds = %bb.ce
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %.sink233.i = phi i32 [ 32, %bb.ce ], [ 8, %bb.ch ], [ 16, %bb.cg ], [ 48, %bb.cf ], [ 8, %bb.cd ]
  %i.tn = load i32, ptr %i.sk, align 8, !tbaa !247
  %i.to = or i32 %i.tn, %.sink233.i
  store i32 %i.to, ptr %i.sk, align 8, !tbaa !247
  br label %bb.ci

bb.ci:                                            ; preds = %.sink.split.i, %bb.ce, %bb.cc
  %i.tp = call fastcc i32 @compute_glyph_metrics(ptr noundef %5, i32 noundef %2)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bx
  %.0135.i = phi i32 [ %i.sl, %bb.bx ], [ %i.tp, %bb.ci ] ; 3 uses
  br i1 %.not166.i, label %bb.ck, label %bb.cm
end_hunk_0
begin_hunk_1_@load_truetype_glyph:bb.a

.thread71.i:                                      ; preds = %bb.r, %bb.h
  %.054657075.i = phi i64 [ 0, %bb.h ], [ %.054.i, %bb.r ] ; 2 uses
  %.pn.i = phi i64 [ 0, %bb.h ], [ %spec.select.i, %bb.r ]
  %storemerge.i = sub i64 %.pn.i, %.054657075.i
  %i.cm = trunc i64 %storemerge.i to i32
  br label %tt_face_get_location.exit

tt_face_get_location.exit:                        ; preds = %bb.o, %bb.q, %.thread71.i
  %storemerge.sink.i = phi i32 [ %i.cm, %.thread71.i ], [ 0, %bb.o ], [ 0, %bb.q ] ; 2 uses
  %.055.i = phi i64 [ %.054657075.i, %.thread71.i ], [ 0, %bb.o ], [ 0, %bb.q ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %storemerge.sink.i, ptr %i.cn, align 8, !tbaa !748
  br label %bb.s

bb.s:                                             ; preds = %tt_face_get_location.exit, %bb.g
  %i.co = phi i32 [ %.pre, %bb.g ], [ %storemerge.sink.i, %tt_face_get_location.exit ] ; 2 uses
  %.0261 = phi i64 [ 0, %bb.g ], [ %.055.i, %tt_face_get_location.exit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.not289 = icmp eq i32 %i.co, 0
  br i1 %.not289, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 1200
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !750 ; 2 uses
  %.not290 = icmp eq i64 %i.cr, 0
  br i1 %.not290, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cs = load ptr, ptr %i.ab, align 8, !tbaa !738
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !76
  %.not291 = icmp eq ptr %i.cu, null
  br i1 %.not291, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 8, ptr %i.e, align 4, !tbaa !3
  br label %.thread355

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 840
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !84
  %i.cx = add i64 %i.cr, %.0261
  %i.cy = call i32 %i.cw(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.cx, i32 noundef %i.co) #22 ; 2 uses
  store i32 %i.cy, ptr %i.e, align 4, !tbaa !3
  %.not292 = icmp eq i32 %i.cy, 0
  br i1 %.not292, label %bb.x, label %.thread355

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 856
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !85
  %i.db = call i32 %i.da(ptr noundef nonnull %0) #22
  store i32 %i.db, ptr %i.e, align 4, !tbaa !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 848
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !88
  call void %i.dd(ptr noundef nonnull %0) #22
  %i.de = load i32, ptr %i.e, align 4, !tbaa !3
  %.not293 = icmp eq i32 %i.de, 0
  br i1 %.not293, label %bb.y, label %.thread355

bb.y:                                             ; preds = %bb.x
  %.pr = load i32, ptr %i.cp, align 8, !tbaa !748
  %i.df = icmp eq i32 %.pr, 0
  br i1 %i.df, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !751
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.s, %bb.z, %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i8 0, i64 32, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z
  %i.dk = load ptr, ptr %0, align 8, !tbaa !166   ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !169 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i16 0, ptr %i.a, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i16 0, ptr %i.b, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i16 0, ptr %i.c, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i16 0, ptr %i.d, align 2, !tbaa !135
  %i.dn = call i64 @FT_Stream_Pos(ptr noundef %i.dm) #22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 880 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !91
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 320
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !137
  call void %i.dr(ptr noundef %i.dk, i8 noundef zeroext 0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #22, !inline_history !752
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 496
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !266
  %.not.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !91
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 320
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !137
  call void %i.dw(ptr noundef nonnull %i.dk, i8 noundef zeroext 1, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #22, !inline_history !753
  br label %TT_Get_VMetrics.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !754
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 616
  %i.ea = load i16, ptr %i.dz, align 8, !tbaa !267
  %.not28.i.i = icmp eq i16 %i.ea, -1
  %i.eb = trunc i64 %i.dy to i16                  ; 2 uses
  br i1 %.not28.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 706
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !274 ; 2 uses
  %i.ee = sub i16 %i.ed, %i.eb
  store i16 %i.ee, ptr %i.b, align 2, !tbaa !135
  %i.ef = sext i16 %i.ed to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 708
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !275
  %i.ei = sext i16 %i.eh to i32
  %i.ej = sub nsw i32 %i.ef, %i.ei
  %i.ek = call i32 @llvm.abs.i32(i32 %i.ej, i1 true)
  %i.el = trunc nuw i32 %i.ek to i16
  store i16 %i.el, ptr %i.d, align 2, !tbaa !135
  br label %TT_Get_VMetrics.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %i.dk, i64 408
  %i.en = load i16, ptr %i.em, align 8, !tbaa !268 ; 2 uses
  %i.eo = sub i16 %i.en, %i.eb
  store i16 %i.eo, ptr %i.b, align 2, !tbaa !135
  %i.ep = sext i16 %i.en to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dk, i64 410
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !269
  %i.es = sext i16 %i.er to i32
  %i.et = sub nsw i32 %i.ep, %i.es
  %i.eu = call i32 @llvm.abs.i32(i32 %i.et, i1 true)
  %i.ev = trunc nuw i32 %i.eu to i16
  store i16 %i.ev, ptr %i.d, align 2, !tbaa !135
  br label %TT_Get_VMetrics.exit.i

TT_Get_VMetrics.exit.i:                           ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.ew = call i32 @FT_Stream_Seek(ptr noundef %i.dm, i64 noundef %i.dn) #22 ; 2 uses
  %.not.i327 = icmp eq i32 %i.ew, 0
  br i1 %.not.i327, label %bb.af, label %tt_get_metrics.exit.thread

tt_get_metrics.exit.thread:                       ; preds = %TT_Get_VMetrics.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i32 %i.ew, ptr %i.e, align 4, !tbaa !3
  br label %.thread355

bb.af:                                            ; preds = %TT_Get_VMetrics.exit.i
  %i.ex = load i16, ptr %i.a, align 2, !tbaa !135 ; 3 uses
  %i.ey = sext i16 %i.ex to i32                   ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !755
  %i.fa = load i16, ptr %i.c, align 2, !tbaa !135 ; 3 uses
  %i.fb = zext i16 %i.fa to i32                   ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !756
  %i.fd = load i16, ptr %i.b, align 2, !tbaa !135
  %i.fe = sext i16 %i.fd to i32                   ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !757
  %i.fg = load i16, ptr %i.d, align 2, !tbaa !135
  %i.fh = zext i16 %i.fg to i32                   ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 7 uses
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !173
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dk, i64 240
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !738
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 104
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !76
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.ag, label %tt_get_metrics.exit

bb.ag:                                            ; preds = %bb.af
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 4, !tbaa !758
  %.not20.i = icmp eq i8 %i.fp, 0
  br i1 %.not20.i, label %bb.ah, label %tt_get_metrics.exit

bb.ah:                                            ; preds = %bb.ag
  store i8 1, ptr %i.fo, align 4, !tbaa !758
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.fb, ptr %i.fq, align 8, !tbaa !171
  br label %tt_get_metrics.exit

tt_get_metrics.exit:                              ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.e, align 4, !tbaa !3
  %13 = trunc nuw i8 %3 to i1
  br i1 %13, label %.thread355, label %bb.ai

bb.ai:                                            ; preds = %tt_get_metrics.exit
  %i.fr = load i32, ptr %i.cp, align 8, !tbaa !748
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.fu = load i16, ptr %i.ft, align 4, !tbaa !751
  %i.fv = icmp eq i16 %i.fu, 0
  br i1 %i.fv, label %bb.ak, label %bb.az

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fw = load ptr, ptr %0, align 8, !tbaa !166   ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 240
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !738
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 104
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !76 ; 3 uses
  %.not.i328 = icmp eq ptr %i.ga, null
  br i1 %.not.i328, label %tt_get_metrics_incremental.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !739
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !759 ; 2 uses
  %.not22.i = icmp eq ptr %i.gd, null
  br i1 %.not22.i, label %tt_get_metrics_incremental.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ge = sext i16 %i.ex to i64
  store i64 %i.ge, ptr %5, align 8, !tbaa !760
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.gf, align 8, !tbaa !762
  %i.gg = zext i16 %i.fa to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !763
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.gi, align 8, !tbaa !764
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !745
  %i.gl = call i32 %i.gd(ptr noundef %i.gk, i32 noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %5) #22, !inline_history !765
  %.not23.i = icmp eq i32 %i.gl, 0
  br i1 %.not23.i, label %bb.an, label %._crit_edge437

._crit_edge437:                                   ; preds = %bb.am
  %.pre427.pre.a = load i32, ptr %i.ez, align 8, !tbaa !755
  %.pre428.pre.a = load i32, ptr %i.fc, align 4, !tbaa !756
  %.pre429.pre.a = load i32, ptr %i.ff, align 8, !tbaa !757
  %.pre430.pre = load i32, ptr %i.fi, align 4, !tbaa !173
  br label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.gm = load i64, ptr %5, align 8, !tbaa !760
  %i.gn = trunc i64 %i.gm to i16
  %i.go = load i64, ptr %i.gh, align 8, !tbaa !763
  %i.gp = trunc i64 %i.go to i32
  %i.gq = sext i16 %i.gn to i32                   ; 3 uses
  store i32 %i.gq, ptr %i.ez, align 8, !tbaa !755
  %i.gr = and i32 %i.gp, 65535                    ; 4 uses
  store i32 %i.gr, ptr %i.fc, align 4, !tbaa !756
  store i32 0, ptr %i.ff, align 8, !tbaa !757
  store i32 0, ptr %i.fi, align 4, !tbaa !173
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 4, !tbaa !758
  %.not24.i = icmp eq i8 %i.gt, 0
  br i1 %.not24.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i8 1, ptr %i.gs, align 4, !tbaa !758
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.gr, ptr %i.gu, align 8, !tbaa !171
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge437, %bb.ao, %bb.an
  %.pre430.a = phi i32 [ %.pre430.pre, %._crit_edge437 ], [ 0, %bb.ao ], [ 0, %bb.an ]
  %.pre429 = phi i32 [ %.pre429.pre.a, %._crit_edge437 ], [ 0, %bb.ao ], [ 0, %bb.an ]
  %.pre428 = phi i32 [ %.pre428.pre.a, %._crit_edge437 ], [ %i.gr, %bb.ao ], [ %i.gr, %bb.an ]
  %.pre427 = phi i32 [ %.pre427.pre.a, %._crit_edge437 ], [ %i.gq, %bb.ao ], [ %i.gq, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pre431 = load ptr, ptr %0, align 8, !tbaa !166
  br label %tt_get_metrics_incremental.exit

tt_get_metrics_incremental.exit:                  ; preds = %bb.ak, %bb.al, %bb.ap
  %i.gv = phi ptr [ %i.fw, %bb.ak ], [ %i.fw, %bb.al ], [ %.pre431, %bb.ap ]
  %i.gw = phi i32 [ %i.fh, %bb.ak ], [ %i.fh, %bb.al ], [ %.pre430.a, %bb.ap ]
  %i.gx = phi i32 [ %i.fe, %bb.ak ], [ %i.fe, %bb.al ], [ %.pre429, %bb.ap ]
  %i.gy = phi i32 [ %i.fb, %bb.ak ], [ %i.fb, %bb.al ], [ %.pre428, %bb.ap ] ; 2 uses
  %i.gz = phi i32 [ %i.ey, %bb.ak ], [ %i.ey, %bb.al ], [ %.pre427, %bb.ap ]
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !766
  %i.hc = sext i32 %i.gz to i64
  %i.hd = sub nsw i64 %i.hb, %i.hc                ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !257
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.hf, align 8, !tbaa !767
  %i.hg = sext i32 %i.gy to i64
  %i.hh = add nsw i64 %i.hd, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !768
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.hj, align 8, !tbaa !769
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  store i64 0, ptr %i.hk, align 8, !tbaa !770
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !754
  %i.hn = sext i32 %i.gx to i64
  %i.ho = add nsw i64 %i.hm, %i.hn                ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !771
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  store i64 0, ptr %i.hq, align 8, !tbaa !772
  %i.hr = sext i32 %i.gw to i64
  %i.hs = sub nsw i64 %i.ho, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !773
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gv, i64 176
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !31
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 120
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !7
  %i.hy = icmp eq i32 %i.hx, 40
  br i1 %i.hy, label %bb.aq, label %tt_loader_set_pp.exit

bb.aq:                                            ; preds = %tt_get_metrics_incremental.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !240 ; 3 uses
  %.not.i329 = icmp eq ptr %i.ia, null
  br i1 %.not.i329, label %tt_loader_set_pp.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 1097
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !234
  %.not25.i = icmp eq i8 %i.ic, 0
  br i1 %.not25.i, label %tt_loader_set_pp.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 1102
  %i.ie = load i8, ptr %i.id, align 2, !tbaa !235
  %.not26.i = icmp eq i8 %i.ie, 0
  br i1 %.not26.i, label %tt_loader_set_pp.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.if = sdiv i32 %i.gy, 2
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  store i64 %i.ig, ptr %i.hk, align 8, !tbaa !770
  store i64 %i.ig, ptr %i.hq, align 8, !tbaa !772
  br label %tt_loader_set_pp.exit

tt_loader_set_pp.exit:                            ; preds = %tt_get_metrics_incremental.exit, %bb.aq, %bb.ar, %bb.as, %bb.at
  %i.ih = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !130
  %i.ij = and i64 %i.ii, 2147418112
  %.not319 = icmp eq i64 %i.ij, 0
  br i1 %.not319, label %bb.au, label %bb.av

bb.au:                                            ; preds = %tt_loader_set_pp.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !73
  %i.im = and i64 %i.il, 32768
  %.not320 = icmp eq i64 %i.im, 0
  br i1 %.not320, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %tt_loader_set_pp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !437
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i64 16, i1 false), !tbaa.struct !437
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !tbaa.struct !437
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ip, ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i64 16, i1 false), !tbaa.struct !437
  %i.iq = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 0, ptr %i.iq, align 2, !tbaa !774
  store i16 0, ptr %9, align 8, !tbaa !775
  %i.ir = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.ir, align 8, !tbaa !776
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, i8 0, i64 16, i1 false)
  %i.it = call fastcc i32 @TT_Vary_Apply_Glyph_Deltas(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) ; 2 uses
  store i32 %i.it, ptr %i.e, align 4, !tbaa !3
  %.not321 = icmp eq i32 %i.it, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.not321, label %bb.aw, label %.thread355

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.iu = load i64, ptr %i.o, align 8, !tbaa !162
  %i.iv = and i64 %i.iu, 1
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ix = load i64, ptr %i.he, align 8, !tbaa !257
  %sext387 = shl i64 %i.ix, 32
  %i.iy = ashr exact i64 %sext387, 32
end_hunk_1
