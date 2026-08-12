inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ncnn27DeformableConv2D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !38
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0, float noundef nofpclass(nan inf) %i.aq)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !38
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 1, float noundef nofpclass(nan inf) %i.at)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(208) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %common.resume

bb.y:                                             ; preds = %bb.w, %bb.r, %bb.o, %bb.l, %bb.g, %bb.c
  %.023.ph.i = phi ptr [ %i.ao, %bb.w ], [ %i.ai, %bb.r ], [ %i.ac, %bb.o ], [ %i.r, %bb.l ], [ %i.j, %bb.g ], [ %i.d, %bb.c ] ; 3 uses
  %i.az = load ptr, ptr %.023.ph.i, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(208) %.023.ph.i, ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !40 ; 0 uses
  br label %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit

common.resume:                                    ; preds = %bb.d, %bb.h, %bb.m, %bb.p, %bb.s, %bb.x, %_ZN4ncnn3MatD2Ev.exit.i, %bb.eq
  %common.resume.op = phi { ptr, i32 } [ %i.we, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn67.pn.pn.pn, %bb.eq ], [ %i.i, %bb.d ], [ %i.q, %bb.h ], [ %i.ab, %bb.m ], [ %i.ah, %bb.p ], [ %i.an, %bb.s ], [ %i.ay, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit: ; preds = %bb.a, %bb.y
  %.02329.i = phi ptr [ %.023.ph.i, %bb.y ], [ null, %bb.a ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %.02329.i, ptr %i.bd, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !44 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !45 ; 6 uses
  %i.bi = mul nsw i32 %i.bh, %i.bf                ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !46
  %i.bl = sdiv i32 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !47 ; 8 uses
  %i.bo = sdiv i32 %i.bl, %i.bn
  %.fr343 = freeze i32 %i.bo                      ; 18 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !48, !range !50, !noundef !51
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.z, label %bb.af

bb.z:                                             ; preds = %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %i.bs = and i32 %.fr343, 15
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = and i32 %.fr343, 7
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = and i32 %.fr343, 3
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = select i1 %i.bx, i32 4, i32 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bz = phi i32 [ 16, %bb.z ], [ %i.by, %bb.ab ], [ 8, %bb.aa ] ; 3 uses
  %i.ca = and i32 %i.bn, 15
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = and i32 %i.bn, 7
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = and i32 %i.bn, 3
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = select i1 %i.cf, i32 4, i32 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %.057 = phi i32 [ 1, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit ], [ 16, %bb.ac ], [ %i.cg, %bb.ae ], [ 8, %bb.ad ] ; 7 uses
  %.0 = phi i32 [ 1, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit ], [ %i.bz, %bb.ac ], [ %i.bz, %bb.ae ], [ %i.bz, %bb.ad ] ; 25 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !52, !range !50, !noundef !51
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ag, label %bb.er

bb.ag:                                            ; preds = %bb.af
  %i.ck = call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 74)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 5 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9)
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 2, i32 noundef 0)
          to label %bb.ah unwind label %bb.az

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 3, i32 noundef 0)
          to label %bb.ai unwind label %bb.az

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
  %i.cn = mul nsw i32 %.fr343, %i.bi              ; 2 uses
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
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.de, i32 noundef %i.bi, i32 noundef %.fr343, i32 noundef %i.df, ptr noundef null)
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
  %.not171 = icmp sgt i32 %.0, %.fr343
  %16 = icmp sgt i32 %i.bi, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %.not171, label %._crit_edge.split, label %.preheader160.lr.ph.preheader.a

.preheader160.lr.ph.preheader.a:                  ; preds = %.lr.ph
  %17 = add nsw i32 %.0, -1
  %18 = zext nneg i32 %.0 to i64
  %19 = zext nneg i32 %17 to i64
  %20 = zext nneg i32 %.fr343 to i64
  %wide.trip.count185 = zext nneg i32 %i.dh to i64
  %wide.trip.count177 = zext nneg i32 %i.bi to i64
  %wide.trip.count = zext i32 %.0 to i64          ; 12 uses
  %i.dq = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.dr = shl nuw nsw i64 %wide.trip.count, 2
  %min.iters.check298 = icmp ult i32 %.0, 4
  %min.iters.check300 = icmp ult i32 %.0, 16
  %i.ds = and i64 %wide.trip.count, 12
  %n.vec302 = and i64 %wide.trip.count, 4294967280 ; 5 uses
  %i.dt = shl nuw nsw i64 %n.vec302, 2
  %cmp.n315 = icmp eq i64 %n.vec302, %wide.trip.count
  %min.epilog.iters.check321 = icmp eq i64 %i.ds, 0
  %n.vec323 = and i64 %wide.trip.count, 4294967292 ; 4 uses
  %i.du = shl nuw nsw i64 %n.vec323, 2
  %cmp.n340 = icmp eq i64 %n.vec323, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader160.lr.ph

._crit_edge.split:                                ; preds = %._crit_edge168, %.lr.ph, %.preheader161
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !11 ; 2 uses
  %.not.i80 = icmp eq ptr %i.dw, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit78, label %bb.at

bb.at:                                            ; preds = %._crit_edge.split
  %i.dx = atomicrmw add ptr %i.dw, i32 -1 acq_rel, align 4
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit78

bb.au:                                            ; preds = %bb.at
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !17 ; 3 uses
  %.not3.i81 = icmp eq ptr %i.ea, null
  %i.eb = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i81, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.eb)
          to label %_ZN4ncnn3MatD2Ev.exit78 unwind label %bb.ay, !inline_history !19

bb.aw:                                            ; preds = %bb.au
  %.not.i130 = icmp eq ptr %i.eb, null
  br i1 %.not.i130, label %_ZN4ncnn3MatD2Ev.exit78, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.eb) #9
  br label %_ZN4ncnn3MatD2Ev.exit78

bb.ay:                                            ; preds = %bb.av
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit78:                          ; preds = %bb.at, %._crit_edge.split, %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.eh = load i32, ptr %i.co, align 4, !tbaa !54
  %.not60 = icmp eq i32 %i.eh, 0
  br i1 %.not60, label %bb.da, label %bb.bc

bb.az:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ba:                                            ; preds = %bb.ar
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit76

bb.bb:                                            ; preds = %bb.as
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !11 ; 2 uses
  %.not.i88 = icmp eq ptr %i.em, null
  br i1 %.not.i88, label %_ZN4ncnn3MatD2Ev.exit76, label %bb.ce

.preheader160.lr.ph:                              ; preds = %.preheader160.lr.ph.preheader.a, %._crit_edge168
  %indvars.iv182 = phi i64 [ 0, %.preheader160.lr.ph.preheader.a ], [ %indvars.iv.next183, %._crit_edge168 ] ; 4 uses
  %21 = load i32, ptr %i.dn, align 4
  %22 = load ptr, ptr %11, align 8                ; 4 uses
  %23 = load i64, ptr %i.do, align 8              ; 2 uses
  %24 = mul i64 %23, %indvars.iv182
  %25 = load i64, ptr %i.dp, align 8              ; 6 uses
  %26 = mul i64 %24, %25                          ; 3 uses
  %27 = getelementptr inbounds nuw i8, ptr %22, i64 %26
  %28 = sext i32 %21 to i64                       ; 5 uses
  %factor.op.mul = mul i64 %25, %28               ; 9 uses
  br i1 %16, label %.preheader160.us.preheader, label %._crit_edge168

.preheader160.us.preheader:                       ; preds = %.preheader160.lr.ph
  %.reass = mul i64 %factor.op.mul170, %indvars.iv182
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.reass
  %i.eo = mul i64 %25, %28
  %i.ep = sub i64 0, %i.eo
  %i.eq = mul i64 %25, %wide.trip.count
  %i.er = mul i64 %i.eq, %28
  %i.es = mul i64 %25, %wide.trip.count
  %i.et = mul i64 %i.es, %28
  %i.eu = mul i64 %23, %indvars.iv182
  %i.ev = mul i64 %i.dq, %28
  %i.ew = add i64 %i.eu, %i.ev
  %i.ex = mul i64 %25, %i.ew
  %i.ey = getelementptr i8, ptr %22, i64 %26
  %i.ez = getelementptr i8, ptr %22, i64 %i.ex
  %i.fa = getelementptr i8, ptr %22, i64 %26
  %i.fb = icmp slt i64 %factor.op.mul, 0          ; 2 uses
  %i.fc = select i1 %i.fb, i64 %i.ep, i64 %factor.op.mul
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fc, i64 %i.dq) ; 2 uses
  %mul.result286 = extractvalue { i64, i1 } %mul, 0 ; 2 uses
  %mul.overflow287 = extractvalue { i64, i1 } %mul, 1
  %i.fd = sub i64 0, %mul.result286
  %broadcast.splatinsert305 = insertelement <16 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat306 = shufflevector <16 x i64> %broadcast.splatinsert305, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert326 = insertelement <4 x i64> poison, i64 %factor.op.mul, i64 0
  %broadcast.splat327 = shufflevector <4 x i64> %broadcast.splatinsert326, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader160.us

.preheader160.us:                                 ; preds = %.preheader160.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader160.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 3 uses
  %indvars.iv179 = phi i64 [ 0, %.preheader160.us.preheader ], [ %indvars.iv.next180, %._crit_edge.us ] ; 8 uses
  %.044166.us = phi ptr [ %i.en, %.preheader160.us.preheader ], [ %.lcssa, %._crit_edge.us ]
  %i.fe = mul i64 %i.et, %indvar                  ; 2 uses
  %i.ff = mul i64 %i.er, %indvar
  %i.fg = getelementptr i8, ptr %i.ey, i64 %i.fe
  %i.fh = getelementptr i8, ptr %i.ez, i64 %i.fe
  %i.fi = getelementptr i8, ptr %i.fa, i64 %i.ff
  %broadcast.splatinsert303 = insertelement <16 x i64> poison, i64 %indvars.iv179, i64 0
  %broadcast.splat304 = shufflevector <16 x i64> %broadcast.splatinsert303, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert324 = insertelement <4 x i64> poison, i64 %indvars.iv179, i64 0
  %broadcast.splat325 = shufflevector <4 x i64> %broadcast.splatinsert324, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.op349 = add nuw nsw i64 1, %indvars.iv179
  %invariant.op351 = add nuw nsw i64 2, %indvars.iv179
  %invariant.op353 = add nuw nsw i64 3, %indvars.iv179
  br label %iter.check318

.noexc134.us:                                     ; preds = %.noexc134.us.prol.loopexit, %.noexc134.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc134.us ], [ %indvars.iv.unr, %.noexc134.us.prol.loopexit ] ; 5 uses
  %.2162.us = phi ptr [ %i.fr, %.noexc134.us ], [ %.2162.us.unr, %.noexc134.us.prol.loopexit ] ; 5 uses
  %i.fj = add nuw nsw i64 %indvars.iv, %indvars.iv179
  %.reass.us = mul i64 %factor.op.mul, %i.fj
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us
  %i.fk = load float, ptr %gep.us, align 4, !tbaa !38
  store float %i.fk, ptr %.2162.us, align 4, !tbaa !38
  %i.fl = getelementptr inbounds nuw i8, ptr %.2162.us, i64 4
  %.reass350 = add nuw nsw i64 %indvars.iv, %invariant.op349
  %.reass.us.1 = mul i64 %factor.op.mul, %.reass350
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.1
  %i.fm = load float, ptr %gep.us.1, align 4, !tbaa !38
  store float %i.fm, ptr %i.fl, align 4, !tbaa !38
  %i.fn = getelementptr inbounds nuw i8, ptr %.2162.us, i64 8
  %.reass352 = add nuw nsw i64 %indvars.iv, %invariant.op351
  %.reass.us.2 = mul i64 %factor.op.mul, %.reass352
  %gep.us.2 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.2
  %i.fo = load float, ptr %gep.us.2, align 4, !tbaa !38
  store float %i.fo, ptr %i.fn, align 4, !tbaa !38
  %i.fp = getelementptr inbounds nuw i8, ptr %.2162.us, i64 12
  %.reass354 = add nuw nsw i64 %indvars.iv, %invariant.op353
  %.reass.us.3 = mul i64 %factor.op.mul, %.reass354
  %gep.us.3 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.3
  %i.fq = load float, ptr %gep.us.3, align 4, !tbaa !38
  store float %i.fq, ptr %i.fp, align 4, !tbaa !38
  %i.fr = getelementptr inbounds nuw i8, ptr %.2162.us, i64 16 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.noexc134.us, !llvm.loop !57

.loopexit:                                        ; preds = %.noexc134.us.prol.loopexit, %.noexc134.us, %vec.epilog.middle.block339, %middle.block314
  %.lcssa = phi ptr [ %i.gh, %vec.epilog.middle.block339 ], [ %i.gc, %middle.block314 ], [ %.lcssa345.unr, %.noexc134.us.prol.loopexit ], [ %i.fr, %.noexc134.us ] ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge.us, label %iter.check318, !llvm.loop !60

iter.check318:                                    ; preds = %.preheader160.us, %.loopexit
  %indvars.iv174 = phi i64 [ 0, %.preheader160.us ], [ %indvars.iv.next175, %.loopexit ] ; 4 uses
  %.1164.us = phi ptr [ %.044166.us, %.preheader160.us ], [ %.lcssa, %.loopexit ] ; 9 uses
  %i.fs = shl nuw nsw i64 %indvars.iv174, 2       ; 2 uses
  %scevgep290.a = getelementptr i8, ptr %i.fg, i64 %i.fs ; 4 uses
  %scevgep291 = getelementptr i8, ptr %i.fh, i64 %i.fs ; 4 uses
  %i.ft = icmp ult ptr %scevgep290.a, %scevgep291
  %umin292 = select i1 %i.ft, ptr %scevgep290.a, ptr %scevgep291
  %i.fu = icmp ugt ptr %scevgep290.a, %scevgep291
  %umax293 = select i1 %i.fu, ptr %scevgep290.a, ptr %scevgep291
  %scevgep294 = getelementptr i8, ptr %umax293, i64 4
  %invariant.gep.us = getelementptr [4 x i8], ptr %27, i64 %indvars.iv174 ; 7 uses
  br i1 %min.iters.check298, label %.noexc134.us.preheader, label %vector.scevcheck284

vector.scevcheck284:                              ; preds = %iter.check318
  %i.fv = shl nuw nsw i64 %indvars.iv174, 2
  %scevgep285 = getelementptr i8, ptr %i.fi, i64 %i.fv ; 4 uses
  %i.fw = getelementptr i8, ptr %scevgep285, i64 %mul.result286
  %i.fx = getelementptr i8, ptr %scevgep285, i64 %i.fd
  %i.fy = icmp ult ptr %i.fw, %scevgep285
  %i.fz = icmp ugt ptr %i.fx, %scevgep285
  %i.ga = select i1 %i.fb, i1 %i.fz, i1 %i.fy
  %i.gb = or i1 %i.ga, %mul.overflow287
  br i1 %i.gb, label %.noexc134.us.preheader, label %vector.memcheck288

vector.memcheck288:                               ; preds = %vector.scevcheck284
  %scevgep289 = getelementptr i8, ptr %.1164.us, i64 %i.dr
  %bound0295 = icmp ult ptr %.1164.us, %scevgep294
  %bound1296 = icmp ult ptr %umin292, %scevgep289
  %found.conflict297 = and i1 %bound0295, %bound1296
  br i1 %found.conflict297, label %.noexc134.us.preheader, label %vector.main.loop.iter.check299

vector.main.loop.iter.check299:                   ; preds = %vector.memcheck288
  br i1 %min.iters.check300, label %vec.epilog.ph322, label %vector.ph301

vector.ph301:                                     ; preds = %vector.main.loop.iter.check299
  %i.gc = getelementptr i8, ptr %.1164.us, i64 %i.dt ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph301
  %index308 = phi i64 [ 0, %vector.ph301 ], [ %index.next312, %vector.body307 ] ; 2 uses
  %vec.ind309 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph301 ], [ %vec.ind.next313, %vector.body307 ] ; 2 uses
  %i.gd = shl i64 %index308, 2
  %next.gep = getelementptr i8, ptr %.1164.us, i64 %i.gd
  %i.ge = add nuw nsw <16 x i64> %vec.ind309, %broadcast.splat304
  %i.gf = mul <16 x i64> %broadcast.splat306, %i.ge
  %wide.gep310 = getelementptr i8, ptr %invariant.gep.us, <16 x i64> %i.gf
  %wide.masked.gather311 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep310, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !38, !alias.scope !61
  store <16 x float> %wide.masked.gather311, ptr %next.gep, align 4, !tbaa !38, !alias.scope !64, !noalias !61
  %index.next312 = add nuw i64 %index308, 16      ; 2 uses
  %vec.ind.next313 = add nuw nsw <16 x i64> %vec.ind309, splat (i64 16)
  %i.gg = icmp eq i64 %index.next312, %n.vec302
  br i1 %i.gg, label %middle.block314, label %vector.body307, !llvm.loop !66

middle.block314:                                  ; preds = %vector.body307
  br i1 %cmp.n315, label %.loopexit, label %vec.epilog.iter.check320

vec.epilog.iter.check320:                         ; preds = %middle.block314
  br i1 %min.epilog.iters.check321, label %.noexc134.us.preheader, label %vec.epilog.ph322, !prof !68

vec.epilog.ph322:                                 ; preds = %vector.main.loop.iter.check299, %vec.epilog.iter.check320
  %vec.epilog.resume.val316 = phi i64 [ %n.vec302, %vec.epilog.iter.check320 ], [ 0, %vector.main.loop.iter.check299 ] ; 2 uses
  %i.gh = getelementptr i8, ptr %.1164.us, i64 %i.du ; 2 uses
  %broadcast.splatinsert328 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val316, i64 0
  %broadcast.splat329 = shufflevector <4 x i64> %broadcast.splatinsert328, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction330 = or disjoint <4 x i64> %broadcast.splat329, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body331

vec.epilog.vector.body331:                        ; preds = %vec.epilog.vector.body331, %vec.epilog.ph322
  %index332 = phi i64 [ %vec.epilog.resume.val316, %vec.epilog.ph322 ], [ %index.next337, %vec.epilog.vector.body331 ] ; 2 uses
  %vec.ind333 = phi <4 x i64> [ %induction330, %vec.epilog.ph322 ], [ %vec.ind.next338, %vec.epilog.vector.body331 ] ; 2 uses
  %i.gi = shl i64 %index332, 2
  %next.gep334 = getelementptr i8, ptr %.1164.us, i64 %i.gi
  %i.gj = add nuw nsw <4 x i64> %vec.ind333, %broadcast.splat325
  %i.gk = mul <4 x i64> %broadcast.splat327, %i.gj
  %wide.gep335 = getelementptr i8, ptr %invariant.gep.us, <4 x i64> %i.gk
  %wide.masked.gather336 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep335, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !38, !alias.scope !61
  store <4 x float> %wide.masked.gather336, ptr %next.gep334, align 4, !tbaa !38, !alias.scope !64, !noalias !61
  %index.next337 = add nuw i64 %index332, 4       ; 2 uses
  %vec.ind.next338 = add nuw nsw <4 x i64> %vec.ind333, splat (i64 4)
  %i.gl = icmp eq i64 %index.next337, %n.vec323
  br i1 %i.gl, label %vec.epilog.middle.block339, label %vec.epilog.vector.body331, !llvm.loop !69

vec.epilog.middle.block339:                       ; preds = %vec.epilog.vector.body331
  br i1 %cmp.n340, label %.loopexit, label %.noexc134.us.preheader

.noexc134.us.preheader:                           ; preds = %vector.memcheck288, %vector.scevcheck284, %iter.check318, %vec.epilog.iter.check320, %vec.epilog.middle.block339
  %indvars.iv.ph = phi i64 [ 0, %iter.check318 ], [ 0, %vector.scevcheck284 ], [ 0, %vector.memcheck288 ], [ %n.vec302, %vec.epilog.iter.check320 ], [ %n.vec323, %vec.epilog.middle.block339 ] ; 3 uses
  %.2162.us.ph = phi ptr [ %.1164.us, %iter.check318 ], [ %.1164.us, %vector.scevcheck284 ], [ %.1164.us, %vector.memcheck288 ], [ %i.gc, %vec.epilog.iter.check320 ], [ %i.gh, %vec.epilog.middle.block339 ] ; 2 uses
  br i1 %lcmp.mod.not, label %.noexc134.us.prol.loopexit, label %.noexc134.us.prol

.noexc134.us.prol:                                ; preds = %.noexc134.us.preheader, %.noexc134.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc134.us.prol ], [ %indvars.iv.ph, %.noexc134.us.preheader ] ; 2 uses
  %.2162.us.prol = phi ptr [ %i.go, %.noexc134.us.prol ], [ %.2162.us.ph, %.noexc134.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.noexc134.us.prol ], [ 0, %.noexc134.us.preheader ]
  %i.gm = add nuw nsw i64 %indvars.iv.prol, %indvars.iv179
  %.reass.us.prol = mul i64 %factor.op.mul, %i.gm
  %gep.us.prol = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.prol
  %i.gn = load float, ptr %gep.us.prol, align 4, !tbaa !38
  store float %i.gn, ptr %.2162.us.prol, align 4, !tbaa !38
  %i.go = getelementptr inbounds nuw i8, ptr %.2162.us.prol, i64 4 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc134.us.prol.loopexit, label %.noexc134.us.prol, !llvm.loop !70

.noexc134.us.prol.loopexit:                       ; preds = %.noexc134.us.prol, %.noexc134.us.preheader
  %.lcssa345.unr = phi ptr [ poison, %.noexc134.us.preheader ], [ %i.go, %.noexc134.us.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.noexc134.us.preheader ], [ %indvars.iv.next.prol, %.noexc134.us.prol ]
  %.2162.us.unr = phi ptr [ %.2162.us.ph, %.noexc134.us.preheader ], [ %i.go, %.noexc134.us.prol ]
  %i.gp = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gq = icmp ugt i64 %i.gp, -4
  br i1 %i.gq, label %.loopexit, label %.noexc134.us

._crit_edge.us:                                   ; preds = %.loopexit
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, %18 ; 2 uses
  %i.gr = add nuw nsw i64 %indvars.iv.next180, %19
  %i.gs = icmp samesign ult i64 %i.gr, %20
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gs, label %.preheader160.us, label %._crit_edge168, !llvm.loop !72

._crit_edge168:                                   ; preds = %._crit_edge.us, %.preheader160.lr.ph
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge.split, label %.preheader160.lr.ph, !llvm.loop !73

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.gy = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.ha = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i64 0, ptr %i.ha, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.gv, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.gy, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gz, i8 0, i64 28, i1 false)
  %i.hb = load ptr, ptr %i.cw, align 8, !tbaa !11 ; 2 uses
  %.not.i144 = icmp eq ptr %i.hb, null
  br i1 %.not.i144, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hd = atomicrmw add ptr %i.hb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.hc, align 8, !tbaa !11 ; 2 uses
  %.not.i.i145 = icmp eq ptr %.pre, null
  br i1 %.not.i.i145, label %.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.he = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  %i.hg = load ptr, ptr %i.gv, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i146 = icmp eq ptr %i.hg, null
  %i.hh = load ptr, ptr %12, align 16, !tbaa !18  ; 3 uses
  br i1 %.not3.i.i146, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !9
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  invoke void %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef %i.hh)
          to label %.thread unwind label %bb.ck, !inline_history !74

bb.bh:                                            ; preds = %bb.bf
  %.not.i18.i147 = icmp eq ptr %i.hh, null
  br i1 %.not.i18.i147, label %.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %i.hh) #9
  br label %.thread

.thread:                                          ; preds = %bb.bc, %bb.be, %bb.bd, %bb.bg, %bb.bi, %bb.bh
  %i.hl = load <2 x ptr>, ptr %10, align 16, !tbaa !75
  store <2 x ptr> %i.hl, ptr %12, align 16, !tbaa !75
  %i.hm = load i64, ptr %i.cx, align 16, !tbaa !56
  store i64 %i.hm, ptr %i.gt, align 16, !tbaa !56
  %i.hn = load i32, ptr %i.cy, align 8, !tbaa !76
  store i32 %i.hn, ptr %i.gu, align 8, !tbaa !76
  %i.ho = load ptr, ptr %i.cz, align 16, !tbaa !17
  store ptr %i.ho, ptr %i.gv, align 16, !tbaa !17
  %i.hp = load <4 x i32>, ptr %i.da, align 8, !tbaa !77
  store <4 x i32> %i.hp, ptr %i.gw, align 8, !tbaa !77
  %i.hq = load i32, ptr %i.dc, align 8, !tbaa !78
  store i32 %i.hq, ptr %i.gx, align 8, !tbaa !78
  %i.hr = load i64, ptr %i.dd, align 16, !tbaa !20
  store i64 %i.hr, ptr %i.gy, align 16, !tbaa !20
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !11 ; 2 uses
  %.not.i137 = icmp eq ptr %i.hu, null
  br i1 %.not.i137, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.thread
  %i.hv = atomicrmw add ptr %i.hu, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.hx = load ptr, ptr %i.hw, align 16, !tbaa !11 ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i138, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hy = atomicrmw add ptr %i.hx, i32 -1 acq_rel, align 4
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !17 ; 3 uses
  %.not3.i.i139 = icmp eq ptr %i.ib, null
  %i.ic = load ptr, ptr %.ptr.1, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i.i139, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef %i.ic)
          to label %bb.bq unwind label %bb.ck, !inline_history !74

bb.bo:                                            ; preds = %bb.bm
  %.not.i18.i140 = icmp eq ptr %i.ic, null
  br i1 %.not.i18.i140, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @free(ptr noundef nonnull %i.ic) #9
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bl, %bb.bk, %bb.bn, %bb.bp, %bb.bo
  %i.ig = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.il = load <2 x ptr>, ptr %i.hs, align 8, !tbaa !75
  store <2 x ptr> %i.il, ptr %.ptr.1, align 8, !tbaa !75
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.in = load i64, ptr %i.im, align 8, !tbaa !56
  store i64 %i.in, ptr %i.ig, align 8, !tbaa !56
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !76
  store i32 %i.ip, ptr %i.ih, align 16, !tbaa !76
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 104
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !17
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.iu = load <4 x i32>, ptr %i.it, align 8, !tbaa !77
  store <4 x i32> %i.iu, ptr %i.ii, align 16, !tbaa !77
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !78
  store i32 %i.iw, ptr %i.ij, align 16, !tbaa !78
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !20
  store i64 %i.iy, ptr %i.ik, align 8, !tbaa !20
  %i.iz = load ptr, ptr %i.cl, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %12)
          to label %bb.br unwind label %bb.cl

bb.br:                                            ; preds = %bb.bq
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !9
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = invoke noundef i32 %i.jc(ptr noundef nonnull align 8 dereferenceable(208) %i.iz, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bs unwind label %bb.cm     ; 0 uses

bb.bs:                                            ; preds = %bb.br
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.jg = load ptr, ptr %i.jf, align 16, !tbaa !11 ; 2 uses
  %.not.i84 = icmp eq ptr %i.jg, null
  br i1 %.not.i84, label %_ZN4ncnn3MatD2Ev.exit77, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jh = atomicrmw add ptr %i.jg, i32 -1 acq_rel, align 4
  %i.ji = icmp eq i32 %i.jh, 1
  br i1 %i.ji, label %bb.bu, label %_ZN4ncnn3MatD2Ev.exit77

bb.bu:                                            ; preds = %bb.bt
  %i.jj = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !17 ; 3 uses
  %.not3.i85 = icmp eq ptr %i.jk, null
  %i.jl = load ptr, ptr %i.je, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i85, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !9
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8
  invoke void %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef %i.jl)
          to label %_ZN4ncnn3MatD2Ev.exit77 unwind label %bb.by, !inline_history !19

bb.bw:                                            ; preds = %bb.bu
  %.not.i128 = icmp eq ptr %i.jl, null
  br i1 %.not.i128, label %_ZN4ncnn3MatD2Ev.exit77, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @free(ptr noundef nonnull %i.jl) #9
  br label %_ZN4ncnn3MatD2Ev.exit77

bb.by:                                            ; preds = %bb.cb, %bb.bv
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit77:                          ; preds = %bb.bt, %bb.bs, %bb.bv, %bb.bw, %bb.bx
  %i.jr = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.js = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i64 0, ptr %i.js, align 8, !tbaa !20
  %i.jt = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.je, i8 0, i64 28, i1 false)
end_hunk_0
