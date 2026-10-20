Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@findStopColor:bb.a
  ]

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.bq) #32 ; 0 uses
  tail call void @abort() #33
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.br = load ptr, ptr %3, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.bo
  tail call void %i.bp(ptr noundef byval(%struct.colorseg_t) align 8 %i.bs) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v
  %i.bt = add nuw i64 %.031, 1                    ; 2 uses
  %.val = load i64, ptr %i.c, align 8, !tbaa !109
  %i.bu = icmp ult i64 %i.bt, %.val
  br i1 %i.bu, label %bb.t, label %._crit_edge36, !llvm.loop !306

._crit_edge36:                                    ; preds = %bb.w, %bb.h, %bb.s, %bb.d
  %.018 = phi i1 [ false, %bb.d ], [ true, %bb.s ], [ false, %bb.h ], [ true, %bb.w ]
  call void @gv_list_clear_(ptr noundef nonnull %3, i64 noundef 24) #27
  call void @gv_list_free_(ptr noundef nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i1 %.018
}

declare void @gvrender_set_gradient_vals(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare i32 @late_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @agxget(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @late_double(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @gvrender_set_pencolor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @round_corners(ptr noundef, ptr noundef, i64 noundef, i32, i32 noundef) local_unnamed_addr #2

declare void @gvrender_box(ptr noundef, ptr noundef byval(%struct.boxf) align 8, i32 noundef) local_unnamed_addr #2

declare void @emit_label(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gvrender_end_anchor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !315
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.loopexit44, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @agraphof(ptr noundef nonnull %1) #27
  %i.g = tail call fastcc zeroext i1 @node_in_layer(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef nonnull %1)
  br i1 %i.g, label %bb.c, label %.loopexit44

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.val = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.j = load <4 x double>, ptr %i.h, align 8     ; 2 uses
  %i.k = load <4 x double>, ptr %i.i, align 8     ; 2 uses
  %i.l = shufflevector <4 x double> %i.k, <4 x double> %i.j, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.m = shufflevector <4 x double> %i.j, <4 x double> %i.k, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.n = fcmp oge <4 x double> %i.l, %i.m
  %i.o = freeze <4 x i1> %i.n
  %i.p = bitcast <4 x i1> %i.o to i4
  %i.q = icmp eq i4 %i.p, -1
  br i1 %i.q, label %bb.d, label %.loopexit44

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !156
  %i.t = sext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !170  ; 2 uses
  %.not36 = icmp eq i32 %i.v, %i.t
  br i1 %.not36, label %.loopexit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = trunc i32 %i.v to i8
  store i8 %i.w, ptr %i.r, align 8, !tbaa !156
  %i.x = tail call ptr @agnameof(ptr noundef nonnull %1) #27
  tail call void @gvrender_comment(ptr noundef nonnull %0, ptr noundef %i.x) #27
  %i.y = load ptr, ptr @N_comment, align 8, !tbaa !167
  %i.z = tail call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.y, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %.not37 = icmp eq i8 %i.aa, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @gvrender_comment(ptr noundef nonnull %0, ptr noundef nonnull %i.z) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = load ptr, ptr @N_style, align 8, !tbaa !167
  %i.ac = tail call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.ab, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %.not38 = icmp eq i8 %i.ad, 0
  br i1 %.not38, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @parse_style(ptr noundef nonnull %i.ac) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0 = phi ptr [ @parse_style.parse, %bb.h ], [ %i.ag, %bb.j ] ; 2 uses
  %i.af = load ptr, ptr %.0, align 8, !tbaa !105  ; 2 uses
  %.not39 = icmp eq ptr %i.af, null
  br i1 %.not39, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(6) @.str.69) #31
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit44, label %bb.i, !llvm.loop !308

.loopexit:                                        ; preds = %bb.i, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !68 ; 4 uses
  %i.al = tail call noalias dereferenceable_or_null(432) ptr @calloc(i64 noundef 1, i64 noundef 432) #28 ; 23 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %gv_alloc.exit.i.i

bb.k:                                             ; preds = %.loopexit
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.45, i64 noundef 432) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_alloc.exit.i.i:                                ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39 ; 8 uses
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !46
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %gv_alloc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !tbaa.struct !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !tbaa.struct !48
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  %i.ax = load <2 x i32>, ptr %i.av, align 8, !tbaa !47
  store <2 x i32> %i.ax, ptr %i.aw, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  %i.az = load double, ptr %i.ay, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  store double %i.az, ptr %i.ba, align 8, !tbaa !49
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false), !tbaa.struct !48
  br label %push_obj_state.exit.i

bb.m:                                             ; preds = %gv_alloc.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  store i32 3, ptr %i.bg, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  store double 1.000000e+00, ptr %i.bh, align 8, !tbaa !49
  br label %push_obj_state.exit.i

push_obj_state.exit.i:                            ; preds = %bb.m, %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !147
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %1, ptr %i.bj, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 8, ptr %i.bk, align 8, !tbaa !148
  %i.bl = and i32 %i.ak, 16777216
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %push_obj_state.exit.i
  %i.bm = tail call ptr @agraphof(ptr noundef nonnull %1) #27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 234
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !182
  %i.br = icmp ugt i16 %i.bq, 2
  br i1 %i.br, label %bb.o, label %.sink.split.i

bb.o:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !183
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !110 ; 2 uses
  %i.bx = fmul double %i.bw, 7.200000e+01
  %i.by = fcmp ult double %i.bx, 0.000000e+00
  %2 = insertelement <2 x double> poison, double %i.bw, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> splat (double 7.200000e+01), <2 x double> <double 5.000000e-01, double -5.000000e-01>) ; 2 uses
  %5 = extractelement <2 x double> %4, i64 0
  %6 = extractelement <2 x double> %4, i64 1
  %.in.i = select i1 %i.by, double %6, double %5
  %i.bz = fptosi double %.in.i to i32
  %i.ca = sitofp i32 %i.bz to double
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi double [ %i.ca, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  store double %.sink.i, ptr %i.cb, align 8, !tbaa !316
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i, %push_obj_state.exit.i
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 136
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !317
  tail call fastcc void @initObjMapData(ptr noundef nonnull %0, ptr noundef %i.ce, ptr noundef nonnull %1)
  %i.cf = and i32 %i.ak, 4259840
  %.not180.i = icmp eq i32 %i.cf, 0
  br i1 %.not180.i, label %emit_begin_node.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !53
  %.not181.i = icmp eq ptr %i.ch, null
  br i1 %.not181.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 352
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = and i16 %i.cj, 1
  %.not182.i = icmp eq i16 %i.ck, 0
  br i1 %.not182.i, label %emit_begin_node.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cl = tail call i32 @shapeOf(ptr noundef nonnull %1) #27
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load <2 x double>, ptr %i.cn, align 8, !tbaa !110 ; 14 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0 ; 4 uses
  %i.cq = load ptr, ptr @N_style, align 8, !tbaa !167
  %i.cr = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.cq, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14
  %.not.i191.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i191.i, label %isFilled.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = tail call ptr @parse_style(ptr noundef nonnull %i.cr) ; 0 uses
  %i.cu = load ptr, ptr @parse_style.parse, align 16, !tbaa !105 ; 2 uses
  %.not89.i.i = icmp eq ptr %i.cu, null
  br i1 %.not89.i.i, label %isFilled.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.cv = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.cu, %bb.t ]
  %.011.i.i = phi i1 [ %spec.select.i.i, %.lr.ph.i.i ], [ false, %bb.t ]
  %.0610.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ @parse_style.parse, %bb.t ]
  %i.cw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cv, ptr noundef nonnull dereferenceable(7) @.str.65) #31
  %i.cx = icmp eq i32 %i.cw, 0
  %spec.select.i.i = select i1 %i.cx, i1 true, i1 %.011.i.i ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !105 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cz, null
  br i1 %.not8.i.i, label %isFilled.exit.i, label %.lr.ph.i.i, !llvm.loop !309

isFilled.exit.i:                                  ; preds = %.lr.ph.i.i, %bb.t, %bb.s
  %.2.i.i = phi i1 [ false, %bb.s ], [ false, %bb.t ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.da = and i32 %i.cl, -3
  %or.cond.i = icmp eq i32 %i.da, 1
  br i1 %or.cond.i, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %isFilled.exit.i
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !318 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !321 ; 3 uses
  %i.dg = icmp eq i64 %i.df, 4
  br i1 %i.dg, label %bb.v, label %isRect.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.di = load double, ptr %i.dh, align 8, !tbaa !322
  %i.dj = tail call double @fmod(double noundef %i.di, double noundef 9.000000e+01) #27
  %i.dk = tail call double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp olt double %i.dk, 5.000000e-01
  br i1 %i.dl, label %bb.w, label %isRect.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !323
  %i.do = tail call noundef i1 @llvm.is.fpclass.f64(double %i.dn, /* (pzero) */ i32 64)
  br i1 %i.do, label %isRect.exit.i, label %isRect.exit.thread.i

isRect.exit.i:                                    ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !324
  %i.dr = tail call noundef i1 @llvm.is.fpclass.f64(double %i.dq, /* (pzero) */ i32 64)
  br i1 %i.dr, label %bb.x, label %isRect.exit.thread.i

bb.x:                                             ; preds = %isRect.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !325
  %i.du = icmp ne i64 %i.dt, 0
  %or.cond3.i = select i1 %i.du, i1 true, i1 %.2.i.i
  br label %isRect.exit.thread.i

isRect.exit.thread.i:                             ; preds = %bb.x, %isRect.exit.i, %bb.w, %bb.v, %bb.u
  %.0167.i = phi i1 [ false, %isRect.exit.i ], [ %or.cond3.i, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ]
  %i.dv = and i32 %i.ak, 524288
  %.not183.i = icmp eq i32 %i.dv, 0
  %or.cond189.i = select i1 %.0167.i, i1 true, i1 %.not183.i
  br i1 %or.cond189.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %isRect.exit.thread.i
  %i.dw = icmp ult i64 %i.df, 3
  %spec.select190.i = select i1 %i.dw, i64 1, i64 %i.df ; 10 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !325
  %i.dz = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 1) ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !326 ; 4 uses
  %i.ec = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.70) #27 ; 2 uses
  %.not184.i = icmp eq ptr %i.ec, null
  br i1 %.not184.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ec, ptr noundef null, i32 noundef 10) #27, !inline_history !4
  %i.ee = trunc i64 %i.ed to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0166.i = phi i32 [ %i.ee, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %i.ef = add i32 %.0166.i, -61
  %or.cond7.i = icmp ult i32 %i.ef, -57
  %narrow.i = select i1 %or.cond7.i, i32 20, i32 %.0166.i ; 7 uses
  %i.eg = sext i32 %narrow.i to i64               ; 14 uses
  %i.eh = load i64, ptr %i.dx, align 8, !tbaa !325
  %i.ei = icmp ne i64 %i.eh, 0
  %or.cond9.i = select i1 %i.ei, i1 true, i1 %.2.i.i
  br i1 %or.cond9.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.ej, align 4, !tbaa !122
  %i.ek = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ac, label %gv_calloc.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.en = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.ab
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  %i.er = load <2 x double>, ptr %i.eq, align 8, !tbaa !110
  %i.es = load double, ptr %i.ep, align 8, !tbaa !327
  %i.et = fmul <2 x double> %i.er, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ev = fsub <2 x double> %i.co, %i.eu
  store <2 x double> %i.ev, ptr %i.ek, align 8, !tbaa !110
  %i.ew = fadd double %i.cp, %i.es
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store double %i.ew, ptr %i.ex, align 8, !tbaa !121
  %i.ey = extractelement <2 x double> %i.et, i64 0
  br label %.loopexit.sink.split.i

bb.ad:                                            ; preds = %bb.aa
  %i.ez = load i64, ptr %i.de, align 8, !tbaa !321 ; 4 uses
  %i.fa = icmp ult i64 %i.ez, 3
  br i1 %i.fa, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !324
  %i.fd = tail call noundef i1 @llvm.is.fpclass.f64(double %i.fc, /* (pzero) */ i32 64)
  br i1 %i.fd, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !323
  %i.fg = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ff, /* (pzero) */ i32 64)
  br i1 %i.fg, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fh = load i32, ptr %i.dd, align 8, !tbaa !328
  %.not186.i = icmp eq i32 %i.fh, 0
  %i.fi = getelementptr inbounds nuw i8, ptr %i.al, i64 356 ; 2 uses
  br i1 %.not186.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.fi, align 4, !tbaa !122
  %i.fj = tail call fastcc ptr @gv_calloc(i64 noundef 2, i64 noundef 16) ; 4 uses
  store double %i.cp, ptr %i.fj, align 8, !tbaa !121
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = extractelement <2 x double> %i.co, i64 1
  store double %i.fl, ptr %i.fk, align 8, !tbaa !126
  %.idx187.i = shl i64 %i.dz, 5
  %i.fm = getelementptr i8, ptr %i.eb, i64 %.idx187.i ; 2 uses
end_hunk_0
begin_hunk_1_@emit_edge:bb.a
  %i.fg = phi ptr [ %i.es, %bb.ab ], [ %i.fd, %agxbclear.exit.thread.i ]
  %i.fh = phi ptr [ %i.ff, %bb.ab ], [ %18, %agxbclear.exit.thread.i ]
  call void @gvrender_comment(ptr noundef nonnull %0, ptr noundef %i.fh) #27
  %.val41 = load i8, ptr %i.fg, align 1, !tbaa !14
  %i.fi = icmp eq i8 %.val41, -1
  br i1 %i.fi, label %bb.ac, label %agxbfree.exit

bb.ac:                                            ; preds = %agxbuse.exit
  %.val = load ptr, ptr %18, align 8
  call void @free(ptr noundef %.val) #27
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %agxbuse.exit, %bb.ac
  %i.fj = load ptr, ptr @E_comment, align 8, !tbaa !167
  %i.fk = call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.fj, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !14
  %.not38 = icmp eq i8 %i.fl, 0
  br i1 %.not38, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %agxbfree.exit
  call void @gvrender_comment(ptr noundef nonnull %0, ptr noundef nonnull %i.fk) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %agxbfree.exit
  %i.fm = load ptr, ptr @E_style, align 8, !tbaa !167
  %i.fn = call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.fm, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !14
  %.not39 = icmp ne i8 %i.fo, 0                   ; 6 uses
  br i1 %.not39, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.fp = call ptr @parse_style(ptr noundef nonnull %i.fn) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %.035 = phi ptr [ @parse_style.parse, %bb.af ], [ %i.fr, %bb.ah ] ; 2 uses
  %i.fq = load ptr, ptr %.035, align 8, !tbaa !105 ; 2 uses
  %.not40 = icmp eq ptr %i.fq, null
  br i1 %.not40, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fr = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.fs = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.fq, ptr noundef nonnull dereferenceable(6) @.str.69) #31
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.on, label %bb.ag, !llvm.loop !336

.critedge:                                        ; preds = %bb.ag, %bb.ae
  %.036 = phi ptr [ null, %bb.ae ], [ @parse_style.parse, %bb.ag ] ; 6 uses
  %i.fu = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #27
  %i.fv = call ptr @setColorScheme(ptr noundef %i.fu) #27 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !68 ; 9 uses
  %i.fy = call noalias dereferenceable_or_null(432) ptr @calloc(i64 noundef 1, i64 noundef 432) #28 ; 69 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.ai, label %gv_alloc.exit.i.i

bb.ai:                                            ; preds = %.critedge
  %i.ga = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ga, ptr noundef nonnull @.str.45, i64 noundef 432) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_alloc.exit.i.i:                                ; preds = %.critedge
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !39 ; 8 uses
  store ptr %i.gd, ptr %i.fy, align 8, !tbaa !46
  store ptr %i.fy, ptr %i.gc, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %gv_alloc.exit.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ge, ptr noundef nonnull align 8 dereferenceable(40) %i.gf, i64 40, i1 false), !tbaa.struct !48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gg, ptr noundef nonnull align 8 dereferenceable(40) %i.gh, i64 40, i1 false), !tbaa.struct !48
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 168
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 168
  %i.gk = load <2 x i32>, ptr %i.gi, align 8, !tbaa !47
  store <2 x i32> %i.gk, ptr %i.gj, align 8, !tbaa !47
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 176
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !49
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 176
  store double %i.gm, ptr %i.gn, align 8, !tbaa !49
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 152
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !50
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fy, i64 152
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !50
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fy, i64 112
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gr, ptr noundef nonnull align 8 dereferenceable(40) %i.gs, i64 40, i1 false), !tbaa.struct !48
  br label %push_obj_state.exit.i

bb.ak:                                            ; preds = %gv_alloc.exit.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 168
  store i32 3, ptr %i.gt, align 8, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fy, i64 176
  store double 1.000000e+00, ptr %i.gu, align 8, !tbaa !49
  br label %push_obj_state.exit.i

push_obj_state.exit.i:                            ; preds = %bb.ak, %bb.aj
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 3, ptr %i.gv, align 8, !tbaa !147
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr %1, ptr %i.gw, align 8, !tbaa !14
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store i32 9, ptr %i.gx, align 8, !tbaa !148
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 120
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !378 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ha, null
  br i1 %.not.i74, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %push_obj_state.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 106
  %i.hc = load i8, ptr %i.hb, align 2, !tbaa !380, !range !145, !noundef !181
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.he = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.73) #27
  %i.hf = call zeroext i1 @mapbool(ptr noundef %i.he) #27
  br i1 %i.hf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fy, i64 352 ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 8
  %i.hi = or i16 %i.hh, 512
  store i16 %i.hi, ptr %i.hg, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %push_obj_state.exit.i
  br i1 %.not39, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.hj = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !191
  %.not283.i = icmp eq ptr %i.hl, null
  br i1 %.not283.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @gvrender_set_style(ptr noundef nonnull %0, ptr noundef nonnull %.036) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.hm = load ptr, ptr @E_penwidth, align 8, !tbaa !167 ; 2 uses
  %.not284.i = icmp eq ptr %i.hm, null
  br i1 %.not284.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hn = call ptr @agxget(ptr noundef nonnull %1, ptr noundef nonnull %i.hm) #27 ; 2 uses
  %.not285.i = icmp eq ptr %i.hn, null
  br i1 %.not285.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !14
  %.not286.i = icmp eq i8 %i.ho, 0
  br i1 %.not286.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = load ptr, ptr @E_penwidth, align 8, !tbaa !167
  %i.hq = call double @late_double(ptr noundef nonnull %1, ptr noundef %i.hp, double noundef 1.000000e+00, double noundef 0.000000e+00) #27
  call void @gvrender_set_penwidth(ptr noundef nonnull %0, double noundef %i.hq) #27
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %i.hr = and i32 %i.fx, 16777216
  %.not287.i = icmp eq i32 %i.hr, 0
  br i1 %.not287.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hs = load i32, ptr %1, align 8
  %i.ht = and i32 %i.hs, 3
  %i.hu = icmp eq i32 %i.ht, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hw = select i1 %i.hu, ptr %1, ptr %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !176
  %i.hz = call ptr @agraphof(ptr noundef %i.hy) #27
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !87
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 234
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !182
  %i.ie = icmp ugt i16 %i.id, 2
  br i1 %i.ie, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.if = load i32, ptr %1, align 8
  %i.ig = and i32 %i.if, 3                        ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 3
  %i.ii = select i1 %i.ih, ptr %1, ptr %i.hv
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 56
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !176
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !87
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 176
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !183
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !110 ; 2 uses
  %i.ir = fmul double %i.iq, 7.200000e+01
  %i.is = fcmp ult double %i.ir, 0.000000e+00
  %19 = insertelement <2 x double> poison, double %i.iq, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> splat (double 7.200000e+01), <2 x double> <double 5.000000e-01, double -5.000000e-01>) ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0
  %23 = extractelement <2 x double> %21, i64 1
  %.in.i80 = select i1 %i.is, double %23, double %22
  %i.it = fptosi double %.in.i80 to i32
  %i.iu = sitofp i32 %i.it to double
  %i.iv = getelementptr inbounds nuw i8, ptr %i.fy, i64 200
  store double %i.iu, ptr %i.iv, align 8, !tbaa !381
  %i.iw = icmp eq i32 %i.ig, 2
  %i.ix = select i1 %i.iw, i64 56, i64 -8
  %i.iy = getelementptr inbounds i8, ptr %1, i64 %i.ix
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !176
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !87
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 176
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !183
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load double, ptr %i.je, align 8, !tbaa !110 ; 2 uses
  %i.jg = fmul double %i.jf, 7.200000e+01
  %i.jh = fcmp ult double %i.jg, 0.000000e+00
  %24 = insertelement <2 x double> poison, double %i.jf, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> splat (double 7.200000e+01), <2 x double> <double 5.000000e-01, double -5.000000e-01>) ; 2 uses
  %27 = extractelement <2 x double> %26, i64 0
  %28 = extractelement <2 x double> %26, i64 1
  %.in288.i = select i1 %i.jh, double %28, double %27
  %i.ji = fptosi double %.in288.i to i32
  %i.jj = sitofp i32 %i.ji to double
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fy, i64 208
  store double %i.jj, ptr %i.jk, align 8, !tbaa !382
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fy, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, i8 0, i64 16, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.av
  %i.jm = and i32 %i.fx, 32768
  %.not289.i = icmp eq i32 %i.jm, 0
  br i1 %.not289.i, label %bb.bi, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jn = load ptr, ptr %i.b, align 8, !tbaa !87  ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 120
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !378 ; 2 uses
  %.not290.i = icmp eq ptr %i.jp, null
  br i1 %.not290.i, label %._crit_edge423.i, label %bb.bb

._crit_edge423.i:                                 ; preds = %bb.ba
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 216
  %.pre.i79 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !69
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !165 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.fy, i64 216
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !69
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge423.i
  %i.js = phi ptr [ %.pre.i79, %._crit_edge423.i ], [ %i.jq, %bb.bb ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.fy, i64 224 ; 2 uses
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !383
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fy, i64 240 ; 2 uses
  store ptr %i.js, ptr %i.ju, align 8, !tbaa !384
  %i.jv = getelementptr inbounds nuw i8, ptr %i.fy, i64 232 ; 2 uses
  store ptr %i.js, ptr %i.jv, align 8, !tbaa !385
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jn, i64 144
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !379 ; 2 uses
  %.not291.i = icmp eq ptr %i.jx, null
  br i1 %.not291.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !165
  store ptr %i.jy, ptr %i.jt, align 8, !tbaa !383
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jn, i64 136
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !386 ; 2 uses
  %.not292.i = icmp eq ptr %i.ka, null
  br i1 %.not292.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !165
  store ptr %i.kb, ptr %i.jv, align 8, !tbaa !385
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jn, i64 128
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !387 ; 2 uses
  %.not293.i = icmp eq ptr %i.kd, null
  br i1 %.not293.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !165
  store ptr %i.ke, ptr %i.ju, align 8, !tbaa !384
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.az
  %i.kf = and i32 %i.fx, 65536
  %.not294.i = icmp eq i32 %i.kf, 0
  br i1 %.not294.i, label %bb.cw, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %i.kg = call ptr @getObjId(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %14)
  %i.kh = call ptr @strdup_and_subst_obj(ptr noundef %i.kg, ptr noundef nonnull %1) #27
  %i.ki = getelementptr inbounds nuw i8, ptr %i.fy, i64 256
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !52
  %i.kj = getelementptr inbounds nuw i8, ptr %14, i64 31
  %.val358.i = load i8, ptr %i.kj, align 1, !tbaa !14
  %i.kk = icmp eq i8 %.val358.i, -1
  br i1 %i.kk, label %bb.bk, label %agxbfree.exit.i

bb.bk:                                            ; preds = %bb.bj
  %.val357.i = load ptr, ptr %14, align 8
  call void @free(ptr noundef %.val357.i) #27
  br label %agxbfree.exit.i

agxbfree.exit.i:                                  ; preds = %bb.bk, %bb.bj
  %i.kl = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.52) #27 ; 3 uses
  %.not295.i = icmp eq ptr %i.kl, null
  br i1 %.not295.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %agxbfree.exit.i
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !14
  %.not296.i = icmp eq i8 %i.km, 0
  br i1 %.not296.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl, %agxbfree.exit.i
  %i.kn = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.55) #27 ; 3 uses
  %.not297.i = icmp eq ptr %i.kn, null
  br i1 %.not297.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !14
  %.not298.i = icmp eq i8 %i.ko, 0
  br i1 %.not298.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %.0245.i = phi ptr [ %i.kl, %bb.bl ], [ %i.kn, %bb.bn ]
  %i.kp = call ptr @strdup_and_subst_obj(ptr noundef nonnull %.0245.i, ptr noundef nonnull %1) #27
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %.0248.i = phi ptr [ %i.kp, %bb.bo ], [ null, %bb.bn ], [ null, %bb.bm ] ; 13 uses
  %i.kq = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.74) #27 ; 3 uses
  %.not299.i = icmp eq ptr %i.kq, null
  br i1 %.not299.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !14
  %.not300.i = icmp eq i8 %i.kr, 0
  br i1 %.not300.i, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ks = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.75) #27 ; 3 uses
  %.not301.i = icmp eq ptr %i.ks, null
  br i1 %.not301.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !14
  %.not302.i = icmp eq i8 %i.kt, 0
  br i1 %.not302.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %.1.i = phi ptr [ %i.kq, %bb.bq ], [ %i.ks, %bb.bs ]
  %i.ku = call ptr @strdup_and_subst_obj(ptr noundef nonnull %.1.i, ptr noundef nonnull %1) #27
  br label %.sink.split.i

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %.not303.i = icmp eq ptr %.0248.i, null
  br i1 %.not303.i, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kv = call noalias ptr @strdup(ptr noundef nonnull readonly %.0248.i) #27 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %bb.bw, label %.sink.split.i

bb.bw:                                            ; preds = %bb.bv
  %i.kx = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ky = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0248.i) #31
  %i.kz = add i64 %i.ky, 1
  %i.la = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kx, ptr noundef nonnull @.str.45, i64 noundef %i.kz) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

.sink.split.i:                                    ; preds = %bb.bv, %bb.bt
  %.sink.i = phi ptr [ %i.ku, %bb.bt ], [ %i.kv, %bb.bv ]
  %i.lb = getelementptr inbounds nuw i8, ptr %i.fy, i64 248
  store ptr %.sink.i, ptr %i.lb, align 8, !tbaa !53
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split.i, %bb.bu
  %i.lc = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.76) #27 ; 3 uses
  %.not304.i = icmp eq ptr %i.lc, null
  br i1 %.not304.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !14
  %.not305.i = icmp eq i8 %i.ld, 0
  br i1 %.not305.i, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.le = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.77) #27 ; 3 uses
  %.not306.i = icmp eq ptr %i.le, null
  br i1 %.not306.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !14
  %.not307.i = icmp eq i8 %i.lf, 0
  br i1 %.not307.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %.2.i = phi ptr [ %i.lc, %bb.by ], [ %i.le, %bb.ca ]
  %i.lg = call ptr @strdup_and_subst_obj(ptr noundef nonnull %.2.i, ptr noundef nonnull %1) #27
  br label %.sink.split491.i

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.not308.i = icmp eq ptr %.0248.i, null
  br i1 %.not308.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
end_hunk_1
