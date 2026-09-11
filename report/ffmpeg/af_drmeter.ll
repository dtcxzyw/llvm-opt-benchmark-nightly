Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_drmeter?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@uninit:bb.a
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %print_stats.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not79.i = icmp sgt i32 %i.d, 0
  br i1 %.not79.i, label %.lr.ph83.i, label %.thread68.i

.lr.ph83.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph83.i
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph83.i ], [ %indvars.iv.next88.i, %._crit_edge.i ] ; 2 uses
  %.05780.i = phi float [ 0.000000e+00, %.lr.ph83.i ], [ %i.bt, %._crit_edge.i ]
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw [262176 x i8], ptr %i.f, i64 %indvars.iv87.i ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = uitofp nsz i64 %i.i to float
  %i.k = fmul nnan nsz float %i.j, 2.000000e-01
  %i.l = tail call i64 @llvm.lrint.i64.f32(float %i.k) ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.not.i, label %.thread66.i, label %bb.d

.thread66.i:                                      ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.7) #4
  br label %print_stats.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.p = load float, ptr %i.o, align 4, !tbaa !30
  %i.q = fmul nsz float %i.p, 2.000000e+00
  %i.r = uitofp nsz i64 %i.n to float
  %i.s = fdiv nsz float %i.q, %i.r
  %i.t = tail call nsz float @llvm.sqrt.f32(float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !31
  %i.w = fmul nsz float %i.t, 3.276800e+04
  %i.x = tail call i64 @llvm.lrint.i64.f32(float %i.w)
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.z, i32 32768)
  %i.ab = fmul nsz float %i.v, 3.276800e+04
  %i.ac = tail call i64 @llvm.lrint.i64.f32(float %i.ab)
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 32768)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 131100 ; 2 uses
  %i.ah = zext nneg i32 %i.aa to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.am = zext nneg i32 %i.af to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !32
  store <2 x float> zeroinitializer, ptr %i.u, align 8, !tbaa !33
  store i64 0, ptr %i.g, align 8, !tbaa !29
  %i.aq = add i64 %i.i, 1
  store i64 %i.aq, ptr %i.h, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %indvars.iv.i = phi i64 [ 32768, %bb.d ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %.05074.i = phi i32 [ 0, %bb.d ], [ %.151.i, %bb.h ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32 ; 2 uses
  %.not61.i = icmp eq i32 %i.as, 0
  br i1 %.not61.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not62.i = icmp eq i32 %.05074.i, 0
  %.not63.i = icmp eq i32 %i.as, 1
  %or.cond.i = and i1 %.not62.i, %.not63.i
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.au = uitofp nneg i32 %i.at to float
  %i.av = fmul nnan nsz float %i.au, f0x38000000
  br label %.loopexit.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.151.i = phi i32 [ %.05074.i, %bb.e ], [ 1, %bb.f ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not94.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not94.i, label %.loopexit.i, label %bb.e, !llvm.loop !44

.loopexit.i:                                      ; preds = %bb.h, %bb.g
  %.049.i = phi float [ %i.av, %bb.g ], [ 1.000000e+00, %bb.h ]
  %sext.i = shl i64 %i.l, 32
  %i.aw = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %bb.j
  %.078.i = phi i64 [ %.1.i, %bb.j ], [ 0, %.loopexit.i ] ; 2 uses
  %.04777.i = phi i64 [ %i.bh, %bb.j ], [ 32768, %.loopexit.i ] ; 4 uses
  %.05276.i = phi float [ %.153.i, %bb.j ], [ 0.000000e+00, %.loopexit.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.04777.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32 ; 3 uses
  %.not64.i = icmp eq i32 %i.az, 0
  br i1 %.not64.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ba = uitofp nneg i64 %.04777.i to float
  %i.bb = fmul nnan nsz float %i.ba, f0x38000000  ; 2 uses
  %i.bc = fmul nnan nsz float %i.bb, %i.bb
  %i.bd = uitofp nsz i32 %i.az to float
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bd, float %.05276.i)
  %i.bf = zext i32 %i.az to i64
  %i.bg = add nuw nsw i64 %.078.i, %i.bf
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.153.i = phi nsz float [ %i.be, %bb.i ], [ %.05276.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i64 [ %i.bg, %bb.i ], [ %.078.i, %.lr.ph.i ] ; 2 uses
  %i.bh = add nsw i64 %.04777.i, -1
  %i.bi = icmp ne i64 %.04777.i, 0
  %i.bj = icmp slt i64 %.1.i, %i.aw
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %bb.j, %.loopexit.i
  %.052.lcssa.i = phi float [ 0.000000e+00, %.loopexit.i ], [ %.153.i, %bb.j ]
  %i.bl = sitofp nsz i32 %i.m to float
  %i.bm = fdiv nsz float %.052.lcssa.i, %i.bl
  %i.bn = tail call nsz float @llvm.sqrt.f32(float %i.bm)
  %i.bo = fdiv nsz float %.049.i, %i.bn
  %i.bp = tail call nsz float @llvm.log10.f32(float %i.bo)
  %i.bq = fmul nsz float %i.bp, 2.000000e+01      ; 2 uses
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 3 uses
  %i.br = fpext nsz float %i.bq to double
  %i.bs = trunc nuw nsw i64 %indvars.iv.next88.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %i.bs, double noundef %i.br) #4
  %i.bt = fadd nsz float %.05780.i, %i.bq         ; 2 uses
  %i.bu = load i32, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.not.i = icmp slt i64 %indvars.iv.next88.i, %i.bv
  br i1 %.not.i, label %bb.c, label %.thread68.i, !llvm.loop !46

.thread68.i:                                      ; preds = %._crit_edge.i, %bb.b
  %i.bw = phi i32 [ %i.d, %bb.b ], [ %i.bu, %._crit_edge.i ]
  %.057.lcssa.i = phi float [ 0.000000e+00, %bb.b ], [ %i.bt, %._crit_edge.i ]
  %i.bx = sitofp nsz i32 %i.bw to float
  %i.by = fdiv nsz float %.057.lcssa.i, %i.bx
  %i.bz = fpext nsz float %i.by to double
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.9, double noundef %i.bz) #4
  br label %print_stats.exit

print_stats.exit:                                 ; preds = %.thread68.i, %.thread66.i, %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.ca) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52
  switch i32 %i.h, label %.loopexit [
    i32 8, label %.preheader
    i32 3, label %bb.d
  ]

.preheader:                                       ; preds = %bb.a
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph49, label %.loopexit

.lr.ph49:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.o = getelementptr i8, ptr %i.d, i64 24
  %i.p = load i32, ptr %i.n, align 8, !tbaa !58   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph49.split.preheader, label %.loopexit

.lr.ph49.split.preheader:                         ; preds = %.lr.ph49
  %wide.trip.count56 = zext nneg i32 %i.f to i64
  br label %.lr.ph49.split

.lr.ph49.split:                                   ; preds = %.lr.ph49.split.preheader, %._crit_edge47.a
  %i.r = phi i32 [ %i.p, %.lr.ph49.split.preheader ], [ %i.ac, %._crit_edge47.a ] ; 2 uses
  %i.s = phi i32 [ %i.p, %.lr.ph49.split.preheader ], [ %i.ad, %._crit_edge47.a ] ; 2 uses
  %indvars.iv53 = phi i64 [ 0, %.lr.ph49.split.preheader ], [ %indvars.iv.next54, %._crit_edge47.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw [262176 x i8], ptr %i.k, i64 %indvars.iv53 ; 7 uses
  %i.u = icmp sgt i32 %i.s, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge47.a

.lr.ph:                                           ; preds = %.lr.ph49.split
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv53
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59
  %.val35 = load i64, ptr %i.o, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 131100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.pre.a = load float, ptr %i.x, align 8, !tbaa !31
  %.pre58 = load float, ptr %i.y, align 4, !tbaa !30
  %.pre59 = load i64, ptr %i.t, align 8, !tbaa !29
  br label %bb.b

._crit_edge47:                                    ; preds = %update_stat.exit
  store i64 %i.bm, ptr %i.t, align 8, !tbaa !29
  br label %._crit_edge47.a

._crit_edge47.a:                                  ; preds = %._crit_edge47, %.lr.ph49.split
  %i.ac = phi i32 [ %i.bl, %._crit_edge47 ], [ %i.r, %.lr.ph49.split ]
  %i.ad = phi i32 [ %i.bl, %._crit_edge47 ], [ %i.s, %.lr.ph49.split ]
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %.loopexit, label %.lr.ph49.split, !llvm.loop !47

bb.b:                                             ; preds = %.lr.ph, %update_stat.exit
  %i.ae = phi i32 [ %i.r, %.lr.ph ], [ %i.bl, %update_stat.exit ]
  %i.af = phi i64 [ %.pre59, %.lr.ph ], [ %i.bm, %update_stat.exit ]
  %i.ag = phi float [ %.pre58, %.lr.ph ], [ %i.bn, %update_stat.exit ]
  %i.ah = phi float [ %.pre.a, %.lr.ph ], [ %i.bo, %update_stat.exit ]
  %.03245 = phi i32 [ 0, %.lr.ph ], [ %i.bp, %update_stat.exit ]
  %.03344 = phi ptr [ %i.w, %.lr.ph ], [ %i.bq, %update_stat.exit ] ; 2 uses
  %i.ai = load float, ptr %.03344, align 4, !tbaa !33 ; 3 uses
  %i.aj = tail call nsz float @llvm.fabs.f32(float %i.ai)
  %i.ak = tail call nsz float @llvm.maxnum.f32(float %i.aj, float %i.ah) ; 3 uses
  store float %i.ak, ptr %i.x, align 8, !tbaa !31
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ag) ; 3 uses
  store float %i.al, ptr %i.y, align 4, !tbaa !30
  %i.am = add i64 %i.af, 1                        ; 3 uses
  %.not.i = icmp ult i64 %i.am, %.val35
  br i1 %.not.i, label %update_stat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = fmul nsz float %i.al, 2.000000e+00
  %i.ao = uitofp nsz i64 %i.am to float
  %i.ap = fdiv nsz float %i.an, %i.ao
  %i.aq = tail call nsz float @llvm.sqrt.f32(float %i.ap)
  %i.ar = fmul nsz float %i.aq, 3.276800e+04
  %i.as = tail call i64 @llvm.lrint.i64.f32(float %i.ar)
  %i.at = trunc i64 %i.as to i32
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 32768)
  %i.aw = fmul nsz float %i.ak, 3.276800e+04
  %i.ax = tail call i64 @llvm.lrint.i64.f32(float %i.aw)
  %i.ay = trunc i64 %i.ax to i32
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.az, i32 32768)
  %i.bb = zext nneg i32 %i.av to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !32
  %i.bf = zext nneg i32 %i.ba to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !32
  store <2 x float> zeroinitializer, ptr %i.x, align 8, !tbaa !33
  %i.bj = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.ab, align 8, !tbaa !28
  %.pre60 = load i32, ptr %i.n, align 8, !tbaa !58
  br label %update_stat.exit

update_stat.exit:                                 ; preds = %bb.b, %bb.c
  %i.bl = phi i32 [ %i.ae, %bb.b ], [ %.pre60, %bb.c ] ; 4 uses
  %i.bm = phi i64 [ %i.am, %bb.b ], [ 0, %bb.c ]  ; 2 uses
  %i.bn = phi float [ %i.al, %bb.b ], [ 0.000000e+00, %bb.c ]
  %i.bo = phi float [ %i.ak, %bb.b ], [ 0.000000e+00, %bb.c ]
  %i.bp = add nuw nsw i32 %.03245, 1              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.03344, i64 4
  %i.br = icmp slt i32 %i.bp, %i.bl
  br i1 %i.br, label %bb.b, label %._crit_edge47, !llvm.loop !48

bb.d:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !58
  %i.bu = icmp sgt i32 %i.bt, 0
  %i.bv = icmp sgt i32 %i.f, 0
  %or.cond = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond, label %.preheader38.lr.ph.split, label %.loopexit

.preheader38.lr.ph.split:                         ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59
  %i.bz = getelementptr i8, ptr %i.d, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !25
  %.val = load i64, ptr %i.bz, align 8, !tbaa !43
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.lr.ph.split, %._crit_edge
  %.03043 = phi i32 [ 0, %.preheader38.lr.ph.split ], [ %i.cc, %._crit_edge ]
  %.03142 = phi ptr [ %i.by, %.preheader38.lr.ph.split ], [ %i.dr, %._crit_edge ]
  br label %bb.e

._crit_edge:                                      ; preds = %update_stat.exit37
  %i.cc = add nuw nsw i32 %.03043, 1              ; 2 uses
  %i.cd = load i32, ptr %i.bs, align 8, !tbaa !58
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %.preheader38, label %.loopexit, !llvm.loop !49

bb.e:                                             ; preds = %.preheader38, %update_stat.exit37
  %indvars.iv = phi i64 [ 0, %.preheader38 ], [ %indvars.iv.next, %update_stat.exit37 ] ; 2 uses
  %.140 = phi ptr [ %.03142, %.preheader38 ], [ %i.dr, %update_stat.exit37 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [262176 x i8], ptr %i.cb, i64 %indvars.iv ; 8 uses
  %i.cg = load float, ptr %.140, align 4, !tbaa !33 ; 3 uses
  %i.ch = tail call nsz float @llvm.fabs.f32(float %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 3 uses
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !31
  %i.ck = tail call nsz float @llvm.maxnum.f32(float %i.ch, float %i.cj) ; 2 uses
  store float %i.ck, ptr %i.ci, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 20 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !30
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cm) ; 2 uses
  store float %i.cn, ptr %i.cl, align 4, !tbaa !30
  %i.co = load i64, ptr %i.cf, align 8, !tbaa !29
  %i.cp = add i64 %i.co, 1                        ; 3 uses
  store i64 %i.cp, ptr %i.cf, align 8, !tbaa !29
  %.not.i36 = icmp ult i64 %i.cp, %.val
  br i1 %.not.i36, label %update_stat.exit37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = fmul nsz float %i.cn, 2.000000e+00
  %i.cr = uitofp nsz i64 %i.cp to float
  %i.cs = fdiv nsz float %i.cq, %i.cr
  %i.ct = tail call nsz float @llvm.sqrt.f32(float %i.cs)
  %i.cu = fmul nsz float %i.ct, 3.276800e+04
  %i.cv = tail call i64 @llvm.lrint.i64.f32(float %i.cu)
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 0)
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.cx, i32 32768)
  %i.cz = fmul nsz float %i.ck, 3.276800e+04
  %i.da = tail call i64 @llvm.lrint.i64.f32(float %i.cz)
  %i.db = trunc i64 %i.da to i32
  %i.dc = tail call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 32768)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 131100
  %i.df = zext nneg i32 %i.cy to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.dk = zext nneg i32 %i.dd to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !32
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !32
  store <2 x float> zeroinitializer, ptr %i.ci, align 8, !tbaa !33
  store i64 0, ptr %i.cf, align 8, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !28
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !28
  br label %update_stat.exit37

update_stat.exit37:                               ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.140, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !50

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge47.a, %.lr.ph49, %bb.d, %.preheader, %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !61
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !63
  %i.dv = tail call i32 @ff_filter_frame(ptr noundef %i.du, ptr noundef %1) #4
  ret i32 %i.dv
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #3

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_output(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @av_calloc(i64 noundef %i.f, i64 noundef 262176) #4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !25
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.d, align 4, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !67
  %i.o = sitofp nsz i32 %i.n to double
  %i.p = fmul nsz double %i.l, %i.o
  %i.q = tail call i64 @llvm.lrint.i64.f64(double %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.q, ptr %i.r, align 8, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #3

declare ptr @av_default_item_name(ptr noundef) #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
end_hunk_0
