inline.NumInlined: 356
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@HUF_decompress4X6:bb.a

bb.be:                                            ; preds = %bb.bd
  %i.yu = lshr i32 %i.wb, 3
  %i.yv = zext nneg i32 %i.yu to i64
  %i.yw = sub nsw i64 0, %i.yv
  %i.yx = getelementptr inbounds i8, ptr %i.nm, i64 %i.yw ; 2 uses
  %i.yy = and i32 %i.wb, 7
  %.val30.i252.i = load i64, ptr %i.yx, align 1
  br label %BIT_reloadDStream.exit259.i

bb.bf:                                            ; preds = %bb.bd
  %i.yz = icmp eq ptr %i.nm, %i.nj
  br i1 %i.yz, label %BIT_reloadDStream.exit259.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.za = lshr i32 %i.wb, 3                       ; 2 uses
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = sub nsw i64 0, %i.zb
  %i.zd = getelementptr inbounds i8, ptr %i.nm, i64 %i.zc
  %i.ze = icmp ult ptr %i.zd, %i.nj               ; 2 uses
  %i.zf = ptrtoint ptr %i.nm to i64
  %i.zg = sub i64 %i.zf, %i.nl
  %i.zh = trunc i64 %i.zg to i32
  %.024.i254.i = select i1 %i.ze, i32 %i.zh, i32 %i.za ; 2 uses
  %.0.i255.i = zext i1 %i.ze to i32
  %i.zi = zext i32 %.024.i254.i to i64
  %i.zj = sub nsw i64 0, %i.zi
  %i.zk = getelementptr inbounds i8, ptr %i.nm, i64 %i.zj ; 2 uses
  %i.zl = shl i32 %.024.i254.i, 3
  %i.zm = sub i32 %i.wb, %i.zl
  %.val.i256.i = load i64, ptr %i.zk, align 1
  br label %BIT_reloadDStream.exit259.i

BIT_reloadDStream.exit259.i:                      ; preds = %bb.bg, %bb.bf, %bb.be, %BIT_reloadDStream.exit250.i
  %i.zn = phi ptr [ %i.zk, %bb.bg ], [ %i.yx, %bb.be ], [ %i.nm, %BIT_reloadDStream.exit250.i ], [ %i.nm, %bb.bf ] ; 2 uses
  %.val9.i207330.i = phi i32 [ %i.zm, %bb.bg ], [ %i.yy, %bb.be ], [ %i.wb, %BIT_reloadDStream.exit250.i ], [ %i.wb, %bb.bf ] ; 2 uses
  %.val.i256300.i = phi i64 [ %.val.i256.i, %bb.bg ], [ %.val30.i252.i, %bb.be ], [ %.val.i256301305.i, %BIT_reloadDStream.exit250.i ], [ %.val.i256301305.i, %bb.bf ] ; 2 uses
  %.025.i253.i = phi i32 [ %.0.i255.i, %bb.bg ], [ 0, %bb.be ], [ 3, %BIT_reloadDStream.exit250.i ], [ 3, %bb.bf ]
  %i.zo = or i32 %i.ys, %.025.i253.i
  %i.zp = icmp ugt ptr %i.vr, %i.fc
  %i.zq = icmp ne i32 %i.zo, 0
  %or.cond.not270.i = select i1 %i.zp, i1 true, i1 %i.zq
  %.not184.i = icmp ugt ptr %i.wf, %i.mm
  %or.cond186.i = select i1 %or.cond.not270.i, i1 true, i1 %.not184.i
  br i1 %or.cond186.i, label %..critedge_crit_edge.i, label %bb.an, !llvm.loop !101

..critedge_crit_edge.i:                           ; preds = %BIT_reloadDStream.exit259.i
  store i32 %.val9.i321.i, ptr %i.mo, align 8, !tbaa !67
  store i32 %.val9.i203324.i, ptr %i.ms, align 8, !tbaa !67
  store i32 %.val9.i205327.i, ptr %i.mt, align 8, !tbaa !67
  store i32 %.val9.i207330.i, ptr %i.mu, align 8, !tbaa !67
  store ptr %i.xa, ptr %i.mv, align 8
  store ptr %i.xv, ptr %i.mw, align 8
  store ptr %i.yr, ptr %i.mx, align 8
  store ptr %i.zn, ptr %i.my, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.am
  %.val.i256301.lcssa.i = phi i64 [ %.val.i256300.i, %..critedge_crit_edge.i ], [ %.promoted299.i, %bb.am ]
  %.val.i247298.lcssa.i = phi i64 [ %.val.i247297.i, %..critedge_crit_edge.i ], [ %.promoted296.i, %bb.am ]
  %.val.i238295.lcssa.i = phi i64 [ %.val.i238294.i, %..critedge_crit_edge.i ], [ %.promoted293.i, %bb.am ]
  %.val.i232292.lcssa.i = phi i64 [ %.val.i232291.i, %..critedge_crit_edge.i ], [ %.promoted.i, %bb.am ]
  %.0171.lcssa.i = phi ptr [ %i.up, %..critedge_crit_edge.i ], [ %0, %bb.am ] ; 2 uses
  %.0168.lcssa.i = phi ptr [ %i.vd, %..critedge_crit_edge.i ], [ %i.fa, %bb.am ] ; 2 uses
  %.0165.lcssa.i = phi ptr [ %i.vr, %..critedge_crit_edge.i ], [ %i.fb, %bb.am ] ; 2 uses
  %.0164.lcssa.i = phi ptr [ %i.wf, %..critedge_crit_edge.i ], [ %i.fc, %bb.am ]
  store i64 %.val.i232292.lcssa.i, ptr %4, align 8
  store i64 %.val.i238295.lcssa.i, ptr %5, align 8
  store i64 %.val.i247298.lcssa.i, ptr %6, align 8
  store i64 %.val.i256301.lcssa.i, ptr %7, align 8
  %i.zr = icmp ugt ptr %.0171.lcssa.i, %i.fa
  %i.zs = icmp ugt ptr %.0168.lcssa.i, %i.fb
  %or.cond187.i = select i1 %i.zr, i1 true, i1 %i.zs
  %i.zt = icmp ugt ptr %.0165.lcssa.i, %i.fc
  %or.cond188.i = select i1 %or.cond187.i, i1 true, i1 %i.zt
  br i1 %or.cond188.i, label %BIT_initDStream.exit.thread.i, label %BIT_endOfDStream.exit.i

BIT_endOfDStream.exit.i:                          ; preds = %.critedge.i
  call fastcc void @HUF_decodeStreamX6(ptr noundef %.0171.lcssa.i, ptr noundef %4, ptr noundef %i.fa, ptr noundef nonnull readonly %i.g, i32 noundef %i.ek)
  call fastcc void @HUF_decodeStreamX6(ptr noundef %.0168.lcssa.i, ptr noundef %5, ptr noundef %i.fb, ptr noundef nonnull readonly %i.g, i32 noundef %i.ek)
  call fastcc void @HUF_decodeStreamX6(ptr noundef %.0165.lcssa.i, ptr noundef %6, ptr noundef %i.fc, ptr noundef nonnull readonly %i.g, i32 noundef %i.ek)
  call fastcc void @HUF_decodeStreamX6(ptr noundef %.0164.lcssa.i, ptr noundef %7, ptr noundef %i.ej, ptr noundef nonnull readonly %i.g, i32 noundef %i.ek)
  %i.zu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zw = load i32, ptr %i.zv, align 8
  %.fr113 = freeze i32 %i.zw
  %i.zx = icmp ne i32 %.fr113, 64
  %i.zy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.zz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aaa = load i32, ptr %i.zz, align 8
  %.fr = freeze i32 %i.aaa
  %i.aab = icmp ne i32 %.fr, 64
  %i.aac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aae = load i32, ptr %i.aad, align 8
  %.fr115 = freeze i32 %i.aae
  %i.aaf = icmp ne i32 %.fr115, 64
  %i.aag = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aah = load <2 x ptr>, ptr %i.zu, align 8, !tbaa !72 ; 2 uses
  %i.aai = load <2 x ptr>, ptr %i.zy, align 8, !tbaa !72 ; 2 uses
  %i.aaj = load <2 x ptr>, ptr %i.aac, align 8, !tbaa !72 ; 2 uses
  %i.aak = load <2 x ptr>, ptr %i.aag, align 8, !tbaa !72 ; 2 uses
  %i.aal = shufflevector <2 x ptr> %i.aah, <2 x ptr> %i.aai, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aam = shufflevector <2 x ptr> %i.aaj, <2 x ptr> %i.aak, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.aan = shufflevector <4 x ptr> %i.aal, <4 x ptr> %i.aam, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aao = shufflevector <2 x ptr> %i.aah, <2 x ptr> %i.aai, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aap = shufflevector <2 x ptr> %i.aaj, <2 x ptr> %i.aak, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.aaq = shufflevector <4 x ptr> %i.aao, <4 x ptr> %i.aap, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aar = icmp ne <4 x ptr> %i.aan, %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aat = load i32, ptr %i.aas, align 8
  %i.aau = icmp ne i32 %i.aat, 64
  %i.aav = freeze <4 x i1> %i.aar
  %i.aaw = bitcast <4 x i1> %i.aav to i4
  %i.aax = icmp ne i4 %i.aaw, 0
  %op.rdx = or i1 %i.aax, %i.zx
  %i.aay = or i1 %op.rdx, %i.aab
  %op.rdx110 = or i1 %i.aay, %i.aaf
  %op.rdx111 = select i1 %op.rdx110, i1 true, i1 %i.aau
  %..i = select i1 %op.rdx111, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread.i

BIT_initDStream.exit.thread.i:                    ; preds = %BIT_endOfDStream.exit.i, %.critedge.i, %bb.al, %bb.ak, %bb.ac, %bb.aa, %bb.z, %bb.r, %bb.p, %bb.o, %bb.g, %bb.e, %bb.d
  %.0174.i = phi i64 [ %..i, %BIT_endOfDStream.exit.i ], [ -20, %bb.d ], [ -20, %.critedge.i ], [ -72, %bb.p ], [ -72, %bb.e ], [ %i.md, %bb.al ], [ -1, %bb.g ], [ -1, %bb.o ], [ -1, %bb.r ], [ -1, %bb.z ], [ -1, %bb.ac ], [ -1, %bb.ak ], [ -72, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %HUF_decompress4X6_usingDTable.exit

HUF_decompress4X6_usingDTable.exit:               ; preds = %BIT_initDStream.exit.thread.i, %bb.c, %HUF_readDTableX6.exit.thread, %HUF_readDTableX6.exit
  %.0 = phi i64 [ %.0.i.ph, %HUF_readDTableX6.exit.thread ], [ -20, %bb.c ], [ -72, %HUF_readDTableX6.exit ], [ %.0174.i, %BIT_initDStream.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [256 x i16], align 16             ; 8 uses
  %i.c = alloca [4097 x i32], align 16            ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %4, align 1, !tbaa !10      ; 4 uses
  %i.g = zext i8 %i.f to i64                      ; 14 uses
  %i.h = icmp slt i8 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i8 %i.f, -15
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr [4 x i8], ptr @HUF_readStats.l, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 -968
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = sext i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 1, i64 256, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.n = add nsw i64 %i.g, -127                   ; 5 uses
  %i.o = add nsw i64 %i.g, -126
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %.not83 = icmp ult i64 %i.p, %5
  br i1 %.not83, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 2)
  %i.r = add nsw i64 %umax76, -1
  %i.s = lshr i64 %i.r, 1
  %i.t = add nuw i64 %i.s, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.n, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = add nsw i64 %i.g, -128
  %i.v = lshr i64 %i.u, 1
  %i.w = and i64 %i.g, 126
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %scevgep = getelementptr i8, ptr %i.x, i64 2
  %i.y = getelementptr i8, ptr %4, i64 %i.v
  %scevgep75 = getelementptr i8, ptr %i.y, i64 2
  %bound0 = icmp ult ptr %0, %scevgep75
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.n, 31
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.t, 12
  %n.vec = and i64 %i.t, -16                      ; 4 uses
  %i.z = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %6 = shl nuw i64 %index, 1                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %wide.load.a = load <8 x i8>, ptr %i.aa, align 1, !tbaa !10, !alias.scope !102
  %wide.load78.a = load <8 x i8>, ptr %i.ab, align 1, !tbaa !10, !alias.scope !102
  %i.ac = lshr <8 x i8> %wide.load.a, splat (i8 4)
  %i.ad = lshr <8 x i8> %wide.load78.a, splat (i8 4)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load79 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !10, !alias.scope !102
  %wide.load80 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !10, !alias.scope !102
  %i.ag = and <8 x i8> %wide.load79, splat (i8 15)
  %i.ah = and <8 x i8> %wide.load80, splat (i8 15)
  %interleaved.vec.a = shufflevector <8 x i8> %i.ac, <8 x i8> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.a, ptr %7, align 1, !tbaa !10, !alias.scope !105, !noalias !102
  %interleaved.vec81.a = shufflevector <8 x i8> %i.ad, <8 x i8> %i.ah, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec81.a, ptr %i.af, align 1, !tbaa !10, !alias.scope !105, !noalias !102
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %i.t, -4                     ; 3 uses
  %i.aj = shl i64 %n.vec83, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = shl nuw i64 %index84, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 %index84
  %wide.load85 = load <4 x i8>, ptr %i.al, align 1, !tbaa !10, !alias.scope !102 ; 2 uses
  %i.am = lshr <4 x i8> %wide.load85, splat (i8 4)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.ao = and <4 x i8> %wide.load85, splat (i8 15)
  %interleaved.vec87 = shufflevector <4 x i8> %i.am, <4 x i8> %i.ao, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec87, ptr %i.an, align 1, !tbaa !10, !alias.scope !105, !noalias !102
  %index.next88 = add nuw i64 %index84, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.t, %n.vec83
  br i1 %cmp.n89, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.aq = phi i64 [ %i.ba, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ar = lshr exact i64 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = lshr i8 %i.at, 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !10
  %i.ax = and i8 %i.aw, 15
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !10
  %i.ba = add nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.bb = icmp samesign ugt i64 %i.n, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.loopexit.thread, !llvm.loop !109

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph166.preheader

bb.f:                                             ; preds = %bb.b
  %.not81 = icmp ugt i64 %5, %i.g
  br i1 %.not81, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 255, ptr %i.e, align 4, !tbaa !28
  %i.bd = icmp samesign ult i8 %i.f, 2
  br i1 %i.bd, label %FSE_decompress.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = call fastcc i64 @FSE_readNCount(ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull %i.bc, i64 noundef range(i64 0, 128) %i.g) ; 5 uses
  %i.bf = icmp ult i64 %i.be, -119
  br i1 %i.bf, label %bb.i, label %FSE_decompress.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not21.i = icmp ult i64 %i.be, %i.g
  br i1 %.not21.i, label %bb.j, label %FSE_decompress.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bg = load i32, ptr %i.e, align 4, !tbaa !28  ; 3 uses
  %i.bh = load i32, ptr %i.d, align 4, !tbaa !28  ; 11 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 19 uses
  %i.bj = shl nuw i32 1, %i.bh                    ; 5 uses
  %i.bk = add i32 %i.bj, -1                       ; 5 uses
  %i.bl = lshr i32 %i.bj, 1
  %i.bm = lshr i32 %i.bj, 3
  %i.bn = add nuw nsw i32 %i.bm, 3
  %i.bo = add nuw nsw i32 %i.bn, %i.bl            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bp = icmp ugt i32 %i.bg, 255
  br i1 %i.bp, label %FSE_buildDTable.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp ugt i32 %i.bh, 12
  br i1 %i.bq, label %FSE_buildDTable.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %sext.i.i = shl nuw nsw i32 32768, %i.bh
  %i.br = lshr exact i32 %sext.i.i, 16            ; 3 uses
  %i.bs = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bs to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.bt = icmp eq i32 %i.bg, 0
  br i1 %i.bt, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %wide.trip.count.i.i, 510
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.s ] ; 5 uses
  %.06782.i.i = phi i16 [ 1, %.new ], [ %.269.i.i.1, %bb.s ] ; 2 uses
  %.07081.i.i = phi i32 [ %i.bk, %.new ], [ %.171.i.i.1, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !39 ; 3 uses
  %i.bw = icmp eq i16 %i.bv, -1
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = trunc i64 %indvars.iv.i.i to i8
  %i.by = add i32 %.07081.i.i, -1
  %i.bz = zext i32 %.07081.i.i to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i8 %i.bx, ptr %i.cb, align 2, !tbaa !35
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cc = sext i16 %i.bv to i32
  %.not78.i.i = icmp sgt i32 %i.br, %i.cc
  %spec.select.i.i = select i1 %.not78.i.i, i16 %.06782.i.i, i16 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i.i = phi i16 [ 1, %bb.n ], [ %i.bv, %bb.o ]
  %.171.i.i = phi i32 [ %i.by, %bb.n ], [ %.07081.i.i, %bb.o ] ; 3 uses
  %.269.i.i = phi i16 [ %.06782.i.i, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i16 %.sink.i.i, ptr %i.cd, align 4, !tbaa !39
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !39 ; 3 uses
  %i.cg = icmp eq i16 %i.cf, -1
  br i1 %i.cg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = sext i16 %i.cf to i32
  %.not78.i.i.1 = icmp sgt i32 %i.br, %i.ch
  %spec.select.i.i.1 = select i1 %.not78.i.i.1, i16 %.269.i.i, i16 0
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ci = trunc i64 %indvars.iv.next.i.i to i8
  %i.cj = add i32 %.171.i.i, -1
  %i.ck = zext i32 %.171.i.i to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i8 %i.ci, ptr %i.cm, align 2, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i.1 = phi i16 [ 1, %bb.r ], [ %i.cf, %bb.q ]
  %.171.i.i.1 = phi i32 [ %i.cj, %bb.r ], [ %.171.i.i, %bb.q ] ; 3 uses
  %.269.i.i.1 = phi i16 [ %.269.i.i, %bb.r ], [ %spec.select.i.i.1, %bb.q ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i16 %.sink.i.i.1, ptr %i.cn, align 2, !tbaa !39
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.i.i.preheader.unr-lcssa, label %bb.m, !llvm.loop !40

.preheader79.i.i.preheader.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader79.i.i.preheader.unr-lcssa, %bb.l
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06782.i.i.epil.init = phi i16 [ 1, %bb.l ], [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 2 uses
  %.07081.i.i.epil.init = phi i32 [ %i.bk, %bb.l ], [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod167 = trunc i32 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil.init
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !39 ; 3 uses
  %i.cq = icmp eq i16 %i.cp, -1
  br i1 %i.cq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.cr = sext i16 %i.cp to i32
  %.not78.i.i.epil = icmp sgt i32 %i.br, %i.cr
  %spec.select.i.i.epil = select i1 %.not78.i.i.epil, i16 %.06782.i.i.epil.init, i16 0
  br label %.preheader79.i.i.preheader.epilog-lcssa

bb.u:                                             ; preds = %.epil.preheader
  %i.cs = trunc i64 %indvars.iv.i.i.epil.init to i8
  %i.ct = add i32 %.07081.i.i.epil.init, -1
  %i.cu = zext i32 %.07081.i.i.epil.init to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %i.cs, ptr %i.cw, align 2, !tbaa !35
  br label %.preheader79.i.i.preheader.epilog-lcssa

.preheader79.i.i.preheader.epilog-lcssa:          ; preds = %bb.u, %bb.t
  %.sink.i.i.epil = phi i16 [ 1, %bb.u ], [ %i.cp, %bb.t ]
  %.171.i.i.epil = phi i32 [ %i.ct, %bb.u ], [ %.07081.i.i.epil.init, %bb.t ]
  %.269.i.i.epil = phi i16 [ %.06782.i.i.epil.init, %bb.u ], [ %spec.select.i.i.epil, %bb.t ]
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.epil.init
  store i16 %.sink.i.i.epil, ptr %i.cx, align 2, !tbaa !39
  br label %.preheader79.i.i.preheader

.preheader79.i.i.preheader:                       ; preds = %.preheader79.i.i.preheader.unr-lcssa, %.preheader79.i.i.preheader.epilog-lcssa
  %.171.i.i.lcssa = phi i32 [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.171.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.269.i.i.lcssa = phi i16 [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.269.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 2 uses
  br label %.preheader79.i.i

.preheader79.i.i:                                 ; preds = %.preheader79.i.i.preheader, %._crit_edge.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %.06287.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv90.i.i
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !39 ; 5 uses
  %i.da = icmp sgt i16 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader79.i.i
  %i.db = trunc i64 %indvars.iv90.i.i to i8       ; 3 uses
  %i.dc = icmp eq i16 %i.cz, 1
  br i1 %i.dc, label %.epil.preheader168, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %i.dd = and i16 %i.cz, 32766
  %unroll_iter173 = zext nneg i16 %i.dd to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.new
  %.185.i.i = phi i32 [ %.06287.i.i, %.lr.ph.i.i.new ], [ %.2.i.i.1, %bb.z ] ; 2 uses
  %niter174 = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter174.next.1, %bb.z ]
  %i.de = zext nneg i32 %.185.i.i to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i8 %i.db, ptr %i.dg, align 2, !tbaa !35
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.1.pn.i.i = phi i32 [ %.185.i.i, %bb.v ], [ %.2.i.i, %bb.w ]
  %.pn.i.i = add nuw i32 %i.bo, %.1.pn.i.i
  %.2.i.i = and i32 %.pn.i.i, %i.bk               ; 4 uses
  %i.dh = icmp ugt i32 %.2.i.i, %.171.i.i.lcssa
  br i1 %i.dh, label %bb.w, label %bb.x, !llvm.loop !41

bb.x:                                             ; preds = %bb.w
end_hunk_0
begin_hunk_1_@HUF_readStats:bb.a

bb.as:                                            ; preds = %bb.ar
  %i.hc = lshr i32 %i.gw, 3
  %i.hd = zext nneg i32 %i.hc to i64
  %.024.i.i378.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.3327.idx.i.i, i64 %i.hd) ; 2 uses
  %.024.i.i.i.i = trunc nsw i64 %.024.i.i378.i.i to i32
  %i.he = and i64 %.024.i.i378.i.i, 4294967295
  %i.hf = shl nsw i32 %.024.i.i.i.i, 3
  %i.hg = sub nsw i32 %i.gw, %i.hf
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

BIT_reloadDStream.exit.sink.split.i.i.i:          ; preds = %bb.as, %bb.aq
  %.pn379.i.i = phi i64 [ %i.he, %bb.as ], [ %i.gz, %bb.aq ]
  %.sroa.27270.4.i.i = phi i32 [ %i.hg, %bb.as ], [ %i.ha, %bb.aq ]
  %.sroa.61277.3327.ptr.add.i.i = sub nsw i64 %.sroa.61277.3327.idx.i.i, %.pn379.i.i ; 2 uses
  %.sroa.61277.4.ptr.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61277.3327.ptr.add.i.i
  %.val30.i.sink.i.i.i = load i64, ptr %.sroa.61277.4.ptr.i.i, align 1
  br label %FSE_initDState.exit.i.i

FSE_initDState.exit.i.i:                          ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i, %bb.ar, %bb.ao
  %.sroa.61277.5.idx.i.i = phi i64 [ %.sroa.61277.3327.idx.i.i, %bb.ao ], [ 0, %bb.ar ], [ %.sroa.61277.3327.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 6 uses
  %.sroa.27270.5.i.i = phi i32 [ %i.gw, %bb.ao ], [ %i.gw, %bb.ar ], [ %.sroa.27270.4.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %.sroa.0269.4.i.i = phi i64 [ %.sroa.0269.3329.i.i, %bb.ao ], [ %.sroa.0269.3329.i.i, %bb.ar ], [ %.val30.i.sink.i.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %i.hh = and i32 %.sroa.27270.5.i.i, 63
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = shl i64 %.sroa.0269.4.i.i, %i.hi
  %i.hk = lshr i64 %i.hj, 1
  %i.hl = lshr i64 %i.hk, %i.gu                   ; 3 uses
  %i.hm = add nsw i32 %.sroa.27270.5.i.i, %i.bh   ; 7 uses
  %i.hn = icmp ugt i32 %i.hm, 64
  br i1 %i.hn, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %bb.at

bb.at:                                            ; preds = %FSE_initDState.exit.i.i
  %.not.i.i38.i.i = icmp slt i64 %.sroa.61277.5.idx.i.i, 8
  br i1 %.not.i.i38.i.i, label %bb.au, label %FSE_initDState.exit43.i.thread235.i

FSE_initDState.exit43.i.thread235.i:              ; preds = %bb.at
  %i.ho = lshr i32 %i.hm, 3
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = and i32 %i.hm, 7
  %.sroa.61277.5.ptr.add.i238.i = sub nuw nsw i64 %.sroa.61277.5.idx.i.i, %i.hp ; 2 uses
  %.sroa.61277.6.ptr.i239.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.61277.5.ptr.add.i238.i
  %.val30.i.sink.i41.i240.i = load i64, ptr %.sroa.61277.6.ptr.i239.i, align 1
  br label %.lr.ph.i.preheader

bb.au:                                            ; preds = %bb.at
  %i.hr = icmp eq i64 %.sroa.61277.5.idx.i.i, 0
  br i1 %i.hr, label %.lr.ph.i.preheader, label %FSE_initDState.exit43.i.i

FSE_initDState.exit43.i.i:                        ; preds = %bb.au
  %i.hs = lshr i32 %i.hm, 3
  %i.ht = zext nneg i32 %i.hs to i64
  %.024.i.i42380.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.5.idx.i.i, i64 %i.ht) ; 2 uses
  %.024.i.i42.i.i = trunc i64 %.024.i.i42380.i.i to i32
  %i.hu = and i64 %.024.i.i42380.i.i, 4294967295
  %i.hv = shl i32 %.024.i.i42.i.i, 3
  %i.hw = sub i32 %i.hm, %i.hv                    ; 3 uses
  %.sroa.61277.5.ptr.add.i.i = sub nsw i64 %.sroa.61277.5.idx.i.i, %i.hu ; 3 uses
  %.sroa.61277.6.ptr.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61277.5.ptr.add.i.i
  %.val30.i.sink.i41.i.i = load i64, ptr %.sroa.61277.6.ptr.i.i, align 1
  %i.hx = icmp ugt i32 %i.hw, 64
  br i1 %i.hx, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %FSE_initDState.exit43.i.i, %bb.au, %FSE_initDState.exit43.i.thread235.i
  %.sroa.0269.0.i99.i.ph = phi i64 [ %.val30.i.sink.i41.i240.i, %FSE_initDState.exit43.i.thread235.i ], [ %.sroa.0269.4.i.i, %bb.au ], [ %.val30.i.sink.i41.i.i, %FSE_initDState.exit43.i.i ]
  %.sroa.27270.0.i98.i.ph = phi i32 [ %i.hq, %FSE_initDState.exit43.i.thread235.i ], [ %i.hm, %bb.au ], [ %i.hw, %FSE_initDState.exit43.i.i ]
  %.sroa.61277.0.idx.i97.i.ph = phi i64 [ %.sroa.61277.5.ptr.add.i238.i, %FSE_initDState.exit43.i.thread235.i ], [ 0, %bb.au ], [ %.sroa.61277.5.ptr.add.i.i, %FSE_initDState.exit43.i.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ay
  %.036.idx.i13.i100.i = phi i64 [ %.036.add.i28.i.i, %bb.ay ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.0269.0.i99.i = phi i64 [ %.sroa.0269.6.i.i, %bb.ay ], [ %.sroa.0269.0.i99.i.ph, %.lr.ph.i.preheader ]
  %.sroa.27270.0.i98.i = phi i32 [ %i.kg, %bb.ay ], [ %.sroa.27270.0.i98.i.ph, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.61277.0.idx.i97.i = phi i64 [ %.sroa.61277.8.idx.i.i, %bb.ay ], [ %.sroa.61277.0.idx.i97.i.ph, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.0256.0.i96.i = phi i64 [ %i.ki, %bb.ay ], [ %i.hl, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.0262.0.i95.i = phi i64 [ %i.ju, %bb.ay ], [ %i.gv, %.lr.ph.i.preheader ] ; 3 uses
  %.036.ptr.ptr.i14.i101.i = getelementptr inbounds nuw i8, ptr %0, i64 %.036.idx.i13.i100.i ; 4 uses
  %.not.i44.i.i = icmp slt i64 %.sroa.61277.0.idx.i97.i, 8
  br i1 %.not.i44.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i
  %i.hy = lshr i32 %.sroa.27270.0.i98.i, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = and i32 %.sroa.27270.0.i98.i, 7
  br label %BIT_reloadDStream.exit.i.i

bb.aw:                                            ; preds = %.lr.ph.i
  %i.ib = icmp eq i64 %.sroa.61277.0.idx.i97.i, 0
  br i1 %i.ib, label %.lr.ph.i24.i.preheader, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ic = lshr i32 %.sroa.27270.0.i98.i, 3
  %i.id = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.ie = icmp sge i64 %.sroa.61277.0.idx.i97.i, %i.id
  %.024.i385.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.0.idx.i97.i, i64 %i.id) ; 2 uses
  %.024.i.i.i = trunc i64 %.024.i385.i.i to i32
  %i.if = and i64 %.024.i385.i.i, 4294967295
  %i.ig = shl i32 %.024.i.i.i, 3
  %i.ih = sub i32 %.sroa.27270.0.i98.i, %i.ig
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.ax, %bb.av
  %.pn.i23.i = phi i64 [ %i.if, %bb.ax ], [ %i.hz, %bb.av ]
  %.sroa.27270.8.i.i = phi i32 [ %i.ih, %bb.ax ], [ %i.ia, %bb.av ] ; 5 uses
  %.025.i.i.i = phi i1 [ %i.ie, %bb.ax ], [ true, %bb.av ]
  %.sroa.61277.8.idx.i.i = sub nsw i64 %.sroa.61277.0.idx.i97.i, %.pn.i23.i ; 5 uses
  %.sroa.0269.6.in.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61277.8.idx.i.i
  %.sroa.0269.6.i.i = load i64, ptr %.sroa.0269.6.in.i.i, align 1 ; 6 uses
  %i.ii = icmp samesign ult i64 %.036.idx.i13.i100.i, 252
  %i.ij = select i1 %.025.i.i.i, i1 %i.ii, i1 false
  br i1 %i.ij, label %bb.ay, label %.preheader437.i.i

.preheader437.i.i:                                ; preds = %BIT_reloadDStream.exit.i.i
  %i.ik = icmp ugt i32 %.sroa.27270.8.i.i, 64
  br i1 %i.ik, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.aw, %.preheader437.i.i
  %.sroa.0269.1471.i.i.ph = phi i64 [ %.sroa.0269.6.i.i, %.preheader437.i.i ], [ %.sroa.0269.0.i99.i, %bb.aw ]
  %.sroa.27270.1470.i.i.ph = phi i32 [ %.sroa.27270.8.i.i, %.preheader437.i.i ], [ %.sroa.27270.0.i98.i, %bb.aw ]
  %.sroa.61277.1.idx469.i.i.ph = phi i64 [ %.sroa.61277.8.idx.i.i, %.preheader437.i.i ], [ 0, %bb.aw ]
  br label %.lr.ph.i24.i

bb.ay:                                            ; preds = %BIT_reloadDStream.exit.i.i
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.0262.0.i95.i ; 3 uses
  %.sroa.0.0.copyload.i48.i.i = load i16, ptr %i.il, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !tbaa !10
  %i.im = zext i8 %.sroa.5.0.copyload.i.i.i to i32 ; 2 uses
  %i.in = and i32 %.sroa.27270.8.i.i, 63
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = shl i64 %.sroa.0269.6.i.i, %i.io
  %i.iq = sub nsw i32 0, %i.im
  %i.ir = and i32 %i.iq, 63
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = lshr i64 %i.ip, %i.is
  %i.iu = add i32 %.sroa.27270.8.i.i, %i.im       ; 2 uses
  %i.iv = zext i16 %.sroa.0.0.copyload.i48.i.i to i64
  store i8 %.sroa.4.0.copyload.i.i.i, ptr %.036.ptr.ptr.i14.i101.i, align 1, !tbaa !10
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.0256.0.i96.i ; 3 uses
  %.sroa.0.0.copyload.i51.i.i = load i16, ptr %i.iw, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i52.i.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %.sroa.4.0.copyload.i53.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i52.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i54.i.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %.sroa.5.0.copyload.i55.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i54.i.i, align 1, !tbaa !10
  %i.ix = zext i8 %.sroa.5.0.copyload.i55.i.i to i32 ; 2 uses
  %i.iy = and i32 %i.iu, 63
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl i64 %.sroa.0269.6.i.i, %i.iz
  %i.jb = sub nsw i32 0, %i.ix
  %i.jc = and i32 %i.jb, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = lshr i64 %i.ja, %i.jd
  %i.jf = add i32 %i.iu, %i.ix                    ; 2 uses
  %i.jg = zext i16 %.sroa.0.0.copyload.i51.i.i to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i14.i101.i, i64 1
  store i8 %.sroa.4.0.copyload.i53.i.i, ptr %i.jh, align 1, !tbaa !10
  %i.ji = getelementptr [4 x i8], ptr %i.bi, i64 %i.it
  %i.jj = getelementptr [4 x i8], ptr %i.ji, i64 %i.iv ; 3 uses
  %.sroa.0.0.copyload.i58.i.i = load i16, ptr %i.jj, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i59.i.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %.sroa.4.0.copyload.i60.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i59.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i61.i.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 3
  %.sroa.5.0.copyload.i62.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i61.i.i, align 1, !tbaa !10
  %i.jk = zext i8 %.sroa.5.0.copyload.i62.i.i to i32 ; 2 uses
  %i.jl = and i32 %i.jf, 63
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = shl i64 %.sroa.0269.6.i.i, %i.jm
  %i.jo = sub nsw i32 0, %i.jk
  %i.jp = and i32 %i.jo, 63
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = lshr i64 %i.jn, %i.jq
  %i.js = add i32 %i.jf, %i.jk                    ; 2 uses
  %i.jt = zext i16 %.sroa.0.0.copyload.i58.i.i to i64
  %i.ju = add i64 %i.jr, %i.jt                    ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i14.i101.i, i64 2
  store i8 %.sroa.4.0.copyload.i60.i.i, ptr %i.jv, align 1, !tbaa !10
  %i.jw = getelementptr [4 x i8], ptr %i.bi, i64 %i.je
  %i.jx = getelementptr [4 x i8], ptr %i.jw, i64 %i.jg ; 3 uses
  %.sroa.0.0.copyload.i65.i.i = load i16, ptr %i.jx, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %.sroa.4.0.copyload.i67.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i66.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i68.i.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 3
  %.sroa.5.0.copyload.i69.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i68.i.i, align 1, !tbaa !10
  %i.jy = zext i8 %.sroa.5.0.copyload.i69.i.i to i32 ; 2 uses
  %i.jz = and i32 %i.js, 63
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = shl i64 %.sroa.0269.6.i.i, %i.ka
  %i.kc = sub nsw i32 0, %i.jy
  %i.kd = and i32 %i.kc, 63
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = lshr i64 %i.kb, %i.ke
  %i.kg = add i32 %i.js, %i.jy                    ; 3 uses
  %i.kh = zext i16 %.sroa.0.0.copyload.i65.i.i to i64
  %i.ki = add i64 %i.kf, %i.kh                    ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i14.i101.i, i64 3
  store i8 %.sroa.4.0.copyload.i67.i.i, ptr %i.kj, align 1, !tbaa !10
  %.036.add.i28.i.i = add nuw nsw i64 %.036.idx.i13.i100.i, 4 ; 2 uses
  %i.kk = icmp ugt i32 %i.kg, 64
  br i1 %i.kk, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i, !llvm.loop !110

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader, %BIT_endOfDStream.exit97.thread.i.i
  %.1.idx.i15472.i.i = phi i64 [ %.add.i27.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.036.idx.i13.i100.i, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0269.1471.i.i = phi i64 [ %.sroa.0269.8.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0269.1471.i.i.ph, %.lr.ph.i24.i.preheader ]
  %.sroa.27270.1470.i.i = phi i32 [ %i.md, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.27270.1470.i.i.ph, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.61277.1.idx469.i.i = phi i64 [ %.sroa.61277.10.idx.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.61277.1.idx469.i.i.ph, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0256.1468.i.i = phi i64 [ %i.mf, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0256.0.i96.i, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0262.1467.i.i = phi i64 [ %i.li, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0262.0.i95.i, %.lr.ph.i24.i.preheader ] ; 2 uses
  %.1.ptr.ptr.i16473.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i15472.i.i
  %.not.i72.i.i = icmp slt i64 %.sroa.61277.1.idx469.i.i, 8
  br i1 %.not.i72.i.i, label %bb.az, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i24.i
  %i.kl = lshr i32 %.sroa.27270.1470.i.i, 3
  %i.km = zext nneg i32 %i.kl to i64
  %.sroa.61277.1.add387.i.i = sub nuw nsw i64 %.sroa.61277.1.idx469.i.i, %i.km ; 3 uses
  %.ptr391.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.61277.1.add387.i.i
  %i.kn = and i32 %.sroa.27270.1470.i.i, 7
  %.val30.i73.i.i = load i64, ptr %.ptr391.i.i, align 1
  %i.ko = icmp eq i64 %.sroa.61277.1.add387.i.i, 0
  br label %BIT_endOfDStream.exit.thread.i.i

bb.az:                                            ; preds = %.lr.ph.i24.i
  %i.kp = icmp eq i64 %.sroa.61277.1.idx469.i.i, 0
  br i1 %i.kp, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kq = lshr i32 %.sroa.27270.1470.i.i, 3
  %i.kr = zext nneg i32 %i.kq to i64
  %.024.i75392.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.1.idx469.i.i, i64 %i.kr) ; 2 uses
  %.024.i75.i.i = trunc i64 %.024.i75392.i.i to i32
  %i.ks = and i64 %.024.i75392.i.i, 4294967295
  %.sroa.61277.1.add.i.i = sub nsw i64 %.sroa.61277.1.idx469.i.i, %i.ks ; 2 uses
  %.ptr390.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61277.1.add.i.i
  %i.kt = shl i32 %.024.i75.i.i, 3
  %i.ku = sub i32 %.sroa.27270.1470.i.i, %i.kt
  %.val.i77.i.i = load i64, ptr %.ptr390.i.i, align 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.61277.9.ph.idx.i.i = phi i64 [ 0, %bb.az ], [ %.sroa.61277.1.add.i.i, %bb.ba ] ; 2 uses
  %.sroa.27270.9.ph.i.i = phi i32 [ %.sroa.27270.1470.i.i, %bb.az ], [ %i.ku, %bb.ba ] ; 2 uses
  %.sroa.0269.7.ph.i.i = phi i64 [ %.sroa.0269.1471.i.i, %bb.az ], [ %.val.i77.i.i, %bb.ba ]
  %i.kv = icmp eq i64 %.sroa.61277.9.ph.idx.i.i, 0 ; 2 uses
  %.not393.i.i = icmp eq i32 %.sroa.27270.9.ph.i.i, 64
  %or.cond.i.i = and i1 %i.kv, %.not393.i.i
  br i1 %or.cond.i.i, label %BIT_reloadDStream.exit80.i.i, label %BIT_endOfDStream.exit.thread.i.i

BIT_endOfDStream.exit.thread.i.i:                 ; preds = %bb.bb, %.thread.i.i
  %i.kw = phi i1 [ %i.ko, %.thread.i.i ], [ %i.kv, %bb.bb ]
  %.sroa.0269.7.ph629.i.i = phi i64 [ %.val30.i73.i.i, %.thread.i.i ], [ %.sroa.0269.7.ph.i.i, %bb.bb ] ; 2 uses
  %.sroa.27270.9.ph628.i.i = phi i32 [ %i.kn, %.thread.i.i ], [ %.sroa.27270.9.ph.i.i, %bb.bb ] ; 2 uses
  %.sroa.61277.9.ph.idx627.i.i = phi i64 [ %.sroa.61277.1.add387.i.i, %.thread.i.i ], [ %.sroa.61277.9.ph.idx.i.i, %bb.bb ] ; 5 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.0262.1467.i.i ; 3 uses
  %.sroa.0.0.copyload.i81.i.i = load i16, ptr %i.kx, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  %.sroa.4.0.copyload.i83.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i82.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i84.i.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 3
  %.sroa.5.0.copyload.i85.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i84.i.i, align 1, !tbaa !10
  %i.ky = zext i8 %.sroa.5.0.copyload.i85.i.i to i32 ; 2 uses
  %i.kz = and i32 %.sroa.27270.9.ph628.i.i, 63
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl i64 %.sroa.0269.7.ph629.i.i, %i.la
  %i.lc = sub nsw i32 0, %i.ky
  %i.ld = and i32 %i.lc, 63
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = lshr i64 %i.lb, %i.le
  %i.lg = add i32 %.sroa.27270.9.ph628.i.i, %i.ky ; 7 uses
  %i.lh = zext i16 %.sroa.0.0.copyload.i81.i.i to i64
  %i.li = add i64 %i.lf, %i.lh                    ; 5 uses
  %.add51.i23.i.i = or disjoint i64 %.1.idx.i15472.i.i, 1 ; 3 uses
  %.ptr.ptr.i24.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i23.i.i
  store i8 %.sroa.4.0.copyload.i83.i.i, ptr %.1.ptr.ptr.i16473.i.i, align 1, !tbaa !10
  %i.lj = icmp ugt i32 %i.lg, 64
  br i1 %i.lj, label %BIT_reloadDStream.exit80.split.loop.exit444.i.i, label %bb.bc

bb.bc:                                            ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.not.i88.i.i = icmp slt i64 %.sroa.61277.9.ph.idx627.i.i, 8
  br i1 %.not.i88.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lk = lshr i32 %i.lg, 3
  %i.ll = zext nneg i32 %i.lk to i64
  %.sroa.61277.9.ph.add386.i.i = sub nuw nsw i64 %.sroa.61277.9.ph.idx627.i.i, %i.ll ; 2 uses
  %.ptr389.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.61277.9.ph.add386.i.i
  %i.lm = and i32 %i.lg, 7
  %.val30.i89.i.i = load i64, ptr %.ptr389.i.i, align 1
  br label %BIT_reloadDStream.exit96.i.i

bb.be:                                            ; preds = %bb.bc
  br i1 %i.kw, label %BIT_reloadDStream.exit96.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ln = lshr i32 %i.lg, 3
  %i.lo = zext nneg i32 %i.ln to i64
  %.024.i91394.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.9.ph.idx627.i.i, i64 %i.lo) ; 2 uses
  %.024.i91.i.i = trunc i64 %.024.i91394.i.i to i32
  %i.lp = and i64 %.024.i91394.i.i, 4294967295
  %.sroa.61277.9.ph.add.i.i = sub nsw i64 %.sroa.61277.9.ph.idx627.i.i, %i.lp ; 2 uses
  %.ptr388.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61277.9.ph.add.i.i
  %i.lq = shl i32 %.024.i91.i.i, 3
  %i.lr = sub i32 %i.lg, %i.lq
  %.val.i93.i.i = load i64, ptr %.ptr388.i.i, align 1
  br label %BIT_reloadDStream.exit96.i.i

BIT_reloadDStream.exit96.i.i:                     ; preds = %bb.bf, %bb.be, %bb.bd
  %.sroa.61277.10.idx.i.i = phi i64 [ %.sroa.61277.9.ph.add386.i.i, %bb.bd ], [ %.sroa.61277.9.ph.add.i.i, %bb.bf ], [ 0, %bb.be ] ; 4 uses
  %.sroa.27270.10.i.i = phi i32 [ %i.lm, %bb.bd ], [ %i.lr, %bb.bf ], [ %i.lg, %bb.be ] ; 4 uses
  %.sroa.0269.8.i.i = phi i64 [ %.val30.i89.i.i, %bb.bd ], [ %.val.i93.i.i, %bb.bf ], [ %.sroa.0269.7.ph629.i.i, %bb.be ] ; 2 uses
  %i.ls = icmp eq i64 %.1.idx.i15472.i.i, 254
  br i1 %i.ls, label %BIT_reloadDStream.exit80.split.loop.exit456.i.i, label %bb.bg

bb.bg:                                            ; preds = %BIT_reloadDStream.exit96.i.i
  %i.lt = icmp eq i64 %.sroa.61277.10.idx.i.i, 0
  %.not395.i.i = icmp eq i32 %.sroa.27270.10.i.i, 64
  %or.cond425.i.i = and i1 %i.lt, %.not395.i.i
  br i1 %or.cond425.i.i, label %BIT_reloadDStream.exit80.i.i, label %BIT_endOfDStream.exit97.thread.i.i

BIT_endOfDStream.exit97.thread.i.i:               ; preds = %bb.bg
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.0256.1468.i.i ; 3 uses
  %.sroa.0.0.copyload.i98.i.i = load i16, ptr %i.lu, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i99.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %.sroa.4.0.copyload.i100.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i99.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i101.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 3
  %.sroa.5.0.copyload.i102.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i101.i.i, align 1, !tbaa !10
  %i.lv = zext i8 %.sroa.5.0.copyload.i102.i.i to i32 ; 2 uses
  %i.lw = and i32 %.sroa.27270.10.i.i, 63
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = shl i64 %.sroa.0269.8.i.i, %i.lx
  %i.lz = sub nsw i32 0, %i.lv
  %i.ma = and i32 %i.lz, 63
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = lshr i64 %i.ly, %i.mb
  %i.md = add i32 %.sroa.27270.10.i.i, %i.lv      ; 3 uses
  %i.me = zext i16 %.sroa.0.0.copyload.i98.i.i to i64
  %i.mf = add i64 %i.mc, %i.me                    ; 2 uses
  %.add.i27.i.i = add nuw nsw i64 %.1.idx.i15472.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i100.i.i, ptr %.ptr.ptr.i24.i.i, align 1, !tbaa !10
  %i.mg = icmp ugt i32 %i.md, 64
  br i1 %i.mg, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i24.i

BIT_reloadDStream.exit80.split.loop.exit444.i.i:  ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.sroa.61277.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61277.9.ph.idx627.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.split.loop.exit450.i.i:  ; preds = %bb.ay, %BIT_endOfDStream.exit97.thread.i.i, %.preheader437.i.i, %FSE_initDState.exit43.i.i, %FSE_initDState.exit.i.i
  %.sroa.61277.1.idx.lcssa.i.i = phi i64 [ %.sroa.61277.8.idx.i.i, %.preheader437.i.i ], [ %.sroa.61277.10.idx.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.61277.5.ptr.add.i.i, %FSE_initDState.exit43.i.i ], [ %.sroa.61277.5.idx.i.i, %FSE_initDState.exit.i.i ], [ %.sroa.61277.8.idx.i.i, %bb.ay ]
  %.sroa.0256.1.lcssa.ph451.i.i = phi i64 [ %.sroa.0256.0.i96.i, %.preheader437.i.i ], [ %i.mf, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.hl, %FSE_initDState.exit43.i.i ], [ %i.hl, %FSE_initDState.exit.i.i ], [ %i.ki, %bb.ay ]
  %.sroa.0262.2.ph452.i.i = phi i64 [ %.sroa.0262.0.i95.i, %.preheader437.i.i ], [ %i.li, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.gv, %FSE_initDState.exit43.i.i ], [ %i.gv, %FSE_initDState.exit.i.i ], [ %i.ju, %bb.ay ]
  %.sroa.27270.2.ph454.i.i = phi i32 [ %.sroa.27270.8.i.i, %.preheader437.i.i ], [ %i.md, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.hw, %FSE_initDState.exit43.i.i ], [ %i.hm, %FSE_initDState.exit.i.i ], [ %i.kg, %bb.ay ]
  %.2.idx.i18.ph455.i.i = phi i64 [ %.036.idx.i13.i100.i, %.preheader437.i.i ], [ %.add.i27.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ 0, %FSE_initDState.exit43.i.i ], [ 0, %FSE_initDState.exit.i.i ], [ %.036.add.i28.i.i, %bb.ay ]
  %.sroa.61277.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61277.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.split.loop.exit456.i.i:  ; preds = %BIT_reloadDStream.exit96.i.i
  %.sroa.61277.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61277.10.idx.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.i.i:                     ; preds = %bb.bg, %bb.bb, %BIT_reloadDStream.exit80.split.loop.exit456.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i
  %.sroa.0256.1.lcssa.i.i = phi i64 [ %.sroa.0256.1.lcssa.ph451.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.0256.1468.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.sroa.0256.1468.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %.sroa.0256.1468.i.i, %bb.bb ], [ %.sroa.0256.1468.i.i, %bb.bg ]
  %.sroa.0262.2.i.i = phi i64 [ %.sroa.0262.2.ph452.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %i.li, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %i.li, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %i.li, %bb.bg ], [ %.sroa.0262.1467.i.i, %bb.bb ]
  %.sroa.61277.2.i.i = phi ptr [ %.sroa.61277.1.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.61277.10.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.sroa.61277.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %i.ek, %bb.bb ], [ %i.ek, %bb.bg ]
  %.sroa.27270.2.i.i = phi i32 [ %.sroa.27270.2.ph454.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.27270.10.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %i.lg, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ 64, %bb.bb ], [ 64, %bb.bg ]
  %.2.idx.i18.i.i = phi i64 [ %.2.idx.i18.ph455.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ 255, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.add51.i23.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %.add51.i23.i.i, %bb.bg ], [ %.1.idx.i15472.i.i, %bb.bb ] ; 2 uses
  %i.mh = icmp eq ptr %.sroa.61277.2.i.i, %i.ek
  %.not396.i.i = icmp eq i32 %.sroa.27270.2.i.i, 64
  %or.cond426.i.i = and i1 %i.mh, %.not396.i.i
  %.not397.i.i = icmp eq i64 %.sroa.0262.2.i.i, 0
  %or.cond427.i.i = select i1 %or.cond426.i.i, i1 %.not397.i.i, i1 false
  %.not398.i.i = icmp eq i64 %.sroa.0256.1.lcssa.i.i, 0
  %or.cond428.i.i = select i1 %or.cond427.i.i, i1 %.not398.i.i, i1 false
  br i1 %or.cond428.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit105.thread.i.i

BIT_endOfDStream.exit105.thread.i.i:              ; preds = %BIT_reloadDStream.exit80.i.i
  %i.mi = icmp eq i64 %.2.idx.i18.i.i, 255
  %..i22.i.i = select i1 %i.mi, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

bb.bh:                                            ; preds = %bb.ac
  br i1 %i.el, label %FSE_decompress.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mj = icmp ugt i64 %i.ej, 7
  br i1 %i.mj, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.ptr400.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.g
  %i.mk = getelementptr i8, ptr %.ptr400.i.i, i64 -1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !10  ; 2 uses
  %i.mm = icmp eq i8 %i.ml, 0
  br i1 %i.mm, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit110.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.mn = load i8, ptr %i.ek, align 1, !tbaa !10
  %i.mo = zext i8 %i.mn to i64                    ; 7 uses
  switch i64 %i.ej, label %bb.br [
    i64 7, label %bb.bl
    i64 6, label %bb.bm
    i64 5, label %bb.bn
    i64 4, label %bb.bo
end_hunk_1
begin_hunk_2_@HUF_readStats:bb.a
  %.024.i.i118402.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.3360.idx.i.i, i64 %i.pa) ; 2 uses
  %.024.i.i118.i.i = trunc nsw i64 %.024.i.i118402.i.i to i32
  %i.pb = and i64 %.024.i.i118402.i.i, 4294967295
  %i.pc = shl nsw i32 %.024.i.i118.i.i, 3
  %i.pd = sub nsw i32 %i.ot, %i.pc
  br label %BIT_reloadDStream.exit.sink.split.i115.i.i

BIT_reloadDStream.exit.sink.split.i115.i.i:       ; preds = %bb.bw, %bb.bu
  %.sroa.27.4.i.i = phi i32 [ %i.pd, %bb.bw ], [ %i.ox, %bb.bu ]
  %.pn403.i.i = phi i64 [ %i.pb, %bb.bw ], [ %i.ow, %bb.bu ]
  %.sroa.61221.3360.ptr.add.i.i = sub nsw i64 %.sroa.61221.3360.idx.i.i, %.pn403.i.i ; 2 uses
  %.sroa.61221.4.ptr.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61221.3360.ptr.add.i.i
  %.val30.i.sink.i117.i.i = load i64, ptr %.sroa.61221.4.ptr.i.i, align 1
  br label %FSE_initDState.exit119.i.i

FSE_initDState.exit119.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i115.i.i, %bb.bv, %bb.bs
  %.sroa.0215.4.i.i = phi i64 [ %.sroa.0215.3358.i.i, %bb.bs ], [ %.sroa.0215.3358.i.i, %bb.bv ], [ %.val30.i.sink.i117.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 2 uses
  %.sroa.27.5.i.i = phi i32 [ %i.ot, %bb.bs ], [ %i.ot, %bb.bv ], [ %.sroa.27.4.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 2 uses
  %.sroa.61221.5.idx.i.i = phi i64 [ %.sroa.61221.3360.idx.i.i, %bb.bs ], [ 0, %bb.bv ], [ %.sroa.61221.3360.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 6 uses
  %i.pe = and i32 %.sroa.27.5.i.i, 63
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = shl i64 %.sroa.0215.4.i.i, %i.pf
  %i.ph = lshr i64 %i.pg, 1
  %i.pi = lshr i64 %i.ph, %i.or                   ; 3 uses
  %i.pj = add nsw i32 %.sroa.27.5.i.i, %i.bh      ; 7 uses
  %i.pk = icmp ugt i32 %i.pj, 64
  br i1 %i.pk, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %bb.bx

bb.bx:                                            ; preds = %FSE_initDState.exit119.i.i
  %.not.i.i123.i.i = icmp slt i64 %.sroa.61221.5.idx.i.i, 8
  br i1 %.not.i.i123.i.i, label %bb.by, label %FSE_initDState.exit128.i.thread251.i

FSE_initDState.exit128.i.thread251.i:             ; preds = %bb.bx
  %i.pl = lshr i32 %i.pj, 3
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = and i32 %i.pj, 7
  %.sroa.61221.5.ptr.add.i254.i = sub nuw nsw i64 %.sroa.61221.5.idx.i.i, %i.pm ; 2 uses
  %.sroa.61221.6.ptr.i255.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.61221.5.ptr.add.i254.i
  %.val30.i.sink.i126.i256.i = load i64, ptr %.sroa.61221.6.ptr.i255.i, align 1
  br label %.lr.ph113.i.preheader

bb.by:                                            ; preds = %bb.bx
  %i.po = icmp eq i64 %.sroa.61221.5.idx.i.i, 0
  br i1 %i.po, label %.lr.ph113.i.preheader, label %FSE_initDState.exit128.i.i

FSE_initDState.exit128.i.i:                       ; preds = %bb.by
  %i.pp = lshr i32 %i.pj, 3
  %i.pq = zext nneg i32 %i.pp to i64
  %.024.i.i127404.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.5.idx.i.i, i64 %i.pq) ; 2 uses
  %.024.i.i127.i.i = trunc i64 %.024.i.i127404.i.i to i32
  %i.pr = and i64 %.024.i.i127404.i.i, 4294967295
  %i.ps = shl i32 %.024.i.i127.i.i, 3
  %i.pt = sub i32 %i.pj, %i.ps                    ; 3 uses
  %.sroa.61221.5.ptr.add.i.i = sub nsw i64 %.sroa.61221.5.idx.i.i, %i.pr ; 3 uses
  %.sroa.61221.6.ptr.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61221.5.ptr.add.i.i
  %.val30.i.sink.i126.i.i = load i64, ptr %.sroa.61221.6.ptr.i.i, align 1
  %i.pu = icmp ugt i32 %i.pt, 64
  br i1 %i.pu, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph113.i.preheader

.lr.ph113.i.preheader:                            ; preds = %FSE_initDState.exit128.i.i, %bb.by, %FSE_initDState.exit128.i.thread251.i
  %.sroa.61221.0.idx.i108.i.ph = phi i64 [ %.sroa.61221.5.ptr.add.i254.i, %FSE_initDState.exit128.i.thread251.i ], [ 0, %bb.by ], [ %.sroa.61221.5.ptr.add.i.i, %FSE_initDState.exit128.i.i ]
  %.sroa.27.0.i107.i.ph = phi i32 [ %i.pn, %FSE_initDState.exit128.i.thread251.i ], [ %i.pj, %bb.by ], [ %i.pt, %FSE_initDState.exit128.i.i ]
  %.sroa.0215.0.i106.i.ph = phi i64 [ %.val30.i.sink.i126.i256.i, %FSE_initDState.exit128.i.thread251.i ], [ %.sroa.0215.4.i.i, %bb.by ], [ %.val30.i.sink.i126.i.i, %FSE_initDState.exit128.i.i ]
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %.lr.ph113.i.preheader, %bb.cc
  %.036.idx.i.i111.i = phi i64 [ %.036.add.i.i.i, %bb.cc ], [ 0, %.lr.ph113.i.preheader ] ; 5 uses
  %.sroa.0.0.i110.i = phi i64 [ %i.sj, %bb.cc ], [ %i.pi, %.lr.ph113.i.preheader ] ; 3 uses
  %.sroa.0207.0.i109.i = phi i64 [ %i.ru, %bb.cc ], [ %i.os, %.lr.ph113.i.preheader ] ; 3 uses
  %.sroa.61221.0.idx.i108.i = phi i64 [ %.sroa.61221.8.idx.i.i, %bb.cc ], [ %.sroa.61221.0.idx.i108.i.ph, %.lr.ph113.i.preheader ] ; 5 uses
  %.sroa.27.0.i107.i = phi i32 [ %i.sh, %bb.cc ], [ %.sroa.27.0.i107.i.ph, %.lr.ph113.i.preheader ] ; 5 uses
  %.sroa.0215.0.i106.i = phi i64 [ %.sroa.0215.6.i.i, %bb.cc ], [ %.sroa.0215.0.i106.i.ph, %.lr.ph113.i.preheader ]
  %.036.ptr.ptr.i.i112.i = getelementptr inbounds nuw i8, ptr %0, i64 %.036.idx.i.i111.i ; 4 uses
  %.not.i129.i.i = icmp slt i64 %.sroa.61221.0.idx.i108.i, 8
  br i1 %.not.i129.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph113.i
  %i.pv = lshr i32 %.sroa.27.0.i107.i, 3
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = and i32 %.sroa.27.0.i107.i, 7
  br label %BIT_reloadDStream.exit137.i.i

bb.ca:                                            ; preds = %.lr.ph113.i
  %i.py = icmp eq i64 %.sroa.61221.0.idx.i108.i, 0
  br i1 %i.py, label %.lr.ph514.i.i.preheader, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pz = lshr i32 %.sroa.27.0.i107.i, 3
  %i.qa = zext nneg i32 %i.pz to i64              ; 2 uses
  %i.qb = icmp sge i64 %.sroa.61221.0.idx.i108.i, %i.qa
  %.024.i132409.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.0.idx.i108.i, i64 %i.qa) ; 2 uses
  %.024.i132.i.i = trunc i64 %.024.i132409.i.i to i32
  %i.qc = and i64 %.024.i132409.i.i, 4294967295
  %i.qd = shl i32 %.024.i132.i.i, 3
  %i.qe = sub i32 %.sroa.27.0.i107.i, %i.qd
  br label %BIT_reloadDStream.exit137.i.i

BIT_reloadDStream.exit137.i.i:                    ; preds = %bb.cb, %bb.bz
  %.sroa.27.8.i.i = phi i32 [ %i.qe, %bb.cb ], [ %i.px, %bb.bz ] ; 5 uses
  %.pn733.i.i = phi i64 [ %i.qc, %bb.cb ], [ %i.pw, %bb.bz ]
  %.025.i131.i.i = phi i1 [ %i.qb, %bb.cb ], [ true, %bb.bz ]
  %.sroa.61221.8.idx.i.i = sub nsw i64 %.sroa.61221.0.idx.i108.i, %.pn733.i.i ; 5 uses
  %.sroa.0215.6.in.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61221.8.idx.i.i
  %.sroa.0215.6.i.i = load i64, ptr %.sroa.0215.6.in.i.i, align 1 ; 6 uses
  %i.qf = icmp samesign ult i64 %.036.idx.i.i111.i, 252
  %i.qg = select i1 %.025.i131.i.i, i1 %i.qf, i1 false
  br i1 %i.qg, label %bb.cc, label %.preheader.i26.i

.preheader.i26.i:                                 ; preds = %BIT_reloadDStream.exit137.i.i
  %i.qh = icmp ugt i32 %.sroa.27.8.i.i, 64
  br i1 %i.qh, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph514.i.i.preheader

.lr.ph514.i.i.preheader:                          ; preds = %bb.ca, %.preheader.i26.i
  %.sroa.61221.1.idx509.i.i.ph = phi i64 [ %.sroa.61221.8.idx.i.i, %.preheader.i26.i ], [ 0, %bb.ca ]
  %.sroa.27.1508.i.i.ph = phi i32 [ %.sroa.27.8.i.i, %.preheader.i26.i ], [ %.sroa.27.0.i107.i, %bb.ca ]
  %.sroa.0215.1507.i.i.ph = phi i64 [ %.sroa.0215.6.i.i, %.preheader.i26.i ], [ %.sroa.0215.0.i106.i, %bb.ca ]
  br label %.lr.ph514.i.i

bb.cc:                                            ; preds = %BIT_reloadDStream.exit137.i.i
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.0207.0.i109.i ; 3 uses
  %.sroa.0.0.copyload.i138.i.i = load i16, ptr %i.qi, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i139.i.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 2
  %.sroa.4.0.copyload.i140.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i139.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i141.i.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 3
  %.sroa.5.0.copyload.i142.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i141.i.i, align 1, !tbaa !10
  %i.qj = zext i8 %.sroa.5.0.copyload.i142.i.i to i32 ; 2 uses
  %i.qk = and i32 %.sroa.27.8.i.i, 63
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = shl i64 %.sroa.0215.6.i.i, %i.ql
  %i.qn = lshr i64 %i.qm, 1
  %i.qo = and i32 %i.qj, 63
  %i.qp = xor i32 %i.qo, 63
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = lshr i64 %i.qn, %i.qq
  %i.qs = add i32 %.sroa.27.8.i.i, %i.qj          ; 2 uses
  %i.qt = zext i16 %.sroa.0.0.copyload.i138.i.i to i64
  store i8 %.sroa.4.0.copyload.i140.i.i, ptr %.036.ptr.ptr.i.i112.i, align 1, !tbaa !10
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.0.0.i110.i ; 3 uses
  %.sroa.0.0.copyload.i145.i.i = load i16, ptr %i.qu, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i146.i.i = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  %.sroa.4.0.copyload.i147.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i146.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i148.i.i = getelementptr inbounds nuw i8, ptr %i.qu, i64 3
  %.sroa.5.0.copyload.i149.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i148.i.i, align 1, !tbaa !10
  %i.qv = zext i8 %.sroa.5.0.copyload.i149.i.i to i32 ; 2 uses
  %i.qw = and i32 %i.qs, 63
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = shl i64 %.sroa.0215.6.i.i, %i.qx
  %i.qz = lshr i64 %i.qy, 1
  %i.ra = and i32 %i.qv, 63
  %i.rb = xor i32 %i.ra, 63
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = lshr i64 %i.qz, %i.rc
  %i.re = add i32 %i.qs, %i.qv                    ; 2 uses
  %i.rf = zext i16 %.sroa.0.0.copyload.i145.i.i to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i112.i, i64 1
  store i8 %.sroa.4.0.copyload.i147.i.i, ptr %i.rg, align 1, !tbaa !10
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.qr
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.qt ; 3 uses
  %.sroa.0.0.copyload.i152.i.i = load i16, ptr %i.ri, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i153.i.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 2
  %.sroa.4.0.copyload.i154.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i153.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i155.i.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 3
  %.sroa.5.0.copyload.i156.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i155.i.i, align 1, !tbaa !10
  %i.rj = zext i8 %.sroa.5.0.copyload.i156.i.i to i32 ; 2 uses
  %i.rk = and i32 %i.re, 63
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = shl i64 %.sroa.0215.6.i.i, %i.rl
  %i.rn = lshr i64 %i.rm, 1
  %i.ro = and i32 %i.rj, 63
  %i.rp = xor i32 %i.ro, 63
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = lshr i64 %i.rn, %i.rq
  %i.rs = add i32 %i.re, %i.rj                    ; 2 uses
  %i.rt = zext i16 %.sroa.0.0.copyload.i152.i.i to i64
  %i.ru = add nuw i64 %i.rr, %i.rt                ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i112.i, i64 2
  store i8 %.sroa.4.0.copyload.i154.i.i, ptr %i.rv, align 1, !tbaa !10
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.rd
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.rf ; 3 uses
  %.sroa.0.0.copyload.i159.i.i = load i16, ptr %i.rx, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i160.i.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 2
  %.sroa.4.0.copyload.i161.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i160.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i162.i.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 3
  %.sroa.5.0.copyload.i163.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i162.i.i, align 1, !tbaa !10
  %i.ry = zext i8 %.sroa.5.0.copyload.i163.i.i to i32 ; 2 uses
  %i.rz = and i32 %i.rs, 63
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = shl i64 %.sroa.0215.6.i.i, %i.sa
  %i.sc = lshr i64 %i.sb, 1
  %i.sd = and i32 %i.ry, 63
  %i.se = xor i32 %i.sd, 63
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = lshr i64 %i.sc, %i.sf
  %i.sh = add i32 %i.rs, %i.ry                    ; 3 uses
  %i.si = zext i16 %.sroa.0.0.copyload.i159.i.i to i64
  %i.sj = add nuw i64 %i.sg, %i.si                ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i112.i, i64 3
  store i8 %.sroa.4.0.copyload.i161.i.i, ptr %i.sk, align 1, !tbaa !10
  %.036.add.i.i.i = add nuw nsw i64 %.036.idx.i.i111.i, 4 ; 2 uses
  %i.sl = icmp ugt i32 %i.sh, 64
  br i1 %i.sl, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph113.i, !llvm.loop !110

.lr.ph514.i.i:                                    ; preds = %.lr.ph514.i.i.preheader, %BIT_endOfDStream.exit192.thread.i.i
  %.1.idx.i512.i.i = phi i64 [ %.add.i.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.036.idx.i.i111.i, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0.1511.i.i = phi i64 [ %i.ui, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0.0.i110.i, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0207.1510.i.i = phi i64 [ %i.tk, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0207.0.i109.i, %.lr.ph514.i.i.preheader ] ; 2 uses
  %.sroa.61221.1.idx509.i.i = phi i64 [ %.sroa.61221.10.idx.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.61221.1.idx509.i.i.ph, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.27.1508.i.i = phi i32 [ %i.ug, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.27.1508.i.i.ph, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0215.1507.i.i = phi i64 [ %.sroa.0215.8.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0215.1507.i.i.ph, %.lr.ph514.i.i.preheader ]
  %.1.ptr.ptr.i513.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i512.i.i
  %.not.i166.i.i = icmp slt i64 %.sroa.61221.1.idx509.i.i, 8
  br i1 %.not.i166.i.i, label %bb.cd, label %.thread637.i.i

.thread637.i.i:                                   ; preds = %.lr.ph514.i.i
  %i.sm = lshr i32 %.sroa.27.1508.i.i, 3
  %i.sn = zext nneg i32 %i.sm to i64
  %.sroa.61221.1.add411.i.i = sub nuw nsw i64 %.sroa.61221.1.idx509.i.i, %i.sn ; 3 uses
  %.ptr415.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.61221.1.add411.i.i
  %i.so = and i32 %.sroa.27.1508.i.i, 7
  %.val30.i167.i.i = load i64, ptr %.ptr415.i.i, align 1
  %i.sp = icmp eq i64 %.sroa.61221.1.add411.i.i, 0
  br label %BIT_endOfDStream.exit175.thread.i.i

bb.cd:                                            ; preds = %.lr.ph514.i.i
  %i.sq = icmp eq i64 %.sroa.61221.1.idx509.i.i, 0
  br i1 %i.sq, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.sr = lshr i32 %.sroa.27.1508.i.i, 3
  %i.ss = zext nneg i32 %i.sr to i64
  %.024.i169416.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.1.idx509.i.i, i64 %i.ss) ; 2 uses
  %.024.i169.i.i = trunc i64 %.024.i169416.i.i to i32
  %i.st = and i64 %.024.i169416.i.i, 4294967295
  %.sroa.61221.1.add.i.i = sub nsw i64 %.sroa.61221.1.idx509.i.i, %i.st ; 2 uses
  %.ptr414.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61221.1.add.i.i
  %i.su = shl i32 %.024.i169.i.i, 3
  %i.sv = sub i32 %.sroa.27.1508.i.i, %i.su
  %.val.i171.i.i = load i64, ptr %.ptr414.i.i, align 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sroa.0215.7.ph.i.i = phi i64 [ %.sroa.0215.1507.i.i, %bb.cd ], [ %.val.i171.i.i, %bb.ce ]
  %.sroa.27.9.ph.i.i = phi i32 [ %.sroa.27.1508.i.i, %bb.cd ], [ %i.sv, %bb.ce ] ; 2 uses
  %.sroa.61221.9.ph.idx.i.i = phi i64 [ 0, %bb.cd ], [ %.sroa.61221.1.add.i.i, %bb.ce ] ; 2 uses
  %i.sw = icmp eq i64 %.sroa.61221.9.ph.idx.i.i, 0 ; 2 uses
  %.not417.i.i = icmp eq i32 %.sroa.27.9.ph.i.i, 64
  %or.cond429.i.i = and i1 %.not417.i.i, %i.sw
  %.not418.i.i = icmp eq i64 %.sroa.0207.1510.i.i, 0
  %or.cond430.i.i = select i1 %or.cond429.i.i, i1 %.not418.i.i, i1 false
  br i1 %or.cond430.i.i, label %BIT_reloadDStream.exit174.i.i, label %BIT_endOfDStream.exit175.thread.i.i

BIT_endOfDStream.exit175.thread.i.i:              ; preds = %bb.cf, %.thread637.i.i
  %i.sx = phi i1 [ %i.sp, %.thread637.i.i ], [ %i.sw, %bb.cf ]
  %.sroa.61221.9.ph.idx647.i.i = phi i64 [ %.sroa.61221.1.add411.i.i, %.thread637.i.i ], [ %.sroa.61221.9.ph.idx.i.i, %bb.cf ] ; 5 uses
  %.sroa.27.9.ph646.i.i = phi i32 [ %i.so, %.thread637.i.i ], [ %.sroa.27.9.ph.i.i, %bb.cf ] ; 2 uses
  %.sroa.0215.7.ph645.i.i = phi i64 [ %.val30.i167.i.i, %.thread637.i.i ], [ %.sroa.0215.7.ph.i.i, %bb.cf ] ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.0207.1510.i.i ; 3 uses
  %.sroa.0.0.copyload.i176.i.i = load i16, ptr %i.sy, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i177.i.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 2
  %.sroa.4.0.copyload.i178.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i177.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i179.i.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 3
  %.sroa.5.0.copyload.i180.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i179.i.i, align 1, !tbaa !10
  %i.sz = zext i8 %.sroa.5.0.copyload.i180.i.i to i32 ; 2 uses
  %i.ta = and i32 %.sroa.27.9.ph646.i.i, 63
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = shl i64 %.sroa.0215.7.ph645.i.i, %i.tb
  %i.td = lshr i64 %i.tc, 1
  %i.te = and i32 %i.sz, 63
  %i.tf = xor i32 %i.te, 63
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = lshr i64 %i.td, %i.tg
  %i.ti = add i32 %.sroa.27.9.ph646.i.i, %i.sz    ; 7 uses
  %i.tj = zext i16 %.sroa.0.0.copyload.i176.i.i to i64
  %i.tk = add nuw i64 %i.th, %i.tj                ; 5 uses
  %.add51.i.i.i = or disjoint i64 %.1.idx.i512.i.i, 1 ; 3 uses
  %.ptr.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i.i.i
  store i8 %.sroa.4.0.copyload.i178.i.i, ptr %.1.ptr.ptr.i513.i.i, align 1, !tbaa !10
  %i.tl = icmp ugt i32 %i.ti, 64
  br i1 %i.tl, label %BIT_reloadDStream.exit174.split.loop.exit484.i.i, label %bb.cg

bb.cg:                                            ; preds = %BIT_endOfDStream.exit175.thread.i.i
  %.not.i183.i.i = icmp slt i64 %.sroa.61221.9.ph.idx647.i.i, 8
  br i1 %.not.i183.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.tm = lshr i32 %i.ti, 3
  %i.tn = zext nneg i32 %i.tm to i64
  %.sroa.61221.9.ph.add410.i.i = sub nuw nsw i64 %.sroa.61221.9.ph.idx647.i.i, %i.tn ; 2 uses
  %.ptr413.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.61221.9.ph.add410.i.i
  %i.to = and i32 %i.ti, 7
  %.val30.i184.i.i = load i64, ptr %.ptr413.i.i, align 1
  br label %BIT_reloadDStream.exit191.i.i

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.sx, label %BIT_reloadDStream.exit191.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tp = lshr i32 %i.ti, 3
  %i.tq = zext nneg i32 %i.tp to i64
  %.024.i186419.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.9.ph.idx647.i.i, i64 %i.tq) ; 2 uses
  %.024.i186.i.i = trunc i64 %.024.i186419.i.i to i32
  %i.tr = and i64 %.024.i186419.i.i, 4294967295
  %.sroa.61221.9.ph.add.i.i = sub nsw i64 %.sroa.61221.9.ph.idx647.i.i, %i.tr ; 2 uses
  %.ptr412.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61221.9.ph.add.i.i
  %i.ts = shl i32 %.024.i186.i.i, 3
  %i.tt = sub i32 %i.ti, %i.ts
  %.val.i188.i.i = load i64, ptr %.ptr412.i.i, align 1
  br label %BIT_reloadDStream.exit191.i.i

BIT_reloadDStream.exit191.i.i:                    ; preds = %bb.cj, %bb.ci, %bb.ch
  %.sroa.0215.8.i.i = phi i64 [ %.val30.i184.i.i, %bb.ch ], [ %.val.i188.i.i, %bb.cj ], [ %.sroa.0215.7.ph645.i.i, %bb.ci ] ; 2 uses
  %.sroa.27.10.i.i = phi i32 [ %i.to, %bb.ch ], [ %i.tt, %bb.cj ], [ %i.ti, %bb.ci ] ; 4 uses
  %.sroa.61221.10.idx.i.i = phi i64 [ %.sroa.61221.9.ph.add410.i.i, %bb.ch ], [ %.sroa.61221.9.ph.add.i.i, %bb.cj ], [ 0, %bb.ci ] ; 4 uses
  %i.tu = icmp eq i64 %.1.idx.i512.i.i, 254
  br i1 %i.tu, label %BIT_reloadDStream.exit174.split.loop.exit496.i.i, label %bb.ck

bb.ck:                                            ; preds = %BIT_reloadDStream.exit191.i.i
  %i.tv = icmp eq i64 %.sroa.61221.10.idx.i.i, 0
  %.not420.i.i = icmp eq i32 %.sroa.27.10.i.i, 64
  %or.cond431.i.i = and i1 %.not420.i.i, %i.tv
  %.not421.i.i = icmp eq i64 %.sroa.0.1511.i.i, 0
  %or.cond432.i.i = select i1 %or.cond431.i.i, i1 %.not421.i.i, i1 false
  br i1 %or.cond432.i.i, label %BIT_reloadDStream.exit174.i.i, label %BIT_endOfDStream.exit192.thread.i.i

BIT_endOfDStream.exit192.thread.i.i:              ; preds = %bb.ck
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.0.1511.i.i ; 3 uses
  %.sroa.0.0.copyload.i193.i.i = load i16, ptr %i.tw, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i194.i.i = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  %.sroa.4.0.copyload.i195.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i194.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i196.i.i = getelementptr inbounds nuw i8, ptr %i.tw, i64 3
  %.sroa.5.0.copyload.i197.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i196.i.i, align 1, !tbaa !10
  %i.tx = zext i8 %.sroa.5.0.copyload.i197.i.i to i32 ; 2 uses
  %i.ty = and i32 %.sroa.27.10.i.i, 63
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = shl i64 %.sroa.0215.8.i.i, %i.tz
  %i.ub = lshr i64 %i.ua, 1
  %i.uc = and i32 %i.tx, 63
  %i.ud = xor i32 %i.uc, 63
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = lshr i64 %i.ub, %i.ue
  %i.ug = add i32 %.sroa.27.10.i.i, %i.tx         ; 3 uses
  %i.uh = zext i16 %.sroa.0.0.copyload.i193.i.i to i64
  %i.ui = add nuw i64 %i.uf, %i.uh                ; 2 uses
  %.add.i.i.i = add nuw nsw i64 %.1.idx.i512.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i195.i.i, ptr %.ptr.ptr.i.i.i, align 1, !tbaa !10
  %i.uj = icmp ugt i32 %i.ug, 64
  br i1 %i.uj, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph514.i.i

BIT_reloadDStream.exit174.split.loop.exit484.i.i: ; preds = %BIT_endOfDStream.exit175.thread.i.i
  %.sroa.61221.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61221.9.ph.idx647.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.split.loop.exit490.i.i: ; preds = %bb.cc, %BIT_endOfDStream.exit192.thread.i.i, %.preheader.i26.i, %FSE_initDState.exit128.i.i, %FSE_initDState.exit119.i.i
  %.sroa.61221.1.idx.lcssa.i.i = phi i64 [ %.sroa.61221.8.idx.i.i, %.preheader.i26.i ], [ %.sroa.61221.10.idx.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.61221.5.ptr.add.i.i, %FSE_initDState.exit128.i.i ], [ %.sroa.61221.5.idx.i.i, %FSE_initDState.exit119.i.i ], [ %.sroa.61221.8.idx.i.i, %bb.cc ]
  %.sroa.0.1.lcssa.ph491.i.i = phi i64 [ %.sroa.0.0.i110.i, %.preheader.i26.i ], [ %i.ui, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.pi, %FSE_initDState.exit128.i.i ], [ %i.pi, %FSE_initDState.exit119.i.i ], [ %i.sj, %bb.cc ]
  %.sroa.27.2.ph492.i.i = phi i32 [ %.sroa.27.8.i.i, %.preheader.i26.i ], [ %i.ug, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.pt, %FSE_initDState.exit128.i.i ], [ %i.pj, %FSE_initDState.exit119.i.i ], [ %i.sh, %bb.cc ]
  %.sroa.0207.2.ph494.i.i = phi i64 [ %.sroa.0207.0.i109.i, %.preheader.i26.i ], [ %i.tk, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.os, %FSE_initDState.exit128.i.i ], [ %i.os, %FSE_initDState.exit119.i.i ], [ %i.ru, %bb.cc ]
  %.2.idx.i.ph495.i.i = phi i64 [ %.036.idx.i.i111.i, %.preheader.i26.i ], [ %.add.i.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ 0, %FSE_initDState.exit128.i.i ], [ 0, %FSE_initDState.exit119.i.i ], [ %.036.add.i.i.i, %bb.cc ]
  %.sroa.61221.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61221.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.split.loop.exit496.i.i: ; preds = %BIT_reloadDStream.exit191.i.i
  %.sroa.61221.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ek, i64 %.sroa.61221.10.idx.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.i.i:                    ; preds = %bb.ck, %bb.cf, %BIT_reloadDStream.exit174.split.loop.exit496.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.1.lcssa.ph491.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.0.1511.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.sroa.0.1511.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %.sroa.0.1511.i.i, %bb.cf ], [ 0, %bb.ck ]
  %.sroa.27.2.i.i = phi i32 [ %.sroa.27.2.ph492.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.27.10.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %i.ti, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ 64, %bb.cf ], [ 64, %bb.ck ]
  %.sroa.61221.2.i.i = phi ptr [ %.sroa.61221.1.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.61221.10.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.sroa.61221.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %i.ek, %bb.cf ], [ %i.ek, %bb.ck ]
  %.sroa.0207.2.i.i = phi i64 [ %.sroa.0207.2.ph494.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %i.tk, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %i.tk, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ 0, %bb.cf ], [ %i.tk, %bb.ck ]
  %.2.idx.i.i.i = phi i64 [ %.2.idx.i.ph495.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ 255, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.add51.i.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %.1.idx.i512.i.i, %bb.cf ], [ %.add51.i.i.i, %bb.ck ] ; 2 uses
  %i.uk = icmp eq ptr %.sroa.61221.2.i.i, %i.ek
  %.not422.i.i = icmp eq i32 %.sroa.27.2.i.i, 64
  %or.cond433.i.i = and i1 %.not422.i.i, %i.uk
  %.not423.i.i = icmp eq i64 %.sroa.0207.2.i.i, 0
  %or.cond434.i.i = select i1 %or.cond433.i.i, i1 %.not423.i.i, i1 false
  %.not424.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i, 0
  %or.cond435.i.i = select i1 %or.cond434.i.i, i1 %.not424.i.i, i1 false
  br i1 %or.cond435.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit200.thread.i.i

BIT_endOfDStream.exit200.thread.i.i:              ; preds = %BIT_reloadDStream.exit174.i.i
  %i.ul = icmp eq i64 %.2.idx.i.i.i, 255
  %..i.i.i = select i1 %i.ul, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

FSE_decompress.exit.thread:                       ; preds = %FSE_buildDTable.exit.thread.i, %bb.g, %bb.h, %bb.i, %bb.an, %BIT_initDStream.exit.i.i, %BIT_endOfDStream.exit105.thread.i.i, %BIT_initDStream.exit110.i.i, %BIT_endOfDStream.exit200.thread.i.i, %bb.ad, %bb.af, %bb.bh, %bb.bj, %bb.br
  %.0.i.ph = phi i64 [ -1, %bb.br ], [ -1, %bb.bj ], [ -72, %bb.bh ], [ -1, %bb.af ], [ -72, %bb.ad ], [ %..i.i.i, %BIT_endOfDStream.exit200.thread.i.i ], [ %i.ej, %BIT_initDStream.exit110.i.i ], [ %..i22.i.i, %BIT_endOfDStream.exit105.thread.i.i ], [ %i.ej, %BIT_initDStream.exit.i.i ], [ -1, %bb.an ], [ -72, %bb.i ], [ %i.be, %bb.h ], [ -72, %bb.g ], [ %.0.i.ph.i, %FSE_buildDTable.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.critedge

FSE_decompress.exit:                              ; preds = %BIT_reloadDStream.exit80.i.i, %BIT_reloadDStream.exit174.i.i
  %.0.i = phi i64 [ %.2.idx.i.i.i, %BIT_reloadDStream.exit174.i.i ], [ %.2.idx.i18.i.i, %BIT_reloadDStream.exit80.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.um = icmp ult i64 %.0.i, -119
  br i1 %i.um, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %FSE_decompress.exit, %bb.d
  %.074 = phi i64 [ %i.m, %bb.d ], [ %.0.i, %FSE_decompress.exit ] ; 2 uses
  %.070 = phi i64 [ 0, %bb.d ], [ %i.g, %FSE_decompress.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  %.not170 = icmp eq i64 %.074, 0
  br i1 %.not170, label %.critedge, label %.lr.ph166.preheader

.lr.ph166.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.070293 = phi i64 [ %i.p, %.loopexit.thread ], [ %.070, %.loopexit ]
  %.074291 = phi i64 [ %i.n, %.loopexit.thread ], [ %.074, %.loopexit ] ; 3 uses
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.cl
  %i.un = phi i64 [ %i.vb, %bb.cl ], [ 0, %.lr.ph166.preheader ]
  %.069165 = phi i32 [ %i.uz, %bb.cl ], [ 0, %.lr.ph166.preheader ]
  %.173164 = phi i32 [ %i.va, %bb.cl ], [ 0, %.lr.ph166.preheader ]
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 %i.un ; 2 uses
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !10  ; 2 uses
  %i.uq = icmp ugt i8 %i.up, 15
  br i1 %i.uq, label %.critedge, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph166
  %i.ur = zext nneg i8 %i.up to i64
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ur ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !28
  %i.uu = add i32 %i.ut, 1
  store i32 %i.uu, ptr %i.us, align 4, !tbaa !28
  %i.uv = load i8, ptr %i.uo, align 1, !tbaa !10
  %i.uw = zext nneg i8 %i.uv to i32
  %i.ux = shl nuw i32 1, %i.uw
  %i.uy = ashr i32 %i.ux, 1
  %i.uz = add i32 %i.uy, %.069165                 ; 4 uses
  %i.va = add i32 %.173164, 1                     ; 2 uses
  %i.vb = zext i32 %i.va to i64                   ; 2 uses
  %i.vc = icmp ugt i64 %.074291, %i.vb
  br i1 %i.vc, label %.lr.ph166, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.cl
  %i.vd = icmp eq i32 %i.uz, 0
  br i1 %i.vd, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge
  %i.ve = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.uz, i1 true) ; 2 uses
  %i.vf = xor i32 %i.ve, 31                       ; 2 uses
  %i.vg = sub nuw nsw i32 32, %i.ve
  %i.vh = icmp samesign ugt i32 %i.vf, 15
  br i1 %i.vh, label %.critedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vi = shl nuw nsw i32 2, %i.vf
  %i.vj = sub i32 %i.vi, %i.uz                    ; 2 uses
  %i.vk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vj, i1 true) ; 2 uses
  %i.vl = lshr exact i32 -2147483648, %i.vk
  %.not84 = icmp eq i32 %i.vl, %i.vj
  br i1 %.not84, label %bb.co, label %.critedge

bb.co:                                            ; preds = %bb.cn
  %i.vm = sub nuw nsw i32 32, %i.vk               ; 2 uses
  %i.vn = trunc nuw nsw i32 %i.vm to i8
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 %.074291
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !10
  %i.vp = zext nneg i32 %i.vm to i64
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vp ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !28
  %i.vs = add i32 %i.vr, 1
  store i32 %i.vs, ptr %i.vq, align 4, !tbaa !28
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !28 ; 2 uses
  %i.vv = icmp ugt i32 %i.vu, 1
  %i.vw = and i32 %i.vu, 1
  %.not85 = icmp eq i32 %i.vw, 0
  %or.cond = and i1 %i.vv, %.not85
  br i1 %or.cond, label %bb.cp, label %.critedge

bb.cp:                                            ; preds = %bb.co
  %i.vx = trunc nuw i64 %.074291 to i32
  %i.vy = add i32 %i.vx, 1
  store i32 %i.vy, ptr %2, align 4, !tbaa !28
  store i32 %i.vg, ptr %3, align 4, !tbaa !28
  %i.vz = add nuw nsw i64 %.070293, 1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph166, %.loopexit, %FSE_decompress.exit.thread, %bb.cn, %bb.co, %bb.cm, %._crit_edge, %FSE_decompress.exit, %bb.f, %bb.e, %bb.a, %bb.cp
  %.1 = phi i64 [ %.0.i, %FSE_decompress.exit ], [ %.0.i.ph, %FSE_decompress.exit.thread ], [ -20, %._crit_edge ], [ -20, %bb.co ], [ %i.vz, %bb.cp ], [ -20, %bb.cn ], [ -72, %bb.a ], [ -72, %bb.f ], [ -72, %bb.e ], [ -20, %bb.cm ], [ -20, %.loopexit ], [ -20, %.lr.ph166 ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @FSE_readNCount(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ult i64 %4, 4
  br i1 %i.b, label %.critedge158, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val160 = load i32, ptr %3, align 1            ; 2 uses
  %i.c = and i32 %.val160, 15                     ; 4 uses
  %i.d = icmp samesign ugt i32 %i.c, 10
  br i1 %i.d, label %.critedge158, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.b
  %i.e = add nuw nsw i32 %i.c, 5
  store i32 %i.e, ptr %2, align 4, !tbaa !28
  %i.f = shl nuw nsw i32 32, %i.c                 ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = add nuw nsw i32 %i.c, 6
  %i.i = lshr i32 %.val160, 4
  %i.j = load i32, ptr %1, align 4, !tbaa !28     ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 -5
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -7 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph203, %._crit_edge191
  %.0110201 = phi i1 [ true, %.lr.ph203 ], [ %i.bp, %._crit_edge191 ]
  %.0111200 = phi i32 [ 0, %.lr.ph203 ], [ %i.bm, %._crit_edge191 ] ; 8 uses
  %.0115199 = phi i32 [ 4, %.lr.ph203 ], [ %.8, %._crit_edge191 ] ; 3 uses
  %.0119198 = phi i32 [ %i.i, %.lr.ph203 ], [ %i.cc, %._crit_edge191 ] ; 4 uses
  %.0126197 = phi i32 [ %i.f, %.lr.ph203 ], [ %.1127.lcssa, %._crit_edge191 ] ; 6 uses
  %.0128196 = phi i32 [ %i.g, %.lr.ph203 ], [ %i.bl, %._crit_edge191 ] ; 2 uses
  %.0129195 = phi i32 [ %i.h, %.lr.ph203 ], [ %.1130.lcssa, %._crit_edge191 ] ; 4 uses
  %.0131194 = phi ptr [ %3, %.lr.ph203 ], [ %.6137, %._crit_edge191 ] ; 3 uses
  %.not = icmp ugt i32 %.0111200, %i.j
  br i1 %.not, label %.critedge158, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.0110201, label %bb.i, label %.preheader163

.preheader163:                                    ; preds = %bb.d
  %i.o = and i32 %.0119198, 65535
  %i.p = icmp eq i32 %i.o, 65535
  br i1 %i.p, label %.lr.ph, label %.preheader162

.preheader162:                                    ; preds = %bb.g, %.preheader163
  %.1132.lcssa = phi ptr [ %.0131194, %.preheader163 ], [ %.2133, %bb.g ] ; 4 uses
  %.1120.lcssa = phi i32 [ %.0119198, %.preheader163 ], [ %.2121, %bb.g ] ; 3 uses
  %.1116.lcssa = phi i32 [ %.0115199, %.preheader163 ], [ %.2117, %bb.g ] ; 2 uses
  %.0107.lcssa = phi i32 [ %.0111200, %.preheader163 ], [ %i.s, %bb.g ] ; 2 uses
  %i.q = and i32 %.1120.lcssa, 3                  ; 2 uses
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %.lr.ph178, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader163, %bb.g
  %.0107171 = phi i32 [ %i.s, %bb.g ], [ %.0111200, %.preheader163 ]
  %.1116170 = phi i32 [ %.2117, %bb.g ], [ %.0115199, %.preheader163 ] ; 3 uses
  %.1120169 = phi i32 [ %.2121, %bb.g ], [ %.0119198, %.preheader163 ]
  %.1132168 = phi ptr [ %.2133, %bb.g ], [ %.0131194, %.preheader163 ] ; 3 uses
  %i.s = add i32 %.0107171, 24                    ; 2 uses
  %i.t = icmp ult ptr %.1132168, %i.k
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.1132168, i64 2 ; 2 uses
  %.val159 = load i32, ptr %i.u, align 1
  %i.v = lshr i32 %.val159, %.1116170
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.w = lshr i32 %.1120169, 16
  %i.x = add nsw i32 %.1116170, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2133 = phi ptr [ %i.u, %bb.e ], [ %.1132168, %bb.f ] ; 2 uses
  %.2121 = phi i32 [ %i.v, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %.2117 = phi i32 [ %.1116170, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = and i32 %.2121, 65535
  %i.z = icmp eq i32 %i.y, 65535
  br i1 %i.z, label %.lr.ph, label %.preheader162, !llvm.loop !112

.lr.ph178:                                        ; preds = %.preheader162, %.lr.ph178
  %.1108177 = phi i32 [ %i.aa, %.lr.ph178 ], [ %.0107.lcssa, %.preheader162 ]
  %.3118176 = phi i32 [ %i.ac, %.lr.ph178 ], [ %.1116.lcssa, %.preheader162 ]
  %.3122175 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.1120.lcssa, %.preheader162 ]
  %i.aa = add i32 %.1108177, 3                    ; 2 uses
  %i.ab = lshr i32 %.3122175, 2                   ; 3 uses
  %i.ac = add nsw i32 %.3118176, 2                ; 2 uses
  %i.ad = and i32 %i.ab, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph178, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %.lr.ph178, %.preheader162
  %.3122.lcssa = phi i32 [ %.1120.lcssa, %.preheader162 ], [ %i.ab, %.lr.ph178 ]
  %.3118.lcssa = phi i32 [ %.1116.lcssa, %.preheader162 ], [ %i.ac, %.lr.ph178 ]
  %.1108.lcssa = phi i32 [ %.0107.lcssa, %.preheader162 ], [ %i.aa, %.lr.ph178 ] ; 2 uses
  %.lcssa = phi i32 [ %i.q, %.preheader162 ], [ %i.ad, %.lr.ph178 ] ; 2 uses
  %i.af = add i32 %.1108.lcssa, %.lcssa           ; 3 uses
  %i.ag = add nsw i32 %.3118.lcssa, 2             ; 3 uses
  %.not151 = icmp ugt i32 %i.af, %i.j
  br i1 %.not151, label %.critedge158, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ah = icmp ult i32 %.0111200, %i.af
  br i1 %i.ah, label %.lr.ph184.preheader, label %._crit_edge185

.lr.ph184.preheader:                              ; preds = %.preheader
  %i.ai = zext i32 %.0111200 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.aj
  %i.ak = add i32 %.1108.lcssa, -1
  %i.al = add i32 %i.ak, %.lcssa
  %i.am = sub i32 %i.al, %.0111200
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = add nuw nsw i64 %i.ao, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.ap, i1 false), !tbaa !39
  br label %._crit_edge185

._crit_edge185:                                   ; preds = %.lr.ph184.preheader, %.preheader
  %.1112.lcssa = phi i32 [ %.0111200, %.preheader ], [ %i.af, %.lr.ph184.preheader ] ; 2 uses
  %.not149 = icmp ugt ptr %.1132.lcssa, %i.l
  %i.aq = ashr i32 %i.ag, 3
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.1132.lcssa, i64 %i.ar
  %.not150 = icmp ugt ptr %i.as, %i.m
  %or.cond = select i1 %.not149, i1 %.not150, i1 false
  br i1 %or.cond, label %bb.h, label %._crit_edge185._crit_edge

._crit_edge185._crit_edge:                        ; preds = %._crit_edge185
  %i.at = getelementptr inbounds i8, ptr %.1132.lcssa, i64 %i.ar ; 2 uses
  %i.au = and i32 %i.ag, 7                        ; 2 uses
  %.val = load i32, ptr %i.at, align 1
  %i.av = lshr i32 %.val, %i.au
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge185
  %i.aw = lshr i32 %.3122.lcssa, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge185._crit_edge, %bb.d
  %.5136 = phi ptr [ %.0131194, %bb.d ], [ %.1132.lcssa, %bb.h ], [ %i.at, %._crit_edge185._crit_edge ] ; 4 uses
  %.6125 = phi i32 [ %.0119198, %bb.d ], [ %i.aw, %bb.h ], [ %i.av, %._crit_edge185._crit_edge ] ; 2 uses
  %.6 = phi i32 [ %.0115199, %bb.d ], [ %i.ag, %bb.h ], [ %i.au, %._crit_edge185._crit_edge ]
  %.3114 = phi i32 [ %.0111200, %bb.d ], [ %.1112.lcssa, %bb.h ], [ %.1112.lcssa, %._crit_edge185._crit_edge ] ; 3 uses
  %i.ax = shl nsw i32 %.0126197, 1
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  %i.az = sub nsw i32 %i.ay, %.0128196            ; 2 uses
  %i.ba = add nsw i32 %.0126197, -1
  %i.bb = and i32 %.6125, %i.ba                   ; 2 uses
  %sext = shl i32 %i.az, 16
  %i.bc = ashr exact i32 %sext, 16
  %i.bd = icmp ult i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %.0129195, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bf = and i32 %.6125, %i.ay                   ; 2 uses
  %sext152 = shl i32 %i.bf, 16
  %i.bg = ashr exact i32 %sext152, 16
  %.not153 = icmp slt i32 %i.bg, %.0126197
  %i.bh = select i1 %.not153, i32 0, i32 %i.az
  %spec.select = sub i32 %i.bf, %i.bh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi i32 [ %i.be, %bb.j ], [ %.0129195, %bb.k ]
  %.1.in = phi i32 [ %i.bb, %bb.j ], [ %spec.select, %bb.k ]
  %.1 = trunc i32 %.1.in to i16
  %.7 = add nsw i32 %.pn, %.6                     ; 3 uses
  %i.bi = add i16 %.1, -1                         ; 3 uses
  %i.bj = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %i.bi, i1 false)
  %i.bk = sext i16 %i.bj to i32
  %i.bl = sub nsw i32 %.0128196, %i.bk            ; 5 uses
  %i.bm = add i32 %.3114, 1
  %i.bn = zext i32 %.3114 to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bn
  store i16 %i.bi, ptr %i.bo, align 2, !tbaa !39
  %i.bp = icmp ne i16 %i.bi, 0
  %i.bq = icmp slt i32 %i.bl, %.0126197
  br i1 %i.bq, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %bb.l, %.lr.ph190
  %.1127188 = phi i32 [ %i.bs, %.lr.ph190 ], [ %.0126197, %bb.l ]
  %.1130187 = phi i32 [ %i.br, %.lr.ph190 ], [ %.0129195, %bb.l ]
  %i.br = add nsw i32 %.1130187, -1               ; 2 uses
  %i.bs = ashr i32 %.1127188, 1                   ; 3 uses
  %i.bt = icmp slt i32 %i.bl, %i.bs
  br i1 %i.bt, label %.lr.ph190, label %._crit_edge191, !llvm.loop !114

._crit_edge191:                                   ; preds = %.lr.ph190, %bb.l
  %.1130.lcssa = phi i32 [ %.0129195, %bb.l ], [ %i.br, %.lr.ph190 ]
  %.1127.lcssa = phi i32 [ %.0126197, %bb.l ], [ %i.bs, %.lr.ph190 ]
  %.not154 = icmp ugt ptr %.5136, %i.l
  %i.bu = ashr i32 %.7, 3
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.5136, i64 %i.bv
  %.not155 = icmp ugt ptr %i.bw, %i.m
  %or.cond242 = select i1 %.not154, i1 %.not155, i1 false ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.5136, i64 %i.bv
  %i.by = and i32 %.7, 7
  %i.bz = ptrtoint ptr %.5136 to i64
  %.neg = sub i64 %i.bz, %i.n
  %.tr.neg = trunc i64 %.neg to i32
  %.neg156 = shl i32 %.tr.neg, 3
  %i.ca = add i32 %.7, %.neg156
  %.6137 = select i1 %or.cond242, ptr %i.m, ptr %i.bx ; 3 uses
  %.8 = select i1 %or.cond242, i32 %i.ca, i32 %i.by ; 3 uses
  %.6137.val = load i32, ptr %.6137, align 1
  %i.cb = and i32 %.8, 31
  %i.cc = lshr i32 %.6137.val, %i.cb
  %i.cd = icmp sgt i32 %i.bl, 1
  br i1 %i.cd, label %bb.c, label %.critedge, !llvm.loop !115

.critedge:                                        ; preds = %._crit_edge191
  %.not147 = icmp eq i32 %i.bl, 1
  br i1 %.not147, label %bb.m, label %.critedge158

bb.m:                                             ; preds = %.critedge
  store i32 %.3114, ptr %1, align 4, !tbaa !28
  %i.ce = add nsw i32 %.8, 7
  %i.cf = ashr i32 %i.ce, 3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %.6137, i64 %i.cg
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %3 to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %4
  %. = select i1 %i.cl, i64 -72, i64 %i.ck
  br label %.critedge158

.critedge158:                                     ; preds = %bb.c, %._crit_edge, %bb.m, %.critedge, %bb.b, %bb.a
  %.3 = phi i64 [ -1, %.critedge ], [ -72, %bb.a ], [ %., %bb.m ], [ -44, %bb.b ], [ -48, %._crit_edge ], [ -1, %bb.c ]
  ret i64 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @FSE_buildDTable(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.c = shl nuw i32 1, %3                        ; 5 uses
  %i.d = add i32 %i.c, -1                         ; 5 uses
  %i.e = lshr i32 %i.c, 1
  %i.f = lshr i32 %i.c, 3
  %i.g = add nuw nsw i32 %i.f, 3
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.i = icmp ugt i32 %2, 255
  %i.j = icmp ugt i32 %3, 12
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext = shl nuw nsw i32 32768, %3
  %i.k = lshr exact i32 %sext, 16                 ; 3 uses
  %i.l = add nuw nsw i32 %2, 1                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %2, 0
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %wide.trip.count, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.i ] ; 5 uses
  %.06782 = phi i16 [ 1, %.new ], [ %.269.1, %bb.i ] ; 2 uses
  %.07081 = phi i32 [ %i.d, %.new ], [ %.171.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !39   ; 3 uses
  %i.p = icmp eq i16 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = trunc i64 %indvars.iv to i8
  %i.r = add i32 %.07081, -1
  %i.s = zext i32 %.07081 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %i.q, ptr %i.u, align 2, !tbaa !35
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = sext i16 %i.o to i32
  %.not78 = icmp sgt i32 %i.k, %i.v
  %spec.select = select i1 %.not78, i16 %.06782, i16 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i16 [ 1, %bb.d ], [ %i.o, %bb.e ]
  %.171 = phi i32 [ %i.r, %bb.d ], [ %.07081, %bb.e ] ; 3 uses
  %.269 = phi i16 [ %.06782, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %.sink, ptr %i.w, align 4, !tbaa !39
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.y = load i16, ptr %i.x, align 2, !tbaa !39   ; 3 uses
  %i.z = icmp eq i16 %i.y, -1
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = sext i16 %i.y to i32
  %.not78.1 = icmp sgt i32 %i.k, %i.aa
  %spec.select.1 = select i1 %.not78.1, i16 %.269, i16 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = trunc i64 %indvars.iv.next to i8
  %i.ac = add i32 %.171, -1
  %i.ad = zext i32 %.171 to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.ab, ptr %i.af, align 2, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.1 = phi i16 [ 1, %bb.h ], [ %i.y, %bb.g ]
  %.171.1 = phi i32 [ %i.ac, %bb.h ], [ %.171, %bb.g ] ; 3 uses
  %.269.1 = phi i16 [ %.269, %bb.h ], [ %spec.select.1, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.ag, align 2, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.preheader.unr-lcssa, label %bb.c, !llvm.loop !40

.preheader79.preheader.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader79.preheader.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %.preheader79.preheader.unr-lcssa ] ; 3 uses
  %.06782.epil.init = phi i16 [ 1, %bb.b ], [ %.269.1, %.preheader79.preheader.unr-lcssa ] ; 2 uses
  %.07081.epil.init = phi i32 [ %i.d, %bb.b ], [ %.171.1, %.preheader79.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod3 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !39 ; 3 uses
  %i.aj = icmp eq i16 %i.ai, -1
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %i.ak = sext i16 %i.ai to i32
  %.not78.epil = icmp sgt i32 %i.k, %i.ak
  %spec.select.epil = select i1 %.not78.epil, i16 %.06782.epil.init, i16 0
  br label %.preheader79.preheader.epilog-lcssa

bb.k:                                             ; preds = %.epil.preheader
  %i.al = trunc i64 %indvars.iv.epil.init to i8
  %i.am = add i32 %.07081.epil.init, -1
  %i.an = zext i32 %.07081.epil.init to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.al, ptr %i.ap, align 2, !tbaa !35
  br label %.preheader79.preheader.epilog-lcssa

.preheader79.preheader.epilog-lcssa:              ; preds = %bb.k, %bb.j
  %.sink.epil = phi i16 [ 1, %bb.k ], [ %i.ai, %bb.j ]
  %.171.epil = phi i32 [ %i.am, %bb.k ], [ %.07081.epil.init, %bb.j ]
  %.269.epil = phi i16 [ %.06782.epil.init, %bb.k ], [ %spec.select.epil, %bb.j ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.aq, align 2, !tbaa !39
  br label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %.preheader79.preheader.unr-lcssa, %.preheader79.preheader.epilog-lcssa
  %.171.lcssa = phi i32 [ %.171.1, %.preheader79.preheader.unr-lcssa ], [ %.171.epil, %.preheader79.preheader.epilog-lcssa ] ; 3 uses
  %.269.lcssa = phi i16 [ %.269.1, %.preheader79.preheader.unr-lcssa ], [ %.269.epil, %.preheader79.preheader.epilog-lcssa ]
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %._crit_edge
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge ], [ 0, %.preheader79.preheader ] ; 3 uses
  %.06287 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.preheader79.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv90
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !39 ; 5 uses
  %i.at = icmp sgt i16 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader79
  %i.au = trunc i64 %indvars.iv90 to i8           ; 3 uses
  %i.av = icmp eq i16 %i.as, 1
  br i1 %i.av, label %.epil.preheader4, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.aw = and i16 %i.as, 32766
  %unroll_iter9 = zext nneg i16 %i.aw to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.new
  %.185 = phi i32 [ %.06287, %.lr.ph.new ], [ %.2.1, %bb.p ] ; 2 uses
  %niter10 = phi i32 [ 0, %.lr.ph.new ], [ %niter10.next.1, %bb.p ]
  %i.ax = zext nneg i32 %.185 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 %i.au, ptr %i.az, align 2, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.1.pn = phi i32 [ %.185, %bb.l ], [ %.2, %bb.m ]
  %.pn = add nuw i32 %i.h, %.1.pn
  %.2 = and i32 %.pn, %i.d                        ; 4 uses
  %i.ba = icmp ugt i32 %.2, %.171.lcssa
  br i1 %i.ba, label %bb.m, label %bb.n, !llvm.loop !41

bb.n:                                             ; preds = %bb.m
  %i.bb = zext nneg i32 %.2 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i8 %i.au, ptr %i.bd, align 2, !tbaa !35
  br label %bb.o

end_hunk_2
begin_hunk_3_@BIT_reloadDStream:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67   ; 6 uses
  %i.c = icmp ugt i32 %i.b, 64
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not = icmp ult ptr %i.e, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i32 %i.b, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !65
  %i.m = and i32 %i.b, 7
  store i32 %i.m, ptr %i.a, align 8, !tbaa !67
  %.val30 = load i64, ptr %i.l, align 1
  store i64 %.val30, ptr %0, align 8, !tbaa !66
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.e, %i.g
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not29 = icmp eq i32 %i.b, 64
  %. = select i1 %.not29, i32 2, i32 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = lshr i32 %i.b, 3                         ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.q
  %i.s = icmp ult ptr %i.r, %i.g                  ; 2 uses
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %.024 = select i1 %i.s, i32 %i.w, i32 %i.o      ; 2 uses
  %.0 = zext i1 %i.s to i32
  %i.x = zext i32 %.024 to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.e, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.d, align 8, !tbaa !65
  %i.aa = shl i32 %.024, 3
  %i.ab = sub i32 %i.b, %i.aa
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !67
  %.val = load i64, ptr %i.z, align 1
  store i64 %.val, ptr %0, align 8, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.c
  %.025 = phi i32 [ %.0, %bb.f ], [ 0, %bb.c ], [ %., %bb.e ], [ 3, %bb.a ]
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @HUF_decodeStreamX2(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 65536) %4) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 -4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = sub nsw i32 0, %4
  %i.f = and i32 %i.e, 63
  %i.g = zext nneg i32 %i.f to i64                ; 6 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 64
  br i1 %i.i, label %.preheader55, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.e
  %i.j = phi i32 [ %i.cc, %bb.e ], [ %i.h, %bb.a ] ; 5 uses
  %.03 = phi ptr [ %i.cb, %bb.e ], [ %0, %bb.a ]  ; 8 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !65   ; 6 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !63   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.not.i = icmp ult ptr %i.k, %i.m
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph5
  %i.n = lshr i32 %i.j, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !65
  %i.r = and i32 %i.j, 7
  br label %BIT_reloadDStream.exit

bb.c:                                             ; preds = %.lr.ph5
  %i.s = icmp eq ptr %i.k, %i.l
  br i1 %i.s, label %.preheader55, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = lshr i32 %i.j, 3                         ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.v
  %i.x = icmp uge ptr %i.w, %i.l                  ; 2 uses
  %i.y = ptrtoint ptr %i.k to i64
  %i.z = ptrtoint ptr %i.l to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %.024.i = select i1 %i.x, i32 %i.t, i32 %i.ab   ; 2 uses
  %i.ac = zext i32 %.024.i to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.k, i64 %i.ad ; 2 uses
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !65
  %i.af = shl i32 %.024.i, 3
  %i.ag = sub i32 %i.j, %i.af
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.b, %bb.d
  %.val30.i.sink.in = phi ptr [ %i.q, %bb.b ], [ %i.ae, %bb.d ]
  %.val7.i = phi i32 [ %i.r, %bb.b ], [ %i.ag, %bb.d ] ; 4 uses
  %.025.i = phi i1 [ true, %bb.b ], [ %i.x, %bb.d ]
  store i32 %.val7.i, ptr %i.a, align 8, !tbaa !67
  %.val30.i.sink = load i64, ptr %.val30.i.sink.in, align 1
  store i64 %.val30.i.sink, ptr %1, align 8, !tbaa !66
  %i.ah = icmp ule ptr %.03, %i.b
  %i.ai = select i1 %.025.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.e, label %.preheader55

.preheader55:                                     ; preds = %BIT_reloadDStream.exit, %bb.e, %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.03, %BIT_reloadDStream.exit ], [ %i.cb, %bb.e ], [ %.03, %bb.c ] ; 2 uses
  %.val7.i69 = phi i32 [ %i.h, %bb.a ], [ %.val7.i, %BIT_reloadDStream.exit ], [ %i.cc, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %i.aj = icmp ugt i32 %.val7.i69, 64
  br i1 %i.aj, label %BIT_reloadDStream.exit50.thread, label %.lr.ph13

bb.e:                                             ; preds = %BIT_reloadDStream.exit
  %.val.i35 = load i64, ptr %1, align 8, !tbaa !66
  %i.ak = and i32 %.val7.i, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %.val.i35, %i.al
  %i.an = lshr i64 %i.am, %i.g
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !68
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !70
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %.val7.i, %i.as
  store i32 %i.at, ptr %i.a, align 8, !tbaa !67
  store i8 %i.ap, ptr %.03, align 1, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %.03, i64 1
  %.val.i36 = load i64, ptr %1, align 8, !tbaa !66
  %.val7.i37 = load i32, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  %i.av = and i32 %.val7.i37, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %.val.i36, %i.aw
  %i.ay = lshr i64 %i.ax, %i.g
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !70
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %.val7.i37, %i.bd
  store i32 %i.be, ptr %i.a, align 8, !tbaa !67
  store i8 %i.ba, ptr %i.au, align 1, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %.03, i64 2
  %.val.i38 = load i64, ptr %1, align 8, !tbaa !66
  %.val7.i39 = load i32, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  %i.bg = and i32 %.val7.i39, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl i64 %.val.i38, %i.bh
  %i.bj = lshr i64 %i.bi, %i.g
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !70
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %.val7.i39, %i.bo
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !67
  store i8 %i.bl, ptr %i.bf, align 1, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %.03, i64 3
  %.val.i40 = load i64, ptr %1, align 8, !tbaa !66
  %.val7.i41 = load i32, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  %i.br = and i32 %.val7.i41, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %.val.i40, %i.bs
  %i.bu = lshr i64 %i.bt, %i.g
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !68
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !70
  %i.bz = zext i8 %i.by to i32
  %i.ca = add i32 %.val7.i41, %i.bz
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %.03, i64 4 ; 2 uses
  store i8 %i.bw, ptr %i.bq, align 1, !tbaa !10
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !67  ; 3 uses
  %i.cd = icmp ugt i32 %i.cc, 64
  br i1 %i.cd, label %.preheader55, label %.lr.ph5, !llvm.loop !116

.lr.ph13:                                         ; preds = %.preheader55, %bb.i
  %.312 = phi ptr [ %i.dp, %bb.i ], [ %.0.lcssa, %.preheader55 ] ; 5 uses
  %i.ce = phi i32 [ %.pre, %bb.i ], [ %.val7.i69, %.preheader55 ] ; 4 uses
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !65  ; 6 uses
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !63  ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.not.i42 = icmp ult ptr %i.cf, %i.ch
  br i1 %.not.i42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph13
  %i.ci = lshr i32 %i.ce, 3
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.cf, i64 %i.ck ; 2 uses
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !65
  %i.cm = and i32 %i.ce, 7
  br label %BIT_reloadDStream.exit50

bb.g:                                             ; preds = %.lr.ph13
  %i.cn = icmp eq ptr %i.cf, %i.cg
  br i1 %i.cn, label %BIT_reloadDStream.exit50.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = lshr i32 %i.ce, 3                       ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cf, i64 %i.cq
  %i.cs = icmp uge ptr %i.cr, %i.cg               ; 2 uses
  %i.ct = ptrtoint ptr %i.cf to i64
  %i.cu = ptrtoint ptr %i.cg to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = trunc i64 %i.cv to i32
  %.024.i45 = select i1 %i.cs, i32 %i.co, i32 %i.cw ; 2 uses
  %i.cx = zext i32 %.024.i45 to i64
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = getelementptr inbounds i8, ptr %i.cf, i64 %i.cy ; 2 uses
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !65
  %i.da = shl i32 %.024.i45, 3
  %i.db = sub i32 %i.ce, %i.da
  br label %BIT_reloadDStream.exit50

BIT_reloadDStream.exit50.thread:                  ; preds = %bb.g, %bb.i, %.preheader55
  %.3.lcssa = phi ptr [ %.0.lcssa, %.preheader55 ], [ %.312, %bb.g ], [ %i.dp, %bb.i ] ; 2 uses
  %i.dc = icmp ult ptr %.3.lcssa, %2
  br i1 %i.dc, label %.lr.ph.preheader, label %._crit_edge

BIT_reloadDStream.exit50:                         ; preds = %bb.f, %bb.h
  %.val30.i43.sink.in = phi ptr [ %i.cl, %bb.f ], [ %i.cz, %bb.h ]
  %.val7.i52 = phi i32 [ %i.cm, %bb.f ], [ %i.db, %bb.h ] ; 3 uses
  %.025.i44 = phi i1 [ true, %bb.f ], [ %i.cs, %bb.h ]
  store i32 %.val7.i52, ptr %i.a, align 8, !tbaa !67
  %.val30.i43.sink = load i64, ptr %.val30.i43.sink.in, align 1
  store i64 %.val30.i43.sink, ptr %1, align 8, !tbaa !66
  %i.dd = icmp ult ptr %.312, %2                  ; 2 uses
  %i.de = select i1 %.025.i44, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.i, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit50
  br i1 %i.dd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %BIT_reloadDStream.exit50.thread, %.preheader
  %.456.ph = phi ptr [ %.312, %.preheader ], [ %.3.lcssa, %BIT_reloadDStream.exit50.thread ]
  br label %.lr.ph

bb.i:                                             ; preds = %BIT_reloadDStream.exit50
  %.val.i51 = load i64, ptr %1, align 8, !tbaa !66
  %i.df = and i32 %.val7.i52, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl i64 %.val.i51, %i.dg
  %i.di = lshr i64 %i.dh, %i.g
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !68
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !70
  %i.dn = zext i8 %i.dm to i32
  %i.do = add i32 %.val7.i52, %i.dn
  store i32 %i.do, ptr %i.a, align 8, !tbaa !67
  %i.dp = getelementptr inbounds nuw i8, ptr %.312, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.312, align 1, !tbaa !10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.dq = icmp ugt i32 %.pre, 64
  br i1 %i.dq, label %BIT_reloadDStream.exit50.thread, label %.lr.ph13, !llvm.loop !117

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.456 = phi ptr [ %i.eb, %.lr.ph ], [ %.456.ph, %.lr.ph.preheader ] ; 2 uses
  %.val.i53 = load i64, ptr %1, align 8, !tbaa !66
  %.val7.i54 = load i32, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  %i.dr = and i32 %.val7.i54, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl i64 %.val.i53, %i.ds
  %i.du = lshr i64 %i.dt, %i.g
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !68
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !70
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add i32 %.val7.i54, %i.dz
  store i32 %i.ea, ptr %i.a, align 8, !tbaa !67
  %i.eb = getelementptr inbounds nuw i8, ptr %.456, i64 1 ; 2 uses
  store i8 %i.dw, ptr %.456, align 1, !tbaa !10
  %i.ec = icmp ult ptr %i.eb, %2
  br i1 %i.ec, label %.lr.ph, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph, %BIT_reloadDStream.exit50.thread, %.preheader
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @HUF_decodeStreamX4(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 -7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = sub i32 0, %4
  %i.f = and i32 %i.e, 63
  %i.g = zext nneg i32 %i.f to i64                ; 7 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !67  ; 3 uses
  %i.h = icmp ugt i32 %.pre, 64
  br i1 %i.h, label %.preheader68, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.a, %bb.e
  %.02 = phi ptr [ %i.cr, %bb.e ], [ %0, %bb.a ]  ; 5 uses
  %i.i = phi i32 [ %i.cn, %bb.e ], [ %.pre, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !65   ; 6 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !63   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.not.i = icmp ult ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph4
  %i.m = lshr i32 %i.i, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.o ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !65
  %i.q = and i32 %i.i, 7
  br label %BIT_reloadDStream.exit

bb.c:                                             ; preds = %.lr.ph4
  %i.r = icmp eq ptr %i.j, %i.k
  br i1 %i.r, label %.preheader68, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i32 %i.i, 3                         ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.u
  %i.w = icmp uge ptr %i.v, %i.k                  ; 2 uses
  %i.x = ptrtoint ptr %i.j to i64
  %i.y = ptrtoint ptr %i.k to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %.024.i = select i1 %i.w, i32 %i.s, i32 %i.aa   ; 2 uses
  %i.ab = zext i32 %.024.i to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.j, i64 %i.ac ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !65
  %i.ae = shl i32 %.024.i, 3
  %i.af = sub i32 %i.i, %i.ae
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.b, %bb.d
  %.val30.i.sink.in = phi ptr [ %i.p, %bb.b ], [ %i.ad, %bb.d ]
  %.val9.i = phi i32 [ %i.q, %bb.b ], [ %i.af, %bb.d ] ; 3 uses
  %.025.i = phi i1 [ true, %bb.b ], [ %i.w, %bb.d ]
  store i32 %.val9.i, ptr %i.a, align 8, !tbaa !67
  %.val30.i.sink = load i64, ptr %.val30.i.sink.in, align 1
  store i64 %.val30.i.sink, ptr %1, align 8, !tbaa !66
  %i.ag = icmp ult ptr %.02, %i.b
  %i.ah = select i1 %.025.i, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.e, label %.preheader68

.preheader68:                                     ; preds = %BIT_reloadDStream.exit, %bb.e, %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.02, %BIT_reloadDStream.exit ], [ %i.cr, %bb.e ], [ %.02, %bb.c ] ; 2 uses
  %.val9.i88 = phi i32 [ %.pre, %bb.a ], [ %.val9.i, %BIT_reloadDStream.exit ], [ %i.cn, %bb.e ], [ %i.i, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %2, i64 -2 ; 3 uses
  %i.aj = icmp ugt i32 %.val9.i88, 64
  br i1 %i.aj, label %.preheader, label %.lr.ph12

bb.e:                                             ; preds = %BIT_reloadDStream.exit
  %.val.i47 = load i64, ptr %1, align 8, !tbaa !66
  %i.ak = and i32 %.val9.i, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %.val.i47, %i.al
  %i.an = lshr i64 %i.am, %i.g
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.an ; 3 uses
  %i.ap = load i16, ptr %i.ao, align 2
  store i16 %i.ap, ptr %.02, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !35
  %i.as = zext i8 %i.ar to i32
  %i.at = load i32, ptr %i.a, align 8, !tbaa !67
  %i.au = add i32 %i.at, %i.as                    ; 2 uses
  store i32 %i.au, ptr %i.a, align 8, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.02, i64 %i.ax ; 2 uses
  %.val.i48 = load i64, ptr %1, align 8, !tbaa !66
  %i.az = and i32 %i.au, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %.val.i48, %i.ba
  %i.bc = lshr i64 %i.bb, %i.g
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bc ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ay, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !35
  %i.bh = zext i8 %i.bg to i32
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !67
  %i.bj = add i32 %i.bi, %i.bh                    ; 2 uses
  store i32 %i.bj, ptr %i.a, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bm ; 2 uses
  %.val.i50 = load i64, ptr %1, align 8, !tbaa !66
  %i.bo = and i32 %i.bj, 63
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl i64 %.val.i50, %i.bp
  %i.br = lshr i64 %i.bq, %i.g
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.br ; 3 uses
  %i.bt = load i16, ptr %i.bs, align 2
  store i16 %i.bt, ptr %i.bn, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !35
  %i.bw = zext i8 %i.bv to i32
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !67
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  store i32 %i.by, ptr %i.a, align 8, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !36
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cb ; 2 uses
  %.val.i52 = load i64, ptr %1, align 8, !tbaa !66
  %i.cd = and i32 %i.by, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl i64 %.val.i52, %i.ce
  %i.cg = lshr i64 %i.cf, %i.g
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cg ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 2
  store i16 %i.ci, ptr %i.cc, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !35
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !67
  %i.cn = add i32 %i.cm, %i.cl                    ; 4 uses
  store i32 %i.cn, ptr %i.a, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !36
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cq ; 2 uses
  %i.cs = icmp ugt i32 %i.cn, 64
  br i1 %i.cs, label %.preheader68, label %.lr.ph4, !llvm.loop !119

.lr.ph12:                                         ; preds = %.preheader68, %bb.i
  %.311 = phi ptr [ %i.eh, %bb.i ], [ %.0.lcssa, %.preheader68 ] ; 5 uses
  %i.ct = phi i32 [ %i.ed, %bb.i ], [ %.val9.i88, %.preheader68 ] ; 5 uses
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !65  ; 6 uses
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !63  ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.not.i54 = icmp ult ptr %i.cu, %i.cw
  br i1 %.not.i54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph12
  %i.cx = lshr i32 %i.ct, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cu, i64 %i.cz ; 2 uses
  store ptr %i.da, ptr %i.c, align 8, !tbaa !65
  %i.db = and i32 %i.ct, 7
  br label %BIT_reloadDStream.exit62

bb.g:                                             ; preds = %.lr.ph12
  %i.dc = icmp eq ptr %i.cu, %i.cv
  br i1 %i.dc, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dd = lshr i32 %i.ct, 3                       ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.cu, i64 %i.df
  %i.dh = icmp uge ptr %i.dg, %i.cv               ; 2 uses
  %i.di = ptrtoint ptr %i.cu to i64
  %i.dj = ptrtoint ptr %i.cv to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i32
  %.024.i57 = select i1 %i.dh, i32 %i.dd, i32 %i.dl ; 2 uses
  %i.dm = zext i32 %.024.i57 to i64
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.cu, i64 %i.dn ; 2 uses
  store ptr %i.do, ptr %i.c, align 8, !tbaa !65
  %i.dp = shl i32 %.024.i57, 3
  %i.dq = sub i32 %i.ct, %i.dp
  br label %BIT_reloadDStream.exit62

BIT_reloadDStream.exit62:                         ; preds = %bb.f, %bb.h
  %.val30.i55.sink.in = phi ptr [ %i.da, %bb.f ], [ %i.do, %bb.h ]
  %.val9.i64 = phi i32 [ %i.db, %bb.f ], [ %i.dq, %bb.h ] ; 3 uses
  %.025.i56 = phi i1 [ true, %bb.f ], [ %i.dh, %bb.h ]
  store i32 %.val9.i64, ptr %i.a, align 8, !tbaa !67
  %.val30.i55.sink = load i64, ptr %.val30.i55.sink.in, align 1
  store i64 %.val30.i55.sink, ptr %1, align 8, !tbaa !66
  %i.dr = icmp ule ptr %.311, %i.ai
  %i.ds = select i1 %.025.i56, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.i, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit62, %bb.i, %bb.g, %.preheader68
  %.3.lcssa = phi ptr [ %.0.lcssa, %.preheader68 ], [ %.311, %BIT_reloadDStream.exit62 ], [ %i.eh, %bb.i ], [ %.311, %bb.g ] ; 3 uses
  %.val9.i6491 = phi i32 [ %.val9.i88, %.preheader68 ], [ %.val9.i64, %BIT_reloadDStream.exit62 ], [ %i.ed, %bb.i ], [ %i.ct, %bb.g ] ; 2 uses
  %.not70 = icmp ugt ptr %.3.lcssa, %i.ai
  br i1 %.not70, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %BIT_reloadDStream.exit62
  %.val.i63 = load i64, ptr %1, align 8, !tbaa !66
  %i.dt = and i32 %.val9.i64, 63
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl i64 %.val.i63, %i.du
  %i.dw = lshr i64 %i.dv, %i.g
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw ; 3 uses
  %i.dy = load i16, ptr %i.dx, align 2
  store i16 %i.dy, ptr %.311, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !35
  %i.eb = zext i8 %i.ea to i32
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !67
  %i.ed = add i32 %i.ec, %i.eb                    ; 4 uses
  store i32 %i.ed, ptr %i.a, align 8, !tbaa !67
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !36
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.311, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt i32 %i.ed, 64
  br i1 %i.ei, label %.preheader, label %.lr.ph12, !llvm.loop !120

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.val9.i66 = phi i32 [ %i.et, %.lr.ph ], [ %.val9.i6491, %.preheader ]
  %.471 = phi ptr [ %i.ex, %.lr.ph ], [ %.3.lcssa, %.preheader ] ; 2 uses
  %.val.i65 = load i64, ptr %1, align 8, !tbaa !66
  %i.ej = and i32 %.val9.i66, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %.val.i65, %i.ek
  %i.em = lshr i64 %i.el, %i.g
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %.471, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !35
  %i.er = zext i8 %i.eq to i32
  %i.es = load i32, ptr %i.a, align 8, !tbaa !67
  %i.et = add i32 %i.es, %i.er                    ; 3 uses
  store i32 %i.et, ptr %i.a, align 8, !tbaa !67
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !36
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.471, i64 %i.ew ; 3 uses
  %.not = icmp ugt ptr %i.ex, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.val15.i = phi i32 [ %.val9.i6491, %.preheader ], [ %i.et, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.ex, %.lr.ph ] ; 2 uses
  %i.ey = icmp ult ptr %.4.lcssa, %2
  br i1 %i.ey, label %bb.j, label %HUF_decodeLastSymbolX4.exit

bb.j:                                             ; preds = %._crit_edge
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !66
  %i.ez = and i32 %.val15.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %.val.i67, %i.fa
  %i.fc = lshr i64 %i.fb, %i.g
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 2
  store i8 %i.fe, ptr %.4.lcssa, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !36
  %i.fh = icmp eq i8 %i.fg, 1
  br i1 %i.fh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !35
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !67
  %i.fm = add i32 %i.fl, %i.fk
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 64
  br i1 %i.fo, label %bb.m, label %HUF_decodeLastSymbolX4.exit

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !35
  %i.fr = zext i8 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fn, %i.fr
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.fs, i32 64)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %bb.m ], [ %i.fm, %bb.k ]
  store i32 %spec.store.select.sink.i, ptr %i.a, align 8
  br label %HUF_decodeLastSymbolX4.exit

HUF_decodeLastSymbolX4.exit:                      ; preds = %.sink.split.i, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @HUF_fillDTableX6LevelN(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 17) %6, ptr nofree noundef nonnull readonly captures(none) %7, i32 noundef %8, ptr nofree noundef nonnull readonly captures(none) %9, i32 noundef %10, i32 %11, i16 %12) unnamed_addr #15 {
bb.a:
  %13 = alloca %union.HUF_DSeqX6, align 4         ; 5 uses
  %i.a = alloca [17 x i32], align 16              ; 6 uses
  %.fr82 = freeze i16 %12                         ; 8 uses
  store i32 %11, ptr %13, align 4
  %.sroa.5.0.extract.shift = lshr i16 %.fr82, 8   ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i16 %.sroa.5.0.extract.shift to i8
  %i.b = sub i32 %10, %2
  %i.c = sub i32 %10, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = zext i32 %4 to i64
  %i.e = getelementptr inbounds nuw [68 x i8], ptr %3, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull align 4 dereferenceable(68) %i.e, i64 68, i1 false)
  %i.f = icmp sgt i32 %5, 1
  br i1 %i.f, label %bb.b, label %.loopexit75

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %5 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 3 uses
  %.not81 = icmp eq i32 %i.i, 0
  br i1 %.not81, label %.loopexit75, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.i to i64         ; 7 uses
  %min.iters.check = icmp ult i32 %i.i, 16
  br i1 %min.iters.check, label %.lr.ph.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.j
  %i.k = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep114 = getelementptr i8, ptr %0, i64 %i.k
  %bound0 = icmp ult ptr %1, %scevgep114
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %11, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert115 = insertelement <4 x i16> poison, i16 %.fr82, i64 0
  %broadcast.splat116 = shufflevector <4 x i16> %broadcast.splatinsert115, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.l, align 4, !tbaa !10, !alias.scope !122, !noalias !125
  store <4 x i32> %broadcast.splat, ptr %i.m, align 4, !tbaa !10, !alias.scope !122, !noalias !125
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <4 x i16> %broadcast.splat116, ptr %i.n, align 1, !alias.scope !125
  store <4 x i16> %broadcast.splat116, ptr %i.o, align 1, !alias.scope !125
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit75, label %.lr.ph.preheader171

.lr.ph.preheader171:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader171, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader171 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader171 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  store i32 %11, ptr %i.q, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  store i16 %.fr82, ptr %i.r, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !128

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader171
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader171 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.s = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %.loopexit75, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %11, ptr %i.u, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %.fr82, ptr %i.v, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %11, ptr %i.w, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %.fr82, ptr %i.x, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  store i32 %11, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  store i16 %.fr82, ptr %i.z, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  store i32 %11, ptr %i.aa, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  store i16 %.fr82, ptr %i.ab, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit75, label %.lr.ph, !llvm.loop !129

.loopexit75:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b, %bb.a
  %i.ac = add i8 %.sroa.5.0.extract.trunc, 1      ; 13 uses
  %i.ad = sext i32 %5 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = icmp ult i32 %i.af, %8
  br i1 %i.ag, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.loopexit75
  %i.ah = zext nneg i16 %.sroa.5.0.extract.shift to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 %i.ah ; 2 uses
  %i.aj = icmp ugt i16 %.fr82, 767
  %.sroa.5.0.insert.ext = zext nneg i8 %i.ac to i16
  %.sroa.5.0.insert.shift = shl nuw nsw i16 %.sroa.5.0.insert.ext, 8
  %i.ak = zext i32 %i.af to i64                   ; 2 uses
  %wide.trip.count103 = zext i32 %8 to i64        ; 2 uses
  br i1 %i.aj, label %.lr.ph80.split.us.preheader, label %.lr.ph80.split.preheader

.lr.ph80.split.preheader:                         ; preds = %.lr.ph80
  %broadcast.splatinsert134 = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  br label %.lr.ph80.split

.lr.ph80.split.us.preheader:                      ; preds = %.lr.ph80
  %broadcast.splatinsert160 = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  br label %.lr.ph80.split.us

.lr.ph80.split.us:                                ; preds = %.lr.ph80.split.us.preheader, %.loopexit.us
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %.loopexit.us ], [ %i.ak, %.lr.ph80.split.us.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv100 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !70  ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = sub i32 %10, %i.ap                      ; 2 uses
  %i.ar = add i32 %i.aq, %4
  %i.as = zext i8 %i.ao to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !28 ; 3 uses
  %i.av = sub nsw i32 %2, %i.aq
  %i.aw = shl nuw i32 1, %i.av
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !10
  %i.ax = trunc i32 %i.ar to i8                   ; 6 uses
  %i.ay = add i32 %i.aw, %i.au                    ; 3 uses
  %i.az = icmp ult i32 %i.au, %i.ay
  br i1 %i.az, label %.lr.ph78.us, label %.loopexit.us

scalar.ph151:                                     ; preds = %scalar.ph151.prol.loopexit, %scalar.ph151
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %scalar.ph151 ], [ %indvars.iv95.unr, %scalar.ph151.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95 ; 2 uses
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68.us = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us, align 1, !tbaa !10
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !10
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96 ; 2 uses
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68.us.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.1, align 1, !tbaa !10
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96
  store i32 %i.bi, ptr %i.bd, align 4, !tbaa !10
  %indvars.iv.next96.1 = add nuw nsw i64 %indvars.iv95, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96.1 ; 2 uses
  store i8 %i.ax, ptr %i.be, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68.us.2 = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.2, align 1, !tbaa !10
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96.1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !10
  %indvars.iv.next96.2 = add nuw nsw i64 %indvars.iv95, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96.2 ; 2 uses
  store i8 %i.ax, ptr %i.bg, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68.us.3 = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.3, align 1, !tbaa !10
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96.2
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !10
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %indvars.iv.next96.3, %wide.trip.count98
  br i1 %exitcond99.not.3, label %.loopexit.us, label %scalar.ph151, !llvm.loop !130

.loopexit.us:                                     ; preds = %scalar.ph151.prol.loopexit, %scalar.ph151, %middle.block167, %.lr.ph80.split.us
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !28
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge, label %.lr.ph80.split.us, !llvm.loop !131

.lr.ph78.us:                                      ; preds = %.lr.ph80.split.us
  %i.bi = load i32, ptr %13, align 4, !tbaa !10   ; 6 uses
  %i.bj = zext i32 %i.au to i64                   ; 7 uses
  %wide.trip.count98 = zext i32 %i.ay to i64      ; 6 uses
  %i.bk = sub nsw i64 %wide.trip.count98, %i.bj   ; 3 uses
  %min.iters.check152 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check152, label %scalar.ph151.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph78.us
  %i.bl = shl nuw nsw i64 %i.bj, 1
  %scevgep144 = getelementptr i8, ptr %0, i64 %i.bl
  %i.bm = shl nuw nsw i64 %wide.trip.count98, 1
  %scevgep145 = getelementptr i8, ptr %0, i64 %i.bm
  %i.bn = shl nuw nsw i64 %i.bj, 2
  %scevgep146 = getelementptr i8, ptr %1, i64 %i.bn
  %i.bo = shl nuw nsw i64 %wide.trip.count98, 2
  %scevgep147 = getelementptr i8, ptr %1, i64 %i.bo
  %bound0148 = icmp ult ptr %scevgep144, %scevgep147
  %bound1149 = icmp ult ptr %scevgep146, %scevgep145
  %found.conflict150 = and i1 %bound0148, %bound1149
  br i1 %found.conflict150, label %scalar.ph151.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck143
  %n.vec155 = and i64 %i.bk, -8                   ; 3 uses
  %i.bp = add nsw i64 %n.vec155, %i.bj
  %broadcast.splatinsert156 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat157 = shufflevector <4 x i32> %broadcast.splatinsert156, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert158 = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %interleaved.vec164 = shufflevector <4 x i8> %broadcast.splatinsert158, <4 x i8> %broadcast.splatinsert160, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph153
  %index163 = phi i64 [ 0, %vector.ph153 ], [ %index.next166, %vector.body162 ] ; 2 uses
  %i.bq = add nuw i64 %index163, %i.bj            ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq
  %i.bs = getelementptr [2 x i8], ptr %0, i64 %i.bq
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store <8 x i8> %interleaved.vec164, ptr %i.br, align 1, !tbaa !10, !alias.scope !132, !noalias !135
  store <8 x i8> %interleaved.vec164, ptr %i.bt, align 1, !tbaa !10, !alias.scope !132, !noalias !135
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> %broadcast.splat157, ptr %i.bu, align 4, !tbaa !10, !alias.scope !135
  store <4 x i32> %broadcast.splat157, ptr %i.bv, align 4, !tbaa !10, !alias.scope !135
  %index.next166 = add nuw i64 %index163, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next166, %n.vec155
  br i1 %i.bw, label %middle.block167, label %vector.body162, !llvm.loop !137

middle.block167:                                  ; preds = %vector.body162
  %cmp.n168 = icmp eq i64 %i.bk, %n.vec155
  br i1 %cmp.n168, label %.loopexit.us, label %scalar.ph151.preheader

scalar.ph151.preheader:                           ; preds = %vector.memcheck143, %.lr.ph78.us, %middle.block167
  %indvars.iv95.ph = phi i64 [ %i.bj, %vector.memcheck143 ], [ %i.bj, %.lr.ph78.us ], [ %i.bp, %middle.block167 ] ; 4 uses
  %i.bx = sub nsw i64 %wide.trip.count98, %indvars.iv95.ph
  %xtraiter175 = and i64 %i.bx, 3                 ; 2 uses
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %scalar.ph151.prol.loopexit, label %scalar.ph151.prol

scalar.ph151.prol:                                ; preds = %scalar.ph151.preheader, %scalar.ph151.prol
  %indvars.iv95.prol = phi i64 [ %indvars.iv.next96.prol, %scalar.ph151.prol ], [ %indvars.iv95.ph, %scalar.ph151.preheader ] ; 3 uses
  %prol.iter177 = phi i64 [ %prol.iter177.next, %scalar.ph151.prol ], [ 0, %scalar.ph151.preheader ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95.prol ; 2 uses
  store i8 %i.ax, ptr %i.by, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68.us.prol = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.prol, align 1, !tbaa !10
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95.prol
  store i32 %i.bi, ptr %i.bz, align 4, !tbaa !10
  %indvars.iv.next96.prol = add nuw nsw i64 %indvars.iv95.prol, 1 ; 2 uses
  %prol.iter177.next = add i64 %prol.iter177, 1   ; 2 uses
  %prol.iter177.cmp.not = icmp eq i64 %prol.iter177.next, %xtraiter175
  br i1 %prol.iter177.cmp.not, label %scalar.ph151.prol.loopexit, label %scalar.ph151.prol, !llvm.loop !138

scalar.ph151.prol.loopexit:                       ; preds = %scalar.ph151.prol, %scalar.ph151.preheader
  %indvars.iv95.unr = phi i64 [ %indvars.iv95.ph, %scalar.ph151.preheader ], [ %indvars.iv.next96.prol, %scalar.ph151.prol ]
  %i.ca = sub nsw i64 %indvars.iv95.ph, %wide.trip.count98
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %.loopexit.us, label %scalar.ph151

.lr.ph80.split:                                   ; preds = %.lr.ph80.split.preheader, %.loopexit
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.loopexit ], [ %i.ak, %.lr.ph80.split.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv90 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !68
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !70  ; 2 uses
  %i.cg = zext i8 %i.cf to i32
  %i.ch = sub i32 %10, %i.cg                      ; 2 uses
  %i.ci = add i32 %i.ch, %4                       ; 5 uses
  %i.cj = zext i8 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !28 ; 5 uses
  %i.cm = sub nsw i32 %2, %i.ch                   ; 2 uses
  %i.cn = shl nuw i32 1, %i.cm                    ; 2 uses
  store i8 %i.cd, ptr %i.ai, align 1, !tbaa !10
  %i.co = trunc i32 %i.ci to i8                   ; 6 uses
  %i.cp = sub nsw i32 %2, %i.ci
  %.not = icmp slt i32 %i.cp, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph80.split
  %i.cq = add nsw i32 %i.b, %i.ci
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 1)
  %i.cr = zext i32 %i.cl to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cr
  %i.cu = load i32, ptr %13, align 4
  %i.cv = trunc i32 %i.ci to i16
  %.sroa.0.0.insert.ext = and i16 %i.cv, 255
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, %.sroa.5.0.insert.shift
  tail call fastcc void @HUF_fillDTableX6LevelN(ptr noundef %i.cs, ptr noundef %i.ct, i32 noundef %i.cm, ptr noundef %3, i32 noundef %i.ci, i32 noundef %spec.store.select, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 %i.cu, i16 %.sroa.0.0.insert.insert)
  %.pre = add i32 %i.cn, %i.cl
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph80.split
  %i.cw = add i32 %i.cn, %i.cl                    ; 6 uses
  %i.cx = icmp ult i32 %i.cl, %i.cw
  br i1 %i.cx, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %bb.d
  %i.cy = load i32, ptr %13, align 4, !tbaa !10   ; 6 uses
  %i.cz = zext i32 %i.cl to i64                   ; 7 uses
  %wide.trip.count88 = zext i32 %i.cw to i64      ; 6 uses
  %i.da = sub nsw i64 %wide.trip.count88, %i.cz   ; 3 uses
  %min.iters.check126 = icmp ult i64 %i.da, 8
  br i1 %min.iters.check126, label %scalar.ph125.preheader, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.lr.ph78
  %i.db = shl nuw nsw i64 %i.cz, 1
  %scevgep118 = getelementptr i8, ptr %0, i64 %i.db
  %i.dc = shl nuw nsw i64 %wide.trip.count88, 1
  %scevgep119 = getelementptr i8, ptr %0, i64 %i.dc
  %i.dd = shl nuw nsw i64 %i.cz, 2
  %scevgep120 = getelementptr i8, ptr %1, i64 %i.dd
  %i.de = shl nuw nsw i64 %wide.trip.count88, 2
  %scevgep121 = getelementptr i8, ptr %1, i64 %i.de
  %bound0122 = icmp ult ptr %scevgep118, %scevgep121
  %bound1123 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict124 = and i1 %bound0122, %bound1123
  br i1 %found.conflict124, label %scalar.ph125.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %vector.memcheck117
  %n.vec129 = and i64 %i.da, -8                   ; 3 uses
  %i.df = add nsw i64 %n.vec129, %i.cz
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert132 = insertelement <4 x i8> poison, i8 %i.co, i64 0
  %interleaved.vec = shufflevector <4 x i8> %broadcast.splatinsert132, <4 x i8> %broadcast.splatinsert134, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph127
  %index137 = phi i64 [ 0, %vector.ph127 ], [ %index.next139, %vector.body136 ] ; 2 uses
  %i.dg = add nuw i64 %index137, %i.cz            ; 3 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dg
  %i.di = getelementptr [2 x i8], ptr %0, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  store <8 x i8> %interleaved.vec, ptr %i.dh, align 1, !tbaa !10, !alias.scope !139, !noalias !142
  store <8 x i8> %interleaved.vec, ptr %i.dj, align 1, !tbaa !10, !alias.scope !139, !noalias !142
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x i32> %broadcast.splat131, ptr %i.dk, align 4, !tbaa !10, !alias.scope !142
  store <4 x i32> %broadcast.splat131, ptr %i.dl, align 4, !tbaa !10, !alias.scope !142
  %index.next139 = add nuw i64 %index137, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next139, %n.vec129
  br i1 %i.dm, label %middle.block140, label %vector.body136, !llvm.loop !144

middle.block140:                                  ; preds = %vector.body136
  %cmp.n141 = icmp eq i64 %i.da, %n.vec129
  br i1 %cmp.n141, label %.loopexit, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %vector.memcheck117, %.lr.ph78, %middle.block140
  %indvars.iv85.ph = phi i64 [ %i.cz, %vector.memcheck117 ], [ %i.cz, %.lr.ph78 ], [ %i.df, %middle.block140 ] ; 4 uses
  %i.dn = sub nsw i64 %wide.trip.count88, %indvars.iv85.ph
  %xtraiter172 = and i64 %i.dn, 3                 ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %scalar.ph125.prol.loopexit, label %scalar.ph125.prol

scalar.ph125.prol:                                ; preds = %scalar.ph125.preheader, %scalar.ph125.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %scalar.ph125.prol ], [ %indvars.iv85.ph, %scalar.ph125.preheader ] ; 3 uses
  %prol.iter174 = phi i64 [ %prol.iter174.next, %scalar.ph125.prol ], [ 0, %scalar.ph125.preheader ]
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv85.prol ; 2 uses
  store i8 %i.co, ptr %i.do, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68.prol = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.prol, align 1, !tbaa !10
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv85.prol
  store i32 %i.cy, ptr %i.dp, align 4, !tbaa !10
  %indvars.iv.next86.prol = add nuw nsw i64 %indvars.iv85.prol, 1 ; 2 uses
  %prol.iter174.next = add i64 %prol.iter174, 1   ; 2 uses
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter172
  br i1 %prol.iter174.cmp.not, label %scalar.ph125.prol.loopexit, label %scalar.ph125.prol, !llvm.loop !145

scalar.ph125.prol.loopexit:                       ; preds = %scalar.ph125.prol, %scalar.ph125.preheader
  %indvars.iv85.unr = phi i64 [ %indvars.iv85.ph, %scalar.ph125.preheader ], [ %indvars.iv.next86.prol, %scalar.ph125.prol ]
  %i.dq = sub nsw i64 %indvars.iv85.ph, %wide.trip.count88
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %.loopexit, label %scalar.ph125

scalar.ph125:                                     ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %scalar.ph125 ], [ %indvars.iv85.unr, %scalar.ph125.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv85 ; 2 uses
  store i8 %i.co, ptr %i.ds, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68, align 1, !tbaa !10
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv85
  store i32 %i.cy, ptr %i.dt, align 4, !tbaa !10
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next86 ; 2 uses
  store i8 %i.co, ptr %i.du, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.1, align 1, !tbaa !10
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86
  store i32 %i.cy, ptr %i.dv, align 4, !tbaa !10
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next86.1 ; 2 uses
  store i8 %i.co, ptr %i.dw, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68.2 = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.2, align 1, !tbaa !10
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86.1
  store i32 %i.cy, ptr %i.dx, align 4, !tbaa !10
  %indvars.iv.next86.2 = add nuw nsw i64 %indvars.iv85, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next86.2 ; 2 uses
  store i8 %i.co, ptr %i.dy, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx68.3 = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.3, align 1, !tbaa !10
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86.2
  store i32 %i.cy, ptr %i.dz, align 4, !tbaa !10
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %indvars.iv.next86.3, %wide.trip.count88
  br i1 %exitcond89.not.3, label %.loopexit, label %scalar.ph125, !llvm.loop !146

.loopexit:                                        ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125, %middle.block140, %bb.d, %bb.c
  %.pre-phi = phi i32 [ %.pre, %bb.c ], [ %i.cw, %bb.d ], [ %i.cw, %middle.block140 ], [ %i.cw, %scalar.ph125 ], [ %i.cw, %scalar.ph125.prol.loopexit ]
  store i32 %.pre-phi, ptr %i.ck, align 4, !tbaa !28
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count103
  br i1 %exitcond94.not, label %._crit_edge, label %.lr.ph80.split, !llvm.loop !131

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %.loopexit75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @HUF_decodeStreamX6(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 8 uses
  %i.b = add i32 %4, -1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.g = getelementptr inbounds i8, ptr %2, i64 -16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = sub i32 0, %4
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64                ; 7 uses
  %.pre = load i32, ptr %i.f, align 8, !tbaa !67  ; 3 uses
  %i.m = icmp ugt i32 %.pre, 64
  br i1 %i.m, label %.preheader86, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.e
  %.03 = phi ptr [ %i.cw, %bb.e ], [ %0, %bb.a ]  ; 5 uses
  %i.n = phi i32 [ %i.cs, %bb.e ], [ %.pre, %bb.a ] ; 5 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !65   ; 6 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !63   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.not.i = icmp ult ptr %i.o, %i.q
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph5
  %i.r = lshr i32 %i.n, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 %i.t ; 2 uses
  store ptr %i.u, ptr %i.h, align 8, !tbaa !65
  %i.v = and i32 %i.n, 7
  br label %BIT_reloadDStream.exit

bb.c:                                             ; preds = %.lr.ph5
  %i.w = icmp eq ptr %i.o, %i.p
  br i1 %i.w, label %.preheader86, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = lshr i32 %i.n, 3                         ; 2 uses
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.o, i64 %i.z
  %i.ab = icmp uge ptr %i.aa, %i.p                ; 2 uses
  %i.ac = ptrtoint ptr %i.o to i64
  %i.ad = ptrtoint ptr %i.p to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %.024.i = select i1 %i.ab, i32 %i.x, i32 %i.af  ; 2 uses
  %i.ag = zext i32 %.024.i to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.o, i64 %i.ah ; 2 uses
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !65
  %i.aj = shl i32 %.024.i, 3
  %i.ak = sub i32 %i.n, %i.aj
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.b, %bb.d
  %.val30.i.sink.in = phi ptr [ %i.u, %bb.b ], [ %i.ai, %bb.d ]
  %.val9.i = phi i32 [ %i.v, %bb.b ], [ %i.ak, %bb.d ] ; 3 uses
  %.025.i = phi i1 [ true, %bb.b ], [ %i.ab, %bb.d ]
  store i32 %.val9.i, ptr %i.f, align 8, !tbaa !67
  %.val30.i.sink = load i64, ptr %.val30.i.sink.in, align 1
  store i64 %.val30.i.sink, ptr %1, align 8, !tbaa !66
  %i.al = icmp ule ptr %.03, %i.g
  %i.am = select i1 %.025.i, i1 %i.al, i1 false
  br i1 %i.am, label %bb.e, label %.preheader86

.preheader86:                                     ; preds = %BIT_reloadDStream.exit, %bb.e, %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.03, %BIT_reloadDStream.exit ], [ %i.cw, %bb.e ], [ %.03, %bb.c ] ; 2 uses
  %.val9.i119 = phi i32 [ %.pre, %bb.a ], [ %.val9.i, %BIT_reloadDStream.exit ], [ %i.cs, %bb.e ], [ %i.n, %bb.c ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 -4 ; 3 uses
  %i.ao = icmp ugt i32 %.val9.i119, 64
  br i1 %i.ao, label %.preheader85, label %.lr.ph13

bb.e:                                             ; preds = %BIT_reloadDStream.exit
  %.val.i62 = load i64, ptr %1, align 8, !tbaa !66
  %i.ap = and i32 %.val9.i, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %.val.i62, %i.aq
  %i.as = lshr i64 %i.ar, %i.l                    ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  store i32 %i.au, ptr %.03, align 1
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !68
  %i.ax = zext i8 %i.aw to i32
  %i.ay = load i32, ptr %i.f, align 8, !tbaa !67
  %i.az = add i32 %i.ay, %i.ax                    ; 2 uses
  store i32 %i.az, ptr %i.f, align 8, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !70
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.03, i64 %i.bc ; 2 uses
  %.val.i63 = load i64, ptr %1, align 8, !tbaa !66
  %i.be = and i32 %i.az, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl i64 %.val.i63, %i.bf
  %i.bh = lshr i64 %i.bg, %i.l                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  store i32 %i.bj, ptr %i.bd, align 1
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !68
  %i.bm = zext i8 %i.bl to i32
  %i.bn = load i32, ptr %i.f, align 8, !tbaa !67
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  store i32 %i.bo, ptr %i.f, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !70
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.br ; 2 uses
  %.val.i65 = load i64, ptr %1, align 8, !tbaa !66
  %i.bt = and i32 %i.bo, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl i64 %.val.i65, %i.bu
  %i.bw = lshr i64 %i.bv, %i.l                    ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4
  store i32 %i.by, ptr %i.bs, align 1
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bw ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !68
  %i.cb = zext i8 %i.ca to i32
  %i.cc = load i32, ptr %i.f, align 8, !tbaa !67
  %i.cd = add i32 %i.cc, %i.cb                    ; 2 uses
  store i32 %i.cd, ptr %i.f, align 8, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !70
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cg ; 2 uses
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !66
  %i.ci = and i32 %i.cd, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl i64 %.val.i67, %i.cj
  %i.cl = lshr i64 %i.ck, %i.l                    ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4
  store i32 %i.cn, ptr %i.ch, align 1
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cl ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !68
  %i.cq = zext i8 %i.cp to i32
  %i.cr = load i32, ptr %i.f, align 8, !tbaa !67
  %i.cs = add i32 %i.cr, %i.cq                    ; 4 uses
  store i32 %i.cs, ptr %i.f, align 8, !tbaa !67
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !70
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt i32 %i.cs, 64
  br i1 %i.cx, label %.preheader86, label %.lr.ph5, !llvm.loop !147

.lr.ph13:                                         ; preds = %.preheader86, %bb.i
  %.312 = phi ptr [ %i.em, %bb.i ], [ %.0.lcssa, %.preheader86 ] ; 5 uses
  %i.cy = phi i32 [ %i.ei, %bb.i ], [ %.val9.i119, %.preheader86 ] ; 5 uses
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !65  ; 6 uses
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !63  ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.not.i69 = icmp ult ptr %i.cz, %i.db
  br i1 %.not.i69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph13
  %i.dc = lshr i32 %i.cy, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.cz, i64 %i.de ; 2 uses
  store ptr %i.df, ptr %i.h, align 8, !tbaa !65
  %i.dg = and i32 %i.cy, 7
  br label %BIT_reloadDStream.exit77

bb.g:                                             ; preds = %.lr.ph13
  %i.dh = icmp eq ptr %i.cz, %i.da
  br i1 %i.dh, label %.preheader85, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.di = lshr i32 %i.cy, 3                       ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.cz, i64 %i.dk
  %i.dm = icmp uge ptr %i.dl, %i.da               ; 2 uses
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = ptrtoint ptr %i.da to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %.024.i72 = select i1 %i.dm, i32 %i.di, i32 %i.dq ; 2 uses
  %i.dr = zext i32 %.024.i72 to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.cz, i64 %i.ds ; 2 uses
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !65
  %i.du = shl i32 %.024.i72, 3
  %i.dv = sub i32 %i.cy, %i.du
  br label %BIT_reloadDStream.exit77

BIT_reloadDStream.exit77:                         ; preds = %bb.f, %bb.h
  %.val30.i70.sink.in = phi ptr [ %i.df, %bb.f ], [ %i.dt, %bb.h ]
  %.val9.i79 = phi i32 [ %i.dg, %bb.f ], [ %i.dv, %bb.h ] ; 3 uses
  %.025.i71 = phi i1 [ true, %bb.f ], [ %i.dm, %bb.h ]
  store i32 %.val9.i79, ptr %i.f, align 8, !tbaa !67
  %.val30.i70.sink = load i64, ptr %.val30.i70.sink.in, align 1
  store i64 %.val30.i70.sink, ptr %1, align 8, !tbaa !66
  %i.dw = icmp ule ptr %.312, %i.an
  %i.dx = select i1 %.025.i71, i1 %i.dw, i1 false
  br i1 %i.dx, label %bb.i, label %.preheader85

.preheader85:                                     ; preds = %BIT_reloadDStream.exit77, %bb.i, %bb.g, %.preheader86
  %.3.lcssa = phi ptr [ %.0.lcssa, %.preheader86 ], [ %.312, %BIT_reloadDStream.exit77 ], [ %i.em, %bb.i ], [ %.312, %bb.g ] ; 3 uses
  %.val9.i79122 = phi i32 [ %.val9.i119, %.preheader86 ], [ %.val9.i79, %BIT_reloadDStream.exit77 ], [ %i.ei, %bb.i ], [ %i.cy, %bb.g ] ; 2 uses
  %.not88 = icmp ugt ptr %.3.lcssa, %i.an
  br i1 %.not88, label %.preheader, label %.lr.ph

bb.i:                                             ; preds = %BIT_reloadDStream.exit77
  %.val.i78 = load i64, ptr %1, align 8, !tbaa !66
  %i.dy = and i32 %.val9.i79, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl i64 %.val.i78, %i.dz
  %i.eb = lshr i64 %i.ea, %i.l                    ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4
  store i32 %i.ed, ptr %.312, align 1
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eb ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !68
  %i.eg = zext i8 %i.ef to i32
  %i.eh = load i32, ptr %i.f, align 8, !tbaa !67
  %i.ei = add i32 %i.eh, %i.eg                    ; 4 uses
  store i32 %i.ei, ptr %i.f, align 8, !tbaa !67
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !70
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.312, i64 %i.el ; 2 uses
  %i.en = icmp ugt i32 %i.ei, 64
  br i1 %i.en, label %.preheader85, label %.lr.ph13, !llvm.loop !148

.preheader:                                       ; preds = %.lr.ph, %.preheader85
  %.val27.i99 = phi i32 [ %.val9.i79122, %.preheader85 ], [ %i.fa, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader85 ], [ %i.fe, %.lr.ph ] ; 2 uses
  %i.eo = icmp ult ptr %.4.lcssa, %2
  br i1 %i.eo, label %.lr.ph92, label %._crit_edge

.lr.ph92:                                         ; preds = %.preheader
  %i.ep = ptrtoint ptr %2 to i64
  br label %bb.j

.lr.ph:                                           ; preds = %.preheader85, %.lr.ph
  %.val9.i81 = phi i32 [ %i.fa, %.lr.ph ], [ %.val9.i79122, %.preheader85 ]
  %.489 = phi ptr [ %i.fe, %.lr.ph ], [ %.3.lcssa, %.preheader85 ] ; 2 uses
  %.val.i80 = load i64, ptr %1, align 8, !tbaa !66
  %i.eq = and i32 %.val9.i81, 63
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl i64 %.val.i80, %i.er
  %i.et = lshr i64 %i.es, %i.l                    ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4
  store i32 %i.ev, ptr %.489, align 1
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.et ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !68
  %i.ey = zext i8 %i.ex to i32
  %i.ez = load i32, ptr %i.f, align 8, !tbaa !67
  %i.fa = add i32 %i.ez, %i.ey                    ; 3 uses
  store i32 %i.fa, ptr %i.f, align 8, !tbaa !67
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !70
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.489, i64 %i.fd ; 3 uses
  %.not = icmp ugt ptr %i.fe, %i.an
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !149

bb.j:                                             ; preds = %.lr.ph92, %HUF_decodeLastSymbolsX6.exit
  %.val27.i = phi i32 [ %.val27.i99, %.lr.ph92 ], [ %.val27.i98, %HUF_decodeLastSymbolsX6.exit ]
  %.590 = phi ptr [ %.4.lcssa, %.lr.ph92 ], [ %i.gd, %HUF_decodeLastSymbolsX6.exit ] ; 4 uses
  %i.ff = ptrtoint ptr %.590 to i64
  %i.fg = sub i64 %i.ep, %i.ff                    ; 2 uses
  %i.fh = trunc i64 %i.fg to i32                  ; 3 uses
  %.val.i82 = load i64, ptr %1, align 8, !tbaa !66
  %i.fi = and i32 %.val27.i, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl i64 %.val.i82, %i.fj
  %i.fl = lshr i64 %i.fk, %i.l                    ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fl ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !70  ; 2 uses
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %.not.i83 = icmp ult i32 %i.fh, %i.fp
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fl ; 2 uses
  br i1 %.not.i83, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fr = zext i8 %i.fo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.590, ptr nonnull readonly align 4 %i.fq, i64 %i.fr, i1 false)
  %i.fs = load i8, ptr %i.fm, align 1, !tbaa !68
  %i.ft = zext i8 %i.fs to i32
  %i.fu = load i32, ptr %i.f, align 8, !tbaa !67
  %i.fv = add i32 %i.fu, %i.ft
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fw = and i64 %i.fg, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.590, ptr nonnull readonly align 4 %i.fq, i64 %i.fw, i1 false)
  %i.fx = load i32, ptr %i.f, align 8, !tbaa !67  ; 3 uses
  %i.fy = icmp ult i32 %i.fx, 64
  br i1 %i.fy, label %bb.m, label %HUF_decodeLastSymbolsX6.exit

bb.m:                                             ; preds = %bb.l
  %i.fz = load i8, ptr %i.fm, align 1, !tbaa !68
  %i.ga = zext i8 %i.fz to i32
  %i.gb = add nuw nsw i32 %i.fx, %i.ga
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.gb, i32 64)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %bb.m ], [ %i.fv, %bb.k ] ; 2 uses
  %.0.ph.i = phi i32 [ %i.fh, %bb.m ], [ %i.fp, %bb.k ]
  store i32 %spec.store.select.sink.i, ptr %i.f, align 8
  br label %HUF_decodeLastSymbolsX6.exit

HUF_decodeLastSymbolsX6.exit:                     ; preds = %bb.l, %.sink.split.i
  %.val27.i98 = phi i32 [ %i.fx, %bb.l ], [ %spec.store.select.sink.i, %.sink.split.i ]
  %.0.i84 = phi i32 [ %i.fh, %bb.l ], [ %.0.ph.i, %.sink.split.i ]
  %i.gc = zext nneg i32 %.0.i84 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.590, i64 %i.gc ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %2
  br i1 %i.ge, label %bb.j, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %HUF_decodeLastSymbolsX6.exit, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long long", !6, i64 0}
!13 = !{!14, !15, i64 10264}
!14 = !{!"ZSTDv02_Dctx_s", !6, i64 0, !6, i64 4100, !6, i64 6152, !15, i64 10256, !15, i64 10264, !9, i64 10272, !5, i64 10280, !5, i64 10284, !16, i64 10288, !9, i64 10296, !6, i64 10304}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!14, !9, i64 10272}
!18 = !{!14, !5, i64 10284}
!19 = !{!14, !15, i64 10256}
!20 = !{!14, !5, i64 10280}
!21 = !{!22, !5, i64 0}
!22 = !{!"", !5, i64 0, !5, i64 4}
!23 = !{!22, !5, i64 4}
!24 = !{!15, !15, i64 0}
!25 = distinct !{null, null, null}
!26 = !{!14, !16, i64 10288}
!27 = !{!14, !9, i64 10296}
!28 = !{!5, !5, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"", !31, i64 0, !31, i64 2}
!31 = !{!"short", !6, i64 0}
!32 = !{!30, !31, i64 2}
!33 = !{!34, !31, i64 0}
!34 = !{!"", !31, i64 0, !6, i64 2, !6, i64 3}
!35 = !{!34, !6, i64 2}
!36 = !{!34, !6, i64 3}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!31, !31, i64 0}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !38}
!45 = distinct !{!45, !38, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !38, !46}
!49 = distinct !{!49, !38, !46, !47}
!50 = distinct !{!50, !38, !46, !47}
!51 = distinct !{!51, !38, !46}
!52 = distinct !{!52, !38, !46, !47}
!53 = !{!"branch_weights", i32 4, i32 28}
!54 = distinct !{!54, !38, !46, !47}
!55 = distinct !{!55, !38, !46}
!56 = distinct !{!56, !38, !46}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38, !46, !47}
!59 = !{!"branch_weights", i32 4, i32 12}
!60 = distinct !{!60, !38, !46, !47}
!61 = distinct !{!61, !38, !47, !46}
!62 = distinct !{!62, !38}
!63 = !{!64, !16, i64 24}
!64 = !{!"", !9, i64 0, !5, i64 8, !16, i64 16, !16, i64 24}
!65 = !{!64, !16, i64 16}
!66 = !{!64, !9, i64 0}
!67 = !{!64, !5, i64 8}
!68 = !{!69, !6, i64 0}
!69 = !{!"", !6, i64 0, !6, i64 1}
!70 = !{!69, !6, i64 1}
!71 = distinct !{!71, !38}
!72 = !{!16, !16, i64 0}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !38, !46, !47}
!80 = distinct !{!80, !76}
!81 = distinct !{!81, !38, !46}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !38, !46, !47}
!84 = distinct !{!84, !38, !47, !46}
!85 = distinct !{!85, !38, !46, !47}
!86 = distinct !{!86, !38, !46}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38, !46, !47}
!89 = distinct !{!89, !38, !47, !46}
!90 = distinct !{!90, !38}
!91 = distinct !{!91, !38}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
!94 = distinct !{!94, !76}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38}
!97 = distinct !{!97, !38, !46, !47}
!98 = distinct !{!98, !76}
!99 = distinct !{!99, !38, !46}
!100 = distinct !{!100, !38}
!101 = distinct !{!101, !38}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !38, !46, !47}
!108 = distinct !{!108, !38, !46, !47}
!109 = distinct !{!109, !38, !46}
!110 = distinct !{!110, !38}
!111 = distinct !{!111, !38}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !38}
!114 = distinct !{!114, !38}
!115 = distinct !{!115, !38}
!116 = distinct !{!116, !38}
!117 = distinct !{!117, !38}
!118 = distinct !{!118, !38}
!119 = distinct !{!119, !38}
!120 = distinct !{!120, !38}
!121 = distinct !{!121, !38}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !38, !46, !47}
!128 = distinct !{!128, !76}
!129 = distinct !{!129, !38, !46}
!130 = distinct !{!130, !38, !46}
!131 = distinct !{!131, !38}
!132 = !{!133}
!133 = distinct !{!133, !134}
!134 = distinct !{!134, !"LVerDomain"}
!135 = !{!136}
!136 = distinct !{!136, !134}
!137 = distinct !{!137, !38, !46, !47}
!138 = distinct !{!138, !76}
!139 = !{!140}
!140 = distinct !{!140, !141}
!141 = distinct !{!141, !"LVerDomain"}
!142 = !{!143}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !38, !46, !47}
!145 = distinct !{!145, !76}
!146 = distinct !{!146, !38, !46}
!147 = distinct !{!147, !38}
!148 = distinct !{!148, !38}
!149 = distinct !{!149, !38}
!150 = distinct !{!150, !38}
end_hunk_3
