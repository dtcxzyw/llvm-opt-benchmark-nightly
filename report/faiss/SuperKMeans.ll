Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/SuperKMeans?download=true
inline.NumInlined: 702
inline.NumDeleted: 294
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5faiss29super_kmeans_assign_iterationEPKfiiS1_iPfPiiS1_RKNS_21SuperKMeansParametersEPlS7_PNS_24SuperKMeansAssignScratchE:bb.a
_ZNSt6vectorIfSaIfEED2Ev.exit2.i:                 ; preds = %bb.cc, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.kz = load ptr, ptr %.sroa.gep150, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  %i.la = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !49
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.kz to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.le) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i

_ZNSt6vectorIfSaIfEED2Ev.exit4.i:                 ; preds = %bb.cd, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  %i.lf = load ptr, ptr %.sroa.gep, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i5.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit6.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4.i
  %i.lg = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !49
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lf to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.lk) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit6.i

_ZNSt6vectorIfSaIfEED2Ev.exit6.i:                 ; preds = %bb.ce, %_ZNSt6vectorIfSaIfEED2Ev.exit4.i
  %i.ll = load ptr, ptr %19, align 8, !tbaa !48   ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i7.i, label %_ZN5faiss24SuperKMeansAssignScratchD2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit6.i
  %i.lm = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !49
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.ll to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lq) #20
  br label %_ZN5faiss24SuperKMeansAssignScratchD2Ev.exit

_ZN5faiss24SuperKMeansAssignScratchD2Ev.exit:     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit6.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %i.lr = load ptr, ptr %i.en, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i.i134, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.cg

bb.cg:                                            ; preds = %_ZN5faiss24SuperKMeansAssignScratchD2Ev.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !88
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.lr to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lw) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.cg, %_ZN5faiss24SuperKMeansAssignScratchD2Ev.exit
  %i.lx = load ptr, ptr %18, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i1.i135 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i1.i135, label %_ZN5faiss12_GLOBAL__N_116LocalBlockLayoutD2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ly = load ptr, ptr %i.dm, align 8, !tbaa !88
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lx to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.mb) #20
  br label %_ZN5faiss12_GLOBAL__N_116LocalBlockLayoutD2Ev.exit

_ZN5faiss12_GLOBAL__N_116LocalBlockLayoutD2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  ret void

bb.ci:                                            ; preds = %bb.bu, %bb.bw, %bb.bt, %bb.bf
  %.pn91.pn.pn.pn = phi { ptr, i32 } [ %i.ha, %bb.bf ], [ %i.ja, %bb.bt ], [ %i.km, %bb.bw ], [ %i.jb, %bb.bu ]
  call void @_ZN5faiss24SuperKMeansAssignScratchD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call fastcc void @_ZN5faiss12_GLOBAL__N_116LocalBlockLayoutD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %common.resume

bb.cj:                                            ; preds = %bb.aq, %bb.ah, %bb.y, %bb.p, %bb.g
  unreachable
}

declare void @_ZN5faiss6detail17compute_centroidsEmmmmPKhPKNS_5IndexEPKlPKfPfSA_(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5faiss6detail14split_clustersEmmmmPfS1_(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lroundf(float noundef) local_unnamed_addr #10

declare void @_ZN5faiss6detail6pdxifyEPKfiiiPf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5faiss6detail21compute_partial_normsEPKfiiiPf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @sgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5faiss12_GLOBAL__N_116LocalBlockLayoutD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @"_ZZN5faiss29super_kmeans_assign_iterationEPKfiiS1_iPfPiiS1_RKNS_21SuperKMeansParametersEPlS7_PNS_24SuperKMeansAssignScratchEENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined"(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %19, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %20, i64 noundef %21) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !83     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %21 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.j, ptr %i.b, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i64 0, ptr %i.e, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i64 0, ptr %i.f, align 8, !tbaa !101
  %i.k = load i32, ptr %0, align 4, !tbaa !83     ; 6 uses
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @2, i32 %i.k, i32 1073741859, i32 0, i32 %i.j, i32 1, i32 %.sroa.0.0.extract.trunc)
  %i.l = call i32 @__kmpc_dispatch_next_4(ptr nonnull @2, i32 %i.k, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not117 = icmp eq i32 %i.l, 0
  br i1 %.not117, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 24
  br label %bb.c

.loopexit:                                        ; preds = %._crit_edge108, %bb.c
  %.promoted101138 = phi i64 [ %.promoted101137, %bb.c ], [ %.lcssa102, %._crit_edge108 ]
  %.promoted135 = phi i64 [ %.promoted134, %bb.c ], [ %.lcssa100, %._crit_edge108 ]
  %i.n = call i32 @__kmpc_dispatch_next_4(ptr nonnull @2, i32 %i.k, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge120, label %bb.c

bb.c:                                             ; preds = %.lr.ph119, %.loopexit
  %.promoted101137 = phi i64 [ 0, %.lr.ph119 ], [ %.promoted101138, %.loopexit ] ; 2 uses
  %.promoted134 = phi i64 [ 0, %.lr.ph119 ], [ %.promoted135, %.loopexit ] ; 2 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !83   ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !83, !llvm.access.group !138
  %.not91113 = icmp sgt i32 %i.o, %i.p
  br i1 %.not91113, label %.loopexit, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 8, !tbaa !48, !llvm.access.group !138
  %i.r = load ptr, ptr %5, align 8, !tbaa !68, !llvm.access.group !138
  %i.s = load ptr, ptr %6, align 8, !tbaa !122, !llvm.access.group !138
  %i.t = load ptr, ptr %7, align 8, !tbaa !68, !llvm.access.group !138
  %i.u = sext i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph116, %._crit_edge108
  %.promoted101 = phi i64 [ %.promoted101137, %.lr.ph116 ], [ %.lcssa102, %._crit_edge108 ] ; 2 uses
  %.promoted = phi i64 [ %.promoted134, %.lr.ph116 ], [ %.lcssa100, %._crit_edge108 ] ; 2 uses
  %indvars.iv131 = phi i64 [ %i.u, %.lr.ph116 ], [ %indvars.iv.next132, %._crit_edge108 ] ; 4 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !83, !llvm.access.group !138
  %i.w = sext i32 %i.v to i64
  %i.x = add nsw i64 %indvars.iv131, %i.w         ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !60, !llvm.access.group !138
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.x ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !60, !llvm.access.group !138 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !83, !llvm.access.group !138 ; 2 uses
  %i.ae = load i32, ptr %8, align 4, !tbaa !83, !llvm.access.group !138
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.x, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ag
  %i.ai = load i32, ptr %9, align 4, !tbaa !83, !llvm.access.group !138 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.d
  %i.ak = load i32, ptr %12, align 4, !tbaa !83, !llvm.access.group !138
  %i.al = load ptr, ptr %11, align 8, !tbaa !48, !llvm.access.group !138
  %i.am = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.an = mul nsw i64 %indvars.iv131, %i.am
  %i.ao = load ptr, ptr %13, align 8, !tbaa !48, !llvm.access.group !138
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load ptr, ptr %14, align 8, !tbaa !68, !llvm.access.group !138 ; 2 uses
  %i.ar = load i32, ptr %15, align 4, !tbaa !83, !llvm.access.group !138
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !60, !llvm.access.group !138
  %i.av = sext i32 %i.ak to i64
  br label %bb.e

._crit_edge108.loopexit:                          ; preds = %._crit_edge.thread
  %i.aw = add i64 %.promoted, 1
  %i.ax = add nsw i32 %i.ai, -1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = add i64 %i.aw, %i.ay
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.d
  %.lcssa102 = phi i64 [ %.promoted101, %bb.d ], [ %i.eb, %._crit_edge108.loopexit ] ; 3 uses
  %.lcssa100 = phi i64 [ %.promoted, %bb.d ], [ %i.az, %._crit_edge108.loopexit ] ; 3 uses
  %.086.lcssa = phi float [ %i.ab, %bb.d ], [ %.288, %._crit_edge108.loopexit ]
  %.083.lcssa = phi i32 [ %i.ad, %bb.d ], [ %.285, %._crit_edge108.loopexit ]
  store i64 %.lcssa100, ptr %i.e, align 8
  store i64 %.lcssa102, ptr %i.f, align 8
  store float %.086.lcssa, ptr %i.aa, align 4, !tbaa !60, !llvm.access.group !138
  store i32 %.083.lcssa, ptr %i.ac, align 4, !tbaa !83, !llvm.access.group !138
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, 1
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !83, !llvm.access.group !138
  %i.bb = sext i32 %i.ba to i64
  %.not91.not = icmp slt i64 %indvars.iv131, %i.bb
  br i1 %.not91.not, label %bb.d, label %.loopexit, !llvm.loop !139

bb.e:                                             ; preds = %.lr.ph107, %._crit_edge.thread
  %indvars.iv126 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next127, %._crit_edge.thread ] ; 3 uses
  %.083104 = phi i32 [ %i.ad, %.lr.ph107 ], [ %.285, %._crit_edge.thread ] ; 3 uses
  %.086103 = phi float [ %i.ab, %.lr.ph107 ], [ %.288, %._crit_edge.thread ] ; 6 uses
  %i.bc = phi i64 [ %.promoted101, %.lr.ph107 ], [ %i.eb, %._crit_edge.thread ] ; 4 uses
  %i.bd = add nsw i64 %indvars.iv126, %i.av       ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !60, !llvm.access.group !138
  %i.bg = fadd float %i.z, %i.bf
  %i.bh = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv126
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !60, !llvm.access.group !138
  %i.bj = call float @llvm.fmuladd.f32(float %i.bi, float -2.000000e+00, float %i.bg) ; 2 uses
  %i.bk = fcmp olt float %i.bj, 0.000000e+00
  %.080 = select i1 %i.bk, float 0.000000e+00, float %i.bj ; 2 uses
  %i.bl = fmul float %.086103, %i.au
  %i.bm = fcmp ogt float %.080, %i.bl
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = add nsw i64 %i.bc, 1
  br label %._crit_edge.thread

bb.g:                                             ; preds = %bb.e
  %i.bo = fpext float %.080 to double             ; 2 uses
  %i.bp = load i32, ptr %17, align 4, !tbaa !83, !llvm.access.group !138 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %.pre = fpext float %.086103 to double
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.br = load ptr, ptr %18, align 8, !tbaa !89, !llvm.access.group !138
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !89, !llvm.access.group !138
  %i.bt = load ptr, ptr %19, align 8, !tbaa !48, !llvm.access.group !138
  %i.bu = fpext float %.086103 to double          ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bp to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.07695 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.i ] ; 2 uses
  %.07894 = phi double [ %i.bo, %.lr.ph ], [ %i.dn, %bb.i ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !83, !llvm.access.group !138 ; 5 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !83, !llvm.access.group !138 ; 2 uses
  %i.bz = sub nsw i32 %i.by, %i.bw
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ca ; 5 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.07695
  %i.cd = sext i32 %i.bw to i64                   ; 2 uses
  %i.ce = mul nsw i64 %i.bd, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ce ; 5 uses
  %i.cg = icmp sgt i32 %i.bw, 0
  br i1 %i.cg, label %.lr.ph.preheader.i, label %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %i.bw to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ch = icmp ult i32 %i.bw, 4
  br i1 %i.ch, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %.012.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.df, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !60, !llvm.access.group !138
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !60, !llvm.access.group !138
  %i.cm = fsub float %i.cj, %i.cl                 ; 2 uses
  %i.cn = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %.012.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !60, !llvm.access.group !138
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !60, !llvm.access.group !138
  %i.cs = fsub float %i.cp, %i.cr                 ; 2 uses
  %i.ct = call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cn)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next.i.1
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !60, !llvm.access.group !138
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.1
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !60, !llvm.access.group !138
  %i.cy = fsub float %i.cv, %i.cx                 ; 2 uses
  %i.cz = call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.ct)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next.i.2
  %i.db = load float, ptr %i.da, align 4, !tbaa !60, !llvm.access.group !138
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.2
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !60, !llvm.access.group !138
  %i.de = fsub float %i.db, %i.dd                 ; 2 uses
  %i.df = call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.cz) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !141

_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit.unr-lcssa ]
  %.012.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.df, %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %.012.i.epil = phi float [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.dl, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i.epil
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !60, !llvm.access.group !138
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.epil
  %i.dj = load float, ptr %i.di, align 4, !tbaa !60, !llvm.access.group !138
  %i.dk = fsub float %i.dh, %i.dj                 ; 2 uses
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %.012.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !142

_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit: ; preds = %.lr.ph.i.epil, %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit.unr-lcssa
  %.lcssa = phi float [ %i.df, %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph.i.epil ]
  %i.dm = fpext float %.lcssa to double
  br label %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit

_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit: ; preds = %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit, %bb.h
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.h ], [ %i.dm, %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit.loopexit ]
  %i.dn = fadd double %.07894, %.0.lcssa.i        ; 3 uses
  %i.do = sext i32 %i.by to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !60, !llvm.access.group !138
  %i.dr = fpext float %i.dq to double
  %i.ds = fmul double %i.bu, %i.dr
  %i.dt = fcmp ule double %i.dn, %i.ds
  br i1 %i.dt, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit
  %i.du = load i32, ptr %20, align 4, !tbaa !83, !llvm.access.group !138
  %i.dv = sext i32 %i.du to i64
  %i.dw = mul nsw i64 %i.dv, %i.cd
  %i.dx = add i64 %i.dw, %.07695
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.i, %.._crit_edge_crit_edge
  %.pre-phi = phi double [ %.pre, %.._crit_edge_crit_edge ], [ %i.bu, %bb.i ]
  %.179 = phi double [ %i.bo, %.._crit_edge_crit_edge ], [ %i.dn, %bb.i ] ; 2 uses
  %i.dy = fcmp olt double %.179, %.pre-phi
  br i1 %i.dy, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %._crit_edge
  %i.dz = fptrunc double %.179 to float
  %i.ea = trunc nsw i64 %i.bd to i32
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit, %._crit_edge, %bb.j, %bb.f
  %i.eb = phi i64 [ %i.bn, %bb.f ], [ %i.bc, %bb.j ], [ %i.bc, %._crit_edge ], [ %i.bc, %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit ] ; 2 uses
  %.288 = phi float [ %.086103, %bb.f ], [ %i.dz, %bb.j ], [ %.086103, %._crit_edge ], [ %.086103, %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit ] ; 2 uses
  %.285 = phi i32 [ %.083104, %bb.f ], [ %i.ea, %bb.j ], [ %.083104, %._crit_edge ], [ %.083104, %_ZN5faiss6detail8block_l2ILNS_9SIMDLevelE0EEEfPKfS4_i.exit ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %i.am
  br i1 %exitcond130.not, label %._crit_edge108.loopexit, label %bb.e, !llvm.loop !144

._crit_edge120:                                   ; preds = %.loopexit, %bb.b
  call void @__kmpc_dispatch_deinit(ptr nonnull @2, i32 %i.k)
  store ptr %i.e, ptr %i.g, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.ec, align 8
  %i.ed = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.k, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @"_ZZN5faiss29super_kmeans_assign_iterationEPKfiiS1_iPfPiiS1_RKNS_21SuperKMeansParametersEPlS7_PNS_24SuperKMeansAssignScratchEENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined.omp.reduction.reduction_func", ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.ed, label %bb.m [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %._crit_edge120
  %i.ee = load i64, ptr %10, align 8, !tbaa !101
  %i.ef = load i64, ptr %i.e, align 8, !tbaa !101
  %i.eg = add nsw i64 %i.ef, %i.ee
  store i64 %i.eg, ptr %10, align 8, !tbaa !101
  %i.eh = load i64, ptr %16, align 8, !tbaa !101
  %i.ei = load i64, ptr %i.f, align 8, !tbaa !101
  %i.ej = add nsw i64 %i.ei, %i.eh
  store i64 %i.ej, ptr %16, align 8, !tbaa !101
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge120
  %i.ek = load i64, ptr %i.e, align 8, !tbaa !101
  %i.el = atomicrmw add ptr %10, i64 %i.ek monotonic, align 8 ; 0 uses
  %i.em = load i64, ptr %i.f, align 8, !tbaa !101
  %i.en = atomicrmw add ptr %16, i64 %i.em monotonic, align 8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_4(ptr, i32, i32, i32, i32, i32, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_4(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @__kmpc_dispatch_deinit(ptr, i32) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZZN5faiss29super_kmeans_assign_iterationEPKfiiS1_iPfPiiS1_RKNS_21SuperKMeansParametersEPlS7_PNS_24SuperKMeansAssignScratchEENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined.omp.reduction.reduction_func"(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !101
  %i.h = load i64, ptr %i.a, align 8, !tbaa !101
  %i.i = add nsw i64 %i.h, %i.g
  store i64 %i.i, ptr %i.b, align 8, !tbaa !101
  %i.j = load i64, ptr %i.f, align 8, !tbaa !101
  %i.k = load i64, ptr %i.d, align 8, !tbaa !101
  %i.l = add nsw i64 %i.k, %i.j
  store i64 %i.l, ptr %i.f, align 8, !tbaa !101
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { convergent nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { cold nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 96}
!10 = !{!"_ZTSN5faiss11SuperKMeansE", !11, i64 0, !6, i64 96, !6, i64 100, !19, i64 104, !25, i64 128, !19, i64 152}
!11 = !{!"_ZTSN5faiss21SuperKMeansParametersE", !12, i64 0, !18, i64 56, !6, i64 60, !18, i64 64, !18, i64 68, !18, i64 72, !18, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92}
!12 = !{!"_ZTSN5faiss20ClusteringParametersE", !6, i64 0, !6, i64 4, !13, i64 8, !13, i64 9, !13, i64 10, !13, i64 11, !13, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !14, i64 32, !13, i64 40, !13, i64 41, !15, i64 42, !16, i64 44, !17, i64 48}
!13 = !{!"bool", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !7, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!"double", !7, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = !{!"_ZTSSt6vectorIfSaIfEE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 float", !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = !{!"_ZTSSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIN5faiss24ClusteringIterationStatsESaIS1_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN5faiss24ClusteringIterationStatsESaIS1_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN5faiss24ClusteringIterationStatsESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSN5faiss24ClusteringIterationStatsE", !24, i64 0}
!30 = !{!10, !6, i64 100}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !24, i64 0}
!34 = !{!35, !14, i64 8}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !14, i64 8, !7, i64 16}
!36 = !{!7, !7, i64 0}
!37 = !{!35, !33, i64 0}
!38 = !{!10, !18, i64 56}
!39 = !{!10, !18, i64 76}
!40 = !{!10, !6, i64 80}
!41 = !{!10, !6, i64 60}
!42 = !{!10, !6, i64 84}
!43 = !{!10, !6, i64 88}
!44 = !{!10, !18, i64 68}
!45 = !{!10, !18, i64 72}
!46 = !{!10, !18, i64 64}
!47 = !{!10, !6, i64 92}
!48 = !{!22, !23, i64 0}
!49 = !{!22, !23, i64 16}
!50 = !{!28, !29, i64 0}
!51 = !{!28, !29, i64 16}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !8, i64 0}
!54 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!55 = !{!12, !13, i64 40}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!18, !18, i64 0}
!61 = !{!12, !13, i64 8}
!62 = !{!12, !6, i64 16}
!63 = !{!12, !6, i64 20}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN5faiss12_GLOBAL__N_117setup_train_stateERNS0_10TrainStateERSt6vectorIlSaIlEERS3_IfSaIfEERKNS_21SuperKMeansParametersEiilPKf: argument 0"}
!66 = distinct !{!66, !"_ZN5faiss12_GLOBAL__N_117setup_train_stateERNS0_10TrainStateERSt6vectorIlSaIlEERS3_IfSaIfEERKNS_21SuperKMeansParametersEiilPKf"}
!67 = !{!33, !33, i64 0}
!68 = !{!23, !23, i64 0}
end_hunk_0
