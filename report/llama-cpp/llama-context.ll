Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-context?download=true
inline.NumInlined: 3997
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN13llama_context6decodeERK11llama_batch:bb.a
  br i1 %i.te, label %bb.dh, label %.loopexit544, !llvm.loop !874

bb.dr:                                            ; preds = %.critedge.i458, %bb.dk, %.critedge.i439, %bb.dp
  %i.tf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %.body

bb.ds:                                            ; preds = %bb.cn
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef 1943, ptr noundef nonnull @.str.108) #33
          to label %bb.dt unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  unreachable

.loopexit544:                                     ; preds = %bb.dq, %bb.de, %bb.dg, %.preheader543, %bb.cn, %bb.ct, %bb.cq, %bb.ck, %_ZL16needs_raw_logitsRK12llama_ubatchRKSt3mapIiP13llama_samplerSt4lessIiESaISt4pairIKiS4_EEE.exit
  %i.tg = getelementptr inbounds nuw i8, ptr %i.jm, i64 4 ; 3 uses
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !459
  %i.ti = zext i32 %i.th to i64
  invoke void @_ZN13llama_context20extract_layer_inputsEPK16llm_graph_resultmm(ptr noundef nonnull align 8 dereferenceable(996) %0, ptr noundef nonnull %i.kj, i64 noundef %.0265, i64 noundef %i.ti)
          to label %bb.du unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.du:                                            ; preds = %.loopexit544
  %i.tj = load i8, ptr %i.gl, align 2, !tbaa !230, !range !226, !noundef !227
  %i.tk = trunc nuw i8 %i.tj to i1                ; 2 uses
  %.0267..0265 = select i1 %i.tk, i64 %.0267, i64 %.0265 ; 2 uses
  %. = select i1 %i.tk, ptr %i.fz, ptr %i.tg
  %.in = load i32, ptr %., align 4, !tbaa !199    ; 2 uses
  %i.tl = zext i32 %.in to i64                    ; 2 uses
  %i.tm = load ptr, ptr %i.gm, align 8, !tbaa !359
  %i.tn = icmp ne ptr %i.tm, null
  %i.to = icmp ne ptr %i.mn, null
  %or.cond11 = and i1 %i.to, %i.tn
  %i.tp = icmp ne i32 %.in, 0
  %or.cond13 = select i1 %or.cond11, i1 %i.tp, i1 false
  br i1 %or.cond13, label %bb.dv, label %bb.eb

bb.dv:                                            ; preds = %bb.du
  %i.tq = load i32, ptr %i.gi, align 8, !tbaa !236
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.ts = load ptr, ptr %i.gd, align 8, !tbaa !365
  %i.tt = invoke ptr @ggml_backend_sched_get_tensor_backend(ptr noundef %i.ts, ptr noundef nonnull %i.mn)
          to label %bb.dx unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dx:                                            ; preds = %bb.dw
  %.not365 = icmp eq ptr %i.tt, null
  br i1 %.not365, label %.invoke, label %bb.dy

.invoke:                                          ; preds = %bb.dz, %bb.dx, %bb.cs, %bb.cr, %bb.co, %bb.cm, %bb.ci, %bb.ch, %bb.cf, %bb.ce
  %i.tu = phi i32 [ 1903, %bb.cs ], [ 1959, %bb.dx ], [ 1876, %bb.ce ], [ 1882, %bb.ch ], [ 1877, %bb.cf ], [ 1891, %bb.cm ], [ 1883, %bb.ci ], [ 1902, %bb.cr ], [ 1897, %bb.co ], [ 1964, %bb.dz ]
  %i.tv = phi ptr [ @.str.124, %bb.cs ], [ @.str.109, %bb.dx ], [ @.str.103, %bb.ce ], [ @.str.122, %bb.ch ], [ @.str.104, %bb.cf ], [ @.str.105, %bb.cm ], [ @.str.123, %bb.ci ], [ @.str.122, %bb.cr ], [ @.str.106, %bb.co ], [ @.str.125, %bb.dz ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef %i.tu, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.tv) #33
          to label %.cont unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.dy:                                            ; preds = %bb.dx
  %i.tw = invoke noundef i32 @_ZNK13llama_hparams10n_embd_outEv(ptr noundef nonnull align 8 dereferenceable(36056) %i.p)
          to label %bb.dz unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dz:                                            ; preds = %bb.dy
  %i.tx = zext i32 %i.tw to i64                   ; 3 uses
  %i.ty = add nuw nsw i64 %.0267..0265, %i.tl
  %i.tz = mul nuw nsw i64 %i.ty, %i.tx
  %i.ua = load i64, ptr %i.gn, align 8, !tbaa !355
  %.not366 = icmp sgt i64 %i.tz, %i.ua
  br i1 %.not366, label %.invoke, label %bb.ea

.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dw, %.loopexit544, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.cu, %_ZL22ctx_type_to_graph_type18llama_context_type.exit, %.loopexit, %bb.cj, %bb.cl, %bb.cp, %bb.ct, %bb.dy, %bb.ea, %.invoke, %bb.bj, %bb.ds
  %lpad.loopexit.split-lp881 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ea:                                            ; preds = %bb.dz
  %i.ub = load ptr, ptr %i.gm, align 8, !tbaa !359
  %i.uc = mul nuw nsw i64 %.0267..0265, %i.tx
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.uc
  %i.ue = shl nuw nsw i64 %i.tl, 2
  %i.uf = mul i64 %i.ue, %i.tx
  invoke void @ggml_backend_tensor_get_async(ptr noundef nonnull %i.tt, ptr noundef nonnull %i.mn, ptr noundef %i.ud, i64 noundef 0, i64 noundef %i.uf)
          to label %bb.eb unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eb:                                            ; preds = %bb.ea, %bb.dv, %bb.du
  br i1 %i.ak, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ug = getelementptr inbounds nuw i8, ptr %i.kj, i64 80
  %i.uh = trunc i64 %.0267 to i32                 ; 4 uses
  %i.ui = load ptr, ptr %i.gd, align 8, !tbaa !365
  invoke fastcc void @_ZL22copy_tensor_async_rowsIiEvRKSt6vectorIP11ggml_tensorSaIS2_EERK11buffer_viewIT_EmjP18ggml_backend_schedPS0_IjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ug, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 noundef 1, i32 noundef %i.uh, ptr noundef %i.ui, ptr noundef null)
          to label %bb.ed unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ed:                                            ; preds = %bb.ec
  %i.uj = getelementptr inbounds nuw i8, ptr %i.kj, i64 128
  %i.uk = load ptr, ptr %i.gd, align 8, !tbaa !365
  invoke fastcc void @_ZL22copy_tensor_async_rowsIfEvRKSt6vectorIP11ggml_tensorSaIS2_EERK11buffer_viewIT_EmjP18ggml_backend_schedPS0_IjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %i.uj, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 noundef %i.r, i32 noundef %i.uh, ptr noundef %i.uk, ptr noundef %i.gq)
          to label %bb.ee unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %bb.ed
  %i.ul = getelementptr inbounds nuw i8, ptr %i.kj, i64 104
  %i.um = load ptr, ptr %i.gd, align 8, !tbaa !365
  invoke fastcc void @_ZL22copy_tensor_async_rowsIfEvRKSt6vectorIP11ggml_tensorSaIS2_EERK11buffer_viewIT_EmjP18ggml_backend_schedPS0_IjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ul, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 noundef %i.r, i32 noundef %i.uh, ptr noundef %i.um, ptr noundef %i.gs)
          to label %bb.ef unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ef:                                            ; preds = %bb.ee
  %i.un = getelementptr inbounds nuw i8, ptr %i.kj, i64 152
  %i.uo = load ptr, ptr %i.gd, align 8, !tbaa !365
  invoke fastcc void @_ZL22copy_tensor_async_rowsIiEvRKSt6vectorIP11ggml_tensorSaIS2_EERK11buffer_viewIT_EmjP18ggml_backend_schedPS0_IjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %i.un, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i64 noundef %i.r, i32 noundef %i.uh, ptr noundef %i.uo, ptr noundef nonnull %i.gu)
          to label %bb.eg unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit564.loopexit:                            ; preds = %bb.bn
  br label %.loopexit564

.loopexit564.loopexit883:                         ; preds = %bb.bn
  br label %.loopexit564

.loopexit564:                                     ; preds = %bb.bn, %.loopexit564.loopexit883, %.loopexit564.loopexit
  %.9.ph = phi i32 [ 2, %.loopexit564.loopexit ], [ %i.ls, %.loopexit564.loopexit883 ], [ -3, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i465

bb.eg:                                            ; preds = %bb.eb, %bb.ef
  %i.up = load i32, ptr %i.fz, align 8, !tbaa !194
  %i.uq = load i32, ptr %i.tg, align 4, !tbaa !459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ur = load ptr, ptr %i.ev, align 8, !tbaa !329
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.ut = load ptr, ptr %i.us, align 8
  %i.uu = invoke noundef zeroext i1 %i.ut(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %bb.eh unwind label %.loopexit.split-lp555.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eh:                                            ; preds = %bb.eg
  %i.uv = zext i32 %i.uq to i64
  %i.uw = add nuw nsw i64 %.0265, %i.uv
  %i.ux = zext i32 %i.up to i64
  %i.uy = add nuw nsw i64 %.0267, %i.ux
  br i1 %i.uu, label %bb.bf, label %bb.ei, !llvm.loop !875

bb.ei:                                            ; preds = %bb.eh
  store i32 %i.di, ptr %i.fz, align 8, !tbaa !194
  %.not374 = icmp eq i32 %i.di, 0
  br i1 %.not374, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i465, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.uz = load ptr, ptr %i.db, align 8, !tbaa !77
  %i.va = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN18llama_batch_allocr11get_out_idsEv(ptr noundef nonnull align 8 dereferenceable(444) %i.uz)
          to label %bb.ek unwind label %.loopexit.split-lp555.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.ek:                                            ; preds = %bb.ej
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !341
  %i.vd = load ptr, ptr %i.va, align 8, !tbaa !342 ; 2 uses
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.ve, %i.vf
  %i.vh = ashr exact i64 %i.vg, 2                 ; 2 uses
  %i.vi = load i32, ptr %i.fz, align 8, !tbaa !194 ; 2 uses
  %i.vj = zext i32 %i.vi to i64
  %i.vk = icmp eq i64 %i.vh, %i.vj
  br i1 %i.vk, label %.preheader542, label %.invoke830

.preheader542:                                    ; preds = %bb.ek
  %.not654 = icmp eq i32 %i.vi, 0
  br i1 %.not654, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i465, label %.lr.ph634

.lr.ph634:                                        ; preds = %.preheader542
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !342
  br label %bb.el

.invoke830:                                       ; preds = %bb.ek, %bb.em
  %i.vn = phi i32 [ 2005, %bb.em ], [ 1992, %bb.ek ]
  %i.vo = phi ptr [ @.str.127, %bb.em ], [ @.str.126, %bb.ek ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.71, i32 noundef %i.vn, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.vo) #33
          to label %.cont831 unwind label %.loopexit.split-lp555.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont831:                                         ; preds = %.invoke830
  unreachable

.body:                                            ; preds = %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bk, %bb.df, %bb.dr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn370.pn = phi { ptr, i32 } [ %i.tf, %bb.dr ], [ %lpad.loopexit.split-lp876, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.rd, %bb.df ], [ %i.ki, %bb.bk ], [ %lpad.loopexit.split-lp881, %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.loopexit.split-lp555

.loopexit.split-lp555.loopexit.loopexit.split-lp: ; preds = %.lr.ph620
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp555

.loopexit.split-lp555.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.eg, %bb.bf, %bb.aq, %bb.au, %bb.aw, %bb.ax, %.invoke870, %.invoke830, %bb.ej, %bb.as, %bb.ay, %bb.az, %bb.ba, %bb.bb
  %lpad.loopexit.split-lp892 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i468

._crit_edge:                                      ; preds = %bb.el
  %12 = icmp ult i32 %i.vv, 2
  %or.cond390.not = or i1 %spec.select, %12
  br i1 %or.cond390.not, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i465, label %bb.em

bb.el:                                            ; preds = %.lr.ph634, %bb.el
  %.0253633 = phi i64 [ 0, %.lr.ph634 ], [ %i.vu, %bb.el ] ; 4 uses
  %.0254632 = phi i1 [ true, %.lr.ph634 ], [ %spec.select, %bb.el ]
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %.0253633
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !199
  %i.vr = sext i32 %i.vq to i64                   ; 2 uses
  %i.vs = trunc nuw i64 %.0253633 to i32
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.vr
  store i32 %i.vs, ptr %i.vt, align 4, !tbaa !199
  %.not378 = icmp eq i64 %.0253633, %i.vr
  %spec.select = select i1 %.not378, i1 %.0254632, i1 false ; 2 uses
  %i.vu = add nuw nsw i64 %.0253633, 1            ; 2 uses
  %i.vv = load i32, ptr %i.fz, align 8, !tbaa !194 ; 3 uses
  %i.vw = zext i32 %i.vv to i64                   ; 2 uses
  %i.vx = icmp samesign ult i64 %i.vu, %i.vw
  br i1 %i.vx, label %bb.el, label %._crit_edge, !llvm.loop !876

bb.em:                                            ; preds = %._crit_edge
  %i.vy = icmp eq i64 %i.vh, %i.vw
  br i1 %i.vy, label %.lr.ph645, label %.invoke830

.lr.ph645:                                        ; preds = %bb.em
  %i.vz = getelementptr inbounds nuw i8, ptr %11, i64 4
  br label %bb.en

._crit_edge646:                                   ; preds = %bb.eq
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !356 ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !356 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.wb, %i.wd
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i462.preheader

.lr.ph.i.i.i.i462.preheader:                      ; preds = %._crit_edge646
  %i.we = ptrtoaddr ptr %i.wd to i64
  %i.wf = ptrtoaddr ptr %i.wb to i64
  %i.wg = add i64 %i.we, -4
  %i.wh = sub i64 %i.wg, %i.wf
  %i.wi = and i64 %i.wh, -4
  %i.wj = add i64 %i.wi, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.wb, i8 -1, i64 %i.wj, i1 false), !tbaa !199
  %.pre737 = load i32, ptr %i.fz, align 8, !tbaa !194
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

bb.en:                                            ; preds = %.lr.ph645, %bb.eq
  %i.wk = phi i32 [ %i.vv, %.lr.ph645 ], [ %i.yd, %bb.eq ] ; 5 uses
  %indvars.iv729 = phi i64 [ 0, %.lr.ph645 ], [ %indvars.iv.next730, %bb.eq ] ; 7 uses
  %indvars.iv723 = phi i64 [ 1, %.lr.ph645 ], [ %indvars.iv.next724, %bb.eq ] ; 3 uses
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 3 uses
  %i.wl = zext i32 %i.wk to i64
  %i.wm = icmp samesign ult i64 %indvars.iv.next730, %i.wl
  %i.wn = trunc nuw i64 %indvars.iv729 to i32     ; 4 uses
  br i1 %i.wm, label %.lr.ph641, label %._crit_edge642

.lr.ph641:                                        ; preds = %bb.en
  %i.wo = trunc i64 %indvars.iv729 to i32
  %i.wp = trunc i64 %indvars.iv729 to i32
  %i.wq = xor i32 %i.wp, -1
  %i.wr = load ptr, ptr %i.va, align 8, !tbaa !342 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv729
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !199 ; 2 uses
  %i.ws = add i32 %i.wk, %i.wq
  %reass.sub = sub i32 %i.wk, %i.wo
  %i.wt = add i32 %reass.sub, -2
  %xtraiter916 = and i32 %i.ws, 3                 ; 2 uses
  %lcmp.mod917.not = icmp eq i32 %xtraiter916, 0
  br i1 %lcmp.mod917.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph641, %.prol.preheader
  %i.wu = phi i32 [ %i.wz, %.prol.preheader ], [ %.pre, %.lr.ph641 ] ; 2 uses
  %indvars.iv725.prol = phi i64 [ %indvars.iv.next726.prol, %.prol.preheader ], [ %indvars.iv723, %.lr.ph641 ] ; 3 uses
  %.0250638.prol = phi i32 [ %spec.select391.prol, %.prol.preheader ], [ %i.wn, %.lr.ph641 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph641 ]
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv725.prol
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !199 ; 2 uses
  %i.wx = icmp slt i32 %i.ww, %i.wu
  %i.wy = trunc nuw i64 %indvars.iv725.prol to i32
  %spec.select391.prol = select i1 %i.wx, i32 %i.wy, i32 %.0250638.prol ; 3 uses
  %indvars.iv.next726.prol = add nuw nsw i64 %indvars.iv725.prol, 1 ; 2 uses
  %i.wz = call i32 @llvm.smin.i32(i32 %i.ww, i32 %i.wu) ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter916
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !877

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph641
  %spec.select391.lcssa.unr = phi i32 [ poison, %.lr.ph641 ], [ %spec.select391.prol, %.prol.preheader ]
  %.unr = phi i32 [ %.pre, %.lr.ph641 ], [ %i.wz, %.prol.preheader ]
  %indvars.iv725.unr = phi i64 [ %indvars.iv723, %.lr.ph641 ], [ %indvars.iv.next726.prol, %.prol.preheader ]
  %.0250638.unr = phi i32 [ %i.wn, %.lr.ph641 ], [ %spec.select391.prol, %.prol.preheader ]
  %i.xa = icmp ult i32 %i.wt, 3
  br i1 %i.xa, label %._crit_edge642, label %.lr.ph641.new

._crit_edge642:                                   ; preds = %.prol.loopexit, %.lr.ph641.new, %bb.en
  %.0250.lcssa = phi i32 [ %i.wn, %bb.en ], [ %spec.select391.lcssa.unr, %.prol.loopexit ], [ %spec.select391.3, %.lr.ph641.new ] ; 2 uses
  %i.xb = zext i32 %.0250.lcssa to i64            ; 2 uses
  %i.xc = icmp eq i64 %indvars.iv729, %i.xb
  br i1 %i.xc, label %bb.eq, label %bb.eo

.lr.ph641.new:                                    ; preds = %.prol.loopexit, %.lr.ph641.new
  %i.xd = phi i32 [ %i.xx, %.lr.ph641.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv725 = phi i64 [ %indvars.iv.next726.3, %.lr.ph641.new ], [ %indvars.iv725.unr, %.prol.loopexit ] ; 6 uses
  %.0250638 = phi i32 [ %spec.select391.3, %.lr.ph641.new ], [ %.0250638.unr, %.prol.loopexit ]
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv725
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !199 ; 2 uses
  %i.xg = icmp slt i32 %i.xf, %i.xd
  %i.xh = trunc nuw i64 %indvars.iv725 to i32
  %spec.select391 = select i1 %i.xg, i32 %i.xh, i32 %.0250638
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %i.xi = call i32 @llvm.smin.i32(i32 %i.xf, i32 %i.xd) ; 2 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv.next726
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !199 ; 2 uses
  %i.xl = icmp slt i32 %i.xk, %i.xi
  %i.xm = trunc nuw i64 %indvars.iv.next726 to i32
  %spec.select391.1 = select i1 %i.xl, i32 %i.xm, i32 %spec.select391
  %indvars.iv.next726.1 = add nuw nsw i64 %indvars.iv725, 2 ; 2 uses
  %i.xn = call i32 @llvm.smin.i32(i32 %i.xk, i32 %i.xi) ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv.next726.1
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !199 ; 2 uses
  %i.xq = icmp slt i32 %i.xp, %i.xn
  %i.xr = trunc nuw i64 %indvars.iv.next726.1 to i32
  %spec.select391.2 = select i1 %i.xq, i32 %i.xr, i32 %spec.select391.1
  %indvars.iv.next726.2 = add nuw nsw i64 %indvars.iv725, 3 ; 2 uses
  %i.xs = call i32 @llvm.smin.i32(i32 %i.xp, i32 %i.xn) ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv.next726.2
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !199 ; 2 uses
  %i.xv = icmp slt i32 %i.xu, %i.xs
  %i.xw = trunc nuw i64 %indvars.iv.next726.2 to i32
  %spec.select391.3 = select i1 %i.xv, i32 %i.xw, i32 %spec.select391.2 ; 2 uses
  %indvars.iv.next726.3 = add nuw nsw i64 %indvars.iv725, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next726.3 to i32
  %exitcond728.not.3 = icmp eq i32 %i.wk, %lftr.wideiv.3
  %i.xx = call i32 @llvm.smin.i32(i32 %i.xu, i32 %i.xs)
  br i1 %exitcond728.not.3, label %._crit_edge642, label %.lr.ph641.new, !llvm.loop !878

bb.eo:                                            ; preds = %._crit_edge642
  %i.xy = load ptr, ptr %i.va, align 8, !tbaa !342 ; 2 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %indvars.iv729 ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.xb ; 2 uses
  %i.yb = load i32, ptr %i.xz, align 4, !tbaa !199
  %i.yc = load i32, ptr %i.ya, align 4, !tbaa !199
  store i32 %i.yc, ptr %i.xz, align 4, !tbaa !199
  store i32 %i.yb, ptr %i.ya, align 4, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store i32 %i.wn, ptr %11, align 4, !tbaa !412
  store i32 %.0250.lcssa, ptr %i.vz, align 4, !tbaa !413
  invoke void @_ZNSt6vectorIN13llama_context9swap_infoESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.ep unwind label %bb.er

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %.pre736 = load i32, ptr %i.fz, align 8, !tbaa !194
  br label %bb.eq

bb.eq:                                            ; preds = %._crit_edge642, %bb.ep
  %i.yd = phi i32 [ %i.wk, %._crit_edge642 ], [ %.pre736, %bb.ep ] ; 3 uses
  %i.ye = add i32 %i.yd, -1
  %i.yf = zext i32 %i.ye to i64
  %i.yg = icmp samesign ult i64 %indvars.iv.next730, %i.yf
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1
  br i1 %i.yg, label %bb.en, label %._crit_edge646, !llvm.loop !879

bb.er:                                            ; preds = %bb.eo
  %i.yh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.loopexit.split-lp555

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i462.preheader, %._crit_edge646
  %i.yi = phi i32 [ %.pre737, %.lr.ph.i.i.i.i462.preheader ], [ %i.yd, %._crit_edge646 ]
  %.not656 = icmp eq i32 %i.yi, 0
  br i1 %.not656, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i465, label %.lr.ph648

.lr.ph648:                                        ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  %i.yj = load ptr, ptr %i.va, align 8, !tbaa !342
  br label %bb.es

bb.es:                                            ; preds = %.lr.ph648, %bb.es
  %indvars.iv732 = phi i64 [ 0, %.lr.ph648 ], [ %indvars.iv.next733, %bb.es ] ; 3 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv732
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !199
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.ym
  %i.yo = trunc nuw i64 %indvars.iv732 to i32
  store i32 %i.yo, ptr %i.yn, align 4, !tbaa !199
  %indvars.iv.next733 = add nuw nsw i64 %indvars.iv732, 1 ; 2 uses
  %i.yp = load i32, ptr %i.fz, align 8, !tbaa !194
  %i.yq = zext i32 %i.yp to i64
  %i.yr = icmp samesign ult i64 %indvars.iv.next733, %i.yq
  br i1 %i.yr, label %bb.es, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i465, !llvm.loop !880

_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i465: ; preds = %bb.es, %.invoke870, %.preheader542, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %._crit_edge, %.loopexit564, %bb.az, %bb.ei
  %.13518 = phi i32 [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ 0, %bb.ei ], [ -2, %.invoke870 ], [ 1, %bb.az ], [ 0, %.preheader542 ], [ 0, %._crit_edge ], [ %.9.ph, %.loopexit564 ], [ 0, %bb.es ]
  %i.ys = load ptr, ptr %i.ev, align 8, !tbaa !329
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(8) %i.ev) #30, !inline_history !3
  br label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit466

.loopexit.split-lp555:                            ; preds = %.loopexit.split-lp555.loopexit.loopexit.split-lp, %.body, %bb.er, %bb.ap
  %.sroa.0473.1 = phi ptr [ %i.ev, %bb.er ], [ %.sroa.0473.0, %bb.ap ], [ %i.ev, %.body ], [ %i.ev, %.loopexit.split-lp555.loopexit.loopexit.split-lp ] ; 2 uses
  %.pn379 = phi { ptr, i32 } [ %i.yh, %bb.er ], [ %i.fc, %bb.ap ], [ %.pn370.pn, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp555.loopexit.loopexit.split-lp ] ; 2 uses
  %.not.i467 = icmp eq ptr %.sroa.0473.1, null
  br i1 %.not.i467, label %_ZNSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EED2Ev.exit469, label %_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i468

_ZNKSt14default_deleteI22llama_memory_context_iEclEPS0_.exit.i468: ; preds = %.loopexit.split-lp555.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp555
  %.pn379801 = phi { ptr, i32 } [ %.pn379, %.loopexit.split-lp555 ], [ %lpad.loopexit.split-lp892, %.loopexit.split-lp555.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0473.1800 = phi ptr [ %.sroa.0473.1, %.loopexit.split-lp555 ], [ %i.ev, %.loopexit.split-lp555.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.yv = load ptr, ptr %.sroa.0473.1800, align 8, !tbaa !329
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8
  call void %i.yx(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0473.1800) #30, !inline_history !3
end_hunk_0
