Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FilterCoder?download=true
inline.NumInlined: 163
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZThn64_N12CFilterCoderD0Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  tail call void @_ZN12CFilterCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #14, !inline_history !55
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 noundef 200) #17, !inline_history !55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn72_N12CFilterCoderD0Ev(ptr noundef initializes((-72, 16)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -72 ; 2 uses
  tail call void @_ZN12CFilterCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #14, !inline_history !55
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 noundef 200) #17, !inline_history !55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn80_N12CFilterCoderD0Ev(ptr noundef initializes((-80, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -80 ; 2 uses
  tail call void @_ZN12CFilterCoderD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #14, !inline_history !55
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 noundef 200) #17, !inline_history !55
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i8, ptr %i.a, align 4, !tbaa !56, !range !57, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60
  %i.h = sub i64 %i.e, %i.g
  %i.i = zext i32 %2 to i64
  %spec.select14 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.i)
  %spec.select = trunc nuw i64 %spec.select14 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %spec.select, %bb.b ], [ %2, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = zext i32 %.1 to i64                      ; 2 uses
  %i.m = tail call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %1, ptr noundef %i.k, i64 noundef %i.l) ; 2 uses
  %.not.not = icmp eq i32 %i.m, 0
  br i1 %.not.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60
  %i.p = add i64 %i.o, %i.l
  store i64 %i.p, ptr %i.n, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret i32 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CFilterCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS5_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(200) initializes((132, 133), (144, 152)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 10 uses
  store i64 0, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  store i8 0, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !0 ; 2 uses
  %.not.not = icmp eq i32 %i.i, 0
  br i1 %.not.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %4, null                     ; 2 uses
  %i.k = zext i1 %i.j to i8                       ; 2 uses
  store i8 %i.k, ptr %i.c, align 4, !tbaa !56
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %4, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.l, ptr %i.m, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %.not68 = icmp eq ptr %5, null
  br label %bb.e

bb.e:                                             ; preds = %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit, %bb.d
  %i.p = phi i8 [ %i.k, %bb.d ], [ %.pre, %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit ]
  %.045 = phi i32 [ 0, %bb.d ], [ %.0.lcssa, %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit ] ; 3 uses
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.b, align 8, !tbaa !60
  %i.s = load i64, ptr %i.n, align 8, !tbaa !59
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.u = sub i32 131072, %.045
  %i.v = zext i32 %i.u to i64
  store i64 %i.v, ptr %i.a, align 8, !tbaa !62
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.x = zext i32 %.045 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = call noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef %1, ptr noundef %i.y, ptr noundef nonnull %i.a) ; 2 uses
  %.not66 = icmp eq i32 %i.z, 0
  br i1 %.not66, label %bb.g, label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.thread

bb.g:                                             ; preds = %.critedge
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !62
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = add i32 %.045, %i.ab                    ; 4 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ae, i32 noundef %i.ac) ; 5 uses
  %i.aj = icmp ugt i32 %i.ai, %i.ac
  br i1 %i.aj, label %.preheader.preheader, label %bb.h

.preheader.preheader:                             ; preds = %bb.g
  %i.ak = zext i32 %i.ac to i64                   ; 4 uses
  %wide.trip.count = zext i32 %i.ai to i64        ; 3 uses
  %i.al = sub nsw i64 %wide.trip.count, %i.ak
  %xtraiter = and i64 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.prol ], [ %i.ak, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.prol
  store i8 0, ptr %i.an, align 1, !tbaa !63
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !69

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv.unr = phi i64 [ %i.ak, %.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader.prol ]
  %i.ao = sub nsw i64 %i.ak, %wide.trip.count
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.unr-lcssa, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader ], [ %indvars.iv.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  store i8 0, ptr %i.ar, align 1, !tbaa !63
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 0, ptr %i.au, align 1, !tbaa !63
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i8 0, ptr %i.ax, align 1, !tbaa !63
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  store i8 0, ptr %i.ba, align 1, !tbaa !63
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.unr-lcssa, label %.preheader, !llvm.loop !70

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.prol.loopexit
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef i32 %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %i.bc, i32 noundef %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %.unr-lcssa, %bb.g
  %.146 = phi i32 [ %i.bg, %.unr-lcssa ], [ %i.ai, %bb.g ] ; 6 uses
  %.1 = phi i32 [ %i.ai, %.unr-lcssa ], [ %i.ac, %bb.g ] ; 5 uses
  %i.bh = icmp eq i32 %.146, 0
  br i1 %i.bh, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp eq i32 %.1, 0
  br i1 %i.bi, label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load i8, ptr %i.c, align 4, !tbaa !56, !range !57, !noundef !58
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = load i64, ptr %i.n, align 8, !tbaa !59
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !60
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = zext i32 %.1 to i64
  %spec.select14.i = call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bo)
  %spec.select.i = trunc nuw i64 %spec.select14.i to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %spec.select.i, %bb.k ], [ %.1, %bb.j ]
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.bq = zext i32 %.1.i to i64                   ; 2 uses
  %i.br = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.bp, i64 noundef %i.bq) ; 2 uses
  %.not.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.not.i, label %bb.m, label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !60
  %i.bt = add i64 %i.bs, %i.bq
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !60
  br label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.thread

bb.n:                                             ; preds = %bb.h
  %i.bu = load i8, ptr %i.c, align 4, !tbaa !56, !range !57, !noundef !58
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = load i64, ptr %i.n, align 8, !tbaa !59
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !60
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = zext i32 %.146 to i64
  %spec.select14.i72 = call i64 @llvm.umin.i64(i64 %i.by, i64 %i.bz)
  %spec.select.i73 = trunc nuw i64 %spec.select14.i72 to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i70 = phi i32 [ %spec.select.i73, %bb.o ], [ %.146, %bb.n ]
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.cb = zext i32 %.1.i70 to i64                 ; 2 uses
  %i.cc = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.ca, i64 noundef %i.cb) ; 2 uses
  %.not.not.i71 = icmp eq i32 %i.cc, 0
  br i1 %.not.not.i71, label %bb.q, label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !60
  %i.ce = add i64 %i.cd, %i.cb
  store i64 %i.ce, ptr %i.b, align 8, !tbaa !60
  br i1 %.not68, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %5, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef i32 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) ; 2 uses
  %.not69 = icmp eq i32 %i.ci, 0
  br i1 %.not69, label %bb.s, label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cj = icmp ult i32 %.146, %.1
  br i1 %i.cj, label %.lr.ph.preheader, label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ck = zext i32 %.146 to i64                   ; 2 uses
  %narrow = sub nuw i32 %.1, %.146                ; 4 uses
  %i.cl = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter104 = and i64 %i.cl, 3                 ; 3 uses
  %i.cm = add i32 %narrow, -1
  %i.cn = icmp ult i32 %i.cm, 3
  br i1 %i.cn, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cl, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv88 = phi i64 [ %i.ck, %.lr.ph.preheader.new ], [ %indvars.iv.next89.3, %.lr.ph ] ; 5 uses
  %indvars.iv86 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next87.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv88
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !63
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv86
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !63
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv88
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !63
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv86
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !63
  %i.cy = load ptr, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv88
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv86
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !63
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %indvars.iv.next89.3 = add nuw nsw i64 %indvars.iv88, 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv88
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 3
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !63
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv86
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 3
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !63
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !71

_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.thread: ; preds = %bb.p, %.critedge, %bb.r, %bb.i, %bb.l, %bb.m
  %.7.ph = phi i32 [ 0, %bb.m ], [ %i.br, %bb.l ], [ 0, %bb.i ], [ %i.cc, %bb.p ], [ %i.z, %.critedge ], [ %i.ci, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv88.epil.init = phi i64 [ %i.ck, %.lr.ph.preheader ], [ %indvars.iv.next89.3, %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.loopexit.unr-lcssa ]
  %indvars.iv86.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next87.3, %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter104, 0
  call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv88.epil = phi i64 [ %indvars.iv88.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next89.epil, %.lr.ph.epil ] ; 2 uses
  %indvars.iv86.epil = phi i64 [ %indvars.iv86.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next87.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.dk = load ptr, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %indvars.iv.next89.epil = add nuw nsw i64 %indvars.iv88.epil, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv88.epil
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !63
  %indvars.iv.next87.epil = add nuw nsw i64 %indvars.iv86.epil, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv86.epil
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !63
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter104
  br i1 %epil.iter.cmp.not, label %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit, label %.lr.ph.epil, !llvm.loop !72

_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit: ; preds = %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.s
  %.0.lcssa = phi i32 [ 0, %bb.s ], [ %narrow, %.lr.ph.epil ], [ %narrow, %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.loopexit.unr-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.pre = load i8, ptr %i.c, align 4, !tbaa !56, !range !57
  br label %bb.e, !llvm.loop !73

.loopexit:                                        ; preds = %bb.f, %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.thread, %bb.a
  %.9 = phi i32 [ %i.i, %bb.a ], [ %.7.ph, %_ZN12CFilterCoder14WriteWithLimitEP20ISequentialOutStreamj.exit.thread ], [ 0, %bb.f ]
  ret i32 %.9
}

declare noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CFilterCoder12SetOutStreamEP20ISequentialOutStream(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) initializes((120, 124), (132, 133), (144, 152)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !76 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !53   ; 3 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !76 ; 0 uses
  br label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit

_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit: ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.b, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.l, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 0, ptr %i.m, align 4, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !0
  ret i32 %i.s
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn24_N12CFilterCoder12SetOutStreamEP20ISequentialOutStream(ptr nofree noundef captures(none) initializes((96, 100), (108, 109), (120, 128)) %0, ptr noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !77 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !53   ; 3 uses
  %.not6.i.i = icmp eq ptr %i.g, null
  br i1 %.not6.i.i, label %_ZN12CFilterCoder12SetOutStreamEP20ISequentialOutStream.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !77 ; 0 uses
  br label %_ZN12CFilterCoder12SetOutStreamEP20ISequentialOutStream.exit

_ZN12CFilterCoder12SetOutStreamEP20ISequentialOutStream.exit: ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.b, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.l, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 0, ptr %i.m, align 4, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !78
  ret i32 %i.s
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CFilterCoder16ReleaseOutStreamEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !79 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !53
  br label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit

_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn24_N12CFilterCoder16ReleaseOutStreamEv(ptr nofree noundef captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12CFilterCoder16ReleaseOutStreamEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !80 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !53
  br label %_ZN12CFilterCoder16ReleaseOutStreamEv.exit

_ZN12CFilterCoder16ReleaseOutStreamEv.exit:       ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12CFilterCoder5WriteEPKvjPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not3754 = icmp eq i32 %2, 0
  br i1 %.not3754, label %.thread, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph58, %._crit_edge
  %i.h = phi i32 [ %.pre, %.lr.ph58 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.02956 = phi i32 [ %2, %.lr.ph58 ], [ %i.o, %._crit_edge ] ; 2 uses
  %.03055 = phi ptr [ %1, %.lr.ph58 ], [ %i.r, %._crit_edge ] ; 2 uses
  %i.i = sub i32 131072, %i.h
  %i.j = tail call noundef i32 @llvm.umin.i32(i32 %.02956, i32 %i.i) ; 4 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = zext i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = zext i32 %i.j to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %.03055, i64 %i.n, i1 false)
  %i.o = sub nuw i32 %.02956, %i.j                ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %3, align 4, !tbaa !8
  %i.q = add i32 %i.p, %i.j
  store i32 %i.q, ptr %3, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.03055, i64 %i.n
  %i.s = load i32, ptr %i.a, align 8, !tbaa !65
  %i.t = add i32 %i.s, %i.j                       ; 5 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.v, i32 noundef %i.t) ; 5 uses
  store i32 %i.z, ptr %i.a, align 8, !tbaa !65
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.t, ptr %i.a, align 8, !tbaa !65
  br label %.thread

end_hunk_0
