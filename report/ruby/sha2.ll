inline.NumInlined: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@rb_Digest_SHA512_Init:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rb_Digest_SHA512_Transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.0142 = phi i64 [ %.0132, %bb.b ], [ %i.h, %bb.a ]
  %.0140 = phi i64 [ %i.at, %bb.b ], [ %i.j, %bb.a ] ; 10 uses
  %.0138 = phi i64 [ %.0140, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %.0136 = phi i64 [ %.0138, %bb.b ], [ %i.n, %bb.a ] ; 3 uses
  %.0134 = phi i64 [ %.0136, %bb.b ], [ %i.p, %bb.a ]
  %.0132 = phi i64 [ %.0130, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %.0130 = phi i64 [ %.0128, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %.0128 = phi i64 [ %i.au, %bb.b ], [ %i.b, %bb.a ] ; 9 uses
  %.0 = phi ptr [ %i.q, %bb.b ], [ %1, %bb.a ]    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.r = load i64, ptr %.0, align 8, !tbaa !18
  %i.s = tail call i64 @llvm.bswap.i64(i64 %i.r)  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.s, ptr %i.t, align 8, !tbaa !18
  %i.u = tail call i64 @llvm.fshl.i64(i64 %.0140, i64 %.0140, i64 50)
  %i.v = tail call i64 @llvm.fshl.i64(i64 %.0140, i64 %.0140, i64 46)
  %i.w = xor i64 %i.u, %i.v
  %i.x = tail call i64 @llvm.fshl.i64(i64 %.0140, i64 %.0140, i64 23)
  %i.y = xor i64 %i.w, %i.x
  %i.z = add i64 %.0134, %i.y
  %i.aa = and i64 %.0138, %.0140
  %i.ab = xor i64 %.0140, -1
  %i.ac = and i64 %.0136, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  %i.ae = add i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @K512, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18
  %i.ah = add i64 %i.ae, %i.s
  %i.ai = add i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %.0128, i64 %.0128, i64 36)
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %.0128, i64 %.0128, i64 30)
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = tail call i64 @llvm.fshl.i64(i64 %.0128, i64 %.0128, i64 25)
  %i.an = xor i64 %i.al, %i.am
  %i.ao = xor i64 %.0130, %.0132
  %i.ap = and i64 %.0128, %i.ao
  %i.aq = and i64 %.0130, %.0132
  %i.ar = xor i64 %i.ap, %i.aq
  %i.as = add i64 %i.an, %i.ar
  %i.at = add i64 %i.ai, %.0142                   ; 2 uses
  %i.au = add i64 %i.as, %i.ai                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !19

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.preheader ], [ 16, %bb.b ] ; 5 uses
  %.1143 = phi i64 [ %.1133, %.preheader ], [ %.0132, %bb.b ]
  %.1141 = phi i64 [ %i.cv, %.preheader ], [ %i.at, %bb.b ] ; 10 uses
  %.1139 = phi i64 [ %.1141, %.preheader ], [ %.0140, %bb.b ] ; 3 uses
  %.1137 = phi i64 [ %.1139, %.preheader ], [ %.0138, %bb.b ] ; 3 uses
  %.1135 = phi i64 [ %.1137, %.preheader ], [ %.0136, %bb.b ]
  %.1133 = phi i64 [ %.1131, %.preheader ], [ %.0130, %bb.b ] ; 4 uses
  %.1131 = phi i64 [ %.1129, %.preheader ], [ %.0128, %bb.b ] ; 4 uses
  %.1129 = phi i64 [ %i.cw, %.preheader ], [ %i.au, %bb.b ] ; 9 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 3 uses
  %i.av = and i64 %indvars.iv.next153, 15
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !18 ; 5 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 63)
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 56)
  %i.ba = xor i64 %i.ay, %i.az
  %i.bb = lshr i64 %i.ax, 7
  %i.bc = xor i64 %i.ba, %i.bb
  %i.bd = add nuw i64 %indvars.iv152, 14
  %i.be = and i64 %i.bd, 15
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !18 ; 5 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 45)
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 3)
  %i.bj = xor i64 %i.bh, %i.bi
  %i.bk = lshr i64 %i.bg, 6
  %i.bl = xor i64 %i.bj, %i.bk
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %.1141, i64 %.1141, i64 50)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %.1141, i64 %.1141, i64 46)
  %i.bo = xor i64 %i.bm, %i.bn
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %.1141, i64 %.1141, i64 23)
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = add i64 %.1135, %i.bq
  %i.bs = and i64 %.1139, %.1141
  %i.bt = xor i64 %.1141, -1
  %i.bu = and i64 %.1137, %i.bt
  %i.bv = or i64 %i.bu, %i.bs
  %i.bw = add i64 %i.br, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @K512, i64 %indvars.iv152
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !18
  %i.bz = add i64 %i.bw, %i.by
  %i.ca = add nuw i64 %indvars.iv152, 9
  %i.cb = and i64 %i.ca, 15
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.ce = and i64 %indvars.iv152, 15
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ce ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !18
  %i.ch = add i64 %i.bc, %i.cd
  %i.ci = add i64 %i.ch, %i.bl
  %i.cj = add i64 %i.ci, %i.cg                    ; 2 uses
  store i64 %i.cj, ptr %i.cf, align 8, !tbaa !18
  %i.ck = add i64 %i.bz, %i.cj                    ; 2 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %.1129, i64 %.1129, i64 36)
  %i.cm = tail call i64 @llvm.fshl.i64(i64 %.1129, i64 %.1129, i64 30)
  %i.cn = xor i64 %i.cl, %i.cm
  %i.co = tail call i64 @llvm.fshl.i64(i64 %.1129, i64 %.1129, i64 25)
  %i.cp = xor i64 %i.cn, %i.co
  %i.cq = xor i64 %.1131, %.1133
  %i.cr = and i64 %.1129, %i.cq
  %i.cs = and i64 %.1131, %.1133
  %i.ct = xor i64 %i.cr, %i.cs
  %i.cu = add i64 %i.cp, %i.ct
  %i.cv = add i64 %i.ck, %.1143                   ; 2 uses
  %i.cw = add i64 %i.cu, %i.ck                    ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next153, 80
  br i1 %exitcond155.not, label %bb.c, label %.preheader, !llvm.loop !20

bb.c:                                             ; preds = %.preheader
  %i.cx = add i64 %i.cw, %i.b
  store i64 %i.cx, ptr %0, align 8, !tbaa !18
  %i.cy = add i64 %.1129, %i.d
  store i64 %i.cy, ptr %i.c, align 8, !tbaa !18
  %i.cz = add i64 %.1131, %i.f
  store i64 %i.cz, ptr %i.e, align 8, !tbaa !18
  %i.da = add i64 %.1133, %i.h
  store i64 %i.da, ptr %i.g, align 8, !tbaa !18
  %i.db = add i64 %i.cv, %i.j
  store i64 %i.db, ptr %i.i, align 8, !tbaa !18
  %i.dc = add i64 %.1141, %i.l
  store i64 %i.dc, ptr %i.k, align 8, !tbaa !18
  %i.dd = add i64 %.1139, %i.n
  store i64 %i.dd, ptr %i.m, align 8, !tbaa !18
  %i.de = add i64 %.1137, %i.p
  store i64 %i.de, ptr %i.o, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rb_Digest_SHA512_Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 127                        ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw nsw i32 128, %i.f                ; 2 uses
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %.not53 = icmp ult i64 %2, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  br i1 %.not53, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.h, i1 false)
  %i.l = shl nuw nsw i32 %i.g, 3
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = add i64 %i.c, %i.m                       ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !18
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = sub i64 %2, %i.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  %i.u = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.v = add i64 %i.c, %i.u                       ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !18
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %.sink.split, label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.b
  %.048 = phi ptr [ %i.t, %bb.f ], [ %1, %bb.b ]  ; 2 uses
  %.0 = phi i64 [ %i.s, %bb.f ], [ %2, %bb.b ]    ; 3 uses
  %i.x = icmp ugt i64 %.0, 127
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.156 = phi i64 [ %.0, %.lr.ph ], [ %i.af, %bb.k ]
  %.14955 = phi ptr [ %.048, %.lr.ph ], [ %i.ag, %bb.k ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.y, ptr noundef nonnull align 1 dereferenceable(128) %.14955, i64 128, i1 false)
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.y)
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ab = add i64 %i.aa, 1024
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !18
  %i.ac = icmp ugt i64 %i.aa, -1025
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !18
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = add i64 %.156, -128                     ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.14955, i64 128 ; 2 uses
  %i.ah = icmp ugt i64 %i.af, 127
  br i1 %i.ah, label %bb.i, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %.149.lcssa = phi ptr [ %.048, %bb.h ], [ %i.ag, %bb.k ]
  %.1.lcssa = phi i64 [ %.0, %bb.h ], [ %i.af, %bb.k ] ; 3 uses
  %.not54 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 1 %.149.lcssa, i64 %.1.lcssa, i1 false)
  %i.aj = shl nuw nsw i64 %.1.lcssa, 3            ; 2 uses
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !18
  %i.al = add i64 %i.ak, %i.aj                    ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !18
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.l, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %._crit_edge, %bb.l, %bb.g, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rb_Digest_SHA512_Last(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 127                        ; 7 uses
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.b)  ; 3 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call i64 @llvm.bswap.i64(i64 %i.h)  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !18
  %.not = icmp eq i32 %i.e, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.l = zext nneg i32 %i.e to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 -128, ptr %i.m, align 1, !tbaa !17
  %i.n = icmp samesign ult i32 %i.e, 112
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.k to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = sub nuw nsw i32 111, %i.e
  %i.r = zext nneg i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.r, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %.not39 = icmp eq i32 %i.e, 127
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.k to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = xor i32 %i.e, 127
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.j, i8 0, i64 112, i1 false)
  %.pre = load i64, ptr %i.g, align 8
  %.pre40 = load i64, ptr %i.a, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, i8 0, i64 112, i1 false)
  store i8 -128, ptr %i.j, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  %i.w = phi i64 [ %i.f, %bb.c ], [ %.pre40, %bb.f ], [ %i.f, %bb.g ]
  %i.x = phi i64 [ %i.i, %bb.c ], [ %.pre, %bb.f ], [ %i.i, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.w, ptr %i.aa, align 8
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.y)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @rb_Digest_SHA512_Finish(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 127                        ; 7 uses
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.b)  ; 3 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call i64 @llvm.bswap.i64(i64 %i.h)  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.e, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.l = zext nneg i32 %i.e to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 -128, ptr %i.m, align 1, !tbaa !17
  %i.n = icmp samesign ult i32 %i.e, 112
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.k to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = sub nuw nsw i32 111, %i.e
  %i.r = zext nneg i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.r, i1 false)
  br label %rb_Digest_SHA512_Last.exit

bb.e:                                             ; preds = %bb.c
  %.not39.i = icmp eq i32 %i.e, 127
  br i1 %.not39.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = zext nneg i32 %i.k to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = xor i32 %i.e, 127
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.j, i8 0, i64 112, i1 false)
  %.pre.i = load i64, ptr %i.g, align 8
  %.pre40.i = load i64, ptr %i.a, align 8
  br label %rb_Digest_SHA512_Last.exit

end_hunk_0
begin_hunk_1_@rb_Digest_SHA512_End:bb.a
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define ptr @rb_Digest_SHA512_Data(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %3 = alloca %struct._SHA512_CTX, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) @sha512_initial_hash_value, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, i8 0, i64 144, i1 false)
  call void @rb_Digest_SHA512_Update(ptr noundef nonnull %3, ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %rb_Digest_SHA512_End.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @rb_Digest_SHA512_Finish(ptr noundef nonnull %3, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.01116.idx.i = phi i64 [ 0, %bb.b ], [ %.01116.add.i.1, %bb.c ] ; 4 uses
  %.01215.i = phi ptr [ %2, %bb.b ], [ %i.z, %bb.c ] ; 5 uses
  %.01116.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01116.idx.i
  %i.d = load i8, ptr %.01116.ptr.i, align 2, !tbaa !17 ; 2 uses
  %i.e = lshr i8 %i.d, 4
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @.str, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %.01215.i, i64 1
  store i8 %i.h, ptr %.01215.i, align 1, !tbaa !17
  %i.j = and i8 %i.d, 15
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %.01215.i, i64 2
  store i8 %i.m, ptr %i.i, align 1, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01116.idx.i
  %.01116.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.p = load i8, ptr %.01116.ptr.i.1, align 1, !tbaa !17 ; 2 uses
  %i.q = lshr i8 %i.p, 4
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @.str, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %.01215.i, i64 3
  store i8 %i.t, ptr %i.n, align 1, !tbaa !17
  %i.v = and i8 %i.p, 15
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @.str, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4 ; 3 uses
  store i8 %i.y, ptr %i.u, align 1, !tbaa !17
  %.01116.add.i.1 = add nuw nsw i64 %.01116.idx.i, 2
  %exitcond.not.i.1 = icmp eq i64 %.01116.idx.i, 62
  br i1 %exitcond.not.i.1, label %bb.d, label %bb.c, !llvm.loop !22

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.z, align 1, !tbaa !17
  br label %rb_Digest_SHA512_End.exit

rb_Digest_SHA512_End.exit:                        ; preds = %bb.a, %bb.d
  %.1.i = phi ptr [ %i.z, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @rb_Digest_SHA384_Init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) @sha384_initial_hash_value, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, i8 0, i64 144, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rb_Digest_SHA384_Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  tail call void @rb_Digest_SHA512_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @rb_Digest_SHA384_Finish(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 127                        ; 7 uses
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.b)  ; 3 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call i64 @llvm.bswap.i64(i64 %i.h)  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.e, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.l = zext nneg i32 %i.e to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 -128, ptr %i.m, align 1, !tbaa !17
  %i.n = icmp samesign ult i32 %i.e, 112
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.k to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = sub nuw nsw i32 111, %i.e
  %i.r = zext nneg i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.r, i1 false)
  br label %rb_Digest_SHA512_Last.exit

bb.e:                                             ; preds = %bb.c
  %.not39.i = icmp eq i32 %i.e, 127
  br i1 %.not39.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = zext nneg i32 %i.k to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = xor i32 %i.e, 127
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.j, i8 0, i64 112, i1 false)
  %.pre.i = load i64, ptr %i.g, align 8
  %.pre40.i = load i64, ptr %i.a, align 8
  br label %rb_Digest_SHA512_Last.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, i8 0, i64 112, i1 false)
  store i8 -128, ptr %i.j, align 8, !tbaa !17
  br label %rb_Digest_SHA512_Last.exit

rb_Digest_SHA512_Last.exit:                       ; preds = %bb.d, %bb.g, %bb.h
  %i.w = phi i64 [ %i.f, %bb.d ], [ %.pre40.i, %bb.g ], [ %i.f, %bb.h ]
  %i.x = phi i64 [ %i.i, %bb.d ], [ %.pre.i, %bb.g ], [ %i.i, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.w, ptr %i.z, align 8
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  %i.aa = load i64, ptr %0, align 8, !tbaa !18
  %i.ab = tail call i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ab, ptr %1, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.af = tail call i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.aj = tail call i64 @llvm.bswap.i64(i64 %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18
  %i.an = tail call i64 @llvm.bswap.i64(i64 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.ar = tail call i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %i.av = tail call i64 @llvm.bswap.i64(i64 %i.au)
  store i64 %i.av, ptr %i.as, align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %rb_Digest_SHA512_Last.exit, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, i8 0, i64 208, i1 false)
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define ptr @rb_Digest_SHA384_End(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 127                        ; 7 uses
  %i.g = tail call i64 @llvm.bswap.i64(i64 %i.c)  ; 3 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %i.j = tail call i64 @llvm.bswap.i64(i64 %i.i)  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !18
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.m = zext nneg i32 %i.f to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store i8 -128, ptr %i.n, align 1, !tbaa !17
  %i.o = icmp samesign ult i32 %i.f, 112
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %i.r = sub nuw nsw i32 111, %i.f
  %i.s = zext nneg i32 %i.r to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.s, i1 false)
  br label %rb_Digest_SHA384_Finish.exit

bb.e:                                             ; preds = %bb.c
  %.not39.i.i = icmp eq i32 %i.f, 127
  br i1 %.not39.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %i.l to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.t
  %i.v = xor i32 %i.f, 127
  %i.w = zext nneg i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.w, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.k, i8 0, i64 112, i1 false)
  %.pre.i.i = load i64, ptr %i.h, align 8
  %.pre40.i.i = load i64, ptr %i.b, align 8
  br label %rb_Digest_SHA384_Finish.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.k, i8 0, i64 112, i1 false)
  store i8 -128, ptr %i.k, align 8, !tbaa !17
  br label %rb_Digest_SHA384_Finish.exit

rb_Digest_SHA384_Finish.exit:                     ; preds = %bb.d, %bb.g, %bb.h
  %i.x = phi i64 [ %i.g, %bb.d ], [ %.pre40.i.i, %bb.g ], [ %i.g, %bb.h ]
  %i.y = phi i64 [ %i.j, %bb.d ], [ %.pre.i.i, %bb.g ], [ %i.j, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.x, ptr %i.aa, align 8
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %i.ab = load i64, ptr %0, align 8, !tbaa !18
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.a, align 16, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = tail call i64 @llvm.bswap.i64(i64 %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ak, ptr %i.ah, align 16, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !18
  %i.ao = tail call i64 @llvm.bswap.i64(i64 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.as = tail call i64 @llvm.bswap.i64(i64 %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.as, ptr %i.ap, align 16, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !18
  %i.aw = tail call i64 @llvm.bswap.i64(i64 %i.av)
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, i8 0, i64 208, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %rb_Digest_SHA384_Finish.exit
  %.01116.idx = phi i64 [ 0, %rb_Digest_SHA384_Finish.exit ], [ %.01116.add.1.a, %bb.i ] ; 4 uses
  %.01215 = phi ptr [ %1, %rb_Digest_SHA384_Finish.exit ], [ %i.bt, %bb.i ] ; 5 uses
  %.01116.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01116.idx
  %i.ax = load i8, ptr %.01116.ptr, align 2, !tbaa !17 ; 2 uses
  %i.ay = lshr i8 %i.ax, 4
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @.str, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.01215, i64 1
  store i8 %i.bb, ptr %.01215, align 1, !tbaa !17
  %i.bd = and i8 %i.ax, 15
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @.str, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.01215, i64 2
  store i8 %i.bg, ptr %i.bc, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01116.idx
  %.01116.ptr.1.a = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bj = load i8, ptr %.01116.ptr.1.a, align 1, !tbaa !17 ; 2 uses
  %i.bk = lshr i8 %i.bj, 4
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.01215, i64 3
  store i8 %i.bn, ptr %i.bh, align 1, !tbaa !17
  %i.bp = and i8 %i.bj, 15
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.01215, i64 4 ; 3 uses
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !17
  %.01116.add.1.a = add nuw nsw i64 %.01116.idx, 2
  %exitcond.not.1 = icmp eq i64 %.01116.idx, 46
  br i1 %exitcond.not.1, label %bb.j, label %bb.i, !llvm.loop !23

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.bt, align 1, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, i8 0, i64 208, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi ptr [ %i.bt, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define ptr @rb_Digest_SHA384_Data(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._SHA512_CTX, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) @sha384_initial_hash_value, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i8 0, i64 144, i1 false)
  call void @rb_Digest_SHA512_Update(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef %1)
  %i.b = call ptr @rb_Digest_SHA384_End(ptr noundef nonnull %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !15, i64 32}
!14 = !{!"_SHA256_CTX", !8, i64 0, !15, i64 32, !8, i64 40}
!15 = !{!"long", !8, i64 0}
!16 = distinct !{!16, !11}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !15, i64 0}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
end_hunk_1
