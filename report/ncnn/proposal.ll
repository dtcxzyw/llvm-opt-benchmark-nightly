Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/proposal?download=true
inline.NumInlined: 296
inline.NumDeleted: 150
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ncnn8Proposal10load_paramERKNS_9ParamDictE:bb.a
bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.ch) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.l, %bb.o, %bb.q, %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cq = load ptr, ptr %i.by, align 8, !tbaa !17 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %2, align 16, !tbaa !67
  store <2 x ptr> %i.cr, ptr %i.bx, align 8, !tbaa !67
  %i.cs = load i64, ptr %i.t, align 16, !tbaa !42
  store i64 %i.cs, ptr %i.cl, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !68
  store i32 %i.cu, ptr %i.cm, align 8, !tbaa !68
  %i.cv = load ptr, ptr %i.u, align 16, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cy = load <4 x i32>, ptr %i.cx, align 8, !tbaa !45
  store <4 x i32> %i.cy, ptr %i.cn, align 8, !tbaa !45
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !46
  store i32 %i.da, ptr %i.co, align 8, !tbaa !46
  %i.db = load i64, ptr %i.w, align 16, !tbaa !20
  store i64 %i.db, ptr %i.cp, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = atomicrmw add ptr %i.cq, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.t, label %_ZN4ncnn3MatD2Ev.exit8

bb.t:                                             ; preds = %bb.s
  %i.de = load ptr, ptr %i.u, align 16, !tbaa !18 ; 3 uses
  %.not3.i = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %2, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.x, !inline_history !0

bb.v:                                             ; preds = %bb.t
  %.not.i14 = icmp eq ptr %i.df, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.df) #10
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.x:                                             ; preds = %bb.u
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.s, %bb.r, %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 0

bb.y:                                             ; preds = %bb.o
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %i.by, align 8, !tbaa !17 ; 2 uses
  %.not.i9 = icmp eq ptr %i.dm, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = atomicrmw add ptr %i.dm, i32 -1 acq_rel, align 4
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.dp = load ptr, ptr %i.u, align 16, !tbaa !18 ; 3 uses
  %.not3.i10 = icmp eq ptr %i.dp, null
  %i.dq = load ptr, ptr %2, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i10, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef %i.dq)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ae, !inline_history !0

bb.ac:                                            ; preds = %bb.aa
  %.not.i13 = icmp eq ptr %i.dq, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %i.dq) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ae:                                            ; preds = %bb.ab
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.z, %bb.y, %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %common.resume
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn8Proposal7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %5 = alloca %"class.std::vector.8", align 8     ; 22 uses
  %6 = alloca %"class.std::vector.13", align 8    ; 18 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !89     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41   ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !90   ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.m = load i32, ptr %i.l, align 8, !tbaa !91   ; 2 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.r, align 8, !tbaa !20
  %i.s = mul nsw i32 %i.k, %i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 4, i32 noundef %i.s, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !93
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.w)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn8Proposal7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.u, ptr nonnull %4, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !43
  store float %i.z, ptr %i.d, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.aa = load float, ptr %i.x, align 4, !tbaa !43
  store float %i.aa, ptr %i.e, align 4, !tbaa !43
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !93
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ab)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn8Proposal7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %4, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ah = sitofp fast i32 %i.ag to float
  %i.ai = fmul fast float %i.ae, %i.ah            ; 2 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !45  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.noexc140.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %_ZN4ncnnL21qsort_descent_inplaceINS_4RectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit

.noexc140.lr.ph:                                  ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !45
  %.pre295 = load i32, ptr %i.b, align 4, !tbaa !45
  br label %.noexc140

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit97
  store ptr %.lcssa.a, ptr %i.aq, align 8
  store ptr %.lcssa280294, ptr %i.ar, align 8
  %.pre297 = load ptr, ptr %5, align 8, !tbaa !94
  %.pre298 = load ptr, ptr %i.ao, align 8, !tbaa !94
  %i.as = icmp eq ptr %.pre297, %.pre298
  %i.at = ptrtoint ptr %.lcssa280294 to i64       ; 2 uses
  store ptr %.lcssa, ptr %6, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.av = icmp eq ptr %.lcssa, %.lcssa.a
  %or.cond = select i1 %i.as, i1 true, i1 %i.av
  br i1 %or.cond, label %_ZN4ncnnL21qsort_descent_inplaceINS_4RectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.aw = ptrtoint ptr %.lcssa.a to i64
  %i.ax = ptrtoint ptr %.lcssa to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = lshr exact i64 %i.ay, 2
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.ba, -1
  call fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_4RectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %6, i32 noundef 0, i32 noundef %i.bb)
  br label %_ZN4ncnnL21qsort_descent_inplaceINS_4RectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit

bb.d:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.noexc140:                                        ; preds = %.noexc140.lr.ph, %_ZN4ncnn3MatD2Ev.exit97
  %i.bd = phi i32 [ %i.aj, %.noexc140.lr.ph ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit97 ] ; 2 uses
  %7 = phi i32 [ %.pre295, %.noexc140.lr.ph ], [ %9, %_ZN4ncnn3MatD2Ev.exit97 ] ; 2 uses
  %8 = phi i32 [ %.pre, %.noexc140.lr.ph ], [ %i.bz, %_ZN4ncnn3MatD2Ev.exit97 ] ; 2 uses
  %indvars.iv334 = phi i64 [ 0, %.noexc140.lr.ph ], [ %indvars.iv.next284, %_ZN4ncnn3MatD2Ev.exit97 ] ; 3 uses
  %.lcssa280295 = phi ptr [ null, %.noexc140.lr.ph ], [ %.lcssa280294, %_ZN4ncnn3MatD2Ev.exit97 ] ; 2 uses
  %.promoted = phi ptr [ null, %.noexc140.lr.ph ], [ %.lcssa.a, %_ZN4ncnn3MatD2Ev.exit97 ] ; 2 uses
  %.lcssa282286 = phi ptr [ null, %.noexc140.lr.ph ], [ %.lcssa, %_ZN4ncnn3MatD2Ev.exit97 ] ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !19, !noalias !95
  %i.bf = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !95
  %i.bg = mul i64 %i.bf, %indvars.iv334
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !95 ; 2 uses
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi
  %i.bk = trunc nuw nsw i64 %indvars.iv334 to i32
  %i.bl = add nuw nsw i32 %i.bd, %i.bk
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !19, !noalias !96
  %i.bn = load i64, ptr %i.am, align 8, !tbaa !20, !noalias !96
  %i.bo = sext i32 %i.bl to i64
  %i.bp = mul i64 %i.bn, %i.bo
  %i.bq = load i64, ptr %i.an, align 8, !tbaa !42, !noalias !96
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br
  %i.bt = mul nsw i32 %7, %8
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit97

.lr.ph:                                           ; preds = %.noexc140
  %i.bv = load i32, ptr %i.q, align 4, !tbaa !41, !noalias !95
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %i.bh, %i.bw
  br label %bb.e

_ZN4ncnn3MatD2Ev.exit97.loopexit:                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.pre296 = load i32, ptr %i.c, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit97

_ZN4ncnn3MatD2Ev.exit97:                          ; preds = %_ZN4ncnn3MatD2Ev.exit97.loopexit, %.noexc140
  %i.by = phi i32 [ %i.bd, %.noexc140 ], [ %.pre296, %_ZN4ncnn3MatD2Ev.exit97.loopexit ] ; 2 uses
  %9 = phi i32 [ %7, %.noexc140 ], [ %i.em, %_ZN4ncnn3MatD2Ev.exit97.loopexit ]
  %i.bz = phi i32 [ %8, %.noexc140 ], [ %i.el, %_ZN4ncnn3MatD2Ev.exit97.loopexit ]
  %.lcssa280294 = phi ptr [ %.lcssa280295, %.noexc140 ], [ %i.ei, %_ZN4ncnn3MatD2Ev.exit97.loopexit ] ; 3 uses
  %.lcssa.a = phi ptr [ %.promoted, %.noexc140 ], [ %i.ej, %_ZN4ncnn3MatD2Ev.exit97.loopexit ] ; 6 uses
  %.lcssa = phi ptr [ %.lcssa282286, %.noexc140 ], [ %i.ek, %_ZN4ncnn3MatD2Ev.exit97.loopexit ] ; 6 uses
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %i.ca = sext i32 %i.by to i64
  %i.cb = icmp slt i64 %indvars.iv.next284, %i.ca
  br i1 %i.cb, label %.noexc140, label %._crit_edge, !llvm.loop !73

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 3 uses
  %i.cc = phi ptr [ %.lcssa280295, %.lr.ph ], [ %i.ei, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 7 uses
  %10 = phi ptr [ %.promoted, %.lr.ph ], [ %i.ej, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 7 uses
  %i.cd = phi ptr [ %.lcssa282286, %.lr.ph ], [ %i.ek, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 10 uses
  %i.ce = mul i64 %i.bx, %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ce ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !43 ; 3 uses
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !43 ; 3 uses
  %i.cj = fadd fast float %i.ch, 1.000000e+00
  %i.ck = fsub fast float %i.cj, %i.ci
  %i.cl = fcmp fast ult float %i.ck, %i.ai
  br i1 %i.cl, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !43 ; 3 uses
  %i.cp = load float, ptr %i.cm, align 4, !tbaa !43 ; 3 uses
  %i.cq = fadd fast float %i.co, 1.000000e+00
  %i.cr = fsub fast float %i.cq, %i.cp
  %i.cs = fcmp fast ult float %i.cr, %i.ai
  br i1 %i.cs, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ct = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 7 uses
  %i.cu = load ptr, ptr %i.ap, align 8, !tbaa !50
  %.not.i143 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i143, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.ci, ptr %i.ct, align 4, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store float %i.cp, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !43
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.ch, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !43
  %.sroa.8214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store float %i.co, ptr %.sroa.8214.0..sroa_idx, align 4, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.cv, ptr %i.ao, align 8, !tbaa !49
  br label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.cw = load ptr, ptr %5, align 8, !tbaa !51    ; 4 uses
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 5 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775792
  br i1 %i.da, label %.invoke.sink.split, label %_ZNKSt6vectorIN4ncnn4RectESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN4ncnn4RectESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.db = ashr exact i64 %i.cz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 576460752303423487)
  %i.df = select i1 %i.dd, i64 576460752303423487, i64 %i.de ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dg = shl nuw nsw i64 %i.df, 4
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #20
          to label %.noexc145 unwind label %.loopexit ; 4 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIN4ncnn4RectESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.cz ; 5 uses
  store float %i.ci, ptr %i.di, align 4, !tbaa !43
  %.sroa.6.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store float %i.cp, ptr %.sroa.6.0..sroa_idx210, align 4, !tbaa !43
  %.sroa.7.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store float %i.ch, ptr %.sroa.7.0..sroa_idx212, align 4, !tbaa !43
  %.sroa.8214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store float %i.co, ptr %.sroa.8214.0..sroa_idx215, align 4, !tbaa !43
  %i.dj = icmp sgt i64 %i.cz, 0
  br i1 %i.dj, label %bb.j, label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.j:                                             ; preds = %.noexc145
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr align 4 %i.cw, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN4ncnn4RectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.j, %.noexc145
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.not.i17.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4ncnn4RectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.dl = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.dn) #19
  br label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4ncnn4RectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN4ncnn4RectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dh, ptr %5, align 8, !tbaa !51
  store ptr %i.dk, ptr %i.ao, align 8, !tbaa !49
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.do, ptr %i.ap, align 8, !tbaa !50
  br label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4ncnn4RectESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN4ncnn4RectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv ; 2 uses
  %.not.i146 = icmp eq ptr %10, %i.cc
  br i1 %.not.i146, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4ncnn4RectESaIS1_EE9push_backERKS1_.exit
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !43
  store float %i.dq, ptr %10, align 4, !tbaa !43
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 4
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.m:                                             ; preds = %_ZNSt6vectorIN4ncnn4RectESaIS1_EE9push_backERKS1_.exit
  %i.ds = ptrtoint ptr %i.cc to i64
  %i.dt = ptrtoint ptr %i.cd to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 6 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775804
  br i1 %i.dv, label %.invoke.sink.split, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.dw = ashr exact i64 %i.du, 2                 ; 3 uses
  %.sroa.speculated.i.i.i147 = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i147, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 2305843009213693951)
  %i.ea = select i1 %i.dy, i64 2305843009213693951, i64 %i.dz ; 3 uses
  %.not.i.i.i148 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i148)
  %i.eb = shl nuw nsw i64 %i.ea, 2
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #20
          to label %.noexc151 unwind label %.loopexit ; 4 uses

.noexc151:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  %i.ee = load float, ptr %i.dp, align 4, !tbaa !43
  store float %i.ee, ptr %i.ed, align 4, !tbaa !43
  %i.ef = icmp sgt i64 %i.du, 0
  br i1 %i.ef, label %bb.n, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc151
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ec, ptr align 4 %i.cd, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc151
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %.not.i17.i.i149 = icmp eq ptr %i.cd, null
  br i1 %.not.i17.i.i149, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.du) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ea
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.l, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.f, %bb.e
  %i.ei = phi ptr [ %i.cc, %bb.l ], [ %i.eh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.cc, %bb.f ], [ %i.cc, %bb.e ] ; 2 uses
  %i.ej = phi ptr [ %i.dr, %bb.l ], [ %i.eg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %10, %bb.f ], [ %10, %bb.e ] ; 2 uses
  %i.ek = phi ptr [ %i.cd, %bb.l ], [ %i.ec, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.cd, %bb.f ], [ %i.cd, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.el = load i32, ptr %i.a, align 4, !tbaa !45  ; 2 uses
  %i.em = load i32, ptr %i.b, align 4, !tbaa !45  ; 2 uses
  %i.en = mul nsw i32 %i.em, %i.el
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next, %i.eo
  br i1 %i.ep, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit97.loopexit, !llvm.loop !74

_ZN4ncnnL21qsort_descent_inplaceINS_4RectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit: ; preds = %._crit_edge.thread, %bb.c, %._crit_edge
  %i.eq = phi ptr [ %i.al, %._crit_edge.thread ], [ %i.au, %bb.c ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.er = phi ptr [ null, %._crit_edge.thread ], [ %.lcssa, %bb.c ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.es = phi ptr [ null, %._crit_edge.thread ], [ %.lcssa.a, %bb.c ], [ %.lcssa.a, %._crit_edge ] ; 4 uses
  %i.et = phi i64 [ 0, %._crit_edge.thread ], [ %i.at, %bb.c ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !38 ; 6 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %bb.p, label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.p:                                             ; preds = %_ZN4ncnnL21qsort_descent_inplaceINS_4RectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit
  %i.ex = load ptr, ptr %i.eq, align 8, !tbaa !49 ; 2 uses
  %i.ey = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 4                 ; 4 uses
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = icmp slt i32 %i.ev, %i.fd
  br i1 %i.fe, label %bb.q, label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ff = zext nneg i32 %i.ev to i64              ; 4 uses
  %i.fg = icmp ult i64 %i.fc, %i.ff
  br i1 %i.fg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fh = sub nuw nsw i64 %i.ff, %i.fc
  invoke void @_ZNSt6vectorIN4ncnn4RectESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.fh)
          to label %._ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit_crit_edge unwind label %.loopexit.split-lp

._ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit_crit_edge: ; preds = %bb.r
  %.pre299 = load i32, ptr %i.eu, align 8, !tbaa !38
  br label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit

bb.s:                                             ; preds = %bb.q
  %i.fi = icmp ugt i64 %i.fc, %i.ff
  br i1 %i.fi, label %bb.t, label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.ff ; 2 uses
  %.not.i.i = icmp eq ptr %i.ex, %i.fj
  br i1 %.not.i.i, label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4ncnn4RectES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4ncnn4RectES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.t
  store ptr %i.fj, ptr %i.eq, align 8, !tbaa !49
  br label %_ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit:  ; preds = %._ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPN4ncnn4RectES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.t, %bb.s
  %i.fk = phi i32 [ %.pre299, %._ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.ev, %_ZSt8_DestroyIPN4ncnn4RectES1_EvT_S3_RSaIT0_E.exit.i.i ], [ %i.ev, %bb.t ], [ %i.ev, %bb.s ]
  %i.fl = sext i32 %i.fk to i64                   ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.fn = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.fo = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 4 uses
  %i.fq = ashr exact i64 %i.fp, 2                 ; 7 uses
  %i.fr = icmp ult i64 %i.fq, %i.fl
  br i1 %i.fr, label %bb.u, label %bb.z

bb.u:                                             ; preds = %_ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit
  %i.fs = sub nuw nsw i64 %i.fl, %i.fq            ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fu = sub i64 %i.et, %i.fn
  %i.fv = ashr exact i64 %i.fu, 2                 ; 2 uses
  %i.fw = icmp ult i64 %i.fq, 2305843009213693952
  call void @llvm.assume(i1 %i.fw)
  %i.fx = xor i64 %i.fq, 2305843009213693951      ; 2 uses
  %i.fy = icmp ule i64 %i.fv, %i.fx
  call void @llvm.assume(i1 %i.fy)
  %.not28.i = icmp ult i64 %i.fv, %i.fs
  br i1 %.not28.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store float 0.000000e+00, ptr %i.es, align 4, !tbaa !43
  %i.fz = getelementptr i8, ptr %i.es, i64 4      ; 3 uses
  %i.ga = add nsw i64 %i.fs, -1                   ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.v
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ga, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.fz, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !43
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.v
  %.0.i.i.i.i = phi ptr [ %i.gc, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.fz, %bb.v ]
  store ptr %.0.i.i.i.i, ptr %i.fm, align 8, !tbaa !97
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.w:                                             ; preds = %bb.u
  %i.gd = icmp ult i64 %i.fx, %i.fs
  br i1 %i.gd, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

.invoke.sink.split:                               ; preds = %bb.m, %bb.i
  store ptr %10, ptr %i.aq, align 8
  store ptr %i.cc, ptr %i.ar, align 8
  store ptr %i.cd, ptr %6, align 8
  br label %.invoke

.invoke:                                          ; preds = %.invoke.sink.split, %bb.w
  %i.ge = phi ptr [ @.str.2, %bb.w ], [ @.str, %.invoke.sink.split ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ge) #21
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.w
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fq, i64 %i.fs)
  %i.gf = add nuw nsw i64 %.sroa.speculated.i.i, %i.fq
  %i.gg = call i64 @llvm.umin.i64(i64 %i.gf, i64 2305843009213693951) ; 2 uses
  %i.gh = shl nuw nsw i64 %i.gg, 2
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #20
          to label %.noexc170 unwind label %.loopexit.split-lp ; 4 uses

.noexc170:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.fp ; 3 uses
  store float 0.000000e+00, ptr %i.gj, align 4, !tbaa !43
  %i.gk = add nsw i64 %i.fs, -1                   ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc170
  %i.gm = getelementptr i8, ptr %i.gj, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.gk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gm, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !43
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc170
  %i.gn = icmp sgt i64 %i.fp, 0
  br i1 %i.gn, label %bb.x, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.x:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gi, ptr align 4 %i.er, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.x, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.er, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.go = sub i64 %i.et, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.go) #19
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i: ; preds = %bb.y, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.gi, ptr %6, align 8, !tbaa !54
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.fs
  store ptr %i.gp, ptr %i.fm, align 8, !tbaa !97
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.gq, ptr %i.ft, align 8, !tbaa !98
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.z:                                             ; preds = %_ZNSt6vectorIN4ncnn4RectESaIS1_EE6resizeEm.exit
  %i.gr = icmp ugt i64 %i.fq, %i.fl
  br i1 %i.gr, label %bb.aa, label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fl ; 2 uses
  %.not.i.i153 = icmp eq ptr %i.es, %i.gs
  br i1 %.not.i.i153, label %_ZNSt6vectorImSaImEE5clearEv.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.aa
  store ptr %i.gs, ptr %i.fm, align 8, !tbaa !97
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN4ncnn4RectESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  store ptr %10, ptr %i.aq, align 8
  store ptr %i.cc, ptr %i.ar, align 8
  store ptr %i.cd, ptr %6, align 8
  br label %_ZN4ncnn3MatD2Ev.exit96

.loopexit.split-lp:                               ; preds = %.invoke, %bb.r, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit96thread-pre-split

_ZNSt6vectorImSaImEE5clearEv.exit.i:              ; preds = %_ZN4ncnnL21qsort_descent_inplaceINS_4RectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit, %bb.p, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, %bb.z, %bb.aa, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !39
  %i.gv = load ptr, ptr %i.eq, align 8, !tbaa !49 ; 2 uses
  %i.gw = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 5 uses
  %i.ha = ashr exact i64 %i.gz, 4                 ; 8 uses
  %i.hb = icmp ugt i64 %i.ha, 2305843009213693951
  br i1 %i.hb, label %.noexc.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc157 unwind label %bb.ap

.noexc157:                                        ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, %i.gw
  br i1 %.not.i.i.i.i.i, label %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_4RectESaIS1_EERS0_ImSaImEEf.exit, label %.noexc41.i

.noexc41.i:                                       ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.hc = ashr exact i64 %i.gz, 2                 ; 3 uses
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #20
          to label %.noexc158 unwind label %bb.ap ; 12 uses

.noexc158:                                        ; preds = %.noexc41.i
  store float 0.000000e+00, ptr %i.hd, align 4, !tbaa !43
  %i.he = add nsw i64 %i.ha, -1                   ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.lr.ph.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc158
  %i.hg = getelementptr i8, ptr %i.hd, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.he, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.hg, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !43
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc158
  %i.hh = load ptr, ptr %5, align 8, !tbaa !51    ; 9 uses
  %min.iters.check = icmp ult i64 %i.ha, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.hi = ashr exact i64 %i.gz, 2
  %i.hj = getelementptr i8, ptr %i.hd, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hh, i64 %i.gz
  %bound0 = icmp ult ptr %i.hd, %i.hk
  %bound1 = icmp ult ptr %i.hh, %i.hj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ha, 2305843009213693948     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index ; 4 uses
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.hw = load float, ptr %i.hs, align 4, !tbaa !100, !alias.scope !101
  %i.hx = load float, ptr %i.ht, align 4, !tbaa !100, !alias.scope !101
  %i.hy = load float, ptr %i.hu, align 4, !tbaa !100, !alias.scope !101
  %i.hz = load float, ptr %i.hv, align 4, !tbaa !100, !alias.scope !101
  %i.ia = insertelement <4 x float> poison, float %i.hw, i64 0
  %i.ib = insertelement <4 x float> %i.ia, float %i.hx, i64 1
  %i.ic = insertelement <4 x float> %i.ib, float %i.hy, i64 2
  %i.id = insertelement <4 x float> %i.ic, float %i.hz, i64 3
  %i.ie = load float, ptr %i.hl, align 4, !tbaa !102, !alias.scope !101
  %i.if = load float, ptr %i.hn, align 4, !tbaa !102, !alias.scope !101
  %i.ig = load float, ptr %i.hp, align 4, !tbaa !102, !alias.scope !101
  %i.ih = load float, ptr %i.hr, align 4, !tbaa !102, !alias.scope !101
  %i.ii = insertelement <4 x float> poison, float %i.ie, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.if, i64 1
  %i.ik = insertelement <4 x float> %i.ij, float %i.ig, i64 2
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 3
  %i.im = fsub fast <4 x float> %i.id, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.io = getelementptr inbounds nuw i8, ptr %i.hm, i64 28
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ho, i64 44
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hq, i64 60
  %i.ir = load float, ptr %i.in, align 4, !tbaa !103, !alias.scope !101
  %i.is = load float, ptr %i.io, align 4, !tbaa !103, !alias.scope !101
  %i.it = load float, ptr %i.ip, align 4, !tbaa !103, !alias.scope !101
  %i.iu = load float, ptr %i.iq, align 4, !tbaa !103, !alias.scope !101
  %i.iv = insertelement <4 x float> poison, float %i.ir, i64 0
  %i.iw = insertelement <4 x float> %i.iv, float %i.is, i64 1
  %i.ix = insertelement <4 x float> %i.iw, float %i.it, i64 2
  %i.iy = insertelement <4 x float> %i.ix, float %i.iu, i64 3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ho, i64 36
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hq, i64 52
  %i.jd = load float, ptr %i.iz, align 4, !tbaa !104, !alias.scope !101
  %i.je = load float, ptr %i.ja, align 4, !tbaa !104, !alias.scope !101
  %i.jf = load float, ptr %i.jb, align 4, !tbaa !104, !alias.scope !101
  %i.jg = load float, ptr %i.jc, align 4, !tbaa !104, !alias.scope !101
  %i.jh = insertelement <4 x float> poison, float %i.jd, i64 0
  %i.ji = insertelement <4 x float> %i.jh, float %i.je, i64 1
  %i.jj = insertelement <4 x float> %i.ji, float %i.jf, i64 2
  %i.jk = insertelement <4 x float> %i.jj, float %i.jg, i64 3
  %i.jl = fsub fast <4 x float> %i.iy, %i.jk
  %i.jm = fmul fast <4 x float> %i.jl, %i.im
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index
  store <4 x float> %i.jm, ptr %i.jn, align 4, !tbaa !43, !alias.scope !105, !noalias !101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ha, %n.vec
  br i1 %cmp.n, label %.lr.ph70.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.03760.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.03760.i.ph, 1
  %i.jp = and i64 %i.gz, 16
  %lcmp.mod.not = icmp eq i64 %i.jp, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %.03760.i.ph ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load <2 x float>, ptr %i.jr, align 4, !tbaa !43
  %i.jt = load <2 x float>, ptr %i.jq, align 4, !tbaa !43
  %i.ju = fsub fast <2 x float> %i.js, %i.jt
  %i.jv = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.ju)
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.03760.i.ph
  store float %i.jv, ptr %i.jw, align 4, !tbaa !43
  %i.jx = or disjoint i64 %.03760.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03760.i.unr = phi i64 [ %.03760.i.ph, %scalar.ph.preheader ], [ %i.jx, %scalar.ph.prol ]
  %i.jy = icmp eq i64 %i.ha, %.neg
  br i1 %i.jy, label %.lr.ph70.i.preheader, label %scalar.ph

.lr.ph70.i.preheader:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br label %.lr.ph70.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03760.i = phi i64 [ %i.ko, %scalar.ph ], [ %.03760.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %.03760.i ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load <2 x float>, ptr %i.ka, align 4, !tbaa !43
  %i.kc = load <2 x float>, ptr %i.jz, align 4, !tbaa !43
  %i.kd = fsub fast <2 x float> %i.kb, %i.kc
  %i.ke = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.kd)
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.03760.i
  store float %i.ke, ptr %i.kf, align 4, !tbaa !43
  %i.kg = add nuw nsw i64 %.03760.i, 1            ; 2 uses
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load <2 x float>, ptr %i.ki, align 4, !tbaa !43
  %i.kk = load <2 x float>, ptr %i.kh, align 4, !tbaa !43
  %i.kl = fsub fast <2 x float> %i.kj, %i.kk
  %i.km = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.kl)
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.kg
  store float %i.km, ptr %i.kn, align 4, !tbaa !43
  %i.ko = add nuw nsw i64 %.03760.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ko, %i.ha
  br i1 %exitcond.not.i.1, label %.lr.ph70.i.preheader, label %scalar.ph, !llvm.loop !79

._crit_edge71.i:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hc) #19
  %i.kp = ptrtoint ptr %.sroa.15202.2 to i64
  br label %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_4RectESaIS1_EERS0_ImSaImEEf.exit

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  %.sroa.0193.1 = phi ptr [ %.sroa.0193.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ] ; 3 uses
  %.sroa.15202.1 = phi ptr [ %.sroa.15202.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ]
  %.sroa.21.1 = phi ptr [ %.sroa.21.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ] ; 6 uses
  %i.kq = phi ptr [ %i.my, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ] ; 9 uses
  %i.kr = phi ptr [ %i.mz, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph70.i.preheader ] ; 6 uses
  %storemerge69.i = phi i64 [ %i.na, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ 0, %.lr.ph70.i.preheader ] ; 5 uses
  %i.ks = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.kv = sub i64 %i.kt, %i.ku                    ; 5 uses
  %i.kw = ashr exact i64 %i.kv, 3                 ; 4 uses
  %.not74.i = icmp eq ptr %i.kr, %i.kq
end_hunk_0
