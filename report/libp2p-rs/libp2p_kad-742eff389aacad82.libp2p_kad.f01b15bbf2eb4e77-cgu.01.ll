Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_kad-742eff389aacad82.libp2p_kad.f01b15bbf2eb4e77-cgu.01?download=true
inline.NumInlined: 213
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25612integer_sqrt:bb.a
  %wide.load33 = load <2 x i64>, ptr %i.at, align 8, !noalias !83
  %wide.load34 = load <2 x i64>, ptr %i.au, align 8, !noalias !83
  %i.av = add <2 x i64> %wide.load33, %i.aq
  %i.aw = add <2 x i64> %wide.load34, %i.ar
  store <2 x i64> %i.av, ptr %i.at, align 8, !noalias !83
  store <2 x i64> %i.aw, ptr %i.au, align 8, !noalias !83
  %index.next35 = add nuw i64 %index30, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next35, %n.vec26
  br i1 %i.ax, label %middle.block36, label %vector.body29, !llvm.loop !72

middle.block36:                                   ; preds = %vector.body29
  %cmp.n37 = icmp eq i64 %i.al, %n.vec26
  br i1 %cmp.n37, label %_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit, label %scalar.ph23.preheader

scalar.ph23.preheader:                            ; preds = %.lr.ph15.i, %middle.block36
  %.sroa.05.0.in13.i.ph = phi i64 [ %i.y, %.lr.ph15.i ], [ %i.am, %middle.block36 ]
  br label %scalar.ph23

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.03.011.i = phi i64 [ %i.az, %.lr.ph.i ], [ %.sroa.03.011.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ay = sub nuw nsw i64 %.sroa.03.011.i, %i.y
  %i.az = add nuw nsw i64 %.sroa.03.011.i, 1      ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !82, !noundef !4
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.03.011.i
  %i.bd = shl i64 %i.bb, %i.z
  store i64 %i.bd, ptr %i.bc, align 8, !noalias !83
  %exitcond.not.i = icmp eq i64 %i.az, 4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !73

scalar.ph23:                                      ; preds = %scalar.ph23.preheader, %scalar.ph23
  %.sroa.05.0.in13.i = phi i64 [ %.sroa.05.014.i, %scalar.ph23 ], [ %.sroa.05.0.in13.i.ph, %scalar.ph23.preheader ] ; 2 uses
  %.sroa.05.014.i = add nuw nsw i64 %.sroa.05.0.in13.i, 1 ; 3 uses
  %i.be = sub nuw nsw i64 %.sroa.05.0.in13.i, %i.y
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !82, !noundef !4
  %i.bh = lshr i64 %i.bg, %i.ak
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.05.014.i ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !83, !noundef !4
  %i.bk = add i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !noalias !83
  %exitcond17.not.i = icmp eq i64 %.sroa.05.014.i, 3
  br i1 %exitcond17.not.i, label %_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit, label %scalar.ph23, !llvm.loop !74

_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit: ; preds = %scalar.ph23, %middle.block36, %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.r

bb.h:                                             ; preds = %bb.p, %_RNvXsF_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256INtNtNtCskKLDkoKarTP_4core3ops3bit3ShlmE3shlB9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.09.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U2567div_mod(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
  %.sroa.011.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.412.0.copyload = load i64, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0.copyload = load i64, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.614.0.copyload = load i64, ptr %.sroa.614.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bn = add i64 %.sroa.011.0.copyload, %.sroa.09.0.copyload ; 2 uses
  %.not.i.i = icmp ult i64 %i.bn, %.sroa.09.0.copyload
  %i.bo = add i64 %.sroa.412.0.copyload, %.sroa.4.0.copyload ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %.sroa.4.0.copyload ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = zext i1 %i.bp to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.br = add i64 %i.bo, 1
  %i.bs = icmp eq i64 %i.bo, -1
  %i.bt = zext i1 %i.bp to i64
  %i.bu = zext i1 %i.bs to i64
  %i.bv = add nuw nsw i64 %i.bt, %i.bu
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.i ], [ %i.bv, %bb.j ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.bo, %bb.i ], [ %i.br, %bb.j ] ; 2 uses
  %i.bw = icmp eq i64 %.sroa.01.0.i.i, 0
  %i.bx = add i64 %.sroa.513.0.copyload, %.sroa.510.0.copyload ; 4 uses
  %i.by = icmp ult i64 %i.bx, %.sroa.510.0.copyload ; 2 uses
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = zext i1 %i.by to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ca = add i64 %.sroa.01.0.i.i, %i.bx          ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bx
  %i.cc = zext i1 %i.by to i64
  %i.cd = zext i1 %i.cb to i64
  %i.ce = add nuw nsw i64 %i.cd, %i.cc
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.01.1.i.i = phi i64 [ %i.bz, %bb.l ], [ %i.ce, %bb.m ] ; 2 uses
  %.sroa.5.0.i.i = phi i64 [ %i.bx, %bb.l ], [ %i.ca, %bb.m ] ; 2 uses
  %i.cf = icmp eq i64 %.sroa.01.1.i.i, 0
  %i.cg = add i64 %.sroa.614.0.copyload, %.sroa.6.0.copyload ; 4 uses
  %i.ch = icmp ult i64 %i.cg, %.sroa.6.0.copyload ; 2 uses
  br i1 %i.cf, label %.split.i, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i

.split.i:                                         ; preds = %bb.n
  br i1 %i.ch, label %bb.o, label %_RNvXsm_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtNtCskKLDkoKarTP_4core3ops5arith3Add3addB9_.exit, !prof !5

_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i: ; preds = %bb.n
  %i.ci = add i64 %.sroa.01.1.i.i, %i.cg          ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.cg
  %i.ck = or i1 %i.ch, %i.cj
  br i1 %i.ck, label %bb.o, label %_RNvXsm_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtNtCskKLDkoKarTP_4core3ops5arith3Add3addB9_.exit, !prof !5

bb.o:                                             ; preds = %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i, %.split.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull inttoptr (i64 59 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !noalias !86
  unreachable

_RNvXsm_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtNtCskKLDkoKarTP_4core3ops5arith3Add3addB9_.exit: ; preds = %.split.i, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i
  %.sroa.11.0 = phi i64 [ %i.cg, %.split.i ], [ %i.ci, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i ] ; 2 uses
  %i.cl = lshr i64 %.sroa.11.0, 1
  %i.cm = call i64 @llvm.fshl.i64(i64 %.sroa.3.0.i.i, i64 %i.bn, i64 63)
  %i.cn = call i64 @llvm.fshl.i64(i64 %.sroa.5.0.i.i, i64 %.sroa.3.0.i.i, i64 63)
  %i.co = call i64 @llvm.fshl.i64(i64 %.sroa.11.0, i64 %.sroa.5.0.i.i, i64 63)
  store i64 %i.cm, ptr %i.e, align 8, !alias.scope !87
  store i64 %i.cn, ptr %.sroa.5.0..sroa_idx.i6, align 8, !alias.scope !87
  store i64 %i.co, ptr %.sroa.8.0..sroa_idx.i7, align 8, !alias.scope !87
  store i64 %i.cl, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !87
  %i.cp = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevINtNtNtBc_5slice4iter4IteryEENtNtNtBa_6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1k_3cmpB3_E0ECskC4O4hr3vz7_10libp2p_kad(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly %i.bm)
  %i.cq = icmp sgt i8 %i.cp, -1
  br i1 %i.cq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvXsm_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtNtCskKLDkoKarTP_4core3ops5arith3Add3addB9_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.q:                                             ; preds = %_RNvXsm_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtNtCskKLDkoKarTP_4core3ops5arith3Add3addB9_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25614from_str_radix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  switch i32 %3, label %bb.b [
    i32 10, label %bb.c
    i32 16, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = icmp samesign eq i64 %2, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i
  %.sroa.0.075.i = phi ptr [ %i.e, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i ], [ %1, %bb.c ] ; 2 uses
  %.sroa.017.074.i = phi i64 [ %i.aa, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i ], [ 0, %bb.c ]
  %.sroa.619.073.i = phi i64 [ %.sroa.3.0.i424857.i, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i ], [ 0, %bb.c ]
  %.sroa.10.072.i = phi i64 [ %.sroa.5.0.i5056.i, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i ], [ 0, %bb.c ]
  %.sroa.13.071.i = phi i64 [ %.sroa.7.0.i58.i, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i ], [ 0, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.075.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %.sroa.0.075.i, align 1, !alias.scope !90, !noundef !4
  %i.g = add i8 %i.f, -48                         ; 2 uses
  %4 = icmp ult i8 %i.g, 10                       ; 2 uses
  br i1 %4, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = zext i64 %.sroa.017.074.i to i128
  %i.i = mul nuw nsw i128 %i.h, 10                ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = zext i64 %.sroa.619.073.i to i128
  %i.l = mul nuw nsw i128 %i.k, 10
  %i.m = add nuw nsw i128 %i.j, %i.l              ; 2 uses
  %i.n = lshr i128 %i.m, 64
  %i.o = trunc i128 %i.m to i64                   ; 3 uses
  %i.p = zext i64 %.sroa.10.072.i to i128
  %i.q = mul nuw nsw i128 %i.p, 10
  %i.r = add nuw nsw i128 %i.n, %i.q              ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = trunc i128 %i.r to i64                   ; 4 uses
  %i.u = zext i64 %.sroa.13.071.i to i128
  %i.v = mul nuw nsw i128 %i.u, 10
  %i.w = add nuw nsw i128 %i.s, %i.v              ; 2 uses
  %i.x = trunc i128 %i.w to i64                   ; 5 uses
  %.not.i = icmp samesign ult i128 %i.w, 18446744073709551616
  br i1 %.not.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.y = trunc i128 %i.i to i64                   ; 2 uses
  %i.z = zext nneg i8 %i.g to i64
  %i.aa = add i64 %i.z, %i.y                      ; 3 uses
  %.not.i.i = icmp ult i64 %i.aa, %i.y
  br i1 %.not.i.i, label %bb.f, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ab = add nuw i64 %i.o, 1
  %i.ac = icmp eq i64 %i.o, -1
  br i1 %i.ac, label %bb.g, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ad = add nuw i64 %i.t, 1
  %i.ae = icmp eq i64 %i.t, -1
  br i1 %i.ae, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i

_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i: ; preds = %bb.g
  %i.af = add nuw i64 %i.x, 1
  %i.ag = icmp eq i64 %i.x, -1
  br i1 %i.ag, label %bb.i, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i

_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i: ; preds = %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i, %bb.g, %bb.f, %bb.e
  %.sroa.7.0.i58.i = phi i64 [ %i.af, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i ], [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %.sroa.3.0.i424857.i = phi i64 [ 0, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i ], [ 0, %bb.g ], [ %i.ab, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.5.0.i5056.i = phi i64 [ 0, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i ], [ %i.ad, %bb.g ], [ %i.t, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %i.ah = icmp eq ptr %i.e, %i.c
  br i1 %i.ah, label %.loopexit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsR_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.ai = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.031.0.copyload = load i32, ptr %i.ak, align 8 ; 3 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.432.sroa.0.0.copyload = load i32, ptr %.sroa.432.0..sroa_idx, align 4 ; 2 uses
  %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.432.sroa.4.0.copyload = load i64, ptr %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i, %bb.d
  %.sroa.5.0.ph = phi i8 [ 0, %.lr.ph.i ], [ 1, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.i ], [ 1, %bb.d ]
  %. = zext i1 %4 to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.al, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.5.0.ph, ptr %.sroa.08.sroa.4.0..sroa_idx, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %., ptr %.sroa.49.0..sroa_idx, align 8
  br label %bb.m

.loopexit:                                        ; preds = %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i, %bb.c
  %.sroa.13.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.sroa.7.0.i58.i, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i ]
  %.sroa.10.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.sroa.5.0.i5056.i, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i ]
  %.sroa.619.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.sroa.3.0.i424857.i, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i ]
  %.sroa.017.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.aa, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit.thread.i ] ; 2 uses
  %.sroa.851.sroa.0.0.extract.trunc = trunc i64 %.sroa.017.0.lcssa.i to i32
  %.sroa.851.sroa.5.0.extract.shift = lshr i64 %.sroa.017.0.lcssa.i, 32
  %.sroa.851.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.851.sroa.5.0.extract.shift to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.loopexit
  %.sroa.3.sroa.0.0 = phi i32 [ %.sroa.851.sroa.5.0.extract.trunc, %.loopexit ], [ %.sroa.432.sroa.0.0.copyload, %bb.l ]
  %.sroa.435.sroa.3.0 = phi i64 [ %.sroa.13.0.lcssa.i, %.loopexit ], [ %.sroa.541.sroa.4.0.copyload, %bb.l ]
  %.sroa.435.sroa.0.0 = phi i64 [ %.sroa.10.0.lcssa.i, %.loopexit ], [ %.sroa.541.sroa.0.0.copyload, %bb.l ]
  %.sroa.3.sroa.3.0 = phi i64 [ %.sroa.619.0.lcssa.i, %.loopexit ], [ %.sroa.432.sroa.4.0.copyload, %bb.l ]
  %.sroa.033.0 = phi i32 [ %.sroa.851.sroa.0.0.extract.trunc, %.loopexit ], [ %.sroa.031.0.copyload, %bb.l ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.033.0, ptr %i.am, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.3.sroa.0.0, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.sroa.3.0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.435.sroa.0.0, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.435.sroa.3.0..sroa.435.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.435.sroa.3.0, ptr %.sroa.435.sroa.3.0..sroa.435.0..sroa_idx.sroa_idx, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = icmp ne i32 %.sroa.031.0.copyload, 0
  %.50 = zext i1 %i.an to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.031.0.copyload, ptr %i.ao, align 8
  %.sroa.042.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.432.sroa.0.0.copyload, ptr %.sroa.042.sroa.4.0..sroa_idx, align 4
  %.sroa.042.sroa.4.sroa.4.0..sroa.042.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.432.sroa.4.0.copyload, ptr %.sroa.042.sroa.4.sroa.4.0..sroa.042.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.50, ptr %.sroa.443.0..sroa_idx, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.541.sroa.0.0.copyload = load i64, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.541.sroa.4.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.541.sroa.4.0.copyload = load i64, ptr %.sroa.541.sroa.4.0..sroa.541.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.m:                                             ; preds = %bb.b, %bb.i, %bb.k, %bb.j
  %.sink = phi i64 [ 1, %bb.b ], [ 1, %bb.i ], [ 1, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25614saturating_add(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.a = load i64, ptr %1, align 8, !alias.scope !94, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %2, align 8, !alias.scope !95, !noundef !4
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !94, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !95, !noundef !4
  %i.h = add i64 %i.g, %i.e                       ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.e                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext i1 %i.i to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = add i64 %i.h, 1
  %i.l = icmp eq i64 %i.h, -1
  %i.m = zext i1 %i.i to i64
  %i.n = zext i1 %i.l to i64
  %i.o = add nuw nsw i64 %i.m, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.h, %bb.b ], [ %i.k, %bb.c ]
  %i.p = icmp eq i64 %.sroa.01.0.i, 0
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !94, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !95, !noundef !4
  %i.u = add i64 %i.t, %i.r                       ; 4 uses
  %i.v = icmp ult i64 %i.u, %i.r                  ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = zext i1 %i.v to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = add i64 %i.u, %.sroa.01.0.i              ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.u
  %i.z = zext i1 %i.v to i64
  %i.aa = zext i1 %i.y to i64
  %i.ab = add nuw nsw i64 %i.aa, %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.1.i = phi i64 [ %i.w, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %.sroa.5.0.i = phi i64 [ %i.u, %bb.e ], [ %i.x, %bb.f ]
  %i.ac = icmp eq i64 %.sroa.01.1.i, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !94, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !95, !noundef !4
  %i.ah = add i64 %i.ag, %i.ae                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.ae               ; 2 uses
  br i1 %i.ac, label %.split, label %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit

.split:                                           ; preds = %bb.g
  br i1 %i.ai, label %bb.i, label %bb.h

_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit: ; preds = %bb.g
  %i.aj = add i64 %i.ah, %.sroa.01.1.i            ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit
  %.sroa.7.0.i1 = phi i64 [ %i.ah, %.split ], [ %i.aj, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit ]
  store i64 %i.c, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.i1, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %.split, %_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25615overflowing_add.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 -1, i64 32, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMsi_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U25614saturating_mul(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.a = load i64, ptr %2, align 8, !alias.scope !100, !noundef !4
  %i.b = load i64, ptr %1, align 8, !alias.scope !99, !noundef !4
  %i.c = zext i64 %i.b to i128                    ; 4 uses
  %i.d = zext i64 %i.a to i128                    ; 4 uses
  %i.e = mul nuw i128 %i.c, %i.d                  ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = trunc nuw i128 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !99, !noundef !4
  %i.j = zext i64 %i.i to i128                    ; 4 uses
  %i.k = mul nuw i128 %i.j, %i.d                  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = trunc i128 %i.k to i64                   ; 2 uses
  %i.o = add i64 %i.n, %i.g                       ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !99, !noundef !4
  %i.t = zext i64 %i.s to i128                    ; 4 uses
  %i.u = mul nuw i128 %i.t, %i.d                  ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = trunc i128 %i.u to i64                   ; 2 uses
  %i.y = add i64 %i.x, %i.m
  %i.z = add i64 %i.y, %i.q                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.x
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !99, !noundef !4
  %i.ae = zext i64 %i.ad to i128                  ; 4 uses
  %i.af = mul nuw i128 %i.ae, %i.d                ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = trunc i128 %i.af to i64                 ; 2 uses
  %i.aj = add i64 %i.ai, %i.w
  %i.ak = add i64 %i.aj, %i.ab                    ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.ai
  %i.am = zext i1 %i.al to i64
  %i.an = add nuw i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !100, !noundef !4
  %i.aq = zext i64 %i.ap to i128                  ; 4 uses
  %i.ar = mul nuw i128 %i.aq, %i.c                ; 2 uses
end_hunk_0
