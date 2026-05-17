inline.NumInlined: 24
inline.NumDeleted: 5
begin_hunk_0_@store_one:bb.a
  %i.cz = add nuw nsw i32 %.02838.i, 2            ; 2 uses
  %i.da = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %putbyte.exit37.i, %.lr.ph44.split.i
  %i.dc = phi ptr [ %i.bi, %.lr.ph44.split.i ], [ %i.cy, %putbyte.exit37.i ] ; 3 uses
  %i.dd = phi i32 [ %i.bj, %.lr.ph44.split.i ], [ %i.da, %putbyte.exit37.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge45.i, label %.lr.ph44.split.i, !llvm.loop !16

._crit_edge45.thread.i:                           ; preds = %.lr.ph44.i, %bb.q
  %.pre4960.i = load i32, ptr @outfile, align 4, !tbaa !4
  br label %store_sif.exit

._crit_edge45.i:                                  ; preds = %._crit_edge.i
  %.not34.i = icmp eq ptr %i.dc, @obfr
  %.pre49.i = load i32, ptr @outfile, align 4, !tbaa !4 ; 2 uses
  br i1 %.not34.i, label %store_sif.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge45.i
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.de, ptrtoint (ptr @obfr to i64)
  %i.dg = tail call i64 @write(i32 noundef %.pre49.i, ptr noundef nonnull @obfr, i64 noundef %i.df) #10 ; 0 uses
  %.pre48.i = load i32, ptr @outfile, align 4, !tbaa !4
  br label %store_sif.exit

store_sif.exit:                                   ; preds = %._crit_edge45.thread.i, %._crit_edge45.i, %bb.v
  %i.dh = phi i32 [ %.pre48.i, %bb.v ], [ %.pre49.i, %._crit_edge45.i ], [ %.pre4960.i, %._crit_edge45.thread.i ]
  %i.di = tail call i32 @close(i32 noundef %i.dh) #10 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.a
  tail call fastcc void @store_ppm_tga(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  br label %bb.y

bb.x:                                             ; preds = %bb.a
  tail call fastcc void @store_ppm_tga(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0)
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x, %bb.w, %store_sif.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @store_ppm_tga(ptr noundef nonnull %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @chroma_format, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  store ptr %i.e, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  store ptr %i.g, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.k = ashr i32 %i.j, 1
  %i.l = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.m = mul nsw i32 %i.k, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #11 ; 2 uses
  store ptr %i.o, ptr @store_ppm_tga.u422, align 8, !tbaa !8
  %.not62 = icmp eq ptr %i.o, null
  br i1 %.not62, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.q = ashr i32 %i.p, 1
  %i.r = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.s = mul nsw i32 %i.q, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #11 ; 2 uses
  store ptr %i.u, ptr @store_ppm_tga.v422, align 8, !tbaa !8
  %.not63 = icmp eq ptr %i.u, null
  br i1 %.not63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.v = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.w = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.x = mul nsw i32 %i.w, %i.v
  %i.y = sext i32 %i.x to i64
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #11 ; 2 uses
  store ptr %i.z, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  %.not64 = icmp eq ptr %i.z, null
  br i1 %.not64, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.ab = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.ac = mul nsw i32 %i.ab, %i.aa
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #11 ; 2 uses
  store ptr %i.ae, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  %.not65 = icmp eq ptr %i.ae, null
  br i1 %.not65, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.l, %bb.k
  %.pr = load i32, ptr @chroma_format, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %bb.c
  %i.af = phi i32 [ %.pr, %thread-pre-split ], [ %i.b, %bb.c ]
  %i.ag = icmp eq i32 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr @store_ppm_tga.u422, align 8, !tbaa !8 ; 2 uses
  tail call fastcc void @conv420to422(ptr noundef %i.ai, ptr noundef %i.ak)
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.am = load ptr, ptr @store_ppm_tga.v422, align 8, !tbaa !8 ; 2 uses
  tail call fastcc void @conv420to422(ptr noundef %i.al, ptr noundef %i.am)
  %i.an = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  tail call fastcc void @conv422to444(ptr noundef %i.ak, ptr noundef %i.an)
  %i.ao = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  tail call fastcc void @conv422to444(ptr noundef %i.am, ptr noundef %i.ao)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  tail call fastcc void @conv422to444(ptr noundef %i.ai, ptr noundef %i.ap)
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.ar = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  tail call fastcc void @conv422to444(ptr noundef %i.aq, ptr noundef %i.ar)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.b
  %.not66 = icmp eq i32 %5, 0                     ; 3 uses
  %i.as = select i1 %.not66, ptr @.str.9, ptr @.str.8
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %endptr = getelementptr inbounds i8, ptr %0, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) %i.as, i64 5, i1 false)
  %i.at = load i32, ptr @Quiet_Flag, align 4, !tbaa !4
  %.not67 = icmp eq i32 %i.at, 0
  br i1 %.not67, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.av = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 47) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = select i1 %.not.i, ptr %0, ptr %i.aw
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.ax) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.az = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 577, i32 noundef 438) #10 ; 2 uses
  store i32 %i.az, ptr @outfile, align 4, !tbaa !4
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #10 ; 0 uses
  tail call void @Error(ptr noundef nonnull @Error_Text) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  br i1 %.not66, label %bb.u, label %putbyte.exit72

putbyte.exit72:                                   ; preds = %bb.t
  store <12 x i8> <i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, ptr @obfr, align 16, !tbaa !13
  %.pre = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.bc = trunc i32 %.pre to i8
  store i8 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 12), align 4, !tbaa !13
  %i.bd = lshr i32 %.pre, 8
  %i.be = trunc i32 %i.bd to i8
  store i8 %i.be, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 13), align 1, !tbaa !13
  %i.bf = trunc i32 %4 to i8
  store i8 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 14), align 2, !tbaa !13
  %i.bg = lshr i32 %4, 8
  %i.bh = trunc i32 %i.bg to i8
  store i8 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 15), align 1, !tbaa !13
  store i8 24, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 16), align 16, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 18), ptr @optr, align 8, !tbaa !8
  store i8 32, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 17), align 1, !tbaa !13
  br label %putbyte.exit73

bb.u:                                             ; preds = %bb.t
  %i.bi = load i32, ptr @horizontal_size, align 4, !tbaa !4
  %i.bj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.bi, i32 noundef %4) #10 ; 0 uses
  %i.bk = load i8, ptr %i.a, align 16, !tbaa !13  ; 2 uses
  %.not6884 = icmp eq i8 %i.bk, 0
  br i1 %.not6884, label %putbyte.exit73, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %.pre101 = load ptr, ptr @optr, align 8, !tbaa !8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %putbyte.exit74
  %i.bl = phi ptr [ %.pre101, %.lr.ph.preheader ], [ %i.br, %putbyte.exit74 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %putbyte.exit74 ]
  %i.bm = phi i8 [ %i.bk, %.lr.ph.preheader ], [ %i.bt, %putbyte.exit74 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 3 uses
  store ptr %i.bn, ptr @optr, align 8, !tbaa !8
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !13
  %i.bo = icmp eq ptr %i.bn, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.bo, label %bb.v, label %putbyte.exit74

bb.v:                                             ; preds = %.lr.ph
  %i.bp = load i32, ptr @outfile, align 4, !tbaa !4
  %i.bq = tail call i64 @write(i32 noundef %i.bp, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  br label %putbyte.exit74

putbyte.exit74:                                   ; preds = %.lr.ph, %bb.v
  %i.br = phi ptr [ %i.bn, %.lr.ph ], [ @obfr, %bb.v ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13  ; 2 uses
  %.not68 = icmp eq i8 %i.bt, 0
  br i1 %.not68, label %putbyte.exit73, label %.lr.ph, !llvm.loop !18

putbyte.exit73:                                   ; preds = %putbyte.exit74, %putbyte.exit72, %bb.u
  %i.bu = load i32, ptr @matrix_coefficients, align 4, !tbaa !4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr @Inverse_Table_6_9, i64 %i.bv ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 16, !tbaa !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 2 uses
  %i.ca = icmp sgt i32 %4, 0
  br i1 %i.ca, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %putbyte.exit73
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !4
  %i.cf = sext i32 %2 to i64                      ; 3 uses
  %factor.op.mul = sub i32 0, %i.ce               ; 2 uses
  %factor.op.mul86 = sub i32 0, %i.cc             ; 2 uses
  %i.cg = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph93.split.preheader, label %._crit_edge94

.lr.ph93.split.preheader:                         ; preds = %.lr.ph93
  %i.ci = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph93.split

.lr.ph93.split:                                   ; preds = %.lr.ph93.split.preheader, %._crit_edge
  %i.cj = phi i32 [ %i.cg, %.lr.ph93.split.preheader ], [ %i.gx, %._crit_edge ] ; 2 uses
  %indvars.iv98 = phi i64 [ 0, %.lr.ph93.split.preheader ], [ %indvars.iv.next99, %._crit_edge ] ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %.lr.ph93.split
  %i.cl = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cf
  %i.cn = mul nsw i64 %indvars.iv98, %i.ci        ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cp = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.cf
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.cn ; 2 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !8
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.cf
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cn ; 2 uses
  %.pre103 = load ptr, ptr @optr, align 8, !tbaa !8 ; 2 uses
  br i1 %.not66, label %.lr.ph91.split.us, label %.lr.ph91.split

.lr.ph91.split.us:                                ; preds = %.lr.ph91, %putbyte.exit77.us
  %i.cv = phi ptr [ %i.es, %putbyte.exit77.us ], [ %.pre103, %.lr.ph91 ] ; 2 uses
  %.090.us = phi ptr [ %i.da, %putbyte.exit77.us ], [ %i.co, %.lr.ph91 ] ; 2 uses
  %.05589.us = phi ptr [ %i.cw, %putbyte.exit77.us ], [ %i.cr, %.lr.ph91 ] ; 2 uses
  %.05688.us = phi ptr [ %i.de, %putbyte.exit77.us ], [ %i.cu, %.lr.ph91 ] ; 2 uses
  %.05887.us = phi i32 [ %i.et, %putbyte.exit77.us ], [ 0, %.lr.ph91 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.05589.us, i64 1
  %i.cx = load i8, ptr %.05589.us, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -128                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.090.us, i64 1
  %i.db = load i8, ptr %.090.us, align 1, !tbaa !13
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nsw i32 %i.dc, -128                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.05688.us, i64 1
  %i.df = load i8, ptr %.05688.us, align 1, !tbaa !13
  %i.dg = zext i8 %i.df to i32
  %i.dh = mul nuw nsw i32 %i.dg, 76309            ; 2 uses
  %i.di = add nsw i32 %i.dh, -1220944             ; 2 uses
  %i.dj = load ptr, ptr @Clip, align 8, !tbaa !8  ; 3 uses
  %i.dk = mul nsw i32 %i.dd, %i.bx
  %i.dl = add i32 %i.dk, 32768
  %i.dm = add i32 %i.dl, %i.di
  %i.dn = ashr i32 %i.dm, 16
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %.neg.reass.us = mul i32 %i.cz, %factor.op.mul
  %.neg81.reass.us = mul i32 %i.dd, %factor.op.mul86
  %reass.add.us = add i32 %.neg81.reass.us, %.neg.reass.us
  %i.dr = add nsw i32 %i.dh, -1188176
  %i.ds = add i32 %i.dr, %reass.add.us
  %i.dt = ashr i32 %i.ds, 16
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.dj, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !13
  %i.dx = mul nsw i32 %i.cz, %i.bz
  %i.dy = add i32 %i.dx, 32786
  %i.dz = add i32 %i.dy, %i.di
  %i.ea = ashr i32 %i.dz, 16
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.dj, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 3 uses
  store ptr %i.ee, ptr @optr, align 8, !tbaa !8
  store i8 %i.dq, ptr %i.cv, align 1, !tbaa !13
  %i.ef = icmp eq ptr %i.ee, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.ef, label %bb.w, label %putbyte.exit78.us

bb.w:                                             ; preds = %.lr.ph91.split.us
  %i.eg = load i32, ptr @outfile, align 4, !tbaa !4
  %i.eh = tail call i64 @write(i32 noundef %i.eg, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit78.us

putbyte.exit78.us:                                ; preds = %bb.w, %.lr.ph91.split.us
  %i.ei = phi ptr [ @obfr, %bb.w ], [ %i.ee, %.lr.ph91.split.us ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 3 uses
  store ptr %i.ej, ptr @optr, align 8, !tbaa !8
  store i8 %i.dw, ptr %i.ei, align 1, !tbaa !13
  %i.ek = icmp eq ptr %i.ej, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.ek, label %bb.x, label %putbyte.exit79.us

bb.x:                                             ; preds = %putbyte.exit78.us
  %i.el = load i32, ptr @outfile, align 4, !tbaa !4
  %i.em = tail call i64 @write(i32 noundef %i.el, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit79.us

putbyte.exit79.us:                                ; preds = %bb.x, %putbyte.exit78.us
  %i.en = phi ptr [ @obfr, %bb.x ], [ %i.ej, %putbyte.exit78.us ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 3 uses
  store ptr %i.eo, ptr @optr, align 8, !tbaa !8
  store i8 %i.ed, ptr %i.en, align 1, !tbaa !13
  %i.ep = icmp eq ptr %i.eo, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.ep, label %bb.y, label %putbyte.exit77.us

bb.y:                                             ; preds = %putbyte.exit79.us
  %i.eq = load i32, ptr @outfile, align 4, !tbaa !4
  %i.er = tail call i64 @write(i32 noundef %i.eq, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  br label %putbyte.exit77.us

putbyte.exit77.us:                                ; preds = %bb.y, %putbyte.exit79.us
  %i.es = phi ptr [ @obfr, %bb.y ], [ %i.eo, %putbyte.exit79.us ]
  %i.et = add nuw nsw i32 %.05887.us, 1           ; 2 uses
  %i.eu = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.ev = icmp slt i32 %i.et, %i.eu
  br i1 %i.ev, label %.lr.ph91.split.us, label %._crit_edge, !llvm.loop !19

.lr.ph91.split:                                   ; preds = %.lr.ph91, %putbyte.exit77
  %i.ew = phi ptr [ %i.gt, %putbyte.exit77 ], [ %.pre103, %.lr.ph91 ] ; 2 uses
  %.090 = phi ptr [ %i.fb, %putbyte.exit77 ], [ %i.co, %.lr.ph91 ] ; 2 uses
  %.05589 = phi ptr [ %i.ex, %putbyte.exit77 ], [ %i.cr, %.lr.ph91 ] ; 2 uses
  %.05688 = phi ptr [ %i.ff, %putbyte.exit77 ], [ %i.cu, %.lr.ph91 ] ; 2 uses
  %.05887 = phi i32 [ %i.gu, %putbyte.exit77 ], [ 0, %.lr.ph91 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.05589, i64 1
  %i.ey = load i8, ptr %.05589, align 1, !tbaa !13
  %i.ez = zext i8 %i.ey to i32
  %i.fa = add nsw i32 %i.ez, -128                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.090, i64 1
  %i.fc = load i8, ptr %.090, align 1, !tbaa !13
  %i.fd = zext i8 %i.fc to i32
  %i.fe = add nsw i32 %i.fd, -128                 ; 2 uses
end_hunk_0
