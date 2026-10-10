Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@gvrender_end_anchor

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
  %i.bz = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> splat (double 7.200000e+01), <2 x double> <double 5.000000e-01, double -5.000000e-01>) ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = extractelement <2 x double> %i.cb, i64 1
  %.in.i = select i1 %i.by, double %i.cd, double %i.cc
  %i.ce = fptosi double %.in.i to i32
  %i.cf = sitofp i32 %i.ce to double
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi double [ %i.cf, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  store double %.sink.i, ptr %i.cg, align 8, !tbaa !316
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i, %push_obj_state.exit.i
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !317
  tail call fastcc void @initObjMapData(ptr noundef nonnull %0, ptr noundef %i.cj, ptr noundef nonnull %1)
  %i.ck = and i32 %i.ak, 4259840
  %.not180.i = icmp eq i32 %i.ck, 0
  br i1 %.not180.i, label %emit_begin_node.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !53
  %.not181.i = icmp eq ptr %i.cm, null
  br i1 %.not181.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.al, i64 352
  %i.co = load i16, ptr %i.cn, align 8
  %i.cp = and i16 %i.co, 1
  %.not182.i = icmp eq i16 %i.cp, 0
  br i1 %.not182.i, label %emit_begin_node.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cq = tail call i32 @shapeOf(ptr noundef nonnull %1) #27
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load <2 x double>, ptr %i.cs, align 8, !tbaa !110 ; 14 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0 ; 4 uses
  %i.cv = load ptr, ptr @N_style, align 8, !tbaa !167
  %i.cw = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.cv, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %.not.i191.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i191.i, label %isFilled.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = tail call ptr @parse_style(ptr noundef nonnull %i.cw) ; 0 uses
  %i.cz = load ptr, ptr @parse_style.parse, align 16, !tbaa !105 ; 2 uses
  %.not89.i.i = icmp eq ptr %i.cz, null
  br i1 %.not89.i.i, label %isFilled.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.da = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cz, %bb.t ]
  %.011.i.i = phi i1 [ %spec.select.i.i, %.lr.ph.i.i ], [ false, %bb.t ]
  %.0610.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ @parse_style.parse, %bb.t ]
  %i.db = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.da, ptr noundef nonnull dereferenceable(7) @.str.65) #31
  %i.dc = icmp eq i32 %i.db, 0
  %spec.select.i.i = select i1 %i.dc, i1 true, i1 %.011.i.i ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !105 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.de, null
  br i1 %.not8.i.i, label %isFilled.exit.i, label %.lr.ph.i.i, !llvm.loop !309

isFilled.exit.i:                                  ; preds = %.lr.ph.i.i, %bb.t, %bb.s
  %.2.i.i = phi i1 [ false, %bb.s ], [ false, %bb.t ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.df = and i32 %i.cq, -3
  %or.cond.i = icmp eq i32 %i.df, 1
  br i1 %or.cond.i, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %isFilled.exit.i
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !318 ; 10 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !321 ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 4
  br i1 %i.dl, label %bb.v, label %isRect.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !322
  %i.do = tail call double @fmod(double noundef %i.dn, double noundef 9.000000e+01) #27
  %i.dp = tail call double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp olt double %i.dp, 5.000000e-01
  br i1 %i.dq, label %bb.w, label %isRect.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !323
  %i.dt = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ds, /* (pzero) */ i32 64)
  br i1 %i.dt, label %isRect.exit.i, label %isRect.exit.thread.i

isRect.exit.i:                                    ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dv = load double, ptr %i.du, align 8, !tbaa !324
  %i.dw = tail call noundef i1 @llvm.is.fpclass.f64(double %i.dv, /* (pzero) */ i32 64)
  br i1 %i.dw, label %bb.x, label %isRect.exit.thread.i

bb.x:                                             ; preds = %isRect.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !325
  %i.dz = icmp ne i64 %i.dy, 0
  %or.cond3.i = select i1 %i.dz, i1 true, i1 %.2.i.i
  br label %isRect.exit.thread.i

isRect.exit.thread.i:                             ; preds = %bb.x, %isRect.exit.i, %bb.w, %bb.v, %bb.u
  %.0167.i = phi i1 [ false, %isRect.exit.i ], [ %or.cond3.i, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ]
  %i.ea = and i32 %i.ak, 524288
  %.not183.i = icmp eq i32 %i.ea, 0
  %or.cond189.i = select i1 %.0167.i, i1 true, i1 %.not183.i
  br i1 %or.cond189.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %isRect.exit.thread.i
  %i.eb = icmp ult i64 %i.dk, 3
  %spec.select190.i = select i1 %i.eb, i64 1, i64 %i.dk ; 10 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !325
  %i.ee = tail call i64 @llvm.umax.i64(i64 %i.ed, i64 1) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !326 ; 4 uses
  %i.eh = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.70) #27 ; 2 uses
  %.not184.i = icmp eq ptr %i.eh, null
  br i1 %.not184.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.eh, ptr noundef null, i32 noundef 10) #27, !inline_history !4
  %i.ej = trunc i64 %i.ei to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0166.i = phi i32 [ %i.ej, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %i.ek = add i32 %.0166.i, -61
  %or.cond7.i = icmp ult i32 %i.ek, -57
  %narrow.i = select i1 %or.cond7.i, i32 20, i32 %.0166.i ; 7 uses
  %i.el = sext i32 %narrow.i to i64               ; 14 uses
  %i.em = load i64, ptr %i.ec, align 8, !tbaa !325
  %i.en = icmp ne i64 %i.em, 0
  %or.cond9.i = select i1 %i.en, i1 true, i1 %.2.i.i
  br i1 %or.cond9.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.eo, align 4, !tbaa !122
  %i.ep = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ac, label %gv_calloc.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.es = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.ab
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ew = load <2 x double>, ptr %i.ev, align 8, !tbaa !110
  %i.ex = load double, ptr %i.eu, align 8, !tbaa !327
  %i.ey = fmul <2 x double> %i.ew, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fa = fsub <2 x double> %i.ct, %i.ez
  store <2 x double> %i.fa, ptr %i.ep, align 8, !tbaa !110
  %i.fb = fadd double %i.cu, %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store double %i.fb, ptr %i.fc, align 8, !tbaa !121
  %i.fd = extractelement <2 x double> %i.ey, i64 0
  br label %.loopexit.sink.split.i

bb.ad:                                            ; preds = %bb.aa
  %i.fe = load i64, ptr %i.dj, align 8, !tbaa !321 ; 4 uses
  %i.ff = icmp ult i64 %i.fe, 3
  br i1 %i.ff, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.fg = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !324
  %i.fi = tail call noundef i1 @llvm.is.fpclass.f64(double %i.fh, /* (pzero) */ i32 64)
  br i1 %i.fi, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !323
  %i.fl = tail call noundef i1 @llvm.is.fpclass.f64(double %i.fk, /* (pzero) */ i32 64)
  br i1 %i.fl, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fm = load i32, ptr %i.di, align 8, !tbaa !328
  %.not186.i = icmp eq i32 %i.fm, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 356 ; 2 uses
  br i1 %.not186.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.fn, align 4, !tbaa !122
  %i.fo = tail call fastcc ptr @gv_calloc(i64 noundef 2, i64 noundef 16) ; 4 uses
  store double %i.cu, ptr %i.fo, align 8, !tbaa !121
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = extractelement <2 x double> %i.ct, i64 1
  store double %i.fq, ptr %i.fp, align 8, !tbaa !126
  %.idx187.i = shl i64 %i.ee, 5
  %i.fr = getelementptr i8, ptr %i.eg, i64 %.idx187.i ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -16
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !121
  %i.fu = fadd double %i.cu, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store double %i.fu, ptr %i.fv, align 8, !tbaa !121
  %i.fw = getelementptr i8, ptr %i.fr, i64 -8
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !126
  br label %.loopexit.sink.split.i

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %i.fn, align 4, !tbaa !122
  %.idx.i = shl i64 %i.ee, 5
  %i.fy = getelementptr i8, ptr %i.eg, i64 %.idx.i ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -16
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !121
  %i.gb = getelementptr i8, ptr %i.fy, i64 -8
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !126
  %i.gd = tail call fastcc ptr @pEllipse(double noundef %i.ga, double noundef %i.gc, i64 noundef %i.el) ; 6 uses
  %.not212.i = icmp eq i32 %narrow.i, 0
  br i1 %.not212.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ai
  %min.iters.check77 = icmp ult i32 %narrow.i, 4
  br i1 %min.iters.check77, label %.lr.ph.i.preheader88, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.preheader
  %n.vec79 = and i64 %i.el, -2                    ; 3 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next84, %vector.body80 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %index81 ; 2 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %index81
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %wide.load82 = load <2 x double>, ptr %i.ge, align 8
  %wide.load83 = load <2 x double>, ptr %i.gg, align 8
  %i.gh = fadd <2 x double> %i.ct, %wide.load82
  %i.gi = fadd <2 x double> %i.ct, %wide.load83
  store <2 x double> %i.gh, ptr %i.ge, align 8
  store <2 x double> %i.gi, ptr %i.gg, align 8
  %index.next84 = add nuw i64 %index81, 2         ; 2 uses
  %i.gj = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.gj, label %middle.block85, label %vector.body80, !llvm.loop !310

middle.block85:                                   ; preds = %vector.body80
  %cmp.n86 = icmp eq i64 %n.vec79, %i.el
  br i1 %cmp.n86, label %.loopexit.i, label %.lr.ph.i.preheader88

.lr.ph.i.preheader88:                             ; preds = %.lr.ph.i.preheader, %middle.block85
  %.0165211.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec79, %middle.block85 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader88, %.lr.ph.i
  %.0165211.i = phi i64 [ %i.gn, %.lr.ph.i ], [ %.0165211.i.ph, %.lr.ph.i.preheader88 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %.0165211.i ; 2 uses
  %i.gl = load <2 x double>, ptr %i.gk, align 8, !tbaa !110
  %i.gm = fadd <2 x double> %i.ct, %i.gl
  store <2 x double> %i.gm, ptr %i.gk, align 8, !tbaa !110
  %i.gn = add nuw i64 %.0165211.i, 1              ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.gn, %i.el
  br i1 %exitcond216.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !311

bb.aj:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.go = add i64 %i.ee, -1
  %i.gp = mul i64 %i.fe, %i.go                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 2, ptr %i.gq, align 4, !tbaa !122
  %.not185.i = icmp ult i64 %i.fe, %i.el
  br i1 %.not185.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gr = udiv i64 %i.fe, %i.el                   ; 2 uses
  %mul.ov.i.i = icmp slt i32 %narrow.i, 0
  br i1 %mul.ov.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gs, ptr noundef nonnull @.str.47, i64 noundef %i.el, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.gu = tail call noalias ptr @calloc(i64 noundef %i.el, i64 noundef 16) #28 ; 6 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.an, label %gv_calloc.exit192.preheader.i

gv_calloc.exit192.preheader.i:                    ; preds = %bb.am
  %invariant.gep.i = getelementptr [16 x i8], ptr %i.eg, i64 %i.gp ; 3 uses
  %i.gw = icmp eq i32 %narrow.i, 1
  br i1 %i.gw, label %gv_calloc.exit192.i.epil.preheader, label %gv_calloc.exit192.preheader.i.new

gv_calloc.exit192.preheader.i.new:                ; preds = %gv_calloc.exit192.preheader.i
  %unroll_iter = and i64 %i.el, 2147483646
  br label %gv_calloc.exit192.i

bb.an:                                            ; preds = %bb.am
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gy = shl nuw nsw i64 %i.el, 4
  %i.gz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gx, ptr noundef nonnull @.str.45, i64 noundef %i.gy) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit192.i:                              ; preds = %gv_calloc.exit192.i, %gv_calloc.exit192.preheader.i.new
  %.0163207.i = phi i64 [ 0, %gv_calloc.exit192.preheader.i.new ], [ %i.hj, %gv_calloc.exit192.i ] ; 3 uses
  %.0164206.i = phi i64 [ 0, %gv_calloc.exit192.preheader.i.new ], [ %i.hi, %gv_calloc.exit192.i ] ; 2 uses
  %niter = phi i64 [ 0, %gv_calloc.exit192.preheader.i.new ], [ %niter.next.1, %gv_calloc.exit192.i ]
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.0164206.i
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.0163207.i
  %i.hb = load <2 x double>, ptr %gep.i, align 8, !tbaa !110
  %i.hc = fadd <2 x double> %i.ct, %i.hb
  store <2 x double> %i.hc, ptr %i.ha, align 8, !tbaa !110
  %i.hd = add i64 %.0164206.i, %i.gr              ; 2 uses
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.hd
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.0163207.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load <2 x double>, ptr %gep.i.1, align 8, !tbaa !110
  %i.hh = fadd <2 x double> %i.ct, %i.hg
  store <2 x double> %i.hh, ptr %i.hf, align 8, !tbaa !110
  %i.hi = add i64 %i.hd, %i.gr                    ; 2 uses
  %i.hj = add nuw i64 %.0163207.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit90.unr-lcssa, label %gv_calloc.exit192.i, !llvm.loop !312

bb.ao:                                            ; preds = %bb.aj
  %mul.ov.i195.i = icmp ugt i64 %spec.select190.i, 1152921504606846975
  br i1 %mul.ov.i195.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.47, i64 noundef %spec.select190.i, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hm = tail call noalias ptr @calloc(i64 noundef %spec.select190.i, i64 noundef 16) #28 ; 6 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.ar, label %gv_calloc.exit196.preheader.i

gv_calloc.exit196.preheader.i:                    ; preds = %bb.aq
  %invariant.gep208.i = getelementptr [16 x i8], ptr %i.eg, i64 %i.gp ; 3 uses
  %min.iters.check = icmp ult i64 %spec.select190.i, 4
  br i1 %min.iters.check, label %gv_calloc.exit196.i.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %gv_calloc.exit196.preheader.i
  %n.vec = and i64 %spec.select190.i, 1152921504606846974 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ho = or disjoint i64 %index, 1               ; 2 uses
  %i.hp = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %index
  %i.hq = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %i.ho
  %wide.load = load <2 x double>, ptr %i.hp, align 8
  %wide.load75 = load <2 x double>, ptr %i.hq, align 8
  %i.hr = fadd <2 x double> %i.ct, %wide.load
  %i.hs = fadd <2 x double> %i.ct, %wide.load75
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %index
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.ho
  store <2 x double> %i.hr, ptr %i.ht, align 8
  store <2 x double> %i.hs, ptr %i.hu, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %gv_calloc.exit196.i.preheader.a, label %vector.body, !llvm.loop !313

gv_calloc.exit196.i.preheader.a:                  ; preds = %vector.body
  %lcmp.mod93.not = icmp eq i64 %spec.select190.i, %n.vec
  br i1 %lcmp.mod93.not, label %.loopexit.i, label %gv_calloc.exit196.i.prol.loopexit

gv_calloc.exit196.i.prol.loopexit:                ; preds = %gv_calloc.exit196.preheader.i, %gv_calloc.exit196.i.preheader.a
  %.0210.i.unr = phi i64 [ 0, %gv_calloc.exit196.preheader.i ], [ %n.vec, %gv_calloc.exit196.i.preheader.a ]
  br label %gv_calloc.exit196.i

bb.ar:                                            ; preds = %bb.aq
  %i.hw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hx = shl nuw i64 %spec.select190.i, 4
  %i.hy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hw, ptr noundef nonnull @.str.45, i64 noundef %i.hx) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit196.i:                              ; preds = %gv_calloc.exit196.i.prol.loopexit, %gv_calloc.exit196.i
  %.0210.i = phi i64 [ %i.ic, %gv_calloc.exit196.i ], [ %.0210.i.unr, %gv_calloc.exit196.i.prol.loopexit ] ; 3 uses
  %gep209.i.1 = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %.0210.i
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %.0210.i
  %i.ia = load <2 x double>, ptr %gep209.i.1, align 8, !tbaa !110
  %i.ib = fadd <2 x double> %i.ct, %i.ia
  store <2 x double> %i.ib, ptr %i.hz, align 8, !tbaa !110
  %i.ic = add nuw nsw i64 %.0210.i, 1             ; 2 uses
  %exitcond215.not.i.1 = icmp eq i64 %i.ic, %spec.select190.i
  br i1 %exitcond215.not.i.1, label %.loopexit.i, label %gv_calloc.exit196.i, !llvm.loop !314

.thread.i:                                        ; preds = %isRect.exit.thread.i, %isFilled.exit.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.id, align 4, !tbaa !122
  %i.ie = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.as, label %gv_calloc.exit198.i

bb.as:                                            ; preds = %.thread.i
  %i.ig = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ih = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ig, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit198.i:                              ; preds = %.thread.i
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  %i.ik = load <2 x double>, ptr %i.ij, align 8, !tbaa !110
  %i.il = fmul <2 x double> %i.ik, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.in = fsub <2 x double> %i.ct, %i.im
  store <2 x double> %i.in, ptr %i.ie, align 8, !tbaa !110
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 112
  %i.ip = load double, ptr %i.io, align 8, !tbaa !186
  %i.iq = fadd double %i.cu, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store double %i.iq, ptr %i.ir, align 8, !tbaa !121
  %i.is = extractelement <2 x double> %i.il, i64 0
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %gv_calloc.exit198.i, %bb.ah, %gv_calloc.exit.i
  %.sink232.i = phi double [ %i.fd, %gv_calloc.exit.i ], [ %i.fx, %bb.ah ], [ %i.is, %gv_calloc.exit198.i ]
  %.sink231.i = phi ptr [ %i.ep, %gv_calloc.exit.i ], [ %i.fo, %bb.ah ], [ %i.ie, %gv_calloc.exit198.i ] ; 2 uses
  %i.it = extractelement <2 x double> %i.ct, i64 1
  %i.iu = fadd double %i.it, %.sink232.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.sink231.i, i64 24
  store double %i.iu, ptr %i.iv, align 8, !tbaa !126
  br label %.loopexit.i

.loopexit.i.loopexit90.unr-lcssa:                 ; preds = %gv_calloc.exit192.i
  %i.iw = and i32 %narrow.i, 1
  %lcmp.mod.not = icmp eq i32 %i.iw, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %gv_calloc.exit192.i.epil.preheader

gv_calloc.exit192.i.epil.preheader:               ; preds = %.loopexit.i.loopexit90.unr-lcssa, %gv_calloc.exit192.preheader.i
  %.0163207.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hj, %.loopexit.i.loopexit90.unr-lcssa ]
  %.0164206.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hi, %.loopexit.i.loopexit90.unr-lcssa ]
  %lcmp.mod91 = trunc i32 %narrow.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %gep.i.epil = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.0164206.i.epil.init
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.0163207.i.epil.init
  %i.iy = load <2 x double>, ptr %gep.i.epil, align 8, !tbaa !110
  %i.iz = fadd <2 x double> %i.ct, %i.iy
  store <2 x double> %i.iz, ptr %i.ix, align 8, !tbaa !110
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %gv_calloc.exit192.i.epil.preheader, %.loopexit.i.loopexit90.unr-lcssa, %gv_calloc.exit196.i, %.lr.ph.i, %gv_calloc.exit196.i.preheader.a, %middle.block85, %.loopexit.sink.split.i, %bb.ai
  %.2172.i = phi i64 [ 0, %bb.ai ], [ 2, %.loopexit.sink.split.i ], [ %i.el, %middle.block85 ], [ %spec.select190.i, %gv_calloc.exit196.i.preheader.a ], [ %i.el, %.lr.ph.i ], [ %spec.select190.i, %gv_calloc.exit196.i ], [ %i.el, %.loopexit.i.loopexit90.unr-lcssa ], [ %i.el, %gv_calloc.exit192.i.epil.preheader ] ; 2 uses
  %.2.i = phi ptr [ %i.gd, %bb.ai ], [ %.sink231.i, %.loopexit.sink.split.i ], [ %i.gd, %middle.block85 ], [ %i.hm, %gv_calloc.exit196.i.preheader.a ], [ %i.gd, %.lr.ph.i ], [ %i.hm, %gv_calloc.exit196.i ], [ %i.gu, %.loopexit.i.loopexit90.unr-lcssa ], [ %i.gu, %gv_calloc.exit192.i.epil.preheader ] ; 3 uses
  %i.ja = and i32 %i.ak, 8192
  %.not188.i = icmp eq i32 %i.ja, 0
  br i1 %.not188.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit.i
  %i.jb = tail call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef %.2.i, ptr noundef %.2.i, i64 noundef %.2172.i) #27 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.al, i64 368
  store ptr %.2.i, ptr %i.jc, align 8, !tbaa !65
  %i.jd = getelementptr inbounds nuw i8, ptr %i.al, i64 360
  store i64 %.2172.i, ptr %i.jd, align 8, !tbaa !123
  br label %emit_begin_node.exit

emit_begin_node.exit:                             ; preds = %bb.p, %bb.r, %bb.au
  %i.je = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #27
  %i.jf = tail call ptr @setColorScheme(ptr noundef %i.je) #27
  store ptr %i.jf, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @gvrender_begin_node(ptr noundef nonnull %0) #27
  %i.jg = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !315
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !332
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !334
  tail call void %i.jm(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  %i.jn = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 144
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !335 ; 3 uses
  %.not40 = icmp eq ptr %i.jp, null
  br i1 %.not40, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %emit_begin_node.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 105
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !187, !range !145, !noundef !181
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @emit_label(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull %i.jp) #27
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %emit_begin_node.exit
  tail call void @gvrender_end_node(ptr noundef nonnull %0) #27
  %i.jt = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  %i.ju = tail call ptr @setColorScheme(ptr noundef %i.jt) #27
  tail call void @free(ptr noundef %i.ju) #27
  %i.jv = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.jv) #27
  store ptr null, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @pop_obj_state(ptr noundef nonnull %0)
  br label %.loopexit44

.loopexit44:                                      ; preds = %bb.j, %bb.a, %bb.b, %bb.c, %bb.d, %bb.ax
  ret void
}

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_edge(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.anon.14, align 8            ; 15 uses
  %3 = alloca %struct.bezier, align 8             ; 10 uses
  %4 = alloca %struct.bezier, align 8             ; 9 uses
  %5 = alloca %struct.colorsegs_t, align 8        ; 16 uses
  %6 = alloca %struct.bezier, align 8             ; 38 uses
  %7 = alloca %struct.agxbuf, align 8             ; 17 uses
  %8 = alloca %struct.corners_t, align 8          ; 32 uses
  %9 = alloca %struct.anon.12, align 8            ; 18 uses
  %10 = alloca %struct.points_t, align 8          ; 16 uses
  %11 = alloca [4 x %struct.pointf_s], align 16   ; 7 uses
  %12 = alloca [50 x %struct.pointf_s], align 16  ; 5 uses
  %13 = alloca [50 x %struct.pointf_s], align 16  ; 5 uses
  %14 = alloca %struct.agxbuf, align 8            ; 6 uses
  %15 = alloca %struct.points_t, align 8          ; 15 uses
  %16 = alloca %struct.pbs_size_t, align 8        ; 12 uses
  %17 = alloca %struct.boxf, align 8              ; 6 uses
  %18 = alloca %struct.agxbuf, align 8            ; 36 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 19 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %boxf_overlap.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load <4 x double>, ptr %i.f, align 8     ; 2 uses
  %i.h = load <4 x double>, ptr %17, align 8      ; 2 uses
  %i.i = shufflevector <4 x double> %i.g, <4 x double> %i.h, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.j = shufflevector <4 x double> %i.h, <4 x double> %i.g, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.k = fcmp oge <4 x double> %i.i, %i.j
  %i.l = freeze <4 x i1> %i.k
  %i.m = bitcast <4 x i1> %i.l to i4
  %i.n = icmp eq i4 %i.m, -1
  br i1 %i.n, label %bb.g, label %boxf_overlap.exit.thread.i

boxf_overlap.exit.thread.i:                       ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !378  ; 2 uses
  %.not14.i = icmp eq ptr %i.p, null
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %boxf_overlap.exit.thread.i
  %i.q = tail call zeroext i1 @overlap_label(ptr noundef nonnull %i.p, ptr noundef nonnull byval(%struct.boxf) align 8 %i.a) #27
  br i1 %i.q, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %boxf_overlap.exit.thread.i
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.c, %boxf_overlap.exit.thread.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !379  ; 3 uses
  %.not15.i = icmp eq ptr %i.t, null
  br i1 %.not15.i, label %edge_in_box.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 105
  %i.v = load i8, ptr %i.u, align 1, !tbaa !187, !range !145, !noundef !181
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %edge_in_box.exit

bb.f:                                             ; preds = %bb.e
  %i.x = tail call zeroext i1 @overlap_label(ptr noundef nonnull %i.t, ptr noundef nonnull byval(%struct.boxf) align 8 %17) #27
  br i1 %i.x, label %bb.g, label %edge_in_box.exit

edge_in_box.exit:                                 ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %edge_in_layer.exit.thread123

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !158
  %i.aa = icmp slt i32 %i.z, 2
  br i1 %i.aa, label %edge_in_layer.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @E_layer, align 8, !tbaa !167
  %i.ac = tail call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.ab, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !103
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !158
  %i.ah = tail call fastcc noundef zeroext i1 @selectedLayer(ptr noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ag, ptr noundef readonly %i.ac)
  br i1 %i.ah, label %edge_in_layer.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %strcmpload.i = load i8, ptr %i.ac, align 1
  %i.ai = icmp eq i8 %strcmpload.i, 0
  br i1 %i.ai, label %.preheader.preheader.i, label %edge_in_layer.exit.thread123

.preheader.1.i:                                   ; preds = %.critedge.i
  %i.aj = load i32, ptr %1, align 8
  %i.ak = and i32 %i.aj, 3
  %i.al = icmp eq i32 %i.ak, 2
  %i.am = select i1 %i.al, i64 56, i64 -8
  %.in.1.i = getelementptr inbounds i8, ptr %1, i64 %i.am
  %i.an = load ptr, ptr %.in.1.i, align 8, !tbaa !176
  %i.ao = load ptr, ptr @N_layer, align 8, !tbaa !167
  %i.ap = tail call ptr @late_string(ptr noundef %i.an, ptr noundef %i.ao, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %strcmpload23.1.i = load i8, ptr %i.ap, align 1
  %i.aq = icmp eq i8 %strcmpload23.1.i, 0
  br i1 %i.aq, label %edge_in_layer.exit.thread, label %edge_in_layer.exit

.preheader.preheader.i:                           ; preds = %bb.i
  %i.ar = load i32, ptr %1, align 8
  %i.as = and i32 %i.ar, 3
  %i.at = icmp eq i32 %i.as, 3
  %i.au = select i1 %i.at, i64 56, i64 120
  %.in.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.av = load ptr, ptr %.in.i, align 8, !tbaa !176
  %i.aw = load ptr, ptr @N_layer, align 8, !tbaa !167
  %i.ax = tail call ptr @late_string(ptr noundef %i.av, ptr noundef %i.aw, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %strcmpload23.i = load i8, ptr %i.ax, align 1
  %i.ay = icmp eq i8 %strcmpload23.i, 0
  br i1 %i.ay, label %edge_in_layer.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %.preheader.preheader.i
  %i.az = load ptr, ptr %0, align 8, !tbaa !70
  %i.ba = load i32, ptr %i.ae, align 8, !tbaa !103
  %i.bb = load i32, ptr %i.y, align 4, !tbaa !158
  %i.bc = tail call fastcc noundef zeroext i1 @selectedLayer(ptr noundef %i.az, i32 noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull readonly %i.ax)
  br i1 %i.bc, label %edge_in_layer.exit.thread, label %.preheader.1.i

edge_in_layer.exit:                               ; preds = %.preheader.1.i
  %i.bd = load ptr, ptr %0, align 8, !tbaa !70
  %i.be = load i32, ptr %i.ae, align 8, !tbaa !103
  %i.bf = load i32, ptr %i.y, align 4, !tbaa !158
  %i.bg = tail call fastcc noundef zeroext i1 @selectedLayer(ptr noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull readonly %i.ap)
  br i1 %i.bg, label %edge_in_layer.exit.thread, label %edge_in_layer.exit.thread123

end_hunk_0
begin_hunk_1_@llvm.sqrt.v2f64
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"", !22, i64 0, !31, i64 8, !33, i64 16}
!116 = !{!"", !10, i64 0, !15, i64 32, !115, i64 40}
!117 = !{!116, !15, i64 32}
!118 = !{!115, !31, i64 8}
!119 = !{!15, !15, i64 0}
!120 = !{i64 0, i64 8, !110, i64 8, i64 8, !110}
!121 = !{!32, !31, i64 0}
!122 = !{!45, !11, i64 356}
!123 = !{!45, !23, i64 360}
!124 = !{!35, !31, i64 16}
!125 = !{!35, !31, i64 0}
!126 = !{!32, !31, i64 8}
!127 = !{!35, !31, i64 24}
!128 = !{!35, !31, i64 8}
!129 = !{i64 0, i64 8, !110, i64 8, i64 8, !110, i64 16, i64 8, !110, i64 24, i64 8, !110}
!130 = !{!102, !15, i64 88}
!131 = !{!"p1 _ZTS8_xdot_op", !15, i64 0}
!132 = !{!"", !23, i64 0, !23, i64 8, !131, i64 16, !15, i64 24, !11, i64 32}
!133 = !{!132, !23, i64 0}
!134 = !{!132, !131, i64 16}
!135 = !{!"_xdot_op", !11, i64 0, !10, i64 8, !15, i64 80}
!136 = !{!"", !135, i64 0, !35, i64 88, !15, i64 120}
!137 = !{!136, !11, i64 0}
!138 = !{!136, !15, i64 120}
!139 = !{!"p1 _ZTS9dtdisc_s_", !15, i64 0}
!140 = !{!"p1 _ZTS9dtlink_s_", !15, i64 0}
!141 = !{!"", !11, i64 0, !140, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!142 = !{!"dt_s_", !15, i64 0, !139, i64 8, !141, i64 16, !15, i64 56, !11, i64 64, !75, i64 72, !75, i64 80, !15, i64 88}
!143 = !{!142, !15, i64 0}
!144 = !{!38, !31, i64 480}
!145 = !{i8 0, i8 2}
!146 = !{!38, !11, i64 488}
!147 = !{!45, !11, i64 8}
!148 = !{!45, !11, i64 24}
!149 = !{!100, !90, i64 24}
!150 = !{!"p1 _ZTS10shape_desc", !15, i64 0}
!151 = !{!"p1 double", !15, i64 0}
!152 = !{!"p2 _ZTS8Agedge_s", !41, i64 0}
!153 = !{!"elist", !152, i64 0, !23, i64 8}
!154 = !{!"p1 _ZTS8Agedge_s", !15, i64 0}
!155 = !{!"Agnodeinfo_t", !88, i64 0, !150, i64 16, !15, i64 24, !32, i64 32, !31, i64 48, !31, i64 56, !35, i64 64, !31, i64 96, !31, i64 104, !31, i64 112, !31, i64 120, !31, i64 128, !90, i64 136, !90, i64 144, !15, i64 152, !10, i64 160, !10, i64 161, !33, i64 162, !10, i64 163, !11, i64 164, !11, i64 168, !11, i64 172, !151, i64 176, !31, i64 184, !10, i64 192, !33, i64 193, !97, i64 200, !97, i64 208, !10, i64 216, !23, i64 224, !10, i64 232, !10, i64 233, !10, i64 234, !97, i64 240, !97, i64 248, !153, i64 256, !153, i64 272, !153, i64 288, !153, i64 304, !153, i64 320, !78, i64 336, !11, i64 344, !97, i64 352, !11, i64 360, !11, i64 364, !31, i64 368, !153, i64 376, !153, i64 392, !153, i64 408, !153, i64 424, !154, i64 440, !11, i64 448, !11, i64 452, !11, i64 456, !10, i64 464}
!156 = !{!155, !10, i64 160}
!157 = !{!82, !11, i64 496}
!158 = !{!38, !11, i64 284}
!159 = !{!82, !81, i64 504}
!160 = !{!38, !22, i64 104}
!161 = !{!38, !11, i64 292}
!162 = !{!38, !11, i64 296}
!163 = !{!38, !20, i64 24}
!164 = !{!"textlabel_t", !22, i64 0, !22, i64 8, !22, i64 16, !11, i64 24, !31, i64 32, !32, i64 40, !32, i64 56, !32, i64 72, !10, i64 88, !10, i64 104, !33, i64 105, !33, i64 106}
!165 = !{!164, !22, i64 0}
!166 = !{!"p1 _ZTS7Agsym_s", !15, i64 0}
!167 = !{!166, !166, i64 0}
!168 = !{!"llvm.loop.peeled.count", i32 1}
!169 = !{!82, !42, i64 528}
!170 = !{!82, !11, i64 48}
!171 = !{!100, !11, i64 236}
!172 = !{!100, !96, i64 240}
!173 = !{!78, !78, i64 0}
!174 = !{!"dtlink_s_", !140, i64 0, !10, i64 8}
!175 = !{!"Agedge_s", !86, i64 0, !174, i64 24, !174, i64 40, !97, i64 56}
!176 = !{!175, !97, i64 56}
!177 = !{!38, !11, i64 300}
!178 = !{!38, !11, i64 304}
!179 = !{!75, !75, i64 0}
!180 = !{!115, !22, i64 0}
!181 = !{}
!182 = !{!100, !91, i64 234}
!183 = !{!155, !151, i64 176}
!184 = !{!"llvm.loop.isvectorized", i32 1}
!185 = !{!"llvm.loop.unroll.runtime.disable"}
!186 = !{!155, !31, i64 112}
!187 = !{!164, !33, i64 105}
!188 = !{!"p1 _ZTS7splines", !15, i64 0}
!189 = !{!"port", !32, i64 0, !31, i64 16, !15, i64 24, !33, i64 32, !33, i64 33, !33, i64 34, !33, i64 35, !10, i64 36, !10, i64 37, !22, i64 40}
!190 = !{!"Agedgeinfo_t", !88, i64 0, !188, i64 16, !189, i64 24, !189, i64 72, !90, i64 120, !90, i64 128, !90, i64 136, !90, i64 144, !10, i64 152, !10, i64 153, !10, i64 154, !10, i64 155, !10, i64 156, !154, i64 160, !15, i64 168, !31, i64 176, !31, i64 184, !111, i64 192, !10, i64 208, !33, i64 209, !91, i64 210, !11, i64 212, !11, i64 216, !11, i64 220, !91, i64 224, !11, i64 228, !154, i64 232}
!191 = !{!190, !188, i64 16}
!192 = !{!100, !10, i64 131}
!193 = !{!"p1 _ZTS6bezier", !15, i64 0}
!194 = !{!"splines", !193, i64 0, !23, i64 8, !35, i64 16}
!195 = !{!194, !23, i64 8}
!196 = !{!194, !193, i64 0}
!197 = !{!"bezier", !43, i64 0, !23, i64 8, !11, i64 16, !11, i64 20, !32, i64 24, !32, i64 40}
!198 = !{!197, !23, i64 8}
!199 = !{!197, !43, i64 0}
!200 = !{!23, !23, i64 0}
!201 = !{!43, !43, i64 0}
!202 = !{!"", !23, i64 0, !32, i64 8, !32, i64 24, !32, i64 40, !31, i64 56, !31, i64 64}
!203 = !{!202, !23, i64 0}
!204 = !{!82, !22, i64 464}
!205 = !{!82, !22, i64 472}
!206 = !{!102, !22, i64 96}
!207 = distinct !{!207, !114}
!208 = distinct !{!208, !114}
!209 = distinct !{!209, i1 false, !"tok"}
!210 = distinct !{!210, !209, !"tok: argument 0"}
!211 = distinct !{!211, !114}
!212 = distinct !{!212, !114}
!213 = distinct !{!213, !114}
!214 = distinct !{!214, !114}
!215 = distinct !{!215, !114}
!216 = !{!210}
!217 = !{!33, !33, i64 0}
!218 = !{i64 0, i64 8, !105, i64 8, i64 8, !110, i64 16, i64 1, !217}
!219 = !{i64 0, i64 32, !14, i64 32, i64 8, !119, i64 40, i64 8, !105, i64 48, i64 8, !110, i64 56, i64 1, !217}
!220 = distinct !{!220, !114}
!221 = distinct !{!221, !114}
!222 = distinct !{!222, i1 false, !"ptsBB"}
!223 = distinct !{!223, !222, !"ptsBB: argument 0"}
!224 = distinct !{!224, !114}
!225 = distinct !{!225, i1 false, !"ptsBB"}
!226 = distinct !{!226, !225, !"ptsBB: argument 0"}
!227 = distinct !{!227, i1 false, !"ptsBB"}
!228 = distinct !{!228, !227, !"ptsBB: argument 0"}
!229 = distinct !{!229, i1 false, !"textBB"}
!230 = distinct !{!230, !229, !"textBB: argument 0"}
!231 = distinct !{!231, !114}
!232 = !{!100, !18, i64 168}
!233 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16}
!234 = !{!233, !31, i64 0}
!235 = !{!223}
!236 = !{!233, !31, i64 8}
!237 = !{!226}
!238 = !{!228}
!239 = !{!"", !22, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !31, i64 32, !31, i64 40, !32, i64 48, !10, i64 64}
!240 = !{!239, !22, i64 0}
!241 = !{!239, !10, i64 64}
!242 = !{!"p1 _ZTS16_PostscriptAlias", !15, i64 0}
!243 = !{!"", !22, i64 0, !22, i64 8, !242, i64 16, !31, i64 24, !11, i64 32, !11, i64 32}
!244 = !{!243, !22, i64 0}
!245 = !{!243, !31, i64 24}
!246 = !{!82, !75, i64 256}
!247 = !{!239, !15, i64 8}
!248 = !{!230}
!249 = !{!239, !31, i64 32}
!250 = !{!132, !15, i64 24}
!251 = distinct !{!251, !114}
!252 = distinct !{!252, !114}
!253 = distinct !{!253, !114}
!254 = distinct !{!254, !114}
!255 = distinct !{!255, !114}
!256 = distinct !{!256, !114}
!257 = distinct !{!257, !284}
!258 = distinct !{!258, !284}
!259 = distinct !{!259, !284}
!260 = distinct !{!260, !114}
!261 = distinct !{!261, !114, !168}
!262 = distinct !{!262, !114}
!263 = distinct !{!263, !114}
!264 = distinct !{!264, !114}
!265 = distinct !{!265, !114}
!266 = distinct !{!266, !114}
!267 = distinct !{!267, !114}
!268 = distinct !{!268, !114}
!269 = distinct !{!269, !114}
!270 = distinct !{!270, !114}
!271 = distinct !{!271, !114}
!272 = distinct !{!272, !114}
!273 = distinct !{!273, !114}
!274 = distinct !{!274, !114}
!275 = distinct !{!275, !114}
!276 = distinct !{!276, !114}
!277 = !{!38, !31, i64 656}
!278 = !{!71, !11, i64 48}
!279 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 12, i64 4, !47}
!280 = !{!38, !31, i64 520}
!281 = !{!38, !31, i64 640}
!282 = !{!38, !31, i64 512}
!283 = !{!38, !31, i64 632}
!284 = !{!"llvm.loop.unroll.disable"}
!285 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !11, i64 48, !15, i64 56}
!286 = !{!285, !15, i64 56}
!287 = !{!"", !31, i64 0, !22, i64 8}
!288 = !{!287, !22, i64 8}
!289 = !{!287, !31, i64 0}
!290 = !{!285, !31, i64 0}
!291 = !{!285, !31, i64 32}
!292 = !{!285, !31, i64 8}
!293 = !{!285, !31, i64 16}
!294 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !11, i64 32, !15, i64 40}
!295 = !{!294, !15, i64 40}
!296 = !{!294, !31, i64 8}
!297 = !{!294, !31, i64 16}
!298 = !{!294, !31, i64 0}
!299 = !{!38, !11, i64 312}
!300 = distinct !{!300, !114}
!301 = distinct !{!301, !114}
!302 = distinct !{!302, !114}
!303 = distinct !{!303, !114}
!304 = !{!100, !10, i64 128}
!305 = distinct !{!305, !114}
!306 = distinct !{!306, !114}
!307 = !{!115, !33, i64 16}
!308 = distinct !{!308, !114}
!309 = distinct !{!309, !114}
!310 = distinct !{!310, !114, !184, !185}
!311 = distinct !{!311, !114, !185, !184}
!312 = distinct !{!312, !114}
!313 = distinct !{!313, !114, !184, !185}
!314 = distinct !{!314, !114, !185, !184}
!315 = !{!155, !150, i64 16}
!316 = !{!45, !31, i64 192}
!317 = !{!155, !90, i64 136}
!318 = !{!155, !15, i64 24}
!319 = !{!"", !33, i64 0, !33, i64 0, !33, i64 0, !33, i64 0, !33, i64 0, !33, i64 0, !33, i64 0, !33, i64 0, !33, i64 1, !33, i64 1, !33, i64 1, !33, i64 1, !11, i64 1}
!320 = !{!"polygon_t", !11, i64 0, !23, i64 8, !23, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !319, i64 48, !43, i64 56}
!321 = !{!320, !23, i64 16}
!322 = !{!320, !31, i64 24}
!323 = !{!320, !31, i64 32}
!324 = !{!320, !31, i64 40}
!325 = !{!320, !23, i64 8}
!326 = !{!320, !43, i64 56}
!327 = !{!155, !31, i64 104}
!328 = !{!320, !11, i64 0}
!329 = !{!"p1 _ZTS15shape_functions", !15, i64 0}
!330 = !{!"p1 _ZTS9polygon_t", !15, i64 0}
!331 = !{!"shape_desc", !22, i64 0, !329, i64 8, !330, i64 16, !33, i64 24}
!332 = !{!331, !329, i64 8}
!333 = !{!"shape_functions", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!334 = !{!333, !15, i64 40}
!335 = !{!155, !90, i64 144}
!336 = distinct !{!336, !114}
!337 = distinct !{!337, !114}
!338 = distinct !{!338, !114}
!339 = distinct !{!339, !114}
!340 = distinct !{!340, !114}
!341 = distinct !{null, null}
!342 = distinct !{!342, !114}
!343 = distinct !{!343, !114}
!344 = distinct !{!344, !114}
!345 = distinct !{!345, !114}
!346 = distinct !{!346, !114}
!347 = distinct !{!347, !114, !168}
!348 = distinct !{!348, !114}
!349 = distinct !{null, null}
!350 = distinct !{!350, !114}
!351 = distinct !{!351, !114}
!352 = distinct !{!352, !114}
!353 = distinct !{!353, !114}
!354 = distinct !{!354, !114}
!355 = distinct !{!355, !114, !184, !185}
!356 = distinct !{!356, !114}
!357 = distinct !{!357, !114, !184}
!358 = distinct !{!358, !114}
!359 = distinct !{!359, !114}
!360 = distinct !{null}
!361 = distinct !{!361, !114}
!362 = distinct !{!362, !114}
!363 = distinct !{!363, !114}
!364 = distinct !{!364, !114}
!365 = distinct !{!365, !114}
!366 = distinct !{null, null, null}
!367 = distinct !{!367, !114}
!368 = distinct !{!368, !114}
!369 = distinct !{!369, !114}
!370 = distinct !{!370, !114}
!371 = distinct !{null}
!372 = distinct !{!372, !114}
!373 = distinct !{!373, !114}
!374 = distinct !{!374, !114}
!375 = distinct !{!375, !114}
!376 = distinct !{!376, !114}
!377 = distinct !{!377, !114}
!378 = !{!190, !90, i64 120}
!379 = !{!190, !90, i64 144}
!380 = !{!164, !33, i64 106}
!381 = !{!45, !31, i64 200}
!382 = !{!45, !31, i64 208}
!383 = !{!45, !22, i64 224}
!384 = !{!45, !22, i64 240}
!385 = !{!45, !22, i64 232}
!386 = !{!190, !90, i64 136}
!387 = !{!190, !90, i64 128}
!388 = !{!"", !10, i64 0, !15, i64 32, !23, i64 40}
!389 = !{!388, !23, i64 40}
!390 = !{!"", !10, i64 0, !15, i64 32, !32, i64 40}
!391 = !{!390, !15, i64 32}
!392 = !{!190, !10, i64 156}
!393 = !{i64 0, i64 8, !201, i64 8, i64 8, !200, i64 16, i64 4, !47, i64 20, i64 4, !47, i64 24, i64 8, !110, i64 32, i64 8, !110, i64 40, i64 8, !110, i64 48, i64 8, !110}
!394 = !{!197, !11, i64 16}
!395 = !{!197, !11, i64 20}
!396 = !{i64 0, i64 8, !200, i64 8, i64 8, !110, i64 16, i64 8, !110, i64 24, i64 8, !110, i64 32, i64 8, !110, i64 40, i64 8, !110, i64 48, i64 8, !110, i64 56, i64 8, !110, i64 64, i64 8, !110}
!397 = !{!202, !31, i64 40}
!398 = !{!202, !31, i64 48}
!399 = !{!"", !10, i64 0, !15, i64 32, !202, i64 40}
!400 = !{!399, !15, i64 32}
!401 = !{!45, !23, i64 376}
!402 = distinct !{!402, i1 false, !"style_token"}
!403 = distinct !{!403, !402, !"style_token: argument 0"}
!404 = distinct !{!404, !114}
!405 = distinct !{!405, !114}
!406 = distinct !{!406, !114, !184, !185}
!407 = distinct !{!407, !114, !185, !184}
!408 = !{!403}
!409 = distinct !{!409, i1 false, !"bezier_bb"}
!410 = distinct !{!410, !409, !"bezier_bb: argument 0"}
!411 = distinct !{!411, !114}
!412 = distinct !{!412, i1 false, !"bezier_bb"}
!413 = distinct !{!413, !412, !"bezier_bb: argument 0"}
!414 = distinct !{!414, !114}
!415 = distinct !{!415, !114}
!416 = distinct !{!416, !114}
!417 = distinct !{!417, !114}
!418 = distinct !{null, null}
!419 = distinct !{!419, !114}
!420 = distinct !{!420, !114}
!421 = distinct !{!421, !114}
!422 = !{!"tm", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !23, i64 40, !22, i64 48}
!423 = !{!422, !11, i64 20}
!424 = !{!422, !11, i64 16}
!425 = !{!422, !11, i64 12}
!426 = !{!422, !11, i64 8}
!427 = !{!422, !11, i64 4}
!428 = !{!422, !11, i64 0}
!429 = !{!410}
!430 = !{!413}
!431 = !{!82, !33, i64 461}
!432 = !{!82, !31, i64 376}
!433 = !{!82, !31, i64 368}
!434 = !{!82, !33, i64 460}
!435 = !{!82, !31, i64 392}
!436 = !{!82, !31, i64 384}
!437 = !{!82, !33, i64 462}
!438 = !{!102, !31, i64 48}
!439 = !{!102, !31, i64 56}
!440 = !{!102, !33, i64 81}
!441 = !{!82, !11, i64 456}
!442 = !{!82, !22, i64 360}
!443 = !{!82, !22, i64 512}
!444 = !{!82, !31, i64 520}
!445 = !{!82, !22, i64 344}
!446 = !{!82, !22, i64 480}
!447 = !{!"", !10, i64 0, !15, i64 32, !22, i64 40}
!448 = !{!447, !22, i64 40}
!449 = !{!447, !15, i64 32}
!450 = !{!82, !72, i64 112}
!451 = !{!"GVG_s", !18, i64 0, !72, i64 8, !22, i64 16, !11, i64 24, !78, i64 32}
!452 = !{!451, !22, i64 16}
!453 = !{!451, !11, i64 24}
!454 = !{!38, !22, i64 40}
!455 = !{!38, !11, i64 48}
!456 = !{!82, !22, i64 336}
!457 = !{!38, !22, i64 56}
!458 = !{!38, !37, i64 744}
!459 = !{!38, !23, i64 752}
!460 = !{!38, !11, i64 112}
!461 = !{!82, !19, i64 352}
!462 = !{!19, !19, i64 0}
!463 = !{!38, !19, i64 16}
!464 = !{!38, !16, i64 72}
!465 = !{!38, !30, i64 208}
!466 = !{!38, !15, i64 136}
!467 = !{!"", !11, i64 0, !31, i64 8, !42, i64 16, !11, i64 24, !11, i64 28}
!468 = !{!467, !31, i64 8}
!469 = !{!38, !31, i64 376}
!470 = !{!38, !31, i64 368}
!471 = !{!38, !15, i64 168}
!472 = !{!102, !31, i64 24}
!473 = !{!38, !31, i64 568}
!474 = !{!38, !31, i64 560}
!475 = !{!38, !33, i64 232}
!476 = !{!102, !31, i64 64}
!477 = !{!102, !31, i64 72}
!478 = !{!102, !33, i64 80}
!479 = !{!"Agdesc_s", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0}
!480 = !{!"p1 _ZTS17graphviz_node_set", !15, i64 0}
!481 = !{!"p1 _ZTS8Agclos_s", !15, i64 0}
!482 = !{!"Agraph_s", !86, i64 0, !479, i64 24, !174, i64 32, !174, i64 48, !75, i64 64, !480, i64 72, !75, i64 80, !75, i64 88, !75, i64 96, !75, i64 104, !78, i64 112, !78, i64 120, !481, i64 128}
!483 = !{!482, !78, i64 120}
!484 = !{!38, !11, i64 332}
!485 = !{!102, !33, i64 82}
!486 = distinct !{!486, !114}
!487 = distinct !{!487, !114}
!488 = distinct !{!488, !114}
!489 = distinct !{!489, !114}
!490 = distinct !{!490, !114}
!491 = distinct !{!491, !114}
!492 = distinct !{!492, !114}
!493 = distinct !{!493, !114}
!494 = distinct !{!494, !114}
!495 = distinct !{!495, !114}
!496 = distinct !{!496, !114}
!497 = !{!164, !22, i64 16}
end_hunk_1
