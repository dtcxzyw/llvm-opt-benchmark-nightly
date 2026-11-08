Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-backend?download=true
inline.NumInlined: 551
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ggml_backend_sched_graph_compute_async:bb.a

bb.bu:                                            ; preds = %bb.bt
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 426, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
          to label %.noexc315.i unwind label %.loopexit.split-lp497.i

.noexc315.i:                                      ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.lg = getelementptr inbounds nuw i8, ptr %.0184.i, i64 64
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !70 ; 2 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %ggml_backend_synchronize.exit317.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke void %i.lh(ptr noundef nonnull %.0184.i)
          to label %ggml_backend_synchronize.exit317.i unwind label %.loopexit496.i, !inline_history !71

ggml_backend_synchronize.exit317.i:               ; preds = %bb.bw, %bb.bv
  %.not.i.i318.i = icmp eq ptr %.sroa.13.1916.i, %.sroa.0379.1915.i
  %spec.select470.i = select i1 %.not.i.i318.i, ptr %.sroa.13.1916.i, ptr %.sroa.0379.1915.i ; 6 uses
  %i.lj = add i64 %i.gv, 31
  %i.lk = lshr i64 %i.lj, 5                       ; 4 uses
  %i.ll = ptrtoint ptr %spec.select470.i to i64   ; 2 uses
  %i.lm = ptrtoint ptr %.sroa.0379.1915.i to i64  ; 2 uses
  %i.ln = sub i64 %i.ll, %i.lm                    ; 4 uses
  %i.lo = ashr exact i64 %i.ln, 2                 ; 6 uses
  %i.lp = icmp ugt i64 %i.lk, %i.lo
  br i1 %i.lp, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %ggml_backend_synchronize.exit317.i
  %i.lq = sub nuw nsw i64 %i.lk, %i.lo            ; 5 uses
  %i.lr = ptrtoint ptr %.sroa.20.1917.i to i64    ; 2 uses
  %i.ls = sub i64 %i.lr, %i.ll
  %i.lt = ashr exact i64 %i.ls, 2                 ; 2 uses
  %i.lu = xor i64 %i.lo, 2305843009213693951
  %i.lv = icmp ule i64 %i.lt, %i.lu
  call void @llvm.assume(i1 %i.lv)
  %.not28.i366.i = icmp ult i64 %i.lt, %i.lq
  br i1 %.not28.i366.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %spec.select470.i, align 4, !tbaa !117
  %i.lw = getelementptr i8, ptr %spec.select470.i, i64 4 ; 3 uses
  %i.lx = add nsw i64 %i.lq, -1                   ; 2 uses
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.by
  %.idx.i.i.i.i.i.i367.i = shl nuw nsw i64 %i.lx, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.lw, i8 0, i64 %.idx.i.i.i.i.i.i367.i, i1 false), !tbaa !117
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx.i.i.i.i.i.i367.i
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bx
  %.sroa.speculated.i.i369.i = call i64 @llvm.umax.i64(i64 %i.lo, i64 %i.lq)
  %i.ma = add nuw nsw i64 %.sroa.speculated.i.i369.i, %i.lo ; 2 uses
  %i.mb = shl nuw nsw i64 %i.ma, 2
  %i.mc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mb) #25
          to label %.noexc373.i unwind label %.loopexit496.i ; 4 uses

.noexc373.i:                                      ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ln ; 3 uses
  store i32 0, ptr %i.md, align 4, !tbaa !117
  %i.me = add nsw i64 %i.lq, -1                   ; 2 uses
  %i.mf = icmp eq i64 %i.me, 0
  br i1 %i.mf, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc373.i
  %i.mg = getelementptr i8, ptr %i.md, i64 4
  %.idx.i.i.i.i.i31.i370.i = shl nuw nsw i64 %i.me, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mg, i8 0, i64 %.idx.i.i.i.i.i31.i370.i, i1 false), !tbaa !117
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc373.i
  %i.mh = icmp sgt i64 %i.ln, 0
  br i1 %i.mh, label %bb.bz, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i

bb.bz:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mc, ptr align 4 %.sroa.0379.1915.i, i64 %i.ln, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i: ; preds = %bb.bz, %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33.i.i
  %.not.i35.i371.i = icmp eq ptr %.sroa.0379.1915.i, null
  br i1 %.not.i35.i371.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i
  %i.mi = sub i64 %i.lr, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.1915.i, i64 noundef %i.mi) #26
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.i: ; preds = %bb.ca, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.lq
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.ma
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.cb:                                            ; preds = %ggml_backend_synchronize.exit317.i
  %i.ml = icmp ult i64 %i.lk, %i.lo
  br i1 %i.ml, label %bb.cc, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0379.1915.i, i64 %i.lk ; 2 uses
  %.not.i.i319.i = icmp eq ptr %spec.select470.i, %i.mm
  %spec.select471.i = select i1 %.not.i.i319.i, ptr %spec.select470.i, ptr %i.mm
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %bb.cc, %bb.cb, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %bb.by
  %.sroa.0379.10.i = phi ptr [ %.sroa.0379.1915.i, %bb.cb ], [ %.sroa.0379.1915.i, %bb.cc ], [ %.sroa.0379.1915.i, %bb.by ], [ %.sroa.0379.1915.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.mc, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.i ] ; 5 uses
  %.sroa.13.5.i = phi ptr [ %spec.select470.i, %bb.cb ], [ %spec.select471.i, %bb.cc ], [ %i.lw, %bb.by ], [ %i.lz, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.mj, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.i ] ; 3 uses
  %.sroa.20.10.i = phi ptr [ %.sroa.20.1917.i, %bb.cb ], [ %.sroa.20.1917.i, %bb.cc ], [ %.sroa.20.1917.i, %bb.by ], [ %.sroa.20.1917.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.mk, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.i ] ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0185.i, i64 24
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !81 ; 2 uses
  %i.mp = icmp sgt i64 %i.mo, 0
  br i1 %i.mp, label %.preheader.lr.ph.i, label %.loopexit482.i

.preheader.lr.ph.i:                               ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.0185.i, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !81 ; 2 uses
  %i.ms = icmp sgt i64 %i.mr, 0
  br i1 %i.ms, label %.preheader.lr.ph.split.i, label %.loopexit482.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.mt = getelementptr inbounds nuw i8, ptr %.0185.i, i64 56
  %i.mu = getelementptr inbounds nuw i8, ptr %.0185.i, i64 48
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !81
  %i.mw = load i64, ptr %i.mu, align 8, !tbaa !81
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0182901.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.na, %._crit_edge.i ] ; 2 uses
  %i.mx = mul i64 %.0182901.i, %i.mv
  %i.my = lshr i64 %i.mx, 2
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0391.10.i, i64 %i.my
  br label %bb.cd

._crit_edge.i:                                    ; preds = %bb.ch
  %i.na = add nuw nsw i64 %.0182901.i, 1          ; 2 uses
  %exitcond1376.not.i = icmp eq i64 %i.na, %i.mo
  br i1 %exitcond1376.not.i, label %.loopexit482.i, label %.preheader.i, !llvm.loop !329

bb.cd:                                            ; preds = %bb.ch, %.preheader.i
  %.0181900.i = phi i64 [ 0, %.preheader.i ], [ %i.no, %bb.ch ] ; 2 uses
  %i.nb = mul i64 %.0181900.i, %i.mw
  %i.nc = lshr i64 %i.nb, 2
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !117 ; 3 uses
  %i.nf = icmp sgt i32 %i.ne, -1
  br i1 %i.nf, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ng = zext nneg i32 %i.ne to i64              ; 2 uses
  %i.nh = icmp sgt i64 %i.gv, %i.ng
  br i1 %i.nh, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1740, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.69) #24
          to label %bb.cg unwind label %.loopexit.split-lp497.i

bb.cg:                                            ; preds = %bb.cf
  unreachable

.loopexit496.i:                                   ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.bw, %bb.bs, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.bi, %bb.av
  %.sroa.0391.2.ph.i = phi ptr [ %.sroa.0391.1912.i, %bb.bi ], [ %.sroa.0391.1912.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0391.10.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i ], [ %.sroa.0391.10.i, %bb.bs ], [ %.sroa.0391.10.i, %bb.bw ], [ %.sroa.0391.10.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0391.1912.i, %bb.av ]
  %.sroa.16.2.ph.i = phi ptr [ %.sroa.16.1914.i, %bb.bi ], [ %.sroa.16.1914.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.16.10.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i ], [ %.sroa.16.10.i, %bb.bs ], [ %.sroa.16.10.i, %bb.bw ], [ %.sroa.16.10.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.16.1914.i, %bb.av ]
  %lpad.loopexit500.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp497.i:                          ; preds = %.invoke1543, %bb.cf, %bb.bu, %bb.bn, %bb.at
  %.sroa.0391.2.ph498.i = phi ptr [ %.sroa.0391.1912.i, %bb.bn ], [ %.sroa.0391.1912.i, %bb.at ], [ %.sroa.0391.1912.i, %.invoke1543 ], [ %.sroa.0391.10.i, %bb.cf ], [ %.sroa.0391.10.i, %bb.bu ]
  %.sroa.16.2.ph499.i = phi ptr [ %.sroa.16.1914.i, %bb.bn ], [ %.sroa.16.1914.i, %bb.at ], [ %.sroa.16.1914.i, %.invoke1543 ], [ %.sroa.16.10.i, %bb.cf ], [ %.sroa.16.10.i, %bb.bu ]
  %.sroa.0379.2.ph.i = phi ptr [ %.sroa.0379.1915.i, %bb.bn ], [ %.sroa.0379.1915.i, %bb.at ], [ %.sroa.0379.1915.i, %.invoke1543 ], [ %.sroa.0379.10.i, %bb.cf ], [ %.sroa.0379.1915.i, %bb.bu ]
  %.sroa.20.2.ph.i = phi ptr [ %.sroa.20.1917.i, %bb.bn ], [ %.sroa.20.1917.i, %bb.at ], [ %.sroa.20.1917.i, %.invoke1543 ], [ %.sroa.20.10.i, %bb.cf ], [ %.sroa.20.1917.i, %bb.bu ]
  %lpad.loopexit.split-lp501.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.ch:                                            ; preds = %bb.ce
  %i.ni = and i32 %i.ne, 31
  %i.nj = shl nuw i32 1, %i.ni
  %i.nk = lshr i64 %i.ng, 5
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0379.10.i, i64 %i.nk ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !117
  %i.nn = or i32 %i.nm, %i.nj
  store i32 %i.nn, ptr %i.nl, align 4, !tbaa !117
  %i.no = add nuw nsw i64 %.0181900.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.no, %i.mr
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.cd, !llvm.loop !330

.loopexit482.i:                                   ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %ggml_backend_sched_get_tensor_backend.exit311.i
  %.sroa.0391.3.i = phi ptr [ %.sroa.0391.1912.i, %ggml_backend_sched_get_tensor_backend.exit311.i ], [ %.sroa.0391.10.i, %.preheader.lr.ph.i ], [ %.sroa.0391.10.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %.sroa.0391.10.i, %._crit_edge.i ] ; 2 uses
  %.sroa.11.2.i = phi ptr [ %.sroa.11.1913.i, %ggml_backend_sched_get_tensor_backend.exit311.i ], [ %.sroa.11.4.i, %.preheader.lr.ph.i ], [ %.sroa.11.4.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %.sroa.11.4.i, %._crit_edge.i ]
  %.sroa.16.3.i = phi ptr [ %.sroa.16.1914.i, %ggml_backend_sched_get_tensor_backend.exit311.i ], [ %.sroa.16.10.i, %.preheader.lr.ph.i ], [ %.sroa.16.10.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %.sroa.16.10.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0379.3.i = phi ptr [ %.sroa.0379.1915.i, %ggml_backend_sched_get_tensor_backend.exit311.i ], [ %.sroa.0379.10.i, %.preheader.lr.ph.i ], [ %.sroa.0379.10.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %.sroa.0379.10.i, %._crit_edge.i ] ; 4 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.1916.i, %ggml_backend_sched_get_tensor_backend.exit311.i ], [ %.sroa.13.5.i, %.preheader.lr.ph.i ], [ %.sroa.13.5.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %.sroa.13.5.i, %._crit_edge.i ]
  %.sroa.20.3.i = phi ptr [ %.sroa.20.1917.i, %ggml_backend_sched_get_tensor_backend.exit311.i ], [ %.sroa.20.10.i, %.preheader.lr.ph.i ], [ %.sroa.20.10.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %.sroa.20.10.i, %._crit_edge.i ] ; 2 uses
  %.2208.i = phi ptr [ %.1207918.i, %ggml_backend_sched_get_tensor_backend.exit311.i ], [ %.0185.i, %.preheader.lr.ph.i ], [ %.0185.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %.0185.i, %._crit_edge.i ]
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.loopexit482.i
  %indvars.iv1377.i = phi i64 [ %indvars.iv.next1378.i, %bb.ci ], [ 1, %.loopexit482.i ] ; 2 uses
  %.0179.i = phi i32 [ %i.nw, %bb.ci ], [ 0, %.loopexit482.i ] ; 9 uses
  %i.np = lshr i32 %.0179.i, 5
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0379.3.i, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !117
  %i.nt = and i32 %.0179.i, 31
  %i.nu = shl nuw i32 1, %i.nt
  %i.nv = and i32 %i.nu, %i.ns
  %.not475.i = icmp eq i32 %i.nv, 0
  %i.nw = add i32 %.0179.i, 1                     ; 3 uses
  %indvars.iv.next1378.i = add nuw i64 %indvars.iv1377.i, 1
  br i1 %.not475.i, label %bb.ci, label %.preheader478.i, !llvm.loop !331

.preheader478.i:                                  ; preds = %bb.ci
  %.0177.neg902.i = sub nsw i32 0, %.0179.i       ; 2 uses
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = icmp sgt i64 %i.gv, %i.nx
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.gx, i64 512) ; 2 uses
  %i.nz = add nsw i64 %i.gv, -1                   ; 2 uses
  br i1 %i.ny, label %.lr.ph.i, label %._crit_edge909.i

.lr.ph.i:                                         ; preds = %.preheader478.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.dy, i64 248
  br label %bb.cj

bb.cj:                                            ; preds = %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i", %.lr.ph.i
  %indvars.iv1379.i = phi i64 [ %indvars.iv1377.i, %.lr.ph.i ], [ %indvars.iv.next1380.i, %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i" ] ; 3 uses
  %.0177.neg907.i = phi i32 [ %.0177.neg902.i, %.lr.ph.i ], [ %.0177.neg.i, %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i" ]
  %.0175906.i = phi i32 [ %.0179.i, %.lr.ph.i ], [ %.1176.i, %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i" ] ; 4 uses
  %.0177905.i = phi i32 [ %.0179.i, %.lr.ph.i ], [ %.1178.i, %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i" ] ; 3 uses
  %.1180.in904.i = phi i32 [ %.0179.i, %.lr.ph.i ], [ %i.oe, %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i" ]
  %i.ob = lshr i64 %indvars.iv1379.i, 5
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0379.3.i, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !117
  %i.oe = trunc nuw i64 %indvars.iv1379.i to i32  ; 5 uses
  %i.of = and i32 %i.oe, 31
  %i.og = shl nuw i32 1, %i.of
  %i.oh = and i32 %i.od, %i.og
  %.not476.i = icmp eq i32 %i.oh, 0
  br i1 %.not476.i, label %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i", label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oi = icmp eq i32 %.1180.in904.i, %.0175906.i
  br i1 %i.oi, label %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i", label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.oj = sext i32 %.0177905.i to i64
  %i.ok = mul i64 %i.gx, %i.oj                    ; 2 uses
  %reass.sub.i.i = add i32 %.0177.neg907.i, 1
  %i.ol = add i32 %reass.sub.i.i, %.0175906.i
  %i.om = sext i32 %i.ol to i64
  %i.on = mul i64 %i.gx, %i.om
  %i.oo = sext i32 %.0175906.i to i64
  %i.op = icmp sgt i64 %i.nz, %i.oo
  %i.oq = select i1 %i.op, i64 %.sroa.speculated.i.i, i64 0
  %i.or = load ptr, ptr %i.oa, align 8, !tbaa !69
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ok
  %i.ot = add i64 %i.oq, %i.on
  invoke void @ggml_backend_tensor_set_async(ptr noundef %.fr.i, ptr noundef %i.fg, ptr noundef %i.os, i64 noundef %i.ok, i64 noundef %i.ot)
          to label %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i" unwind label %.thread454.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i": ; preds = %bb.cl, %bb.ck, %bb.cj
  %.1178.i = phi i32 [ %.0177905.i, %bb.cj ], [ %.0177905.i, %bb.ck ], [ %i.oe, %bb.cl ] ; 3 uses
  %.1176.i = phi i32 [ %.0175906.i, %bb.cj ], [ %i.oe, %bb.ck ], [ %i.oe, %bb.cl ] ; 3 uses
  %.0177.neg.i = sub i32 0, %.1178.i              ; 2 uses
  %indvars.iv.next1380.i = add i64 %indvars.iv1379.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1380.i, %i.gv
  br i1 %exitcond.not, label %._crit_edge909.i.loopexit, label %bb.cj, !llvm.loop !332

.thread454.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cl, %._crit_edge909.i
  %lpad.loopexit.split-lp1554 = landingpad { ptr, i32 }
          cleanup
  br label %.thread454.i

._crit_edge909.i.loopexit:                        ; preds = %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit.i"
  %.pre765 = add i32 %.1176.i, 1
  br label %._crit_edge909.i

._crit_edge909.i:                                 ; preds = %._crit_edge909.i.loopexit, %.preheader478.i
  %reass.sub.i323.i.pre-phi = phi i32 [ %.pre765, %._crit_edge909.i.loopexit ], [ %i.nw, %.preheader478.i ]
  %.0177.lcssa.i = phi i32 [ %.1178.i, %._crit_edge909.i.loopexit ], [ %.0179.i, %.preheader478.i ]
  %.0175.lcssa.i = phi i32 [ %.1176.i, %._crit_edge909.i.loopexit ], [ %.0179.i, %.preheader478.i ]
  %.0177.neg.lcssa.i = phi i32 [ %.0177.neg.i, %._crit_edge909.i.loopexit ], [ %.0177.neg902.i, %.preheader478.i ]
  %i.ou = sext i32 %.0177.lcssa.i to i64
  %i.ov = mul i64 %i.gx, %i.ou                    ; 2 uses
  %i.ow = add i32 %reass.sub.i323.i.pre-phi, %.0177.neg.lcssa.i
  %i.ox = sext i32 %i.ow to i64
  %i.oy = mul i64 %i.gx, %i.ox
  %i.oz = sext i32 %.0175.lcssa.i to i64
  %i.pa = icmp sgt i64 %i.nz, %i.oz
  %i.pb = select i1 %i.pa, i64 %.sroa.speculated.i.i, i64 0
  %i.pc = getelementptr inbounds nuw i8, ptr %i.dy, i64 248
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !69
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.ov
  %i.pf = add i64 %i.oy, %i.pb
  invoke void @ggml_backend_tensor_set_async(ptr noundef %.fr.i, ptr noundef %i.fg, ptr noundef %i.pe, i64 noundef %i.ov, i64 noundef %i.pf)
          to label %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit326.i" unwind label %.thread454.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

ggml_backend_buffer_is_host.exit.thread.i:        ; preds = %bb.ar, %bb.aq, %ggml_backend_buffer_is_host.exit.i, %bb.ao, %bb.an, %ggml_backend_event_wait.exit.i
  %i.pg = load ptr, ptr %i.bs, align 8, !tbaa !83 ; 2 uses
  %.not243.i = icmp eq ptr %i.pg, null
  br i1 %.not243.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %ggml_backend_buffer_is_host.exit.thread.i
  %i.ph = invoke noundef zeroext i1 %i.pg(ptr noundef %.0.i.i, ptr noundef nonnull %.fr.i, ptr noundef nonnull %i.dy, ptr noundef %i.fg)
          to label %bb.cn unwind label %.loopexit.split-lp492.i.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.ph, label %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit326.i", label %bb.co

bb.co:                                            ; preds = %bb.cn, %ggml_backend_buffer_is_host.exit.thread.i
  %.not.i327.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i327.i, label %.invoke, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !70 ; 2 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %ggml_backend_synchronize.exit330.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void %i.pj(ptr noundef nonnull %.0.i.i)
          to label %ggml_backend_synchronize.exit330.i unwind label %.loopexit.split-lp492.i.loopexit.split-lp.loopexit.split-lp, !inline_history !71

ggml_backend_synchronize.exit330.i:               ; preds = %bb.cq, %bb.cp
  %i.pl = load i32, ptr %i.ab, align 4, !tbaa !135
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.pm
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !179 ; 3 uses
  %.not244.i = icmp eq ptr %i.po, null
  br i1 %.not244.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %ggml_backend_synchronize.exit330.i
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !86 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 112
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !89 ; 2 uses
  %.not6.i332.i = icmp eq ptr %i.pr, null
  br i1 %.not6.i332.i, label %.invoke, label %.invoke.i

bb.cs:                                            ; preds = %ggml_backend_synchronize.exit330.i
  %i.ps = load ptr, ptr %i.bo, align 8, !tbaa !70 ; 2 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %ggml_backend_event_synchronize.exit336.invoke.i, label %.invoke1822.i

ggml_backend_event_synchronize.exit336.invoke.i:  ; preds = %bb.cs, %.invoke1822.i, %bb.ae, %.invoke.i
  invoke void @ggml_backend_tensor_copy(ptr noundef nonnull %i.dy, ptr noundef %i.fg)
          to label %"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit326.i" unwind label %.loopexit.split-lp492.i.loopexit.split-lp.loopexit.split-lp

"_ZZL33ggml_backend_sched_compute_splitsP18ggml_backend_schedENK3$_0clEii.exit326.i": ; preds = %ggml_backend_event_synchronize.exit336.invoke.i, %bb.cn, %._crit_edge909.i
  %.sroa.0391.5.i = phi ptr [ %.sroa.0391.3.i, %._crit_edge909.i ], [ %.sroa.0391.1912.i, %ggml_backend_event_synchronize.exit336.invoke.i ], [ %.sroa.0391.1912.i, %bb.cn ] ; 2 uses
  %.sroa.11.3.i = phi ptr [ %.sroa.11.2.i, %._crit_edge909.i ], [ %.sroa.11.1913.i, %ggml_backend_event_synchronize.exit336.invoke.i ], [ %.sroa.11.1913.i, %bb.cn ] ; 2 uses
  %.sroa.16.5.i = phi ptr [ %.sroa.16.3.i, %._crit_edge909.i ], [ %.sroa.16.1914.i, %ggml_backend_event_synchronize.exit336.invoke.i ], [ %.sroa.16.1914.i, %bb.cn ] ; 2 uses
  %.sroa.0379.5.i = phi ptr [ %.sroa.0379.3.i, %._crit_edge909.i ], [ %.sroa.0379.1915.i, %ggml_backend_event_synchronize.exit336.invoke.i ], [ %.sroa.0379.1915.i, %bb.cn ] ; 2 uses
  %.sroa.13.3.i = phi ptr [ %.sroa.13.2.i, %._crit_edge909.i ], [ %.sroa.13.1916.i, %ggml_backend_event_synchronize.exit336.invoke.i ], [ %.sroa.13.1916.i, %bb.cn ] ; 2 uses
  %.sroa.20.5.i = phi ptr [ %.sroa.20.3.i, %._crit_edge909.i ], [ %.sroa.20.1917.i, %ggml_backend_event_synchronize.exit336.invoke.i ], [ %.sroa.20.1917.i, %bb.cn ] ; 2 uses
  %.4210.i = phi ptr [ %.2208.i, %._crit_edge909.i ], [ %.1207918.i, %ggml_backend_event_synchronize.exit336.invoke.i ], [ %.1207918.i, %bb.cn ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %i.pu = load i32, ptr %i.aq, align 8, !tbaa !128
  %i.pv = sext i32 %i.pu to i64
  %i.pw = icmp slt i64 %indvars.iv.next.i, %i.pv
  br i1 %i.pw, label %bb.p, label %._crit_edge922.i, !llvm.loop !333

bb.ct:                                            ; preds = %._crit_edge922.i
  %.not.i341.i = icmp eq ptr %.fr.i, null
  br i1 %.not.i341.i, label %.invoke1545, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.px = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.py = getelementptr inbounds nuw i8, ptr %.fr.i, i64 104
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !76
  %i.qa = invoke noundef i32 %i.pz(ptr noundef nonnull %.fr.i, ptr noundef nonnull %i.px)
          to label %ggml_backend_graph_compute_async.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !inline_history !77 ; 2 uses

ggml_backend_graph_compute_async.exit.i:          ; preds = %bb.cu
  %.not234.i = icmp eq i32 %i.qa, 0
  br i1 %.not234.i, label %.thread440.i, label %ggml_backend_event_record.exit.i

.lr.ph942.split.i:                                ; preds = %.lr.ph942.i, %bb.db
  %.0174941.i = phi i32 [ %i.qv, %bb.db ], [ 0, %.lr.ph942.i ] ; 4 uses
  %i.qb = load ptr, ptr %i.by, align 8, !tbaa !338
  %i.qc = sext i32 %.0174941.i to i64             ; 3 uses
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !113 ; 3 uses
  %i.qf = load ptr, ptr %i.aj, align 8, !tbaa !183
  %i.qg = load ptr, ptr %i.ak, align 8, !tbaa !184
  %i.qh = invoke noundef zeroext i1 %i.qf(ptr noundef %i.qe, i1 noundef zeroext true, ptr noundef %i.qg)
          to label %.preheader477.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader477.i:                                  ; preds = %.lr.ph942.split.i
  br i1 %i.qh, label %.critedge.i, label %.lr.ph933.i.preheader

.lr.ph933.i.preheader:                            ; preds = %.preheader477.i
  %i.qi = load i32, ptr %i.bv, align 4, !tbaa !337
  %i.qj = add nsw i32 %i.qi, -1
  %i.qk = icmp slt i32 %.0174941.i, %i.qj
  br i1 %i.qk, label %.lr.ph, label %.critedge.loopexit.i

bb.cv:                                            ; preds = %.lr.ph
  br i1 %i.qu, label %..critedge.loopexit.i_crit_edge, label %.lr.ph933.i, !llvm.loop !327

.lr.ph933.i:                                      ; preds = %bb.cv
  %i.ql = load i32, ptr %i.bv, align 4, !tbaa !337
  %i.qm = add nsw i32 %i.ql, -1
  %i.qn = sext i32 %i.qm to i64
  %i.qo = icmp slt i64 %indvars.iv.next1384.i, %i.qn
  br i1 %i.qo, label %.lr.ph, label %.critedge.loopexit.i, !llvm.loop !327

.lr.ph:                                           ; preds = %.lr.ph933.i.preheader, %.lr.ph933.i
  %indvars.iv1383.i403 = phi i64 [ %indvars.iv.next1384.i, %.lr.ph933.i ], [ %i.qc, %.lr.ph933.i.preheader ]
  %i.qp = load ptr, ptr %i.by, align 8, !tbaa !338
  %indvars.iv.next1384.i = add nsw i64 %indvars.iv1383.i403, 1 ; 5 uses
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %indvars.iv.next1384.i
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !113 ; 3 uses
  %i.qs = load ptr, ptr %i.aj, align 8, !tbaa !183
  %i.qt = load ptr, ptr %i.ak, align 8, !tbaa !184
  %i.qu = invoke noundef zeroext i1 %i.qs(ptr noundef %i.qr, i1 noundef zeroext true, ptr noundef %i.qt)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !327

.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.o, %.lr.ph942.split.i, %.lr.ph942.split.us.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.df, %bb.cu, %bb.m, %bb.j
  %.sroa.0391.7.ph.ph.ph.i = phi ptr [ %.sroa.0391.01022.i, %bb.j ], [ %.sroa.0391.01022.i, %bb.m ], [ %.sroa.0391.1.lcssa.i, %bb.cu ], [ %.sroa.0391.1.lcssa.i, %bb.df ]
  %.sroa.16.7.ph.ph.ph.i = phi ptr [ %.sroa.16.01024.i, %bb.j ], [ %.sroa.16.01024.i, %bb.m ], [ %.sroa.16.1.lcssa.i, %bb.cu ], [ %.sroa.16.1.lcssa.i, %bb.df ]
  %.sroa.0379.7.ph.ph.ph.i = phi ptr [ %.sroa.0379.01025.i, %bb.j ], [ %.sroa.0379.01025.i, %bb.m ], [ %.sroa.0379.1.lcssa.i, %bb.cu ], [ %.sroa.0379.1.lcssa.i, %bb.df ]
end_hunk_0
