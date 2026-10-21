Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@agxbprint:bb.a

declare i32 @agobjkind(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wedgedEllipse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.colorsegs_t, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load double, ptr %i.c, align 8, !tbaa !49 ; 2 uses
  %i.e = call fastcc i32 @parseSegs(ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.f = add i32 %i.e, -1
  %or.cond = icmp ult i32 %i.f, 2
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <2 x double>, ptr %1, align 8
  %i.i = load <2 x double>, ptr %i.g, align 8     ; 2 uses
  %i.j = fadd <2 x double> %i.h, %i.i
  %i.k = fmul <2 x double> %i.j, splat (double 5.000000e-01) ; 3 uses
  %i.l = fsub <2 x double> %i.i, %i.k             ; 2 uses
  %i.m = fcmp ogt double %i.d, 5.000000e-01       ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @gvrender_set_penwidth(ptr noundef nonnull %0, double noundef 5.000000e-01) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val4854 = load i64, ptr %i.n, align 8, !tbaa !109 ; 4 uses
  %.not = icmp eq i64 %.val4854, 0                ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre = load ptr, ptr %3, align 8, !tbaa !14
  %i.o = extractelement <2 x double> %i.l, i64 0
  %i.p = extractelement <2 x double> %i.l, i64 1
  %i.q = extractelement <2 x double> %i.k, i64 0
  %i.r = extractelement <2 x double> %i.k, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.04056 = phi i64 [ %.pre-phi, %bb.g ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.04355 = phi double [ %.1.ph, %bb.g ], [ 0.000000e+00, %.lr.ph.preheader ] ; 3 uses
  %i.s = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %.04056) #27
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.s ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !105 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !110 ; 2 uses
  %i.u = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.u, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.v = fcmp ugt double %.sroa.5.0.copyload, 0.000000e+00
  br i1 %i.v, label %bb.f, label %._crit_edge67

._crit_edge67:                                    ; preds = %bb.e
  %.pre68 = add nuw i64 %.04056, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %.sroa.0.0.copyload) #27
  %i.w = add nuw i64 %.04056, 1                   ; 2 uses
  %i.x = icmp eq i64 %i.w, %.val4854
  %i.y = tail call double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double f0x401921FB54442D18, double %.04355)
  %.042 = select i1 %i.x, double f0x401921FB54442D18, double %i.y ; 2 uses
  %i.z = tail call ptr @ellipticWedge(double %i.q, double %i.r, double noundef %i.o, double noundef %i.p, double noundef %.04355, double noundef %.042) #27 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !113
  tail call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.aa, i64 noundef %i.ac, i32 noundef 1) #27
  tail call void @freePath(ptr noundef nonnull %i.z) #27
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge67, %bb.f
  %.pre-phi = phi i64 [ %.pre68, %._crit_edge67 ], [ %i.w, %bb.f ] ; 2 uses
  %.1.ph = phi double [ %.04355, %._crit_edge67 ], [ %.042, %bb.f ]
  %i.ad = icmp ult i64 %.pre-phi, %.val4854
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %bb.d
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void @gvrender_set_penwidth(ptr noundef %0, double noundef %i.d) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  br i1 %.not, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre66 = load ptr, ptr %i.ae, align 8, !tbaa !117 ; 2 uses
  %magicptr = ptrtoint ptr %.pre66 to i64
  br label %bb.j

._crit_edge63:                                    ; preds = %bb.m, %bb.i
  call void @gv_list_clear_(ptr noundef nonnull %3, i64 noundef 24) #27
  call void @gv_list_free_(ptr noundef nonnull %3) #27
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph62, %bb.m
  %.060 = phi i64 [ 0, %.lr.ph62 ], [ %i.aj, %bb.m ] ; 2 uses
  %i.af = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %.060) #27
  switch i64 %magicptr, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.ag) #32 ; 0 uses
  tail call void @abort() #33
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %3, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.af
  tail call void %.pre66(ptr noundef byval(%struct.colorseg_t) align 8 %i.ai) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.aj = add nuw i64 %.060, 1                    ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %.val4854
  br i1 %i.ak, label %bb.j, label %._crit_edge63, !llvm.loop !208

bb.n:                                             ; preds = %bb.a, %._crit_edge63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parseSegs(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.colorsegs_t, align 8        ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) @__const.parseSegs.segs, i64 64, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = tail call i64 @strcspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #31, !noalias !216
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 57
  br label %bb.b

bb.b:                                             ; preds = %tok_next.exit, %.lr.ph
  %.055120 = phi double [ 1.000000e+00, %.lr.ph ], [ %i.s, %tok_next.exit ] ; 5 uses
  %.058119 = phi i32 [ 0, %.lr.ph ], [ %.260, %tok_next.exit ] ; 3 uses
  %.sroa.6.0118 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tok_next.exit ] ; 4 uses
  %.sroa.11.0117 = phi i64 [ %i.c, %.lr.ph ], [ %i.au, %tok_next.exit ] ; 3 uses
  %i.e = call ptr @memchr(ptr noundef nonnull %.sroa.6.0118, i32 noundef 59, i64 noundef %.sroa.11.0117) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %getSegLen.exit.thread93, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.g = call double @strtod(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.i = icmp ne ptr %i.h, %i.f
  %i.j = fcmp oge double %i.g, 0.000000e+00
  %or.cond.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %getSegLen.exit, label %bb.j

getSegLen.exit:                                   ; preds = %bb.c
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %.sroa.6.0118 to i64
  %i.m = sub i64 %i.k, %i.l
  br label %getSegLen.exit.thread93

getSegLen.exit.thread93:                          ; preds = %bb.b, %getSegLen.exit
  %.0.i97 = phi double [ %i.g, %getSegLen.exit ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.sroa.5.096 = phi i64 [ %i.m, %getSegLen.exit ], [ %.sroa.11.0117, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.n = fsub double %.0.i97, %.055120            ; 2 uses
  %i.o = fcmp ogt double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %getSegLen.exit.thread93
  %i.p = fcmp olt double %i.n, 1.000000e-05
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw xchg ptr @parseSegs.warned, i8 1 seq_cst, align 1
  %i.r = trunc i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.49, ptr noundef nonnull %0) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %getSegLen.exit.thread93
  %.260 = phi i32 [ %.058119, %getSegLen.exit.thread93 ], [ %.058119, %bb.d ], [ %.058119, %bb.e ], [ 3, %bb.f ] ; 3 uses
  %.054 = phi double [ %.0.i97, %getSegLen.exit.thread93 ], [ %.055120, %bb.d ], [ %.055120, %bb.e ], [ %.055120, %bb.f ] ; 3 uses
  %i.s = fsub double %.055120, %.054              ; 3 uses
  %i.t = fcmp ogt double %.054, 0.000000e+00
  %spec.select = zext i1 %i.t to i8
  %.not69 = icmp eq i64 %.sroa.5.096, 0
  br i1 %.not69, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = call noalias ptr @strndup(ptr noundef nonnull readonly %.sroa.6.0118, i64 noundef range(i64 1, 0) %.sroa.5.096) #27 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.x = add i64 %.sroa.5.096, 1
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.45, i64 noundef %i.x) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.z = atomicrmw xchg ptr @parseSegs.warned, i8 1 seq_cst, align 1
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.50, ptr noundef nonnull %0) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.361 = phi i32 [ 2, %bb.k ], [ 1, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.val86125 = load i64, ptr %i.ab, align 8, !tbaa !109
  %.not = icmp eq i64 %.val86125, 0
  br i1 %.not, label %.thread111, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.m

.thread111:                                       ; preds = %bb.p, %bb.l
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 24) #27
  call void @gv_list_free_(ptr noundef nonnull %2) #27
  br label %bb.aa

bb.m:                                             ; preds = %.lr.ph127, %bb.p
  %.051126 = phi i64 [ 0, %.lr.ph127 ], [ %i.ai, %bb.p ] ; 2 uses
  %i.ad = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.051126) #27
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %magicptr = ptrtoint ptr %i.ae to i64
  switch i64 %magicptr, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.af) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %2, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ad
  call void %i.ae(ptr noundef byval(%struct.colorseg_t) align 8 %i.ah) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %i.ai = add nuw i64 %.051126, 1                 ; 2 uses
  %.val86 = load i64, ptr %i.ab, align 8, !tbaa !109
  %i.aj = icmp ult i64 %i.ai, %.val86
  br i1 %i.aj, label %bb.m, label %.thread111, !llvm.loop !211

bb.q:                                             ; preds = %bb.g, %bb.h
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ]
  store ptr %.sroa.0.0, ptr %i.d, align 8, !tbaa !105
  store double %.054, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !110
  store i8 %spec.select, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !217
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx, i8 0, i64 7, i1 false)
  %i.ak = call i64 @gv_list_append_slot_(ptr noundef nonnull %2, i64 noundef 24) #27
  %i.al = load ptr, ptr %2, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !218
  %i.an = call double @llvm.fabs.f64(double %i.s)
  %or.cond4 = fcmp uge double %i.an, 1.000000e-05
  br i1 %or.cond4, label %bb.r, label %.thread103

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.6.0118, i64 %.sroa.11.0117 ; 3 uses
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %.thread103, label %tok_next.exit

tok_next.exit:                                    ; preds = %bb.r
  %i.as = call i64 @strspn(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.48) #31
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as ; 2 uses
  %i.au = call i64 @strcspn(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.48) #31
  br label %bb.b, !llvm.loop !212

.thread103:                                       ; preds = %bb.r, %bb.q
  %.257110 = phi double [ %i.s, %bb.r ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %i.av = fcmp ogt double %.257110, 0.000000e+00
  br i1 %i.av, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %.thread103
  %.5109164 = phi i32 [ %.260, %.thread103 ], [ 0, %bb.a ] ; 3 uses
  %.257110162 = phi double [ %.257110, %.thread103 ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.val85128 = load i64, ptr %i.aw, align 8, !tbaa !109
  %.not145 = icmp eq i64 %.val85128, 0
  br i1 %.not145, label %._crit_edge.thread, label %.lr.ph131

._crit_edge:                                      ; preds = %.lr.ph131
  %.not70 = icmp eq i64 %spec.select76, 0
  br i1 %.not70, label %._crit_edge.thread, label %bb.s

.lr.ph131:                                        ; preds = %.preheader, %.lr.ph131
  %.049130 = phi i64 [ %i.be, %.lr.ph131 ], [ 0, %.preheader ] ; 2 uses
  %.050129 = phi i64 [ %spec.select76, %.lr.ph131 ], [ 0, %.preheader ]
  %i.ax = load ptr, ptr %2, align 8, !tbaa !14
  %i.ay = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.049130) #27
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !118
  %i.bc = fcmp ole double %i.bb, 0.000000e+00
  %i.bd = zext i1 %i.bc to i64
  %spec.select76 = add i64 %.050129, %i.bd        ; 3 uses
  %i.be = add nuw i64 %.049130, 1                 ; 2 uses
  %.val85 = load i64, ptr %i.aw, align 8, !tbaa !109 ; 3 uses
  %i.bf = icmp ult i64 %i.be, %.val85
  br i1 %i.bf, label %.lr.ph131, label %._crit_edge, !llvm.loop !213

bb.s:                                             ; preds = %._crit_edge
  %i.bg = uitofp i64 %spec.select76 to double
  %i.bh = fdiv double %.257110162, %i.bg
  %.not146 = icmp eq i64 %.val85, 0
  br i1 %.not146, label %.loopexit, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.s, %bb.u
  %.0135 = phi i64 [ %i.bo, %bb.u ], [ 0, %bb.s ] ; 2 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !14
  %i.bj = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0135) #27
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !118
  %i.bn = fcmp ugt double %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph137
  store double %i.bh, ptr %i.bl, align 8, !tbaa !118
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph137
  %i.bo = add nuw i64 %.0135, 1                   ; 2 uses
  %.val84 = load i64, ptr %i.aw, align 8, !tbaa !109
  %i.bp = icmp ult i64 %i.bo, %.val84
  br i1 %i.bp, label %.lr.ph137, label %.loopexit, !llvm.loop !214

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.val84134168 = phi i64 [ %.val85, %._crit_edge ], [ 0, %.preheader ]
  %i.bq = load ptr, ptr %2, align 8, !tbaa !14
  %i.br = add i64 %.val84134168, -1
  %i.bs = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.br) #27
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !118
  %i.bw = fadd double %.257110162, %i.bv
  store double %i.bw, ptr %i.bu, align 8, !tbaa !118
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.s, %._crit_edge.thread, %.thread103
  %.5109163 = phi i32 [ %.260, %.thread103 ], [ %.5109164, %bb.s ], [ %.5109164, %._crit_edge.thread ], [ %.5109164, %bb.u ]
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.val82138 = load i64, ptr %i.bx, align 8, !tbaa !109 ; 2 uses
  %.not71139 = icmp eq i64 %.val82138, 0
  br i1 %.not71139, label %._crit_edge143, label %.lr.ph142

.lr.ph142:                                        ; preds = %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph142, %bb.z
  %.val82140 = phi i64 [ %.val82138, %.lr.ph142 ], [ %.val82, %bb.z ]
  %i.ca = load ptr, ptr %2, align 8, !tbaa !14
  %i.cb = add i64 %.val82140, -1
  %i.cc = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.cb) #27
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !118
  %i.cg = fcmp ogt double %i.cf, 0.000000e+00
  br i1 %i.cg, label %._crit_edge143, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val80 = load i64, ptr %i.bx, align 8, !tbaa !109
  %i.ch = add i64 %.val80, -1
  %i.ci = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ch) #27
  %i.cj = load ptr, ptr %i.by, align 8, !tbaa !117 ; 2 uses
  %magicptr77 = ptrtoint ptr %i.cj to i64
  switch i64 %magicptr77, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite73 = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.ck) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cl = load ptr, ptr %2, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ci
  call void %i.cj(ptr noundef byval(%struct.colorseg_t) align 8 %i.cm) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  call void @gv_list_pop_back_(ptr noundef nonnull %2, ptr noundef nonnull %i.bz, i64 noundef 24) #27
  %.val82 = load i64, ptr %i.bx, align 8, !tbaa !109 ; 2 uses
  %.not71 = icmp eq i64 %.val82, 0
  br i1 %.not71, label %._crit_edge143, label %bb.v, !llvm.loop !215

._crit_edge143:                                   ; preds = %bb.z, %bb.v, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !219
  br label %bb.aa

bb.aa:                                            ; preds = %.thread111, %._crit_edge143
  %.3 = phi i32 [ %.5109163, %._crit_edge143 ], [ %.361, %.thread111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i32 %.3
}

declare void @gvrender_set_penwidth(ptr noundef, double noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

declare void @gvrender_set_fillcolor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare ptr @ellipticWedge(double, double, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @gvrender_beziercurve(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @freePath(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @stripedBox(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.colorsegs_t, align 8        ; 11 uses
  %5 = alloca [4 x %struct.pointf_s], align 16    ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load double, ptr %i.c, align 8, !tbaa !49 ; 2 uses
  %i.e = call fastcc i32 @parseSegs(ptr noundef %2, ptr noundef %4) ; 2 uses
  %i.f = add i32 %i.e, -1
  %or.cond = icmp ult i32 %i.f, 2
  br i1 %or.cond, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !120
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !120
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !120
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !120
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !120
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !120
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink62 = phi i64 [ 48, %bb.d ], [ 16, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sink62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.r = load double, ptr %i.q, align 16, !tbaa !121 ; 2 uses
  %i.s = load double, ptr %5, align 16, !tbaa !121 ; 3 uses
  %i.t = fsub double %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store double %i.s, ptr %i.u, align 16, !tbaa !121
  store double %i.s, ptr %i.q, align 16, !tbaa !121
  %i.v = fcmp ogt double %i.d, 5.000000e-01       ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @gvrender_set_penwidth(ptr noundef nonnull %0, double noundef 5.000000e-01) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val4446 = load i64, ptr %i.w, align 8, !tbaa !109 ; 4 uses
  %.not55 = icmp eq i64 %.val4446, 0              ; 2 uses
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.pre = load ptr, ptr %4, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %.03647 = phi i64 [ 0, %.lr.ph ], [ %.pre-phi, %bb.k ] ; 3 uses
  %i.y = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.03647) #27
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.y ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !110 ; 2 uses
  %i.aa = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.aa, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = fcmp ugt double %.sroa.5.0.copyload, 0.000000e+00
  br i1 %i.ab, label %bb.j, label %._crit_edge59

._crit_edge59:                                    ; preds = %bb.i
  %.pre60 = add nuw i64 %.03647, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %.sroa.0.0.copyload) #27
  %i.ac = add nuw i64 %.03647, 1                  ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %.val4446
  %i.ae = load double, ptr %5, align 16
  %i.af = call double @llvm.fmuladd.f64(double %i.t, double %.sroa.5.0.copyload, double %i.ae)
  %storemerge = select i1 %i.ad, double %i.r, double %i.af ; 2 uses
  store double %storemerge, ptr %i.u, align 16, !tbaa !121
  store double %storemerge, ptr %i.q, align 16, !tbaa !121
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 4, i32 noundef 1) #27
  %i.ag = load double, ptr %i.q, align 16, !tbaa !121 ; 2 uses
  store double %i.ag, ptr %i.x, align 16, !tbaa !121
  store double %i.ag, ptr %5, align 16, !tbaa !121
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge59, %bb.j
  %.pre-phi = phi i64 [ %.pre60, %._crit_edge59 ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ah = icmp ult i64 %.pre-phi, %.val4446
  br i1 %i.ah, label %bb.h, label %._crit_edge, !llvm.loop !220

._crit_edge:                                      ; preds = %bb.k, %bb.h, %bb.g
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  call void @gvrender_set_penwidth(ptr noundef %0, double noundef %i.d) #27
  br label %bb.m

end_hunk_0
