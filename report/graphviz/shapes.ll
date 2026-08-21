inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@poly_inside:bb.a
  %i.ep = fmul double %i.ee, 0.000000e+00
  %i.eq = call double @llvm.fmuladd.f64(double %i.eb, double 0.000000e+00, double %i.ep)
  %i.er = fsub double %i.eq, %i.em
  %i.es = fcmp oge double %i.er, 0.000000e+00
  %.not172 = xor i1 %i.eo, %i.es
  br i1 %.not172, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = fsub double 0.000000e+00, %.sroa.653.0.copyload
  %i.eu = fneg double %i.et                       ; 2 uses
  %i.ev = fsub double 0.000000e+00, %i.ec         ; 2 uses
  %i.ew = fmul double %.sroa.653.0.copyload, %i.ev
  %i.ex = call double @llvm.fmuladd.f64(double %i.eu, double %i.ec, double %i.ew)
  %i.ey = shufflevector <2 x double> %i.ct, <2 x double> %i.dw, <2 x i32> <i32 1, i32 3>
  %i.ez = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x double> %i.ey, %i.fa
  %i.fc = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = shufflevector <2 x double> %i.ct, <2 x double> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fe, <2 x double> %i.fb)
  %i.fg = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fsub <2 x double> %i.ff, %i.fh
  %i.fj = fcmp oge <2 x double> %i.fi, zeroinitializer ; 2 uses
  %shift223 = shufflevector <2 x i1> %i.fj, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop224 = xor <2 x i1> %i.fj, %shift223
  %.not173 = extractelement <2 x i1> %foldExtExtBinop224, i64 0
  br i1 %.not173, label %.lr.ph.split.us.preheader, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = fneg double %.sroa.659.0.copyload       ; 2 uses
  %i.fl = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = shufflevector <2 x double> %i.dz, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.fn = fmul <2 x double> %i.fl, %i.fm
  %i.fo = fmul double %i.cu, %i.ed
  %i.fp = call double @llvm.fmuladd.f64(double %i.fk, double %i.cv, double %i.fo)
  %i.fq = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = insertelement <2 x double> %i.dz, double 0.000000e+00, i64 1
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.fs, <2 x double> %i.fn) ; 2 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 1 ; 2 uses
  %i.fv = fsub double %i.fp, %i.fu
  %i.fw = fcmp oge double %i.fv, 0.000000e+00
  %i.fx = extractelement <2 x double> %i.ft, i64 0
  %i.fy = fsub double %i.fx, %i.fu
  %i.fz = fcmp oge double %i.fy, 0.000000e+00
  %.not174 = xor i1 %i.fw, %i.fz
  br i1 %.not174, label %.lr.ph.split.preheader, label %bb.y

.lr.ph.split.preheader:                           ; preds = %bb.v
  %invariant.gep = getelementptr [16 x i8], ptr %.0158, i64 %i.dt
  %i.ga = insertelement <2 x double> %i.ct, double 0.000000e+00, i64 1
  %i.gb = shufflevector <2 x double> %i.ct, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.u
  %invariant.gep207 = getelementptr [16 x i8], ptr %.0158, i64 %i.dt
  %i.gc = add i64 %.0156, -1
  %i.gd = insertelement <2 x double> %i.ct, double 0.000000e+00, i64 1
  %i.ge = shufflevector <2 x double> %i.ct, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.w
  %i.gf = phi double [ %i.gl, %bb.w ], [ %.sroa.659.0.copyload, %.lr.ph.split.us.preheader ]
  %i.gg = phi double [ %i.gj, %bb.w ], [ %i.ed, %.lr.ph.split.us.preheader ]
  %.0187.us = phi i64 [ %i.hb, %bb.w ], [ 1, %.lr.ph.split.us.preheader ]
  %.0141185.us = phi i64 [ %i.gi, %bb.w ], [ %.fr, %.lr.ph.split.us.preheader ]
  %i.gh = add i64 %i.gc, %.0141185.us
  %i.gi = urem i64 %i.gh, %.0156                  ; 4 uses
  %gep.us = getelementptr [16 x i8], ptr %invariant.gep207, i64 %i.gi ; 2 uses
  %i.gj = load double, ptr %gep.us, align 8       ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %gep.us, i64 8
  %i.gl = load double, ptr %i.gk, align 8         ; 3 uses
  %i.gm = fsub double %i.gf, %i.gl
  %i.gn = fneg double %i.gm                       ; 2 uses
  %i.go = fsub double %i.gg, %i.gj                ; 2 uses
  %i.gp = fmul double %i.gl, %i.go
  %i.gq = call double @llvm.fmuladd.f64(double %i.gn, double %i.gj, double %i.gp)
  %i.gr = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = fmul <2 x double> %i.ge, %i.gs
  %i.gu = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.gd, <2 x double> %i.gt)
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = fsub <2 x double> %i.gw, %i.gy
  %i.ha = fcmp oge <2 x double> %i.gz, zeroinitializer ; 2 uses
  %shift226 = shufflevector <2 x i1> %i.ha, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop227 = xor <2 x i1> %i.ha, %shift226
  %.not175.us = extractelement <2 x i1> %foldExtExtBinop227, i64 0
  br i1 %.not175.us, label %.thread, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %i.hb = add nuw i64 %.0187.us, 1                ; 2 uses
  %exitcond194.not = icmp eq i64 %i.hb, %.0156
  br i1 %exitcond194.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !184

bb.x:                                             ; preds = %.lr.ph.split
  %i.hc = add nuw i64 %.0187, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.hc, %.0156
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !184

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.x
  %i.hd = phi double [ %i.hj, %bb.x ], [ %.sroa.653.0.copyload, %.lr.ph.split.preheader ] ; 2 uses
  %i.he = phi double [ %i.hh, %bb.x ], [ %i.ec, %.lr.ph.split.preheader ] ; 2 uses
  %.0187 = phi i64 [ %i.hc, %bb.x ], [ 1, %.lr.ph.split.preheader ]
  %.0140186 = phi i64 [ %i.hg, %bb.x ], [ %i.dr, %.lr.ph.split.preheader ] ; 3 uses
  %i.hf = add nuw i64 %.0140186, 1
  %i.hg = urem i64 %i.hf, %.0156                  ; 2 uses
  %gep183 = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.hg ; 2 uses
  %i.hh = load double, ptr %gep183, align 8       ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %gep183, i64 8
  %i.hj = load double, ptr %i.hi, align 8         ; 2 uses
  %i.hk = fsub double %i.hj, %i.hd
  %i.hl = fneg double %i.hk                       ; 2 uses
  %i.hm = fsub double %i.hh, %i.he                ; 2 uses
  %i.hn = fmul double %i.hd, %i.hm
  %i.ho = call double @llvm.fmuladd.f64(double %i.hl, double %i.he, double %i.hn)
  %i.hp = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x double> %i.gb, %i.hq
  %i.hs = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.ga, <2 x double> %i.hr)
  %i.hv = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fsub <2 x double> %i.hu, %i.hw
  %i.hy = fcmp oge <2 x double> %i.hx, zeroinitializer ; 2 uses
  %shift229 = shufflevector <2 x i1> %i.hy, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop230 = xor <2 x i1> %i.hy, %shift229
  %.not175 = extractelement <2 x i1> %foldExtExtBinop230, i64 0
  br i1 %.not175, label %.thread, label %bb.x

.thread:                                          ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi188 = phi i64 [ %i.gi, %.lr.ph.split.us ], [ %.0140186, %.lr.ph.split ]
  store i64 %.us-phi188, ptr %i.dm, align 8, !tbaa !87
  br label %bb.y

._crit_edge:                                      ; preds = %bb.x, %bb.w
  %.0141.lcssa = phi i64 [ %i.gi, %bb.w ], [ %.0140186, %bb.x ]
  store i64 %.0141.lcssa, ptr %i.dm, align 8, !tbaa !87
  br label %bb.y

bb.y:                                             ; preds = %.thread, %._crit_edge, %bb.t, %bb.v, %bb.p, %bb.q, %bb.c, %bb.d, %bb.e, %bb.a, %bb.s
  %.2155 = phi i1 [ false, %bb.a ], [ %i.r, %bb.e ], [ %i.dl, %bb.s ], [ false, %bb.p ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.q ], [ false, %bb.t ], [ true, %._crit_edge ], [ false, %.thread ], [ true, %bb.v ]
  ret i1 %.2155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @poly_path(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #20 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @poly_gencode(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca [2 x %struct.pointf_s], align 16    ; 13 uses
  %3 = alloca %struct.graphviz_polygon_style_t, align 4 ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 8 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !200  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.h = load i16, ptr %i.g, align 8
  %i.i = trunc i16 %i.h to i1
  br i1 %i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = load i32, ptr %i.j, align 8, !tbaa !204
  %i.l = and i32 %i.k, 4
  %.not194 = icmp eq i32 %i.l, 0
  br i1 %.not194, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !205
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !206
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207
  tail call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.b
  %i.s = phi i1 [ true, %bb.c ], [ true, %.thread ], [ false, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57  ; 36 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !56 ; 3 uses
  %i.ad = add i64 %i.aa, 5                        ; 5 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.ae = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %mul.ov.i = icmp ugt i64 %i.ad, 1152921504606846975
  br i1 %mul.ov.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.5, i64 noundef %i.ad, i64 noundef 16) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ah = tail call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 16) #27 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %gv_calloc.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ak = shl nuw i64 %i.ad, 4
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.6, i64 noundef %i.ak) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.g
  %i.am = phi ptr [ %i.ae, %.thread.i ], [ %i.ah, %bb.g ] ; 35 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !8
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !25  ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load double, ptr %i.as, align 8, !tbaa !141
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.av = load double, ptr %i.au, align 8, !tbaa !183
  %i.aw = fadd double %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.az = load double, ptr %i.ay, align 8, !tbaa !140
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !9
  %i.bb = fmul <2 x double> %i.ba, splat (double 7.200000e+01)
  %i.bc = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.az, i64 1
  %i.be = fdiv <2 x double> %i.bd, %i.bb          ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 4
  %i.bf = call fastcc ptr @checkStyle(ptr noundef nonnull %1, ptr noundef %3) ; 2 uses
  %.not.i213 = icmp eq ptr %i.bf, null
  br i1 %.not.i213, label %bb.j, label %bb.i

bb.i:                                             ; preds = %gv_calloc.exit
  tail call void @gvrender_set_style(ptr noundef nonnull %0, ptr noundef nonnull %i.bf) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %gv_calloc.exit
  %i.bg = load ptr, ptr @N_penwidth, align 8, !tbaa !61 ; 2 uses
  %.not10.i = icmp eq ptr %i.bg, null
  br i1 %.not10.i, label %stylenode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call ptr @agxget(ptr noundef nonnull %1, ptr noundef nonnull %i.bg) #26 ; 2 uses
  %.not11.i = icmp eq ptr %i.bh, null
  br i1 %.not11.i, label %stylenode.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !87
  %.not12.i = icmp eq i8 %i.bi, 0
  br i1 %.not12.i, label %stylenode.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr @N_penwidth, align 8, !tbaa !61
  %i.bk = tail call double @late_double(ptr noundef nonnull %1, ptr noundef %i.bj, double noundef 1.000000e+00, double noundef 0.000000e+00) #26
  tail call void @gvrender_set_penwidth(ptr noundef nonnull %0, double noundef %i.bk) #26
  br label %stylenode.exit

stylenode.exit:                                   ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.bl = load i32, ptr %3, align 4               ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 161
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !208
  %i.bp = zext i8 %i.bo to i32                    ; 4 uses
  %i.bq = and i32 %i.bp, 1
  %.not195 = icmp eq i32 %i.bq, 0
  br i1 %.not195, label %bb.o, label %bb.n

bb.n:                                             ; preds = %stylenode.exit
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.87) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.88) #26
  br label %bb.ad

bb.o:                                             ; preds = %stylenode.exit
  %i.br = and i32 %i.bp, 2
  %.not196 = icmp eq i32 %i.br, 0
  br i1 %.not196, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.89) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #26
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.bs = and i32 %i.bp, 8
  %.not197 = icmp eq i32 %i.bs, 0
  br i1 %.not197, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.91) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.92) #26
  br label %bb.ad

bb.s:                                             ; preds = %bb.q
  %i.bt = and i32 %i.bp, 4
  %.not198 = icmp eq i32 %i.bt, 0
  br i1 %.not198, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.93) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.94) #26
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.bu = trunc i32 %i.bl to i1
  br i1 %i.bu, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bv = load ptr, ptr @N_fillcolor, align 8, !tbaa !61
  %i.bw = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.bv, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !87
  %.not.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i, label %bb.w, label %findFill.exit

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr @N_color, align 8, !tbaa !61
  %i.bz = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.by, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !87
  %.not6.i.i = icmp eq i8 %i.ca, 0
  %spec.select.i.i = select i1 %.not6.i.i, ptr @.str.107, ptr %i.bz
  br label %findFill.exit

findFill.exit:                                    ; preds = %bb.v, %bb.w
  %.0.i.i = phi ptr [ %i.bw, %bb.v ], [ %spec.select.i.i, %bb.w ] ; 3 uses
  %i.cb = call zeroext i1 @findStopColor(ptr noundef %.0.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #26
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %findFill.exit
  %i.cc = load ptr, ptr %i.a, align 16, !tbaa !115
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %i.cc) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !115 ; 2 uses
  %.not201 = icmp eq ptr %i.ce, null
  %i.cf = load ptr, ptr @N_gradientangle, align 8, !tbaa !61
  %i.cg = call i32 @late_int(ptr noundef nonnull %1, ptr noundef %i.cf, i32 noundef 0, i32 noundef 0) #26
  %i.ch = load double, ptr %i.b, align 8, !tbaa !9
  %.str.95. = select i1 %.not201, ptr @.str.95, ptr %i.ce
  call void @gvrender_set_gradient_vals(ptr noundef nonnull %0, ptr noundef nonnull %.str.95., i32 noundef %i.cg, double noundef %i.ch) #26
  %i.ci = and i32 %i.bl, 2
  %.not202 = icmp eq i32 %i.ci, 0
  %. = select i1 %.not202, i32 2, i32 3
  br label %bb.z

bb.y:                                             ; preds = %findFill.exit
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %.0.i.i) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0184 = phi i32 [ %., %bb.x ], [ 1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ac

bb.aa:                                            ; preds = %bb.u
  %i.cj = and i32 %i.bl, 576
  %or.cond211 = icmp eq i32 %i.cj, 0
  br i1 %or.cond211, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = tail call fastcc ptr @findFill(ptr noundef nonnull %1)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %.1185 = phi i32 [ %.0184, %bb.z ], [ 1, %bb.ab ], [ 0, %bb.aa ]
  %.0181 = phi ptr [ %.0.i.i, %bb.z ], [ %i.ck, %bb.ab ], [ null, %bb.aa ]
  %i.cl = load ptr, ptr @N_color, align 8, !tbaa !61
  %i.cm = call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.cl, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !87
  %.not.i214 = icmp eq i8 %i.cn, 0
end_hunk_0
begin_hunk_1_@poly_gencode:bb.a
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !30 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !82, !range !83, !noundef !84
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !85
  %i.cv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(7) @.str.4) #31
  %i.cw = icmp eq i32 %i.cv, 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cx = phi i1 [ true, %bb.ad ], [ %i.cw, %bb.ae ]
  %i.cy = icmp eq i64 %i.ac, 0
  %i.cz = icmp ne i32 %.2, 0
  %or.cond = and i1 %i.cy, %i.cz
  %or.cond3 = select i1 %or.cond, i1 %i.cx, i1 false
  br i1 %or.cond3, label %.thread278, label %bb.ag

.thread278:                                       ; preds = %bb.af
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.96) #26
  br label %.preheader219.lr.ph

bb.ag:                                            ; preds = %bb.af
  %.not250 = icmp eq i64 %i.ac, 0
  br i1 %.not250, label %._crit_edge223, label %.preheader219.lr.ph

.preheader219.lr.ph:                              ; preds = %.thread278, %bb.ag
  %.0179281 = phi i64 [ 1, %.thread278 ], [ %i.ac, %bb.ag ] ; 5 uses
  %.not251 = icmp eq i64 %i.aa, 0                 ; 3 uses
  %i.da = icmp ult i64 %i.aa, 3
  %i.db = and i32 %i.bl, 1024
  %.not209 = icmp eq i32 %i.db, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.dd = and i32 %i.bl, 520204
  %.not217 = icmp eq i32 %i.dd, 0
  %i.de = and i32 %i.bl, 512
  %.not379 = icmp eq i32 %i.de, 0
  %i.df = and i32 %i.bl, 8
  %.not210 = icmp eq i32 %i.df, 0                 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  br i1 %i.da, label %.preheader219.us.peel, label %.preheader219.lr.ph.split

.preheader219.us.peel:                            ; preds = %.preheader219.lr.ph
  br i1 %.not251, label %._crit_edge.us.peel, label %.lr.ph.us.peel

.lr.ph.us.peel:                                   ; preds = %.preheader219.us.peel
  %i.di = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  %i.dk = load <2 x double>, ptr %i.y, align 8, !tbaa !9
  %i.dl = load <2 x double>, ptr %i.dj, align 8, !tbaa !9
  %i.dm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.be, <2 x double> %i.dl)
  store <2 x double> %i.dm, ptr %i.am, align 8, !tbaa !9
  %exitcond261.not.peel = icmp eq i64 %i.aa, 1
  br i1 %exitcond261.not.peel, label %._crit_edge.us.peel, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.us.peel
  %gep.us.1.peel = getelementptr i8, ptr %i.y, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.do = load <2 x double>, ptr %gep.us.1.peel, align 8, !tbaa !9
  %i.dp = load <2 x double>, ptr %i.dj, align 8, !tbaa !9
  %i.dq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.be, <2 x double> %i.dp)
  store <2 x double> %i.dq, ptr %i.dn, align 8, !tbaa !9
  br label %._crit_edge.us.peel

._crit_edge.us.peel:                              ; preds = %.lr.ph.us.peel, %bb.ah, %.preheader219.us.peel
  br i1 %.not379, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.us.peel
  %i.dr = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %.1, i32 noundef 58) #31
  %.not218.us.peel = icmp eq ptr %i.dr, null
  br i1 %.not218.us.peel, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = call i32 @wedgedEllipse(ptr noundef %0, ptr noundef %i.am, ptr noundef nonnull %.1) #26
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.du = call ptr @agnameof(ptr noundef nonnull %1) #26
  %i.dv = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.97, ptr noundef %i.du) #26 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %._crit_edge.us.peel
  %.4.us.peel = phi i32 [ %.2, %._crit_edge.us.peel ], [ %.2, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  call void @gvrender_ellipse(ptr noundef %0, ptr noundef %i.am, i32 noundef %.4.us.peel) #26
  br i1 %.not210, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val.us.peel = load ptr, ptr %i.t, align 8, !tbaa !25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.us.peel, i64 96
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !140
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.us.peel, i64 112
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.us.peel, i64 32
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !183
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dx, i64 1
  %i.ed = fmul <2 x double> %i.ec, <double 1.000000e+00, double 7.500000e-01>
  %i.ee = fmul <2 x double> %i.ed, <double 6.614000e-01, double 5.000000e-01> ; 3 uses
  %i.ef = load <2 x double>, ptr %i.dz, align 8
  %i.eg = fadd <2 x double> %i.ee, %i.ef          ; 3 uses
  store <2 x double> %i.eg, ptr %2, align 16, !tbaa !9
  %i.eh = extractelement <2 x double> %i.eg, i64 1
  store double %i.eh, ptr %i.dh, align 8, !tbaa !17
  %i.ei = extractelement <2 x double> %i.eg, i64 0
  %i.ej = extractelement <2 x double> %i.ee, i64 0
  %i.ek = call double @llvm.fmuladd.f64(double %i.ej, double -2.000000e+00, double %i.ei)
  store double %i.ek, ptr %i.dg, align 16, !tbaa !19
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 2) #26
  %i.el = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  %i.em = extractelement <2 x double> %i.ee, i64 1
  %i.en = call double @llvm.fmuladd.f64(double %i.em, double -2.000000e+00, double %i.el) ; 2 uses
  store double %i.en, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  store double %i.en, ptr %i.dh, align 8, !tbaa !17
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %exitcond262.not.peel = icmp eq i64 %.0179281, 1
  br i1 %exitcond262.not.peel, label %._crit_edge223, label %.preheader219.us.preheader.peel.newph

.preheader219.us.preheader.peel.newph:            ; preds = %bb.an
  %exitcond261.not = icmp eq i64 %i.aa, 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %.preheader219.us

.preheader219.us:                                 ; preds = %.preheader219.us.preheader.peel.newph, %bb.aq
  %.0178222.us = phi i64 [ %i.fk, %bb.aq ], [ 1, %.preheader219.us.preheader.peel.newph ] ; 2 uses
  br i1 %.not251, label %._crit_edge.us, label %.lr.ph.us

bb.ao:                                            ; preds = %.lr.ph.us
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 16
  %i.ep = load <2 x double>, ptr %gep.us.1, align 8, !tbaa !9
  %i.eq = load <2 x double>, ptr %i.fn, align 8, !tbaa !9
  %i.er = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.be, <2 x double> %i.eq)
  store <2 x double> %i.er, ptr %i.eo, align 8, !tbaa !9
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.preheader219.us, %bb.ao, %.lr.ph.us
  call void @gvrender_ellipse(ptr noundef %0, ptr noundef %i.am, i32 noundef 0) #26
  br i1 %.not210, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.us
  %.val.us = load ptr, ptr %i.t, align 8, !tbaa !25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.es = getelementptr inbounds nuw i8, ptr %.val.us, i64 96
  %i.et = load double, ptr %i.es, align 8, !tbaa !140
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.us, i64 112
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.us, i64 32
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !183
  %i.ex = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.et, i64 1
  %i.ez = fmul <2 x double> %i.ey, <double 1.000000e+00, double 7.500000e-01>
  %i.fa = fmul <2 x double> %i.ez, <double 6.614000e-01, double 5.000000e-01> ; 3 uses
  %i.fb = load <2 x double>, ptr %i.ev, align 8
  %i.fc = fadd <2 x double> %i.fa, %i.fb          ; 3 uses
  store <2 x double> %i.fc, ptr %2, align 16, !tbaa !9
  %i.fd = extractelement <2 x double> %i.fc, i64 1
  store double %i.fd, ptr %i.dh, align 8, !tbaa !17
  %i.fe = extractelement <2 x double> %i.fc, i64 0
  %i.ff = extractelement <2 x double> %i.fa, i64 0
  %i.fg = call double @llvm.fmuladd.f64(double %i.ff, double -2.000000e+00, double %i.fe)
  store double %i.fg, ptr %i.dg, align 16, !tbaa !19
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 2) #26
  %i.fh = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  %i.fi = extractelement <2 x double> %i.fa, i64 1
  %i.fj = call double @llvm.fmuladd.f64(double %i.fi, double -2.000000e+00, double %i.fh) ; 2 uses
  store double %i.fj, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  store double %i.fj, ptr %i.dh, align 8, !tbaa !17
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.us
  %i.fk = add nuw i64 %.0178222.us, 1             ; 2 uses
  %exitcond262.not = icmp eq i64 %i.fk, %.0179281
  br i1 %exitcond262.not, label %._crit_edge223, label %.preheader219.us, !llvm.loop !209

.lr.ph.us:                                        ; preds = %.preheader219.us
  %i.fl = mul i64 %.0178222.us, %i.aa
  %invariant.gep.us = getelementptr [16 x i8], ptr %i.y, i64 %i.fl ; 2 uses
  %i.fm = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32 ; 2 uses
  %i.fo = load <2 x double>, ptr %invariant.gep.us, align 8, !tbaa !9
  %i.fp = load <2 x double>, ptr %i.fn, align 8, !tbaa !9
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.be, <2 x double> %i.fp)
  store <2 x double> %i.fq, ptr %i.am, align 8, !tbaa !9
  br i1 %exitcond261.not, label %._crit_edge.us, label %bb.ao

.preheader219.lr.ph.split:                        ; preds = %.preheader219.lr.ph
  %i.fr = and i32 %i.bl, 64
  %.not208 = icmp eq i32 %i.fr, 0
  %i.fs = add i64 %i.aa, -1                       ; 4 uses
  %i.ft = shl i64 %i.aa, 4                        ; 3 uses
  %scevgep305.a = getelementptr i8, ptr %i.am, i64 %i.ft ; 4 uses
  %i.fu = mul i64 %.0179281, %i.aa
  %i.fv = shl i64 %i.fu, 4
  %scevgep306 = getelementptr i8, ptr %i.y, i64 %i.fv ; 2 uses
  br i1 %.not208, label %.preheader219.us224.preheader, label %.preheader219.us237.preheader

.preheader219.us237.preheader:                    ; preds = %.preheader219.lr.ph.split
  %min.iters.check = icmp ult i64 %i.aa, 10
  %mul.result = shl i64 %i.fs, 4
  %mul.overflow = icmp ugt i64 %i.fs, 1152921504606846975
  %bound0 = icmp ult ptr %i.am, %scevgep306
  %bound1 = icmp ult ptr %i.y, %scevgep305.a
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.ft, 0
  %i.fw = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.aa, 2305843009213693950     ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat293 = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader219.us237

.preheader219.us224.preheader:                    ; preds = %.preheader219.lr.ph.split
  %min.iters.check317 = icmp ult i64 %i.aa, 10
  %mul.result302 = shl i64 %i.fs, 4
  %mul.overflow303 = icmp ugt i64 %i.fs, 1152921504606846975
  %bound0308 = icmp ult ptr %i.am, %scevgep306
  %bound1309 = icmp ult ptr %i.y, %scevgep305.a
  %found.conflict310 = and i1 %bound0308, %bound1309
  %stride.check311 = icmp slt i64 %i.ft, 0
  %i.fx = or i1 %found.conflict310, %stride.check311
  %n.vec319 = and i64 %i.aa, 2305843009213693950  ; 3 uses
  %broadcast.splat321.a = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat323 = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %cmp.n336 = icmp eq i64 %i.aa, %n.vec319
  %xtraiter373 = and i64 %i.aa, 1
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br label %.preheader219.us224

.preheader219.us224:                              ; preds = %.preheader219.us224.preheader, %bb.av
  %.0178222.us225 = phi i64 [ %i.gi, %bb.av ], [ 0, %.preheader219.us224.preheader ] ; 2 uses
  %.3221.us226 = phi i32 [ 0, %bb.av ], [ %.2, %.preheader219.us224.preheader ] ; 3 uses
  br i1 %.not251, label %._crit_edge.us234, label %.lr.ph.us232

scalar.ph316:                                     ; preds = %scalar.ph316.prol.loopexit, %scalar.ph316
  %.0177220.us227 = phi i64 [ %i.gh, %scalar.ph316 ], [ %.0177220.us227.unr, %scalar.ph316.prol.loopexit ] ; 4 uses
  %gep.us228 = getelementptr [16 x i8], ptr %invariant.gep.us233, i64 %.0177220.us227
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0177220.us227
  %i.fz = load <2 x double>, ptr %gep.us228, align 8, !tbaa !9
  %i.ga = load <2 x double>, ptr %i.gl, align 8, !tbaa !9
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.be, <2 x double> %i.ga)
  store <2 x double> %i.gb, ptr %i.fy, align 8, !tbaa !9
  %i.gc = add nuw i64 %.0177220.us227, 1          ; 2 uses
  %gep.us228.1 = getelementptr [16 x i8], ptr %invariant.gep.us233, i64 %i.gc
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.gc
  %i.ge = load <2 x double>, ptr %gep.us228.1, align 8, !tbaa !9
  %i.gf = load <2 x double>, ptr %i.gl, align 8, !tbaa !9
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.be, <2 x double> %i.gf)
  store <2 x double> %i.gg, ptr %i.gd, align 8, !tbaa !9
  %i.gh = add nuw i64 %.0177220.us227, 2          ; 2 uses
  %exitcond259.not.1 = icmp eq i64 %i.gh, %i.aa
  br i1 %exitcond259.not.1, label %._crit_edge.us234, label %scalar.ph316, !llvm.loop !210

._crit_edge.us234:                                ; preds = %scalar.ph316.prol.loopexit, %scalar.ph316, %middle.block335, %.preheader219.us224
  br i1 %.not209, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.us234
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull @.str.96) #26
  call void @gvrender_polygon(ptr noundef %0, ptr noundef %i.am, i64 noundef %i.aa, i32 noundef %.3221.us226) #26
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.0180) #26
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %i.dc, i64 noundef 2) #26
  br label %bb.av

bb.as:                                            ; preds = %._crit_edge.us234
  br i1 %.not217, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @round_corners(ptr noundef %0, ptr noundef %i.am, i64 noundef %i.aa, i32 %i.bl, i32 noundef %.3221.us226)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  call void @gvrender_polygon(ptr noundef %0, ptr noundef %i.am, i64 noundef %i.aa, i32 noundef %.3221.us226) #26
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ar
  %i.gi = add nuw i64 %.0178222.us225, 1          ; 2 uses
  %exitcond260.not = icmp eq i64 %i.gi, %.0179281
  br i1 %exitcond260.not, label %._crit_edge223, label %.preheader219.us224, !llvm.loop !211

.lr.ph.us232:                                     ; preds = %.preheader219.us224
  %i.gj = mul i64 %.0178222.us225, %i.aa
  %invariant.gep.us233 = getelementptr [16 x i8], ptr %i.y, i64 %i.gj ; 6 uses
  %i.gk = load ptr, ptr %i.t, align 8, !tbaa !25  ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gn = getelementptr i8, ptr %invariant.gep.us233, i64 %mul.result302
  %i.go = icmp ult ptr %i.gn, %invariant.gep.us233
  %i.gp = or i1 %i.go, %mul.overflow303
  %or.cond383 = select i1 %min.iters.check317, i1 true, i1 %i.gp
  br i1 %or.cond383, label %scalar.ph316.preheader, label %vector.memcheck304

vector.memcheck304:                               ; preds = %.lr.ph.us232
  %scevgep307 = getelementptr i8, ptr %i.gk, i64 48
  %bound0312 = icmp ult ptr %i.am, %scevgep307
  %bound1313 = icmp ult ptr %i.gl, %scevgep305.a
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %i.fx, %found.conflict314
  br i1 %conflict.rdx315, label %scalar.ph316.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck304
  %i.gq = load double, ptr %i.gl, align 8, !tbaa !212, !alias.scope !213
  %broadcast.splatinsert329.a = insertelement <2 x double> poison, double %i.gq, i64 0
  %broadcast.splat330.a = shufflevector <2 x double> %broadcast.splatinsert329.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = load double, ptr %i.gm, align 8, !tbaa !216, !alias.scope !213
  %broadcast.splatinsert331 = insertelement <2 x double> poison, double %i.gr, i64 0
  %broadcast.splat332 = shufflevector <2 x double> %broadcast.splatinsert331, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph318
  %index325 = phi i64 [ 0, %vector.ph318 ], [ %index.next334, %vector.body324 ] ; 3 uses
  %i.gs = getelementptr [16 x i8], ptr %invariant.gep.us233, i64 %index325
  %wide.vec326 = load <4 x double>, ptr %i.gs, align 8, !tbaa !9, !alias.scope !217 ; 2 uses
  %strided.vec327 = shufflevector <4 x double> %wide.vec326, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec328 = shufflevector <4 x double> %wide.vec326, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec327, <2 x double> %broadcast.splat321.a, <2 x double> %broadcast.splat330.a)
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index325
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec328, <2 x double> %broadcast.splat323, <2 x double> %broadcast.splat332)
  %interleaved.vec333 = shufflevector <2 x double> %i.gt, <2 x double> %i.gv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec333, ptr %i.gu, align 8, !tbaa !9, !alias.scope !219, !noalias !221
  %index.next334 = add nuw i64 %index325, 2       ; 2 uses
  %i.gw = icmp eq i64 %index.next334, %n.vec319
  br i1 %i.gw, label %middle.block335, label %vector.body324, !llvm.loop !222

middle.block335:                                  ; preds = %vector.body324
  br i1 %cmp.n336, label %._crit_edge.us234, label %scalar.ph316.preheader

scalar.ph316.preheader:                           ; preds = %vector.memcheck304, %.lr.ph.us232, %middle.block335
  %.0177220.us227.ph = phi i64 [ 0, %vector.memcheck304 ], [ %n.vec319, %middle.block335 ], [ 0, %.lr.ph.us232 ] ; 5 uses
  %.neg378.a = or disjoint i64 %.0177220.us227.ph, 1
  br i1 %lcmp.mod374.not, label %scalar.ph316.prol.loopexit, label %scalar.ph316.prol

scalar.ph316.prol:                                ; preds = %scalar.ph316.preheader
  %gep.us228.prol = getelementptr [16 x i8], ptr %invariant.gep.us233, i64 %.0177220.us227.ph
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0177220.us227.ph
  %i.gy = load <2 x double>, ptr %gep.us228.prol, align 8, !tbaa !9
  %i.gz = load <2 x double>, ptr %i.gl, align 8, !tbaa !9
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.be, <2 x double> %i.gz)
  store <2 x double> %i.ha, ptr %i.gx, align 8, !tbaa !9
  %i.hb = or disjoint i64 %.0177220.us227.ph, 1
  br label %scalar.ph316.prol.loopexit

scalar.ph316.prol.loopexit:                       ; preds = %scalar.ph316.prol, %scalar.ph316.preheader
  %.0177220.us227.unr = phi i64 [ %.0177220.us227.ph, %scalar.ph316.preheader ], [ %i.hb, %scalar.ph316.prol ]
  %i.hc = icmp eq i64 %i.aa, %.neg378.a
  br i1 %i.hc, label %._crit_edge.us234, label %scalar.ph316

.preheader219.us237:                              ; preds = %.preheader219.us237.preheader, %bb.ay
  %.0178222.us238 = phi i64 [ %i.ii, %bb.ay ], [ 0, %.preheader219.us237.preheader ] ; 3 uses
  %i.hd = mul i64 %.0178222.us238, %i.aa
  %invariant.gep.us245 = getelementptr [16 x i8], ptr %i.y, i64 %i.hd ; 6 uses
  %i.he = load ptr, ptr %i.t, align 8, !tbaa !25  ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.he, i64 32 ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hg = getelementptr i8, ptr %invariant.gep.us245, i64 %mul.result
  %5 = icmp ult ptr %i.hg, %invariant.gep.us245
  %6 = or i1 %5, %mul.overflow
  %or.cond384 = select i1 %min.iters.check, i1 true, i1 %6
  br i1 %or.cond384, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader219.us237
  %scevgep288 = getelementptr i8, ptr %i.he, i64 48
  %bound0289 = icmp ult ptr %i.am, %scevgep288
  %bound1290 = icmp ult ptr %4, %scevgep305.a
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx = or i1 %i.fw, %found.conflict291
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hh = load double, ptr %4, align 8, !tbaa !212, !alias.scope !223
  %broadcast.splatinsert295 = insertelement <2 x double> poison, double %i.hh, i64 0
  %broadcast.splat296 = shufflevector <2 x double> %broadcast.splatinsert295, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = load double, ptr %i.hf, align 8, !tbaa !216, !alias.scope !223
  %broadcast.splatinsert297 = insertelement <2 x double> poison, double %i.hi, i64 0
  %broadcast.splat298 = shufflevector <2 x double> %broadcast.splatinsert297, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hj = getelementptr [16 x i8], ptr %invariant.gep.us245, i64 %index
  %wide.vec = load <4 x double>, ptr %i.hj, align 8, !tbaa !9, !alias.scope !226 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec294 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %broadcast.splat, <2 x double> %broadcast.splat296)
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec294, <2 x double> %broadcast.splat293, <2 x double> %broadcast.splat298)
  %interleaved.vec = shufflevector <2 x double> %i.hk, <2 x double> %i.hm, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.hl, align 8, !tbaa !9, !alias.scope !228, !noalias !230
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us246, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader219.us237, %middle.block
  %.0177220.us239.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.preheader219.us237 ] ; 5 uses
  %.neg = or disjoint i64 %.0177220.us239.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.us240.prol = getelementptr [16 x i8], ptr %invariant.gep.us245, i64 %.0177220.us239.ph
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0177220.us239.ph
  %i.hp = load <2 x double>, ptr %gep.us240.prol, align 8, !tbaa !9
  %i.hq = load <2 x double>, ptr %4, align 8, !tbaa !9
  %i.hr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.be, <2 x double> %i.hq)
  store <2 x double> %i.hr, ptr %i.ho, align 8, !tbaa !9
  %i.hs = or disjoint i64 %.0177220.us239.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0177220.us239.unr = phi i64 [ %.0177220.us239.ph, %scalar.ph.preheader ], [ %i.hs, %scalar.ph.prol ]
  %i.ht = icmp eq i64 %i.aa, %.neg
  br i1 %i.ht, label %._crit_edge.us246, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0177220.us239 = phi i64 [ %i.id, %scalar.ph ], [ %.0177220.us239.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %gep.us240 = getelementptr [16 x i8], ptr %invariant.gep.us245, i64 %.0177220.us239
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0177220.us239
  %i.hv = load <2 x double>, ptr %gep.us240, align 8, !tbaa !9
  %i.hw = load <2 x double>, ptr %4, align 8, !tbaa !9
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.be, <2 x double> %i.hw)
  store <2 x double> %i.hx, ptr %i.hu, align 8, !tbaa !9
  %i.hy = add nuw i64 %.0177220.us239, 1          ; 2 uses
  %gep.us240.1 = getelementptr [16 x i8], ptr %invariant.gep.us245, i64 %i.hy
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.hy
  %i.ia = load <2 x double>, ptr %gep.us240.1, align 8, !tbaa !9
  %i.ib = load <2 x double>, ptr %4, align 8, !tbaa !9
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.be, <2 x double> %i.ib)
  store <2 x double> %i.ic, ptr %i.hz, align 8, !tbaa !9
  %i.id = add nuw i64 %.0177220.us239, 2          ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.id, %i.aa
  br i1 %exitcond.not.1, label %._crit_edge.us246, label %scalar.ph, !llvm.loop !232

bb.aw:                                            ; preds = %._crit_edge.us246
  %i.ie = call i32 @stripedBox(ptr noundef %0, ptr noundef nonnull %i.am, ptr noundef %.1, i32 noundef 1) #26
  %i.if = icmp sgt i32 %i.ie, 1
  br i1 %i.if, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ig = call ptr @agnameof(ptr noundef nonnull %1) #26
  %i.ih = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.97, ptr noundef %i.ig) #26 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.us246
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.am, i64 noundef %i.aa, i32 noundef 0) #26
  %i.ii = add nuw i64 %.0178222.us238, 1          ; 2 uses
  %exitcond256.not = icmp eq i64 %i.ii, %.0179281
  br i1 %exitcond256.not, label %._crit_edge223, label %.preheader219.us237, !llvm.loop !211

._crit_edge.us246:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ij = icmp eq i64 %.0178222.us238, 0
  br i1 %i.ij, label %bb.aw, label %bb.ay

._crit_edge223:                                   ; preds = %bb.ay, %bb.av, %bb.an, %bb.aq, %bb.ag
  %.3.lcssa = phi i32 [ %.2, %bb.ag ], [ 0, %bb.an ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.ay ]
  %i.ik = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !30 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load i8, ptr %i.in, align 8, !tbaa !82, !range !83, !noundef !84
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %._crit_edge223
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !85 ; 2 uses
  %i.ir = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.iq, ptr noundef nonnull dereferenceable(7) @.str.4) #31
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.ba, label %.preheader

bb.ba:                                            ; preds = %bb.az
  %i.it = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #26 ; 3 uses
  %.not205 = icmp eq ptr %i.it, null
  br i1 %.not205, label %.critedge, label %.split

.split:                                           ; preds = %bb.ba
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !87
  %.not206.not = icmp eq i8 %i.iu, 0
  br i1 %.not206.not, label %.critedge, label %.preheader

bb.bb:                                            ; preds = %._crit_edge223
  %i.iv = call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #26 ; 3 uses
  %.not203 = icmp eq ptr %i.iv, null
  br i1 %.not203, label %.critedge, label %.split216

.split216:                                        ; preds = %bb.bb
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !87
  %.not204.not = icmp eq i8 %i.iw, 0
  br i1 %.not204.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.split, %.split216, %bb.az
  %.0182215.ph = phi ptr [ %i.iq, %bb.az ], [ %i.it, %.split ], [ %i.iv, %.split216 ]
  %.not252 = icmp eq i64 %i.aa, 0
  br i1 %.not252, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ix = load ptr, ptr %i.t, align 8, !tbaa !25  ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  %min.iters.check350 = icmp ult i64 %i.aa, 6
  br i1 %min.iters.check350, label %scalar.ph349.preheader, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph
  %i.ja = shl i64 %i.aa, 4                        ; 2 uses
  %scevgep339.a = getelementptr i8, ptr %i.am, i64 %i.ja ; 2 uses
  %scevgep340 = getelementptr i8, ptr %i.y, i64 %i.ja
  %scevgep341 = getelementptr i8, ptr %i.ix, i64 48
  %bound0342 = icmp ult ptr %i.am, %scevgep340
  %bound1343 = icmp ult ptr %i.y, %scevgep339.a
  %found.conflict344 = and i1 %bound0342, %bound1343
  %bound0345 = icmp ult ptr %i.am, %scevgep341
  %bound1346 = icmp ult ptr %i.iy, %scevgep339.a
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %found.conflict344, %found.conflict347
  br i1 %conflict.rdx348, label %scalar.ph349.preheader, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck338
  %n.vec352 = and i64 %i.aa, -2                   ; 3 uses
  %i.jb = load double, ptr %i.iy, align 8, !tbaa !212, !alias.scope !233
  %broadcast.splatinsert362.a = insertelement <2 x double> poison, double %i.jb, i64 0
  %broadcast.splat363.a = shufflevector <2 x double> %broadcast.splatinsert362.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = load double, ptr %i.iz, align 8, !tbaa !216, !alias.scope !233
  %broadcast.splatinsert364 = insertelement <2 x double> poison, double %i.jc, i64 0
  %broadcast.splat365 = shufflevector <2 x double> %broadcast.splatinsert364, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat354.a = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat356 = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph351
  %index358 = phi i64 [ 0, %vector.ph351 ], [ %index.next367, %vector.body357 ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %index358
  %wide.vec359 = load <4 x double>, ptr %i.jd, align 8, !tbaa !9, !alias.scope !236 ; 2 uses
  %strided.vec360 = shufflevector <4 x double> %wide.vec359, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec361 = shufflevector <4 x double> %wide.vec359, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.je = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec360, <2 x double> %broadcast.splat354.a, <2 x double> %broadcast.splat363.a)
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %index358
  %i.jg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec361, <2 x double> %broadcast.splat356, <2 x double> %broadcast.splat365)
  %interleaved.vec366 = shufflevector <2 x double> %i.je, <2 x double> %i.jg, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec366, ptr %i.jf, align 8, !tbaa !9, !alias.scope !238, !noalias !240
  %index.next367 = add nuw i64 %index358, 2       ; 2 uses
  %i.jh = icmp eq i64 %index.next367, %n.vec352
  br i1 %i.jh, label %middle.block368, label %vector.body357, !llvm.loop !241

middle.block368:                                  ; preds = %vector.body357
  %cmp.n369 = icmp eq i64 %i.aa, %n.vec352
  br i1 %cmp.n369, label %._crit_edge, label %scalar.ph349.preheader

scalar.ph349.preheader:                           ; preds = %vector.memcheck338, %.lr.ph, %middle.block368
  %.0249.ph = phi i64 [ 0, %vector.memcheck338 ], [ 0, %.lr.ph ], [ %n.vec352, %middle.block368 ] ; 5 uses
  %.neg380 = or disjoint i64 %.0249.ph, 1
  %xtraiter376 = and i64 %i.aa, 1
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %scalar.ph349.prol.loopexit, label %scalar.ph349.prol

scalar.ph349.prol:                                ; preds = %scalar.ph349.preheader
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.0249.ph
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0249.ph
  %i.jk = load <2 x double>, ptr %i.ji, align 8, !tbaa !9
  %i.jl = load <2 x double>, ptr %i.iy, align 8, !tbaa !9
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.be, <2 x double> %i.jl)
  store <2 x double> %i.jm, ptr %i.jj, align 8, !tbaa !9
  %i.jn = or disjoint i64 %.0249.ph, 1
  br label %scalar.ph349.prol.loopexit

scalar.ph349.prol.loopexit:                       ; preds = %scalar.ph349.prol, %scalar.ph349.preheader
  %.0249.unr = phi i64 [ %.0249.ph, %scalar.ph349.preheader ], [ %i.jn, %scalar.ph349.prol ]
  %i.jo = icmp eq i64 %i.aa, %.neg380
  br i1 %i.jo, label %._crit_edge, label %scalar.ph349

._crit_edge:                                      ; preds = %scalar.ph349.prol.loopexit, %scalar.ph349, %middle.block368, %.preheader
  %i.jp = icmp ne i32 %.3.lcssa, 0
  %i.jq = load ptr, ptr @N_imagescale, align 8, !tbaa !61
  %i.jr = call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.jq, ptr noundef nonnull @.str.15) #26
  %i.js = load ptr, ptr @N_imagepos, align 8, !tbaa !61
  %i.jt = call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.js, ptr noundef nonnull @.str.98) #26
  call void @gvrender_usershape(ptr noundef %0, ptr noundef nonnull %.0182215.ph, ptr noundef %i.am, i64 noundef %i.aa, i1 noundef zeroext %i.jp, ptr noundef %i.jr, ptr noundef %i.jt) #26
  br label %.critedge

scalar.ph349:                                     ; preds = %scalar.ph349.prol.loopexit, %scalar.ph349
  %.0249 = phi i64 [ %i.kf, %scalar.ph349 ], [ %.0249.unr, %scalar.ph349.prol.loopexit ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.0249
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0249
  %i.jw = load <2 x double>, ptr %i.ju, align 8, !tbaa !9
  %i.jx = load <2 x double>, ptr %i.iy, align 8, !tbaa !9
  %i.jy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.be, <2 x double> %i.jx)
  store <2 x double> %i.jy, ptr %i.jv, align 8, !tbaa !9
  %i.jz = add nuw i64 %.0249, 1                   ; 2 uses
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.jz
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.jz
  %i.kc = load <2 x double>, ptr %i.ka, align 8, !tbaa !9
  %i.kd = load <2 x double>, ptr %i.iy, align 8, !tbaa !9
  %i.ke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.be, <2 x double> %i.kd)
  store <2 x double> %i.ke, ptr %i.kb, align 8, !tbaa !9
  %i.kf = add nuw i64 %.0249, 2                   ; 2 uses
  %exitcond263.not.1 = icmp eq i64 %i.kf, %i.aa
  br i1 %exitcond263.not.1, label %._crit_edge, label %scalar.ph349, !llvm.loop !242

.critedge:                                        ; preds = %.split216, %.split, %bb.bb, %bb.ba, %._crit_edge
  call void @free(ptr noundef %i.am) #26
  %i.kg = load ptr, ptr %i.a, align 16, !tbaa !115
  call void @free(ptr noundef %i.kg) #26
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !115
  call void @free(ptr noundef %i.ki) #26
  %i.kj = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 136
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !65
  call void @emit_label(ptr noundef %0, i32 noundef 10, ptr noundef %i.kl) #26
  br i1 %i.s, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %.critedge
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !204
  %i.ko = and i32 %i.kn, 4
  %.not207 = icmp eq i32 %i.ko, 0
  br i1 %.not207, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kp = load ptr, ptr %i.e, align 8, !tbaa !200
  %i.kq = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !205
  %i.ks = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !206
  %i.ku = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !207
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.kp, ptr noundef %i.kr, ptr noundef %i.kt, ptr noundef %i.kv) #26
  br label %bb.be

end_hunk_1
