inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ncnn27DeformableConv2D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 4, i32 noundef 1)
          to label %bb.aj unwind label %bb.az

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 5, i32 noundef 0)
          to label %bb.ak unwind label %bb.az

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 6, i32 noundef 1)
          to label %bb.al unwind label %bb.az

bb.al:                                            ; preds = %bb.ak
  %i.cm = load i32, ptr %i.bm, align 8, !tbaa !47
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 7, i32 noundef %i.cm)
          to label %bb.am unwind label %bb.az

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 8, i32 noundef 0)
          to label %bb.an unwind label %bb.az

bb.an:                                            ; preds = %bb.am
  %i.cn = mul nsw i32 %.fr342, %i.bi              ; 2 uses
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 9, i32 noundef %i.cn)
          to label %bb.ao unwind label %bb.az

bb.ao:                                            ; preds = %bb.an
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !54
  %.not = icmp eq i32 %i.cp, 0
  %i.cq = select i1 %.not, i32 -1, i32 1
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 10, i32 noundef %i.cq)
          to label %bb.ap unwind label %bb.az

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 11, i32 noundef 1)
          to label %bb.aq unwind label %bb.az

bb.aq:                                            ; preds = %bb.ap
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !53 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef i32 %i.cu(ptr noundef nonnull align 8 dereferenceable(208) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ar unwind label %bb.az     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store i64 0, ptr %i.dd, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cz, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.df = load i32, ptr %i.bm, align 8, !tbaa !47
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.de, i32 noundef %i.bi, i32 noundef %.fr342, i32 noundef %i.df, ptr noundef null)
          to label %bb.as unwind label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.dg = load i32, ptr %i.bm, align 8, !tbaa !47
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.cn, i32 noundef %i.dg, i64 noundef 4, ptr noundef null)
          to label %.preheader161 unwind label %bb.bb

.preheader161:                                    ; preds = %bb.as
  %i.dh = load i32, ptr %i.bm, align 8, !tbaa !47 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader161
  %i.dj = load ptr, ptr %10, align 16, !tbaa !18
  %i.dk = load i32, ptr %i.db, align 4, !tbaa !55
  %i.dl = sext i32 %i.dk to i64
  %i.dm = load i64, ptr %i.cx, align 16, !tbaa !56
  %factor.op.mul170 = mul i64 %i.dm, %i.dl
  %.not171 = icmp sgt i32 %.057, %.fr342
  %i.dn = icmp sgt i32 %i.bi, 0
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %.not171, label %._crit_edge.split, label %.preheader160.lr.ph.preheader

.preheader160.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.dr = add nsw i32 %.057, -1
  %i.ds = zext nneg i32 %.057 to i64
  %i.dt = zext nneg i32 %i.dr to i64
  %i.du = zext nneg i32 %.fr342 to i64
  %wide.trip.count185 = zext nneg i32 %i.dh to i64
  %wide.trip.count177 = zext nneg i32 %i.bi to i64
  %wide.trip.count = zext i32 %.057 to i64        ; 12 uses
  %i.dv = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.dw = shl nuw nsw i64 %wide.trip.count, 2
  %min.iters.check297 = icmp ult i32 %.057, 4
  %min.iters.check299 = icmp ult i32 %.057, 16
  %i.dx = and i64 %wide.trip.count, 12
  %n.vec301 = and i64 %wide.trip.count, 4294967280 ; 5 uses
  %i.dy = shl nuw nsw i64 %n.vec301, 2
  %cmp.n314 = icmp eq i64 %n.vec301, %wide.trip.count
  %min.epilog.iters.check320 = icmp eq i64 %i.dx, 0
  %n.vec322 = and i64 %wide.trip.count, 4294967292 ; 4 uses
  %i.dz = shl nuw nsw i64 %n.vec322, 2
  %cmp.n339 = icmp eq i64 %n.vec322, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader160.lr.ph

._crit_edge.split:                                ; preds = %._crit_edge168, %.lr.ph, %.preheader161
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !11 ; 2 uses
  %.not.i80 = icmp eq ptr %i.eb, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit78, label %bb.at

bb.at:                                            ; preds = %._crit_edge.split
  %i.ec = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit78

bb.au:                                            ; preds = %bb.at
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !17 ; 3 uses
  %.not3.i81 = icmp eq ptr %i.ef, null
  %i.eg = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i81, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !9
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef %i.eg)
          to label %_ZN4ncnn3MatD2Ev.exit78 unwind label %bb.ay, !inline_history !19

bb.aw:                                            ; preds = %bb.au
  %.not.i130 = icmp eq ptr %i.eg, null
  br i1 %.not.i130, label %_ZN4ncnn3MatD2Ev.exit78, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.eg) #9
  br label %_ZN4ncnn3MatD2Ev.exit78

bb.ay:                                            ; preds = %bb.av
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit78:                          ; preds = %bb.at, %._crit_edge.split, %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.em = load i32, ptr %i.co, align 4, !tbaa !54
  %.not60 = icmp eq i32 %i.em, 0
  br i1 %.not60, label %bb.da, label %bb.bc

bb.az:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ba:                                            ; preds = %bb.ar
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit76

bb.bb:                                            ; preds = %bb.as
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !11 ; 2 uses
  %.not.i88 = icmp eq ptr %i.er, null
  br i1 %.not.i88, label %_ZN4ncnn3MatD2Ev.exit76, label %bb.ce

.preheader160.lr.ph:                              ; preds = %.preheader160.lr.ph.preheader, %._crit_edge168
  %indvars.iv182 = phi i64 [ 0, %.preheader160.lr.ph.preheader ], [ %indvars.iv.next183, %._crit_edge168 ] ; 4 uses
  %i.es = load i32, ptr %i.do, align 4
  %i.et = load ptr, ptr %11, align 8              ; 4 uses
  %i.eu = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.ev = mul i64 %i.eu, %indvars.iv182
  %i.ew = load i64, ptr %i.dq, align 8            ; 6 uses
  %i.ex = mul i64 %i.ev, %i.ew                    ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ex
  %i.ez = sext i32 %i.es to i64                   ; 5 uses
  %factor.op.mul = mul i64 %i.ew, %i.ez           ; 9 uses
  br i1 %i.dn, label %.preheader160.us.preheader, label %._crit_edge168

.preheader160.us.preheader:                       ; preds = %.preheader160.lr.ph
  %.reass = mul i64 %factor.op.mul170, %indvars.iv182
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.reass
  %i.fb = mul i64 %i.ew, %i.ez
  %i.fc = sub i64 0, %i.fb
  %i.fd = mul i64 %i.ew, %wide.trip.count
  %i.fe = mul i64 %i.fd, %i.ez
  %i.ff = mul i64 %i.ew, %wide.trip.count
  %i.fg = mul i64 %i.ff, %i.ez
  %i.fh = mul i64 %i.eu, %indvars.iv182
  %i.fi = mul nsw i64 %i.dv, %i.ez
  %i.fj = add i64 %i.fh, %i.fi
  %i.fk = mul i64 %i.ew, %i.fj
  %i.fl = getelementptr i8, ptr %i.et, i64 %i.ex
  %i.fm = getelementptr i8, ptr %i.et, i64 %i.fk
  %i.fn = getelementptr i8, ptr %i.et, i64 %i.ex
  %i.fo = icmp slt i64 %factor.op.mul, 0          ; 2 uses
  %i.fp = select i1 %i.fo, i64 %i.fc, i64 %factor.op.mul
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fp, i64 %i.dv) ; 2 uses
  %mul.result285 = extractvalue { i64, i1 } %mul, 0 ; 2 uses
  %mul.overflow286 = extractvalue { i64, i1 } %mul, 1
  %i.fq = sub i64 0, %mul.result285
  %broadcast.splatinsert304 = insertelement <16 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat305 = shufflevector <16 x i64> %broadcast.splatinsert304, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert325 = insertelement <4 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat326 = shufflevector <4 x i64> %broadcast.splatinsert325, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader160.us

.preheader160.us:                                 ; preds = %.preheader160.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader160.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 3 uses
  %indvars.iv179 = phi i64 [ 0, %.preheader160.us.preheader ], [ %indvars.iv.next180, %._crit_edge.us ] ; 8 uses
  %.043166.us = phi ptr [ %i.fa, %.preheader160.us.preheader ], [ %.lcssa, %._crit_edge.us ]
  %i.fr = mul i64 %i.fg, %indvar                  ; 2 uses
  %i.fs = mul i64 %i.fe, %indvar
  %i.ft = getelementptr i8, ptr %i.fl, i64 %i.fr
  %i.fu = getelementptr i8, ptr %i.fm, i64 %i.fr
  %i.fv = getelementptr i8, ptr %i.fn, i64 %i.fs
  %broadcast.splatinsert302 = insertelement <16 x i64> poison, i64 %indvars.iv179, i64 0
  %broadcast.splat303 = shufflevector <16 x i64> %broadcast.splatinsert302, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert323 = insertelement <4 x i64> poison, i64 %indvars.iv179, i64 0
  %broadcast.splat324 = shufflevector <4 x i64> %broadcast.splatinsert323, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.op348 = add nuw nsw i64 1, %indvars.iv179
  %invariant.op350 = add nuw nsw i64 2, %indvars.iv179
  %invariant.op352 = add nuw nsw i64 3, %indvars.iv179
  br label %iter.check317

.noexc134.us:                                     ; preds = %.noexc134.us.prol.loopexit, %.noexc134.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc134.us ], [ %indvars.iv.unr, %.noexc134.us.prol.loopexit ] ; 5 uses
  %.2162.us = phi ptr [ %i.ge, %.noexc134.us ], [ %.2162.us.unr, %.noexc134.us.prol.loopexit ] ; 5 uses
  %i.fw = add nuw nsw i64 %indvars.iv, %indvars.iv179
  %.reass.us = mul i64 %factor.op.mul, %i.fw
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us
  %i.fx = load float, ptr %gep.us, align 4, !tbaa !38
  store float %i.fx, ptr %.2162.us, align 4, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %.2162.us, i64 4
  %.reass349 = add nuw nsw i64 %indvars.iv, %invariant.op348
  %.reass.us.1 = mul i64 %factor.op.mul, %.reass349
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.1
  %i.fz = load float, ptr %gep.us.1, align 4, !tbaa !38
  store float %i.fz, ptr %i.fy, align 4, !tbaa !38
  %i.ga = getelementptr inbounds nuw i8, ptr %.2162.us, i64 8
  %.reass351 = add nuw nsw i64 %indvars.iv, %invariant.op350
  %.reass.us.2 = mul i64 %factor.op.mul, %.reass351
  %gep.us.2 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.2
  %i.gb = load float, ptr %gep.us.2, align 4, !tbaa !38
  store float %i.gb, ptr %i.ga, align 4, !tbaa !38
  %i.gc = getelementptr inbounds nuw i8, ptr %.2162.us, i64 12
  %.reass353 = add nuw nsw i64 %indvars.iv, %invariant.op352
  %.reass.us.3 = mul i64 %factor.op.mul, %.reass353
  %gep.us.3 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.3
  %i.gd = load float, ptr %gep.us.3, align 4, !tbaa !38
  store float %i.gd, ptr %i.gc, align 4, !tbaa !38
  %i.ge = getelementptr inbounds nuw i8, ptr %.2162.us, i64 16 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.noexc134.us, !llvm.loop !57

.loopexit:                                        ; preds = %.noexc134.us.prol.loopexit, %.noexc134.us, %vec.epilog.middle.block338, %middle.block313
  %.lcssa = phi ptr [ %i.gu, %vec.epilog.middle.block338 ], [ %i.gp, %middle.block313 ], [ %.lcssa344.unr, %.noexc134.us.prol.loopexit ], [ %i.ge, %.noexc134.us ] ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge.us, label %iter.check317, !llvm.loop !60

iter.check317:                                    ; preds = %.preheader160.us, %.loopexit
  %indvars.iv174 = phi i64 [ 0, %.preheader160.us ], [ %indvars.iv.next175, %.loopexit ] ; 4 uses
  %.1164.us = phi ptr [ %.043166.us, %.preheader160.us ], [ %.lcssa, %.loopexit ] ; 9 uses
  %i.gf = shl nuw nsw i64 %indvars.iv174, 2       ; 2 uses
  %scevgep289 = getelementptr i8, ptr %i.ft, i64 %i.gf ; 4 uses
  %scevgep290 = getelementptr i8, ptr %i.fu, i64 %i.gf ; 4 uses
  %i.gg = icmp ult ptr %scevgep289, %scevgep290
  %umin291 = select i1 %i.gg, ptr %scevgep289, ptr %scevgep290
  %i.gh = icmp ugt ptr %scevgep289, %scevgep290
  %umax292 = select i1 %i.gh, ptr %scevgep289, ptr %scevgep290
  %scevgep293 = getelementptr i8, ptr %umax292, i64 4
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv174 ; 7 uses
  br i1 %min.iters.check297, label %.noexc134.us.preheader, label %vector.scevcheck283

vector.scevcheck283:                              ; preds = %iter.check317
  %i.gi = shl nuw nsw i64 %indvars.iv174, 2
  %scevgep284 = getelementptr i8, ptr %i.fv, i64 %i.gi ; 4 uses
  %i.gj = getelementptr i8, ptr %scevgep284, i64 %mul.result285
  %i.gk = getelementptr i8, ptr %scevgep284, i64 %i.fq
  %i.gl = icmp ult ptr %i.gj, %scevgep284
  %i.gm = icmp ugt ptr %i.gk, %scevgep284
  %i.gn = select i1 %i.fo, i1 %i.gm, i1 %i.gl
  %i.go = or i1 %i.gn, %mul.overflow286
  br i1 %i.go, label %.noexc134.us.preheader, label %vector.memcheck287

vector.memcheck287:                               ; preds = %vector.scevcheck283
  %scevgep288 = getelementptr i8, ptr %.1164.us, i64 %i.dw
  %bound0294 = icmp ult ptr %.1164.us, %scevgep293
  %bound1295 = icmp ult ptr %umin291, %scevgep288
  %found.conflict296 = and i1 %bound0294, %bound1295
  br i1 %found.conflict296, label %.noexc134.us.preheader, label %vector.main.loop.iter.check298

vector.main.loop.iter.check298:                   ; preds = %vector.memcheck287
  br i1 %min.iters.check299, label %vec.epilog.ph321, label %vector.ph300

vector.ph300:                                     ; preds = %vector.main.loop.iter.check298
  %i.gp = getelementptr i8, ptr %.1164.us, i64 %i.dy ; 2 uses
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph300
  %index307 = phi i64 [ 0, %vector.ph300 ], [ %index.next311, %vector.body306 ] ; 2 uses
  %vec.ind308 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph300 ], [ %vec.ind.next312, %vector.body306 ] ; 2 uses
  %i.gq = shl i64 %index307, 2
  %next.gep = getelementptr i8, ptr %.1164.us, i64 %i.gq
  %i.gr = add nuw nsw <16 x i64> %vec.ind308, %broadcast.splat303
  %i.gs = mul <16 x i64> %broadcast.splat305, %i.gr
  %wide.gep309 = getelementptr i8, ptr %invariant.gep.us, <16 x i64> %i.gs
  %wide.masked.gather310 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep309, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !38, !alias.scope !61
  store <16 x float> %wide.masked.gather310, ptr %next.gep, align 4, !tbaa !38, !alias.scope !64, !noalias !61
  %index.next311 = add nuw i64 %index307, 16      ; 2 uses
  %vec.ind.next312 = add nuw nsw <16 x i64> %vec.ind308, splat (i64 16)
  %i.gt = icmp eq i64 %index.next311, %n.vec301
  br i1 %i.gt, label %middle.block313, label %vector.body306, !llvm.loop !66

middle.block313:                                  ; preds = %vector.body306
  br i1 %cmp.n314, label %.loopexit, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block313
  br i1 %min.epilog.iters.check320, label %.noexc134.us.preheader, label %vec.epilog.ph321, !prof !68

vec.epilog.ph321:                                 ; preds = %vector.main.loop.iter.check298, %vec.epilog.iter.check319
  %vec.epilog.resume.val315 = phi i64 [ %n.vec301, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check298 ] ; 2 uses
  %i.gu = getelementptr i8, ptr %.1164.us, i64 %i.dz ; 2 uses
  %broadcast.splatinsert327 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val315, i64 0
  %broadcast.splat328 = shufflevector <4 x i64> %broadcast.splatinsert327, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction329 = or disjoint <4 x i64> %broadcast.splat328, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body330

vec.epilog.vector.body330:                        ; preds = %vec.epilog.vector.body330, %vec.epilog.ph321
  %index331 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph321 ], [ %index.next336, %vec.epilog.vector.body330 ] ; 2 uses
  %vec.ind332 = phi <4 x i64> [ %induction329, %vec.epilog.ph321 ], [ %vec.ind.next337, %vec.epilog.vector.body330 ] ; 2 uses
  %i.gv = shl i64 %index331, 2
  %next.gep333 = getelementptr i8, ptr %.1164.us, i64 %i.gv
  %i.gw = add nuw nsw <4 x i64> %vec.ind332, %broadcast.splat324
  %i.gx = mul <4 x i64> %broadcast.splat326, %i.gw
  %wide.gep334 = getelementptr i8, ptr %invariant.gep.us, <4 x i64> %i.gx
  %wide.masked.gather335 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep334, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !38, !alias.scope !61
  store <4 x float> %wide.masked.gather335, ptr %next.gep333, align 4, !tbaa !38, !alias.scope !64, !noalias !61
  %index.next336 = add nuw i64 %index331, 4       ; 2 uses
  %vec.ind.next337 = add nuw nsw <4 x i64> %vec.ind332, splat (i64 4)
  %i.gy = icmp eq i64 %index.next336, %n.vec322
  br i1 %i.gy, label %vec.epilog.middle.block338, label %vec.epilog.vector.body330, !llvm.loop !69

vec.epilog.middle.block338:                       ; preds = %vec.epilog.vector.body330
  br i1 %cmp.n339, label %.loopexit, label %.noexc134.us.preheader

.noexc134.us.preheader:                           ; preds = %vector.memcheck287, %vector.scevcheck283, %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block338
  %indvars.iv.ph = phi i64 [ 0, %iter.check317 ], [ 0, %vector.scevcheck283 ], [ 0, %vector.memcheck287 ], [ %n.vec301, %vec.epilog.iter.check319 ], [ %n.vec322, %vec.epilog.middle.block338 ] ; 3 uses
  %.2162.us.ph = phi ptr [ %.1164.us, %iter.check317 ], [ %.1164.us, %vector.scevcheck283 ], [ %.1164.us, %vector.memcheck287 ], [ %i.gp, %vec.epilog.iter.check319 ], [ %i.gu, %vec.epilog.middle.block338 ] ; 2 uses
  br i1 %lcmp.mod.not, label %.noexc134.us.prol.loopexit, label %.noexc134.us.prol

.noexc134.us.prol:                                ; preds = %.noexc134.us.preheader, %.noexc134.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc134.us.prol ], [ %indvars.iv.ph, %.noexc134.us.preheader ] ; 2 uses
  %.2162.us.prol = phi ptr [ %i.hb, %.noexc134.us.prol ], [ %.2162.us.ph, %.noexc134.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.noexc134.us.prol ], [ 0, %.noexc134.us.preheader ]
  %i.gz = add nuw nsw i64 %indvars.iv.prol, %indvars.iv179
  %.reass.us.prol = mul i64 %factor.op.mul, %i.gz
  %gep.us.prol = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.prol
  %i.ha = load float, ptr %gep.us.prol, align 4, !tbaa !38
  store float %i.ha, ptr %.2162.us.prol, align 4, !tbaa !38
  %i.hb = getelementptr inbounds nuw i8, ptr %.2162.us.prol, i64 4 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc134.us.prol.loopexit, label %.noexc134.us.prol, !llvm.loop !70

.noexc134.us.prol.loopexit:                       ; preds = %.noexc134.us.prol, %.noexc134.us.preheader
  %.lcssa344.unr = phi ptr [ poison, %.noexc134.us.preheader ], [ %i.hb, %.noexc134.us.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.noexc134.us.preheader ], [ %indvars.iv.next.prol, %.noexc134.us.prol ]
  %.2162.us.unr = phi ptr [ %.2162.us.ph, %.noexc134.us.preheader ], [ %i.hb, %.noexc134.us.prol ]
  %i.hc = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.hd = icmp ugt i64 %i.hc, -4
  br i1 %i.hd, label %.loopexit, label %.noexc134.us

._crit_edge.us:                                   ; preds = %.loopexit
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, %i.ds ; 2 uses
  %i.he = add nuw nsw i64 %indvars.iv.next180, %i.dt
  %i.hf = icmp samesign ult i64 %i.he, %i.du
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hf, label %.preheader160.us, label %._crit_edge168, !llvm.loop !72

._crit_edge168:                                   ; preds = %._crit_edge.us, %.preheader160.lr.ph
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge.split, label %.preheader160.lr.ph, !llvm.loop !73

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
end_hunk_0
begin_hunk_1_@_ZN4ncnn27DeformableConv2D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %mul251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.rf, i64 %i.pz) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul251, 0 ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul251, 1
  %i.rg = sub i64 0, %mul.result
  %invariant.op = or i1 %i.rd, %ident.check
  %i.rh = zext i32 %i.qq to i64
  %min.iters.check258 = icmp ult i32 %.fr342, 16
  %i.ri = and i64 %i.pw, 12
  %n.vec = and i64 %i.pw, 2147483632              ; 4 uses
  %broadcast.splatinsert259 = insertelement <16 x i64> poison, i64 %i.pu, i64 0
  %broadcast.splat260 = shufflevector <16 x i64> %broadcast.splatinsert259, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert263 = insertelement <16 x i64> poison, i64 %i.pv, i64 0
  %broadcast.splat264 = shufflevector <16 x i64> %broadcast.splatinsert263, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.pw
  %min.epilog.iters.check = icmp eq i64 %i.ri, 0
  %n.vec265 = and i64 %i.pw, 2147483644           ; 3 uses
  %broadcast.splatinsert268 = insertelement <4 x i64> poison, i64 %i.pu, i64 0
  %broadcast.splat269 = shufflevector <4 x i64> %broadcast.splatinsert268, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert272 = insertelement <4 x i64> poison, i64 %i.pv, i64 0
  %broadcast.splat273 = shufflevector <4 x i64> %broadcast.splatinsert272, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n282 = icmp eq i64 %n.vec265, %i.pw
  br label %.preheader2.us.i

.preheader2.us.i:                                 ; preds = %._crit_edge8.us.i, %.preheader2.lr.ph.split.us.split.split.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %._crit_edge8.us.i ], [ 0, %.preheader2.lr.ph.split.us.split.split.i ] ; 5 uses
  %i.rj = mul i64 %i.qu, %indvars.iv28.i          ; 2 uses
  %i.rk = mul i64 %i.qk, %indvars.iv28.i
  %i.rl = mul nuw nsw i64 %indvars.iv28.i, %i.pw  ; 3 uses
  %i.rm = trunc nuw nsw i64 %indvars.iv28.i to i32 ; 2 uses
  %i.rn = lshr i32 %i.rm, %i.px                   ; 3 uses
  %i.ro = and i32 %i.py, %i.rm                    ; 3 uses
  %i.rp = mul nuw nsw i32 %i.rn, %i.bh
  %i.rq = zext i32 %i.rp to i64
  %i.rr = mul i32 %i.qc, %i.rn
  %i.rs = add i32 %i.ro, %i.rr
  %i.rt = mul i32 %i.qo, %i.rn
  %i.ru = add i32 %i.ro, %i.rt
  %i.rv = getelementptr i8, ptr %.val, i64 %i.rj
  %i.rw = getelementptr i8, ptr %i.ra, i64 %i.rj
  %i.rx = getelementptr i8, ptr %.val, i64 %i.rk
  %i.ry = zext i32 %i.rs to i64
  %i.rz = zext i32 %i.ru to i64
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.rl, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert266 = insertelement <4 x i64> poison, i64 %i.rl, i64 0
  %broadcast.splat267 = shufflevector <4 x i64> %broadcast.splatinsert266, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader1.us.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.sa = add nuw nsw i64 %indvars.iv.i, %i.rl
  %i.sb = mul nuw nsw i64 %i.sa, %i.pu
  %i.sc = add nuw nsw i64 %i.sb, %indvars.iv23.i
  %i.sd = mul nuw nsw i64 %i.sc, %i.pv
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.sd
  %i.se = load float, ptr %gep.i, align 4, !tbaa !38
  %i.sf = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.sg = udiv i32 %i.sf, %.057
  %i.sh = urem i32 %i.sf, %.057
  %i.si = add nsw i32 %i.sg, %i.su
  %i.sj = mul nsw i32 %i.si, %.057
  %i.sk = add nsw i32 %i.sj, %i.sh
  %i.sl = mul nsw i32 %i.sk, %.056
  %i.sm = add nsw i32 %i.sl, %i.ro
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.pn, i64 %i.sn
  store float %i.se, ptr %i.so, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.pw
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %vec.epilog.scalar.ph, !llvm.loop !79

iter.check:                                       ; preds = %._crit_edge.us.i, %.preheader1.us.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %._crit_edge.us.i ], [ 0, %.preheader1.us.i ] ; 7 uses
  %i.sp = shl nuw nsw i64 %indvars.iv18.i, 2      ; 2 uses
  %scevgep255 = getelementptr i8, ptr %i.us, i64 %i.sp ; 4 uses
  %scevgep256 = getelementptr i8, ptr %i.ut, i64 %i.sp ; 4 uses
  %i.sq = icmp ult ptr %scevgep255, %scevgep256
  %umin = select i1 %i.sq, ptr %scevgep255, ptr %scevgep256
  %i.sr = icmp ugt ptr %scevgep255, %scevgep256
  %umax = select i1 %i.sr, ptr %scevgep255, ptr %scevgep256
  %scevgep257 = getelementptr i8, ptr %umax, i64 4
  %i.ss = add i64 %indvars.iv18.i, %i.ur
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val, i64 %indvars.iv18.i ; 3 uses
  %i.st = trunc i64 %i.ss to i32
  %i.su = mul i32 %i.ps, %i.st                    ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.sv = shl nuw nsw i64 %indvars.iv18.i, 2
  %scevgep = getelementptr i8, ptr %i.uu, i64 %i.sv ; 4 uses
  %i.sw = urem i32 %.fr342, %.057
  %narrow = sub nuw nsw i32 %.fr342, %i.sw
  %i.sx = zext nneg i32 %narrow to i64
  %i.sy = mul i64 %indvars.iv18.i, %i.sx
  %i.sz = add i64 %i.sy, %i.uw
  %i.ta = trunc i64 %i.sz to i32                  ; 2 uses
  %i.tb = add i32 %i.ta, %i.rc
  %i.tc = icmp slt i32 %i.tb, %i.ta
  %i.td = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.te = getelementptr i8, ptr %scevgep, i64 %i.rg
  %i.tf = icmp ult ptr %i.td, %scevgep
  %i.tg = icmp ugt ptr %i.te, %scevgep
  %i.th = select i1 %i.re, i1 %i.tg, i1 %i.tf
  %i.ti = or i1 %i.th, %mul.overflow
  %.reass347 = or i1 %i.tc, %invariant.op
  %i.tj = or i1 %.reass347, %i.ti
  br i1 %i.tj, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %narrow343 = sub nuw nsw i32 %.fr342, %i.pt
  %i.tk = zext nneg i32 %narrow343 to i64
  %i.tl = mul i64 %indvars.iv18.i, %i.tk
  %i.tm = add i64 %i.tl, %i.uy
  %sext = shl i64 %i.tm, 32
  %i.tn = ashr exact i64 %sext, 30                ; 2 uses
  %scevgep252 = getelementptr i8, ptr %i.pn, i64 %i.tn
  %scevgep254 = getelementptr i8, ptr %scevgep253, i64 %i.tn
  %bound0 = icmp ult ptr %scevgep252, %scevgep257
  %bound1 = icmp ult ptr %umin, %scevgep254
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check258, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.main.loop.iter.check ] ; 2 uses
  %i.to = add nuw nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.tp = mul nuw nsw <16 x i64> %i.to, %broadcast.splat260
  %i.tq = add nuw nsw <16 x i64> %i.tp, %broadcast.splat262
  %i.tr = mul nuw nsw <16 x i64> %i.tq, %broadcast.splat264
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <16 x i64> %i.tr
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !38, !alias.scope !80
  %i.ts = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.tt = udiv i32 %i.ts, %.057
  %i.tu = urem i32 %i.ts, %.057
  %i.tv = add nsw i32 %i.tt, %i.su
  %i.tw = mul nsw i32 %i.tv, %.057
  %i.tx = add nsw i32 %i.tw, %i.tu
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.pn, i64 %i.ty
  store <16 x float> %wide.masked.gather, ptr %i.tz, align 4, !tbaa !38, !alias.scope !83, !noalias !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.ua = icmp eq i64 %index.next, %n.vec
  br i1 %i.ua, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert274 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat275 = shufflevector <4 x i64> %broadcast.splatinsert274, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat275, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index276 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next280, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind277 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next281, %vec.epilog.vector.body ] ; 2 uses
  %i.ub = add nuw nsw <4 x i64> %vec.ind277, %broadcast.splat267
  %i.uc = mul nuw nsw <4 x i64> %i.ub, %broadcast.splat269
  %i.ud = add nuw nsw <4 x i64> %i.uc, %broadcast.splat271
  %i.ue = mul nuw nsw <4 x i64> %i.ud, %broadcast.splat273
  %wide.gep278 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.ue
  %wide.masked.gather279 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep278, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !38, !alias.scope !80
  %i.uf = trunc nuw nsw i64 %index276 to i32      ; 2 uses
  %i.ug = udiv i32 %i.uf, %.057
  %i.uh = urem i32 %i.uf, %.057
  %i.ui = add nsw i32 %i.ug, %i.su
  %i.uj = mul nsw i32 %i.ui, %.057
  %i.uk = add nsw i32 %i.uj, %i.uh
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [4 x i8], ptr %i.pn, i64 %i.ul
  store <4 x float> %wide.masked.gather279, ptr %i.um, align 4, !tbaa !38, !alias.scope !83, !noalias !80
  %index.next280 = add nuw i64 %index276, 4       ; 2 uses
  %vec.ind.next281 = add nuw nsw <4 x i64> %vec.ind277, splat (i64 4)
  %i.un = icmp eq i64 %index.next280, %n.vec265
  br i1 %i.un, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n282, label %._crit_edge.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec265, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader1.us.i:                                 ; preds = %._crit_edge5.us.i, %.preheader2.us.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader2.us.i ], [ %indvars.iv.next24.i, %._crit_edge5.us.i ] ; 9 uses
  %i.uo = mul i64 %i.qv, %indvars.iv23.i          ; 2 uses
  %i.up = mul i64 %i.ql, %indvars.iv23.i
  %i.uq = add nuw i64 %indvars.iv23.i, %i.rq
  %i.ur = mul i64 %i.uq, %i.pv
  %i.us = getelementptr i8, ptr %i.rv, i64 %i.uo
  %i.ut = getelementptr i8, ptr %i.rw, i64 %i.uo
  %i.uu = getelementptr i8, ptr %i.rx, i64 %i.up
  %i.uv = mul nuw nsw i64 %indvars.iv23.i, %i.rb
  %i.uw = add nuw i64 %i.uv, %i.ry
  %i.ux = mul nuw nsw i64 %indvars.iv23.i, %i.rh
  %i.uy = add nuw i64 %i.ux, %i.rz
  %broadcast.splatinsert261 = insertelement <16 x i64> poison, i64 %indvars.iv23.i, i64 0
  %broadcast.splat262 = shufflevector <16 x i64> %broadcast.splatinsert261, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert270 = insertelement <4 x i64> poison, i64 %indvars.iv23.i, i64 0
  %broadcast.splat271 = shufflevector <4 x i64> %broadcast.splatinsert270, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %i.pv
  br i1 %exitcond22.not.i, label %._crit_edge5.us.i, label %iter.check, !llvm.loop !87

._crit_edge5.us.i:                                ; preds = %._crit_edge.us.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %i.pu
  br i1 %exitcond27.not.i, label %._crit_edge8.us.i, label %.preheader1.us.i, !llvm.loop !88

._crit_edge8.us.i:                                ; preds = %._crit_edge5.us.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %._crit_edge13.i, label %.preheader2.us.i, !llvm.loop !89

._crit_edge13.i:                                  ; preds = %._crit_edge8.us.i, %.preheader2.lr.ph.split.us.i, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.uz = sdiv i32 %.fr342, %.057
  %i.va = sdiv i32 %i.bn, %.056
  call void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.pg, i32 noundef %i.uz, i32 noundef %i.bi, i32 noundef %i.va, ptr noundef null)
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !11 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.vc, null
  br i1 %.not.i74.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %._crit_edge13.i
  %i.vd = atomicrmw add ptr %i.vc, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %._crit_edge13.i
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i, label %bb.ez, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.vg = atomicrmw add ptr %i.vf, i32 -1 acq_rel, align 4
  %i.vh = icmp eq i32 %i.vg, 1
  br i1 %i.vh, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !17 ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.vj, null
  %i.vk = load ptr, ptr %i.pg, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.vl = load ptr, ptr %i.vj, align 8, !tbaa !9
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 24
  %i.vn = load ptr, ptr %i.vm, align 8
  invoke void %i.vn(ptr noundef nonnull align 8 dereferenceable(8) %i.vj, ptr noundef %i.vk)
          to label %bb.ez unwind label %bb.fg, !inline_history !74

bb.ex:                                            ; preds = %bb.ev
  %.not.i18.i.i = icmp eq ptr %i.vk, null
  br i1 %.not.i18.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @free(ptr noundef nonnull %i.vk) #9
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.eu, %bb.et
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.vt = load ptr, ptr %i.vb, align 8, !tbaa !11 ; 2 uses
  %i.vu = load <2 x ptr>, ptr %2, align 16, !tbaa !75
  store <2 x ptr> %i.vu, ptr %i.pg, align 8, !tbaa !75
  %i.vv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vw = load i64, ptr %i.vv, align 16, !tbaa !56
  store i64 %i.vw, ptr %i.vo, align 8, !tbaa !56
  %i.vx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !76
  store i32 %i.vy, ptr %i.vp, align 8, !tbaa !76
  %i.vz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 16, !tbaa !17
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.wa, ptr %i.wb, align 8, !tbaa !17
  %i.wc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.wd = load <4 x i32>, ptr %i.wc, align 8, !tbaa !77
  store <4 x i32> %i.wd, ptr %i.vq, align 8, !tbaa !77
  %i.we = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !78
  store i32 %i.wf, ptr %i.vr, align 8, !tbaa !78
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.wh = load i64, ptr %i.wg, align 16, !tbaa !20
  store i64 %i.wh, ptr %i.vs, align 8, !tbaa !20
  %.not.i.i151 = icmp eq ptr %i.vt, null
  br i1 %.not.i.i151, label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.wi = atomicrmw add ptr %i.vt, i32 -1 acq_rel, align 4
  %i.wj = icmp eq i32 %i.wi, 1
  br i1 %i.wj, label %bb.fb, label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit

bb.fb:                                            ; preds = %bb.fa
  %i.wk = load ptr, ptr %i.vz, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i152 = icmp eq ptr %i.wk, null
  %i.wl = load ptr, ptr %2, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i152, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.wm = load ptr, ptr %i.wk, align 8, !tbaa !9
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %i.wo = load ptr, ptr %i.wn, align 8
  invoke void %i.wo(ptr noundef nonnull align 8 dereferenceable(8) %i.wk, ptr noundef %i.wl)
          to label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit unwind label %bb.ff, !inline_history !19

bb.fd:                                            ; preds = %bb.fb
  %.not.i72.i = icmp eq ptr %i.wl, null
  br i1 %.not.i72.i, label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @free(ptr noundef nonnull %i.wl) #9
  br label %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit

bb.ff:                                            ; preds = %bb.fc
  %i.wp = landingpad { ptr, i32 }
          catch ptr null
  %i.wq = extractvalue { ptr, i32 } %i.wp, 0
  call void @__clang_call_terminate(ptr %i.wq) #22
  unreachable

bb.fg:                                            ; preds = %bb.ew
  %i.wr = landingpad { ptr, i32 }
          cleanup
  %i.ws = load ptr, ptr %i.vb, align 8, !tbaa !11 ; 2 uses
  %.not.i67.i = icmp eq ptr %i.ws, null
  br i1 %.not.i67.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.wt = atomicrmw add ptr %i.ws, i32 -1 acq_rel, align 4
  %i.wu = icmp eq i32 %i.wt, 1
  br i1 %i.wu, label %bb.fi, label %_ZN4ncnn3MatD2Ev.exit.i

bb.fi:                                            ; preds = %bb.fh
  %i.wv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ww = load ptr, ptr %i.wv, align 16, !tbaa !17 ; 3 uses
  %.not3.i68.i = icmp eq ptr %i.ww, null
  %i.wx = load ptr, ptr %2, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i68.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.wy = load ptr, ptr %i.ww, align 8, !tbaa !9
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 24
  %i.xa = load ptr, ptr %i.wz, align 8
  invoke void %i.xa(ptr noundef nonnull align 8 dereferenceable(8) %i.ww, ptr noundef %i.wx)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.fm, !inline_history !19

bb.fk:                                            ; preds = %bb.fi
  %.not.i71.i = icmp eq ptr %i.wx, null
  br i1 %.not.i71.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @free(ptr noundef nonnull %i.wx) #9
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.fm:                                            ; preds = %bb.fj
  %i.xb = landingpad { ptr, i32 }
          catch ptr null
  %i.xc = extractvalue { ptr, i32 } %i.xb, 0
  call void @__clang_call_terminate(ptr %i.xc) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.fl, %bb.fk, %bb.fj, %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %common.resume

_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit: ; preds = %bb.ez, %bb.fa, %bb.fc, %bb.fd, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.fn

bb.fn:                                            ; preds = %_ZN4ncnnL44deformableconv2d_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii.exit, %_ZN4ncnn3MatD2Ev.exit72
  %i.xd = load i8, ptr %1, align 8, !tbaa !90, !range !50, !noundef !51
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %bb.fo, label %bb.fu

bb.fo:                                            ; preds = %bb.fn
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !11 ; 2 uses
  %.not.i112 = icmp eq ptr %i.xh, null
  br i1 %.not.i112, label %_ZN4ncnn3Mat7releaseEv.exit114, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.xi = atomicrmw add ptr %i.xh, i32 -1 acq_rel, align 4
  %i.xj = icmp eq i32 %i.xi, 1
  br i1 %i.xj, label %bb.fq, label %_ZN4ncnn3Mat7releaseEv.exit114

bb.fq:                                            ; preds = %bb.fp
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 368
end_hunk_1
