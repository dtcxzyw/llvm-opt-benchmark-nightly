Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
bb.bx:                                            ; preds = %.thread
  br i1 %i.ne, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.ok = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.ol = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.om = icmp ult ptr %i.ok, %i.ol
  br i1 %i.om, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 1
  store ptr %i.on, ptr %i.b, align 8, !tbaa !30
  %i.oo = load i8, ptr %i.ok, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit286

bb.ca:                                            ; preds = %bb.by
  %i.op = load i32, ptr %i.mt, align 8, !tbaa !27
  %.not.i281 = icmp eq i32 %i.op, 0
  br i1 %.not.i281, label %_ZL10stbi__get8P13stbi__context.exit286, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.oq = load ptr, ptr %i.mu, align 8, !tbaa !31
  %i.or = load ptr, ptr %i.mv, align 8, !tbaa !25
  %i.os = load i32, ptr %i.mx, align 4, !tbaa !26
  %i.ot = tail call noundef i32 %i.oq(ptr noundef %i.or, ptr noundef nonnull %i.mw, i32 noundef %i.os), !inline_history !6 ; 2 uses
  %i.ou = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ov = load ptr, ptr %i.my, align 8, !tbaa !29
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = sub i64 %i.ow, %i.ox
  %i.oz = trunc i64 %i.oy to i32
  %i.pa = load i32, ptr %i.mz, align 8, !tbaa !28
  %i.pb = add nsw i32 %i.pa, %i.oz
  store i32 %i.pb, ptr %i.mz, align 8, !tbaa !28
  %i.pc = icmp eq i32 %i.ot, 0
  br i1 %i.pc, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.mt, align 8, !tbaa !27
  store i8 0, ptr %i.mw, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i283

bb.cd:                                            ; preds = %bb.cb
  %i.pd = sext i32 %i.ot to i64
  %i.pe = getelementptr inbounds i8, ptr %i.mw, i64 %i.pd
  %.pre.i282 = load i8, ptr %i.mw, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i283

_ZL19stbi__refill_bufferP13stbi__context.exit.i283: ; preds = %bb.cd, %bb.cc
  %i.pf = phi i8 [ 0, %bb.cc ], [ %.pre.i282, %bb.cd ]
  %.sink.i.i284 = phi ptr [ %i.na, %bb.cc ], [ %i.pe, %bb.cd ]
  store ptr %.sink.i.i284, ptr %i.d, align 8, !tbaa !33
  store ptr %i.na, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit286

_ZL10stbi__get8P13stbi__context.exit286:          ; preds = %bb.bz, %bb.ca, %_ZL19stbi__refill_bufferP13stbi__context.exit.i283
  %.0.i285 = phi i8 [ %i.oo, %bb.bz ], [ %i.pf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i283 ], [ 0, %bb.ca ]
  %i.pg = zext i8 %.0.i285 to i32
  br label %.loopexit26.loopexit

bb.ce:                                            ; preds = %bb.bx
  %i.ph = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  br label %.loopexit26.loopexit

.loopexit26.loopexit:                             ; preds = %bb.ce, %_ZL10stbi__get8P13stbi__context.exit286
  %i.pi = phi i32 [ %i.pg, %_ZL10stbi__get8P13stbi__context.exit286 ], [ %i.ph, %bb.ce ] ; 2 uses
  %.not220 = icmp samesign ult i32 %i.pi, %i.cv
  %spec.store.select = select i1 %.not220, i32 %i.pi, i32 0
  %i.pj = zext nneg i32 %spec.store.select to i64
  %i.pk = mul nuw nsw i64 %i.nf, %i.pj
  %scevgep = getelementptr nuw i8, ptr %.0193, i64 %i.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 range(i64 0, 32) %i.nf, i1 false), !tbaa !32
  br label %.loopexit26

bb.cf:                                            ; preds = %.thread
  br i1 %.not211, label %.preheader27.preheader, label %bb.cg

.preheader27.preheader:                           ; preds = %bb.cf
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !30
  %.pre104 = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %.preheader27

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.nb, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 5929, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(21) @.str.85) #41
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.pl = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.pm = trunc nuw i32 %i.pl to i16              ; 2 uses
  %i.pn = lshr i16 %i.pm, 10
  %i.po = and i16 %i.pn, 31
  %.lhs.trunc.i287 = mul nuw nsw i16 %i.po, 255
  %i.pp = udiv i16 %.lhs.trunc.i287, 31
  %i.pq = trunc nuw i16 %i.pp to i8
  store i8 %i.pq, ptr %i.a, align 4, !tbaa !32
  %i.pr = insertelement <2 x i16> poison, i16 %i.pm, i64 0
  %i.ps = shufflevector <2 x i16> %i.pr, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.pt = lshr <2 x i16> %i.ps, <i16 5, i16 0>
  %i.pu = and <2 x i16> %i.pt, splat (i16 31)
  %i.pv = mul nuw nsw <2 x i16> %i.pu, splat (i16 255)
  %i.pw = udiv <2 x i16> %i.pv, splat (i16 31)
  %i.px = trunc nuw <2 x i16> %i.pw to <2 x i8>   ; 2 uses
  %i.py = extractelement <2 x i8> %i.px, i64 0
  store i8 %i.py, ptr %i.nc, align 1, !tbaa !32
  %i.pz = extractelement <2 x i8> %i.px, i64 1
  store i8 %i.pz, ptr %i.nd, align 2, !tbaa !32
  br label %.loopexit26

.preheader27:                                     ; preds = %.preheader27.preheader, %_ZL10stbi__get8P13stbi__context.exit295
  %i.qa = phi ptr [ %.pre104, %.preheader27.preheader ], [ %i.qw, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 3 uses
  %i.qb = phi ptr [ %.pre, %.preheader27.preheader ], [ %i.qx, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 4 uses
  %indvars.iv71 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next72, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 2 uses
  %i.qc = icmp ult ptr %i.qb, %i.qa
  br i1 %i.qc, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.preheader27
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 1 ; 2 uses
  store ptr %i.qd, ptr %i.b, align 8, !tbaa !30
  %i.qe = load i8, ptr %i.qb, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit295

bb.ck:                                            ; preds = %.preheader27
  %i.qf = load i32, ptr %i.mt, align 8, !tbaa !27
  %.not.i290 = icmp eq i32 %i.qf, 0
  br i1 %.not.i290, label %_ZL10stbi__get8P13stbi__context.exit295, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qg = load ptr, ptr %i.mu, align 8, !tbaa !31
  %i.qh = load ptr, ptr %i.mv, align 8, !tbaa !25
  %i.qi = load i32, ptr %i.mx, align 4, !tbaa !26
  %i.qj = tail call noundef i32 %i.qg(ptr noundef %i.qh, ptr noundef nonnull %i.mw, i32 noundef %i.qi), !inline_history !6 ; 2 uses
  %i.qk = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ql = load ptr, ptr %i.my, align 8, !tbaa !29
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = load i32, ptr %i.mz, align 8, !tbaa !28
  %i.qr = add nsw i32 %i.qq, %i.qp
  store i32 %i.qr, ptr %i.mz, align 8, !tbaa !28
  %i.qs = icmp eq i32 %i.qj, 0
  br i1 %i.qs, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.mt, align 8, !tbaa !27
  store i8 0, ptr %i.mw, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i292

bb.cn:                                            ; preds = %bb.cl
  %i.qt = sext i32 %i.qj to i64
  %i.qu = getelementptr inbounds i8, ptr %i.mw, i64 %i.qt
  %.pre.i291 = load i8, ptr %i.mw, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i292

_ZL19stbi__refill_bufferP13stbi__context.exit.i292: ; preds = %bb.cn, %bb.cm
  %i.qv = phi i8 [ 0, %bb.cm ], [ %.pre.i291, %bb.cn ]
  %.sink.i.i293 = phi ptr [ %i.na, %bb.cm ], [ %i.qu, %bb.cn ] ; 2 uses
  store ptr %.sink.i.i293, ptr %i.d, align 8, !tbaa !33
  store ptr %i.na, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit295

_ZL10stbi__get8P13stbi__context.exit295:          ; preds = %bb.cj, %bb.ck, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292
  %i.qw = phi ptr [ %i.qa, %bb.cj ], [ %.sink.i.i293, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ %i.qa, %bb.ck ]
  %i.qx = phi ptr [ %i.qd, %bb.cj ], [ %i.na, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ %i.qb, %bb.ck ]
  %.0.i294 = phi i8 [ %i.qe, %bb.cj ], [ %i.qv, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ 0, %bb.ck ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv71
  store i8 %.0.i294, ptr %i.qy, align 1, !tbaa !32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %.loopexit26, label %.preheader27, !llvm.loop !294

.loopexit26:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit295, %.loopexit26.loopexit, %bb.bw, %bb.ci
  %.118323 = phi i32 [ %.118322, %.loopexit26.loopexit ], [ %.118322, %bb.ci ], [ 1, %bb.bw ], [ %.118322, %_ZL10stbi__get8P13stbi__context.exit295 ]
  %.118521 = phi i32 [ %.118520, %.loopexit26.loopexit ], [ %.118520, %bb.ci ], [ %.018440, %bb.bw ], [ %.118520, %_ZL10stbi__get8P13stbi__context.exit295 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep80, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 range(i64 0, 32) %i.nf, i1 false), !tbaa !32
  %i.qz = add nsw i32 %.118521, -1
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge, label %bb.bo, !llvm.loop !295

._crit_edge:                                      ; preds = %.loopexit26, %.loopexit30
  %.not213.not = icmp eq i8 %i.gs, 0
  %or.cond55 = and i1 %.not213.not, %i.ha
  br i1 %or.cond55, label %.lr.ph51, label %.loopexit25

.lr.ph51:                                         ; preds = %._crit_edge
  %i.ra = mul nuw nsw i32 %i.ed, %.0195.ph        ; 8 uses
  %.not58 = icmp eq i32 %i.ed, 0
  br i1 %.not58, label %.loopexit25, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %.lr.ph51
  %i.rb = add nsw i32 %i.ee, -1                   ; 2 uses
  %i.rc = mul i32 %i.ed, %i.rb
  %i.rd = mul i32 %i.rc, %.0195.ph
  %i.re = lshr i32 %i.rb, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ra, i32 1)
  %i.rf = sub nsw i32 %i.ra, %smin                ; 3 uses
  %5 = zext nneg i32 %i.rf to i64                 ; 3 uses
  %6 = add nuw nsw i64 %5, 1                      ; 5 uses
  %min.iters.check = icmp ult i32 %i.rf, 7
  %invariant.gep210 = getelementptr i8, ptr %i.hj, i64 %5
  %invariant.gep212 = getelementptr i8, ptr %i.hj, i64 %5
  %min.iters.check172 = icmp ult i32 %i.rf, 63
  %i.rg = and i64 %6, 56
  %n.vec = and i64 %6, 4294967232                 ; 6 uses
  %i.rh = trunc nuw i64 %n.vec to i32
  %i.ri = sub i32 %i.ra, %i.rh
  %cmp.n = icmp eq i64 %6, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.rg, 0
  %n.vec176 = and i64 %6, 4294967288              ; 5 uses
  %i.rj = trunc nuw i64 %n.vec176 to i32
  %i.rk = sub i32 %i.ra, %i.rj
  %cmp.n181 = icmp eq i64 %6, %n.vec176
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph48.preheader, %._crit_edge49
  %indvars.iv95 = phi i32 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next96, %._crit_edge49 ] ; 2 uses
  %indvars.iv91 = phi i32 [ %i.rd, %.lr.ph48.preheader ], [ %indvars.iv.next92, %._crit_edge49 ] ; 2 uses
  %.350 = phi i32 [ 0, %.lr.ph48.preheader ], [ %i.sd, %._crit_edge49 ] ; 2 uses
  %i.rl = sext i32 %indvars.iv91 to i64           ; 8 uses
  %i.rm = zext i32 %indvars.iv95 to i64           ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.rn = getelementptr nuw i8, ptr %i.hj, i64 %i.rm
  %gep211 = getelementptr i8, ptr %invariant.gep210, i64 %i.rm
  %7 = getelementptr i8, ptr %gep211, i64 1
  %i.ro = getelementptr i8, ptr %i.hj, i64 %i.rl
  %gep213 = getelementptr i8, ptr %invariant.gep212, i64 %i.rl
  %8 = getelementptr i8, ptr %gep213, i64 1
  %bound0 = icmp ult ptr %i.rn, %8
  %bound1 = icmp ult ptr %i.ro, %7
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check172, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rp = add nuw nsw i64 %n.vec, %i.rm
  %i.rq = add nsw i64 %n.vec, %i.rl
  %invariant.gep = getelementptr i8, ptr %i.hj, i64 %i.rm
  %invariant.gep204 = getelementptr i8, ptr %i.hj, i64 %i.rl
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %wide.load = load <32 x i8>, ptr %gep, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  %wide.load173 = load <32 x i8>, ptr %i.rr, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  %gep205 = getelementptr i8, ptr %invariant.gep204, i64 %index ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %gep205, i64 32 ; 2 uses
  %wide.load174 = load <32 x i8>, ptr %gep205, align 1, !tbaa !32, !alias.scope !307
  %wide.load175 = load <32 x i8>, ptr %i.rs, align 1, !tbaa !32, !alias.scope !307
  store <32 x i8> %wide.load174, ptr %gep, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  store <32 x i8> %wide.load175, ptr %i.rr, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  store <32 x i8> %wide.load, ptr %gep205, align 1, !tbaa !32, !alias.scope !307
  store <32 x i8> %wide.load173, ptr %i.rs, align 1, !tbaa !32, !alias.scope !307
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.rt = icmp eq i64 %index.next, %n.vec
  br i1 %i.rt, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge49, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ru = add nuw nsw i64 %n.vec176, %i.rm
  %i.rv = add nsw i64 %n.vec176, %i.rl
  %invariant.gep206 = getelementptr i8, ptr %i.hj, i64 %i.rm
  %invariant.gep208 = getelementptr i8, ptr %i.hj, i64 %i.rl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next180, %vec.epilog.vector.body ] ; 3 uses
  %gep207 = getelementptr i8, ptr %invariant.gep206, i64 %index177 ; 2 uses
  %wide.load178 = load <8 x i8>, ptr %gep207, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  %gep209 = getelementptr i8, ptr %invariant.gep208, i64 %index177 ; 2 uses
  %wide.load179 = load <8 x i8>, ptr %gep209, align 1, !tbaa !32, !alias.scope !307
  store <8 x i8> %wide.load179, ptr %gep207, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  store <8 x i8> %wide.load178, ptr %gep209, align 1, !tbaa !32, !alias.scope !307
  %index.next180 = add nuw i64 %index177, 8       ; 2 uses
  %i.rw = icmp eq i64 %index.next180, %n.vec176
  br i1 %i.rw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !300

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n181, label %._crit_edge49, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv97.ph = phi i64 [ %i.rm, %iter.check ], [ %i.rm, %vector.memcheck ], [ %i.rp, %vec.epilog.iter.check ], [ %i.ru, %vec.epilog.middle.block ]
  %indvars.iv93.ph = phi i64 [ %i.rl, %iter.check ], [ %i.rl, %vector.memcheck ], [ %i.rq, %vec.epilog.iter.check ], [ %i.rv, %vec.epilog.middle.block ]
  %.319244.ph = phi i32 [ %i.ra, %iter.check ], [ %i.ra, %vector.memcheck ], [ %i.ri, %vec.epilog.iter.check ], [ %i.rk, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %vec.epilog.scalar.ph ], [ %indvars.iv97.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %vec.epilog.scalar.ph ], [ %indvars.iv93.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.319244 = phi i32 [ %i.sb, %vec.epilog.scalar.ph ], [ %.319244.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv97 ; 2 uses
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !32
  %i.rz = getelementptr inbounds i8, ptr %i.hj, i64 %indvars.iv93 ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !32
  store i8 %i.sa, ptr %i.rx, align 1, !tbaa !32
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !32
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1
  %i.sb = add nsw i32 %.319244, -1
  %i.sc = icmp sgt i32 %.319244, 1
  br i1 %i.sc, label %vec.epilog.scalar.ph, label %._crit_edge49, !llvm.loop !301

._crit_edge49:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.sd = add nuw nsw i32 %.350, 1
  %indvars.iv.next92 = sub i32 %indvars.iv91, %i.ra
  %indvars.iv.next96 = add i32 %indvars.iv95, %i.ra
  %exitcond102.not = icmp eq i32 %.350, %i.re
  br i1 %exitcond102.not, label %.loopexit25, label %iter.check, !llvm.loop !302

.loopexit25:                                      ; preds = %._crit_edge49, %.lr.ph51, %._crit_edge
  %.not214 = icmp eq ptr %.0193, null
  br i1 %.not214, label %.loopexit32, label %bb.co

bb.co:                                            ; preds = %.loopexit25
  tail call void @free(ptr noundef nonnull %.0193) #40
  br label %.loopexit32

.loopexit32.loopexit.unr-lcssa:                   ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1
  %lcmp.mod192.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod192.not, label %.loopexit32, label %..thread_crit_edge.i264.us.us.epil.preheader

..thread_crit_edge.i264.us.us.epil.preheader:     ; preds = %.loopexit32.loopexit.unr-lcssa, %..thread_crit_edge.i264.us.us.preheader
  %indvars.iv65.epil.init = phi i64 [ 0, %..thread_crit_edge.i264.us.us.preheader ], [ %indvars.iv.next66.1, %.loopexit32.loopexit.unr-lcssa ]
  %.epil.init191 = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.us.preheader ], [ %i.iy, %.loopexit32.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.se = getelementptr inbounds nuw i8, ptr %.epil.init191, i64 %i.id ; 2 uses
  %.not32.i.us.us.epil = icmp ugt ptr %i.se, %.pre35.i.us
  br i1 %.not32.i.us.us.epil, label %.loopexit32, label %bb.cp

bb.cp:                                            ; preds = %..thread_crit_edge.i264.us.us.epil.preheader
  %i.sf = trunc i64 %indvars.iv65.epil.init to i32
  %i.sg = xor i32 %i.sf, -1
  %i.sh = add i32 %i.ee, %i.sg
  %i.si = mul i32 %i.ia, %i.sh
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds i8, ptr %i.hj, i64 %i.sj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sk, ptr align 1 %.epil.init191, i64 %i.id, i1 false)
  store ptr %i.se, ptr %i.b, align 8, !tbaa !30
  br label %.loopexit32

.loopexit32.loopexit185.unr-lcssa:                ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit32, label %..thread_crit_edge.i264.us.epil.preheader

..thread_crit_edge.i264.us.epil.preheader:        ; preds = %.loopexit32.loopexit185.unr-lcssa, %..thread_crit_edge.i264.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %..thread_crit_edge.i264.us.preheader ], [ %indvars.iv.next.3, %.loopexit32.loopexit185.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.preheader ], [ %i.ka, %.loopexit32.loopexit185.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod187)
  br label %..thread_crit_edge.i264.us.epil

..thread_crit_edge.i264.us.epil:                  ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil, %..thread_crit_edge.i264.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil ], [ %indvars.iv.epil.init, %..thread_crit_edge.i264.us.epil.preheader ] ; 2 uses
  %i.sl = phi ptr [ %i.sr, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil ], [ %.epil.init, %..thread_crit_edge.i264.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil ], [ 0, %..thread_crit_edge.i264.us.epil.preheader ]
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.id ; 3 uses
  %.not32.i.us.epil = icmp ugt ptr %i.sm, %.pre35.i.us
  br i1 %.not32.i.us.epil, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil, label %bb.cq

bb.cq:                                            ; preds = %..thread_crit_edge.i264.us.epil
  %i.sn = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.so = mul i32 %i.ia, %i.sn
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds i8, ptr %i.hj, i64 %i.sp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sq, ptr align 1 %i.sl, i64 %i.id, i1 false)
  store ptr %i.sm, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil

_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil:  ; preds = %bb.cq, %..thread_crit_edge.i264.us.epil
  %i.sr = phi ptr [ %i.sm, %bb.cq ], [ %i.sl, %..thread_crit_edge.i264.us.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit32, label %..thread_crit_edge.i264.us.epil, !llvm.loop !303

.loopexit32:                                      ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit, %.loopexit32.loopexit185.unr-lcssa, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil, %.loopexit32.loopexit.unr-lcssa, %bb.cp, %..thread_crit_edge.i264.us.us.epil.preheader, %.preheader31, %.loopexit25, %bb.co
  %i.ss = icmp samesign ult i8 %.0195.ph.shrunk, 3
  %.not59 = icmp eq i32 %i.hg, 0
  %i.st = or i1 %i.ss, %.not59
  %or.cond162 = or i1 %i.st, %i.gz
  br i1 %or.cond162, label %.loopexit, label %.lr.ph54

.lr.ph54:                                         ; preds = %.loopexit32
  %i.su = zext nneg i8 %.0195.ph.shrunk to i64    ; 9 uses
  %i.sv = add i32 %i.hg, -1
  %xtraiter196 = and i32 %i.hg, 7                 ; 3 uses
  %i.sw = icmp ult i32 %i.sv, 7
  br i1 %i.sw, label %.epil.preheader, label %.lr.ph54.new

.lr.ph54.new:                                     ; preds = %.lr.ph54
  %unroll_iter200 = and i32 %i.hg, -8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %.lr.ph54.new
  %.017653 = phi ptr [ %i.hj, %.lr.ph54.new ], [ %i.uc, %bb.cr ] ; 4 uses
  %niter201 = phi i32 [ 0, %.lr.ph54.new ], [ %niter201.next.7, %bb.cr ]
  %i.sx = load i8, ptr %.017653, align 1, !tbaa !32
  %i.sy = getelementptr inbounds nuw i8, ptr %.017653, i64 2 ; 2 uses
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !32
  store i8 %i.sz, ptr %.017653, align 1, !tbaa !32
  store i8 %i.sx, ptr %i.sy, align 1, !tbaa !32
  %i.ta = getelementptr inbounds nuw i8, ptr %.017653, i64 %i.su ; 4 uses
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !32
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 2 ; 2 uses
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !32
  store i8 %i.td, ptr %i.ta, align 1, !tbaa !32
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !32
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.su ; 4 uses
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !32
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 2 ; 2 uses
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !32
  store i8 %i.th, ptr %i.te, align 1, !tbaa !32
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !32
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.su ; 4 uses
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !32
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 2 ; 2 uses
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !32
  store i8 %i.tl, ptr %i.ti, align 1, !tbaa !32
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !32
end_hunk_0
