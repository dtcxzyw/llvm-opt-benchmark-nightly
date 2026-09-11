Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sameport?download=true
inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0_@dot_sameports:bb.a
  call void @gv_list_clear_(ptr noundef nonnull %4, i64 noundef 56) #10
  %i.es = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.068126) #10 ; 2 uses
  %.not = icmp eq ptr %i.es, null
  br i1 %.not, label %.preheader, label %bb.c, !llvm.loop !33

.lr.ph123:                                        ; preds = %.preheader103, %bb.w
  %.063122 = phi i64 [ %i.ey, %bb.w ], [ 0, %.preheader103 ] ; 2 uses
  %i.et = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.063122) #10
  %i.eu = load ptr, ptr %i.p, align 8, !tbaa !44  ; 2 uses
  %magicptr86 = ptrtoint ptr %i.eu to i64
  switch i64 %magicptr86, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %.lr.ph123
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite81 = call i64 @fwrite(ptr nonnull @.str.2, i64 66, i64 1, ptr %i.ev) #12 ; 0 uses
  call void @abort() #13
  unreachable

bb.v:                                             ; preds = %.lr.ph123
  %i.ew = load ptr, ptr %4, align 8, !tbaa !20
  %i.ex = getelementptr inbounds nuw [56 x i8], ptr %i.ew, i64 %i.et
  call void %i.eu(ptr noundef byval(%struct.same_t) align 8 %i.ex) #10
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph123, %bb.v
  %i.ey = add nuw i64 %.063122, 1                 ; 2 uses
  %.val90 = load i64, ptr %i.k, align 8, !tbaa !11
  %i.ez = icmp ult i64 %i.ey, %.val90
  br i1 %i.ez, label %.lr.ph123, label %._crit_edge124, !llvm.loop !34

._crit_edge132:                                   ; preds = %bb.aa, %bb.b, %.preheader
  call void @gv_list_clear_(ptr noundef nonnull %3, i64 noundef 56) #10
  call void @gv_list_free_(ptr noundef nonnull %3) #10
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.val133 = load i64, ptr %i.fa, align 8, !tbaa !11
  %.not143 = icmp eq i64 %.val133, 0
  br i1 %.not143, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %._crit_edge132
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.ab

bb.x:                                             ; preds = %.lr.ph131, %bb.aa
  %.062130 = phi i64 [ 0, %.lr.ph131 ], [ %i.fh, %bb.aa ] ; 2 uses
  %i.fc = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %.062130) #10
  %i.fd = load ptr, ptr %i.s, align 8, !tbaa !44  ; 2 uses
  %magicptr87 = ptrtoint ptr %i.fd to i64
  switch i64 %magicptr87, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.fe = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite78 = call i64 @fwrite(ptr nonnull @.str.2, i64 66, i64 1, ptr %i.fe) #12 ; 0 uses
  call void @abort() #13
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ff = load ptr, ptr %3, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw [56 x i8], ptr %i.ff, i64 %i.fc
  call void %i.fd(ptr noundef byval(%struct.same_t) align 8 %i.fg) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z
  %i.fh = add nuw i64 %.062130, 1                 ; 2 uses
  %.val89 = load i64, ptr %i.r, align 8, !tbaa !11
  %i.fi = icmp ult i64 %i.fh, %.val89
  br i1 %i.fi, label %bb.x, label %._crit_edge132, !llvm.loop !35

._crit_edge137:                                   ; preds = %bb.ae, %._crit_edge132
  call void @gv_list_clear_(ptr noundef nonnull %4, i64 noundef 56) #10
  call void @gv_list_free_(ptr noundef nonnull %4) #10
  br label %bb.af

bb.ab:                                            ; preds = %.lr.ph136, %bb.ae
  %.0134 = phi i64 [ 0, %.lr.ph136 ], [ %i.fo, %bb.ae ] ; 2 uses
  %i.fj = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0134) #10
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !44 ; 2 uses
  %magicptr88 = ptrtoint ptr %i.fk to i64
  switch i64 %magicptr88, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fl = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 66, i64 1, ptr %i.fl) #12 ; 0 uses
  call void @abort() #13
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fm = load ptr, ptr %4, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw [56 x i8], ptr %i.fm, i64 %i.fj
  call void %i.fk(ptr noundef byval(%struct.same_t) align 8 %i.fn) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  %i.fo = add nuw i64 %.0134, 1                   ; 2 uses
  %.val = load i64, ptr %i.fa, align 8, !tbaa !11
  %i.fp = icmp ult i64 %i.fo, %.val
  br i1 %i.fp, label %bb.ab, label %._crit_edge137, !llvm.loop !36

bb.af:                                            ; preds = %bb.a, %._crit_edge137
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @free_same(ptr noundef byval(%struct.same_t) align 8 %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq i64 %.val6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !48  ; 2 uses
  %magicptr = ptrtoint ptr %.pre to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @gv_list_clear_(ptr noundef nonnull %i.a, i64 noundef 8) #10
  call void @gv_list_free_(ptr noundef nonnull %i.a) #10
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.e ]  ; 2 uses
  %i.d = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.a, i64 noundef %.07) #10 ; 2 uses
  switch i64 %magicptr, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %.0.copyload = load ptr, ptr %i.f, align 8
  tail call void @free(ptr noundef %.0.copyload) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  tail call void %.pre(ptr noundef %i.i) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.j = add nuw i64 %.07, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.j, %.val6
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @agattr_text(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agxget(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sameport(ptr noundef nonnull %0, ptr nofree noundef readonly byval(%struct.edge_list_t) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [4 x %struct.pointf_s], align 16    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val190 = load i64, ptr %i.a, align 8, !tbaa !11 ; 3 uses
  %.not207 = icmp eq i64 %.val190, 0              ; 2 uses
  br i1 %.not207, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54 ; 2 uses
  %.phi.trans.insert211 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.b = load <2 x double>, ptr %.phi.trans.insert211, align 8, !tbaa !56
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %.._crit_edge_crit_edge
  %i.e = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %i.bx, %bb.d ] ; 3 uses
  %i.f = phi <2 x double> [ %i.b, %.._crit_edge_crit_edge ], [ %i.bz, %bb.d ] ; 3 uses
  %i.g = phi <2 x double> [ zeroinitializer, %.._crit_edge_crit_edge ], [ %i.ci, %bb.d ] ; 3 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = extractelement <2 x double> %i.g, i64 1
  %i.j = tail call double @hypot(double noundef %i.h, double noundef %i.i) #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %4 = load double, ptr %3, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %5 = load double, ptr %i.l, align 8, !tbaa !70
  %6 = fadd nsz double %4, %5
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.n = load double, ptr %i.m, align 8, !tbaa !71
  %i.o = tail call ptr @agraphof(ptr noundef nonnull %0) #10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 356
  %i.s = load i32, ptr %i.r, align 4, !tbaa !83
  %i.t = sitofp nsz i32 %i.s to double
  %i.u = fadd nsz double %i.n, %i.t
  %i.v = tail call nsz double @llvm.maxnum.f64(double %6, double %i.u)
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = insertelement <2 x double> poison, double %i.j, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %i.g, %i.aa
  %i.ac = load <2 x double>, ptr %i.x, align 8, !tbaa !56
  %i.ad = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ae, <2 x double> %i.ac) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store <2 x double> %i.f, ptr %2, align 16, !tbaa !56
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> splat (double 2.000000e+00), <2 x double> %i.af)
  %i.ah = fdiv <2 x double> %i.ag, splat (double 3.000000e+00)
  store <2 x double> %i.ah, ptr %i.y, align 16, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> splat (double 2.000000e+00), <2 x double> %i.f)
  %i.ak = fdiv <2 x double> %i.aj, splat (double 3.000000e+00)
  store <2 x double> %i.ak, ptr %i.ai, align 16, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x double> %i.af, ptr %i.al, align 16, !tbaa !56
  call void @shape_clip(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !54  ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load <2 x double>, ptr %2, align 16, !tbaa !56
  %i.ap = load <2 x double>, ptr %i.an, align 8, !tbaa !56
  %i.aq = fsub <2 x double> %i.ao, %i.ap          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = call double @llvm.round.f64(double %i.ar) ; 5 uses
  %i.at = extractelement <2 x double> %i.aq, i64 1
  %i.au = call double @llvm.round.f64(double %i.at) ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.aw = load double, ptr %i.av, align 8, !tbaa !69 ; 2 uses
  %i.ax = fadd double %i.as, %i.aw
  %i.ay = fmul double %i.ax, 2.560000e+02
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ba = load double, ptr %i.az, align 8, !tbaa !70
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = fdiv double %i.ay, %i.bb
  %i.bd = fptoui double %i.bc to i8               ; 4 uses
  br i1 %.not207, label %._crit_edge206, label %.lr.ph205

.lr.ph205:                                        ; preds = %._crit_edge
  %i.be = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.0182194 = phi i64 [ 0, %.lr.ph ], [ %i.cj, %bb.d ] ; 2 uses
  %i.bf = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ci, %bb.d ]
  %i.bg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.0182194) #10
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = and i32 %i.bj, 3                        ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 2
  %i.bm = select i1 %i.bl, i64 56, i64 -8
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !19 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %0
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = icmp eq i32 %i.bk, 3
  %i.br = select i1 %i.bq, i64 56, i64 120
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0186 = phi ptr [ %i.bt, %bb.c ], [ %i.bo, %bb.b ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0186, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !54  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load <2 x double>, ptr %i.by, align 8, !tbaa !56 ; 2 uses
  %i.ca = load <2 x double>, ptr %i.bw, align 8, !tbaa !56
  %i.cb = fsub <2 x double> %i.ca, %i.bz          ; 3 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = extractelement <2 x double> %i.cb, i64 1
  %i.ce = tail call double @hypot(double noundef %i.cc, double noundef %i.cd) #10
  %i.cf = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x double> %i.cb, %i.cg
  %i.ci = fadd <2 x double> %i.bf, %i.ch          ; 2 uses
  %i.cj = add nuw i64 %.0182194, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cj, %.val190
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !49

._crit_edge206.loopexit:                          ; preds = %._crit_edge202
  %.pre217 = load ptr, ptr %i.k, align 8, !tbaa !54
  br label %._crit_edge206

._crit_edge206:                                   ; preds = %._crit_edge206.loopexit, %._crit_edge
  %i.ck = phi ptr [ %.pre217, %._crit_edge206.loopexit ], [ %i.am, %._crit_edge ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 193
  store i8 1, ptr %i.cl, align 1, !tbaa !84
  ret void

bb.e:                                             ; preds = %.lr.ph205, %._crit_edge202
  %.0181203 = phi i64 [ 0, %.lr.ph205 ], [ %i.fv, %._crit_edge202 ] ; 2 uses
  %i.cm = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.0181203) #10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.cm
  %.0199 = load ptr, ptr %i.cn, align 8, !tbaa !26 ; 2 uses
  %.not200 = icmp eq ptr %.0199, null
  br i1 %.not200, label %._crit_edge202, label %.preheader191

.preheader191:                                    ; preds = %bb.e, %.thread228
  %.0201 = phi ptr [ %.0, %.thread228 ], [ %.0199, %bb.e ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader191, %bb.m
  %.0185197 = phi ptr [ %.0201, %.preheader191 ], [ %i.ec, %bb.m ] ; 10 uses
  %i.co = load i32, ptr %.0185197, align 8
  %i.cp = and i32 %i.co, 3                        ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 2
  %i.cr = getelementptr inbounds i8, ptr %.0185197, i64 -64 ; 2 uses
  %i.cs = select i1 %i.cq, ptr %.0185197, ptr %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !19
  %i.cv = icmp eq ptr %i.cu, %0
  br i1 %i.cv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %.0185197, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !54 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  store double %i.as, ptr %i.cy, align 8, !tbaa !56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  store double %i.au, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !56
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !85
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 108
  store i8 %i.bd, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !20
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 109
  store i8 0, ptr %.sroa.23.0..sroa_idx, align 1, !tbaa !20
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 110
  store i16 0, ptr %.sroa.25.0..sroa_idx, align 2
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  store ptr null, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !27
  %.pre215 = load i32, ptr %.0185197, align 8
  %.pre218 = and i32 %.pre215, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i32 [ %.pre218, %bb.g ], [ %i.cp, %bb.f ]
  %i.cz = icmp eq i32 %.pre-phi, 3
  %i.da = select i1 %i.cz, i64 56, i64 120
  %i.db = getelementptr inbounds nuw i8, ptr %.0185197, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !19
  %i.dd = icmp eq ptr %i.dc, %0
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds nuw i8, ptr %.0185197, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !54 ; 8 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store double %i.as, ptr %i.dg, align 8, !tbaa !56
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  store double %i.au, ptr %.sroa.8.0..sroa_idx9, align 8, !tbaa !56
  %.sroa.9.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx15, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.13.0..sroa_idx27, align 8, !tbaa !85
  %.sroa.21.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.df, i64 60
  store i8 %i.bd, ptr %.sroa.21.0..sroa_idx51, align 4, !tbaa !20
  %.sroa.23.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.df, i64 61
  store i8 0, ptr %.sroa.23.0..sroa_idx57, align 1, !tbaa !20
  %.sroa.25.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.df, i64 62
  store i16 0, ptr %.sroa.25.0..sroa_idx63, align 2
  %.sroa.26.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  store ptr null, ptr %.sroa.26.0..sroa_idx69, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.0185197, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 152
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !91
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %bb.k, label %.preheader.preheader

bb.k:                                             ; preds = %bb.j
  %i.dm = load i32, ptr %.0185197, align 8
  %i.dn = and i32 %i.dm, 3
  %i.do = icmp eq i32 %i.dn, 2
  %i.dp = select i1 %i.do, ptr %.0185197, ptr %i.cr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !19
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !54 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 216
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !92
  %i.dw = icmp eq i8 %i.dv, 1
  br i1 %i.dw, label %bb.l, label %.preheader.preheader

bb.l:                                             ; preds = %bb.k
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 280
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !93
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.m, label %.preheader.preheader

bb.m:                                             ; preds = %bb.l
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 272
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !94
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !26 ; 2 uses
  %.not188 = icmp eq ptr %i.ec, null
  br i1 %.not188, label %.preheader.preheader, label %bb.f, !llvm.loop !50

.preheader.preheader:                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.t
  %.1198 = phi ptr [ %i.fr, %bb.t ], [ %.0201, %.preheader.preheader ] ; 10 uses
  %i.ed = load i32, ptr %.1198, align 8
  %i.ee = and i32 %i.ed, 3                        ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 2
  %i.eg = select i1 %i.ef, i64 56, i64 -8
  %i.eh = getelementptr inbounds i8, ptr %.1198, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !19
  %i.ej = icmp eq ptr %i.ei, %0
  br i1 %i.ej, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %.1198, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !54 ; 8 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 72
  store double %i.as, ptr %i.em, align 8, !tbaa !56
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  store double %i.au, ptr %.sroa.8.0..sroa_idx11, align 8, !tbaa !56
  %.sroa.9.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.el, i64 88
  %.sroa.13.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx17, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.13.0..sroa_idx29, align 8, !tbaa !85
  %.sroa.21.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.el, i64 108
  store i8 %i.bd, ptr %.sroa.21.0..sroa_idx53, align 4, !tbaa !20
  %.sroa.23.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.el, i64 109
  store i8 0, ptr %.sroa.23.0..sroa_idx59, align 1, !tbaa !20
  %.sroa.25.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.el, i64 110
  store i16 0, ptr %.sroa.25.0..sroa_idx65, align 2
  %.sroa.26.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  store ptr null, ptr %.sroa.26.0..sroa_idx71, align 8, !tbaa !27
  %.pre216 = load i32, ptr %.1198, align 8
  %.pre219 = and i32 %.pre216, 3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader
  %.pre-phi220 = phi i32 [ %.pre219, %bb.n ], [ %i.ee, %.preheader ]
  %i.en = icmp eq i32 %.pre-phi220, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %.1198, i64 64 ; 2 uses
  %i.ep = select i1 %i.en, ptr %.1198, ptr %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !19
  %i.es = icmp eq ptr %i.er, %0
  br i1 %i.es, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.et = getelementptr inbounds nuw i8, ptr %.1198, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !54 ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store double %i.as, ptr %i.ev, align 8, !tbaa !56
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store double %i.au, ptr %.sroa.8.0..sroa_idx13, align 8, !tbaa !56
  %.sroa.9.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %.sroa.13.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx19, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.13.0..sroa_idx31, align 8, !tbaa !85
  %.sroa.21.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.eu, i64 60
  store i8 %i.bd, ptr %.sroa.21.0..sroa_idx55, align 4, !tbaa !20
  %.sroa.23.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.eu, i64 61
  store i8 0, ptr %.sroa.23.0..sroa_idx61, align 1, !tbaa !20
  %.sroa.25.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.eu, i64 62
  store i16 0, ptr %.sroa.25.0..sroa_idx67, align 2
  %.sroa.26.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  store ptr null, ptr %.sroa.26.0..sroa_idx73, align 8, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ew = getelementptr inbounds nuw i8, ptr %.1198, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !54
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 152
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !91
  %i.fa = icmp eq i8 %i.ez, 1
  br i1 %i.fa, label %bb.r, label %.thread228

bb.r:                                             ; preds = %bb.q
  %i.fb = load i32, ptr %.1198, align 8
  %i.fc = and i32 %i.fb, 3
  %i.fd = icmp eq i32 %i.fc, 3
  %i.fe = select i1 %i.fd, ptr %.1198, ptr %i.eo
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !19
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !54 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 216
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !92
  %i.fl = icmp eq i8 %i.fk, 1
  br i1 %i.fl, label %bb.s, label %.thread228

bb.s:                                             ; preds = %bb.r
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 264
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !95
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.t, label %.thread228

bb.t:                                             ; preds = %bb.s
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 256
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !96
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !26 ; 2 uses
  %.not189 = icmp eq ptr %i.fr, null
  br i1 %.not189, label %.thread228, label %.preheader, !llvm.loop !51

.thread228:                                       ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %i.fs = getelementptr inbounds nuw i8, ptr %.0201, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !54
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 232
  %.0 = load ptr, ptr %i.fu, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge202, label %.preheader191, !llvm.loop !52

._crit_edge202:                                   ; preds = %.thread228, %bb.e
  %i.fv = add nuw i64 %.0181203, 1                ; 2 uses
  %exitcond210.not = icmp eq i64 %i.fv, %.val190
  br i1 %exitcond210.not, label %._crit_edge206.loopexit, label %bb.e, !llvm.loop !53
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #7

declare ptr @agraphof(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #8

declare void @shape_clip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"", !8, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!11 = !{!10, !9, i64 16}
!12 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !9, i64 8}
!13 = !{!"p1 _ZTS7Agrec_s", !8, i64 0}
!14 = !{!"Agobj_s", !12, i64 0, !13, i64 16}
!15 = !{!"p1 _ZTS9dtlink_s_", !8, i64 0}
!16 = !{!"dtlink_s_", !15, i64 0, !4, i64 8}
!17 = !{!"p1 _ZTS8Agnode_s", !8, i64 0}
!18 = !{!"Agedge_s", !14, i64 0, !16, i64 24, !16, i64 40, !17, i64 56}
!19 = !{!18, !17, i64 56}
!20 = !{!4, !4, i64 0}
!21 = !{!"p1 omnipotent char", !8, i64 0}
!22 = !{!"p1 _ZTS8Agedge_s", !8, i64 0}
!23 = !{!"", !4, i64 0, !8, i64 32, !22, i64 40}
!24 = !{!"same_t", !21, i64 0, !23, i64 8}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!22, !22, i64 0}
!27 = !{!21, !21, i64 0}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !25}
!31 = distinct !{!31, !25}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = !{!"p1 _ZTS7Agsym_s", !8, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!24, !21, i64 0}
!40 = !{!24, !22, i64 48}
!41 = !{!8, !8, i64 0}
!42 = !{i64 0, i64 8, !27, i64 8, i64 32, !20, i64 40, i64 8, !41, i64 48, i64 8, !26}
!43 = !{!"", !4, i64 0, !8, i64 32, !24, i64 40}
!44 = !{!43, !8, i64 32}
!45 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!46 = !{!45, !45, i64 0}
!47 = distinct !{!47, !25}
!48 = !{!24, !8, i64 40}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = !{!14, !13, i64 16}
!55 = !{!"double", !4, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"Agrec_s", !21, i64 0, !13, i64 8}
!58 = !{!"p1 _ZTS10shape_desc", !8, i64 0}
!59 = !{!"pointf_s", !55, i64 0, !55, i64 8}
!60 = !{!"", !59, i64 0, !59, i64 16}
!61 = !{!"p1 _ZTS11textlabel_t", !8, i64 0}
!62 = !{!"_Bool", !4, i64 0}
!63 = !{!"p1 double", !8, i64 0}
!64 = !{!"any p2 pointer", !8, i64 0}
!65 = !{!"p2 _ZTS8Agedge_s", !64, i64 0}
!66 = !{!"elist", !65, i64 0, !9, i64 8}
!67 = !{!"p1 _ZTS8Agraph_s", !8, i64 0}
!68 = !{!"Agnodeinfo_t", !57, i64 0, !58, i64 16, !8, i64 24, !59, i64 32, !55, i64 48, !55, i64 56, !60, i64 64, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !61, i64 136, !61, i64 144, !8, i64 152, !4, i64 160, !4, i64 161, !62, i64 162, !4, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !63, i64 176, !55, i64 184, !4, i64 192, !62, i64 193, !17, i64 200, !17, i64 208, !4, i64 216, !9, i64 224, !4, i64 232, !4, i64 233, !4, i64 234, !17, i64 240, !17, i64 248, !66, i64 256, !66, i64 272, !66, i64 288, !66, i64 304, !66, i64 320, !67, i64 336, !5, i64 344, !17, i64 352, !5, i64 360, !5, i64 364, !55, i64 368, !66, i64 376, !66, i64 392, !66, i64 408, !66, i64 424, !22, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !4, i64 464}
!69 = !{!68, !55, i64 104}
!70 = !{!68, !55, i64 112}
!71 = !{!68, !55, i64 96}
!72 = !{!"p1 _ZTS8layout_t", !8, i64 0}
!73 = !{!"short", !4, i64 0}
!74 = !{!"p1 _ZTS5GVC_s", !8, i64 0}
!75 = !{!"p2 _ZTS8Agnode_s", !64, i64 0}
!76 = !{!"p2 double", !64, i64 0}
!77 = !{!"any p3 pointer", !64, i64 0}
!78 = !{!"p3 double", !77, i64 0}
!79 = !{!"p2 _ZTS8Agraph_s", !64, i64 0}
!80 = !{!"p1 _ZTS6rank_t", !8, i64 0}
!81 = !{!"nlist_t", !75, i64 0, !9, i64 8}
!82 = !{!"Agraphinfo_t", !57, i64 0, !72, i64 16, !61, i64 24, !60, i64 32, !4, i64 64, !4, i64 128, !4, i64 129, !62, i64 130, !4, i64 131, !5, i64 132, !55, i64 136, !55, i64 144, !73, i64 152, !8, i64 160, !74, i64 168, !8, i64 176, !75, i64 184, !5, i64 192, !76, i64 200, !76, i64 208, !76, i64 216, !78, i64 224, !73, i64 232, !73, i64 234, !5, i64 236, !79, i64 240, !67, i64 248, !17, i64 256, !80, i64 264, !67, i64 272, !5, i64 280, !17, i64 288, !17, i64 296, !81, i64 304, !17, i64 320, !17, i64 328, !5, i64 336, !5, i64 340, !62, i64 344, !4, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !17, i64 360, !17, i64 368, !17, i64 376, !75, i64 384, !62, i64 392, !4, i64 393, !4, i64 394, !4, i64 395, !62, i64 396}
!83 = !{!82, !5, i64 356}
!84 = !{!68, !62, i64 193}
!85 = !{!62, !62, i64 0}
!86 = !{!"p1 _ZTS7splines", !8, i64 0}
!87 = !{!"port", !59, i64 0, !55, i64 16, !8, i64 24, !62, i64 32, !62, i64 33, !62, i64 34, !62, i64 35, !4, i64 36, !4, i64 37, !21, i64 40}
!88 = !{!"p1 _ZTS8pointf_s", !8, i64 0}
!89 = !{!"Ppoly_t", !88, i64 0, !9, i64 8}
!90 = !{!"Agedgeinfo_t", !57, i64 0, !86, i64 16, !87, i64 24, !87, i64 72, !61, i64 120, !61, i64 128, !61, i64 136, !61, i64 144, !4, i64 152, !4, i64 153, !4, i64 154, !4, i64 155, !4, i64 156, !22, i64 160, !8, i64 168, !55, i64 176, !55, i64 184, !89, i64 192, !4, i64 208, !62, i64 209, !73, i64 210, !5, i64 212, !5, i64 216, !5, i64 220, !73, i64 224, !5, i64 228, !22, i64 232}
!91 = !{!90, !4, i64 152}
!92 = !{!68, !4, i64 216}
!93 = !{!68, !9, i64 280}
!94 = !{!68, !65, i64 272}
!95 = !{!68, !9, i64 264}
!96 = !{!68, !65, i64 256}
end_hunk_0
