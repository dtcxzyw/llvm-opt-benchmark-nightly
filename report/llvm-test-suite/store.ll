inline.NumInlined: 24
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@store_ppm_tga:bb.a
  store i8 %i.fx, ptr %i.gj, align 1, !tbaa !13
  %i.gl = icmp eq ptr %i.gk, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.gl, label %bb.aa, label %putbyte.exit76

bb.aa:                                            ; preds = %putbyte.exit75
  %i.gm = load i32, ptr @outfile, align 4, !tbaa !4
  %i.gn = tail call i64 @write(i32 noundef %i.gm, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit76

putbyte.exit76:                                   ; preds = %putbyte.exit75, %bb.aa
  %i.go = phi ptr [ %i.gk, %putbyte.exit75 ], [ @obfr, %bb.aa ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1 ; 3 uses
  store ptr %i.gp, ptr @optr, align 8, !tbaa !8
  store i8 %i.fr, ptr %i.go, align 1, !tbaa !13
  %i.gq = icmp eq ptr %i.gp, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.gq, label %bb.ab, label %putbyte.exit77

bb.ab:                                            ; preds = %putbyte.exit76
  %i.gr = load i32, ptr @outfile, align 4, !tbaa !4
  %i.gs = tail call i64 @write(i32 noundef %i.gr, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  br label %putbyte.exit77

putbyte.exit77:                                   ; preds = %bb.ab, %putbyte.exit76
  %i.gt = phi ptr [ @obfr, %bb.ab ], [ %i.gp, %putbyte.exit76 ]
  %i.gu = add nuw nsw i32 %.05887, 1              ; 2 uses
  %i.gv = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.gw = icmp slt i32 %i.gu, %i.gv
  br i1 %i.gw, label %.lr.ph91.split, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %putbyte.exit77, %putbyte.exit77.us, %.lr.ph93.split
  %i.gx = phi i32 [ %i.eu, %putbyte.exit77.us ], [ %i.cj, %.lr.ph93.split ], [ %i.gv, %putbyte.exit77 ]
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge94, label %.lr.ph93.split, !llvm.loop !20

._crit_edge94:                                    ; preds = %._crit_edge, %.lr.ph93, %putbyte.exit73
  %i.gy = load ptr, ptr @optr, align 8, !tbaa !8  ; 2 uses
  %.not69 = icmp eq ptr %i.gy, @obfr
  %.pre105 = load i32, ptr @outfile, align 4, !tbaa !4 ; 2 uses
  br i1 %.not69, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge94
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, ptrtoint (ptr @obfr to i64)
  %i.hb = tail call i64 @write(i32 noundef %.pre105, ptr noundef nonnull @obfr, i64 noundef %i.ha) #10 ; 0 uses
  %.pre104 = load i32, ptr @outfile, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge94
  %i.hc = phi i32 [ %.pre104, %bb.ac ], [ %.pre105, %._crit_edge94 ]
  %i.hd = tail call i32 @close(i32 noundef %i.hc) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @store_yuv1(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @Quiet_Flag, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.c = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 47) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = select i1 %.not.i, ptr %0, ptr %i.d
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.e) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 577, i32 noundef 438) #10 ; 2 uses
  store i32 %i.g, ptr @outfile, align 4, !tbaa !4
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #10 ; 0 uses
  tail call void @Error(ptr noundef nonnull @Error_Text) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  %i.j = icmp sgt i32 %5, 0
  br i1 %i.j, label %.lr.ph21, label %._crit_edge22.split.thread

.lr.ph21:                                         ; preds = %bb.e
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge22.split.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph21
  %i.n = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.idx31 = phi i64 [ 0, %.lr.ph.preheader ], [ %.idx30, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.o = mul nsw i64 %indvars.iv, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %putbyte.exit
  %.idx = phi i64 [ %.idx31, %.lr.ph ], [ %.idx30, %putbyte.exit ] ; 2 uses
  %.018 = phi ptr [ %i.p, %.lr.ph ], [ %i.q, %putbyte.exit ] ; 2 uses
  %.01317 = phi i32 [ 0, %.lr.ph ], [ %i.v, %putbyte.exit ]
  %.ptr = getelementptr inbounds nuw i8, ptr @obfr, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %.018, i64 1
  %i.r = load i8, ptr %.018, align 1, !tbaa !13
  %.add = add nuw nsw i64 %.idx, 1                ; 3 uses
  %.ptr32 = getelementptr inbounds nuw i8, ptr @obfr, i64 %.add
  store ptr %.ptr32, ptr @optr, align 8, !tbaa !8
  store i8 %i.r, ptr %.ptr, align 1, !tbaa !13
  %i.s = icmp eq i64 %.add, 4096
  br i1 %i.s, label %bb.g, label %putbyte.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr @outfile, align 4, !tbaa !4
  %i.u = tail call i64 @write(i32 noundef %i.t, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  br label %putbyte.exit

putbyte.exit:                                     ; preds = %bb.f, %bb.g
  %.idx30 = phi i64 [ %.add, %bb.f ], [ 0, %bb.g ] ; 4 uses
  %i.v = add nuw nsw i32 %.01317, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !21

._crit_edge:                                      ; preds = %putbyte.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond24.not, label %._crit_edge22.split, label %.lr.ph, !llvm.loop !22

._crit_edge22.split.thread:                       ; preds = %bb.e, %.lr.ph21
  %.pre2536 = load i32, ptr @outfile, align 4, !tbaa !4
  br label %bb.i

._crit_edge22.split:                              ; preds = %._crit_edge
  %.not16 = icmp samesign eq i64 %.idx30, 0
  %.pre25 = load i32, ptr @outfile, align 4, !tbaa !4 ; 2 uses
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge22.split
  %i.w = tail call i64 @write(i32 noundef %.pre25, ptr noundef nonnull @obfr, i64 noundef %.idx30) #10 ; 0 uses
  %.pre = load i32, ptr @outfile, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge22.split.thread, %bb.h, %._crit_edge22.split
  %i.x = phi i32 [ %.pre, %bb.h ], [ %.pre25, %._crit_edge22.split ], [ %.pre2536, %._crit_edge22.split.thread ]
  %i.y = tail call i32 @close(i32 noundef %i.x) #10 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #3

declare void @Error(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @conv420to422(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.b = ashr i32 %i.a, 1                         ; 24 uses
  %i.c = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.d = ashr i32 %i.c, 1                         ; 14 uses
  %i.e = load i32, ptr @progressive_frame, align 4, !tbaa !4
  %.not = icmp eq i32 %i.e, 0
  %i.f = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %.preheader222, label %.preheader224

.preheader224:                                    ; preds = %bb.a
  br i1 %i.f, label %.preheader223.lr.ph, label %.loopexit

.preheader223.lr.ph:                              ; preds = %.preheader224
  %i.g = icmp sgt i32 %i.d, 0
  %i.h = add nsw i32 %i.d, -1                     ; 4 uses
  br i1 %i.g, label %.preheader223.preheader, label %.loopexit

.preheader223.preheader:                          ; preds = %.preheader223.lr.ph
  %i.i = add nsw i32 %i.d, -3
  %i.j = add nsw i32 %i.d, -2
  %i.k = zext nneg i32 %i.b to i64                ; 3 uses
  %2 = sext i32 %i.h to i64
  %i.l = sext i32 %i.j to i64
  %i.m = sext i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader223

.preheader222:                                    ; preds = %bb.a
  br i1 %i.f, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader222
  %i.n = icmp sgt i32 %i.d, 0
  %i.o = add nsw i32 %i.d, -2                     ; 4 uses
  %i.p = add nsw i32 %i.d, -1                     ; 5 uses
  br i1 %i.n, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = add nsw i32 %i.d, -7
  %i.r = add nsw i32 %i.d, -5
  %i.s = add nsw i32 %i.d, -3
  %i.t = add nsw i32 %i.d, -6
  %i.u = add nsw i32 %i.d, -4
  %i.v = zext nneg i32 %i.b to i64                ; 5 uses
  %i.w = sext i32 %i.o to i64
  %i.x = zext nneg i32 %i.d to i64
  %i.y = sext i32 %i.u to i64
  %i.z = sext i32 %i.t to i64
  %3 = sext i32 %i.p to i64
  %i.aa = sext i32 %i.s to i64
  %i.ab = sext i32 %i.r to i64
  %i.ac = sext i32 %i.q to i64
  br label %.preheader

.preheader223:                                    ; preds = %.preheader223.preheader, %._crit_edge
  %.0229 = phi ptr [ %i.dx, %._crit_edge ], [ %0, %.preheader223.preheader ] ; 8 uses
  %.0201228 = phi ptr [ %i.dy, %._crit_edge ], [ %1, %.preheader223.preheader ] ; 3 uses
  %.0203227 = phi i32 [ %i.dz, %._crit_edge ], [ 0, %.preheader223.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader223, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader223 ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.ad = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.af = tail call i32 @llvm.usub.sat.i32(i32 %i.ae, i32 3)
  %i.ag = tail call i32 @llvm.usub.sat.i32(i32 %i.ae, i32 2)
  %i.ah = tail call i32 @llvm.usub.sat.i32(i32 %i.ae, i32 1)
  %4 = icmp slt i64 %indvars.iv, %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aj = select i1 %4, i32 %i.ai, i32 %i.h
  %i.ak = icmp slt i64 %indvars.iv, %i.l
  %i.al = trunc i64 %indvars.iv to i32
  %i.am = add i32 %i.al, 2
  %i.an = select i1 %i.ak, i32 %i.am, i32 %i.h
  %i.ao = icmp slt i64 %indvars.iv, %i.m
  %i.ap = trunc i64 %indvars.iv to i32
  %i.aq = add i32 %i.ap, 3
  %i.ar = select i1 %i.ao, i32 %i.aq, i32 %i.h
  %i.as = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.at = mul nuw nsw i32 %i.af, %i.b
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.0229, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = zext i8 %i.aw to i32
  %i.ay = mul nuw nsw i32 %i.ax, 3
  %i.az = mul nuw nsw i32 %i.ag, %i.b
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0229, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.ah, %i.b
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.0229, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i32
  %i.bj = mul nuw nsw i32 %i.bi, 67
  %i.bk = mul nuw nsw i64 %indvars.iv, %i.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.0229, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  %i.bn = zext i8 %i.bm to i32
  %i.bo = mul nuw nsw i32 %i.bn, 227
  %i.bp = mul nsw i32 %i.aj, %i.b
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %.0229, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = zext i8 %i.bs to i32
  %i.bu = mul nsw i32 %i.an, %i.b
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %.0229, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul nuw nsw i32 %i.by, 7
  %i.ca = add nuw nsw i32 %i.ay, 128
  %i.cb = shl nuw nsw i32 %i.bd, 4
  %i.cc = sub nsw i32 %i.ca, %i.cb
  %i.cd = add nsw i32 %i.cc, %i.bj
  %i.ce = add nsw i32 %i.cd, %i.bo
  %i.cf = shl nuw nsw i32 %i.bt, 5
  %i.cg = sub nsw i32 %i.ce, %i.cf
  %i.ch = add nsw i32 %i.cg, %i.bz
  %i.ci = ashr i32 %i.ch, 8
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.as, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = mul nuw nsw i64 %i.ad, %i.k
  %i.cn = getelementptr inbounds nuw i8, ptr %.0201228, i64 %i.cm
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !13
  %i.co = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.cp = mul nsw i32 %i.ar, %i.b
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %.0229, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.ct, 3
  %i.cv = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.cw = zext i8 %i.cv to i32
  %i.cx = load i8, ptr %i.br, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i32
  %i.cz = mul nuw nsw i32 %i.cy, 67
  %i.da = load i8, ptr %i.bl, align 1, !tbaa !13
  %i.db = zext i8 %i.da to i32
  %i.dc = mul nuw nsw i32 %i.db, 227
  %i.dd = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.de = zext i8 %i.dd to i32
  %i.df = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.dg = zext i8 %i.df to i32
  %i.dh = mul nuw nsw i32 %i.dg, 7
  %i.di = add nuw nsw i32 %i.cu, 128
  %i.dj = shl nuw nsw i32 %i.cw, 4
  %i.dk = sub nsw i32 %i.di, %i.dj
  %i.dl = add nsw i32 %i.dk, %i.cz
  %i.dm = add nsw i32 %i.dl, %i.dc
  %i.dn = shl nuw nsw i32 %i.de, 5
  %i.do = sub nsw i32 %i.dm, %i.dn
  %i.dp = add nsw i32 %i.do, %i.dh
  %i.dq = ashr i32 %i.dp, 8
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.co, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.du = or disjoint i64 %i.ad, 1
  %i.dv = mul nuw nsw i64 %i.du, %i.k
  %i.dw = getelementptr inbounds nuw i8, ptr %.0201228, i64 %i.dv
  store i8 %i.dt, ptr %i.dw, align 1, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b
  %i.dx = getelementptr inbounds nuw i8, ptr %.0229, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.0201228, i64 1
  %i.dz = add nuw nsw i32 %.0203227, 1            ; 2 uses
  %exitcond241.not = icmp eq i32 %i.dz, %i.b
  br i1 %exitcond241.not, label %.loopexit, label %.preheader223, !llvm.loop !24

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge231
  %.1234 = phi ptr [ %i.lw, %._crit_edge231 ], [ %0, %.preheader.preheader ] ; 15 uses
  %.1202233 = phi ptr [ %i.lx, %._crit_edge231 ], [ %1, %.preheader.preheader ] ; 5 uses
  %.1204232 = phi i32 [ %i.ly, %._crit_edge231 ], [ 0, %.preheader.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv242 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next243, %bb.c ] ; 24 uses
  %i.ea = shl nuw nsw i64 %indvars.iv242, 1       ; 4 uses
  %i.eb = trunc nuw nsw i64 %indvars.iv242 to i32 ; 2 uses
  %i.ec = tail call i32 @llvm.usub.sat.i32(i32 %i.eb, i32 6)
  %i.ed = tail call i32 @llvm.usub.sat.i32(i32 %i.eb, i32 4)
  %i.ee = icmp eq i64 %indvars.iv242, 0           ; 2 uses
  %i.ef = trunc i64 %indvars.iv242 to i32
  %i.eg = add i32 %i.ef, -2
  %i.eh = select i1 %i.ee, i32 0, i32 %i.eg
  %i.ei = icmp slt i64 %indvars.iv242, %i.w
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 2 ; 3 uses
  %i.ej = trunc nuw nsw i64 %indvars.iv.next243 to i32
  %i.ek = select i1 %i.ei, i32 %i.ej, i32 %i.o
  %i.el = icmp slt i64 %indvars.iv242, %i.y
  %i.em = trunc i64 %indvars.iv242 to i32
  %i.en = add i32 %i.em, 4
  %i.eo = select i1 %i.el, i32 %i.en, i32 %i.o
  %i.ep = icmp slt i64 %indvars.iv242, %i.z
  %i.eq = trunc i64 %indvars.iv242 to i32
  %i.er = add i32 %i.eq, 6
  %i.es = select i1 %i.ep, i32 %i.er, i32 %i.o
  %i.et = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.eu = mul nuw nsw i32 %i.ec, %i.b
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %.1234, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !13
  %i.ey = zext i8 %i.ex to i32
  %i.ez = mul nuw nsw i32 %i.ed, %i.b
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %.1234, i64 %i.fa ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.fd = zext i8 %i.fc to i32
  %.neg = mul nsw i32 %i.fd, -7
  %i.fe = mul nsw i32 %i.eh, %i.b
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %.1234, i64 %i.ff ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !13
  %i.fi = zext i8 %i.fh to i32
  %i.fj = mul nuw nsw i32 %i.fi, 30
  %i.fk = mul nuw nsw i64 %indvars.iv242, %i.v
  %i.fl = getelementptr inbounds nuw i8, ptr %.1234, i64 %i.fk ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13
  %i.fn = zext i8 %i.fm to i32
  %i.fo = mul nuw nsw i32 %i.fn, 248
  %i.fp = mul nsw i32 %i.ek, %i.b
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %.1234, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13
  %i.ft = zext i8 %i.fs to i32
  %.neg211 = mul nsw i32 %i.ft, -21
  %i.fu = mul nsw i32 %i.eo, %i.b
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %.1234, i64 %i.fv ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !13
  %i.fy = zext i8 %i.fx to i32
  %i.fz = mul nuw nsw i32 %i.fy, 5
  %i.ga = add nuw nsw i32 %i.ey, 128
  %i.gb = add nsw i32 %i.ga, %.neg
  %i.gc = add nsw i32 %i.gb, %i.fj
  %i.gd = add nsw i32 %i.gc, %i.fo
  %i.ge = add nsw i32 %i.gd, %.neg211
  %i.gf = add nsw i32 %i.ge, %i.fz
  %i.gg = ashr i32 %i.gf, 8
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds i8, ptr %i.et, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !13
  %i.gk = mul nuw nsw i64 %i.ea, %i.v
  %i.gl = getelementptr inbounds nuw i8, ptr %.1202233, i64 %i.gk
  store i8 %i.gj, ptr %i.gl, align 1, !tbaa !13
  %i.gm = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.gn = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.go = zext i8 %i.gn to i32
  %i.gp = mul nuw nsw i32 %i.go, 7
  %i.gq = load i8, ptr %i.fg, align 1, !tbaa !13
  %i.gr = zext i8 %i.gq to i32
  %.neg212 = mul nsw i32 %i.gr, -35
  %i.gs = load i8, ptr %i.fl, align 1, !tbaa !13
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.gt, 194
  %i.gv = load i8, ptr %i.fr, align 1, !tbaa !13
  %i.gw = zext i8 %i.gv to i32
  %i.gx = mul nuw nsw i32 %i.gw, 110
  %i.gy = load i8, ptr %i.fw, align 1, !tbaa !13
  %i.gz = zext i8 %i.gy to i32
  %.neg213 = mul nsw i32 %i.gz, -24
  %i.ha = mul nsw i32 %i.es, %i.b
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds i8, ptr %.1234, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !13
  %i.he = zext i8 %i.hd to i32
  %i.hf = shl nuw nsw i32 %i.he, 2
  %i.hg = add nuw nsw i32 %i.gp, 128
  %i.hh = add nsw i32 %i.hg, %.neg212
  %i.hi = add nsw i32 %i.hh, %i.gu
  %i.hj = add nsw i32 %i.hi, %i.gx
  %i.hk = add nsw i32 %i.hj, %.neg213
  %i.hl = add nsw i32 %i.hk, %i.hf
  %i.hm = ashr i32 %i.hl, 8
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %i.gm, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !13
  %i.hq = or disjoint i64 %i.ea, 2
  %i.hr = mul nuw nsw i64 %i.hq, %i.v
  %i.hs = getelementptr inbounds nuw i8, ptr %.1202233, i64 %i.hr
  store i8 %i.hp, ptr %i.hs, align 1, !tbaa !13
  %i.ht = icmp samesign ult i64 %indvars.iv242, 5
  %i.hu = trunc i64 %indvars.iv242 to i32
  %i.hv = add i32 %i.hu, -5
  %i.hw = select i1 %i.ht, i32 1, i32 %i.hv
  %i.hx = icmp samesign ult i64 %indvars.iv242, 3
  %i.hy = trunc i64 %indvars.iv242 to i32
  %i.hz = add i32 %i.hy, -3
  %i.ia = select i1 %i.hx, i32 1, i32 %i.hz
  %i.ib = trunc i64 %indvars.iv242 to i32
  %i.ic = add i32 %i.ib, -1
  %i.id = select i1 %i.ee, i32 1, i32 %i.ic
  %5 = icmp slt i64 %indvars.iv242, %3
  %i.ie = trunc i64 %indvars.iv242 to i32
  %i.if = or disjoint i32 %i.ie, 1
  %i.ig = select i1 %5, i32 %i.if, i32 %i.p
  %i.ih = icmp slt i64 %indvars.iv242, %i.aa
  %i.ii = trunc i64 %indvars.iv242 to i32
  %i.ij = add i32 %i.ii, 3
  %i.ik = select i1 %i.ih, i32 %i.ij, i32 %i.p
  %i.il = icmp slt i64 %indvars.iv242, %i.ab
  %i.im = trunc i64 %indvars.iv242 to i32
  %i.in = add i32 %i.im, 5
  %i.io = select i1 %i.il, i32 %i.in, i32 %i.p
  %i.ip = icmp slt i64 %indvars.iv242, %i.ac
  %i.iq = trunc i64 %indvars.iv242 to i32
  %i.ir = add i32 %i.iq, 7
  %i.is = select i1 %i.ip, i32 %i.ir, i32 %i.p
  %i.it = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.iu = mul nsw i32 %i.io, %i.b
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr %.1234, i64 %i.iv ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !13
  %i.iy = zext i8 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.iy, 7
  %i.ja = mul nsw i32 %i.ik, %i.b
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds i8, ptr %.1234, i64 %i.jb ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !13
  %i.je = zext i8 %i.jd to i32
  %.neg214 = mul nsw i32 %i.je, -35
  %i.jf = mul nsw i32 %i.ig, %i.b
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds i8, ptr %.1234, i64 %i.jg ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !13
  %i.jj = zext i8 %i.ji to i32
  %i.jk = mul nuw nsw i32 %i.jj, 194
  %i.jl = mul nsw i32 %i.id, %i.b
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %.1234, i64 %i.jm ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !13
  %i.jp = zext i8 %i.jo to i32
  %i.jq = mul nuw nsw i32 %i.jp, 110
  %i.jr = mul nsw i32 %i.ia, %i.b
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds i8, ptr %.1234, i64 %i.js ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !13
  %i.jv = zext i8 %i.ju to i32
  %.neg215 = mul nsw i32 %i.jv, -24
  %i.jw = mul nsw i32 %i.hw, %i.b
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds i8, ptr %.1234, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !13
  %i.ka = zext i8 %i.jz to i32
  %i.kb = shl nuw nsw i32 %i.ka, 2
  %i.kc = add nuw nsw i32 %i.iz, 128
  %i.kd = add nsw i32 %i.kc, %.neg214
  %i.ke = add nsw i32 %i.kd, %i.jk
  %i.kf = add nsw i32 %i.ke, %i.jq
  %i.kg = add nsw i32 %i.kf, %.neg215
  %i.kh = add nsw i32 %i.kg, %i.kb
  %i.ki = ashr i32 %i.kh, 8
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds i8, ptr %i.it, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !13
  %i.km = or disjoint i64 %i.ea, 1
  %i.kn = mul nuw nsw i64 %i.km, %i.v
  %i.ko = getelementptr inbounds nuw i8, ptr %.1202233, i64 %i.kn
  store i8 %i.kl, ptr %i.ko, align 1, !tbaa !13
  %i.kp = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.kq = mul nsw i32 %i.is, %i.b
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %.1234, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !13
  %i.ku = zext i8 %i.kt to i32
  %i.kv = load i8, ptr %i.iw, align 1, !tbaa !13
  %i.kw = zext i8 %i.kv to i32
  %.neg216 = mul nsw i32 %i.kw, -7
  %i.kx = load i8, ptr %i.jc, align 1, !tbaa !13
  %i.ky = zext i8 %i.kx to i32
  %i.kz = mul nuw nsw i32 %i.ky, 30
  %i.la = load i8, ptr %i.jh, align 1, !tbaa !13
  %i.lb = zext i8 %i.la to i32
  %i.lc = mul nuw nsw i32 %i.lb, 248
  %i.ld = load i8, ptr %i.jn, align 1, !tbaa !13
  %i.le = zext i8 %i.ld to i32
  %.neg217 = mul nsw i32 %i.le, -21
  %i.lf = load i8, ptr %i.jt, align 1, !tbaa !13
  %i.lg = zext i8 %i.lf to i32
  %i.lh = mul nuw nsw i32 %i.lg, 5
  %i.li = add nuw nsw i32 %i.ku, 128
  %i.lj = add nsw i32 %i.li, %.neg216
  %i.lk = add nsw i32 %i.lj, %i.kz
  %i.ll = add nsw i32 %i.lk, %i.lc
  %i.lm = add nsw i32 %i.ll, %.neg217
  %i.ln = add nsw i32 %i.lm, %i.lh
  %i.lo = ashr i32 %i.ln, 8
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds i8, ptr %i.kp, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !13
  %i.ls = or disjoint i64 %i.ea, 3
  %i.lt = mul nuw nsw i64 %i.ls, %i.v
  %i.lu = getelementptr inbounds nuw i8, ptr %.1202233, i64 %i.lt
  store i8 %i.lr, ptr %i.lu, align 1, !tbaa !13
  %i.lv = icmp samesign ult i64 %indvars.iv.next243, %i.x
  br i1 %i.lv, label %bb.c, label %._crit_edge231, !llvm.loop !25

._crit_edge231:                                   ; preds = %bb.c
  %i.lw = getelementptr inbounds nuw i8, ptr %.1234, i64 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.1202233, i64 1
  %i.ly = add nuw nsw i32 %.1204232, 1            ; 2 uses
  %exitcond245.not = icmp eq i32 %i.ly, %i.b
  br i1 %exitcond245.not, label %.loopexit, label %.preheader, !llvm.loop !26

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge231, %.preheader224, %.preheader223.lr.ph, %.preheader222, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @conv422to444(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.b = ashr i32 %i.a, 1                         ; 12 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @base, i64 3144), align 8, !tbaa !27
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %.preheader109, label %.preheader111

.preheader111:                                    ; preds = %bb.a
  br i1 %i.e, label %.preheader110.lr.ph, label %.loopexit

.preheader110.lr.ph:                              ; preds = %.preheader111
  %i.f = icmp sgt i32 %i.b, 0
  %i.g = add nsw i32 %i.b, -1                     ; 4 uses
  %i.h = sext i32 %i.b to i64
  br i1 %i.f, label %.preheader110.preheader, label %.loopexit

.preheader110.preheader:                          ; preds = %.preheader110.lr.ph
  %i.i = add nsw i32 %i.b, -3
  %i.j = add nsw i32 %i.b, -2
  %2 = sext i32 %i.g to i64
  %i.k = sext i32 %i.j to i64
  %i.l = sext i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.m = sext i32 %i.g to i64
  br label %.preheader110

.preheader109:                                    ; preds = %bb.a
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader109
  %i.n = icmp sgt i32 %i.b, 0
  %i.o = add nsw i32 %i.b, -1                     ; 4 uses
  %i.p = sext i32 %i.b to i64
  br i1 %i.n, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = add nsw i32 %i.b, -3
  %i.r = add nsw i32 %i.b, -2
  %3 = sext i32 %i.o to i64
  %i.s = sext i32 %i.r to i64
  %i.t = sext i32 %i.q to i64
  %wide.trip.count127 = zext nneg i32 %i.b to i64
  %i.u = sext i32 %i.o to i64
  br label %.preheader

.preheader110:                                    ; preds = %.preheader110.preheader, %._crit_edge
  %.0116 = phi ptr [ %i.bt, %._crit_edge ], [ %0, %.preheader110.preheader ] ; 7 uses
  %.097115 = phi i32 [ %i.bx, %._crit_edge ], [ 0, %.preheader110.preheader ]
  %.099114 = phi ptr [ %i.bw, %._crit_edge ], [ %1, %.preheader110.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader110, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader110 ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.v = shl nuw nsw i64 %indvars.iv, 1
  %i.w = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.x = tail call i32 @llvm.usub.sat.i32(i32 %i.w, i32 2)
  %i.y = tail call i32 @llvm.usub.sat.i32(i32 %i.w, i32 1)
  %4 = icmp slt i64 %indvars.iv, %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.z = icmp slt i64 %indvars.iv, %i.k
  %i.aa = trunc i64 %indvars.iv to i32
  %i.ab = add i32 %i.aa, 2
  %i.ac = select i1 %i.z, i32 %i.ab, i32 %i.g
  %i.ad = icmp slt i64 %indvars.iv, %i.l
  %i.ae = trunc i64 %indvars.iv to i32
  %i.af = add i32 %i.ae, 3
  %i.ag = select i1 %i.ad, i32 %i.af, i32 %i.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.0116, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.099114, i64 %i.v ; 2 uses
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !13
  %i.ak = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.al = zext nneg i32 %i.x to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = zext i8 %i.an to i32
  %i.ap = sext i32 %i.ag to i64
  %i.aq = getelementptr inbounds i8, ptr %.0116, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = zext i8 %i.ar to i32
  %i.at = add nuw nsw i32 %i.as, %i.ao
  %i.au = mul nuw nsw i32 %i.at, 21
  %i.av = zext nneg i32 %i.y to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i32
  %i.az = sext i32 %i.ac to i64
  %i.ba = getelementptr inbounds i8, ptr %.0116, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, %i.ay
  %.neg108 = mul nsw i32 %i.bd, -52
  %i.be = zext i8 %i.ai to i32
  %i.bf = select i1 %4, i64 %indvars.iv.next, i64 %i.m
  %i.bg = getelementptr inbounds i8, ptr %.0116, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bi, %i.be
  %i.bk = mul nuw nsw i32 %i.bj, 159
  %i.bl = add nuw nsw i32 %i.au, 128
  %i.bm = add nsw i32 %i.bl, %.neg108
  %i.bn = add nsw i32 %i.bm, %i.bk
  %i.bo = ashr i32 %i.bn, 8
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.ak, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = getelementptr i8, ptr %i.aj, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.h
  %i.bu = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %.099114, i64 %i.bv
  %i.bx = add nuw nsw i32 %.097115, 1             ; 2 uses
  %i.by = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %.preheader110, label %.loopexit, !llvm.loop !30

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge118
  %.1121 = phi ptr [ %i.fe, %._crit_edge118 ], [ %0, %.preheader.preheader ] ; 8 uses
  %.198120 = phi i32 [ %i.fi, %._crit_edge118 ], [ 0, %.preheader.preheader ]
  %.1100119 = phi ptr [ %i.fh, %._crit_edge118 ], [ %1, %.preheader.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv124 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next125, %bb.c ] ; 9 uses
  %i.ca = shl nuw nsw i64 %indvars.iv124, 1
  %i.cb = trunc nuw nsw i64 %indvars.iv124 to i32 ; 3 uses
  %i.cc = tail call i32 @llvm.usub.sat.i32(i32 %i.cb, i32 3)
  %i.cd = tail call i32 @llvm.usub.sat.i32(i32 %i.cb, i32 2)
  %i.ce = tail call i32 @llvm.usub.sat.i32(i32 %i.cb, i32 1)
  %5 = icmp slt i64 %indvars.iv124, %3
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 3 uses
  %i.cf = icmp slt i64 %indvars.iv124, %i.s
  %i.cg = trunc i64 %indvars.iv124 to i32
  %i.ch = add i32 %i.cg, 2
  %i.ci = select i1 %i.cf, i32 %i.ch, i32 %i.o
  %i.cj = icmp slt i64 %indvars.iv124, %i.t
  %i.ck = trunc i64 %indvars.iv124 to i32
  %i.cl = add i32 %i.ck, 3
  %i.cm = select i1 %i.cj, i32 %i.cl, i32 %i.o
  %i.cn = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.co = zext nneg i32 %i.cc to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i32
  %i.cs = mul nuw nsw i32 %i.cr, 5
  %i.ct = zext nneg i32 %i.cd to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.ct ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = zext i8 %i.cv to i32
  %.neg = mul nsw i32 %i.cw, -21
  %i.cx = zext nneg i32 %i.ce to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = zext i8 %i.cz to i32
  %i.db = mul nuw nsw i32 %i.da, 70
  %i.dc = getelementptr inbounds nuw i8, ptr %.1121, i64 %indvars.iv124 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = zext i8 %i.dd to i32
  %i.df = mul nuw nsw i32 %i.de, 228
  %i.dg = select i1 %5, i64 %indvars.iv.next125, i64 %i.u
  %i.dh = getelementptr inbounds i8, ptr %.1121, i64 %i.dg ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !13
  %i.dj = zext i8 %i.di to i32
  %.neg105 = mul nsw i32 %i.dj, -37
  %i.dk = sext i32 %i.ci to i64
  %i.dl = getelementptr inbounds i8, ptr %.1121, i64 %i.dk ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = zext i8 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.dn, 11
  %i.dp = add nuw nsw i32 %i.cs, 128
  %i.dq = add nsw i32 %i.dp, %.neg
  %i.dr = add nsw i32 %i.dq, %i.db
  %i.ds = add nsw i32 %i.dr, %i.df
  %i.dt = add nsw i32 %i.ds, %.neg105
  %i.du = add nsw i32 %i.dt, %i.do
  %i.dv = ashr i32 %i.du, 8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.cn, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %.1100119, i64 %i.ca ; 2 uses
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !13
  %i.ea = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.eb = sext i32 %i.cm to i64
  %i.ec = getelementptr inbounds i8, ptr %.1121, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nuw nsw i32 %i.ee, 5
  %i.eg = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.eh = zext i8 %i.eg to i32
  %.neg106 = mul nsw i32 %i.eh, -21
  %i.ei = load i8, ptr %i.dh, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i32
  %i.ek = mul nuw nsw i32 %i.ej, 70
  %i.el = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.em = zext i8 %i.el to i32
  %i.en = mul nuw nsw i32 %i.em, 228
  %i.eo = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.ep = zext i8 %i.eo to i32
  %.neg107 = mul nsw i32 %i.ep, -37
  %i.eq = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.er = zext i8 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.er, 11
  %i.et = add nuw nsw i32 %i.ef, 128
  %i.eu = add nsw i32 %i.et, %.neg106
  %i.ev = add nsw i32 %i.eu, %i.ek
  %i.ew = add nsw i32 %i.ev, %i.en
  %i.ex = add nsw i32 %i.ew, %.neg107
  %i.ey = add nsw i32 %i.ex, %i.es
  %i.ez = ashr i32 %i.ey, 8
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ea, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.fd = getelementptr i8, ptr %i.dz, i64 1
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !13
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge118, label %bb.c, !llvm.loop !31

._crit_edge118:                                   ; preds = %bb.c
  %i.fe = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.p
  %i.ff = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %.1100119, i64 %i.fg
  %i.fi = add nuw nsw i32 %.198120, 1             ; 2 uses
  %i.fj = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.fk = icmp slt i32 %i.fi, %i.fj
  br i1 %i.fk, label %.preheader, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge118, %.preheader111, %.preheader110.lr.ph, %.preheader109, %.preheader.lr.ph
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15, !17}
!17 = !{!"llvm.loop.unswitch.partial.disable"}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15, !17}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = !{!28, !5, i64 3144}
!28 = !{!"layer_data", !5, i64 0, !6, i64 4, !9, i64 2056, !6, i64 2064, !5, i64 2080, !9, i64 2088, !5, i64 2096, !5, i64 2100, !6, i64 2104, !6, i64 2360, !6, i64 2616, !6, i64 2872, !5, i64 3128, !5, i64 3132, !5, i64 3136, !5, i64 3140, !5, i64 3144, !5, i64 3148, !5, i64 3152, !5, i64 3156, !5, i64 3160, !5, i64 3164, !5, i64 3168, !5, i64 3172, !6, i64 3176}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
end_hunk_0
