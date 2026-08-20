inline.NumInlined: 134
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_area_button_press_callback:bb.a

scalar.ph273.preheader:                           ; preds = %bb.p, %vector.memcheck266, %.lr.ph201
  %indvars.iv213.ph = phi i64 [ 0, %vector.memcheck266 ], [ 0, %.lr.ph201 ], [ %n.vec276, %bb.p ] ; 4 uses
  %i.ch = sub nsw i64 %wide.trip.count216, %indvars.iv213.ph
  %xtraiter303 = and i64 %i.ch, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %scalar.ph273.prol.loopexit, label %scalar.ph273.prol

scalar.ph273.prol:                                ; preds = %scalar.ph273.preheader, %bb.n
  %indvars.iv213.prol = phi i64 [ %indvars.iv.next214.prol, %bb.n ], [ %indvars.iv213.ph, %scalar.ph273.preheader ] ; 2 uses
  %prol.iter305 = phi i64 [ %prol.iter305.next, %bb.n ], [ 0, %scalar.ph273.preheader ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv213.prol
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !26
  %i.cl = fsub reassoc nsz arcp contract afn float %i.ck, %i.cg
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.ce
  %i.cn = fsub reassoc nsz arcp contract afn float %i.bz, %i.cm ; 2 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cn
  %i.cp = fcmp reassoc nsz arcp contract afn olt float %i.co, 1.600000e-03
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %scalar.ph273.prol
  store i32 %i.cc, ptr %i.ae, align 8, !tbaa !135
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %scalar.ph273.prol
  %indvars.iv.next214.prol = add nuw nsw i64 %indvars.iv213.prol, 1 ; 2 uses
  %prol.iter305.next = add i64 %prol.iter305, 1   ; 2 uses
  %prol.iter305.cmp.not = icmp eq i64 %prol.iter305.next, %xtraiter303
  br i1 %prol.iter305.cmp.not, label %scalar.ph273.prol.loopexit, label %scalar.ph273.prol, !llvm.loop !231

scalar.ph273.prol.loopexit:                       ; preds = %bb.n, %scalar.ph273.preheader
  %indvars.iv213.unr = phi i64 [ %indvars.iv213.ph, %scalar.ph273.preheader ], [ %indvars.iv.next214.prol, %bb.n ]
  %i.cq = sub nsw i64 %indvars.iv213.ph, %wide.trip.count216
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %._crit_edge202, label %scalar.ph273

vector.memcheck266:                               ; preds = %.lr.ph201
  %scevgep267 = getelementptr i8, ptr %i.f, i64 132
  %i.cs = mul nsw i64 %i.o, 160                   ; 2 uses
  %i.ct = getelementptr i8, ptr %i.b, i64 %i.cs
  %scevgep268 = getelementptr i8, ptr %i.ct, i64 4
  %i.cu = shl nuw nsw i64 %wide.trip.count216, 3
  %i.cv = getelementptr i8, ptr %i.b, i64 %i.cs
  %scevgep269 = getelementptr i8, ptr %i.cv, i64 %i.cu
  %bound0270 = icmp ult ptr %i.ae, %scevgep269
  %bound1271 = icmp ult ptr %scevgep268, %scevgep267
  %found.conflict272 = and i1 %bound0270, %bound1271
  br i1 %found.conflict272, label %scalar.ph273.preheader, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck266
  %i.cw = and i64 %wide.trip.count216, 7          ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = select i1 %i.cx, i64 8, i64 %i.cw
  %n.vec276 = sub nsw i64 %wide.trip.count216, %i.cy ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ce, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert277 = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat278 = shufflevector <8 x float> %broadcast.splatinsert277, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert279 = insertelement <8 x float> poison, float %i.bz, i64 0
  %broadcast.splat280 = shufflevector <8 x float> %broadcast.splatinsert279, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body281

vector.body281:                                   ; preds = %bb.p, %vector.ph275
  %index282 = phi i64 [ 0, %vector.ph275 ], [ %index.next299, %bb.p ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index282
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %wide.vec283 = load <16 x float>, ptr %i.da, align 4, !tbaa !26, !alias.scope !232
  %strided.vec284 = shufflevector <16 x float> %wide.vec283, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.db = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec284, %broadcast.splat278
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %broadcast.splat
  %i.dd = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat280, %i.dc ; 2 uses
  %i.de = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dd
  %i.df = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.de, splat (float 1.600000e-03)
  %i.dg = bitcast <8 x i1> %i.df to i8
  %.not302 = icmp eq i8 %i.dg, 0
  br i1 %.not302, label %bb.p, label %bb.o

bb.o:                                             ; preds = %vector.body281
  store i32 %i.cc, ptr %i.ae, align 8, !tbaa !135, !alias.scope !235, !noalias !232
  br label %bb.p

bb.p:                                             ; preds = %vector.body281, %bb.o
  %index.next299 = add nuw i64 %index282, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next299, %n.vec276
  br i1 %i.dh, label %scalar.ph273.preheader, label %vector.body281, !llvm.loop !237

._crit_edge202:                                   ; preds = %scalar.ph273.prol.loopexit, %bb.u, %bb.l
  call void @dt_iop_color_picker_reset(ptr noundef %2, i32 noundef 1) #24
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !90
  %i.dj = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  call void @dt_dev_add_history_item_target(ptr noundef %i.di, ptr noundef %2, i32 noundef 1, ptr noundef %i.dj) #24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !138
  call void @gtk_widget_queue_draw(ptr noundef %i.dl) #24
  br label %bb.v

scalar.ph273:                                     ; preds = %scalar.ph273.prol.loopexit, %bb.u
  %indvars.iv213 = phi i64 [ %indvars.iv.next214.3, %bb.u ], [ %indvars.iv213.unr, %scalar.ph273.prol.loopexit ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv213
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !26
  %i.dp = fsub reassoc nsz arcp contract afn float %i.do, %i.cg
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %i.ce
  %i.dr = fsub reassoc nsz arcp contract afn float %i.bz, %i.dq ; 2 uses
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.dr
  %i.dt = fcmp reassoc nsz arcp contract afn olt float %i.ds, 1.600000e-03
  br i1 %i.dt, label %bb.q, label %scalar.ph273.1

bb.q:                                             ; preds = %scalar.ph273
  store i32 %i.cc, ptr %i.ae, align 8, !tbaa !135
  br label %scalar.ph273.1

scalar.ph273.1:                                   ; preds = %bb.q, %scalar.ph273
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv213
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !26
  %i.dx = fsub reassoc nsz arcp contract afn float %i.dw, %i.cg
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.ce
  %i.dz = fsub reassoc nsz arcp contract afn float %i.bz, %i.dy ; 2 uses
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.dz
  %i.eb = fcmp reassoc nsz arcp contract afn olt float %i.ea, 1.600000e-03
  br i1 %i.eb, label %bb.r, label %scalar.ph273.2

bb.r:                                             ; preds = %scalar.ph273.1
  store i32 %i.cc, ptr %i.ae, align 8, !tbaa !135
  br label %scalar.ph273.2

scalar.ph273.2:                                   ; preds = %bb.r, %scalar.ph273.1
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv213
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !26
  %i.ef = fsub reassoc nsz arcp contract afn float %i.ee, %i.cg
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.ce
  %i.eh = fsub reassoc nsz arcp contract afn float %i.bz, %i.eg ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, %i.eh
  %i.ej = fcmp reassoc nsz arcp contract afn olt float %i.ei, 1.600000e-03
  br i1 %i.ej, label %bb.s, label %scalar.ph273.3

bb.s:                                             ; preds = %scalar.ph273.2
  store i32 %i.cc, ptr %i.ae, align 8, !tbaa !135
  br label %scalar.ph273.3

scalar.ph273.3:                                   ; preds = %bb.s, %scalar.ph273.2
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv213
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.em = load float, ptr %i.el, align 4, !tbaa !26
  %i.en = fsub reassoc nsz arcp contract afn float %i.em, %i.cg
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, %i.ce
  %i.ep = fsub reassoc nsz arcp contract afn float %i.bz, %i.eo ; 2 uses
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, %i.ep
  %i.er = fcmp reassoc nsz arcp contract afn olt float %i.eq, 1.600000e-03
  br i1 %i.er, label %bb.t, label %bb.u

bb.t:                                             ; preds = %scalar.ph273.3
  store i32 %i.cc, ptr %i.ae, align 8, !tbaa !135
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %scalar.ph273.3
  %indvars.iv.next214.3 = add nuw nsw i64 %indvars.iv213, 4 ; 2 uses
  %exitcond217.not.3 = icmp eq i64 %indvars.iv.next214.3, %wide.trip.count216
  br i1 %exitcond217.not.3, label %._crit_edge202, label %scalar.ph273, !llvm.loop !238

bb.v:                                             ; preds = %._crit_edge202, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ae

thread-pre-split:                                 ; preds = %bb.d, %bb.e
  %.pr = load i32, ptr %1, align 8, !tbaa !225
  br label %bb.w

bb.w:                                             ; preds = %thread-pre-split, %bb.c
  %i.es = phi i32 [ %.pr, %thread-pre-split ], [ %i.u, %bb.c ]
  %i.et = icmp eq i32 %i.es, 5
  br i1 %i.et, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.eu = icmp ne i32 %i.m, 1
  %i.ev = icmp ne i32 %i.k, 0
  %or.cond5 = and i1 %i.ev, %i.eu
  br i1 %or.cond5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.o ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !11
  store i32 %i.ey, ptr %i.p, align 4, !tbaa !11
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 492
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.o
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 492 ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.o
  store i32 %i.fb, ptr %i.fd, align 4, !tbaa !11
  %i.fe = load i32, ptr %i.ex, align 4, !tbaa !11 ; 3 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph193, label %._crit_edge194

.lr.ph193:                                        ; preds = %bb.y
  %i.fg = getelementptr inbounds [160 x i8], ptr %i.d, i64 %i.o ; 12 uses
  %wide.trip.count = zext nneg i32 %i.fe to i64   ; 6 uses
  %min.iters.check250 = icmp ult i32 %i.fe, 20
  br i1 %min.iters.check250, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph193
  %i.fh = mul nsw i64 %i.o, 160                   ; 2 uses
  %i.fi = shl nuw nsw i64 %wide.trip.count, 3
  %i.fj = add nsw i64 %i.fh, %i.fi                ; 3 uses
  %i.fk = add nsw i64 %i.fj, -4                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.fk
  %scevgep242 = getelementptr i8, ptr %i.d, i64 %i.fk
  %i.fl = or disjoint i64 %i.fh, 4                ; 2 uses
  %scevgep243 = getelementptr i8, ptr %i.b, i64 %i.fl
  %scevgep244 = getelementptr i8, ptr %i.b, i64 %i.fj
  %scevgep245 = getelementptr i8, ptr %i.d, i64 %i.fl
  %scevgep246 = getelementptr i8, ptr %i.d, i64 %i.fj
  %bound0 = icmp ult ptr %i.r, %scevgep242
  %bound1 = icmp ult ptr %i.fg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0247 = icmp ult ptr %scevgep243, %scevgep246
  %bound1248 = icmp ult ptr %scevgep245, %scevgep244
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx = or i1 %found.conflict, %found.conflict249
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck
  %n.vec252 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next263, %vector.body253 ] ; 4 uses
  %i.fm = or disjoint i64 %index254, 4            ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %index254
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fm
  %wide.vec255 = load <8 x float>, ptr %i.fn, align 4, !tbaa !15
  %wide.vec258 = load <8 x float>, ptr %i.fo, align 4, !tbaa !15
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index254
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fm
  store <8 x float> %wide.vec255, ptr %i.fp, align 4, !tbaa !15
  store <8 x float> %wide.vec258, ptr %i.fq, align 4, !tbaa !15
  %index.next263 = add nuw i64 %index254, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next263, %n.vec252
  br i1 %i.fr, label %middle.block264, label %vector.body253, !llvm.loop !239

middle.block264:                                  ; preds = %vector.body253
  %cmp.n265 = icmp eq i64 %n.vec252, %wide.trip.count
  br i1 %cmp.n265, label %._crit_edge194, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph193, %middle.block264
  %indvars.iv205.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph193 ], [ %n.vec252, %middle.block264 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv205.prol = phi i64 [ %indvars.iv.next206.prol, %scalar.ph.prol ], [ %indvars.iv205.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv205.prol
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv205.prol
  %i.fu = load <2 x float>, ptr %i.fs, align 4, !tbaa !15
  store <2 x float> %i.fu, ptr %i.ft, align 4, !tbaa !15
  %indvars.iv.next206.prol = add nuw nsw i64 %indvars.iv205.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !240

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv205.unr = phi i64 [ %indvars.iv205.ph, %scalar.ph.preheader ], [ %indvars.iv.next206.prol, %scalar.ph.prol ]
  %i.fv = sub nsw i64 %indvars.iv205.ph, %wide.trip.count
  %i.fw = icmp ugt i64 %i.fv, -8
  br i1 %i.fw, label %._crit_edge194, label %scalar.ph

._crit_edge194:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block264, %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i32 -2, ptr %i.fx, align 8, !tbaa !135
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !137
  %i.ga = load i32, ptr %i.fc, align 4, !tbaa !11
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.fz, i32 noundef %i.ga) #24
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #24
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !90
  %i.gc = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.gb, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.gc) #24
  %i.gd = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !138
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ge) #24
  br label %bb.ae

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.7, %scalar.ph ], [ %indvars.iv205.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv205
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv205
  %i.gh = load <2 x float>, ptr %i.gf, align 4, !tbaa !15
  store <2 x float> %i.gh, ptr %i.gg, align 4, !tbaa !15
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next206
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next206
  %i.gk = load <2 x float>, ptr %i.gi, align 4, !tbaa !15
  store <2 x float> %i.gk, ptr %i.gj, align 4, !tbaa !15
  %indvars.iv.next206.1 = add nuw nsw i64 %indvars.iv205, 2 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next206.1
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next206.1
  %i.gn = load <2 x float>, ptr %i.gl, align 4, !tbaa !15
  store <2 x float> %i.gn, ptr %i.gm, align 4, !tbaa !15
  %indvars.iv.next206.2 = add nuw nsw i64 %indvars.iv205, 3 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next206.2
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next206.2
  %i.gq = load <2 x float>, ptr %i.go, align 4, !tbaa !15
  store <2 x float> %i.gq, ptr %i.gp, align 4, !tbaa !15
  %indvars.iv.next206.3 = add nuw nsw i64 %indvars.iv205, 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next206.3
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next206.3
  %i.gt = load <2 x float>, ptr %i.gr, align 4, !tbaa !15
  store <2 x float> %i.gt, ptr %i.gs, align 4, !tbaa !15
  %indvars.iv.next206.4 = add nuw nsw i64 %indvars.iv205, 5 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next206.4
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next206.4
  %i.gw = load <2 x float>, ptr %i.gu, align 4, !tbaa !15
  store <2 x float> %i.gw, ptr %i.gv, align 4, !tbaa !15
  %indvars.iv.next206.5 = add nuw nsw i64 %indvars.iv205, 6 ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next206.5
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next206.5
  %i.gz = load <2 x float>, ptr %i.gx, align 4, !tbaa !15
  store <2 x float> %i.gz, ptr %i.gy, align 4, !tbaa !15
  %indvars.iv.next206.6 = add nuw nsw i64 %indvars.iv205, 7 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next206.6
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next206.6
  %i.hc = load <2 x float>, ptr %i.ha, align 4, !tbaa !15
  store <2 x float> %i.hc, ptr %i.hb, align 4, !tbaa !15
  %indvars.iv.next206.7 = add nuw nsw i64 %indvars.iv205, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next206.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge194, label %scalar.ph, !llvm.loop !241

bb.z:                                             ; preds = %bb.x
  store i32 1, ptr %i.l, align 4, !tbaa !52
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i32 -2, ptr %i.hd, align 8, !tbaa !135
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !44
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.hf, i32 noundef 1) #24
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #24
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !90
  %i.hh = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.hg, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %i.hh) #24
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !138
  tail call void @gtk_widget_queue_draw(ptr noundef %i.hj) #24
  br label %bb.ae

bb.aa:                                            ; preds = %bb.b
  %i.hk = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !135 ; 7 uses
  %i.hm = icmp sgt i32 %i.hl, -1
  br i1 %i.hm, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.hn = icmp eq i32 %i.hl, 0
  br i1 %i.hn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ho = add nsw i32 %i.q, -1                    ; 4 uses
  %i.hp = icmp eq i32 %i.hl, %i.ho
  br i1 %i.hp, label %bb.ad, label %.preheader189

.preheader189:                                    ; preds = %bb.ac
  %i.hq = icmp slt i32 %i.hl, %i.ho
  br i1 %i.hq, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader189
  %i.hr = zext nneg i32 %i.hl to i64              ; 5 uses
  %i.hs = add i32 %i.q, -2
  %i.ht = sub i32 %i.hs, %i.hl                    ; 3 uses
  %i.hu = zext i32 %i.ht to i64
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ht, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check227 = icmp ult i32 %i.ht, 15
  br i1 %min.iters.check227, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hw = and i64 %i.hv, 12
  %n.vec = and i64 %i.hv, 8589934576              ; 4 uses
  %i.hx = add nuw nsw i64 %n.vec, %i.hr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hy = add nuw i64 %index, %i.hr               ; 4 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = getelementptr [8 x i8], ptr %i.r, i64 %i.hy
  %i.ic = getelementptr i8, ptr %i.ib, i64 72
  %wide.vec = load <16 x float>, ptr %i.ia, align 4, !tbaa !15
  %wide.vec229 = load <16 x float>, ptr %i.ic, align 4, !tbaa !15
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.hy
  %i.ie = getelementptr [8 x i8], ptr %i.r, i64 %i.hy
  %i.if = getelementptr i8, ptr %i.ie, i64 64
  store <16 x float> %wide.vec, ptr %i.id, align 4, !tbaa !15
  store <16 x float> %wide.vec229, ptr %i.if, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hv, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec233 = and i64 %i.hv, 8589934588           ; 3 uses
end_hunk_0
