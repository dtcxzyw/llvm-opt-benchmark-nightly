Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn20DeformableConv2D_x8615create_pipelineERKNS_6OptionE:bb.a
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
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !38
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0, float noundef nofpclass(nan inf) %i.aq)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !38
  invoke void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 1, float noundef nofpclass(nan inf) %i.at)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !11
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
  %i.az = load ptr, ptr %.023.ph.i, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(208) %.023.ph.i, ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !75 ; 0 uses
  br label %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit

common.resume:                                    ; preds = %bb.d, %bb.h, %bb.m, %bb.p, %bb.s, %bb.x, %_ZN4ncnn3MatD2Ev.exit.i, %bb.el
  %common.resume.op = phi { ptr, i32 } [ %i.qn, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn65.pn.pn.pn, %bb.el ], [ %i.i, %bb.d ], [ %i.q, %bb.h ], [ %i.ab, %bb.m ], [ %i.ah, %bb.p ], [ %i.an, %bb.s ], [ %i.ay, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit: ; preds = %bb.a, %bb.y
  %.02329.i = phi ptr [ %.023.ph.i, %bb.y ], [ null, %bb.a ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %.02329.i, ptr %i.bd, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !42 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !43 ; 4 uses
  %i.bi = mul nsw i32 %i.bh, %i.bf                ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !86
  %i.bl = sdiv i32 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !44 ; 6 uses
  %i.bo = sdiv i32 %i.bl, %i.bn                   ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !46, !range !47, !noundef !48
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
  %.055 = phi i32 [ %i.bu, %bb.z ], [ 1, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit ] ; 11 uses
  %.054 = phi i32 [ %i.bx, %bb.z ], [ 1, %_ZL23create_activation_layeriRKN4ncnn3MatERKNS_6OptionE.exit ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !49, !range !47, !noundef !48
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.ab, label %bb.em

bb.ab:                                            ; preds = %bb.aa
  %i.cb = call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 74)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 5 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !50
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
  %i.cd = load i32, ptr %i.bm, align 8, !tbaa !44
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
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !87
  %.not = icmp eq i32 %i.cg, 0
  %i.ch = select i1 %.not, i32 -1, i32 1
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 10, i32 noundef %i.ch)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 11, i32 noundef 1)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !50 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !11
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
  %i.cw = load i32, ptr %i.bm, align 8, !tbaa !44
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.cv, i32 noundef %i.bi, i32 noundef %i.bo, i32 noundef %i.cw, ptr noundef null)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %bb.am
  %i.cx = load i32, ptr %i.bm, align 8, !tbaa !44
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ce, i32 noundef %i.cx, i64 noundef 4, ptr noundef null)
          to label %.preheader159 unwind label %bb.aw

.preheader159:                                    ; preds = %bb.an
  %i.cy = load i32, ptr %i.bm, align 8, !tbaa !44 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader159
  %i.da = load ptr, ptr %10, align 16, !tbaa !19
  %i.db = load i32, ptr %i.cs, align 4, !tbaa !51
  %i.dc = sext i32 %i.db to i64
  %i.dd = load i64, ptr %i.co, align 16, !tbaa !52
  %factor.op.mul168 = mul i64 %i.dd, %i.dc
  %.not169 = icmp sgt i32 %.055, %i.bo
  %i.de = icmp sgt i32 %i.bi, 0
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %.not169, label %._crit_edge.split, label %.preheader158.lr.ph.preheader

.preheader158.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.di = add nsw i32 %.055, -1
  %i.dj = zext nneg i32 %.055 to i64              ; 3 uses
  %wide.trip.count183 = zext nneg i32 %i.cy to i64
  %wide.trip.count175 = zext nneg i32 %i.bi to i64
  %xtraiter = and i64 %i.dj, 1
  %i.dk = icmp samesign ult i32 %.055, 4
  %unroll_iter = and i64 %i.dj, 4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod251 = trunc i32 %.055 to i1
  br label %.preheader158.lr.ph

._crit_edge.split:                                ; preds = %._crit_edge166, %.lr.ph, %.preheader159
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !17 ; 2 uses
  %.not.i78 = icmp eq ptr %i.dm, null
  br i1 %.not.i78, label %_ZN4ncnn3MatD2Ev.exit76, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.split
  %i.dn = atomicrmw add ptr %i.dm, i32 -1 acq_rel, align 4
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit76

bb.ap:                                            ; preds = %bb.ao
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !18 ; 3 uses
  %.not3.i79 = icmp eq ptr %i.dq, null
  %i.dr = load ptr, ptr %11, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i79, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.dr)
          to label %_ZN4ncnn3MatD2Ev.exit76 unwind label %bb.at, !inline_history !0

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
  %i.dx = load i32, ptr %i.cf, align 4, !tbaa !87
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
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !17 ; 2 uses
  %.not.i86 = icmp eq ptr %i.ec, null
  br i1 %.not.i86, label %_ZN4ncnn3MatD2Ev.exit74, label %bb.bz

.preheader158.lr.ph:                              ; preds = %.preheader158.lr.ph.preheader, %._crit_edge166
  %indvars.iv180 = phi i64 [ 0, %.preheader158.lr.ph.preheader ], [ %indvars.iv.next181, %._crit_edge166 ] ; 3 uses
  %i.ed = load i32, ptr %i.df, align 4
  %i.ee = load ptr, ptr %11, align 8
  %i.ef = load i64, ptr %i.dg, align 8
  %i.eg = mul i64 %i.ef, %indvars.iv180
  %i.eh = load i64, ptr %i.dh, align 8            ; 2 uses
  %i.ei = mul i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ei
  %i.ek = sext i32 %i.ed to i64
  %factor.op.mul = mul i64 %i.eh, %i.ek           ; 5 uses
  br i1 %i.de, label %.preheader158.us.preheader, label %._crit_edge166

.preheader158.us.preheader:                       ; preds = %.preheader158.lr.ph
  %.reass = mul i64 %factor.op.mul168, %indvars.iv180
  %i.el = getelementptr inbounds nuw i8, ptr %i.da, i64 %.reass
  br label %.preheader158.us

.preheader158.us:                                 ; preds = %.preheader158.us.preheader, %._crit_edge.us
  %indvars.iv177 = phi i64 [ 0, %.preheader158.us.preheader ], [ %indvars.iv.next178, %._crit_edge.us ] ; 6 uses
  %.041164.us = phi ptr [ %i.el, %.preheader158.us.preheader ], [ %.lcssa, %._crit_edge.us ]
  br label %.preheader.us

.noexc132.us:                                     ; preds = %.preheader.us, %.noexc132.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc132.us ], [ 0, %.preheader.us ] ; 5 uses
  %.2160.us = phi ptr [ %i.ex, %.noexc132.us ], [ %.1162.us, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.noexc132.us ], [ 0, %.preheader.us ]
  %i.em = add nuw nsw i64 %indvars.iv, %indvars.iv177
  %.reass.us = mul i64 %factor.op.mul, %i.em
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us
  %i.en = load float, ptr %gep.us, align 4, !tbaa !38
  store float %i.en, ptr %.2160.us, align 4, !tbaa !38
  %i.eo = getelementptr inbounds nuw i8, ptr %.2160.us, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ep = add nuw nsw i64 %indvars.iv.next, %indvars.iv177
  %.reass.us.1 = mul i64 %factor.op.mul, %i.ep
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.1
  %i.eq = load float, ptr %gep.us.1, align 4, !tbaa !38
  store float %i.eq, ptr %i.eo, align 4, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %.2160.us, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.es = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv177
  %.reass.us.2 = mul i64 %factor.op.mul, %i.es
  %gep.us.2 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.2
  %i.et = load float, ptr %gep.us.2, align 4, !tbaa !38
  store float %i.et, ptr %i.er, align 4, !tbaa !38
  %i.eu = getelementptr inbounds nuw i8, ptr %.2160.us, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.ev = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv177
  %.reass.us.3 = mul i64 %factor.op.mul, %i.ev
  %gep.us.3 = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.3
  %i.ew = load float, ptr %gep.us.3, align 4, !tbaa !38
  store float %i.ew, ptr %i.eu, align 4, !tbaa !38
  %i.ex = getelementptr inbounds nuw i8, ptr %.2160.us, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.noexc132.us, !llvm.loop !76

.unr-lcssa:                                       ; preds = %.noexc132.us
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.noexc132.us.epil.preheader

.noexc132.us.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.2160.us.epil.init = phi ptr [ %.1162.us, %.preheader.us ], [ %i.ex, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod251)
  br label %.noexc132.us.epil

.noexc132.us.epil:                                ; preds = %.noexc132.us.epil, %.noexc132.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.noexc132.us.epil.preheader ], [ %indvars.iv.next.epil, %.noexc132.us.epil ] ; 2 uses
  %.2160.us.epil = phi ptr [ %.2160.us.epil.init, %.noexc132.us.epil.preheader ], [ %i.fa, %.noexc132.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.noexc132.us.epil.preheader ], [ %epil.iter.next, %.noexc132.us.epil ] ; 2 uses
  %i.ey = add nuw nsw i64 %indvars.iv.epil, %indvars.iv177
  %.reass.us.epil = mul i64 %factor.op.mul, %i.ey
  %gep.us.epil = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.epil
  %i.ez = load float, ptr %gep.us.epil, align 4, !tbaa !38
  store float %i.ez, ptr %.2160.us.epil, align 4, !tbaa !38
  %i.fa = getelementptr inbounds nuw i8, ptr %.2160.us.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.noexc132.us.epil, !llvm.loop !77

.epilog-lcssa:                                    ; preds = %.noexc132.us.epil, %.unr-lcssa
  %.lcssa = phi ptr [ %i.ex, %.unr-lcssa ], [ %i.fa, %.noexc132.us.epil ] ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !78

.preheader.us:                                    ; preds = %.preheader158.us, %.epilog-lcssa
  %indvars.iv172 = phi i64 [ 0, %.preheader158.us ], [ %indvars.iv.next173, %.epilog-lcssa ] ; 2 uses
  %.1162.us = phi ptr [ %.041164.us, %.preheader158.us ], [ %.lcssa, %.epilog-lcssa ] ; 2 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv172 ; 5 uses
  br i1 %i.dk, label %.noexc132.us.epil.preheader, label %.noexc132.us

._crit_edge.us:                                   ; preds = %.epilog-lcssa
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, %i.dj ; 2 uses
  %16 = trunc i64 %indvars.iv.next178 to i32
  %17 = add i32 %i.di, %16
  %18 = icmp slt i32 %17, %i.bo
  br i1 %18, label %.preheader158.us, label %._crit_edge166, !llvm.loop !79

._crit_edge166:                                   ; preds = %._crit_edge.us, %.preheader158.lr.ph
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %._crit_edge.split, label %.preheader158.lr.ph, !llvm.loop !80

bb.ax:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i64 0, ptr %i.fi, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.fd, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.fg, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fh, i8 0, i64 28, i1 false)
  %i.fj = load ptr, ptr %i.cn, align 8, !tbaa !17 ; 2 uses
  %.not.i142 = icmp eq ptr %i.fj, null
  br i1 %.not.i142, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fl = atomicrmw add ptr %i.fj, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.fk, align 8, !tbaa !17 ; 2 uses
  %.not.i.i143 = icmp eq ptr %.pre, null
  br i1 %.not.i.i143, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %bb.az
  %i.fo = load ptr, ptr %i.fd, align 16, !tbaa !18 ; 3 uses
  %.not3.i.i144 = icmp eq ptr %i.fo, null
  %i.fp = load ptr, ptr %12, align 16, !tbaa !19  ; 3 uses
  br i1 %.not3.i.i144, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef %i.fp)
          to label %.thread unwind label %bb.cf, !inline_history !81

bb.bc:                                            ; preds = %bb.ba
  %.not.i18.i145 = icmp eq ptr %i.fp, null
  br i1 %.not.i18.i145, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.fp) #9
  br label %.thread

.thread:                                          ; preds = %bb.ax, %bb.az, %bb.ay, %bb.bb, %bb.bd, %bb.bc
  %i.ft = load <2 x ptr>, ptr %10, align 16, !tbaa !89
  store <2 x ptr> %i.ft, ptr %12, align 16, !tbaa !89
  %i.fu = load i64, ptr %i.co, align 16, !tbaa !52
  store i64 %i.fu, ptr %i.fb, align 16, !tbaa !52
  %i.fv = load i32, ptr %i.cp, align 8, !tbaa !54
  store i32 %i.fv, ptr %i.fc, align 8, !tbaa !54
  %i.fw = load ptr, ptr %i.cq, align 16, !tbaa !18
  store ptr %i.fw, ptr %i.fd, align 16, !tbaa !18
  %i.fx = load <4 x i32>, ptr %i.cr, align 8, !tbaa !55
  store <4 x i32> %i.fx, ptr %i.fe, align 8, !tbaa !55
  %i.fy = load i32, ptr %i.ct, align 8, !tbaa !56
  store i32 %i.fy, ptr %i.ff, align 8, !tbaa !56
  %i.fz = load i64, ptr %i.cu, align 16, !tbaa !20
  store i64 %i.fz, ptr %i.fg, align 16, !tbaa !20
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !17 ; 2 uses
  %.not.i135 = icmp eq ptr %i.gc, null
  br i1 %.not.i135, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.thread
  %i.gd = atomicrmw add ptr %i.gc, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.gf = load ptr, ptr %i.ge, align 16, !tbaa !17 ; 2 uses
  %.not.i.i136 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i136, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gg = atomicrmw add ptr %i.gf, i32 -1 acq_rel, align 4
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !18 ; 3 uses
  %.not3.i.i137 = icmp eq ptr %i.gj, null
  %i.gk = load ptr, ptr %.ptr.1, align 8, !tbaa !19 ; 3 uses
  br i1 %.not3.i.i137, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef %i.gk)
          to label %bb.bl unwind label %bb.cf, !inline_history !81

bb.bj:                                            ; preds = %bb.bh
  %.not.i18.i138 = icmp eq ptr %i.gk, null
  br i1 %.not.i18.i138, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.gk) #9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bg, %bb.bf, %bb.bi, %bb.bk, %bb.bj
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.gt = load <2 x ptr>, ptr %i.ga, align 8, !tbaa !89
  store <2 x ptr> %i.gt, ptr %.ptr.1, align 8, !tbaa !89
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !52
  store i64 %i.gv, ptr %i.go, align 8, !tbaa !52
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !54
  store i32 %i.gx, ptr %i.gp, align 16, !tbaa !54
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %12, i64 104
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.hc = load <4 x i32>, ptr %i.hb, align 8, !tbaa !55
  store <4 x i32> %i.hc, ptr %i.gq, align 16, !tbaa !55
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !56
  store i32 %i.he, ptr %i.gr, align 16, !tbaa !56
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !20
  store i64 %i.hg, ptr %i.gs, align 8, !tbaa !20
  %i.hh = load ptr, ptr %i.cc, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  invoke void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %12)
          to label %bb.bm unwind label %bb.cg

bb.bm:                                            ; preds = %bb.bl
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !11
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = invoke noundef i32 %i.hk(ptr noundef nonnull align 8 dereferenceable(208) %i.hh, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bn unwind label %bb.ch     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ho = load ptr, ptr %i.hn, align 16, !tbaa !17 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ho, null
  br i1 %.not.i82, label %_ZN4ncnn3MatD2Ev.exit75, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hp = atomicrmw add ptr %i.ho, i32 -1 acq_rel, align 4
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit75

bb.bp:                                            ; preds = %bb.bo
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !18 ; 3 uses
  %.not3.i83 = icmp eq ptr %i.hs, null
  %i.ht = load ptr, ptr %i.hm, align 8, !tbaa !19 ; 3 uses
  br i1 %.not3.i83, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !11
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  invoke void %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef %i.ht)
          to label %_ZN4ncnn3MatD2Ev.exit75 unwind label %bb.bt, !inline_history !0

bb.br:                                            ; preds = %bb.bp
  %.not.i126 = icmp eq ptr %i.ht, null
  br i1 %.not.i126, label %_ZN4ncnn3MatD2Ev.exit75, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.ht) #9
  br label %_ZN4ncnn3MatD2Ev.exit75

bb.bt:                                            ; preds = %bb.bw, %bb.bq
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit75:                          ; preds = %bb.bo, %bb.bn, %bb.bq, %bb.br, %bb.bs
end_hunk_0
