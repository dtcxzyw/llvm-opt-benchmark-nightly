Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFSpectralHash?download=true
inline.NumInlined: 808
inline.NumDeleted: 313
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5faiss20IndexIVFSpectralHash13train_encoderElPKfPKl:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.n = load i8, ptr %i.m, align 8, !tbaa !53, !range !26, !noundef !27
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !29
  store i8 0, ptr %i.p, align 8, !tbaa !20
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #20 ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i32 %i.r to i64                ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.u)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %4, align 8, !tbaa !19
  %i.w = load i64, ptr %i.q, align 8, !tbaa !29
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #20 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.t)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.z = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss20IndexIVFSpectralHash13train_encoderElPKfPKl, ptr noundef nonnull @.str.9, i32 noundef 90)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
          to label %bb.aw unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.z) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn107 = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.aa, %bb.j ]
  %i.ab = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.p
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ad = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.l:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !69
  switch i32 %i.ag, label %bb.v [
    i32 0, label %_ZNSt6vectorIfSaIfEED2Ev.exit113
    i32 1, label %bb.m
    i32 2, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !75
  %i.al = sext i32 %i.ak to i64
  %i.am = mul i64 %i.ai, %i.al                    ; 5 uses
  %i.an = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.an, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc110

.noexc110:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ao = shl nuw nsw i64 %i.am, 2
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #28 ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !65
  %i.ar = add nsw i64 %i.am, -1                   ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc110
  %i.at = getelementptr i8, ptr %i.ap, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ar, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !65
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc110, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.aq, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aq, %.noexc110 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
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
  %6 = load float, ptr %i.cd, align 8, !tbaa !62, !alias.scope !179
  %broadcast.splatinsert = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fpext <4 x float> %broadcast.splat to <4 x double> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ck, align 4, !tbaa !65, !alias.scope !180, !noalias !179
  %wide.load271 = load <4 x float>, ptr %i.cl, align 4, !tbaa !65, !alias.scope !180, !noalias !179
  %i.cm = fpext <4 x float> %wide.load to <4 x double>
  %i.cn = fpext <4 x float> %wide.load271 to <4 x double>
  %i.co = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cj, <4 x double> splat (double -2.500000e-01), <4 x double> %i.cm)
  %i.cp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cj, <4 x double> splat (double -2.500000e-01), <4 x double> %i.cn)
  %i.cq = fptrunc <4 x double> %i.co to <4 x float>
  %i.cr = fptrunc <4 x double> %i.cp to <4 x float>
  store <4 x float> %i.cq, ptr %i.ck, align 4, !tbaa !65, !alias.scope !180, !noalias !179
  store <4 x float> %i.cr, ptr %i.cl, align 4, !tbaa !65, !alias.scope !180, !noalias !179
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !163

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
  %i.ct = load float, ptr %i.cd, align 8, !tbaa !62
  %i.cu = fpext float %i.ct to double
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.080177.ph ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !65
  %i.cx = fpext float %i.cw to double
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cu, double -2.500000e-01, double %i.cx)
  %i.cz = fptrunc double %i.cy to float
  store float %i.cz, ptr %i.cv, align 4, !tbaa !65
  %i.da = or disjoint i64 %.080177.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.080177.unr = phi i64 [ %.080177.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.db = icmp eq i64 %i.cc, %.neg
  br i1 %i.db, label %.loopexit, label %scalar.ph

bb.s:                                             ; preds = %bb.o, %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0170.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = ptrtoint ptr %.sroa.11.0 to i64
  %i.de = ptrtoint ptr %.sroa.0170.0 to i64
  %i.df = sub i64 %i.dd, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0170.0, i64 noundef %i.df) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.080177 = phi i64 [ %i.dv, %scalar.ph ], [ %.080177.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dg = load float, ptr %i.cd, align 8, !tbaa !62
  %i.dh = fpext float %i.dg to double
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.080177 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !65
  %i.dk = fpext float %i.dj to double
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dh, double -2.500000e-01, double %i.dk)
  %i.dm = fptrunc double %i.dl to float
  store float %i.dm, ptr %i.di, align 4, !tbaa !65
  %i.dn = load float, ptr %i.cd, align 8, !tbaa !62
  %i.do = fpext float %i.dn to double
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.080177
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !65
  %i.ds = fpext float %i.dr to double
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.do, double -2.500000e-01, double %i.ds)
  %i.du = fptrunc double %i.dt to float
  store float %i.du, ptr %i.dq, align 4, !tbaa !65
  %i.dv = add nuw i64 %.080177, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dv, %i.cc
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !164

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader176, %bb.r
  %.not.i.i.i112 = icmp eq ptr %.sroa.0170.0, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIfSaIfEED2Ev.exit113, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.dw = ptrtoint ptr %.sroa.11.0 to i64
  %i.dx = ptrtoint ptr %.sroa.0170.0 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0170.0, i64 noundef %i.dy) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

bb.v:                                             ; preds = %bb.l
  %i.dz = icmp ugt i64 %1, 2305843009213693951
  %i.ea = shl nuw i64 %1, 3
  %i.eb = select i1 %i.dz, i64 -1, i64 %i.ea
  %i.ec = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eb) #28 ; 10 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !76 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(36) %i.ee, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !74 ; 3 uses
  %i.ek = add i64 %i.ej, 1                        ; 4 uses
  %i.el = icmp ugt i64 %i.ek, 1152921504606846975
  br i1 %i.el, label %bb.x, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc117 unwind label %bb.aa

.noexc117:                                        ; preds = %bb.x
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.w
  %.not.i.i.i.i114 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.em = shl nuw nsw i64 %i.ek, 3
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #28
          to label %.noexc118 unwind label %bb.aa ; 5 uses

.noexc118:                                        ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ek ; 2 uses
  store i64 0, ptr %i.en, align 8, !tbaa !66
  %i.ep = icmp eq i64 %i.ej, 0
  br i1 %i.ep, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc118
  %i.eq = getelementptr i8, ptr %i.en, i64 8
  %.idx.i.i.i.i.i.i.i115 = shl nuw nsw i64 %i.ej, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eq, i8 0, i64 %.idx.i.i.i.i.i.i.i115, i1 false), !tbaa !66
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc118, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0153.0 = phi ptr [ %i.en, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.en, %.noexc118 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 20 uses
  %.sroa.16.0 = phi ptr [ %i.eo, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.eo, %.noexc118 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.er = icmp sgt i64 %1, 0                      ; 2 uses
  br i1 %i.er, label %.lr.ph179, label %.preheader175

.preheader175:                                    ; preds = %bb.aj, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.es = load i64, ptr %i.ei, align 8, !tbaa !74 ; 4 uses
  %.not202 = icmp eq i64 %i.es, 0
  br i1 %.not202, label %._crit_edge, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %.preheader175
  %xtraiter314 = and i64 %i.es, 3                 ; 3 uses
  %i.et = icmp ult i64 %i.es, 4
  br i1 %i.et, label %.lr.ph182.epil.preheader, label %.lr.ph182.preheader.new

.lr.ph182.preheader.new:                          ; preds = %.lr.ph182.preheader
  %unroll_iter = and i64 %i.es, -4
  br label %.lr.ph182

bb.z:                                             ; preds = %bb.v
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit145

.lr.ph179:                                        ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, %bb.aj
  %.079178 = phi i64 [ %i.fs, %bb.aj ], [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.079178
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !66 ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  br i1 %i.ey, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph179
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ez, ptr %5, align 8, !tbaa !28
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.fa, align 8, !tbaa !29
  store i8 0, ptr %i.ez, align 8, !tbaa !20
  %i.fb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #20 ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.fd = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fe = add nuw nsw i64 %i.fd, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.fe)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ff = load ptr, ptr %5, align 8, !tbaa !19
  %i.fg = load i64, ptr %i.fa, align 8, !tbaa !29
  %i.fh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ff, i64 noundef %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #20 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.fd)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad, %bb.ab
  %i.fj = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss20IndexIVFSpectralHash13train_encoderElPKfPKl, ptr noundef nonnull @.str.9, i32 noundef 118)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #27
end_hunk_0
