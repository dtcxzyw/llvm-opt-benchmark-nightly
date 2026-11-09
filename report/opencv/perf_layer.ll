Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_layer?download=true
inline.NumInlined: 9609
inline.NumDeleted: 2814
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN11opencv_test30Layer_ScatterND_scatterND_Test12PerfTestBodyEv:bb.a
  store ptr %i.bl, ptr %i.be, align 8, !tbaa !152
  %i.bm = lshr exact i64 %i.bh, 2
  %i.bn = trunc i64 %i.bm to i32                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.bh, %i.az
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !147
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store ptr %i.bo, ptr %i.be, align 8, !tbaa !152
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.s:                                             ; preds = %bb.q
  %i.bp = ptrtoint ptr %i.bd to i64
  %i.bq = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.bq, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #29
          to label %.noexc128 unwind label %bb.ah

.noexc128:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.br = lshr exact i64 %i.az, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.br
  %i.bt = call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951) ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #32
          to label %.noexc129 unwind label %bb.ah ; 4 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.az ; 2 uses
  store i32 %i.bn, ptr %i.bw, align 4, !tbaa !147
  %.not370 = icmp eq ptr %i.av, %i.aw
  br i1 %.not370, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i, label %bb.u

bb.u:                                             ; preds = %.noexc129
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %i.bd, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.u, %.noexc129
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.by = load ptr, ptr %i.bg, align 8, !tbaa !151
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.ca) #33
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bv, ptr %3, align 8, !tbaa !150
  store ptr %i.bx, ptr %i.be, align 8, !tbaa !152
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cb, ptr %i.bg, align 8, !tbaa !151
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN2cv3MatC1ERKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 5)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN2cv3MatC1ERKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 4)
          to label %bb.x unwind label %bb.aj

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN2cv3MatC1ERKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 5)
          to label %bb.y unwind label %bb.ak

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.cd, align 8
  store i32 50397184, ptr %7, align 8, !tbaa !162
  store ptr %4, ptr %i.cc, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !159
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 -1056833530, ptr %8, align 8, !tbaa !162
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.cf, align 8, !tbaa !163
  store i64 4294967297, ptr %i.ce, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !159
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833530, ptr %9, align 8, !tbaa !162
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.c, ptr %i.ch, align 8, !tbaa !163
  store i64 4294967297, ptr %i.cg, align 8, !tbaa !147
  invoke void @_ZN2cv5randnERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.z unwind label %bb.al

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.cj, align 8
  store i32 50397184, ptr %10, align 8, !tbaa !162
  store ptr %6, ptr %i.ci, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !159
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 -1056833530, ptr %11, align 8, !tbaa !162
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.d, ptr %i.cl, align 8, !tbaa !163
  store i64 4294967297, ptr %i.ck, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !159
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 -1056833530, ptr %12, align 8, !tbaa !162
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.e, ptr %i.cn, align 8, !tbaa !163
  store i64 4294967297, ptr %i.cm, align 8, !tbaa !147
  invoke void @_ZN2cv5randnERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.aa unwind label %bb.am

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !152 ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !150   ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = ashr exact i64 %i.cs, 2                 ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 2305843009213693951
  br i1 %i.cu, label %bb.ab, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #29
          to label %.noexc131 unwind label %bb.an

.noexc131:                                        ; preds = %bb.ab
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aa
  %.not.i.i.i.i130 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.i.i.i130, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #32
          to label %.noexc132 unwind label %bb.an ; 5 uses

.noexc132:                                        ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cs ; 2 uses
  store i32 0, ptr %i.cv, align 4, !tbaa !147
  %i.cx = add nsw i64 %i.ct, -1                   ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc132
  %i.cz = getelementptr i8, ptr %i.cv, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cz, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !147
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc132, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12219.0 = phi ptr [ %i.cw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cw, %.noexc132 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0214.0 = phi ptr [ %i.cv, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cv, %.noexc132 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %.sroa.0214.0377 = ptrtoaddr ptr %.sroa.0214.0 to i64
  %i.da = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.ad unwind label %bb.ao

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !292
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 128
  br label %bb.ap

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.ad
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.ad ], [ %.sroa.12.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.0206.0.lcssa = phi ptr [ null, %bb.ad ], [ %.sroa.0206.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !228 ; 2 uses
  %i.di = icmp sgt i32 %i.db, 0
  br i1 %i.di, label %.lr.ph272, label %._crit_edge273

.lr.ph272:                                        ; preds = %._crit_edge
  %28 = ptrtoaddr ptr %i.dh to i64
  %i.dj = load ptr, ptr %i.t, align 8, !tbaa !152 ; 2 uses
  %i.dk = load ptr, ptr %1, align 8, !tbaa !150   ; 5 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 2                 ; 7 uses
  %i.dp = trunc i64 %i.do to i32
  %.075258 = add i32 %i.dp, -1                    ; 3 uses
  %i.dq = icmp sgt i32 %.075258, -1
  %.not = icmp eq ptr %i.dj, %i.dk
  %i.dr = zext i32 %.075258 to i64                ; 5 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.do, i64 1) ; 5 uses
  %29 = sub i64 %28, %.sroa.0214.0377
  %i.ds = and i64 %i.dr, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ds, 0
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dr
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %i.dr
  %indvars.iv.next282.prol = add nsw i64 %i.dr, -1
  %i.dv = icmp eq i32 %.075258, 0
  %min.iters.check380 = icmp ult i64 %i.do, 8
  %n.vec382 = and i64 %umax, -8                   ; 3 uses
  %cmp.n392 = icmp eq i64 %i.do, %n.vec382
  %min.iters.check = icmp ult i64 %i.do, 8
  %invariant.op = add i64 %29, -1
  %n.vec = and i64 %umax, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.do, %n.vec
  %xtraiter408 = and i64 %umax, 3                 ; 2 uses
  %lcmp.mod409.not = icmp eq i64 %xtraiter408, 0
  br label %bb.av

bb.ae:                                            ; preds = %.noexc.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

bb.af:                                            ; preds = %bb.j, %bb.k
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.ag:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i122, %.noexc.i.i123
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit195

bb.ah:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.t
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.aj:                                            ; preds = %bb.w
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ak:                                            ; preds = %bb.x
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.al:                                            ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit193

bb.am:                                            ; preds = %bb.z
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit193

bb.an:                                            ; preds = %bb.ac, %bb.ab
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit193

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit191

bb.ap:                                            ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.0206.0255 = phi ptr [ null, %.lr.ph ], [ %.sroa.0206.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %.sroa.12.0254 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %.sroa.9.0253 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !104
  %i.ej = lshr i64 %i.ei, 2
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  %.not.i = icmp eq ptr %.sroa.9.0253, %.sroa.12.0254
  br i1 %.not.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.ek, ptr %.sroa.9.0253, align 4, !tbaa !147
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ar:                                            ; preds = %bb.ap
  %i.el = ptrtoint ptr %.sroa.12.0254 to i64
  %i.em = ptrtoint ptr %.sroa.0206.0255 to i64
  %i.en = sub i64 %i.el, %i.em                    ; 6 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775804
  br i1 %i.eo, label %bb.as, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #29
          to label %.noexc133 unwind label %.loopexit.split-lp230.loopexit.split-lp

.noexc133:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ar
  %i.ep = ashr exact i64 %i.en, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i.i, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 2305843009213693951)
  %i.et = select i1 %i.er, i64 2305843009213693951, i64 %i.es ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #32
          to label %.noexc134 unwind label %.loopexit.split-lp230.loopexit.split-lp ; 4 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.en ; 2 uses
  store i32 %i.ek, ptr %i.ew, align 4, !tbaa !147
  %i.ex = icmp sgt i64 %i.en, 0
  br i1 %i.ex, label %bb.at, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.at:                                            ; preds = %.noexc134
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ev, ptr align 4 %.sroa.0206.0255, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.at, %.noexc134
  %.not.i17.i.i = icmp eq ptr %.sroa.0206.0255, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.0255, i64 noundef %i.en) #33
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.au, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.et
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.aq
  %.pn = phi ptr [ %i.ew, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.9.0253, %bb.aq ]
  %.sroa.12.1 = phi ptr [ %i.ey, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.12.0254, %bb.aq ] ; 2 uses
  %.sroa.0206.1 = phi ptr [ %i.ev, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0206.0255, %bb.aq ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ez = load i32, ptr %i.dc, align 4, !tbaa !292
  %i.fa = sext i32 %i.ez to i64
  %i.fb = icmp slt i64 %indvars.iv.next, %i.fa
  br i1 %i.fb, label %bb.ap, label %._crit_edge, !llvm.loop !871

.loopexit.split-lp230.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

._crit_edge273:                                   ; preds = %._crit_edge269, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN2cv3dnn14dnn5_v202606053NetC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.aw unwind label %bb.bs

bb.av:                                            ; preds = %.lr.ph272, %._crit_edge269
  %.073270 = phi i32 [ 0, %.lr.ph272 ], [ %i.gz, %._crit_edge269 ] ; 4 uses
  br i1 %i.dq, label %.lr.ph262.preheader, label %.preheader228

.lr.ph262.preheader:                              ; preds = %bb.av
  br i1 %lcmp.mod.not.not, label %.lr.ph262.prol, label %.lr.ph262.prol.loopexit

.lr.ph262.prol:                                   ; preds = %.lr.ph262.preheader
  %i.fc = load i32, ptr %i.dt, align 4, !tbaa !147 ; 3 uses
  %i.fd = sdiv i32 %.073270, %i.fc                ; 2 uses
  %i.fe = mul nsw i32 %i.fd, %i.fc                ; 0 uses
  %.recomposed = srem i32 %.073270, %i.fc
  store i32 %.recomposed, ptr %i.du, align 4, !tbaa !147
  br label %.lr.ph262.prol.loopexit

.lr.ph262.prol.loopexit:                          ; preds = %.lr.ph262.prol, %.lr.ph262.preheader
  %indvars.iv281.unr = phi i64 [ %i.dr, %.lr.ph262.preheader ], [ %indvars.iv.next282.prol, %.lr.ph262.prol ]
  %.078259.unr = phi i32 [ %.073270, %.lr.ph262.preheader ], [ %i.fd, %.lr.ph262.prol ]
  br i1 %i.dv, label %.preheader228, label %.lr.ph262

.preheader228:                                    ; preds = %.lr.ph262.prol.loopexit, %.lr.ph262, %bb.av
  br i1 %.not, label %._crit_edge269, label %.lr.ph265.preheader

.lr.ph265.preheader:                              ; preds = %.preheader228
  br i1 %min.iters.check380, label %.lr.ph265.preheader396, label %vector.body383

vector.body383:                                   ; preds = %.lr.ph265.preheader, %vector.body383
  %index384 = phi i64 [ %index.next390, %vector.body383 ], [ 0, %.lr.ph265.preheader ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.fl, %vector.body383 ], [ zeroinitializer, %.lr.ph265.preheader ]
  %vec.phi385 = phi <4 x i32> [ %i.fm, %vector.body383 ], [ zeroinitializer, %.lr.ph265.preheader ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %index384 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load386 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !147
  %wide.load387 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !147
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0.lcssa, i64 %index384 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load388 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !147
  %wide.load389 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !147
  %i.fj = mul nsw <4 x i32> %wide.load388, %wide.load386
  %i.fk = mul nsw <4 x i32> %wide.load389, %wide.load387
  %i.fl = add <4 x i32> %i.fj, %vec.phi           ; 2 uses
  %i.fm = add <4 x i32> %i.fk, %vec.phi385        ; 2 uses
  %index.next390 = add nuw i64 %index384, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next390, %n.vec382
  br i1 %i.fn, label %middle.block391, label %vector.body383, !llvm.loop !872

middle.block391:                                  ; preds = %vector.body383
  %bin.rdx = add <4 x i32> %i.fm, %i.fl
  %i.fo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n392, label %.lr.ph268.preheader, label %.lr.ph265.preheader396

.lr.ph265.preheader396:                           ; preds = %.lr.ph265.preheader, %middle.block391
  %indvars.iv284.ph = phi i64 [ 0, %.lr.ph265.preheader ], [ %n.vec382, %middle.block391 ]
  %.074264.ph = phi i32 [ 0, %.lr.ph265.preheader ], [ %i.fo, %middle.block391 ]
  br label %.lr.ph265

.lr.ph262:                                        ; preds = %.lr.ph262.prol.loopexit, %.lr.ph262
  %indvars.iv281 = phi i64 [ %indvars.iv.next282.1, %.lr.ph262 ], [ %indvars.iv281.unr, %.lr.ph262.prol.loopexit ] ; 4 uses
  %.078259 = phi i32 [ %i.fw, %.lr.ph262 ], [ %.078259.unr, %.lr.ph262.prol.loopexit ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv281
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !147 ; 3 uses
  %i.fr = sdiv i32 %.078259, %i.fq                ; 3 uses
  %i.fs = mul nsw i32 %i.fr, %i.fq                ; 0 uses
  %.recomposed419 = srem i32 %.078259, %i.fq
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %indvars.iv281
  store i32 %.recomposed419, ptr %i.ft, align 4, !tbaa !147
  %indvars.iv.next282 = add nsw i64 %indvars.iv281, -1 ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next282
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !147 ; 3 uses
  %i.fw = sdiv i32 %i.fr, %i.fv                   ; 2 uses
  %i.fx = mul nsw i32 %i.fw, %i.fv                ; 0 uses
  %.recomposed420 = srem i32 %i.fr, %i.fv
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %indvars.iv.next282
  store i32 %.recomposed420, ptr %i.fy, align 4, !tbaa !147
  %indvars.iv.next282.1 = add nsw i64 %indvars.iv281, -2
  %.not371.1 = icmp eq i64 %indvars.iv.next282, 0
  br i1 %.not371.1, label %.preheader228, label %.lr.ph262, !llvm.loop !873

.lr.ph268.preheader:                              ; preds = %.lr.ph265, %middle.block391
  %.lcssa = phi i32 [ %i.fo, %middle.block391 ], [ %i.gq, %.lr.ph265 ]
  %i.fz = sext i32 %.lcssa to i64                 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dh, i64 %i.fz ; 6 uses
  br i1 %min.iters.check, label %.lr.ph268.preheader395, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph268.preheader
  %i.ga = shl nsw i64 %i.fz, 2
  %i.gb = add i64 %i.ga, %invariant.op
  %diff.check = icmp ult i64 %i.gb, 31
  br i1 %diff.check, label %.lr.ph268.preheader395, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %index ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load = load <4 x i32>, ptr %i.gc, align 4, !tbaa !147
  %wide.load378 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !147
  %i.ge = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  store <4 x i32> %wide.load, ptr %i.ge, align 4, !tbaa !147
  store <4 x i32> %wide.load378, ptr %i.gf, align 4, !tbaa !147
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !874

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge269, label %.lr.ph268.preheader395

.lr.ph268.preheader395:                           ; preds = %vector.memcheck, %.lr.ph268.preheader, %middle.block
  %indvars.iv287.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph268.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod409.not, label %.lr.ph268.prol.loopexit, label %.lr.ph268.prol

.lr.ph268.prol:                                   ; preds = %.lr.ph268.preheader395, %.lr.ph268.prol
  %indvars.iv287.prol = phi i64 [ %indvars.iv.next288.prol, %.lr.ph268.prol ], [ %indvars.iv287.ph, %.lr.ph268.preheader395 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph268.prol ], [ 0, %.lr.ph268.preheader395 ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %indvars.iv287.prol
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !147
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv287.prol
  store i32 %i.gi, ptr %gep.prol, align 4, !tbaa !147
  %indvars.iv.next288.prol = add nuw nsw i64 %indvars.iv287.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter408
  br i1 %prol.iter.cmp.not, label %.lr.ph268.prol.loopexit, label %.lr.ph268.prol, !llvm.loop !875

.lr.ph268.prol.loopexit:                          ; preds = %.lr.ph268.prol, %.lr.ph268.preheader395
  %indvars.iv287.unr = phi i64 [ %indvars.iv287.ph, %.lr.ph268.preheader395 ], [ %indvars.iv.next288.prol, %.lr.ph268.prol ]
  %i.gj = sub i64 %indvars.iv287.ph, %umax
  %i.gk = icmp ugt i64 %i.gj, -4
  br i1 %i.gk, label %._crit_edge269, label %.lr.ph268

.lr.ph265:                                        ; preds = %.lr.ph265.preheader396, %.lr.ph265
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %.lr.ph265 ], [ %indvars.iv284.ph, %.lr.ph265.preheader396 ] ; 3 uses
  %.074264 = phi i32 [ %i.gq, %.lr.ph265 ], [ %.074264.ph, %.lr.ph265.preheader396 ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %indvars.iv284
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !147
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.0.lcssa, i64 %indvars.iv284
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !147
  %i.gp = mul nsw i32 %i.go, %i.gm
  %i.gq = add nsw i32 %i.gp, %.074264             ; 2 uses
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next285, %umax
  br i1 %exitcond.not, label %.lr.ph268.preheader, label %.lr.ph265, !llvm.loop !876

.lr.ph268:                                        ; preds = %.lr.ph268.prol.loopexit, %.lr.ph268
  %indvars.iv287 = phi i64 [ %indvars.iv.next288.3, %.lr.ph268 ], [ %indvars.iv287.unr, %.lr.ph268.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %indvars.iv287
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !147
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv287
  store i32 %i.gs, ptr %gep, align 4, !tbaa !147
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %indvars.iv.next288
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !147
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next288
  store i32 %i.gu, ptr %gep.1, align 4, !tbaa !147
  %indvars.iv.next288.1 = add nuw nsw i64 %indvars.iv287, 2 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %indvars.iv.next288.1
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !147
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next288.1
  store i32 %i.gw, ptr %gep.2, align 4, !tbaa !147
  %indvars.iv.next288.2 = add nuw nsw i64 %indvars.iv287, 3 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0, i64 %indvars.iv.next288.2
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !147
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next288.2
  store i32 %i.gy, ptr %gep.3, align 4, !tbaa !147
  %indvars.iv.next288.3 = add nuw nsw i64 %indvars.iv287, 4 ; 2 uses
  %exitcond291.not.3 = icmp eq i64 %i.do, %indvars.iv.next288.3
  br i1 %exitcond291.not.3, label %._crit_edge269, label %.lr.ph268, !llvm.loop !877

._crit_edge269:                                   ; preds = %.lr.ph268.prol.loopexit, %.lr.ph268, %middle.block, %.preheader228
  %i.gz = add nuw nsw i32 %.073270, 1             ; 2 uses
  %exitcond292.not = icmp eq i32 %i.gz, %i.db
  br i1 %exitcond292.not, label %._crit_edge273, label %bb.av, !llvm.loop !878

bb.aw:                                            ; preds = %._crit_edge273
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.ha = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i32 0, ptr %i.ha, align 8, !tbaa !164
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr null, ptr %i.hb, align 8, !tbaa !113
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.ha, ptr %i.hc, align 8, !tbaa !165
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.ha, ptr %i.hd, align 8, !tbaa !166
  %i.he = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.he, i8 0, i64 32, i1 false)
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !102
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  store i64 0, ptr %i.hh, align 8, !tbaa !108
  store i8 0, ptr %i.hg, align 8, !tbaa !107
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %14, i64 120 ; 4 uses
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !102
  %i.hk = getelementptr inbounds nuw i8, ptr %14, i64 112
  store i64 0, ptr %i.hk, align 8, !tbaa !108
  store i8 0, ptr %i.hj, align 8, !tbaa !107
  %i.hl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hi, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.97, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.aw
  %i.hm = load i64, ptr %i.hh, align 8, !tbaa !108
  %i.hn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hf, i64 noundef 0, i64 noundef %i.hm, ptr noundef nonnull @.str.86, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.ho = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ho, ptr %15, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ho, ptr noundef nonnull align 1 dereferenceable(9) @.str.87, i64 9, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 9, ptr %i.hp, align 8, !tbaa !108
  %i.hq = getelementptr inbounds nuw i8, ptr %15, i64 25
  store i8 0, ptr %i.hq, align 1, !tbaa !107
  %i.hr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_RKS9_SC_(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ax unwind label %bb.bt     ; 0 uses

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit137
  %i.hs = load ptr, ptr %15, align 8, !tbaa !106  ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.ho
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ax
  %i.hu = load i64, ptr %i.ho, align 8, !tbaa !107
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.hw = invoke noundef i32 @_ZN2cv3dnn14dnn5_v202606053Net14addLayerToPrevERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RNS1_11LayerParamsE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %i.hi, ptr noundef nonnull align 8 dereferenceable(136) %14)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net7connectEiiii(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0, i32 noundef 0, i32 noundef %i.hw, i32 noundef 0)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net7connectEiiii(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0, i32 noundef 1, i32 noundef %i.hw, i32 noundef 1)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net7connectEiiii(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0, i32 noundef 2, i32 noundef %i.hw, i32 noundef 2)
          to label %._crit_edge.i.i141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i141:                               ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.hx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.hx, ptr %17, align 8, !tbaa !102
  store i32 1635017060, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 4, ptr %i.hy, align 8, !tbaa !108
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i8 0, ptr %i.hz, align 4, !tbaa !107
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ib = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store ptr %i.ib, ptr %i.ia, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ib, ptr noundef nonnull align 1 dereferenceable(7) @.str.90, i64 7, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 7, ptr %i.ic, align 8, !tbaa !108
  %i.id = getelementptr inbounds nuw i8, ptr %17, i64 55
  store i8 0, ptr %i.id, align 1, !tbaa !107
  %i.ie = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.if = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.if, ptr noundef nonnull align 1 dereferenceable(7) @.str.91, i64 7, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i64 7, ptr %i.ig, align 8, !tbaa !108
  %i.ih = getelementptr inbounds nuw i8, ptr %17, i64 87
  store i8 0, ptr %i.ih, align 1, !tbaa !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.ii = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #32
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.bb ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i141
  %i.ij = getelementptr inbounds nuw i8, ptr %17, i64 96
  store ptr %i.ii, ptr %16, align 8, !tbaa !169
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  %i.il = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !170
  %i.im = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %17, ptr noundef nonnull %i.ij, ptr noundef nonnull %i.ii)
          to label %bb.bd unwind label %bb.bb

bb.bb:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i141
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %16, align 8, !tbaa !169  ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.io, null
end_hunk_0
