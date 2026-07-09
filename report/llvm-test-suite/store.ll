inline.NumInlined: 24
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@store_ppm_tga:bb.a
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
  %i.l = zext nneg i32 %i.h to i64
  %i.m = sext i32 %i.j to i64
  %i.n = sext i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader223

.preheader222:                                    ; preds = %bb.a
  br i1 %i.f, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader222
  %i.o = icmp sgt i32 %i.d, 0
  %i.p = add nsw i32 %i.d, -2                     ; 4 uses
  %i.q = add nsw i32 %i.d, -1                     ; 5 uses
  br i1 %i.o, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.r = add nsw i32 %i.d, -7
  %i.s = add nsw i32 %i.d, -5
  %i.t = add nsw i32 %i.d, -3
  %i.u = add nsw i32 %i.d, -6
  %i.v = add nsw i32 %i.d, -4
  %i.w = zext nneg i32 %i.b to i64                ; 5 uses
  %i.x = sext i32 %i.p to i64
  %i.y = zext nneg i32 %i.d to i64
  %i.z = sext i32 %i.v to i64
  %i.aa = sext i32 %i.u to i64
  %i.ab = zext nneg i32 %i.q to i64
  %i.ac = sext i32 %i.t to i64
  %i.ad = sext i32 %i.s to i64
  %i.ae = sext i32 %i.r to i64
  br label %.preheader

.preheader223:                                    ; preds = %.preheader223.preheader, %._crit_edge
  %.0229 = phi ptr [ %i.ea, %._crit_edge ], [ %0, %.preheader223.preheader ] ; 8 uses
  %.0201228 = phi ptr [ %i.eb, %._crit_edge ], [ %1, %.preheader223.preheader ] ; 3 uses
  %.0203227 = phi i32 [ %i.ec, %._crit_edge ], [ 0, %.preheader223.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader223, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader223 ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.af = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ah = tail call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 3)
  %i.ai = tail call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 2)
  %i.aj = tail call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 1)
  %i.ak = icmp samesign ult i64 %indvars.iv, %i.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.am = select i1 %i.ak, i32 %i.al, i32 %i.h
  %i.an = icmp slt i64 %indvars.iv, %i.m
  %i.ao = trunc i64 %indvars.iv to i32
  %i.ap = add i32 %i.ao, 2
  %i.aq = select i1 %i.an, i32 %i.ap, i32 %i.h
  %i.ar = icmp slt i64 %indvars.iv, %i.n
  %i.as = trunc i64 %indvars.iv to i32
  %i.at = add i32 %i.as, 3
  %i.au = select i1 %i.ar, i32 %i.at, i32 %i.h
  %i.av = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.aw = mul nuw nsw i32 %i.ah, %i.b
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0229, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ba, 3
  %i.bc = mul nuw nsw i32 %i.ai, %i.b
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.0229, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = zext i8 %i.bf to i32
  %i.bh = mul nuw nsw i32 %i.aj, %i.b
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.0229, i64 %i.bi ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i32
  %i.bm = mul nuw nsw i32 %i.bl, 67
  %i.bn = mul nuw nsw i64 %indvars.iv, %i.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.0229, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul nuw nsw i32 %i.bq, 227
  %i.bs = mul nsw i32 %i.am, %i.b
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %.0229, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = zext i8 %i.bv to i32
  %i.bx = mul nsw i32 %i.aq, %i.b
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %.0229, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = zext i8 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.cb, 7
  %i.cd = add nuw nsw i32 %i.bb, 128
  %i.ce = shl nuw nsw i32 %i.bg, 4
  %i.cf = sub nsw i32 %i.cd, %i.ce
  %i.cg = add nsw i32 %i.cf, %i.bm
  %i.ch = add nsw i32 %i.cg, %i.br
  %i.ci = shl nuw nsw i32 %i.bw, 5
  %i.cj = sub nsw i32 %i.ch, %i.ci
  %i.ck = add nsw i32 %i.cj, %i.cc
  %i.cl = ashr i32 %i.ck, 8
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.av, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = mul nuw nsw i64 %i.af, %i.k
  %i.cq = getelementptr inbounds nuw i8, ptr %.0201228, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !13
  %i.cr = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.cs = mul nsw i32 %i.au, %i.b
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %.0229, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nuw nsw i32 %i.cw, 3
  %i.cy = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.db = zext i8 %i.da to i32
  %i.dc = mul nuw nsw i32 %i.db, 67
  %i.dd = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.de = zext i8 %i.dd to i32
  %i.df = mul nuw nsw i32 %i.de, 227
  %i.dg = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i32
  %i.di = load i8, ptr %i.be, align 1, !tbaa !13
  %i.dj = zext i8 %i.di to i32
  %i.dk = mul nuw nsw i32 %i.dj, 7
  %i.dl = add nuw nsw i32 %i.cx, 128
  %i.dm = shl nuw nsw i32 %i.cz, 4
  %i.dn = sub nsw i32 %i.dl, %i.dm
  %i.do = add nsw i32 %i.dn, %i.dc
  %i.dp = add nsw i32 %i.do, %i.df
  %i.dq = shl nuw nsw i32 %i.dh, 5
  %i.dr = sub nsw i32 %i.dp, %i.dq
  %i.ds = add nsw i32 %i.dr, %i.dk
  %i.dt = ashr i32 %i.ds, 8
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.cr, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !13
  %i.dx = or disjoint i64 %i.af, 1
  %i.dy = mul nuw nsw i64 %i.dx, %i.k
  %i.dz = getelementptr inbounds nuw i8, ptr %.0201228, i64 %i.dy
  store i8 %i.dw, ptr %i.dz, align 1, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %.0229, i64 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.0201228, i64 1
  %i.ec = add nuw nsw i32 %.0203227, 1            ; 2 uses
  %exitcond241.not = icmp eq i32 %i.ec, %i.b
  br i1 %exitcond241.not, label %.loopexit, label %.preheader223, !llvm.loop !24

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge231
  %.1234 = phi ptr [ %i.ma, %._crit_edge231 ], [ %0, %.preheader.preheader ] ; 15 uses
  %.1202233 = phi ptr [ %i.mb, %._crit_edge231 ], [ %1, %.preheader.preheader ] ; 5 uses
  %.1204232 = phi i32 [ %i.mc, %._crit_edge231 ], [ 0, %.preheader.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv242 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next243, %bb.c ] ; 24 uses
  %i.ed = shl nuw nsw i64 %indvars.iv242, 1       ; 4 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv242 to i32 ; 2 uses
  %i.ef = tail call i32 @llvm.usub.sat.i32(i32 %i.ee, i32 6)
  %i.eg = tail call i32 @llvm.usub.sat.i32(i32 %i.ee, i32 4)
  %i.eh = icmp eq i64 %indvars.iv242, 0           ; 2 uses
  %i.ei = trunc i64 %indvars.iv242 to i32
  %i.ej = add i32 %i.ei, -2
  %i.ek = select i1 %i.eh, i32 0, i32 %i.ej
  %i.el = icmp slt i64 %indvars.iv242, %i.x
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 2 ; 3 uses
  %i.em = trunc nuw nsw i64 %indvars.iv.next243 to i32
  %i.en = select i1 %i.el, i32 %i.em, i32 %i.p
  %i.eo = icmp slt i64 %indvars.iv242, %i.z
  %i.ep = trunc i64 %indvars.iv242 to i32
  %i.eq = add i32 %i.ep, 4
  %i.er = select i1 %i.eo, i32 %i.eq, i32 %i.p
  %i.es = icmp slt i64 %indvars.iv242, %i.aa
  %i.et = trunc i64 %indvars.iv242 to i32
  %i.eu = add i32 %i.et, 6
  %i.ev = select i1 %i.es, i32 %i.eu, i32 %i.p
  %i.ew = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.ex = mul nuw nsw i32 %i.ef, %i.b
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.1234, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !13
  %i.fb = zext i8 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.eg, %i.b
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.1234, i64 %i.fd ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !13
  %i.fg = zext i8 %i.ff to i32
  %.neg = mul nsw i32 %i.fg, -7
  %i.fh = mul nsw i32 %i.ek, %i.b
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %.1234, i64 %i.fi ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !13
  %i.fl = zext i8 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fl, 30
  %i.fn = mul nuw nsw i64 %indvars.iv242, %i.w
  %i.fo = getelementptr inbounds nuw i8, ptr %.1234, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = zext i8 %i.fp to i32
  %i.fr = mul nuw nsw i32 %i.fq, 248
  %i.fs = mul nsw i32 %i.en, %i.b
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %.1234, i64 %i.ft ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !13
  %i.fw = zext i8 %i.fv to i32
  %.neg211 = mul nsw i32 %i.fw, -21
  %i.fx = mul nsw i32 %i.er, %i.b
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %.1234, i64 %i.fy ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.gb = zext i8 %i.ga to i32
  %i.gc = mul nuw nsw i32 %i.gb, 5
  %i.gd = add nuw nsw i32 %i.fb, 128
  %i.ge = add nsw i32 %i.gd, %.neg
  %i.gf = add nsw i32 %i.ge, %i.fm
  %i.gg = add nsw i32 %i.gf, %i.fr
  %i.gh = add nsw i32 %i.gg, %.neg211
  %i.gi = add nsw i32 %i.gh, %i.gc
  %i.gj = ashr i32 %i.gi, 8
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.ew, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !13
  %i.gn = mul nuw nsw i64 %i.ed, %i.w
  %i.go = getelementptr inbounds nuw i8, ptr %.1202233, i64 %i.gn
  store i8 %i.gm, ptr %i.go, align 1, !tbaa !13
  %i.gp = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.gq = load i8, ptr %i.fe, align 1, !tbaa !13
  %i.gr = zext i8 %i.gq to i32
  %i.gs = mul nuw nsw i32 %i.gr, 7
  %i.gt = load i8, ptr %i.fj, align 1, !tbaa !13
  %i.gu = zext i8 %i.gt to i32
  %.neg212 = mul nsw i32 %i.gu, -35
  %i.gv = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.gw = zext i8 %i.gv to i32
  %i.gx = mul nuw nsw i32 %i.gw, 194
  %i.gy = load i8, ptr %i.fu, align 1, !tbaa !13
  %i.gz = zext i8 %i.gy to i32
  %i.ha = mul nuw nsw i32 %i.gz, 110
  %i.hb = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.hc = zext i8 %i.hb to i32
  %.neg213 = mul nsw i32 %i.hc, -24
  %i.hd = mul nsw i32 %i.ev, %i.b
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds i8, ptr %.1234, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !13
  %i.hh = zext i8 %i.hg to i32
  %i.hi = shl nuw nsw i32 %i.hh, 2
  %i.hj = add nuw nsw i32 %i.gs, 128
  %i.hk = add nsw i32 %i.hj, %.neg212
  %i.hl = add nsw i32 %i.hk, %i.gx
  %i.hm = add nsw i32 %i.hl, %i.ha
  %i.hn = add nsw i32 %i.hm, %.neg213
  %i.ho = add nsw i32 %i.hn, %i.hi
  %i.hp = ashr i32 %i.ho, 8
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %i.gp, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !13
  %i.ht = or disjoint i64 %i.ed, 2
  %i.hu = mul nuw nsw i64 %i.ht, %i.w
  %i.hv = getelementptr inbounds nuw i8, ptr %.1202233, i64 %i.hu
  store i8 %i.hs, ptr %i.hv, align 1, !tbaa !13
  %i.hw = icmp samesign ult i64 %indvars.iv242, 5
  %i.hx = trunc i64 %indvars.iv242 to i32
  %i.hy = add i32 %i.hx, -5
  %i.hz = select i1 %i.hw, i32 1, i32 %i.hy
  %i.ia = icmp samesign ult i64 %indvars.iv242, 3
  %i.ib = trunc i64 %indvars.iv242 to i32
  %i.ic = add i32 %i.ib, -3
  %i.id = select i1 %i.ia, i32 1, i32 %i.ic
  %i.ie = trunc i64 %indvars.iv242 to i32
  %i.if = add i32 %i.ie, -1
  %i.ig = select i1 %i.eh, i32 1, i32 %i.if
  %i.ih = icmp samesign ult i64 %indvars.iv242, %i.ab
  %i.ii = trunc i64 %indvars.iv242 to i32
  %i.ij = or disjoint i32 %i.ii, 1
  %i.ik = select i1 %i.ih, i32 %i.ij, i32 %i.q
  %i.il = icmp slt i64 %indvars.iv242, %i.ac
  %i.im = trunc i64 %indvars.iv242 to i32
  %i.in = add i32 %i.im, 3
  %i.io = select i1 %i.il, i32 %i.in, i32 %i.q
  %i.ip = icmp slt i64 %indvars.iv242, %i.ad
  %i.iq = trunc i64 %indvars.iv242 to i32
  %i.ir = add i32 %i.iq, 5
  %i.is = select i1 %i.ip, i32 %i.ir, i32 %i.q
  %i.it = icmp slt i64 %indvars.iv242, %i.ae
  %i.iu = trunc i64 %indvars.iv242 to i32
  %i.iv = add i32 %i.iu, 7
  %i.iw = select i1 %i.it, i32 %i.iv, i32 %i.q
  %i.ix = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.iy = mul nsw i32 %i.is, %i.b
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds i8, ptr %.1234, i64 %i.iz ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !13
  %i.jc = zext i8 %i.jb to i32
  %i.jd = mul nuw nsw i32 %i.jc, 7
  %i.je = mul nsw i32 %i.io, %i.b
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %.1234, i64 %i.jf ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !13
  %i.ji = zext i8 %i.jh to i32
  %.neg214 = mul nsw i32 %i.ji, -35
  %i.jj = mul nsw i32 %i.ik, %i.b
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds i8, ptr %.1234, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !13
  %i.jn = zext i8 %i.jm to i32
  %i.jo = mul nuw nsw i32 %i.jn, 194
  %i.jp = mul nsw i32 %i.ig, %i.b
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds i8, ptr %.1234, i64 %i.jq ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !13
  %i.jt = zext i8 %i.js to i32
  %i.ju = mul nuw nsw i32 %i.jt, 110
  %i.jv = mul nsw i32 %i.id, %i.b
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds i8, ptr %.1234, i64 %i.jw ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !13
  %i.jz = zext i8 %i.jy to i32
  %.neg215 = mul nsw i32 %i.jz, -24
  %i.ka = mul nsw i32 %i.hz, %i.b
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %.1234, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !13
  %i.ke = zext i8 %i.kd to i32
  %i.kf = shl nuw nsw i32 %i.ke, 2
  %i.kg = add nuw nsw i32 %i.jd, 128
  %i.kh = add nsw i32 %i.kg, %.neg214
  %i.ki = add nsw i32 %i.kh, %i.jo
  %i.kj = add nsw i32 %i.ki, %i.ju
  %i.kk = add nsw i32 %i.kj, %.neg215
  %i.kl = add nsw i32 %i.kk, %i.kf
  %i.km = ashr i32 %i.kl, 8
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds i8, ptr %i.ix, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !13
  %i.kq = or disjoint i64 %i.ed, 1
  %i.kr = mul nuw nsw i64 %i.kq, %i.w
  %i.ks = getelementptr inbounds nuw i8, ptr %.1202233, i64 %i.kr
  store i8 %i.kp, ptr %i.ks, align 1, !tbaa !13
  %i.kt = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.ku = mul nsw i32 %i.iw, %i.b
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds i8, ptr %.1234, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !13
  %i.ky = zext i8 %i.kx to i32
  %i.kz = load i8, ptr %i.ja, align 1, !tbaa !13
  %i.la = zext i8 %i.kz to i32
  %.neg216 = mul nsw i32 %i.la, -7
  %i.lb = load i8, ptr %i.jg, align 1, !tbaa !13
  %i.lc = zext i8 %i.lb to i32
  %i.ld = mul nuw nsw i32 %i.lc, 30
  %i.le = load i8, ptr %i.jl, align 1, !tbaa !13
  %i.lf = zext i8 %i.le to i32
  %i.lg = mul nuw nsw i32 %i.lf, 248
  %i.lh = load i8, ptr %i.jr, align 1, !tbaa !13
  %i.li = zext i8 %i.lh to i32
  %.neg217 = mul nsw i32 %i.li, -21
  %i.lj = load i8, ptr %i.jx, align 1, !tbaa !13
  %i.lk = zext i8 %i.lj to i32
  %i.ll = mul nuw nsw i32 %i.lk, 5
  %i.lm = add nuw nsw i32 %i.ky, 128
  %i.ln = add nsw i32 %i.lm, %.neg216
  %i.lo = add nsw i32 %i.ln, %i.ld
  %i.lp = add nsw i32 %i.lo, %i.lg
  %i.lq = add nsw i32 %i.lp, %.neg217
  %i.lr = add nsw i32 %i.lq, %i.ll
  %i.ls = ashr i32 %i.lr, 8
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds i8, ptr %i.kt, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !13
  %i.lw = or disjoint i64 %i.ed, 3
  %i.lx = mul nuw nsw i64 %i.lw, %i.w
  %i.ly = getelementptr inbounds nuw i8, ptr %.1202233, i64 %i.lx
  store i8 %i.lv, ptr %i.ly, align 1, !tbaa !13
  %i.lz = icmp samesign ult i64 %indvars.iv.next243, %i.y
  br i1 %i.lz, label %bb.c, label %._crit_edge231, !llvm.loop !25

._crit_edge231:                                   ; preds = %bb.c
  %i.ma = getelementptr inbounds nuw i8, ptr %.1234, i64 1
  %i.mb = getelementptr inbounds nuw i8, ptr %.1202233, i64 1
  %i.mc = add nuw nsw i32 %.1204232, 1            ; 2 uses
  %exitcond245.not = icmp eq i32 %i.mc, %i.b
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
  %i.k = zext nneg i32 %i.g to i64
  %i.l = sext i32 %i.j to i64
  %i.m = sext i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.n = sext i32 %i.g to i64
  br label %.preheader110

.preheader109:                                    ; preds = %bb.a
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader109
  %i.o = icmp sgt i32 %i.b, 0
  %i.p = add nsw i32 %i.b, -1                     ; 4 uses
  %i.q = sext i32 %i.b to i64
  br i1 %i.o, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.r = add nsw i32 %i.b, -3
  %i.s = add nsw i32 %i.b, -2
  %i.t = zext nneg i32 %i.p to i64
  %i.u = sext i32 %i.s to i64
  %i.v = sext i32 %i.r to i64
  %wide.trip.count127 = zext nneg i32 %i.b to i64
  %i.w = sext i32 %i.p to i64
  br label %.preheader

.preheader110:                                    ; preds = %.preheader110.preheader, %._crit_edge
  %.0116 = phi ptr [ %i.bw, %._crit_edge ], [ %0, %.preheader110.preheader ] ; 7 uses
  %.097115 = phi i32 [ %i.ca, %._crit_edge ], [ 0, %.preheader110.preheader ]
  %.099114 = phi ptr [ %i.bz, %._crit_edge ], [ %1, %.preheader110.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader110, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader110 ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.x = shl nuw nsw i64 %indvars.iv, 1
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.z = tail call i32 @llvm.usub.sat.i32(i32 %i.y, i32 2)
  %i.aa = tail call i32 @llvm.usub.sat.i32(i32 %i.y, i32 1)
  %i.ab = icmp samesign ult i64 %indvars.iv, %i.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = icmp slt i64 %indvars.iv, %i.l
  %i.ad = trunc i64 %indvars.iv to i32
  %i.ae = add i32 %i.ad, 2
  %i.af = select i1 %i.ac, i32 %i.ae, i32 %i.g
  %i.ag = icmp slt i64 %indvars.iv, %i.m
  %i.ah = trunc i64 %indvars.iv to i32
  %i.ai = add i32 %i.ah, 3
  %i.aj = select i1 %i.ag, i32 %i.ai, i32 %i.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.0116, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.099114, i64 %i.x ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !13
  %i.an = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.ao = zext nneg i32 %i.z to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i32
  %i.as = sext i32 %i.aj to i64
  %i.at = getelementptr inbounds i8, ptr %.0116, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, %i.ar
  %i.ax = mul nuw nsw i32 %i.aw, 21
  %i.ay = zext nneg i32 %i.aa to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sext i32 %i.af to i64
  %i.bd = getelementptr inbounds i8, ptr %.0116, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %i.bf, %i.bb
  %.neg108 = mul nsw i32 %i.bg, -52
  %i.bh = zext i8 %i.al to i32
  %i.bi = select i1 %i.ab, i64 %indvars.iv.next, i64 %i.n
  %i.bj = getelementptr inbounds i8, ptr %.0116, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bl, %i.bh
  %i.bn = mul nuw nsw i32 %i.bm, 159
  %i.bo = add nuw nsw i32 %i.ax, 128
  %i.bp = add nsw i32 %i.bo, %.neg108
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = ashr i32 %i.bq, 8
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.an, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = getelementptr i8, ptr %i.am, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.h
  %i.bx = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %.099114, i64 %i.by
  %i.ca = add nuw nsw i32 %.097115, 1             ; 2 uses
  %i.cb = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.preheader110, label %.loopexit, !llvm.loop !30

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge118
  %.1121 = phi ptr [ %i.fi, %._crit_edge118 ], [ %0, %.preheader.preheader ] ; 8 uses
  %.198120 = phi i32 [ %i.fm, %._crit_edge118 ], [ 0, %.preheader.preheader ]
  %.1100119 = phi ptr [ %i.fl, %._crit_edge118 ], [ %1, %.preheader.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv124 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next125, %bb.c ] ; 9 uses
  %i.cd = shl nuw nsw i64 %indvars.iv124, 1
  %i.ce = trunc nuw nsw i64 %indvars.iv124 to i32 ; 3 uses
  %i.cf = tail call i32 @llvm.usub.sat.i32(i32 %i.ce, i32 3)
  %i.cg = tail call i32 @llvm.usub.sat.i32(i32 %i.ce, i32 2)
  %i.ch = tail call i32 @llvm.usub.sat.i32(i32 %i.ce, i32 1)
  %i.ci = icmp samesign ult i64 %indvars.iv124, %i.t
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 3 uses
  %i.cj = icmp slt i64 %indvars.iv124, %i.u
  %i.ck = trunc i64 %indvars.iv124 to i32
  %i.cl = add i32 %i.ck, 2
  %i.cm = select i1 %i.cj, i32 %i.cl, i32 %i.p
  %i.cn = icmp slt i64 %indvars.iv124, %i.v
  %i.co = trunc i64 %indvars.iv124 to i32
  %i.cp = add i32 %i.co, 3
  %i.cq = select i1 %i.cn, i32 %i.cp, i32 %i.p
  %i.cr = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.cs = zext nneg i32 %i.cf to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = zext i8 %i.cu to i32
  %i.cw = mul nuw nsw i32 %i.cv, 5
  %i.cx = zext nneg i32 %i.cg to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = zext i8 %i.cz to i32
  %.neg = mul nsw i32 %i.da, -21
  %i.db = zext nneg i32 %i.ch to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = zext i8 %i.dd to i32
  %i.df = mul nuw nsw i32 %i.de, 70
  %i.dg = getelementptr inbounds nuw i8, ptr %.1121, i64 %indvars.iv124 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13
  %i.di = zext i8 %i.dh to i32
  %i.dj = mul nuw nsw i32 %i.di, 228
  %i.dk = select i1 %i.ci, i64 %indvars.iv.next125, i64 %i.w
  %i.dl = getelementptr inbounds i8, ptr %.1121, i64 %i.dk ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = zext i8 %i.dm to i32
  %.neg105 = mul nsw i32 %i.dn, -37
  %i.do = sext i32 %i.cm to i64
  %i.dp = getelementptr inbounds i8, ptr %.1121, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %i.dr = zext i8 %i.dq to i32
  %i.ds = mul nuw nsw i32 %i.dr, 11
  %i.dt = add nuw nsw i32 %i.cw, 128
  %i.du = add nsw i32 %i.dt, %.neg
  %i.dv = add nsw i32 %i.du, %i.df
  %i.dw = add nsw i32 %i.dv, %i.dj
  %i.dx = add nsw i32 %i.dw, %.neg105
  %i.dy = add nsw i32 %i.dx, %i.ds
  %i.dz = ashr i32 %i.dy, 8
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %i.cr, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %.1100119, i64 %i.cd ; 2 uses
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !13
  %i.ee = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.ef = sext i32 %i.cq to i64
  %i.eg = getelementptr inbounds i8, ptr %.1121, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !13
  %i.ei = zext i8 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, 5
  %i.ek = load i8, ptr %i.dp, align 1, !tbaa !13
  %i.el = zext i8 %i.ek to i32
  %.neg106 = mul nsw i32 %i.el, -21
  %i.em = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.en = zext i8 %i.em to i32
  %i.eo = mul nuw nsw i32 %i.en, 70
  %i.ep = load i8, ptr %i.dg, align 1, !tbaa !13
  %i.eq = zext i8 %i.ep to i32
  %i.er = mul nuw nsw i32 %i.eq, 228
  %i.es = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.et = zext i8 %i.es to i32
  %.neg107 = mul nsw i32 %i.et, -37
  %i.eu = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.ev = zext i8 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.ev, 11
  %i.ex = add nuw nsw i32 %i.ej, 128
  %i.ey = add nsw i32 %i.ex, %.neg106
  %i.ez = add nsw i32 %i.ey, %i.eo
  %i.fa = add nsw i32 %i.ez, %i.er
  %i.fb = add nsw i32 %i.fa, %.neg107
  %i.fc = add nsw i32 %i.fb, %i.ew
  %i.fd = ashr i32 %i.fc, 8
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.ee, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !13
  %i.fh = getelementptr i8, ptr %i.ed, i64 1
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !13
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge118, label %bb.c, !llvm.loop !31

._crit_edge118:                                   ; preds = %bb.c
  %i.fi = getelementptr inbounds nuw i8, ptr %.1121, i64 %i.q
  %i.fj = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %.1100119, i64 %i.fk
  %i.fm = add nuw nsw i32 %.198120, 1             ; 2 uses
  %i.fn = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.fo = icmp slt i32 %i.fm, %i.fn
  br i1 %i.fo, label %.preheader, label %.loopexit, !llvm.loop !32

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
