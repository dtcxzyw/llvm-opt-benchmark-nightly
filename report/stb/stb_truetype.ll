Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__rasterize_sorted_edges:bb.a
  %i.ab = fadd float %i.aa, 1.000000e+00          ; 2 uses
  %i.ac = sext i32 %i.z to i64
  %i.ad = shl nsw i64 %i.ac, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.080, i8 0, i64 %i.ad, i1 false)
  %i.ae = add nsw i32 %i.z, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.ag, i1 false)
  %.not90102 = icmp eq ptr %.0., null
  br i1 %.not90102, label %.preheader101, label %.lr.ph

.preheader101:                                    ; preds = %bb.f, %bb.d
  %.sroa.7.1.lcssa = phi ptr [ %.sroa.7.0122, %bb.d ], [ %.sroa.7.2, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0126, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !93 ; 2 uses
  %i.aj = fcmp ugt float %i.ai, %i.ab
  br i1 %i.aj, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.preheader101
  %i.ak = icmp eq i32 %.076124, 0
  %or.cond = and i1 %i.v, %i.ak
  br label %bb.g

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %i.al = phi ptr [ %i.ar, %bb.f ], [ %.0., %bb.d ] ; 6 uses
  %.078104 = phi ptr [ %.179, %bb.f ], [ %i.a, %bb.d ] ; 2 uses
  %.sroa.7.1103 = phi ptr [ %.sroa.7.2, %bb.f ], [ %.sroa.7.0122, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.an = load float, ptr %i.am, align 4, !tbaa !102
  %i.ao = fcmp ugt float %i.an, %i.aa
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !103
  store ptr %i.ap, ptr %.078104, align 8, !tbaa !195
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !100
  store ptr %.sroa.7.1103, ptr %i.al, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.7.2 = phi ptr [ %.sroa.7.1103, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %.179 = phi ptr [ %i.al, %.lr.ph ], [ %.078104, %bb.e ] ; 2 uses
  %i.ar = load ptr, ptr %.179, align 8, !tbaa !195 ; 2 uses
  %.not90 = icmp eq ptr %i.ar, null
  br i1 %.not90, label %.preheader101, label %.lr.ph, !llvm.loop !190

bb.g:                                             ; preds = %.lr.ph109, %stbtt__new_active.exit.thread
  %i.as = phi float [ %i.ai, %.lr.ph109 ], [ %i.ce, %stbtt__new_active.exit.thread ] ; 4 uses
  %.1108 = phi ptr [ %.0126, %.lr.ph109 ], [ %i.cc, %stbtt__new_active.exit.thread ] ; 6 uses
  %.sroa.11.1107 = phi i32 [ %.sroa.11.0123, %.lr.ph109 ], [ %.sroa.11.2, %stbtt__new_active.exit.thread ] ; 4 uses
  %.sroa.7.3106 = phi ptr [ %.sroa.7.1.lcssa, %.lr.ph109 ], [ %.sroa.7.4, %stbtt__new_active.exit.thread ] ; 4 uses
  %.sroa.0.1105 = phi ptr [ %.sroa.0.0121, %.lr.ph109 ], [ %.sroa.0.2, %stbtt__new_active.exit.thread ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1108, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !92 ; 4 uses
  %i.av = fcmp une float %i.as, %i.au
  br i1 %i.av, label %bb.h, label %stbtt__new_active.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %.sroa.7.3106, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %.sroa.7.3106, align 8, !tbaa !61
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ax = icmp eq i32 %.sroa.11.1107, 0
  br i1 %i.ax, label %bb.k, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.j
  %i.ay = add nsw i32 %.sroa.11.1107, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #30 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %stbtt__new_active.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k
  store ptr %.sroa.0.1105, ptr %i.az, align 8, !tbaa !88
  br label %bb.l

bb.l:                                             ; preds = %.thread.i.i, %._crit_edge.i.i
  %.sroa.0.4 = phi ptr [ %i.az, %.thread.i.i ], [ %.sroa.0.1105, %._crit_edge.i.i ] ; 2 uses
  %i.bb = phi i32 [ 799, %.thread.i.i ], [ %i.ay, %._crit_edge.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %bb.l ], [ %.sroa.0.1105, %bb.i ]
  %.sroa.7.5 = phi ptr [ null, %bb.l ], [ %i.aw, %bb.i ]
  %.sroa.11.3 = phi i32 [ %i.bb, %bb.l ], [ %.sroa.11.1107, %bb.i ]
  %.1.i.ph.i = phi ptr [ %i.bf, %bb.l ], [ %.sroa.7.3106, %bb.i ] ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1108, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !90
  %i.bi = load float, ptr %.1108, align 4, !tbaa !91 ; 2 uses
  %i.bj = fsub float %i.bh, %i.bi
  %i.bk = fsub float %i.au, %i.as
  %i.bl = fdiv float %i.bj, %i.bk                 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 12
  store float %i.bl, ptr %i.bm, align 4, !tbaa !96
  %i.bn = fcmp une float %i.bl, 0.000000e+00
  %i.bo = fdiv float 1.000000e+00, %i.bl
  %i.bp = select i1 %i.bn, float %i.bo, float 0.000000e+00
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 16
  store float %i.bp, ptr %i.bq, align 8, !tbaa !97
  %i.br = fsub float %i.aa, %i.as
  %i.bs = call float @llvm.fmuladd.f32(float %i.bl, float %i.br, float %i.bi)
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 8
  %i.bu = fsub float %i.bs, %i.u
  store float %i.bu, ptr %i.bt, align 8, !tbaa !98
  %i.bv = getelementptr inbounds nuw i8, ptr %.1108, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !99
  %.not28.i = icmp eq i32 %i.bw, 0
  %i.bx = select i1 %.not28.i, float -1.000000e+00, float 1.000000e+00
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 20
  store float %i.bx, ptr %i.by, align 4, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 24
  store float %i.as, ptr %i.bz, align 8, !tbaa !101
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 28 ; 2 uses
  store float %i.au, ptr %i.ca, align 4, !tbaa !102
  store ptr null, ptr %.1.i.ph.i, align 8, !tbaa !103
  %i.cb = fcmp olt float %i.au, %i.aa
  %or.cond147 = select i1 %or.cond, i1 %i.cb, i1 false
  br i1 %or.cond147, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.aa, ptr %i.ca, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0..0..0..0. = load ptr, ptr %i.a, align 8, !tbaa !195
  store ptr %.0..0..0..0., ptr %.1.i.ph.i, align 8, !tbaa !103
  store ptr %.1.i.ph.i, ptr %i.a, align 8, !tbaa !195
  br label %stbtt__new_active.exit.thread

stbtt__new_active.exit.thread:                    ; preds = %bb.k, %bb.o, %bb.g
  %.sroa.0.2 = phi ptr [ %.sroa.0.1105, %bb.g ], [ %.sroa.0.3, %bb.o ], [ %.sroa.0.1105, %bb.k ] ; 2 uses
  %.sroa.7.4 = phi ptr [ %.sroa.7.3106, %bb.g ], [ %.sroa.7.5, %bb.o ], [ null, %bb.k ] ; 2 uses
  %.sroa.11.2 = phi i32 [ %.sroa.11.1107, %bb.g ], [ %.sroa.11.3, %bb.o ], [ 0, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1108, i64 20 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1108, i64 24
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !93 ; 2 uses
  %i.cf = fcmp ugt float %i.ce, %i.ab
  br i1 %i.cf, label %._crit_edge, label %bb.g, !llvm.loop !191

._crit_edge:                                      ; preds = %stbtt__new_active.exit.thread, %.preheader101
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0121, %.preheader101 ], [ %.sroa.0.2, %stbtt__new_active.exit.thread ] ; 3 uses
  %.sroa.7.3.lcssa = phi ptr [ %.sroa.7.1.lcssa, %.preheader101 ], [ %.sroa.7.4, %stbtt__new_active.exit.thread ]
  %.sroa.11.1.lcssa = phi i32 [ %.sroa.11.0123, %.preheader101 ], [ %.sroa.11.2, %stbtt__new_active.exit.thread ]
  %.1.lcssa = phi ptr [ %.0126, %.preheader101 ], [ %i.cc, %stbtt__new_active.exit.thread ]
  %.0..0..0..0.82 = load ptr, ptr %i.a, align 8, !tbaa !195 ; 4 uses
  %.not91 = icmp eq ptr %.0..0..0..0.82, null     ; 2 uses
  br i1 %.not91, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @stbtt__fill_active_edges_new(ptr noundef %.080, ptr noundef nonnull %i.w, i32 noundef %i.z, ptr noundef nonnull %.0..0..0..0.82, float noundef %i.aa)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %i.cg = icmp sgt i32 %i.z, 0
  br i1 %i.cg, label %.lr.ph117, label %.preheader

.preheader:                                       ; preds = %.lr.ph117, %bb.q
  %i.ch = phi i32 [ %i.z, %bb.q ], [ %i.cz, %.lr.ph117 ]
  br i1 %.not91, label %._crit_edge120, label %.lr.ph119

.lr.ph117:                                        ; preds = %bb.q, %.lr.ph117
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph117 ], [ 0, %bb.q ] ; 4 uses
  %.077115 = phi float [ %i.ck, %.lr.ph117 ], [ 0.000000e+00, %bb.q ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !80
  %i.ck = fadd float %.077115, %i.cj              ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.080, i64 %indvars.iv
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !80
  %i.cn = fadd float %i.cm, %i.ck
  %i.co = call float @llvm.fabs.f32(float %i.cn)
  %i.cp = call float @llvm.fmuladd.f32(float %i.co, float 2.550000e+02, float 5.000000e-01)
  %i.cq = fptosi float %i.cp to i32
  %spec.store.select = call i32 @llvm.smin.i32(i32 %i.cq, i32 255)
  %i.cr = trunc i32 %spec.store.select to i8
  %i.cs = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.ct = load i32, ptr %i.y, align 8, !tbaa !108
  %i.cu = mul nsw i32 %i.ct, %.076124
  %i.cv = trunc nuw nsw i64 %indvars.iv to i32
  %i.cw = add nsw i32 %i.cu, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cs, i64 %i.cx
  store i8 %i.cr, ptr %i.cy, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = load i32, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %.lr.ph117, label %.preheader, !llvm.loop !192

.lr.ph119:                                        ; preds = %.preheader, %.lr.ph119
  %i.dc = phi ptr [ %i.de, %.lr.ph119 ], [ %.0..0..0..0.82, %.preheader ] ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %8 = load float, ptr %7, align 4, !tbaa !96
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %9 = load float, ptr %i.dd, align 8, !tbaa !98
  %10 = fadd float %8, %9
  store float %10, ptr %i.dd, align 8, !tbaa !98
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !195 ; 2 uses
  %.not92 = icmp eq ptr %i.de, null
  br i1 %.not92, label %._crit_edge120, label %.lr.ph119, !llvm.loop !193

._crit_edge120:                                   ; preds = %.lr.ph119, %.preheader
  %i.df = add nsw i32 %.075125, 1
  %i.dg = add nuw nsw i32 %.076124, 1             ; 2 uses
  %i.dh = load i32, ptr %i.l, align 4, !tbaa !106
  %i.di = icmp slt i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.d, label %._crit_edge129, !llvm.loop !194

._crit_edge129:                                   ; preds = %._crit_edge120
  %.not5.i = icmp eq ptr %.sroa.0.1.lcssa, null
  br i1 %.not5.i, label %stbtt__hheap_cleanup.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge129, %.lr.ph.i
  %.06.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.sroa.0.1.lcssa, %._crit_edge129 ] ; 2 uses
  %i.dj = load ptr, ptr %.06.i, align 8, !tbaa !88 ; 2 uses
  call void @free(ptr noundef nonnull %.06.i) #29
  %.not.i = icmp eq ptr %i.dj, null
  br i1 %.not.i, label %stbtt__hheap_cleanup.exit, label %.lr.ph.i, !llvm.loop !5

stbtt__hheap_cleanup.exit:                        ; preds = %.lr.ph.i, %bb.c, %._crit_edge129
  %.not = icmp eq ptr %.080, %i.b
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %stbtt__hheap_cleanup.exit
  call void @free(ptr noundef %.080) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %stbtt__hheap_cleanup.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__sort_edges_ins_sort(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #21 {
bb.a:
  %.sroa.5 = alloca { float, float, i32 }, align 8 ; 4 uses
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.b = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !80
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false), !tbaa.struct !109
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv31 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next32, %bb.c ] ; 4 uses
  %i.d = getelementptr [20 x i8], ptr %0, i64 %indvars.iv31 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %i.f = load float, ptr %i.e, align 4, !tbaa !93
  %i.g = fcmp olt float %.sroa.4.0.copyload, %i.f
  br i1 %i.g, label %bb.c, label %.thread.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, ptr noundef nonnull align 4 dereferenceable(20) %i.h, i64 20, i1 false), !tbaa.struct !110
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, -1
  %i.i = icmp sgt i64 %indvars.iv31, 1
  br i1 %i.i, label %bb.b, label %.thread

.thread.split.loop.exit:                          ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv31 to i32
  br label %.thread

.thread:                                          ; preds = %bb.c, %.thread.split.loop.exit
  %.021.lcssa = phi i32 [ %i.j, %.thread.split.loop.exit ], [ 0, %bb.c ] ; 2 uses
  %i.k = zext i32 %.021.lcssa to i64
  %.not = icmp eq i64 %indvars.iv, %i.k
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.l = sext i32 %.021.lcssa to i64
  %i.m = getelementptr inbounds [20 x i8], ptr %0, i64 %i.l ; 2 uses
  store <2 x float> %i.c, ptr %i.m, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5, i64 12, i1 false), !tbaa.struct !109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__sort_edges_quicksort(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 {
bb.a:
  %2 = alloca %struct.stbtt__edge, align 4        ; 8 uses
  %i.a = icmp sgt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.078 = phi ptr [ %.1, %bb.l ], [ %0, %bb.a ]   ; 10 uses
  %.06977 = phi i32 [ %.170, %bb.l ], [ %1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = lshr i32 %.06977, 1
  %i.c = getelementptr inbounds nuw i8, ptr %.078, i64 4 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !93 ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !93 ; 2 uses
  %i.i = add nsw i32 %.06977, -1                  ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !93 ; 2 uses
  %i.n = fcmp olt float %i.h, %i.m                ; 2 uses
  %i.o = fcmp uge float %i.d, %i.h
  %.not = xor i1 %i.o, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = fcmp uge float %i.d, %i.m
  %i.q = xor i1 %i.p, %i.n
  %i.r = select i1 %i.q, i64 0, i64 %i.j
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.r ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.s, i64 20, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.078, i64 20, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.078, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.067 = phi i64 [ 1, %bb.c ], [ %i.af, %bb.h ]
  %.065 = phi i32 [ %i.i, %bb.c ], [ %i.ag, %bb.h ]
  %i.t = load float, ptr %i.c, align 4, !tbaa !93 ; 2 uses
  %sext = shl i64 %.067, 32
  %i.u = ashr exact i64 %sext, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.u, %bb.d ] ; 5 uses
  %i.v = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !93
  %i.y = fcmp olt float %i.x, %i.t
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.y, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.z = sext i32 %.065 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.f ], [ %i.z, %.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv81 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !93
  %i.ad = fcmp olt float %i.t, %i.ac
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nsw i64 %indvars.iv81 to i32      ; 4 uses
  %.not74 = icmp slt i64 %indvars.iv, %indvars.iv81
  br i1 %.not74, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.v, i64 20, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aa, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  %i.af = add nsw i64 %indvars.iv, 1
  %i.ag = add nsw i32 %i.ae, -1
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  %i.ah = trunc nsw i64 %indvars.iv to i32
  %i.ai = sub nsw i32 %.06977, %i.ah              ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, %i.ae
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @stbtt__sort_edges_quicksort(ptr noundef nonnull %.078, i32 noundef %i.ae)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.v, i32 noundef %i.ai)
end_hunk_0
begin_hunk_1_@stbtt__matches:bb.a
  br i1 %.not46, label %bb.s, label %stbtt__find_table.exit56.thread

bb.s:                                             ; preds = %bb.r
  %i.be = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 3, i32 noundef -1)
  %.not47 = icmp eq i32 %i.be, 0
  br i1 %.not47, label %bb.w, label %stbtt__find_table.exit56.thread

bb.t:                                             ; preds = %bb.p
  %i.bf = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 16, i32 noundef 17)
  %.not42 = icmp eq i32 %i.bf, 0
  br i1 %.not42, label %bb.u, label %stbtt__find_table.exit56.thread

bb.u:                                             ; preds = %bb.t
  %i.bg = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 1, i32 noundef 2)
  %.not43 = icmp eq i32 %i.bg, 0
  br i1 %.not43, label %bb.v, label %stbtt__find_table.exit56.thread

bb.v:                                             ; preds = %bb.u
  %i.bh = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 3, i32 noundef -1)
  %.not44 = icmp eq i32 %i.bh, 0
  br i1 %.not44, label %bb.w, label %stbtt__find_table.exit56.thread

bb.w:                                             ; preds = %bb.v, %bb.s
  br label %stbtt__find_table.exit56.thread

stbtt__find_table.exit56.thread:                  ; preds = %bb.o, %bb.j, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %stbtt__find_table.exit56, %stbtt__find_table.exit, %bb.a, %bb.w
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %stbtt__find_table.exit56 ], [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %bb.w ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 0, %stbtt__find_table.exit ], [ 1, %bb.v ], [ 0, %bb.j ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbtt_FindMatchingFont_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef 0) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i32 %.01118, 1               ; 2 uses
  %i.d = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef %i.c) ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.01118 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call i32 @stbtt__matches(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef %2)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %.lr.ph ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @stbtt_BakeFontBitmap(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call i32 @stbtt_BakeFontBitmap_internal(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetNumberOfFonts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt__isfont(ptr noundef readonly %0)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %stbtt_GetNumberOfFonts_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !37
  %i.c = icmp eq i8 %i.b, 116
  br i1 %i.c, label %bb.c, label %stbtt_GetNumberOfFonts_internal.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !37
  %i.f = icmp eq i8 %i.e, 116
  br i1 %i.f, label %bb.d, label %stbtt_GetNumberOfFonts_internal.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 99
  br i1 %i.i, label %bb.e, label %stbtt_GetNumberOfFonts_internal.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = icmp eq i8 %i.k, 102
  br i1 %i.l, label %bb.f, label %stbtt_GetNumberOfFonts_internal.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %stbtt_GetNumberOfFonts_internal.exit [
    i32 65536, label %bb.g
    i32 131072, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  br label %stbtt_GetNumberOfFonts_internal.exit

stbtt_GetNumberOfFonts_internal.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.r, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbtt_FindMatchingFont(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef 0) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %stbtt_FindMatchingFont_internal.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add nuw nsw i32 %.01118.i, 1             ; 2 uses
  %i.d = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef %i.c) ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %stbtt_FindMatchingFont_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.01118.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call i32 @stbtt__matches(ptr noundef readonly %0, i32 noundef %i.f, ptr noundef readonly %1, i32 noundef %2)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.b, label %stbtt_FindMatchingFont_internal.exit

stbtt_FindMatchingFont_internal.exit:             ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.lcssa.i = phi i32 [ %i.a, %bb.a ], [ %i.f, %.lr.ph.i ], [ %i.d, %bb.b ]
  ret i32 %.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt_CompareUTF8toUTF16_bigendian(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3)
  %i.b = icmp eq i32 %1, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}
!llvm.errno.tbaa = !{!30}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = distinct !{!8, !38}
!9 = distinct !{!9, !38}
!10 = distinct !{!10, !38}
!11 = distinct !{!11, !38}
!12 = distinct !{!12, !38}
!13 = distinct !{!13, !38}
!14 = distinct !{!14, !38}
!15 = distinct !{!15, !38}
!16 = distinct !{!16, !38}
!17 = distinct !{!17, !38}
!18 = distinct !{!18, !38}
!19 = distinct !{!19, !38}
!20 = distinct !{!20, !38}
!21 = distinct !{!21, !38}
!22 = distinct !{!22, !38}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!"omnipotent char", !26, i64 0}
!28 = !{!"int", !27, i64 0}
!29 = !{!"__libc_errno", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"", !32, i64 0, !28, i64 8, !28, i64 12}
!34 = !{!33, !28, i64 8}
!35 = !{!33, !28, i64 12}
!36 = !{!33, !32, i64 0}
!37 = !{!27, !27, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!28, !28, i64 0}
!40 = !{!32, !32, i64 0}
!41 = !{!"stbtt_fontinfo", !31, i64 0, !32, i64 8, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !28, i64 48, !28, i64 52, !28, i64 56, !28, i64 60, !33, i64 64, !33, i64 80, !33, i64 96, !33, i64 112, !33, i64 128, !33, i64 144}
!42 = !{!41, !28, i64 52}
!43 = !{!41, !32, i64 8}
!44 = !{!41, !28, i64 16}
!45 = !{!41, !28, i64 24}
!46 = !{!41, !28, i64 28}
!47 = !{!41, !28, i64 32}
!48 = !{!41, !28, i64 36}
!49 = !{!41, !28, i64 40}
!50 = !{!41, !28, i64 44}
!51 = !{!41, !28, i64 48}
!52 = !{i64 0, i64 8, !40, i64 8, i64 4, !39, i64 12, i64 4, !39}
!53 = !{!41, !28, i64 20}
!54 = !{!41, !28, i64 56}
!55 = !{!41, !28, i64 60}
!56 = !{!41, !28, i64 76}
!57 = !{ptr @stbtt_GetGlyphShape}
!58 = !{!"float", !27, i64 0}
!59 = !{!"", !28, i64 0, !28, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !31, i64 40, !28, i64 48}
!60 = !{!59, !28, i64 48}
!61 = !{!31, !31, i64 0}
!62 = !{!59, !31, i64 40}
!63 = !{!"short", !27, i64 0}
!64 = !{!"", !63, i64 0, !63, i64 2, !63, i64 4, !63, i64 6, !63, i64 8, !63, i64 10, !27, i64 12, !27, i64 13}
!65 = !{!64, !27, i64 12}
!66 = !{!64, !63, i64 0}
!67 = !{!64, !63, i64 2}
!68 = !{!64, !63, i64 4}
!69 = !{!64, !63, i64 6}
!70 = !{!63, !63, i64 0}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!59, !28, i64 28}
!74 = !{!59, !28, i64 4}
!75 = !{!59, !28, i64 36}
!76 = !{!59, !28, i64 24}
!77 = !{!59, !28, i64 32}
!78 = !{!59, !28, i64 0}
!79 = !{!59, !58, i64 16}
!80 = !{!58, !58, i64 0}
!81 = !{!59, !58, i64 20}
!82 = !{!"p1 _ZTS18stbtt__hheap_chunk", !31, i64 0}
!83 = !{!"stbtt__hheap", !82, i64 0, !31, i64 8, !28, i64 16}
!84 = !{!83, !31, i64 8}
!85 = !{!83, !28, i64 16}
!86 = !{!83, !82, i64 0}
!87 = !{!"stbtt__hheap_chunk", !82, i64 0}
!88 = !{!87, !82, i64 0}
!89 = !{!"stbtt__edge", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !28, i64 16}
!90 = !{!89, !58, i64 8}
!91 = !{!89, !58, i64 0}
!92 = !{!89, !58, i64 12}
!93 = !{!89, !58, i64 4}
!94 = !{!"p1 _ZTS18stbtt__active_edge", !31, i64 0}
!95 = !{!"stbtt__active_edge", !94, i64 0, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28}
!96 = !{!95, !58, i64 12}
!97 = !{!95, !58, i64 16}
!98 = !{!95, !58, i64 8}
!99 = !{!89, !28, i64 16}
!100 = !{!95, !58, i64 20}
!101 = !{!95, !58, i64 24}
!102 = !{!95, !58, i64 28}
!103 = !{!95, !94, i64 0}
!104 = !{!"", !28, i64 0, !28, i64 4, !28, i64 8, !32, i64 16}
!105 = !{!104, !28, i64 0}
!106 = !{!104, !28, i64 4}
!107 = !{!104, !32, i64 16}
!108 = !{!104, !28, i64 8}
!109 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !39}
!110 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !80, i64 12, i64 4, !80, i64 16, i64 4, !39}
!111 = !{!"", !58, i64 0, !58, i64 4}
!112 = !{!111, !58, i64 4}
!113 = !{!111, !58, i64 0}
!114 = !{!"p1 int", !31, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!41, !31, i64 0}
!117 = !{!"", !63, i64 0, !63, i64 2, !63, i64 4, !63, i64 6, !58, i64 8, !58, i64 12, !58, i64 16}
!118 = !{!117, !58, i64 16}
!119 = !{!"", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16}
!120 = !{!119, !28, i64 0}
!121 = !{!119, !28, i64 4}
!122 = !{!119, !28, i64 8}
!123 = !{!119, !28, i64 12}
!124 = !{!119, !28, i64 16}
!125 = !{!"stbrp_rect", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20}
!126 = !{!125, !28, i64 12}
!127 = !{!125, !28, i64 16}
!128 = !{!125, !28, i64 0}
!129 = !{!125, !28, i64 4}
!130 = !{!125, !28, i64 20}
!131 = !{!"llvm.loop.unroll.disable"}
!132 = !{!"stbtt_pack_context", !31, i64 0, !31, i64 8, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !28, i64 40, !32, i64 48, !31, i64 56}
!133 = !{!132, !31, i64 0}
!134 = !{!132, !32, i64 48}
!135 = !{!132, !31, i64 8}
!136 = !{!132, !31, i64 56}
!137 = !{!132, !28, i64 28}
!138 = !{!132, !28, i64 24}
!139 = !{!132, !28, i64 36}
!140 = !{!132, !28, i64 40}
!141 = !{!132, !28, i64 32}
!142 = !{!"", !58, i64 0, !28, i64 4, !114, i64 8, !28, i64 16, !31, i64 24, !27, i64 32, !27, i64 33}
!143 = !{!142, !58, i64 0}
!144 = !{!142, !28, i64 16}
!145 = !{!142, !114, i64 8}
!146 = !{!142, !28, i64 4}
!147 = !{!142, !31, i64 24}
!148 = !{!"", !63, i64 0, !63, i64 2, !63, i64 4, !63, i64 6, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24}
!149 = !{!148, !58, i64 24}
!150 = distinct !{!150, !38}
!151 = distinct !{!151, !38}
end_hunk_1
