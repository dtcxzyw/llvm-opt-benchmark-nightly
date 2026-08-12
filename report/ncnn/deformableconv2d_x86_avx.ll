inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn24DeformableConv2D_x86_avx15create_pipelineERKNS_6OptionE:bb.a
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %common.resume

bb.t:                                             ; preds = %bb.a
  %i.ao = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 67) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8)
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

common.resume:                                    ; preds = %bb.d, %bb.h, %bb.m, %bb.p, %bb.s, %bb.x, %_ZN4ncnn3MatD2Ev.exit.i, %bb.el
  %common.resume.op = phi { ptr, i32 } [ %i.wg, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn66.pn.pn.pn, %bb.el ], [ %i.i, %bb.d ], [ %i.q, %bb.h ], [ %i.ab, %bb.m ], [ %i.ah, %bb.p ], [ %i.an, %bb.s ], [ %i.ay, %bb.x ]
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
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !47 ; 7 uses
  %i.bo = sdiv i32 %i.bl, %i.bn
  %.fr276 = freeze i32 %i.bo                      ; 16 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !48, !range !50, !noundef !51
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %i.bs = and i32 %.fr276, 7
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = and i32 %.fr276, 3
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = select i1 %i.bv, i32 4, i32 1
  %i.bx = select i1 %i.bt, i32 8, i32 %i.bw
  %i.by = and i32 %i.bn, 7
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = and i32 %i.bn, 3
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = select i1 %i.cb, i32 4, i32 1
  %i.cd = select i1 %i.bz, i32 8, i32 %i.cc
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %.056 = phi i32 [ %i.cd, %bb.z ], [ 1, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit ] ; 7 uses
  %.0 = phi i32 [ %i.bx, %bb.z ], [ 1, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit ] ; 20 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !52, !range !50, !noundef !51
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ab, label %bb.em

bb.ab:                                            ; preds = %bb.aa
  %i.ch = call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 74)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 5 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9)
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 2, i32 noundef 0)
          to label %bb.ac unwind label %bb.au

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 3, i32 noundef 0)
          to label %bb.ad unwind label %bb.au

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 4, i32 noundef 1)
          to label %bb.ae unwind label %bb.au

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 5, i32 noundef 0)
          to label %bb.af unwind label %bb.au

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 6, i32 noundef 1)
          to label %bb.ag unwind label %bb.au

bb.ag:                                            ; preds = %bb.af
  %i.cj = load i32, ptr %i.bm, align 8, !tbaa !47
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 7, i32 noundef %i.cj)
          to label %bb.ah unwind label %bb.au

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 8, i32 noundef 0)
          to label %bb.ai unwind label %bb.au

bb.ai:                                            ; preds = %bb.ah
  %i.ck = mul nsw i32 %.fr276, %i.bi              ; 2 uses
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 9, i32 noundef %i.ck)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !54
  %.not = icmp eq i32 %i.cm, 0
  %i.cn = select i1 %.not, i32 -1, i32 1
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 10, i32 noundef %i.cn)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 11, i32 noundef 1)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !53 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(208) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.am unwind label %bb.au     ; 0 uses

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store i64 0, ptr %i.da, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cw, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dc = load i32, ptr %i.bm, align 8, !tbaa !47
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.db, i32 noundef %i.bi, i32 noundef %.fr276, i32 noundef %i.dc, ptr noundef null)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %bb.am
  %i.dd = load i32, ptr %i.bm, align 8, !tbaa !47
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ck, i32 noundef %i.dd, i64 noundef 4, ptr noundef null)
          to label %.preheader160 unwind label %bb.aw

.preheader160:                                    ; preds = %bb.an
  %i.de = load i32, ptr %i.bm, align 8, !tbaa !47 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader160
  %i.dg = load ptr, ptr %10, align 16, !tbaa !18
  %i.dh = load i32, ptr %i.cy, align 4, !tbaa !55
  %i.di = sext i32 %i.dh to i64
  %i.dj = load i64, ptr %i.cu, align 16, !tbaa !56
  %factor.op.mul169 = mul i64 %i.dj, %i.di
  %.not170 = icmp sgt i32 %.0, %.fr276
  %16 = icmp sgt i32 %i.bi, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %.not170, label %._crit_edge.split, label %.preheader159.lr.ph.preheader.a

.preheader159.lr.ph.preheader.a:                  ; preds = %.lr.ph
  %17 = add nsw i32 %.0, -1
  %18 = zext i32 %.0 to i64                       ; 3 uses
  %19 = zext nneg i32 %17 to i64
  %20 = zext nneg i32 %.fr276 to i64
  %wide.trip.count184 = zext nneg i32 %i.de to i64
  %wide.trip.count176 = zext nneg i32 %i.bi to i64
  %xtraiter = and i64 %18, 3                      ; 3 uses
  %i.dn = add nsw i32 %.0, -1
  %i.do = icmp ult i32 %i.dn, 3
  %unroll_iter = and i64 %18, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod279 = icmp ne i64 %xtraiter, 0
  br label %.preheader159.lr.ph

._crit_edge.split:                                ; preds = %._crit_edge167, %.lr.ph, %.preheader160
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !11 ; 2 uses
  %.not.i79 = icmp eq ptr %i.dq, null
  br i1 %.not.i79, label %_ZN4ncnn3MatD2Ev.exit77, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.split
  %i.dr = atomicrmw add ptr %i.dq, i32 -1 acq_rel, align 4
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit77

bb.ap:                                            ; preds = %bb.ao
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !17 ; 3 uses
  %.not3.i80 = icmp eq ptr %i.du, null
  %i.dv = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i80, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef %i.dv)
          to label %_ZN4ncnn3MatD2Ev.exit77 unwind label %bb.at, !inline_history !19

bb.ar:                                            ; preds = %bb.ap
  %.not.i129 = icmp eq ptr %i.dv, null
  br i1 %.not.i129, label %_ZN4ncnn3MatD2Ev.exit77, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.dv) #9
  br label %_ZN4ncnn3MatD2Ev.exit77

bb.at:                                            ; preds = %bb.aq
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit77:                          ; preds = %bb.ao, %._crit_edge.split, %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.eb = load i32, ptr %i.cl, align 4, !tbaa !54
  %.not59 = icmp eq i32 %i.eb, 0
  br i1 %.not59, label %bb.cv, label %bb.ax

bb.au:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.av:                                            ; preds = %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit75

bb.aw:                                            ; preds = %bb.an
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !11 ; 2 uses
  %.not.i87 = icmp eq ptr %i.eg, null
  br i1 %.not.i87, label %_ZN4ncnn3MatD2Ev.exit75, label %bb.bz

.preheader159.lr.ph:                              ; preds = %.preheader159.lr.ph.preheader.a, %._crit_edge167
  %indvars.iv181 = phi i64 [ 0, %.preheader159.lr.ph.preheader.a ], [ %indvars.iv.next182, %._crit_edge167 ] ; 3 uses
  %i.eh = load i32, ptr %i.dk, align 4
  %i.ei = load ptr, ptr %11, align 8
  %i.ej = load i64, ptr %i.dl, align 8
  %i.ek = mul i64 %i.ej, %indvars.iv181
  %i.el = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.em = mul i64 %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.em
  %i.eo = sext i32 %i.eh to i64
  %factor.op.mul.a = mul i64 %i.el, %i.eo         ; 5 uses
  br i1 %16, label %.preheader159.us.preheader, label %._crit_edge167

.preheader159.us.preheader:                       ; preds = %.preheader159.lr.ph
  %.reass = mul i64 %factor.op.mul169, %indvars.iv181
  %21 = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.reass
  br label %.preheader159.us

.preheader159.us:                                 ; preds = %.preheader159.us.preheader, %._crit_edge.us
  %indvars.iv178 = phi i64 [ 0, %.preheader159.us.preheader ], [ %indvars.iv.next179, %._crit_edge.us ] ; 6 uses
  %.043165.us = phi ptr [ %21, %.preheader159.us.preheader ], [ %.lcssa, %._crit_edge.us ]
  br label %.preheader.us

.noexc133.us:                                     ; preds = %.preheader.us, %.noexc133.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc133.us ], [ 0, %.preheader.us ] ; 5 uses
  %.2161.us = phi ptr [ %i.fa, %.noexc133.us ], [ %.1163.us, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.noexc133.us ], [ 0, %.preheader.us ]
  %i.ep = add nuw nsw i64 %indvars.iv, %indvars.iv178
  %.reass.us = mul i64 %factor.op.mul.a, %i.ep
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us
  %i.eq = load float, ptr %gep.us, align 4, !tbaa !38
  store float %i.eq, ptr %.2161.us, align 4, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %.2161.us, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.es = add nuw nsw i64 %indvars.iv.next, %indvars.iv178
  %.reass.us.1 = mul i64 %factor.op.mul.a, %i.es
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.1
  %i.et = load float, ptr %gep.us.1, align 4, !tbaa !38
  store float %i.et, ptr %i.er, align 4, !tbaa !38
  %i.eu = getelementptr inbounds nuw i8, ptr %.2161.us, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.ev = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv178
  %.reass.us.2 = mul i64 %factor.op.mul.a, %i.ev
  %gep.us.2 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.2
  %i.ew = load float, ptr %gep.us.2, align 4, !tbaa !38
  store float %i.ew, ptr %i.eu, align 4, !tbaa !38
  %i.ex = getelementptr inbounds nuw i8, ptr %.2161.us, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.ey = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv178
  %.reass.us.3 = mul i64 %factor.op.mul.a, %i.ey
  %gep.us.3 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.3
  %i.ez = load float, ptr %gep.us.3, align 4, !tbaa !38
  store float %i.ez, ptr %i.ex, align 4, !tbaa !38
  %i.fa = getelementptr inbounds nuw i8, ptr %.2161.us, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.noexc133.us, !llvm.loop !57

.unr-lcssa:                                       ; preds = %.noexc133.us
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.noexc133.us.epil.preheader

.noexc133.us.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.2161.us.epil.init = phi ptr [ %.1163.us, %.preheader.us ], [ %i.fa, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod279)
  br label %.noexc133.us.epil

.noexc133.us.epil:                                ; preds = %.noexc133.us.epil, %.noexc133.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.noexc133.us.epil.preheader ], [ %indvars.iv.next.epil, %.noexc133.us.epil ] ; 2 uses
  %.2161.us.epil = phi ptr [ %.2161.us.epil.init, %.noexc133.us.epil.preheader ], [ %i.fd, %.noexc133.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.noexc133.us.epil.preheader ], [ %epil.iter.next, %.noexc133.us.epil ]
  %i.fb = add nuw nsw i64 %indvars.iv.epil, %indvars.iv178
  %.reass.us.epil = mul i64 %factor.op.mul.a, %i.fb
  %gep.us.epil = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.epil
  %i.fc = load float, ptr %gep.us.epil, align 4, !tbaa !38
  store float %i.fc, ptr %.2161.us.epil, align 4, !tbaa !38
  %i.fd = getelementptr inbounds nuw i8, ptr %.2161.us.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.noexc133.us.epil, !llvm.loop !60

.epilog-lcssa:                                    ; preds = %.noexc133.us.epil, %.unr-lcssa
  %.lcssa = phi ptr [ %i.fa, %.unr-lcssa ], [ %i.fd, %.noexc133.us.epil ] ; 2 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !62

.preheader.us:                                    ; preds = %.preheader159.us, %.epilog-lcssa
  %indvars.iv173 = phi i64 [ 0, %.preheader159.us ], [ %indvars.iv.next174, %.epilog-lcssa ] ; 2 uses
  %.1163.us = phi ptr [ %.043165.us, %.preheader159.us ], [ %.lcssa, %.epilog-lcssa ] ; 2 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.en, i64 %indvars.iv173 ; 5 uses
  br i1 %i.do, label %.noexc133.us.epil.preheader, label %.noexc133.us

._crit_edge.us:                                   ; preds = %.epilog-lcssa
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, %18 ; 2 uses
  %i.fe = add nuw nsw i64 %indvars.iv.next179, %19
  %i.ff = icmp samesign ult i64 %i.fe, %20
  br i1 %i.ff, label %.preheader159.us, label %._crit_edge167, !llvm.loop !63

._crit_edge167:                                   ; preds = %._crit_edge.us, %.preheader159.lr.ph
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge.split, label %.preheader159.lr.ph, !llvm.loop !64

bb.ax:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit77
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i64 0, ptr %i.fn, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.fi, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.fl, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fm, i8 0, i64 28, i1 false)
  %i.fo = load ptr, ptr %i.ct, align 8, !tbaa !11 ; 2 uses
  %.not.i143 = icmp eq ptr %i.fo, null
  br i1 %.not.i143, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fq = atomicrmw add ptr %i.fo, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.fp, align 8, !tbaa !11 ; 2 uses
  %.not.i.i144 = icmp eq ptr %.pre, null
  br i1 %.not.i.i144, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fr = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %bb.az
  %i.ft = load ptr, ptr %i.fi, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i145 = icmp eq ptr %i.ft, null
  %i.fu = load ptr, ptr %12, align 16, !tbaa !18  ; 3 uses
  br i1 %.not3.i.i145, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !9
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef %i.fu)
          to label %.thread unwind label %bb.cf, !inline_history !65

bb.bc:                                            ; preds = %bb.ba
  %.not.i18.i146 = icmp eq ptr %i.fu, null
  br i1 %.not.i18.i146, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.fu) #9
  br label %.thread

.thread:                                          ; preds = %bb.ax, %bb.az, %bb.ay, %bb.bb, %bb.bd, %bb.bc
  %i.fy = load <2 x ptr>, ptr %10, align 16, !tbaa !66
  store <2 x ptr> %i.fy, ptr %12, align 16, !tbaa !66
  %i.fz = load i64, ptr %i.cu, align 16, !tbaa !56
  store i64 %i.fz, ptr %i.fg, align 16, !tbaa !56
  %i.ga = load i32, ptr %i.cv, align 8, !tbaa !67
  store i32 %i.ga, ptr %i.fh, align 8, !tbaa !67
  %i.gb = load ptr, ptr %i.cw, align 16, !tbaa !17
  store ptr %i.gb, ptr %i.fi, align 16, !tbaa !17
  %i.gc = load <4 x i32>, ptr %i.cx, align 8, !tbaa !68
  store <4 x i32> %i.gc, ptr %i.fj, align 8, !tbaa !68
  %i.gd = load i32, ptr %i.cz, align 8, !tbaa !69
  store i32 %i.gd, ptr %i.fk, align 8, !tbaa !69
  %i.ge = load i64, ptr %i.da, align 16, !tbaa !20
  store i64 %i.ge, ptr %i.fl, align 16, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !11 ; 2 uses
  %.not.i136 = icmp eq ptr %i.gh, null
  br i1 %.not.i136, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.thread
  %i.gi = atomicrmw add ptr %i.gh, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.gk = load ptr, ptr %i.gj, align 16, !tbaa !11 ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i137, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gl = atomicrmw add ptr %i.gk, i32 -1 acq_rel, align 4
  %i.gm = icmp eq i32 %i.gl, 1
  br i1 %i.gm, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !17 ; 3 uses
  %.not3.i.i138 = icmp eq ptr %i.go, null
  %i.gp = load ptr, ptr %.ptr.1, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i.i138, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !9
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef %i.gp)
          to label %bb.bl unwind label %bb.cf, !inline_history !65

bb.bj:                                            ; preds = %bb.bh
  %.not.i18.i139 = icmp eq ptr %i.gp, null
  br i1 %.not.i18.i139, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.gp) #9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bg, %bb.bf, %bb.bi, %bb.bk, %bb.bj
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.gw = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.gy = load <2 x ptr>, ptr %i.gf, align 8, !tbaa !66
  store <2 x ptr> %i.gy, ptr %.ptr.1, align 8, !tbaa !66
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !56
  store i64 %i.ha, ptr %i.gt, align 8, !tbaa !56
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !67
  store i32 %i.hc, ptr %i.gu, align 16, !tbaa !67
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 104
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.hh = load <4 x i32>, ptr %i.hg, align 8, !tbaa !68
  store <4 x i32> %i.hh, ptr %i.gv, align 16, !tbaa !68
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !69
  store i32 %i.hj, ptr %i.gw, align 16, !tbaa !69
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !20
  store i64 %i.hl, ptr %i.gx, align 8, !tbaa !20
  %i.hm = load ptr, ptr %i.ci, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %12)
          to label %bb.bm unwind label %bb.cg

bb.bm:                                            ; preds = %bb.bl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !9
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = invoke noundef i32 %i.hp(ptr noundef nonnull align 8 dereferenceable(208) %i.hm, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bn unwind label %bb.ch     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ht = load ptr, ptr %i.hs, align 16, !tbaa !11 ; 2 uses
  %.not.i83 = icmp eq ptr %i.ht, null
  br i1 %.not.i83, label %_ZN4ncnn3MatD2Ev.exit76, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hu = atomicrmw add ptr %i.ht, i32 -1 acq_rel, align 4
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit76

bb.bp:                                            ; preds = %bb.bo
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !17 ; 3 uses
  %.not3.i84 = icmp eq ptr %i.hx, null
  %i.hy = load ptr, ptr %i.hr, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i84, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hz = load ptr, ptr %i.hx, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  invoke void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef %i.hy)
          to label %_ZN4ncnn3MatD2Ev.exit76 unwind label %bb.bt, !inline_history !19

bb.br:                                            ; preds = %bb.bp
  %.not.i127 = icmp eq ptr %i.hy, null
  br i1 %.not.i127, label %_ZN4ncnn3MatD2Ev.exit76, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.hy) #9
  br label %_ZN4ncnn3MatD2Ev.exit76

bb.bt:                                            ; preds = %bb.bw, %bb.bq
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit76:                          ; preds = %bb.bo, %bb.bn, %bb.bq, %bb.br, %bb.bs
  %i.ie = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 136
end_hunk_0
