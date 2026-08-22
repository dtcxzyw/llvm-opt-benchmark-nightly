Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/AABB?download=true
inline.NumInlined: 10877
inline.NumDeleted: 4724
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE4initINS2_IiLin1ELi2ELi0ELin1ELi2EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EEi:bb.a
bb.u:                                             ; preds = %.invoke
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %.sink.split.i
  %i.cj = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %.sink.i, %.sink.split.i ] ; 6 uses
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !201
  store i64 2, ptr %i.cc, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !34 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !201 ; 7 uses
  %i.co = icmp sgt i64 %i.cn, 0
  %.pre89 = load ptr, ptr %11, align 8            ; 2 uses
  %i.cp = trunc i64 %i.cl to i32
  %i.cq = icmp sgt i32 %i.cp, 0
  %or.cond = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge83.split

.preheader.preheader:                             ; preds = %bb.w
  %wide.trip.count = and i64 %i.cl, 2147483647
  %i.cr = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 3
  %unroll_iter = and i64 %i.cl, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod101 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv85 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next86, %._crit_edge ] ; 3 uses
  %i.ct = getelementptr [4 x i8], ptr %.pre89, i64 %indvars.iv85 ; 5 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv85 to i32  ; 5 uses
  br i1 %i.cs, label %.epil.preheader, label %.preheader.new

._crit_edge83.split.loopexit:                     ; preds = %._crit_edge
  %.pre = load ptr, ptr %11, align 8, !tbaa !30
  br label %._crit_edge83.split

._crit_edge83.split:                              ; preds = %._crit_edge83.split.loopexit, %bb.w
  %i.cv = phi ptr [ %.pre, %._crit_edge83.split.loopexit ], [ %.pre89, %bb.w ]
  call void @free(ptr noundef %i.cv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.cw = load ptr, ptr %10, align 8, !tbaa !232
  call void @free(ptr noundef %i.cw) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEELi2EE4initINS2_IiLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE(ptr noundef nonnull align 16 dereferenceable(68) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.z unwind label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %11, align 8, !tbaa !30
  call void @free(ptr noundef %i.cy) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.cz = load ptr, ptr %10, align 8, !tbaa !232
  call void @free(ptr noundef %i.cz) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ab

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.y ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.da = mul nuw nsw i64 %i.cn, %indvars.iv.epil
  %i.db = getelementptr [4 x i8], ptr %i.ct, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !51
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.bz, %indvars.iv.epil
  %i.df = getelementptr [4 x i8], ptr %i.cj, i64 %i.dd
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.de
  store i32 %i.cu, ptr %i.dg, align 4, !tbaa !51
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.y, !llvm.loop !243

._crit_edge:                                      ; preds = %bb.y, %._crit_edge.unr-lcssa
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next86, %i.cn
  br i1 %exitcond88.not, label %._crit_edge83.split.loopexit, label %.preheader, !llvm.loop !244

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.dh = mul nuw nsw i64 %i.cn, %indvars.iv
  %i.di = getelementptr [4 x i8], ptr %i.ct, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !51
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul nsw i64 %i.bz, %indvars.iv
  %i.dm = getelementptr [4 x i8], ptr %i.cj, i64 %i.dk
  %i.dn = getelementptr [4 x i8], ptr %i.dm, i64 %i.dl
  store i32 %i.cu, ptr %i.dn, align 4, !tbaa !51
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.do = mul nuw nsw i64 %i.cn, %indvars.iv.next
  %i.dp = getelementptr [4 x i8], ptr %i.ct, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !51
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.bz, %indvars.iv.next
  %i.dt = getelementptr [4 x i8], ptr %i.cj, i64 %i.dr
  %i.du = getelementptr [4 x i8], ptr %i.dt, i64 %i.ds
  store i32 %i.cu, ptr %i.du, align 4, !tbaa !51
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dv = mul nuw nsw i64 %i.cn, %indvars.iv.next.1
  %i.dw = getelementptr [4 x i8], ptr %i.ct, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !51
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul nsw i64 %i.bz, %indvars.iv.next.1
  %i.ea = getelementptr [4 x i8], ptr %i.cj, i64 %i.dy
  %i.eb = getelementptr [4 x i8], ptr %i.ea, i64 %i.dz
  store i32 %i.cu, ptr %i.eb, align 4, !tbaa !51
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ec = mul nuw nsw i64 %i.cn, %indvars.iv.next.2
  %i.ed = getelementptr [4 x i8], ptr %i.ct, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !51
  %i.ef = sext i32 %i.ee to i64
  %i.eg = mul nsw i64 %i.bz, %indvars.iv.next.2
  %i.eh = getelementptr [4 x i8], ptr %i.cj, i64 %i.ef
  %i.ei = getelementptr [4 x i8], ptr %i.eh, i64 %i.eg
  store i32 %i.cu, ptr %i.ei, align 4, !tbaa !51
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !245

bb.z:                                             ; preds = %._crit_edge83.split
  %i.ej = load ptr, ptr %9, align 8, !tbaa !30
  call void @free(ptr noundef %i.ej) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ek = load ptr, ptr %8, align 8, !tbaa !232
  call void @free(ptr noundef %i.ek) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.el = load ptr, ptr %7, align 8, !tbaa !213
  call void @free(ptr noundef %i.el) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.ret102

bb.aa:                                            ; preds = %._crit_edge83.split
  %i.em = landingpad { ptr, i32 }
          cleanup
  %.pre90 = load ptr, ptr %9, align 8, !tbaa !30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.en = phi ptr [ %i.cj, %bb.x ], [ %.pre90, %bb.aa ]
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.x ], [ %i.em, %bb.aa ]
  call void @free(ptr noundef %i.en) #25
  br label %.body

.body:                                            ; preds = %bb.u, %bb.ab
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ab ], [ %i.ci, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ac

bb.ac:                                            ; preds = %.body, %bb.p
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body ], [ %i.bu, %bb.p ]
  %i.eo = load ptr, ptr %8, align 8, !tbaa !232
  call void @free(ptr noundef %i.eo) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ep = load ptr, ptr %7, align 8, !tbaa !213
  call void @free(ptr noundef %i.ep) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.o, %bb.n
  %.pn55 = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %i.bs, %bb.n ], [ %.pn.pn.pn.pn.pn.pn, %bb.ac ]
  resume { ptr, i32 } %.pn55
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE13intersect_rayINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEESH_RSt6vectorINS_3HitIfEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 1 %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %7 = alloca %"class.Eigen::Matrix.172", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = load <2 x float>, ptr %4, align 4, !tbaa !246
  %i.b = fdiv <2 x float> splat (float 1.000000e+00), %i.a
  store <2 x float> %i.b, ptr %6, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !246
  %i.f = fdiv float 1.000000e+00, %i.e
  store float %i.f, ptr %i.c, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !248
  call void @_ZN3igl13increment_ulpIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEvRNS1_10MatrixBaseIT_EEi(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef 2)
  %i.g = call noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE17intersect_ray_optINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEESH_SH_SH_RSt6vectorINS_3HitIfEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 1 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i1 %i.g
}

declare void @_ZN3igl13increment_ulpIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEvRNS1_10MatrixBaseIT_EEi(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE17intersect_ray_optINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEESH_SH_SH_RSt6vectorINS_3HitIfEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 1 %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 3 uses
  %i.d = alloca float, align 4                    ; 3 uses
  %8 = alloca %"class.Eigen::Block.387", align 8  ; 9 uses
  %9 = alloca %"class.std::vector.208", align 8   ; 11 uses
  %10 = alloca %"class.std::vector.208", align 8  ; 11 uses
  %i.e = load ptr, ptr %7, align 8, !tbaa !249    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !252
  %.not.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN3igl3HitIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3igl3HitIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.f, align 8, !tbaa !252
  br label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN3igl3HitIfEESaIS2_EE5clearEv.exit:  ; preds = %bb.a, %_ZSt8_DestroyIPN3igl3HitIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float +inf, ptr %i.b, align 4, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = call noundef zeroext i1 @_ZN3igl17ray_box_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEES3_fEEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EESC_RKNS1_10AlignedBoxIT1_Li3EEERKSE_SJ_RSE_SK_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 4 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br i1 %i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZNSt6vectorIN3igl3HitIfEESaIS2_EE5clearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !253    ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !261
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.s = load ptr, ptr %2, align 8, !tbaa !30, !noalias !262
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !34, !noalias !262
  store ptr %i.t, ptr %8, align 8, !tbaa !35, !alias.scope !262
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !39, !alias.scope !262
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %i.x, align 8, !tbaa !40, !alias.scope !262
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.r, ptr %i.y, align 8, !tbaa !39, !alias.scope !262
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !39, !alias.scope !262
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 1, ptr %i.aa, align 8, !tbaa !42, !alias.scope !262
  %i.ab = call noundef zeroext i1 @_ZN3igl18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEES3_NS2_IfLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKNS2_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERSt6vectorINS_3HitINSI_6ScalarEEESaIST_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ac = load ptr, ptr %7, align 8, !tbaa !265   ; 2 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !265 ; 2 uses
  %.not62 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not62, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !261
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.059.063 = phi ptr [ %i.ac, %.lr.ph ], [ %i.af, %bb.d ] ; 2 uses
  store i32 %i.ae, ptr %.sroa.059.063, align 4, !tbaa !266
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.059.063, i64 20 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.ad
  br i1 %.not, label %.loopexit, label %bb.d

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.ag = invoke noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE17intersect_ray_optINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEESH_SH_SH_RSt6vectorINS_3HitIfEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !268
  %i.ai = invoke noundef zeroext i1 @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE17intersect_ray_optINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEESH_SH_SH_RSt6vectorINS_3HitIfEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !265
  %i.ak = load ptr, ptr %9, align 8, !tbaa !265
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !265
  %i.an = load ptr, ptr %7, align 8, !tbaa !265   ; 2 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  invoke void @_ZNSt6vectorIN3igl3HitIfEESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ar, ptr %i.ak, ptr %i.am)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %7, align 8, !tbaa !265   ; 2 uses
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !265
  %i.au = load ptr, ptr %10, align 8, !tbaa !265
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !265
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.as, i64 %i.az
  invoke void @_ZNSt6vectorIN3igl3HitIfEESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ba, ptr %i.au, ptr %i.aw)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bb = or i1 %i.ag, %i.ai
  %i.bc = load ptr, ptr %10, align 8, !tbaa !249  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !269
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #26
  br label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit:      ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.bi = load ptr, ptr %9, align 8, !tbaa !249   ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit50, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !269
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #26
  br label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit50

_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit50:    ; preds = %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.loopexit

bb.l:                                             ; preds = %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.br, %bb.o ], [ %i.bq, %bb.n ], [ %i.bp, %bb.m ]
  %i.bs = load ptr, ptr %10, align 8, !tbaa !249  ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !269
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #26
  br label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit52

_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit52:    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.by = load ptr, ptr %9, align 8, !tbaa !249   ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit54, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit52
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !269
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #26
  br label %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit54

_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit54:    ; preds = %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit52, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %bb.d, %bb.c, %_ZNSt6vectorIN3igl3HitIfEESaIS2_EE5clearEv.exit, %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit50
  %.1 = phi i1 [ false, %_ZNSt6vectorIN3igl3HitIfEESaIS2_EE5clearEv.exit ], [ %i.bb, %_ZNSt6vectorIN3igl3HitIfEESaIS2_EED2Ev.exit50 ], [ %i.ab, %bb.c ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.209", align 8 ; 7 uses
  %4 = alloca %"class.Eigen::Matrix.209", align 8 ; 7 uses
  %5 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi3ELi0ELin1ELi3EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.b = load ptr, ptr %4, align 8, !tbaa !270
  call void @free(ptr noundef %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.c = load ptr, ptr %3, align 8, !tbaa !270
  call void @free(ptr noundef %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.f = load ptr, ptr %4, align 8, !tbaa !270
  call void @free(ptr noundef %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.g = load ptr, ptr %3, align 8, !tbaa !270
  call void @free(ptr noundef %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi3ELi0ELin1ELi3EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.209", align 8 ; 12 uses
  %9 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Matrix.209", align 8 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = sext i32 %6 to i64                       ; 3 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !270, !noalias !274
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !246 ; 2 uses
  %i.i = load float, ptr %i.d, align 8, !tbaa !246 ; 2 uses
  %i.j = fcmp olt float %i.h, %i.i
  %i.k = select i1 %i.j, float %i.h, float %i.i   ; 3 uses
  store float %i.k, ptr %i.d, align 8, !tbaa !246
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !246 ; 2 uses
  %i.o = load float, ptr %i.l, align 4, !tbaa !246 ; 2 uses
  %i.p = fcmp olt float %i.n, %i.o
  %i.q = select i1 %i.p, float %i.n, float %i.o   ; 3 uses
  store float %i.q, ptr %i.l, align 4, !tbaa !246
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.b, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !246 ; 2 uses
  %i.u = load float, ptr %i.r, align 8, !tbaa !246 ; 2 uses
  %i.v = fcmp olt float %i.t, %i.u
  %i.w = select i1 %i.v, float %i.t, float %i.u   ; 3 uses
  store float %i.w, ptr %i.r, align 8, !tbaa !246
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.y = load float, ptr %i.g, align 4, !tbaa !246 ; 2 uses
  %i.z = load float, ptr %i.x, align 4, !tbaa !246 ; 2 uses
  %i.aa = fcmp olt float %i.z, %i.y
  %i.ab = select i1 %i.aa, float %i.y, float %i.z ; 3 uses
  store float %i.ab, ptr %i.x, align 4, !tbaa !246
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ad = load float, ptr %i.m, align 4, !tbaa !246 ; 2 uses
  %i.ae = load float, ptr %i.ac, align 8, !tbaa !246 ; 2 uses
  %i.af = fcmp olt float %i.ae, %i.ad
  %i.ag = select i1 %i.af, float %i.ad, float %i.ae ; 3 uses
  store float %i.ag, ptr %i.ac, align 8, !tbaa !246
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ai = load float, ptr %i.s, align 4, !tbaa !246 ; 2 uses
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !246 ; 2 uses
  %i.ak = fcmp olt float %i.aj, %i.ai
  %i.al = select i1 %i.ak, float %i.ai, float %i.aj ; 3 uses
  store float %i.al, ptr %i.ah, align 4, !tbaa !246
  %i.am = load ptr, ptr %4, align 8, !tbaa !270, !noalias !277
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.e ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !273 ; 2 uses
  %i.aq = load float, ptr %i.an, align 4, !tbaa !246 ; 2 uses
  %i.ar = fcmp olt float %i.aq, %i.k
  %i.as = select i1 %i.ar, float %i.aq, float %i.k
  store float %i.as, ptr %i.d, align 8, !tbaa !246
  %i.at = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !246 ; 2 uses
  %i.av = fcmp olt float %i.au, %i.q
  %i.aw = select i1 %i.av, float %i.au, float %i.q
  store float %i.aw, ptr %i.l, align 4, !tbaa !246
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i60 = shl nsw i64 %i.ap, 3
  %i.ax = getelementptr inbounds i8, ptr %i.an, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i60 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !246 ; 2 uses
  %i.az = fcmp olt float %i.ay, %i.w
  %i.ba = select i1 %i.az, float %i.ay, float %i.w
  store float %i.ba, ptr %i.r, align 8, !tbaa !246
  %i.bb = load float, ptr %i.an, align 4, !tbaa !246 ; 2 uses
  %i.bc = fcmp olt float %i.ab, %i.bb
  %i.bd = select i1 %i.bc, float %i.bb, float %i.ab
  store float %i.bd, ptr %i.x, align 4, !tbaa !246
  %i.be = load float, ptr %i.at, align 4, !tbaa !246 ; 2 uses
  %i.bf = fcmp olt float %i.ag, %i.be
  %i.bg = select i1 %i.bf, float %i.be, float %i.ag
  store float %i.bg, ptr %i.ac, align 8, !tbaa !246
  %i.bh = load float, ptr %i.ax, align 4, !tbaa !246 ; 2 uses
  %i.bi = fcmp olt float %i.al, %i.bh
  %i.bj = select i1 %i.bi, float %i.bh, float %i.al
  store float %i.bj, ptr %i.ah, align 4, !tbaa !246
  %i.bk = load ptr, ptr %5, align 8, !tbaa !213
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.e
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !51 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !261
  %i.bo = icmp eq i32 %i.bm, -1
  br i1 %i.bo, label %bb.c, label %common.ret112

common.ret112:                                    ; preds = %bb.b, %bb.p, %bb.c
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bp = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.bq, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i, align 4, !tbaa !246
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i32 -1, ptr %i.br, align 8, !tbaa !261
  store ptr %i.bp, ptr %0, align 8, !tbaa !253
  %i.bs = shl nsw i32 %6, 1                       ; 2 uses
  %i.bt = or disjoint i32 %i.bs, 1
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi3ELi0ELin1ELi3EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %i.bt)
  %i.bu = load ptr, ptr %0, align 8, !tbaa !253
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %0, ptr %i.bv, align 8, !tbaa !280
  %i.bw = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bw, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.bx, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i63 = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i63, align 4, !tbaa !246
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i32 -1, ptr %i.by, align 8, !tbaa !261
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !268
  %i.ca = add nsw i32 %i.bs, 2
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi3ELi0ELin1ELi3EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %i.ca)
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !268
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %0, ptr %i.cc, align 8, !tbaa !280
  br label %common.ret112

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !201
  %i.cf = add nsw i64 %i.ce, -1
  call void @_ZN3igl5colonIiilEEN5Eigen6MatrixIT_Lin1ELi1ELi0ELin1ELi1EEET0_T1_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.160") align 8 %7, i32 noundef 0, i64 noundef %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !34
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.cj = load ptr, ptr %1, align 8, !tbaa !281   ; 8 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !283 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !284 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cm, 0
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.co, 3
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.e
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.cm, i64 noundef %i.co)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !273 ; 2 uses
  %.pre = load ptr, ptr %8, align 8, !tbaa !270   ; 8 uses
  %.pre105 = ptrtoaddr ptr %.pre to i64
  %i.cq = mul i64 %.pr.i.i.i.i.i.i.i, 3           ; 6 uses
  %i.cr = sdiv i64 %i.cq, 4
  %i.cs = shl nsw i64 %i.cr, 2                    ; 6 uses
  %i.ct = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 1
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.f
  %i.cu = icmp slt i64 %i.cs, %i.cq
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.cv = sub i64 %i.cq, %i.cs                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cv, 8
  %i.cw = sub i64 %i.ck, %.pre105
  %diff.check = icmp ugt i64 %i.cw, -32
  %or.cond107 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond107, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cv, -8                      ; 3 uses
  %i.cx = add i64 %i.cs, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = add i64 %i.cs, %index                   ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cy ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <4 x float>, ptr %i.da, align 4, !tbaa !246
  %wide.load106 = load <4 x float>, ptr %i.db, align 4, !tbaa !246
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x float> %wide.load, ptr %i.cz, align 4, !tbaa !246
  store <4 x float> %wide.load106, ptr %i.dc, align 4, !tbaa !246
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader108

.lr.ph.i.i.i.i.i.i.i.i.i.preheader108:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cx, %middle.block ] ; 4 uses
  %i.de = sub i64 %i.cq, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader108, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader108 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader108 ]
  %i.df = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !246
  store float %i.dh, ptr %i.df, align 4, !tbaa !246
  %i.di = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !288

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader108
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader108 ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.dj = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.cq
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !246
  store float %i.dn, ptr %i.dl, align 4, !tbaa !246
  %i.do = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.do
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.do
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !246
  store float %i.dr, ptr %i.dp, align 4, !tbaa !246
  %i.ds = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ds
  %i.du = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ds
  %i.dv = load float, ptr %i.du, align 4, !tbaa !246
  store float %i.dv, ptr %i.dt, align 4, !tbaa !246
  %i.dw = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.dw
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !246
  store float %i.dz, ptr %i.dx, align 4, !tbaa !246
  %i.ea = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ea, %i.cq
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !289

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.011.i.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.011.i.i.i.i.i.i.i.i
  %i.ed = load <4 x float>, ptr %i.ec, align 16, !tbaa !9
  store <4 x float> %i.ed, ptr %i.eb, align 16, !tbaa !9
  %i.ee = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ef = icmp slt i64 %i.ee, %i.cs
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !290

bb.g:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %bb.h
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.h:                                             ; preds = %bb.d
  invoke void @_ZN3igl10barycenterIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit unwind label %bb.g

_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !273 ; 11 uses
  store i64 0, ptr %9, align 8
  %i.ej = icmp sgt i64 %i.ei, 3074457345618258602
  br i1 %i.ej, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.not.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.em = icmp sgt i64 %i.ei, 0
  br i1 %i.em, label %bb.j, label %.sink.split.i

bb.j:                                             ; preds = %bb.i
  %i.en = icmp ugt i64 %i.ei, 1537228672809129301
  br i1 %i.en, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.j
  %i.eo = mul i64 %i.ei, 12
  %i.ep = call noalias ptr @malloc(i64 noundef %i.eo) #31 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.j, %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELin1ELi0ELin1ELin1EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.er = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.er, align 8, !tbaa !226
  invoke void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.i
  %.sink.i = phi ptr [ %i.ep, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.i ] ; 2 uses
  store ptr %.sink.i, ptr %9, align 8, !tbaa !30
  br label %bb.l

bb.k:                                             ; preds = %.invoke
  %i.es = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.ff = fcmp olt double %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.ff
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !12
  %i.fg = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.fh = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.fg, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !350 ; 2 uses
  %i.fi = fcmp olt double %i.fh, %.2
  br i1 %i.fi, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.fj = load i32, ptr %i.c, align 4, !tbaa !51
  store i32 %i.fj, ptr %6, align 4, !tbaa !51
  %i.fk = load <2 x double>, ptr %10, align 16, !tbaa !9
  store <2 x double> %i.fk, ptr %7, align 8, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fn = load double, ptr %i.fm, align 16, !tbaa !10
  store double %i.fn, ptr %i.fl, align 8, !tbaa !10
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi double [ %i.fh, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEdRKNS_10MatrixBaseIT_EE.exit58
  %i.fo = fcmp olt double %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fo
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !12
  %i.fp = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.dr, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !350 ; 2 uses
  %i.fq = fcmp olt double %i.fp, %.1
  br i1 %i.fq, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fr = load i32, ptr %i.b, align 4, !tbaa !51
  store i32 %i.fr, ptr %6, align 4, !tbaa !51
  %i.fs = load <2 x double>, ptr %9, align 16, !tbaa !9
  store <2 x double> %i.fs, ptr %7, align 8, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fv = load double, ptr %i.fu, align 16, !tbaa !10
  store double %i.fv, ptr %i.ft, align 8, !tbaa !10
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi double [ %i.fp, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fw = fcmp olt double %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fw, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !12
  %i.fx = load ptr, ptr %0, align 8, !tbaa !122
  %i.fy = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.fx, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %8), !inline_history !349 ; 2 uses
  %i.fz = fcmp olt double %i.fy, %.3
  br i1 %i.fz, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.ga = load i32, ptr %i.a, align 4, !tbaa !51
  store i32 %i.ga, ptr %6, align 4, !tbaa !51
  %i.gb = load <2 x double>, ptr %8, align 16, !tbaa !9
  store <2 x double> %i.gb, ptr %7, align 8, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ge = load double, ptr %i.gd, align 16, !tbaa !10
  store double %i.ge, ptr %i.gc, align 8, !tbaa !10
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi double [ %i.fy, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(12) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::Matrix.172", align 8 ; 5 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = fcmp ogt float %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !351    ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !354
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEfS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %14)
  %i.r = load float, ptr %i.g, align 4, !tbaa !246 ; 2 uses
  %i.s = fcmp olt float %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !51
  store i32 %i.t, ptr %6, align 4, !tbaa !51
  %i.u = load <2 x float>, ptr %14, align 8, !tbaa !246
  store <2 x float> %i.u, ptr %7, align 4, !tbaa !246
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = load float, ptr %i.w, align 8, !tbaa !246
  store float %i.x, ptr %i.v, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi float [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load float, ptr %3, align 4, !tbaa !246  ; 6 uses
  %i.aa = load float, ptr %i.y, align 4, !tbaa !246
  %i.ab = fcmp ugt float %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !246 ; 2 uses
  %i.af = load float, ptr %i.ac, align 4, !tbaa !246
  %i.ag = fcmp ugt float %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !246 ; 2 uses
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !246
  %i.al = fcmp ugt float %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fcmp ugt float %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fcmp ugt float %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.at = load float, ptr %i.as, align 4, !tbaa !246
  %i.au = fcmp ugt float %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.av = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %13), !inline_history !355 ; 2 uses
  %i.aw = fcmp olt float %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !51
  store i32 %i.ax, ptr %6, align 4, !tbaa !51
  %i.ay = load <2 x float>, ptr %13, align 8, !tbaa !246
  store <2 x float> %i.ay, ptr %7, align 4, !tbaa !246
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !246
  store float %i.bb, ptr %i.az, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi float [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !356
  %.pre162 = load float, ptr %3, align 4, !tbaa !246
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi float [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi float [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load float, ptr %i.be, align 4, !tbaa !246
  %i.bg = fcmp ugt float %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !246 ; 2 uses
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !246
  %i.bl = fcmp ugt float %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !246 ; 2 uses
  %i.bp = load float, ptr %i.bm, align 4, !tbaa !246
  %i.bq = fcmp ugt float %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fcmp ugt float %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fcmp ugt float %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.by = load float, ptr %i.bx, align 4, !tbaa !246
  %i.bz = fcmp ugt float %i.bo, %i.by
  br i1 %i.bz, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.ca = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.0161, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %12), !inline_history !357 ; 2 uses
  %i.cb = fcmp olt float %i.ca, %.0161
  br i1 %i.cb, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !51
  store i32 %i.cc, ptr %6, align 4, !tbaa !51
  %i.cd = load <2 x float>, ptr %12, align 8, !tbaa !246
  store <2 x float> %i.cd, ptr %7, align 4, !tbaa !246
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !246
  store float %i.cg, ptr %i.ce, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.h, %bb.i
  %.9 = phi float [ %i.ca, %bb.i ], [ %.0161, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre163 = load float, ptr %3, align 4, !tbaa !246
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  %i.ch = phi float [ %.pre163, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %i.bc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %i.bc, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 8 uses
  %.1 = phi float [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %.0161, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %.0161, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 10 uses
  %.0160 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !351   ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !246 ; 2 uses
  %i.cl = fcmp ogt float %i.ck, %i.ch
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cm = fsub float %i.ck, %i.ch                 ; 2 uses
  %i.cn = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %i.cp = load float, ptr %i.co, align 4, !tbaa !246 ; 2 uses
  %i.cq = fcmp ogt float %i.ch, %i.cp
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = fsub float %i.ch, %i.cp                 ; 2 uses
  %i.cs = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi float [ %i.cn, %bb.j ], [ %i.cs, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !246 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !246 ; 8 uses
  %i.cx = fcmp ogt float %i.cu, %i.cw
  br i1 %i.cx, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !246 ; 2 uses
  %i.da = fcmp ogt float %i.cw, %i.cz
  br i1 %i.da, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.db = fsub float %i.cw, %i.cz                 ; 2 uses
  %i.dc = call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %.1.i)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.dd = fsub float %i.cu, %i.cw                 ; 2 uses
  %i.de = call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.1.i = phi float [ %i.de, %bb.p ], [ %i.dc, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.dg = load float, ptr %i.df, align 4, !tbaa !246 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !246 ; 8 uses
  %i.dj = fcmp ogt float %i.dg, %i.di
  br i1 %i.dj, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !246 ; 2 uses
  %i.dm = fcmp ogt float %i.di, %i.dl
  br i1 %i.dm, label %bb.s, label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

bb.s:                                             ; preds = %bb.r
  %i.dn = fsub float %i.di, %i.dl                 ; 2 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.dp = fsub float %i.dg, %i.di                 ; 2 uses
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.r, %bb.s, %bb.t
  %.1.2.i = phi float [ %i.dq, %bb.t ], [ %i.do, %bb.s ], [ %.1.1.i, %bb.r ] ; 3 uses
  %i.dr = load ptr, ptr %i.k, align 8, !tbaa !356 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !246 ; 2 uses
  %i.du = fcmp ogt float %i.dt, %i.ch
  br i1 %i.du, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit
  %i.dv = fsub float %i.dt, %i.ch                 ; 2 uses
  %i.dw = call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float 0.000000e+00)
  br label %bb.x

bb.v:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !246 ; 2 uses
  %i.dz = fcmp ogt float %i.ch, %i.dy
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = fsub float %i.ch, %i.dy                 ; 2 uses
  %i.eb = call float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float 0.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1.i55 = phi float [ %i.dw, %bb.u ], [ %i.eb, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !246 ; 2 uses
  %i.ee = fcmp ogt float %i.ed, %i.cw
  br i1 %i.ee, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !246 ; 2 uses
  %i.eh = fcmp ogt float %i.cw, %i.eg
  br i1 %i.eh, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ei = fsub float %i.cw, %i.eg                 ; 2 uses
  %i.ej = call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %.1.i55)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ek = fsub float %i.ed, %i.cw                 ; 2 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %.1.i55)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.1.i56 = phi float [ %i.el, %bb.aa ], [ %i.ej, %bb.z ], [ %.1.i55, %bb.y ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.en = load float, ptr %i.em, align 4, !tbaa !246 ; 2 uses
  %i.eo = fcmp ogt float %i.en, %i.di
  br i1 %i.eo, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dr, i64 44
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !246 ; 2 uses
  %i.er = fcmp ogt float %i.di, %i.eq
  br i1 %i.er, label %bb.ad, label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.es = fsub float %i.di, %i.eq                 ; 2 uses
  %i.et = call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

bb.ae:                                            ; preds = %bb.ab
  %i.eu = fsub float %i.en, %i.di                 ; 2 uses
  %i.ev = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.1.2.i57 = phi float [ %i.ev, %bb.ae ], [ %i.et, %bb.ad ], [ %.1.1.i56, %bb.ac ] ; 3 uses
  %i.ew = fcmp olt float %.1.2.i, %.1.2.i57
  br i1 %i.ew, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58
  %i.ex = fcmp olt float %.1.2.i, %.1
  %or.cond = select i1 %.0159, i1 %i.ex, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.ey = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %11), !inline_history !355 ; 2 uses
  %i.ez = fcmp olt float %i.ey, %.1
  br i1 %i.ez, label %bb.ah, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.fa = load i32, ptr %i.d, align 4, !tbaa !51
  store i32 %i.fa, ptr %6, align 4, !tbaa !51
  %i.fb = load <2 x float>, ptr %11, align 8, !tbaa !246
  store <2 x float> %i.fb, ptr %7, align 4, !tbaa !246
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !246
  store float %i.fe, ptr %i.fc, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ag, %bb.ah
  %.10 = phi float [ %i.ey, %bb.ah ], [ %.1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi float [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.ff = fcmp olt float %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.ff
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.fg = load ptr, ptr %i.k, align 8, !tbaa !356
  %i.fh = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.fg, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %10), !inline_history !357 ; 2 uses
  %i.fi = fcmp olt float %i.fh, %.2
  br i1 %i.fi, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.fj = load i32, ptr %i.c, align 4, !tbaa !51
  store i32 %i.fj, ptr %6, align 4, !tbaa !51
  %i.fk = load <2 x float>, ptr %10, align 8, !tbaa !246
  store <2 x float> %i.fk, ptr %7, align 4, !tbaa !246
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !246
  store float %i.fn, ptr %i.fl, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi float [ %i.fh, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58
  %i.fo = fcmp olt float %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fo
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.fp = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.dr, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %9), !inline_history !357 ; 2 uses
  %i.fq = fcmp olt float %i.fp, %.1
  br i1 %i.fq, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fr = load i32, ptr %i.b, align 4, !tbaa !51
  store i32 %i.fr, ptr %6, align 4, !tbaa !51
  %i.fs = load <2 x float>, ptr %9, align 8, !tbaa !246
  store <2 x float> %i.fs, ptr %7, align 4, !tbaa !246
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !246
  store float %i.fv, ptr %i.ft, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi float [ %i.fp, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi float [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fw = fcmp olt float %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fw, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.fx = load ptr, ptr %0, align 8, !tbaa !351
  %i.fy = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.fx, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %8), !inline_history !355 ; 2 uses
  %i.fz = fcmp olt float %i.fy, %.3
  br i1 %i.fz, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.ga = load i32, ptr %i.a, align 4, !tbaa !51
  store i32 %i.ga, ptr %6, align 4, !tbaa !51
  %i.gb = load <2 x float>, ptr %8, align 8, !tbaa !246
  store <2 x float> %i.gb, ptr %7, align 4, !tbaa !246
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ge = load float, ptr %i.gd, align 8, !tbaa !246
  store float %i.ge, ptr %i.gc, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi float [ %i.fy, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi float [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEERiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(12) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef 0.000000e+00, float noundef +inf, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(12) %5)
  ret float %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.257") align 8 %0, ptr noundef nonnull align 16 dereferenceable(68) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %7 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %8 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %9 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %10 = alloca %"class.std::vector.257", align 16 ; 17 uses
  %11 = alloca %"class.std::vector.257", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %4, align 8, !tbaa !358    ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = load double, ptr %i.a, align 16, !tbaa !10
  %i.e = fcmp ugt double %i.d, %i.c
  br i1 %i.e, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !10 ; 2 uses
  %i.i = load double, ptr %i.f, align 8, !tbaa !10
  %i.j = fcmp ole double %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load double, ptr %i.k, align 16
  %i.m = fcmp ole double %i.c, %i.l
  %or.cond.not19.i = select i1 %i.j, i1 %i.m, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load double, ptr %i.n, align 8
  %i.p = fcmp ole double %i.h, %i.o
  %or.cond16.not.i = select i1 %or.cond.not19.i, i1 %i.p, i1 false
  br i1 %or.cond16.not.i, label %bb.b, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %bb.a, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.b:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.q = load ptr, ptr %1, align 16, !tbaa !157   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, null
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = load i32, ptr %i.w, align 16, !tbaa !149
  %i.y = tail call noundef double @_ZN3igl3EPSIdEET_v()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.z = sext i32 %i.x to i64
  %i.aa = load ptr, ptr %3, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.z ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !51
  %i.ae = sext i32 %i.ad to i64
  %i.af = load ptr, ptr %2, align 8, !tbaa !202, !noalias !360 ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !207 ; 3 uses
  %i.aj = load double, ptr %i.ag, align 8, !tbaa !10
  store double %i.aj, ptr %6, align 16, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ai
  %i.am = load double, ptr %i.al, align 8, !tbaa !10
  store double %i.am, ptr %i.ak, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !201 ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.ac, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.aq ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !10
  store double %i.as, ptr %7, align 16, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ai
  %i.av = load double, ptr %i.au, align 8, !tbaa !10
  store double %i.av, ptr %i.at, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %.idx.i = shl i64 %i.an, 3
  %i.aw = getelementptr i8, ptr %i.ac, i64 %.idx.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ay ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !10
  store double %i.ba, ptr %8, align 16, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ai
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !10
  store double %i.bd, ptr %i.bb, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.be = load ptr, ptr %4, align 8, !tbaa !358, !noalias !363
  %i.bf = load <2 x double>, ptr %i.be, align 1, !tbaa !9
  store <2 x double> %i.bf, ptr %9, align 16, !tbaa !9
  %i.bg = call noundef double @_ZN3igl17doublearea_singleIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEES3_S3_EENT_6ScalarERKNS1_10MatrixBaseIS4_EERKNS6_IT0_EERKNS6_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %9) ; 2 uses
  %i.bh = call noundef double @_ZN3igl17doublearea_singleIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEES3_S3_EENT_6ScalarERKNS1_10MatrixBaseIS4_EERKNS6_IT0_EERKNS6_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) ; 2 uses
  %i.bi = call noundef double @_ZN3igl17doublearea_singleIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEES3_S3_EENT_6ScalarERKNS1_10MatrixBaseIS4_EERKNS6_IT0_EERKNS6_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %9) ; 2 uses
  %i.bj = fadd double %i.bg, %i.bh
  %i.bk = fadd double %i.bj, %i.bi                ; 2 uses
  %i.bl = fdiv double %i.bi, %i.bk
  %i.bm = fneg double %i.y                        ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bh, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x double> %i.bo, %i.bq
  %i.bs = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fcmp ult <2 x double> %i.br, %i.bt
  %i.bv = bitcast <2 x i1> %i.bu to i2
  %or.cond.not.i = icmp eq i2 %i.bv, 0
  %i.bw = fcmp oge double %i.bl, %i.bm
  %i.bx = and i1 %i.bw, %or.cond.not.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.bx, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  %i.by = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #27 ; 3 uses
  store ptr %i.by, ptr %0, align 8, !tbaa !366
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !368
  %i.cb = load i32, ptr %i.w, align 16, !tbaa !51
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !369
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %10, ptr noundef nonnull align 16 dereferenceable(68) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cd = load ptr, ptr %10, align 16, !tbaa !370 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !370 ; 2 uses
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br i1 %i.cg, label %bb.g, label %.thread42

.thread42:                                        ; preds = %bb.f
  store ptr %i.cd, ptr %0, align 8, !tbaa !366
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !369
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ck = load ptr, ptr %i.cj, align 16, !tbaa !368
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !368
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !158
  invoke void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %11, ptr noundef nonnull align 16 dereferenceable(68) %i.cl, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %5, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.h
  %i.cm = load <2 x ptr>, ptr %11, align 16, !tbaa !370
  store <2 x ptr> %i.cm, ptr %0, align 8, !tbaa !370
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !368
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !368
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.g
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !370
  %i.cu = load ptr, ptr %11, align 16, !tbaa !370
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !370
  %i.cw = load ptr, ptr %10, align 16, !tbaa !370 ; 2 uses
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.cz
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %i.da, ptr %i.cu, ptr %i.cv)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %11, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !368
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.di = load <2 x ptr>, ptr %10, align 16, !tbaa !370
  store <2 x ptr> %i.di, ptr %0, align 8, !tbaa !370
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dl = load ptr, ptr %i.dk, align 16, !tbaa !368
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.pr = load ptr, ptr %11, align 16, !tbaa !366  ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i25, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !368
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %.pr to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.dq) #26
  br label %thread-pre-split

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.i ], [ %i.db, %bb.k ], [ %i.db, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.dr = load ptr, ptr %10, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit28, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !368
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit28

_ZNSt6vectorIiSaIiEED2Ev.exit28:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  resume { ptr, i32 } %.pn

thread-pre-split:                                 ; preds = %.thread, %bb.n
  %.pr34.pr = load ptr, ptr %10, align 16, !tbaa !366
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %bb.m
  %.pr34 = phi ptr [ %.pr34.pr, %thread-pre-split ], [ null, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %.not.i.i.i29 = icmp eq ptr %.pr34, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit30, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dy = load ptr, ptr %i.dx, align 16, !tbaa !368
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.pr34 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %.pr34, i64 noundef %i.eb) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

_ZNSt6vectorIiSaIiEED2Ev.exit30:                  ; preds = %.thread42, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit30, %bb.d, %.noexc, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSD_IT_EERKNSD_IT0_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.257") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %8 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %13 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %14 = alloca %"class.std::vector.257", align 16 ; 17 uses
  %15 = alloca %"class.std::vector.257", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.033.0.copyload = load ptr, ptr %4, align 8 ; 3 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %.sroa.434.0.copyload = load ptr, ptr %.sroa.434.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.434.0.copyload, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  %i.d = load double, ptr %.sroa.033.0.copyload, align 8, !tbaa !10 ; 2 uses
  %i.e = load double, ptr %i.a, align 8, !tbaa !10
  %i.f = fcmp ugt double %i.e, %i.d
  br i1 %i.f, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS_5BlockIKNS8_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEEEEELi2ELi3EE3runERKSO_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS_5BlockIKNS8_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEEEEELi2ELi3EE3runERKSO_.exit.i.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr [8 x i8], ptr %.sroa.033.0.copyload, i64 %i.c
  %i.i = load double, ptr %i.h, align 8, !tbaa !10 ; 2 uses
  %i.j = load double, ptr %i.g, align 8, !tbaa !10
  %i.k = fcmp ugt double %i.j, %i.i
  br i1 %i.k, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS_5BlockIKNS8_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEEEEELi2ELi3EE3runERKSO_.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.idx.i.i.i = shl i64 %i.c, 4
  %i.m = getelementptr i8, ptr %.sroa.033.0.copyload, i64 %.idx.i.i.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !10 ; 2 uses
  %i.o = load double, ptr %i.l, align 8, !tbaa !10
  %i.p = fcmp ole double %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load double, ptr %i.q, align 8
  %i.s = fcmp ole double %i.d, %i.r
  %or.cond.not29.i = select i1 %i.p, i1 %i.s, i1 false
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load double, ptr %i.t, align 8
  %i.v = fcmp ole double %i.i, %i.u
  %or.cond21.not26.i = select i1 %or.cond.not29.i, i1 %i.v, i1 false
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load double, ptr %i.w, align 8
  %i.y = fcmp ole double %i.n, %i.x
  %or.cond24.not.i = select i1 %or.cond21.not26.i, i1 %i.y, i1 false
  br i1 %or.cond24.not.i, label %bb.b, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %bb.a, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS_5BlockIKNS8_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEEEEELi2ELi3EE3runERKSO_.exit.i.i.i, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.b:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.z = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !26
  %i.ah = tail call noundef double @_ZN3igl3EPSIdEET_v()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ai = sext i32 %i.ag to i64
  %i.aj = load ptr, ptr %3, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr [4 x i8], ptr %i.aj, i64 %i.ai ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  %i.an = sext i32 %i.am to i64
  %i.ao = load ptr, ptr %2, align 8, !tbaa !202, !noalias !371 ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.an ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !207 ; 5 uses
  %i.as = load double, ptr %i.ap, align 8, !tbaa !10
  store double %i.as, ptr %6, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ar
  %i.av = load double, ptr %i.au, align 8, !tbaa !10
  store double %i.av, ptr %i.at, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ar, 4 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !10
  store double %i.ay, ptr %i.aw, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !201 ; 3 uses
  %i.ba = getelementptr [4 x i8], ptr %i.al, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !51
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bc ; 3 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !10
  store double %i.be, ptr %7, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ar
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !10
  store double %i.bh, ptr %i.bf, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bj = getelementptr inbounds i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !10
  store double %i.bk, ptr %i.bi, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %.idx.i = shl i64 %i.az, 3
  %i.bl = getelementptr i8, ptr %i.al, i64 %.idx.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !51
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bn ; 3 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !10
  store double %i.bp, ptr %8, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.ar
  %i.bs = load double, ptr %i.br, align 8, !tbaa !10
  store double %i.bs, ptr %i.bq, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !10
  store double %i.bv, ptr %i.bt, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %.idx66.i = mul i64 %i.az, 12
  %i.bw = getelementptr i8, ptr %i.al, i64 %.idx66.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !51
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.by ; 3 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !10
  store double %i.ca, ptr %9, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ar
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !10
  store double %i.cd, ptr %i.cb, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cf = getelementptr inbounds i8, ptr %i.bz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !10
  store double %i.cg, ptr %i.ce, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ch = load ptr, ptr %4, align 8, !tbaa !374   ; 3 uses
  %i.ci = load ptr, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !376, !nonnull !75, !align !76
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !207 ; 2 uses
  %i.cl = load double, ptr %i.ch, align 8, !tbaa !10
  store double %i.cl, ptr %10, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ck
  %i.co = load double, ptr %i.cn, align 8, !tbaa !10
  store double %i.co, ptr %i.cm, align 8, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i40.i = shl nsw i64 %i.ck, 4
  %i.cq = getelementptr inbounds i8, ptr %i.ch, i64 %.idx.i.i.i.i.i.i.i.i.i.i40.i
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !10
  store double %i.cr, ptr %i.cp, align 8, !tbaa !10
  %i.cs = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ct = load ptr, ptr %4, align 8, !tbaa !374   ; 3 uses
  %i.cu = load ptr, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !376, !nonnull !75, !align !76
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !207 ; 2 uses
  %i.cx = load double, ptr %i.ct, align 8, !tbaa !10
  store double %i.cx, ptr %11, align 8, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cw
  %i.da = load double, ptr %i.cz, align 8, !tbaa !10
  store double %i.da, ptr %i.cy, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i41.i = shl nsw i64 %i.cw, 4
  %i.dc = getelementptr inbounds i8, ptr %i.ct, i64 %.idx.i.i.i.i.i.i.i.i.i.i41.i
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !10
  store double %i.dd, ptr %i.db, align 8, !tbaa !10
  %i.de = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.df = load ptr, ptr %4, align 8, !tbaa !374   ; 3 uses
  %i.dg = load ptr, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !376, !nonnull !75, !align !76
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !207 ; 2 uses
  %i.dj = load double, ptr %i.df, align 8, !tbaa !10
  store double %i.dj, ptr %12, align 8, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.di
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !10
  store double %i.dm, ptr %i.dk, align 8, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i42.i = shl nsw i64 %i.di, 4
  %i.do = getelementptr inbounds i8, ptr %i.df, i64 %.idx.i.i.i.i.i.i.i.i.i.i42.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !10
  store double %i.dp, ptr %i.dn, align 8, !tbaa !10
  %i.dq = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %12) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.dr = load ptr, ptr %4, align 8, !tbaa !374   ; 3 uses
  %i.ds = load ptr, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !376, !nonnull !75, !align !76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !207 ; 2 uses
  %i.dv = load double, ptr %i.dr, align 8, !tbaa !10
  store double %i.dv, ptr %13, align 8, !tbaa !10
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.du
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !10
  store double %i.dy, ptr %i.dw, align 8, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i43.i = shl nsw i64 %i.du, 4
  %i.ea = getelementptr inbounds i8, ptr %i.dr, i64 %.idx.i.i.i.i.i.i.i.i.i.i43.i
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !10
  store double %i.eb, ptr %i.dz, align 8, !tbaa !10
  %i.ec = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %13) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.ed = fadd double %i.cs, %i.de
  %i.ee = fadd double %i.ed, %i.dq
  %i.ef = fadd double %i.ee, %i.ec
  %i.eg = fneg double %i.ah
  %i.eh = insertelement <4 x double> poison, double %i.cs, i64 0
  %i.ei = insertelement <4 x double> %i.eh, double %i.de, i64 1
  %i.ej = insertelement <4 x double> %i.ei, double %i.dq, i64 2
  %i.ek = insertelement <4 x double> %i.ej, double %i.ec, i64 3
  %i.el = insertelement <4 x double> poison, double %i.ef, i64 0
  %i.em = shufflevector <4 x double> %i.el, <4 x double> poison, <4 x i32> zeroinitializer
  %i.en = fdiv <4 x double> %i.ek, %i.em
  %i.eo = insertelement <4 x double> poison, double %i.eg, i64 0
  %i.ep = shufflevector <4 x double> %i.eo, <4 x double> poison, <4 x i32> zeroinitializer
  %i.eq = fcmp ult <4 x double> %i.en, %i.ep
  %i.er = bitcast <4 x i1> %i.eq to i4
  %i.es = icmp eq i4 %i.er, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.es, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  %i.et = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #27 ; 3 uses
  store ptr %i.et, ptr %0, align 8, !tbaa !366
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !368
  %i.ew = load i32, ptr %i.af, align 8, !tbaa !51
  store i32 %i.ew, ptr %i.et, align 4, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eu, ptr %i.ex, align 8, !tbaa !369
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSD_IT_EERKNSD_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %14, ptr noundef nonnull align 8 dereferenceable(76) %i.z, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ey = load ptr, ptr %14, align 16, !tbaa !370 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !370 ; 2 uses
  %i.fb = icmp eq ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.g, label %.thread44

.thread44:                                        ; preds = %bb.f
  store ptr %i.ey, ptr %0, align 8, !tbaa !366
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fa, ptr %i.fc, align 8, !tbaa !369
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ff = load ptr, ptr %i.fe, align 16, !tbaa !368
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !368
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.fg = load ptr, ptr %i.ab, align 8, !tbaa !47
  invoke void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSD_IT_EERKNSD_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %15, ptr noundef nonnull align 8 dereferenceable(76) %i.fg, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %5, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.h
  %i.fh = load <2 x ptr>, ptr %15, align 16, !tbaa !370
  store <2 x ptr> %i.fh, ptr %0, align 8, !tbaa !370
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fk = load ptr, ptr %i.fj, align 16, !tbaa !368
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !368
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.g
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !370
  %i.fp = load ptr, ptr %15, align 16, !tbaa !370
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !370
  %i.fr = load ptr, ptr %14, align 16, !tbaa !370 ; 2 uses
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = getelementptr inbounds i8, ptr %i.fr, i64 %i.fu
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.fv, ptr %i.fp, ptr %i.fq)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %15, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fz = load ptr, ptr %i.fy, align 16, !tbaa !368
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.gd = load <2 x ptr>, ptr %14, align 16, !tbaa !370
  store <2 x ptr> %i.gd, ptr %0, align 8, !tbaa !370
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gg = load ptr, ptr %i.gf, align 16, !tbaa !368
  store ptr %i.gg, ptr %i.ge, align 8, !tbaa !368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.pr = load ptr, ptr %15, align 16, !tbaa !366  ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i25, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gi = load ptr, ptr %i.gh, align 16, !tbaa !368
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %.pr to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.gl) #26
  br label %thread-pre-split

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.i ], [ %i.fw, %bb.k ], [ %i.fw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.gm = load ptr, ptr %14, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit28, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.go = load ptr, ptr %i.gn, align 16, !tbaa !368
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gr) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit28

_ZNSt6vectorIiSaIiEED2Ev.exit28:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  resume { ptr, i32 } %.pn

thread-pre-split:                                 ; preds = %.thread, %bb.n
  %.pr35.pr = load ptr, ptr %14, align 16, !tbaa !366
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %bb.m
  %.pr35 = phi ptr [ %.pr35.pr, %thread-pre-split ], [ null, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %.not.i.i.i29 = icmp eq ptr %.pr35, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit30, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gs = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gt = load ptr, ptr %i.gs, align 16, !tbaa !368
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %.pr35 to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %.pr35, i64 noundef %i.gw) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

_ZNSt6vectorIiSaIiEED2Ev.exit30:                  ; preds = %.thread44, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit30, %bb.d, %.noexc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.257") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %8 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %14 = alloca %"class.std::vector.257", align 16 ; 17 uses
  %15 = alloca %"class.std::vector.257", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %4, align 8, !tbaa !358    ; 3 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = load double, ptr %i.a, align 8, !tbaa !10
  %i.e = fcmp ugt double %i.d, %i.c
  br i1 %i.e, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !10 ; 2 uses
  %i.i = load double, ptr %i.f, align 8, !tbaa !10
  %i.j = fcmp ugt double %i.i, %i.h
  br i1 %i.j, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr i8, ptr %i.b, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !10 ; 2 uses
  %i.n = load double, ptr %i.k, align 8, !tbaa !10
  %i.o = fcmp ole double %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load double, ptr %i.p, align 8
  %i.r = fcmp ole double %i.c, %i.q
  %or.cond.not25.i = select i1 %i.o, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load double, ptr %i.s, align 8
  %i.u = fcmp ole double %i.h, %i.t
  %or.cond17.not22.i = select i1 %or.cond.not25.i, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load double, ptr %i.v, align 8
  %i.x = fcmp ole double %i.m, %i.w
  %or.cond20.not.i = select i1 %or.cond17.not22.i, i1 %i.x, i1 false
  br i1 %or.cond20.not.i, label %bb.b, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %bb.a, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.b:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !26
  %i.ag = tail call noundef double @_ZN3igl3EPSIdEET_v()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ah = sext i32 %i.af to i64
  %i.ai = load ptr, ptr %3, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %i.ah ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = sext i32 %i.al to i64
  %i.an = load ptr, ptr %2, align 8, !tbaa !202, !noalias !379 ; 4 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.am ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !207 ; 5 uses
  %i.ar = load double, ptr %i.ao, align 8, !tbaa !10
  store double %i.ar, ptr %6, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.aq
  %i.au = load double, ptr %i.at, align 8, !tbaa !10
  store double %i.au, ptr %i.as, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.aq, 4 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ao, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !10
  store double %i.ax, ptr %i.av, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !201 ; 3 uses
  %i.az = getelementptr [4 x i8], ptr %i.ak, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !51
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bb ; 3 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !10
  store double %i.bd, ptr %7, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.aq
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !10
  store double %i.bg, ptr %i.be, align 8, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !10
  store double %i.bj, ptr %i.bh, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %.idx.i = shl i64 %i.ay, 3
  %i.bk = getelementptr i8, ptr %i.ak, i64 %.idx.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !51
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bm ; 3 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !10
  store double %i.bo, ptr %8, align 8, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.aq
  %i.br = load double, ptr %i.bq, align 8, !tbaa !10
  store double %i.br, ptr %i.bp, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bt = getelementptr inbounds i8, ptr %i.bn, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !10
  store double %i.bu, ptr %i.bs, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %.idx62.i = mul i64 %i.ay, 12
  %i.bv = getelementptr i8, ptr %i.ak, i64 %.idx62.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !51
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bx ; 3 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !10
  store double %i.bz, ptr %9, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.aq
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !10
  store double %i.cc, ptr %i.ca, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ce = getelementptr inbounds i8, ptr %i.by, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !10
  store double %i.cf, ptr %i.cd, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.cg = load ptr, ptr %4, align 8, !tbaa !358   ; 2 uses
  %i.ch = load <2 x double>, ptr %i.cg, align 16, !tbaa !9
  store <2 x double> %i.ch, ptr %10, align 16, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cj = getelementptr i8, ptr %i.cg, i64 16
  %i.ck = load double, ptr %i.cj, align 16, !tbaa !10
  store double %i.ck, ptr %i.ci, align 16, !tbaa !10
  %i.cl = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cm = load ptr, ptr %4, align 8, !tbaa !358   ; 2 uses
  %i.cn = load <2 x double>, ptr %i.cm, align 16, !tbaa !9
  store <2 x double> %i.cn, ptr %11, align 16, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cp = getelementptr i8, ptr %i.cm, i64 16
  %i.cq = load double, ptr %i.cp, align 16, !tbaa !10
  store double %i.cq, ptr %i.co, align 16, !tbaa !10
  %i.cr = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cs = load ptr, ptr %4, align 8, !tbaa !358   ; 2 uses
  %i.ct = load <2 x double>, ptr %i.cs, align 16, !tbaa !9
  store <2 x double> %i.ct, ptr %12, align 16, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cv = getelementptr i8, ptr %i.cs, i64 16
  %i.cw = load double, ptr %i.cv, align 16, !tbaa !10
  store double %i.cw, ptr %i.cu, align 16, !tbaa !10
  %i.cx = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %12) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.cy = load ptr, ptr %4, align 8, !tbaa !358   ; 2 uses
  %i.cz = load <2 x double>, ptr %i.cy, align 16, !tbaa !9
  store <2 x double> %i.cz, ptr %13, align 16, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.db = getelementptr i8, ptr %i.cy, i64 16
  %i.dc = load double, ptr %i.db, align 16, !tbaa !10
  store double %i.dc, ptr %i.da, align 16, !tbaa !10
  %i.dd = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %13) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.de = fadd double %i.cl, %i.cr
  %i.df = fadd double %i.de, %i.cx
  %i.dg = fadd double %i.df, %i.dd
  %i.dh = fneg double %i.ag
  %i.di = insertelement <4 x double> poison, double %i.cl, i64 0
  %i.dj = insertelement <4 x double> %i.di, double %i.cr, i64 1
  %i.dk = insertelement <4 x double> %i.dj, double %i.cx, i64 2
  %i.dl = insertelement <4 x double> %i.dk, double %i.dd, i64 3
  %i.dm = insertelement <4 x double> poison, double %i.dg, i64 0
  %i.dn = shufflevector <4 x double> %i.dm, <4 x double> poison, <4 x i32> zeroinitializer
  %i.do = fdiv <4 x double> %i.dl, %i.dn
  %i.dp = insertelement <4 x double> poison, double %i.dh, i64 0
  %i.dq = shufflevector <4 x double> %i.dp, <4 x double> poison, <4 x i32> zeroinitializer
  %i.dr = fcmp ult <4 x double> %i.do, %i.dq
  %i.ds = bitcast <4 x i1> %i.dr to i4
  %i.dt = icmp eq i4 %i.ds, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.dt, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  %i.du = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #27 ; 3 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !366
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !368
  %i.dx = load i32, ptr %i.ae, align 8, !tbaa !51
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dv, ptr %i.dy, align 8, !tbaa !369
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %14, ptr noundef nonnull align 8 dereferenceable(76) %i.y, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dz = load ptr, ptr %14, align 16, !tbaa !370 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !370 ; 2 uses
  %i.ec = icmp eq ptr %i.dz, %i.eb
  br i1 %i.ec, label %bb.g, label %.thread43

.thread43:                                        ; preds = %bb.f
  store ptr %i.dz, ptr %0, align 8, !tbaa !366
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !369
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.eg = load ptr, ptr %i.ef, align 16, !tbaa !368
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !368
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.eh = load ptr, ptr %i.aa, align 8, !tbaa !47
  invoke void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %15, ptr noundef nonnull align 8 dereferenceable(76) %i.eh, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %5, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.h
  %i.ei = load <2 x ptr>, ptr %15, align 16, !tbaa !370
  store <2 x ptr> %i.ei, ptr %0, align 8, !tbaa !370
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.el = load ptr, ptr %i.ek, align 16, !tbaa !368
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !368
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.g
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !370
  %i.eq = load ptr, ptr %15, align 16, !tbaa !370
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !370
  %i.es = load ptr, ptr %14, align 16, !tbaa !370 ; 2 uses
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.es, i64 %i.ev
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.ew, ptr %i.eq, ptr %i.er)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %15, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !368
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fd) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.fe = load <2 x ptr>, ptr %14, align 16, !tbaa !370
  store <2 x ptr> %i.fe, ptr %0, align 8, !tbaa !370
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fh = load ptr, ptr %i.fg, align 16, !tbaa !368
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.pr = load ptr, ptr %15, align 16, !tbaa !366  ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i25, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fj = load ptr, ptr %i.fi, align 16, !tbaa !368
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %.pr to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fm) #26
  br label %thread-pre-split

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.em, %bb.i ], [ %i.ex, %bb.k ], [ %i.ex, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.fn = load ptr, ptr %14, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit28, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fp = load ptr, ptr %i.fo, align 16, !tbaa !368
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit28

_ZNSt6vectorIiSaIiEED2Ev.exit28:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  resume { ptr, i32 } %.pn

thread-pre-split:                                 ; preds = %.thread, %bb.n
  %.pr34.pr = load ptr, ptr %14, align 16, !tbaa !366
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %bb.m
  %.pr34 = phi ptr [ %.pr34.pr, %thread-pre-split ], [ null, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %.not.i.i.i29 = icmp eq ptr %.pr34, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit30, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !368
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %.pr34 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %.pr34, i64 noundef %i.fx) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

_ZNSt6vectorIiSaIiEED2Ev.exit30:                  ; preds = %.thread43, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit30, %bb.d, %.noexc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi2ELi1ELi1ELi2EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.257") align 8 %0, ptr noundef nonnull align 16 dereferenceable(68) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %7 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %8 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %9 = alloca %"class.Eigen::Matrix.68", align 16 ; 6 uses
  %10 = alloca %"class.std::vector.257", align 16 ; 17 uses
  %11 = alloca %"class.std::vector.257", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load double, ptr %4, align 8, !tbaa !10  ; 2 uses
  %i.c = load double, ptr %i.a, align 16, !tbaa !10
  %i.d = fcmp ugt double %i.c, %i.b
  br i1 %i.d, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr i8, ptr %4, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %i.h = load double, ptr %i.e, align 8, !tbaa !10
  %i.i = fcmp ole double %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load double, ptr %i.j, align 16
  %i.l = fcmp ole double %i.b, %i.k
  %or.cond.i.not38 = select i1 %i.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load double, ptr %i.m, align 8
  %i.o = fcmp ole double %i.g, %i.n
  %or.cond = select i1 %or.cond.i.not38, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %bb.a, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.b:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi2ELi1ELi1ELi2EEEEEEEEEE3allEv.exit.i
  %i.p = load ptr, ptr %1, align 16, !tbaa !157   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.w = load i32, ptr %i.v, align 16, !tbaa !149
  %i.x = tail call noundef double @_ZN3igl3EPSIdEET_v()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.y = sext i32 %i.w to i64
  %i.z = load ptr, ptr %3, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr [4 x i8], ptr %i.z, i64 %i.y ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load ptr, ptr %2, align 8, !tbaa !202, !noalias !382 ; 3 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !207 ; 3 uses
  %i.ai = load double, ptr %i.af, align 8, !tbaa !10
  store double %i.ai, ptr %6, align 16, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %i.al = load double, ptr %i.ak, align 8, !tbaa !10
  store double %i.al, ptr %i.aj, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.am = load i64, ptr %i.aa, align 8, !tbaa !201 ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.ab, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ap ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10
  store double %i.ar, ptr %7, align 16, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ah
  %i.au = load double, ptr %i.at, align 8, !tbaa !10
  store double %i.au, ptr %i.as, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %.idx.i = shl i64 %i.am, 3
  %i.av = getelementptr i8, ptr %i.ab, i64 %.idx.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !51
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ax ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !10
  store double %i.az, ptr %8, align 16, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ah
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !10
  store double %i.bc, ptr %i.ba, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bd = load <2 x double>, ptr %4, align 8, !tbaa !9
  store <2 x double> %i.bd, ptr %9, align 16, !tbaa !9
  %i.be = call noundef double @_ZN3igl17doublearea_singleIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEES3_S3_EENT_6ScalarERKNS1_10MatrixBaseIS4_EERKNS6_IT0_EERKNS6_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %9) ; 2 uses
  %i.bf = call noundef double @_ZN3igl17doublearea_singleIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEES3_S3_EENT_6ScalarERKNS1_10MatrixBaseIS4_EERKNS6_IT0_EERKNS6_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) ; 2 uses
  %i.bg = call noundef double @_ZN3igl17doublearea_singleIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEES3_S3_EENT_6ScalarERKNS1_10MatrixBaseIS4_EERKNS6_IT0_EERKNS6_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %9) ; 2 uses
  %i.bh = fadd double %i.be, %i.bf
  %i.bi = fadd double %i.bh, %i.bg                ; 2 uses
  %i.bj = fdiv double %i.bg, %i.bi
  %i.bk = fneg double %i.x                        ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bf, i64 1
  %i.bn = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x double> %i.bm, %i.bo
  %i.bq = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fcmp ult <2 x double> %i.bp, %i.br
  %i.bt = bitcast <2 x i1> %i.bs to i2
  %or.cond.not.i = icmp eq i2 %i.bt, 0
  %i.bu = fcmp oge double %i.bj, %i.bk
  %i.bv = and i1 %i.bu, %or.cond.not.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.bv, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  %i.bw = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #27 ; 3 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !366
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !368
  %i.bz = load i32, ptr %i.v, align 16, !tbaa !51
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !369
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi2ELi1ELi1ELi2EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %10, ptr noundef nonnull align 16 dereferenceable(68) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cb = load ptr, ptr %10, align 16, !tbaa !370 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !370 ; 2 uses
  %i.ce = icmp eq ptr %i.cb, %i.cd
  br i1 %i.ce, label %bb.g, label %.thread46

.thread46:                                        ; preds = %bb.f
  store ptr %i.cb, ptr %0, align 8, !tbaa !366
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !369
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !368
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !368
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !158
  invoke void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi2ELi1ELi1ELi2EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %11, ptr noundef nonnull align 16 dereferenceable(68) %i.cj, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %5, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.h
  %i.ck = load <2 x ptr>, ptr %11, align 16, !tbaa !370
  store <2 x ptr> %i.ck, ptr %0, align 8, !tbaa !370
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cn = load ptr, ptr %i.cm, align 16, !tbaa !368
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !368
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.g
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !370
  %i.cs = load ptr, ptr %11, align 16, !tbaa !370
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !370
  %i.cu = load ptr, ptr %10, align 16, !tbaa !370 ; 2 uses
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %i.cy, ptr %i.cs, ptr %i.ct)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %11, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dc = load ptr, ptr %i.db, align 16, !tbaa !368
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.dg = load <2 x ptr>, ptr %10, align 16, !tbaa !370
  store <2 x ptr> %i.dg, ptr %0, align 8, !tbaa !370
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dj = load ptr, ptr %i.di, align 16, !tbaa !368
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.pr = load ptr, ptr %11, align 16, !tbaa !366  ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i25, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dl = load ptr, ptr %i.dk, align 16, !tbaa !368
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %.pr to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.do) #26
  br label %thread-pre-split

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.co, %bb.i ], [ %i.cz, %bb.k ], [ %i.cz, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.dp = load ptr, ptr %10, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit28, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dr = load ptr, ptr %i.dq, align 16, !tbaa !368
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit28

_ZNSt6vectorIiSaIiEED2Ev.exit28:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  resume { ptr, i32 } %.pn

thread-pre-split:                                 ; preds = %.thread, %bb.n
  %.pr34.pr = load ptr, ptr %10, align 16, !tbaa !366
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %bb.m
  %.pr34 = phi ptr [ %.pr34.pr, %thread-pre-split ], [ null, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %.not.i.i.i29 = icmp eq ptr %.pr34, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit30, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dw = load ptr, ptr %i.dv, align 16, !tbaa !368
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %.pr34 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %.pr34, i64 noundef %i.dz) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

_ZNSt6vectorIiSaIiEED2Ev.exit30:                  ; preds = %.thread46, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit30, %bb.d, %.noexc, %_ZNK5Eigen10AlignedBoxIdLi2EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind noalias writable sret(%"class.std::vector.257") align 8 %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %8 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %14 = alloca %"class.std::vector.257", align 16 ; 17 uses
  %15 = alloca %"class.std::vector.257", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %4, align 8, !tbaa !10  ; 2 uses
  %i.c = load double, ptr %i.a, align 8, !tbaa !10
  %i.d = fcmp ugt double %i.c, %i.b
  br i1 %i.d, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr i8, ptr %4, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %i.h = load double, ptr %i.e, align 8, !tbaa !10
  %i.i = fcmp ugt double %i.h, %i.g
  br i1 %i.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr i8, ptr %4, i64 16         ; 5 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !10 ; 2 uses
  %i.m = load double, ptr %i.j, align 8, !tbaa !10
  %i.n = fcmp ugt double %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load double, ptr %i.o, align 8
  %i.q = fcmp ugt double %i.b, %i.p
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp ugt double %i.g, %i.s
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.t
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load double, ptr %i.u, align 8, !tbaa !10
  %i.w = fcmp ugt double %i.l, %i.v
  br i1 %i.w, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.b

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.a, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.b:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !26
  %i.af = tail call noundef double @_ZN3igl3EPSIdEET_v()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ag = sext i32 %i.ae to i64
  %i.ah = load ptr, ptr %3, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr [4 x i8], ptr %i.ah, i64 %i.ag ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !51
  %i.al = sext i32 %i.ak to i64
  %i.am = load ptr, ptr %2, align 8, !tbaa !202, !noalias !385 ; 4 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.al ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !207 ; 5 uses
  %i.aq = load double, ptr %i.an, align 8, !tbaa !10
  store double %i.aq, ptr %6, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  %i.at = load double, ptr %i.as, align 8, !tbaa !10
  store double %i.at, ptr %i.ar, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ap, 4 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10
  store double %i.aw, ptr %i.au, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !201 ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.aj, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ba ; 3 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !10
  store double %i.bc, ptr %7, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ap
  %i.bf = load double, ptr %i.be, align 8, !tbaa !10
  store double %i.bf, ptr %i.bd, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = getelementptr inbounds i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10
  store double %i.bi, ptr %i.bg, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %.idx.i = shl i64 %i.ax, 3
  %i.bj = getelementptr i8, ptr %i.aj, i64 %.idx.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bl ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !10
  store double %i.bn, ptr %8, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ap
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !10
  store double %i.bq, ptr %i.bo, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !10
  store double %i.bt, ptr %i.br, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %.idx62.i = mul i64 %i.ax, 12
  %i.bu = getelementptr i8, ptr %i.aj, i64 %.idx62.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !51
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bw ; 3 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !10
  store double %i.by, ptr %9, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ap
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !10
  store double %i.cb, ptr %i.bz, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cd = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !10
  store double %i.ce, ptr %i.cc, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.cf = load <2 x double>, ptr %4, align 8, !tbaa !9
  store <2 x double> %i.cf, ptr %10, align 16, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ch = load double, ptr %i.k, align 8, !tbaa !10
  store double %i.ch, ptr %i.cg, align 16, !tbaa !10
  %i.ci = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cj = load <2 x double>, ptr %4, align 8, !tbaa !9
  store <2 x double> %i.cj, ptr %11, align 16, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cl = load double, ptr %i.k, align 8, !tbaa !10
  store double %i.cl, ptr %i.ck, align 16, !tbaa !10
  %i.cm = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cn = load <2 x double>, ptr %4, align 8, !tbaa !9
  store <2 x double> %i.cn, ptr %12, align 16, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cp = load double, ptr %i.k, align 8, !tbaa !10
  store double %i.cp, ptr %i.co, align 16, !tbaa !10
  %i.cq = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %12) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.cr = load <2 x double>, ptr %4, align 8, !tbaa !9
  store <2 x double> %i.cr, ptr %13, align 16, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ct = load double, ptr %i.k, align 8, !tbaa !10
  store double %i.ct, ptr %i.cs, align 16, !tbaa !10
  %i.cu = call noundef double @_ZN3igl13volume_singleIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_EENT_6ScalarERKS4_RKT0_RKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %13) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cv = fadd double %i.ci, %i.cm
  %i.cw = fadd double %i.cv, %i.cq
  %i.cx = fadd double %i.cw, %i.cu
  %i.cy = fneg double %i.af
  %i.cz = insertelement <4 x double> poison, double %i.ci, i64 0
  %i.da = insertelement <4 x double> %i.cz, double %i.cm, i64 1
  %i.db = insertelement <4 x double> %i.da, double %i.cq, i64 2
  %i.dc = insertelement <4 x double> %i.db, double %i.cu, i64 3
  %i.dd = insertelement <4 x double> poison, double %i.cx, i64 0
  %i.de = shufflevector <4 x double> %i.dd, <4 x double> poison, <4 x i32> zeroinitializer
  %i.df = fdiv <4 x double> %i.dc, %i.de
  %i.dg = insertelement <4 x double> poison, double %i.cy, i64 0
  %i.dh = shufflevector <4 x double> %i.dg, <4 x double> poison, <4 x i32> zeroinitializer
  %i.di = fcmp ult <4 x double> %i.df, %i.dh
  %i.dj = bitcast <4 x i1> %i.di to i4
  %i.dk = icmp eq i4 %i.dj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.dk, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  %i.dl = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #27 ; 3 uses
  store ptr %i.dl, ptr %0, align 8, !tbaa !366
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !368
  %i.do = load i32, ptr %i.ad, align 8, !tbaa !51
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !369
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %14, ptr noundef nonnull align 8 dereferenceable(76) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dq = load ptr, ptr %14, align 16, !tbaa !370 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !370 ; 2 uses
  %i.dt = icmp eq ptr %i.dq, %i.ds
  br i1 %i.dt, label %bb.g, label %.thread44

.thread44:                                        ; preds = %bb.f
  store ptr %i.dq, ptr %0, align 8, !tbaa !366
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !369
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dx = load ptr, ptr %i.dw, align 16, !tbaa !368
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !368
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.dy = load ptr, ptr %i.z, align 8, !tbaa !47
  invoke void @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4findINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEESt6vectorIiSaIiEERKNS1_10MatrixBaseIS3_EERKNSB_IT_EERKNSB_IT0_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.257") align 8 %15, ptr noundef nonnull align 8 dereferenceable(76) %i.dy, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %5, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.h
  %i.dz = load <2 x ptr>, ptr %15, align 16, !tbaa !370
  store <2 x ptr> %i.dz, ptr %0, align 8, !tbaa !370
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ec = load ptr, ptr %i.eb, align 16, !tbaa !368
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !368
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.g
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !370
  %i.eh = load ptr, ptr %15, align 16, !tbaa !370
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !370
  %i.ej = load ptr, ptr %14, align 16, !tbaa !370 ; 2 uses
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 %i.em
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.en, ptr %i.eh, ptr %i.ei)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %15, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.er = load ptr, ptr %i.eq, align 16, !tbaa !368
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.ev = load <2 x ptr>, ptr %14, align 16, !tbaa !370
  store <2 x ptr> %i.ev, ptr %0, align 8, !tbaa !370
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ey = load ptr, ptr %i.ex, align 16, !tbaa !368
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.pr = load ptr, ptr %15, align 16, !tbaa !366  ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i25, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !368
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %.pr to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fd) #26
  br label %thread-pre-split

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.i ], [ %i.eo, %bb.k ], [ %i.eo, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.fe = load ptr, ptr %14, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit28, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fg = load ptr, ptr %i.ff, align 16, !tbaa !368
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit28

_ZNSt6vectorIiSaIiEED2Ev.exit28:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  resume { ptr, i32 } %.pn

thread-pre-split:                                 ; preds = %.thread, %bb.n
  %.pr34.pr = load ptr, ptr %14, align 16, !tbaa !366
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %bb.m
  %.pr34 = phi ptr [ %.pr34.pr, %thread-pre-split ], [ null, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %.not.i.i.i29 = icmp eq ptr %.pr34, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit30, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fl = load ptr, ptr %i.fk, align 16, !tbaa !368
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %.pr34 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %.pr34, i64 noundef %i.fo) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

_ZNSt6vectorIiSaIiEED2Ev.exit30:                  ; preds = %.thread44, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit30, %bb.d, %.noexc, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EE(ptr noundef nonnull align 16 dereferenceable(68) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.169", align 8 ; 7 uses
  %4 = alloca %"class.Eigen::Matrix.169", align 8 ; 7 uses
  %5 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi2ELi0ELin1ELi2EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 16 dereferenceable(68) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.b = load ptr, ptr %4, align 8, !tbaa !232
  call void @free(ptr noundef %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.c = load ptr, ptr %3, align 8, !tbaa !232
  call void @free(ptr noundef %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.f = load ptr, ptr %4, align 8, !tbaa !232
  call void @free(ptr noundef %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.g = load ptr, ptr %3, align 8, !tbaa !232
  call void @free(ptr noundef %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi2ELi0ELin1ELi2EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 16 dereferenceable(68) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.169", align 8 ; 12 uses
  %9 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Matrix.169", align 8 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 -1, ptr %i.a, align 16, !tbaa !149
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.b, align 16, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.c, align 16, !tbaa !9
  %i.d = load ptr, ptr %0, align 16, !tbaa !157   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED1Ev(ptr noundef nonnull align 16 dead_on_return(68) dereferenceable(68) %i.d) #25, !inline_history !162
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80) #26, !inline_history !162
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 16, !tbaa !157
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158  ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED1Ev(ptr noundef nonnull align 16 dead_on_return(68) dereferenceable(68) %i.g) #25, !inline_history !162
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 80) #26, !inline_history !162
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.f, align 8, !tbaa !158
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !159 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE5clearEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !157
  %i.l = icmp eq ptr %i.k, %0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.j, align 16, !tbaa !157
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE5clearEv.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !158
  %i.o = icmp eq ptr %i.n, %0
  br i1 %i.o, label %bb.i, label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE5clearEv.exit

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.m, align 8, !tbaa !158
  br label %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE5clearEv.exit

_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE5clearEv.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store ptr null, ptr %i.i, align 16, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !234  ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE5clearEv.exit
  %i.s = sext i32 %6 to i64                       ; 3 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !232, !noalias !388
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.s ; 3 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !10 ; 2 uses
  %i.w = load double, ptr %i.b, align 16, !tbaa !10 ; 2 uses
  %i.x = fcmp olt double %i.v, %i.w
  %i.y = select i1 %i.x, double %i.v, double %i.w ; 3 uses
  store double %i.y, ptr %i.b, align 16, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.q ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !10 ; 2 uses
  %i.ac = load double, ptr %i.z, align 8, !tbaa !10 ; 2 uses
  %i.ad = fcmp olt double %i.ab, %i.ac
  %i.ae = select i1 %i.ad, double %i.ab, double %i.ac ; 3 uses
  store double %i.ae, ptr %i.z, align 8, !tbaa !10
  %i.af = load double, ptr %i.u, align 8, !tbaa !10 ; 2 uses
  %i.ag = load double, ptr %i.c, align 16, !tbaa !10 ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.af
  %i.ai = select i1 %i.ah, double %i.af, double %i.ag ; 3 uses
  store double %i.ai, ptr %i.c, align 16, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ak = load double, ptr %i.aa, align 8, !tbaa !10 ; 2 uses
  %i.al = load double, ptr %i.aj, align 8, !tbaa !10 ; 2 uses
  %i.am = fcmp olt double %i.al, %i.ak
  %i.an = select i1 %i.am, double %i.ak, double %i.al ; 3 uses
  store double %i.an, ptr %i.aj, align 8, !tbaa !10
  %i.ao = load ptr, ptr %4, align 8, !tbaa !232, !noalias !391
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.s ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_1
begin_hunk_2_@_ZN3igl4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi:bb.a
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !51
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul nsw i64 %i.cr, %indvars.iv.next.2
  %i.fa = getelementptr [4 x i8], ptr %i.dc, i64 %i.ey
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %i.ez
  store i32 %i.dn, ptr %i.fb, align 4, !tbaa !51
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !543

bb.y:                                             ; preds = %._crit_edge84.split
  %i.fc = load ptr, ptr %9, align 8, !tbaa !30
  call void @free(ptr noundef %i.fc) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.fd = load ptr, ptr %8, align 8, !tbaa !215
  call void @free(ptr noundef %i.fd) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.fe = load ptr, ptr %7, align 8, !tbaa !213
  call void @free(ptr noundef %i.fe) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.ret103

bb.z:                                             ; preds = %._crit_edge84.split
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %.pre91 = load ptr, ptr %9, align 8, !tbaa !30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.fg = phi ptr [ %i.dc, %bb.w ], [ %.pre91, %bb.z ]
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.w ], [ %i.ff, %bb.z ]
  call void @free(ptr noundef %i.fg) #25
  br label %.body

.body:                                            ; preds = %bb.t, %bb.aa
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aa ], [ %i.db, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ab

bb.ab:                                            ; preds = %.body, %bb.p
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body ], [ %i.cm, %bb.p ]
  %i.fh = load ptr, ptr %8, align 8, !tbaa !215
  call void @free(ptr noundef %i.fh) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.fi = load ptr, ptr %7, align 8, !tbaa !213
  call void @free(ptr noundef %i.fi) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.o, %bb.n
  %.pn55 = phi { ptr, i32 } [ %i.cl, %bb.o ], [ %i.ck, %bb.n ], [ %.pn.pn.pn.pn.pn.pn, %bb.ab ]
  resume { ptr, i32 } %.pn55
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.209", align 8 ; 7 uses
  %4 = alloca %"class.Eigen::Matrix.209", align 8 ; 7 uses
  %5 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.b = load ptr, ptr %4, align 8, !tbaa !270
  call void @free(ptr noundef %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.c = load ptr, ptr %3, align 8, !tbaa !270
  call void @free(ptr noundef %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.f = load ptr, ptr %4, align 8, !tbaa !270
  call void @free(ptr noundef %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.g = load ptr, ptr %3, align 8, !tbaa !270
  call void @free(ptr noundef %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.209", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Matrix.209", align 8 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = sext i32 %6 to i64                       ; 3 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !270, !noalias !544
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !246 ; 2 uses
  %i.i = load float, ptr %i.d, align 8, !tbaa !246 ; 2 uses
  %i.j = fcmp olt float %i.h, %i.i
  %i.k = select i1 %i.j, float %i.h, float %i.i   ; 3 uses
  store float %i.k, ptr %i.d, align 8, !tbaa !246
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !246 ; 2 uses
  %i.o = load float, ptr %i.l, align 4, !tbaa !246 ; 2 uses
  %i.p = fcmp olt float %i.n, %i.o
  %i.q = select i1 %i.p, float %i.n, float %i.o   ; 3 uses
  store float %i.q, ptr %i.l, align 4, !tbaa !246
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.b, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !246 ; 2 uses
  %i.u = load float, ptr %i.r, align 8, !tbaa !246 ; 2 uses
  %i.v = fcmp olt float %i.t, %i.u
  %i.w = select i1 %i.v, float %i.t, float %i.u   ; 3 uses
  store float %i.w, ptr %i.r, align 8, !tbaa !246
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.y = load float, ptr %i.g, align 4, !tbaa !246 ; 2 uses
  %i.z = load float, ptr %i.x, align 4, !tbaa !246 ; 2 uses
  %i.aa = fcmp olt float %i.z, %i.y
  %i.ab = select i1 %i.aa, float %i.y, float %i.z ; 3 uses
  store float %i.ab, ptr %i.x, align 4, !tbaa !246
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ad = load float, ptr %i.m, align 4, !tbaa !246 ; 2 uses
  %i.ae = load float, ptr %i.ac, align 8, !tbaa !246 ; 2 uses
  %i.af = fcmp olt float %i.ae, %i.ad
  %i.ag = select i1 %i.af, float %i.ad, float %i.ae ; 3 uses
  store float %i.ag, ptr %i.ac, align 8, !tbaa !246
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ai = load float, ptr %i.s, align 4, !tbaa !246 ; 2 uses
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !246 ; 2 uses
  %i.ak = fcmp olt float %i.aj, %i.ai
  %i.al = select i1 %i.ak, float %i.ai, float %i.aj ; 3 uses
  store float %i.al, ptr %i.ah, align 4, !tbaa !246
  %i.am = load ptr, ptr %4, align 8, !tbaa !270, !noalias !547
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.e ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !273 ; 2 uses
  %i.aq = load float, ptr %i.an, align 4, !tbaa !246 ; 2 uses
  %i.ar = fcmp olt float %i.aq, %i.k
  %i.as = select i1 %i.ar, float %i.aq, float %i.k
  store float %i.as, ptr %i.d, align 8, !tbaa !246
  %i.at = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !246 ; 2 uses
  %i.av = fcmp olt float %i.au, %i.q
  %i.aw = select i1 %i.av, float %i.au, float %i.q
  store float %i.aw, ptr %i.l, align 4, !tbaa !246
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i60 = shl nsw i64 %i.ap, 3
  %i.ax = getelementptr inbounds i8, ptr %i.an, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i60 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !246 ; 2 uses
  %i.az = fcmp olt float %i.ay, %i.w
  %i.ba = select i1 %i.az, float %i.ay, float %i.w
  store float %i.ba, ptr %i.r, align 8, !tbaa !246
  %i.bb = load float, ptr %i.an, align 4, !tbaa !246 ; 2 uses
  %i.bc = fcmp olt float %i.ab, %i.bb
  %i.bd = select i1 %i.bc, float %i.bb, float %i.ab
  store float %i.bd, ptr %i.x, align 4, !tbaa !246
  %i.be = load float, ptr %i.at, align 4, !tbaa !246 ; 2 uses
  %i.bf = fcmp olt float %i.ag, %i.be
  %i.bg = select i1 %i.bf, float %i.be, float %i.ag
  store float %i.bg, ptr %i.ac, align 8, !tbaa !246
  %i.bh = load float, ptr %i.ax, align 4, !tbaa !246 ; 2 uses
  %i.bi = fcmp olt float %i.al, %i.bh
  %i.bj = select i1 %i.bi, float %i.bh, float %i.al
  store float %i.bj, ptr %i.ah, align 4, !tbaa !246
  %i.bk = load ptr, ptr %5, align 8, !tbaa !213
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.e
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !51 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !354
  %i.bo = icmp eq i32 %i.bm, -1
  br i1 %i.bo, label %bb.c, label %common.ret102

common.ret102:                                    ; preds = %bb.b, %bb.m, %bb.c
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bp = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.bq, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i, align 4, !tbaa !246
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i32 -1, ptr %i.br, align 8, !tbaa !354
  store ptr %i.bp, ptr %0, align 8, !tbaa !351
  %i.bs = shl nsw i32 %6, 1                       ; 2 uses
  %i.bt = or disjoint i32 %i.bs, 1
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %i.bt)
  %i.bu = load ptr, ptr %0, align 8, !tbaa !351
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %0, ptr %i.bv, align 8, !tbaa !550
  %i.bw = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bw, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.bx, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i63 = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i63, align 4, !tbaa !246
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i32 -1, ptr %i.by, align 8, !tbaa !354
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !356
  %i.ca = add nsw i32 %i.bs, 2
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %i.ca)
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !356
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %0, ptr %i.cc, align 8, !tbaa !550
  br label %common.ret102

bb.d:                                             ; preds = %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !224
  %i.cg = add nsw i64 %i.cf, -1
  call void @_ZN3igl5colonIiilEEN5Eigen6MatrixIT_Lin1ELi1ELi0ELin1ELi1EEET0_T1_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.160") align 8 %7, i32 noundef 0, i64 noundef %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10barycenterIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit unwind label %bb.d

_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !273 ; 11 uses
  store i64 0, ptr %9, align 8
  %i.cj = icmp sgt i64 %i.ci, 3074457345618258602
  br i1 %i.cj, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.not.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.cm = icmp sgt i64 %i.ci, 0
  br i1 %i.cm, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.cn = icmp ugt i64 %i.ci, 1537228672809129301
  br i1 %i.cn, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.g
  %i.co = mul i64 %i.ci, 12
  %i.cp = call noalias ptr @malloc(i64 noundef %i.co) #31 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.g, %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSIS1_EERS1_RKNS_9DenseBaseIT_EE.exit
  %i.cr = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cr, align 8, !tbaa !226
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.f
  %.sink.i = phi ptr [ %i.cp, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.f ] ; 2 uses
  store ptr %.sink.i, ptr %9, align 8, !tbaa !30
  br label %bb.i

bb.h:                                             ; preds = %.invoke
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %.sink.split.i
  %i.ct = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %.sink.i, %.sink.split.i ] ; 6 uses
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !201
  store i64 3, ptr %i.cl, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !34 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !201 ; 7 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  %.pre93 = load ptr, ptr %11, align 8            ; 2 uses
  %i.cz = trunc i64 %i.cv to i32
  %i.da = icmp sgt i32 %i.cz, 0
  %or.cond = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge87.split

.preheader.preheader:                             ; preds = %bb.j
  %wide.trip.count = and i64 %i.cv, 2147483647
  %i.db = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.cv, 3                    ; 3 uses
  %i.dc = icmp ult i64 %i.db, 3
  %unroll_iter = and i64 %i.cv, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod101 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv89 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next90, %._crit_edge ] ; 3 uses
  %i.dd = getelementptr [4 x i8], ptr %.pre93, i64 %indvars.iv89 ; 5 uses
  %i.de = trunc nuw nsw i64 %indvars.iv89 to i32  ; 5 uses
  br i1 %i.dc, label %.epil.preheader, label %.preheader.new

._crit_edge87.split.loopexit:                     ; preds = %._crit_edge
  %.pre = load ptr, ptr %11, align 8, !tbaa !30
  br label %._crit_edge87.split

._crit_edge87.split:                              ; preds = %._crit_edge87.split.loopexit, %bb.j
  %i.df = phi ptr [ %.pre, %._crit_edge87.split.loopexit ], [ %.pre93, %bb.j ]
  call void @free(ptr noundef %i.df) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.dg = load ptr, ptr %10, align 8, !tbaa !270
  call void @free(ptr noundef %i.dg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.m unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %11, align 8, !tbaa !30
  call void @free(ptr noundef %i.di) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.dj = load ptr, ptr %10, align 8, !tbaa !270
  call void @free(ptr noundef %i.dj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.o

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.dk = mul nuw nsw i64 %i.cx, %indvars.iv.epil
  %i.dl = getelementptr [4 x i8], ptr %i.dd, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !51
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %i.ci, %indvars.iv.epil
  %i.dp = getelementptr [4 x i8], ptr %i.ct, i64 %i.dn
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.do
  store i32 %i.de, ptr %i.dq, align 4, !tbaa !51
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.l, !llvm.loop !551

._crit_edge:                                      ; preds = %bb.l, %._crit_edge.unr-lcssa
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next90, %i.cx
  br i1 %exitcond92.not, label %._crit_edge87.split.loopexit, label %.preheader, !llvm.loop !552

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.dr = mul nuw nsw i64 %i.cx, %indvars.iv
  %i.ds = getelementptr [4 x i8], ptr %i.dd, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !51
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.ci, %indvars.iv
  %i.dw = getelementptr [4 x i8], ptr %i.ct, i64 %i.du
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.dv
  store i32 %i.de, ptr %i.dx, align 4, !tbaa !51
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dy = mul nuw nsw i64 %i.cx, %indvars.iv.next
  %i.dz = getelementptr [4 x i8], ptr %i.dd, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul nsw i64 %i.ci, %indvars.iv.next
  %i.ed = getelementptr [4 x i8], ptr %i.ct, i64 %i.eb
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.ec
  store i32 %i.de, ptr %i.ee, align 4, !tbaa !51
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ef = mul nuw nsw i64 %i.cx, %indvars.iv.next.1
  %i.eg = getelementptr [4 x i8], ptr %i.dd, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !51
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul nsw i64 %i.ci, %indvars.iv.next.1
  %i.ek = getelementptr [4 x i8], ptr %i.ct, i64 %i.ei
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.ej
  store i32 %i.de, ptr %i.el, align 4, !tbaa !51
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.em = mul nuw nsw i64 %i.cx, %indvars.iv.next.2
  %i.en = getelementptr [4 x i8], ptr %i.dd, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !51
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i64 %i.ci, %indvars.iv.next.2
  %i.er = getelementptr [4 x i8], ptr %i.ct, i64 %i.ep
  %i.es = getelementptr [4 x i8], ptr %i.er, i64 %i.eq
  store i32 %i.de, ptr %i.es, align 4, !tbaa !51
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !553

bb.m:                                             ; preds = %._crit_edge87.split
  %i.et = load ptr, ptr %9, align 8, !tbaa !30
  call void @free(ptr noundef %i.et) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.eu = load ptr, ptr %8, align 8, !tbaa !270
  call void @free(ptr noundef %i.eu) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ev = load ptr, ptr %7, align 8, !tbaa !213
  call void @free(ptr noundef %i.ev) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.ret102

bb.n:                                             ; preds = %._crit_edge87.split
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %.pre94 = load ptr, ptr %9, align 8, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.ex = phi ptr [ %i.ct, %bb.k ], [ %.pre94, %bb.n ]
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.k ], [ %i.ew, %bb.n ]
  call void @free(ptr noundef %i.ex) #25
  br label %.body

.body:                                            ; preds = %bb.h, %bb.o
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.o ], [ %i.cs, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.d
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body ], [ %i.cd, %bb.d ]
  %i.ey = load ptr, ptr %8, align 8, !tbaa !270
  call void @free(ptr noundef %i.ey) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ez = load ptr, ptr %7, align 8, !tbaa !213
  call void @free(ptr noundef %i.ez) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.209", align 8 ; 7 uses
  %4 = alloca %"class.Eigen::Matrix.209", align 8 ; 7 uses
  %5 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.b = load ptr, ptr %4, align 8, !tbaa !270
  call void @free(ptr noundef %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.c = load ptr, ptr %3, align 8, !tbaa !270
  call void @free(ptr noundef %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.f = load ptr, ptr %4, align 8, !tbaa !270
  call void @free(ptr noundef %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.g = load ptr, ptr %3, align 8, !tbaa !270
  call void @free(ptr noundef %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.160", align 8 ; 7 uses
  %8 = alloca %"class.Eigen::Matrix.209", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Matrix.209", align 8 ; 7 uses
  %11 = alloca %"class.Eigen::Matrix.277", align 8 ; 10 uses
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = sext i32 %6 to i64                       ; 3 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !270, !noalias !554
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !246 ; 2 uses
  %i.i = load float, ptr %i.d, align 8, !tbaa !246 ; 2 uses
  %i.j = fcmp olt float %i.h, %i.i
  %i.k = select i1 %i.j, float %i.h, float %i.i   ; 3 uses
  store float %i.k, ptr %i.d, align 8, !tbaa !246
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !246 ; 2 uses
  %i.o = load float, ptr %i.l, align 4, !tbaa !246 ; 2 uses
  %i.p = fcmp olt float %i.n, %i.o
  %i.q = select i1 %i.p, float %i.n, float %i.o   ; 3 uses
  store float %i.q, ptr %i.l, align 4, !tbaa !246
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.b, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !246 ; 2 uses
  %i.u = load float, ptr %i.r, align 8, !tbaa !246 ; 2 uses
  %i.v = fcmp olt float %i.t, %i.u
  %i.w = select i1 %i.v, float %i.t, float %i.u   ; 3 uses
  store float %i.w, ptr %i.r, align 8, !tbaa !246
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.y = load float, ptr %i.g, align 4, !tbaa !246 ; 2 uses
  %i.z = load float, ptr %i.x, align 4, !tbaa !246 ; 2 uses
  %i.aa = fcmp olt float %i.z, %i.y
  %i.ab = select i1 %i.aa, float %i.y, float %i.z ; 3 uses
  store float %i.ab, ptr %i.x, align 4, !tbaa !246
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ad = load float, ptr %i.m, align 4, !tbaa !246 ; 2 uses
  %i.ae = load float, ptr %i.ac, align 8, !tbaa !246 ; 2 uses
  %i.af = fcmp olt float %i.ae, %i.ad
  %i.ag = select i1 %i.af, float %i.ad, float %i.ae ; 3 uses
  store float %i.ag, ptr %i.ac, align 8, !tbaa !246
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ai = load float, ptr %i.s, align 4, !tbaa !246 ; 2 uses
  %i.aj = load float, ptr %i.ah, align 4, !tbaa !246 ; 2 uses
  %i.ak = fcmp olt float %i.aj, %i.ai
  %i.al = select i1 %i.ak, float %i.ai, float %i.aj ; 3 uses
  store float %i.al, ptr %i.ah, align 4, !tbaa !246
  %i.am = load ptr, ptr %4, align 8, !tbaa !270, !noalias !557
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.e ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !273 ; 2 uses
  %i.aq = load float, ptr %i.an, align 4, !tbaa !246 ; 2 uses
  %i.ar = fcmp olt float %i.aq, %i.k
  %i.as = select i1 %i.ar, float %i.aq, float %i.k
  store float %i.as, ptr %i.d, align 8, !tbaa !246
  %i.at = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !246 ; 2 uses
  %i.av = fcmp olt float %i.au, %i.q
  %i.aw = select i1 %i.av, float %i.au, float %i.q
  store float %i.aw, ptr %i.l, align 4, !tbaa !246
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i60 = shl nsw i64 %i.ap, 3
  %i.ax = getelementptr inbounds i8, ptr %i.an, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i60 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !246 ; 2 uses
  %i.az = fcmp olt float %i.ay, %i.w
  %i.ba = select i1 %i.az, float %i.ay, float %i.w
  store float %i.ba, ptr %i.r, align 8, !tbaa !246
  %i.bb = load float, ptr %i.an, align 4, !tbaa !246 ; 2 uses
  %i.bc = fcmp olt float %i.ab, %i.bb
  %i.bd = select i1 %i.bc, float %i.bb, float %i.ab
  store float %i.bd, ptr %i.x, align 4, !tbaa !246
  %i.be = load float, ptr %i.at, align 4, !tbaa !246 ; 2 uses
  %i.bf = fcmp olt float %i.ag, %i.be
  %i.bg = select i1 %i.bf, float %i.be, float %i.ag
  store float %i.bg, ptr %i.ac, align 8, !tbaa !246
  %i.bh = load float, ptr %i.ax, align 4, !tbaa !246 ; 2 uses
  %i.bi = fcmp olt float %i.al, %i.bh
  %i.bj = select i1 %i.bi, float %i.bh, float %i.al
  store float %i.bj, ptr %i.ah, align 4, !tbaa !246
  %i.bk = load ptr, ptr %5, align 8, !tbaa !213
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.e
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !51 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !560
  %i.bo = icmp eq i32 %i.bm, -1
  br i1 %i.bo, label %bb.c, label %common.ret102

common.ret102:                                    ; preds = %bb.b, %bb.m, %bb.c
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bp = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.bq, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i, align 4, !tbaa !246
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i32 -1, ptr %i.br, align 8, !tbaa !560
  store ptr %i.bp, ptr %0, align 8, !tbaa !563
  %i.bs = shl nsw i32 %6, 1                       ; 2 uses
  %i.bt = or disjoint i32 %i.bs, 1
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %i.bt)
  %i.bu = load ptr, ptr %0, align 8, !tbaa !563
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %0, ptr %i.bv, align 8, !tbaa !564
  %i.bw = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.bw, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.bx, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i63 = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i63, align 4, !tbaa !246
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i32 -1, ptr %i.by, align 8, !tbaa !560
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !565
  %i.ca = add nsw i32 %i.bs, 2
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEES7_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EEi(ptr noundef nonnull align 8 dereferenceable(52) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %i.ca)
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !565
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %0, ptr %i.cc, align 8, !tbaa !564
  br label %common.ret102

bb.d:                                             ; preds = %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !539
  %i.cg = add nsw i64 %i.cf, -1
  call void @_ZN3igl5colonIiilEEN5Eigen6MatrixIT_Lin1ELi1ELi0ELin1ELi1EEET0_T1_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.160") align 8 %7, i32 noundef 0, i64 noundef %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10barycenterIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELi3ELi1ELin1ELi3EEEEERS1_RKNS_9DenseBaseIT_EE.exit unwind label %bb.d

_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELi3ELi1ELin1ELi3EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !273 ; 11 uses
  store i64 0, ptr %9, align 8
  %i.cj = icmp sgt i64 %i.ci, 3074457345618258602
  br i1 %i.cj, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELi3ELi1ELin1ELi3EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.not.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.cm = icmp sgt i64 %i.ci, 0
  br i1 %i.cm, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.cn = icmp ugt i64 %i.ci, 1537228672809129301
  br i1 %i.cn, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.g
  %i.co = mul i64 %i.ci, 12
  %i.cp = call noalias ptr @malloc(i64 noundef %i.co) #31 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.g, %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEaSINS0_IfLin1ELi3ELi1ELin1ELi3EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.cr = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cr, align 8, !tbaa !226
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.f
  %.sink.i = phi ptr [ %i.cp, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.f ] ; 2 uses
  store ptr %.sink.i, ptr %9, align 8, !tbaa !30
  br label %bb.i

bb.h:                                             ; preds = %.invoke
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %.sink.split.i
  %i.ct = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %.sink.i, %.sink.split.i ] ; 6 uses
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !201
  store i64 3, ptr %i.cl, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl4sortIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !34 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !201 ; 7 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  %.pre93 = load ptr, ptr %11, align 8            ; 2 uses
  %i.cz = trunc i64 %i.cv to i32
  %i.da = icmp sgt i32 %i.cz, 0
  %or.cond = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge87.split

.preheader.preheader:                             ; preds = %bb.j
  %wide.trip.count = and i64 %i.cv, 2147483647
  %i.db = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.cv, 3                    ; 3 uses
  %i.dc = icmp ult i64 %i.db, 3
  %unroll_iter = and i64 %i.cv, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod101 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv89 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next90, %._crit_edge ] ; 3 uses
  %i.dd = getelementptr [4 x i8], ptr %.pre93, i64 %indvars.iv89 ; 5 uses
  %i.de = trunc nuw nsw i64 %indvars.iv89 to i32  ; 5 uses
  br i1 %i.dc, label %.epil.preheader, label %.preheader.new

._crit_edge87.split.loopexit:                     ; preds = %._crit_edge
  %.pre = load ptr, ptr %11, align 8, !tbaa !30
  br label %._crit_edge87.split

._crit_edge87.split:                              ; preds = %._crit_edge87.split.loopexit, %bb.j
  %i.df = phi ptr [ %.pre, %._crit_edge87.split.loopexit ], [ %.pre93, %bb.j ]
  call void @free(ptr noundef %i.df) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.dg = load ptr, ptr %10, align 8, !tbaa !270
  call void @free(ptr noundef %i.dg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.m unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %11, align 8, !tbaa !30
  call void @free(ptr noundef %i.di) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.dj = load ptr, ptr %10, align 8, !tbaa !270
  call void @free(ptr noundef %i.dj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.o

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.dk = mul nuw nsw i64 %i.cx, %indvars.iv.epil
  %i.dl = getelementptr [4 x i8], ptr %i.dd, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !51
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %i.ci, %indvars.iv.epil
  %i.dp = getelementptr [4 x i8], ptr %i.ct, i64 %i.dn
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.do
  store i32 %i.de, ptr %i.dq, align 4, !tbaa !51
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.l, !llvm.loop !566

._crit_edge:                                      ; preds = %bb.l, %._crit_edge.unr-lcssa
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next90, %i.cx
  br i1 %exitcond92.not, label %._crit_edge87.split.loopexit, label %.preheader, !llvm.loop !567

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.dr = mul nuw nsw i64 %i.cx, %indvars.iv
  %i.ds = getelementptr [4 x i8], ptr %i.dd, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !51
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.ci, %indvars.iv
  %i.dw = getelementptr [4 x i8], ptr %i.ct, i64 %i.du
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.dv
  store i32 %i.de, ptr %i.dx, align 4, !tbaa !51
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dy = mul nuw nsw i64 %i.cx, %indvars.iv.next
  %i.dz = getelementptr [4 x i8], ptr %i.dd, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul nsw i64 %i.ci, %indvars.iv.next
  %i.ed = getelementptr [4 x i8], ptr %i.ct, i64 %i.eb
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.ec
  store i32 %i.de, ptr %i.ee, align 4, !tbaa !51
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ef = mul nuw nsw i64 %i.cx, %indvars.iv.next.1
  %i.eg = getelementptr [4 x i8], ptr %i.dd, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !51
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul nsw i64 %i.ci, %indvars.iv.next.1
  %i.ek = getelementptr [4 x i8], ptr %i.ct, i64 %i.ei
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.ej
  store i32 %i.de, ptr %i.el, align 4, !tbaa !51
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.em = mul nuw nsw i64 %i.cx, %indvars.iv.next.2
  %i.en = getelementptr [4 x i8], ptr %i.dd, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !51
end_hunk_2
begin_hunk_3_@_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEES6_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EE:bb.a
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv188
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !51
  %i.do = sext i32 %i.dn to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.do
  %i.dp = load i32, ptr %gep, align 4, !tbaa !51
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv188
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !51
  %indvars.iv.next189 = or disjoint i64 %indvars.iv188, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next189
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !51
  %i.dt = sext i32 %i.ds to i64
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dt
  %i.du = load i32, ptr %gep.1, align 4, !tbaa !51
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next189
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !51
  %indvars.iv.next189.1 = or disjoint i64 %indvars.iv188, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next189.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !51
  %i.dy = sext i32 %i.dx to i64
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dy
  %i.dz = load i32, ptr %gep.2, align 4, !tbaa !51
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next189.1
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !51
  %indvars.iv.next189.2 = or disjoint i64 %indvars.iv188, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next189.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !51
  %i.ed = sext i32 %i.ec to i64
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ed
  %i.ee = load i32, ptr %gep.3, align 4, !tbaa !51
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next189.2
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !51
  %indvars.iv.next189.3 = add nuw nsw i64 %indvars.iv188, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge171.unr-lcssa, label %bb.i, !llvm.loop !618

bb.j:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dj, ptr nonnull align 4 %i.cl, i64 %i.di, i1 false)
  %i.eg = add nsw i64 %i.n, -1
  %i.eh = lshr i64 %i.eg, 1                       ; 2 uses
  %.idx2.i = shl nuw nsw i64 %i.eh, 2             ; 2 uses
  %i.ei = icmp eq i64 %.idx2.i, %i.di
  br i1 %i.ei, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx2.i
  %i.el = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.em = shl nuw nsw i64 %i.el, 1
  %i.en = xor i64 %i.em, 126
  invoke void @_ZSt13__introselectIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.ej, i64 noundef %i.en)
          to label %._crit_edge196 unwind label %bb.t

._crit_edge196:                                   ; preds = %bb.k
  %.pre = load i64, ptr %i.m, align 8, !tbaa !312
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge196, %bb.j
  %i.eo = phi i64 [ %.pre, %._crit_edge196 ], [ %i.n, %bb.j ] ; 8 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.eh
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !51
  tail call void @free(ptr noundef nonnull %i.dj) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.er = add i64 %i.eo, 1                        ; 2 uses
  %i.es = sdiv i64 %i.er, 2                       ; 2 uses
  store i64 0, ptr %5, align 8
  %.off = add i64 %i.eo, 2
  %.not.i.i.i.i81 = icmp ult i64 %.off, 3
  br i1 %.not.i.i.i.i81, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = icmp sgt i64 %i.eo, 0
  br i1 %i.et, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84, label %.sink.split.i.i.i.i82

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84: ; preds = %bb.m
  %i.eu = shl nuw i64 %i.es, 2
  %i.ev = tail call noalias ptr @malloc(i64 noundef %i.eu) #31 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.invoke.i85, label %.sink.split.i.i.i.i82

.invoke.i85:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84
  %i.ex = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ex, align 8, !tbaa !226
  invoke void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.cont.i86 unwind label %bb.n

.cont.i86:                                        ; preds = %.invoke.i85
  unreachable

.sink.split.i.i.i.i82:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84, %bb.m
  %.sink.i.i.i.i83 = phi ptr [ %i.ev, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84 ], [ null, %bb.m ] ; 2 uses
  store ptr %.sink.i.i.i.i83, ptr %5, align 8, !tbaa !213
  br label %bb.o

bb.n:                                             ; preds = %.invoke.i85
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %.sink.split.i.i.i.i82, %bb.l
  %i.ez = phi ptr [ %.sink.i.i.i.i83, %.sink.split.i.i.i.i82 ], [ null, %bb.l ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.es, ptr %i.fa, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.fb = sdiv i64 %i.eo, 2                       ; 2 uses
  store i64 0, ptr %6, align 8
  %.not.i.i.i.i88 = icmp ult i64 %i.er, 3
  br i1 %.not.i.i.i.i88, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fc = icmp sgt i64 %i.eo, 1
  br i1 %i.fc, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91, label %.sink.split.i.i.i.i89

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91: ; preds = %bb.p
  %i.fd = shl nuw i64 %i.fb, 2
  %i.fe = tail call noalias ptr @malloc(i64 noundef %i.fd) #31 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %.invoke.i92, label %.sink.split.i.i.i.i89

.invoke.i92:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91
  %i.fg = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fg, align 8, !tbaa !226
  invoke void @__cxa_throw(ptr nonnull %i.fg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.cont.i93 unwind label %bb.q

.cont.i93:                                        ; preds = %.invoke.i92
  unreachable

.sink.split.i.i.i.i89:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91, %bb.p
  %.sink.i.i.i.i90 = phi ptr [ %i.fe, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91 ], [ null, %bb.p ] ; 2 uses
  store ptr %.sink.i.i.i.i90, ptr %6, align 8, !tbaa !213
  br label %bb.r

bb.q:                                             ; preds = %.invoke.i92
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.r:                                             ; preds = %.sink.split.i.i.i.i89, %bb.o
  %i.fi = phi ptr [ %.sink.i.i.i.i90, %.sink.split.i.i.i.i89 ], [ null, %bb.o ]
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.fb, ptr %i.fj, align 8, !tbaa !312
  %i.fk = icmp sgt i64 %i.eo, 0
  br i1 %i.fk, label %.lr.ph176.preheader, label %.thread214

.lr.ph176.preheader:                              ; preds = %bb.r
  %i.fl = load ptr, ptr %4, align 8, !tbaa !213
  br label %.lr.ph176

bb.s:                                             ; preds = %bb.h, %._crit_edge171.thread
  %.sink.i.i.i.i209212 = phi ptr [ %i.cl, %bb.h ], [ %.sink.i.i.i.i209213, %._crit_edge171.thread ]
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.t:                                             ; preds = %bb.k
  %i.fn = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.dj) #25
  br label %common.resume

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %bb.w
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %bb.w ], [ 0, %.lr.ph176.preheader ] ; 3 uses
  %.050173 = phi i32 [ %.1, %bb.w ], [ 0, %.lr.ph176.preheader ] ; 3 uses
  %.051172 = phi i32 [ %.152, %bb.w ], [ 0, %.lr.ph176.preheader ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv192
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !51
  %.not = icmp sgt i32 %i.fp, %i.eq
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv192
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !51 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph176
  %i.fs = sext i32 %.051172 to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fs
  %i.fu = add nsw i32 %.051172, 1
  store i32 %i.fr, ptr %i.ft, align 4, !tbaa !51
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph176
  %i.fv = sext i32 %.050173 to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fv
  %i.fx = add nsw i32 %.050173, 1
  store i32 %i.fr, ptr %i.fw, align 4, !tbaa !51
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.152 = phi i32 [ %i.fu, %bb.u ], [ %.051172, %bb.v ]
  %.1 = phi i32 [ %.050173, %bb.u ], [ %i.fx, %bb.v ]
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next193, %i.eo
  br i1 %exitcond195.not, label %._crit_edge177, label %.lr.ph176, !llvm.loop !619

._crit_edge177:                                   ; preds = %bb.w
  %i.fy = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %bb.x unwind label %bb.y       ; 6 uses

bb.x:                                             ; preds = %._crit_edge177
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.fy, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.fz, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i, align 4, !tbaa !246
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store i32 -1, ptr %i.ga, align 8, !tbaa !261
  store ptr %i.fy, ptr %0, align 8, !tbaa !253
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEES6_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.ab, %bb.aa, %bb.x, %._crit_edge177
  %i.gb = landingpad { ptr, i32 }
          cleanup
  %i.gc = load ptr, ptr %6, align 8, !tbaa !213
  call void @free(ptr noundef %i.gc) #25
  %.pre197 = load ptr, ptr %5, align 8, !tbaa !213
  br label %.body94

bb.z:                                             ; preds = %bb.x
  %i.gd = load ptr, ptr %0, align 8, !tbaa !253
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store ptr %0, ptr %i.ge, align 8, !tbaa !280
  %.not220 = icmp eq i64 %i.eo, 1
  br i1 %.not220, label %.thread214, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gf = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %bb.ab unwind label %bb.y      ; 6 uses

bb.ab:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.gf, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.gg, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i99 = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i99, align 4, !tbaa !246
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  store i32 -1, ptr %i.gh, align 8, !tbaa !261
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.gf, ptr %i.gi, align 8, !tbaa !268
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEELi3EE4initINS2_IiLin1ELin1ELi0ELin1ELin1EEES6_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS8_IT_EERKNS8_IT0_EERKNS8_IT1_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.gf, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ac unwind label %bb.y

bb.ac:                                            ; preds = %bb.ab
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !268
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store ptr %0, ptr %i.gk, align 8, !tbaa !280
  br label %.thread214

.thread214:                                       ; preds = %bb.r, %bb.ac, %bb.z
  %i.gl = load ptr, ptr %6, align 8, !tbaa !213
  call void @free(ptr noundef %i.gl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.gm = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.gm) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @free(ptr noundef nonnull %i.cl) #25
  br label %bb.ad

.body94:                                          ; preds = %bb.q, %bb.y
  %i.gn = phi ptr [ %.pre197, %bb.y ], [ %i.ez, %bb.q ]
  %.pn.pn = phi { ptr, i32 } [ %i.gb, %bb.y ], [ %i.fh, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @free(ptr noundef %i.gn) #25
  br label %.body

.body:                                            ; preds = %bb.n, %.body94
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body94 ], [ %i.ey, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %bb.t, %.body
  %.sink.i.i.i.i210 = phi ptr [ %.sink.i.i.i.i209212, %bb.s ], [ %i.cl, %.body ], [ %i.cl, %bb.t ]
  %.pn72 = phi { ptr, i32 } [ %i.fm, %bb.s ], [ %.pn.pn.pn, %.body ], [ %i.fn, %bb.t ]
  call void @free(ptr noundef %.sink.i.i.i.i210) #25
  resume { ptr, i32 } %.pn72

bb.ad:                                            ; preds = %bb.a, %bb.b, %bb.c, %.thread214, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !226
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !273
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !270
  tail call void @free(ptr noundef %i.j) #25
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !226
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #31 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !226
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !270
  br label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !273
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !226
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !294
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !319
  tail call void @free(ptr noundef %i.j) #25
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !226
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #31 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !226
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !319
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi1EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi1EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !294
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNKS_4AABBIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS4_IiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IdLin1ELi1ELi0ELin1ELi1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS3_10MatrixBaseIS5_EERKNSB_IT_EERKNSB_IT0_EERNS3_15PlainObjectBaseIT1_EERNSN_IT2_EERNSN_IT3_EEEUliE_EEbSF_RKSJ_mEUlmE_ZNS1_IlSX_EEbSF_SZ_mEUllmE_S10_EEbSF_SZ_RKSO_RKSR_m(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix", align 16    ; 5 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 14 uses
  %i.a = ptrtoaddr ptr %6 to i64
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %7 = alloca %class.anon.973, align 8            ; 6 uses
  %8 = alloca %"class.std::vector.974", align 8   ; 12 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  store i64 %0, ptr %i.c, align 8, !tbaa !620
  %i.g = icmp eq i64 %0, 0
  br i1 %i.g, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp uge i64 %0, %4
  %i.k = icmp ugt i32 %i.h, 1
  %or.cond.not = and i1 %i.k, %i.j
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

end_hunk_3
begin_hunk_4_@_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE:bb.a
  %.10 = phi double [ %i.dd, %bb.z ], [ %.1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57, %bb.x
  %.2 = phi double [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit57 ], [ %.1, %bb.x ] ; 5 uses
  %i.dh = fcmp olt double %.1.1.i54, %.2
  %or.cond43 = and i1 %.0157, %i.dh
  br i1 %or.cond43, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !160
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !158
  %i.dj = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.di, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %10), !inline_history !737 ; 2 uses
  %i.dk = fcmp olt double %i.dj, %.2
  br i1 %i.dk, label %bb.ac, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58

bb.ac:                                            ; preds = %bb.ab
  %i.dl = load i32, ptr %i.c, align 4, !tbaa !51
  store i32 %i.dl, ptr %6, align 4, !tbaa !51
  %i.dm = load <2 x double>, ptr %10, align 16, !tbaa !9
  store <2 x double> %i.dm, ptr %7, align 16, !tbaa !9
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58: ; preds = %bb.ab, %bb.ac
  %.11 = phi double [ %i.dj, %bb.ac ], [ %.2, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.aj

bb.ad:                                            ; preds = %_ZNK5Eigen10AlignedBoxIdLi2EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIdLi1ELi2ELi1ELi1ELi2EEEEEEEdRKNS_10MatrixBaseIT_EE.exit55
  %i.dn = fcmp olt double %.1.1.i54, %.1
  %or.cond46 = and i1 %.0157, %i.dn
  br i1 %or.cond46, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !160
  %i.do = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.cg, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %9), !inline_history !737 ; 2 uses
  %i.dp = fcmp olt double %i.do, %.1
  br i1 %i.dp, label %bb.af, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.af:                                            ; preds = %bb.ae
  %i.dq = load i32, ptr %i.b, align 4, !tbaa !51
  store i32 %i.dq, ptr %6, align 4, !tbaa !51
  %i.dr = load <2 x double>, ptr %9, align 16, !tbaa !9
  store <2 x double> %i.dr, ptr %7, align 16, !tbaa !9
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.ae, %bb.af
  %.12 = phi double [ %i.do, %bb.af ], [ %.1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59, %bb.ad
  %.3 = phi double [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.1, %bb.ad ] ; 5 uses
  %i.ds = fcmp olt double %.1.1.i, %.3
  %or.cond49 = and i1 %.0156, %i.ds
  br i1 %or.cond49, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !160
  %i.dt = load ptr, ptr %0, align 16, !tbaa !157
  %i.du = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE16squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 16 dereferenceable(68) %i.dt, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %8), !inline_history !736 ; 2 uses
  %i.dv = fcmp olt double %i.du, %.3
  br i1 %i.dv, label %bb.ai, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ai:                                            ; preds = %bb.ah
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !51
  store i32 %i.dw, ptr %6, align 4, !tbaa !51
  %i.dx = load <2 x double>, ptr %8, align 16, !tbaa !9
  store <2 x double> %i.dx, ptr %7, align 16, !tbaa !9
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ah, %bb.ai
  %.13 = phi double [ %i.du, %bb.ai ], [ %.3, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ag, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.aa, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58, %bb.a
  %.0 = phi double [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE21leaf_squared_distanceINS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit58 ], [ %.2, %bb.aa ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7set_minERKNS2_IdLi1ELi2ELi1ELi1ELi2EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.3, %bb.ag ]
  ret double %.0
}

declare void @_ZN3igl30point_simplex_squared_distanceILi2EN5Eigen6MatrixIdLi1ELi2ELi1ELi1ELi2EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEfS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(12) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix.172", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::Matrix.172", align 8 ; 5 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = fcmp ogt float %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !563    ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !560
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEfS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %14)
  %i.r = load float, ptr %i.g, align 4, !tbaa !246 ; 2 uses
  %i.s = fcmp olt float %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !51
  store i32 %i.t, ptr %6, align 4, !tbaa !51
  %i.u = load <2 x float>, ptr %14, align 8, !tbaa !246
  store <2 x float> %i.u, ptr %7, align 4, !tbaa !246
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = load float, ptr %i.w, align 8, !tbaa !246
  store float %i.x, ptr %i.v, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi float [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load float, ptr %3, align 4, !tbaa !246  ; 6 uses
  %i.aa = load float, ptr %i.y, align 4, !tbaa !246
  %i.ab = fcmp ugt float %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !246 ; 2 uses
  %i.af = load float, ptr %i.ac, align 4, !tbaa !246
  %i.ag = fcmp ugt float %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !246 ; 2 uses
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !246
  %i.al = fcmp ugt float %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fcmp ugt float %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = fcmp ugt float %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.at = load float, ptr %i.as, align 4, !tbaa !246
  %i.au = fcmp ugt float %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.av = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %13), !inline_history !738 ; 2 uses
  %i.aw = fcmp olt float %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !51
  store i32 %i.ax, ptr %6, align 4, !tbaa !51
  %i.ay = load <2 x float>, ptr %13, align 8, !tbaa !246
  store <2 x float> %i.ay, ptr %7, align 4, !tbaa !246
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !246
  store float %i.bb, ptr %i.az, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi float [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !565
  %.pre162 = load float, ptr %3, align 4, !tbaa !246
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi float [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi float [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load float, ptr %i.be, align 4, !tbaa !246
  %i.bg = fcmp ugt float %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !246 ; 2 uses
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !246
  %i.bl = fcmp ugt float %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !246 ; 2 uses
  %i.bp = load float, ptr %i.bm, align 4, !tbaa !246
  %i.bq = fcmp ugt float %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fcmp ugt float %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fcmp ugt float %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.by = load float, ptr %i.bx, align 4, !tbaa !246
  %i.bz = fcmp ugt float %i.bo, %i.by
  br i1 %i.bz, label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.ca = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.0161, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %12), !inline_history !739 ; 2 uses
  %i.cb = fcmp olt float %i.ca, %.0161
  br i1 %i.cb, label %bb.i, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !51
  store i32 %i.cc, ptr %6, align 4, !tbaa !51
  %i.cd = load <2 x float>, ptr %12, align 8, !tbaa !246
  store <2 x float> %i.cd, ptr %7, align 4, !tbaa !246
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !246
  store float %i.cg, ptr %i.ce, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59: ; preds = %bb.h, %bb.i
  %.9 = phi float [ %i.ca, %bb.i ], [ %.0161, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre163 = load float, ptr %3, align 4, !tbaa !246
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread

_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54
  %i.ch = phi float [ %.pre163, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %i.bc, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %i.bc, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %i.bc, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 8 uses
  %.1 = phi float [ %.9, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ %.0161, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ %.0161, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ %.0161, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 10 uses
  %.0160 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit59 ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54 ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIffLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51 ], [ true, %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIffLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IfLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50 ] ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !563   ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !246 ; 2 uses
  %i.cl = fcmp ogt float %i.ck, %i.ch
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.cm = fsub float %i.ck, %i.ch                 ; 2 uses
  %i.cn = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float 0.000000e+00)
  br label %bb.m

bb.k:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE8containsINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %i.cp = load float, ptr %i.co, align 4, !tbaa !246 ; 2 uses
  %i.cq = fcmp ogt float %i.ch, %i.cp
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = fsub float %i.ch, %i.cp                 ; 2 uses
  %i.cs = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float 0.000000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi float [ %i.cn, %bb.j ], [ %i.cs, %bb.l ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !246 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !246 ; 8 uses
  %i.cx = fcmp ogt float %i.cu, %i.cw
  br i1 %i.cx, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !246 ; 2 uses
  %i.da = fcmp ogt float %i.cw, %i.cz
  br i1 %i.da, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.db = fsub float %i.cw, %i.cz                 ; 2 uses
  %i.dc = call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %.1.i)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.dd = fsub float %i.cu, %i.cw                 ; 2 uses
  %i.de = call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.1.i = phi float [ %i.de, %bb.p ], [ %i.dc, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.dg = load float, ptr %i.df, align 4, !tbaa !246 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !246 ; 8 uses
  %i.dj = fcmp ogt float %i.dg, %i.di
  br i1 %i.dj, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !246 ; 2 uses
  %i.dm = fcmp ogt float %i.di, %i.dl
  br i1 %i.dm, label %bb.s, label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

bb.s:                                             ; preds = %bb.r
  %i.dn = fsub float %i.di, %i.dl                 ; 2 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %bb.q
  %i.dp = fsub float %i.dg, %i.di                 ; 2 uses
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %.1.1.i)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.r, %bb.s, %bb.t
  %.1.2.i = phi float [ %i.dq, %bb.t ], [ %i.do, %bb.s ], [ %.1.1.i, %bb.r ] ; 3 uses
  %i.dr = load ptr, ptr %i.k, align 8, !tbaa !565 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !246 ; 2 uses
  %i.du = fcmp ogt float %i.dt, %i.ch
  br i1 %i.du, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit
  %i.dv = fsub float %i.dt, %i.ch                 ; 2 uses
  %i.dw = call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float 0.000000e+00)
  br label %bb.x

bb.v:                                             ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !246 ; 2 uses
  %i.dz = fcmp ogt float %i.ch, %i.dy
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = fsub float %i.ch, %i.dy                 ; 2 uses
  %i.eb = call float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float 0.000000e+00)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1.i55 = phi float [ %i.dw, %bb.u ], [ %i.eb, %bb.w ], [ 0.000000e+00, %bb.v ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !246 ; 2 uses
  %i.ee = fcmp ogt float %i.ed, %i.cw
  br i1 %i.ee, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !246 ; 2 uses
  %i.eh = fcmp ogt float %i.cw, %i.eg
  br i1 %i.eh, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ei = fsub float %i.cw, %i.eg                 ; 2 uses
  %i.ej = call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %.1.i55)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ek = fsub float %i.ed, %i.cw                 ; 2 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %.1.i55)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1.1.i56 = phi float [ %i.el, %bb.aa ], [ %i.ej, %bb.z ], [ %.1.i55, %bb.y ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.en = load float, ptr %i.em, align 4, !tbaa !246 ; 2 uses
  %i.eo = fcmp ogt float %i.en, %i.di
  br i1 %i.eo, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dr, i64 44
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !246 ; 2 uses
  %i.er = fcmp ogt float %i.di, %i.eq
  br i1 %i.er, label %bb.ad, label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.es = fsub float %i.di, %i.eq                 ; 2 uses
  %i.et = call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

bb.ae:                                            ; preds = %bb.ab
  %i.eu = fsub float %i.en, %i.di                 ; 2 uses
  %i.ev = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %.1.1.i56)
  br label %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58

_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.1.2.i57 = phi float [ %i.ev, %bb.ae ], [ %i.et, %bb.ad ], [ %.1.1.i56, %bb.ac ] ; 3 uses
  %i.ew = fcmp olt float %.1.2.i, %.1.2.i57
  br i1 %i.ew, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58
  %i.ex = fcmp olt float %.1.2.i, %.1
  %or.cond = select i1 %.0159, i1 %i.ex, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.ey = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %11), !inline_history !738 ; 2 uses
  %i.ez = fcmp olt float %i.ey, %.1
  br i1 %i.ez, label %bb.ah, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60

bb.ah:                                            ; preds = %bb.ag
  %i.fa = load i32, ptr %i.d, align 4, !tbaa !51
  store i32 %i.fa, ptr %6, align 4, !tbaa !51
  %i.fb = load <2 x float>, ptr %11, align 8, !tbaa !246
  store <2 x float> %i.fb, ptr %7, align 4, !tbaa !246
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !246
  store float %i.fe, ptr %i.fc, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60: ; preds = %bb.ag, %bb.ah
  %.10 = phi float [ %i.ey, %bb.ah ], [ %.1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60, %bb.af
  %.2 = phi float [ %.10, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit60 ], [ %.1, %bb.af ] ; 5 uses
  %i.ff = fcmp olt float %.1.2.i57, %.2
  %or.cond43 = and i1 %.0160, %i.ff
  br i1 %or.cond43, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.fg = load ptr, ptr %i.k, align 8, !tbaa !565
  %i.fh = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.fg, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %10), !inline_history !739 ; 2 uses
  %i.fi = fcmp olt float %i.fh, %.2
  br i1 %i.fi, label %bb.ak, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.fj = load i32, ptr %i.c, align 4, !tbaa !51
  store i32 %i.fj, ptr %6, align 4, !tbaa !51
  %i.fk = load <2 x float>, ptr %10, align 8, !tbaa !246
  store <2 x float> %i.fk, ptr %7, align 4, !tbaa !246
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !246
  store float %i.fn, ptr %i.fl, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61: ; preds = %bb.aj, %bb.ak
  %.11 = phi float [ %i.fh, %bb.ak ], [ %.2, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ar

bb.al:                                            ; preds = %_ZNK5Eigen10AlignedBoxIfLi3EE23squaredExteriorDistanceINS_9TransposeIKNS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEEEEEEfRKNS_10MatrixBaseIT_EE.exit58
  %i.fo = fcmp olt float %.1.2.i57, %.1
  %or.cond46 = and i1 %.0160, %i.fo
  br i1 %or.cond46, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.fp = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.dr, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %9), !inline_history !739 ; 2 uses
  %i.fq = fcmp olt float %i.fp, %.1
  br i1 %i.fq, label %bb.an, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62

bb.an:                                            ; preds = %bb.am
  %i.fr = load i32, ptr %i.b, align 4, !tbaa !51
  store i32 %i.fr, ptr %6, align 4, !tbaa !51
  %i.fs = load <2 x float>, ptr %9, align 8, !tbaa !246
  store <2 x float> %i.fs, ptr %7, align 4, !tbaa !246
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !246
  store float %i.fv, ptr %i.ft, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62: ; preds = %bb.am, %bb.an
  %.12 = phi float [ %i.fp, %bb.an ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62, %bb.al
  %.3 = phi float [ %.12, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit62 ], [ %.1, %bb.al ] ; 5 uses
  %i.fw = fcmp olt float %.1.2.i, %.3
  %or.cond49 = select i1 %.0159, i1 %i.fw, i1 false
  br i1 %or.cond49, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !248
  %i.fx = load ptr, ptr %0, align 8, !tbaa !563
  %i.fy = call noundef float @_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE16squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEfRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEffRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.fx, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, float noundef %4, float noundef %.3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %8), !inline_history !738 ; 2 uses
  %i.fz = fcmp olt float %i.fy, %.3
  br i1 %i.fz, label %bb.aq, label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63

bb.aq:                                            ; preds = %bb.ap
  %i.ga = load i32, ptr %i.a, align 4, !tbaa !51
  store i32 %i.ga, ptr %6, align 4, !tbaa !51
  %i.gb = load <2 x float>, ptr %8, align 8, !tbaa !246
  store <2 x float> %i.gb, ptr %7, align 4, !tbaa !246
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ge = load float, ptr %i.gd, align 8, !tbaa !246
  store float %i.ge, ptr %i.gc, align 4, !tbaa !246
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63

_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63: ; preds = %bb.ap, %bb.aq
  %.13 = phi float [ %i.fy, %bb.aq ], [ %.3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit, %bb.ao, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63, %bb.ai, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61, %bb.a
  %.0 = phi float [ %4, %bb.a ], [ %.6, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi3ELi1ELin1ELi3EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRfRiRNS1_15PlainObjectBaseISF_EE.exit ], [ %.11, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit61 ], [ %.2, %bb.ai ], [ %.13, %_ZNK3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE7set_minERKNS2_IfLi1ELi3ELi1ELi1ELi3EEEfRKiS7_RfRiRNS1_15PlainObjectBaseIS5_EE.exit63 ], [ %.3, %bb.ao ]
  ret float %.0
}

declare void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEfS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #2

declare noundef double @_ZN3igl3EPSIdEET_v() local_unnamed_addr #2

declare noundef double @_ZN3igl17doublearea_singleIN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEES3_S3_EENT_6ScalarERKNS1_10MatrixBaseIS4_EERKNS6_IT0_EERKNS6_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !369  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !582

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !369
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !51
  store i32 %i.u, ptr %i.h, align 4, !tbaa !51
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !369
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !582

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !51
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !51
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !582

bb.k:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4, !tbaa !51
  store i32 %i.ag, ptr %1, align 4, !tbaa !51
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !582

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !369
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !51
  store i32 %i.an, ptr %i.h, align 4, !tbaa !51
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !369
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !582

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aq, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !369
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load i32, ptr %1, align 4, !tbaa !51
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !51
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !369
  %i.av = icmp sgt i64 %i.m, 4
  br i1 %i.av, label %bb.t, label %bb.u, !prof !582

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 4
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i32, ptr %2, align 4, !tbaa !51
  store i32 %i.ax, ptr %1, align 4, !tbaa !51
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !366   ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 4 uses
  %i.bc = sub nsw i64 2305843009213693951, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
end_hunk_4
begin_hunk_5_@_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE:bb.a

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv181 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next182.3, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.h ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv181
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !51
  %i.fz = sext i32 %i.fy to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fz
  %i.ga = load i32, ptr %gep, align 4, !tbaa !51
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv181
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !51
  %indvars.iv.next182 = or disjoint i64 %indvars.iv181, 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.next182
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !51
  %i.ge = sext i32 %i.gd to i64
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ge
  %i.gf = load i32, ptr %gep.1, align 4, !tbaa !51
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next182
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !51
  %indvars.iv.next182.1 = or disjoint i64 %indvars.iv181, 2 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.next182.1
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !51
  %i.gj = sext i32 %i.gi to i64
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gj
  %i.gk = load i32, ptr %gep.2, align 4, !tbaa !51
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next182.1
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !51
  %indvars.iv.next182.2 = or disjoint i64 %indvars.iv181, 3 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.next182.2
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !51
  %i.go = sext i32 %i.gn to i64
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.go
  %i.gp = load i32, ptr %gep.3, align 4, !tbaa !51
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next182.2
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !51
  %indvars.iv.next182.3 = add nuw nsw i64 %indvars.iv181, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge167.unr-lcssa, label %bb.h, !llvm.loop !1521

bb.i:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fu, ptr nonnull align 4 %i.ew, i64 %i.ft, i1 false)
  %i.gr = add nsw i64 %i.h, -1
  %i.gs = lshr i64 %i.gr, 1                       ; 2 uses
  %.idx2.i = shl nuw nsw i64 %i.gs, 2             ; 2 uses
  %i.gt = icmp eq i64 %.idx2.i, %i.ft
  br i1 %i.gt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx2.i
  %i.gw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.gx = shl nuw nsw i64 %i.gw, 1
  %i.gy = xor i64 %i.gx, 126
  invoke void @_ZSt13__introselectIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %i.fu, ptr noundef nonnull %i.gv, ptr noundef nonnull %i.gu, i64 noundef %i.gy)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gs
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !51
  tail call void @free(ptr noundef nonnull %i.fu) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.hb = load i64, ptr %i.g, align 8, !tbaa !312 ; 8 uses
  %i.hc = add i64 %i.hb, 1                        ; 2 uses
  %i.hd = sdiv i64 %i.hc, 2                       ; 2 uses
  store i64 0, ptr %5, align 8
  %.off = add i64 %i.hb, 2
  %.not.i.i.i.i81 = icmp ult i64 %.off, 3
  br i1 %.not.i.i.i.i81, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.he = icmp sgt i64 %i.hb, 0
  br i1 %i.he, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84, label %.sink.split.i.i.i.i82

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84: ; preds = %bb.l
  %i.hf = shl nuw i64 %i.hd, 2
  %i.hg = tail call noalias ptr @malloc(i64 noundef %i.hf) #31 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %.invoke.i85, label %.sink.split.i.i.i.i82

.invoke.i85:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84
  %i.hi = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hi, align 8, !tbaa !226
  invoke void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.cont.i86 unwind label %bb.m

.cont.i86:                                        ; preds = %.invoke.i85
  unreachable

.sink.split.i.i.i.i82:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84, %bb.l
  %.sink.i.i.i.i83 = phi ptr [ %i.hg, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84 ], [ null, %bb.l ] ; 2 uses
  store ptr %.sink.i.i.i.i83, ptr %5, align 8, !tbaa !213
  br label %bb.n

bb.m:                                             ; preds = %.invoke.i85
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %.sink.split.i.i.i.i82, %bb.k
  %i.hk = phi ptr [ %.sink.i.i.i.i83, %.sink.split.i.i.i.i82 ], [ null, %bb.k ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.hd, ptr %i.hl, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.hm = sdiv i64 %i.hb, 2                       ; 2 uses
  store i64 0, ptr %6, align 8
  %.not.i.i.i.i88 = icmp ult i64 %i.hc, 3
  br i1 %.not.i.i.i.i88, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hn = icmp sgt i64 %i.hb, 1
  br i1 %i.hn, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91, label %.sink.split.i.i.i.i89

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91: ; preds = %bb.o
  %i.ho = shl nuw i64 %i.hm, 2
  %i.hp = tail call noalias ptr @malloc(i64 noundef %i.ho) #31 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %.invoke.i92, label %.sink.split.i.i.i.i89

.invoke.i92:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91
  %i.hr = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hr, align 8, !tbaa !226
  invoke void @__cxa_throw(ptr nonnull %i.hr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.cont.i93 unwind label %bb.p

.cont.i93:                                        ; preds = %.invoke.i92
  unreachable

.sink.split.i.i.i.i89:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91, %bb.o
  %.sink.i.i.i.i90 = phi ptr [ %i.hp, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91 ], [ null, %bb.o ] ; 2 uses
  store ptr %.sink.i.i.i.i90, ptr %6, align 8, !tbaa !213
  br label %bb.q

bb.p:                                             ; preds = %.invoke.i92
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.q:                                             ; preds = %.sink.split.i.i.i.i89, %bb.n
  %i.ht = phi ptr [ %.sink.i.i.i.i90, %.sink.split.i.i.i.i89 ], [ null, %bb.n ]
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.hm, ptr %i.hu, align 8, !tbaa !312
  %i.hv = icmp sgt i64 %i.hb, 0
  br i1 %i.hv, label %.lr.ph172.preheader, label %.thread206

.lr.ph172.preheader:                              ; preds = %bb.q
  %i.hw = load ptr, ptr %4, align 8, !tbaa !213
  br label %.lr.ph172

bb.r:                                             ; preds = %bb.g, %._crit_edge167.thread
  %.sink.i.i.i.i200204 = phi ptr [ %i.ew, %bb.g ], [ %.sink.i.i.i.i200205, %._crit_edge167.thread ]
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.s:                                             ; preds = %bb.j
  %i.hy = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.fu) #25
  br label %common.resume

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %bb.v
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %bb.v ], [ 0, %.lr.ph172.preheader ] ; 3 uses
  %.050169 = phi i32 [ %.1, %bb.v ], [ 0, %.lr.ph172.preheader ] ; 3 uses
  %.051168 = phi i32 [ %.152, %bb.v ], [ 0, %.lr.ph172.preheader ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv185
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !51
  %.not = icmp sgt i32 %i.ia, %i.ha
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv185
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !51 ; 2 uses
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph172
  %i.id = sext i32 %.051168 to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.id
  %i.if = add nsw i32 %.051168, 1
  store i32 %i.ic, ptr %i.ie, align 4, !tbaa !51
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph172
  %i.ig = sext i32 %.050169 to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.ig
  %i.ii = add nsw i32 %.050169, 1
  store i32 %i.ic, ptr %i.ih, align 4, !tbaa !51
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.152 = phi i32 [ %i.if, %bb.t ], [ %.051168, %bb.u ]
  %.1 = phi i32 [ %.050169, %bb.t ], [ %i.ii, %bb.u ]
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next186, %i.hb
  br i1 %exitcond188.not, label %._crit_edge173, label %.lr.ph172, !llvm.loop !1522

._crit_edge173:                                   ; preds = %bb.v
  %i.ij = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %bb.w unwind label %bb.x       ; 6 uses

bb.w:                                             ; preds = %._crit_edge173
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ij, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.ik, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i, align 4, !tbaa !246
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  store i32 -1, ptr %i.il, align 8, !tbaa !354
  store ptr %i.ij, ptr %0, align 8, !tbaa !351
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.ij, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.w, %._crit_edge173
  %i.im = landingpad { ptr, i32 }
          cleanup
  %i.in = load ptr, ptr %6, align 8, !tbaa !213
  call void @free(ptr noundef %i.in) #25
  %.pre = load ptr, ptr %5, align 8, !tbaa !213
  br label %.body94

bb.y:                                             ; preds = %bb.w
  %i.io = load ptr, ptr %0, align 8, !tbaa !351
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store ptr %0, ptr %i.ip, align 8, !tbaa !550
  %.not212 = icmp eq i64 %i.hb, 1
  br i1 %.not212, label %.thread206, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %bb.aa unwind label %bb.x      ; 6 uses

bb.aa:                                            ; preds = %bb.z
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.iq, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.ir, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i99 = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i99, align 4, !tbaa !246
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  store i32 -1, ptr %i.is, align 8, !tbaa !354
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.iq, ptr %i.it, align 8, !tbaa !356
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.iq, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ab unwind label %bb.x

bb.ab:                                            ; preds = %bb.aa
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !356
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store ptr %0, ptr %i.iv, align 8, !tbaa !550
  br label %.thread206

.thread206:                                       ; preds = %bb.q, %bb.ab, %bb.y
  %i.iw = load ptr, ptr %6, align 8, !tbaa !213
  call void @free(ptr noundef %i.iw) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ix = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.ix) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @free(ptr noundef nonnull %i.ew) #25
  br label %bb.ac

.body94:                                          ; preds = %bb.p, %bb.x
  %i.iy = phi ptr [ %.pre, %bb.x ], [ %i.hk, %bb.p ]
  %.pn.pn = phi { ptr, i32 } [ %i.im, %bb.x ], [ %i.hs, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @free(ptr noundef %i.iy) #25
  br label %.body

.body:                                            ; preds = %bb.m, %.body94
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body94 ], [ %i.hj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.r, %bb.s, %.body
  %.sink.i.i.i.i202 = phi ptr [ %.sink.i.i.i.i200204, %bb.r ], [ %i.ew, %.body ], [ %i.ew, %bb.s ]
  %.pn72 = phi { ptr, i32 } [ %i.hx, %bb.r ], [ %.pn.pn.pn, %.body ], [ %i.hy, %bb.s ]
  call void @free(ptr noundef %.sink.i.i.i.i202) #25
  resume { ptr, i32 } %.pn72

bb.ac:                                            ; preds = %bb.a, %bb.b, %bb.c, %.thread206, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %i.a, align 8, !tbaa !560
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.b, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.c, align 8, !tbaa !246
  %i.d = load ptr, ptr %0, align 8, !tbaa !563    ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %i.d)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EED2Ev.exit unwind label %bb.c, !inline_history !1523

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !1523
  unreachable

_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 56) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EED2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !563
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !565  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %i.i)
          to label %_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EED2Ev.exit5 unwind label %bb.f, !inline_history !1523

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28, !inline_history !1523
  unreachable

_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EED2Ev.exit5: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 56) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EED2Ev.exit5, %bb.d
  store ptr null, ptr %i.h, align 8, !tbaa !565
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !564  ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !563
  %i.p = icmp eq ptr %i.o, %0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.n, align 8, !tbaa !563
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !565
  %i.s = icmp eq ptr %i.r, %0
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.q, align 8, !tbaa !565
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g
  store ptr null, ptr %i.m, align 8, !tbaa !564
  ret void
}

declare void @_ZN3igl10barycenterIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.160", align 8 ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.160", align 8 ; 9 uses
  tail call void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1524
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !539
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !312  ; 12 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.j, align 8, !tbaa !246
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.n, align 8, !tbaa !246
  %i.p = icmp sgt i64 %i.h, 0
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge167.thread

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.q = load ptr, ptr %4, align 8, !tbaa !213
  %i.r = load ptr, ptr %2, align 8, !tbaa !1504
  %i.s = load ptr, ptr %1, align 8, !tbaa !1526, !noalias !1527 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.promoted147160 = phi float [ f0xFF7FFFFF, %.preheader.lr.ph ], [ %i.er, %.preheader ] ; 2 uses
  %.promoted146158 = phi float [ f0xFF7FFFFF, %.preheader.lr.ph ], [ %i.eo, %.preheader ] ; 2 uses
  %.promoted145156 = phi float [ f0xFF7FFFFF, %.preheader.lr.ph ], [ %i.el, %.preheader ] ; 2 uses
  %.promoted144154 = phi float [ f0x7F7FFFFF, %.preheader.lr.ph ], [ %i.ei, %.preheader ] ; 2 uses
  %.promoted143152 = phi float [ f0x7F7FFFFF, %.preheader.lr.ph ], [ %i.ef, %.preheader ] ; 2 uses
  %.promoted151 = phi float [ f0x7F7FFFFF, %.preheader.lr.ph ], [ %i.ec, %.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51
  %i.v = sext i32 %i.u to i64
  %.idx.i.i.i = mul nsw i64 %i.v, 12
  %i.w = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !51
  %i.y = sext i32 %i.x to i64
  %.idx.i.i.i.i = mul nsw i64 %i.y, 12
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 %.idx.i.i.i.i ; 6 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !246 ; 2 uses
  %i.ab = fcmp olt float %i.aa, %.promoted151
  %i.ac = select i1 %i.ab, float %i.aa, float %.promoted151 ; 3 uses
  store float %i.ac, ptr %i.j, align 8, !tbaa !246
  %i.ad = getelementptr i8, ptr %i.z, i64 4       ; 4 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !246 ; 2 uses
  %i.af = fcmp olt float %i.ae, %.promoted143152
  %i.ag = select i1 %i.af, float %i.ae, float %.promoted143152 ; 3 uses
  store float %i.ag, ptr %i.k, align 4, !tbaa !246
  %i.ah = getelementptr i8, ptr %i.z, i64 8       ; 4 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !246 ; 2 uses
  %i.aj = fcmp olt float %i.ai, %.promoted144154
  %i.ak = select i1 %i.aj, float %i.ai, float %.promoted144154 ; 3 uses
  store float %i.ak, ptr %i.l, align 8, !tbaa !246
end_hunk_5
begin_hunk_6_@_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE:bb.a

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv181 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next182.3, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.h ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv181
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !51
  %i.fz = sext i32 %i.fy to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fz
  %i.ga = load i32, ptr %gep, align 4, !tbaa !51
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv181
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !51
  %indvars.iv.next182 = or disjoint i64 %indvars.iv181, 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.next182
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !51
  %i.ge = sext i32 %i.gd to i64
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ge
  %i.gf = load i32, ptr %gep.1, align 4, !tbaa !51
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next182
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !51
  %indvars.iv.next182.1 = or disjoint i64 %indvars.iv181, 2 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.next182.1
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !51
  %i.gj = sext i32 %i.gi to i64
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gj
  %i.gk = load i32, ptr %gep.2, align 4, !tbaa !51
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next182.1
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !51
  %indvars.iv.next182.2 = or disjoint i64 %indvars.iv181, 3 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.next182.2
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !51
  %i.go = sext i32 %i.gn to i64
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.go
  %i.gp = load i32, ptr %gep.3, align 4, !tbaa !51
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next182.2
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !51
  %indvars.iv.next182.3 = add nuw nsw i64 %indvars.iv181, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge167.unr-lcssa, label %bb.h, !llvm.loop !1532

bb.i:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fu, ptr nonnull align 4 %i.ew, i64 %i.ft, i1 false)
  %i.gr = add nsw i64 %i.h, -1
  %i.gs = lshr i64 %i.gr, 1                       ; 2 uses
  %.idx2.i = shl nuw nsw i64 %i.gs, 2             ; 2 uses
  %i.gt = icmp eq i64 %.idx2.i, %i.ft
  br i1 %i.gt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx2.i
  %i.gw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.gx = shl nuw nsw i64 %i.gw, 1
  %i.gy = xor i64 %i.gx, 126
  invoke void @_ZSt13__introselectIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %i.fu, ptr noundef nonnull %i.gv, ptr noundef nonnull %i.gu, i64 noundef %i.gy)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gs
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !51
  tail call void @free(ptr noundef nonnull %i.fu) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.hb = load i64, ptr %i.g, align 8, !tbaa !312 ; 8 uses
  %i.hc = add i64 %i.hb, 1                        ; 2 uses
  %i.hd = sdiv i64 %i.hc, 2                       ; 2 uses
  store i64 0, ptr %5, align 8
  %.off = add i64 %i.hb, 2
  %.not.i.i.i.i81 = icmp ult i64 %.off, 3
  br i1 %.not.i.i.i.i81, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.he = icmp sgt i64 %i.hb, 0
  br i1 %i.he, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84, label %.sink.split.i.i.i.i82

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84: ; preds = %bb.l
  %i.hf = shl nuw i64 %i.hd, 2
  %i.hg = tail call noalias ptr @malloc(i64 noundef %i.hf) #31 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %.invoke.i85, label %.sink.split.i.i.i.i82

.invoke.i85:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84
  %i.hi = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hi, align 8, !tbaa !226
  invoke void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.cont.i86 unwind label %bb.m

.cont.i86:                                        ; preds = %.invoke.i85
  unreachable

.sink.split.i.i.i.i82:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84, %bb.l
  %.sink.i.i.i.i83 = phi ptr [ %i.hg, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i84 ], [ null, %bb.l ] ; 2 uses
  store ptr %.sink.i.i.i.i83, ptr %5, align 8, !tbaa !213
  br label %bb.n

bb.m:                                             ; preds = %.invoke.i85
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %.sink.split.i.i.i.i82, %bb.k
  %i.hk = phi ptr [ %.sink.i.i.i.i83, %.sink.split.i.i.i.i82 ], [ null, %bb.k ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.hd, ptr %i.hl, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.hm = sdiv i64 %i.hb, 2                       ; 2 uses
  store i64 0, ptr %6, align 8
  %.not.i.i.i.i88 = icmp ult i64 %i.hc, 3
  br i1 %.not.i.i.i.i88, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hn = icmp sgt i64 %i.hb, 1
  br i1 %i.hn, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91, label %.sink.split.i.i.i.i89

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91: ; preds = %bb.o
  %i.ho = shl nuw i64 %i.hm, 2
  %i.hp = tail call noalias ptr @malloc(i64 noundef %i.ho) #31 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %.invoke.i92, label %.sink.split.i.i.i.i89

.invoke.i92:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91
  %i.hr = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hr, align 8, !tbaa !226
  invoke void @__cxa_throw(ptr nonnull %i.hr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.cont.i93 unwind label %bb.p

.cont.i93:                                        ; preds = %.invoke.i92
  unreachable

.sink.split.i.i.i.i89:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91, %bb.o
  %.sink.i.i.i.i90 = phi ptr [ %i.hp, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i91 ], [ null, %bb.o ] ; 2 uses
  store ptr %.sink.i.i.i.i90, ptr %6, align 8, !tbaa !213
  br label %bb.q

bb.p:                                             ; preds = %.invoke.i92
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body94

bb.q:                                             ; preds = %.sink.split.i.i.i.i89, %bb.n
  %i.ht = phi ptr [ %.sink.i.i.i.i90, %.sink.split.i.i.i.i89 ], [ null, %bb.n ]
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.hm, ptr %i.hu, align 8, !tbaa !312
  %i.hv = icmp sgt i64 %i.hb, 0
  br i1 %i.hv, label %.lr.ph172.preheader, label %.thread204

.lr.ph172.preheader:                              ; preds = %bb.q
  %i.hw = load ptr, ptr %4, align 8, !tbaa !213
  br label %.lr.ph172

bb.r:                                             ; preds = %bb.g, %._crit_edge167.thread
  %.sink.i.i.i.i198202 = phi ptr [ %i.ew, %bb.g ], [ %.sink.i.i.i.i198203, %._crit_edge167.thread ]
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.s:                                             ; preds = %bb.j
  %i.hy = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.fu) #25
  br label %common.resume

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %bb.v
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %bb.v ], [ 0, %.lr.ph172.preheader ] ; 3 uses
  %.050169 = phi i32 [ %.1, %bb.v ], [ 0, %.lr.ph172.preheader ] ; 3 uses
  %.051168 = phi i32 [ %.152, %bb.v ], [ 0, %.lr.ph172.preheader ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv185
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !51
  %.not = icmp sgt i32 %i.ia, %i.ha
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv185
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !51 ; 2 uses
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph172
  %i.id = sext i32 %.051168 to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.id
  %i.if = add nsw i32 %.051168, 1
  store i32 %i.ic, ptr %i.ie, align 4, !tbaa !51
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph172
  %i.ig = sext i32 %.050169 to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.ig
  %i.ii = add nsw i32 %.050169, 1
  store i32 %i.ic, ptr %i.ih, align 4, !tbaa !51
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.152 = phi i32 [ %i.if, %bb.t ], [ %.051168, %bb.u ]
  %.1 = phi i32 [ %.050169, %bb.t ], [ %i.ii, %bb.u ]
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next186, %i.hb
  br i1 %exitcond188.not, label %._crit_edge173, label %.lr.ph172, !llvm.loop !1533

._crit_edge173:                                   ; preds = %bb.v
  %i.ij = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %bb.w unwind label %bb.x       ; 6 uses

bb.w:                                             ; preds = %._crit_edge173
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ij, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.ik, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i, align 4, !tbaa !246
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  store i32 -1, ptr %i.il, align 8, !tbaa !560
  store ptr %i.ij, ptr %0, align 8, !tbaa !563
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.ij, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.w, %._crit_edge173
  %i.im = landingpad { ptr, i32 }
          cleanup
  %i.in = load ptr, ptr %6, align 8, !tbaa !213
  call void @free(ptr noundef %i.in) #25
  %.pre = load ptr, ptr %5, align 8, !tbaa !213
  br label %.body94

bb.y:                                             ; preds = %bb.w
  %i.io = load ptr, ptr %0, align 8, !tbaa !563
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store ptr %0, ptr %i.ip, align 8, !tbaa !564
  %.not210 = icmp eq i64 %i.hb, 1
  br i1 %.not210, label %.thread204, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %bb.aa unwind label %bb.x      ; 6 uses

bb.aa:                                            ; preds = %bb.z
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.iq, i8 0, i64 24, i1 false)
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %i.ir, align 4, !tbaa !246
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i99 = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  store <2 x float> splat (float f0xFF7FFFFF), ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i.i.i1.i.i.i99, align 4, !tbaa !246
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  store i32 -1, ptr %i.is, align 8, !tbaa !560
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.iq, ptr %i.it, align 8, !tbaa !565
  invoke void @_ZN3igl4AABBIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEELi3EE4initINS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS9_IT_EERKNS9_IT0_EERKNS9_IT1_EE(ptr noundef nonnull align 8 dereferenceable(52) %i.iq, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ab unwind label %bb.x

bb.ab:                                            ; preds = %bb.aa
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !565
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store ptr %0, ptr %i.iv, align 8, !tbaa !564
  br label %.thread204

.thread204:                                       ; preds = %bb.q, %bb.ab, %bb.y
  %i.iw = load ptr, ptr %6, align 8, !tbaa !213
  call void @free(ptr noundef %i.iw) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ix = load ptr, ptr %5, align 8, !tbaa !213
  call void @free(ptr noundef %i.ix) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @free(ptr noundef nonnull %i.ew) #25
  br label %bb.ac

.body94:                                          ; preds = %bb.p, %bb.x
  %i.iy = phi ptr [ %.pre, %bb.x ], [ %i.hk, %bb.p ]
  %.pn.pn = phi { ptr, i32 } [ %i.im, %bb.x ], [ %i.hs, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @free(ptr noundef %i.iy) #25
  br label %.body

.body:                                            ; preds = %bb.m, %.body94
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body94 ], [ %i.hj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.r, %bb.s, %.body
  %.sink.i.i.i.i200 = phi ptr [ %.sink.i.i.i.i198202, %bb.r ], [ %i.ew, %.body ], [ %i.ew, %bb.s ]
  %.pn72 = phi { ptr, i32 } [ %i.hx, %bb.r ], [ %.pn.pn.pn, %.body ], [ %i.hy, %bb.s ]
  call void @free(ptr noundef %.sink.i.i.i.i200) #25
  resume { ptr, i32 } %.pn72

bb.ac:                                            ; preds = %bb.a, %bb.b, %bb.c, %.thread204, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.Eigen::Matrix", align 16   ; 6 uses
  %14 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = fcmp ogt double %4, %5
  br i1 %i.h, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !18     ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %i.q = sext i32 %i.p to i64
  call void @_ZN3igl30point_simplex_squared_distanceILi3EN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEdS3_EEvRKNS1_10MatrixBaseIT0_EERKNS6_IT1_EERKNS6_IT2_EENSF_5IndexERT3_RNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %i.r = load double, ptr %i.g, align 8, !tbaa !10 ; 2 uses
  %i.s = fcmp olt double %i.r, %5
  br i1 %i.s, label %bb.d, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.o, align 8, !tbaa !51
  store i32 %i.t, ptr %6, align 4, !tbaa !51
  %i.u = load <2 x double>, ptr %14, align 16, !tbaa !9
  store <2 x double> %i.u, ptr %7, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.x = load double, ptr %i.w, align 16, !tbaa !10
  store double %i.x, ptr %i.v, align 8, !tbaa !10
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE21leaf_squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRdRiRNS1_15PlainObjectBaseISF_EE.exit: ; preds = %bb.c, %bb.d
  %.6 = phi double [ %i.r, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load double, ptr %3, align 8, !tbaa !10  ; 6 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !10
  %i.ab = fcmp ugt double %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !10 ; 2 uses
  %i.af = load double, ptr %i.ac, align 8, !tbaa !10
  %i.ag = fcmp ugt double %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !10 ; 2 uses
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !10
  %i.al = fcmp ugt double %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ugt double %i.z, %i.an
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fcmp ugt double %i.ae, %i.aq
  %or.cond17.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond17.i, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.at = load double, ptr %i.as, align 8, !tbaa !10
  %i.au = fcmp ugt double %i.aj, %i.at
  br i1 %i.au, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !12
  %i.av = call noundef double @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE16squared_distanceINS2_IiLin1ELi1ELi0ELin1ELi1EEEEEdRKNS1_10MatrixBaseIS3_EERKNS7_IT_EERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEddRiRNS1_15PlainObjectBaseISF_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, double noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %13), !inline_history !1534 ; 2 uses
  %i.aw = fcmp olt double %i.av, %5
  br i1 %i.aw, label %bb.g, label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !51
  store i32 %i.ax, ptr %6, align 4, !tbaa !51
  %i.ay = load <2 x double>, ptr %13, align 16, !tbaa !9
  store <2 x double> %i.ay, ptr %7, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bb = load double, ptr %i.ba, align 16, !tbaa !10
  store double %i.bb, ptr %i.az, align 8, !tbaa !10
  br label %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit

_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.8 = phi double [ %i.av, %bb.g ], [ %5, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !47
  %.pre162 = load double, ptr %3, align 8, !tbaa !10
  br label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread

_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i, %bb.e, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit
  %i.bc = phi double [ %.pre162, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.z, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.z, %bb.e ], [ %i.z, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %.pre, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %i.l, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %i.l, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %i.l, %bb.e ], [ %i.l, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0161 = phi double [ %.8, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ %5, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ %5, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ %5, %bb.e ], [ %5, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 7 uses
  %.0159 = phi i1 [ false, %_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE7set_minERKNS2_IdLi1ELi3ELi1ELi1ELi3EEEdRKiS7_RdRiRNS1_15PlainObjectBaseIS5_EE.exit ], [ true, %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit ], [ true, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i ], [ true, %bb.e ], [ true, %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load double, ptr %i.be, align 8, !tbaa !10
  %i.bg = fcmp ugt double %i.bf, %i.bc
  br i1 %i.bg, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50

_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50: ; preds = %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !10 ; 2 uses
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bl = fcmp ugt double %i.bk, %i.bj
  br i1 %i.bl, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS6_IKNS_9TransposeIKNS7_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEE3allEv.exit.i51: ; preds = %_ZN5Eigen8internal12all_unrollerINS0_9evaluatorINS_13CwiseBinaryOpINS0_13scalar_cmp_opIddLNS0_14ComparisonNameE2EEEKNS_12ArrayWrapperIKNS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEEKNS7_IKNS_9TransposeIKNS8_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEEEELi2ELi3EE3runERKSL_.exit.i.i.i50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !10 ; 2 uses
  %i.bp = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bq = fcmp ugt double %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fcmp ugt double %i.bc, %i.bs
  %or.cond.i52 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fcmp ugt double %i.bj, %i.bv
  %or.cond17.i53 = select i1 %or.cond.i52, i1 true, i1 %i.bw
  br i1 %or.cond17.i53, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54.thread, label %_ZNK5Eigen10AlignedBoxIdLi3EE8containsINS_9TransposeIKNS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEEEEbRKNS_10MatrixBaseIT_EE.exit54

end_hunk_6
