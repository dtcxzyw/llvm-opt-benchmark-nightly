inline.NumInlined: 230
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Abc_NtkDontCareSimulateBefore:bb.a
  %i.el = icmp eq i64 %index.next82, %n.vec77
  br i1 %i.el, label %middle.block83, label %vector.body78, !llvm.loop !159

middle.block83:                                   ; preds = %vector.body78
  %cmp.n84 = icmp eq i64 %n.vec77, %i.ee
  br i1 %cmp.n84, label %Abc_NtkDontCareSimulate.exit.1, label %.lr.ph.i13.i.1.preheader

.lr.ph.i13.i.1.preheader:                         ; preds = %.lr.ph.preheader.i12.i.1, %middle.block83
  %indvars.iv.i14.i.1.ph = phi i64 [ %i.ee, %.lr.ph.preheader.i12.i.1 ], [ %i.ef, %middle.block83 ]
  br label %.lr.ph.i13.i.1

.lr.ph.i13.i.1:                                   ; preds = %.lr.ph.i13.i.1.preheader, %.lr.ph.i13.i.1
  %indvars.iv.i14.i.1 = phi i64 [ %indvars.iv.next.i15.i.1, %.lr.ph.i13.i.1 ], [ %indvars.iv.i14.i.1.ph, %.lr.ph.i13.i.1.preheader ] ; 2 uses
  %indvars.iv.next.i15.i.1 = add nsw i64 %indvars.iv.i14.i.1, -1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i15.i.1 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !52
  %i.eo = xor i32 %i.en, -1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !52
  %i.ep = icmp samesign ugt i64 %indvars.iv.i14.i.1, 1
  br i1 %i.ep, label %.lr.ph.i13.i.1, label %Abc_NtkDontCareSimulate.exit.1, !llvm.loop !160

Abc_NtkDontCareSimulate.exit.1:                   ; preds = %.lr.ph.i13.i.1, %middle.block83, %Abc_InfoCopy.exit.i.1, %bb.e
  %i.eq = load i32, ptr %i.d, align 4, !tbaa !43  ; 3 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph.preheader.i.1, label %Abc_NtkDontCareCountMintsWord.exit.1

.lr.ph.preheader.i.1:                             ; preds = %Abc_NtkDontCareSimulate.exit.1
  %wide.trip.count.i.1 = zext nneg i32 %i.eq to i64 ; 3 uses
  %min.iters.check87 = icmp ult i32 %i.eq, 8
  br i1 %min.iters.check87, label %.lr.ph.i19.1.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %.lr.ph.preheader.i.1
  %n.vec89 = and i64 %wide.trip.count.i.1, 2147483640 ; 3 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 2 uses
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph88 ], [ %i.ey, %vector.body90 ]
  %vec.phi93 = phi <4 x i32> [ zeroinitializer, %vector.ph88 ], [ %i.ez, %vector.body90 ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index91 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load94 = load <4 x i32>, ptr %i.es, align 4, !tbaa !52
  %wide.load95 = load <4 x i32>, ptr %i.et, align 4, !tbaa !52
  %i.eu = icmp ne <4 x i32> %wide.load94, zeroinitializer
  %i.ev = icmp ne <4 x i32> %wide.load95, zeroinitializer
  %i.ew = zext <4 x i1> %i.eu to <4 x i32>
  %i.ex = zext <4 x i1> %i.ev to <4 x i32>
  %i.ey = add <4 x i32> %vec.phi92, %i.ew         ; 2 uses
  %i.ez = add <4 x i32> %vec.phi93, %i.ex         ; 2 uses
  %index.next96 = add nuw i64 %index91, 8         ; 2 uses
  %i.fa = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.fa, label %middle.block97, label %vector.body90, !llvm.loop !161

middle.block97:                                   ; preds = %vector.body90
  %bin.rdx98 = add <4 x i32> %i.ez, %i.ey
  %i.fb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx98) ; 2 uses
  %cmp.n99 = icmp eq i64 %n.vec89, %wide.trip.count.i.1
  br i1 %cmp.n99, label %Abc_NtkDontCareCountMintsWord.exit.1, label %.lr.ph.i19.1.preheader

.lr.ph.i19.1.preheader:                           ; preds = %.lr.ph.preheader.i.1, %middle.block97
  %indvars.iv.i20.1.ph = phi i64 [ 0, %.lr.ph.preheader.i.1 ], [ %n.vec89, %middle.block97 ]
  %.08.i.1.ph = phi i32 [ 0, %.lr.ph.preheader.i.1 ], [ %i.fb, %middle.block97 ]
  br label %.lr.ph.i19.1

.lr.ph.i19.1:                                     ; preds = %.lr.ph.i19.1.preheader, %.lr.ph.i19.1
  %indvars.iv.i20.1 = phi i64 [ %indvars.iv.next.i22.1, %.lr.ph.i19.1 ], [ %indvars.iv.i20.1.ph, %.lr.ph.i19.1.preheader ] ; 2 uses
  %.08.i.1 = phi i32 [ %spec.select.i.1, %.lr.ph.i19.1 ], [ %.08.i.1.ph, %.lr.ph.i19.1.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i20.1
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !52
  %.not.i21.1 = icmp ne i32 %i.fd, 0
  %i.fe = zext i1 %.not.i21.1 to i32
  %spec.select.i.1 = add nuw nsw i32 %.08.i.1, %i.fe ; 2 uses
  %indvars.iv.next.i22.1 = add nuw nsw i64 %indvars.iv.i20.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i22.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %Abc_NtkDontCareCountMintsWord.exit.1, label %.lr.ph.i19.1, !llvm.loop !162

Abc_NtkDontCareCountMintsWord.exit.1:             ; preds = %.lr.ph.i19.1, %middle.block97, %Abc_NtkDontCareSimulate.exit.1
  %.0.lcssa.i.1 = phi i32 [ 0, %Abc_NtkDontCareSimulate.exit.1 ], [ %i.fb, %middle.block97 ], [ %spec.select.i.1, %.lr.ph.i19.1 ]
  %i.ff = add nsw i32 %.0.lcssa.i.1, %.0.lcssa.i32
  %i.fg = sdiv i32 %i.c, %i.e
  %i.fh = mul nsw i32 %i.fg, %i.ff
  %i.fi = sdiv i32 %i.fh, 2
  ret i32 %i.fi
}

; Function Attrs: nounwind uwtable
define i32 @Abc_NtkDontCareCompute(ptr noundef initializes((24, 40)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %14 = alloca %struct.timespec, align 8          ; 5 uses
  %15 = alloca %struct.timespec, align 8          ; 5 uses
  %16 = alloca %struct.timespec, align 8          ; 5 uses
  %17 = alloca %struct.timespec, align 8          ; 5 uses
  %18 = alloca %struct.timespec, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %18) #22
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %18, align 8, !tbaa !59
  %.neg134 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61
  %.neg133 = sdiv i64 %i.f, -1000
  %.neg135 = add i64 %.neg133, %.neg134
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg136 = phi i64 [ %.neg135, %bb.b ], [ 1, %bb.a ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !66
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %2, ptr %i.j, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.k, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.l = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %17) #22
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %Abc_Clock.exit83, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.n = load i64, ptr %17, align 8, !tbaa !59
  %.neg119 = mul i64 %i.n, -1000000
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !61
  %.neg = sdiv i64 %i.p, -1000
  %.neg120 = add i64 %.neg, %.neg119
  br label %Abc_Clock.exit83

Abc_Clock.exit83:                                 ; preds = %Abc_Clock.exit, %bb.c
  %.0.i82.neg = phi i64 [ %.neg120, %bb.c ], [ 1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.q = call i32 @Abc_NtkDontCareWindow(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.r = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %16) #22
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %Abc_Clock.exit85, label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit83
  %i.t = load i64, ptr %16, align 8, !tbaa !59
  %i.u = mul nsw i64 %i.t, 1000000
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !61
  %i.x = sdiv i64 %i.w, 1000
  %i.y = add nsw i64 %i.x, %i.u
  br label %Abc_Clock.exit85

Abc_Clock.exit85:                                 ; preds = %Abc_Clock.exit83, %bb.d
  %.0.i84 = phi i64 [ %i.y, %bb.d ], [ -1, %Abc_Clock.exit83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.z = add i64 %.0.i84, %.0.i82.neg
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !71
  %i.ac = add nsw i64 %i.z, %i.ab
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !71
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %Abc_Clock.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ad = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %15) #22
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Abc_Clock.exit87, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %15, align 8, !tbaa !59
  %i.ag = mul nsw i64 %i.af, 1000000
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !61
  %i.aj = sdiv i64 %i.ai, 1000
  %i.ak = add nsw i64 %i.aj, %i.ag
  br label %Abc_Clock.exit87

Abc_Clock.exit87:                                 ; preds = %bb.e, %bb.f
  %.0.i86 = phi i64 [ %i.ak, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.al = add i64 %.0.i86, %.0.i.neg136
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !77
  %i.ao = add nsw i64 %i.al, %i.an
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !43
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 2
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 -1, i64 %i.as, i1 false)
  br label %bb.ak

bb.g:                                             ; preds = %Abc_Clock.exit85
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21
  %.not69 = icmp eq i32 %i.au, 0
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !87
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.aw) ; 0 uses
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %.val77 = load i32, ptr %i.az, align 4, !tbaa !23
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %.val77) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %.val76 = load i32, ptr %i.bd, align 4, !tbaa !23
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.val76) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %.val = load i32, ptr %i.bh, align 4, !tbaa !23
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %.val) ; 0 uses
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.bk = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %14) #22
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %Abc_Clock.exit89, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = load i64, ptr %14, align 8, !tbaa !59
  %.neg122 = mul i64 %i.bm, -1000000
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !61
  %.neg121 = sdiv i64 %i.bo, -1000
  %.neg123 = add i64 %.neg121, %.neg122
  br label %Abc_Clock.exit89

Abc_Clock.exit89:                                 ; preds = %bb.i, %bb.j
  %.0.i88.neg = phi i64 [ %.neg123, %bb.j ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.bp = call i32 @Abc_NtkDontCareTransfer(ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.bq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %13) #22
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %Abc_Clock.exit91, label %bb.k

bb.k:                                             ; preds = %Abc_Clock.exit89
  %i.bs = load i64, ptr %13, align 8, !tbaa !59
  %i.bt = mul nsw i64 %i.bs, 1000000
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !61
  %i.bw = sdiv i64 %i.bv, 1000
  %i.bx = add nsw i64 %i.bw, %i.bt
  br label %Abc_Clock.exit91

Abc_Clock.exit91:                                 ; preds = %Abc_Clock.exit89, %bb.k
  %.0.i90 = phi i64 [ %i.bx, %bb.k ], [ -1, %Abc_Clock.exit89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.by = add i64 %.0.i90, %.0.i88.neg
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !72
  %i.cb = add nsw i64 %i.by, %i.ca
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.cc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %12) #22
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %Abc_Clock.exit93, label %bb.l

bb.l:                                             ; preds = %Abc_Clock.exit91
  %i.ce = load i64, ptr %12, align 8, !tbaa !59
  %.neg125 = mul i64 %i.ce, -1000000
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !61
  %.neg124 = sdiv i64 %i.cg, -1000
  %.neg126 = add i64 %.neg124, %.neg125
  br label %Abc_Clock.exit93

Abc_Clock.exit93:                                 ; preds = %Abc_Clock.exit91, %bb.l
  %.0.i92.neg = phi i64 [ %.neg126, %bb.l ], [ 1, %Abc_Clock.exit91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ch = call i32 @Abc_NtkDontCareSimulateBefore(ptr noundef nonnull %0, ptr noundef %3) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ci = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #22
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %Abc_Clock.exit95, label %bb.m

bb.m:                                             ; preds = %Abc_Clock.exit93
  %i.ck = load i64, ptr %11, align 8, !tbaa !59
  %i.cl = mul nsw i64 %i.ck, 1000000
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !61
  %i.co = sdiv i64 %i.cn, 1000
  %i.cp = add nsw i64 %i.co, %i.cl
  br label %Abc_Clock.exit95

Abc_Clock.exit95:                                 ; preds = %Abc_Clock.exit93, %bb.m
  %.0.i94 = phi i64 [ %i.cp, %bb.m ], [ -1, %Abc_Clock.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.cq = add i64 %.0.i94, %.0.i92.neg
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !73
  %i.ct = add nsw i64 %i.cq, %i.cs
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !73
  %i.cu = load i32, ptr %i.at, align 4, !tbaa !21
  %.not70 = icmp eq i32 %i.cu, 0
  br i1 %.not70, label %bb.o, label %bb.n

bb.n:                                             ; preds = %Abc_Clock.exit95
  %i.cv = getelementptr i8, ptr %0, i64 56
  %.val80 = load i32, ptr %i.cv, align 8, !tbaa !32
  %i.cw = getelementptr i8, ptr %0, i64 60
  %.val81 = load i32, ptr %i.cw, align 4, !tbaa !33
  %i.cx = xor i32 %.val80, -1
  %i.cy = add i32 %.val81, %i.cx
  %i.cz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.cy) ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.db = load i32, ptr %i.da, align 8, !tbaa !44 ; 2 uses
  %i.dc = sub nsw i32 %i.db, %i.ch
  %i.dd = sitofp i32 %i.dc to double
  %i.de = fmul nnan double %i.dd, 1.000000e+02
  %i.df = sitofp i32 %i.db to double
  %i.dg = fdiv double %i.de, %i.df
  %i.dh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.dg) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %Abc_Clock.exit95
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %i.dk = sub nsw i32 %i.dj, %i.ch
  %i.dl = sitofp i32 %i.dk to double
  %i.dm = fmul nnan double %i.dl, 1.000000e+02
  %i.dn = sitofp i32 %i.dj to double
  %i.do = fdiv double %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !22
  %i.dr = sitofp i32 %i.dq to double
  %i.ds = fcmp olt double %i.do, %i.dr
  br i1 %i.ds, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.dt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #22
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %Abc_Clock.exit97, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = load i64, ptr %10, align 8, !tbaa !59
  %i.dw = mul nsw i64 %i.dv, 1000000
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !61
  %i.dz = sdiv i64 %i.dy, 1000
  %i.ea = add nsw i64 %i.dz, %i.dw
  br label %Abc_Clock.exit97

Abc_Clock.exit97:                                 ; preds = %bb.p, %bb.q
  %.0.i96 = phi i64 [ %i.ea, %bb.q ], [ -1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.eb = add i64 %.0.i96, %.0.i.neg136
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !77
  %i.ee = add nsw i64 %i.eb, %i.ed
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !77
  %i.ef = load i32, ptr %i.at, align 4, !tbaa !21
  %.not74 = icmp eq i32 %i.ef, 0
  br i1 %.not74, label %bb.s, label %bb.r

bb.r:                                             ; preds = %Abc_Clock.exit97
  %puts75 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %Abc_Clock.exit97
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !43
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 2
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 -1, i64 %i.ej, i1 false)
  br label %bb.ak

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ek = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #22
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %Abc_Clock.exit99, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.em = load i64, ptr %9, align 8, !tbaa !59
  %.neg128 = mul i64 %i.em, -1000000
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !61
  %.neg127 = sdiv i64 %i.eo, -1000
  %.neg129 = add i64 %.neg127, %.neg128
  br label %Abc_Clock.exit99

Abc_Clock.exit99:                                 ; preds = %bb.t, %bb.u
  %.0.i98.neg = phi i64 [ %.neg129, %bb.u ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 0, ptr %i.ep, align 4, !tbaa !126
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !29
  %i.es = getelementptr i8, ptr %i.er, i64 4
  %.val20.i = load i32, ptr %i.es, align 4, !tbaa !23
  %i.et = icmp sgt i32 %.val20.i, 0
  br i1 %i.et, label %.lr.ph.i, label %Abc_NtkDontCareQuantify.exit

.lr.ph.i:                                         ; preds = %Abc_Clock.exit99
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ew = getelementptr i8, ptr %0, i64 60
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.lr.ph.i
  %.021.i = phi i32 [ 0, %.lr.ph.i ], [ %i.fq, %bb.x ] ; 2 uses
  %i.ex = load i16, ptr %i.eu, align 2, !tbaa !125
  %i.ey = add i16 %i.ex, 1
  store i16 %i.ey, ptr %i.eu, align 2, !tbaa !125
  %i.ez = load i16, ptr %i.ev, align 8, !tbaa !58
  %i.fa = and i16 %i.ez, -2
  %i.fb = shl nuw i32 1, %.021.i
  %i.fc = call i32 @Abc_NtkDontCareCofactors_rec(ptr noundef nonnull %0, i16 noundef zeroext %i.fa, i32 noundef %i.fb) ; 2 uses
  %i.fd = load i32, ptr %i.ep, align 4, !tbaa !126
  %.not.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fe = trunc i32 %i.fc to i16
  %i.ff = load i16, ptr %i.ev, align 8, !tbaa !58
  %i.fg = and i16 %i.ff, 1                        ; 2 uses
  %i.fh = lshr i32 %i.fc, 16
  %i.fi = trunc nuw i32 %i.fh to i16
  %i.fj = xor i16 %i.fg, %i.fe
  %i.fk = xor i16 %i.fj, 1
  %i.fl = xor i16 %i.fg, %i.fi
  %i.fm = xor i16 %i.fl, 1
  %i.fn = call fastcc zeroext i16 @Odc_And(ptr noundef nonnull %0, i16 noundef zeroext %i.fk, i16 noundef zeroext %i.fm)
  %i.fo = xor i16 %i.fn, 1
  store i16 %i.fo, ptr %i.ev, align 8, !tbaa !58
  %.val19.i = load i32, ptr %i.ew, align 4, !tbaa !33
  %i.fp = icmp sgt i32 %.val19.i, 16384
  br i1 %i.fp, label %Abc_NtkDontCareQuantify.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fq = add nuw nsw i32 %.021.i, 1              ; 2 uses
  %i.fr = load ptr, ptr %i.eq, align 8, !tbaa !29
  %i.fs = getelementptr i8, ptr %i.fr, i64 4
  %.val.i = load i32, ptr %i.fs, align 4, !tbaa !23
  %i.ft = icmp slt i32 %i.fq, %.val.i
  br i1 %i.ft, label %bb.v, label %Abc_NtkDontCareQuantify.exit, !llvm.loop !128

Abc_NtkDontCareQuantify.exit:                     ; preds = %bb.w, %bb.x, %Abc_Clock.exit99
  %.not71 = phi i1 [ false, %Abc_Clock.exit99 ], [ true, %bb.w ], [ false, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.fu = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #22
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %Abc_Clock.exit101, label %bb.y

bb.y:                                             ; preds = %Abc_NtkDontCareQuantify.exit
  %i.fw = load i64, ptr %8, align 8, !tbaa !59
  %i.fx = mul nsw i64 %i.fw, 1000000
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !61
  %i.ga = sdiv i64 %i.fz, 1000
  %i.gb = add nsw i64 %i.ga, %i.fx
  br label %Abc_Clock.exit101

Abc_Clock.exit101:                                ; preds = %Abc_NtkDontCareQuantify.exit, %bb.y
  %.0.i100 = phi i64 [ %i.gb, %bb.y ], [ -1, %Abc_NtkDontCareQuantify.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.gc = add i64 %.0.i100, %.0.i98.neg
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !74
  %i.gf = add nsw i64 %i.gc, %i.ge
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !74
  br i1 %.not71, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %Abc_Clock.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.gg = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #22
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %Abc_Clock.exit103, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gi = load i64, ptr %7, align 8, !tbaa !59
  %i.gj = mul nsw i64 %i.gi, 1000000
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !61
  %i.gm = sdiv i64 %i.gl, 1000
  %i.gn = add nsw i64 %i.gm, %i.gj
  br label %Abc_Clock.exit103

Abc_Clock.exit103:                                ; preds = %bb.z, %bb.aa
  %.0.i102 = phi i64 [ %i.gn, %bb.aa ], [ -1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.go = add i64 %.0.i102, %.0.i.neg136
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !77
  %i.gr = add nsw i64 %i.go, %i.gq
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !77
  %i.gs = load i32, ptr %i.at, align 4, !tbaa !21
  %.not72 = icmp eq i32 %i.gs, 0
  br i1 %.not72, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %Abc_Clock.exit103
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %Abc_Clock.exit103
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !43
  %i.gv = sext i32 %i.gu to i64
  %i.gw = shl nsw i64 %i.gv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 -1, i64 %i.gw, i1 false)
  br label %bb.ak

bb.ad:                                            ; preds = %Abc_Clock.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.gx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #22
  %i.gy = icmp slt i32 %i.gx, 0
  br i1 %i.gy, label %Abc_Clock.exit105, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gz = load i64, ptr %6, align 8, !tbaa !59
  %.neg131 = mul i64 %i.gz, -1000000
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !61
  %.neg130 = sdiv i64 %i.hb, -1000
  %.neg132 = add i64 %.neg130, %.neg131
  br label %Abc_Clock.exit105

Abc_Clock.exit105:                                ; preds = %bb.ad, %bb.ae
  %.0.i104.neg = phi i64 [ %.neg132, %bb.ae ], [ 1, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.hc = load i32, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %.lr.ph.i106, label %Abc_NtkDontCareSimulateSetElem.exit

.lr.ph.i106:                                      ; preds = %Abc_Clock.exit105
  %i.he = getelementptr i8, ptr %0, i64 120
  %.val10.i = load ptr, ptr %i.he, align 8, !tbaa !48
  %i.hf = getelementptr i8, ptr %.val10.i, i64 8
  %.val10.val.i = load ptr, ptr %i.hf, align 8, !tbaa !27
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !51
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  %.val.i107 = load ptr, ptr %i.hi, align 8, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !43
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph.split.i, label %Abc_NtkDontCareSimulateSetElem.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i106, %Abc_InfoCopy.exit.i
  %i.hm = phi i32 [ %i.im, %Abc_InfoCopy.exit.i ], [ %i.hc, %.lr.ph.i106 ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Abc_InfoCopy.exit.i ], [ 0, %.lr.ph.i106 ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.hn = and i64 %indvars.iv.next.i, 32767
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val10.val.i, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !45 ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.val.i107, i64 %indvars.iv.i
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !45 ; 3 uses
  %i.hs = load i32, ptr %i.hj, align 4, !tbaa !43 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph.preheader.i.i, label %Abc_InfoCopy.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.split.i
  %i.hu = ptrtoaddr ptr %i.hr to i64
  %i.hv = ptrtoaddr ptr %i.hp to i64
  %i.hw = zext nneg i32 %i.hs to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.hs, 8
  %i.hx = sub i64 %i.hv, %i.hu
  %diff.check = icmp ugt i64 %i.hx, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.hw, 2147483640              ; 2 uses
  %i.hy = and i64 %i.hw, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hz = xor i64 %index, -1
  %i.ia = add i64 %i.hz, %i.hw                    ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -12
  %i.id = getelementptr inbounds i8, ptr %i.ib, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ic, align 4, !tbaa !52
  %wide.load142 = load <4 x i32>, ptr %i.id, align 4, !tbaa !52
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -12
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 -28
  store <4 x i32> %wide.load, ptr %i.if, align 4, !tbaa !52
  store <4 x i32> %wide.load142, ptr %i.ig, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.hw
  br i1 %cmp.n, label %Abc_InfoCopy.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.hw, %.lr.ph.preheader.i.i ], [ %i.hy, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.next.i.i
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !52
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.next.i.i
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !52
  %i.il = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.il, label %.lr.ph.i.i, label %Abc_InfoCopy.exit.loopexit.i, !llvm.loop !164

Abc_InfoCopy.exit.loopexit.i:                     ; preds = %.lr.ph.i.i, %middle.block
  %.pre.i = load i32, ptr %0, align 8, !tbaa !8
  br label %Abc_InfoCopy.exit.i

Abc_InfoCopy.exit.i:                              ; preds = %Abc_InfoCopy.exit.loopexit.i, %.lr.ph.split.i
  %i.im = phi i32 [ %.pre.i, %Abc_InfoCopy.exit.loopexit.i ], [ %i.hm, %.lr.ph.split.i ] ; 2 uses
  %i.in = sext i32 %i.im to i64
  %i.io = icmp slt i64 %indvars.iv.next.i, %i.in
  br i1 %i.io, label %.lr.ph.split.i, label %Abc_NtkDontCareSimulateSetElem.exit, !llvm.loop !135

Abc_NtkDontCareSimulateSetElem.exit:              ; preds = %Abc_InfoCopy.exit.i, %Abc_Clock.exit105, %.lr.ph.i106
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !125
  %i.ir = add i16 %i.iq, 1
  store i16 %i.ir, ptr %i.ip, align 2, !tbaa !125
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.it = load i16, ptr %i.is, align 8, !tbaa !58
  %i.iu = and i16 %i.it, -2
  call void @Abc_NtkDontCareSimulate_rec(ptr noundef nonnull %0, i16 noundef zeroext %i.iu)
  %i.iv = load i16, ptr %i.is, align 8, !tbaa !58 ; 2 uses
  %i.iw = getelementptr i8, ptr %0, i64 120
  %.val.i108 = load ptr, ptr %i.iw, align 8, !tbaa !48
  %i.ix = getelementptr i8, ptr %.val.i108, i64 8
  %.val.val.i = load ptr, ptr %i.ix, align 8, !tbaa !27
  %i.iy = lshr i16 %i.iv, 1
  %i.iz = zext nneg i16 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !45 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !43 ; 3 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph.preheader.i.i111, label %Abc_InfoCopy.exit.i109

.lr.ph.preheader.i.i111:                          ; preds = %Abc_NtkDontCareSimulateSetElem.exit
  %i.jf = ptrtoaddr ptr %i.jb to i64
  %i.jg = zext nneg i32 %i.jd to i64              ; 5 uses
  %min.iters.check146 = icmp ult i32 %i.jd, 8
  %i.jh = sub i64 %i.a, %i.jf
  %diff.check144 = icmp ugt i64 %i.jh, -32
  %or.cond183 = select i1 %min.iters.check146, i1 true, i1 %diff.check144
  br i1 %or.cond183, label %.lr.ph.i.i112.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph.preheader.i.i111
  %n.vec148 = and i64 %i.jg, 2147483640           ; 2 uses
  %i.ji = and i64 %i.jg, 7
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next153, %vector.body149 ] ; 2 uses
  %i.jj = xor i64 %index150, -1
  %i.jk = add i64 %i.jj, %i.jg                    ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -12
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 -28
  %wide.load151 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !52
  %wide.load152 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !52
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jk ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -12
  %i.jq = getelementptr inbounds i8, ptr %i.jo, i64 -28
  store <4 x i32> %wide.load151, ptr %i.jp, align 4, !tbaa !52
  store <4 x i32> %wide.load152, ptr %i.jq, align 4, !tbaa !52
  %index.next153 = add nuw i64 %index150, 8       ; 2 uses
  %i.jr = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.jr, label %middle.block154, label %vector.body149, !llvm.loop !165

middle.block154:                                  ; preds = %vector.body149
  %cmp.n155 = icmp eq i64 %n.vec148, %i.jg
  br i1 %cmp.n155, label %Abc_InfoCopy.exit.i109, label %.lr.ph.i.i112.preheader

.lr.ph.i.i112.preheader:                          ; preds = %.lr.ph.preheader.i.i111, %middle.block154
  %indvars.iv.i.i113.ph = phi i64 [ %i.jg, %.lr.ph.preheader.i.i111 ], [ %i.ji, %middle.block154 ]
  br label %.lr.ph.i.i112

.lr.ph.i.i112:                                    ; preds = %.lr.ph.i.i112.preheader, %.lr.ph.i.i112
  %indvars.iv.i.i113 = phi i64 [ %indvars.iv.next.i.i114, %.lr.ph.i.i112 ], [ %indvars.iv.i.i113.ph, %.lr.ph.i.i112.preheader ] ; 2 uses
  %indvars.iv.next.i.i114 = add nsw i64 %indvars.iv.i.i113, -1 ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i114
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !52
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i.i114
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !52
  %i.jv = icmp samesign ugt i64 %indvars.iv.i.i113, 1
  br i1 %i.jv, label %.lr.ph.i.i112, label %Abc_InfoCopy.exit.i109, !llvm.loop !166

Abc_InfoCopy.exit.i109:                           ; preds = %.lr.ph.i.i112, %middle.block154, %Abc_NtkDontCareSimulateSetElem.exit
  %i.jw = and i16 %i.iv, 1
  %.not.i110 = icmp eq i16 %i.jw, 0
  br i1 %.not.i110, label %Abc_InfoNot.exit.i, label %bb.af

bb.af:                                            ; preds = %Abc_InfoCopy.exit.i109
  %i.jx = load i32, ptr %i.jc, align 4, !tbaa !43 ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %.lr.ph.preheader.i12.i, label %Abc_InfoNot.exit.i

.lr.ph.preheader.i12.i:                           ; preds = %bb.af
  %i.jz = zext nneg i32 %i.jx to i64              ; 5 uses
  %min.iters.check158 = icmp ult i32 %i.jx, 8
  br i1 %min.iters.check158, label %.lr.ph.i13.i.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph.preheader.i12.i
  %n.vec160 = and i64 %i.jz, 2147483640           ; 2 uses
  %i.ka = and i64 %i.jz, 7
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.jz
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next165, %vector.body161 ] ; 2 uses
  %i.kb = xor i64 %index162, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kb ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %gep, i64 -12 ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %gep, i64 -28 ; 2 uses
  %wide.load163 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !52
  %wide.load164 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !52
  %i.ke = xor <4 x i32> %wide.load163, splat (i32 -1)
  %i.kf = xor <4 x i32> %wide.load164, splat (i32 -1)
  store <4 x i32> %i.ke, ptr %i.kc, align 4, !tbaa !52
  store <4 x i32> %i.kf, ptr %i.kd, align 4, !tbaa !52
  %index.next165 = add nuw i64 %index162, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next165, %n.vec160
  br i1 %i.kg, label %middle.block166, label %vector.body161, !llvm.loop !167

middle.block166:                                  ; preds = %vector.body161
  %cmp.n167 = icmp eq i64 %n.vec160, %i.jz
  br i1 %cmp.n167, label %Abc_InfoNot.exit.i, label %.lr.ph.i13.i.preheader

.lr.ph.i13.i.preheader:                           ; preds = %.lr.ph.preheader.i12.i, %middle.block166
  %indvars.iv.i14.i.ph = phi i64 [ %i.jz, %.lr.ph.preheader.i12.i ], [ %i.ka, %middle.block166 ]
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i.preheader, %.lr.ph.i13.i
  %indvars.iv.i14.i = phi i64 [ %indvars.iv.next.i15.i, %.lr.ph.i13.i ], [ %indvars.iv.i14.i.ph, %.lr.ph.i13.i.preheader ] ; 2 uses
  %indvars.iv.next.i15.i = add nsw i64 %indvars.iv.i14.i, -1 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i15.i ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !52
  %i.kj = xor i32 %i.ki, -1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !52
  %i.kk = icmp samesign ugt i64 %indvars.iv.i14.i, 1
  br i1 %i.kk, label %.lr.ph.i13.i, label %Abc_InfoNot.exit.i, !llvm.loop !168

Abc_InfoNot.exit.i:                               ; preds = %.lr.ph.i13.i, %middle.block166, %bb.af, %Abc_InfoCopy.exit.i109
  %i.kl = load i32, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.km = icmp slt i32 %i.kl, 6
  %i.kn = add nsw i32 %i.kl, -5
  %i.ko = shl nuw i32 1, %i.kn
  %spec.select.i.i = select i1 %i.km, i32 1, i32 %i.ko ; 3 uses
  %i.kp = icmp sgt i32 %spec.select.i.i, 0
  br i1 %i.kp, label %select.unfold.preheader.i.i, label %Abc_NtkDontCareSimulate.exit

select.unfold.preheader.i.i:                      ; preds = %Abc_InfoNot.exit.i
  %i.kq = zext nneg i32 %spec.select.i.i to i64   ; 3 uses
  %min.iters.check170 = icmp ult i32 %spec.select.i.i, 8
  br i1 %min.iters.check170, label %select.unfold.i.i, label %vector.ph171

vector.ph171:                                     ; preds = %select.unfold.preheader.i.i
  %n.vec172 = and i64 %i.kq, 2147483640
  %invariant.gep188 = getelementptr [4 x i8], ptr %3, i64 %i.kq
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph171 ], [ %i.ky, %vector.body173 ]
  %vec.phi175 = phi <4 x i32> [ zeroinitializer, %vector.ph171 ], [ %i.kz, %vector.body173 ]
  %i.kr = xor i64 %index174, -1
  %gep189 = getelementptr [4 x i8], ptr %invariant.gep188, i64 %i.kr ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %gep189, i64 -12
  %i.kt = getelementptr inbounds i8, ptr %gep189, i64 -28
  %wide.load176 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !52
  %wide.load177 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !52
  %i.ku = call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load176)
  %i.kv = shufflevector <4 x i32> %i.ku, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kw = call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load177)
  %i.kx = shufflevector <4 x i32> %i.kw, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ky = add <4 x i32> %i.kv, %vec.phi           ; 2 uses
  %i.kz = add <4 x i32> %i.kx, %vec.phi175        ; 2 uses
  %index.next179 = add nuw i64 %index174, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.la, label %middle.block180, label %vector.body173, !llvm.loop !169

middle.block180:                                  ; preds = %vector.body173
  %bin.rdx = add <4 x i32> %i.kz, %i.ky
  %i.lb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %Abc_NtkDontCareSimulate.exit

select.unfold.i.i:                                ; preds = %select.unfold.preheader.i.i, %select.unfold.i.i
  %indvars.iv.i16.i = phi i64 [ %indvars.iv.next.i17.i, %select.unfold.i.i ], [ %i.kq, %select.unfold.preheader.i.i ] ; 2 uses
  %.08.i.i = phi i32 [ %i.lf, %select.unfold.i.i ], [ 0, %select.unfold.preheader.i.i ]
  %indvars.iv.next.i17.i = add nsw i64 %indvars.iv.i16.i, -1 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i17.i
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !52
  %i.le = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ld)
  %i.lf = add nuw nsw i32 %i.le, %.08.i.i         ; 2 uses
  %i.lg = icmp samesign ugt i64 %indvars.iv.i16.i, 1
  br i1 %i.lg, label %select.unfold.i.i, label %Abc_NtkDontCareSimulate.exit, !llvm.loop !170

Abc_NtkDontCareSimulate.exit:                     ; preds = %select.unfold.i.i, %middle.block180, %Abc_InfoNot.exit.i
  %.0.lcssa.i.i = phi i32 [ 0, %Abc_InfoNot.exit.i ], [ %i.lb, %middle.block180 ], [ %i.lf, %select.unfold.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.lh = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #22
  %i.li = icmp slt i32 %i.lh, 0
  br i1 %i.li, label %Abc_Clock.exit116, label %bb.ag

bb.ag:                                            ; preds = %Abc_NtkDontCareSimulate.exit
  %i.lj = load i64, ptr %5, align 8, !tbaa !59
  %i.lk = mul nsw i64 %i.lj, 1000000
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !61
  %i.ln = sdiv i64 %i.lm, 1000
  %i.lo = add nsw i64 %i.ln, %i.lk
  br label %Abc_Clock.exit116

Abc_Clock.exit116:                                ; preds = %Abc_NtkDontCareSimulate.exit, %bb.ag
  %.0.i115 = phi i64 [ %i.lo, %bb.ag ], [ -1, %Abc_NtkDontCareSimulate.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.lp = add i64 %.0.i115, %.0.i104.neg
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !75
  %i.ls = add nsw i64 %i.lp, %i.lr
  store i64 %i.ls, ptr %i.lq, align 8, !tbaa !75
  %i.lt = load i32, ptr %i.at, align 4, !tbaa !21
  %.not73 = icmp eq i32 %i.lt, 0
  br i1 %.not73, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %Abc_Clock.exit116
  %i.lu = getelementptr i8, ptr %0, i64 56
  %.val78 = load i32, ptr %i.lu, align 8, !tbaa !32
  %i.lv = getelementptr i8, ptr %0, i64 60
  %.val79 = load i32, ptr %i.lv, align 4, !tbaa !33
  %i.lw = xor i32 %.val78, -1
  %i.lx = add i32 %.val79, %i.lw
  %i.ly = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.lx) ; 0 uses
  %i.lz = load i32, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %i.ma = sub nsw i32 %i.lz, %.0.lcssa.i.i
  %i.mb = sitofp i32 %i.ma to double
  %i.mc = fmul nnan double %i.mb, 1.000000e+02
  %i.md = sitofp i32 %i.lz to double
  %i.me = fdiv double %i.mc, %i.md
  %i.mf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.me) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %Abc_Clock.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.mg = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #22
  %i.mh = icmp slt i32 %i.mg, 0
  br i1 %i.mh, label %Abc_Clock.exit118, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mi = load i64, ptr %4, align 8, !tbaa !59
  %i.mj = mul nsw i64 %i.mi, 1000000
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !61
  %i.mm = sdiv i64 %i.ml, 1000
  %i.mn = add nsw i64 %i.mm, %i.mj
  br label %Abc_Clock.exit118

Abc_Clock.exit118:                                ; preds = %bb.ai, %bb.aj
  %.0.i117 = phi i64 [ %i.mn, %bb.aj ], [ -1, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.mo = add i64 %.0.i117, %.0.i.neg136
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !76
  %i.mr = add nsw i64 %i.mo, %i.mq
  store i64 %i.mr, ptr %i.mp, align 8, !tbaa !76
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !70
  %i.mu = add nsw i32 %i.mt, 1
  store i32 %i.mu, ptr %i.ms, align 8, !tbaa !70
  %i.mv = load i32, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %i.mw = sub nsw i32 %i.mv, %.0.lcssa.i.i
  %i.mx = sitofp i32 %i.mw to double
  %i.my = fmul nnan double %i.mx, 1.000000e+02
  %i.mz = sitofp i32 %i.mv to double
  %i.na = fdiv double %i.my, %i.mz
  %i.nb = fptosi double %i.na to i32
  br label %bb.ak

bb.ak:                                            ; preds = %Abc_Clock.exit118, %bb.ac, %bb.s, %Abc_Clock.exit87
  %.sink145 = phi i64 [ 164, %Abc_Clock.exit118 ], [ 156, %bb.ac ], [ 152, %bb.s ], [ 148, %Abc_Clock.exit87 ]
  %.sink144 = phi i32 [ %i.nb, %Abc_Clock.exit118 ], [ 1, %bb.ac ], [ 1, %bb.s ], [ 1, %Abc_Clock.exit87 ]
  %.0 = phi i32 [ %.0.lcssa.i.i, %Abc_Clock.exit118 ], [ 0, %bb.ac ], [ 0, %bb.s ], [ 0, %Abc_Clock.exit87 ]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink145 ; 2 uses
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = add nsw i32 %20, %.sink144
  store i32 %21, ptr %19, align 4, !tbaa !52
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #14

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #15

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #15

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctpop.v4i32(<4 x i32>) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"Odc_Man_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !10, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !13, i64 72, !14, i64 80, !14, i64 82, !15, i64 88, !5, i64 96, !16, i64 104, !5, i64 112, !5, i64 116, !12, i64 120, !12, i64 128, !17, i64 136, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224}
!10 = !{!"p1 _ZTS10Abc_Obj_t_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!13 = !{!"p1 _ZTS10Odc_Obj_t_", !11, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!"p1 short", !11, i64 0}
!16 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!17 = !{!"p1 int", !11, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!9, !5, i64 4}
!20 = !{!9, !5, i64 8}
!21 = !{!9, !5, i64 12}
!22 = !{!9, !5, i64 16}
!23 = !{!24, !5, i64 4}
!24 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !25, i64 8}
!25 = !{!"any p2 pointer", !11, i64 0}
!26 = !{!24, !5, i64 0}
!27 = !{!24, !25, i64 8}
!28 = !{!9, !12, i64 40}
!29 = !{!9, !12, i64 48}
!30 = !{!9, !5, i64 64}
!31 = !{!9, !13, i64 72}
!32 = !{!9, !5, i64 56}
!33 = !{!9, !5, i64 60}
!34 = !{!35, !5, i64 12}
!35 = !{!"Odc_Obj_t_", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !5, i64 8, !5, i64 12}
!36 = !{!9, !5, i64 96}
!37 = !{!9, !15, i64 88}
!38 = !{!39, !5, i64 4}
!39 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !17, i64 8}
!40 = !{!39, !5, i64 0}
!41 = !{!39, !17, i64 8}
!42 = !{!9, !16, i64 104}
!43 = !{!9, !5, i64 116}
!44 = !{!9, !5, i64 112}
!45 = !{!11, !11, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!9, !12, i64 120}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!9, !12, i64 128}
!52 = !{!5, !5, i64 0}
!53 = distinct !{!53, !47}
!54 = distinct !{!54, !47}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !47}
!58 = !{!9, !14, i64 80}
!59 = !{!60, !18, i64 0}
!60 = !{!"timespec", !18, i64 0, !18, i64 8}
!61 = !{!60, !18, i64 8}
!62 = !{!14, !14, i64 0}
!63 = distinct !{!63, !47}
!64 = distinct !{!64, !50}
!65 = !{!9, !18, i64 168}
!66 = !{!9, !5, i64 144}
!67 = !{!9, !5, i64 148}
!68 = !{!9, !5, i64 152}
!69 = !{!9, !5, i64 156}
!70 = !{!9, !5, i64 160}
!71 = !{!9, !18, i64 176}
!72 = !{!9, !18, i64 184}
!73 = !{!9, !18, i64 192}
!74 = !{!9, !18, i64 200}
!75 = !{!9, !18, i64 208}
!76 = !{!9, !18, i64 216}
!77 = !{!9, !18, i64 224}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"vprintf: argument 0"}
!82 = distinct !{!82, !"vprintf"}
!83 = distinct !{null}
!84 = !{!85, !86, i64 0}
!85 = !{!"Abc_Obj_t_", !86, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !39, i64 24, !39, i64 40, !11, i64 56, !6, i64 64, !6, i64 72}
!86 = !{!"p1 _ZTS10Abc_Ntk_t_", !11, i64 0}
!87 = !{!85, !5, i64 16}
!88 = !{!85, !5, i64 44}
!89 = !{!85, !17, i64 48}
!90 = !{!91, !12, i64 32}
!91 = !{!"Abc_Ntk_t_", !5, i64 0, !5, i64 4, !92, i64 8, !92, i64 16, !93, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !6, i64 96, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !86, i64 160, !5, i64 168, !94, i64 176, !86, i64 184, !5, i64 192, !5, i64 196, !5, i64 200, !95, i64 208, !5, i64 216, !39, i64 224, !96, i64 240, !97, i64 248, !11, i64 256, !98, i64 264, !11, i64 272, !99, i64 280, !5, i64 284, !16, i64 288, !12, i64 296, !17, i64 304, !100, i64 312, !12, i64 320, !86, i64 328, !11, i64 336, !11, i64 344, !86, i64 352, !11, i64 360, !11, i64 368, !16, i64 376, !16, i64 384, !92, i64 392, !101, i64 400, !12, i64 408, !16, i64 416, !16, i64 424, !12, i64 432, !16, i64 440, !16, i64 448, !16, i64 456}
!92 = !{!"p1 omnipotent char", !11, i64 0}
!93 = !{!"p1 _ZTS9Nm_Man_t_", !11, i64 0}
!94 = !{!"p1 _ZTS10Abc_Des_t_", !11, i64 0}
!95 = !{!"double", !6, i64 0}
!96 = !{!"p1 _ZTS12Mem_Fixed_t_", !11, i64 0}
!97 = !{!"p1 _ZTS11Mem_Step_t_", !11, i64 0}
!98 = !{!"p1 _ZTS14Abc_ManTime_t_", !11, i64 0}
!99 = !{!"float", !6, i64 0}
!100 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!101 = !{!"p1 float", !11, i64 0}
!102 = distinct !{!102, !47}
!103 = !{!91, !5, i64 216}
!104 = !{!9, !10, i64 24}
!105 = !{!91, !17, i64 232}
!106 = !{!9, !12, i64 32}
!107 = distinct !{!107, !47}
!108 = distinct !{!108, !47}
!109 = distinct !{!109, !47}
!110 = distinct !{!110, !47}
!111 = !{!85, !5, i64 28}
!112 = distinct !{!112, !47}
!113 = !{!85, !17, i64 32}
!114 = distinct !{!114, !47}
!115 = distinct !{!115, !47}
!116 = !{!6, !6, i64 0}
!117 = !{!35, !14, i64 0}
!118 = !{!35, !14, i64 2}
!119 = distinct !{!119, !47}
!120 = !{!35, !14, i64 4}
!121 = !{!35, !14, i64 6}
!122 = distinct !{!122, !47}
!123 = distinct !{!123, !47}
!124 = distinct !{!124, !47}
!125 = !{!9, !14, i64 82}
!126 = !{!9, !5, i64 20}
!127 = !{!35, !5, i64 8}
!128 = distinct !{!128, !47}
!129 = distinct !{!129, !47}
!130 = distinct !{!130, !47}
!131 = distinct !{!131, !47, !132, !133}
!132 = !{!"llvm.loop.isvectorized", i32 1}
!133 = !{!"llvm.loop.unroll.runtime.disable"}
!134 = distinct !{!134, !47, !132}
!135 = distinct !{!135, !47, !136}
!136 = !{!"llvm.loop.unswitch.partial.disable"}
!137 = distinct !{!137, !47}
!138 = distinct !{!138, !47}
!139 = distinct !{!139, !47, !132, !133}
!140 = distinct !{!140, !47, !133, !132}
!141 = distinct !{!141, !47}
!142 = distinct !{!142, !47}
!143 = distinct !{!143, !47}
!144 = distinct !{!144, !47}
!145 = distinct !{!145, !47, !132, !133}
!146 = distinct !{!146, !47, !132}
!147 = distinct !{!147, !47, !132, !133}
!148 = distinct !{!148, !47, !133, !132}
!149 = distinct !{!149, !47, !132, !133}
!150 = distinct !{!150, !47, !133, !132}
!151 = distinct !{!151, !47, !132, !133}
!152 = distinct !{!152, !47, !132}
!153 = distinct !{!153, !47, !132, !133}
!154 = distinct !{!154, !47, !133, !132}
!155 = distinct !{!155, !47, !132, !133}
!156 = distinct !{!156, !47, !133, !132}
!157 = distinct !{!157, !47, !132, !133}
!158 = distinct !{!158, !47, !132}
!159 = distinct !{!159, !47, !132, !133}
!160 = distinct !{!160, !47, !133, !132}
!161 = distinct !{!161, !47, !132, !133}
!162 = distinct !{!162, !47, !133, !132}
!163 = distinct !{!163, !47, !132, !133}
!164 = distinct !{!164, !47, !132}
!165 = distinct !{!165, !47, !132, !133}
!166 = distinct !{!166, !47, !132}
!167 = distinct !{!167, !47, !132, !133}
!168 = distinct !{!168, !47, !133, !132}
!169 = distinct !{!169, !47, !132, !133}
!170 = distinct !{!170, !47, !133, !132}
end_hunk_0
