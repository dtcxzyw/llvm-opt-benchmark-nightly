inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn20DeformableConv2D_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.ai = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 71) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(208) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %7)
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
  %common.resume.op = phi { ptr, i32 } [ %i.qo, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn65.pn.pn.pn, %bb.el ], [ %i.i, %bb.d ], [ %i.q, %bb.h ], [ %i.ab, %bb.m ], [ %i.ah, %bb.p ], [ %i.an, %bb.s ], [ %i.ay, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit: ; preds = %bb.a, %bb.y
  %.02329.i = phi ptr [ %.023.ph.i, %bb.y ], [ null, %bb.a ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %.02329.i, ptr %i.bd, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !44 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !45 ; 4 uses
  %i.bi = mul nsw i32 %i.bh, %i.bf                ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !46
  %i.bl = sdiv i32 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !47 ; 6 uses
  %i.bo = sdiv i32 %i.bl, %i.bn                   ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !48, !range !50, !noundef !51
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %i.bs = and i32 %i.bo, 3
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = select i1 %i.bt, i32 4, i32 1
  %i.bv = and i32 %i.bn, 3
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = select i1 %i.bw, i32 4, i32 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit
  %.055 = phi i32 [ %i.bx, %bb.z ], [ 1, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit ] ; 6 uses
  %.0 = phi i32 [ %i.bu, %bb.z ], [ 1, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit ] ; 11 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !52, !range !50, !noundef !51
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.ab, label %bb.em

bb.ab:                                            ; preds = %bb.aa
  %i.cb = call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 74)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 5 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !53
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
  %i.cd = load i32, ptr %i.bm, align 8, !tbaa !47
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 7, i32 noundef %i.cd)
          to label %bb.ah unwind label %bb.au

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 8, i32 noundef 0)
          to label %bb.ai unwind label %bb.au

bb.ai:                                            ; preds = %bb.ah
  %i.ce = mul nsw i32 %i.bo, %i.bi                ; 2 uses
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 9, i32 noundef %i.ce)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !54
  %.not = icmp eq i32 %i.cg, 0
  %i.ch = select i1 %.not, i32 -1, i32 1
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 10, i32 noundef %i.ch)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 11, i32 noundef 1)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !53 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(208) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.am unwind label %bb.au     ; 0 uses

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store i64 0, ptr %i.cu, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cq, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cw = load i32, ptr %i.bm, align 8, !tbaa !47
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.cv, i32 noundef %i.bi, i32 noundef %i.bo, i32 noundef %i.cw, ptr noundef null)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %bb.am
  %i.cx = load i32, ptr %i.bm, align 8, !tbaa !47
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ce, i32 noundef %i.cx, i64 noundef 4, ptr noundef null)
          to label %.preheader159 unwind label %bb.aw

.preheader159:                                    ; preds = %bb.an
  %i.cy = load i32, ptr %i.bm, align 8, !tbaa !47 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader159
  %i.da = load ptr, ptr %10, align 16, !tbaa !18
  %i.db = load i32, ptr %i.cs, align 4, !tbaa !55
  %i.dc = sext i32 %i.db to i64
  %i.dd = load i64, ptr %i.co, align 16, !tbaa !56
  %factor.op.mul168 = mul i64 %i.dd, %i.dc
  %.not169 = icmp sgt i32 %.0, %i.bo
  %16 = icmp sgt i32 %i.bi, 0
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %.not169, label %._crit_edge.split, label %.preheader158.lr.ph.preheader

.preheader158.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.dh = add nsw i32 %.0, -1
  %i.di = zext nneg i32 %.0 to i64                ; 3 uses
  %i.dj = zext nneg i32 %i.dh to i64
  %i.dk = zext nneg i32 %i.bo to i64
  %wide.trip.count183 = zext nneg i32 %i.cy to i64
  %wide.trip.count175 = zext nneg i32 %i.bi to i64
  %xtraiter = and i64 %i.di, 1
  %17 = icmp samesign ult i32 %.0, 4
  %unroll_iter = and i64 %i.di, 4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod252 = trunc i32 %.0 to i1
  br label %.preheader158.lr.ph

._crit_edge.split:                                ; preds = %._crit_edge166, %.lr.ph, %.preheader159
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !11 ; 2 uses
  %.not.i78 = icmp eq ptr %i.dm, null
  br i1 %.not.i78, label %_ZN4ncnn3MatD2Ev.exit76, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.split
  %i.dn = atomicrmw add ptr %i.dm, i32 -1 acq_rel, align 4
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit76

bb.ap:                                            ; preds = %bb.ao
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !17 ; 3 uses
  %.not3.i79 = icmp eq ptr %i.dq, null
  %i.dr = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i79, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.dr)
          to label %_ZN4ncnn3MatD2Ev.exit76 unwind label %bb.at, !inline_history !19

bb.ar:                                            ; preds = %bb.ap
  %.not.i128 = icmp eq ptr %i.dr, null
  br i1 %.not.i128, label %_ZN4ncnn3MatD2Ev.exit76, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.dr) #9
  br label %_ZN4ncnn3MatD2Ev.exit76

bb.at:                                            ; preds = %bb.aq
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit76:                          ; preds = %bb.ao, %._crit_edge.split, %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.dx = load i32, ptr %i.cf, align 4, !tbaa !54
  %.not58 = icmp eq i32 %i.dx, 0
  br i1 %.not58, label %bb.cv, label %bb.ax

bb.au:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.av:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit74

bb.aw:                                            ; preds = %bb.an
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !11 ; 2 uses
  %.not.i86 = icmp eq ptr %i.ec, null
  br i1 %.not.i86, label %_ZN4ncnn3MatD2Ev.exit74, label %bb.bz

.preheader158.lr.ph:                              ; preds = %.preheader158.lr.ph.preheader, %._crit_edge166
  %indvars.iv180 = phi i64 [ 0, %.preheader158.lr.ph.preheader ], [ %indvars.iv.next181, %._crit_edge166 ] ; 3 uses
  %i.ed = load i32, ptr %i.de, align 4
  %i.ee = load ptr, ptr %11, align 8
  %i.ef = load i64, ptr %i.df, align 8
  %i.eg = mul i64 %i.ef, %indvars.iv180
  %i.eh = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.ei = mul i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ei
  %i.ek = sext i32 %i.ed to i64
  %factor.op.mul.a = mul i64 %i.eh, %i.ek         ; 5 uses
  br i1 %16, label %.preheader158.us.preheader, label %._crit_edge166

.preheader158.us.preheader:                       ; preds = %.preheader158.lr.ph
  %.reass = mul i64 %factor.op.mul168, %indvars.iv180
  %18 = getelementptr inbounds nuw i8, ptr %i.da, i64 %.reass
  br label %.preheader158.us

.preheader158.us:                                 ; preds = %.preheader158.us.preheader, %._crit_edge.us
  %indvars.iv177 = phi i64 [ 0, %.preheader158.us.preheader ], [ %indvars.iv.next178, %._crit_edge.us ] ; 6 uses
  %.042164.us = phi ptr [ %18, %.preheader158.us.preheader ], [ %.lcssa, %._crit_edge.us ]
  br label %.preheader.us

.noexc132.us:                                     ; preds = %.preheader.us, %.noexc132.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc132.us ], [ 0, %.preheader.us ] ; 5 uses
  %.2160.us = phi ptr [ %i.ew, %.noexc132.us ], [ %.1162.us, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.noexc132.us ], [ 0, %.preheader.us ]
  %i.el = add nuw nsw i64 %indvars.iv, %indvars.iv177
  %.reass.us = mul i64 %factor.op.mul.a, %i.el
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us
  %i.em = load float, ptr %gep.us, align 4, !tbaa !38
  store float %i.em, ptr %.2160.us, align 4, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %.2160.us, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.eo = add nuw nsw i64 %indvars.iv.next, %indvars.iv177
  %.reass.us.1 = mul i64 %factor.op.mul.a, %i.eo
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.1
  %i.ep = load float, ptr %gep.us.1, align 4, !tbaa !38
  store float %i.ep, ptr %i.en, align 4, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %.2160.us, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.er = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv177
  %.reass.us.2 = mul i64 %factor.op.mul.a, %i.er
  %gep.us.2 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.2
  %i.es = load float, ptr %gep.us.2, align 4, !tbaa !38
  store float %i.es, ptr %i.eq, align 4, !tbaa !38
  %i.et = getelementptr inbounds nuw i8, ptr %.2160.us, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.eu = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv177
  %.reass.us.3 = mul i64 %factor.op.mul.a, %i.eu
  %gep.us.3 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.3
  %i.ev = load float, ptr %gep.us.3, align 4, !tbaa !38
  store float %i.ev, ptr %i.et, align 4, !tbaa !38
  %i.ew = getelementptr inbounds nuw i8, ptr %.2160.us, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.noexc132.us, !llvm.loop !57

.unr-lcssa:                                       ; preds = %.noexc132.us
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.noexc132.us.epil.preheader

.noexc132.us.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.2160.us.epil.init = phi ptr [ %.1162.us, %.preheader.us ], [ %i.ew, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod252)
  br label %.noexc132.us.epil

.noexc132.us.epil:                                ; preds = %.noexc132.us.epil, %.noexc132.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.noexc132.us.epil.preheader ], [ %indvars.iv.next.epil, %.noexc132.us.epil ] ; 2 uses
  %.2160.us.epil = phi ptr [ %.2160.us.epil.init, %.noexc132.us.epil.preheader ], [ %i.ez, %.noexc132.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.noexc132.us.epil.preheader ], [ %epil.iter.next, %.noexc132.us.epil ] ; 2 uses
  %i.ex = add nuw nsw i64 %indvars.iv.epil, %indvars.iv177
  %.reass.us.epil = mul i64 %factor.op.mul.a, %i.ex
  %gep.us.epil = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.epil
  %i.ey = load float, ptr %gep.us.epil, align 4, !tbaa !38
  store float %i.ey, ptr %.2160.us.epil, align 4, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %.2160.us.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.noexc132.us.epil, !llvm.loop !59

.epilog-lcssa:                                    ; preds = %.noexc132.us.epil, %.unr-lcssa
  %.lcssa = phi ptr [ %i.ew, %.unr-lcssa ], [ %i.ez, %.noexc132.us.epil ] ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !61

.preheader.us:                                    ; preds = %.preheader158.us, %.epilog-lcssa
  %indvars.iv172 = phi i64 [ 0, %.preheader158.us ], [ %indvars.iv.next173, %.epilog-lcssa ] ; 2 uses
  %.1162.us = phi ptr [ %.042164.us, %.preheader158.us ], [ %.lcssa, %.epilog-lcssa ] ; 2 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv172 ; 5 uses
  br i1 %17, label %.noexc132.us.epil.preheader, label %.noexc132.us

._crit_edge.us:                                   ; preds = %.epilog-lcssa
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, %i.di ; 2 uses
  %i.fa = add nuw nsw i64 %indvars.iv.next178, %i.dj
  %i.fb = icmp samesign ult i64 %i.fa, %i.dk
  br i1 %i.fb, label %.preheader158.us, label %._crit_edge166, !llvm.loop !62

._crit_edge166:                                   ; preds = %._crit_edge.us, %.preheader158.lr.ph
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %._crit_edge.split, label %.preheader158.lr.ph, !llvm.loop !63

bb.ax:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i64 0, ptr %i.fj, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.fe, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.fh, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fi, i8 0, i64 28, i1 false)
  %i.fk = load ptr, ptr %i.cn, align 8, !tbaa !11 ; 2 uses
  %.not.i142 = icmp eq ptr %i.fk, null
  br i1 %.not.i142, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fm = atomicrmw add ptr %i.fk, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.fl, align 8, !tbaa !11 ; 2 uses
  %.not.i.i143 = icmp eq ptr %.pre, null
  br i1 %.not.i.i143, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fn = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.fo = icmp eq i32 %i.fn, 1
  br i1 %i.fo, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %bb.az
  %i.fp = load ptr, ptr %i.fe, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i144 = icmp eq ptr %i.fp, null
  %i.fq = load ptr, ptr %12, align 16, !tbaa !18  ; 3 uses
  br i1 %.not3.i.i144, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fr = load ptr, ptr %i.fp, align 8, !tbaa !9
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef %i.fq)
          to label %.thread unwind label %bb.cf, !inline_history !64

bb.bc:                                            ; preds = %bb.ba
  %.not.i18.i145 = icmp eq ptr %i.fq, null
  br i1 %.not.i18.i145, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.fq) #9
  br label %.thread

.thread:                                          ; preds = %bb.ax, %bb.az, %bb.ay, %bb.bb, %bb.bd, %bb.bc
  %i.fu = load <2 x ptr>, ptr %10, align 16, !tbaa !65
  store <2 x ptr> %i.fu, ptr %12, align 16, !tbaa !65
  %i.fv = load i64, ptr %i.co, align 16, !tbaa !56
  store i64 %i.fv, ptr %i.fc, align 16, !tbaa !56
  %i.fw = load i32, ptr %i.cp, align 8, !tbaa !66
  store i32 %i.fw, ptr %i.fd, align 8, !tbaa !66
  %i.fx = load ptr, ptr %i.cq, align 16, !tbaa !17
  store ptr %i.fx, ptr %i.fe, align 16, !tbaa !17
  %i.fy = load <4 x i32>, ptr %i.cr, align 8, !tbaa !67
  store <4 x i32> %i.fy, ptr %i.ff, align 8, !tbaa !67
  %i.fz = load i32, ptr %i.ct, align 8, !tbaa !68
  store i32 %i.fz, ptr %i.fg, align 8, !tbaa !68
  %i.ga = load i64, ptr %i.cu, align 16, !tbaa !20
  store i64 %i.ga, ptr %i.fh, align 16, !tbaa !20
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !11 ; 2 uses
  %.not.i135 = icmp eq ptr %i.gd, null
  br i1 %.not.i135, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.thread
  %i.ge = atomicrmw add ptr %i.gd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.gg = load ptr, ptr %i.gf, align 16, !tbaa !11 ; 2 uses
  %.not.i.i136 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i136, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gh = atomicrmw add ptr %i.gg, i32 -1 acq_rel, align 4
  %i.gi = icmp eq i32 %i.gh, 1
  br i1 %i.gi, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !17 ; 3 uses
  %.not3.i.i137 = icmp eq ptr %i.gk, null
  %i.gl = load ptr, ptr %.ptr.1, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i.i137, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !9
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef %i.gl)
          to label %bb.bl unwind label %bb.cf, !inline_history !64

bb.bj:                                            ; preds = %bb.bh
  %.not.i18.i138 = icmp eq ptr %i.gl, null
  br i1 %.not.i18.i138, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.gl) #9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bg, %bb.bf, %bb.bi, %bb.bk, %bb.bj
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.gu = load <2 x ptr>, ptr %i.gb, align 8, !tbaa !65
  store <2 x ptr> %i.gu, ptr %.ptr.1, align 8, !tbaa !65
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !56
  store i64 %i.gw, ptr %i.gp, align 8, !tbaa !56
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !66
  store i32 %i.gy, ptr %i.gq, align 16, !tbaa !66
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 104
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.hd = load <4 x i32>, ptr %i.hc, align 8, !tbaa !67
  store <4 x i32> %i.hd, ptr %i.gr, align 16, !tbaa !67
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !68
  store i32 %i.hf, ptr %i.gs, align 16, !tbaa !68
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !20
  store i64 %i.hh, ptr %i.gt, align 8, !tbaa !20
  %i.hi = load ptr, ptr %i.cc, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %12)
          to label %bb.bm unwind label %bb.cg

bb.bm:                                            ; preds = %bb.bl
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = invoke noundef i32 %i.hl(ptr noundef nonnull align 8 dereferenceable(208) %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bn unwind label %bb.ch     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.hn = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.hp = load ptr, ptr %i.ho, align 16, !tbaa !11 ; 2 uses
  %.not.i82 = icmp eq ptr %i.hp, null
  br i1 %.not.i82, label %_ZN4ncnn3MatD2Ev.exit75, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hq = atomicrmw add ptr %i.hp, i32 -1 acq_rel, align 4
  %i.hr = icmp eq i32 %i.hq, 1
  br i1 %i.hr, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit75

bb.bp:                                            ; preds = %bb.bo
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !17 ; 3 uses
  %.not3.i83 = icmp eq ptr %i.ht, null
  %i.hu = load ptr, ptr %i.hn, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i83, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef %i.hu)
          to label %_ZN4ncnn3MatD2Ev.exit75 unwind label %bb.bt, !inline_history !19

bb.br:                                            ; preds = %bb.bp
  %.not.i126 = icmp eq ptr %i.hu, null
  br i1 %.not.i126, label %_ZN4ncnn3MatD2Ev.exit75, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.hu) #9
  br label %_ZN4ncnn3MatD2Ev.exit75

bb.bt:                                            ; preds = %bb.bw, %bb.bq
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit75:                          ; preds = %bb.bo, %bb.bn, %bb.bq, %bb.br, %bb.bs
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 136
end_hunk_0
