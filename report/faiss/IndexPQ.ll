Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexPQ?download=true
inline.NumInlined: 1198
inline.NumDeleted: 557
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK5faiss20MultiIndexQuantizer26searchElPKflPfPlPKNS_16SearchParametersE.omp_outlined:bb.a
  %.not.i51 = icmp eq i64 %.sroa.17.1, 0
  br i1 %.not.i51, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %.lr.ph105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.fo, ptr %12, align 8, !tbaa !55
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 0, ptr %i.fp, align 8, !tbaa !56
  store i8 0, ptr %i.fo, align 8, !tbaa !54
  %i.fq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32) #22 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fs = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.ft = add nuw nsw i64 %i.fs, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ft)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fu = load ptr, ptr %12, align 8, !tbaa !53
  %i.fv = load i64, ptr %i.fp, align 8, !tbaa !56
  %i.fw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fu, i64 noundef %i.fv, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.fs)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa, %bb.z
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %i.fy = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE3runEPKflPfPl, ptr noundef nonnull @.str.13, i32 noundef 707)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #32
          to label %bb.an unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.fy) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.i52 = phi { ptr, i32 } [ %i.fx, %bb.ab ], [ %i.fz, %bb.ae ]
  %i.ga = load ptr, ptr %12, align 8, !tbaa !53   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fo
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.af
  %i.gc = load i64, ptr %i.fo, align 8, !tbaa !54
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

bb.ag:                                            ; preds = %.lr.ph105.i
  %i.ge = load float, ptr %i.aj, align 4, !tbaa !100 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv135.i
  store float %i.ge, ptr %i.gf, align 4, !tbaa !100
  %i.gg = load i64, ptr %i.am, align 8, !tbaa !57 ; 4 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv135.i
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !57
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.17.1 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !100 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.sroa.17.1 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !57 ; 2 uses
  %i.gm = icmp eq i64 %.sroa.17.1, 1
  br i1 %i.gm, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.thread, label %.lr.ph.i79.i.preheader

bb.ah:                                            ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.gx ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !100 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.gx ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !57 ; 2 uses
  %i.gr = icmp ult i64 %i.gw, 3
  br i1 %i.gr, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.thread, label %.lr.ph.i79.i.preheader, !llvm.loop !407

.lr.ph.i79.i.preheader:                           ; preds = %bb.ag, %bb.ah
  %i.gs = phi i64 [ %i.gq, %bb.ah ], [ %i.gl, %bb.ag ] ; 2 uses
  %i.gt = phi ptr [ %i.gp, %bb.ah ], [ %i.gk, %bb.ag ]
  %i.gu = phi float [ %i.go, %bb.ah ], [ %i.gj, %bb.ag ] ; 4 uses
  %i.gv = phi ptr [ %i.gn, %bb.ah ], [ %i.gi, %bb.ag ] ; 2 uses
  %i.gw = phi i64 [ %i.gx, %bb.ah ], [ %.sroa.17.1, %bb.ag ] ; 4 uses
  %i.gx = add i64 %i.gw, -1                       ; 4 uses
  br label %.lr.ph.i79.i

_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.thread: ; preds = %bb.ah, %bb.ag
  %.lcssa187 = phi float [ %i.gj, %bb.ag ], [ %i.go, %bb.ah ]
  %.lcssa185 = phi i64 [ %i.gl, %bb.ag ], [ %i.gq, %bb.ah ]
  store float %.lcssa187, ptr %i.aj, align 4, !tbaa !100
  store i64 %.lcssa185, ptr %i.am, align 8, !tbaa !57
  br label %.critedge.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i.preheader, %bb.ak
  %i.gy = phi i64 [ %i.ib, %bb.ak ], [ 3, %.lr.ph.i79.i.preheader ]
  %i.gz = phi i64 [ %i.ia, %bb.ak ], [ 2, %.lr.ph.i79.i.preheader ] ; 7 uses
  %.062.i.i = phi i64 [ %.1.i.i, %bb.ak ], [ 1, %.lr.ph.i79.i.preheader ] ; 6 uses
  %i.ha = icmp eq i64 %i.gz, %i.gw
  br i1 %i.ha, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.ai

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i79.i
  %.pre.i.i = load float, ptr %i.gv, align 4, !tbaa !100
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i82.i

bb.ai:                                            ; preds = %.lr.ph.i79.i
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.gz
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !100 ; 4 uses
  %i.hd = getelementptr [4 x i8], ptr %i.aj, i64 %i.gz
  %i.he = load float, ptr %i.hd, align 4, !tbaa !100 ; 5 uses
  %i.hf = getelementptr [8 x i8], ptr %i.am, i64 %i.gz
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !57 ; 3 uses
  %i.hh = fcmp olt float %i.hc, %i.he
  br i1 %i.hh, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i82.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i80.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i80.i:          ; preds = %bb.ai
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.gz
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !57
  %i.hk = fcmp oeq float %i.hc, %i.he
  %i.hl = icmp slt i64 %i.hj, %i.hg
  %i.hm = and i1 %i.hk, %i.hl
  br i1 %i.hm, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i82.i, label %bb.aj

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i82.i:   ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i80.i, %bb.ai, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.hn = phi float [ %.pre.i.i, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.hc, %bb.ai ], [ %i.hc, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i80.i ] ; 3 uses
  %i.ho = fcmp olt float %i.gu, %i.hn
  br i1 %i.ho, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i:          ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i82.i
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.gz
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !57 ; 2 uses
  %i.hr = fcmp oeq float %i.gu, %i.hn
  %i.hs = icmp slt i64 %i.gs, %i.hq
  %i.ht = and i1 %i.hr, %i.hs
  br i1 %i.ht, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %bb.ak

bb.aj:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i80.i
  %i.hu = fcmp olt float %i.gu, %i.he
  br i1 %i.hu, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i:          ; preds = %bb.aj
  %i.hv = fcmp oeq float %i.gu, %i.he
  %i.hw = icmp slt i64 %i.gs, %i.hg
  %i.hx = and i1 %i.hv, %i.hw
  br i1 %i.hx, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i
  %.sink79.i.i = phi float [ %i.hn, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %i.he, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.hq, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %i.hg, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.gz, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %i.gy, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.062.i.i
  store float %.sink79.i.i, ptr %i.hy, align 4, !tbaa !100
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.hz, align 8, !tbaa !57
  %i.ia = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.ib = or disjoint i64 %i.ia, 1
  %i.ic = icmp ugt i64 %i.ia, %i.gw
  br i1 %i.ic, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, label %.lr.ph.i79.i, !llvm.loop !4

_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i82.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i, %bb.aj, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i, %bb.ak
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.ak ], [ %.062.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i82.i ], [ %.062.i.i, %bb.aj ] ; 2 uses
  %.pre68.i.i = load float, ptr %i.gv, align 4, !tbaa !100
  %.pre69.i.i = load i64, ptr %i.gt, align 8, !tbaa !57
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.0.lcssa.ph.i.i
  store float %.pre68.i.i, ptr %i.id, align 4, !tbaa !100
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.0.lcssa.ph.i.i
  store i64 %.pre69.i.i, ptr %i.ie, align 8, !tbaa !57
  %i.if = load i64, ptr %i.am, align 8, !tbaa !57
  %i.ig = icmp eq i64 %i.if, %i.gg
  br i1 %i.ig, label %bb.ah, label %.critedge.i, !llvm.loop !407

.critedge.i:                                      ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.thread
  %i.ih = phi i64 [ 0, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.thread ], [ %i.gx, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 2 uses
  br i1 %i.an, label %.lr.ph102.i, label %._crit_edge103.i

._crit_edge103.i:                                 ; preds = %bb.am, %.critedge.i
  %.sroa.17.2 = phi i64 [ %i.ih, %.critedge.i ], [ %.sroa.17.4, %bb.am ]
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond139.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count138.i
  br i1 %exitcond139.not.i, label %.preheader.i, label %.lr.ph105.i, !llvm.loop !408

.lr.ph102.i:                                      ; preds = %.critedge.i, %bb.am
  %.sroa.17.3 = phi i64 [ %.sroa.17.4, %bb.am ], [ %i.ih, %.critedge.i ] ; 2 uses
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i, %bb.am ], [ 0, %.critedge.i ] ; 3 uses
  %.060100.i = phi i64 [ %i.ij, %bb.am ], [ %i.gg, %.critedge.i ] ; 2 uses
  %i.ii = and i64 %.060100.i, %i.cc               ; 2 uses
  %i.ij = ashr i64 %.060100.i, %i.cb
  %.not72.i = icmp slt i64 %i.ii, %invariant.op.i
  br i1 %.not72.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph102.i
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %.sroa.35.3, i64 %indvars.iv130.i
  %.val7.i.i = load ptr, ptr %i.ik, align 8, !tbaa !415
  %14 = shl nuw nsw i64 %i.ii, 2
  %15 = getelementptr i8, ptr %.val7.i.i, i64 %14 ; 2 uses
  %i.il = getelementptr i8, ptr %15, i64 4
  %i.im = load float, ptr %i.il, align 4, !tbaa !100
  %i.in = load float, ptr %15, align 4, !tbaa !100
  %i.io = fsub float %i.im, %i.in
  %i.ip = fadd float %i.ge, %i.io                 ; 3 uses
  %i.iq = trunc i64 %indvars.iv130.i to i32
  %i.ir = mul i32 %i.iq, %i.l
  %i.is = shl nuw i32 1, %i.ir
  %i.it = sext i32 %i.is to i64
  %i.iu = add nsw i64 %i.gg, %i.it                ; 2 uses
  %i.iv = add i64 %.sroa.17.3, 1                  ; 4 uses
  %i.iw = icmp ugt i64 %i.iv, 1
  br i1 %i.iw, label %.lr.ph.i.i.i, label %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE16enqueue_followerEliif.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.al, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i
  %.025.i.i.i = phi i64 [ %i.ix, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i ], [ %i.iv, %bb.al ] ; 5 uses
  %i.ix = lshr i64 %.025.i.i.i, 1                 ; 4 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !100 ; 3 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ix
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !57 ; 2 uses
  %i.jc = fcmp olt float %i.ip, %i.iz
  br i1 %i.jc, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i:          ; preds = %.lr.ph.i.i.i
  %i.jd = fcmp oeq float %i.ip, %i.iz
  %i.je = icmp slt i64 %i.iu, %i.jb
  %i.jf = and i1 %i.jd, %i.je
  br i1 %i.jf, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE16enqueue_followerEliif.exit.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i:   ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i, %.lr.ph.i.i.i
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.025.i.i.i
  store float %i.iz, ptr %i.jg, align 4, !tbaa !100
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.025.i.i.i
  store i64 %i.jb, ptr %i.jh, align 8, !tbaa !57
  %i.ji = icmp ugt i64 %.025.i.i.i, 3
  br i1 %i.ji, label %.lr.ph.i.i.i, label %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE16enqueue_followerEliif.exit.i, !llvm.loop !3

_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE16enqueue_followerEliif.exit.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i, %bb.al
  %.0.lcssa.i.i.i = phi i64 [ %i.iv, %bb.al ], [ %i.ix, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i ], [ %.025.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.0.lcssa.i.i.i
  store float %i.ip, ptr %i.jj, align 4, !tbaa !100
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.0.lcssa.i.i.i
  store i64 %i.iu, ptr %i.jk, align 8, !tbaa !57
  br label %bb.am

bb.am:                                            ; preds = %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE16enqueue_followerEliif.exit.i, %.lr.ph102.i
  %.sroa.17.4 = phi i64 [ %i.iv, %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE16enqueue_followerEliif.exit.i ], [ %.sroa.17.3, %.lr.ph102.i ] ; 2 uses
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next131.i, %wide.trip.count133.i
  br i1 %exitcond134.not.i, label %._crit_edge103.i, label %.lr.ph102.i, !llvm.loop !409

bb.an:                                            ; preds = %bb.ad
  unreachable

_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE3runEPKflPfPl.exit: ; preds = %._crit_edge112.us.i, %.lr.ph115.split.preheader.i, %.preheader.i
  %i.jl = load ptr, ptr %9, align 8, !tbaa !111
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.cp ; 2 uses
  %i.jn = load i64, ptr %5, align 8, !tbaa !57
  %i.jo = mul nsw i64 %i.jn, %i.bx                ; 2 uses
  %i.jp = load i64, ptr %10, align 8, !tbaa !57
  %i.jq = add nsw i64 %i.jp, -1                   ; 3 uses
  %i.jr = load i64, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.js = icmp sgt i64 %i.jr, 0
  br i1 %i.js, label %.lr.ph107, label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge, %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE3runEPKflPfPl.exit
  %i.jt = phi i64 [ %i.jr, %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE3runEPKflPfPl.exit ], [ %i.ki, %._crit_edge ]
  %i.ju = add nsw i64 %.0110, 1
  %i.jv = load i64, ptr %i.b, align 8, !tbaa !57
  %.not.not = icmp slt i64 %.0110, %i.jv
  br i1 %.not.not, label %bb.u, label %._crit_edge113

.lr.ph107:                                        ; preds = %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE3runEPKflPfPl.exit, %._crit_edge
  %.050106 = phi i64 [ %i.kh, %._crit_edge ], [ 0, %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EE3runEPKflPfPl.exit ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.050106 ; 2 uses
  %i.jx = load i64, ptr %11, align 8, !tbaa !57   ; 5 uses
  %i.jy = icmp sgt i64 %i.jx, 0
  br i1 %i.jy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph107
  %i.jz = load i64, ptr %i.jw, align 8, !tbaa !57 ; 2 uses
  %i.ka = load i64, ptr %i.j, align 8, !tbaa !64  ; 4 uses
  %xtraiter238 = and i64 %i.jx, 1
  %i.kb = icmp eq i64 %i.jx, 1
  br i1 %i.kb, label %.epil.preheader237, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter243 = and i64 %i.jx, 9223372036854775806
  br label %bb.ao

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ao
  %lcmp.mod240.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod240.not, label %._crit_edge, label %.epil.preheader237

.epil.preheader237:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.046104.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ky, %._crit_edge.loopexit.unr-lcssa ]
  %.047103.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.kx, %._crit_edge.loopexit.unr-lcssa ]
  %.048102.epil.init = phi i64 [ %i.jz, %.lr.ph ], [ %i.kt, %._crit_edge.loopexit.unr-lcssa ]
  %.049101.epil.init = phi ptr [ %i.jm, %.lr.ph ], [ %i.kz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod242 = trunc i64 %i.jx to i1
  call void @llvm.assume(i1 %lcmp.mod242)
  %i.kc = and i64 %.048102.epil.init, %i.jq
  %i.kd = getelementptr inbounds [8 x i8], ptr %.049101.epil.init, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !57
  %i.kf = shl i64 %i.ke, %.046104.epil.init
  %i.kg = or i64 %i.kf, %.047103.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader237, %._crit_edge.loopexit.unr-lcssa, %.lr.ph107
  %.047.lcssa = phi i64 [ 0, %.lr.ph107 ], [ %i.kx, %._crit_edge.loopexit.unr-lcssa ], [ %i.kg, %.epil.preheader237 ]
  store i64 %.047.lcssa, ptr %i.jw, align 8, !tbaa !57
  %i.kh = add nuw nsw i64 %.050106, 1             ; 2 uses
  %i.ki = load i64, ptr %2, align 8, !tbaa !57    ; 2 uses
  %i.kj = icmp slt i64 %i.kh, %i.ki
  br i1 %i.kj, label %.lr.ph107, label %._crit_edge108, !llvm.loop !410

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.new
  %.046104 = phi i64 [ 0, %.lr.ph.new ], [ %i.ky, %bb.ao ] ; 2 uses
  %.047103 = phi i64 [ 0, %.lr.ph.new ], [ %i.kx, %bb.ao ]
  %.048102 = phi i64 [ %i.jz, %.lr.ph.new ], [ %i.kt, %bb.ao ] ; 2 uses
  %.049101 = phi ptr [ %i.jm, %.lr.ph.new ], [ %i.kz, %bb.ao ] ; 2 uses
  %niter244 = phi i64 [ 0, %.lr.ph.new ], [ %niter244.next.1, %bb.ao ]
  %i.kk = and i64 %.048102, %i.jq
  %i.kl = ashr i64 %.048102, %i.ka                ; 2 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %.049101, i64 %i.kk
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !57
  %i.ko = shl i64 %i.kn, %.046104
  %i.kp = or i64 %i.ko, %.047103
  %i.kq = add i64 %i.ka, %.046104                 ; 2 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %.049101, i64 %i.jo ; 2 uses
  %i.ks = and i64 %i.kl, %i.jq
  %i.kt = ashr i64 %i.kl, %i.ka                   ; 2 uses
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.ks
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !57
  %i.kw = shl i64 %i.kv, %i.kq
  %i.kx = or i64 %i.kw, %i.kp                     ; 3 uses
  %i.ky = add i64 %i.ka, %i.kq                    ; 2 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.jo ; 2 uses
  %niter244.next.1 = add nuw nsw i64 %niter244, 2 ; 2 uses
  %niter244.ncmp.1 = icmp eq i64 %niter244.next.1, %unroll_iter243
  br i1 %niter244.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !411

._crit_edge113:                                   ; preds = %._crit_edge108, %bb.t
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre131)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i60

_ZNSt6vectorIhSaIhEED2Ev.exit.i60:                ; preds = %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EEC2Eiiii.exit, %._crit_edge113
  call void @__kmpc_barrier(ptr nonnull @4, i32 %.pre131)
  call void @_ZdaPv(ptr noundef nonnull %i.am) #31
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #31
  %.not.i.i.i3.i = icmp eq ptr %.sroa.35.3, null
  br i1 %.not.i.i.i3.i, label %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i60
  %i.la = ptrtoint ptr %.sroa.35.3 to i64
  %i.lb = sub i64 %.sroa.47.3, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.35.3, i64 noundef %i.lb) #31
  br label %_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EED2Ev.exit

_ZN5faiss12_GLOBAL__N_17MinSumKIfNS0_14PreSortedArrayIfEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i60, %bb.ap
  ret void

.body:                                            ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %.pn20.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ], [ %.pn.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54 ], [ %.pn20.i, %bb.r ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ao, %bb.m ]
  %i.lc = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.lc) #34
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #16
end_hunk_0
