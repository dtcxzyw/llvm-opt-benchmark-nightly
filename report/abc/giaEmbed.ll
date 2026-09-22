Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEmbed?download=true
inline.NumInlined: 455
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 32
begin_hunk_0_@Emb_ManDerivePlacement:bb.a
  %i.cq = fmul <4 x float> %broadcast.splat157, %i.co
  %i.cr = fmul <4 x float> %broadcast.splat157, %i.cp
  %i.cs = select <4 x i1> %i.cm, <4 x float> %i.cq, <4 x float> zeroinitializer
  %i.ct = select <4 x i1> %i.cn, <4 x float> %i.cr, <4 x float> zeroinitializer
  store <4 x float> %i.cs, ptr %i.ck, align 4, !tbaa !84
  store <4 x float> %i.ct, ptr %i.cl, align 4, !tbaa !84
  %index.next162 = add nuw i64 %index159, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next162, %n.vec153
  br i1 %i.cu, label %middle.block163, label %vector.body158, !llvm.loop !193

middle.block163:                                  ; preds = %vector.body158
  %cmp.n164 = icmp eq i64 %n.vec153, %wide.trip.count
  br i1 %cmp.n164, label %._crit_edge102, label %.lr.ph101.preheader166

.lr.ph101.preheader166:                           ; preds = %.lr.ph101.preheader, %middle.block163
  %indvars.iv121.ph = phi i64 [ 0, %.lr.ph101.preheader ], [ %n.vec153, %middle.block163 ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader166, %.lr.ph101
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %.lr.ph101 ], [ %indvars.iv121.ph, %.lr.ph101.preheader166 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv121 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !84 ; 2 uses
  %i.cx = fcmp une float %i.cw, 0.000000e+00
  %i.cy = fsub float %i.cw, %.lcssa167
  %i.cz = fmul float %i.cj, %i.cy
  %i.da = select i1 %i.cx, float %i.cz, float 0.000000e+00
  store float %i.da, ptr %i.cv, align 4, !tbaa !84
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge102, label %.lr.ph101, !llvm.loop !194

._crit_edge102:                                   ; preds = %.lr.ph101, %middle.block163, %._crit_edge96
  %i.db = phi ptr [ %i.by, %._crit_edge96 ], [ %i.bc, %middle.block163 ], [ %i.bc, %.lr.ph101 ]
  %i.dc = tail call ptr @Gia_SortFloats(ptr noundef %.val81, ptr noundef null, i32 noundef %i.c) #29 ; 3 uses
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !70
  %i.de = tail call ptr @Gia_SortFloats(ptr noundef %i.db, ptr noundef null, i32 noundef %i.dd) #29 ; 3 uses
  %i.df = load i32, ptr %i.a, align 8, !tbaa !70  ; 4 uses
  %i.dg = shl nsw i32 %i.df, 1
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 1
  %i.dj = tail call noalias ptr @malloc(i64 noundef %i.di) #31 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !73
  %i.dl = icmp sgt i32 %i.df, 0
  br i1 %i.dl, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %._crit_edge102
  %i.dm = uitofp nneg i32 %i.df to double
  %wide.trip.count129 = zext nneg i32 %i.df to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph105, %bb.c
  %indvars.iv126 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next127, %bb.c ] ; 4 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv126 to i32
  %i.do = uitofp nneg i32 %i.dn to double
  %i.dp = fmul nnan double %i.do, 3.276700e+04
  %i.dq = fdiv double %i.dp, %i.dm
  %i.dr = fptosi double %i.dq to i32
  %i.ds = trunc i32 %i.dr to i16                  ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv126
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !25
  %i.dv = shl nsw i32 %i.du, 1
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dj, i64 %i.dw
  store i16 %i.ds, ptr %i.dx, align 2, !tbaa !89
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv126
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !25
  %i.ea = shl nsw i32 %i.dz, 1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [2 x i8], ptr %i.dj, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 2
  store i16 %i.ds, ptr %i.ed, align 2, !tbaa !89
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge106.thread, label %bb.c, !llvm.loop !195

._crit_edge106:                                   ; preds = %._crit_edge102
  %.not77 = icmp eq ptr %i.dc, null
  br i1 %.not77, label %bb.d, label %._crit_edge106.thread

._crit_edge106.thread:                            ; preds = %bb.c, %._crit_edge106
  tail call void @free(ptr noundef nonnull %i.dc) #29
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge106, %._crit_edge106.thread
  %.not78 = icmp eq ptr %i.de, null
  br i1 %.not78, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.de) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  ret void
}

declare ptr @Gia_SortFloats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define double @Emb_ManComputeHPWL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph59, label %.critedge

.lr.ph59:                                         ; preds = %.preheader
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.g, align 8, !tbaa !64  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %.lr.ph59.split

.lr.ph59.split:                                   ; preds = %.lr.ph59, %.critedge2
  %.04058 = phi i32 [ %i.ba, %.critedge2 ], [ 0, %.lr.ph59 ] ; 2 uses
  %.04157 = phi double [ %i.ay, %.critedge2 ], [ 0.000000e+00, %.lr.ph59 ]
  %i.h = zext i32 %.04058 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24
  %i.l = shl i32 %i.k, 1                          ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !89
  %i.p = zext i16 %i.o to i32                     ; 4 uses
  %i.q = or disjoint i32 %i.l, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !89
  %i.u = zext i16 %i.t to i32                     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !69   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  %.val46.pre = load i32, ptr %i.i, align 4       ; 2 uses
  br i1 %i.x, label %.lr.ph, label %.lr.ph59.split..critedge2_crit_edge

.lr.ph59.split..critedge2_crit_edge:              ; preds = %.lr.ph59.split
  %.pre = lshr i32 %.val46.pre, 4
  br label %.critedge2

.lr.ph:                                           ; preds = %.lr.ph59.split
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.z = lshr i32 %.val46.pre, 4                  ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %wide.trip.count = zext nneg i32 %i.w to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.052 = phi i32 [ %i.u, %.lr.ph ], [ %i.at, %bb.b ]
  %.03651 = phi i32 [ %i.u, %.lr.ph ], [ %i.as, %bb.b ]
  %.03750 = phi i32 [ %i.p, %.lr.ph ], [ %i.am, %bb.b ]
  %.03849 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %bb.b ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ab = load i32, ptr %gep, align 4, !tbaa !25
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !24
  %i.ag = shl i32 %i.af, 1                        ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !89
  %i.ak = zext i16 %i.aj to i32                   ; 2 uses
  %i.al = tail call noundef i32 @llvm.smin.i32(i32 %.03849, i32 %i.ak) ; 2 uses
  %i.am = tail call noundef i32 @llvm.smax.i32(i32 %.03750, i32 %i.ak) ; 2 uses
  %i.an = or disjoint i32 %i.ag, 1
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !89
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = tail call noundef i32 @llvm.smin.i32(i32 %.03651, i32 %i.ar) ; 2 uses
  %i.at = tail call noundef i32 @llvm.smax.i32(i32 %.052, i32 %i.ar) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.b, !llvm.loop !12

.critedge2:                                       ; preds = %bb.b, %.lr.ph59.split..critedge2_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.lr.ph59.split..critedge2_crit_edge ], [ %i.z, %bb.b ]
  %.038.lcssa = phi i32 [ %i.p, %.lr.ph59.split..critedge2_crit_edge ], [ %i.al, %bb.b ]
  %.037.lcssa = phi i32 [ %i.p, %.lr.ph59.split..critedge2_crit_edge ], [ %i.am, %bb.b ]
  %.036.lcssa = phi i32 [ %i.u, %.lr.ph59.split..critedge2_crit_edge ], [ %i.as, %bb.b ]
  %.0.lcssa = phi i32 [ %i.u, %.lr.ph59.split..critedge2_crit_edge ], [ %i.at, %bb.b ]
  %i.au = add nuw nsw i32 %.038.lcssa, %.036.lcssa
  %i.av = sub nsw i32 %.037.lcssa, %i.au
  %i.aw = add nsw i32 %i.av, %.0.lcssa
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fadd double %.04157, %i.ax              ; 2 uses
  %narrow.i = add i32 %.04058, 5
  %i.az = add i32 %narrow.i, %i.w
  %i.ba = add i32 %i.az, %.pre-phi                ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.e
  br i1 %i.bb, label %.lr.ph59.split, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %.critedge2, %.lr.ph59, %.preheader, %bb.a
  %.042 = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.lr.ph59 ], [ %i.ay, %.critedge2 ]
  ret double %.042
}

; Function Attrs: nounwind uwtable
define void @Emb_ManPlacementRefine(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #29
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !80
  %.neg156 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81
  %.neg = sdiv i64 %i.e, -1000
  %.neg157 = add i64 %.neg, %.neg156
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg157, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.t, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !70
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 4 uses
  %i.m = call noalias ptr @malloc(i64 noundef %i.l) #31 ; 7 uses
  %i.n = call noalias ptr @malloc(i64 noundef %i.l) #31 ; 7 uses
  %i.o = call noalias ptr @malloc(i64 noundef %i.l) #31 ; 4 uses
  %i.p = call noalias ptr @malloc(i64 noundef %i.l) #31 ; 4 uses
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge191

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not143 = icmp eq i32 %2, 0
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge211
  %.0118190 = phi i32 [ 0, %.preheader.lr.ph ], [ %.pre, %._crit_edge211 ]
  %i.u = load i32, ptr %i.s, align 8, !tbaa !63   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph171, label %.critedge4

.lr.ph171:                                        ; preds = %.preheader
  %.val146 = load ptr, ptr %i.r, align 8, !tbaa !64 ; 2 uses
  %.not139 = icmp eq ptr %.val146, null
  br i1 %.not139, label %.critedge4, label %.lr.ph171.split

.lr.ph171.split:                                  ; preds = %.lr.ph171
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !73   ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph171.split, %.critedge2
  %.0120170 = phi i32 [ 0, %.lr.ph171.split ], [ %i.cb, %.critedge2 ] ; 2 uses
  %.0124169 = phi double [ 0.000000e+00, %.lr.ph171.split ], [ %i.bz, %.critedge2 ]
  %i.x = zext i32 %.0120170 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val146, i64 %i.x ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24  ; 2 uses
  %i.ab = shl i32 %i.aa, 1                        ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !89
  %i.af = zext i16 %i.ae to i32                   ; 4 uses
  %i.ag = or disjoint i32 %i.ab, 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !89
  %i.ak = zext i16 %i.aj to i32                   ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !69 ; 3 uses
  %i.an = icmp sgt i32 %i.am, 0
  %.val149.pre = load i32, ptr %i.y, align 4      ; 2 uses
  br i1 %i.an, label %.lr.ph, label %..critedge2_crit_edge

..critedge2_crit_edge:                            ; preds = %bb.d
  %.pre212 = lshr i32 %.val149.pre, 4
  br label %.critedge2

.lr.ph:                                           ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ap = lshr i32 %.val149.pre, 4                ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %wide.trip.count = zext nneg i32 %i.am to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aq
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.0164 = phi i32 [ %i.ak, %.lr.ph ], [ %i.bj, %bb.e ]
  %.0115163 = phi i32 [ %i.ak, %.lr.ph ], [ %i.bi, %bb.e ]
  %.0116162 = phi i32 [ %i.af, %.lr.ph ], [ %i.bc, %bb.e ]
  %.0117161 = phi i32 [ %i.af, %.lr.ph ], [ %i.bb, %bb.e ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ar = load i32, ptr %gep, align 4, !tbaa !25
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !24
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !89
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = call noundef i32 @llvm.smin.i32(i32 %.0117161, i32 %i.ba) ; 2 uses
  %i.bc = call noundef i32 @llvm.smax.i32(i32 %.0116162, i32 %i.ba) ; 2 uses
  %i.bd = or disjoint i32 %i.aw, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !89
  %i.bh = zext i16 %i.bg to i32                   ; 2 uses
  %i.bi = call noundef i32 @llvm.smin.i32(i32 %.0115163, i32 %i.bh) ; 2 uses
  %i.bj = call noundef i32 @llvm.smax.i32(i32 %.0164, i32 %i.bh) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.e, !llvm.loop !196

.critedge2:                                       ; preds = %bb.e, %..critedge2_crit_edge
  %.pre-phi213 = phi i32 [ %.pre212, %..critedge2_crit_edge ], [ %i.ap, %bb.e ]
  %.0117.lcssa = phi i32 [ %i.af, %..critedge2_crit_edge ], [ %i.bb, %bb.e ] ; 2 uses
  %.0116.lcssa = phi i32 [ %i.af, %..critedge2_crit_edge ], [ %i.bc, %bb.e ] ; 2 uses
  %.0115.lcssa = phi i32 [ %i.ak, %..critedge2_crit_edge ], [ %i.bi, %bb.e ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.ak, %..critedge2_crit_edge ], [ %i.bj, %bb.e ] ; 2 uses
  %i.bk = add nuw nsw i32 %.0116.lcssa, %.0117.lcssa
  %i.bl = uitofp nneg i32 %i.bk to double
  %i.bm = fmul nnan double %i.bl, 5.000000e-01
  %i.bn = fptrunc double %i.bm to float
  %i.bo = zext i32 %i.aa to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bo
  store float %i.bn, ptr %i.bp, align 4, !tbaa !84
  %i.bq = add nuw nsw i32 %.0.lcssa, %.0115.lcssa
  %i.br = uitofp nneg i32 %i.bq to double
  %i.bs = fmul nnan double %i.br, 5.000000e-01
  %i.bt = fptrunc double %i.bs to float
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bo
  store float %i.bt, ptr %i.bu, align 4, !tbaa !84
  %i.bv = add nuw nsw i32 %.0117.lcssa, %.0115.lcssa
  %i.bw = sub nsw i32 %.0116.lcssa, %i.bv
  %i.bx = add nsw i32 %i.bw, %.0.lcssa
  %i.by = sitofp i32 %i.bx to double
  %i.bz = fadd double %.0124169, %i.by            ; 3 uses
  %narrow.i = add i32 %.0120170, 5
  %i.ca = add i32 %narrow.i, %i.am
  %i.cb = add i32 %i.ca, %.pre-phi213             ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.u
  br i1 %i.cc, label %bb.d, label %.lr.ph186, !llvm.loop !197

.lr.ph186:                                        ; preds = %.critedge2
  %.val.pr = load ptr, ptr %i.r, align 8, !tbaa !64 ; 2 uses
  %.not140 = icmp eq ptr %.val.pr, null
  br i1 %.not140, label %.critedge4, label %.lr.ph186.split

.lr.ph186.split:                                  ; preds = %.lr.ph186, %.critedge6
  %.1121185 = phi i32 [ %i.ev, %.critedge6 ], [ 0, %.lr.ph186 ] ; 2 uses
  %i.cd = zext i32 %.1121185 to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val.pr, i64 %i.cd ; 9 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !24
  %i.ch = zext i32 %i.cg to i64                   ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !84 ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ch
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !84 ; 3 uses
  %i.cm = load i32, ptr %i.ce, align 4
  %i.cn = lshr i32 %i.cm, 4                       ; 5 uses
  %.not192 = icmp eq i32 %i.cn, 0
  br i1 %.not192, label %.critedge6, label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph186.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 20 ; 3 uses
  %wide.trip.count203 = zext nneg i32 %i.cn to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count203, 1
  %i.cp = icmp eq i32 %i.cn, 1
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph181.new

.lr.ph181.new:                                    ; preds = %.lr.ph181
  %unroll_iter = and i64 %wide.trip.count203, 268435454
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph181.new
  %indvars.iv200 = phi i64 [ 0, %.lr.ph181.new ], [ %indvars.iv.next201.1, %bb.f ] ; 3 uses
  %.0122179 = phi float [ %i.cl, %.lr.ph181.new ], [ %i.ds, %bb.f ]
  %.0123178 = phi float [ %i.cj, %.lr.ph181.new ], [ %i.dp, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph181.new ], [ %niter.next.1, %bb.f ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv200
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !25
  %i.cs = sext i32 %i.cr to i64
end_hunk_0
