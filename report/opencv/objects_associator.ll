Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/objects_associator?download=true
inline.NumInlined: 386
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3vas2ot17ObjectsAssociator9AssociateERKSt6vectorINS0_9DetectionESaIS3_EERKS2_ISt10shared_ptrINS0_8TrackletEESaISA_EEPKS2_IN2cv3MatESaISG_EE:bb.a
  br i1 %cmp.n, label %.loopexit302, label %.lr.ph.i.i.i.i.i.i.i.i.i150.preheader

.lr.ph.i.i.i.i.i.i.i.i.i150.preheader:            ; preds = %.noexc154, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %.noexc154 ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i150

.lr.ph.i.i.i.i.i.i.i.i.i150:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i150.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i150
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i150 ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i150.preheader ] ; 2 uses
  store float 1.000000e+03, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i151 = icmp eq ptr %i.bj, %i.ba
  br i1 %.not.i.i.i.i.i.i.i.i.i151, label %.loopexit302, label %.lr.ph.i.i.i.i.i.i.i.i.i150, !llvm.loop !83

.loopexit302:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i150, %middle.block, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i.i.i291 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.aw, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i150 ] ; 2 uses
  %.sroa.0257.0289 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.at, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i150 ] ; 10 uses
  %.sroa.14.0278 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.av, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i150 ] ; 4 uses
  %.0.i.i.i.i.i.i.i152 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.ba, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i150 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.0.i.i.i.i.i.i.i152, ptr %i.bk, align 8, !tbaa !44
  %i.bl = icmp ugt i64 %i.r, 384307168202282325
  br i1 %i.bl, label %bb.j, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.j:                                             ; preds = %.loopexit302
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %.noexc157 unwind label %bb.r

.noexc157:                                        ; preds = %bb.j
  unreachable

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %.loopexit302
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #20
          to label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.r

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.pr.i221 = phi ptr [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.bm, %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i ] ; 13 uses
  store ptr %.pr.i221, ptr %9, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.pr.i221, i64 %i.q
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !19
  %i.bp = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIfSaIfEEmS2_ET_S4_T0_RKT1_(ptr noundef %.pr.i221, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.m unwind label %bb.k       ; 3 uses

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %.pr.i221, null
  br i1 %.not.i.i.i156, label %.body159, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i221, i64 noundef %i.q) #18
  br label %.body159

bb.m:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !18
  %i.bs = load ptr, ptr %10, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i161 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i162, label %.preheader301.lr.ph

.preheader301.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i162.thread, label %.preheader301.lr.ph.split

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i162.thread: ; preds = %.preheader301.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i168

.preheader301.lr.ph.split:                        ; preds = %.preheader301.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !13, !range !45, !noundef !46
  %i.ca = trunc nuw i8 %i.bz to i1
  %.pre.pre.pre = load ptr, ptr %2, align 8, !tbaa !23 ; 2 uses
  %.pre369.pre.pre = load ptr, ptr %3, align 8, !tbaa !27 ; 2 uses
  br label %.preheader301

.preheader301:                                    ; preds = %.preheader301.lr.ph.split, %._crit_edge
  %.0107305 = phi i64 [ 0, %.preheader301.lr.ph.split ], [ %i.df, %._crit_edge ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %.pr.i221, i64 %.0107305
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.pre, i64 %.0107305
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.pre, i64 %.0107305 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  br label %bb.t

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i162: ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i168, label %bb.o

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i168: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i162.thread, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i174

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i162
  %i.ci = ashr exact i64 %i.x, 2                  ; 3 uses
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #20
          to label %.noexc170 unwind label %bb.ai ; 6 uses

.noexc170:                                        ; preds = %bb.o
  store ptr %i.cj, ptr %12, align 8, !tbaa !37
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.y
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci ; 3 uses
  %i.cn = add nsw i64 %i.ci, -4                   ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check428 = icmp ult i64 %i.cn, 28
  br i1 %min.iters.check428, label %.lr.ph.i.i.i.i.i.i.i.i.i164.preheader, label %vector.ph429

vector.ph429:                                     ; preds = %.noexc170
  %n.vec430 = and i64 %i.cp, 9223372036854775800  ; 3 uses
  %i.cq = shl i64 %n.vec430, 2
  %i.cr = getelementptr i8, ptr %i.cj, i64 %i.cq
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next434, %vector.body431 ] ; 2 uses
  %i.cs = shl i64 %index432, 2
  %next.gep433 = getelementptr i8, ptr %i.cj, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep433, i64 16
  store <4 x float> splat (float 1.000000e+03), ptr %next.gep433, align 4, !tbaa !40
  store <4 x float> splat (float 1.000000e+03), ptr %i.ct, align 4, !tbaa !40
  %index.next434 = add nuw i64 %index432, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next434, %n.vec430
  br i1 %i.cu, label %middle.block435, label %vector.body431, !llvm.loop !84

middle.block435:                                  ; preds = %vector.body431
  %cmp.n436 = icmp eq i64 %i.cp, %n.vec430
  br i1 %cmp.n436, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i174, label %.lr.ph.i.i.i.i.i.i.i.i.i164.preheader

.lr.ph.i.i.i.i.i.i.i.i.i164.preheader:            ; preds = %.noexc170, %middle.block435
  %.07.i.i.i.i.i.i.i.i.i165.ph = phi ptr [ %i.cj, %.noexc170 ], [ %i.cr, %middle.block435 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i164

.lr.ph.i.i.i.i.i.i.i.i.i164:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i164.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i164
  %.07.i.i.i.i.i.i.i.i.i165 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i.i164 ], [ %.07.i.i.i.i.i.i.i.i.i165.ph, %.lr.ph.i.i.i.i.i.i.i.i.i164.preheader ] ; 2 uses
  store float 1.000000e+03, ptr %.07.i.i.i.i.i.i.i.i.i165, align 4, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i165, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i166 = icmp eq ptr %i.cv, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i.i166, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i174, label %.lr.ph.i.i.i.i.i.i.i.i.i164, !llvm.loop !85

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit241

bb.q:                                             ; preds = %.noexc148
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit173

bb.r:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body159

.body159:                                         ; preds = %bb.k, %bb.l, %bb.r
  %eh.lpad-body160 = phi { ptr, i32 } [ %i.cy, %bb.r ], [ %i.bq, %bb.l ], [ %i.bq, %bb.k ] ; 2 uses
  %i.cz = load ptr, ptr %10, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i172 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIfSaIfEED2Ev.exit173, label %bb.s

bb.s:                                             ; preds = %.body159
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !38
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit173

_ZNSt6vectorIfSaIfEED2Ev.exit173:                 ; preds = %bb.s, %.body159, %bb.q
  %.sroa.0257.0281 = phi ptr [ %i.at, %bb.q ], [ %.sroa.0257.0289, %.body159 ], [ %.sroa.0257.0289, %bb.s ]
  %.sroa.14.0270 = phi ptr [ %i.av, %bb.q ], [ %.sroa.14.0278, %.body159 ], [ %.sroa.14.0278, %bb.s ]
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.q ], [ %eh.lpad-body160, %.body159 ], [ %eh.lpad-body160, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.bz

._crit_edge:                                      ; preds = %bb.y
  %i.df = add nuw nsw i64 %.0107305, 1            ; 2 uses
  %exitcond346.not = icmp eq i64 %i.df, %i.r
  br i1 %exitcond346.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i162, label %.preheader301, !llvm.loop !86

bb.t:                                             ; preds = %.preheader301, %bb.y
  %.0106304 = phi i64 [ 0, %.preheader301 ], [ %i.fj, %bb.y ] ; 4 uses
  br i1 %i.ca, label %bb.u, label %._crit_edge370

._crit_edge370:                                   ; preds = %bb.t
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre369.pre.pre, i64 %.0106304
  %.pre371 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dg = load i32, ptr %i.cd, align 4, !tbaa !54
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.pre369.pre.pre, i64 %.0106304
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !51 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !74
  %.not139 = icmp eq i32 %i.dg, %i.dk
  br i1 %.not139, label %bb.v, label %bb.y

bb.v:                                             ; preds = %._crit_edge370, %bb.u
  %i.dl = phi ptr [ %.pre371, %._crit_edge370 ], [ %i.di, %bb.u ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !100, !noalias !101 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 104
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !102, !noalias !101
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 120
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !103, !noalias !101
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !104
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 512
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dw = phi ptr [ %i.dv, %bb.w ], [ %i.dn, %bb.v ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -16
  %i.dy = load float, ptr %i.cf, align 4, !tbaa !75 ; 2 uses
  %i.dz = load float, ptr %i.cg, align 4, !tbaa !76 ; 2 uses
  %i.ea = fadd float %i.dy, %i.dz
  %i.eb = fmul float %i.ea, 5.000000e-01          ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !75 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.dw, i64 -4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !76 ; 2 uses
  %i.eg = fadd float %i.ed, %i.ef
  %i.eh = fmul float %i.eg, 5.000000e-01          ; 2 uses
  %i.ei = fcmp olt float %i.eh, %i.eb
  %.sroa.speculated.i = select i1 %i.ei, float %i.eh, float %i.eb
  %i.ej = load float, ptr %i.ce, align 4, !tbaa !77
  %i.ek = load float, ptr %i.ch, align 4, !tbaa !78
  %i.el = load float, ptr %i.dx, align 4, !tbaa !77
  %i.em = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.dy, i64 1
  %i.eo = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.ej, i64 1
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> splat (float 5.000000e-01), <2 x float> %i.ep) ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.dw, i64 -12
  %i.es = load float, ptr %i.er, align 4, !tbaa !78
  %i.et = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.dz, i64 1
  %i.ev = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.ek, i64 1
  %i.ex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> splat (float 5.000000e-01), <2 x float> %i.ew) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.eq, <2 x float> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.ez = shufflevector <2 x float> %i.eq, <2 x float> %i.ex, <2 x i32> <i32 1, i32 3>
  %i.fa = fsub <2 x float> %i.ey, %i.ez
  %i.fb = insertelement <2 x float> poison, float %.sroa.speculated.i, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fdiv <2 x float> %i.fa, %i.fc           ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.fd, %i.fd
  %i.fe = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ff = extractelement <2 x float> %i.fd, i64 0 ; 2 uses
  %i.fg = call float @llvm.fmuladd.f32(float %i.ff, float %i.ff, float %i.fe)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.fg)
  %i.fh = load ptr, ptr %i.cb, align 8, !tbaa !37
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.0106304
  store float %sqrt.i, ptr %i.fi, align 4, !tbaa !40
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %i.fj = add nuw nsw i64 %.0106304, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fj, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %bb.t, !llvm.loop !89

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i174: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i164, %middle.block435, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i168
  %.0.i.i.i.i.i.i.i167 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i168 ], [ %i.cm, %middle.block435 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i.i164 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.0.i.i.i.i.i.i.i167, ptr %i.fk, align 8, !tbaa !44
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i177, label %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i176

_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i176: ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i174
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #20
          to label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i177 unwind label %bb.aj

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i177: ; preds = %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i176, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i174
  %.pr.i209 = phi ptr [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i174 ], [ %i.fl, %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i176 ] ; 14 uses
  store ptr %.pr.i209, ptr %11, align 8, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %.pr.i209, i64 %i.q
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !19
  %i.fo = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIfSaIfEEmS2_ET_S4_T0_RKT1_(ptr noundef %.pr.i209, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ab unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i177
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %.pr.i209, null
  br i1 %.not.i.i.i178, label %.body182, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i209, i64 noundef %i.q) #18
  br label %.body182

bb.ab:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i177
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !18
  %i.fr = load ptr, ptr %12, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i185 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i185, label %_ZNSt6vectorIfSaIfEED2Ev.exit186, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !38
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit186

_ZNSt6vectorIfSaIfEED2Ev.exit186:                 ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %brmerge = or i1 %.not.i.i, %.not.i.i.i.i
  br i1 %brmerge, label %._crit_edge310.split, label %.preheader300.lr.ph.split

.preheader300.lr.ph.split:                        ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit186
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !13, !range !45, !noundef !46
  %i.fz = trunc nuw i8 %i.fy to i1
  %i.ga = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.gb = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  br i1 %i.fz, label %.preheader300.us, label %.preheader300

.preheader300.us:                                 ; preds = %.preheader300.lr.ph.split, %._crit_edge307.split.us.us
  %.0105308.us = phi i64 [ %i.hp, %._crit_edge307.split.us.us ], [ 0, %.preheader300.lr.ph.split ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %.pr.i209, i64 %.0105308.us
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %.0105308.us ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !54
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.preheader300.us
  %.0104306.us.us = phi i64 [ 0, %.preheader300.us ], [ %i.ho, %bb.ah ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %.0104306.us.us
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !51 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !74
  %.not135.us.us = icmp eq i32 %i.gf, %i.gk
  br i1 %.not135.us.us, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 96
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !100, !noalias !105 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 104
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !102, !noalias !105
  %i.gp = icmp eq ptr %i.gm, %i.go
  br i1 %i.gp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 120
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !103, !noalias !105
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !104
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 512
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gv = phi ptr [ %i.gu, %bb.af ], [ %i.gm, %bb.ae ]
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -8
  %i.gx = load <2 x float>, ptr %i.gg, align 4, !tbaa !40 ; 4 uses
  %i.gy = load <2 x float>, ptr %i.gw, align 4, !tbaa !40 ; 4 uses
  %shift = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop439 = fadd <2 x float> %i.gy, %shift
  %i.gz = extractelement <2 x float> %foldExtExtBinop439, i64 0
  %shift441 = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop442 = fadd <2 x float> %i.gx, %shift441
  %i.ha = extractelement <2 x float> %foldExtExtBinop442, i64 0
  %i.hb = fcmp olt float %i.gz, %i.ha
  %i.hc = insertelement <2 x i1> poison, i1 %i.hb, i64 0
  %i.hd = shufflevector <2 x i1> %i.hc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x float> %i.gy, <2 x float> %i.gx
  %i.hf = fptosi <2 x float> %i.he to <2 x i32>
  %i.hg = fsub <2 x float> %i.gy, %i.gx
  %i.hh = sitofp <2 x i32> %i.hf to <2 x float>
  %i.hi = fdiv <2 x float> %i.hg, %i.hh           ; 3 uses
  %foldExtExtBinop444 = fmul <2 x float> %i.hi, %i.hi
  %i.hj = extractelement <2 x float> %foldExtExtBinop444, i64 1
  %i.hk = extractelement <2 x float> %i.hi, i64 0 ; 2 uses
  %i.hl = call float @llvm.fmuladd.f32(float %i.hk, float %i.hk, float %i.hj)
  %sqrt.i191.us.us = call noundef float @llvm.sqrt.f32(float %i.hl)
  %i.hm = load ptr, ptr %i.gc, align 8, !tbaa !37
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.0104306.us.us
  store float %sqrt.i191.us.us, ptr %i.hn, align 4, !tbaa !40
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.ho = add nuw nsw i64 %.0104306.us.us, 1      ; 2 uses
  %exitcond352.not = icmp eq i64 %i.ho, %i.y
  br i1 %exitcond352.not, label %._crit_edge307.split.us.us, label %bb.ad, !llvm.loop !92

._crit_edge307.split.us.us:                       ; preds = %bb.ah
  %i.hp = add nuw nsw i64 %.0105308.us, 1         ; 2 uses
  %exitcond354.not = icmp eq i64 %i.hp, %i.r
  br i1 %exitcond354.not, label %._crit_edge310.split, label %.preheader300.us, !llvm.loop !93

.preheader300:                                    ; preds = %.preheader300.lr.ph.split, %._crit_edge307.split
  %.0105308 = phi i64 [ %i.iu, %._crit_edge307.split ], [ 0, %.preheader300.lr.ph.split ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %.pr.i209, i64 %.0105308
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %.0105308
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hq, align 8, !tbaa !37
  br label %bb.al

._crit_edge310.split:                             ; preds = %._crit_edge307.split, %._crit_edge307.split.us.us, %_ZNSt6vectorIfSaIfEED2Ev.exit186
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #19
  %i.hu = load i32, ptr %13, align 8, !tbaa !113
  %i.hv = and i32 %i.hu, -4096
  %i.hw = or disjoint i32 %i.hv, 5
  store i32 %i.hw, ptr %13, align 8, !tbaa !113
  %i.hx = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.hy = load ptr, ptr %2, align 8, !tbaa !23
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = sdiv exact i64 %i.ib, 24                ; 2 uses
  %i.id = trunc i64 %i.ic to i32
  %i.ie = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.if = load ptr, ptr %3, align 8, !tbaa !27
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = lshr exact i64 %i.ii, 4
  %i.ik = add nsw i64 %i.ij, %i.ic
  %i.il = trunc i64 %i.ik to i32
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.id, i32 noundef %i.il, i32 noundef 5)
          to label %_ZN2cv4Mat_IfE6createEii.exit unwind label %bb.ap

bb.ai:                                            ; preds = %bb.o
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit189

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i176
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body182

.body182:                                         ; preds = %bb.z, %bb.aa, %bb.aj
  %eh.lpad-body183 = phi { ptr, i32 } [ %i.in, %bb.aj ], [ %i.fp, %bb.aa ], [ %i.fp, %bb.z ] ; 2 uses
  %i.io = load ptr, ptr %12, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i188 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i188, label %_ZNSt6vectorIfSaIfEED2Ev.exit189, label %bb.ak

bb.ak:                                            ; preds = %.body182
  %i.ip = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !38
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.it) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit189

_ZNSt6vectorIfSaIfEED2Ev.exit189:                 ; preds = %bb.ak, %.body182, %bb.ai
  %.pn126 = phi { ptr, i32 } [ %i.im, %bb.ai ], [ %eh.lpad-body183, %.body182 ], [ %eh.lpad-body183, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.by

._crit_edge307.split:                             ; preds = %bb.an
  %i.iu = add nuw nsw i64 %.0105308, 1            ; 2 uses
  %exitcond350.not = icmp eq i64 %i.iu, %i.r
  br i1 %exitcond350.not, label %._crit_edge310.split, label %.preheader300, !llvm.loop !93

bb.al:                                            ; preds = %.preheader300, %bb.an
  %.0104306 = phi i64 [ 0, %.preheader300 ], [ %i.jz, %bb.an ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %.0104306
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !51 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !100, !noalias !105 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 104
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !102, !noalias !105
  %i.jb = icmp eq ptr %i.iy, %i.ja
  br i1 %i.jb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 120
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !103, !noalias !105
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !104
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 512
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jh = phi ptr [ %i.jg, %bb.am ], [ %i.iy, %bb.al ]
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -8
  %i.jj = load <2 x float>, ptr %i.hs, align 4, !tbaa !40 ; 4 uses
  %i.jk = load <2 x float>, ptr %i.ji, align 4, !tbaa !40 ; 4 uses
  %shift446 = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop447 = fadd <2 x float> %i.jk, %shift446
  %i.jl = extractelement <2 x float> %foldExtExtBinop447, i64 0
  %shift449 = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop450 = fadd <2 x float> %i.jj, %shift449
  %i.jm = extractelement <2 x float> %foldExtExtBinop450, i64 0
  %i.jn = fcmp olt float %i.jl, %i.jm
  %i.jo = insertelement <2 x i1> poison, i1 %i.jn, i64 0
  %i.jp = shufflevector <2 x i1> %i.jo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.jq = select <2 x i1> %i.jp, <2 x float> %i.jk, <2 x float> %i.jj
  %i.jr = fptosi <2 x float> %i.jq to <2 x i32>
  %i.js = fsub <2 x float> %i.jk, %i.jj
  %i.jt = sitofp <2 x i32> %i.jr to <2 x float>
  %i.ju = fdiv <2 x float> %i.js, %i.jt           ; 3 uses
  %foldExtExtBinop452 = fmul <2 x float> %i.ju, %i.ju
  %i.jv = extractelement <2 x float> %foldExtExtBinop452, i64 1
  %i.jw = extractelement <2 x float> %i.ju, i64 0 ; 2 uses
  %i.jx = call float @llvm.fmuladd.f32(float %i.jw, float %i.jw, float %i.jv)
  %sqrt.i191 = call noundef float @llvm.sqrt.f32(float %i.jx)
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.0104306
  store float %sqrt.i191, ptr %i.jy, align 4, !tbaa !40
  %i.jz = add nuw nsw i64 %.0104306, 1            ; 2 uses
  %exitcond348.not = icmp eq i64 %i.jz, %i.y
  br i1 %exitcond348.not, label %._crit_edge307.split, label %bb.al, !llvm.loop !92

_ZN2cv4Mat_IfE6createEii.exit:                    ; preds = %._crit_edge310.split
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store double 2.000000e+00, ptr %5, align 8, !tbaa !115
  %i.ka = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, i8 0, i64 24, i1 false)
  %i.kb = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ao unwind label %bb.aq     ; 0 uses

bb.ao:                                            ; preds = %_ZN2cv4Mat_IfE6createEii.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %.not.i.i.i.i, label %.preheader299, label %.lr.ph322

.lr.ph322:                                        ; preds = %bb.ao
  %i.kc = load ptr, ptr %3, align 8, !tbaa !27
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 4 uses
  %umax355 = call i64 @llvm.umax.i64(i64 %i.r, i64 1) ; 3 uses
  %i.kh = icmp eq ptr %.pr.i235, %i.k
  %.fr = freeze i1 %i.kh
  br label %bb.ar

.preheader299:                                    ; preds = %._crit_edge315, %bb.ao
  br i1 %.not.i.i, label %._crit_edge325, label %.lr.ph324

.lr.ph324:                                        ; preds = %.preheader299
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !116
  %i.kk = icmp slt i32 %i.kj, 2                   ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !117 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.ko = icmp eq i64 %i.q, 24
  br i1 %i.ko, label %.epil.preheader, label %.lr.ph324.new

.lr.ph324.new:                                    ; preds = %.lr.ph324
  %unroll_iter = and i64 %i.r, 576460752303423486
  br label %bb.ay

bb.ap:                                            ; preds = %._crit_edge310.split
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.aq:                                            ; preds = %_ZN2cv4Mat_IfE6createEii.exit
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ar:                                            ; preds = %.lr.ph322, %._crit_edge315
  %.0103318 = phi i64 [ 0, %.lr.ph322 ], [ %i.nd, %._crit_edge315 ] ; 10 uses
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %.0103318
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !51 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 36
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !118
  %i.kv = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = fmul <2 x float> %i.kw, <float f0x3CCCCCD0, float f0x3D19999C>
  %i.ky = fdiv <2 x float> %i.kx, splat (float 3.300000e-02)
  %i.kz = fadd <2 x float> %i.ky, <float 4.750000e-01, float 7.125000e-01> ; 5 uses
  %i.la = extractelement <2 x float> %i.kz, i64 0
  %i.lb = fmul float %i.la, 2.500000e-01
  %i.lc = extractelement <2 x float> %i.kz, i64 1
  %i.ld = fmul float %i.lc, %i.lb
  %i.le = call float @logf(float noundef %i.ld) #19 ; 3 uses
  br i1 %.not.i.i, label %._crit_edge315, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %i.lf = load i8, ptr %i.kd, align 8, !tbaa !13, !range !45, !noundef !46
  %i.lg = trunc nuw i8 %i.lf to i1                ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 12 ; 2 uses
  %i.li = load i32, ptr %i.ke, align 4
  %i.lj = icmp slt i32 %i.li, 2                   ; 4 uses
  %i.lk = load ptr, ptr %i.kf, align 8
  %sext297 = shl i64 %.0103318, 32
  %i.ll = ashr exact i64 %sext297, 30
  %invariant.gep = getelementptr i8, ptr %i.lk, i64 %i.ll ; 4 uses
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.lg, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.lm = load ptr, ptr %2, align 8, !tbaa !23
  %i.ln = load i32, ptr %i.lh, align 4, !tbaa !74
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.lr.ph.split.us.split.us
  %.0102313.us.us = phi i64 [ 0, %.lr.ph.split.us.split.us ], [ %i.mj, %bb.au ] ; 5 uses
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %.0102313.us.us
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !54
  %.not134.us.us = icmp eq i32 %i.lq, %i.ln
  br i1 %.not134.us.us, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lr = getelementptr inbounds nuw [24 x i8], ptr %.pr.i221, i64 %.0102313.us.us
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !37
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %.0103318
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !40
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %.pr.i209, i64 %.0102313.us.us
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !37
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.0103318
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !40
  %i.lz = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.ma = insertelement <2 x float> %i.lz, float %i.ly, i64 1
  %i.mb = fdiv <2 x float> %i.ma, %i.kz           ; 2 uses
  %i.mc = extractelement <2 x float> %i.mb, i64 0
  %i.md = fadd float %i.le, %i.mc
  %i.me = extractelement <2 x float> %i.mb, i64 1
  %i.mf = fadd float %i.md, %i.me
  %i.mg = load i64, ptr %i.kg, align 8
  %sext296.us.us = shl i64 %.0102313.us.us, 32
  %i.mh = ashr exact i64 %sext296.us.us, 32
  %i.mi = mul i64 %i.mg, %i.mh
  %.sink.idx.i.us.us = select i1 %i.lj, i64 0, i64 %i.mi
  %gep.us.us = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i.us.us
  store float %i.mf, ptr %gep.us.us, align 4, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.mj = add nuw nsw i64 %.0102313.us.us, 1      ; 2 uses
  %exitcond360.not = icmp eq i64 %i.mj, %umax355
  br i1 %exitcond360.not, label %._crit_edge315, label %bb.as, !llvm.loop !94

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split
  %.0102313.us = phi i64 [ %i.nc, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %.pr.i221, i64 %.0102313.us
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !37
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %.0103318
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !40
  %i.mo = getelementptr inbounds nuw [24 x i8], ptr %.pr.i209, i64 %.0102313.us
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !37
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %.0103318
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !40
  %i.ms = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mt = insertelement <2 x float> %i.ms, float %i.mr, i64 1
  %i.mu = fdiv <2 x float> %i.mt, %i.kz           ; 2 uses
  %i.mv = extractelement <2 x float> %i.mu, i64 0
  %i.mw = fadd float %i.le, %i.mv
  %i.mx = extractelement <2 x float> %i.mu, i64 1
  %i.my = fadd float %i.mw, %i.mx
  %i.mz = load i64, ptr %i.kg, align 8
  %sext296.us = shl i64 %.0102313.us, 32
  %i.na = ashr exact i64 %sext296.us, 32
  %i.nb = mul i64 %i.mz, %i.na
  %.sink.idx.i.us = select i1 %i.lj, i64 0, i64 %i.nb
  %gep.us = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i.us
  store float %i.my, ptr %gep.us, align 4, !tbaa !40
  %i.nc = add nuw nsw i64 %.0102313.us, 1         ; 2 uses
  %exitcond358.not = icmp eq i64 %i.nc, %umax355
  br i1 %exitcond358.not, label %._crit_edge315, label %.lr.ph.split.us.split, !llvm.loop !94

._crit_edge315:                                   ; preds = %bb.ax, %.lr.ph.split.us.split, %bb.au, %bb.ar
  %i.nd = add nuw nsw i64 %.0103318, 1            ; 2 uses
  %exitcond362.not = icmp eq i64 %i.nd, %i.y
  br i1 %exitcond362.not, label %.preheader299, label %bb.ar, !llvm.loop !95

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ax
  %.0102313 = phi i64 [ %i.ok, %bb.ax ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %i.lg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.split
  %i.ne = load ptr, ptr %2, align 8, !tbaa !23
  %i.nf = getelementptr inbounds nuw [24 x i8], ptr %i.ne, i64 %.0102313
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !54
  %i.ni = load i32, ptr %i.lh, align 4, !tbaa !74
  %.not134 = icmp eq i32 %i.nh, %i.ni
  br i1 %.not134, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %.lr.ph.split
  %i.nj = getelementptr inbounds nuw [24 x i8], ptr %.pr.i221, i64 %.0102313
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !37
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0103318
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !40
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %.pr.i209, i64 %.0102313
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !37
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %.0103318
  %i.nq = load float, ptr %i.np, align 4, !tbaa !40
  %i.nr = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.nq, i64 1
  %i.nt = fdiv <2 x float> %i.ns, %i.kz           ; 2 uses
  %i.nu = extractelement <2 x float> %i.nt, i64 0
  %i.nv = fadd float %i.le, %i.nu
  %i.nw = extractelement <2 x float> %i.nt, i64 1
  %i.nx = fadd float %i.nv, %i.nw
  %i.ny = load i64, ptr %i.kg, align 8
  %sext296 = shl i64 %.0102313, 32
  %i.nz = ashr exact i64 %sext296, 32             ; 2 uses
  %i.oa = mul i64 %i.ny, %i.nz
  %.sink.idx.i = select i1 %i.lj, i64 0, i64 %i.oa
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i
  store float %i.nx, ptr %gep, align 4, !tbaa !40
  %i.ob = getelementptr inbounds nuw [24 x i8], ptr %.pr.i235, i64 %.0102313
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !37
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %.0103318
  %i.oe = load float, ptr %i.od, align 4, !tbaa !40
  %i.of = fmul float %i.oe, 4.000000e+00
  %i.og = load i64, ptr %i.kg, align 8
  %i.oh = mul i64 %i.og, %i.nz
  %.sink.idx.i193 = select i1 %i.lj, i64 0, i64 %i.oh
  %gep317 = getelementptr i8, ptr %invariant.gep, i64 %.sink.idx.i193 ; 2 uses
  %i.oi = load float, ptr %gep317, align 4, !tbaa !40
  %i.oj = fadd float %i.of, %i.oi
  store float %i.oj, ptr %gep317, align 4, !tbaa !40
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ok = add nuw nsw i64 %.0102313, 1            ; 2 uses
  %exitcond356.not = icmp eq i64 %i.ok, %umax355
  br i1 %exitcond356.not, label %._crit_edge315, label %.lr.ph.split, !llvm.loop !94

._crit_edge325.loopexit.unr-lcssa:                ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge325, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge325.loopexit.unr-lcssa, %.lr.ph324
  %.0101323.epil.init = phi i64 [ 0, %.lr.ph324 ], [ %i.pe, %._crit_edge325.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod458 = trunc i64 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod458)
  %i.ol = add nuw i64 %.0101323.epil.init, %i.y
  %i.om = load i64, ptr %i.kn, align 8
  %sext294.epil = shl i64 %.0101323.epil.init, 32
  %i.on = ashr exact i64 %sext294.epil, 32
  %i.oo = mul i64 %i.om, %i.on
  %.sink.idx.i195.epil = select i1 %i.kk, i64 0, i64 %i.oo
  %.sink.i196.epil = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sink.idx.i195.epil
  %sext295.epil = shl i64 %i.ol, 32
  %i.op = ashr exact i64 %sext295.epil, 30
  %i.oq = getelementptr inbounds i8, ptr %.sink.i196.epil, i64 %i.op
  store float 1.000000e+00, ptr %i.oq, align 4, !tbaa !40
  br label %._crit_edge325

._crit_edge325:                                   ; preds = %.epil.preheader, %._crit_edge325.loopexit.unr-lcssa, %.preheader299
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN3vas2ot13HungarianAlgoC1ERKN2cv4Mat_IfEE(ptr noundef nonnull align 8 dereferenceable(312) %14, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.az unwind label %bb.bj

bb.ay:                                            ; preds = %bb.ay, %.lr.ph324.new
  %.0101323 = phi i64 [ 0, %.lr.ph324.new ], [ %i.pe, %bb.ay ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph324.new ], [ %niter.next.1, %bb.ay ]
  %i.or = add nuw i64 %.0101323, %i.y
  %i.os = load i64, ptr %i.kn, align 8
  %sext294 = shl i64 %.0101323, 32
  %i.ot = ashr exact i64 %sext294, 32
  %i.ou = mul i64 %i.os, %i.ot
  %.sink.idx.i195 = select i1 %i.kk, i64 0, i64 %i.ou
  %.sink.i196 = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sink.idx.i195
  %sext295 = shl i64 %i.or, 32
  %i.ov = ashr exact i64 %sext295, 30
  %i.ow = getelementptr inbounds i8, ptr %.sink.i196, i64 %i.ov
  store float 1.000000e+00, ptr %i.ow, align 4, !tbaa !40
  %i.ox = or disjoint i64 %.0101323, 1            ; 2 uses
  %i.oy = add nuw i64 %i.ox, %i.y
  %i.oz = load i64, ptr %i.kn, align 8
  %sext294.1 = shl i64 %i.ox, 32
  %i.pa = ashr exact i64 %sext294.1, 32
  %i.pb = mul i64 %i.oz, %i.pa
  %.sink.idx.i195.1 = select i1 %i.kk, i64 0, i64 %i.pb
  %.sink.i196.1 = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sink.idx.i195.1
  %sext295.1 = shl i64 %i.oy, 32
  %i.pc = ashr exact i64 %sext295.1, 30
  %i.pd = getelementptr inbounds i8, ptr %.sink.i196.1, i64 %i.pc
  store float 1.000000e+00, ptr %i.pd, align 4, !tbaa !40
  %i.pe = add nuw nsw i64 %.0101323, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge325.loopexit.unr-lcssa, label %bb.ay, !llvm.loop !96

bb.az:                                            ; preds = %._crit_edge325
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZN3vas2ot13HungarianAlgo5SolveEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat_.49") align 8 %15, ptr noundef nonnull align 8 dereferenceable(312) %14)
          to label %.preheader298 unwind label %bb.bk

.preheader298:                                    ; preds = %bb.az
  br i1 %.not.i.i, label %._crit_edge330, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader298
  %i.pf = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.pg = load i32, ptr %i.pf, align 4
  %i.ph = icmp slt i32 %i.pg, 2
  %i.pi = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.pl = load ptr, ptr %8, align 8
  br i1 %.not.i.i.i.i, label %._crit_edge330, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %..loopexit_crit_edge.us
  %.0100328.us = phi i64 [ %i.qa, %..loopexit_crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 5 uses
  %i.pm = load i64, ptr %i.pk, align 8
  %sext.us = shl i64 %.0100328.us, 32
  %i.pn = ashr exact i64 %sext.us, 32
  %i.po = mul i64 %i.pm, %i.pn
  %.sink.idx.i198.us = select i1 %i.ph, i64 0, i64 %i.po
  %.sink.i199.us = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.sink.idx.i198.us
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader.us, %bb.bb
  %.0326.us = phi i64 [ 0, %.preheader.us ], [ %i.ps, %bb.bb ] ; 3 uses
  %sext293.us = shl i64 %.0326.us, 32
  %i.pp = ashr exact i64 %sext293.us, 32
  %i.pq = getelementptr inbounds i8, ptr %.sink.i199.us, i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !119
  %.not128.us = icmp eq i8 %i.pr, 0
  br i1 %.not128.us, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ps = add nuw i64 %.0326.us, 1                ; 2 uses
  %exitcond366.not = icmp eq i64 %i.ps, %i.y
  br i1 %exitcond366.not, label %..loopexit_crit_edge.us, label %bb.ba, !llvm.loop !97

bb.bc:                                            ; preds = %bb.ba
  %i.pt = trunc i64 %.0100328.us to i32
  %16 = lshr i64 %.0100328.us, 6
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %16 ; 2 uses
  %i.pv = and i64 %.0100328.us, 63
  %i.pw = shl nuw i64 1, %i.pv
  %i.px = load i64, ptr %i.pu, align 8, !tbaa !79
  %i.py = or i64 %i.px, %i.pw
  store i64 %i.py, ptr %i.pu, align 8, !tbaa !79
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0257.0289, i64 %.0326.us
  store i32 %i.pt, ptr %i.pz, align 4, !tbaa !99
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.bb, %bb.bc
  %i.qa = add nuw nsw i64 %.0100328.us, 1         ; 2 uses
  %exitcond368.not = icmp eq i64 %i.qa, %i.r
  br i1 %exitcond368.not, label %._crit_edge330, label %.preheader.us, !llvm.loop !98

._crit_edge330:                                   ; preds = %..loopexit_crit_edge.us, %.preheader.lr.ph, %.preheader298
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %.noexc247 unwind label %bb.bu

.noexc247:                                        ; preds = %._crit_edge330
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.qc = ptrtoint ptr %.0.i.i.i.i.i.i.i291 to i64
  %i.qd = ptrtoint ptr %.sroa.0257.0289 to i64    ; 2 uses
  %i.qe = sub i64 %i.qc, %i.qd                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i244 = icmp eq ptr %.0.i.i.i.i.i.i.i291, %.sroa.0257.0289
  br i1 %.not.i.i.i.i.i244, label %.thread, label %bb.bd

.thread:                                          ; preds = %.noexc247
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qg = getelementptr inbounds i8, ptr null, i64 %i.qe ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qb, i8 0, i64 16, i1 false)
  store ptr %i.qg, ptr %i.qh, align 8, !tbaa !122
  br label %bb.bl

bb.bd:                                            ; preds = %.noexc247
  %i.qi = icmp ugt i64 %i.qe, 9223372036854775804
  br i1 %i.qi, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !80

.noexc.i.i.i:                                     ; preds = %bb.bd
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #21
          to label %.noexc.i unwind label %bb.bh

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.bd
  %i.qj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qe) #20
          to label %.noexc4.i unwind label %bb.bh ; 5 uses

.noexc4.i:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.qj, ptr %i.qb, align 8, !tbaa !123
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.qj, ptr %i.qk, align 8, !tbaa !124
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qe ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !122
  %i.qn = icmp samesign ugt i64 %i.qe, 4
  br i1 %i.qn, label %bb.be, label %bb.bf, !prof !125

bb.be:                                            ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.qj, ptr align 4 %.sroa.0257.0289, i64 %i.qe, i1 false)
  br label %bb.bl

bb.bf:                                            ; preds = %.noexc4.i
  %i.qo = icmp eq i64 %i.qe, 4
  br i1 %i.qo, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.qp = load i32, ptr %.sroa.0257.0289, align 4, !tbaa !99
  store i32 %i.qp, ptr %i.qj, align 4, !tbaa !99
  br label %bb.bl

bb.bh:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.qq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qr = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %i.qr, null
  br i1 %.not.i.i.i245, label %.body248, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !34 ; 2 uses
  %i.qu = ptrtoint ptr %i.qt to i64
  %i.qv = ptrtoint ptr %i.qr to i64
  %i.qw = sub i64 %i.qu, %i.qv                    ; 2 uses
  %i.qx = ashr exact i64 %i.qw, 3
  %i.qy = sub nsw i64 0, %i.qx
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.qt, i64 %i.qy
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.qw) #18
  br label %.body248

bb.bj:                                            ; preds = %._crit_edge325
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bk:                                            ; preds = %bb.az
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bl:                                            ; preds = %.thread, %bb.be, %bb.bf, %bb.bg
  %i.rc = phi ptr [ %i.ql, %bb.be ], [ %i.ql, %bb.bf ], [ %i.ql, %bb.bg ], [ %i.qg, %.thread ]
  %i.rd = phi ptr [ %i.qk, %bb.be ], [ %i.qk, %bb.bf ], [ %i.qk, %bb.bg ], [ %i.qf, %.thread ]
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !124
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @_ZN3vas2ot13HungarianAlgoD1Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %.not4.i.i.i202 = icmp eq ptr %.pr.i209, %i.fo
  br i1 %.not4.i.i.i202, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i210, label %.lr.ph.i.i.i203

.lr.ph.i.i.i203:                                  ; preds = %bb.bl, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i206
  %.05.i.i.i204 = phi ptr [ %i.rk, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i206 ], [ %.pr.i209, %bb.bl ] ; 3 uses
  %i.re = load ptr, ptr %.05.i.i.i204, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i205 = icmp eq ptr %i.re, null
  br i1 %.not.i.i.i.i.i.i.i205, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i206, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i203
  %i.rf = getelementptr inbounds nuw i8, ptr %.05.i.i.i204, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !38
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = ptrtoint ptr %i.re to i64
  %i.rj = sub i64 %i.rh, %i.ri
  call void @_ZdlPvm(ptr noundef nonnull %i.re, i64 noundef %i.rj) #18
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i206

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i206: ; preds = %bb.bm, %.lr.ph.i.i.i203
  %i.rk = getelementptr inbounds nuw i8, ptr %.05.i.i.i204, i64 24 ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %i.rk, %i.fo
  br i1 %.not.i.i.i207, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i210, label %.lr.ph.i.i.i203, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i210: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i206, %bb.bl
  %.not.i.i1.i211 = icmp eq ptr %.pr.i209, null
  br i1 %.not.i.i1.i211, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit213, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i210
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i209, i64 noundef %i.q) #18
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit213

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit213:      ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i210, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %.not4.i.i.i214 = icmp eq ptr %.pr.i221, %i.bp
  br i1 %.not4.i.i.i214, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i222, label %.lr.ph.i.i.i215

.lr.ph.i.i.i215:                                  ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit213, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i218
  %.05.i.i.i216 = phi ptr [ %i.rr, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i218 ], [ %.pr.i221, %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit213 ] ; 3 uses
  %i.rl = load ptr, ptr %.05.i.i.i216, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i217 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i.i.i.i.i217, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i218, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i215
  %i.rm = getelementptr inbounds nuw i8, ptr %.05.i.i.i216, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !38
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rl to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.rq) #18
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i218

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i218: ; preds = %bb.bo, %.lr.ph.i.i.i215
  %i.rr = getelementptr inbounds nuw i8, ptr %.05.i.i.i216, i64 24 ; 2 uses
  %.not.i.i.i219 = icmp eq ptr %i.rr, %i.bp
  br i1 %.not.i.i.i219, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i222, label %.lr.ph.i.i.i215, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i222: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i218, %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit213
  %.not.i.i1.i223 = icmp eq ptr %.pr.i221, null
  br i1 %.not.i.i1.i223, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit225, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i222
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i221, i64 noundef %i.q) #18
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit225

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit225:      ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i222, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.not.i.i.i226 = icmp eq ptr %.sroa.0257.0289, null
  br i1 %.not.i.i.i226, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit225
  %i.rs = ptrtoint ptr %.sroa.14.0278 to i64
  %i.rt = sub i64 %i.rs, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0257.0289, i64 noundef %i.rt) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit225, %bb.bq
  %i.ru = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %.not.i.i227 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i227, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.rv = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = ptrtoint ptr %i.ru to i64
  %i.ry = sub i64 %i.rw, %i.rx                    ; 2 uses
  %i.rz = ashr exact i64 %i.ry, 3
  %i.sa = sub nsw i64 0, %i.rz
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.rv, i64 %i.sa
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.ry) #18
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.not4.i.i.i228 = icmp eq ptr %.pr.i235, %i.k
  br i1 %.not4.i.i.i228, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i236, label %.lr.ph.i.i.i229

.lr.ph.i.i.i229:                                  ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i232
  %.05.i.i.i230 = phi ptr [ %i.si, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i232 ], [ %.pr.i235, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.sc = load ptr, ptr %.05.i.i.i230, align 8, !tbaa !37 ; 3 uses
end_hunk_0
