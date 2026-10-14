Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@cvDoErrorTest:bb.a
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !119
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !119
  %i.cl = icmp slt i32 %i.ch, 0
  br i1 %i.cl, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not165 = icmp eq i32 %i.ch, 0
  br i1 %.not165, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.cm = load double, ptr %i.i, align 8, !tbaa !197
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !117
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !52
  tail call void @N_VScale(double noundef %i.cm, ptr noundef %i.cn, ptr noundef %i.cp) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !141
  %.not166 = icmp eq i32 %i.cr, 0
  br i1 %.not166, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !70
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !148
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !52
  %i.cx = load double, ptr %i.bh, align 8, !tbaa !77
  %i.cy = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.cz = load ptr, ptr %i.bl, align 8, !tbaa !69
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !135
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !147
  %i.de = tail call i32 @cvSensRhsWrapper(ptr noundef nonnull %0, double noundef %i.cx, ptr noundef %i.cy, ptr noundef %i.cz, ptr noundef %i.db, ptr noundef %i.dd, ptr noundef %i.ct, ptr noundef %i.cw) ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not167 = icmp eq i32 %i.de, 0
  br i1 %.not167, label %.preheader177, label %bb.w

.preheader177:                                    ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !129 ; 4 uses
  %i.di = icmp sgt i32 %i.dh, 0
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !74 ; 3 uses
  br i1 %i.di, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader177
  %wide.trip.count = zext nneg i32 %i.dh to i64   ; 3 uses
  %.pre = load double, ptr %i.i, align 8, !tbaa !197 ; 2 uses
  %min.iters.check = icmp ult i32 %i.dh, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dl, align 8, !tbaa !29
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  store double %.pre, ptr %i.do, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !403

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader177
  %i.dp = load ptr, ptr %i.dc, align 8, !tbaa !147
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !135
  %i.ds = tail call i32 @N_VScaleVectorArray(i32 noundef %i.dh, ptr noundef %i.dk, ptr noundef %i.dp, ptr noundef %i.dr) #13
  %.not168 = icmp eq i32 %i.ds, 0
  br i1 %.not168, label %bb.s, label %bb.w

bb.s:                                             ; preds = %._crit_edge, %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !173
  %.not169 = icmp eq i32 %i.du, 0
  br i1 %.not169, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !70
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !164
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !170
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !129
  %i.ed = load double, ptr %i.bh, align 8, !tbaa !77
  %i.ee = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !135
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !117
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !168
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !171
  %i.en = tail call i32 %i.ea(i32 noundef %i.ec, double noundef %i.ed, ptr noundef %i.ee, ptr noundef %i.eg, ptr noundef %i.ei, ptr noundef %i.ek, ptr noundef %i.em, ptr noundef %i.dw, ptr noundef %i.dy) #13 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !196
  %i.eq = add nsw i64 %i.ep, 1
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !196
  %i.er = icmp slt i32 %i.en, 0
  br i1 %i.er, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not170 = icmp eq i32 %i.en, 0
  br i1 %.not170, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.u
  %i.es = load i32, ptr %i.eb, align 8, !tbaa !129 ; 4 uses
  %i.et = icmp sgt i32 %i.es, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !74 ; 3 uses
  br i1 %i.et, label %.lr.ph181, label %._crit_edge182

.lr.ph181:                                        ; preds = %.preheader
  %wide.trip.count188 = zext nneg i32 %i.es to i64 ; 3 uses
  %.pre191 = load double, ptr %i.i, align 8, !tbaa !197 ; 2 uses
  %min.iters.check203 = icmp ult i32 %i.es, 4
  br i1 %min.iters.check203, label %scalar.ph202.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph181
  %n.vec205 = and i64 %wide.trip.count188, 2147483644 ; 3 uses
  %broadcast.splatinsert206 = insertelement <2 x double> poison, double %.pre191, i64 0
  %broadcast.splat207 = shufflevector <2 x double> %broadcast.splatinsert206, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph204
  %index209 = phi i64 [ 0, %vector.ph204 ], [ %index.next210, %vector.body208 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %index209 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x double> %broadcast.splat207, ptr %i.ew, align 8, !tbaa !29
  store <2 x double> %broadcast.splat207, ptr %i.ex, align 8, !tbaa !29
  %index.next210 = add nuw i64 %index209, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.ey, label %middle.block211, label %vector.body208, !llvm.loop !404

middle.block211:                                  ; preds = %vector.body208
  %cmp.n212 = icmp eq i64 %n.vec205, %wide.trip.count188
  br i1 %cmp.n212, label %._crit_edge182, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %.lr.ph181, %middle.block211
  %indvars.iv185.ph = phi i64 [ 0, %.lr.ph181 ], [ %n.vec205, %middle.block211 ]
  br label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.preheader, %scalar.ph202
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %scalar.ph202 ], [ %indvars.iv185.ph, %scalar.ph202.preheader ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv185
  store double %.pre191, ptr %i.ez, align 8, !tbaa !29
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %._crit_edge182, label %scalar.ph202, !llvm.loop !405

._crit_edge182:                                   ; preds = %scalar.ph202, %middle.block211, %.preheader
  %i.fa = load ptr, ptr %i.ej, align 8, !tbaa !168
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !135
  %i.fd = tail call i32 @N_VScaleVectorArray(i32 noundef %i.es, ptr noundef %i.ev, ptr noundef %i.fa, ptr noundef %i.fc) #13
  %.not171 = icmp eq i32 %i.fd, 0
  br i1 %.not171, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge182, %bb.s
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge182, %bb.u, %bb.t, %._crit_edge, %bb.r, %bb.q, %bb.n, %bb.m, %bb.k, %bb.j, %bb.b, %bb.c, %bb.a, %bb.v, %bb.i, %bb.g
  %.0146 = phi i32 [ 5, %bb.v ], [ 0, %bb.a ], [ 5, %bb.g ], [ 5, %bb.i ], [ -3, %bb.b ], [ -8, %bb.j ], [ -11, %bb.k ], [ -31, %bb.m ], [ -34, %bb.n ], [ -41, %bb.q ], [ -44, %bb.r ], [ -28, %._crit_edge ], [ -51, %bb.t ], [ -54, %bb.u ], [ -3, %bb.c ], [ -28, %._crit_edge182 ]
  ret i32 %.0146
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cvAdjustOrder(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79   ; 13 uses
  %i.c = icmp eq i32 %i.b, 2
  %i.d = icmp ne i32 %1, 1                        ; 2 uses
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %cvAdjustAdams.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23
  switch i32 %i.f, label %cvAdjustAdams.exit [
    i32 1, label %bb.c
    i32 2, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.preheader82.i, label %bb.d

.preheader82.i:                                   ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not85.i = icmp slt i32 %i.h, 0
  br i1 %.not85.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader82.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.j = add nuw i32 %i.h, 1
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %i.l, i1 false), !tbaa !29
  br label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !80
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.r) #13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !121
  %.not79.i = icmp eq i32 %i.t, 0
  br i1 %.not79.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.v = load i32, ptr %i.n, align 8, !tbaa !80
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.y) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !141
  %.not80.i = icmp eq i32 %i.aa, 0
  br i1 %.not80.i, label %cvAdjustAdams.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !129
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ae = load i32, ptr %i.n, align 8, !tbaa !80
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135
  %i.ai = tail call i32 @N_VConstVectorArray(i32 noundef %i.ac, double noundef 0.000000e+00, ptr noundef %i.ah) #13 ; 0 uses
  br label %cvAdjustAdams.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader82.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 15 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  store double 1.000000e+00, ptr %i.ak, align 8, !tbaa !29
  %i.al = add nsw i32 %i.b, -2
  %.not7588.i = icmp slt i32 %i.b, 3
  br i1 %.not7588.i, label %cvAdjustAdams.exit, label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %._crit_edge.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ao = load double, ptr %i.an, align 8, !tbaa !199
  %i.ap = add nsw i32 %i.b, -1
  %wide.trip.count.i = zext i32 %i.ap to i64      ; 2 uses
  br label %bb.h

.loopexit.i:                                      ; preds = %scalar.ph92, %scalar.ph92.1, %scalar.ph92.2, %middle.block111
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next104.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader81.i, label %bb.h

.preheader81.i:                                   ; preds = %.loopexit.i
  %i.aq = uitofp nneg i32 %i.b to double          ; 5 uses
  %.pre.i = load double, ptr %i.ak, align 8, !tbaa !29 ; 2 uses
  %i.ar = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter130 = and i64 %i.ar, 3                 ; 3 uses
  %i.as = add nsw i32 %i.b, -3
  %i.at = icmp ult i32 %i.as, 3
  br i1 %i.at, label %.epil.preheader, label %.preheader81.i.new

.preheader81.i.new:                               ; preds = %.preheader81.i
  %unroll_iter = and i64 %i.ar, -4
  br label %bb.i

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph92.i
  %indvars.iv103.i = phi i64 [ 1, %.lr.ph92.i ], [ %indvars.iv.next104.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 2, %.lr.ph92.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 7 uses
  %.090.i = phi double [ 0.000000e+00, %.lr.ph92.i ], [ %i.aw, %.loopexit.i ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv103.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !29
  %i.aw = fadd double %.090.i, %i.av              ; 2 uses
  %i.ax = fdiv double %i.aw, %i.ao                ; 4 uses
  %min.iters.check93 = icmp samesign ult i64 %indvars.iv.i, 4
  br i1 %min.iters.check93, label %scalar.ph92, label %vector.ph94

vector.ph94:                                      ; preds = %bb.h
  %n.vec95 = and i64 %indvars.iv.i, 9223372036854775804 ; 2 uses
  %i.ay = and i64 %indvars.iv.i, 3
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.ax, i64 0 ; 2 uses
  %i.az = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph94
  %index99 = phi i64 [ 0, %vector.ph94 ], [ %index.next110, %vector.body98 ] ; 2 uses
  %i.bb = sub i64 %indvars.iv.i, %index99
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bb ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -24 ; 2 uses
  %wide.load100 = load <2 x double>, ptr %i.bd, align 8, !tbaa !29
  %wide.load101 = load <2 x double>, ptr %i.be, align 8, !tbaa !29
  %i.bf = getelementptr i8, ptr %i.bc, i64 -16
  %i.bg = getelementptr i8, ptr %i.bc, i64 -32
  %wide.load104 = load <2 x double>, ptr %i.bf, align 8, !tbaa !29
  %wide.load105 = load <2 x double>, ptr %i.bg, align 8, !tbaa !29
  %reverse108 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load100, <2 x double> %i.az, <2 x double> %wide.load104)
  %reverse109 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load101, <2 x double> %i.ba, <2 x double> %wide.load105)
  store <2 x double> %reverse108, ptr %i.bd, align 8, !tbaa !29
  store <2 x double> %reverse109, ptr %i.be, align 8, !tbaa !29
  %index.next110 = add nuw i64 %index99, 4        ; 2 uses
  %i.bh = icmp eq i64 %index.next110, %n.vec95
  br i1 %i.bh, label %middle.block111, label %vector.body98, !llvm.loop !408

middle.block111:                                  ; preds = %vector.body98
  %cmp.n112 = icmp eq i64 %indvars.iv.i, %n.vec95
  br i1 %cmp.n112, label %.loopexit.i, label %scalar.ph92

scalar.ph92:                                      ; preds = %middle.block111, %bb.h
  %indvars.iv100.i.ph = phi i64 [ %indvars.iv.i, %bb.h ], [ %i.ay, %middle.block111 ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv100.i.ph ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !29
  %i.bk = getelementptr i8, ptr %i.bi, i64 -8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !29
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.ax, double %i.bl)
  store double %i.bm, ptr %i.bi, align 8, !tbaa !29
  %i.bn = icmp samesign ugt i64 %indvars.iv100.i.ph, 1
  br i1 %i.bn, label %scalar.ph92.1, label %.loopexit.i

scalar.ph92.1:                                    ; preds = %scalar.ph92
  %i.bo = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv100.i.ph ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8     ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !29
  %i.br = getelementptr i8, ptr %i.bo, i64 -16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !29
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.ax, double %i.bs)
  store double %i.bt, ptr %i.bp, align 8, !tbaa !29
  %i.bu = icmp eq i64 %indvars.iv100.i.ph, 3
  br i1 %i.bu, label %scalar.ph92.2, label %.loopexit.i

scalar.ph92.2:                                    ; preds = %scalar.ph92.1
  %i.bv = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv100.i.ph ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -16    ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !29
  %i.by = getelementptr i8, ptr %i.bv, i64 -24
  %i.bz = load double, ptr %i.by, align 8, !tbaa !29
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.ax, double %i.bz)
  store double %i.ca, ptr %i.bw, align 8, !tbaa !29
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.i, %.preheader81.i.new
  %i.cb = phi double [ %.pre.i, %.preheader81.i.new ], [ %i.cu, %bb.i ]
  %indvars.iv106.i = phi i64 [ 1, %.preheader81.i.new ], [ %indvars.iv.next107.i.3, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader81.i.new ], [ %niter.next.3, %bb.i ]
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv.next107.i to i32
  %i.cd = uitofp nneg i32 %i.cc to double
  %i.ce = fdiv double %i.cb, %i.cd
  %i.cf = fmul double %i.ce, %i.aq                ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next107.i
  store double %i.cf, ptr %i.cg, align 8, !tbaa !29
  %indvars.iv.next107.i.1 = add nuw nsw i64 %indvars.iv106.i, 2 ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next107.i.1 to i32
  %i.ci = uitofp nneg i32 %i.ch to double
  %i.cj = fdiv double %i.cf, %i.ci
  %i.ck = fmul double %i.cj, %i.aq                ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next107.i.1
  store double %i.ck, ptr %i.cl, align 8, !tbaa !29
  %indvars.iv.next107.i.2 = add nuw nsw i64 %indvars.iv106.i, 3 ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv.next107.i.2 to i32
  %i.cn = uitofp nneg i32 %i.cm to double
  %i.co = fdiv double %i.ck, %i.cn
  %i.cp = fmul double %i.co, %i.aq                ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next107.i.2
  store double %i.cp, ptr %i.cq, align 8, !tbaa !29
  %indvars.iv.next107.i.3 = add nuw nsw i64 %indvars.iv106.i, 4 ; 4 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next107.i.3 to i32
  %i.cs = uitofp nneg i32 %i.cr to double
  %i.ct = fdiv double %i.cp, %i.cs
  %i.cu = fmul double %i.ct, %i.aq                ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next107.i.3
  store double %i.cu, ptr %i.cv, align 8, !tbaa !29
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.unr-lcssa, label %bb.i

.preheader.i.unr-lcssa:                           ; preds = %bb.i
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.preheader81.i
  %.epil.init = phi double [ %.pre.i, %.preheader81.i ], [ %i.cu, %.preheader.i.unr-lcssa ]
  %indvars.iv106.i.epil.init = phi i64 [ 1, %.preheader81.i ], [ %indvars.iv.next107.i.3, %.preheader.i.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter130, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %i.cw = phi double [ %.epil.init, %.epil.preheader ], [ %i.da, %bb.j ]
  %indvars.iv106.i.epil = phi i64 [ %indvars.iv106.i.epil.init, %.epil.preheader ], [ %indvars.iv.next107.i.epil, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %indvars.iv.next107.i.epil = add nuw nsw i64 %indvars.iv106.i.epil, 1 ; 3 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv.next107.i.epil to i32
  %i.cy = uitofp nneg i32 %i.cx to double
  %i.cz = fdiv double %i.cw, %i.cy
  %i.da = fmul double %i.cz, %i.aq                ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next107.i.epil
  store double %i.da, ptr %i.db, align 8, !tbaa !29
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter130
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %bb.j, !llvm.loop !409

.preheader.i:                                     ; preds = %bb.j, %.preheader.i.unr-lcssa
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !74 ; 8 uses
  %wide.trip.count114.i = zext nneg i32 %i.b to i64 ; 5 uses
  %i.de = add nsw i64 %wide.trip.count114.i, -2   ; 3 uses
  %min.iters.check117 = icmp ult i64 %i.de, 8
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.preheader.i
  %i.df = ptrtoaddr ptr %i.dd to i64
  %i.dg = sub i64 %i.df, %2
  %i.dh = add i64 %i.dg, -1225
  %diff.check115 = icmp ult i64 %i.dh, 31
  br i1 %diff.check115, label %scalar.ph116.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec119 = and i64 %i.de, -4                   ; 3 uses
  %i.di = or disjoint i64 %n.vec119, 2
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next124, %vector.body120 ] ; 2 uses
  %i.dj = or disjoint i64 %index121, 2            ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load122 = load <2 x double>, ptr %i.dk, align 8, !tbaa !29
  %wide.load123 = load <2 x double>, ptr %i.dl, align 8, !tbaa !29
  %i.dm = fneg <2 x double> %wide.load122
  %i.dn = fneg <2 x double> %wide.load123
  %i.do = getelementptr [8 x i8], ptr %i.dd, i64 %i.dj ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 -16
  store <2 x double> %i.dm, ptr %i.dp, align 8, !tbaa !29
  store <2 x double> %i.dn, ptr %i.do, align 8, !tbaa !29
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next124, %n.vec119
  br i1 %i.dq, label %middle.block125, label %vector.body120, !llvm.loop !410

middle.block125:                                  ; preds = %vector.body120
  %cmp.n126 = icmp eq i64 %i.de, %n.vec119
  br i1 %cmp.n126, label %.loopexit, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %vector.memcheck114, %.preheader.i, %middle.block125
  %indvars.iv111.i.ph = phi i64 [ 2, %vector.memcheck114 ], [ 2, %.preheader.i ], [ %i.di, %middle.block125 ] ; 4 uses
  %i.dr = sub nsw i64 %wide.trip.count114.i, %indvars.iv111.i.ph
  %xtraiter133 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol

scalar.ph116.prol:                                ; preds = %scalar.ph116.preheader, %scalar.ph116.prol
  %indvars.iv111.i.prol = phi i64 [ %indvars.iv.next112.i.prol, %scalar.ph116.prol ], [ %indvars.iv111.i.ph, %scalar.ph116.preheader ] ; 3 uses
  %prol.iter135 = phi i64 [ %prol.iter135.next, %scalar.ph116.prol ], [ 0, %scalar.ph116.preheader ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv111.i.prol
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !29
  %i.du = fneg double %i.dt
  %i.dv = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv111.i.prol
  %i.dw = getelementptr i8, ptr %i.dv, i64 -16
  store double %i.du, ptr %i.dw, align 8, !tbaa !29
  %indvars.iv.next112.i.prol = add nuw nsw i64 %indvars.iv111.i.prol, 1 ; 2 uses
  %prol.iter135.next = add i64 %prol.iter135, 1   ; 2 uses
  %prol.iter135.cmp.not = icmp eq i64 %prol.iter135.next, %xtraiter133
  br i1 %prol.iter135.cmp.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol, !llvm.loop !411

scalar.ph116.prol.loopexit:                       ; preds = %scalar.ph116.prol, %scalar.ph116.preheader
  %indvars.iv111.i.unr = phi i64 [ %indvars.iv111.i.ph, %scalar.ph116.preheader ], [ %indvars.iv.next112.i.prol, %scalar.ph116.prol ]
  %i.dx = sub nsw i64 %indvars.iv111.i.ph, %wide.trip.count114.i
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %.loopexit, label %scalar.ph116

scalar.ph116:                                     ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i.3, %scalar.ph116 ], [ %indvars.iv111.i.unr, %scalar.ph116.prol.loopexit ] ; 6 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv111.i
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !29
  %i.eb = fneg double %i.ea
  %i.ec = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv111.i
  %i.ed = getelementptr i8, ptr %i.ec, i64 -16
  store double %i.eb, ptr %i.ed, align 8, !tbaa !29
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next112.i
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !29
  %i.eg = fneg double %i.ef
  %i.eh = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.next112.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -16
  store double %i.eg, ptr %i.ei, align 8, !tbaa !29
  %indvars.iv.next112.i.1 = add nuw nsw i64 %indvars.iv111.i, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next112.i.1
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !29
  %i.el = fneg double %i.ek
  %i.em = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.next112.i.1
  %i.en = getelementptr i8, ptr %i.em, i64 -16
  store double %i.el, ptr %i.en, align 8, !tbaa !29
  %indvars.iv.next112.i.2 = add nuw nsw i64 %indvars.iv111.i, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next112.i.2
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !29
  %i.eq = fneg double %i.ep
  %i.er = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.next112.i.2
  %i.es = getelementptr i8, ptr %i.er, i64 -16
  store double %i.eq, ptr %i.es, align 8, !tbaa !29
  %indvars.iv.next112.i.3 = add nuw nsw i64 %indvars.iv111.i, 4 ; 2 uses
  %exitcond115.not.i.3 = icmp eq i64 %indvars.iv.next112.i.3, %wide.trip.count114.i
  br i1 %exitcond115.not.i.3, label %.loopexit, label %scalar.ph116, !llvm.loop !412

.loopexit:                                        ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116, %middle.block125
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %wide.trip.count114.i
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !52
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ex = tail call i32 @N_VScaleAddMulti(i32 noundef %i.al, ptr noundef nonnull %i.dd, ptr noundef %i.ev, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ew) #13 ; 0 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !121
  %.not77.i = icmp eq i32 %i.ez, 0
  br i1 %.not77.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.fa = load i32, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.fb = add nsw i32 %i.fa, -2
  %i.fc = load ptr, ptr %i.dc, align 8, !tbaa !74
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.fe = sext i32 %i.fa to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !52
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.fi = tail call i32 @N_VScaleAddMulti(i32 noundef %i.fb, ptr noundef %i.fc, ptr noundef %i.fg, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.fh) #13 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !141
  %.not78.i = icmp eq i32 %i.fk, 0
  br i1 %.not78.i, label %cvAdjustAdams.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !129
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.fo = add nsw i32 %i.fn, -2
  %i.fp = load ptr, ptr %i.dc, align 8, !tbaa !74
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.fr = sext i32 %i.fn to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !135
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.fv = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.fm, i32 noundef %i.fo, ptr noundef %i.fp, ptr noundef %i.ft, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.fu) #13 ; 0 uses
  br label %cvAdjustAdams.exit

bb.n:                                             ; preds = %bb.b
  switch i32 %1, label %cvAdjustAdams.exit [
    i32 1, label %bb.o
    i32 -1, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !26 ; 2 uses
  %.not127.i.i = icmp slt i32 %i.fx, 0
  br i1 %.not127.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.fz = add nuw i32 %i.fx, 1
  %i.ga = zext i32 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fy, i8 0, i64 %i.gb, i1 false), !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.o
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 5 uses
  store double 1.000000e+00, ptr %i.gd, align 8, !tbaa !29
  %i.ge = icmp sgt i32 %i.b, 1
  br i1 %i.ge, label %bb.p, label %.loopexit123.i.i

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !199 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %.lr.ph131.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph131.i.i, %middle.block65
  %i.gi = fadd double %.0105136.i.i, %i.gw        ; 2 uses
  %i.gj = fdiv double %i.gi, %i.gg                ; 3 uses
  %i.gk = fmul double %.0107134.i.i, %i.gj        ; 2 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv.next152.i.i to i32
  %i.gm = uitofp nneg i32 %i.gl to double
  %i.gn = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gm, i64 1
  %i.gp = fdiv <2 x double> splat (double 1.000000e+00), %i.go ; 2 uses
  %i.gq = fadd <2 x double> %i.gt, %i.gp
  %i.gr = fsub <2 x double> %i.gt, %i.gp
  %i.gs = shufflevector <2 x double> %i.gq, <2 x double> %i.gr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next152.i.i, %wide.trip.count.i.i
  %indvar.next45 = add i32 %indvar44, 1
  br i1 %exitcond.not.i.i, label %.loopexit123.i.i, label %.lr.ph131.preheader.i.i

.lr.ph131.preheader.i.i:                          ; preds = %.loopexit.i.i, %bb.p
  %indvar44 = phi i32 [ %indvar.next45, %.loopexit.i.i ], [ 0, %bb.p ] ; 2 uses
  %indvars.iv151.i.i = phi i64 [ %indvars.iv.next152.i.i, %.loopexit.i.i ], [ 1, %bb.p ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit.i.i ], [ 3, %bb.p ] ; 4 uses
  %.0105136.i.i = phi double [ %i.gi, %.loopexit.i.i ], [ %i.gg, %bb.p ]
  %.0106135.i.i = phi double [ %i.gj, %.loopexit.i.i ], [ 1.000000e+00, %bb.p ] ; 2 uses
  %.0107134.i.i = phi double [ %i.gk, %.loopexit.i.i ], [ 1.000000e+00, %bb.p ]
  %i.gt = phi <2 x double> [ %i.gs, %.loopexit.i.i ], [ <double 1.000000e+00, double -1.000000e+00>, %bb.p ] ; 2 uses
  %i.gu = add i32 %indvar44, 3                    ; 2 uses
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 4 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next152.i.i
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !29
  %i.gx = tail call i32 @llvm.smin.i32(i32 %i.gu, i32 2)
  %i.gy = sub i32 %i.gu, %i.gx                    ; 2 uses
  %i.gz = zext i32 %i.gy to i64
end_hunk_0
begin_hunk_1_@cvAdjustOrder:bb.a
  %i.kh = load i32, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge140.i.i
  %i.kj = load i32, ptr %i.jo, align 8, !tbaa !129
  %i.kk = add nsw i32 %i.kh, -1
  %i.kl = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !135
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.kq = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.kj, i32 noundef %i.kk, ptr noundef nonnull %i.gd, ptr noundef %i.ko, ptr noundef nonnull %i.kp, ptr noundef nonnull %i.kp) #13 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge140.i.i, %bb.u
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !173
  %.not121.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not121.i.i, label %cvAdjustAdams.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !129 ; 4 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !74 ; 3 uses
  br i1 %i.kv, label %.lr.ph142.i.i, label %._crit_edge143.i.i

.lr.ph142.i.i:                                    ; preds = %.preheader.i.i
  %wide.trip.count162.i.i = zext nneg i32 %i.ku to i64 ; 3 uses
  %min.iters.check81 = icmp ult i32 %i.ku, 4
  br i1 %min.iters.check81, label %scalar.ph80.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %.lr.ph142.i.i
  %n.vec83 = and i64 %wide.trip.count162.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert84 = insertelement <2 x double> poison, double %i.hx, i64 0
  %broadcast.splat85 = shufflevector <2 x double> %broadcast.splatinsert84, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph82
  %index87 = phi i64 [ 0, %vector.ph82 ], [ %index.next88, %vector.body86 ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %index87 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store <2 x double> %broadcast.splat85, ptr %i.ky, align 8, !tbaa !29
  store <2 x double> %broadcast.splat85, ptr %i.kz, align 8, !tbaa !29
  %index.next88 = add nuw i64 %index87, 4         ; 2 uses
  %i.la = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.la, label %middle.block89, label %vector.body86, !llvm.loop !417

middle.block89:                                   ; preds = %vector.body86
  %cmp.n90 = icmp eq i64 %n.vec83, %wide.trip.count162.i.i
  br i1 %cmp.n90, label %._crit_edge143.i.i, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %.lr.ph142.i.i, %middle.block89
  %indvars.iv159.i.i.ph = phi i64 [ 0, %.lr.ph142.i.i ], [ %n.vec83, %middle.block89 ]
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %indvars.iv159.i.i = phi i64 [ %indvars.iv.next160.i.i, %scalar.ph80 ], [ %indvars.iv159.i.i.ph, %scalar.ph80.preheader ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %indvars.iv159.i.i
  store double %i.hx, ptr %i.lb, align 8, !tbaa !29
  %indvars.iv.next160.i.i = add nuw nsw i64 %indvars.iv159.i.i, 1 ; 2 uses
  %exitcond163.not.i.i = icmp eq i64 %indvars.iv.next160.i.i, %wide.trip.count162.i.i
  br i1 %exitcond163.not.i.i, label %._crit_edge143.i.i, label %scalar.ph80, !llvm.loop !418

._crit_edge143.i.i:                               ; preds = %scalar.ph80, %middle.block89, %.preheader.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.ld = load i32, ptr %i.hz, align 8, !tbaa !211
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.le
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !135
  %i.lh = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.li
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !135
  %i.ll = tail call i32 @N_VScaleVectorArray(i32 noundef %i.ku, ptr noundef %i.kx, ptr noundef %i.lg, ptr noundef %i.lk) #13 ; 0 uses
  %i.lm = load i32, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, 1
  br i1 %i.ln, label %bb.x, label %cvAdjustAdams.exit

bb.x:                                             ; preds = %._crit_edge143.i.i
  %i.lo = load i32, ptr %i.kt, align 8, !tbaa !129
  %i.lp = add nsw i32 %i.lm, -1
  %i.lq = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !135
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.lv = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.lo, i32 noundef %i.lp, ptr noundef nonnull %i.gd, ptr noundef %i.lt, ptr noundef nonnull %i.lu, ptr noundef nonnull %i.lu) #13 ; 0 uses
  br label %cvAdjustAdams.exit

bb.y:                                             ; preds = %bb.n
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !26 ; 2 uses
  %.not70.i.i = icmp slt i32 %i.lx, 0
  br i1 %.not70.i.i, label %._crit_edge.i3.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %bb.y
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.lz = add nuw i32 %i.lx, 1
  %i.ma = zext i32 %i.lz to i64
  %i.mb = shl nuw nsw i64 %i.ma, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ly, i8 0, i64 %i.mb, i1 false), !tbaa !29
  br label %._crit_edge.i3.i

._crit_edge.i3.i:                                 ; preds = %.lr.ph.i2.i, %bb.y
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 8 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store double 1.000000e+00, ptr %i.md, align 8, !tbaa !29
  %i.me = add nsw i32 %i.b, -2
  %.not6476.i.i = icmp slt i32 %i.b, 3
  br i1 %.not6476.i.i, label %cvAdjustAdams.exit, label %.lr.ph80.i.i

.lr.ph80.i.i:                                     ; preds = %._crit_edge.i3.i
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !199
  %i.mi = add nsw i32 %i.b, -1
  %wide.trip.count.i4.i = zext nneg i32 %i.mi to i64
  br label %.lr.ph74.preheader.i.i

.lr.ph74.preheader.i.i:                           ; preds = %._crit_edge75.i.i, %.lr.ph80.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge75.i.i ], [ 0, %.lr.ph80.i.i ] ; 2 uses
  %indvars.iv88.i.i = phi i64 [ %indvars.iv.next89.i.i, %._crit_edge75.i.i ], [ 1, %.lr.ph80.i.i ] ; 2 uses
  %indvars.iv.i5.i = phi i64 [ %indvars.iv.next.i6.i, %._crit_edge75.i.i ], [ 3, %.lr.ph80.i.i ] ; 4 uses
  %.06277.i.i = phi double [ %i.mm, %._crit_edge75.i.i ], [ 0.000000e+00, %.lr.ph80.i.i ]
  %i.mj = add i64 %indvar, 2                      ; 3 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv88.i.i
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !29
  %i.mm = fadd double %.06277.i.i, %i.ml          ; 2 uses
  %i.mn = fdiv double %i.mm, %i.mh                ; 2 uses
  %min.iters.check = icmp ult i64 %i.mj, 4
  br i1 %min.iters.check, label %.lr.ph74.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph74.preheader.i.i
  %n.vec = and i64 %i.mj, -4                      ; 3 uses
  %i.mo = sub i64 %indvars.iv.i5.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.mn, i64 0 ; 2 uses
  %i.mp = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mq = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mr = sub i64 %indvars.iv.i5.i, %index
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.mr ; 4 uses
  %i.mt = getelementptr inbounds i8, ptr %i.ms, i64 -8 ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %i.ms, i64 -24 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.mt, align 8, !tbaa !29
  %wide.load24 = load <2 x double>, ptr %i.mu, align 8, !tbaa !29
  %i.mv = getelementptr i8, ptr %i.ms, i64 -16
  %i.mw = getelementptr i8, ptr %i.ms, i64 -32
  %wide.load26 = load <2 x double>, ptr %i.mv, align 8, !tbaa !29
  %wide.load27 = load <2 x double>, ptr %i.mw, align 8, !tbaa !29
  %reverse30 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.mp, <2 x double> %wide.load26)
  %reverse31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load24, <2 x double> %i.mq, <2 x double> %wide.load27)
  store <2 x double> %reverse30, ptr %i.mt, align 8, !tbaa !29
  store <2 x double> %reverse31, ptr %i.mu, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !419

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mj, %n.vec
  br i1 %cmp.n, label %._crit_edge75.i.i, label %.lr.ph74.i.i.preheader

.lr.ph74.i.i.preheader:                           ; preds = %.lr.ph74.preheader.i.i, %middle.block
  %indvars.iv85.i.i.ph = phi i64 [ %indvars.iv.i5.i, %.lr.ph74.preheader.i.i ], [ %i.mo, %middle.block ]
  br label %.lr.ph74.i.i

.lr.ph74.i.i:                                     ; preds = %.lr.ph74.i.i.preheader, %.lr.ph74.i.i
  %indvars.iv85.i.i = phi i64 [ %indvars.iv.next86.i.i, %.lr.ph74.i.i ], [ %indvars.iv85.i.i.ph, %.lr.ph74.i.i.preheader ] ; 3 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv85.i.i ; 3 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !29
  %i.na = getelementptr i8, ptr %i.my, i64 -8
  %i.nb = load double, ptr %i.na, align 8, !tbaa !29
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.mn, double %i.nb)
  store double %i.nc, ptr %i.my, align 8, !tbaa !29
  %indvars.iv.next86.i.i = add nsw i64 %indvars.iv85.i.i, -1
  %i.nd = icmp sgt i64 %indvars.iv85.i.i, 2
  br i1 %i.nd, label %.lr.ph74.i.i, label %._crit_edge75.i.i, !llvm.loop !420

._crit_edge75.i.i:                                ; preds = %.lr.ph74.i.i, %middle.block
  %indvars.iv.next89.i.i = add nuw nsw i64 %indvars.iv88.i.i, 1 ; 2 uses
  %indvars.iv.next.i6.i = add nuw nsw i64 %indvars.iv.i5.i, 1
  %exitcond.not.i7.i = icmp eq i64 %indvars.iv.next89.i.i, %wide.trip.count.i4.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i7.i, label %._crit_edge81.i.i, label %.lr.ph74.preheader.i.i

._crit_edge81.i.i:                                ; preds = %._crit_edge75.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 4 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !74 ; 8 uses
  %wide.trip.count94.i.i = zext nneg i32 %i.b to i64 ; 5 uses
  %i.ng = add nsw i64 %wide.trip.count94.i.i, -2  ; 3 uses
  %min.iters.check33 = icmp ult i64 %i.ng, 8
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge81.i.i
  %i.nh = ptrtoaddr ptr %i.nf to i64
  %i.ni = sub i64 %i.nh, %2
  %i.nj = add i64 %i.ni, -1225
  %diff.check = icmp ult i64 %i.nj, 31
  br i1 %diff.check, label %scalar.ph32.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck
  %n.vec35 = and i64 %i.ng, -4                    ; 3 uses
  %i.nk = or disjoint i64 %n.vec35, 2
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next40, %vector.body36 ] ; 2 uses
  %i.nl = or disjoint i64 %index37, 2             ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.nl ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %wide.load38 = load <2 x double>, ptr %i.nm, align 8, !tbaa !29
  %wide.load39 = load <2 x double>, ptr %i.nn, align 8, !tbaa !29
  %i.no = fneg <2 x double> %wide.load38
  %i.np = fneg <2 x double> %wide.load39
  %i.nq = getelementptr [8 x i8], ptr %i.nf, i64 %i.nl ; 2 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 -16
  store <2 x double> %i.no, ptr %i.nr, align 8, !tbaa !29
  store <2 x double> %i.np, ptr %i.nq, align 8, !tbaa !29
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.ns = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.ns, label %middle.block41, label %vector.body36, !llvm.loop !421

middle.block41:                                   ; preds = %vector.body36
  %cmp.n42 = icmp eq i64 %i.ng, %n.vec35
  br i1 %cmp.n42, label %.loopexit128, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %vector.memcheck, %._crit_edge81.i.i, %middle.block41
  %indvars.iv91.i.i.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %._crit_edge81.i.i ], [ %i.nk, %middle.block41 ] ; 4 uses
  %i.nt = sub nsw i64 %wide.trip.count94.i.i, %indvars.iv91.i.i.ph
  %xtraiter = and i64 %i.nt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph32.prol.loopexit, label %scalar.ph32.prol

scalar.ph32.prol:                                 ; preds = %scalar.ph32.preheader, %scalar.ph32.prol
  %indvars.iv91.i.i.prol = phi i64 [ %indvars.iv.next92.i.i.prol, %scalar.ph32.prol ], [ %indvars.iv91.i.i.ph, %scalar.ph32.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph32.prol ], [ 0, %scalar.ph32.preheader ]
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv91.i.i.prol
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !29
  %i.nw = fneg double %i.nv
  %i.nx = getelementptr [8 x i8], ptr %i.nf, i64 %indvars.iv91.i.i.prol
  %i.ny = getelementptr i8, ptr %i.nx, i64 -16
  store double %i.nw, ptr %i.ny, align 8, !tbaa !29
  %indvars.iv.next92.i.i.prol = add nuw nsw i64 %indvars.iv91.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph32.prol.loopexit, label %scalar.ph32.prol, !llvm.loop !422

scalar.ph32.prol.loopexit:                        ; preds = %scalar.ph32.prol, %scalar.ph32.preheader
  %indvars.iv91.i.i.unr = phi i64 [ %indvars.iv91.i.i.ph, %scalar.ph32.preheader ], [ %indvars.iv.next92.i.i.prol, %scalar.ph32.prol ]
  %i.nz = sub nsw i64 %indvars.iv91.i.i.ph, %wide.trip.count94.i.i
  %i.oa = icmp ugt i64 %i.nz, -4
  br i1 %i.oa, label %.loopexit128, label %scalar.ph32

scalar.ph32:                                      ; preds = %scalar.ph32.prol.loopexit, %scalar.ph32
  %indvars.iv91.i.i = phi i64 [ %indvars.iv.next92.i.i.3, %scalar.ph32 ], [ %indvars.iv91.i.i.unr, %scalar.ph32.prol.loopexit ] ; 6 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv91.i.i
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !29
  %i.od = fneg double %i.oc
  %i.oe = getelementptr [8 x i8], ptr %i.nf, i64 %indvars.iv91.i.i
  %i.of = getelementptr i8, ptr %i.oe, i64 -16
  store double %i.od, ptr %i.of, align 8, !tbaa !29
  %indvars.iv.next92.i.i = add nuw nsw i64 %indvars.iv91.i.i, 1 ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next92.i.i
  %i.oh = load double, ptr %i.og, align 8, !tbaa !29
  %i.oi = fneg double %i.oh
  %i.oj = getelementptr [8 x i8], ptr %i.nf, i64 %indvars.iv.next92.i.i
  %i.ok = getelementptr i8, ptr %i.oj, i64 -16
  store double %i.oi, ptr %i.ok, align 8, !tbaa !29
  %indvars.iv.next92.i.i.1 = add nuw nsw i64 %indvars.iv91.i.i, 2 ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next92.i.i.1
  %i.om = load double, ptr %i.ol, align 8, !tbaa !29
  %i.on = fneg double %i.om
  %i.oo = getelementptr [8 x i8], ptr %i.nf, i64 %indvars.iv.next92.i.i.1
  %i.op = getelementptr i8, ptr %i.oo, i64 -16
  store double %i.on, ptr %i.op, align 8, !tbaa !29
  %indvars.iv.next92.i.i.2 = add nuw nsw i64 %indvars.iv91.i.i, 3 ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next92.i.i.2
  %i.or = load double, ptr %i.oq, align 8, !tbaa !29
  %i.os = fneg double %i.or
  %i.ot = getelementptr [8 x i8], ptr %i.nf, i64 %indvars.iv.next92.i.i.2
  %i.ou = getelementptr i8, ptr %i.ot, i64 -16
  store double %i.os, ptr %i.ou, align 8, !tbaa !29
  %indvars.iv.next92.i.i.3 = add nuw nsw i64 %indvars.iv91.i.i, 4 ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %indvars.iv.next92.i.i.3, %wide.trip.count94.i.i
  br i1 %exitcond95.not.i.i.3, label %.loopexit128, label %scalar.ph32, !llvm.loop !423

.loopexit128:                                     ; preds = %scalar.ph32.prol.loopexit, %scalar.ph32, %middle.block41
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %wide.trip.count94.i.i
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !52
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.oz = tail call i32 @N_VScaleAddMulti(i32 noundef %i.me, ptr noundef nonnull %i.nf, ptr noundef %i.ox, ptr noundef nonnull %i.oy, ptr noundef nonnull %i.oy) #13 ; 0 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !121
  %.not65.i.i = icmp eq i32 %i.pb, 0
  br i1 %.not65.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit128
  %i.pc = load i32, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.pd = add nsw i32 %i.pc, -2
  %i.pe = load ptr, ptr %i.ne, align 8, !tbaa !74
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.pg = sext i32 %i.pc to i64
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.pg
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !52
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.pk = tail call i32 @N_VScaleAddMulti(i32 noundef %i.pd, ptr noundef %i.pe, ptr noundef %i.pi, ptr noundef nonnull %i.pj, ptr noundef nonnull %i.pj) #13 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit128
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !141
  %.not66.i.i = icmp eq i32 %i.pm, 0
  br i1 %.not66.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !129
  %i.pp = load i32, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.pq = add nsw i32 %i.pp, -2
  %i.pr = load ptr, ptr %i.ne, align 8, !tbaa !74
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.pt = sext i32 %i.pp to i64
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.pt
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !135
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.px = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.po, i32 noundef %i.pq, ptr noundef %i.pr, ptr noundef %i.pv, ptr noundef nonnull %i.pw, ptr noundef nonnull %i.pw) #13 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !173
  %.not67.i.i = icmp eq i32 %i.pz, 0
  br i1 %.not67.i.i, label %cvAdjustAdams.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !129
  %i.qc = load i32, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.qd = add nsw i32 %i.qc, -2
  %i.qe = load ptr, ptr %i.ne, align 8, !tbaa !74
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.qg = sext i32 %i.qc to i64
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %i.qg
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !135
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.qk = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.qb, i32 noundef %i.qd, ptr noundef %i.qe, ptr noundef %i.qi, ptr noundef nonnull %i.qj, ptr noundef nonnull %i.qj) #13 ; 0 uses
  br label %cvAdjustAdams.exit

cvAdjustAdams.exit:                               ; preds = %bb.ad, %bb.ac, %._crit_edge.i3.i, %bb.x, %._crit_edge143.i.i, %bb.w, %bb.n, %bb.m, %bb.l, %._crit_edge.i, %bb.g, %bb.f, %bb.a, %bb.b
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @N_VConstVectorArray(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @N_VScaleAddMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @N_VScaleAddMultiVectorArray(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolSetup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolGetNumIters(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolGetNumConvFails(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

declare void @N_VAddConst(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
