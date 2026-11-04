Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvevent?download=true
inline.NumInlined: 9
inline.NumDeleted: 8
begin_hunk_0_@gvevent_button_press:bb.a
  %i.bm = tail call ptr @agxget(ptr noundef nonnull %i.y, ptr noundef nonnull %.016.i.sink.i) #11
  %i.bn = tail call ptr @strdup_and_subst_obj(ptr noundef %i.bm, ptr noundef nonnull %i.y) #11
  store ptr %i.bn, ptr %i.v, align 8, !tbaa !73
  br label %gvevent_select_current_obj.exit

gvevent_select_current_obj.exit:                  ; preds = %bb.g, %bb.h, %bb.j, %bb.l, %bb.n, %gv_graph_state.exit.sink.split.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 666
  store i8 1, ptr %i.bo, align 2, !tbaa !92
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 669
  store i8 1, ptr %i.bp, align 1, !tbaa !93
  br label %.sink.split

bb.o:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 666
  store i8 1, ptr %i.bq, align 2, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 669
  store i8 2, ptr %i.br, align 1, !tbaa !93
  br label %.sink.split

bb.p:                                             ; preds = %bb.a
  tail call fastcc void @gvevent_find_current_obj(ptr noundef %0, double %2, double %3)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 666
  store i8 1, ptr %i.bs, align 2, !tbaa !92
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 669
  store i8 3, ptr %i.bt, align 1, !tbaa !93
  br label %.sink.split

bb.q:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i8 0, ptr %i.bu, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !94
  %.not66 = icmp eq i32 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.by = load double, ptr %i.bx, align 8, !tbaa !32 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  br i1 %.not66, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !102
  %i.cc = uitofp i32 %i.cb to double
  %i.cd = fmul nnan double %i.cc, 5.000000e-01
  %i.ce = fsub double %3, %i.cd
  %i.cf = fmul double %i.ce, f0x3FB99999999999A0
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !95
  %i.ci = fmul double %i.by, %i.ch
  %i.cj = fdiv double %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !33
  %i.cm = fsub double %i.cl, %i.cj
  store double %i.cm, ptr %i.ck, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !103
  %i.cp = uitofp i32 %i.co to double
  %i.cq = fmul nnan double %i.cp, 5.000000e-01
  %i.cr = fsub double %2, %i.cq
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ct = load double, ptr %i.bz, align 8, !tbaa !96
  %i.cu = fmul double %i.by, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !33
  %i.cx = load <2 x i32>, ptr %i.cs, align 8, !tbaa !36
  %i.cy = uitofp <2 x i32> %i.cx to <2 x double>
  %i.cz = fmul nnan <2 x double> %i.cy, splat (double 5.000000e-01)
  %i.da = insertelement <2 x double> poison, double %2, i64 0
  %i.db = insertelement <2 x double> %i.da, double %3, i64 1
  %i.dc = fsub <2 x double> %i.db, %i.cz          ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = fmul double %i.dd, f0x3FB99999999999A0
  %i.df = fdiv double %i.de, %i.cu
  %i.dg = fadd double %i.cw, %i.df
  store double %i.dg, ptr %i.cv, align 8, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.di = extractelement <2 x double> %i.dc, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink78.in = phi ptr [ %i.dh, %bb.s ], [ %i.bz, %bb.r ]
  %.sink.in = phi double [ %i.di, %bb.s ], [ %i.cr, %bb.r ]
  %.sink = fmul double %.sink.in, f0x3FB99999999999A0
  %.sink78 = load double, ptr %.sink78.in, align 8, !tbaa !97
  %i.dj = fmul double %i.by, %.sink78
  %i.dk = fdiv double %.sink, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !35
  %i.dn = fadd double %i.dm, %i.dk
  store double %i.dn, ptr %i.dl, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dp = fmul double %i.by, 1.100000e+00
  store double %i.dp, ptr %i.do, align 8, !tbaa !32
  br label %.sink.split

bb.u:                                             ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i8 0, ptr %i.dq, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !32
  %i.dt = fdiv double %i.ds, 1.100000e+00         ; 4 uses
  store double %i.dt, ptr %i.dr, align 8, !tbaa !32
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !94
  %.not = icmp eq i32 %i.dv, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !95
  %i.dz = fmul double %i.dt, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !33
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ed = load <2 x i32>, ptr %i.ec, align 8, !tbaa !36
  %i.ee = uitofp <2 x i32> %i.ed to <2 x double>
  %i.ef = fmul nnan <2 x double> %i.ee, splat (double 5.000000e-01)
  %i.eg = insertelement <2 x double> poison, double %2, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %3, i64 1
  %i.ei = fsub <2 x double> %i.eh, %i.ef          ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 1
  %i.ek = fmul double %i.ej, f0x3FB99999999999A0
  %i.el = fdiv double %i.ek, %i.dz
  %i.em = fadd double %i.eb, %i.el
  store double %i.em, ptr %i.ea, align 8, !tbaa !33
  %i.en = extractelement <2 x double> %i.ei, i64 0
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !103
  %i.eq = uitofp i32 %i.ep to double
  %i.er = fmul nnan double %i.eq, 5.000000e-01
  %i.es = fsub double %2, %i.er
  %i.et = fmul double %i.es, f0x3FB99999999999A0
  %i.eu = load double, ptr %i.dw, align 8, !tbaa !96
  %i.ev = fmul double %i.dt, %i.eu
  %i.ew = fdiv double %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !33
  %i.ez = fsub double %i.ey, %i.ew
  store double %i.ez, ptr %i.ex, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !102
  %i.fc = uitofp i32 %i.fb to double
  %i.fd = fmul nnan double %i.fc, 5.000000e-01
  %i.fe = fsub double %3, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 656
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink86.in = phi ptr [ %i.ff, %bb.w ], [ %i.dw, %bb.v ]
  %.sink84.in = phi double [ %i.fe, %bb.w ], [ %i.en, %bb.v ]
  %.sink84 = fmul double %.sink84.in, f0x3FB99999999999A0
  %.sink86 = load double, ptr %.sink86.in, align 8, !tbaa !97
  %i.fg = fmul double %i.dt, %.sink86
  %i.fh = fdiv double %.sink84, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !35
  %i.fk = fsub double %i.fj, %i.fh
  store double %i.fk, ptr %i.fi, align 8, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %gvevent_select_current_obj.exit, %bb.o, %bb.p, %bb.t, %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 1, ptr %i.fl, align 1, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 688
  store double %2, ptr %i.fm, align 8, !tbaa !97
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store double %3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @gvevent_button_release(ptr nofree noundef writeonly captures(none) initializes((666, 667), (669, 670)) %0, i32 %1, double %2, double %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 666
  store i8 0, ptr %i.a, align 2, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 669
  store i8 0, ptr %i.b, align 1, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gvevent_motion(ptr nofree noundef captures(none) %0, double %1, double %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.d = load <2 x double>, ptr %i.a, align 8, !tbaa !97
  %i.e = insertelement <2 x double> poison, double %1, i64 0
  %i.f = insertelement <2 x double> %i.e, double %2, i64 1
  %i.g = fsub <2 x double> %i.f, %i.d
  %i.h = load <2 x double>, ptr %i.b, align 8, !tbaa !97
  %i.i = fdiv <2 x double> %i.g, %i.h             ; 3 uses
  %3 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.i)
  %4 = fcmp olt <2 x double> %3, splat (double 1.000000e-04) ; 2 uses
  %5 = extractelement <2 x i1> %4, i64 0
  %6 = extractelement <2 x i1> %4, i64 1
  %or.cond = select i1 %5, i1 %6, i1 false
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 669
  %i.k = load i8, ptr %i.j, align 1, !tbaa !93
  switch i8 %i.k, label %bb.h [
    i8 0, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @gvevent_find_current_obj(ptr noundef nonnull %0, double %1, double %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94
  %.not = icmp eq i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.o = load double, ptr %i.n, align 8, !tbaa !32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !33 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = insertelement <2 x double> poison, double %i.o, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fdiv <2 x double> %i.i, %i.t             ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 1
  %i.w = fsub double %i.q, %i.v
  store double %i.w, ptr %i.p, align 8, !tbaa !33
  %i.x = load double, ptr %i.r, align 8, !tbaa !35
  %i.y = extractelement <2 x double> %i.u, i64 0
  %i.z = fadd double %i.y, %i.x
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.i, %i.ab           ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fsub double %i.q, %i.ad
  store double %i.ae, ptr %i.p, align 8, !tbaa !33
  %i.af = load double, ptr %i.r, align 8, !tbaa !35
  %i.ag = extractelement <2 x double> %i.ac, i64 1
  %i.ah = fsub double %i.af, %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi double [ %i.ah, %bb.f ], [ %i.z, %bb.e ]
  store double %.sink, ptr %i.r, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 1, ptr %i.ai, align 1, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.b
  store double %1, ptr %i.a, align 8, !tbaa !97
  store double %2, ptr %i.c, align 8, !tbaa !97
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gvevent_read(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stdin, align 8, !tbaa !104
  %i.c = tail call ptr @agread(ptr noundef %i.b, ptr noundef null) #11
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @gv_fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.17) #11 ; 3 uses
  %.not33 = icmp eq ptr %i.d, null
  br i1 %.not33, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @agread(ptr noundef nonnull %i.d, ptr noundef null) #11
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0 = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.b ]  ; 7 uses
  %.not34 = icmp eq ptr %.0, null
  br i1 %.not34, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 4 uses
  %.not35 = icmp eq ptr %i.h, null
  br i1 %.not35, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %.not36 = icmp eq ptr %i.j, null
  br i1 %.not36, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107  ; 2 uses
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void %i.l(ptr noundef nonnull %i.h) #11
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.m = phi ptr [ %.pre, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.g ]
  tail call void @graph_cleanup(ptr noundef %i.m) #11
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.o = tail call i32 @agclose(ptr noundef %i.n) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  tail call void @aginit(ptr noundef nonnull %.0, i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef 400, i32 noundef 1) #11
  tail call void @aginit(ptr noundef nonnull %.0, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef 472, i32 noundef 1) #11
  tail call void @aginit(ptr noundef nonnull %.0, i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 240, i32 noundef 1) #11
  store ptr %.0, ptr %i.g, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  store ptr %i.a, ptr %i.r, align 8, !tbaa !108
  %i.s = tail call i32 @gvLayout(ptr noundef nonnull %i.a, ptr noundef nonnull %.0, ptr noundef %2) #11
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 665
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.v, align 1, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.e, %bb.c, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gvevent_layout(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = tail call i32 @gvLayout(ptr noundef %i.a, ptr noundef %i.c, ptr noundef %1) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gvevent_render(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = tail call i32 @gvRenderFilename(ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef %1, ptr noundef %2) #11 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !111
  store ptr null, ptr %i.b, align 8, !tbaa !109
  store ptr null, ptr %i.j, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = tail call i32 @gvRenderFilename(ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef %1, ptr noundef %2) #11 ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  store ptr %i.c, ptr %i.p, align 8, !tbaa !109
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  store ptr %i.k, ptr %i.q, align 8, !tbaa !111
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @emit_graph(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @agattr_text(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @strdup_and_subst_obj(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @agxget(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @gvevent_find_current_obj(ptr nofree noundef captures(none) %0, double %1, double %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.boxf, align 8               ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.d = load double, ptr %i.c, align 8, !tbaa !32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.g = load double, ptr %i.f, align 8, !tbaa !95
  %i.h = fmul double %i.d, %i.g
  %i.i = fdiv double %2, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.k = load double, ptr %i.j, align 8, !tbaa !115
  %i.l = fsub double %i.i, %i.k
  %i.m = fneg double %1
  br label %pointer2graph.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load double, ptr %i.e, align 8, !tbaa !96
  %i.o = fmul double %i.d, %i.n
  %i.p = fdiv double %1, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.r = load double, ptr %i.q, align 8, !tbaa !115
  %i.s = fsub double %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
end_hunk_0
