Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/detectionoutput?download=true
inline.NumInlined: 644
inline.NumDeleted: 312
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn15DetectionOutput7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.bd = mul nuw nsw i64 %i.ba, 24               ; 2 uses
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #20
          to label %.noexc108 unwind label %bb.s  ; 3 uses

.noexc108:                                        ; preds = %_ZNKSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %i.bd, i1 false)
  store ptr %i.be, ptr %5, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.ba ; 2 uses
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !55
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !56
  %.pre = load i32, ptr %i.c, align 4, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre136 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !57
  %.pre137 = load ptr, ptr %6, align 8, !tbaa !60
  br label %_ZNSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.i, %.noexc108
  %i.bg = phi ptr [ null, %bb.i ], [ %.pre137, %.noexc108 ] ; 6 uses
  %i.bh = phi ptr [ null, %bb.i ], [ %.pre136, %.noexc108 ] ; 7 uses
  %i.bi = phi i32 [ 0, %bb.i ], [ %.pre, %.noexc108 ] ; 2 uses
  %i.bj = sext i32 %i.bi to i64                   ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bl = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = sdiv exact i64 %i.bn, 24                ; 7 uses
  %i.bp = icmp ult i64 %i.bo, %i.bj
  br i1 %i.bp, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZNSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EE6resizeEm.exit
  %i.bq = sub nuw nsw i64 %i.bj, %i.bo            ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !61
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bl
  %i.bv = sdiv exact i64 %i.bu, 24                ; 2 uses
  %i.bw = icmp ult i64 %i.bo, 384307168202282326
  call void @llvm.assume(i1 %i.bw)
  %i.bx = sub nuw nsw i64 384307168202282325, %i.bo
  %i.by = icmp ule i64 %i.bv, %i.bx
  call void @llvm.assume(i1 %i.by)
  %.not28.i110 = icmp ult i64 %i.bv, %i.bq
  br i1 %.not28.i110, label %bb.l, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIfSaIfEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorIfSaIfEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.k
  %i.bz = mul nuw nsw i64 %i.bq, 24               ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bh, i8 0, i64 %i.bz, i1 false)
  %scevgep.i.i.i.i111 = getelementptr i8, ptr %i.bh, i64 %i.bz
  store ptr %scevgep.i.i.i.i111, ptr %i.bk, align 8, !tbaa !57
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.ca = icmp slt i32 %i.bi, 0
  br i1 %i.ca, label %.invoke, label %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.l, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %.sroa.speculated.i.i112 = call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.bq)
  %i.cb = add nuw nsw i64 %.sroa.speculated.i.i112, %i.bo
  %i.cc = call i64 @llvm.umin.i64(i64 %i.cb, i64 384307168202282325) ; 2 uses
  %i.cd = mul nuw nsw i64 %i.cc, 24
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #20
          to label %.noexc120 unwind label %bb.s  ; 4 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bn ; 2 uses
  %i.cg = mul nuw nsw i64 %i.bq, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cf, i8 0, i64 %i.cg, i1 false)
  %.not10.i.i.i.i113 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not10.i.i.i.i113, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i114

.lr.ph.i.i.i.i114:                                ; preds = %.noexc120, %.lr.ph.i.i.i.i114
  %.012.i.i.i.i115 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i114 ], [ %i.ce, %.noexc120 ] ; 3 uses
  %.0911.i.i.i.i116 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i114 ], [ %i.bg, %.noexc120 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.ch = load <2 x ptr>, ptr %.0911.i.i.i.i116, align 8, !tbaa !46, !alias.scope !65, !noalias !62
  store <2 x ptr> %i.ch, ptr %.012.i.i.i.i115, align 8, !tbaa !46, !alias.scope !62, !noalias !65
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i115, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i116, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !67, !alias.scope !65, !noalias !62
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !67, !alias.scope !62, !noalias !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i116, i8 0, i64 24, i1 false), !alias.scope !65, !noalias !62
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i116, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i115, i64 24
  %.not.i.i.i.i117 = icmp eq ptr %i.cl, %i.bh
  br i1 %.not.i.i.i.i117, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i114, !llvm.loop !69

_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i114, %.noexc120
  %.not.i36.i118 = icmp eq ptr %i.bg, null
  br i1 %.not.i36.i118, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.cn = load ptr, ptr %i.br, align 8, !tbaa !61
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.cp) #19
  br label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.m, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ce, ptr %6, align 8, !tbaa !60
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.bq
  store ptr %i.cq, ptr %i.bk, align 8, !tbaa !57
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cr, ptr %i.br, align 8, !tbaa !61
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

bb.n:                                             ; preds = %_ZNSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EE6resizeEm.exit
  %i.cs = icmp ugt i64 %i.bo, %i.bj
  br i1 %i.cs, label %bb.o, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bj ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.bh, %i.ct
  br i1 %.not.i.i79, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i80

.lr.ph.i.i.i.i80:                                 ; preds = %bb.o, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i81 = phi ptr [ %i.da, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i ], [ %i.ct, %bb.o ] ; 3 uses
  %i.cu = load ptr, ptr %.05.i.i.i.i81, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i.i82 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i.i82, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i80
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i81, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #19
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i80
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i81, i64 24 ; 2 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.da, %i.bh
  br i1 %.not.i.i.i.i83, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i80, !llvm.loop !72

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  store ptr %i.ct, ptr %i.bk, align 8, !tbaa !57
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit:    ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.o, %bb.n, %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIfSaIfEEmS2_ET_S4_T0_RSaIT1_E.exit.i
  %i.db = load i32, ptr %i.aw, align 4, !tbaa !51
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.db)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn15DetectionOutput7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.i, ptr nonnull %0, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.dc = load i32, ptr %i.c, align 4, !tbaa !40
  %i.dd = icmp sgt i32 %i.dc, 1
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br i1 %i.dd, label %.lr.ph, label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.t

._crit_edge:                                      ; preds = %bb.v
  %.pre138 = load ptr, ptr %7, align 8, !tbaa !73 ; 3 uses
  %.pre140 = load ptr, ptr %i.de, align 8, !tbaa !73 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.dh = icmp eq ptr %.pre138, %.pre140
  br i1 %i.dh, label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.di = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !46 ; 2 uses
  %i.dl = icmp eq ptr %i.di, %i.dk
  br i1 %i.dl, label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = lshr exact i64 %i.do, 2
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = add i32 %i.dq, -1
  call fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr noundef nonnull readonly align 8 dereferenceable(24) %7, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i32 noundef 0, i32 noundef %i.dr)
  %.pre141 = load ptr, ptr %i.dg, align 8, !tbaa !75
  %.pre142 = load ptr, ptr %7, align 8, !tbaa !77
  br label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit

bb.s:                                             ; preds = %.invoke, %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.t:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.dt = load ptr, ptr %5, align 8, !tbaa !52
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %indvars.iv ; 2 uses
  %i.dv = load ptr, ptr %6, align 8, !tbaa !60
  %i.dw = load ptr, ptr %i.de, align 8, !tbaa !73
  %9 = ptrtoint ptr %i.dw to i64
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !73
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !73
  %i.ea = load ptr, ptr %7, align 8, !tbaa !73    ; 2 uses
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %9, %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.ea, i64 %i.ec
  invoke void @_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ed, ptr %i.dx, ptr %i.dz)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %indvars.iv ; 2 uses
  %i.ef = load ptr, ptr %i.df, align 8, !tbaa !46
  %10 = ptrtoint ptr %i.ef to i64
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !46
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !46
  %i.ej = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %10, %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.el
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEvNS4_IPfS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.em, ptr %i.eg, ptr %i.ei)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = load i32, ptr %i.c, align 4, !tbaa !40
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next, %i.eo
  br i1 %i.ep, label %bb.t, label %._crit_edge, !llvm.loop !78

bb.w:                                             ; preds = %bb.t
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.x:                                             ; preds = %bb.u
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit: ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit, %bb.r, %bb.q, %._crit_edge
  %i.es = phi ptr [ %i.dg, %bb.r ], [ %i.dg, %bb.q ], [ %i.dg, %._crit_edge ], [ %i.de, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit ] ; 2 uses
  %i.et = phi ptr [ %.pre142, %bb.r ], [ %.pre138, %bb.q ], [ %.pre138, %._crit_edge ], [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit ] ; 2 uses
  %i.eu = phi ptr [ %.pre141, %bb.r ], [ %.pre140, %bb.q ], [ %.pre140, %._crit_edge ], [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !31 ; 2 uses
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = ptrtoint ptr %i.et to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = sdiv exact i64 %i.ez, 20                ; 4 uses
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = icmp slt i32 %i.ew, %i.fb
  br i1 %i.fc, label %bb.y, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.y:                                             ; preds = %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit
  %i.fd = sext i32 %i.ew to i64                   ; 7 uses
  %i.fe = icmp ult i64 %i.fa, %i.fd
  br i1 %i.fe, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ff = sub nuw nsw i64 %i.fd, %i.fa
  invoke void @_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ff)
          to label %._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge unwind label %bb.ak

._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge: ; preds = %bb.z
  %.pre143 = load i32, ptr %i.ev, align 4, !tbaa !31
  %.pre144 = sext i32 %.pre143 to i64
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit

bb.aa:                                            ; preds = %bb.y
  %i.fg = icmp ugt i64 %i.fa, %i.fd
  br i1 %i.fg, label %bb.ab, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fh = getelementptr inbounds nuw [20 x i8], ptr %i.et, i64 %i.fd ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.eu, %i.fh
  br i1 %.not.i.i87, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.ab
  store ptr %i.fh, ptr %i.es, align 8, !tbaa !75
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.ab, %bb.aa
  %.pre-phi = phi i64 [ %.pre144, %._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.fd, %_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i ], [ %i.fd, %bb.ab ], [ %i.fd, %bb.aa ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !79 ; 4 uses
  %i.fk = load ptr, ptr %8, align 8, !tbaa !71    ; 5 uses
  %i.fl = ptrtoint ptr %i.fj to i64               ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 4 uses
  %i.fo = ashr exact i64 %i.fn, 2                 ; 7 uses
  %i.fp = icmp ult i64 %i.fo, %.pre-phi
  br i1 %i.fp, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit
  %i.fq = sub nuw nsw i64 %.pre-phi, %i.fo        ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !67
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = sub i64 %i.ft, %i.fl
  %i.fv = ashr exact i64 %i.fu, 2                 ; 2 uses
  %i.fw = icmp ult i64 %i.fo, 2305843009213693952
  call void @llvm.assume(i1 %i.fw)
  %i.fx = xor i64 %i.fo, 2305843009213693951      ; 2 uses
  %i.fy = icmp ule i64 %i.fv, %i.fx
  call void @llvm.assume(i1 %i.fy)
  %.not28.i122 = icmp ult i64 %i.fv, %i.fq
  br i1 %.not28.i122, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !33
  %i.fz = getelementptr i8, ptr %i.fj, i64 4      ; 3 uses
  %i.ga = add nsw i64 %i.fq, -1                   ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.ad
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ga, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.fz, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !33
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.ad
  %.0.i.i.i.i = phi ptr [ %i.gc, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.fz, %bb.ad ]
  store ptr %.0.i.i.i.i, ptr %i.fi, align 8, !tbaa !79
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ae:                                            ; preds = %bb.ac
  %i.gd = icmp ult i64 %i.fx, %i.fq
  br i1 %i.gd, label %bb.af, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %.noexc124 unwind label %bb.ak

.noexc124:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ae
  %.sroa.speculated.i.i123 = call i64 @llvm.umax.i64(i64 %i.fo, i64 %i.fq)
  %i.ge = add nuw nsw i64 %.sroa.speculated.i.i123, %i.fo
  %i.gf = call i64 @llvm.umin.i64(i64 %i.ge, i64 2305843009213693951) ; 2 uses
  %i.gg = shl nuw nsw i64 %i.gf, 2
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #20
          to label %.noexc125 unwind label %bb.ak ; 4 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fn ; 3 uses
  store float 0.000000e+00, ptr %i.gi, align 4, !tbaa !33
  %i.gj = add nsw i64 %i.fq, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc125
  %i.gl = getelementptr i8, ptr %i.gi, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.gj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gl, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !33
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc125
  %i.gm = icmp sgt i64 %i.fn, 0
  br i1 %i.gm, label %bb.ag, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.ag:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gh, ptr align 4 %i.fk, i64 %i.fn, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.ag, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.fk, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.gn = load ptr, ptr %i.fr, align 8, !tbaa !67
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = sub i64 %i.go, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.gp) #19
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i: ; preds = %bb.ah, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.gh, ptr %8, align 8, !tbaa !71
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.fq
  store ptr %i.gq, ptr %i.fi, align 8, !tbaa !79
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf
  store ptr %i.gr, ptr %i.fr, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ai:                                            ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit
  %i.gs = icmp ugt i64 %i.fo, %.pre-phi
  br i1 %i.gs, label %bb.aj, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.pre-phi ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.fj, %i.gt
  br i1 %.not.i.i89, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.aj
  store ptr %i.gt, ptr %i.fi, align 8, !tbaa !79
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ak:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.af, %bb.z
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.aj, %bb.ai, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit
  %i.gv = load ptr, ptr %i.es, align 8, !tbaa !75
  %i.gw = load ptr, ptr %7, align 8, !tbaa !77
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = sdiv exact i64 %i.gz, 20                ; 2 uses
  %i.hb = trunc i64 %i.ha to i32                  ; 3 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.hd = load ptr, ptr %2, align 8, !tbaa !34    ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn15DetectionOutput7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
  %i.av = load <4 x float>, ptr %i.ai, align 4, !tbaa !33 ; 3 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ax = fadd fast <4 x float> %i.av, %i.aw
  %i.ay = fsub fast <4 x float> %i.av, %i.aw      ; 2 uses
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ba = load <2 x float>, ptr %i.al, align 4, !tbaa !33
  %i.bb = load <2 x float>, ptr %i.ag, align 4, !tbaa !33
  %i.bc = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bd = fmul fast <2 x float> %i.ba, %i.bc
  %i.be = fmul fast <2 x float> %i.bd, %i.bb
  %i.bf = load <2 x float>, ptr %i.at, align 4, !tbaa !33
  %i.bg = load <2 x float>, ptr %i.au, align 4, !tbaa !33
  %i.bh = fmul fast <2 x float> %i.bg, %i.bf
  %i.bi = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bh)
  %i.bj = fmul fast <4 x float> %i.az, splat (float 5.000000e-01) ; 2 uses
  %i.bk = shufflevector <2 x float> %i.be, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bl = fadd fast <4 x float> %i.bj, %i.bk      ; 2 uses
  %i.bm = fmul fast <4 x float> %i.bj, %i.bk      ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> %i.bl, <4 x i32> <i32 2, i32 3, i32 4, i32 5> ; 2 uses
  %i.bp = fsub fast <4 x float> %i.bn, %i.bo
  %i.bq = fadd fast <4 x float> %i.bn, %i.bo
  %i.br = shufflevector <4 x float> %i.bp, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.br, ptr %i.as, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !97 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15DetectionOutput7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.std::vector.18", align 8   ; 16 uses
  %11 = alloca %"class.std::vector.23", align 8   ; 10 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -2                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %.not118 = icmp sgt i32 %i.k, %i.j
  br i1 %.not118, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.u = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph121, %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EED2Ev.exit
  %indvars.iv133 = phi i64 [ %i.u, %.lr.ph121 ], [ %indvars.iv.next134, %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EED2Ev.exit ] ; 2 uses
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.v = load i32, ptr %3, align 4, !tbaa !40     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.x = trunc nsw i64 %indvars.iv.next134 to i32
  %i.y = trunc nsw i64 %indvars.iv.next134 to i32
  %i.z = trunc nsw i64 %indvars.iv.next134 to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.pre = load ptr, ptr %10, align 8, !tbaa !73   ; 2 uses
  %.pre136 = load ptr, ptr %i.o, align 8, !tbaa !73 ; 2 uses
  %i.aa = ptrtoint ptr %i.cx to i64               ; 2 uses
  store ptr %i.cz, ptr %11, align 8
  %i.ab = icmp eq ptr %.pre, %.pre136
  %i.ac = icmp eq ptr %i.cz, %i.cy
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ad = ptrtoint ptr %i.cy to i64
  %i.ae = ptrtoint ptr %i.cz to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add i32 %i.ah, -1
  call fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr noundef nonnull readonly align 8 dereferenceable(24) %10, ptr noundef nonnull readonly align 8 dereferenceable(24) %11, i32 noundef 0, i32 noundef %i.ai)
  %.pre137 = load ptr, ptr %i.o, align 8, !tbaa !75
  %.pre138 = load ptr, ptr %10, align 8, !tbaa !77
  br label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.aj = phi ptr [ null, %.lr.ph.preheader ], [ %i.cx, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 4 uses
  %i.ak = phi ptr [ null, %.lr.ph.preheader ], [ %i.cy, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 3 uses
  %i.al = phi i32 [ %i.v, %.lr.ph.preheader ], [ %i.da, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ]
  %i.am = phi ptr [ null, %.lr.ph.preheader ], [ %i.cz, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 6 uses
  %i.an = load i8, ptr %4, align 1, !tbaa !35, !range !48, !noundef !49
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ar = mul nsw i32 %i.al, %i.x
  %i.as = add nsw i32 %i.ar, %i.ap
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.at
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.av = load i32, ptr %2, align 4, !tbaa !40
  %i.aw = mul nsw i32 %i.av, %i.ap
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv.next134
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.in = phi ptr [ %i.au, %bb.e ], [ %i.az, %bb.f ]
  %i.ba = load float, ptr %.in, align 4, !tbaa !33 ; 3 uses
  %i.bb = load float, ptr %i.l, align 8, !tbaa !32
  %i.bc = fcmp fast ogt float %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %7, align 8, !tbaa !44
  %i.be = load i32, ptr %i.m, align 4, !tbaa !39
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul nsw i64 %indvars.iv, %i.bf
  %i.bh = load i64, ptr %i.n, align 8, !tbaa !50
  %i.bi = mul i64 %i.bg, %i.bh
  %12 = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi ; 4 uses
  %13 = load i32, ptr %12, align 4, !tbaa !33     ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa !33     ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %17 = load i32, ptr %16, align 4, !tbaa !33     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 12
  %18 = load i32, ptr %i.bj, align 4, !tbaa !33   ; 2 uses
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !75  ; 8 uses
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %13, ptr %i.bk, align 4, !tbaa !33
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %15, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !33
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %17, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !33
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 %18, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !33
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 %i.y, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store ptr %i.bm, ptr %i.o, align 8, !tbaa !75
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %10, align 8, !tbaa !77   ; 4 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %.invoke, label %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i, %bb.w, %bb.n, %bb.j, %bb.at, %bb.ap
  %i.bs = phi ptr [ @.str.2, %bb.at ], [ @.str.2, %bb.n ], [ @.str.2, %bb.ap ], [ @.str.2, %bb.j ], [ @.str.3, %_ZNSt6vectorImSaImEE5clearEv.exit.i ], [ @.str, %bb.w ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bs) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bt = sdiv exact i64 %i.bq, 20                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 461168601842738790)
  %i.bx = select i1 %i.bv, i64 461168601842738790, i64 %i.bw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.by = mul nuw nsw i64 %i.bx, 20
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #20
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.bq ; 6 uses
  store i32 %13, ptr %i.ca, align 4, !tbaa !33
  %.sroa.5.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 %15, ptr %.sroa.5.0..sroa_idx88, align 4, !tbaa !33
  %.sroa.6.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %17, ptr %.sroa.6.0..sroa_idx90, align 4, !tbaa !33
  %.sroa.7.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 %18, ptr %.sroa.7.0..sroa_idx92, align 4, !tbaa !33
  %.sroa.8.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i32 %i.z, ptr %.sroa.8.0..sroa_idx94, align 4, !tbaa !40
  %i.cb = icmp sgt i64 %i.bq, 0
  br i1 %i.cb, label %bb.k, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.k:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 4 %i.bn, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.k, %.noexc40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %.not.i17.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.cf) #19
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bz, ptr %10, align 8, !tbaa !77
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !75
  %i.cg = getelementptr inbounds nuw [20 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cg, ptr %i.p, align 8, !tbaa !88
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i
  %.not.i41 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit
  store float %i.ba, ptr %i.ak, align 4, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  store ptr %i.ch, ptr %i.q, align 8, !tbaa !79
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.n:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit
  %i.ci = ptrtoint ptr %i.aj to i64
  %i.cj = ptrtoint ptr %i.am to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 6 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775804
  br i1 %i.cl, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.cm = ashr exact i64 %i.ck, 2                 ; 3 uses
  %.sroa.speculated.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i42, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = call i64 @llvm.umin.i64(i64 %i.cn, i64 2305843009213693951)
  %i.cq = select i1 %i.co, i64 2305843009213693951, i64 %i.cp ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.cq, 0
  call void @llvm.assume(i1 %.not.i.i.i43)
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #20
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.ck ; 2 uses
  store float %i.ba, ptr %i.ct, align 4, !tbaa !33
  %i.cu = icmp sgt i64 %i.ck, 0
  br i1 %i.cu, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc46
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr align 4 %i.am, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc46
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %.not.i17.i.i44 = icmp eq ptr %i.am, null
  br i1 %.not.i17.i.i44, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ck) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.cv, ptr %i.q, align 8, !tbaa !79
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cq ; 2 uses
  store ptr %i.cw, ptr %i.r, align 8, !tbaa !67
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.m, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.g
  %i.cx = phi ptr [ %i.aj, %bb.m ], [ %i.cw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.aj, %bb.g ] ; 2 uses
  %i.cy = phi ptr [ %i.ch, %bb.m ], [ %i.cv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ak, %bb.g ] ; 5 uses
  %i.cz = phi ptr [ %i.am, %bb.m ], [ %i.cs, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.am, %bb.g ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr %3, align 4, !tbaa !40    ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !llvm.loop !99

_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit: ; preds = %bb.c, %bb.d, %._crit_edge
  %i.dd = phi ptr [ %i.cz, %bb.d ], [ null, %bb.c ], [ %i.cz, %._crit_edge ] ; 5 uses
  %i.de = phi ptr [ %i.cy, %bb.d ], [ null, %bb.c ], [ %i.cy, %._crit_edge ] ; 4 uses
  %i.df = phi i64 [ %i.aa, %bb.d ], [ 0, %bb.c ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.dg = phi ptr [ %.pre138, %bb.d ], [ null, %bb.c ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.dh = phi ptr [ %.pre137, %bb.d ], [ null, %bb.c ], [ %.pre136, %._crit_edge ] ; 2 uses
  %i.di = load i32, ptr %i.s, align 8, !tbaa !30  ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 20                ; 4 uses
  %i.dn = trunc i64 %i.dm to i32
  %i.do = icmp slt i32 %i.di, %i.dn
  br i1 %i.do, label %bb.q, label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.q:                                             ; preds = %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit
  %i.dp = sext i32 %i.di to i64                   ; 7 uses
  %i.dq = icmp ult i64 %i.dm, %i.dp
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = sub nuw nsw i64 %i.dp, %i.dm
  invoke void @_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.dr)
          to label %._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge: ; preds = %bb.r
  %.pre139 = load i32, ptr %i.s, align 8, !tbaa !30
  %.pre140 = sext i32 %.pre139 to i64
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit

bb.s:                                             ; preds = %bb.q
  %i.ds = icmp ugt i64 %i.dm, %i.dp
  br i1 %i.ds, label %bb.t, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw [20 x i8], ptr %i.dg, i64 %i.dp ; 2 uses
  %.not.i.i = icmp eq ptr %i.dh, %i.dt
  br i1 %.not.i.i, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.t
  store ptr %i.dt, ptr %i.o, align 8, !tbaa !75
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.t, %bb.s
  %.pre-phi = phi i64 [ %.pre140, %._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.dp, %_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i ], [ %i.dp, %bb.t ], [ %i.dp, %bb.s ] ; 4 uses
  %i.du = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dv = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %i.dx = ashr exact i64 %i.dw, 2                 ; 7 uses
  %i.dy = icmp ult i64 %i.dx, %.pre-phi
  br i1 %i.dy, label %bb.u, label %bb.z

bb.u:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit
  %i.dz = sub nuw nsw i64 %.pre-phi, %i.dx        ; 6 uses
  %i.ea = sub i64 %i.df, %i.du
  %i.eb = ashr exact i64 %i.ea, 2                 ; 2 uses
  %i.ec = icmp ult i64 %i.dx, 2305843009213693952
  call void @llvm.assume(i1 %i.ec)
  %i.ed = xor i64 %i.dx, 2305843009213693951      ; 2 uses
  %i.ee = icmp ule i64 %i.eb, %i.ed
  call void @llvm.assume(i1 %i.ee)
  %.not28.i = icmp ult i64 %i.eb, %i.dz
  br i1 %.not28.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store float 0.000000e+00, ptr %i.de, align 4, !tbaa !33
  %i.ef = getelementptr i8, ptr %i.de, i64 4      ; 3 uses
  %i.eg = add nsw i64 %i.dz, -1                   ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.v
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.eg, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ef, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !33
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.v
  %.0.i.i.i.i = phi ptr [ %i.ei, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ef, %bb.v ]
  store ptr %.0.i.i.i.i, ptr %i.q, align 8, !tbaa !79
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ej = icmp ult i64 %i.ed, %i.dz
  br i1 %i.ej, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.w
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 %i.dz)
  %i.ek = add nuw nsw i64 %.sroa.speculated.i.i, %i.dx
  %i.el = call i64 @llvm.umin.i64(i64 %i.ek, i64 2305843009213693951) ; 2 uses
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #20
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.dw ; 3 uses
  store float 0.000000e+00, ptr %i.eo, align 4, !tbaa !33
  %i.ep = add nsw i64 %i.dz, -1                   ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc79
  %i.er = getelementptr i8, ptr %i.eo, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ep, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.er, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !33
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i

end_hunk_1
