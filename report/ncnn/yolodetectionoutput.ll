Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/yolodetectionoutput?download=true
inline.NumInlined: 658
inline.NumDeleted: 335
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn19YoloDetectionOutput15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE:bb.a
          to label %.noexc161 unwind label %.loopexit226 ; 4 uses

.noexc161:                                        ; preds = %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ay ; 2 uses
  %i.bq = mul nuw nsw i64 %i.bb, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bp, i8 0, i64 %i.bq, i1 false)
  %.not10.i.i.i.i154 = icmp eq ptr %i.av, %i.au
  br i1 %.not10.i.i.i.i154, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i155

.lr.ph.i.i.i.i155:                                ; preds = %.noexc161, %.lr.ph.i.i.i.i155
  %.012.i.i.i.i156 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i155 ], [ %i.bo, %.noexc161 ] ; 3 uses
  %.0911.i.i.i.i157 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i155 ], [ %i.av, %.noexc161 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.br = load <2 x ptr>, ptr %.0911.i.i.i.i157, align 8, !tbaa !99, !alias.scope !98, !noalias !97
  store <2 x ptr> %i.br, ptr %.012.i.i.i.i156, align 8, !tbaa !99, !alias.scope !97, !noalias !98
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i156, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i157, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !63, !alias.scope !98, !noalias !97
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !63, !alias.scope !97, !noalias !98
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i157, i8 0, i64 24, i1 false), !alias.scope !98, !noalias !97
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i157, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i156, i64 24
  %.not.i.i.i.i158 = icmp eq ptr %i.bv, %i.au
  br i1 %.not.i.i.i.i158, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i155, !llvm.loop !83

_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i155, %.noexc161
  %.not.i36.i159 = icmp eq ptr %i.av, null
  br i1 %.not.i36.i159, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.bx = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bz) #20
  br label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.g, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.bo, ptr %6, align 8, !tbaa !59
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bb
  store ptr %i.ca, ptr %i.l, align 8, !tbaa !58
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.cb, ptr %i.m, align 8, !tbaa !60
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %.noexc149
  %i.cc = icmp ugt i64 %i.az, %i.at
  br i1 %i.cc, label %bb.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.at ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.au, %i.cd
  br i1 %.not.i.i95, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i96

.lr.ph.i.i.i.i96:                                 ; preds = %bb.i, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i97 = phi ptr [ %i.ck, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i ], [ %i.cd, %bb.i ] ; 3 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i97, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.i.i.i.i98 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i.i98, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i96
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i97, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !63
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #20
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i96
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i97, i64 24 ; 2 uses
  %.not.i.i.i.i99 = icmp eq ptr %i.ck, %i.au
  br i1 %.not.i.i.i.i99, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i96, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  store ptr %i.cd, ptr %i.l, align 8, !tbaa !58
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit:    ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIfSaIfEEmS2_ET_S4_T0_RSaIT1_E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.cl = load i32, ptr %i.h, align 4, !tbaa !41  ; 3 uses
  %.not217 = icmp eq i32 %i.cl, 0
  br i1 %.not217, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit
  %i.cm = sext i32 %i.cl to i64                   ; 3 uses
  %i.cn = icmp slt i32 %i.cl, 0
  br i1 %i.cn, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %.noexc165 unwind label %.loopexit.split-lp232

.noexc165:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.k
  %i.co = shl nuw nsw i64 %i.cm, 2
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #22
          to label %.noexc166 unwind label %.loopexit231 ; 4 uses

.noexc166:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.cp, align 4, !tbaa !46
  %i.cq = add nsw i64 %i.cm, -1                   ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc166
  %i.cs = getelementptr i8, ptr %i.cp, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cs, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !46
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %.noexc166, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  store ptr %i.cp, ptr %7, align 8, !tbaa !65
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cm ; 2 uses
  store ptr %i.ct, ptr %i.n, align 8, !tbaa !100
  store ptr %i.ct, ptr %i.o, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i
  %i.cu = load i32, ptr %i.p, align 4, !tbaa !103
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.cu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn19YoloDetectionOutput15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.ac, ptr nonnull %7, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %5, ptr nonnull %6)
  %i.cv = load i32, ptr %i.h, align 4, !tbaa !41
  %.not89.not285 = icmp sgt i32 %i.cv, 0
  br i1 %.not89.not285, label %.lr.ph, label %._crit_edge

.loopexit226:                                     ; preds = %_ZNKSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit228 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp227:                            ; preds = %.invoke
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit231:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit233 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp232:                            ; preds = %bb.l
  %lpad.loopexit.split-lp234 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.af
  %i.cw = phi ptr [ %i.en, %bb.af ], [ %i.aa, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 4 uses
  %i.cx = phi ptr [ %i.eo, %bb.af ], [ %.promoted, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ] ; 11 uses
  %i.cy = load ptr, ptr %7, align 8, !tbaa !65    ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !46 ; 2 uses
  %.not85 = icmp eq i32 %i.da, 0
  br i1 %.not85, label %bb.m, label %.thread.loopexit

bb.m:                                             ; preds = %.lr.ph
  %i.db = load ptr, ptr %5, align 8, !tbaa !53
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %indvars.iv ; 2 uses
  %i.dd = load ptr, ptr %6, align 8, !tbaa !59
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %indvars.iv ; 2 uses
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !104 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !104 ; 2 uses
  %i.di = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.dj = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 5 uses
  %.not70.i = icmp eq ptr %i.df, %i.dh
  br i1 %.not70.i, label %bb.ae, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = ptrtoint ptr %i.df to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 10 uses
  %i.do = sdiv exact i64 %i.dn, 20                ; 2 uses
  %i.dp = load ptr, ptr %i.r, align 8, !tbaa !68
  %i.dq = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.dr = sub i64 %i.dq, %i.di
  %.not.i167 = icmp ult i64 %i.dr, %i.dn
  br i1 %.not.i167, label %bb.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn8BBoxRectESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn8BBoxRectESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.n
  %i.ds = icmp sgt i64 %i.dn, 20
  br i1 %i.ds, label %bb.o, label %bb.p, !prof !69

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn8BBoxRectESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cw, ptr align 4 %i.df, i64 %i.dn, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4ncnn8BBoxRectESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.dt = icmp eq i64 %i.dn, 20
  br i1 %i.dt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cw, ptr noundef nonnull align 4 dereferenceable(20) %i.df, i64 20, i1 false), !tbaa.struct !71
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dn ; 2 uses
  store ptr %i.du, ptr %i.q, align 8, !tbaa !72
  br label %bb.ae

bb.s:                                             ; preds = %bb.n
  %i.dv = sdiv exact i64 %i.dk, 20                ; 4 uses
  %i.dw = sub nsw i64 461168601842738790, %i.dv
  %i.dx = icmp ult i64 %i.dw, %i.do
  br i1 %i.dx, label %bb.t, label %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  store ptr %i.cx, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc170 unwind label %.loopexit.split-lp222

.noexc170:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %.sroa.speculated.i.i168 = call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.do)
  %i.dy = add nsw i64 %.sroa.speculated.i.i168, %i.dv ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dv
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 461168601842738790)
  %i.eb = select i1 %i.dz, i64 461168601842738790, i64 %i.ea ; 3 uses
  %.not.i.i169 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i169, label %_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE11_M_allocateEm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ec = mul nuw nsw i64 %i.eb, 20
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #22
          to label %_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE11_M_allocateEm.exit.i unwind label %.loopexit221

_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.u, %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ee = phi ptr [ null, %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.ed, %bb.u ] ; 5 uses
  %i.ef = icmp sgt i64 %i.dk, 20
  br i1 %i.ef, label %bb.v, label %bb.w, !prof !69

bb.v:                                             ; preds = %_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ee, ptr align 4 %i.cx, i64 %i.dk, i1 false)
  br label %bb.y

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE11_M_allocateEm.exit.i
  %i.eg = icmp eq i64 %i.dk, 20
  br i1 %i.eg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ee, ptr noundef nonnull align 4 dereferenceable(20) %i.cx, i64 20, i1 false), !tbaa.struct !71
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %i.dk ; 3 uses
  %i.ei = icmp sgt i64 %i.dn, 20
  br i1 %i.ei, label %bb.z, label %bb.aa, !prof !69

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.eh, ptr align 4 %i.df, i64 %i.dn, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ej = icmp eq i64 %i.dn, 20
  br i1 %i.ej, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.eh, ptr noundef nonnull align 4 dereferenceable(20) %i.df, i64 20, i1 false), !tbaa.struct !71
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 %i.dn ; 2 uses
  %.not.i55.i = icmp eq ptr %i.cx, null
  br i1 %.not.i55.i, label %_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.el = sub i64 %i.dq, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.el) #20
  br label %_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.ad, %bb.ac
  store ptr %i.ek, ptr %i.q, align 8, !tbaa !72
  %i.em = getelementptr inbounds nuw [20 x i8], ptr %i.ee, i64 %i.eb
  store ptr %i.em, ptr %i.r, align 8, !tbaa !68
  br label %bb.ae

bb.ae:                                            ; preds = %bb.r, %bb.m, %_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.en = phi ptr [ %i.du, %bb.r ], [ %i.cw, %bb.m ], [ %i.ek, %_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.eo = phi ptr [ %i.cx, %bb.r ], [ %i.cx, %bb.m ], [ %i.ee, %_ZNSt12_Vector_baseIN4ncnn8BBoxRectESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 3 uses
  %i.ep = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.eq = load ptr, ptr %i.de, align 8, !tbaa !99
  %i.er = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !99
  %i.et = load ptr, ptr %4, align 8, !tbaa !99    ; 2 uses
  %i.eu = ptrtoint ptr %i.ep to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %i.ew
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEvNS4_IPfS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ex, ptr %i.eq, ptr %i.es)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ey = load i32, ptr %i.h, align 4, !tbaa !41
  %i.ez = sext i32 %i.ey to i64
  %.not89.not = icmp slt i64 %indvars.iv.next, %i.ez
  br i1 %.not89.not, label %.lr.ph, label %._crit_edge, !llvm.loop !84

.loopexit221:                                     ; preds = %bb.u
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cx, ptr %3, align 8
  br label %bb.am

.loopexit.split-lp222:                            ; preds = %bb.t
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %i.fa = landingpad { ptr, i32 }
          cleanup
  store ptr %i.eo, ptr %3, align 8
  br label %bb.am

._crit_edge:                                      ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.fb = phi ptr [ %i.aa, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.en, %bb.af ] ; 2 uses
  %.lcssa280 = phi ptr [ %.promoted, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.eo, %bb.af ] ; 3 uses
  store ptr %.lcssa280, ptr %3, align 8
  %.pr = load ptr, ptr %7, align 8, !tbaa !65     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.thread

.thread.loopexit:                                 ; preds = %.lr.ph
  store ptr %i.cx, ptr %3, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %._crit_edge
  %.promoted359 = phi ptr [ %.lcssa280, %._crit_edge ], [ %i.cx, %.thread.loopexit ]
  %i.fc = phi ptr [ %i.fb, %._crit_edge ], [ %i.cw, %.thread.loopexit ]
  %.not89.not270 = phi i1 [ false, %._crit_edge ], [ true, %.thread.loopexit ]
  %.1203 = phi i32 [ %.0291, %._crit_edge ], [ %i.da, %.thread.loopexit ]
  %i.fd = phi ptr [ %.pr, %._crit_edge ], [ %i.cy, %.thread.loopexit ] ; 2 uses
  %i.fe = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fh) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %.thread
  %.pre = phi ptr [ %.lcssa280, %._crit_edge ], [ %.promoted359, %.thread ] ; 13 uses
  %i.fi = phi ptr [ %i.fb, %._crit_edge ], [ %i.fc, %.thread ] ; 3 uses
  %.not89.not271 = phi i1 [ false, %._crit_edge ], [ %.not89.not270, %.thread ]
  %.1204 = phi i32 [ %.0291, %._crit_edge ], [ %.1203, %.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.fj = load ptr, ptr %6, align 8, !tbaa !59    ; 3 uses
  %i.fk = load ptr, ptr %i.l, align 8, !tbaa !58  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fj, %i.fk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fr, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i ], [ %i.fj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.fl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !63
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #20
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i:  ; preds = %bb.ah, %.lr.ph.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.fr, %i.fk
  br i1 %.not.i.i.i105, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ft = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fw) #20
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.fx = load ptr, ptr %5, align 8, !tbaa !53    ; 3 uses
  %i.fy = load ptr, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %.not4.i.i.i106 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not4.i.i.i106, label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i107
end_hunk_0
