Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFSpectralHash?download=true
inline.NumInlined: 808
inline.NumDeleted: 313
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5faiss20IndexIVFSpectralHash13train_encoderElPKfPKl:bb.a
  %.sroa.0170.0 = phi ptr [ %i.ap, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ap, %.noexc110 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !76 ; 2 uses
  %i.aw = load i64, ptr %i.ah, align 8, !tbaa !74
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(36) %i.av, i64 noundef 0, i64 noundef %i.aw, ptr noundef %.sroa.0170.0)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.bb = load i64, ptr %i.ah, align 8, !tbaa !74 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !64
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.bb, %i.be                    ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !77 ; 2 uses
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !70 ; 5 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 3 uses
  %i.bn = icmp ugt i64 %i.bf, %i.bm
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = sub nuw i64 %i.bf, %i.bm
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bo)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge unwind label %bb.s

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge:    ; preds = %bb.o
  %.pre = load i64, ptr %i.ah, align 8, !tbaa !74
  %.pre227 = load ptr, ptr %i.ba, align 8, !tbaa !70
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = icmp ult i64 %i.bf, %i.bm
  br i1 %i.bp, label %bb.q, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bf ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bq
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.q
  store ptr %i.bq, ptr %i.bg, align 8, !tbaa !77
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.q, %bb.p
  %i.br = phi ptr [ %.pre227, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.bi, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.bi, %bb.q ], [ %i.bi, %bb.p ]
  %i.bs = phi i64 [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.bb, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.bb, %bb.q ], [ %i.bb, %bb.p ]
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !63  ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  invoke void %i.bw(ptr noundef nonnull align 8 dereferenceable(17) %i.bt, i64 noundef %i.bs, ptr noundef %.sroa.0170.0, ptr noundef %i.br)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bx = load i32, ptr %i.af, align 4, !tbaa !69
  %i.by = icmp eq i32 %i.bx, 2
  br i1 %i.by, label %.preheader176, label %.loopexit

.preheader176:                                    ; preds = %bb.r
  %i.bz = load i64, ptr %i.ah, align 8, !tbaa !74 ; 2 uses
  %i.ca = load i32, ptr %i.bc, align 4, !tbaa !64
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = mul i64 %i.bz, %i.cb                    ; 7 uses
  %.not201 = icmp eq i64 %i.cc, 0
  br i1 %.not201, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader176
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !70 ; 6 uses
  %min.iters.check = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cf = mul i64 %i.bz, %i.cb
  %i.cg = shl i64 %i.cf, 2
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 300
  %bound0 = icmp ult ptr %i.ce, %i.ci
  %bound1 = icmp ult ptr %i.cd, %i.ch
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, -8                      ; 3 uses
  %i.cj = load <1 x float>, ptr %i.cd, align 8
  %broadcast.splat = shufflevector <1 x float> %i.cj, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ck = fpext <4 x float> %broadcast.splat to <4 x double> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cl, align 4, !tbaa !65, !alias.scope !179, !noalias !180
  %wide.load271 = load <4 x float>, ptr %i.cm, align 4, !tbaa !65, !alias.scope !179, !noalias !180
  %i.cn = fpext <4 x float> %wide.load to <4 x double>
  %i.co = fpext <4 x float> %wide.load271 to <4 x double>
  %i.cp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ck, <4 x double> splat (double -2.500000e-01), <4 x double> %i.cn)
  %i.cq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ck, <4 x double> splat (double -2.500000e-01), <4 x double> %i.co)
  %i.cr = fptrunc <4 x double> %i.cp to <4 x float>
  %i.cs = fptrunc <4 x double> %i.cq to <4 x float>
  store <4 x float> %i.cr, ptr %i.cl, align 4, !tbaa !65, !alias.scope !179, !noalias !180
  store <4 x float> %i.cs, ptr %i.cm, align 4, !tbaa !65, !alias.scope !179, !noalias !180
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.080177.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.080177.ph, 1
  %xtraiter = and i64 %i.cc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cu = load float, ptr %i.cd, align 8, !tbaa !62
  %i.cv = fpext float %i.cu to double
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.080177.ph ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !65
  %i.cy = fpext float %i.cx to double
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cv, double -2.500000e-01, double %i.cy)
  %i.da = fptrunc double %i.cz to float
  store float %i.da, ptr %i.cw, align 4, !tbaa !65
  %i.db = or disjoint i64 %.080177.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.080177.unr = phi i64 [ %.080177.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %i.dc = icmp eq i64 %i.cc, %.neg
  br i1 %i.dc, label %.loopexit, label %scalar.ph

bb.s:                                             ; preds = %bb.o, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0170.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = ptrtoint ptr %.sroa.11.0 to i64
  %i.df = ptrtoint ptr %.sroa.0170.0 to i64
  %i.dg = sub i64 %i.de, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0170.0, i64 noundef %i.dg) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.080177 = phi i64 [ %i.dw, %scalar.ph ], [ %.080177.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dh = load float, ptr %i.cd, align 8, !tbaa !62
  %i.di = fpext float %i.dh to double
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.080177 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !65
  %i.dl = fpext float %i.dk to double
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.di, double -2.500000e-01, double %i.dl)
  %i.dn = fptrunc double %i.dm to float
  store float %i.dn, ptr %i.dj, align 4, !tbaa !65
  %i.do = load float, ptr %i.cd, align 8, !tbaa !62
  %i.dp = fpext float %i.do to double
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.080177
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !65
  %i.dt = fpext float %i.ds to double
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dp, double -2.500000e-01, double %i.dt)
  %i.dv = fptrunc double %i.du to float
  store float %i.dv, ptr %i.dr, align 4, !tbaa !65
  %i.dw = add nuw i64 %.080177, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dw, %i.cc
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !164

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader176, %bb.r
  %.not.i.i.i112 = icmp eq ptr %.sroa.0170.0, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIfSaIfEED2Ev.exit113, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.dx = ptrtoint ptr %.sroa.11.0 to i64
  %i.dy = ptrtoint ptr %.sroa.0170.0 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0170.0, i64 noundef %i.dz) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

bb.v:                                             ; preds = %bb.l
  %i.ea = icmp ugt i64 %1, 2305843009213693951
  %i.eb = shl nuw i64 %1, 3
  %i.ec = select i1 %i.ea, i64 -1, i64 %i.eb
  %i.ed = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ec) #28 ; 10 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !76 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(36) %i.ef, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %i.ed, i64 noundef 1)
          to label %bb.w unwind label %6

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !74 ; 3 uses
  %i.el = add i64 %i.ek, 1                        ; 4 uses
  %i.em = icmp ugt i64 %i.el, 1152921504606846975
  br i1 %i.em, label %bb.x, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc117 unwind label %bb.z

.noexc117:                                        ; preds = %bb.x
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.w
  %.not.i.i.i.i114 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.en = shl nuw nsw i64 %i.el, 3
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #28
          to label %.noexc118 unwind label %bb.z  ; 5 uses

.noexc118:                                        ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.el ; 2 uses
  store i64 0, ptr %i.eo, align 8, !tbaa !66
  %i.eq = icmp eq i64 %i.ek, 0
  br i1 %i.eq, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc118
  %i.er = getelementptr i8, ptr %i.eo, i64 8
  %.idx.i.i.i.i.i.i.i115 = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.er, i8 0, i64 %.idx.i.i.i.i.i.i.i115, i1 false), !tbaa !66
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc118, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0153.0 = phi ptr [ %i.eo, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.eo, %.noexc118 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 20 uses
  %.sroa.16.0 = phi ptr [ %i.ep, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ep, %.noexc118 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.es = icmp sgt i64 %1, 0                      ; 2 uses
  br i1 %i.es, label %.lr.ph179, label %.preheader175

.preheader175:                                    ; preds = %bb.ai, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.et = load i64, ptr %i.ej, align 8, !tbaa !74 ; 4 uses
  %.not202 = icmp eq i64 %i.et, 0
  br i1 %.not202, label %._crit_edge, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %.preheader175
  %xtraiter314 = and i64 %i.et, 3                 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 4
  br i1 %i.eu, label %.lr.ph182.epil.preheader, label %.lr.ph182.preheader.new

.lr.ph182.preheader.new:                          ; preds = %.lr.ph182.preheader
  %unroll_iter = and i64 %i.et, -4
  br label %.lr.ph182

6:                                                ; preds = %bb.v
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145

.lr.ph179:                                        ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, %bb.ai
  %.079178 = phi i64 [ %i.fs, %bb.ai ], [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.079178
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !66 ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  br i1 %i.ey, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ez, ptr %5, align 8, !tbaa !28
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.fa, align 8, !tbaa !29
  store i8 0, ptr %i.ez, align 8, !tbaa !20
  %i.fb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #20 ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.fd = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fe = add nuw nsw i64 %i.fd, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.fe)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ff = load ptr, ptr %5, align 8, !tbaa !19
  %i.fg = load i64, ptr %i.fa, align 8, !tbaa !29
  %i.fh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ff, i64 noundef %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #20 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.fd)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac, %bb.ab
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  %i.fj = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss20IndexIVFSpectralHash13train_encoderElPKfPKl, ptr noundef nonnull @.str.9, i32 noundef 118)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.av unwind label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fj) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn100 = phi { ptr, i32 } [ %i.fi, %bb.ad ], [ %i.fk, %bb.ag ]
  %i.fl = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ez
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.ah
  %i.fn = load i64, ptr %i.ez, align 8, !tbaa !20
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140

bb.ai:                                            ; preds = %.lr.ph179
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %i.ex ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !66
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !66
  %i.fs = add nuw nsw i64 %.079178, 1             ; 2 uses
  %exitcond207.not = icmp eq i64 %i.fs, %1
  br i1 %exitcond207.not, label %.preheader175, label %.lr.ph179, !llvm.loop !165

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph182
  %lcmp.mod315.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod315.not, label %._crit_edge, label %.lr.ph182.epil.preheader

.lr.ph182.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph182.preheader
  %.077181.epil.init = phi i64 [ 0, %.lr.ph182.preheader ], [ %i.go, %._crit_edge.loopexit.unr-lcssa ]
  %.078180.epil.init = phi i64 [ 0, %.lr.ph182.preheader ], [ %i.gn, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod316 = icmp ne i64 %xtraiter314, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %.lr.ph182.epil

.lr.ph182.epil:                                   ; preds = %.lr.ph182.epil, %.lr.ph182.epil.preheader
  %.077181.epil = phi i64 [ %i.fw, %.lr.ph182.epil ], [ %.077181.epil.init, %.lr.ph182.epil.preheader ] ; 2 uses
  %.078180.epil = phi i64 [ %i.fv, %.lr.ph182.epil ], [ %.078180.epil.init, %.lr.ph182.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph182.epil ], [ 0, %.lr.ph182.epil.preheader ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181.epil ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !66
  %i.fv = add i64 %i.fu, %.078180.epil
  store i64 %.078180.epil, ptr %i.ft, align 8, !tbaa !66
  %i.fw = add nuw i64 %.077181.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter314
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph182.epil, !llvm.loop !166

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph182.epil, %.preheader175
  %i.fx = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.fy = invoke noundef ptr @_ZNK5faiss15VectorTransform5applyElPKf(ptr noundef nonnull align 8 dereferenceable(17) %i.fx, i64 noundef %1, ptr noundef %2)
          to label %bb.aj unwind label %bb.an     ; 5 uses

.lr.ph182:                                        ; preds = %.lr.ph182, %.lr.ph182.preheader.new
  %.077181 = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %i.go, %.lr.ph182 ] ; 5 uses
  %.078180 = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %i.gn, %.lr.ph182 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph182.preheader.new ], [ %niter.next.3, %.lr.ph182 ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !66
  %i.gb = add i64 %i.ga, %.078180                 ; 2 uses
  store i64 %.078180, ptr %i.fz, align 8, !tbaa !66
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !66
  %i.gf = add i64 %i.ge, %i.gb                    ; 2 uses
  store i64 %i.gb, ptr %i.gd, align 8, !tbaa !66
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !66
  %i.gj = add i64 %i.gi, %i.gf                    ; 2 uses
  store i64 %i.gf, ptr %i.gh, align 8, !tbaa !66
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %.077181
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !66
  %i.gn = add i64 %i.gm, %i.gj                    ; 2 uses
  store i64 %i.gj, ptr %i.gl, align 8, !tbaa !66
  %i.go = add nuw i64 %.077181, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph182, !llvm.loop !167

bb.aj:                                            ; preds = %._crit_edge
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 4 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !64
  %i.gr = sext i32 %i.gq to i64
  %i.gs = mul nsw i64 %1, %i.gr                   ; 2 uses
  %i.gt = icmp ugt i64 %i.gs, 4611686018427387903
  %i.gu = shl i64 %i.gs, 2
  %i.gv = select i1 %i.gt, i64 -1, i64 %i.gu
  %i.gw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gv) #28
          to label %.preheader unwind label %bb.ao ; 5 uses

.preheader:                                       ; preds = %bb.aj
  %i.gx = ptrtoaddr ptr %i.gw to i64
  %.pre228 = load i32, ptr %i.gp, align 4, !tbaa !64 ; 4 uses
  %i.gy = sext i32 %.pre228 to i64                ; 8 uses
  br i1 %i.es, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.preheader
  %.not203 = icmp eq i32 %.pre228, 0
  br i1 %.not203, label %.lr.ph188.split.preheader, label %.lr.ph185.us.preheader

.lr.ph185.us.preheader:                           ; preds = %.lr.ph188
  %min.iters.check273 = icmp ugt i32 %.pre228, 7
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = and i1 %min.iters.check273, %ident.check.not
  %n.vec275 = and i64 %i.gy, -8                   ; 3 uses
  %cmp.n282 = icmp eq i64 %n.vec275, %i.gy
  %xtraiter317 = and i64 %i.gy, 3
  %i.gz = and i32 %.pre228, 3
  %lcmp.mod318.not = icmp eq i32 %i.gz, 0
  br label %.lr.ph185.us

.lr.ph188.split.preheader:                        ; preds = %.lr.ph188
  %xtraiter319 = and i64 %1, 3                    ; 3 uses
  %i.ha = icmp ult i64 %1, 4
  br i1 %i.ha, label %.lr.ph188.split.epil.preheader, label %.lr.ph188.split.preheader.new

.lr.ph188.split.preheader.new:                    ; preds = %.lr.ph188.split.preheader
  %unroll_iter323 = and i64 %1, 9223372036854775804
  br label %.lr.ph188.split

.lr.ph185.us:                                     ; preds = %.lr.ph185.us.preheader, %._crit_edge186.us
  %.075187.us = phi i64 [ %i.ip, %._crit_edge186.us ], [ 0, %.lr.ph185.us.preheader ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.075187.us
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !66
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0153.0, i64 %i.hc ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !66 ; 2 uses
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !66
  %i.hg = mul nsw i64 %.075187.us, %i.gy
  %i.hh = getelementptr [4 x i8], ptr %i.fy, i64 %i.hg ; 6 uses
  %i.hi = getelementptr [4 x i8], ptr %i.gw, i64 %i.he ; 6 uses
  br i1 %or.cond, label %vector.body276, label %scalar.ph272.preheader

vector.body276:                                   ; preds = %.lr.ph185.us, %vector.body276
  %index277 = phi i64 [ %index.next280, %vector.body276 ], [ 0, %.lr.ph185.us ] ; 3 uses
  %i.hj = getelementptr [4 x i8], ptr %i.hh, i64 %index277 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 16
  %wide.load278 = load <4 x float>, ptr %i.hj, align 4, !tbaa !65
  %wide.load279 = load <4 x float>, ptr %i.hk, align 4, !tbaa !65
  %i.hl = getelementptr [4 x i8], ptr %i.hi, i64 %index277 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  store <4 x float> %wide.load278, ptr %i.hl, align 4, !tbaa !65
end_hunk_0
begin_hunk_1_@_ZN5faiss20IndexIVFSpectralHash13train_encoderElPKfPKl:bb.a
  %min.iters.check298 = icmp ugt i32 %i.ky, 16
  %or.cond309 = and i1 %min.iters.check298, %ident.check295.not
  br i1 %or.cond309, label %vector.memcheck296, label %.peel.next.preheader311

vector.memcheck296:                               ; preds = %.peel.next.preheader
  %i.md = mul i64 %i.ks, %wide.trip.count
  %i.me = shl i64 %i.kx, 2
  %i.mf = add i64 %i.md, %i.lx
  %i.mg = add i64 %i.me, %i.gx
  %i.mh = sub i64 %i.mg, %i.mf
  %diff.check = icmp ugt i64 %i.mh, -32
  br i1 %diff.check, label %.peel.next.preheader311, label %vector.ph299

vector.ph299:                                     ; preds = %vector.memcheck296
  %n.vec300 = and i64 %i.mc, -8                   ; 3 uses
  %i.mi = or disjoint i64 %n.vec300, 1
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body301 ] ; 2 uses
  %i.mj = or disjoint i64 %index302, 1            ; 2 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.mj ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load303 = load <4 x float>, ptr %i.mk, align 4, !tbaa !65
  %wide.load304 = load <4 x float>, ptr %i.ml, align 4, !tbaa !65
  %i.mm = getelementptr [4 x i8], ptr %i.mb, i64 %i.mj ; 2 uses
  %i.mn = getelementptr i8, ptr %i.mm, i64 16
  store <4 x float> %wide.load303, ptr %i.mm, align 4, !tbaa !65
  store <4 x float> %wide.load304, ptr %i.mn, align 4, !tbaa !65
  %index.next305 = add nuw i64 %index302, 8       ; 2 uses
  %i.mo = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.mo, label %middle.block306, label %vector.body301, !llvm.loop !175

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %i.mc, %n.vec300
  br i1 %cmp.n307, label %._crit_edge192, label %.peel.next.preheader311

.peel.next.preheader311:                          ; preds = %vector.memcheck296, %.peel.next.preheader, %middle.block306
  %indvars.iv213.ph = phi i64 [ 1, %vector.memcheck296 ], [ 1, %.peel.next.preheader ], [ %i.mi, %middle.block306 ] ; 4 uses
  %i.mp = sub nsw i64 %wide.trip.count, %indvars.iv213.ph
  %xtraiter325 = and i64 %i.mp, 3                 ; 2 uses
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader311, %.peel.next.prol
  %indvars.iv213.prol = phi i64 [ %indvars.iv.next214.prol, %.peel.next.prol ], [ %indvars.iv213.ph, %.peel.next.preheader311 ] ; 3 uses
  %prol.iter327 = phi i64 [ %prol.iter327.next, %.peel.next.prol ], [ 0, %.peel.next.preheader311 ]
  %i.mq = mul nsw i64 %1, %indvars.iv213.prol
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.mq
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !65
  %i.mt = getelementptr [4 x i8], ptr %i.mb, i64 %indvars.iv213.prol
  store float %i.ms, ptr %i.mt, align 4, !tbaa !65
  %indvars.iv.next214.prol = add nuw nsw i64 %indvars.iv213.prol, 1 ; 2 uses
  %prol.iter327.next = add i64 %prol.iter327, 1   ; 2 uses
  %prol.iter327.cmp.not = icmp eq i64 %prol.iter327.next, %xtraiter325
  br i1 %prol.iter327.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !176

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol, %.peel.next.preheader311
  %indvars.iv213.unr = phi i64 [ %indvars.iv213.ph, %.peel.next.preheader311 ], [ %indvars.iv.next214.prol, %.peel.next.prol ]
  %i.mu = sub nsw i64 %indvars.iv213.ph, %wide.trip.count
  %i.mv = icmp ugt i64 %i.mu, -4
  br i1 %i.mv, label %._crit_edge192, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %.peel.next
  %indvars.iv213 = phi i64 [ %indvars.iv.next214.3, %.peel.next ], [ %indvars.iv213.unr, %.peel.next.prol.loopexit ] ; 6 uses
  %i.mw = mul nsw i64 %1, %indvars.iv213
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.mw
  %i.my = load float, ptr %i.mx, align 4, !tbaa !65
  %i.mz = getelementptr [4 x i8], ptr %i.mb, i64 %indvars.iv213
  store float %i.my, ptr %i.mz, align 4, !tbaa !65
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %i.na = mul nsw i64 %1, %indvars.iv.next214
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.na
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !65
  %i.nd = getelementptr [4 x i8], ptr %i.mb, i64 %indvars.iv.next214
  store float %i.nc, ptr %i.nd, align 4, !tbaa !65
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv213, 2 ; 2 uses
  %i.ne = mul nsw i64 %1, %indvars.iv.next214.1
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.ne
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !65
  %i.nh = getelementptr [4 x i8], ptr %i.mb, i64 %indvars.iv.next214.1
  store float %i.ng, ptr %i.nh, align 4, !tbaa !65
  %indvars.iv.next214.2 = add nuw nsw i64 %indvars.iv213, 3 ; 2 uses
  %i.ni = mul nsw i64 %1, %indvars.iv.next214.2
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.ni
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !65
  %i.nl = getelementptr [4 x i8], ptr %i.mb, i64 %indvars.iv.next214.2
  store float %i.nk, ptr %i.nl, align 4, !tbaa !65
  %indvars.iv.next214.3 = add nuw nsw i64 %indvars.iv213, 4 ; 2 uses
  %exitcond216.not.3 = icmp eq i64 %indvars.iv.next214.3, %wide.trip.count
  br i1 %exitcond216.not.3, label %._crit_edge192, label %.peel.next, !llvm.loop !177

._crit_edge192.loopexit205:                       ; preds = %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit
  %.pre229 = load i64, ptr %i.b, align 8, !tbaa !66
  br label %._crit_edge192

._crit_edge192:                                   ; preds = %.peel.next.prol.loopexit, %.peel.next, %.peel.next225, %middle.block306, %middle.block291, %.lr.ph191.split.split.us, %.lr.ph191.split.us, %._crit_edge192.loopexit205, %.split90
  %i.nm = phi i64 [ %.pre229, %._crit_edge192.loopexit205 ], [ %i.kq, %.lr.ph191.split.us ], [ %i.kq, %.split90 ], [ %i.kq, %.lr.ph191.split.split.us ], [ %i.kq, %middle.block291 ], [ %i.kq, %middle.block306 ], [ %i.kq, %.peel.next225 ], [ %i.kq, %.peel.next ], [ %i.kq, %.peel.next.prol.loopexit ] ; 2 uses
  %i.nn = add nsw i64 %.073195, 1
  %.not.not = icmp slt i64 %.073195, %i.nm
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not, label %.lr.ph199, label %._crit_edge200

_ZSt4sortIPfEvT_S1_.exit.i:                       ; preds = %.lr.ph191.split, %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit ], [ 0, %.lr.ph191.split ] ; 3 uses
  %i.no = mul nsw i64 %1, %indvars.iv
  %i.np = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.no ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.idx.i ; 2 uses
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.np, ptr noundef nonnull %i.nq, i64 noundef %i.lg)
          to label %.noexc128 unwind label %bb.au

.noexc128:                                        ; preds = %_ZSt4sortIPfEvT_S1_.exit.i
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.np, ptr noundef nonnull %i.nq)
          to label %.noexc129 unwind label %bb.au

.noexc129:                                        ; preds = %.noexc128
  %i.nr = getelementptr [4 x i8], ptr %i.np, i64 %i.li ; 2 uses
  br i1 %.not.i127, label %_ZSt4sortIPfEvT_S1_.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %.noexc129
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !65
  br label %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit

_ZSt4sortIPfEvT_S1_.exit.thread.i:                ; preds = %.noexc129
  %i.nt = getelementptr i8, ptr %i.nr, i64 -4
  %i.nu = load <2 x float>, ptr %i.nt, align 4, !tbaa !65
  %i.nv = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nu)
  %i.nw = fmul float %i.nv, 5.000000e-01
  br label %_ZN5faiss12_GLOBAL__N_16medianEmPf.exit

_ZN5faiss12_GLOBAL__N_16medianEmPf.exit:          ; preds = %_ZSt4sortIPfEvT_S1_.exit.thread.i, %bb.aq
  %.0.i = phi float [ %i.ns, %bb.aq ], [ %i.nw, %_ZSt4sortIPfEvT_S1_.exit.thread.i ]
  %i.nx = load i32, ptr %i.gp, align 4, !tbaa !64
  %i.ny = sext i32 %i.nx to i64                   ; 2 uses
  %i.nz = mul nsw i64 %.073195, %i.ny
  %i.oa = load ptr, ptr %i.iw, align 8, !tbaa !70
  %i.ob = getelementptr [4 x i8], ptr %i.oa, i64 %i.nz
  %i.oc = getelementptr [4 x i8], ptr %i.ob, i64 %indvars.iv
  store float %.0.i, ptr %i.oc, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.od = icmp slt i64 %indvars.iv.next, %i.ny
  br i1 %i.od, label %_ZSt4sortIPfEvT_S1_.exit.i, label %._crit_edge192.loopexit205, !llvm.loop !178

._crit_edge200:                                   ; preds = %._crit_edge192, %bb.ap
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit132

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit132: ; preds = %._crit_edge200, %_ZNSt6vectorIfSaIfEE6resizeEm.exit125
  call void @__kmpc_barrier(ptr nonnull @3, i32 %i.e)
  call void @_ZdaPv(ptr noundef nonnull %i.gw) #26
  %.not.i133 = icmp eq ptr %i.fy, null
  br i1 %.not.i133, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i134

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i134: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit132
  call void @_ZdaPv(ptr noundef nonnull %i.fy) #26
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit132, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i134
  %.not.i.i.i136 = icmp eq ptr %.sroa.0153.0, null
  br i1 %.not.i.i.i136, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135
  %i.oe = ptrtoint ptr %.sroa.16.0 to i64
  %i.of = ptrtoint ptr %.sroa.0153.0 to i64
  %i.og = sub i64 %i.oe, %i.of
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0153.0, i64 noundef %i.og) #26
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit135, %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.ed) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

_ZNSt6vectorIfSaIfEED2Ev.exit113:                 ; preds = %bb.u, %.loopexit, %bb.l, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  ret void

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.kp, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.jk, %bb.ao ] ; 2 uses
  %.not.i138 = icmp eq ptr %i.fy, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i139

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i139: ; preds = %bb.as
  tail call void @_ZdaPv(ptr noundef nonnull %i.fy) #26
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140: ; preds = %bb.an, %bb.as, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.jj, %bb.an ], [ %.pn, %bb.as ], [ %.pn, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i139 ] ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %.sroa.0153.0, null
  br i1 %.not.i.i.i141, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145, label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140
  %i.oh = ptrtoint ptr %.sroa.16.0 to i64
  %i.oi = ptrtoint ptr %.sroa.0153.0 to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0153.0, i64 noundef %i.oj) #26
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145: ; preds = %bb.z, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140, %bb.at, %6
  %.pn100.pn.pn.pn = phi { ptr, i32 } [ %7, %6 ], [ %i.ev, %bb.z ], [ %.pn100.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit140 ], [ %.pn100.pn, %bb.at ]
  call void @_ZdaPv(ptr noundef nonnull %i.ed) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.s, %bb.t, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn100.pn.pn.pn, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145 ], [ %i.dd, %bb.t ], [ %i.dd, %bb.s ]
  resume { ptr, i32 } %.pn107.pn

bb.au:                                            ; preds = %.noexc128, %_ZSt4sortIPfEvT_S1_.exit.i
  %i.ok = landingpad { ptr, i32 }
          catch ptr null
  %i.ol = extractvalue { ptr, i32 } %i.ok, 0
  call void @__clang_call_terminate(ptr %i.ol) #29
  unreachable

bb.av:                                            ; preds = %bb.af, %bb.i
  unreachable
}

declare noundef i64 @_ZNK5faiss8IndexIVF25train_encoder_num_vectorsEv(ptr noundef nonnull align 8 dereferenceable(273)) unnamed_addr #1

declare void @_ZNK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef nonnull align 8 dereferenceable(273), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK5faiss8IndexIVF24range_search_preassignedElPKffPKlS2_PNS_17RangeSearchResultEbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef nonnull align 8 dereferenceable(273), i64 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK5faiss20IndexIVFSpectralHash23get_InvertedListScannerEbPKNS_10IDSelectorEPKNS_19SearchParametersIVFE(ptr noundef nonnull align 8 dereferenceable(328) %0, i1 noundef zeroext %1, ptr nofree noundef readnone captures(address_is_null) %2, ptr nofree readnone captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !29
  store i8 0, ptr %i.a, align 8, !tbaa !20
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20 ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64                ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %4, align 8, !tbaa !19
  %i.h = load i64, ptr %i.b, align 8, !tbaa !29
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.g, i64 noundef %i.h, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #20 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.k = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss20IndexIVFSpectralHash23get_InvertedListScannerEbPKNS_10IDSelectorEPKNS_19SearchParametersIVFE, ptr noundef nonnull @.str.9, i32 noundef 224)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.k unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.l, %bb.h ]
  %i.m = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !20
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load i64, ptr %i.q, align 8, !tbaa !68
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call noundef nonnull ptr @_ZN5faiss32make_spectral_hash_scanner_fixSLILNS_9SIMDLevelE0EEEPNS_19InvertedListScannerEiPKNS_20IndexIVFSpectralHashEb(i32 noundef %i.s, ptr noundef nonnull %0, i1 noundef zeroext %1)
  ret ptr %i.t

bb.k:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN5faiss8IndexIVF14update_vectorsEiPKlPKf(ptr noundef nonnull align 8 dereferenceable(273), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK5faiss8IndexIVF23reconstruct_from_offsetEllPf(ptr noundef nonnull align 8 dereferenceable(273), i64 noundef, i64 noundef, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK5faiss8IndexIVF14get_CodePackerEv(ptr noundef nonnull align 8 dereferenceable(273)) unnamed_addr #1

declare void @_ZNK5faiss8IndexIVF14copy_subset_toERS0_NS_13InvertedLists13subset_type_tEll(ptr noundef nonnull align 8 dereferenceable(273), ptr noundef nonnull align 8 dereferenceable(273), i32 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: uwtable
declare void @_ZThn40_NK5faiss8IndexIVF18search_preassignedElPKflPKlS2_PfPlbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #3 align 2

; Function Attrs: uwtable
declare void @_ZThn40_NK5faiss8IndexIVF24range_search_preassignedElPKffPKlS2_PNS_17RangeSearchResultEbPKNS_19SearchParametersIVFEPNS_13IndexIVFStatsE(ptr noundef, i64 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #3 align 2

; Function Attrs: nounwind uwtable
define void @_ZThn40_N5faiss20IndexIVFSpectralHashD1Ev(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN5faiss20IndexIVFSpectralHashD1Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.a) #20
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn40_N5faiss20IndexIVFSpectralHashD0Ev(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  tail call void @_ZN5faiss20IndexIVFSpectralHashD1Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %i.a) #20, !inline_history !185
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 noundef 328) #26, !inline_history !185
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5faiss32make_spectral_hash_scanner_fixSLILNS_9SIMDLevelE0EEEPNS_19InvertedListScannerEiPKNS_20IndexIVFSpectralHashEb(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 7 uses
  %i.b = add i32 %0, -4                           ; 2 uses
  %i.c = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 30)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 292 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 7 uses
  switch i32 %i.c, label %bb.ax [
    i32 0, label %bb.b
    i32 1, label %bb.j
    i32 3, label %bb.r
    i32 4, label %bb.z
    i32 7, label %bb.ah
    i32 15, label %bb.ap
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #28 ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 -1, ptr %i.g, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 17 ; 2 uses
  store i8 0, ptr %i.i, align 1, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_110IVFScannerINS_16HammingComputer4EEE, i64 16), ptr %i.f, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %1, ptr %i.k, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.m = load i32, ptr %i.d, align 4, !tbaa !64   ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 5 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.p = load float, ptr %i.e, align 8, !tbaa !62 ; 2 uses
  store float %i.p, ptr %i.o, align 8, !tbaa !187
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.r = fdiv float 2.000000e+00, %i.p
  store float %i.r, ptr %i.q, align 4, !tbaa !91
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.t = icmp slt i32 %i.m, 0
  br i1 %i.t, label %.noexc.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i16.i.i.i, label %.noexc15.i.i.i

.noexc15.i.i.i:                                   ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.u = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28
          to label %.noexc2.i.i unwind label %bb.i ; 7 uses

.noexc2.i.i:                                      ; preds = %.noexc15.i.i.i
  store ptr %i.v, ptr %i.s, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.n ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %i.w, ptr %i.x, align 8, !tbaa !92
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !65
end_hunk_1
