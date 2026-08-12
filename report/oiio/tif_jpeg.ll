inline.NumInlined: 39
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@std_init_destination:bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !189
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.g, ptr %i.h, align 8, !tbaa !190
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @std_empty_output_buffer(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !204
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.d, ptr %i.e, align 8, !tbaa !79
  %i.f = tail call i32 @TIFFFlushData1(ptr noundef %i.b) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.h, ptr %i.i, align 8, !tbaa !189
  %i.j = load i64, ptr %i.c, align 8, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.j, ptr %i.k, align 8, !tbaa !190
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @std_term_destination(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  store ptr %i.d, ptr %i.e, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load i64, ptr %i.h, align 8, !tbaa !190
  %i.j = sub nsw i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.j, ptr %i.k, align 8, !tbaa !79
  ret void
}

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_colorspace(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGEncodeRaw(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1352 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !163
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !147
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull @.str.47) #16
  br label %.loopexit108

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1170
  %i.m = load i16, ptr %i.l, align 2, !tbaa !125
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %i.o = add nsw i64 %i.k, -1
  %i.p = add nsw i64 %i.o, %i.n
  %i.q = sdiv i64 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1172 ; 3 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !126
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, %i.n
  %i.v = add nuw nsw i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.x = load i32, ptr %i.w, align 8, !tbaa !36
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.q, %i.y
  %i.aa = mul i64 %i.z, %i.v
  %i.ab = add nsw i64 %i.aa, 7
  %i.ac = sdiv i64 %i.ab, 8                       ; 4 uses
  %i.ad = sdiv i64 %2, %i.ac
  %i.ae = mul nsw i64 %i.ad, %i.t                 ; 3 uses
  %i.af = srem i64 %2, %i.ac
  %.not101 = icmp eq i64 %i.af, 0
  br i1 %.not101, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %0, align 8, !tbaa !147
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef %i.ag, ptr noundef nonnull @.str.48) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 140
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !167
  %.fr = freeze i32 %i.ak                         ; 7 uses
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph157, label %.loopexit108

.lr.ph157:                                        ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 1184 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1264 ; 10 uses
  %.not103111 = icmp eq i32 %.fr, 0
  %i.ap = sext i32 %i.e to i64                    ; 11 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 4 uses
  br i1 %.not103111, label %.lr.ph157.split.us, label %.lr.ph157.split.preheader

.lr.ph157.split.preheader:                        ; preds = %.lr.ph157
  %xtraiter248 = and i32 %.fr, 7                  ; 2 uses
  %lcmp.mod249.not = icmp eq i32 %xtraiter248, 0
  %i.as = icmp ult i32 %.fr, 8
  br label %.lr.ph157.split

.lr.ph157.split.us:                               ; preds = %.lr.ph157, %bb.g
  %.089153.us = phi i64 [ %i.bh, %bb.g ], [ %i.ae, %.lr.ph157 ]
  %i.at = load i32, ptr %i.am, align 4, !tbaa !36
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.us158.preheader, label %._crit_edge144.split.us.us

.lr.ph.us158.preheader:                           ; preds = %.lr.ph157.split.us
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !36
  br label %.lr.ph.us158

._crit_edge144.split.us.us:                       ; preds = %._crit_edge126.us.us, %.lr.ph157.split.us
  %i.aw = load i32, ptr %i.ao, align 8, !tbaa !146 ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ao, align 8, !tbaa !146
  %i.ay = icmp sgt i32 %i.aw, 6
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge144.split.us.us
  %i.az = load i32, ptr %i.aq, align 8, !tbaa !36
  %i.ba = shl nsw i32 %i.az, 3                    ; 2 uses
  %i.bb = tail call fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef nonnull %i.c, ptr noundef nonnull %i.an, i32 noundef %i.ba)
  %.not102.us = icmp eq i32 %i.bb, %i.ba
  br i1 %.not102.us, label %.thread.us, label %.split.us

.thread.us:                                       ; preds = %bb.f
  store i32 0, ptr %i.ao, align 8, !tbaa !146
  br label %bb.g

bb.g:                                             ; preds = %.thread.us, %._crit_edge144.split.us.us
  %i.bc = load i16, ptr %i.r, align 4, !tbaa !126 ; 2 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = load i32, ptr %i.ar, align 4, !tbaa !133
  %i.bf = add i32 %i.be, %i.bd
  store i32 %i.bf, ptr %i.ar, align 4, !tbaa !133
  %i.bg = zext i16 %i.bc to i64
  %i.bh = sub nsw i64 %.089153.us, %i.bg          ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph157.split.us, label %.loopexit108

.lr.ph.us158:                                     ; preds = %.lr.ph.us158.preheader, %._crit_edge126.us.us
  %indvars.iv193 = phi i64 [ 0, %.lr.ph.us158.preheader ], [ %indvars.iv.next194, %._crit_edge126.us.us ] ; 2 uses
  %.092142.us.us = phi ptr [ %i.av, %.lr.ph.us158.preheader ], [ %i.bp, %._crit_edge126.us.us ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !141 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 28
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !142
  %i.bn = shl i32 %i.bm, 3                        ; 3 uses
  %i.bo = icmp sgt i32 %i.bk, 0
  br i1 %i.bo, label %.lr.ph125.us.us, label %._crit_edge126.us.us

._crit_edge126.us.us:                             ; preds = %._crit_edge.us136.us.us.us, %._crit_edge.us129.us.us, %.lr.ph125.split.us145.us, %.lr.ph.us158
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 96
  %i.bq = load i32, ptr %i.am, align 4, !tbaa !36
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next194, %i.br
  br i1 %i.bs, label %.lr.ph.us158, label %._crit_edge144.split.us.us

.lr.ph125.us.us:                                  ; preds = %.lr.ph.us158
  %i.bt = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !139
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv193 ; 2 uses
  %i.bw = icmp eq i32 %i.bu, 1
  %i.bx = icmp sgt i32 %i.bn, 0                   ; 2 uses
  br i1 %i.bw, label %.loopexit.us.us.us, label %.lr.ph125.split.us145.us

.lr.ph125.split.us145.us:                         ; preds = %.lr.ph125.us.us
  br i1 %i.bx, label %.preheader106.us.us.us.us, label %._crit_edge126.us.us

.lr.ph121.us.us.us:                               ; preds = %.lr.ph121.us.us.us, %.lr.ph121.us.us.us.preheader
  %.4120.us.us.us = phi ptr [ %i.co, %.lr.ph121.us.us.us.preheader ], [ %i.cf, %.lr.ph121.us.us.us ] ; 9 uses
  %.195119.us.us.us = phi i32 [ 0, %.lr.ph121.us.us.us.preheader ], [ %i.cg, %.lr.ph121.us.us.us ]
  store i8 %load_initial233, ptr %.4120.us.us.us, align 1, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 1
  store i8 %load_initial233, ptr %i.by, align 1, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 2
  store i8 %load_initial233, ptr %i.bz, align 1, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 3
  store i8 %load_initial233, ptr %i.ca, align 1, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 4
  store i8 %load_initial233, ptr %i.cb, align 1, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 5
  store i8 %load_initial233, ptr %i.cc, align 1, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 6
  store i8 %load_initial233, ptr %i.cd, align 1, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 7
  store i8 %load_initial233, ptr %i.ce, align 1, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 8
  %i.cg = add nuw nsw i32 %.195119.us.us.us, 8    ; 2 uses
  %exitcond188.not.7 = icmp eq i32 %i.cg, %i.bn
  br i1 %exitcond188.not.7, label %._crit_edge.us129.us.us, label %.lr.ph121.us.us.us

._crit_edge.us129.us.us:                          ; preds = %.lr.ph121.us.us.us, %.loopexit.us.us.us
  %i.ch = add nuw nsw i32 %.093123.us.us.us, 1    ; 2 uses
  %exitcond192.not = icmp eq i32 %i.ch, %i.bk
  br i1 %exitcond192.not, label %._crit_edge126.us.us, label %.loopexit.us.us.us

.loopexit.us.us.us:                               ; preds = %.lr.ph125.us.us, %._crit_edge.us129.us.us
  %.093123.us.us.us = phi i32 [ %i.ch, %._crit_edge.us129.us.us ], [ 0, %.lr.ph125.us.us ] ; 2 uses
  br i1 %i.bx, label %.lr.ph121.us.us.us.preheader, label %._crit_edge.us129.us.us

.lr.ph121.us.us.us.preheader:                     ; preds = %.loopexit.us.us.us
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !161
  %i.cj = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.ck = mul nsw i32 %i.cj, %i.bk
  %i.cl = add nsw i32 %i.ck, %.093123.us.us.us
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !148 ; 2 uses
  %scevgep232 = getelementptr i8, ptr %i.co, i64 -1
  %load_initial233 = load i8, ptr %scevgep232, align 1 ; 8 uses
  br label %.lr.ph121.us.us.us

.preheader106.us.us.us.us:                        ; preds = %.lr.ph125.split.us145.us, %._crit_edge.us136.us.us.us
  %.093123.us131.us.us.us = phi i32 [ %i.df, %._crit_edge.us136.us.us.us ], [ 0, %.lr.ph125.split.us145.us ] ; 2 uses
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !161
  %i.cq = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.cr = mul nsw i32 %i.cq, %i.bk
  %i.cs = add nsw i32 %i.cr, %.093123.us131.us.us.us
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !148 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cv, i64 -1
  %load_initial = load i8, ptr %scevgep, align 1  ; 8 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader106.us.us.us.us
  %.4120.us133.us.us.us = phi ptr [ %i.cv, %.preheader106.us.us.us.us ], [ %i.dd, %bb.h ] ; 9 uses
  %.195119.us134.us.us.us = phi i32 [ 0, %.preheader106.us.us.us.us ], [ %i.de, %bb.h ]
  store i8 %load_initial, ptr %.4120.us133.us.us.us, align 1, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 1
  store i8 %load_initial, ptr %i.cw, align 1, !tbaa !36
  %i.cx = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 2
  store i8 %load_initial, ptr %i.cx, align 1, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 3
  store i8 %load_initial, ptr %i.cy, align 1, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 4
  store i8 %load_initial, ptr %i.cz, align 1, !tbaa !36
  %i.da = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 5
  store i8 %load_initial, ptr %i.da, align 1, !tbaa !36
  %i.db = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 6
  store i8 %load_initial, ptr %i.db, align 1, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 7
  store i8 %load_initial, ptr %i.dc, align 1, !tbaa !36
  %i.dd = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 8
  %i.de = add nuw nsw i32 %.195119.us134.us.us.us, 8 ; 2 uses
  %exitcond186.not.7 = icmp eq i32 %i.de, %i.bn
  br i1 %exitcond186.not.7, label %._crit_edge.us136.us.us.us, label %bb.h

._crit_edge.us136.us.us.us:                       ; preds = %bb.h
  %i.df = add nuw nsw i32 %.093123.us131.us.us.us, 1 ; 2 uses
  %exitcond187.not = icmp eq i32 %i.df, %i.bk
  br i1 %exitcond187.not, label %._crit_edge126.us.us, label %.preheader106.us.us.us.us

.lr.ph157.split:                                  ; preds = %.lr.ph157.split.preheader, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %.lr.ph157.split.preheader ] ; 2 uses
  %.081154 = phi ptr [ %i.jl, %bb.j ], [ %1, %.lr.ph157.split.preheader ] ; 3 uses
  %.089153 = phi i64 [ %i.jn, %bb.j ], [ %i.ae, %.lr.ph157.split.preheader ]
  %i.dg = mul i64 %i.ac, %indvar
  %i.dh = add i64 %i.dg, %i.a
  %i.di = load i32, ptr %i.am, align 4, !tbaa !36
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.preheader, label %._crit_edge144.split

.lr.ph.preheader:                                 ; preds = %.lr.ph157.split
  %i.dk = load ptr, ptr %i.ah, align 8, !tbaa !36
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge126
  %indvars.iv183 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next184, %._crit_edge126 ] ; 2 uses
  %.092142 = phi ptr [ %i.dk, %.lr.ph.preheader ], [ %i.ix, %._crit_edge126 ] ; 4 uses
  %.097140 = phi i32 [ 0, %.lr.ph.preheader ], [ %.198.lcssa, %._crit_edge126 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.092142, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !139 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.092142, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !141 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.092142, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !142
  %i.dr = shl i32 %i.dq, 3                        ; 3 uses
  %i.ds = mul i32 %i.dm, %.fr                     ; 3 uses
  %i.dt = sub i32 %i.dr, %i.ds                    ; 5 uses
  %i.du = icmp sgt i32 %i.do, 0
  br i1 %i.du, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv183 ; 2 uses
  %i.dw = icmp eq i32 %i.dm, 1
  %i.dx = icmp sgt i32 %i.dm, 0
  %i.dy = icmp sgt i32 %i.dt, 0                   ; 2 uses
  %i.dz = sext i32 %.097140 to i64                ; 3 uses
  br i1 %i.dw, label %.lr.ph.us.preheader.preheader, label %.preheader106.preheader

.lr.ph.us.preheader.preheader:                    ; preds = %.lr.ph125
  %xtraiter251 = and i32 %i.dt, 7                 ; 3 uses
  %i.ea = sub i32 %i.ds, %i.dr
  %i.eb = icmp ugt i32 %i.ea, -8
  %unroll_iter255 = and i32 %i.dt, 2147483640
  %lcmp.mod253.not = icmp eq i32 %xtraiter251, 0
  %lcmp.mod254 = icmp ne i32 %xtraiter251, 0
  br label %.lr.ph.us.preheader

.preheader106.preheader:                          ; preds = %.lr.ph125
  %i.ec = sext i32 %i.dm to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.dm to i64        ; 8 uses
  %i.ed = add i64 %i.dh, %i.dz
  %min.iters.check = icmp ult i32 %i.dm, 4
  %min.iters.check222 = icmp ult i32 %i.dm, 32
  %i.ee = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ee, 0
  %n.vec224 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %cmp.n229 = icmp eq i64 %n.vec224, %wide.trip.count
  %xtraiter245 = and i32 %i.dt, 7                 ; 3 uses
  %i.ef = sub i32 %i.ds, %i.dr
  %i.eg = icmp ugt i32 %i.ef, -8
  %unroll_iter = and i32 %i.dt, 2147483640
  %lcmp.mod246.not = icmp eq i32 %xtraiter245, 0
  %lcmp.mod247 = icmp ne i32 %xtraiter245, 0
  br label %.preheader106

.lr.ph.us.preheader:                              ; preds = %.lr.ph.us.preheader.preheader, %._crit_edge.us129
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %._crit_edge.us129 ], [ %i.dz, %.lr.ph.us.preheader.preheader ] ; 2 uses
  %.093123.us = phi i32 [ %i.gb, %._crit_edge.us129 ], [ 0, %.lr.ph.us.preheader.preheader ] ; 2 uses
  %i.eh = load ptr, ptr %i.dv, align 8, !tbaa !161
  %i.ei = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.ej = mul nsw i32 %i.ei, %i.do
  %i.ek = add nsw i32 %i.ej, %.093123.us
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !148 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %.081154, i64 %indvars.iv179 ; 2 uses
  br i1 %lcmp.mod249.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.082118.us.prol = phi ptr [ %i.es, %.lr.ph.us.prol ], [ %i.eo, %.lr.ph.us.preheader ] ; 2 uses
  %.084117.us.prol = phi ptr [ %i.er, %.lr.ph.us.prol ], [ %i.en, %.lr.ph.us.preheader ] ; 3 uses
  %.090116.us.prol = phi i32 [ %i.ep, %.lr.ph.us.prol ], [ %.fr, %.lr.ph.us.preheader ]
  %prol.iter250 = phi i32 [ %prol.iter250.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.ep = add i32 %.090116.us.prol, -1            ; 2 uses
  %i.eq = load i8, ptr %.082118.us.prol, align 1, !tbaa !36
  %i.er = getelementptr inbounds nuw i8, ptr %.084117.us.prol, i64 1 ; 3 uses
  store i8 %i.eq, ptr %.084117.us.prol, align 1, !tbaa !36
  %i.es = getelementptr inbounds i8, ptr %.082118.us.prol, i64 %i.ap ; 2 uses
  %prol.iter250.next = add i32 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i32 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !205

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.084117.us.lcssa.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %.084117.us.prol, %.lr.ph.us.prol ]
  %.lcssa244.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %i.er, %.lr.ph.us.prol ]
  %.082118.us.unr = phi ptr [ %i.eo, %.lr.ph.us.preheader ], [ %i.es, %.lr.ph.us.prol ]
  %.084117.us.unr = phi ptr [ %i.en, %.lr.ph.us.preheader ], [ %i.er, %.lr.ph.us.prol ]
  %.090116.us.unr = phi i32 [ %.fr, %.lr.ph.us.preheader ], [ %i.ep, %.lr.ph.us.prol ]
  br i1 %i.as, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.082118.us = phi ptr [ %i.fr, %.lr.ph.us ], [ %.082118.us.unr, %.lr.ph.us.prol.loopexit ] ; 2 uses
  %.084117.us = phi ptr [ %i.fq, %.lr.ph.us ], [ %.084117.us.unr, %.lr.ph.us.prol.loopexit ] ; 10 uses
  %.090116.us = phi i32 [ %i.fo, %.lr.ph.us ], [ %.090116.us.unr, %.lr.ph.us.prol.loopexit ]
  %i.et = load i8, ptr %.082118.us, align 1, !tbaa !36
  %i.eu = getelementptr inbounds nuw i8, ptr %.084117.us, i64 1
  store i8 %i.et, ptr %.084117.us, align 1, !tbaa !36
  %i.ev = getelementptr inbounds i8, ptr %.082118.us, i64 %i.ap ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !36
  %i.ex = getelementptr inbounds nuw i8, ptr %.084117.us, i64 2
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !36
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 %i.ap ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !36
  %i.fa = getelementptr inbounds nuw i8, ptr %.084117.us, i64 3
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !36
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 %i.ap ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !36
  %i.fd = getelementptr inbounds nuw i8, ptr %.084117.us, i64 4
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !36
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %i.ap ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !36
  %i.fg = getelementptr inbounds nuw i8, ptr %.084117.us, i64 5
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !36
  %i.fh = getelementptr inbounds i8, ptr %i.fe, i64 %i.ap ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !36
  %i.fj = getelementptr inbounds nuw i8, ptr %.084117.us, i64 6
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !36
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 %i.ap ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !36
  %i.fm = getelementptr inbounds nuw i8, ptr %.084117.us, i64 7
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !36
  %i.fn = getelementptr inbounds i8, ptr %i.fk, i64 %i.ap ; 2 uses
  %i.fo = add i32 %.090116.us, -8                 ; 2 uses
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !36
  %i.fq = getelementptr inbounds nuw i8, ptr %.084117.us, i64 8 ; 2 uses
  store i8 %i.fp, ptr %i.fm, align 1, !tbaa !36
  %i.fr = getelementptr inbounds i8, ptr %i.fn, i64 %i.ap
  %.not104.us.7 = icmp eq i32 %i.fo, 0
  br i1 %.not104.us.7, label %.loopexit.us.unr-lcssa, label %.lr.ph.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %.lr.ph121.us
  %.4120.us = phi ptr [ %i.fz, %.lr.ph121.us ], [ %.lcssa244, %.lr.ph121.us.preheader ] ; 9 uses
  %niter256 = phi i32 [ %niter256.next.7, %.lr.ph121.us ], [ 0, %.lr.ph121.us.preheader ]
  store i8 %load_initial238, ptr %.4120.us, align 1, !tbaa !36
  %i.fs = getelementptr inbounds nuw i8, ptr %.4120.us, i64 1
  store i8 %load_initial238, ptr %i.fs, align 1, !tbaa !36
end_hunk_0
