Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mv-search?download=true
inline.NumInlined: 41
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@GetDirectCost8x8:bb.a
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !193 ; 2 uses
  %i.dj = icmp slt i8 %i.di, 0
  br i1 %i.dj, label %.sink.split, label %.preheader60.1

.preheader60.1:                                   ; preds = %.preheader60
  %i.dk = add nsw i32 %i.cx, %.070
  %i.dl = zext nneg i8 %i.di to i32
  %i.dm = load ptr, ptr @direct_ref_idx, align 8, !tbaa !240 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !233
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.o
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !191
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dg
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !193
  %i.ds = sext i8 %i.dr to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !233
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.o
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !191
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.dg
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !193
  %i.dz = sext i8 %i.dy to i16
  tail call void @LumaPrediction4x4(i32 noundef %i.h, i32 noundef %i.l, i32 noundef %i.dl, i32 noundef 0, i32 noundef 0, i16 noundef signext %i.ds, i16 noundef signext %i.dz) #9
  %i.ea = load ptr, ptr @imgY_org, align 8, !tbaa !200 ; 4 uses
  %i.eb = load ptr, ptr @img, align 8, !tbaa !166
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 12624 ; 4 uses
  %i.ed = sext i32 %i.db to i64                   ; 4 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.q
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !202
  %i.eg = getelementptr inbounds [32 x i8], ptr %i.ec, i64 %indvars.iv90
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.ed
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %indvars.iv.next
  %i.ej = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ek = load <4 x i16>, ptr %i.eh, align 2, !tbaa !203
  %i.el = zext <4 x i16> %i.ek to <4 x i32>
  %i.em = load <4 x i16>, ptr %i.ei, align 2, !tbaa !203
  %i.en = zext <4 x i16> %i.em to <4 x i32>
  %i.eo = sub nsw <4 x i32> %i.el, %i.en          ; 2 uses
  store <4 x i32> %i.eo, ptr %i.ej, align 16, !tbaa !7
  store <4 x i32> %i.eo, ptr @diff, align 16, !tbaa !7
  %i.ep = getelementptr [8 x i8], ptr %i.ea, i64 %i.q
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !202
  %i.es = getelementptr [32 x i8], ptr %i.ec, i64 %indvars.iv90
  %i.et = getelementptr i8, ptr %i.es, i64 32
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.ed
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.et, i64 %indvars.iv.next
  %i.ew = getelementptr i8, ptr %i.s, i64 48
  %i.ex = load <4 x i16>, ptr %i.eu, align 2, !tbaa !203
  %i.ey = zext <4 x i16> %i.ex to <4 x i32>
  %i.ez = load <4 x i16>, ptr %i.ev, align 2, !tbaa !203
  %i.fa = zext <4 x i16> %i.ez to <4 x i32>
  %i.fb = sub nsw <4 x i32> %i.ey, %i.fa          ; 2 uses
  store <4 x i32> %i.fb, ptr %i.ew, align 16, !tbaa !7
  store <4 x i32> %i.fb, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 16), align 16, !tbaa !7
  %i.fc = getelementptr [8 x i8], ptr %i.ea, i64 %i.q
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !202
  %i.ff = getelementptr [32 x i8], ptr %i.ec, i64 %indvars.iv90
  %i.fg = getelementptr i8, ptr %i.ff, i64 64
  %i.fh = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %i.ed
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fg, i64 %indvars.iv.next
  %i.fj = getelementptr i8, ptr %i.u, i64 80
  %i.fk = load <4 x i16>, ptr %i.fh, align 2, !tbaa !203
  %i.fl = zext <4 x i16> %i.fk to <4 x i32>
  %i.fm = load <4 x i16>, ptr %i.fi, align 2, !tbaa !203
  %i.fn = zext <4 x i16> %i.fm to <4 x i32>
  %i.fo = sub nsw <4 x i32> %i.fl, %i.fn          ; 2 uses
  store <4 x i32> %i.fo, ptr %i.fj, align 16, !tbaa !7
  store <4 x i32> %i.fo, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 32), align 16, !tbaa !7
  %i.fp = getelementptr [8 x i8], ptr %i.ea, i64 %i.q
  %i.fq = getelementptr i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !202
  %i.fs = getelementptr [32 x i8], ptr %i.ec, i64 %indvars.iv90
  %i.ft = getelementptr i8, ptr %i.fs, i64 96
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.ed
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %indvars.iv.next
  %i.fw = getelementptr i8, ptr %i.w, i64 112
  %i.fx = load <4 x i16>, ptr %i.fu, align 2, !tbaa !203
  %i.fy = zext <4 x i16> %i.fx to <4 x i32>
  %i.fz = load <4 x i16>, ptr %i.fv, align 2, !tbaa !203
  %i.ga = zext <4 x i16> %i.fz to <4 x i32>
  %i.gb = sub nsw <4 x i32> %i.fy, %i.ga          ; 2 uses
  store <4 x i32> %i.gb, ptr %i.fw, align 16, !tbaa !7
  store <4 x i32> %i.gb, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 48), align 16, !tbaa !7
  %i.gc = tail call i32 @distortion4x4(ptr noundef nonnull @diff) #9
  %i.gd = add nsw i32 %i.gc, %i.dk                ; 4 uses
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 4
  %.not74 = icmp sgt i64 %indvars.iv90, %i.g
  br i1 %.not74, label %bb.c, label %bb.b, !llvm.loop !328

bb.c:                                             ; preds = %.preheader60.1
  %i.ge = load ptr, ptr @input, align 8, !tbaa !166 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4168
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !235
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 5100
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !221
  %.not = icmp eq i32 %i.gj, 0
  br i1 %.not, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @diff64, ptr noundef nonnull align 16 dereferenceable(256) %i.a, i64 256, i1 false)
  %i.gk = tail call i32 @distortion8x8(ptr noundef nonnull @diff64) #9
  %i.gl = load i32, ptr %1, align 4, !tbaa !7
  %i.gm = add nsw i32 %i.gl, %i.gk
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %.preheader60, %.preheader.preheader
  %.sink = phi i32 [ %i.gm, %.preheader.preheader ], [ 2147483647, %.preheader60 ], [ 2147483647, %bb.b ]
  %.058.ph = phi i32 [ %i.gd, %.preheader.preheader ], [ 2147483647, %.preheader60 ], [ 2147483647, %bb.b ]
  store i32 %.sink, ptr %1, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.d
  %.058 = phi i32 [ %i.gd, %bb.d ], [ %i.gd, %bb.c ], [ %.058.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.058
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetDirectCostMB() local_unnamed_addr #0 !guid !330 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.b = call i32 @GetDirectCost8x8(i32 noundef 0, ptr noundef nonnull %i.a)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  %i.d = icmp eq i32 %i.c, 2147483647
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @GetDirectCost8x8(i32 noundef 1, ptr noundef nonnull %i.a)
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7
  %i.g = icmp eq i32 %i.f, 2147483647
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @GetDirectCost8x8(i32 noundef 2, ptr noundef nonnull %i.a)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !7
  %i.j = icmp eq i32 %i.i, 2147483647
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @GetDirectCost8x8(i32 noundef 3, ptr noundef nonnull %i.a)
  %i.l = load i32, ptr %i.a, align 4, !tbaa !7    ; 3 uses
  %i.m = icmp eq i32 %i.l, 2147483647
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, %i.b
  %i.o = add nsw i32 %i.h, %i.n
  %i.p = add nsw i32 %i.k, %i.o                   ; 3 uses
  %i.q = load ptr, ptr @input, align 8, !tbaa !166 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 5100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !221
  switch i32 %i.s, label %.loopexit [
    i32 1, label %bb.f
    i32 2, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = icmp slt i32 %i.l, %i.p
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4036
  %i.v = load i32, ptr %i.u, align 4, !tbaa !331
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4040
  %i.x = load i32, ptr %i.w, align 8, !tbaa !332
  %.not9 = icmp eq i32 %i.x, 0
  br i1 %.not9, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 4044
  %i.z = load i32, ptr %i.y, align 4, !tbaa !333
  %.not10 = icmp eq i32 %i.z, 0
  br i1 %.not10, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.e
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.j, %bb.i, %bb.e
  %.08 = phi i32 [ %i.l, %bb.j ], [ %i.p, %bb.e ], [ 2147483647, %bb.a ], [ %i.p, %bb.i ], [ 2147483647, %bb.d ], [ 2147483647, %bb.c ], [ 2147483647, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local void @PartitionMotionSearch(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !340 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !166  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !239
  %i.d = icmp eq i32 %i.c, 1
  %i.e = tail call i32 @llvm.smin.i32(i32 %0, i32 4)
  %i.f = load ptr, ptr @input, align 8, !tbaa !166
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %i.h = sext i32 %i.e to i64                     ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !7
  %.fr = freeze i32 %i.j                          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %.fr108 = freeze i32 %i.l                       ; 2 uses
  %i.m = sext i32 %0 to i64                       ; 5 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !7    ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %.fr109 = freeze i32 %i.q                       ; 3 uses
  %3 = select i1 %i.d, i32 2, i32 1               ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !194
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !185
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [536 x i8], ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 432
  %i.y = load i32, ptr %i.x, align 8, !tbaa !241  ; 3 uses
  %i.z = getelementptr inbounds [16 x i8], ptr @PartitionMotionSearch.by0, i64 %i.h
  %i.aa = sext i32 %1 to i64                      ; 5 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7  ; 2 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr @PartitionMotionSearch.bx0, i64 %i.h
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.aa
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7  ; 3 uses
  %i.ag = tail call i32 @llvm.smin.i32(i32 %0, i32 2)
  %i.ah = add nsw i32 %i.ac, %.fr108
  %i.ai = icmp sgt i32 %.fr108, 0
  %i.aj = add nsw i32 %i.af, %.fr                 ; 2 uses
  %i.ak = sext i32 %i.o to i64                    ; 3 uses
  br i1 %i.ai, label %.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.al = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr [4 x i8], ptr @listXsize, i64 %i.al
  %.pre = load ptr, ptr @motion_cost, align 8
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.m
  br label %.preheader

.split.us:                                        ; preds = %bb.a
  %i.am = icmp sgt i32 %.fr, 0
  br i1 %i.am, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.split.us
  %i.an = sext i32 %i.y to i64
  %wide.trip.count118 = zext nneg i32 %3 to i64
  %invariant.gep152 = getelementptr [4 x i8], ptr @listXsize, i64 %i.an
  %.pre143 = load ptr, ptr @motion_cost, align 8
  %.phi.trans.insert144 = getelementptr inbounds [8 x i8], ptr %.pre143, i64 %i.m
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.split.us
  %i.ao = sext i32 %i.af to i64
  %i.ap = sext i32 %i.aj to i64
  %i.aq = sext i32 %i.ac to i64
  %i.ar = sext i32 %.fr109 to i64
  %i.as = sext i32 %i.ah to i64
  %i.at = sext i32 %i.y to i64
  %wide.trip.count138 = zext nneg i32 %3 to i64
  %invariant.gep154 = getelementptr [4 x i8], ptr @listXsize, i64 %i.at
  %i.au = icmp sgt i32 %.fr109, 0
  %i.av = icmp sgt i32 %i.o, 0
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.split.us.us
  %indvars.iv135 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next136, %._crit_edge.split.us.us.split.us.us ] ; 8 uses
  %gep155 = getelementptr [4 x i8], ptr %invariant.gep154, i64 %indvars.iv135 ; 2 uses
  %i.aw = load i32, ptr %gep155, align 4, !tbaa !7
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.us.us, label %._crit_edge.split.us.us.split.us.us

.lr.ph.us.us:                                     ; preds = %.preheader.us.us
  %i.ay = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.az = trunc nuw nsw i64 %indvars.iv135 to i32
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge94.split.us.us.us.us.us, %.lr.ph.us.us
  %i.ba = phi i32 [ 0, %.lr.ph.us.us ], [ %i.ej, %._crit_edge94.split.us.us.us.us.us ] ; 2 uses
  %.07998.us.us.us.us = phi i16 [ 0, %.lr.ph.us.us ], [ %i.ei, %._crit_edge94.split.us.us.us.us.us ] ; 5 uses
  %i.bb = load ptr, ptr @motion_cost, align 8, !tbaa !210
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.m
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !224
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv135
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !226
  %i.bg = sext i16 %.07998.us.us.us.us to i64     ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !206
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.aa ; 5 uses
  %i.bk = load ptr, ptr @input, align 8, !tbaa !166 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4140
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !341
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !205 ; 2 uses
  switch i32 %i.bm, label %bb.d [
    i32 2, label %.lr.ph93.us.us.us.us
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.bp = tail call noundef i32 @llvm.smin.i32(i32 %i.ba, i32 1)
  %i.bq = add nsw i32 %i.bp, 1
  br label %.lr.ph93.us.us.us.us.sink.split

bb.d:                                             ; preds = %bb.b
  %i.br = tail call noundef i32 @llvm.smin.i32(i32 %i.ba, i32 1)
  %i.bs = add nsw i32 %i.br, 1
  %i.bt = mul nsw i32 %i.bs, %i.ag
  br label %.lr.ph93.us.us.us.us.sink.split

.lr.ph93.us.us.us.us.sink.split:                  ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.bt, %bb.d ], [ %i.bq, %bb.c ]
  %i.bu = sdiv i32 %i.bo, %.sink
  br label %.lr.ph93.us.us.us.us

.lr.ph93.us.us.us.us:                             ; preds = %.lr.ph93.us.us.us.us.sink.split, %bb.b
  %.076.us.us.us.us = phi i32 [ %i.bo, %bb.b ], [ %i.bu, %.lr.ph93.us.us.us.us.sink.split ] ; 2 uses
  %i.bv = load ptr, ptr @enc_picture, align 8, !tbaa !228 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 6488
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !232
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv135
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !233 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 6512
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !234
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv135
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !218
  store i32 0, ptr %i.bj, align 4, !tbaa !7
  %i.ce = trunc i16 %.07998.us.us.us.us to i8     ; 2 uses
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.lr.ph93.us.us.us.us
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %._crit_edge.us.us.us.us.us ], [ %i.aq, %.lr.ph93.us.us.us.us ] ; 3 uses
  %i.cf = trunc nsw i64 %indvars.iv132 to i32     ; 2 uses
  %i.cg = shl i32 %i.cf, 2                        ; 2 uses
  br i1 %i.au, label %.lr.ph85.us.us.us.us.us.us.preheader, label %.lr.ph.split.us95.us.us.us.us

.lr.ph85.us.us.us.us.us.us.preheader:             ; preds = %.lr.ph.us.us.us.us.us
  %i.ch = load ptr, ptr @img, align 8, !tbaa !166
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 172
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !342
  %i.ck = add i32 %i.cj, %i.cf                    ; 2 uses
  %i.cl = add nsw i32 %i.ck, %.fr109
  %i.cm = sext i32 %i.ck to i64                   ; 2 uses
  %i.cn = sext i32 %i.cl to i64                   ; 2 uses
  br label %.lr.ph85.us.us.us.us.us.us

.lr.ph.split.us95.us.us.us.us:                    ; preds = %.lr.ph.us.us.us.us.us, %.lr.ph.split.us95.us.us.us.us
  %.07787.us96.us.us.us.us = phi i32 [ %i.cs, %.lr.ph.split.us95.us.us.us.us ], [ %i.af, %.lr.ph.us.us.us.us.us ] ; 2 uses
  %i.co = shl i32 %.07787.us96.us.us.us.us, 2
  %i.cp = tail call i32 @BlockMotionSearch(i16 noundef signext %.07998.us.us.us.us, i32 noundef %i.ay, i32 noundef %i.co, i32 noundef %i.cg, i32 noundef %0, i32 noundef %.076.us.us.us.us, ptr noundef %2)
  %i.cq = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.cr = add nsw i32 %i.cq, %i.cp
  store i32 %i.cr, ptr %i.bj, align 4, !tbaa !7
  %i.cs = add nsw i32 %.07787.us96.us.us.us.us, %i.o ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.aj
  br i1 %i.ct, label %.lr.ph.split.us95.us.us.us.us, label %._crit_edge.us.us.us.us.us, !llvm.loop !334

.lr.ph85.us.us.us.us.us.us:                       ; preds = %.lr.ph85.us.us.us.us.us.us.preheader, %._crit_edge86.us.us.us.us.us.us
  %indvars.iv129 = phi i64 [ %i.ao, %.lr.ph85.us.us.us.us.us.us.preheader ], [ %indvars.iv.next130, %._crit_edge86.us.us.us.us.us.us ] ; 3 uses
  %i.cu = load ptr, ptr @img, align 8, !tbaa !166 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 14384
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !223
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv132
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !214
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %indvars.iv129
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !216
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv135
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !218
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.bg
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !200
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.m
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !202
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 168
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !343
  %i.dj = trunc nsw i64 %indvars.iv129 to i32     ; 2 uses
  %i.dk = add i32 %i.di, %i.dj                    ; 2 uses
  %i.dl = shl i32 %i.dj, 2
  %i.dm = tail call i32 @BlockMotionSearch(i16 noundef signext %.07998.us.us.us.us, i32 noundef %i.az, i32 noundef %i.dl, i32 noundef %i.cg, i32 noundef %0, i32 noundef %.076.us.us.us.us, ptr noundef %2)
  %i.dn = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.do = add nsw i32 %i.dn, %i.dm
  store i32 %i.do, ptr %i.bj, align 4, !tbaa !7
  %i.dp = sext i32 %i.dk to i64                   ; 3 uses
  br i1 %i.av, label %.lr.ph.us.us.us.us.us.us.us.preheader, label %.lr.ph85.split.us88.us.us.us.us.us

.lr.ph.us.us.us.us.us.us.us.preheader:            ; preds = %.lr.ph85.us.us.us.us.us.us
  %i.dq = add nsw i32 %i.dk, %i.o
  %i.dr = sext i32 %i.dq to i64
  br label %.lr.ph.us.us.us.us.us.us.us

.lr.ph85.split.us88.us.us.us.us.us:               ; preds = %.lr.ph85.us.us.us.us.us.us, %.lr.ph85.split.us88.us.us.us.us.us
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %.lr.ph85.split.us88.us.us.us.us.us ], [ %i.cm, %.lr.ph85.us.us.us.us.us.us ] ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %indvars.iv120
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !191
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.dp
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.du, i8 %i.ce, i64 %i.ak, i1 false)
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.dv = icmp slt i64 %indvars.iv.next121, %i.cn
  br i1 %i.dv, label %.lr.ph85.split.us88.us.us.us.us.us, label %._crit_edge86.us.us.us.us.us.us, !llvm.loop !335

.lr.ph.us.us.us.us.us.us.us:                      ; preds = %.lr.ph.us.us.us.us.us.us.us.preheader, %._crit_edge.us.us.us.us.us.us.us
  %indvars.iv126 = phi i64 [ %i.cm, %.lr.ph.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next127, %._crit_edge.us.us.us.us.us.us.us ] ; 3 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %indvars.iv126
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !191
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 %i.dp
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dy, i8 %i.ce, i64 %i.ak, i1 false)
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %indvars.iv126
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.us.us.us.us.us.us.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %bb.e ], [ %i.dp, %.lr.ph.us.us.us.us.us.us.us ] ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !200
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv123
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !202
  %i.ed = load i32, ptr %i.dg, align 2
  store i32 %i.ed, ptr %i.ec, align 2
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.ee = icmp slt i64 %indvars.iv.next124, %i.dr
  br i1 %i.ee, label %bb.e, label %._crit_edge.us.us.us.us.us.us.us, !llvm.loop !336

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %bb.e
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 1 ; 2 uses
  %i.ef = icmp slt i64 %indvars.iv.next127, %i.cn
  br i1 %i.ef, label %.lr.ph.us.us.us.us.us.us.us, label %._crit_edge86.us.us.us.us.us.us, !llvm.loop !335

._crit_edge86.us.us.us.us.us.us:                  ; preds = %.lr.ph85.split.us88.us.us.us.us.us, %._crit_edge.us.us.us.us.us.us.us
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, %i.ak ; 2 uses
  %i.eg = icmp slt i64 %indvars.iv.next130, %i.ap
  br i1 %i.eg, label %.lr.ph85.us.us.us.us.us.us, label %._crit_edge.us.us.us.us.us, !llvm.loop !334

._crit_edge.us.us.us.us.us:                       ; preds = %.lr.ph.split.us95.us.us.us.us, %._crit_edge86.us.us.us.us.us.us
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, %i.ar ; 2 uses
  %i.eh = icmp slt i64 %indvars.iv.next133, %i.as
  br i1 %i.eh, label %.lr.ph.us.us.us.us.us, label %._crit_edge94.split.us.us.us.us.us, !llvm.loop !337

._crit_edge94.split.us.us.us.us.us:               ; preds = %._crit_edge.us.us.us.us.us
  %i.ei = add i16 %.07998.us.us.us.us, 1          ; 2 uses
  %i.ej = sext i16 %i.ei to i32                   ; 2 uses
  %i.ek = load i32, ptr %gep155, align 4, !tbaa !7
  %i.el = icmp sgt i32 %i.ek, %i.ej
  br i1 %i.el, label %bb.b, label %._crit_edge.split.us.us.split.us.us, !llvm.loop !338

._crit_edge.split.us.us.split.us.us:              ; preds = %._crit_edge94.split.us.us.us.us.us, %.preheader.us.us
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.split106.us, label %.preheader.us.us, !llvm.loop !339

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us.split.a
  %indvars.iv115 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next116, %._crit_edge.split.us.us.split.a ] ; 3 uses
  %gep153 = getelementptr [4 x i8], ptr %invariant.gep152, i64 %indvars.iv115 ; 2 uses
  %i.em = load i32, ptr %gep153, align 4, !tbaa !7
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph.us.a, label %._crit_edge.split.us.us.split.a

.lr.ph.us.a:                                      ; preds = %.preheader.us
  %.pre145.a = load ptr, ptr %.phi.trans.insert144, align 8, !tbaa !224
  %.phi.trans.insert146 = getelementptr inbounds nuw [8 x i8], ptr %.pre145.a, i64 %indvars.iv115
  %.pre147.a = load ptr, ptr %.phi.trans.insert146, align 8, !tbaa !226
  br label %.lr.ph93.us.us

.lr.ph93.us.us:                                   ; preds = %.lr.ph93.us.us, %.lr.ph.us.a
  %.07998.us.us.a = phi i16 [ 0, %.lr.ph.us.a ], [ %i.es, %.lr.ph93.us.us ] ; 2 uses
  %i.eo = sext i16 %.07998.us.us.a to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %.pre147.a, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !206
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.aa
  store i32 0, ptr %i.er, align 4, !tbaa !7
  %i.es = add i16 %.07998.us.us.a, 1              ; 2 uses
  %i.et = sext i16 %i.es to i32
  %i.eu = load i32, ptr %gep153, align 4, !tbaa !7
  %i.ev = icmp sgt i32 %i.eu, %i.et
  br i1 %i.ev, label %.lr.ph93.us.us, label %._crit_edge.split.us.us.split.a, !llvm.loop !338

._crit_edge.split.us.us.split.a:                  ; preds = %.lr.ph93.us.us, %.preheader.us
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %.split106.us, label %.preheader.us, !llvm.loop !339

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge.split ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.ew = load i32, ptr %gep, align 4, !tbaa !7
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader
  %.pre140.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !224
  %.phi.trans.insert141 = getelementptr inbounds nuw [8 x i8], ptr %.pre140.a, i64 %indvars.iv
  %.pre142.a = load ptr, ptr %.phi.trans.insert141, align 8, !tbaa !226
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.07998.a = phi i16 [ 0, %.lr.ph ], [ %i.fc, %bb.f ] ; 2 uses
  %i.ey = sext i16 %.07998.a to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %.pre142.a, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !206
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.aa
  store i32 0, ptr %i.fb, align 4, !tbaa !7
  %i.fc = add i16 %.07998.a, 1                    ; 2 uses
  %i.fd = sext i16 %i.fc to i32
  %i.fe = load i32, ptr %gep, align 4, !tbaa !7
  %i.ff = icmp sgt i32 %i.fe, %i.fd
  br i1 %i.ff, label %bb.f, label %._crit_edge.split, !llvm.loop !338

._crit_edge.split:                                ; preds = %bb.f, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split106.us, label %.preheader, !llvm.loop !339

.split106.us:                                     ; preds = %._crit_edge.split, %._crit_edge.split.us.us.split.a, %._crit_edge.split.us.us.split.us.us
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Get_Direct_Motion_Vectors() local_unnamed_addr #0 !guid !349 {
bb.a:
  %i.a = alloca [2 x i16], align 4                ; 5 uses
  %i.b = alloca [2 x i16], align 4                ; 5 uses
  %0 = alloca %struct.pix_pos, align 4            ; 21 uses
  %1 = alloca %struct.pix_pos, align 4            ; 22 uses
  %2 = alloca %struct.pix_pos, align 4            ; 22 uses
  %3 = alloca %struct.pix_pos, align 4            ; 22 uses
  %i.c = load ptr, ptr @enc_picture, align 8, !tbaa !228 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 6488
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233  ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !233  ; 12 uses
  %i.i = load ptr, ptr @img, align 8, !tbaa !166  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 14224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !194
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !185  ; 3 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [536 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 432 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !241  ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = and i32 %i.m, 1
  %.not420 = icmp eq i32 %i.r, 0
  %i.s = load ptr, ptr @Co_located, align 8, !tbaa !351 ; 8 uses
  br i1 %.not420, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4856
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4848
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4832
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4840
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 3240
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 3232
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 3216
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 3224
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr @Co_located, align 8, !tbaa !351 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1624
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1616
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1600
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1608
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0377.in = phi ptr [ %i.t, %bb.c ], [ %i.x, %bb.d ], [ %i.ac, %bb.e ]
  %.0376.in = phi ptr [ %i.u, %bb.c ], [ %i.y, %bb.d ], [ %i.ad, %bb.e ]
  %.0375.in = phi ptr [ %i.v, %bb.c ], [ %i.z, %bb.d ], [ %i.ae, %bb.e ]
  %.0374.in = phi ptr [ %i.w, %bb.c ], [ %i.aa, %bb.d ], [ %i.af, %bb.e ]
  %.0374 = load ptr, ptr %.0374.in, align 8, !tbaa !352
  %.0375 = load ptr, ptr %.0375.in, align 8, !tbaa !240 ; 2 uses
  %.0376 = load ptr, ptr %.0376.in, align 8, !tbaa !216
  %.0377 = load ptr, ptr %.0377.in, align 8, !tbaa !233
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 14452
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !353
  %.not421 = icmp eq i32 %i.ah, 0
  br i1 %.not421, label %bb.dq, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @getLuma4x4Neighbour(i32 noundef %i.m, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %0) #9
  %i.ai = load ptr, ptr @img, align 8, !tbaa !166
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !185
  call void @getLuma4x4Neighbour(i32 noundef %i.ak, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %1) #9
  %i.al = load ptr, ptr @img, align 8, !tbaa !166
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !185
  call void @getLuma4x4Neighbour(i32 noundef %i.an, i32 noundef 16, i32 noundef -1, ptr noundef nonnull %3) #9
  %i.ao = load ptr, ptr @img, align 8, !tbaa !166
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !185
  call void @getLuma4x4Neighbour(i32 noundef %i.aq, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %2) #9
  %i.ar = load ptr, ptr @img, align 8, !tbaa !166 ; 17 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 15268
  %i.at = load i32, ptr %i.as, align 4, !tbaa !188
  %.not423 = icmp eq i32 %i.at, 0
  br i1 %.not423, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %0, align 4, !tbaa !187
  %.not424 = icmp eq i32 %i.au, 0                 ; 2 uses
  br i1 %.not424, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !189
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !191
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !192
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !193
  %i.bf = sext i8 %i.be to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bg = phi i32 [ %i.bf, %bb.i ], [ -1, %bb.h ] ; 2 uses
  %i.bh = load i32, ptr %1, align 4, !tbaa !187
  %.not425 = icmp eq i32 %i.bh, 0                 ; 2 uses
  br i1 %.not425, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !189
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !191
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !192
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !193
  %i.bs = sext i8 %i.br to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bt = phi i32 [ %i.bs, %bb.k ], [ -1, %bb.j ] ; 2 uses
  %i.bu = load i32, ptr %2, align 4, !tbaa !187
  %.not426 = icmp eq i32 %i.bu, 0                 ; 2 uses
  br i1 %.not426, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !189
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !191
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !192
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !193
  %i.cf = sext i8 %i.ce to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cg = phi i32 [ %i.cf, %bb.m ], [ -1, %bb.l ]
  %i.ch = load i32, ptr %3, align 4, !tbaa !187
  %.not427 = icmp eq i32 %i.ch, 0                 ; 2 uses
  br i1 %.not427, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !189
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !191
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !192
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !193
  %i.cs = sext i8 %i.cr to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ct = phi i32 [ %i.cs, %bb.o ], [ %i.cg, %bb.n ] ; 2 uses
  br i1 %.not424, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !189
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !191
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !192
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !193
  %i.de = sext i8 %i.dd to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.df = phi i32 [ %i.de, %bb.q ], [ -1, %bb.p ] ; 2 uses
  br i1 %.not425, label %bb.t, label %bb.s
end_hunk_0
