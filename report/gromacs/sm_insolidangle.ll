Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/sm_insolidangle?download=true
inline.NumInlined: 195
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL17init_insolidanglePK10gmx_mtop_tiP18gmx_ana_selparam_tPv:bb.a
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !92
  ret void

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL22free_data_insolidanglePv(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef 440, ptr noundef %i.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.c, align 8, !tbaa !34
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !93

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.m = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %.preheader ]
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7, i32 noundef 442, ptr noundef %i.m)
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.pre.i = load ptr, ptr %i.q, align 8, !tbaa !42 ; 2 uses
  br i1 %i.p, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.r = phi i32 [ %i.w, %bb.d ], [ %i.o, %bb.b ]
  %i.s = phi ptr [ %i.x, %bb.d ], [ %.pre.i, %bb.b ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, i32 noundef 725, ptr noundef nonnull %i.v)
  %.pre13.i = load ptr, ptr %i.q, align 8, !tbaa !42
  %.pre14.i = load i32, ptr %i.n, align 4, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.w = phi i32 [ %.pre14.i, %bb.c ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.x = phi ptr [ %.pre13.i, %bb.c ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !44
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = sext i32 %i.w to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.d, %bb.b
  %i.ad = phi ptr [ %.pre.i, %bb.b ], [ %i.x, %bb.d ]
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 445, ptr noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN13gmx_ana_pos_tD1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.ae) #19
  tail call void @_ZN13gmx_ana_pos_tD1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(352) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 352) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL23init_frame_insolidangleRKN3gmx20SelMethodEvalContextEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 340 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZL19free_surface_pointsP23methoddata_insolidangle.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.f = phi i32 [ %i.c, %.lr.ph.i ], [ %i.k, %bb.d ]
  %i.g = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.l, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, i32 noundef 725, ptr noundef nonnull %i.j)
  %.pre13.i = load ptr, ptr %i.e, align 8, !tbaa !42
  %.pre14.i = load i32, ptr %i.b, align 4, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %.pre14.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.pre13.i, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !44
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = sext i32 %i.k to i64
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.q, label %bb.b, label %_ZL19free_surface_pointsP23methoddata_insolidangle.exit, !llvm.loop !0

_ZL19free_surface_pointsP23methoddata_insolidangle.exit: ; preds = %bb.d, %bb.a
  store i32 0, ptr %i.b, align 4, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i17, label %_ZL20clear_surface_pointsP23methoddata_insolidangle.exit

.lr.ph.i17:                                       ; preds = %_ZL19free_surface_pointsP23methoddata_insolidangle.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.v = load float, ptr %i.u, align 4, !tbaa !35 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.x = load float, ptr %i.w, align 4, !tbaa !33
  %i.y = fpext float %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %wide.trip.count46.i = zext nneg i32 %i.s to i64
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.lr.ph.i17
  %indvars.iv43.i = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next44.i, %.loopexit ] ; 3 uses
  %.lcssa37.i = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next39.i.lcssa, %.loopexit ] ; 4 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv43.i to i32
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fmul float %i.v, %i.ae
  %i.ag = tail call noundef float @sinf(float noundef %i.af) #19 ; 2 uses
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv.next44.i to i32
  %i.ai = uitofp nneg i32 %i.ah to float
  %i.aj = fmul float %i.v, %i.ai
  %i.ak = tail call noundef float @sinf(float noundef %i.aj) #19 ; 2 uses
  %i.al = fcmp olt float %i.ak, %i.ag
  %.sroa.speculated.i = select i1 %i.al, float %i.ak, float %i.ag
  %i.am = fpext float %.sroa.speculated.i to double
  %i.an = fmul double %i.am, f0x401921FB54442D18
  %i.ao = fdiv double %i.an, %i.y
  %i.ap = fptosi double %i.ao to i32              ; 2 uses
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  %spec.store.select.i = add nuw i32 %i.aq, 1     ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv43.i ; 2 uses
  store i32 %spec.store.select.i, ptr %i.ar, align 8, !tbaa !46
  %i.as = uitofp nneg i32 %spec.store.select.i to double ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41 ; 3 uses
  %wide.trip.count.i = zext i32 %spec.store.select.i to i64 ; 4 uses
  %min.iters.check = icmp slt i32 %i.ap, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 4 uses
  %i.av = add i64 %.lcssa37.i, %n.vec             ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <4 x i64> poison, i64 %.lcssa37.i, i64 0
  %broadcast.splat54 = shufflevector <4 x i64> %broadcast.splatinsert53, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i64> %broadcast.splat54, <i64 0, i64 1, i64 2, i64 3>
  %i.aw = trunc i64 %.lcssa37.i to i32
  %broadcast.splatinsert55 = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat56 = shufflevector <4 x i32> %broadcast.splatinsert55, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction57 = add <4 x i32> %broadcast.splat56, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind58 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next60, %vector.body ] ; 2 uses
  %vec.ind59 = phi <4 x i32> [ %induction57, %vector.ph ], [ %vec.ind.next61, %vector.body ] ; 2 uses
  %i.ax = uitofp nneg <4 x i32> %vec.ind58 to <4 x double>
  %i.ay = fmul nnan <4 x double> %i.ax, splat (double f0x401921FB54442D18)
  %i.az = fdiv <4 x double> %i.ay, %broadcast.splat
  %i.ba = fadd <4 x double> %i.az, splat (double f0xC00921FB54442D18)
  %i.bb = fadd <4 x double> %i.ba, splat (double -1.000000e-04)
  %i.bc = fptrunc <4 x double> %i.bb to <4 x float>
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index
  %i.be = bitcast <4 x float> %i.bc to <4 x i32>
  %interleaved.vec = shufflevector <4 x i32> %i.be, <4 x i32> %vec.ind59, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec, ptr %i.bd, align 4, !tbaa !26
  %wide.gep = getelementptr inbounds [16 x i8], ptr %i.ac, <4 x i64> %vec.ind
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> zeroinitializer, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next60 = add <4 x i32> %vec.ind58, splat (i32 4)
  %vec.ind.next61 = add <4 x i32> %vec.ind59, splat (i32 4)
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.e, %middle.block
  %indvars.iv38.i.ph = phi i64 [ %.lcssa37.i, %bb.e ], [ %i.av, %middle.block ]
  %indvars.iv.i18.ph = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %scalar.ph ], [ %indvars.iv38.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i19, %scalar.ph ], [ %indvars.iv.i18.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv.i18 to i32
  %i.bh = uitofp nneg i32 %i.bg to double
  %i.bi = fmul nnan double %i.bh, f0x401921FB54442D18
  %i.bj = fdiv double %i.bi, %i.as
  %i.bk = fadd double %i.bj, f0xC00921FB54442D18
  %i.bl = fadd double %i.bk, -1.000000e-04
  %i.bm = fptrunc double %i.bl to float
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i18 ; 2 uses
  store float %i.bm, ptr %i.bn, align 4, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = trunc nsw i64 %indvars.iv38.i to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !50
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %indvars.iv38.i
  store i32 0, ptr %i.bq, align 8, !tbaa !47
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i19, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !95

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next39.i.lcssa = phi i64 [ %i.av, %middle.block ], [ %indvars.iv.next39.i, %scalar.ph ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %wide.trip.count.i ; 2 uses
  store float f0x4049117E, ptr %i.br, align 4, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 -1, ptr %i.bs, align 4, !tbaa !50
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count46.i
  br i1 %exitcond47.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !96

._crit_edge.i:                                    ; preds = %.loopexit
  %i.bt = trunc nsw i64 %indvars.iv.next39.i.lcssa to i32
  store i32 %i.bt, ptr %i.b, align 4, !tbaa !39
  br label %_ZL20clear_surface_pointsP23methoddata_insolidangle.exit

_ZL20clear_surface_pointsP23methoddata_insolidangle.exit: ; preds = %_ZL19free_surface_pointsP23methoddata_insolidangle.exit, %._crit_edge.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !51
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL20clear_surface_pointsP23methoddata_insolidangle.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 324 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.ce = getelementptr i8, ptr %1, i64 344       ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZL19store_surface_pointP23methoddata_insolidanglePf.exit
  %indvars.iv30 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next31, %_ZL19store_surface_pointP23methoddata_insolidanglePf.exit ] ; 2 uses
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !56 ; 2 uses
  %.not = icmp eq ptr %i.cf, null
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !102
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %indvars.iv30 ; 3 uses
  %i.ci = load ptr, ptr %1, align 8, !tbaa !57    ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %i.cf, ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef nonnull %i.a)
  %i.cj = load <2 x float>, ptr %i.a, align 8, !tbaa !58
  %.pre34 = load float, ptr %i.ca, align 8, !tbaa !58
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ck = load <2 x float>, ptr %i.ch, align 4, !tbaa !58
  %i.cl = load <2 x float>, ptr %i.ci, align 4, !tbaa !58
  %i.cm = fsub <2 x float> %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !58
  %i.cr = fsub float %i.co, %i.cq
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cs = phi float [ %i.cr, %bb.h ], [ %.pre34, %bb.g ] ; 3 uses
  %i.ct = phi <2 x float> [ %i.cm, %bb.h ], [ %i.cj, %bb.g ] ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ct, %i.ct
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cw = call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cx = call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cw)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.cx)
  %i.cy = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x float> %i.ct, %i.da           ; 3 uses
  store <2 x float> %i.db, ptr %i.a, align 8, !tbaa !58
  %i.dc = fmul float %i.cs, %i.cy                 ; 2 uses
  store float %i.dc, ptr %i.ca, align 8, !tbaa !58
  %i.dd = call noundef float @acosf(float noundef %i.dc) #19 ; 10 uses
  %i.de = extractelement <2 x float> %i.db, i64 0
  %i.df = extractelement <2 x float> %i.db, i64 1
  %i.dg = call noundef float @atan2f(float noundef %i.df, float noundef %i.de) #19 ; 4 uses
  %i.dh = load float, ptr %i.cb, align 8, !tbaa !25 ; 7 uses
  %i.di = fcmp ugt float %i.dd, %i.dh
  br i1 %i.di, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dj = fpext float %i.dd to double
  %i.dk = fpext float %i.dh to double
  %i.dl = fsub double f0x400921FB54442D18, %i.dk
  %i.dm = fcmp ugt double %i.dl, %i.dj
  br i1 %i.dm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dn = call noundef float @sinf(float noundef %i.dh) #19
  %i.do = call noundef float @sinf(float noundef %i.dd) #19
  %i.dp = fdiv float %i.dn, %i.do
  %i.dq = call noundef float @asinf(float noundef %i.dp) #19
  %i.dr = call noundef float @cosf(float noundef %i.dd) #19
  %i.ds = call noundef float @cosf(float noundef %i.dh) #19
  %i.dt = fdiv float %i.dr, %i.ds
  %i.du = call noundef float @acosf(float noundef %i.dt) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.066.i = phi float [ %i.dq, %bb.k ], [ f0x40490FDB, %bb.i ], [ f0x40490FDB, %bb.j ]
  %.065.i = phi float [ %i.du, %bb.k ], [ 0.000000e+00, %bb.i ], [ f0x40490FDB, %bb.j ] ; 2 uses
  %i.dv = fsub float %i.dd, %i.dh                 ; 2 uses
  %i.dw = load float, ptr %i.cc, align 4, !tbaa !35 ; 4 uses
  %i.dx = fdiv float %i.dv, %i.dw
  %i.dy = call noundef float @llvm.floor.f32(float %i.dx)
  %i.dz = fptosi float %i.dy to i32
  %.sroa.speculated.i20 = call i32 @llvm.smax.i32(i32 %i.dz, i32 0) ; 2 uses
  %i.ea = uitofp nneg i32 %.sroa.speculated.i20 to float ; 2 uses
  %i.eb = fadd float %i.dd, %i.dh                 ; 2 uses
  %i.ec = fdiv float %i.eb, %i.dw
  %i.ed = call noundef float @llvm.ceil.f32(float %i.ec)
  %i.ee = fcmp ogt float %i.ed, %i.ea
  br i1 %i.ee, label %.lr.ph.preheader.i, label %_ZL19store_surface_pointP23methoddata_insolidanglePf.exit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.ef = fmul float %i.dw, %i.ea                 ; 2 uses
  %i.eg = fcmp olt float %i.ef, %i.dv
  %..i = select i1 %i.eg, float 0.000000e+00, float f0x40490FDB
  %i.eh = zext nneg i32 %.sroa.speculated.i20 to i64
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %_ZL18update_surface_binP23methoddata_insolidangleiffffPf.exit, %.lr.ph.preheader.i
  %i.ei = phi float [ %i.kx, %_ZL18update_surface_binP23methoddata_insolidangleiffffPf.exit ], [ %i.dw, %.lr.ph.preheader.i ] ; 2 uses
  %i.ej = phi float [ %i.ky, %_ZL18update_surface_binP23methoddata_insolidangleiffffPf.exit ], [ %i.dh, %.lr.ph.preheader.i ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL18update_surface_binP23methoddata_insolidangleiffffPf.exit ], [ %i.eh, %.lr.ph.preheader.i ] ; 5 uses
  %i.ek = phi float [ %i.kz, %_ZL18update_surface_binP23methoddata_insolidangleiffffPf.exit ], [ %i.eb, %.lr.ph.preheader.i ] ; 2 uses
  %.178.i = phi float [ %.062.i, %_ZL18update_surface_binP23methoddata_insolidangleiffffPf.exit ], [ %..i, %.lr.ph.preheader.i ] ; 4 uses
  %.06477.i = phi float [ %i.eq, %_ZL18update_surface_binP23methoddata_insolidangleiffffPf.exit ], [ %i.ef, %.lr.ph.preheader.i ]
  %i.el = load i32, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %i.em = sext i32 %i.el to i64
  %i.en = icmp slt i64 %indvars.iv, %i.em
  br i1 %i.en, label %bb.m, label %_ZL19store_surface_pointP23methoddata_insolidanglePf.exit

bb.m:                                             ; preds = %.lr.ph.i21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eo = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ep = uitofp nneg i32 %i.eo to float          ; 2 uses
  %i.eq = fmul float %i.ei, %i.ep                 ; 7 uses
  %i.er = fcmp ogt float %i.eq, %i.ek
  br i1 %i.er, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.es = fsub float %i.dd, %i.ej
  %i.et = fneg float %i.es
  %i.eu = fcmp ugt float %i.eq, %i.et
  br i1 %i.eu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ev = fpext float %i.eq to double
  %i.ew = fpext float %i.ek to double
  %i.ex = fsub double f0x401921FB54442D18, %i.ew
  %i.ey = fcmp ole double %i.ex, %i.ev
  %i.ez = add nsw i32 %i.el, -1
  %i.fa = zext i32 %i.ez to i64
  %i.fb = icmp eq i64 %indvars.iv, %i.fa
  %or.cond.i = select i1 %i.ey, i1 true, i1 %i.fb
  br i1 %or.cond.i, label %bb.q, label %bb.p

end_hunk_0
