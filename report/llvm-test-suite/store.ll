Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/store?download=true
inline.NumInlined: 24
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@store_one:bb.a
  %i.cc = icmp eq ptr %i.cb, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.cc, label %bb.s, label %putbyte.exit35.i

bb.s:                                             ; preds = %putbyte.exit.i
  %i.cd = load i32, ptr @outfile, align 4, !tbaa !7
  %i.ce = tail call i64 @write(i32 noundef %i.cd, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit35.i

putbyte.exit35.i:                                 ; preds = %bb.s, %putbyte.exit.i
  %i.cf = phi ptr [ %i.cb, %putbyte.exit.i ], [ @obfr, %bb.s ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.041.i, i64 1
  %i.ch = load i8, ptr %.041.i, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 3 uses
  store ptr %i.ci, ptr @optr, align 8, !tbaa !10
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !13
  %i.cj = icmp eq ptr %i.ci, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.cj, label %bb.t, label %putbyte.exit36.i

bb.t:                                             ; preds = %putbyte.exit35.i
  %i.ck = load i32, ptr @outfile, align 4, !tbaa !7
  %i.cl = tail call i64 @write(i32 noundef %i.ck, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit36.i

putbyte.exit36.i:                                 ; preds = %bb.t, %putbyte.exit35.i
  %i.cm = phi ptr [ %i.ci, %putbyte.exit35.i ], [ @obfr, %bb.t ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02739.i, i64 2
  %i.co = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 3 uses
  store ptr %i.cp, ptr @optr, align 8, !tbaa !10
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !13
  %i.cq = icmp eq ptr %i.cp, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.cq, label %bb.u, label %putbyte.exit37.i

bb.u:                                             ; preds = %putbyte.exit36.i
  %i.cr = load i32, ptr @outfile, align 4, !tbaa !7
  %i.cs = tail call i64 @write(i32 noundef %i.cr, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  br label %putbyte.exit37.i

putbyte.exit37.i:                                 ; preds = %bb.u, %putbyte.exit36.i
  %i.ct = phi ptr [ %i.cp, %putbyte.exit36.i ], [ @obfr, %bb.u ] ; 2 uses
  %i.cu = add nuw nsw i32 %.02838.i, 2            ; 2 uses
  %i.cv = load i32, ptr @horizontal_size, align 4, !tbaa !7 ; 2 uses
  %i.cw = icmp slt i32 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %putbyte.exit37.i, %.lr.ph44.split.i
  %i.cx = phi ptr [ %i.bd, %.lr.ph44.split.i ], [ %i.ct, %putbyte.exit37.i ] ; 3 uses
  %i.cy = phi i32 [ %i.be, %.lr.ph44.split.i ], [ %i.cv, %putbyte.exit37.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge45.i, label %.lr.ph44.split.i, !llvm.loop !17

._crit_edge45.thread.i:                           ; preds = %.lr.ph44.i, %bb.q
  %.pre5167.i = load i32, ptr @outfile, align 4, !tbaa !7
  br label %store_sif.exit

._crit_edge45.i:                                  ; preds = %._crit_edge.i
  %.not34.i = icmp eq ptr %i.cx, @obfr
  %.pre51.i = load i32, ptr @outfile, align 4, !tbaa !7 ; 2 uses
  br i1 %.not34.i, label %store_sif.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge45.i
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cz, ptrtoint (ptr @obfr to i64)
  %i.db = tail call i64 @write(i32 noundef %.pre51.i, ptr noundef nonnull @obfr, i64 noundef %i.da) #10 ; 0 uses
  %.pre50.i = load i32, ptr @outfile, align 4, !tbaa !7
  br label %store_sif.exit

store_sif.exit:                                   ; preds = %._crit_edge45.thread.i, %._crit_edge45.i, %bb.v
  %i.dc = phi i32 [ %.pre50.i, %bb.v ], [ %.pre51.i, %._crit_edge45.i ], [ %.pre5167.i, %._crit_edge45.thread.i ]
  %i.dd = tail call i32 @close(i32 noundef %i.dc) #10 ; 0 uses
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
define internal fastcc void @store_ppm_tga(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @chroma_format, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  store ptr %i.e, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  store ptr %i.g, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.b, 1
  %.pre103 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7 ; 3 uses
  %.pre105 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7 ; 3 uses
  br i1 %i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = ashr i32 %.pre103, 1
  %i.k = mul nsw i32 %i.j, %.pre105
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #11 ; 2 uses
  store ptr %i.m, ptr @store_ppm_tga.u422, align 8, !tbaa !10
  %.not62 = icmp eq ptr %i.m, null
  br i1 %.not62, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %.pre = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7 ; 2 uses
  %.pre101 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7 ; 2 uses
  %.pre114 = ashr i32 %.pre, 1
  %.pre115 = mul nsw i32 %.pre114, %.pre101
  %.pre117 = sext i32 %.pre115 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi118 = phi i64 [ %.pre117, %bb.f ], [ %i.l, %bb.e ]
  %i.n = phi i32 [ %.pre101, %bb.f ], [ %.pre105, %bb.e ]
  %i.o = phi i32 [ %.pre, %bb.f ], [ %.pre103, %bb.e ]
  %i.p = tail call noalias ptr @malloc(i64 noundef %.pre-phi118) #11 ; 2 uses
  store ptr %i.p, ptr @store_ppm_tga.v422, align 8, !tbaa !10
  %.not63 = icmp eq ptr %i.p, null
  br i1 %.not63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %.pre102 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %.pre104 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.q = phi i32 [ %i.n, %bb.g ], [ %.pre104, %bb.h ], [ %.pre105, %bb.d ]
  %i.r = phi i32 [ %i.o, %bb.g ], [ %.pre102, %bb.h ], [ %.pre103, %bb.d ]
  %i.s = mul nsw i32 %i.q, %i.r
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #11 ; 2 uses
  store ptr %i.u, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  %.not64 = icmp eq ptr %i.u, null
  br i1 %.not64, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %.pre106 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %.pre107 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !7
  %.pre119 = mul nsw i32 %.pre107, %.pre106
  %.pre121 = sext i32 %.pre119 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi122 = phi i64 [ %.pre121, %bb.j ], [ %i.t, %bb.i ]
  %i.v = tail call noalias ptr @malloc(i64 noundef %.pre-phi122) #11 ; 2 uses
  store ptr %i.v, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  %.not65 = icmp eq ptr %i.v, null
  br i1 %.not65, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.l, %bb.k
  %.pr = load i32, ptr @chroma_format, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %bb.c
  %i.w = phi i32 [ %.pr, %thread-pre-split ], [ %i.b, %bb.c ]
  %i.x = icmp eq i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr @store_ppm_tga.u422, align 8, !tbaa !10 ; 2 uses
  tail call fastcc void @conv420to422(ptr noundef %i.z, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ad = load ptr, ptr @store_ppm_tga.v422, align 8, !tbaa !10 ; 2 uses
  tail call fastcc void @conv420to422(ptr noundef %i.ac, ptr noundef %i.ad)
  %i.ae = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  tail call fastcc void @conv422to444(ptr noundef %i.ab, ptr noundef %i.ae)
  %6 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  tail call fastcc void @conv422to444(ptr noundef %i.ad, ptr noundef %6)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.af = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  tail call fastcc void @conv422to444(ptr noundef %i.z, ptr noundef %i.af)
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !10
  %7 = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  tail call fastcc void @conv422to444(ptr noundef %i.ag, ptr noundef %7)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.b
  %.not66 = icmp eq i32 %5, 0                     ; 3 uses
  %i.ah = select i1 %.not66, ptr @.str.9, ptr @.str.8
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %endptr = getelementptr inbounds i8, ptr %0, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) %i.ah, i64 5, i1 false)
  %i.ai = load i32, ptr @Quiet_Flag, align 4, !tbaa !7
  %.not67 = icmp eq i32 %i.ai, 0
  br i1 %.not67, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.ak = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 47) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = select i1 %.not.i, ptr %0, ptr %i.al
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.am) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 577, i32 noundef 438) #10 ; 2 uses
  store i32 %i.ao, ptr @outfile, align 4, !tbaa !7
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aq = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #10 ; 0 uses
  tail call void @Error(ptr noundef nonnull @Error_Text) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  br i1 %.not66, label %bb.u, label %putbyte.exit72

putbyte.exit72:                                   ; preds = %bb.t
  store <8 x i8> <i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0>, ptr @obfr, align 16, !tbaa !13
  store <4 x i8> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 8), align 8, !tbaa !13
  %.pre108 = load i32, ptr @horizontal_size, align 4, !tbaa !7 ; 2 uses
  %i.ar = trunc i32 %.pre108 to i8
  store i8 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 12), align 4, !tbaa !13
  %i.as = lshr i32 %.pre108, 8
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 13), align 1, !tbaa !13
  %i.au = trunc i32 %4 to i8
  store i8 %i.au, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 14), align 2, !tbaa !13
  %i.av = lshr i32 %4, 8
  %i.aw = trunc i32 %i.av to i8
  store i8 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 15), align 1, !tbaa !13
  store i8 24, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 16), align 16, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 18), ptr @optr, align 8, !tbaa !10
  store i8 32, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 17), align 1, !tbaa !13
  br label %putbyte.exit73

bb.u:                                             ; preds = %bb.t
  %i.ax = load i32, ptr @horizontal_size, align 4, !tbaa !7
  %i.ay = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.ax, i32 noundef %4) #10 ; 0 uses
  %i.az = load i8, ptr %i.a, align 16, !tbaa !13  ; 2 uses
  %.not6884 = icmp eq i8 %i.az, 0
  br i1 %.not6884, label %putbyte.exit73, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %.pre109 = load ptr, ptr @optr, align 8, !tbaa !10
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %putbyte.exit74
  %i.ba = phi ptr [ %.pre109, %.lr.ph.preheader ], [ %i.bg, %putbyte.exit74 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %putbyte.exit74 ]
  %i.bb = phi i8 [ %i.az, %.lr.ph.preheader ], [ %i.bi, %putbyte.exit74 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 3 uses
  store ptr %i.bc, ptr @optr, align 8, !tbaa !10
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !13
  %i.bd = icmp eq ptr %i.bc, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.bd, label %bb.v, label %putbyte.exit74

bb.v:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr @outfile, align 4, !tbaa !7
  %i.bf = tail call i64 @write(i32 noundef %i.be, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  store ptr @obfr, ptr @optr, align 8, !tbaa !10
  br label %putbyte.exit74

putbyte.exit74:                                   ; preds = %.lr.ph, %bb.v
  %i.bg = phi ptr [ %i.bc, %.lr.ph ], [ @obfr, %bb.v ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13  ; 2 uses
  %.not68 = icmp eq i8 %i.bi, 0
  br i1 %.not68, label %putbyte.exit73, label %.lr.ph, !llvm.loop !18

putbyte.exit73:                                   ; preds = %putbyte.exit74, %putbyte.exit72, %bb.u
  %i.bj = load i32, ptr @matrix_coefficients, align 4, !tbaa !7
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr @Inverse_Table_6_9, i64 %i.bk ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 16, !tbaa !7 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.bp = icmp sgt i32 %4, 0
  br i1 %i.bp, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %putbyte.exit73
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !7
  %i.bu = sext i32 %2 to i64                      ; 3 uses
  %factor.op.mul = sub i32 0, %i.bt               ; 2 uses
  %factor.op.mul86 = sub i32 0, %i.br             ; 2 uses
  %i.bv = load i32, ptr @horizontal_size, align 4, !tbaa !7 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph93.split.preheader, label %._crit_edge94

.lr.ph93.split.preheader:                         ; preds = %.lr.ph93
  %i.bx = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph93.split

.lr.ph93.split:                                   ; preds = %.lr.ph93.split.preheader, %._crit_edge
  %i.by = phi i32 [ %i.bv, %.lr.ph93.split.preheader ], [ %i.gm, %._crit_edge ] ; 2 uses
  %indvars.iv98 = phi i64 [ 0, %.lr.ph93.split.preheader ], [ %indvars.iv.next99, %._crit_edge ] ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %.lr.ph93.split
  %i.ca = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !10
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bu
  %i.cc = mul nsw i64 %indvars.iv98, %i.bx        ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !10
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bu
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !10
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bu
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.cc ; 2 uses
  %.pre111 = load ptr, ptr @optr, align 8, !tbaa !10 ; 2 uses
  br i1 %.not66, label %.lr.ph91.split.us, label %.lr.ph91.split

.lr.ph91.split.us:                                ; preds = %.lr.ph91, %putbyte.exit77.us
  %i.ck = phi ptr [ %i.eh, %putbyte.exit77.us ], [ %.pre111, %.lr.ph91 ] ; 2 uses
  %.090.us = phi ptr [ %i.cp, %putbyte.exit77.us ], [ %i.cd, %.lr.ph91 ] ; 2 uses
  %.05589.us = phi ptr [ %i.cl, %putbyte.exit77.us ], [ %i.cg, %.lr.ph91 ] ; 2 uses
  %.05688.us = phi ptr [ %i.ct, %putbyte.exit77.us ], [ %i.cj, %.lr.ph91 ] ; 2 uses
  %.05787.us = phi i32 [ %i.ei, %putbyte.exit77.us ], [ 0, %.lr.ph91 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.05589.us, i64 1
  %i.cm = load i8, ptr %.05589.us, align 1, !tbaa !13
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nsw i32 %i.cn, -128                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.090.us, i64 1
  %i.cq = load i8, ptr %.090.us, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, -128                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.05688.us, i64 1
  %i.cu = load i8, ptr %.05688.us, align 1, !tbaa !13
  %i.cv = zext i8 %i.cu to i32
  %i.cw = mul nuw nsw i32 %i.cv, 76309            ; 2 uses
  %i.cx = add nsw i32 %i.cw, -1220944             ; 2 uses
  %i.cy = load ptr, ptr @Clip, align 8, !tbaa !10 ; 3 uses
  %i.cz = mul nsw i32 %i.cs, %i.bm
  %i.da = add i32 %i.cz, 32768
  %i.db = add i32 %i.da, %i.cx
  %i.dc = ashr i32 %i.db, 16
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.cy, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %.neg.reass.us = mul i32 %i.co, %factor.op.mul
  %.neg81.reass.us = mul i32 %i.cs, %factor.op.mul86
  %reass.add.us = add i32 %.neg81.reass.us, %.neg.reass.us
  %i.dg = add nsw i32 %i.cw, -1188176
  %i.dh = add i32 %i.dg, %reass.add.us
  %i.di = ashr i32 %i.dh, 16
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %i.cy, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13
  %i.dm = mul nsw i32 %i.co, %i.bo
  %i.dn = add i32 %i.dm, 32786
  %i.do = add i32 %i.dn, %i.cx
  %i.dp = ashr i32 %i.do, 16
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %i.cy, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 3 uses
  store ptr %i.dt, ptr @optr, align 8, !tbaa !10
  store i8 %i.df, ptr %i.ck, align 1, !tbaa !13
  %i.du = icmp eq ptr %i.dt, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.du, label %bb.w, label %putbyte.exit78.us

bb.w:                                             ; preds = %.lr.ph91.split.us
  %i.dv = load i32, ptr @outfile, align 4, !tbaa !7
  %i.dw = tail call i64 @write(i32 noundef %i.dv, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit78.us

putbyte.exit78.us:                                ; preds = %bb.w, %.lr.ph91.split.us
  %i.dx = phi ptr [ @obfr, %bb.w ], [ %i.dt, %.lr.ph91.split.us ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 3 uses
  store ptr %i.dy, ptr @optr, align 8, !tbaa !10
  store i8 %i.dl, ptr %i.dx, align 1, !tbaa !13
  %i.dz = icmp eq ptr %i.dy, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.dz, label %bb.x, label %putbyte.exit79.us

bb.x:                                             ; preds = %putbyte.exit78.us
  %i.ea = load i32, ptr @outfile, align 4, !tbaa !7
  %i.eb = tail call i64 @write(i32 noundef %i.ea, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit79.us
end_hunk_0
