Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZNK4ncnn8Gemm_x8612forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a

bb.dy:                                            ; preds = %bb.dx
  call void @free(ptr noundef nonnull %i.sk) #9
  br label %_ZN4ncnnL19gemm_AT_BT_x86_int8ERKNS_3MatES2_S2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.exit

bb.dz:                                            ; preds = %bb.dw
  %i.so = landingpad { ptr, i32 }
          catch ptr null
  %i.sp = extractvalue { ptr, i32 } %i.so, 0
  call void @__clang_call_terminate(ptr %i.sp) #23
  unreachable

bb.ea:                                            ; preds = %bb.dm
  %i.sq = atomicrmw add ptr %i.rn, i32 -1 acq_rel, align 4
  %i.sr = icmp eq i32 %i.sq, 1
  br i1 %i.sr, label %bb.eb, label %_ZN4ncnn3MatD2Ev.exit.i

bb.eb:                                            ; preds = %bb.ea
  %i.ss = load ptr, ptr %i.pe, align 8, !tbaa !17 ; 3 uses
  %.not3.i44.i = icmp eq ptr %i.ss, null
  %i.st = load ptr, ptr %21, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i44.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.su = load ptr, ptr %i.ss, align 8, !tbaa !9
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8
  invoke void %i.sw(ptr noundef nonnull align 8 dereferenceable(8) %i.ss, ptr noundef %i.st)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.ef, !inline_history !19

bb.ed:                                            ; preds = %bb.eb
  %.not.i47.i = icmp eq ptr %i.st, null
  br i1 %.not.i47.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @free(ptr noundef nonnull %i.st) #9
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.ef:                                            ; preds = %bb.ec
  %i.sx = landingpad { ptr, i32 }
          catch ptr null
  %i.sy = extractvalue { ptr, i32 } %i.sx, 0
  call void @__clang_call_terminate(ptr %i.sy) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.ea, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #9
  br label %_ZN4ncnn3MatD2Ev.exit188

_ZN4ncnnL19gemm_AT_BT_x86_int8ERKNS_3MatES2_S2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.exit: ; preds = %_ZNK4ncnn3Mat5emptyEv.exit54.thread.i, %bb.du, %bb.dw, %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.eg:                                            ; preds = %.noexc283, %bb.dl
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit188

bb.eh:                                            ; preds = %bb.dk, %.thread594
  %i.ta = load i32, ptr %i.aw, align 8, !tbaa !43
  %.not164 = icmp eq i32 %i.ta, 0
  br i1 %.not164, label %bb.gb, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.tb = load ptr, ptr %1, align 8, !tbaa !103   ; 11 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !44 ; 7 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !46 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !84 ; 2 uses
  %i.tk = load i32, ptr %i.mt, align 8, !tbaa !101
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.tm = load <2 x float>, ptr %i.tl, align 8, !tbaa !68
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !47
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !48
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i32 %i.tf, ptr %i.ac, align 4, !tbaa !45
  store i32 %i.th, ptr %i.ad, align 4, !tbaa !45
  store i32 %i.tj, ptr %i.ae, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #9
  %.not.i285 = icmp eq i32 %i.tj, 0
  br i1 %.not.i285, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !85
  %i.tv = icmp eq i32 %i.tu, 3
  %.in.v.i = select i1 %i.tv, i64 56, i64 48
  %.in.i = getelementptr inbounds nuw i8, ptr %i.tb, i64 %.in.v.i
  %i.tw = load i32, ptr %.in.i, align 8, !tbaa !45
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !60
  %i.tz = mul nsw i32 %i.ty, %i.tw
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tb, i64 44
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !86
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.uc = phi i32 [ %i.tz, %bb.ej ], [ %i.ub, %bb.ek ] ; 2 uses
  store i32 %i.uc, ptr %i.af, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #9
  invoke fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiiiiRiS0_S0_i(i32 noundef %i.tf, i32 noundef %i.uc, i32 noundef %i.th, i32 noundef %i.to, i32 noundef %i.tq, i32 noundef %i.ts, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.ai, i32 noundef %i.nv)
          to label %.noexc297 unwind label %bb.ga

.noexc297:                                        ; preds = %bb.el
  %i.ud = load i32, ptr %i.ag, align 4, !tbaa !45 ; 4 uses
  %i.ue = add i32 %i.tf, -1
  %i.uf = add i32 %i.ue, %i.ud
  %i.ug = sdiv i32 %i.uf, %i.ud
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #9
  %i.uh = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ui = load i32, ptr %i.ah, align 4, !tbaa !45 ; 3 uses
  %i.uj = add i32 %i.uh, -1
  %i.uk = add i32 %i.uj, %i.ui
  %i.ul = sdiv i32 %i.uk, %i.ui                   ; 4 uses
  store i32 %i.ul, ptr %i.aj, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #9
  %i.um = load i32, ptr %i.ad, align 4, !tbaa !45
  %i.un = load i32, ptr %i.ai, align 4, !tbaa !45 ; 3 uses
  %i.uo = add i32 %i.um, -1
  %i.up = add i32 %i.uo, %i.un
  %i.uq = sdiv i32 %i.up, %i.un                   ; 2 uses
  store i32 %i.uq, ptr %i.ak, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  %i.ur = mul nsw i32 %i.un, %i.ui
  %i.us = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !89
  %i.uu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  store i64 0, ptr %i.uw, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.uv, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef %i.ur, i32 noundef %i.uq, i32 noundef %i.ul, i64 noundef 1, ptr noundef %i.ut)
          to label %.noexc298 unwind label %bb.ga

.noexc298:                                        ; preds = %.noexc297
  %i.ux = load ptr, ptr %17, align 8, !tbaa !18
  %i.uy = icmp eq ptr %i.ux, null
  br i1 %i.uy, label %_ZNK4ncnn3Mat5emptyEv.exit83.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit83.i

_ZNK4ncnn3Mat5emptyEv.exit83.i:                   ; preds = %.noexc298
  %i.uz = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.va = load i64, ptr %i.uw, align 8, !tbaa !20
  %i.vb = load i32, ptr %i.uz, align 8, !tbaa !51
  %i.vc = sext i32 %i.vb to i64
  %i.vd = mul i64 %i.va, %i.vc
  %i.ve = icmp eq i64 %i.vd, 0
  br i1 %i.ve, label %_ZNK4ncnn3Mat5emptyEv.exit83.thread.i, label %bb.em

bb.em:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit83.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #9
  %i.vf = load i32, ptr %i.ak, align 4, !tbaa !45
  %i.vg = mul nsw i32 %i.vf, %i.ul
  store i32 %i.vg, ptr %i.al, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #9
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !85
  %i.vj = icmp eq i32 %i.vi, 3                    ; 3 uses
  %.in.v.i.i.i = select i1 %i.vj, i64 56, i64 48
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.tb, i64 %.in.v.i.i.i
  %i.vk = load i32, ptr %.in.i.i.i, align 8, !tbaa !45 ; 3 uses
  %i.vl = icmp sgt i32 %i.vk, 0
  br i1 %i.vl, label %.lr.ph53.i.i.i, label %.loopexit.i

.lr.ph53.i.i.i:                                   ; preds = %bb.em
  %i.vm = getelementptr inbounds nuw i8, ptr %i.tb, i64 44
  %i.vn = load i32, ptr %i.vm, align 4            ; 2 uses
  %i.vo = sext i32 %i.vn to i64                   ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tb, i64 64
  %i.vq = load i64, ptr %i.vp, align 8            ; 2 uses
  %i.vr = load ptr, ptr %i.tb, align 8, !tbaa !18 ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !60 ; 2 uses
  %i.vu = sext i32 %i.vt to i64                   ; 3 uses
  %i.vv = mul nsw i32 %i.vt, %i.vn                ; 13 uses
  %i.vw = icmp sgt i32 %i.vv, 3
  br i1 %i.vw, label %.lr.ph53.split.us.preheader.i.i.i, label %.lr.ph53.split.i.i.i

.lr.ph53.split.us.preheader.i.i.i:                ; preds = %.lr.ph53.i.i.i
  %i.vx = and i32 %i.vv, 2147483644               ; 3 uses
  %wide.trip.count101.i.i.i = zext nneg i32 %i.vk to i64 ; 2 uses
  %..i.i.i = select i1 %i.vj, i64 %i.vq, i64 %i.vo
  %factor.op.mul108.i.i.i = mul i64 %..i.i.i, %i.vu ; 2 uses
  %.not.i86.i = icmp eq i32 %i.vx, %i.vv
  br i1 %.not.i86.i, label %.lr.ph53.split.us.i.us.i.i.preheader, label %.lr.ph53.split.us.i.i.i.preheader

.lr.ph53.split.us.i.i.i.preheader:                ; preds = %.lr.ph53.split.us.preheader.i.i.i
  %i.vy = add nsw i32 %i.vv, -4                   ; 2 uses
  %i.vz = lshr i32 %i.vy, 2
  %i.wa = add nuw nsw i32 %i.vz, 1                ; 2 uses
  %xtraiter973 = and i32 %i.wa, 3                 ; 3 uses
  %i.wb = icmp ult i32 %i.vy, 12
  %unroll_iter = and i32 %i.wa, 2147483644
  %lcmp.mod974.not = icmp eq i32 %xtraiter973, 0
  %lcmp.mod977 = icmp ne i32 %xtraiter973, 0
  %25 = and i32 %i.vv, 2147483644
  %i.wc = xor i32 %25, -1
  %i.wd = add nsw i32 %i.vv, %i.wc                ; 2 uses
  %i.we = zext i32 %i.wd to i64
  %i.wf = add nuw nsw i64 %i.we, 1                ; 2 uses
  %min.iters.check898 = icmp ult i32 %i.wd, 7
  %n.vec900 = and i64 %i.wf, 8589934584           ; 4 uses
  %i.wg = trunc i64 %n.vec900 to i32
  %i.wh = add i32 %i.vx, %i.wg
  %i.wi = shl nuw nsw i64 %n.vec900, 2
  %cmp.n910 = icmp eq i64 %i.wf, %n.vec900
  br label %.lr.ph53.split.us.i.i.i

.lr.ph53.split.us.i.us.i.i.preheader:             ; preds = %.lr.ph53.split.us.preheader.i.i.i
  %i.wj = add nsw i32 %i.vv, -4                   ; 2 uses
  %i.wk = lshr i32 %i.wj, 2
  %i.wl = add nuw nsw i32 %i.wk, 1                ; 2 uses
  %xtraiter979 = and i32 %i.wl, 3                 ; 3 uses
  %i.wm = icmp ult i32 %i.wj, 12
  %unroll_iter984 = and i32 %i.wl, 2147483644
  %lcmp.mod981.not = icmp eq i32 %xtraiter979, 0
  %lcmp.mod983 = icmp ne i32 %xtraiter979, 0
  br label %.lr.ph53.split.us.i.us.i.i

.lr.ph53.split.us.i.us.i.i:                       ; preds = %.lr.ph53.split.us.i.us.i.i.preheader, %..preheader_crit_edge.us.i.us.i.i
  %indvars.iv98.i.us.i.i = phi i64 [ %indvars.iv.next99.i.us.i.i, %..preheader_crit_edge.us.i.us.i.i ], [ 0, %.lr.ph53.split.us.i.us.i.i.preheader ] ; 2 uses
  %.03749.us.i.us.i.i = phi <4 x float> [ %.lcssa963, %..preheader_crit_edge.us.i.us.i.i ], [ zeroinitializer, %.lr.ph53.split.us.i.us.i.i.preheader ] ; 2 uses
  %.reass109.i.us.i.i = mul i64 %indvars.iv98.i.us.i.i, %factor.op.mul108.i.i.i
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %.reass109.i.us.i.i ; 2 uses
  br i1 %i.wm, label %.epil.preheader978, label %.lr.ph53.split.us.i.us.i.i.new

.lr.ph53.split.us.i.us.i.i.new:                   ; preds = %.lr.ph53.split.us.i.us.i.i, %.lr.ph53.split.us.i.us.i.i.new
  %.02440.us.i.us.i.i = phi ptr [ %i.xh, %.lr.ph53.split.us.i.us.i.i.new ], [ %i.wn, %.lr.ph53.split.us.i.us.i.i ] ; 5 uses
  %.13839.us.i.us.i.i = phi <4 x float> [ %i.xg, %.lr.ph53.split.us.i.us.i.i.new ], [ %.03749.us.i.us.i.i, %.lr.ph53.split.us.i.us.i.i ]
  %niter985 = phi i32 [ %niter985.next.3, %.lr.ph53.split.us.i.us.i.i.new ], [ 0, %.lr.ph53.split.us.i.us.i.i ]
  %i.wo = load <4 x i32>, ptr %.02440.us.i.us.i.i, align 1, !tbaa !113
  %i.wp = and <4 x i32> %i.wo, splat (i32 2147483647)
  %i.wq = bitcast <4 x i32> %i.wp to <4 x float>
  %i.wr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13839.us.i.us.i.i, <4 x float> nofpclass(nan inf) %i.wq)
  %i.ws = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i, i64 16
  %i.wt = load <4 x i32>, ptr %i.ws, align 1, !tbaa !113
  %i.wu = and <4 x i32> %i.wt, splat (i32 2147483647)
  %i.wv = bitcast <4 x i32> %i.wu to <4 x float>
  %i.ww = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wr, <4 x float> nofpclass(nan inf) %i.wv)
  %i.wx = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i, i64 32
  %i.wy = load <4 x i32>, ptr %i.wx, align 1, !tbaa !113
  %i.wz = and <4 x i32> %i.wy, splat (i32 2147483647)
  %i.xa = bitcast <4 x i32> %i.wz to <4 x float>
  %i.xb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ww, <4 x float> nofpclass(nan inf) %i.xa)
  %i.xc = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i, i64 48
  %i.xd = load <4 x i32>, ptr %i.xc, align 1, !tbaa !113
  %i.xe = and <4 x i32> %i.xd, splat (i32 2147483647)
  %i.xf = bitcast <4 x i32> %i.xe to <4 x float>
  %i.xg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xb, <4 x float> nofpclass(nan inf) %i.xf) ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i, i64 64 ; 2 uses
  %niter985.next.3 = add nuw nsw i32 %niter985, 4 ; 2 uses
  %niter985.ncmp.3.not = icmp eq i32 %niter985.next.3, %unroll_iter984
  br i1 %niter985.ncmp.3.not, label %..preheader_crit_edge.us.i.us.i.i.unr-lcssa, label %.lr.ph53.split.us.i.us.i.i.new, !llvm.loop !250

..preheader_crit_edge.us.i.us.i.i.unr-lcssa:      ; preds = %.lr.ph53.split.us.i.us.i.i.new
  br i1 %lcmp.mod981.not, label %..preheader_crit_edge.us.i.us.i.i, label %.epil.preheader978

.epil.preheader978:                               ; preds = %..preheader_crit_edge.us.i.us.i.i.unr-lcssa, %.lr.ph53.split.us.i.us.i.i
  %.02440.us.i.us.i.i.epil.init = phi ptr [ %i.wn, %.lr.ph53.split.us.i.us.i.i ], [ %i.xh, %..preheader_crit_edge.us.i.us.i.i.unr-lcssa ]
  %.13839.us.i.us.i.i.epil.init = phi <4 x float> [ %.03749.us.i.us.i.i, %.lr.ph53.split.us.i.us.i.i ], [ %i.xg, %..preheader_crit_edge.us.i.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod983)
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.epil.preheader978
  %.02440.us.i.us.i.i.epil = phi ptr [ %.02440.us.i.us.i.i.epil.init, %.epil.preheader978 ], [ %i.xm, %bb.en ] ; 2 uses
  %.13839.us.i.us.i.i.epil = phi <4 x float> [ %.13839.us.i.us.i.i.epil.init, %.epil.preheader978 ], [ %i.xl, %bb.en ]
  %epil.iter980 = phi i32 [ 0, %.epil.preheader978 ], [ %epil.iter980.next, %bb.en ]
  %i.xi = load <4 x i32>, ptr %.02440.us.i.us.i.i.epil, align 1, !tbaa !113
  %i.xj = and <4 x i32> %i.xi, splat (i32 2147483647)
  %i.xk = bitcast <4 x i32> %i.xj to <4 x float>
  %i.xl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13839.us.i.us.i.i.epil, <4 x float> nofpclass(nan inf) %i.xk) ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i.epil, i64 16
  %epil.iter980.next = add i32 %epil.iter980, 1   ; 2 uses
  %epil.iter980.cmp.not = icmp eq i32 %epil.iter980.next, %xtraiter979
  br i1 %epil.iter980.cmp.not, label %..preheader_crit_edge.us.i.us.i.i, label %bb.en, !llvm.loop !251

..preheader_crit_edge.us.i.us.i.i:                ; preds = %bb.en, %..preheader_crit_edge.us.i.us.i.i.unr-lcssa
  %.lcssa963 = phi <4 x float> [ %i.xg, %..preheader_crit_edge.us.i.us.i.i.unr-lcssa ], [ %i.xl, %bb.en ] ; 2 uses
  %indvars.iv.next99.i.us.i.i = add nuw nsw i64 %indvars.iv98.i.us.i.i, 1 ; 2 uses
  %exitcond102.not.i.us.i.i = icmp eq i64 %indvars.iv.next99.i.us.i.i, %wide.trip.count101.i.i.i
  br i1 %exitcond102.not.i.us.i.i, label %.loopexit.i, label %.lr.ph53.split.us.i.us.i.i, !llvm.loop !252

.lr.ph53.split.us.i.i.i:                          ; preds = %.lr.ph53.split.us.i.i.i.preheader, %._crit_edge.us.i.loopexit.i.i
  %indvars.iv98.i.i.i = phi i64 [ %indvars.iv.next99.i.i.i, %._crit_edge.us.i.loopexit.i.i ], [ 0, %.lr.ph53.split.us.i.i.i.preheader ] ; 2 uses
  %.03550.us.i.i.i = phi float [ %.sroa.speculated29.us.i.i.i.lcssa, %._crit_edge.us.i.loopexit.i.i ], [ 0.000000e+00, %.lr.ph53.split.us.i.i.i.preheader ] ; 2 uses
  %.03749.us.i.i.i = phi <4 x float> [ %.lcssa967, %._crit_edge.us.i.loopexit.i.i ], [ zeroinitializer, %.lr.ph53.split.us.i.i.i.preheader ] ; 2 uses
  %.reass109.i.i.i = mul i64 %indvars.iv98.i.i.i, %factor.op.mul108.i.i.i
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %.reass109.i.i.i ; 2 uses
  br i1 %i.wb, label %.epil.preheader, label %.lr.ph53.split.us.i.i.i.new

.lr.ph53.split.us.i.i.i.new:                      ; preds = %.lr.ph53.split.us.i.i.i, %.lr.ph53.split.us.i.i.i.new
  %.02440.us.i.i.i = phi ptr [ %i.yh, %.lr.ph53.split.us.i.i.i.new ], [ %i.xn, %.lr.ph53.split.us.i.i.i ] ; 5 uses
  %.13839.us.i.i.i = phi <4 x float> [ %i.yg, %.lr.ph53.split.us.i.i.i.new ], [ %.03749.us.i.i.i, %.lr.ph53.split.us.i.i.i ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph53.split.us.i.i.i.new ], [ 0, %.lr.ph53.split.us.i.i.i ]
  %i.xo = load <4 x i32>, ptr %.02440.us.i.i.i, align 1, !tbaa !113
  %i.xp = and <4 x i32> %i.xo, splat (i32 2147483647)
  %i.xq = bitcast <4 x i32> %i.xp to <4 x float>
  %i.xr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13839.us.i.i.i, <4 x float> nofpclass(nan inf) %i.xq)
  %i.xs = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i, i64 16
  %i.xt = load <4 x i32>, ptr %i.xs, align 1, !tbaa !113
  %i.xu = and <4 x i32> %i.xt, splat (i32 2147483647)
  %i.xv = bitcast <4 x i32> %i.xu to <4 x float>
  %i.xw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xr, <4 x float> nofpclass(nan inf) %i.xv)
  %i.xx = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i, i64 32
  %i.xy = load <4 x i32>, ptr %i.xx, align 1, !tbaa !113
  %i.xz = and <4 x i32> %i.xy, splat (i32 2147483647)
  %i.ya = bitcast <4 x i32> %i.xz to <4 x float>
  %i.yb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xw, <4 x float> nofpclass(nan inf) %i.ya)
  %i.yc = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i, i64 48
  %i.yd = load <4 x i32>, ptr %i.yc, align 1, !tbaa !113
  %i.ye = and <4 x i32> %i.yd, splat (i32 2147483647)
  %i.yf = bitcast <4 x i32> %i.ye to <4 x float>
  %i.yg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yb, <4 x float> nofpclass(nan inf) %i.yf) ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i, i64 64 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.lr.ph47.us.i.i.i.preheader.unr-lcssa, label %.lr.ph53.split.us.i.i.i.new, !llvm.loop !250

.lr.ph47.us.i.i.i.preheader.unr-lcssa:            ; preds = %.lr.ph53.split.us.i.i.i.new
  br i1 %lcmp.mod974.not, label %.lr.ph47.us.i.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph47.us.i.i.i.preheader.unr-lcssa, %.lr.ph53.split.us.i.i.i
  %.02440.us.i.i.i.epil.init = phi ptr [ %i.xn, %.lr.ph53.split.us.i.i.i ], [ %i.yh, %.lr.ph47.us.i.i.i.preheader.unr-lcssa ]
  %.13839.us.i.i.i.epil.init = phi <4 x float> [ %.03749.us.i.i.i, %.lr.ph53.split.us.i.i.i ], [ %i.yg, %.lr.ph47.us.i.i.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod977)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %.epil.preheader
  %.02440.us.i.i.i.epil = phi ptr [ %.02440.us.i.i.i.epil.init, %.epil.preheader ], [ %i.ym, %bb.eo ] ; 2 uses
  %.13839.us.i.i.i.epil = phi <4 x float> [ %.13839.us.i.i.i.epil.init, %.epil.preheader ], [ %i.yl, %bb.eo ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.eo ]
  %i.yi = load <4 x i32>, ptr %.02440.us.i.i.i.epil, align 1, !tbaa !113
  %i.yj = and <4 x i32> %i.yi, splat (i32 2147483647)
  %i.yk = bitcast <4 x i32> %i.yj to <4 x float>
  %i.yl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13839.us.i.i.i.epil, <4 x float> nofpclass(nan inf) %i.yk) ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter973
  br i1 %epil.iter.cmp.not, label %.lr.ph47.us.i.i.i.preheader, label %bb.eo, !llvm.loop !253

.lr.ph47.us.i.i.i.preheader:                      ; preds = %bb.eo, %.lr.ph47.us.i.i.i.preheader.unr-lcssa
  %.lcssa967 = phi <4 x float> [ %i.yg, %.lr.ph47.us.i.i.i.preheader.unr-lcssa ], [ %i.yl, %bb.eo ] ; 2 uses
  %.lcssa966 = phi ptr [ %i.yh, %.lr.ph47.us.i.i.i.preheader.unr-lcssa ], [ %i.ym, %bb.eo ] ; 3 uses
  br i1 %min.iters.check898, label %.lr.ph47.us.i.i.i.preheader964, label %vector.ph899

vector.ph899:                                     ; preds = %.lr.ph47.us.i.i.i.preheader
  %i.yn = getelementptr i8, ptr %.lcssa966, i64 %i.wi
  %broadcast.splatinsert901 = insertelement <4 x float> poison, float %.03550.us.i.i.i, i64 0
  %broadcast.splat902 = shufflevector <4 x float> %broadcast.splatinsert901, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body903

vector.body903:                                   ; preds = %vector.body903, %vector.ph899
  %index904 = phi i64 [ 0, %vector.ph899 ], [ %index.next908, %vector.body903 ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat902, %vector.ph899 ], [ %i.ys, %vector.body903 ]
  %vec.phi905 = phi <4 x float> [ %broadcast.splat902, %vector.ph899 ], [ %i.yt, %vector.body903 ]
  %i.yo = shl i64 %index904, 2
  %next.gep = getelementptr i8, ptr %.lcssa966, i64 %i.yo ; 2 uses
  %i.yp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load906 = load <4 x float>, ptr %next.gep, align 4, !tbaa !68
  %wide.load907 = load <4 x float>, ptr %i.yp, align 4, !tbaa !68
  %i.yq = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load906)
  %i.yr = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load907)
  %i.ys = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.yq) ; 2 uses
  %i.yt = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi905, <4 x float> %i.yr) ; 2 uses
  %index.next908 = add nuw i64 %index904, 8       ; 2 uses
  %i.yu = icmp eq i64 %index.next908, %n.vec900
  br i1 %i.yu, label %middle.block909, label %vector.body903, !llvm.loop !254

middle.block909:                                  ; preds = %vector.body903
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ys, <4 x float> %i.yt)
  %i.yv = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n910, label %._crit_edge.us.i.loopexit.i.i, label %.lr.ph47.us.i.i.i.preheader964

.lr.ph47.us.i.i.i.preheader964:                   ; preds = %.lr.ph47.us.i.i.i.preheader, %middle.block909
  %.146.us.i.i.i.ph = phi i32 [ %i.vx, %.lr.ph47.us.i.i.i.preheader ], [ %i.wh, %middle.block909 ]
  %.12545.us.i.i.i.ph = phi ptr [ %.lcssa966, %.lr.ph47.us.i.i.i.preheader ], [ %i.yn, %middle.block909 ]
  %.13644.us.i.i.i.ph = phi float [ %.03550.us.i.i.i, %.lr.ph47.us.i.i.i.preheader ], [ %i.yv, %middle.block909 ]
  br label %.lr.ph47.us.i.i.i

.lr.ph47.us.i.i.i:                                ; preds = %.lr.ph47.us.i.i.i.preheader964, %.lr.ph47.us.i.i.i
  %.146.us.i.i.i = phi i32 [ %i.yz, %.lr.ph47.us.i.i.i ], [ %.146.us.i.i.i.ph, %.lr.ph47.us.i.i.i.preheader964 ]
  %.12545.us.i.i.i = phi ptr [ %i.yy, %.lr.ph47.us.i.i.i ], [ %.12545.us.i.i.i.ph, %.lr.ph47.us.i.i.i.preheader964 ] ; 2 uses
  %.13644.us.i.i.i = phi float [ %.sroa.speculated29.us.i.i.i, %.lr.ph47.us.i.i.i ], [ %.13644.us.i.i.i.ph, %.lr.ph47.us.i.i.i.preheader964 ]
  %i.yw = load float, ptr %.12545.us.i.i.i, align 4, !tbaa !68
  %i.yx = call fast float @llvm.fabs.f32(float %i.yw)
  %.sroa.speculated29.us.i.i.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.13644.us.i.i.i, float %i.yx) ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.12545.us.i.i.i, i64 4
  %i.yz = add nuw nsw i32 %.146.us.i.i.i, 1       ; 2 uses
  %exitcond97.not.i.i.i = icmp eq i32 %i.yz, %i.vv
  br i1 %exitcond97.not.i.i.i, label %._crit_edge.us.i.loopexit.i.i, label %.lr.ph47.us.i.i.i, !llvm.loop !255

._crit_edge.us.i.loopexit.i.i:                    ; preds = %.lr.ph47.us.i.i.i, %middle.block909
  %.sroa.speculated29.us.i.i.i.lcssa = phi float [ %i.yv, %middle.block909 ], [ %.sroa.speculated29.us.i.i.i, %.lr.ph47.us.i.i.i ] ; 2 uses
  %indvars.iv.next99.i.i.i = add nuw nsw i64 %indvars.iv98.i.i.i, 1 ; 2 uses
  %exitcond102.not.i.i.i = icmp eq i64 %indvars.iv.next99.i.i.i, %wide.trip.count101.i.i.i
  br i1 %exitcond102.not.i.i.i, label %.loopexit.i, label %.lr.ph53.split.us.i.i.i, !llvm.loop !252

end_hunk_0
begin_hunk_1_@_ZNK4ncnn8Gemm_x8612forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aep, i64 40
  %i.aqf = load i32, ptr %i.aqe, align 8, !tbaa !85
  %i.aqg = icmp eq i32 %i.aqf, 3
  %.in84.v.i = select i1 %i.aqg, i64 56, i64 48
  %.in84.i = getelementptr inbounds nuw i8, ptr %i.aep, i64 %.in84.v.i
  %i.aqh = load i32, ptr %.in84.i, align 8, !tbaa !45
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %i.aqj = load i32, ptr %i.aqi, align 8, !tbaa !60
  %i.aqk = mul nsw i32 %i.aqj, %i.aqh
  br label %bb.kq

bb.kp:                                            ; preds = %bb.kn
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aep, i64 40
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !85
  %i.aqn = icmp eq i32 %i.aqm, 3
  %.in.v.i399 = select i1 %i.aqn, i64 56, i64 48
  %.in.i400 = getelementptr inbounds nuw i8, ptr %i.aep, i64 %.in.v.i399
  %i.aqo = load i32, ptr %.in.i400, align 8, !tbaa !45
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %i.aqq = load i32, ptr %i.aqp, align 8, !tbaa !60
  %i.aqr = mul nsw i32 %i.aqq, %i.aqo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aep, i64 44
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !86
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %.sink.i = phi i32 [ %i.aqr, %bb.kp ], [ %i.aqd, %bb.ko ] ; 2 uses
  %i.aqu = phi i32 [ %i.aqt, %bb.kp ], [ %i.aqk, %bb.ko ] ; 2 uses
  store i32 %.sink.i, ptr %i.c, align 4, !tbaa !45
  store i32 %i.aqu, ptr %i.d, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %.not85.i = icmp eq i32 %i.aps, 0
  br i1 %.not85.i, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aep, i64 112
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !85
  %i.aqx = icmp eq i32 %i.aqw, 3
  %.in86.v.i = select i1 %i.aqx, i64 56, i64 48
  %.in86.i = getelementptr inbounds nuw i8, ptr %i.apo, i64 %.in86.v.i
  %i.aqy = load i32, ptr %.in86.i, align 8, !tbaa !45
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aep, i64 96
  %i.ara = load i32, ptr %i.aqz, align 8, !tbaa !60
  %i.arb = mul nsw i32 %i.ara, %i.aqy
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kq
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aep, i64 116
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !86
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  %i.are = phi i32 [ %i.arb, %bb.kr ], [ %i.ard, %bb.ks ] ; 2 uses
  store i32 %i.are, ptr %i.e, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  invoke fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiiiiRiS0_S0_i(i32 noundef %.sink.i, i32 noundef %i.are, i32 noundef %i.aqu, i32 noundef %i.apx, i32 noundef %i.apz, i32 noundef %i.aqb, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.nv)
          to label %.noexc401 unwind label %bb.pp

.noexc401:                                        ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.arf = load i32, ptr %i.c, align 4, !tbaa !45
  %i.arg = load i32, ptr %i.f, align 4, !tbaa !45 ; 2 uses
  %i.arh = add i32 %i.arf, -1
  %i.ari = add i32 %i.arh, %i.arg
  %i.arj = sdiv i32 %i.ari, %i.arg
  store i32 %i.arj, ptr %i.i, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.ark = load i32, ptr %i.e, align 4, !tbaa !45
  %i.arl = load i32, ptr %i.g, align 4, !tbaa !45 ; 3 uses
  %i.arm = add i32 %i.ark, -1
  %i.arn = add i32 %i.arm, %i.arl
  %i.aro = sdiv i32 %i.arn, %i.arl                ; 2 uses
  store i32 %i.aro, ptr %i.j, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.arp = load i32, ptr %i.d, align 4, !tbaa !45
  %i.arq = load i32, ptr %i.h, align 4, !tbaa !45 ; 4 uses
  %i.arr = add i32 %i.arp, -1
  %i.ars = add i32 %i.arr, %i.arq
  %i.art = sdiv i32 %i.ars, %i.arq                ; 2 uses
  store i32 %i.art, ptr %i.k, align 4, !tbaa !45
  %i.aru = icmp sgt i32 %i.arq, 3
  br i1 %i.aru, label %bb.ku, label %bb.kx

bb.ku:                                            ; preds = %.noexc401
  %i.arv = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
          to label %.noexc402 unwind label %bb.pp

.noexc402:                                        ; preds = %bb.ku
  %.not87.i = icmp eq i32 %i.arv, 0
  br i1 %.not87.i, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %.noexc402
  %i.arw = invoke noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
          to label %.noexc403 unwind label %bb.pp

.noexc403:                                        ; preds = %bb.kv
  %i.arx = icmp ne i32 %i.arw, 0
  br label %bb.kw

bb.kw:                                            ; preds = %.noexc403, %.noexc402
  %i.ary = phi i1 [ true, %.noexc402 ], [ %i.arx, %.noexc403 ]
  %i.arz = invoke noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
          to label %.noexc404 unwind label %bb.pp

.noexc404:                                        ; preds = %bb.kw
  %.not88.i = icmp eq i32 %i.arz, 0
  %i.asa = and i1 %i.ary, %.not88.i
  br label %bb.kx

bb.kx:                                            ; preds = %.noexc404, %.noexc401
  %.071.i = phi i1 [ false, %.noexc401 ], [ %i.asa, %.noexc404 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.asb = mul nsw i32 %i.arq, %i.arl
  %i.asc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !89
  %i.ase = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.asg, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.asf, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.asb, i32 noundef %i.art, i32 noundef %i.aro, i64 noundef 1, ptr noundef %i.asd)
          to label %.noexc405 unwind label %bb.pp

.noexc405:                                        ; preds = %bb.kx
  %i.ash = load ptr, ptr %4, align 8, !tbaa !18
  %i.asi = icmp eq ptr %i.ash, null
  br i1 %i.asi, label %_ZNK4ncnn3Mat5emptyEv.exit200.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit200.i

_ZNK4ncnn3Mat5emptyEv.exit200.i:                  ; preds = %.noexc405
  %i.asj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ask = load i64, ptr %i.asg, align 8, !tbaa !20
  %i.asl = load i32, ptr %i.asj, align 8, !tbaa !51
  %i.asm = sext i32 %i.asl to i64
  %i.asn = mul i64 %i.ask, %i.asm
  %i.aso = icmp eq i64 %i.asn, 0
  br i1 %i.aso, label %_ZNK4ncnn3Mat5emptyEv.exit200.thread.i, label %bb.ky

bb.ky:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit200.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.asp = load i32, ptr %i.j, align 4, !tbaa !45
  %i.asq = load i32, ptr %i.k, align 4, !tbaa !45
  %i.asr = mul nsw i32 %i.asq, %i.asp
  store i32 %i.asr, ptr %i.l, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.ass = load i32, ptr %i.c, align 4, !tbaa !45
  %i.ast = load ptr, ptr %i.asc, align 8, !tbaa !89
  %i.asu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.asx = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.asx, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.asv, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.ass, i64 noundef 4, ptr noundef %i.ast)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit204.i unwind label %bb.kz

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit204.i:       ; preds = %bb.ky
  %i.asy = load ptr, ptr %5, align 8, !tbaa !18
  %i.asz = icmp eq ptr %i.asy, null
  br i1 %i.asz, label %_ZNK4ncnn3Mat5emptyEv.exit199.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit199.i

_ZNK4ncnn3Mat5emptyEv.exit199.i:                  ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit204.i
  %i.ata = load i64, ptr %i.asx, align 8, !tbaa !20
  %i.atb = load i32, ptr %i.asw, align 8, !tbaa !51
  %i.atc = sext i32 %i.atb to i64
  %i.atd = mul i64 %i.ata, %i.atc
  %i.ate = icmp eq i64 %i.atd, 0
  br i1 %i.ate, label %_ZNK4ncnn3Mat5emptyEv.exit199.thread.i, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.atf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit107.i

bb.la:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit199.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.atg = getelementptr inbounds nuw i8, ptr %i.aep, i64 112
  %i.ath = load i32, ptr %i.atg, align 8, !tbaa !85
  %i.ati = icmp eq i32 %i.ath, 3                  ; 3 uses
  %.in.v.i.i.i316 = select i1 %i.ati, i64 56, i64 48
  %.in.i.i.i317 = getelementptr inbounds nuw i8, ptr %i.apo, i64 %.in.v.i.i.i316
  %i.atj = load i32, ptr %.in.i.i.i317, align 8, !tbaa !45 ; 3 uses
  %i.atk = icmp sgt i32 %i.atj, 0
  br i1 %i.atk, label %.lr.ph53.i.i.i335, label %.loopexit.i318

.lr.ph53.i.i.i335:                                ; preds = %bb.la
  %i.atl = getelementptr inbounds nuw i8, ptr %i.aep, i64 116
  %i.atm = load i32, ptr %i.atl, align 4          ; 2 uses
  %i.atn = sext i32 %i.atm to i64                 ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.aep, i64 136
  %i.atp = load i64, ptr %i.ato, align 8          ; 2 uses
  %i.atq = load ptr, ptr %i.apo, align 8, !tbaa !18 ; 4 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.aep, i64 96
  %i.ats = load i32, ptr %i.atr, align 8, !tbaa !60 ; 2 uses
  %i.att = sext i32 %i.ats to i64                 ; 3 uses
  %i.atu = mul nsw i32 %i.ats, %i.atm             ; 13 uses
  %i.atv = icmp sgt i32 %i.atu, 3
  br i1 %i.atv, label %.lr.ph53.split.us.preheader.i.i.i367, label %.lr.ph53.split.i.i.i336

.lr.ph53.split.us.preheader.i.i.i367:             ; preds = %.lr.ph53.i.i.i335
  %i.atw = and i32 %i.atu, 2147483644             ; 3 uses
  %wide.trip.count101.i.i.i368 = zext nneg i32 %i.atj to i64 ; 2 uses
  %..i.i.i369 = select i1 %i.ati, i64 %i.atp, i64 %i.atn
  %factor.op.mul108.i.i.i370 = mul i64 %..i.i.i369, %i.att ; 2 uses
  %.not.i205.i = icmp eq i32 %i.atw, %i.atu
  br i1 %.not.i205.i, label %.lr.ph53.split.us.i.us.i.i389.preheader, label %.lr.ph53.split.us.i.i.i371.preheader

.lr.ph53.split.us.i.i.i371.preheader:             ; preds = %.lr.ph53.split.us.preheader.i.i.i367
  %i.atx = add nsw i32 %i.atu, -4                 ; 2 uses
  %i.aty = lshr i32 %i.atx, 2
  %i.atz = add nuw nsw i32 %i.aty, 1              ; 2 uses
  %xtraiter990 = and i32 %i.atz, 3                ; 3 uses
  %i.aua = icmp ult i32 %i.atx, 12
  %unroll_iter996 = and i32 %i.atz, 2147483644
  %lcmp.mod992.not = icmp eq i32 %xtraiter990, 0
  %lcmp.mod995 = icmp ne i32 %xtraiter990, 0
  %26 = and i32 %i.atu, 2147483644
  %i.aub = xor i32 %26, -1
  %i.auc = add nsw i32 %i.atu, %i.aub             ; 2 uses
  %i.aud = zext i32 %i.auc to i64
  %i.aue = add nuw nsw i64 %i.aud, 1              ; 2 uses
  %min.iters.check933 = icmp ult i32 %i.auc, 7
  %n.vec935 = and i64 %i.aue, 8589934584          ; 4 uses
  %i.auf = trunc i64 %n.vec935 to i32
  %i.aug = add i32 %i.atw, %i.auf
  %i.auh = shl nuw nsw i64 %n.vec935, 2
  %cmp.n949 = icmp eq i64 %i.aue, %n.vec935
  br label %.lr.ph53.split.us.i.i.i371

.lr.ph53.split.us.i.us.i.i389.preheader:          ; preds = %.lr.ph53.split.us.preheader.i.i.i367
  %i.aui = add nsw i32 %i.atu, -4                 ; 2 uses
  %i.auj = lshr i32 %i.aui, 2
  %i.auk = add nuw nsw i32 %i.auj, 1              ; 2 uses
  %xtraiter999 = and i32 %i.auk, 3                ; 3 uses
  %i.aul = icmp ult i32 %i.aui, 12
  %unroll_iter1004 = and i32 %i.auk, 2147483644
  %lcmp.mod1001.not = icmp eq i32 %xtraiter999, 0
  %lcmp.mod1003 = icmp ne i32 %xtraiter999, 0
  br label %.lr.ph53.split.us.i.us.i.i389

.lr.ph53.split.us.i.us.i.i389:                    ; preds = %.lr.ph53.split.us.i.us.i.i389.preheader, %..preheader_crit_edge.us.i.us.i.i396
  %indvars.iv98.i.us.i.i390 = phi i64 [ %indvars.iv.next99.i.us.i.i397, %..preheader_crit_edge.us.i.us.i.i396 ], [ 0, %.lr.ph53.split.us.i.us.i.i389.preheader ] ; 2 uses
  %.03749.us.i.us.i.i391 = phi <4 x float> [ %.lcssa, %..preheader_crit_edge.us.i.us.i.i396 ], [ zeroinitializer, %.lr.ph53.split.us.i.us.i.i389.preheader ] ; 2 uses
  %.reass109.i.us.i.i392 = mul i64 %indvars.iv98.i.us.i.i390, %factor.op.mul108.i.i.i370
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %.reass109.i.us.i.i392 ; 2 uses
  br i1 %i.aul, label %.epil.preheader998, label %.lr.ph53.split.us.i.us.i.i389.new

.lr.ph53.split.us.i.us.i.i389.new:                ; preds = %.lr.ph53.split.us.i.us.i.i389, %.lr.ph53.split.us.i.us.i.i389.new
  %.02440.us.i.us.i.i394 = phi ptr [ %i.avg, %.lr.ph53.split.us.i.us.i.i389.new ], [ %i.aum, %.lr.ph53.split.us.i.us.i.i389 ] ; 5 uses
  %.13839.us.i.us.i.i395 = phi <4 x float> [ %i.avf, %.lr.ph53.split.us.i.us.i.i389.new ], [ %.03749.us.i.us.i.i391, %.lr.ph53.split.us.i.us.i.i389 ]
  %niter1005 = phi i32 [ %niter1005.next.3, %.lr.ph53.split.us.i.us.i.i389.new ], [ 0, %.lr.ph53.split.us.i.us.i.i389 ]
  %i.aun = load <4 x i32>, ptr %.02440.us.i.us.i.i394, align 1, !tbaa !113
  %i.auo = and <4 x i32> %i.aun, splat (i32 2147483647)
  %i.aup = bitcast <4 x i32> %i.auo to <4 x float>
  %i.auq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13839.us.i.us.i.i395, <4 x float> nofpclass(nan inf) %i.aup)
  %i.aur = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i394, i64 16
  %i.aus = load <4 x i32>, ptr %i.aur, align 1, !tbaa !113
  %i.aut = and <4 x i32> %i.aus, splat (i32 2147483647)
  %i.auu = bitcast <4 x i32> %i.aut to <4 x float>
  %i.auv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.auq, <4 x float> nofpclass(nan inf) %i.auu)
  %i.auw = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i394, i64 32
  %i.aux = load <4 x i32>, ptr %i.auw, align 1, !tbaa !113
  %i.auy = and <4 x i32> %i.aux, splat (i32 2147483647)
  %i.auz = bitcast <4 x i32> %i.auy to <4 x float>
  %i.ava = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.auv, <4 x float> nofpclass(nan inf) %i.auz)
  %i.avb = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i394, i64 48
  %i.avc = load <4 x i32>, ptr %i.avb, align 1, !tbaa !113
  %i.avd = and <4 x i32> %i.avc, splat (i32 2147483647)
  %i.ave = bitcast <4 x i32> %i.avd to <4 x float>
  %i.avf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ava, <4 x float> nofpclass(nan inf) %i.ave) ; 3 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i394, i64 64 ; 2 uses
  %niter1005.next.3 = add nuw nsw i32 %niter1005, 4 ; 2 uses
  %niter1005.ncmp.3.not = icmp eq i32 %niter1005.next.3, %unroll_iter1004
  br i1 %niter1005.ncmp.3.not, label %..preheader_crit_edge.us.i.us.i.i396.unr-lcssa, label %.lr.ph53.split.us.i.us.i.i389.new, !llvm.loop !250

..preheader_crit_edge.us.i.us.i.i396.unr-lcssa:   ; preds = %.lr.ph53.split.us.i.us.i.i389.new
  br i1 %lcmp.mod1001.not, label %..preheader_crit_edge.us.i.us.i.i396, label %.epil.preheader998

.epil.preheader998:                               ; preds = %..preheader_crit_edge.us.i.us.i.i396.unr-lcssa, %.lr.ph53.split.us.i.us.i.i389
  %.02440.us.i.us.i.i394.epil.init = phi ptr [ %i.aum, %.lr.ph53.split.us.i.us.i.i389 ], [ %i.avg, %..preheader_crit_edge.us.i.us.i.i396.unr-lcssa ]
  %.13839.us.i.us.i.i395.epil.init = phi <4 x float> [ %.03749.us.i.us.i.i391, %.lr.ph53.split.us.i.us.i.i389 ], [ %i.avf, %..preheader_crit_edge.us.i.us.i.i396.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1003)
  br label %bb.lb

bb.lb:                                            ; preds = %bb.lb, %.epil.preheader998
  %.02440.us.i.us.i.i394.epil = phi ptr [ %.02440.us.i.us.i.i394.epil.init, %.epil.preheader998 ], [ %i.avl, %bb.lb ] ; 2 uses
  %.13839.us.i.us.i.i395.epil = phi <4 x float> [ %.13839.us.i.us.i.i395.epil.init, %.epil.preheader998 ], [ %i.avk, %bb.lb ]
  %epil.iter1000 = phi i32 [ 0, %.epil.preheader998 ], [ %epil.iter1000.next, %bb.lb ]
  %i.avh = load <4 x i32>, ptr %.02440.us.i.us.i.i394.epil, align 1, !tbaa !113
  %i.avi = and <4 x i32> %i.avh, splat (i32 2147483647)
  %i.avj = bitcast <4 x i32> %i.avi to <4 x float>
  %i.avk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13839.us.i.us.i.i395.epil, <4 x float> nofpclass(nan inf) %i.avj) ; 2 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %.02440.us.i.us.i.i394.epil, i64 16
  %epil.iter1000.next = add i32 %epil.iter1000, 1 ; 2 uses
  %epil.iter1000.cmp.not = icmp eq i32 %epil.iter1000.next, %xtraiter999
  br i1 %epil.iter1000.cmp.not, label %..preheader_crit_edge.us.i.us.i.i396, label %bb.lb, !llvm.loop !266

..preheader_crit_edge.us.i.us.i.i396:             ; preds = %bb.lb, %..preheader_crit_edge.us.i.us.i.i396.unr-lcssa
  %.lcssa = phi <4 x float> [ %i.avf, %..preheader_crit_edge.us.i.us.i.i396.unr-lcssa ], [ %i.avk, %bb.lb ] ; 2 uses
  %indvars.iv.next99.i.us.i.i397 = add nuw nsw i64 %indvars.iv98.i.us.i.i390, 1 ; 2 uses
  %exitcond102.not.i.us.i.i398 = icmp eq i64 %indvars.iv.next99.i.us.i.i397, %wide.trip.count101.i.i.i368
  br i1 %exitcond102.not.i.us.i.i398, label %.loopexit.i318, label %.lr.ph53.split.us.i.us.i.i389, !llvm.loop !252

.lr.ph53.split.us.i.i.i371:                       ; preds = %.lr.ph53.split.us.i.i.i371.preheader, %._crit_edge.us.i.loopexit.i.i386
  %indvars.iv98.i.i.i372 = phi i64 [ %indvars.iv.next99.i.i.i387, %._crit_edge.us.i.loopexit.i.i386 ], [ 0, %.lr.ph53.split.us.i.i.i371.preheader ] ; 2 uses
  %.03550.us.i.i.i373 = phi float [ %.sroa.speculated29.us.i.i.i384.lcssa, %._crit_edge.us.i.loopexit.i.i386 ], [ 0.000000e+00, %.lr.ph53.split.us.i.i.i371.preheader ] ; 2 uses
  %.03749.us.i.i.i374 = phi <4 x float> [ %.lcssa957, %._crit_edge.us.i.loopexit.i.i386 ], [ zeroinitializer, %.lr.ph53.split.us.i.i.i371.preheader ] ; 2 uses
  %.reass109.i.i.i375 = mul i64 %indvars.iv98.i.i.i372, %factor.op.mul108.i.i.i370
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %.reass109.i.i.i375 ; 2 uses
  br i1 %i.aua, label %.epil.preheader989, label %.lr.ph53.split.us.i.i.i371.new

.lr.ph53.split.us.i.i.i371.new:                   ; preds = %.lr.ph53.split.us.i.i.i371, %.lr.ph53.split.us.i.i.i371.new
  %.02440.us.i.i.i377 = phi ptr [ %i.awg, %.lr.ph53.split.us.i.i.i371.new ], [ %i.avm, %.lr.ph53.split.us.i.i.i371 ] ; 5 uses
  %.13839.us.i.i.i378 = phi <4 x float> [ %i.awf, %.lr.ph53.split.us.i.i.i371.new ], [ %.03749.us.i.i.i374, %.lr.ph53.split.us.i.i.i371 ]
  %niter997 = phi i32 [ %niter997.next.3, %.lr.ph53.split.us.i.i.i371.new ], [ 0, %.lr.ph53.split.us.i.i.i371 ]
  %i.avn = load <4 x i32>, ptr %.02440.us.i.i.i377, align 1, !tbaa !113
  %i.avo = and <4 x i32> %i.avn, splat (i32 2147483647)
  %i.avp = bitcast <4 x i32> %i.avo to <4 x float>
  %i.avq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13839.us.i.i.i378, <4 x float> nofpclass(nan inf) %i.avp)
  %i.avr = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i377, i64 16
  %i.avs = load <4 x i32>, ptr %i.avr, align 1, !tbaa !113
  %i.avt = and <4 x i32> %i.avs, splat (i32 2147483647)
  %i.avu = bitcast <4 x i32> %i.avt to <4 x float>
  %i.avv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avq, <4 x float> nofpclass(nan inf) %i.avu)
  %i.avw = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i377, i64 32
  %i.avx = load <4 x i32>, ptr %i.avw, align 1, !tbaa !113
  %i.avy = and <4 x i32> %i.avx, splat (i32 2147483647)
  %i.avz = bitcast <4 x i32> %i.avy to <4 x float>
  %i.awa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avv, <4 x float> nofpclass(nan inf) %i.avz)
  %i.awb = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i377, i64 48
  %i.awc = load <4 x i32>, ptr %i.awb, align 1, !tbaa !113
  %i.awd = and <4 x i32> %i.awc, splat (i32 2147483647)
  %i.awe = bitcast <4 x i32> %i.awd to <4 x float>
  %i.awf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.awa, <4 x float> nofpclass(nan inf) %i.awe) ; 3 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i377, i64 64 ; 3 uses
  %niter997.next.3 = add nuw nsw i32 %niter997, 4 ; 2 uses
  %niter997.ncmp.3.not = icmp eq i32 %niter997.next.3, %unroll_iter996
  br i1 %niter997.ncmp.3.not, label %.lr.ph47.us.i.i.i380.preheader.unr-lcssa, label %.lr.ph53.split.us.i.i.i371.new, !llvm.loop !250

.lr.ph47.us.i.i.i380.preheader.unr-lcssa:         ; preds = %.lr.ph53.split.us.i.i.i371.new
  br i1 %lcmp.mod992.not, label %.lr.ph47.us.i.i.i380.preheader, label %.epil.preheader989

.epil.preheader989:                               ; preds = %.lr.ph47.us.i.i.i380.preheader.unr-lcssa, %.lr.ph53.split.us.i.i.i371
  %.02440.us.i.i.i377.epil.init = phi ptr [ %i.avm, %.lr.ph53.split.us.i.i.i371 ], [ %i.awg, %.lr.ph47.us.i.i.i380.preheader.unr-lcssa ]
  %.13839.us.i.i.i378.epil.init = phi <4 x float> [ %.03749.us.i.i.i374, %.lr.ph53.split.us.i.i.i371 ], [ %i.awf, %.lr.ph47.us.i.i.i380.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod995)
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.epil.preheader989
  %.02440.us.i.i.i377.epil = phi ptr [ %.02440.us.i.i.i377.epil.init, %.epil.preheader989 ], [ %i.awl, %bb.lc ] ; 2 uses
  %.13839.us.i.i.i378.epil = phi <4 x float> [ %.13839.us.i.i.i378.epil.init, %.epil.preheader989 ], [ %i.awk, %bb.lc ]
  %epil.iter991 = phi i32 [ 0, %.epil.preheader989 ], [ %epil.iter991.next, %bb.lc ]
  %i.awh = load <4 x i32>, ptr %.02440.us.i.i.i377.epil, align 1, !tbaa !113
  %i.awi = and <4 x i32> %i.awh, splat (i32 2147483647)
  %i.awj = bitcast <4 x i32> %i.awi to <4 x float>
  %i.awk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.13839.us.i.i.i378.epil, <4 x float> nofpclass(nan inf) %i.awj) ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %.02440.us.i.i.i377.epil, i64 16 ; 2 uses
  %epil.iter991.next = add i32 %epil.iter991, 1   ; 2 uses
  %epil.iter991.cmp.not = icmp eq i32 %epil.iter991.next, %xtraiter990
  br i1 %epil.iter991.cmp.not, label %.lr.ph47.us.i.i.i380.preheader, label %bb.lc, !llvm.loop !267

.lr.ph47.us.i.i.i380.preheader:                   ; preds = %bb.lc, %.lr.ph47.us.i.i.i380.preheader.unr-lcssa
  %.lcssa957 = phi <4 x float> [ %i.awf, %.lr.ph47.us.i.i.i380.preheader.unr-lcssa ], [ %i.awk, %bb.lc ] ; 2 uses
  %.lcssa956 = phi ptr [ %i.awg, %.lr.ph47.us.i.i.i380.preheader.unr-lcssa ], [ %i.awl, %bb.lc ] ; 3 uses
  br i1 %min.iters.check933, label %.lr.ph47.us.i.i.i380.preheader954, label %vector.ph934

vector.ph934:                                     ; preds = %.lr.ph47.us.i.i.i380.preheader
  %i.awm = getelementptr i8, ptr %.lcssa956, i64 %i.auh
  %broadcast.splatinsert936 = insertelement <4 x float> poison, float %.03550.us.i.i.i373, i64 0
  %broadcast.splat937 = shufflevector <4 x float> %broadcast.splatinsert936, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body938

vector.body938:                                   ; preds = %vector.body938, %vector.ph934
  %index939 = phi i64 [ 0, %vector.ph934 ], [ %index.next945, %vector.body938 ] ; 2 uses
  %vec.phi940 = phi <4 x float> [ %broadcast.splat937, %vector.ph934 ], [ %i.awr, %vector.body938 ]
  %vec.phi941 = phi <4 x float> [ %broadcast.splat937, %vector.ph934 ], [ %i.aws, %vector.body938 ]
  %i.awn = shl i64 %index939, 2
  %next.gep942 = getelementptr i8, ptr %.lcssa956, i64 %i.awn ; 2 uses
  %i.awo = getelementptr i8, ptr %next.gep942, i64 16
  %wide.load943 = load <4 x float>, ptr %next.gep942, align 4, !tbaa !68
  %wide.load944 = load <4 x float>, ptr %i.awo, align 4, !tbaa !68
  %i.awp = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load943)
  %i.awq = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load944)
  %i.awr = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi940, <4 x float> %i.awp) ; 2 uses
  %i.aws = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi941, <4 x float> %i.awq) ; 2 uses
  %index.next945 = add nuw i64 %index939, 8       ; 2 uses
  %i.awt = icmp eq i64 %index.next945, %n.vec935
  br i1 %i.awt, label %middle.block946, label %vector.body938, !llvm.loop !268

middle.block946:                                  ; preds = %vector.body938
  %rdx.minmax.select948 = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.awr, <4 x float> %i.aws)
  %i.awu = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select948) ; 2 uses
  br i1 %cmp.n949, label %._crit_edge.us.i.loopexit.i.i386, label %.lr.ph47.us.i.i.i380.preheader954

.lr.ph47.us.i.i.i380.preheader954:                ; preds = %.lr.ph47.us.i.i.i380.preheader, %middle.block946
  %.146.us.i.i.i381.ph = phi i32 [ %i.atw, %.lr.ph47.us.i.i.i380.preheader ], [ %i.aug, %middle.block946 ]
  %.12545.us.i.i.i382.ph = phi ptr [ %.lcssa956, %.lr.ph47.us.i.i.i380.preheader ], [ %i.awm, %middle.block946 ]
  %.13644.us.i.i.i383.ph = phi float [ %.03550.us.i.i.i373, %.lr.ph47.us.i.i.i380.preheader ], [ %i.awu, %middle.block946 ]
  br label %.lr.ph47.us.i.i.i380

.lr.ph47.us.i.i.i380:                             ; preds = %.lr.ph47.us.i.i.i380.preheader954, %.lr.ph47.us.i.i.i380
  %.146.us.i.i.i381 = phi i32 [ %i.awy, %.lr.ph47.us.i.i.i380 ], [ %.146.us.i.i.i381.ph, %.lr.ph47.us.i.i.i380.preheader954 ]
  %.12545.us.i.i.i382 = phi ptr [ %i.awx, %.lr.ph47.us.i.i.i380 ], [ %.12545.us.i.i.i382.ph, %.lr.ph47.us.i.i.i380.preheader954 ] ; 2 uses
  %.13644.us.i.i.i383 = phi float [ %.sroa.speculated29.us.i.i.i384, %.lr.ph47.us.i.i.i380 ], [ %.13644.us.i.i.i383.ph, %.lr.ph47.us.i.i.i380.preheader954 ]
  %i.awv = load float, ptr %.12545.us.i.i.i382, align 4, !tbaa !68
  %i.aww = call fast float @llvm.fabs.f32(float %i.awv)
  %.sroa.speculated29.us.i.i.i384 = call nnan ninf nsz float @llvm.maxnum.f32(float %.13644.us.i.i.i383, float %i.aww) ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %.12545.us.i.i.i382, i64 4
  %i.awy = add nuw nsw i32 %.146.us.i.i.i381, 1   ; 2 uses
  %exitcond97.not.i.i.i385 = icmp eq i32 %i.awy, %i.atu
  br i1 %exitcond97.not.i.i.i385, label %._crit_edge.us.i.loopexit.i.i386, label %.lr.ph47.us.i.i.i380, !llvm.loop !269

._crit_edge.us.i.loopexit.i.i386:                 ; preds = %.lr.ph47.us.i.i.i380, %middle.block946
  %.sroa.speculated29.us.i.i.i384.lcssa = phi float [ %i.awu, %middle.block946 ], [ %.sroa.speculated29.us.i.i.i384, %.lr.ph47.us.i.i.i380 ] ; 2 uses
  %indvars.iv.next99.i.i.i387 = add nuw nsw i64 %indvars.iv98.i.i.i372, 1 ; 2 uses
  %exitcond102.not.i.i.i388 = icmp eq i64 %indvars.iv.next99.i.i.i387, %wide.trip.count101.i.i.i368
  br i1 %exitcond102.not.i.i.i388, label %.loopexit.i318, label %.lr.ph53.split.us.i.i.i371, !llvm.loop !252

end_hunk_1
begin_hunk_2_@_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii:bb.a
  %next.gep150 = getelementptr i8, ptr %.9278.lcssa.i, i64 %i.or ; 2 uses
  %i.os = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep149, align 4, !tbaa !68
  store <4 x float> splat (float +inf), ptr %i.os, align 4, !tbaa !68
  %i.ot = getelementptr i8, ptr %next.gep150, i64 16
  store <4 x float> zeroinitializer, ptr %next.gep150, align 4, !tbaa !68
  store <4 x float> zeroinitializer, ptr %i.ot, align 4, !tbaa !68
  %index.next151 = add nuw i64 %index148, 8       ; 2 uses
  %i.ou = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.ou, label %middle.block152, label %vector.body147, !llvm.loop !665

middle.block152:                                  ; preds = %vector.body147
  %cmp.n153 = icmp eq i64 %i.ok, %n.vec146
  br i1 %cmp.n153, label %_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.lr.ph194.split.i.preheader157

.lr.ph194.split.i.preheader157:                   ; preds = %.lr.ph194.split.i.preheader, %middle.block152
  %.10193.i.ph = phi ptr [ %.9.lcssa.i, %.lr.ph194.split.i.preheader ], [ %i.on, %middle.block152 ] ; 2 uses
  %.10279192.i.ph = phi ptr [ %.9278.lcssa.i, %.lr.ph194.split.i.preheader ], [ %i.oo, %middle.block152 ] ; 2 uses
  %.4290191.i.ph = phi i32 [ %.3289.lcssa.i, %.lr.ph194.split.i.preheader ], [ %i.oq, %middle.block152 ] ; 4 uses
  %i.ov = sub i32 %i.r, %.4290191.i.ph
  %xtraiter204 = and i32 %i.ov, 7                 ; 2 uses
  %lcmp.mod205.not = icmp eq i32 %xtraiter204, 0
  br i1 %lcmp.mod205.not, label %.lr.ph194.split.i.prol.loopexit, label %.lr.ph194.split.i.prol

.lr.ph194.split.i.prol:                           ; preds = %.lr.ph194.split.i.preheader157, %.lr.ph194.split.i.prol
  %.10193.i.prol = phi ptr [ %i.ow, %.lr.ph194.split.i.prol ], [ %.10193.i.ph, %.lr.ph194.split.i.preheader157 ] ; 2 uses
  %.10279192.i.prol = phi ptr [ %i.ox, %.lr.ph194.split.i.prol ], [ %.10279192.i.ph, %.lr.ph194.split.i.preheader157 ] ; 2 uses
  %.4290191.i.prol = phi i32 [ %i.oy, %.lr.ph194.split.i.prol ], [ %.4290191.i.ph, %.lr.ph194.split.i.preheader157 ]
  %prol.iter206 = phi i32 [ %prol.iter206.next, %.lr.ph194.split.i.prol ], [ 0, %.lr.ph194.split.i.preheader157 ]
  store float +inf, ptr %.10193.i.prol, align 4, !tbaa !68
  store float 0.000000e+00, ptr %.10279192.i.prol, align 4, !tbaa !68
  %i.ow = getelementptr inbounds nuw i8, ptr %.10193.i.prol, i64 4 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.10279192.i.prol, i64 4 ; 2 uses
  %i.oy = add nuw nsw i32 %.4290191.i.prol, 1     ; 2 uses
  %prol.iter206.next = add i32 %prol.iter206, 1   ; 2 uses
  %prol.iter206.cmp.not = icmp eq i32 %prol.iter206.next, %xtraiter204
  br i1 %prol.iter206.cmp.not, label %.lr.ph194.split.i.prol.loopexit, label %.lr.ph194.split.i.prol, !llvm.loop !666

.lr.ph194.split.i.prol.loopexit:                  ; preds = %.lr.ph194.split.i.prol, %.lr.ph194.split.i.preheader157
  %.10193.i.unr = phi ptr [ %.10193.i.ph, %.lr.ph194.split.i.preheader157 ], [ %i.ow, %.lr.ph194.split.i.prol ]
  %.10279192.i.unr = phi ptr [ %.10279192.i.ph, %.lr.ph194.split.i.preheader157 ], [ %i.ox, %.lr.ph194.split.i.prol ]
  %.4290191.i.unr = phi i32 [ %.4290191.i.ph, %.lr.ph194.split.i.preheader157 ], [ %i.oy, %.lr.ph194.split.i.prol ]
  %i.oz = sub i32 %.4290191.i.ph, %i.r
  %i.pa = icmp ugt i32 %i.oz, -8
  br i1 %i.pa, label %_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.lr.ph194.split.i

.lr.ph188.us.preheader.i:                         ; preds = %.lr.ph194.i
  %i.pb = zext i32 %.3289.lcssa.i to i64
  %i.pc = add nsw i32 %i.m, -1
  %xtraiter208 = and i32 %i.m, 3                  ; 3 uses
  %i.pd = icmp ult i32 %i.pc, 3
  %unroll_iter213 = and i32 %i.m, 2147483644
  %lcmp.mod210.not = icmp eq i32 %xtraiter208, 0
  %lcmp.mod212 = icmp ne i32 %xtraiter208, 0
  %i.pe = fdiv fast float 1.000000e+00, %1
  br label %.lr.ph188.us.i

.lr.ph188.us.i:                                   ; preds = %._crit_edge189.us.i, %.lr.ph188.us.preheader.i
  %indvars.iv244.i = phi i64 [ %i.pb, %.lr.ph188.us.preheader.i ], [ %indvars.iv.next245.i, %._crit_edge189.us.i ] ; 2 uses
  %.10193.us.i = phi ptr [ %.9.lcssa.i, %.lr.ph188.us.preheader.i ], [ %i.py, %._crit_edge189.us.i ] ; 2 uses
  %.10279192.us.i = phi ptr [ %.9278.lcssa.i, %.lr.ph188.us.preheader.i ], [ %i.pz, %._crit_edge189.us.i ] ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %indvars.iv244.i ; 2 uses
  br i1 %i.pd, label %.epil.preheader207, label %.lr.ph188.us.i.new

.lr.ph188.us.i.new:                               ; preds = %.lr.ph188.us.i, %.lr.ph188.us.i.new
  %.0255185.us.i = phi ptr [ %i.pr, %.lr.ph188.us.i.new ], [ %i.pf, %.lr.ph188.us.i ] ; 2 uses
  %.057184.us.i = phi float [ %.sroa.speculated.us.i.3, %.lr.ph188.us.i.new ], [ 0.000000e+00, %.lr.ph188.us.i ]
  %niter214 = phi i32 [ %niter214.next.3, %.lr.ph188.us.i.new ], [ 0, %.lr.ph188.us.i ]
  %i.pg = load float, ptr %.0255185.us.i, align 4, !tbaa !68
  %i.ph = tail call fast float @llvm.fabs.f32(float %i.pg)
  %.sroa.speculated.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.057184.us.i, float %i.ph)
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.0255185.us.i, i64 %i.l ; 2 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !68
  %i.pk = tail call fast float @llvm.fabs.f32(float %i.pj)
  %.sroa.speculated.us.i.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.i, float %i.pk)
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.l ; 2 uses
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !68
  %i.pn = tail call fast float @llvm.fabs.f32(float %i.pm)
  %.sroa.speculated.us.i.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.i.1, float %i.pn)
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.l ; 2 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !68
  %i.pq = tail call fast float @llvm.fabs.f32(float %i.pp)
  %.sroa.speculated.us.i.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.us.i.2, float %i.pq) ; 3 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.l ; 2 uses
  %niter214.next.3 = add nuw nsw i32 %niter214, 4 ; 2 uses
  %niter214.ncmp.3 = icmp eq i32 %niter214.next.3, %unroll_iter213
  br i1 %niter214.ncmp.3, label %._crit_edge189.us.i.unr-lcssa, label %.lr.ph188.us.i.new, !llvm.loop !667

._crit_edge189.us.i.unr-lcssa:                    ; preds = %.lr.ph188.us.i.new
  br i1 %lcmp.mod210.not, label %._crit_edge189.us.i, label %.epil.preheader207

.epil.preheader207:                               ; preds = %._crit_edge189.us.i.unr-lcssa, %.lr.ph188.us.i
  %.0255185.us.i.epil.init = phi ptr [ %i.pf, %.lr.ph188.us.i ], [ %i.pr, %._crit_edge189.us.i.unr-lcssa ]
  %.057184.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph188.us.i ], [ %.sroa.speculated.us.i.3, %._crit_edge189.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod212)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader207
  %.0255185.us.i.epil = phi ptr [ %.0255185.us.i.epil.init, %.epil.preheader207 ], [ %i.pu, %bb.l ] ; 2 uses
  %.057184.us.i.epil = phi float [ %.057184.us.i.epil.init, %.epil.preheader207 ], [ %.sroa.speculated.us.i.epil, %bb.l ]
  %epil.iter209 = phi i32 [ 0, %.epil.preheader207 ], [ %epil.iter209.next, %bb.l ]
  %i.ps = load float, ptr %.0255185.us.i.epil, align 4, !tbaa !68
  %i.pt = tail call fast float @llvm.fabs.f32(float %i.ps)
  %.sroa.speculated.us.i.epil = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.057184.us.i.epil, float %i.pt) ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.0255185.us.i.epil, i64 %i.l
  %epil.iter209.next = add i32 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i32 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %._crit_edge189.us.i, label %bb.l, !llvm.loop !668

._crit_edge189.us.i:                              ; preds = %bb.l, %._crit_edge189.us.i.unr-lcssa
  %.sroa.speculated.us.i.lcssa = phi float [ %.sroa.speculated.us.i.3, %._crit_edge189.us.i.unr-lcssa ], [ %.sroa.speculated.us.i.epil, %bb.l ] ; 2 uses
  %i.pv = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i.lcssa
  store float %i.pv, ptr %.10193.us.i, align 4, !tbaa !68
  %i.pw = fmul fast float %.sroa.speculated.us.i.lcssa, f0x3C010204
  %i.px = fmul fast float %i.pw, %i.pe
  store float %i.px, ptr %.10279192.us.i, align 4, !tbaa !68
  %i.py = getelementptr inbounds nuw i8, ptr %.10193.us.i, i64 4
  %i.pz = getelementptr inbounds nuw i8, ptr %.10279192.us.i, i64 4
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %i.qa = trunc nuw i64 %indvars.iv.next245.i to i32
  %i.qb = icmp sgt i32 %i.r, %i.qa
  br i1 %i.qb, label %.lr.ph188.us.i, label %_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, !llvm.loop !669

.lr.ph178.split.i:                                ; preds = %.lr.ph178.split.i.preheader162, %.lr.ph178.split.i
  %.9177.i = phi ptr [ %i.qc, %.lr.ph178.split.i ], [ %.9177.i.ph, %.lr.ph178.split.i.preheader162 ] ; 2 uses
  %.9278176.i = phi ptr [ %i.qd, %.lr.ph178.split.i ], [ %.9278176.i.ph, %.lr.ph178.split.i.preheader162 ] ; 2 uses
  %.3289175.i = phi i32 [ %i.qe, %.lr.ph178.split.i ], [ %.3289175.i.ph, %.lr.ph178.split.i.preheader162 ]
  store <2 x float> splat (float +inf), ptr %.9177.i, align 4, !tbaa !68
  store <2 x float> zeroinitializer, ptr %.9278176.i, align 4, !tbaa !68
  %i.qc = getelementptr inbounds nuw i8, ptr %.9177.i, i64 8 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.9278176.i, i64 8 ; 2 uses
  %i.qe = add nuw nsw i32 %.3289175.i, 2          ; 3 uses
  %i.qf = or disjoint i32 %i.qe, 1
  %i.qg = icmp slt i32 %i.qf, %i.r
  br i1 %i.qg, label %.lr.ph178.split.i, label %.preheader.i, !llvm.loop !670

.lr.ph194.split.i:                                ; preds = %.lr.ph194.split.i.prol.loopexit, %.lr.ph194.split.i
  %.10193.i = phi ptr [ %i.qv, %.lr.ph194.split.i ], [ %.10193.i.unr, %.lr.ph194.split.i.prol.loopexit ] ; 9 uses
  %.10279192.i = phi ptr [ %i.qw, %.lr.ph194.split.i ], [ %.10279192.i.unr, %.lr.ph194.split.i.prol.loopexit ] ; 9 uses
  %.4290191.i = phi i32 [ %i.qx, %.lr.ph194.split.i ], [ %.4290191.i.unr, %.lr.ph194.split.i.prol.loopexit ]
  store float +inf, ptr %.10193.i, align 4, !tbaa !68
  store float 0.000000e+00, ptr %.10279192.i, align 4, !tbaa !68
  %i.qh = getelementptr inbounds nuw i8, ptr %.10193.i, i64 4
  %i.qi = getelementptr inbounds nuw i8, ptr %.10279192.i, i64 4
  store float +inf, ptr %i.qh, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.qi, align 4, !tbaa !68
  %i.qj = getelementptr inbounds nuw i8, ptr %.10193.i, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %.10279192.i, i64 8
  store float +inf, ptr %i.qj, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.qk, align 4, !tbaa !68
  %i.ql = getelementptr inbounds nuw i8, ptr %.10193.i, i64 12
  %i.qm = getelementptr inbounds nuw i8, ptr %.10279192.i, i64 12
  store float +inf, ptr %i.ql, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.qm, align 4, !tbaa !68
  %i.qn = getelementptr inbounds nuw i8, ptr %.10193.i, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %.10279192.i, i64 16
  store float +inf, ptr %i.qn, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.qo, align 4, !tbaa !68
  %i.qp = getelementptr inbounds nuw i8, ptr %.10193.i, i64 20
  %i.qq = getelementptr inbounds nuw i8, ptr %.10279192.i, i64 20
  store float +inf, ptr %i.qp, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.qq, align 4, !tbaa !68
  %i.qr = getelementptr inbounds nuw i8, ptr %.10193.i, i64 24
  %i.qs = getelementptr inbounds nuw i8, ptr %.10279192.i, i64 24
  store float +inf, ptr %i.qr, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.qs, align 4, !tbaa !68
  %i.qt = getelementptr inbounds nuw i8, ptr %.10193.i, i64 28
  %i.qu = getelementptr inbounds nuw i8, ptr %.10279192.i, i64 28
  store float +inf, ptr %i.qt, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.qu, align 4, !tbaa !68
  %i.qv = getelementptr inbounds nuw i8, ptr %.10193.i, i64 32
  %i.qw = getelementptr inbounds nuw i8, ptr %.10279192.i, i64 32
  %i.qx = add nuw nsw i32 %.4290191.i, 8          ; 2 uses
  %exitcond242.not.i.7 = icmp eq i32 %i.qx, %i.r
  br i1 %exitcond242.not.i.7, label %_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.lr.ph194.split.i, !llvm.loop !671

_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit: ; preds = %.lr.ph194.split.i.prol.loopexit, %.lr.ph194.split.i, %._crit_edge189.us.i, %middle.block152, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, float noundef nofpclass(nan inf) %1, ptr nofree writeonly captures(none) %.0.val1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 {
bb.a:
  %.0.val22 = ptrtoaddr ptr %.0.val to i64
  %.0.val121 = ptrtoaddr ptr %.0.val1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 2 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.l ; 7 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %.0.val1, i64 %i.l ; 7 uses
  %i.o = sdiv i32 %3, %i.b                        ; 11 uses
  %i.p = mul i32 %i.i, %i.b                       ; 10 uses
  %i.q = fdiv fast float f0x3C010204, %1          ; 3 uses
  %i.r = insertelement <4 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = icmp sgt i32 %i.o, 0
  br i1 %i.t, label %.lr.ph31.i, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit

.lr.ph31.i:                                       ; preds = %bb.a
  %i.u = icmp sgt i32 %i.p, 3
  br i1 %i.u, label %.lr.ph.us.preheader.i, label %.lr.ph31.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph31.i
  %i.v = and i32 %i.p, 2147483644                 ; 3 uses
  %i.w = sext i32 %i.b to i64
  %wide.trip.count78.i = zext nneg i32 %i.o to i64
  %.not = icmp eq i32 %i.v, %i.p
  %i.x = add nsw i32 %i.p, -4                     ; 2 uses
  %i.y = lshr i32 %i.x, 2
  %i.z = add nuw nsw i32 %i.y, 1                  ; 2 uses
  %xtraiter51 = and i32 %i.z, 3                   ; 3 uses
  %i.aa = icmp ult i32 %i.x, 12
  %unroll_iter57 = and i32 %i.z, 2147483644
  %lcmp.mod53.not = icmp eq i32 %xtraiter51, 0
  %lcmp.mod56 = icmp ne i32 %xtraiter51, 0
  %4 = and i32 %i.p, 2147483644
  %i.ab = xor i32 %4, -1
  %i.ac = add nsw i32 %i.p, %i.ab                 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check27 = icmp ult i32 %i.ac, 7
  %n.vec29 = and i64 %i.ae, 8589934584            ; 4 uses
  %i.af = trunc i64 %n.vec29 to i32
  %i.ag = add i32 %i.v, %i.af
  %i.ah = shl nuw nsw i64 %n.vec29, 2
  %cmp.n37 = icmp eq i64 %i.ae, %n.vec29
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.c, %.lr.ph.us.preheader.i
  %indvars.iv75.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next76.i, %bb.c ] ; 2 uses
  %.04928.us.i = phi ptr [ %i.n, %.lr.ph.us.preheader.i ], [ %.2.us.i, %bb.c ] ; 5 uses
  %.05127.us.i = phi ptr [ %i.m, %.lr.ph.us.preheader.i ], [ %.253.us.i, %bb.c ] ; 5 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !18
  %i.aj = mul nsw i64 %indvars.iv75.i, %i.w
  %i.ak = add nsw i64 %i.aj, %i.l
  %i.al = mul i64 %i.ak, %i.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al ; 2 uses
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.04618.us.i = phi ptr [ %i.bg, %.lr.ph.us.i.new ], [ %i.am, %.lr.ph.us.i ] ; 5 uses
  %.01317.us.i = phi <4 x float> [ %i.bf, %.lr.ph.us.i.new ], [ zeroinitializer, %.lr.ph.us.i ]
  %niter58 = phi i32 [ %niter58.next.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.an = load <4 x i32>, ptr %.04618.us.i, align 1, !tbaa !113
  %i.ao = and <4 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <4 x i32> %i.ao to <4 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i, <4 x float> nofpclass(nan inf) %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %.04618.us.i, i64 16
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !113
  %i.at = and <4 x i32> %i.as, splat (i32 2147483647)
  %i.au = bitcast <4 x i32> %i.at to <4 x float>
  %i.av = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aq, <4 x float> nofpclass(nan inf) %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %.04618.us.i, i64 32
  %i.ax = load <4 x i32>, ptr %i.aw, align 1, !tbaa !113
  %i.ay = and <4 x i32> %i.ax, splat (i32 2147483647)
  %i.az = bitcast <4 x i32> %i.ay to <4 x float>
  %i.ba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.av, <4 x float> nofpclass(nan inf) %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %.04618.us.i, i64 48
  %i.bc = load <4 x i32>, ptr %i.bb, align 1, !tbaa !113
  %i.bd = and <4 x i32> %i.bc, splat (i32 2147483647)
  %i.be = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ba, <4 x float> nofpclass(nan inf) %i.be) ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04618.us.i, i64 64 ; 3 uses
  %niter58.next.3 = add nuw nsw i32 %niter58, 4   ; 2 uses
  %niter58.ncmp.3.not = icmp eq i32 %niter58.next.3, %unroll_iter57
  br i1 %niter58.ncmp.3.not, label %..preheader_crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !672

.lr.ph25.us.i:                                    ; preds = %.lr.ph25.us.i.preheader40, %.lr.ph25.us.i
  %.124.us.i = phi i32 [ %i.bk, %.lr.ph25.us.i ], [ %.124.us.i.ph, %.lr.ph25.us.i.preheader40 ]
  %.14723.us.i = phi ptr [ %i.bj, %.lr.ph25.us.i ], [ %.14723.us.i.ph, %.lr.ph25.us.i.preheader40 ] ; 2 uses
  %.01422.us.i = phi float [ %.sroa.speculated4.us.i, %.lr.ph25.us.i ], [ %.01422.us.i.ph, %.lr.ph25.us.i.preheader40 ]
  %i.bh = load float, ptr %.14723.us.i, align 4, !tbaa !68
  %i.bi = tail call fast float @llvm.fabs.f32(float %i.bh)
  %.sroa.speculated4.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.01422.us.i, float %i.bi) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.14723.us.i, i64 4
  %i.bk = add nuw nsw i32 %.124.us.i, 1           ; 2 uses
  %exitcond74.not.i = icmp eq i32 %i.bk, %i.p
  br i1 %exitcond74.not.i, label %._crit_edge.us.i, label %.lr.ph25.us.i, !llvm.loop !673

._crit_edge.us.i:                                 ; preds = %.lr.ph25.us.i, %middle.block36, %..preheader_crit_edge.us.i
  %.014.lcssa.us.i = phi float [ 0.000000e+00, %..preheader_crit_edge.us.i ], [ %i.cl, %middle.block36 ], [ %.sroa.speculated4.us.i, %.lr.ph25.us.i ]
  switch i32 %i.b, label %bb.c [
    i32 4, label %.thread.us.i
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %._crit_edge.us.i
  %i.bl = shufflevector <4 x float> %.lcssa41, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.lcssa41, <4 x float> nofpclass(nan inf) %i.bl) ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.bm, <4 x float> nofpclass(nan inf) %i.bn)
  %i.bp = extractelement <4 x float> %i.bo, i64 0
  %.sroa.speculated.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.014.lcssa.us.i, float %i.bp) ; 2 uses
  %i.bq = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i
  store float %i.bq, ptr %.05127.us.i, align 4, !tbaa !68
  %i.br = fmul fast float %.sroa.speculated.us.i, %i.q
  store float %i.br, ptr %.04928.us.i, align 4, !tbaa !68
  %i.bs = getelementptr inbounds nuw i8, ptr %.05127.us.i, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.04928.us.i, i64 4
  br label %bb.c

.thread.us.i:                                     ; preds = %._crit_edge.us.i
  %i.bu = fdiv fast <4 x float> splat (float 1.270000e+02), %.lcssa41
  %i.bv = fmul fast <4 x float> %.lcssa41, %i.s
  store <4 x float> %i.bu, ptr %.05127.us.i, align 16, !tbaa !113
  store <4 x float> %i.bv, ptr %.04928.us.i, align 16, !tbaa !113
  %i.bw = getelementptr inbounds nuw i8, ptr %.05127.us.i, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.04928.us.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.thread.us.i, %bb.b, %._crit_edge.us.i
  %.253.us.i = phi ptr [ %i.bs, %bb.b ], [ %.05127.us.i, %._crit_edge.us.i ], [ %i.bw, %.thread.us.i ]
  %.2.us.i = phi ptr [ %i.bt, %bb.b ], [ %.04928.us.i, %._crit_edge.us.i ], [ %i.bx, %.thread.us.i ]
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next76.i, %wide.trip.count78.i
  br i1 %exitcond79.not.i, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.lr.ph.us.i, !llvm.loop !674

..preheader_crit_edge.us.i.unr-lcssa:             ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod53.not, label %..preheader_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.04618.us.i.epil.init = phi ptr [ %i.am, %.lr.ph.us.i ], [ %i.bg, %..preheader_crit_edge.us.i.unr-lcssa ]
  %.01317.us.i.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.us.i ], [ %i.bf, %..preheader_crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.04618.us.i.epil = phi ptr [ %.04618.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.d ] ; 2 uses
  %.01317.us.i.epil = phi <4 x float> [ %.01317.us.i.epil.init, %.epil.preheader ], [ %i.cb, %bb.d ]
  %epil.iter52 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter52.next, %bb.d ]
  %i.by = load <4 x i32>, ptr %.04618.us.i.epil, align 1, !tbaa !113
  %i.bz = and <4 x i32> %i.by, splat (i32 2147483647)
  %i.ca = bitcast <4 x i32> %i.bz to <4 x float>
  %i.cb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.epil, <4 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.04618.us.i.epil, i64 16 ; 2 uses
  %epil.iter52.next = add i32 %epil.iter52, 1     ; 2 uses
  %epil.iter52.cmp.not = icmp eq i32 %epil.iter52.next, %xtraiter51
  br i1 %epil.iter52.cmp.not, label %..preheader_crit_edge.us.i, label %bb.d, !llvm.loop !675

..preheader_crit_edge.us.i:                       ; preds = %bb.d, %..preheader_crit_edge.us.i.unr-lcssa
  %.lcssa41 = phi <4 x float> [ %i.bf, %..preheader_crit_edge.us.i.unr-lcssa ], [ %i.cb, %bb.d ] ; 4 uses
  %.lcssa = phi ptr [ %i.bg, %..preheader_crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.d ] ; 3 uses
  br i1 %.not, label %._crit_edge.us.i, label %.lr.ph25.us.i.preheader

.lr.ph25.us.i.preheader:                          ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check27, label %.lr.ph25.us.i.preheader40, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph25.us.i.preheader
  %i.cd = getelementptr i8, ptr %.lcssa, i64 %i.ah
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next35, %vector.body30 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph28 ], [ %i.ci, %vector.body30 ]
  %vec.phi32 = phi <4 x float> [ zeroinitializer, %vector.ph28 ], [ %i.cj, %vector.body30 ]
  %i.ce = shl i64 %index31, 2
  %next.gep33 = getelementptr i8, ptr %.lcssa, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <4 x float>, ptr %next.gep33, align 4, !tbaa !68
  %wide.load34 = load <4 x float>, ptr %i.cf, align 4, !tbaa !68
  %i.cg = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.ch = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load34)
  %i.ci = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.cg) ; 2 uses
  %i.cj = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi32, <4 x float> %i.ch) ; 2 uses
  %index.next35 = add nuw i64 %index31, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next35, %n.vec29
  br i1 %i.ck, label %middle.block36, label %vector.body30, !llvm.loop !676

middle.block36:                                   ; preds = %vector.body30
  %rdx.minmax.select = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ci, <4 x float> %i.cj)
  %i.cl = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n37, label %._crit_edge.us.i, label %.lr.ph25.us.i.preheader40

.lr.ph25.us.i.preheader40:                        ; preds = %.lr.ph25.us.i.preheader, %middle.block36
  %.124.us.i.ph = phi i32 [ %i.v, %.lr.ph25.us.i.preheader ], [ %i.ag, %middle.block36 ]
  %.14723.us.i.ph = phi ptr [ %.lcssa, %.lr.ph25.us.i.preheader ], [ %i.cd, %middle.block36 ]
  %.01422.us.i.ph = phi float [ 0.000000e+00, %.lr.ph25.us.i.preheader ], [ %i.cl, %middle.block36 ]
  br label %.lr.ph25.us.i

.lr.ph31.split.i:                                 ; preds = %.lr.ph31.i
  %i.cm = icmp sgt i32 %i.p, 0
  br i1 %i.cm, label %.preheader.us33.preheader.i, label %.lr.ph31.split.split.i

.preheader.us33.preheader.i:                      ; preds = %.lr.ph31.split.i
  %i.cn = sext i32 %i.b to i64
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  %exitcond71.not.i = icmp eq i32 %i.p, 1
  %exitcond71.not.i.1 = icmp eq i32 %i.p, 2
  br label %.preheader.us33.i

.preheader.us33.i:                                ; preds = %bb.h, %.preheader.us33.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us33.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.04928.us35.i = phi ptr [ %i.n, %.preheader.us33.preheader.i ], [ %.2.us45.i, %bb.h ] ; 5 uses
  %.05127.us36.i = phi ptr [ %i.m, %.preheader.us33.preheader.i ], [ %.253.us44.i, %bb.h ] ; 5 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !18
  %i.cp = mul nsw i64 %indvars.iv.i, %i.cn
  %i.cq = add nsw i64 %i.cp, %i.l
  %i.cr = mul i64 %i.cq, %i.k
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cr ; 3 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !68
  %i.cu = tail call fast float @llvm.fabs.f32(float %i.ct)
  %.sroa.speculated4.us40.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.cu, float 0.000000e+00) ; 2 uses
  br i1 %exitcond71.not.i, label %._crit_edge.us47.i, label %bb.e

bb.e:                                             ; preds = %.preheader.us33.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !68
  %i.cx = tail call fast float @llvm.fabs.f32(float %i.cw)
  %.sroa.speculated4.us40.i.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us40.i, float %i.cx) ; 2 uses
  br i1 %exitcond71.not.i.1, label %._crit_edge.us47.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !68
  %i.da = tail call fast float @llvm.fabs.f32(float %i.cz)
  %.sroa.speculated4.us40.i.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us40.i.1, float %i.da)
  br label %._crit_edge.us47.i
end_hunk_2
begin_hunk_3_@_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  br label %.lr.ph45.i.us.prol.loopexit

.lr.ph45.i.us.prol.loopexit:                      ; preds = %.lr.ph45.i.us.prol, %.lr.ph45.i.us.preheader
  %.lcssa141.unr = phi ptr [ poison, %.lr.ph45.i.us.preheader ], [ %i.bk, %.lr.ph45.i.us.prol ]
  %.244.i.us.unr = phi ptr [ %.1181.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.bk, %.lr.ph45.i.us.prol ]
  %.118643.i.us.unr = phi ptr [ %.0185.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.bl, %.lr.ph45.i.us.prol ]
  %.119142.i.us.unr = phi i32 [ %.0190.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.bm, %.lr.ph45.i.us.prol ]
  %i.bn = icmp eq i32 %4, %.neg
  br i1 %i.bn, label %.loopexit.i.us, label %.lr.ph45.i.us

.lr.ph45.i.us:                                    ; preds = %.lr.ph45.i.us.prol.loopexit, %.lr.ph45.i.us
  %.244.i.us = phi ptr [ %i.cm, %.lr.ph45.i.us ], [ %.244.i.us.unr, %.lr.ph45.i.us.prol.loopexit ] ; 3 uses
  %.118643.i.us = phi ptr [ %i.cn, %.lr.ph45.i.us ], [ %.118643.i.us.unr, %.lr.ph45.i.us.prol.loopexit ] ; 3 uses
  %.119142.i.us = phi i32 [ %i.co, %.lr.ph45.i.us ], [ %.119142.i.us.unr, %.lr.ph45.i.us.prol.loopexit ]
  %i.bo = load <4 x float>, ptr %.118643.i.us, align 16, !tbaa !113
  %i.bp = fmul fast <4 x float> %i.bo, %i.z       ; 2 uses
  %i.bq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bp)
  %i.br = fadd fast <4 x float> %i.bq, %i.bp
  %i.bs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br) ; 2 uses
  %i.bt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.bs)
  %i.bu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bt, <8 x i16> splat (i16 -127))
  %i.bv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bu, <8 x i16> splat (i16 127))
  %i.bw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bv, <8 x i16> poison)
  %i.bx = bitcast <16 x i8> %i.bw to <4 x i32>
  %i.by = extractelement <4 x i32> %i.bx, i64 0
  store i32 %i.by, ptr %.244.i.us, align 4, !tbaa !45
  %i.bz = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.118643.i.us, i64 16
  %i.cb = load <4 x float>, ptr %i.ca, align 16, !tbaa !113
  %i.cc = fmul fast <4 x float> %i.cb, %i.z       ; 2 uses
  %i.cd = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cc)
  %i.ce = fadd fast <4 x float> %i.cd, %i.cc
  %i.cf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.cg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cf, <4 x i32> %i.cf)
  %i.ch = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cg, <8 x i16> splat (i16 -127))
  %i.ci = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ch, <8 x i16> splat (i16 127))
  %i.cj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ci, <8 x i16> poison)
  %i.ck = bitcast <16 x i8> %i.cj to <4 x i32>
  %i.cl = extractelement <4 x i32> %i.ck, i64 0
  store i32 %i.cl, ptr %i.bz, align 4, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.118643.i.us, i64 32
  %i.co = add nuw nsw i32 %.119142.i.us, 2        ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i32 %i.co, %4
  br i1 %exitcond.not.i.us.1, label %.loopexit.i.us, label %.lr.ph45.i.us, !llvm.loop !698

.loopexit.i.us:                                   ; preds = %.lr.ph45.i.us.prol.loopexit, %.lr.ph45.i.us, %.preheader34.i.us
  %.6.i.us = phi ptr [ %.1181.lcssa.i.us, %.preheader34.i.us ], [ %.lcssa141.unr, %.lr.ph45.i.us.prol.loopexit ], [ %i.cm, %.lr.ph45.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 3 uses
  %i.cp = or disjoint i64 %indvars.iv.next.i.us, 3
  %i.cq = icmp samesign ult i64 %i.cp, %i.u
  br i1 %i.cq, label %.preheader36.i.us, label %.preheader31.loopexit.i, !llvm.loop !699

.preheader33.i.us:                                ; preds = %.lr.ph62.i, %.loopexit.i.us23
  %indvars.iv.i.us20 = phi i64 [ %indvars.iv.next.i.us25, %.loopexit.i.us23 ], [ 0, %.lr.ph62.i ] ; 3 uses
  %.018061.i.us21 = phi ptr [ %.6.i.us24, %.loopexit.i.us23 ], [ %.0.val, %.lr.ph62.i ] ; 2 uses
  %i.cr = add nsw i64 %indvars.iv.i.us20, %i.q
  %i.cs = mul i64 %i.cr, %i.i
  %gep.i.us22 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cs ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.us20
  %i.cu = load <4 x float>, ptr %i.ct, align 16, !tbaa !113 ; 3 uses
  br i1 %i.s, label %.lr.ph51.i.us, label %.preheader32.i.us

.lr.ph51.i.us:                                    ; preds = %.preheader33.i.us, %.lr.ph51.i.us
  %.450.i.us = phi ptr [ %i.ei, %.lr.ph51.i.us ], [ %.018061.i.us21, %.preheader33.i.us ] ; 2 uses
  %.318849.i.us = phi ptr [ %i.ej, %.lr.ph51.i.us ], [ %gep.i.us22, %.preheader33.i.us ] ; 6 uses
  %.019848.i.us = phi i32 [ %i.ek, %.lr.ph51.i.us ], [ 0, %.preheader33.i.us ]
  %i.cv = load float, ptr %.318849.i.us, align 4, !tbaa !68
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.318849.i.us, i64 %i.i ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %.318849.i.us, i64 %.idx26.i ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %.318849.i.us, i64 %.idx27.i ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !68
  %i.dc = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.cx, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %i.cz, i64 2
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 3
  %i.dg = getelementptr inbounds nuw i8, ptr %.318849.i.us, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !68
  %i.di = getelementptr i8, ptr %i.cw, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !68
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !68
  %i.dm = getelementptr i8, ptr %i.da, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !68
  %i.do = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %i.dj, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %i.dl, i64 2
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 3
  %i.ds = fmul fast <4 x float> %i.df, %i.cu      ; 2 uses
  %i.dt = fmul fast <4 x float> %i.dr, %i.cu      ; 2 uses
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.du)
  %i.dx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dv)
  %i.dy = fadd fast <4 x float> %i.dw, %i.du
  %i.dz = fadd fast <4 x float> %i.dx, %i.dv
  %i.ea = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dy)
  %i.eb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dz)
  %i.ec = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ea, <4 x i32> %i.eb)
  %i.ed = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ec, <8 x i16> splat (i16 -127))
  %i.ee = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ed, <8 x i16> splat (i16 127))
  %i.ef = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ee, <8 x i16> poison)
  %i.eg = bitcast <16 x i8> %i.ef to <2 x i64>
  %i.eh = extractelement <2 x i64> %i.eg, i64 0
  store i64 %i.eh, ptr %.450.i.us, align 8, !tbaa !581
  %i.ei = getelementptr inbounds nuw i8, ptr %.450.i.us, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.318849.i.us, i64 8 ; 2 uses
  %i.ek = add nuw nsw i32 %.019848.i.us, 2        ; 2 uses
  %i.el = or disjoint i32 %i.ek, 1
  %i.em = icmp slt i32 %i.el, %4
  br i1 %i.em, label %.lr.ph51.i.us, label %.preheader32.i.us, !llvm.loop !700

.preheader32.i.us:                                ; preds = %.lr.ph51.i.us, %.preheader33.i.us
  %.0198.lcssa.i.us = phi i32 [ 0, %.preheader33.i.us ], [ %i.t, %.lr.ph51.i.us ] ; 2 uses
  %.3188.lcssa.i.us = phi ptr [ %gep.i.us22, %.preheader33.i.us ], [ %i.ej, %.lr.ph51.i.us ]
  %.4.lcssa.i.us = phi ptr [ %.018061.i.us21, %.preheader33.i.us ], [ %i.ei, %.lr.ph51.i.us ] ; 2 uses
  %i.en = icmp slt i32 %.0198.lcssa.i.us, %4
  br i1 %i.en, label %.lr.ph58.i.us, label %.loopexit.i.us23

.lr.ph58.i.us:                                    ; preds = %.preheader32.i.us, %.lr.ph58.i.us
  %.557.i.us = phi ptr [ %i.fj, %.lr.ph58.i.us ], [ %.4.lcssa.i.us, %.preheader32.i.us ] ; 2 uses
  %.418956.i.us = phi ptr [ %i.fk, %.lr.ph58.i.us ], [ %.3188.lcssa.i.us, %.preheader32.i.us ] ; 5 uses
  %.119955.i.us = phi i32 [ %i.fl, %.lr.ph58.i.us ], [ %.0198.lcssa.i.us, %.preheader32.i.us ]
  %i.eo = load float, ptr %.418956.i.us, align 4, !tbaa !68
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.418956.i.us, i64 %i.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !68
  %i.er = getelementptr inbounds nuw i8, ptr %.418956.i.us, i64 %.idx26.i
  %i.es = load float, ptr %i.er, align 4, !tbaa !68
  %i.et = getelementptr inbounds nuw i8, ptr %.418956.i.us, i64 %.idx27.i
  %i.eu = load float, ptr %i.et, align 4, !tbaa !68
  %i.ev = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.eq, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.es, i64 2
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 3
  %i.ez = fmul fast <4 x float> %i.ey, %i.cu      ; 2 uses
  %i.fa = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ez)
  %i.fb = fadd fast <4 x float> %i.fa, %i.ez
  %i.fc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fb) ; 2 uses
  %i.fd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fc, <4 x i32> %i.fc)
  %i.fe = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fd, <8 x i16> splat (i16 -127))
  %i.ff = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.fe, <8 x i16> splat (i16 127))
  %i.fg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ff, <8 x i16> poison)
  %i.fh = bitcast <16 x i8> %i.fg to <4 x i32>
  %i.fi = extractelement <4 x i32> %i.fh, i64 0
  store i32 %i.fi, ptr %.557.i.us, align 4, !tbaa !45
  %i.fj = getelementptr inbounds nuw i8, ptr %.557.i.us, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.418956.i.us, i64 4
  %i.fl = add nuw nsw i32 %.119955.i.us, 1        ; 2 uses
  %exitcond130.not.i.us = icmp eq i32 %i.fl, %4
  br i1 %exitcond130.not.i.us, label %.loopexit.i.us23, label %.lr.ph58.i.us, !llvm.loop !701

.loopexit.i.us23:                                 ; preds = %.lr.ph58.i.us, %.preheader32.i.us
  %.6.i.us24 = phi ptr [ %.4.lcssa.i.us, %.preheader32.i.us ], [ %i.fj, %.lr.ph58.i.us ] ; 2 uses
  %indvars.iv.next.i.us25 = add nuw nsw i64 %indvars.iv.i.us20, 4 ; 3 uses
  %i.fm = or disjoint i64 %indvars.iv.next.i.us25, 3
  %i.fn = icmp samesign ult i64 %i.fm, %i.u
  br i1 %i.fn, label %.preheader33.i.us, label %.preheader31.loopexit.i, !llvm.loop !699

.preheader31.loopexit.i:                          ; preds = %.loopexit.i.us23, %.loopexit.i.us, %.loopexit.i.preheader
  %.us-phi = phi ptr [ %.0.val, %.loopexit.i.preheader ], [ %.6.i.us, %.loopexit.i.us ], [ %.6.i.us24, %.loopexit.i.us23 ]
  %.us-phi18 = phi i64 [ %i.v, %.loopexit.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit.i.us ], [ %indvars.iv.next.i.us25, %.loopexit.i.us23 ]
  %i.fo = trunc nuw nsw i64 %.us-phi18 to i32
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.loopexit.i, %bb.a
  %.0182.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.fo, %.preheader31.loopexit.i ] ; 3 uses
  %.0180.lcssa.i = phi ptr [ %.0.val, %bb.a ], [ %.us-phi, %.preheader31.loopexit.i ] ; 2 uses
  %i.fp = or disjoint i32 %.0182.lcssa.i, 1
  %i.fq = icmp slt i32 %i.fp, %2
  br i1 %i.fq, label %.lr.ph86.i, label %.preheader28.i

.lr.ph86.i:                                       ; preds = %.preheader31.i
  %i.fr = sext i32 %3 to i64
  %i.fs = icmp sgt i32 %4, 3
  %i.ft = and i32 %4, -4
  %i.fu = zext nneg i32 %.0182.lcssa.i to i64
  %i.fv = sext i32 %2 to i64
  %i.fw = sext i32 %1 to i64
  %invariant.op.i = add nsw i64 %i.fv, -1
  %i.fx = shl nuw nsw i64 %i.i, 2                 ; 2 uses
  br label %bb.c

.preheader28.loopexit.i:                          ; preds = %._crit_edge.i
  %i.fy = trunc nuw nsw i64 %indvars.iv.next134.i to i32
  br label %.preheader28.i

.preheader28.i:                                   ; preds = %.preheader28.loopexit.i, %.preheader31.i
  %.1183.lcssa.i = phi i32 [ %.0182.lcssa.i, %.preheader31.i ], [ %i.fy, %.preheader28.loopexit.i ] ; 3 uses
  %.7.lcssa.i = phi ptr [ %.0180.lcssa.i, %.preheader31.i ], [ %.10.lcssa.i, %.preheader28.loopexit.i ] ; 2 uses
  %i.fz = icmp slt i32 %.1183.lcssa.i, %2
  br i1 %i.fz, label %.lr.ph105.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph105.i:                                      ; preds = %.preheader28.i
  %i.ga = sext i32 %3 to i64                      ; 3 uses
  %i.gb = icmp sgt i32 %4, 3
  br i1 %i.gb, label %.lr.ph93.us.preheader.i, label %.lr.ph105.split.i

.lr.ph93.us.preheader.i:                          ; preds = %.lr.ph105.i
  %i.gc = and i32 %4, 2147483644                  ; 7 uses
  %i.gd = zext i32 %.1183.lcssa.i to i64          ; 2 uses
  %i.ge = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count144.i = zext i32 %2 to i64
  %.not = icmp eq i32 %i.gc, %4
  %i.gf = or disjoint i32 %i.gc, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.gf)
  %i.gg = xor i32 %i.gc, -1
  %i.gh = add nsw i32 %smax, %i.gg
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = add nsw i64 %i.ge, %i.gd
  %i.gk = mul i64 %i.i, %i.gj
  %i.gl = add i64 %i.gk, %i.ga
  %i.gm = add i64 %i.gl, %i.gi
  %i.gn = shl i64 %i.gm, 2
  %i.go = shl i64 %i.i, 2
  %i.gp = or disjoint i32 %i.gc, 1
  %i.gq = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.gp)
  %6 = and i32 %4, 2147483644
  %i.gr = xor i32 %6, -1
  %i.gs = add nsw i32 %i.gq, %i.gr                ; 2 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check111 = icmp ult i32 %i.gs, 3
  %n.vec113 = and i64 %i.gu, 8589934588           ; 5 uses
  %i.gv = trunc i64 %n.vec113 to i32
  %i.gw = add i32 %i.gc, %i.gv
  %i.gx = shl nuw nsw i64 %n.vec113, 2
  %cmp.n123 = icmp eq i64 %i.gu, %n.vec113
  br label %.lr.ph93.us.i

.lr.ph93.us.i:                                    ; preds = %._crit_edge101.us.i, %.lr.ph93.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge101.us.i ], [ 0, %.lr.ph93.us.preheader.i ] ; 2 uses
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge101.us.i ], [ %i.gd, %.lr.ph93.us.preheader.i ] ; 2 uses
  %.11104.us.i = phi ptr [ %.13.lcssa.us.i, %._crit_edge101.us.i ], [ %.7.lcssa.i, %.lr.ph93.us.preheader.i ] ; 3 uses
  %.11104.us.i102 = ptrtoaddr ptr %.11104.us.i to i64
  %i.gy = mul i64 %i.go, %indvar
  %i.gz = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ha = add nsw i64 %indvars.iv141.i, %i.ge     ; 2 uses
  %i.hb = mul i64 %i.ha, %i.i
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hb
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.ga
  %i.he = load ptr, ptr %5, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.ha
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !68 ; 3 uses
  %i.hh = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph93.us.i
  %indvar104 = phi i64 [ %indvar.next105, %bb.b ], [ 0, %.lr.ph93.us.i ] ; 2 uses
  %.091.us.i = phi i32 [ %i.hw, %bb.b ], [ 0, %.lr.ph93.us.i ]
  %.017890.us.i = phi ptr [ %i.hv, %bb.b ], [ %i.hd, %.lr.ph93.us.i ] ; 2 uses
  %.1289.us.i = phi ptr [ %i.hu, %bb.b ], [ %.11104.us.i, %.lr.ph93.us.i ] ; 2 uses
  %i.hj = load <4 x float>, ptr %.017890.us.i, align 1, !tbaa !113
  %i.hk = fmul fast <4 x float> %i.hj, %i.hi      ; 2 uses
  %i.hl = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hk)
  %i.hm = fadd fast <4 x float> %i.hl, %i.hk
  %i.hn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hm) ; 2 uses
  %i.ho = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hn, <4 x i32> %i.hn)
  %i.hp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ho, <8 x i16> splat (i16 -127))
  %i.hq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.hp, <8 x i16> splat (i16 127))
  %i.hr = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.hq, <8 x i16> poison)
  %i.hs = bitcast <16 x i8> %i.hr to <4 x i32>
  %i.ht = extractelement <4 x i32> %i.hs, i64 0
  store i32 %i.ht, ptr %.1289.us.i, align 4, !tbaa !45
  %i.hu = getelementptr i8, ptr %.1289.us.i, i64 4 ; 8 uses
  %i.hv = getelementptr i8, ptr %.017890.us.i, i64 16 ; 6 uses
  %i.hw = add nuw nsw i32 %.091.us.i, 4           ; 2 uses
  %i.hx = or disjoint i32 %i.hw, 3
  %i.hy = icmp slt i32 %i.hx, %4
  %indvar.next105 = add i64 %indvar104, 1
  br i1 %i.hy, label %bb.b, label %..preheader_crit_edge.us.i, !llvm.loop !702

.lr.ph100.us.i:                                   ; preds = %.lr.ph100.us.i.preheader127, %.lr.ph100.us.i
  %.199.us.i = phi i32 [ %i.if, %.lr.ph100.us.i ], [ %.199.us.i.ph, %.lr.ph100.us.i.preheader127 ]
  %.117998.us.i = phi ptr [ %i.ie, %.lr.ph100.us.i ], [ %.117998.us.i.ph, %.lr.ph100.us.i.preheader127 ] ; 2 uses
  %.1397.us.i = phi ptr [ %i.id, %.lr.ph100.us.i ], [ %.1397.us.i.ph, %.lr.ph100.us.i.preheader127 ] ; 2 uses
  %i.hz = load float, ptr %.117998.us.i, align 4, !tbaa !68
  %i.ia = fmul fast float %i.hz, %i.hg
  %i.ib = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ia)
  %i.ic = fptosi float %i.ib to i32
  %spec.select.i20.us.i = tail call i32 @llvm.smax.i32(i32 %i.ic, i32 -127)
  %.0.i21.us.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i20.us.i, i32 127)
  %.0.i.us.i = trunc nsw i32 %.0.i21.us.i to i8
  store i8 %.0.i.us.i, ptr %.1397.us.i, align 1, !tbaa !113
  %i.id = getelementptr inbounds nuw i8, ptr %.1397.us.i, i64 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.117998.us.i, i64 4
  %i.if = add nuw nsw i32 %.199.us.i, 1           ; 2 uses
  %i.ig = icmp slt i32 %i.if, %4
  br i1 %i.ig, label %.lr.ph100.us.i, label %._crit_edge101.us.i, !llvm.loop !703

._crit_edge101.us.i:                              ; preds = %.lr.ph100.us.i, %middle.block122, %..preheader_crit_edge.us.i
  %.13.lcssa.us.i = phi ptr [ %i.hu, %..preheader_crit_edge.us.i ], [ %i.ip, %middle.block122 ], [ %i.id, %.lr.ph100.us.i ]
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next142.i, %wide.trip.count144.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond145.not.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %.lr.ph93.us.i, !llvm.loop !704

..preheader_crit_edge.us.i:                       ; preds = %bb.b
  br i1 %.not, label %._crit_edge101.us.i, label %.lr.ph100.us.i.preheader

.lr.ph100.us.i.preheader:                         ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check111, label %.lr.ph100.us.i.preheader127, label %vector.memcheck101

vector.memcheck101:                               ; preds = %.lr.ph100.us.i.preheader
  %i.ih = ptrtoaddr ptr %i.hu to i64
  %reass.sub = sub i64 %i.ih, %.11104.us.i102
  %i.ii = getelementptr i8, ptr %.11104.us.i, i64 %reass.sub
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.gi
  %scevgep103 = getelementptr i8, ptr %i.ij, i64 1
  %i.ik = shl nuw nsw i64 %indvar104, 4
  %i.il = getelementptr i8, ptr %i.gz, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.il, i64 %i.gn
  %i.in = getelementptr i8, ptr %i.im, i64 20
  %scevgep106 = getelementptr i8, ptr %i.in, i64 %i.gy
  %bound0107 = icmp ult ptr %i.hu, %scevgep106
  %bound1108 = icmp ult ptr %i.hv, %scevgep103
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %.lr.ph100.us.i.preheader127, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck101
  %i.io = getelementptr i8, ptr %i.hv, i64 %i.gx
  %i.ip = getelementptr i8, ptr %i.hu, i64 %n.vec113 ; 2 uses
  %broadcast.splatinsert114 = insertelement <4 x float> poison, float %i.hg, i64 0
  %broadcast.splat115 = shufflevector <4 x float> %broadcast.splatinsert114, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph112
  %index117 = phi i64 [ 0, %vector.ph112 ], [ %index.next121, %vector.body116 ] ; 3 uses
  %i.iq = shl i64 %index117, 2
  %next.gep118 = getelementptr i8, ptr %i.hv, i64 %i.iq
  %next.gep119 = getelementptr i8, ptr %i.hu, i64 %index117
  %wide.load120 = load <4 x float>, ptr %next.gep118, align 4, !tbaa !68, !alias.scope !705
  %i.ir = fmul fast <4 x float> %wide.load120, %broadcast.splat115
  %i.is = tail call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.ir)
  %i.it = fptosi <4 x float> %i.is to <4 x i32>
  %i.iu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.it, <4 x i32> splat (i32 -127))
  %i.iv = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.iu, <4 x i32> splat (i32 127))
  %i.iw = trunc nsw <4 x i32> %i.iv to <4 x i8>
  store <4 x i8> %i.iw, ptr %next.gep119, align 1, !tbaa !113, !alias.scope !708, !noalias !705
  %index.next121 = add nuw i64 %index117, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next121, %n.vec113
  br i1 %i.ix, label %middle.block122, label %vector.body116, !llvm.loop !710

middle.block122:                                  ; preds = %vector.body116
  br i1 %cmp.n123, label %._crit_edge101.us.i, label %.lr.ph100.us.i.preheader127

.lr.ph100.us.i.preheader127:                      ; preds = %vector.memcheck101, %.lr.ph100.us.i.preheader, %middle.block122
  %.199.us.i.ph = phi i32 [ %i.gc, %vector.memcheck101 ], [ %i.gc, %.lr.ph100.us.i.preheader ], [ %i.gw, %middle.block122 ]
  %.117998.us.i.ph = phi ptr [ %i.hv, %vector.memcheck101 ], [ %i.hv, %.lr.ph100.us.i.preheader ], [ %i.io, %middle.block122 ]
  %.1397.us.i.ph = phi ptr [ %i.hu, %vector.memcheck101 ], [ %i.hu, %.lr.ph100.us.i.preheader ], [ %i.ip, %middle.block122 ]
  br label %.lr.ph100.us.i

.lr.ph105.split.i:                                ; preds = %.lr.ph105.i
  %i.iy = icmp sgt i32 %4, 0
  br i1 %i.iy, label %.preheader.preheader.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.preheader.preheader.i:                           ; preds = %.lr.ph105.split.i
  %i.iz = zext nneg i32 %.1183.lcssa.i to i64
  %i.ja = sext i32 %1 to i64
  %wide.trip.count.i = zext i32 %2 to i64
  %exitcond136.not.i = icmp eq i32 %4, 1
  %exitcond136.not.i.1 = icmp eq i32 %4, 2
  br label %.preheader.i

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph86.i
  %indvars.iv133.i = phi i64 [ %i.fu, %.lr.ph86.i ], [ %indvars.iv.next134.i, %._crit_edge.i ] ; 2 uses
  %.785.i = phi ptr [ %.0180.lcssa.i, %.lr.ph86.i ], [ %.10.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.jb = load ptr, ptr %0, align 8, !tbaa !18
  %i.jc = add nsw i64 %indvars.iv133.i, %i.fw     ; 2 uses
  %i.jd = mul i64 %i.jc, %i.i
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jd
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.fr ; 2 uses
  %i.jg = load ptr, ptr %5, align 8, !tbaa !18
  %i.jh = getelementptr [4 x i8], ptr %i.jg, i64 %i.jc ; 2 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !68 ; 3 uses
  %i.jj = getelementptr i8, ptr %i.jh, i64 4
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !68 ; 3 uses
  %i.jl = insertelement <4 x float> poison, float %i.ji, i64 0 ; 2 uses
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = insertelement <4 x float> poison, float %i.jk, i64 0 ; 2 uses
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = shufflevector <4 x float> %i.jl, <4 x float> %i.jn, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.fs, label %.lr.ph68.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %.lr.ph68.i, %bb.c
  %.0195.lcssa.i = phi ptr [ %i.jf, %bb.c ], [ %i.km, %.lr.ph68.i ] ; 2 uses
  %.0192.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ft, %.lr.ph68.i ] ; 3 uses
  %.8.lcssa.i = phi ptr [ %.785.i, %bb.c ], [ %i.kl, %.lr.ph68.i ] ; 2 uses
  %i.jq = or disjoint i32 %.0192.lcssa.i, 1
  %i.jr = icmp slt i32 %i.jq, %4
  br i1 %i.jr, label %.lr.ph75.i, label %.preheader29.i

.lr.ph68.i:                                       ; preds = %bb.c, %.lr.ph68.i
  %.867.i = phi ptr [ %i.kl, %.lr.ph68.i ], [ %.785.i, %bb.c ] ; 2 uses
  %.019266.i = phi i32 [ %i.kn, %.lr.ph68.i ], [ 0, %bb.c ]
  %.019565.i = phi ptr [ %i.km, %.lr.ph68.i ], [ %i.jf, %bb.c ] ; 3 uses
  %i.js = load <4 x float>, ptr %.019565.i, align 1, !tbaa !113
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.019565.i, i64 %i.i
  %i.ju = load <4 x float>, ptr %i.jt, align 1, !tbaa !113
  %i.jv = fmul fast <4 x float> %i.js, %i.jm      ; 2 uses
  %i.jw = fmul fast <4 x float> %i.ju, %i.jo      ; 2 uses
  %i.jx = shufflevector <4 x float> %i.jv, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.jy = shufflevector <4 x float> %i.jv, <4 x float> %i.jw, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.jz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jx)
  %i.ka = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jy)
  %i.kb = fadd fast <4 x float> %i.jz, %i.jx
  %i.kc = fadd fast <4 x float> %i.ka, %i.jy
  %i.kd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kb)
  %i.ke = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kc)
  %i.kf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kd, <4 x i32> %i.ke)
  %i.kg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kf, <8 x i16> splat (i16 -127))
  %i.kh = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kg, <8 x i16> splat (i16 127))
  %i.ki = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.kh, <8 x i16> poison)
  %i.kj = bitcast <16 x i8> %i.ki to <2 x i64>
  %i.kk = extractelement <2 x i64> %i.kj, i64 0
  store i64 %i.kk, ptr %.867.i, align 8, !tbaa !581
  %i.kl = getelementptr inbounds nuw i8, ptr %.867.i, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.019565.i, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL16gemm_BT_x86_int8ERKNS_3MatES2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.13:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.085193 = phi i32 [ %i.k, %.lr.ph ], [ %i.mo, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.bs = load i32, ptr %3, align 4, !tbaa !243   ; 2 uses
  %i.bt = load i32, ptr %i.l, align 4, !tbaa !245 ; 5 uses
  %i.bu = load i32, ptr %i.m, align 4, !tbaa !246 ; 3 uses
  %i.bv = load i32, ptr %i.n, align 4, !tbaa !247 ; 2 uses
  %i.bw = load i32, ptr %i.o, align 4, !tbaa !248
  %i.bx = load i32, ptr %i.p, align 4, !tbaa !249 ; 2 uses
  %i.by = load float, ptr %i.q, align 4, !tbaa !501 ; 2 uses
  %i.bz = load float, ptr %i.r, align 4, !tbaa !502 ; 2 uses
  %i.ca = mul nsw i32 %i.bs, %.085193             ; 8 uses
  %.not87 = icmp eq i32 %i.bw, 0                  ; 3 uses
  br i1 %.not87, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = load i32, ptr %i.s, align 4, !tbaa !86
  %i.cc = load i32, ptr %i.t, align 8, !tbaa !85
  %i.cd = icmp eq i32 %i.cc, 3
  %.in88.v = select i1 %i.cd, i64 56, i64 48
  %.in88 = getelementptr inbounds nuw i8, ptr %4, i64 %.in88.v
  %i.ce = load i32, ptr %.in88, align 8, !tbaa !45
  %i.cf = load i32, ptr %i.u, align 8, !tbaa !60
  %i.cg = mul nsw i32 %i.cf, %i.ce
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ch = load i32, ptr %i.t, align 8, !tbaa !85
  %i.ci = icmp eq i32 %i.ch, 3
  %.in.v = select i1 %i.ci, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %4, i64 %.in.v
  %i.cj = load i32, ptr %.in, align 8, !tbaa !45
  %i.ck = load i32, ptr %i.u, align 8, !tbaa !60
  %i.cl = mul nsw i32 %i.ck, %i.cj
  %i.cm = load i32, ptr %i.s, align 4, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cn = phi i32 [ %i.cb, %bb.d ], [ %i.cl, %bb.e ]
  %i.co = phi i32 [ %i.cg, %bb.d ], [ %i.cm, %bb.e ] ; 3 uses
  %i.cp = sub nsw i32 %i.cn, %i.ca
  %.sroa.speculated165 = call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.cp) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cq = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc119 unwind label %.loopexit.split-lp

.noexc119:                                        ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.cr = load i32, ptr %i.v, align 4, !tbaa !86, !noalias !740 ; 2 uses
  %i.cs = load i32, ptr %i.w, align 8, !tbaa !88, !noalias !740 ; 2 uses
  %i.ct = load i32, ptr %i.x, align 4, !tbaa !285, !noalias !740
  %i.cu = load ptr, ptr %5, align 8, !tbaa !18, !noalias !740
  %i.cv = load i64, ptr %i.y, align 8, !tbaa !20, !noalias !740
  %i.cw = sext i32 %i.cq to i64
  %i.cx = mul i64 %i.cv, %i.cw
  %i.cy = load i64, ptr %i.z, align 8, !tbaa !59, !noalias !740 ; 4 uses
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %i.db = load i32, ptr %i.aa, align 8, !tbaa !60, !noalias !740
  %i.dc = load ptr, ptr %i.ab, align 8, !tbaa !17, !noalias !740
  store ptr %i.da, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.ac, align 8, !tbaa !11
  store i64 %i.cy, ptr %i.ad, align 8, !tbaa !59
  store i32 %i.db, ptr %i.ae, align 8, !tbaa !60
  store ptr %i.dc, ptr %i.af, align 8, !tbaa !17
  store i32 %i.cr, ptr %i.ah, align 4, !tbaa !86
  store i32 %i.cs, ptr %i.ai, align 8, !tbaa !88
  store i32 1, ptr %i.aj, align 4, !tbaa !285
  store i32 %i.ct, ptr %i.ak, align 8, !tbaa !51
  %i.dd = sext i32 %i.cr to i64
  %i.de = sext i32 %i.cs to i64
  %i.df = mul nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = mul i64 %i.cy, %i.df
  %i.dh = add i64 %i.dg, 15
  %i.di = and i64 %i.dh, -16
  %i.dj = udiv i64 %i.di, %i.cy
  store i64 %i.dj, ptr %i.al, align 8, !tbaa !20
  %i.dk = load i32, ptr %i.am, align 8, !tbaa !85, !noalias !740 ; 2 uses
  %i.dl = add nsw i32 %i.dk, -1
  store i32 %i.dl, ptr %i.ag, align 8, !tbaa !85, !alias.scope !740
  %i.dm = icmp eq i32 %i.dk, 4
  br i1 %i.dm, label %bb.g, label %_ZN4ncnn3Mat7channelEi.exit120

bb.g:                                             ; preds = %.noexc119
  store i64 %i.df, ptr %i.al, align 8, !tbaa !20, !alias.scope !740
  br label %_ZN4ncnn3Mat7channelEi.exit120

_ZN4ncnn3Mat7channelEi.exit120:                   ; preds = %.noexc119, %bb.g
  %i.dn = load i32, ptr %6, align 4, !tbaa !45    ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph186, label %._crit_edge187

.lr.ph186:                                        ; preds = %_ZN4ncnn3Mat7channelEi.exit120
  %i.dp = icmp sgt i32 %i.co, 0
  %i.dq = sext i32 %i.ca to i64                   ; 4 uses
  br i1 %i.dp, label %.lr.ph.us, label %.lr.ph186.split

.lr.ph.us:                                        ; preds = %.lr.ph186, %._crit_edge.us
  %i.dr = phi i32 [ %i.ly, %._crit_edge.us ], [ %i.dn, %.lr.ph186 ]
  %.084185.us = phi i32 [ %i.lx, %._crit_edge.us ], [ 0, %.lr.ph186 ] ; 6 uses
  %i.ds = sub nsw i32 %i.dr, %.084185.us
  %.sroa.speculated161.us = call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.ds) ; 2 uses
  %i.dt = icmp eq i32 %.084185.us, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.us, %_ZN4ncnn3MatD2Ev.exit89.us
  %.0184.us = phi i32 [ 0, %.lr.ph.us ], [ %i.lv, %_ZN4ncnn3MatD2Ev.exit89.us ] ; 7 uses
  %i.du = sub nsw i32 %i.co, %.0184.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.du) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.dv = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc118.us unwind label %.loopexit.split.us

.noexc118.us:                                     ; preds = %bb.h
  %i.dw = load i32, ptr %i.an, align 4, !tbaa !86, !noalias !743 ; 2 uses
  %i.dx = load ptr, ptr %7, align 8, !tbaa !18, !noalias !743
  %i.dy = load i64, ptr %i.ao, align 8, !tbaa !20, !noalias !743
  %i.dz = sext i32 %i.dv to i64
  %i.ea = mul i64 %i.dy, %i.dz
  %i.eb = load i64, ptr %i.ap, align 8, !tbaa !59, !noalias !743 ; 3 uses
  %i.ec = mul i64 %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ec
  %i.ee = load i32, ptr %i.aq, align 8, !tbaa !60, !noalias !743
  %i.ef = load ptr, ptr %i.ar, align 8, !tbaa !17, !noalias !743
  %i.eg = sext i32 %i.dw to i64                   ; 2 uses
  %i.eh = sdiv i32 %.0184.us, %i.bu
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = mul i64 %i.eb, %i.eg
  %i.ek = mul i64 %i.ej, %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ek
  store ptr %i.el, ptr %15, align 8, !tbaa !18
  store ptr null, ptr %i.as, align 8, !tbaa !11
  store i64 %i.eb, ptr %i.at, align 8, !tbaa !59
  store i32 %i.ee, ptr %i.au, align 8, !tbaa !60
  store ptr %i.ef, ptr %i.av, align 8, !tbaa !17
  store i32 2, ptr %i.aw, align 8, !tbaa !85
  store i32 %i.dw, ptr %i.ax, align 4, !tbaa !86
  store i32 1, ptr %i.ay, align 8, !tbaa !88
  store i32 1, ptr %i.az, align 4, !tbaa !285
  store i32 1, ptr %i.ba, align 8, !tbaa !51
  store i64 %i.eg, ptr %i.bb, align 8, !tbaa !20, !alias.scope !746
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  %i.em = sdiv i32 %.084185.us, %i.bt
  %i.en = load i32, ptr %i.bc, align 4, !tbaa !86, !noalias !749 ; 2 uses
  %i.eo = load ptr, ptr %8, align 8, !tbaa !18, !noalias !749
  %i.ep = load i64, ptr %i.bd, align 8, !tbaa !20, !noalias !749
  %i.eq = sext i32 %i.em to i64
  %i.er = mul i64 %i.ep, %i.eq
  %i.es = load i64, ptr %i.be, align 8, !tbaa !59, !noalias !749 ; 3 uses
  %i.et = mul i64 %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.et
  %i.ev = load i32, ptr %i.bf, align 8, !tbaa !60, !noalias !749
  %i.ew = load ptr, ptr %i.bg, align 8, !tbaa !17, !noalias !749
  %i.ex = sext i32 %i.en to i64                   ; 2 uses
  %i.ey = mul nsw i64 %i.ex, %i.ei
  %i.ez = mul i64 %i.ey, %i.es
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ez
  store ptr %i.fa, ptr %16, align 8, !tbaa !18, !alias.scope !752
  store ptr null, ptr %i.bh, align 8, !tbaa !11, !alias.scope !752
  store i64 %i.es, ptr %i.bi, align 8, !tbaa !59, !alias.scope !752
  store i32 %i.ev, ptr %i.bj, align 8, !tbaa !60, !alias.scope !752
  store ptr %i.ew, ptr %i.bk, align 8, !tbaa !17, !alias.scope !752
  store i32 2, ptr %i.bl, align 8, !tbaa !85, !alias.scope !752
  store i32 %i.en, ptr %i.bm, align 4, !tbaa !86, !alias.scope !752
  store i32 1, ptr %i.bn, align 8, !tbaa !88, !alias.scope !752
  store i32 1, ptr %i.bo, align 4, !tbaa !285, !alias.scope !752
  store i32 1, ptr %i.bp, align 8, !tbaa !51, !alias.scope !752
  store i64 %i.ex, ptr %i.bq, align 8, !tbaa !20, !alias.scope !752
  br i1 %i.dt, label %bb.i, label %bb.t

bb.i:                                             ; preds = %.noexc118.us
  %i.fb = icmp eq i32 %.0184.us, 0
  br i1 %i.fb, label %bb.j, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us

bb.j:                                             ; preds = %bb.i
  %i.fc = load float, ptr %10, align 4, !tbaa !68 ; 2 uses
  %.val123.us = load ptr, ptr %9, align 8         ; 3 uses
  %.val123.us228 = ptrtoaddr ptr %.val123.us to i64
  %.val124.us = load ptr, ptr %11, align 8        ; 3 uses
  %.val124.us227 = ptrtoaddr ptr %.val124.us to i64
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr %.val123.us, float noundef nofpclass(nan inf) %i.fc, ptr %.val124.us, i32 noundef %i.ca, i32 noundef %.sroa.speculated165)
  br label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread180.us

bb.l:                                             ; preds = %bb.j
  %i.fd = load i32, ptr %i.u, align 8, !tbaa !60  ; 7 uses
  %i.fe = load i32, ptr %i.t, align 8, !tbaa !85
  %i.ff = icmp eq i32 %i.fe, 3
  %i.fg = load i64, ptr %i.br, align 8
  %i.fh = load i32, ptr %i.s, align 4             ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = select i1 %i.ff, i64 %i.fg, i64 %i.fi   ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %.val123.us, i64 %i.dq ; 7 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val124.us, i64 %i.dq ; 7 uses
  %i.fm = sdiv i32 %.sroa.speculated165, %i.fd    ; 11 uses
  %i.fn = mul i32 %i.fh, %i.fd                    ; 10 uses
  %i.fo = fdiv fast float f0x3C010204, %i.fc      ; 3 uses
  %i.fp = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fr = icmp sgt i32 %i.fm, 0
  br i1 %i.fr, label %.lr.ph31.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us

.lr.ph31.i.i.us:                                  ; preds = %bb.l
  %i.fs = icmp sgt i32 %i.fn, 3
  br i1 %i.fs, label %.lr.ph.us.preheader.i.i.us, label %.lr.ph31.split.i.i.us

.lr.ph31.split.i.i.us:                            ; preds = %.lr.ph31.i.i.us
  %i.ft = icmp sgt i32 %i.fn, 0
  br i1 %i.ft, label %.preheader.us33.preheader.i.i.us, label %.lr.ph31.split.split.i.i.us

.lr.ph31.split.split.i.i.us:                      ; preds = %.lr.ph31.split.i.i.us
  switch i32 %i.fd, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us [
    i32 4, label %.preheader.us49.i.i.us.preheader
    i32 1, label %.preheader.us57.i.i.us.preheader
  ]

.preheader.us49.i.i.us.preheader:                 ; preds = %.lr.ph31.split.split.i.i.us
  %xtraiter251 = and i32 %i.fm, 7                 ; 3 uses
  %i.fu = icmp ult i32 %i.fm, 8
  br i1 %i.fu, label %.preheader.us49.i.i.us.epil.preheader, label %.preheader.us49.i.i.us.preheader.new

.preheader.us49.i.i.us.preheader.new:             ; preds = %.preheader.us49.i.i.us.preheader
  %unroll_iter = and i32 %i.fm, 2147483640
  br label %.preheader.us49.i.i.us

.preheader.us57.i.i.us.preheader:                 ; preds = %.lr.ph31.split.split.i.i.us
  %i.fv = zext nneg i32 %i.fm to i64              ; 2 uses
  %min.iters.check230 = icmp ult i32 %i.fm, 8
  %i.fw = sub i64 %.val123.us228, %.val124.us227
  %diff.check = icmp ugt i64 %i.fw, -32
  %or.cond = select i1 %min.iters.check230, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.us57.i.i.us.preheader245, label %vector.ph231

vector.ph231:                                     ; preds = %.preheader.us57.i.i.us.preheader
  %n.vec232 = and i64 %i.fv, 2147483640           ; 4 uses
  %i.fx = trunc nuw nsw i64 %n.vec232 to i32
  %i.fy = shl nuw nsw i64 %n.vec232, 2            ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fl, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fk, i64 %i.fy
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body233 ] ; 2 uses
  %i.gb = shl i64 %index234, 2                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %i.fl, i64 %i.gb ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.fk, i64 %i.gb ; 2 uses
  %i.gc = getelementptr i8, ptr %next.gep236, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep236, align 4, !tbaa !68
  store <4 x float> splat (float +inf), ptr %i.gc, align 4, !tbaa !68
  %i.gd = getelementptr i8, ptr %next.gep235, i64 16
  store <4 x float> zeroinitializer, ptr %next.gep235, align 4, !tbaa !68
  store <4 x float> zeroinitializer, ptr %i.gd, align 4, !tbaa !68
  %index.next237 = add nuw i64 %index234, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.ge, label %middle.block238, label %vector.body233, !llvm.loop !755

middle.block238:                                  ; preds = %vector.body233
  %cmp.n239 = icmp eq i64 %n.vec232, %i.fv
  br i1 %cmp.n239, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us.preheader245

.preheader.us57.i.i.us.preheader245:              ; preds = %.preheader.us57.i.i.us.preheader, %middle.block238
  %.04829.us58.i.i.us.ph = phi i32 [ 0, %.preheader.us57.i.i.us.preheader ], [ %i.fx, %middle.block238 ] ; 4 uses
  %.04928.us59.i.i.us.ph = phi ptr [ %i.fl, %.preheader.us57.i.i.us.preheader ], [ %i.fz, %middle.block238 ] ; 2 uses
  %.05127.us60.i.i.us.ph = phi ptr [ %i.fk, %.preheader.us57.i.i.us.preheader ], [ %i.ga, %middle.block238 ] ; 2 uses
  %i.gf = sub i32 %i.fm, %.04829.us58.i.i.us.ph
  %xtraiter = and i32 %i.gf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us57.i.i.us.prol.loopexit, label %.preheader.us57.i.i.us.prol

.preheader.us57.i.i.us.prol:                      ; preds = %.preheader.us57.i.i.us.preheader245, %.preheader.us57.i.i.us.prol
  %.04829.us58.i.i.us.prol = phi i32 [ %i.gi, %.preheader.us57.i.i.us.prol ], [ %.04829.us58.i.i.us.ph, %.preheader.us57.i.i.us.preheader245 ]
  %.04928.us59.i.i.us.prol = phi ptr [ %i.gh, %.preheader.us57.i.i.us.prol ], [ %.04928.us59.i.i.us.ph, %.preheader.us57.i.i.us.preheader245 ] ; 2 uses
  %.05127.us60.i.i.us.prol = phi ptr [ %i.gg, %.preheader.us57.i.i.us.prol ], [ %.05127.us60.i.i.us.ph, %.preheader.us57.i.i.us.preheader245 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.us57.i.i.us.prol ], [ 0, %.preheader.us57.i.i.us.preheader245 ]
  store float +inf, ptr %.05127.us60.i.i.us.prol, align 4, !tbaa !68
  store float 0.000000e+00, ptr %.04928.us59.i.i.us.prol, align 4, !tbaa !68
  %i.gg = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us.prol, i64 4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us.prol, i64 4 ; 2 uses
  %i.gi = add nuw nsw i32 %.04829.us58.i.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.us57.i.i.us.prol.loopexit, label %.preheader.us57.i.i.us.prol, !llvm.loop !756

.preheader.us57.i.i.us.prol.loopexit:             ; preds = %.preheader.us57.i.i.us.prol, %.preheader.us57.i.i.us.preheader245
  %.04829.us58.i.i.us.unr = phi i32 [ %.04829.us58.i.i.us.ph, %.preheader.us57.i.i.us.preheader245 ], [ %i.gi, %.preheader.us57.i.i.us.prol ]
  %.04928.us59.i.i.us.unr = phi ptr [ %.04928.us59.i.i.us.ph, %.preheader.us57.i.i.us.preheader245 ], [ %i.gh, %.preheader.us57.i.i.us.prol ]
  %.05127.us60.i.i.us.unr = phi ptr [ %.05127.us60.i.i.us.ph, %.preheader.us57.i.i.us.preheader245 ], [ %i.gg, %.preheader.us57.i.i.us.prol ]
  %i.gj = sub i32 %.04829.us58.i.i.us.ph, %i.fm
  %i.gk = icmp ugt i32 %i.gj, -8
  br i1 %i.gk, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us

.preheader.us57.i.i.us:                           ; preds = %.preheader.us57.i.i.us.prol.loopexit, %.preheader.us57.i.i.us
  %.04829.us58.i.i.us = phi i32 [ %i.hb, %.preheader.us57.i.i.us ], [ %.04829.us58.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ]
  %.04928.us59.i.i.us = phi ptr [ %i.ha, %.preheader.us57.i.i.us ], [ %.04928.us59.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ] ; 9 uses
  %.05127.us60.i.i.us = phi ptr [ %i.gz, %.preheader.us57.i.i.us ], [ %.05127.us60.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ] ; 9 uses
  store float +inf, ptr %.05127.us60.i.i.us, align 4, !tbaa !68
  store float 0.000000e+00, ptr %.04928.us59.i.i.us, align 4, !tbaa !68
  %i.gl = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 4
  %i.gm = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 4
  store float +inf, ptr %i.gl, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gm, align 4, !tbaa !68
  %i.gn = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 8
  store float +inf, ptr %i.gn, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.go, align 4, !tbaa !68
  %i.gp = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 12
  store float +inf, ptr %i.gp, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !68
  %i.gr = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 16
  store float +inf, ptr %i.gr, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gs, align 4, !tbaa !68
  %i.gt = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 20
  %i.gu = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 20
  store float +inf, ptr %i.gt, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gu, align 4, !tbaa !68
  %i.gv = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 24
  store float +inf, ptr %i.gv, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !68
  %i.gx = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 28
  %i.gy = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 28
  store float +inf, ptr %i.gx, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gy, align 4, !tbaa !68
  %i.gz = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 32
  %i.hb = add nuw nsw i32 %.04829.us58.i.i.us, 8  ; 2 uses
  %exitcond.not.i.i.us.7 = icmp eq i32 %i.hb, %i.fm
  br i1 %exitcond.not.i.i.us.7, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us, !llvm.loop !757

.preheader.us49.i.i.us:                           ; preds = %.preheader.us49.i.i.us, %.preheader.us49.i.i.us.preheader.new
  %.04928.us51.i.i.us = phi ptr [ %i.fl, %.preheader.us49.i.i.us.preheader.new ], [ %i.hr, %.preheader.us49.i.i.us ] ; 9 uses
  %.05127.us52.i.i.us = phi ptr [ %i.fk, %.preheader.us49.i.i.us.preheader.new ], [ %i.hq, %.preheader.us49.i.i.us ] ; 9 uses
  %niter = phi i32 [ 0, %.preheader.us49.i.i.us.preheader.new ], [ %niter.next.7, %.preheader.us49.i.i.us ]
  store <4 x float> splat (float +inf), ptr %.05127.us52.i.i.us, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %.04928.us51.i.i.us, align 16, !tbaa !113
  %i.hc = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 16
  store <4 x float> splat (float +inf), ptr %i.hc, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hd, align 16, !tbaa !113
  %i.he = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 32
  store <4 x float> splat (float +inf), ptr %i.he, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hf, align 16, !tbaa !113
  %i.hg = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 48
  store <4 x float> splat (float +inf), ptr %i.hg, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hh, align 16, !tbaa !113
  %i.hi = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 64
  store <4 x float> splat (float +inf), ptr %i.hi, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hj, align 16, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 80
  %i.hl = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 80
  store <4 x float> splat (float +inf), ptr %i.hk, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hl, align 16, !tbaa !113
  %i.hm = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 96
  %i.hn = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 96
  store <4 x float> splat (float +inf), ptr %i.hm, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hn, align 16, !tbaa !113
  %i.ho = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 112
  %i.hp = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 112
  store <4 x float> splat (float +inf), ptr %i.ho, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hp, align 16, !tbaa !113
  %i.hq = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 128 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 128 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa, label %.preheader.us49.i.i.us, !llvm.loop !674

.preheader.us33.preheader.i.i.us:                 ; preds = %.lr.ph31.split.i.i.us
  %i.hs = sext i32 %i.fd to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.fm to i64
  %exitcond71.not.i.i.us = icmp eq i32 %i.fn, 1
  %exitcond71.not.i.i.us.1 = icmp eq i32 %i.fn, 2
  br label %.preheader.us33.i.i.us

.preheader.us33.i.i.us:                           ; preds = %bb.p, %.preheader.us33.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.preheader.us33.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.p ] ; 2 uses
  %.04928.us35.i.i.us = phi ptr [ %i.fl, %.preheader.us33.preheader.i.i.us ], [ %.2.us45.i.i.us, %bb.p ] ; 5 uses
  %.05127.us36.i.i.us = phi ptr [ %i.fk, %.preheader.us33.preheader.i.i.us ], [ %.253.us44.i.i.us, %bb.p ] ; 5 uses
  %i.ht = load ptr, ptr %4, align 8, !tbaa !18
  %i.hu = mul nsw i64 %indvars.iv.i.i.us, %i.hs
  %i.hv = add nsw i64 %i.hu, %i.dq
  %i.hw = mul i64 %i.hv, %i.fj
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hw ; 3 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !68
  %i.hz = call fast float @llvm.fabs.f32(float %i.hy)
  %.sroa.speculated4.us40.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.hz, float 0.000000e+00) ; 2 uses
  br i1 %exitcond71.not.i.i.us, label %._crit_edge.us47.i.i.us, label %bb.m

bb.m:                                             ; preds = %.preheader.us33.i.i.us
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !68
  %i.ic = call fast float @llvm.fabs.f32(float %i.ib)
  %.sroa.speculated4.us40.i.i.us.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us40.i.i.us, float %i.ic) ; 2 uses
  br i1 %exitcond71.not.i.i.us.1, label %._crit_edge.us47.i.i.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !68
  %i.if = call fast float @llvm.fabs.f32(float %i.ie)
  %.sroa.speculated4.us40.i.i.us.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us40.i.i.us.1, float %i.if)
  br label %._crit_edge.us47.i.i.us

._crit_edge.us47.i.i.us:                          ; preds = %bb.n, %bb.m, %.preheader.us33.i.i.us
  %.sroa.speculated4.us40.i.i.us.lcssa = phi float [ %.sroa.speculated4.us40.i.i.us, %.preheader.us33.i.i.us ], [ %.sroa.speculated4.us40.i.i.us.1, %bb.m ], [ %.sroa.speculated4.us40.i.i.us.2, %bb.n ]
  switch i32 %i.fd, label %bb.p [
    i32 4, label %.thread.us43.i.i.us
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %._crit_edge.us47.i.i.us
  %.sroa.speculated.us42.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us40.i.i.us.lcssa, float 0.000000e+00) ; 2 uses
  %i.ig = fdiv fast float 1.270000e+02, %.sroa.speculated.us42.i.i.us
  store float %i.ig, ptr %.05127.us36.i.i.us, align 4, !tbaa !68
  %i.ih = fmul fast float %.sroa.speculated.us42.i.i.us, %i.fo
  store float %i.ih, ptr %.04928.us35.i.i.us, align 4, !tbaa !68
  %i.ii = getelementptr inbounds nuw i8, ptr %.05127.us36.i.i.us, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.04928.us35.i.i.us, i64 4
  br label %bb.p

.thread.us43.i.i.us:                              ; preds = %._crit_edge.us47.i.i.us
  store <4 x float> splat (float +inf), ptr %.05127.us36.i.i.us, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %.04928.us35.i.i.us, align 16, !tbaa !113
  %i.ik = getelementptr inbounds nuw i8, ptr %.05127.us36.i.i.us, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %.04928.us35.i.i.us, i64 16
  br label %bb.p

bb.p:                                             ; preds = %.thread.us43.i.i.us, %bb.o, %._crit_edge.us47.i.i.us
  %.253.us44.i.i.us = phi ptr [ %i.ii, %bb.o ], [ %.05127.us36.i.i.us, %._crit_edge.us47.i.i.us ], [ %i.ik, %.thread.us43.i.i.us ]
  %.2.us45.i.i.us = phi ptr [ %i.ij, %bb.o ], [ %.04928.us35.i.i.us, %._crit_edge.us47.i.i.us ], [ %i.il, %.thread.us43.i.i.us ]
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond73.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond73.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %.preheader.us33.i.i.us, !llvm.loop !674

.lr.ph.us.preheader.i.i.us:                       ; preds = %.lr.ph31.i.i.us
  %i.im = and i32 %i.fn, 2147483644               ; 3 uses
  %i.in = sext i32 %i.fd to i64
  %wide.trip.count78.i.i.us = zext nneg i32 %i.fm to i64
  %.not.i129.us = icmp eq i32 %i.im, %i.fn
  %i.io = add nsw i32 %i.fn, -4                   ; 2 uses
  %i.ip = lshr i32 %i.io, 2
  %i.iq = add nuw nsw i32 %i.ip, 1                ; 2 uses
  %xtraiter254 = and i32 %i.iq, 3                 ; 3 uses
  %i.ir = icmp ult i32 %i.io, 12
  %unroll_iter260 = and i32 %i.iq, 2147483644
  %lcmp.mod256.not = icmp eq i32 %xtraiter254, 0
  %lcmp.mod259 = icmp ne i32 %xtraiter254, 0
  %17 = and i32 %i.fn, 2147483644
  %i.is = xor i32 %17, -1
  %i.it = add nsw i32 %i.fn, %i.is                ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = add nuw nsw i64 %i.iu, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.it, 7
  %n.vec = and i64 %i.iv, 8589934584              ; 4 uses
  %i.iw = trunc i64 %n.vec to i32
  %i.ix = add i32 %i.im, %i.iw
  %i.iy = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.iv, %n.vec
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %bb.s, %.lr.ph.us.preheader.i.i.us
  %indvars.iv75.i.i.us = phi i64 [ 0, %.lr.ph.us.preheader.i.i.us ], [ %indvars.iv.next76.i.i.us, %bb.s ] ; 2 uses
  %.04928.us.i.i.us = phi ptr [ %i.fl, %.lr.ph.us.preheader.i.i.us ], [ %.2.us.i.i.us, %bb.s ] ; 5 uses
  %.05127.us.i.i.us = phi ptr [ %i.fk, %.lr.ph.us.preheader.i.i.us ], [ %.253.us.i.i.us, %bb.s ] ; 5 uses
  %i.iz = load ptr, ptr %4, align 8, !tbaa !18
  %i.ja = mul nsw i64 %indvars.iv75.i.i.us, %i.in
  %i.jb = add nsw i64 %i.ja, %i.dq
  %i.jc = mul i64 %i.jb, %i.fj
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.jc ; 2 uses
  br i1 %i.ir, label %.epil.preheader, label %.lr.ph.us.i.i.us.new

.lr.ph.us.i.i.us.new:                             ; preds = %.lr.ph.us.i.i.us, %.lr.ph.us.i.i.us.new
  %.04618.us.i.i.us = phi ptr [ %i.jx, %.lr.ph.us.i.i.us.new ], [ %i.jd, %.lr.ph.us.i.i.us ] ; 5 uses
  %.01317.us.i.i.us = phi <4 x float> [ %i.jw, %.lr.ph.us.i.i.us.new ], [ zeroinitializer, %.lr.ph.us.i.i.us ]
  %niter261 = phi i32 [ %niter261.next.3, %.lr.ph.us.i.i.us.new ], [ 0, %.lr.ph.us.i.i.us ]
  %i.je = load <4 x i32>, ptr %.04618.us.i.i.us, align 1, !tbaa !113
  %i.jf = and <4 x i32> %i.je, splat (i32 2147483647)
  %i.jg = bitcast <4 x i32> %i.jf to <4 x float>
  %i.jh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.i.us, <4 x float> nofpclass(nan inf) %i.jg)
  %i.ji = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 16
  %i.jj = load <4 x i32>, ptr %i.ji, align 1, !tbaa !113
  %i.jk = and <4 x i32> %i.jj, splat (i32 2147483647)
  %i.jl = bitcast <4 x i32> %i.jk to <4 x float>
  %i.jm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jh, <4 x float> nofpclass(nan inf) %i.jl)
  %i.jn = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 32
  %i.jo = load <4 x i32>, ptr %i.jn, align 1, !tbaa !113
  %i.jp = and <4 x i32> %i.jo, splat (i32 2147483647)
  %i.jq = bitcast <4 x i32> %i.jp to <4 x float>
  %i.jr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jm, <4 x float> nofpclass(nan inf) %i.jq)
  %i.js = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 48
  %i.jt = load <4 x i32>, ptr %i.js, align 1, !tbaa !113
  %i.ju = and <4 x i32> %i.jt, splat (i32 2147483647)
  %i.jv = bitcast <4 x i32> %i.ju to <4 x float>
  %i.jw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jr, <4 x float> nofpclass(nan inf) %i.jv) ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 64 ; 3 uses
  %niter261.next.3 = add nuw nsw i32 %niter261, 4 ; 2 uses
  %niter261.ncmp.3.not = icmp eq i32 %niter261.next.3, %unroll_iter260
  br i1 %niter261.ncmp.3.not, label %..preheader_crit_edge.us.i.i.us.unr-lcssa, label %.lr.ph.us.i.i.us.new, !llvm.loop !672

..preheader_crit_edge.us.i.i.us.unr-lcssa:        ; preds = %.lr.ph.us.i.i.us.new
  br i1 %lcmp.mod256.not, label %..preheader_crit_edge.us.i.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.i.i.us.unr-lcssa, %.lr.ph.us.i.i.us
  %.04618.us.i.i.us.epil.init = phi ptr [ %i.jd, %.lr.ph.us.i.i.us ], [ %i.jx, %..preheader_crit_edge.us.i.i.us.unr-lcssa ]
  %.01317.us.i.i.us.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.us.i.i.us ], [ %i.jw, %..preheader_crit_edge.us.i.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod259)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %.04618.us.i.i.us.epil = phi ptr [ %.04618.us.i.i.us.epil.init, %.epil.preheader ], [ %i.kc, %bb.q ] ; 2 uses
  %.01317.us.i.i.us.epil = phi <4 x float> [ %.01317.us.i.i.us.epil.init, %.epil.preheader ], [ %i.kb, %bb.q ]
  %epil.iter255 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter255.next, %bb.q ]
  %i.jy = load <4 x i32>, ptr %.04618.us.i.i.us.epil, align 1, !tbaa !113
  %i.jz = and <4 x i32> %i.jy, splat (i32 2147483647)
  %i.ka = bitcast <4 x i32> %i.jz to <4 x float>
  %i.kb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.i.us.epil, <4 x float> nofpclass(nan inf) %i.ka) ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us.epil, i64 16 ; 2 uses
  %epil.iter255.next = add i32 %epil.iter255, 1   ; 2 uses
  %epil.iter255.cmp.not = icmp eq i32 %epil.iter255.next, %xtraiter254
  br i1 %epil.iter255.cmp.not, label %..preheader_crit_edge.us.i.i.us, label %bb.q, !llvm.loop !758

..preheader_crit_edge.us.i.i.us:                  ; preds = %bb.q, %..preheader_crit_edge.us.i.i.us.unr-lcssa
  %.lcssa248 = phi <4 x float> [ %i.jw, %..preheader_crit_edge.us.i.i.us.unr-lcssa ], [ %i.kb, %bb.q ] ; 4 uses
  %.lcssa = phi ptr [ %i.jx, %..preheader_crit_edge.us.i.i.us.unr-lcssa ], [ %i.kc, %bb.q ] ; 3 uses
  br i1 %.not.i129.us, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us.preheader

.lr.ph25.us.i.i.us.preheader:                     ; preds = %..preheader_crit_edge.us.i.i.us
  br i1 %min.iters.check, label %.lr.ph25.us.i.i.us.preheader243, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.us.i.i.us.preheader
  %i.kd = getelementptr i8, ptr %.lcssa, i64 %i.iy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ki, %vector.body ]
  %vec.phi224 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.kj, %vector.body ]
  %i.ke = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.lcssa, i64 %i.ke ; 2 uses
  %i.kf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !68
  %wide.load225 = load <4 x float>, ptr %i.kf, align 4, !tbaa !68
  %i.kg = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.kh = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load225)
  %i.ki = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.kg) ; 2 uses
  %i.kj = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi224, <4 x float> %i.kh) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !759

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ki, <4 x float> %i.kj)
  %i.kl = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us.preheader243

.lr.ph25.us.i.i.us.preheader243:                  ; preds = %.lr.ph25.us.i.i.us.preheader, %middle.block
  %.124.us.i.i.us.ph = phi i32 [ %i.im, %.lr.ph25.us.i.i.us.preheader ], [ %i.ix, %middle.block ]
  %.14723.us.i.i.us.ph = phi ptr [ %.lcssa, %.lr.ph25.us.i.i.us.preheader ], [ %i.kd, %middle.block ]
  %.01422.us.i.i.us.ph = phi float [ 0.000000e+00, %.lr.ph25.us.i.i.us.preheader ], [ %i.kl, %middle.block ]
  br label %.lr.ph25.us.i.i.us

.lr.ph25.us.i.i.us:                               ; preds = %.lr.ph25.us.i.i.us.preheader243, %.lr.ph25.us.i.i.us
  %.124.us.i.i.us = phi i32 [ %i.kp, %.lr.ph25.us.i.i.us ], [ %.124.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader243 ]
  %.14723.us.i.i.us = phi ptr [ %i.ko, %.lr.ph25.us.i.i.us ], [ %.14723.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader243 ] ; 2 uses
  %.01422.us.i.i.us = phi float [ %.sroa.speculated4.us.i.i.us, %.lr.ph25.us.i.i.us ], [ %.01422.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader243 ]
  %i.km = load float, ptr %.14723.us.i.i.us, align 4, !tbaa !68
  %i.kn = call fast float @llvm.fabs.f32(float %i.km)
  %.sroa.speculated4.us.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.01422.us.i.i.us, float %i.kn) ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.14723.us.i.i.us, i64 4
  %i.kp = add nuw nsw i32 %.124.us.i.i.us, 1      ; 2 uses
  %exitcond74.not.i.i.us = icmp eq i32 %i.kp, %i.fn
  br i1 %exitcond74.not.i.i.us, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us, !llvm.loop !760

._crit_edge.us.i.i.us:                            ; preds = %.lr.ph25.us.i.i.us, %middle.block, %..preheader_crit_edge.us.i.i.us
  %.014.lcssa.us.i.i.us = phi float [ 0.000000e+00, %..preheader_crit_edge.us.i.i.us ], [ %i.kl, %middle.block ], [ %.sroa.speculated4.us.i.i.us, %.lr.ph25.us.i.i.us ]
  switch i32 %i.fd, label %bb.s [
    i32 4, label %.thread.us.i.i.us
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %._crit_edge.us.i.i.us
  %i.kq = shufflevector <4 x float> %.lcssa248, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.kr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.lcssa248, <4 x float> nofpclass(nan inf) %i.kq) ; 2 uses
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.kr, <4 x float> nofpclass(nan inf) %i.ks)
  %i.ku = extractelement <4 x float> %i.kt, i64 0
  %.sroa.speculated.us.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.014.lcssa.us.i.i.us, float %i.ku) ; 2 uses
  %i.kv = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i.i.us
  store float %i.kv, ptr %.05127.us.i.i.us, align 4, !tbaa !68
  %i.kw = fmul fast float %.sroa.speculated.us.i.i.us, %i.fo
  store float %i.kw, ptr %.04928.us.i.i.us, align 4, !tbaa !68
  %i.kx = getelementptr inbounds nuw i8, ptr %.05127.us.i.i.us, i64 4
  %i.ky = getelementptr inbounds nuw i8, ptr %.04928.us.i.i.us, i64 4
  br label %bb.s

.thread.us.i.i.us:                                ; preds = %._crit_edge.us.i.i.us
  %i.kz = fdiv fast <4 x float> splat (float 1.270000e+02), %.lcssa248
  %i.la = fmul fast <4 x float> %.lcssa248, %i.fq
  store <4 x float> %i.kz, ptr %.05127.us.i.i.us, align 16, !tbaa !113
  store <4 x float> %i.la, ptr %.04928.us.i.i.us, align 16, !tbaa !113
  %i.lb = getelementptr inbounds nuw i8, ptr %.05127.us.i.i.us, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %.04928.us.i.i.us, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.thread.us.i.i.us, %bb.r, %._crit_edge.us.i.i.us
  %.253.us.i.i.us = phi ptr [ %i.kx, %bb.r ], [ %.05127.us.i.i.us, %._crit_edge.us.i.i.us ], [ %i.lb, %.thread.us.i.i.us ]
  %.2.us.i.i.us = phi ptr [ %i.ky, %bb.r ], [ %.04928.us.i.i.us, %._crit_edge.us.i.i.us ], [ %i.lc, %.thread.us.i.i.us ]
  %indvars.iv.next76.i.i.us = add nuw nsw i64 %indvars.iv75.i.i.us, 1 ; 2 uses
  %exitcond79.not.i.i.us = icmp eq i64 %indvars.iv.next76.i.i.us, %wide.trip.count78.i.i.us
  br i1 %exitcond79.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %.lr.ph.us.i.i.us, !llvm.loop !674

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us: ; preds = %bb.p, %bb.s, %bb.i
  br i1 %.not87, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread180.us

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread180.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.k
  %.val125.us = load ptr, ptr %15, align 8, !tbaa !18
  call fastcc void @_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr %.val125.us, i32 noundef %i.ca, i32 noundef %.sroa.speculated165, i32 noundef %.0184.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
  br label %bb.t

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa: ; preds = %.preheader.us49.i.i.us
  %lcmp.mod252.not = icmp eq i32 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us49.i.i.us.epil.preheader

.preheader.us49.i.i.us.epil.preheader:            ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa, %.preheader.us49.i.i.us.preheader
  %.04928.us51.i.i.us.epil.init = phi ptr [ %i.fl, %.preheader.us49.i.i.us.preheader ], [ %i.hr, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa ]
  %.05127.us52.i.i.us.epil.init = phi ptr [ %i.fk, %.preheader.us49.i.i.us.preheader ], [ %i.hq, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa ]
  %lcmp.mod253 = icmp ne i32 %xtraiter251, 0
  call void @llvm.assume(i1 %lcmp.mod253)
  br label %.preheader.us49.i.i.us.epil

.preheader.us49.i.i.us.epil:                      ; preds = %.preheader.us49.i.i.us.epil, %.preheader.us49.i.i.us.epil.preheader
  %.04928.us51.i.i.us.epil = phi ptr [ %i.le, %.preheader.us49.i.i.us.epil ], [ %.04928.us51.i.i.us.epil.init, %.preheader.us49.i.i.us.epil.preheader ] ; 2 uses
  %.05127.us52.i.i.us.epil = phi ptr [ %i.ld, %.preheader.us49.i.i.us.epil ], [ %.05127.us52.i.i.us.epil.init, %.preheader.us49.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.us49.i.i.us.epil ], [ 0, %.preheader.us49.i.i.us.epil.preheader ]
  store <4 x float> splat (float +inf), ptr %.05127.us52.i.i.us.epil, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %.04928.us51.i.i.us.epil, align 16, !tbaa !113
  %i.ld = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us.epil, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter251
  br i1 %epil.iter.cmp.not, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us49.i.i.us.epil, !llvm.loop !761

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us: ; preds = %.preheader.us57.i.i.us.prol.loopexit, %.preheader.us57.i.i.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa, %.preheader.us49.i.i.us.epil, %middle.block238, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %.lr.ph31.split.split.i.i.us, %bb.l
  %.val126.us = load ptr, ptr %15, align 8, !tbaa !18
  call fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr %.val126.us, i32 noundef %i.ca, i32 noundef %.sroa.speculated165, i32 noundef %.0184.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
  br label %bb.t

bb.t:                                             ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread180.us, %.noexc118.us
  invoke fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ca, i32 noundef %.sroa.speculated165, i32 noundef %.084185.us, i32 noundef %.sroa.speculated161.us, i32 noundef %.0184.us, i32 noundef %.sroa.speculated.us)
end_hunk_4
begin_hunk_5_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.084194 = phi i32 [ %i.k, %.lr.ph ], [ %i.mo, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.bs = load i32, ptr %3, align 4, !tbaa !243   ; 2 uses
  %i.bt = load i32, ptr %i.l, align 4, !tbaa !245 ; 5 uses
  %i.bu = load i32, ptr %i.m, align 4, !tbaa !246 ; 3 uses
  %i.bv = load i32, ptr %i.n, align 4, !tbaa !247 ; 2 uses
  %i.bw = load i32, ptr %i.o, align 4, !tbaa !248
  %i.bx = load i32, ptr %i.p, align 4, !tbaa !249 ; 2 uses
  %i.by = load float, ptr %i.q, align 4, !tbaa !501 ; 2 uses
  %i.bz = load float, ptr %i.r, align 4, !tbaa !502 ; 2 uses
  %.not86 = icmp eq i32 %i.bw, 0                  ; 3 uses
  br i1 %.not86, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ca = load i32, ptr %i.s, align 4, !tbaa !86
  %i.cb = load i32, ptr %i.t, align 8, !tbaa !85
  %i.cc = icmp eq i32 %i.cb, 3
  %.in87.v = select i1 %i.cc, i64 56, i64 48
  %.in87 = getelementptr inbounds nuw i8, ptr %4, i64 %.in87.v
  %i.cd = load i32, ptr %.in87, align 8, !tbaa !45
  %i.ce = load i32, ptr %i.u, align 8, !tbaa !60
  %i.cf = mul nsw i32 %i.ce, %i.cd
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cg = load i32, ptr %i.t, align 8, !tbaa !85
  %i.ch = icmp eq i32 %i.cg, 3
  %.in.v = select i1 %i.ch, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %4, i64 %.in.v
  %i.ci = load i32, ptr %.in, align 8, !tbaa !45
  %i.cj = load i32, ptr %i.u, align 8, !tbaa !60
  %i.ck = mul nsw i32 %i.cj, %i.ci
  %i.cl = load i32, ptr %i.s, align 4, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cm = phi i32 [ %i.ca, %bb.d ], [ %i.ck, %bb.e ]
  %i.cn = phi i32 [ %i.cf, %bb.d ], [ %i.cl, %bb.e ] ; 3 uses
  %i.co = mul nsw i32 %i.bs, %.084194             ; 8 uses
  %i.cp = sub nsw i32 %i.cm, %i.co
  %.sroa.speculated166 = call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.cp) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cq = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc120 unwind label %.loopexit.split-lp

.noexc120:                                        ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.cr = load i32, ptr %i.v, align 4, !tbaa !86, !noalias !786 ; 2 uses
  %i.cs = load i32, ptr %i.w, align 8, !tbaa !88, !noalias !786 ; 2 uses
  %i.ct = load i32, ptr %i.x, align 4, !tbaa !285, !noalias !786
  %i.cu = load ptr, ptr %5, align 8, !tbaa !18, !noalias !786
  %i.cv = load i64, ptr %i.y, align 8, !tbaa !20, !noalias !786
  %i.cw = sext i32 %i.cq to i64
  %i.cx = mul i64 %i.cv, %i.cw
  %i.cy = load i64, ptr %i.z, align 8, !tbaa !59, !noalias !786 ; 4 uses
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %i.db = load i32, ptr %i.aa, align 8, !tbaa !60, !noalias !786
  %i.dc = load ptr, ptr %i.ab, align 8, !tbaa !17, !noalias !786
  store ptr %i.da, ptr %14, align 8, !tbaa !18
  store ptr null, ptr %i.ac, align 8, !tbaa !11
  store i64 %i.cy, ptr %i.ad, align 8, !tbaa !59
  store i32 %i.db, ptr %i.ae, align 8, !tbaa !60
  store ptr %i.dc, ptr %i.af, align 8, !tbaa !17
  store i32 %i.cr, ptr %i.ah, align 4, !tbaa !86
  store i32 %i.cs, ptr %i.ai, align 8, !tbaa !88
  store i32 1, ptr %i.aj, align 4, !tbaa !285
  store i32 %i.ct, ptr %i.ak, align 8, !tbaa !51
  %i.dd = sext i32 %i.cr to i64
  %i.de = sext i32 %i.cs to i64
  %i.df = mul nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = mul i64 %i.cy, %i.df
  %i.dh = add i64 %i.dg, 15
  %i.di = and i64 %i.dh, -16
  %i.dj = udiv i64 %i.di, %i.cy
  store i64 %i.dj, ptr %i.al, align 8, !tbaa !20
  %i.dk = load i32, ptr %i.am, align 8, !tbaa !85, !noalias !786 ; 2 uses
  %i.dl = add nsw i32 %i.dk, -1
  store i32 %i.dl, ptr %i.ag, align 8, !tbaa !85, !alias.scope !786
  %i.dm = icmp eq i32 %i.dk, 4
  br i1 %i.dm, label %bb.g, label %_ZN4ncnn3Mat7channelEi.exit121

bb.g:                                             ; preds = %.noexc120
  store i64 %i.df, ptr %i.al, align 8, !tbaa !20, !alias.scope !786
  br label %_ZN4ncnn3Mat7channelEi.exit121

_ZN4ncnn3Mat7channelEi.exit121:                   ; preds = %.noexc120, %bb.g
  %i.dn = load i32, ptr %6, align 4, !tbaa !45    ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph187, label %._crit_edge188

.lr.ph187:                                        ; preds = %_ZN4ncnn3Mat7channelEi.exit121
  %i.dp = icmp sgt i32 %i.cn, 0
  %i.dq = sext i32 %i.co to i64                   ; 4 uses
  br i1 %i.dp, label %.lr.ph.us, label %.lr.ph187.split

.lr.ph.us:                                        ; preds = %.lr.ph187, %._crit_edge.us
  %i.dr = phi i32 [ %i.ly, %._crit_edge.us ], [ %i.dn, %.lr.ph187 ]
  %.083186.us = phi i32 [ %i.lx, %._crit_edge.us ], [ 0, %.lr.ph187 ] ; 6 uses
  %i.ds = sub nsw i32 %i.dr, %.083186.us
  %.sroa.speculated162.us = call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.ds) ; 2 uses
  %i.dt = icmp eq i32 %.083186.us, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.us, %_ZN4ncnn3MatD2Ev.exit88.us
  %.0185.us = phi i32 [ 0, %.lr.ph.us ], [ %i.lv, %_ZN4ncnn3MatD2Ev.exit88.us ] ; 7 uses
  %i.du = sub nsw i32 %i.cn, %.0185.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.du) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.dv = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc118.us unwind label %.loopexit.split.us

.noexc118.us:                                     ; preds = %bb.h
  %i.dw = load i32, ptr %i.an, align 4, !tbaa !86, !noalias !789 ; 2 uses
  %i.dx = load ptr, ptr %7, align 8, !tbaa !18, !noalias !789
  %i.dy = load i64, ptr %i.ao, align 8, !tbaa !20, !noalias !789
  %i.dz = sext i32 %i.dv to i64
  %i.ea = mul i64 %i.dy, %i.dz
  %i.eb = load i64, ptr %i.ap, align 8, !tbaa !59, !noalias !789 ; 3 uses
  %i.ec = mul i64 %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ec
  %i.ee = load i32, ptr %i.aq, align 8, !tbaa !60, !noalias !789
  %i.ef = load ptr, ptr %i.ar, align 8, !tbaa !17, !noalias !789
  %i.eg = sext i32 %i.dw to i64                   ; 2 uses
  %i.eh = sdiv i32 %.0185.us, %i.bu
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = mul i64 %i.eb, %i.eg
  %i.ek = mul i64 %i.ej, %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ek
  store ptr %i.el, ptr %15, align 8, !tbaa !18
  store ptr null, ptr %i.as, align 8, !tbaa !11
  store i64 %i.eb, ptr %i.at, align 8, !tbaa !59
  store i32 %i.ee, ptr %i.au, align 8, !tbaa !60
  store ptr %i.ef, ptr %i.av, align 8, !tbaa !17
  store i32 2, ptr %i.aw, align 8, !tbaa !85
  store i32 %i.dw, ptr %i.ax, align 4, !tbaa !86
  store i32 1, ptr %i.ay, align 8, !tbaa !88
  store i32 1, ptr %i.az, align 4, !tbaa !285
  store i32 1, ptr %i.ba, align 8, !tbaa !51
  store i64 %i.eg, ptr %i.bb, align 8, !tbaa !20, !alias.scope !792
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  %i.em = sdiv i32 %.083186.us, %i.bt
  %i.en = load i32, ptr %i.bc, align 4, !tbaa !86, !noalias !795 ; 2 uses
  %i.eo = load ptr, ptr %8, align 8, !tbaa !18, !noalias !795
  %i.ep = load i64, ptr %i.bd, align 8, !tbaa !20, !noalias !795
  %i.eq = sext i32 %i.em to i64
  %i.er = mul i64 %i.ep, %i.eq
  %i.es = load i64, ptr %i.be, align 8, !tbaa !59, !noalias !795 ; 3 uses
  %i.et = mul i64 %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.et
  %i.ev = load i32, ptr %i.bf, align 8, !tbaa !60, !noalias !795
  %i.ew = load ptr, ptr %i.bg, align 8, !tbaa !17, !noalias !795
  %i.ex = sext i32 %i.en to i64                   ; 2 uses
  %i.ey = mul nsw i64 %i.ex, %i.ei
  %i.ez = mul i64 %i.ey, %i.es
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ez
  store ptr %i.fa, ptr %16, align 8, !tbaa !18
  store ptr null, ptr %i.bh, align 8, !tbaa !11
  store i64 %i.es, ptr %i.bi, align 8, !tbaa !59
  store i32 %i.ev, ptr %i.bj, align 8, !tbaa !60
  store ptr %i.ew, ptr %i.bk, align 8, !tbaa !17
  store i32 2, ptr %i.bl, align 8, !tbaa !85
  store i32 %i.en, ptr %i.bm, align 4, !tbaa !86
  store i32 1, ptr %i.bn, align 8, !tbaa !88
  store i32 1, ptr %i.bo, align 4, !tbaa !285
  store i32 1, ptr %i.bp, align 8, !tbaa !51
  store i64 %i.ex, ptr %i.bq, align 8, !tbaa !20, !alias.scope !798
  br i1 %i.dt, label %bb.i, label %bb.t

bb.i:                                             ; preds = %.noexc118.us
  %i.fb = icmp eq i32 %.0185.us, 0
  br i1 %i.fb, label %bb.j, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us

bb.j:                                             ; preds = %bb.i
  %i.fc = load float, ptr %10, align 4, !tbaa !68 ; 2 uses
  %.val124.us = load ptr, ptr %9, align 8         ; 3 uses
  %.val124.us229 = ptrtoaddr ptr %.val124.us to i64
  %.val125.us = load ptr, ptr %11, align 8        ; 3 uses
  %.val125.us228 = ptrtoaddr ptr %.val125.us to i64
  br i1 %.not86, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr %.val124.us, float noundef nofpclass(nan inf) %i.fc, ptr %.val125.us, i32 noundef %i.co, i32 noundef %.sroa.speculated166)
  br label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread181.us

bb.l:                                             ; preds = %bb.j
  %i.fd = load i32, ptr %i.u, align 8, !tbaa !60  ; 7 uses
  %i.fe = load i32, ptr %i.t, align 8, !tbaa !85
  %i.ff = icmp eq i32 %i.fe, 3
  %i.fg = load i64, ptr %i.br, align 8
  %i.fh = load i32, ptr %i.s, align 4             ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = select i1 %i.ff, i64 %i.fg, i64 %i.fi   ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %.val124.us, i64 %i.dq ; 7 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val125.us, i64 %i.dq ; 7 uses
  %i.fm = sdiv i32 %.sroa.speculated166, %i.fd    ; 11 uses
  %i.fn = mul i32 %i.fh, %i.fd                    ; 10 uses
  %i.fo = fdiv fast float f0x3C010204, %i.fc      ; 3 uses
  %i.fp = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fr = icmp sgt i32 %i.fm, 0
  br i1 %i.fr, label %.lr.ph31.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us

.lr.ph31.i.i.us:                                  ; preds = %bb.l
  %i.fs = icmp sgt i32 %i.fn, 3
  br i1 %i.fs, label %.lr.ph.us.preheader.i.i.us, label %.lr.ph31.split.i.i.us

.lr.ph31.split.i.i.us:                            ; preds = %.lr.ph31.i.i.us
  %i.ft = icmp sgt i32 %i.fn, 0
  br i1 %i.ft, label %.preheader.us33.preheader.i.i.us, label %.lr.ph31.split.split.i.i.us

.lr.ph31.split.split.i.i.us:                      ; preds = %.lr.ph31.split.i.i.us
  switch i32 %i.fd, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us [
    i32 4, label %.preheader.us49.i.i.us.preheader
    i32 1, label %.preheader.us57.i.i.us.preheader
  ]

.preheader.us49.i.i.us.preheader:                 ; preds = %.lr.ph31.split.split.i.i.us
  %xtraiter252 = and i32 %i.fm, 7                 ; 3 uses
  %i.fu = icmp ult i32 %i.fm, 8
  br i1 %i.fu, label %.preheader.us49.i.i.us.epil.preheader, label %.preheader.us49.i.i.us.preheader.new

.preheader.us49.i.i.us.preheader.new:             ; preds = %.preheader.us49.i.i.us.preheader
  %unroll_iter = and i32 %i.fm, 2147483640
  br label %.preheader.us49.i.i.us

.preheader.us57.i.i.us.preheader:                 ; preds = %.lr.ph31.split.split.i.i.us
  %i.fv = zext nneg i32 %i.fm to i64              ; 2 uses
  %min.iters.check231 = icmp ult i32 %i.fm, 8
  %i.fw = sub i64 %.val124.us229, %.val125.us228
  %diff.check = icmp ugt i64 %i.fw, -32
  %or.cond = select i1 %min.iters.check231, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.us57.i.i.us.preheader246, label %vector.ph232

vector.ph232:                                     ; preds = %.preheader.us57.i.i.us.preheader
  %n.vec233 = and i64 %i.fv, 2147483640           ; 4 uses
  %i.fx = trunc nuw nsw i64 %n.vec233 to i32
  %i.fy = shl nuw nsw i64 %n.vec233, 2            ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fl, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fk, i64 %i.fy
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next238, %vector.body234 ] ; 2 uses
  %i.gb = shl i64 %index235, 2                    ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.fl, i64 %i.gb ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.fk, i64 %i.gb ; 2 uses
  %i.gc = getelementptr i8, ptr %next.gep237, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep237, align 4, !tbaa !68
  store <4 x float> splat (float +inf), ptr %i.gc, align 4, !tbaa !68
  %i.gd = getelementptr i8, ptr %next.gep236, i64 16
  store <4 x float> zeroinitializer, ptr %next.gep236, align 4, !tbaa !68
  store <4 x float> zeroinitializer, ptr %i.gd, align 4, !tbaa !68
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.ge, label %middle.block239, label %vector.body234, !llvm.loop !801

middle.block239:                                  ; preds = %vector.body234
  %cmp.n240 = icmp eq i64 %n.vec233, %i.fv
  br i1 %cmp.n240, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us.preheader246

.preheader.us57.i.i.us.preheader246:              ; preds = %.preheader.us57.i.i.us.preheader, %middle.block239
  %.04829.us58.i.i.us.ph = phi i32 [ 0, %.preheader.us57.i.i.us.preheader ], [ %i.fx, %middle.block239 ] ; 4 uses
  %.04928.us59.i.i.us.ph = phi ptr [ %i.fl, %.preheader.us57.i.i.us.preheader ], [ %i.fz, %middle.block239 ] ; 2 uses
  %.05127.us60.i.i.us.ph = phi ptr [ %i.fk, %.preheader.us57.i.i.us.preheader ], [ %i.ga, %middle.block239 ] ; 2 uses
  %i.gf = sub i32 %i.fm, %.04829.us58.i.i.us.ph
  %xtraiter = and i32 %i.gf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us57.i.i.us.prol.loopexit, label %.preheader.us57.i.i.us.prol

.preheader.us57.i.i.us.prol:                      ; preds = %.preheader.us57.i.i.us.preheader246, %.preheader.us57.i.i.us.prol
  %.04829.us58.i.i.us.prol = phi i32 [ %i.gi, %.preheader.us57.i.i.us.prol ], [ %.04829.us58.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ]
  %.04928.us59.i.i.us.prol = phi ptr [ %i.gh, %.preheader.us57.i.i.us.prol ], [ %.04928.us59.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ] ; 2 uses
  %.05127.us60.i.i.us.prol = phi ptr [ %i.gg, %.preheader.us57.i.i.us.prol ], [ %.05127.us60.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.us57.i.i.us.prol ], [ 0, %.preheader.us57.i.i.us.preheader246 ]
  store float +inf, ptr %.05127.us60.i.i.us.prol, align 4, !tbaa !68
  store float 0.000000e+00, ptr %.04928.us59.i.i.us.prol, align 4, !tbaa !68
  %i.gg = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us.prol, i64 4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us.prol, i64 4 ; 2 uses
  %i.gi = add nuw nsw i32 %.04829.us58.i.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.us57.i.i.us.prol.loopexit, label %.preheader.us57.i.i.us.prol, !llvm.loop !802

.preheader.us57.i.i.us.prol.loopexit:             ; preds = %.preheader.us57.i.i.us.prol, %.preheader.us57.i.i.us.preheader246
  %.04829.us58.i.i.us.unr = phi i32 [ %.04829.us58.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ], [ %i.gi, %.preheader.us57.i.i.us.prol ]
  %.04928.us59.i.i.us.unr = phi ptr [ %.04928.us59.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ], [ %i.gh, %.preheader.us57.i.i.us.prol ]
  %.05127.us60.i.i.us.unr = phi ptr [ %.05127.us60.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ], [ %i.gg, %.preheader.us57.i.i.us.prol ]
  %i.gj = sub i32 %.04829.us58.i.i.us.ph, %i.fm
  %i.gk = icmp ugt i32 %i.gj, -8
  br i1 %i.gk, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us

.preheader.us57.i.i.us:                           ; preds = %.preheader.us57.i.i.us.prol.loopexit, %.preheader.us57.i.i.us
  %.04829.us58.i.i.us = phi i32 [ %i.hb, %.preheader.us57.i.i.us ], [ %.04829.us58.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ]
  %.04928.us59.i.i.us = phi ptr [ %i.ha, %.preheader.us57.i.i.us ], [ %.04928.us59.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ] ; 9 uses
  %.05127.us60.i.i.us = phi ptr [ %i.gz, %.preheader.us57.i.i.us ], [ %.05127.us60.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ] ; 9 uses
  store float +inf, ptr %.05127.us60.i.i.us, align 4, !tbaa !68
  store float 0.000000e+00, ptr %.04928.us59.i.i.us, align 4, !tbaa !68
  %i.gl = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 4
  %i.gm = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 4
  store float +inf, ptr %i.gl, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gm, align 4, !tbaa !68
  %i.gn = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 8
  store float +inf, ptr %i.gn, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.go, align 4, !tbaa !68
  %i.gp = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 12
  store float +inf, ptr %i.gp, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !68
  %i.gr = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 16
  store float +inf, ptr %i.gr, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gs, align 4, !tbaa !68
  %i.gt = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 20
  %i.gu = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 20
  store float +inf, ptr %i.gt, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gu, align 4, !tbaa !68
  %i.gv = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 24
  store float +inf, ptr %i.gv, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !68
  %i.gx = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 28
  %i.gy = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 28
  store float +inf, ptr %i.gx, align 4, !tbaa !68
  store float 0.000000e+00, ptr %i.gy, align 4, !tbaa !68
  %i.gz = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 32
  %i.hb = add nuw nsw i32 %.04829.us58.i.i.us, 8  ; 2 uses
  %exitcond.not.i.i.us.7 = icmp eq i32 %i.hb, %i.fm
  br i1 %exitcond.not.i.i.us.7, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us, !llvm.loop !803

.preheader.us49.i.i.us:                           ; preds = %.preheader.us49.i.i.us, %.preheader.us49.i.i.us.preheader.new
  %.04928.us51.i.i.us = phi ptr [ %i.fl, %.preheader.us49.i.i.us.preheader.new ], [ %i.hr, %.preheader.us49.i.i.us ] ; 9 uses
  %.05127.us52.i.i.us = phi ptr [ %i.fk, %.preheader.us49.i.i.us.preheader.new ], [ %i.hq, %.preheader.us49.i.i.us ] ; 9 uses
  %niter = phi i32 [ 0, %.preheader.us49.i.i.us.preheader.new ], [ %niter.next.7, %.preheader.us49.i.i.us ]
  store <4 x float> splat (float +inf), ptr %.05127.us52.i.i.us, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %.04928.us51.i.i.us, align 16, !tbaa !113
  %i.hc = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 16
  store <4 x float> splat (float +inf), ptr %i.hc, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hd, align 16, !tbaa !113
  %i.he = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 32
  store <4 x float> splat (float +inf), ptr %i.he, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hf, align 16, !tbaa !113
  %i.hg = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 48
  store <4 x float> splat (float +inf), ptr %i.hg, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hh, align 16, !tbaa !113
  %i.hi = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 64
  store <4 x float> splat (float +inf), ptr %i.hi, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hj, align 16, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 80
  %i.hl = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 80
  store <4 x float> splat (float +inf), ptr %i.hk, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hl, align 16, !tbaa !113
  %i.hm = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 96
  %i.hn = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 96
  store <4 x float> splat (float +inf), ptr %i.hm, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hn, align 16, !tbaa !113
  %i.ho = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 112
  %i.hp = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 112
  store <4 x float> splat (float +inf), ptr %i.ho, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %i.hp, align 16, !tbaa !113
  %i.hq = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 128 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 128 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa, label %.preheader.us49.i.i.us, !llvm.loop !674

.preheader.us33.preheader.i.i.us:                 ; preds = %.lr.ph31.split.i.i.us
  %i.hs = sext i32 %i.fd to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.fm to i64
  %exitcond71.not.i.i.us = icmp eq i32 %i.fn, 1
  %exitcond71.not.i.i.us.1 = icmp eq i32 %i.fn, 2
  br label %.preheader.us33.i.i.us

.preheader.us33.i.i.us:                           ; preds = %bb.p, %.preheader.us33.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.preheader.us33.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.p ] ; 2 uses
  %.04928.us35.i.i.us = phi ptr [ %i.fl, %.preheader.us33.preheader.i.i.us ], [ %.2.us45.i.i.us, %bb.p ] ; 5 uses
  %.05127.us36.i.i.us = phi ptr [ %i.fk, %.preheader.us33.preheader.i.i.us ], [ %.253.us44.i.i.us, %bb.p ] ; 5 uses
  %i.ht = load ptr, ptr %4, align 8, !tbaa !18
  %i.hu = mul nsw i64 %indvars.iv.i.i.us, %i.hs
  %i.hv = add nsw i64 %i.hu, %i.dq
  %i.hw = mul i64 %i.hv, %i.fj
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hw ; 3 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !68
  %i.hz = call fast float @llvm.fabs.f32(float %i.hy)
  %.sroa.speculated4.us40.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.hz, float 0.000000e+00) ; 2 uses
  br i1 %exitcond71.not.i.i.us, label %._crit_edge.us47.i.i.us, label %bb.m

bb.m:                                             ; preds = %.preheader.us33.i.i.us
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !68
  %i.ic = call fast float @llvm.fabs.f32(float %i.ib)
  %.sroa.speculated4.us40.i.i.us.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us40.i.i.us, float %i.ic) ; 2 uses
  br i1 %exitcond71.not.i.i.us.1, label %._crit_edge.us47.i.i.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !68
  %i.if = call fast float @llvm.fabs.f32(float %i.ie)
  %.sroa.speculated4.us40.i.i.us.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us40.i.i.us.1, float %i.if)
  br label %._crit_edge.us47.i.i.us

._crit_edge.us47.i.i.us:                          ; preds = %bb.n, %bb.m, %.preheader.us33.i.i.us
  %.sroa.speculated4.us40.i.i.us.lcssa = phi float [ %.sroa.speculated4.us40.i.i.us, %.preheader.us33.i.i.us ], [ %.sroa.speculated4.us40.i.i.us.1, %bb.m ], [ %.sroa.speculated4.us40.i.i.us.2, %bb.n ]
  switch i32 %i.fd, label %bb.p [
    i32 4, label %.thread.us43.i.i.us
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %._crit_edge.us47.i.i.us
  %.sroa.speculated.us42.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us40.i.i.us.lcssa, float 0.000000e+00) ; 2 uses
  %i.ig = fdiv fast float 1.270000e+02, %.sroa.speculated.us42.i.i.us
  store float %i.ig, ptr %.05127.us36.i.i.us, align 4, !tbaa !68
  %i.ih = fmul fast float %.sroa.speculated.us42.i.i.us, %i.fo
  store float %i.ih, ptr %.04928.us35.i.i.us, align 4, !tbaa !68
  %i.ii = getelementptr inbounds nuw i8, ptr %.05127.us36.i.i.us, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.04928.us35.i.i.us, i64 4
  br label %bb.p

.thread.us43.i.i.us:                              ; preds = %._crit_edge.us47.i.i.us
  store <4 x float> splat (float +inf), ptr %.05127.us36.i.i.us, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %.04928.us35.i.i.us, align 16, !tbaa !113
  %i.ik = getelementptr inbounds nuw i8, ptr %.05127.us36.i.i.us, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %.04928.us35.i.i.us, i64 16
  br label %bb.p

bb.p:                                             ; preds = %.thread.us43.i.i.us, %bb.o, %._crit_edge.us47.i.i.us
  %.253.us44.i.i.us = phi ptr [ %i.ii, %bb.o ], [ %.05127.us36.i.i.us, %._crit_edge.us47.i.i.us ], [ %i.ik, %.thread.us43.i.i.us ]
  %.2.us45.i.i.us = phi ptr [ %i.ij, %bb.o ], [ %.04928.us35.i.i.us, %._crit_edge.us47.i.i.us ], [ %i.il, %.thread.us43.i.i.us ]
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond73.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond73.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %.preheader.us33.i.i.us, !llvm.loop !674

.lr.ph.us.preheader.i.i.us:                       ; preds = %.lr.ph31.i.i.us
  %i.im = and i32 %i.fn, 2147483644               ; 3 uses
  %i.in = sext i32 %i.fd to i64
  %wide.trip.count78.i.i.us = zext nneg i32 %i.fm to i64
  %.not.i130.us = icmp eq i32 %i.im, %i.fn
  %i.io = add nsw i32 %i.fn, -4                   ; 2 uses
  %i.ip = lshr i32 %i.io, 2
  %i.iq = add nuw nsw i32 %i.ip, 1                ; 2 uses
  %xtraiter255 = and i32 %i.iq, 3                 ; 3 uses
  %i.ir = icmp ult i32 %i.io, 12
  %unroll_iter261 = and i32 %i.iq, 2147483644
  %lcmp.mod257.not = icmp eq i32 %xtraiter255, 0
  %lcmp.mod260 = icmp ne i32 %xtraiter255, 0
  %17 = and i32 %i.fn, 2147483644
  %i.is = xor i32 %17, -1
  %i.it = add nsw i32 %i.fn, %i.is                ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = add nuw nsw i64 %i.iu, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.it, 7
  %n.vec = and i64 %i.iv, 8589934584              ; 4 uses
  %i.iw = trunc i64 %n.vec to i32
  %i.ix = add i32 %i.im, %i.iw
  %i.iy = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.iv, %n.vec
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %bb.s, %.lr.ph.us.preheader.i.i.us
  %indvars.iv75.i.i.us = phi i64 [ 0, %.lr.ph.us.preheader.i.i.us ], [ %indvars.iv.next76.i.i.us, %bb.s ] ; 2 uses
  %.04928.us.i.i.us = phi ptr [ %i.fl, %.lr.ph.us.preheader.i.i.us ], [ %.2.us.i.i.us, %bb.s ] ; 5 uses
  %.05127.us.i.i.us = phi ptr [ %i.fk, %.lr.ph.us.preheader.i.i.us ], [ %.253.us.i.i.us, %bb.s ] ; 5 uses
  %i.iz = load ptr, ptr %4, align 8, !tbaa !18
  %i.ja = mul nsw i64 %indvars.iv75.i.i.us, %i.in
  %i.jb = add nsw i64 %i.ja, %i.dq
  %i.jc = mul i64 %i.jb, %i.fj
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.jc ; 2 uses
  br i1 %i.ir, label %.epil.preheader, label %.lr.ph.us.i.i.us.new

.lr.ph.us.i.i.us.new:                             ; preds = %.lr.ph.us.i.i.us, %.lr.ph.us.i.i.us.new
  %.04618.us.i.i.us = phi ptr [ %i.jx, %.lr.ph.us.i.i.us.new ], [ %i.jd, %.lr.ph.us.i.i.us ] ; 5 uses
  %.01317.us.i.i.us = phi <4 x float> [ %i.jw, %.lr.ph.us.i.i.us.new ], [ zeroinitializer, %.lr.ph.us.i.i.us ]
  %niter262 = phi i32 [ %niter262.next.3, %.lr.ph.us.i.i.us.new ], [ 0, %.lr.ph.us.i.i.us ]
  %i.je = load <4 x i32>, ptr %.04618.us.i.i.us, align 1, !tbaa !113
  %i.jf = and <4 x i32> %i.je, splat (i32 2147483647)
  %i.jg = bitcast <4 x i32> %i.jf to <4 x float>
  %i.jh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.i.us, <4 x float> nofpclass(nan inf) %i.jg)
  %i.ji = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 16
  %i.jj = load <4 x i32>, ptr %i.ji, align 1, !tbaa !113
  %i.jk = and <4 x i32> %i.jj, splat (i32 2147483647)
  %i.jl = bitcast <4 x i32> %i.jk to <4 x float>
  %i.jm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jh, <4 x float> nofpclass(nan inf) %i.jl)
  %i.jn = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 32
  %i.jo = load <4 x i32>, ptr %i.jn, align 1, !tbaa !113
  %i.jp = and <4 x i32> %i.jo, splat (i32 2147483647)
  %i.jq = bitcast <4 x i32> %i.jp to <4 x float>
  %i.jr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jm, <4 x float> nofpclass(nan inf) %i.jq)
  %i.js = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 48
  %i.jt = load <4 x i32>, ptr %i.js, align 1, !tbaa !113
  %i.ju = and <4 x i32> %i.jt, splat (i32 2147483647)
  %i.jv = bitcast <4 x i32> %i.ju to <4 x float>
  %i.jw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jr, <4 x float> nofpclass(nan inf) %i.jv) ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 64 ; 3 uses
  %niter262.next.3 = add nuw nsw i32 %niter262, 4 ; 2 uses
  %niter262.ncmp.3.not = icmp eq i32 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3.not, label %..preheader_crit_edge.us.i.i.us.unr-lcssa, label %.lr.ph.us.i.i.us.new, !llvm.loop !672

..preheader_crit_edge.us.i.i.us.unr-lcssa:        ; preds = %.lr.ph.us.i.i.us.new
  br i1 %lcmp.mod257.not, label %..preheader_crit_edge.us.i.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.i.i.us.unr-lcssa, %.lr.ph.us.i.i.us
  %.04618.us.i.i.us.epil.init = phi ptr [ %i.jd, %.lr.ph.us.i.i.us ], [ %i.jx, %..preheader_crit_edge.us.i.i.us.unr-lcssa ]
  %.01317.us.i.i.us.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.us.i.i.us ], [ %i.jw, %..preheader_crit_edge.us.i.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %.04618.us.i.i.us.epil = phi ptr [ %.04618.us.i.i.us.epil.init, %.epil.preheader ], [ %i.kc, %bb.q ] ; 2 uses
  %.01317.us.i.i.us.epil = phi <4 x float> [ %.01317.us.i.i.us.epil.init, %.epil.preheader ], [ %i.kb, %bb.q ]
  %epil.iter256 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter256.next, %bb.q ]
  %i.jy = load <4 x i32>, ptr %.04618.us.i.i.us.epil, align 1, !tbaa !113
  %i.jz = and <4 x i32> %i.jy, splat (i32 2147483647)
  %i.ka = bitcast <4 x i32> %i.jz to <4 x float>
  %i.kb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.i.us.epil, <4 x float> nofpclass(nan inf) %i.ka) ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us.epil, i64 16 ; 2 uses
  %epil.iter256.next = add i32 %epil.iter256, 1   ; 2 uses
  %epil.iter256.cmp.not = icmp eq i32 %epil.iter256.next, %xtraiter255
  br i1 %epil.iter256.cmp.not, label %..preheader_crit_edge.us.i.i.us, label %bb.q, !llvm.loop !804

..preheader_crit_edge.us.i.i.us:                  ; preds = %bb.q, %..preheader_crit_edge.us.i.i.us.unr-lcssa
  %.lcssa249 = phi <4 x float> [ %i.jw, %..preheader_crit_edge.us.i.i.us.unr-lcssa ], [ %i.kb, %bb.q ] ; 4 uses
  %.lcssa = phi ptr [ %i.jx, %..preheader_crit_edge.us.i.i.us.unr-lcssa ], [ %i.kc, %bb.q ] ; 3 uses
  br i1 %.not.i130.us, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us.preheader

.lr.ph25.us.i.i.us.preheader:                     ; preds = %..preheader_crit_edge.us.i.i.us
  br i1 %min.iters.check, label %.lr.ph25.us.i.i.us.preheader244, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.us.i.i.us.preheader
  %i.kd = getelementptr i8, ptr %.lcssa, i64 %i.iy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ki, %vector.body ]
  %vec.phi225 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.kj, %vector.body ]
  %i.ke = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.lcssa, i64 %i.ke ; 2 uses
  %i.kf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !68
  %wide.load226 = load <4 x float>, ptr %i.kf, align 4, !tbaa !68
  %i.kg = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.kh = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load226)
  %i.ki = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.kg) ; 2 uses
  %i.kj = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi225, <4 x float> %i.kh) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !805

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ki, <4 x float> %i.kj)
  %i.kl = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us.preheader244

.lr.ph25.us.i.i.us.preheader244:                  ; preds = %.lr.ph25.us.i.i.us.preheader, %middle.block
  %.124.us.i.i.us.ph = phi i32 [ %i.im, %.lr.ph25.us.i.i.us.preheader ], [ %i.ix, %middle.block ]
  %.14723.us.i.i.us.ph = phi ptr [ %.lcssa, %.lr.ph25.us.i.i.us.preheader ], [ %i.kd, %middle.block ]
  %.01422.us.i.i.us.ph = phi float [ 0.000000e+00, %.lr.ph25.us.i.i.us.preheader ], [ %i.kl, %middle.block ]
  br label %.lr.ph25.us.i.i.us

.lr.ph25.us.i.i.us:                               ; preds = %.lr.ph25.us.i.i.us.preheader244, %.lr.ph25.us.i.i.us
  %.124.us.i.i.us = phi i32 [ %i.kp, %.lr.ph25.us.i.i.us ], [ %.124.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader244 ]
  %.14723.us.i.i.us = phi ptr [ %i.ko, %.lr.ph25.us.i.i.us ], [ %.14723.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader244 ] ; 2 uses
  %.01422.us.i.i.us = phi float [ %.sroa.speculated4.us.i.i.us, %.lr.ph25.us.i.i.us ], [ %.01422.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader244 ]
  %i.km = load float, ptr %.14723.us.i.i.us, align 4, !tbaa !68
  %i.kn = call fast float @llvm.fabs.f32(float %i.km)
  %.sroa.speculated4.us.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.01422.us.i.i.us, float %i.kn) ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.14723.us.i.i.us, i64 4
  %i.kp = add nuw nsw i32 %.124.us.i.i.us, 1      ; 2 uses
  %exitcond74.not.i.i.us = icmp eq i32 %i.kp, %i.fn
  br i1 %exitcond74.not.i.i.us, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us, !llvm.loop !806

._crit_edge.us.i.i.us:                            ; preds = %.lr.ph25.us.i.i.us, %middle.block, %..preheader_crit_edge.us.i.i.us
  %.014.lcssa.us.i.i.us = phi float [ 0.000000e+00, %..preheader_crit_edge.us.i.i.us ], [ %i.kl, %middle.block ], [ %.sroa.speculated4.us.i.i.us, %.lr.ph25.us.i.i.us ]
  switch i32 %i.fd, label %bb.s [
    i32 4, label %.thread.us.i.i.us
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %._crit_edge.us.i.i.us
  %i.kq = shufflevector <4 x float> %.lcssa249, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.kr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.lcssa249, <4 x float> nofpclass(nan inf) %i.kq) ; 2 uses
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.kr, <4 x float> nofpclass(nan inf) %i.ks)
  %i.ku = extractelement <4 x float> %i.kt, i64 0
  %.sroa.speculated.us.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.014.lcssa.us.i.i.us, float %i.ku) ; 2 uses
  %i.kv = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i.i.us
  store float %i.kv, ptr %.05127.us.i.i.us, align 4, !tbaa !68
  %i.kw = fmul fast float %.sroa.speculated.us.i.i.us, %i.fo
  store float %i.kw, ptr %.04928.us.i.i.us, align 4, !tbaa !68
  %i.kx = getelementptr inbounds nuw i8, ptr %.05127.us.i.i.us, i64 4
  %i.ky = getelementptr inbounds nuw i8, ptr %.04928.us.i.i.us, i64 4
  br label %bb.s

.thread.us.i.i.us:                                ; preds = %._crit_edge.us.i.i.us
  %i.kz = fdiv fast <4 x float> splat (float 1.270000e+02), %.lcssa249
  %i.la = fmul fast <4 x float> %.lcssa249, %i.fq
  store <4 x float> %i.kz, ptr %.05127.us.i.i.us, align 16, !tbaa !113
  store <4 x float> %i.la, ptr %.04928.us.i.i.us, align 16, !tbaa !113
  %i.lb = getelementptr inbounds nuw i8, ptr %.05127.us.i.i.us, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %.04928.us.i.i.us, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.thread.us.i.i.us, %bb.r, %._crit_edge.us.i.i.us
  %.253.us.i.i.us = phi ptr [ %i.kx, %bb.r ], [ %.05127.us.i.i.us, %._crit_edge.us.i.i.us ], [ %i.lb, %.thread.us.i.i.us ]
  %.2.us.i.i.us = phi ptr [ %i.ky, %bb.r ], [ %.04928.us.i.i.us, %._crit_edge.us.i.i.us ], [ %i.lc, %.thread.us.i.i.us ]
  %indvars.iv.next76.i.i.us = add nuw nsw i64 %indvars.iv75.i.i.us, 1 ; 2 uses
  %exitcond79.not.i.i.us = icmp eq i64 %indvars.iv.next76.i.i.us, %wide.trip.count78.i.i.us
  br i1 %exitcond79.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %.lr.ph.us.i.i.us, !llvm.loop !674

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us: ; preds = %bb.p, %bb.s, %bb.i
  br i1 %.not86, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread181.us

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread181.us: ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %bb.k
  %.val126.us = load ptr, ptr %15, align 8, !tbaa !18
  call fastcc void @_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr %.val126.us, i32 noundef %i.co, i32 noundef %.sroa.speculated166, i32 noundef %.0185.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
  br label %bb.t

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa: ; preds = %.preheader.us49.i.i.us
  %lcmp.mod253.not = icmp eq i32 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us49.i.i.us.epil.preheader

.preheader.us49.i.i.us.epil.preheader:            ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa, %.preheader.us49.i.i.us.preheader
  %.04928.us51.i.i.us.epil.init = phi ptr [ %i.fl, %.preheader.us49.i.i.us.preheader ], [ %i.hr, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa ]
  %.05127.us52.i.i.us.epil.init = phi ptr [ %i.fk, %.preheader.us49.i.i.us.preheader ], [ %i.hq, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa ]
  %lcmp.mod254 = icmp ne i32 %xtraiter252, 0
  call void @llvm.assume(i1 %lcmp.mod254)
  br label %.preheader.us49.i.i.us.epil

.preheader.us49.i.i.us.epil:                      ; preds = %.preheader.us49.i.i.us.epil, %.preheader.us49.i.i.us.epil.preheader
  %.04928.us51.i.i.us.epil = phi ptr [ %i.le, %.preheader.us49.i.i.us.epil ], [ %.04928.us51.i.i.us.epil.init, %.preheader.us49.i.i.us.epil.preheader ] ; 2 uses
  %.05127.us52.i.i.us.epil = phi ptr [ %i.ld, %.preheader.us49.i.i.us.epil ], [ %.05127.us52.i.i.us.epil.init, %.preheader.us49.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.us49.i.i.us.epil ], [ 0, %.preheader.us49.i.i.us.epil.preheader ]
  store <4 x float> splat (float +inf), ptr %.05127.us52.i.i.us.epil, align 16, !tbaa !113
  store <4 x float> zeroinitializer, ptr %.04928.us51.i.i.us.epil, align 16, !tbaa !113
  %i.ld = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us.epil, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter252
  br i1 %epil.iter.cmp.not, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us49.i.i.us.epil, !llvm.loop !807

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us: ; preds = %.preheader.us57.i.i.us.prol.loopexit, %.preheader.us57.i.i.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa, %.preheader.us49.i.i.us.epil, %middle.block239, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, %.lr.ph31.split.split.i.i.us, %bb.l
  %.val127.us = load ptr, ptr %15, align 8, !tbaa !18
  call fastcc void @_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr %.val127.us, i32 noundef %i.co, i32 noundef %.sroa.speculated166, i32 noundef %.0185.us, i32 noundef %.sroa.speculated.us, ptr noundef nonnull align 8 dereferenceable(72) %9)
  br label %bb.t

bb.t:                                             ; preds = %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread181.us, %.noexc118.us
  invoke fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.co, i32 noundef %.sroa.speculated166, i32 noundef %.083186.us, i32 noundef %.sroa.speculated162.us, i32 noundef %.0185.us, i32 noundef %.sroa.speculated.us)
end_hunk_5
