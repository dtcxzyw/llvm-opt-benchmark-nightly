inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@gvrender_end_anchor
; Function Attrs: nounwind uwtable
define internal fastcc void @emit_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.loopexit44, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @agraphof(ptr noundef nonnull %1) #27
  %i.g = tail call fastcc zeroext i1 @node_in_layer(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef nonnull %1)
  br i1 %i.g, label %bb.c, label %.loopexit44

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.val = load ptr, ptr %i.b, align 8, !tbaa !78  ; 2 uses
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
  %i.s = load i8, ptr %i.r, align 8, !tbaa !194
  %i.t = sext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !250  ; 2 uses
  %.not36 = icmp eq i32 %i.v, %i.t
  br i1 %.not36, label %.loopexit44, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = trunc i32 %i.v to i8
  store i8 %i.w, ptr %i.r, align 8, !tbaa !194
  %i.x = tail call ptr @agnameof(ptr noundef nonnull %1) #27
  tail call void @gvrender_comment(ptr noundef nonnull %0, ptr noundef %i.x) #27
  %i.y = load ptr, ptr @N_comment, align 8, !tbaa !225
  %i.z = tail call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.y, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %.not37 = icmp eq i8 %i.aa, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @gvrender_comment(ptr noundef nonnull %0, ptr noundef nonnull %i.z) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = load ptr, ptr @N_style, align 8, !tbaa !225
  %i.ac = tail call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.ab, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %.not38 = icmp eq i8 %i.ad, 0
  br i1 %.not38, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @parse_style(ptr noundef nonnull %i.ac) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0 = phi ptr [ @parse_style.parse, %bb.h ], [ %i.ag, %bb.j ] ; 2 uses
  %i.af = load ptr, ptr %.0, align 8, !tbaa !100  ; 2 uses
  %.not39 = icmp eq ptr %i.af, null
  br i1 %.not39, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(6) @.str.69) #31
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit44, label %bb.i, !llvm.loop !287

.loopexit:                                        ; preds = %bb.i, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !62 ; 4 uses
  %i.al = tail call noalias dereferenceable_or_null(432) ptr @calloc(i64 noundef 1, i64 noundef 432) #28 ; 23 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %gv_alloc.exit.i.i

bb.k:                                             ; preds = %.loopexit
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.45, i64 noundef 432) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_alloc.exit.i.i:                                ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12 ; 8 uses
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !34
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !12
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %gv_alloc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !tbaa.struct !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !tbaa.struct !41
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  %i.ax = load <2 x i32>, ptr %i.av, align 8, !tbaa !42
  store <2 x i32> %i.ax, ptr %i.aw, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  %i.az = load double, ptr %i.ay, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  store double %i.az, ptr %i.ba, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false), !tbaa.struct !41
  br label %push_obj_state.exit.i

bb.m:                                             ; preds = %gv_alloc.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  store i32 3, ptr %i.bg, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  store double 1.000000e+00, ptr %i.bh, align 8, !tbaa !43
  br label %push_obj_state.exit.i

push_obj_state.exit.i:                            ; preds = %bb.m, %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !187
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %1, ptr %i.bj, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 8, ptr %i.bk, align 8, !tbaa !188
  %i.bl = and i32 %i.ak, 16777216
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %push_obj_state.exit.i
  %i.bm = tail call ptr @agraphof(ptr noundef nonnull %1) #27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !78
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 234
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !288
  %i.br = icmp ugt i16 %i.bq, 2
  br i1 %i.br, label %bb.o, label %.sink.split.i

bb.o:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !289
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !105 ; 2 uses
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
  store double %.sink.i, ptr %i.cg, align 8, !tbaa !290
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i, %push_obj_state.exit.i
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !291
  tail call fastcc void @initObjMapData(ptr noundef nonnull %0, ptr noundef %i.cj, ptr noundef nonnull %1)
  %i.ck = and i32 %i.ak, 4259840
  %.not180.i = icmp eq i32 %i.ck, 0
  br i1 %.not180.i, label %emit_begin_node.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !47
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
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load <2 x double>, ptr %i.cs, align 8, !tbaa !105 ; 16 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0 ; 3 uses
  %i.cv = load ptr, ptr @N_style, align 8, !tbaa !225
  %i.cw = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.cv, ptr noundef nonnull @.str.13) #27 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %.not.i191.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i191.i, label %isFilled.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = tail call ptr @parse_style(ptr noundef nonnull %i.cw) ; 0 uses
  %i.cz = load ptr, ptr @parse_style.parse, align 16, !tbaa !100 ; 2 uses
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
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !100 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.de, null
  br i1 %.not8.i.i, label %isFilled.exit.i, label %.lr.ph.i.i, !llvm.loop !292

isFilled.exit.i:                                  ; preds = %.lr.ph.i.i, %bb.t, %bb.s
  %.2.i.i = phi i1 [ false, %bb.s ], [ false, %bb.t ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.df = and i32 %i.cq, -3
  %or.cond.i = icmp eq i32 %i.df, 1
  br i1 %or.cond.i, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %isFilled.exit.i
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !293 ; 10 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !294 ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 4
  br i1 %i.dl, label %bb.v, label %isRect.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !297
  %i.do = tail call double @fmod(double noundef %i.dn, double noundef 9.000000e+01) #27
  %i.dp = tail call double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp olt double %i.dp, 5.000000e-01
  br i1 %i.dq, label %bb.w, label %isRect.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !298
  %i.dt = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ds, /* (pzero) */ i32 64)
  br i1 %i.dt, label %isRect.exit.i, label %isRect.exit.thread.i

isRect.exit.i:                                    ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dv = load double, ptr %i.du, align 8, !tbaa !299
  %i.dw = tail call noundef i1 @llvm.is.fpclass.f64(double %i.dv, /* (pzero) */ i32 64)
  br i1 %i.dw, label %bb.x, label %isRect.exit.thread.i

bb.x:                                             ; preds = %isRect.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !300
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
  %spec.select190.i = select i1 %i.eb, i64 1, i64 %i.dk ; 15 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !300
  %i.ee = tail call i64 @llvm.umax.i64(i64 %i.ed, i64 1) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !301 ; 7 uses
  %i.eh = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.70) #27 ; 2 uses
  %.not184.i = icmp eq ptr %i.eh, null
  br i1 %.not184.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.eh, ptr noundef null, i32 noundef 10) #27, !inline_history !302
  %i.ej = trunc i64 %i.ei to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0166.i = phi i32 [ %i.ej, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %i.ek = add i32 %.0166.i, -61
  %or.cond7.i = icmp ult i32 %i.ek, -57
  %narrow.i = select i1 %or.cond7.i, i32 20, i32 %.0166.i ; 7 uses
  %i.el = sext i32 %narrow.i to i64               ; 14 uses
  %i.em = load i64, ptr %i.ec, align 8, !tbaa !300
  %i.en = icmp ne i64 %i.em, 0
  %or.cond9.i = select i1 %i.en, i1 true, i1 %.2.i.i
  br i1 %or.cond9.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.eo, align 4, !tbaa !132
  %i.ep = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ac, label %gv_calloc.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.es = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.ab
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ew = load <2 x double>, ptr %i.ev, align 8, !tbaa !105
  %i.ex = load double, ptr %i.eu, align 8, !tbaa !303
  %i.ey = fmul <2 x double> %i.ew, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fa = fsub <2 x double> %i.ct, %i.ez
  store <2 x double> %i.fa, ptr %i.ep, align 8, !tbaa !105
  %i.fb = fadd double %i.cu, %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store double %i.fb, ptr %i.fc, align 8, !tbaa !129
  %i.fd = extractelement <2 x double> %i.ey, i64 0
  br label %.loopexit.sink.split.i

bb.ad:                                            ; preds = %bb.aa
  %i.fe = load i64, ptr %i.dj, align 8, !tbaa !294 ; 5 uses
  %i.ff = icmp ult i64 %i.fe, 3
  br i1 %i.ff, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.fg = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !299
  %i.fi = tail call noundef i1 @llvm.is.fpclass.f64(double %i.fh, /* (pzero) */ i32 64)
  br i1 %i.fi, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !298
  %i.fl = tail call noundef i1 @llvm.is.fpclass.f64(double %i.fk, /* (pzero) */ i32 64)
  br i1 %i.fl, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fm = load i32, ptr %i.di, align 8, !tbaa !304
  %.not186.i = icmp eq i32 %i.fm, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 356 ; 2 uses
  br i1 %.not186.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.fn, align 4, !tbaa !132
  %i.fo = tail call fastcc ptr @gv_calloc(i64 noundef 2, i64 noundef 16) ; 3 uses
  store <2 x double> %i.ct, ptr %i.fo, align 8, !tbaa !105
  %.idx187.i = shl i64 %i.ee, 5
  %i.fp = getelementptr i8, ptr %i.eg, i64 %.idx187.i ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 -16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !129
  %i.fs = fadd double %i.cu, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store double %i.fs, ptr %i.ft, align 8, !tbaa !129
  %i.fu = getelementptr i8, ptr %i.fp, i64 -8
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !136
  br label %.loopexit.sink.split.i

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %i.fn, align 4, !tbaa !132
  %.idx.i = shl i64 %i.ee, 5
  %i.fw = getelementptr i8, ptr %i.eg, i64 %.idx.i ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 -16
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !129
  %i.fz = getelementptr i8, ptr %i.fw, i64 -8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !136
  %i.gb = tail call fastcc ptr @pEllipse(double noundef %i.fy, double noundef %i.ga, i64 noundef %i.el) ; 6 uses
  %.not212.i = icmp eq i32 %narrow.i, 0
  br i1 %.not212.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ai
  %min.iters.check74 = icmp ult i32 %narrow.i, 4
  br i1 %min.iters.check74, label %.lr.ph.i.preheader85, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.preheader
  %n.vec76 = and i64 %i.el, -2                    ; 3 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body77 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index78 ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index78
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %wide.load79 = load <2 x double>, ptr %i.gc, align 8
  %wide.load80 = load <2 x double>, ptr %i.ge, align 8
  %i.gf = fadd <2 x double> %i.ct, %wide.load79
  %i.gg = fadd <2 x double> %i.ct, %wide.load80
  store <2 x double> %i.gf, ptr %i.gc, align 8
  store <2 x double> %i.gg, ptr %i.ge, align 8
  %index.next81 = add nuw i64 %index78, 2         ; 2 uses
  %i.gh = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.gh, label %middle.block82, label %vector.body77, !llvm.loop !305

middle.block82:                                   ; preds = %vector.body77
  %cmp.n83 = icmp eq i64 %n.vec76, %i.el
  br i1 %cmp.n83, label %.loopexit.i, label %.lr.ph.i.preheader85

.lr.ph.i.preheader85:                             ; preds = %.lr.ph.i.preheader, %middle.block82
  %.0165211.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec76, %middle.block82 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader85, %.lr.ph.i
  %.0165211.i = phi i64 [ %i.gl, %.lr.ph.i ], [ %.0165211.i.ph, %.lr.ph.i.preheader85 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %.0165211.i ; 2 uses
  %i.gj = load <2 x double>, ptr %i.gi, align 8, !tbaa !105
  %i.gk = fadd <2 x double> %i.ct, %i.gj
  store <2 x double> %i.gk, ptr %i.gi, align 8, !tbaa !105
  %i.gl = add nuw i64 %.0165211.i, 1              ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.gl, %i.el
  br i1 %exitcond216.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !308

bb.aj:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.gm = add i64 %i.ee, -1                       ; 2 uses
  %i.gn = mul i64 %i.fe, %i.gm                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 2, ptr %i.go, align 4, !tbaa !132
  %.not185.i = icmp ult i64 %i.fe, %i.el
  br i1 %.not185.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gp = udiv i64 %i.fe, %i.el                   ; 2 uses
  %mul.ov.i.i = icmp slt i32 %narrow.i, 0
  br i1 %mul.ov.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gq = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gq, ptr noundef nonnull @.str.47, i64 noundef %i.el, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.gs = tail call noalias ptr @calloc(i64 noundef %i.el, i64 noundef 16) #28 ; 6 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.an, label %gv_calloc.exit192.preheader.i

gv_calloc.exit192.preheader.i:                    ; preds = %bb.am
  %invariant.gep.i = getelementptr [16 x i8], ptr %i.eg, i64 %i.gn ; 3 uses
  %i.gu = icmp eq i32 %narrow.i, 1
  br i1 %i.gu, label %gv_calloc.exit192.i.epil.preheader, label %gv_calloc.exit192.preheader.i.new

gv_calloc.exit192.preheader.i.new:                ; preds = %gv_calloc.exit192.preheader.i
  %unroll_iter = and i64 %i.el, 2147483646
  br label %gv_calloc.exit192.i

bb.an:                                            ; preds = %bb.am
  %i.gv = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.gw = shl nuw nsw i64 %i.el, 4
  %i.gx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gv, ptr noundef nonnull @.str.45, i64 noundef %i.gw) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit192.i:                              ; preds = %gv_calloc.exit192.i, %gv_calloc.exit192.preheader.i.new
  %.0163207.i = phi i64 [ 0, %gv_calloc.exit192.preheader.i.new ], [ %i.hh, %gv_calloc.exit192.i ] ; 3 uses
  %.0164206.i = phi i64 [ 0, %gv_calloc.exit192.preheader.i.new ], [ %i.hg, %gv_calloc.exit192.i ] ; 2 uses
  %niter = phi i64 [ 0, %gv_calloc.exit192.preheader.i.new ], [ %niter.next.1, %gv_calloc.exit192.i ]
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.0164206.i
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %.0163207.i
  %i.gz = load <2 x double>, ptr %gep.i, align 8, !tbaa !105
  %i.ha = fadd <2 x double> %i.ct, %i.gz
  store <2 x double> %i.ha, ptr %i.gy, align 8, !tbaa !105
  %i.hb = add i64 %.0164206.i, %i.gp              ; 2 uses
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.hb
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %.0163207.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load <2 x double>, ptr %gep.i.1, align 8, !tbaa !105
  %i.hf = fadd <2 x double> %i.ct, %i.he
  store <2 x double> %i.hf, ptr %i.hd, align 8, !tbaa !105
  %i.hg = add i64 %i.hb, %i.gp                    ; 2 uses
  %i.hh = add nuw i64 %.0163207.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit87.unr-lcssa, label %gv_calloc.exit192.i, !llvm.loop !309

bb.ao:                                            ; preds = %bb.aj
  %mul.ov.i195.i = icmp ugt i64 %spec.select190.i, 1152921504606846975
  br i1 %mul.ov.i195.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.hj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hi, ptr noundef nonnull @.str.47, i64 noundef %spec.select190.i, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hk = tail call noalias ptr @calloc(i64 noundef %spec.select190.i, i64 noundef 16) #28 ; 13 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.ar, label %gv_calloc.exit196.preheader.i

gv_calloc.exit196.preheader.i:                    ; preds = %bb.aq
  %invariant.gep208.i = getelementptr [16 x i8], ptr %i.eg, i64 %i.gn ; 8 uses
  %min.iters.check = icmp ult i64 %spec.select190.i, 28
  br i1 %min.iters.check, label %gv_calloc.exit196.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %gv_calloc.exit196.preheader.i
  %i.hm = add nsw i64 %spec.select190.i, -1       ; 2 uses
  %mul.result = shl i64 %i.hm, 4
  %mul.overflow = icmp ugt i64 %i.hm, 1152921504606846975
  %i.hn = getelementptr i8, ptr %invariant.gep208.i, i64 %mul.result
  %i.ho = icmp ult ptr %i.hn, %invariant.gep208.i
  %i.hp = or i1 %i.ho, %mul.overflow
  br i1 %i.hp, label %gv_calloc.exit196.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hq = shl nuw i64 %spec.select190.i, 4        ; 4 uses
  %i.hr = getelementptr i8, ptr %i.hk, i64 %i.hq
  %scevgep = getelementptr i8, ptr %i.hr, i64 -8
  %i.hs = mul i64 %i.fe, %i.gm
  %i.ht = shl i64 %i.hs, 4                        ; 3 uses
  %i.hu = getelementptr i8, ptr %i.eg, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 %i.hq
  %scevgep64 = getelementptr i8, ptr %i.hv, i64 -8
  %scevgep65 = getelementptr i8, ptr %i.hk, i64 8
  %scevgep66 = getelementptr i8, ptr %i.hk, i64 %i.hq
  %i.hw = getelementptr i8, ptr %i.eg, i64 %i.ht
  %scevgep67 = getelementptr i8, ptr %i.hw, i64 8
  %i.hx = getelementptr i8, ptr %i.eg, i64 %i.ht
  %scevgep68 = getelementptr i8, ptr %i.hx, i64 %i.hq
  %bound0 = icmp ult ptr %i.hk, %scevgep64
  %bound1 = icmp ult ptr %invariant.gep208.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound069 = icmp ult ptr %scevgep65, %scevgep68
  %bound170 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx = or i1 %found.conflict, %found.conflict71
  br i1 %conflict.rdx, label %gv_calloc.exit196.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %spec.select190.i, 1152921504606846974 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.hy = or disjoint i64 %index, 1               ; 2 uses
  %i.hz = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %index
  %i.ia = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %i.hy
  %wide.load = load <2 x double>, ptr %i.hz, align 8
  %wide.load72 = load <2 x double>, ptr %i.ia, align 8
  %i.ib = fadd <2 x double> %i.ct, %wide.load
  %i.ic = fadd <2 x double> %i.ct, %wide.load72
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %index
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.hy
  store <2 x double> %i.ib, ptr %i.id, align 8
  store <2 x double> %i.ic, ptr %i.ie, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !310

end_hunk_0
