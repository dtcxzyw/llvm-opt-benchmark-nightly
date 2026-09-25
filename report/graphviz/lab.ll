Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/lab?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lab_gamut:bb.a
  %.not4244 = icmp sgt i8 %i.ac, %i.ae
  br i1 %.not4244, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.af = sext i8 %i.ae to i32                    ; 3 uses
  %i.ag = sext i8 %i.ac to i32                    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21
  %i.aj = insertelement <2 x i8> poison, i8 %i.z, i64 0
  %i.ak = insertelement <2 x i8> %i.aj, i8 %i.ai, i64 1
  %i.al = sitofp <2 x i8> %i.ak to <2 x double>   ; 5 uses
  %i.am = add nsw i32 %i.af, 1
  %i.an = sub nsw i32 %i.am, %i.ag
  %i.ao = sub nsw i32 %i.af, %i.ag
  %xtraiter = and i32 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %i.ap = phi i32 [ %i.at, %.prol.preheader ], [ %.promoted, %.lr.ph ]
  %.046.prol = phi i32 [ %i.au, %.prol.preheader ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.145.prol = phi ptr [ %i.as, %.prol.preheader ], [ %.03747, %.lr.ph ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  store <2 x double> %i.al, ptr %.145.prol, align 8, !tbaa !19
  %i.aq = sitofp i32 %.046.prol to double
  %i.ar = getelementptr inbounds nuw i8, ptr %.145.prol, i64 16
  store double %i.aq, ptr %i.ar, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %.145.prol, i64 24 ; 3 uses
  %i.at = add nsw i32 %i.ap, 1                    ; 3 uses
  %i.au = add nsw i32 %.046.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.lcssa60.unr = phi ptr [ poison, %.lr.ph ], [ %i.as, %.prol.preheader ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %i.at, %.prol.preheader ]
  %.unr = phi i32 [ %.promoted, %.lr.ph ], [ %i.at, %.prol.preheader ]
  %.046.unr = phi i32 [ %i.ag, %.lr.ph ], [ %i.au, %.prol.preheader ]
  %.145.unr = phi ptr [ %.03747, %.lr.ph ], [ %i.as, %.prol.preheader ]
  %i.av = icmp ult i32 %i.ao, 3
  br i1 %i.av, label %..loopexit_crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %i.aw = phi i32 [ %i.bm, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %.046 = phi i32 [ %i.bn, %.lr.ph.new ], [ %.046.unr, %.prol.loopexit ] ; 5 uses
  %.145 = phi ptr [ %i.bl, %.lr.ph.new ], [ %.145.unr, %.prol.loopexit ] ; 9 uses
  store <2 x double> %i.al, ptr %.145, align 8, !tbaa !19
  %i.ax = sitofp i32 %.046 to double
  %i.ay = getelementptr inbounds nuw i8, ptr %.145, i64 16
  store double %i.ax, ptr %i.ay, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %.145, i64 24
  %i.ba = add nsw i32 %.046, 1
  store <2 x double> %i.al, ptr %i.az, align 8, !tbaa !19
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = getelementptr inbounds nuw i8, ptr %.145, i64 40
  store double %i.bb, ptr %i.bc, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %.145, i64 48
  %i.be = add nsw i32 %.046, 2
  store <2 x double> %i.al, ptr %i.bd, align 8, !tbaa !19
  %i.bf = sitofp i32 %i.be to double
  %i.bg = getelementptr inbounds nuw i8, ptr %.145, i64 64
  store double %i.bf, ptr %i.bg, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %.145, i64 72
  %i.bi = add nsw i32 %.046, 3                    ; 2 uses
  store <2 x double> %i.al, ptr %i.bh, align 8, !tbaa !19
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = getelementptr inbounds nuw i8, ptr %.145, i64 88
  store double %i.bj, ptr %i.bk, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %.145, i64 96 ; 2 uses
  %i.bm = add nsw i32 %i.aw, 4                    ; 2 uses
  %i.bn = add nsw i32 %.046, 4
  %exitcond.not.3 = icmp eq i32 %i.bi, %i.af
  br i1 %exitcond.not.3, label %..loopexit_crit_edge, label %.lr.ph.new, !llvm.loop !48

..loopexit_crit_edge:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa60 = phi ptr [ %.lcssa60.unr, %.prol.loopexit ], [ %i.bl, %.lr.ph.new ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.bm, %.lr.ph.new ] ; 2 uses
  store i32 %.lcssa, ptr %1, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %..loopexit_crit_edge, %.lr.ph49
  %.promoted52 = phi i32 [ %.promoted, %.lr.ph49 ], [ %.lcssa, %..loopexit_crit_edge ], [ %.promoted, %bb.h ]
  %.2 = phi ptr [ %.03747, %.lr.ph49 ], [ %.lcssa60, %..loopexit_crit_edge ], [ %.03747, %bb.h ]
  %i.bo = add nuw i64 %.03548, 4                  ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.x
  br i1 %i.bp, label %.lr.ph49, label %._crit_edge, !llvm.loop !49
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @lab_gamut_quadtree(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call ptr @lab_gamut(ptr noundef %0, ptr noundef nonnull %i.a) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !20
  %i.d = tail call ptr @QuadTree_new_from_point_list(i32 noundef 3, i32 noundef %i.c, i32 noundef %1, ptr noundef nonnull %i.b) #18
  tail call void @free(ptr noundef nonnull %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

declare ptr @QuadTree_new_from_point_list(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define noundef ptr @color_blend_rgb2lab(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.rgb_struct, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = tail call ptr @color_palettes_get(ptr noundef %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %spec.select = select i1 %.not, ptr %0, ptr %i.d ; 2 uses
  %i.e = icmp slt i32 %1, 1
  br i1 %i.e, label %bb.o, label %.preheader137

.preheader137:                                    ; preds = %bb.a
  %i.f = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %spec.select, i32 noundef 44) #22 ; 2 uses
  %.not114138 = icmp eq ptr %i.f, null
  br i1 %.not114138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader137, %.lr.ph
  %i.g = phi ptr [ %i.j, %.lr.ph ], [ %i.f, %.preheader137 ]
  %.0103139 = phi i32 [ %i.i, %.lr.ph ], [ 1, %.preheader137 ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = add nuw nsw i32 %.0103139, 1             ; 2 uses
  %i.j = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef 44) #22 ; 2 uses
  %.not114 = icmp eq ptr %i.j, null
  br i1 %.not114, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.k = zext nneg i32 %i.i to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader137
  %.0103.lcssa = phi i64 [ 1, %.preheader137 ], [ %i.k, %._crit_edge.loopexit ] ; 2 uses
  %i.l = tail call noalias ptr @calloc(i64 noundef range(i64 -844424929738752, 844424930131969) %.0103.lcssa, i64 noundef 24) #20 ; 13 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %gv_calloc.exit

bb.b:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.o = mul nuw nsw i64 %.0103.lcssa, 24
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.5, i64 noundef %i.o) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %._crit_edge
  %i.q = getelementptr inbounds i8, ptr %spec.select, i64 -1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %gv_calloc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %gv_calloc.exit ] ; 3 uses
  %.1 = phi ptr [ %i.ac, %bb.d ], [ %i.q, %gv_calloc.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.u = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #18
  %.not115 = icmp eq i32 %i.u, 3
  br i1 %.not115, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.a, align 4, !tbaa !20
  %i.w = sitofp i32 %i.v to double
  store double %i.w, ptr %2, align 8, !tbaa !10
  %i.x = load i32, ptr %i.b, align 4, !tbaa !20
  %i.y = sitofp i32 %i.x to double
  store double %i.y, ptr %i.r, align 8, !tbaa !11
  %i.z = load i32, ptr %i.c, align 4, !tbaa !20
  %i.aa = sitofp i32 %i.z to double
  store double %i.aa, ptr %i.s, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv
  call void @RGB2LAB(ptr dead_on_unwind nonnull writable sret(%struct.lab_struct) align 8 %i.ab, ptr noundef nonnull byval(%struct.rgb_struct) align 8 %2)
  %i.ac = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 noundef 44) #22 ; 2 uses
  %.not116 = icmp eq ptr %i.ac, null
  br i1 %.not116, label %bb.e, label %bb.c, !llvm.loop !53

bb.e:                                             ; preds = %bb.c, %bb.d
  %.2105.in = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next, %bb.d ]
  %.2105 = trunc i64 %.2105.in to i32             ; 5 uses
  %i.ad = call i32 @llvm.umax.i32(i32 %.2105, i32 1)
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = call noalias ptr @calloc(i64 noundef range(i64 -844424929738752, 844424930131969) %i.ae, i64 noundef 8) #20 ; 16 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.f, label %gv_calloc.exit120

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ai = shl nuw nsw i64 %i.ae, 3
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.5, i64 noundef %i.ai) #19 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit120:                                ; preds = %bb.e
  %i.ak = add i32 %.2105, -1                      ; 5 uses
  %3 = icmp samesign ugt i32 %.2105, 1
  br i1 %3, label %.lr.ph141.preheader, label %._crit_edge145

.lr.ph141.preheader:                              ; preds = %gv_calloc.exit120
  %wide.trip.count = zext i32 %i.ak to i64        ; 5 uses
  %.sroa.0.0.copyload.pre = load double, ptr %i.l, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0.copyload.pre = load double, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0.copyload.pre = load double, ptr %.sroa.5.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %min.iters.check = icmp eq i32 %.2105, 2
  br i1 %min.iters.check, label %.lr.ph141.preheader199, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph141.preheader
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  %vector.recur.init = insertelement <2 x double> poison, double %.sroa.5.0.copyload.pre, i64 1
  %vector.recur.init192 = insertelement <2 x double> poison, double %.sroa.4.0.copyload.pre, i64 1
  %vector.recur.init194 = insertelement <2 x double> poison, double %.sroa.0.0.copyload.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x double> [ %vector.recur.init, %vector.ph ], [ %i.bg, %vector.body ]
  %vector.recur193 = phi <2 x double> [ %vector.recur.init192, %vector.ph ], [ %i.az, %vector.body ]
  %vector.recur195 = phi <2 x double> [ %vector.recur.init194, %vector.ph ], [ %i.as, %vector.body ]
  %i.al = or disjoint i64 %index, 1               ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load double, ptr %i.am, align 8
  %i.aq = load double, ptr %i.ao, align 8         ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0 ; 2 uses
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1 ; 2 uses
  %i.at = shufflevector <2 x double> %vector.recur195, <2 x double> %i.ar, <2 x i32> <i32 1, i32 2>
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.aw = load double, ptr %i.au, align 8
  %i.ax = load double, ptr %i.av, align 8         ; 2 uses
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0 ; 2 uses
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1 ; 2 uses
  %i.ba = shufflevector <2 x double> %vector.recur193, <2 x double> %i.ay, <2 x i32> <i32 1, i32 2>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.bd = load double, ptr %i.bb, align 8
  %i.be = load double, ptr %i.bc, align 8         ; 2 uses
  %i.bf = insertelement <2 x double> poison, double %i.bd, i64 0 ; 2 uses
  %i.bg = insertelement <2 x double> %i.bf, double %i.be, i64 1 ; 2 uses
  %i.bh = shufflevector <2 x double> %vector.recur, <2 x double> %i.bf, <2 x i32> <i32 1, i32 2>
  %i.bi = fsub <2 x double> %i.at, %i.as          ; 2 uses
  %i.bj = fsub <2 x double> %i.ba, %i.az          ; 2 uses
  %i.bk = fmul <2 x double> %i.bj, %i.bj
  %i.bl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bi, <2 x double> %i.bk)
  %i.bm = fsub <2 x double> %i.bh, %i.bg          ; 2 uses
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bm, <2 x double> %i.bl)
  %i.bo = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bn)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.al
  store <2 x double> %i.bo, ptr %i.bp, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph144.preheader, label %.lr.ph141.preheader199

.lr.ph141.preheader199:                           ; preds = %.lr.ph141.preheader, %middle.block
  %.sroa.5.0.copyload.ph = phi double [ %.sroa.5.0.copyload.pre, %.lr.ph141.preheader ], [ %i.be, %middle.block ]
  %.sroa.4.0.copyload.ph = phi double [ %.sroa.4.0.copyload.pre, %.lr.ph141.preheader ], [ %i.ax, %middle.block ]
  %.sroa.0.0.copyload.ph = phi double [ %.sroa.0.0.copyload.pre, %.lr.ph141.preheader ], [ %i.aq, %middle.block ]
  %indvars.iv159.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph141

.lr.ph144.preheader:                              ; preds = %.lr.ph141, %middle.block
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.br = add i32 %.2105, -2
  %i.bs = icmp ult i32 %i.br, 3
  br i1 %i.bs, label %.lr.ph144.epil.preheader, label %.lr.ph144.preheader.new

.lr.ph144.preheader.new:                          ; preds = %.lr.ph144.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph144

.lr.ph141:                                        ; preds = %.lr.ph141.preheader199, %.lr.ph141
  %.sroa.5.0.copyload = phi double [ %.sroa.5126.0.copyload, %.lr.ph141 ], [ %.sroa.5.0.copyload.ph, %.lr.ph141.preheader199 ]
  %.sroa.4.0.copyload = phi double [ %.sroa.4125.0.copyload, %.lr.ph141 ], [ %.sroa.4.0.copyload.ph, %.lr.ph141.preheader199 ]
  %.sroa.0.0.copyload = phi double [ %.sroa.0124.0.copyload, %.lr.ph141 ], [ %.sroa.0.0.copyload.ph, %.lr.ph141.preheader199 ]
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.lr.ph141 ], [ %indvars.iv159.ph, %.lr.ph141.preheader199 ]
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 4 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv.next160 ; 3 uses
  %.sroa.0124.0.copyload = load double, ptr %i.bt, align 8 ; 2 uses
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.4125.0.copyload = load double, ptr %.sroa.4125.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.5126.0.copyload = load double, ptr %.sroa.5126.0..sroa_idx, align 8 ; 2 uses
  %i.bu = fsub double %.sroa.0.0.copyload, %.sroa.0124.0.copyload ; 2 uses
  %i.bv = fsub double %.sroa.4.0.copyload, %.sroa.4125.0.copyload ; 2 uses
  %i.bw = fmul double %i.bv, %i.bv
  %i.bx = call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.bw)
  %i.by = fsub double %.sroa.5.0.copyload, %.sroa.5126.0.copyload ; 2 uses
  %i.bz = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.bx)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.bz)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next160
  store double %sqrt.i, ptr %i.ca, align 8, !tbaa !19
  %exitcond.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph144.preheader, label %.lr.ph141, !llvm.loop !55

.lr.ph144:                                        ; preds = %.lr.ph144, %.lr.ph144.preheader.new
  %i.cb = phi double [ 0.000000e+00, %.lr.ph144.preheader.new ], [ %i.cq, %.lr.ph144 ]
  %indvars.iv163 = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %indvars.iv.next164.3, %.lr.ph144 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %niter.next.3, %.lr.ph144 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv163
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = fadd double %i.cb, %i.ce                ; 2 uses
  store double %i.cf, ptr %i.cd, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv163
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !19
  %i.cj = fadd double %i.cf, %i.ci                ; 2 uses
  store double %i.cj, ptr %i.ch, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv163
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !19
  %i.cn = fadd double %i.cj, %i.cm                ; 2 uses
  store double %i.cn, ptr %i.cl, align 8, !tbaa !19
  %indvars.iv.next164.3 = add nuw nsw i64 %indvars.iv163, 4 ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next164.3 ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !19
  %i.cq = fadd double %i.cn, %i.cp                ; 3 uses
  store double %i.cq, ptr %i.co, align 8, !tbaa !19
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge145.loopexit.unr-lcssa, label %.lr.ph144, !llvm.loop !56

._crit_edge145.loopexit.unr-lcssa:                ; preds = %.lr.ph144
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge145, label %.lr.ph144.epil.preheader

.lr.ph144.epil.preheader:                         ; preds = %._crit_edge145.loopexit.unr-lcssa, %.lr.ph144.preheader
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph144.preheader ], [ %i.cq, %._crit_edge145.loopexit.unr-lcssa ]
  %indvars.iv163.epil.init = phi i64 [ 0, %.lr.ph144.preheader ], [ %indvars.iv.next164.3, %._crit_edge145.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph144.epil

.lr.ph144.epil:                                   ; preds = %.lr.ph144.epil, %.lr.ph144.epil.preheader
  %i.cr = phi double [ %.epil.init, %.lr.ph144.epil.preheader ], [ %i.cu, %.lr.ph144.epil ]
  %indvars.iv163.epil = phi i64 [ %indvars.iv163.epil.init, %.lr.ph144.epil.preheader ], [ %indvars.iv.next164.epil, %.lr.ph144.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph144.epil.preheader ], [ %epil.iter.next, %.lr.ph144.epil ]
  %indvars.iv.next164.epil = add nuw nsw i64 %indvars.iv163.epil, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next164.epil ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !19
  %i.cu = fadd double %i.cr, %i.ct                ; 2 uses
  store double %i.cu, ptr %i.cs, align 8, !tbaa !19
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge145, label %.lr.ph144.epil, !llvm.loop !57

._crit_edge145:                                   ; preds = %._crit_edge145.loopexit.unr-lcssa, %.lr.ph144.epil, %gv_calloc.exit120
  %i.cv = load i8, ptr @Verbose, align 1, !tbaa !21
  %.not117 = icmp eq i8 %i.cv, 0
  br i1 %.not117, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge145
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.cx = sext i32 %i.ak to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !19
  %i.da = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.3, double noundef %i.cz) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge145, %bb.g
  %i.db = mul nuw nsw i32 %1, 3
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = call noalias ptr @calloc(i64 noundef range(i64 -844424929738752, 844424930131969) %i.dc, i64 noundef 8) #20 ; 5 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.i, label %gv_calloc.exit123

bb.i:                                             ; preds = %bb.h
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.dg = shl nuw nsw i64 %i.dc, 3
  %i.dh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.5, i64 noundef %i.dg) #19 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit123:                                ; preds = %bb.h
  %i.di = icmp eq i32 %1, 1
  br i1 %i.di, label %bb.j, label %bb.k

bb.j:                                             ; preds = %gv_calloc.exit123
  %i.dj = load <2 x double>, ptr %i.l, align 8, !tbaa !19
  store <2 x double> %i.dj, ptr %i.dd, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store double %i.dl, ptr %i.dm, align 8, !tbaa !19
  br label %.loopexit

bb.k:                                             ; preds = %gv_calloc.exit123
  %i.dn = sext i32 %i.ak to i64                   ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !19
  %i.dq = add nsw i32 %1, -1
  %i.dr = uitofp nneg i32 %i.dq to double
  %i.ds = fdiv double %i.dp, %i.dr                ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv169
  %i.du = load double, ptr %i.dt, align 8, !tbaa !19
  %i.dv = fcmp olt double %i.du, %i.ds
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  br i1 %i.dv, label %bb.l, label %.lr.ph157.preheader, !llvm.loop !58

.lr.ph157.preheader:                              ; preds = %bb.l
  %i.dw = trunc nuw nsw i64 %indvars.iv169 to i32
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.critedge
  %.0156 = phi ptr [ %i.eu, %.critedge ], [ %i.dd, %.lr.ph157.preheader ] ; 3 uses
  %.095155 = phi double [ %i.et, %.critedge ], [ 0.000000e+00, %.lr.ph157.preheader ] ; 2 uses
  %.197154 = phi i32 [ %.2.lcssa, %.critedge ], [ %i.dw, %.lr.ph157.preheader ] ; 4 uses
  %.098153 = phi i32 [ %.199, %.critedge ], [ 0, %.lr.ph157.preheader ] ; 2 uses
  %.2102152 = phi i32 [ %i.ff, %.critedge ], [ 0, %.lr.ph157.preheader ]
  %i.dx = sext i32 %.098153 to i64                ; 2 uses
  %i.dy = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.dx ; 2 uses
  %i.dz = sext i32 %.197154 to i64                ; 3 uses
  %i.ea = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dx
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !19 ; 2 uses
  %i.ed = fsub double %.095155, %i.ec
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dz
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !19 ; 2 uses
  %i.eg = fsub double %i.ef, %i.ec                ; 2 uses
  %i.eh = fcmp olt double %i.eg, 1.000000e-03
  %i.ei = select i1 %i.eh, double 1.000000e-03, double %i.eg
  %i.ej = fdiv double %i.ed, %i.ei                ; 2 uses
  %.sroa.5132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.sroa.5132.0.copyload = load double, ptr %.sroa.5132.0..sroa_idx, align 8
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.sroa.5129.0.copyload = load double, ptr %.sroa.5129.0..sroa_idx, align 8 ; 2 uses
  %i.ek = load <2 x double>, ptr %i.ea, align 8
  %i.el = load <2 x double>, ptr %i.dy, align 8   ; 2 uses
  %i.em = fsub <2 x double> %i.ek, %i.el
  %i.en = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.em, <2 x double> %i.el)
  store <2 x double> %i.ep, ptr %.0156, align 8, !tbaa !19
  %i.eq = fsub double %.sroa.5132.0.copyload, %.sroa.5129.0.copyload
  %i.er = call double @llvm.fmuladd.f64(double %i.ej, double %i.eq, double %.sroa.5129.0.copyload)
  %i.es = getelementptr inbounds nuw i8, ptr %.0156, i64 16
  store double %i.er, ptr %i.es, align 8, !tbaa !19
  %i.et = fadd double %i.ds, %.095155             ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0156, i64 24
  %i.ev = fcmp ogt double %i.et, %i.ef
  %.199 = select i1 %i.ev, i32 %.197154, i32 %.098153 ; 2 uses
  %i.ew = icmp slt i32 %.197154, %i.ak
  br i1 %i.ew, label %.lr.ph148, label %.critedge

.lr.ph148:                                        ; preds = %.lr.ph157
  %i.ex = sext i32 %.199 to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !19
  %i.fa = fadd double %i.ds, %i.ez
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph148, %bb.n
  %indvars.iv173 = phi i64 [ %i.dz, %.lr.ph148 ], [ %indvars.iv.next174, %bb.n ] ; 3 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv173
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !19
  %i.fd = fcmp olt double %i.fc, %i.fa
  br i1 %i.fd, label %bb.n, label %.critedge.loopexit.split.loop.exit

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next174 = add nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %i.dn
  br i1 %exitcond177.not, label %.critedge, label %bb.m, !llvm.loop !59

.critedge.loopexit.split.loop.exit:               ; preds = %bb.m
  %i.fe = trunc nsw i64 %indvars.iv173 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %.critedge.loopexit.split.loop.exit, %.lr.ph157
  %.2.lcssa = phi i32 [ %.197154, %.lr.ph157 ], [ %i.fe, %.critedge.loopexit.split.loop.exit ], [ %i.ak, %bb.n ]
  %i.ff = add nuw nsw i32 %.2102152, 1            ; 2 uses
  %exitcond178.not = icmp eq i32 %i.ff, %1
  br i1 %exitcond178.not, label %.loopexit, label %.lr.ph157, !llvm.loop !60

.loopexit:                                        ; preds = %.critedge, %bb.j
  call void @free(ptr noundef nonnull %i.af) #18
  call void @free(ptr noundef %i.l) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  %.0106 = phi ptr [ %i.dd, %.loopexit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0106
}

declare ptr @color_palettes_get(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #13 {
bb.a:
  tail call void @exit(i32 noundef 1) #23
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { noreturn }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"rgb_struct", !8, i64 0, !8, i64 8, !8, i64 16}
!10 = !{!9, !8, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!9, !8, i64 16}
!13 = !{!"xyz_struct", !8, i64 0, !8, i64 8, !8, i64 16}
!14 = !{!13, !8, i64 16}
!15 = !{!"lab_struct", !8, i64 0, !8, i64 8, !8, i64 16}
!16 = !{!15, !8, i64 0}
!17 = !{!15, !8, i64 8}
!18 = !{!15, !8, i64 16}
!19 = !{!8, !8, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!4, !4, i64 0}
!22 = !{!"any pointer", !4, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!13, !8, i64 0}
!28 = !{!13, !8, i64 8}
!29 = distinct !{!29, !"color_xyz_init"}
!30 = distinct !{!30, !29, !"color_xyz_init: argument 0"}
!31 = !{!30}
!32 = distinct !{!32, !"RGB2XYZ"}
!33 = distinct !{!33, !32, !"RGB2XYZ: argument 0"}
!34 = distinct !{!34, !"color_lab_init"}
!35 = distinct !{!35, !34, !"color_lab_init: argument 0"}
!36 = !{!33}
!37 = !{!35}
!38 = distinct !{!38, !"XYZ2RGB"}
!39 = distinct !{!39, !38, !"XYZ2RGB: argument 0"}
!40 = distinct !{!40, !"color_rgb_init"}
!41 = distinct !{!41, !40, !"color_rgb_init: argument 0"}
!42 = !{!39}
!43 = !{!41, !39}
!44 = distinct !{!44, !"color_rgb_init"}
!45 = distinct !{!45, !44, !"color_rgb_init: argument 0"}
!46 = !{!45}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !26}
!49 = distinct !{!49, !26}
!50 = !{!"long", !4, i64 0}
!51 = !{!50, !50, i64 0}
!52 = distinct !{!52, !26}
!53 = distinct !{!53, !26}
!54 = distinct !{!54, !26, !61, !62}
!55 = distinct !{!55, !26, !62, !61}
!56 = distinct !{!56, !26}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !26}
!59 = distinct !{!59, !26}
!60 = distinct !{!60, !26}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
