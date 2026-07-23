inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@HUF_decompress4X4:bb.a
  %.not.i226.i = icmp ult ptr %i.qa, %i.py
  br i1 %.not.i226.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.abi = lshr i32 %i.yp, 3
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = sub nsw i64 0, %i.abj
  %i.abl = getelementptr inbounds i8, ptr %i.qa, i64 %i.abk ; 2 uses
  %i.abm = and i32 %i.yp, 7
  %.val30.i227.i = load i64, ptr %i.abl, align 1
  br label %BIT_reloadDStream.exit234.i

bb.bi:                                            ; preds = %bb.bg
  %i.abn = icmp eq ptr %i.qa, %i.px
  br i1 %i.abn, label %BIT_reloadDStream.exit234.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.abo = lshr i32 %i.yp, 3                      ; 2 uses
  %i.abp = zext nneg i32 %i.abo to i64
  %i.abq = sub nsw i64 0, %i.abp
  %i.abr = getelementptr inbounds i8, ptr %i.qa, i64 %i.abq
  %i.abs = icmp ult ptr %i.abr, %i.px             ; 2 uses
  %i.abt = ptrtoint ptr %i.qa to i64
  %i.abu = sub i64 %i.abt, %i.pz
  %i.abv = trunc i64 %i.abu to i32
  %.024.i229.i = select i1 %i.abs, i32 %i.abv, i32 %i.abo ; 2 uses
  %.0.i230.i = zext i1 %i.abs to i32
  %i.abw = zext i32 %.024.i229.i to i64
  %i.abx = sub nsw i64 0, %i.abw
  %i.aby = getelementptr inbounds i8, ptr %i.qa, i64 %i.abx ; 2 uses
  %i.abz = shl i32 %.024.i229.i, 3
  %i.aca = sub i32 %i.yp, %i.abz
  %.val.i231.i = load i64, ptr %i.aby, align 1
  br label %BIT_reloadDStream.exit234.i

BIT_reloadDStream.exit234.i:                      ; preds = %bb.bj, %bb.bi, %bb.bh, %BIT_reloadDStream.exit225.i
  %i.acb = phi ptr [ %i.aby, %bb.bj ], [ %i.abl, %bb.bh ], [ %i.qa, %BIT_reloadDStream.exit225.i ], [ %i.qa, %bb.bi ] ; 2 uses
  %.val9.i182300.i = phi i32 [ %i.aca, %bb.bj ], [ %i.abm, %bb.bh ], [ %i.yp, %BIT_reloadDStream.exit225.i ], [ %i.yp, %bb.bi ] ; 2 uses
  %.val.i231273.i = phi i64 [ %.val.i231.i, %bb.bj ], [ %.val30.i227.i, %bb.bh ], [ %.val.i231274275.i, %BIT_reloadDStream.exit225.i ], [ %.val.i231274275.i, %bb.bi ] ; 2 uses
  %.025.i228.i = phi i32 [ %.0.i230.i, %bb.bj ], [ 0, %bb.bh ], [ 3, %BIT_reloadDStream.exit225.i ], [ 3, %bb.bi ]
  %i.acc = or i32 %i.abg, %.025.i228.i
  %i.acd = icmp eq i32 %i.acc, 0
  %i.ace = icmp ult ptr %i.yt, %i.pb
  %i.acf = select i1 %i.acd, i1 %i.ace, i1 false
  br i1 %i.acf, label %bb.aq, label %._crit_edge.i21, !llvm.loop !89

._crit_edge.i21:                                  ; preds = %BIT_reloadDStream.exit234.i
  store i32 %.val9.i291.i, ptr %i.pf, align 8, !tbaa !65
  store i32 %.val9.i178294.i, ptr %i.pg, align 8, !tbaa !65
  store i32 %.val9.i180297.i, ptr %i.ph, align 8, !tbaa !65
  store i32 %.val9.i182300.i, ptr %i.pi, align 8, !tbaa !65
  store ptr %i.zo, ptr %i.pj, align 8
  store ptr %i.aaj, ptr %i.pk, align 8
  store ptr %i.abf, ptr %i.pl, align 8
  store ptr %i.acb, ptr %i.pm, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i21, %bb.ap
  %.val.i231274.lcssa.i = phi i64 [ %.val.i231273.i, %._crit_edge.i21 ], [ %.promoted272.i, %bb.ap ]
  %.val.i222271.lcssa.i = phi i64 [ %.val.i222270.i, %._crit_edge.i21 ], [ %.promoted269.i, %bb.ap ]
  %.val.i213268.lcssa.i = phi i64 [ %.val.i213267.i, %._crit_edge.i21 ], [ %.promoted266.i, %bb.ap ]
  %.val.i207265.lcssa.i = phi i64 [ %.val.i207264.i, %._crit_edge.i21 ], [ %.promoted.i, %bb.ap ]
  %.0149.lcssa.i = phi ptr [ %i.xd, %._crit_edge.i21 ], [ %0, %bb.ap ] ; 2 uses
  %.0146.lcssa.i = phi ptr [ %i.xr, %._crit_edge.i21 ], [ %i.hp, %bb.ap ] ; 2 uses
  %.0143.lcssa.i = phi ptr [ %i.yf, %._crit_edge.i21 ], [ %i.hq, %bb.ap ] ; 2 uses
  %.0142.lcssa.i = phi ptr [ %i.yt, %._crit_edge.i21 ], [ %i.hr, %bb.ap ]
  store i64 %.val.i207265.lcssa.i, ptr %4, align 8
  store i64 %.val.i213268.lcssa.i, ptr %5, align 8
  store i64 %.val.i222271.lcssa.i, ptr %6, align 8
  store i64 %.val.i231274.lcssa.i, ptr %7, align 8
  %i.acg = icmp ugt ptr %.0149.lcssa.i, %i.hp
  %i.ach = icmp ugt ptr %.0146.lcssa.i, %i.hq
  %or.cond.i = select i1 %i.acg, i1 true, i1 %i.ach
  %i.aci = icmp ugt ptr %.0143.lcssa.i, %i.hr
  %or.cond163.i = select i1 %or.cond.i, i1 true, i1 %i.aci
  br i1 %or.cond163.i, label %BIT_initDStream.exit.thread.i, label %BIT_endOfDStream.exit.i

BIT_endOfDStream.exit.i:                          ; preds = %bb.bk
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0149.lcssa.i, ptr noundef %4, ptr noundef %i.hp, ptr noundef readonly %i.k, i32 noundef 12)
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0146.lcssa.i, ptr noundef %5, ptr noundef %i.hq, ptr noundef readonly %i.k, i32 noundef 12)
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0143.lcssa.i, ptr noundef %6, ptr noundef %i.hr, ptr noundef readonly %i.k, i32 noundef 12)
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0142.lcssa.i, ptr noundef %7, ptr noundef %i.hd, ptr noundef readonly %i.k, i32 noundef 12)
  %i.acj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.acl = load i32, ptr %i.ack, align 8
  %.fr159 = freeze i32 %i.acl
  %i.acm = icmp ne i32 %.fr159, 64
  %i.acn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aco = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.acp = load i32, ptr %i.aco, align 8
  %.fr = freeze i32 %i.acp
  %i.acq = icmp ne i32 %.fr, 64
  %i.acr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.acs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.act = load i32, ptr %i.acs, align 8
  %.fr161 = freeze i32 %i.act
  %i.acu = icmp ne i32 %.fr161, 64
  %i.acv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.acw = load <2 x ptr>, ptr %i.acj, align 8, !tbaa !70 ; 2 uses
  %i.acx = load <2 x ptr>, ptr %i.acn, align 8, !tbaa !70 ; 2 uses
  %i.acy = load <2 x ptr>, ptr %i.acr, align 8, !tbaa !70 ; 2 uses
  %i.acz = load <2 x ptr>, ptr %i.acv, align 8, !tbaa !70 ; 2 uses
  %i.ada = shufflevector <2 x ptr> %i.acw, <2 x ptr> %i.acx, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.adb = shufflevector <2 x ptr> %i.acy, <2 x ptr> %i.acz, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.adc = shufflevector <4 x ptr> %i.ada, <4 x ptr> %i.adb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.add = shufflevector <2 x ptr> %i.acw, <2 x ptr> %i.acx, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ade = shufflevector <2 x ptr> %i.acy, <2 x ptr> %i.acz, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.adf = shufflevector <4 x ptr> %i.add, <4 x ptr> %i.ade, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adg = icmp ne <4 x ptr> %i.adc, %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.adi = load i32, ptr %i.adh, align 8
  %i.adj = icmp ne i32 %i.adi, 64
  %i.adk = freeze <4 x i1> %i.adg
  %i.adl = bitcast <4 x i1> %i.adk to i4
  %i.adm = icmp ne i4 %i.adl, 0
  %op.rdx = or i1 %i.adm, %i.acm
  %i.adn = or i1 %op.rdx, %i.acq
  %op.rdx156 = or i1 %i.adn, %i.acu
  %op.rdx157 = select i1 %op.rdx156, i1 true, i1 %i.adj
  %..i = select i1 %op.rdx157, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread.i

BIT_initDStream.exit.thread.i:                    ; preds = %BIT_endOfDStream.exit.i, %bb.bk, %bb.ao, %bb.an, %bb.af, %bb.ad, %bb.ac, %bb.u, %bb.s, %bb.r, %bb.j, %bb.h, %bb.g
  %.0152.i = phi i64 [ %..i, %BIT_endOfDStream.exit.i ], [ -20, %bb.g ], [ -20, %bb.bk ], [ -72, %bb.s ], [ -72, %bb.h ], [ %i.os, %bb.ao ], [ -1, %bb.j ], [ -1, %bb.r ], [ -1, %bb.u ], [ -1, %bb.ac ], [ -1, %bb.af ], [ -1, %bb.an ], [ -72, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %HUF_decompress4X4_usingDTable.exit

HUF_decompress4X4_usingDTable.exit:               ; preds = %BIT_initDStream.exit.thread.i, %bb.f, %HUF_readDTableX4.exit.thread, %HUF_readDTableX4.exit
  %.0 = phi i64 [ %.0.i.ph, %HUF_readDTableX4.exit.thread ], [ -20, %bb.f ], [ -72, %HUF_readDTableX4.exit ], [ %.0152.i, %BIT_initDStream.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
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
  %i.f = load i8, ptr %4, align 1, !tbaa !9       ; 4 uses
  %i.g = zext i8 %i.f to i64                      ; 14 uses
  %i.h = icmp slt i8 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i8 %i.f, -15
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr [4 x i8], ptr @HUF_readStats.l, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 -968
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
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
  %6 = shl i64 %index, 1                          ; 2 uses
  %7 = and i64 %index, 9223372036854775792
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %7 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %wide.load.a = load <8 x i8>, ptr %i.aa, align 1, !tbaa !9, !alias.scope !90
  %wide.load78.a = load <8 x i8>, ptr %i.ab, align 1, !tbaa !9, !alias.scope !90
  %i.ac = lshr <8 x i8> %wide.load.a, splat (i8 4)
  %i.ad = lshr <8 x i8> %wide.load78.a, splat (i8 4)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load79 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !9, !alias.scope !90
  %wide.load80 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !9, !alias.scope !90
  %i.ag = and <8 x i8> %wide.load79, splat (i8 15)
  %i.ah = and <8 x i8> %wide.load80, splat (i8 15)
  %interleaved.vec.a = shufflevector <8 x i8> %i.ac, <8 x i8> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.a, ptr %8, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %interleaved.vec81.a = shufflevector <8 x i8> %i.ad, <8 x i8> %i.ah, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec81.a, ptr %i.af, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %i.t, -4                     ; 3 uses
  %i.aj = shl i64 %n.vec83, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = shl i64 %index84, 1
  %i.al = and i64 %index84, 9223372036854775804
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.al
  %wide.load85 = load <4 x i8>, ptr %i.am, align 1, !tbaa !9, !alias.scope !90 ; 2 uses
  %i.an = lshr <4 x i8> %wide.load85, splat (i8 4)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.ap = and <4 x i8> %wide.load85, splat (i8 15)
  %interleaved.vec87 = shufflevector <4 x i8> %i.an, <4 x i8> %i.ap, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec87, ptr %i.ao, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %index.next88 = add nuw i64 %index84, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.t, %n.vec83
  br i1 %cmp.n89, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ar = phi i64 [ %i.bb, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.as = lshr exact i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = lshr i8 %i.au, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !9
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !9
  %i.ay = and i8 %i.ax, 15
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !9
  %i.bb = add nuw nsw i64 %i.ar, 2                ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.n, %i.bb
  br i1 %i.bc, label %.lr.ph, label %.loopexit.thread, !llvm.loop !97

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph166.preheader

bb.f:                                             ; preds = %bb.b
  %.not81 = icmp ugt i64 %5, %i.g
  br i1 %.not81, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 255, ptr %i.e, align 4, !tbaa !3
  %i.be = icmp samesign ult i8 %i.f, 2
  br i1 %i.be, label %FSE_decompress.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = call fastcc i64 @FSE_readNCount(ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull %i.bd, i64 noundef range(i64 0, 128) %i.g) ; 5 uses
  %i.bg = icmp ult i64 %i.bf, -119
  br i1 %i.bg, label %bb.i, label %FSE_decompress.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not21.i = icmp ult i64 %i.bf, %i.g
  br i1 %.not21.i, label %bb.j, label %FSE_decompress.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bh = load i32, ptr %i.e, align 4, !tbaa !3   ; 3 uses
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !3   ; 11 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 19 uses
  %i.bk = shl nuw i32 1, %i.bi                    ; 5 uses
  %i.bl = add i32 %i.bk, -1                       ; 5 uses
  %i.bm = lshr i32 %i.bk, 1
  %i.bn = lshr i32 %i.bk, 3
  %i.bo = add nuw nsw i32 %i.bn, 3
  %i.bp = add nuw nsw i32 %i.bo, %i.bm            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bq = icmp ugt i32 %i.bh, 255
  br i1 %i.bq, label %FSE_buildDTable.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = icmp ugt i32 %i.bi, 12
  br i1 %i.br, label %FSE_buildDTable.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %sext.i.i = shl nuw nsw i32 32768, %i.bi
  %i.bs = lshr exact i32 %sext.i.i, 16            ; 3 uses
  %i.bt = add nuw nsw i32 %i.bh, 1                ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bt to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.bu = icmp eq i32 %i.bh, 0
  br i1 %i.bu, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %wide.trip.count.i.i, 510
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.s ] ; 5 uses
  %.06782.i.i = phi i16 [ 1, %.new ], [ %.269.i.i.1, %bb.s ] ; 2 uses
  %.07081.i.i = phi i32 [ %i.bl, %.new ], [ %.171.i.i.1, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !37 ; 3 uses
  %i.bx = icmp eq i16 %i.bw, -1
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = trunc i64 %indvars.iv.i.i to i8
  %i.bz = add i32 %.07081.i.i, -1
  %i.ca = zext i32 %.07081.i.i to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store i8 %i.by, ptr %i.cc, align 2, !tbaa !33
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cd = sext i16 %i.bw to i32
  %.not78.i.i = icmp sgt i32 %i.bs, %i.cd
  %spec.select.i.i = select i1 %.not78.i.i, i16 %.06782.i.i, i16 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i.i = phi i16 [ 1, %bb.n ], [ %i.bw, %bb.o ]
  %.171.i.i = phi i32 [ %i.bz, %bb.n ], [ %.07081.i.i, %bb.o ] ; 3 uses
  %.269.i.i = phi i16 [ %.06782.i.i, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i16 %.sink.i.i, ptr %i.ce, align 4, !tbaa !37
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !37 ; 3 uses
  %i.ch = icmp eq i16 %i.cg, -1
  br i1 %i.ch, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = sext i16 %i.cg to i32
  %.not78.i.i.1 = icmp sgt i32 %i.bs, %i.ci
  %spec.select.i.i.1 = select i1 %.not78.i.i.1, i16 %.269.i.i, i16 0
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cj = trunc i64 %indvars.iv.next.i.i to i8
  %i.ck = add i32 %.171.i.i, -1
  %i.cl = zext i32 %.171.i.i to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i8 %i.cj, ptr %i.cn, align 2, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i.1 = phi i16 [ 1, %bb.r ], [ %i.cg, %bb.q ]
  %.171.i.i.1 = phi i32 [ %i.ck, %bb.r ], [ %.171.i.i, %bb.q ] ; 3 uses
  %.269.i.i.1 = phi i16 [ %.269.i.i, %bb.r ], [ %spec.select.i.i.1, %bb.q ] ; 3 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i16 %.sink.i.i.1, ptr %i.co, align 2, !tbaa !37
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.i.i.preheader.unr-lcssa, label %bb.m, !llvm.loop !38

.preheader79.i.i.preheader.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader79.i.i.preheader.unr-lcssa, %bb.l
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06782.i.i.epil.init = phi i16 [ 1, %bb.l ], [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 2 uses
  %.07081.i.i.epil.init = phi i32 [ %i.bl, %bb.l ], [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod167 = trunc i32 %i.bt to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil.init
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !37 ; 3 uses
  %i.cr = icmp eq i16 %i.cq, -1
  br i1 %i.cr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.cs = sext i16 %i.cq to i32
  %.not78.i.i.epil = icmp sgt i32 %i.bs, %i.cs
  %spec.select.i.i.epil = select i1 %.not78.i.i.epil, i16 %.06782.i.i.epil.init, i16 0
  br label %.preheader79.i.i.preheader.epilog-lcssa

bb.u:                                             ; preds = %.epil.preheader
  %i.ct = trunc i64 %indvars.iv.i.i.epil.init to i8
  %i.cu = add i32 %.07081.i.i.epil.init, -1
  %i.cv = zext i32 %.07081.i.i.epil.init to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 %i.ct, ptr %i.cx, align 2, !tbaa !33
  br label %.preheader79.i.i.preheader.epilog-lcssa

.preheader79.i.i.preheader.epilog-lcssa:          ; preds = %bb.u, %bb.t
  %.sink.i.i.epil = phi i16 [ 1, %bb.u ], [ %i.cq, %bb.t ]
  %.171.i.i.epil = phi i32 [ %i.cu, %bb.u ], [ %.07081.i.i.epil.init, %bb.t ]
  %.269.i.i.epil = phi i16 [ %.06782.i.i.epil.init, %bb.u ], [ %spec.select.i.i.epil, %bb.t ]
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.epil.init
  store i16 %.sink.i.i.epil, ptr %i.cy, align 2, !tbaa !37
  br label %.preheader79.i.i.preheader

.preheader79.i.i.preheader:                       ; preds = %.preheader79.i.i.preheader.unr-lcssa, %.preheader79.i.i.preheader.epilog-lcssa
  %.171.i.i.lcssa = phi i32 [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.171.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.269.i.i.lcssa = phi i16 [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.269.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 2 uses
  br label %.preheader79.i.i

.preheader79.i.i:                                 ; preds = %.preheader79.i.i.preheader, %._crit_edge.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %.06287.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv90.i.i
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !37 ; 5 uses
  %i.db = icmp sgt i16 %i.da, 0
  br i1 %i.db, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader79.i.i
  %i.dc = trunc i64 %indvars.iv90.i.i to i8       ; 3 uses
  %i.dd = icmp eq i16 %i.da, 1
  br i1 %i.dd, label %.epil.preheader168, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %i.de = and i16 %i.da, 32766
  %unroll_iter173 = zext nneg i16 %i.de to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.new
  %.185.i.i = phi i32 [ %.06287.i.i, %.lr.ph.i.i.new ], [ %.2.i.i.1, %bb.z ] ; 2 uses
  %niter174 = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter174.next.1, %bb.z ]
  %i.df = zext nneg i32 %.185.i.i to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i8 %i.dc, ptr %i.dh, align 2, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.1.pn.i.i = phi i32 [ %.185.i.i, %bb.v ], [ %.2.i.i, %bb.w ]
  %.pn.i.i = add nuw i32 %i.bp, %.1.pn.i.i
  %.2.i.i = and i32 %.pn.i.i, %i.bl               ; 4 uses
  %i.di = icmp ugt i32 %.2.i.i, %.171.i.i.lcssa
  br i1 %i.di, label %bb.w, label %bb.x, !llvm.loop !39

bb.x:                                             ; preds = %bb.w
end_hunk_0
begin_hunk_1_@HUF_readStats:bb.a

bb.as:                                            ; preds = %bb.ar
  %i.hd = lshr i32 %i.gx, 3
  %i.he = zext nneg i32 %i.hd to i64
  %.024.i.i378.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.3327.idx.i.i, i64 %i.he) ; 2 uses
  %.024.i.i.i.i = trunc nsw i64 %.024.i.i378.i.i to i32
  %i.hf = and i64 %.024.i.i378.i.i, 4294967295
  %i.hg = shl nsw i32 %.024.i.i.i.i, 3
  %i.hh = sub nsw i32 %i.gx, %i.hg
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

BIT_reloadDStream.exit.sink.split.i.i.i:          ; preds = %bb.as, %bb.aq
  %.pn379.i.i = phi i64 [ %i.hf, %bb.as ], [ %i.ha, %bb.aq ]
  %.sroa.27270.4.i.i = phi i32 [ %i.hh, %bb.as ], [ %i.hb, %bb.aq ]
  %.sroa.61277.3327.ptr.add.i.i = sub nsw i64 %.sroa.61277.3327.idx.i.i, %.pn379.i.i ; 2 uses
  %.sroa.61277.4.ptr.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61277.3327.ptr.add.i.i
  %.val30.i.sink.i.i.i = load i64, ptr %.sroa.61277.4.ptr.i.i, align 1
  br label %FSE_initDState.exit.i.i

FSE_initDState.exit.i.i:                          ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i, %bb.ar, %bb.ao
  %.sroa.61277.5.idx.i.i = phi i64 [ %.sroa.61277.3327.idx.i.i, %bb.ao ], [ 0, %bb.ar ], [ %.sroa.61277.3327.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 6 uses
  %.sroa.27270.5.i.i = phi i32 [ %i.gx, %bb.ao ], [ %i.gx, %bb.ar ], [ %.sroa.27270.4.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %.sroa.0269.4.i.i = phi i64 [ %.sroa.0269.3329.i.i, %bb.ao ], [ %.sroa.0269.3329.i.i, %bb.ar ], [ %.val30.i.sink.i.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %i.hi = and i32 %.sroa.27270.5.i.i, 63
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl i64 %.sroa.0269.4.i.i, %i.hj
  %i.hl = lshr i64 %i.hk, 1
  %i.hm = lshr i64 %i.hl, %i.gv                   ; 3 uses
  %i.hn = add nsw i32 %.sroa.27270.5.i.i, %i.bi   ; 7 uses
  %i.ho = icmp ugt i32 %i.hn, 64
  br i1 %i.ho, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %bb.at

bb.at:                                            ; preds = %FSE_initDState.exit.i.i
  %.not.i.i38.i.i = icmp slt i64 %.sroa.61277.5.idx.i.i, 8
  br i1 %.not.i.i38.i.i, label %bb.au, label %FSE_initDState.exit43.i.thread235.i

FSE_initDState.exit43.i.thread235.i:              ; preds = %bb.at
  %i.hp = lshr i32 %i.hn, 3
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = and i32 %i.hn, 7
  %.sroa.61277.5.ptr.add.i238.i = sub nuw nsw i64 %.sroa.61277.5.idx.i.i, %i.hq ; 2 uses
  %.sroa.61277.6.ptr.i239.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.61277.5.ptr.add.i238.i
  %.val30.i.sink.i41.i240.i = load i64, ptr %.sroa.61277.6.ptr.i239.i, align 1
  br label %.lr.ph.i.preheader

bb.au:                                            ; preds = %bb.at
  %i.hs = icmp eq i64 %.sroa.61277.5.idx.i.i, 0
  br i1 %i.hs, label %.lr.ph.i.preheader, label %FSE_initDState.exit43.i.i

FSE_initDState.exit43.i.i:                        ; preds = %bb.au
  %i.ht = lshr i32 %i.hn, 3
  %i.hu = zext nneg i32 %i.ht to i64
  %.024.i.i42380.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.5.idx.i.i, i64 %i.hu) ; 2 uses
  %.024.i.i42.i.i = trunc i64 %.024.i.i42380.i.i to i32
  %i.hv = and i64 %.024.i.i42380.i.i, 4294967295
  %i.hw = shl i32 %.024.i.i42.i.i, 3
  %i.hx = sub i32 %i.hn, %i.hw                    ; 3 uses
  %.sroa.61277.5.ptr.add.i.i = sub nsw i64 %.sroa.61277.5.idx.i.i, %i.hv ; 3 uses
  %.sroa.61277.6.ptr.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61277.5.ptr.add.i.i
  %.val30.i.sink.i41.i.i = load i64, ptr %.sroa.61277.6.ptr.i.i, align 1
  %i.hy = icmp ugt i32 %i.hx, 64
  br i1 %i.hy, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %FSE_initDState.exit43.i.i, %bb.au, %FSE_initDState.exit43.i.thread235.i
  %.sroa.0269.0.i99.i.ph = phi i64 [ %.val30.i.sink.i41.i240.i, %FSE_initDState.exit43.i.thread235.i ], [ %.sroa.0269.4.i.i, %bb.au ], [ %.val30.i.sink.i41.i.i, %FSE_initDState.exit43.i.i ]
  %.sroa.27270.0.i98.i.ph = phi i32 [ %i.hr, %FSE_initDState.exit43.i.thread235.i ], [ %i.hn, %bb.au ], [ %i.hx, %FSE_initDState.exit43.i.i ]
  %.sroa.61277.0.idx.i97.i.ph = phi i64 [ %.sroa.61277.5.ptr.add.i238.i, %FSE_initDState.exit43.i.thread235.i ], [ 0, %bb.au ], [ %.sroa.61277.5.ptr.add.i.i, %FSE_initDState.exit43.i.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ay
  %.036.idx.i13.i100.i = phi i64 [ %.036.add.i28.i.i, %bb.ay ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.0269.0.i99.i = phi i64 [ %.sroa.0269.6.i.i, %bb.ay ], [ %.sroa.0269.0.i99.i.ph, %.lr.ph.i.preheader ]
  %.sroa.27270.0.i98.i = phi i32 [ %i.kh, %bb.ay ], [ %.sroa.27270.0.i98.i.ph, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.61277.0.idx.i97.i = phi i64 [ %.sroa.61277.8.idx.i.i, %bb.ay ], [ %.sroa.61277.0.idx.i97.i.ph, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.0256.0.i96.i = phi i64 [ %i.kj, %bb.ay ], [ %i.hm, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.0262.0.i95.i = phi i64 [ %i.jv, %bb.ay ], [ %i.gw, %.lr.ph.i.preheader ] ; 3 uses
  %.036.ptr.ptr.i14.i101.i = getelementptr inbounds nuw i8, ptr %0, i64 %.036.idx.i13.i100.i ; 4 uses
  %.not.i44.i.i = icmp slt i64 %.sroa.61277.0.idx.i97.i, 8
  br i1 %.not.i44.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i
  %i.hz = lshr i32 %.sroa.27270.0.i98.i, 3
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = and i32 %.sroa.27270.0.i98.i, 7
  br label %BIT_reloadDStream.exit.i.i

bb.aw:                                            ; preds = %.lr.ph.i
  %i.ic = icmp eq i64 %.sroa.61277.0.idx.i97.i, 0
  br i1 %i.ic, label %.lr.ph.i24.i.preheader, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.id = lshr i32 %.sroa.27270.0.i98.i, 3
  %i.ie = zext nneg i32 %i.id to i64              ; 2 uses
  %i.if = icmp sge i64 %.sroa.61277.0.idx.i97.i, %i.ie
  %.024.i385.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.0.idx.i97.i, i64 %i.ie) ; 2 uses
  %.024.i.i.i = trunc i64 %.024.i385.i.i to i32
  %i.ig = and i64 %.024.i385.i.i, 4294967295
  %i.ih = shl i32 %.024.i.i.i, 3
  %i.ii = sub i32 %.sroa.27270.0.i98.i, %i.ih
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.ax, %bb.av
  %.pn.i23.i = phi i64 [ %i.ig, %bb.ax ], [ %i.ia, %bb.av ]
  %.sroa.27270.8.i.i = phi i32 [ %i.ii, %bb.ax ], [ %i.ib, %bb.av ] ; 5 uses
  %.025.i.i.i = phi i1 [ %i.if, %bb.ax ], [ true, %bb.av ]
  %.sroa.61277.8.idx.i.i = sub nsw i64 %.sroa.61277.0.idx.i97.i, %.pn.i23.i ; 5 uses
  %.sroa.0269.6.in.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61277.8.idx.i.i
  %.sroa.0269.6.i.i = load i64, ptr %.sroa.0269.6.in.i.i, align 1 ; 6 uses
  %i.ij = icmp samesign ult i64 %.036.idx.i13.i100.i, 252
  %i.ik = select i1 %.025.i.i.i, i1 %i.ij, i1 false
  br i1 %i.ik, label %bb.ay, label %.preheader437.i.i

.preheader437.i.i:                                ; preds = %BIT_reloadDStream.exit.i.i
  %i.il = icmp ugt i32 %.sroa.27270.8.i.i, 64
  br i1 %i.il, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.aw, %.preheader437.i.i
  %.sroa.0269.1471.i.i.ph = phi i64 [ %.sroa.0269.6.i.i, %.preheader437.i.i ], [ %.sroa.0269.0.i99.i, %bb.aw ]
  %.sroa.27270.1470.i.i.ph = phi i32 [ %.sroa.27270.8.i.i, %.preheader437.i.i ], [ %.sroa.27270.0.i98.i, %bb.aw ]
  %.sroa.61277.1.idx469.i.i.ph = phi i64 [ %.sroa.61277.8.idx.i.i, %.preheader437.i.i ], [ 0, %bb.aw ]
  br label %.lr.ph.i24.i

bb.ay:                                            ; preds = %BIT_reloadDStream.exit.i.i
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.0262.0.i95.i ; 3 uses
  %.sroa.0.0.copyload.i48.i.i = load i16, ptr %i.im, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !tbaa !9
  %i.in = zext i8 %.sroa.5.0.copyload.i.i.i to i32 ; 2 uses
  %i.io = and i32 %.sroa.27270.8.i.i, 63
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = shl i64 %.sroa.0269.6.i.i, %i.ip
  %i.ir = sub nsw i32 0, %i.in
  %i.is = and i32 %i.ir, 63
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = lshr i64 %i.iq, %i.it
  %i.iv = add i32 %.sroa.27270.8.i.i, %i.in       ; 2 uses
  %i.iw = zext i16 %.sroa.0.0.copyload.i48.i.i to i64
  store i8 %.sroa.4.0.copyload.i.i.i, ptr %.036.ptr.ptr.i14.i101.i, align 1, !tbaa !9
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.0256.0.i96.i ; 3 uses
  %.sroa.0.0.copyload.i51.i.i = load i16, ptr %i.ix, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i52.i.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  %.sroa.4.0.copyload.i53.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i52.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i54.i.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 3
  %.sroa.5.0.copyload.i55.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i54.i.i, align 1, !tbaa !9
  %i.iy = zext i8 %.sroa.5.0.copyload.i55.i.i to i32 ; 2 uses
  %i.iz = and i32 %i.iv, 63
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl i64 %.sroa.0269.6.i.i, %i.ja
  %i.jc = sub nsw i32 0, %i.iy
  %i.jd = and i32 %i.jc, 63
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = lshr i64 %i.jb, %i.je
  %i.jg = add i32 %i.iv, %i.iy                    ; 2 uses
  %i.jh = zext i16 %.sroa.0.0.copyload.i51.i.i to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i14.i101.i, i64 1
  store i8 %.sroa.4.0.copyload.i53.i.i, ptr %i.ji, align 1, !tbaa !9
  %i.jj = getelementptr [4 x i8], ptr %i.bj, i64 %i.iu
  %i.jk = getelementptr [4 x i8], ptr %i.jj, i64 %i.iw ; 3 uses
  %.sroa.0.0.copyload.i58.i.i = load i16, ptr %i.jk, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i59.i.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %.sroa.4.0.copyload.i60.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i59.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i61.i.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  %.sroa.5.0.copyload.i62.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i61.i.i, align 1, !tbaa !9
  %i.jl = zext i8 %.sroa.5.0.copyload.i62.i.i to i32 ; 2 uses
  %i.jm = and i32 %i.jg, 63
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = shl i64 %.sroa.0269.6.i.i, %i.jn
  %i.jp = sub nsw i32 0, %i.jl
  %i.jq = and i32 %i.jp, 63
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = lshr i64 %i.jo, %i.jr
  %i.jt = add i32 %i.jg, %i.jl                    ; 2 uses
  %i.ju = zext i16 %.sroa.0.0.copyload.i58.i.i to i64
  %i.jv = add i64 %i.js, %i.ju                    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i14.i101.i, i64 2
  store i8 %.sroa.4.0.copyload.i60.i.i, ptr %i.jw, align 1, !tbaa !9
  %i.jx = getelementptr [4 x i8], ptr %i.bj, i64 %i.jf
  %i.jy = getelementptr [4 x i8], ptr %i.jx, i64 %i.jh ; 3 uses
  %.sroa.0.0.copyload.i65.i.i = load i16, ptr %i.jy, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %.sroa.4.0.copyload.i67.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i66.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i68.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 3
  %.sroa.5.0.copyload.i69.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i68.i.i, align 1, !tbaa !9
  %i.jz = zext i8 %.sroa.5.0.copyload.i69.i.i to i32 ; 2 uses
  %i.ka = and i32 %i.jt, 63
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = shl i64 %.sroa.0269.6.i.i, %i.kb
  %i.kd = sub nsw i32 0, %i.jz
  %i.ke = and i32 %i.kd, 63
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = lshr i64 %i.kc, %i.kf
  %i.kh = add i32 %i.jt, %i.jz                    ; 3 uses
  %i.ki = zext i16 %.sroa.0.0.copyload.i65.i.i to i64
  %i.kj = add i64 %i.kg, %i.ki                    ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i14.i101.i, i64 3
  store i8 %.sroa.4.0.copyload.i67.i.i, ptr %i.kk, align 1, !tbaa !9
  %.036.add.i28.i.i = add nuw nsw i64 %.036.idx.i13.i100.i, 4 ; 2 uses
  %i.kl = icmp ugt i32 %i.kh, 64
  br i1 %i.kl, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i, !llvm.loop !98

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader, %BIT_endOfDStream.exit97.thread.i.i
  %.1.idx.i15472.i.i = phi i64 [ %.add.i27.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.036.idx.i13.i100.i, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0269.1471.i.i = phi i64 [ %.sroa.0269.8.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0269.1471.i.i.ph, %.lr.ph.i24.i.preheader ]
  %.sroa.27270.1470.i.i = phi i32 [ %i.me, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.27270.1470.i.i.ph, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.61277.1.idx469.i.i = phi i64 [ %.sroa.61277.10.idx.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.61277.1.idx469.i.i.ph, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0256.1468.i.i = phi i64 [ %i.mg, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0256.0.i96.i, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0262.1467.i.i = phi i64 [ %i.lj, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0262.0.i95.i, %.lr.ph.i24.i.preheader ] ; 2 uses
  %.1.ptr.ptr.i16473.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i15472.i.i
  %.not.i72.i.i = icmp slt i64 %.sroa.61277.1.idx469.i.i, 8
  br i1 %.not.i72.i.i, label %bb.az, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i24.i
  %i.km = lshr i32 %.sroa.27270.1470.i.i, 3
  %i.kn = zext nneg i32 %i.km to i64
  %.sroa.61277.1.add387.i.i = sub nuw nsw i64 %.sroa.61277.1.idx469.i.i, %i.kn ; 3 uses
  %.ptr391.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.61277.1.add387.i.i
  %i.ko = and i32 %.sroa.27270.1470.i.i, 7
  %.val30.i73.i.i = load i64, ptr %.ptr391.i.i, align 1
  %i.kp = icmp eq i64 %.sroa.61277.1.add387.i.i, 0
  br label %BIT_endOfDStream.exit.thread.i.i

bb.az:                                            ; preds = %.lr.ph.i24.i
  %i.kq = icmp eq i64 %.sroa.61277.1.idx469.i.i, 0
  br i1 %i.kq, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kr = lshr i32 %.sroa.27270.1470.i.i, 3
  %i.ks = zext nneg i32 %i.kr to i64
  %.024.i75392.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.1.idx469.i.i, i64 %i.ks) ; 2 uses
  %.024.i75.i.i = trunc i64 %.024.i75392.i.i to i32
  %i.kt = and i64 %.024.i75392.i.i, 4294967295
  %.sroa.61277.1.add.i.i = sub nsw i64 %.sroa.61277.1.idx469.i.i, %i.kt ; 2 uses
  %.ptr390.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61277.1.add.i.i
  %i.ku = shl i32 %.024.i75.i.i, 3
  %i.kv = sub i32 %.sroa.27270.1470.i.i, %i.ku
  %.val.i77.i.i = load i64, ptr %.ptr390.i.i, align 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.61277.9.ph.idx.i.i = phi i64 [ 0, %bb.az ], [ %.sroa.61277.1.add.i.i, %bb.ba ] ; 2 uses
  %.sroa.27270.9.ph.i.i = phi i32 [ %.sroa.27270.1470.i.i, %bb.az ], [ %i.kv, %bb.ba ] ; 2 uses
  %.sroa.0269.7.ph.i.i = phi i64 [ %.sroa.0269.1471.i.i, %bb.az ], [ %.val.i77.i.i, %bb.ba ]
  %i.kw = icmp eq i64 %.sroa.61277.9.ph.idx.i.i, 0 ; 2 uses
  %.not393.i.i = icmp eq i32 %.sroa.27270.9.ph.i.i, 64
  %or.cond.i.i = and i1 %i.kw, %.not393.i.i
  br i1 %or.cond.i.i, label %BIT_reloadDStream.exit80.i.i, label %BIT_endOfDStream.exit.thread.i.i

BIT_endOfDStream.exit.thread.i.i:                 ; preds = %bb.bb, %.thread.i.i
  %i.kx = phi i1 [ %i.kp, %.thread.i.i ], [ %i.kw, %bb.bb ]
  %.sroa.0269.7.ph629.i.i = phi i64 [ %.val30.i73.i.i, %.thread.i.i ], [ %.sroa.0269.7.ph.i.i, %bb.bb ] ; 2 uses
  %.sroa.27270.9.ph628.i.i = phi i32 [ %i.ko, %.thread.i.i ], [ %.sroa.27270.9.ph.i.i, %bb.bb ] ; 2 uses
  %.sroa.61277.9.ph.idx627.i.i = phi i64 [ %.sroa.61277.1.add387.i.i, %.thread.i.i ], [ %.sroa.61277.9.ph.idx.i.i, %bb.bb ] ; 5 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.0262.1467.i.i ; 3 uses
  %.sroa.0.0.copyload.i81.i.i = load i16, ptr %i.ky, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  %.sroa.4.0.copyload.i83.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i82.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i84.i.i = getelementptr inbounds nuw i8, ptr %i.ky, i64 3
  %.sroa.5.0.copyload.i85.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i84.i.i, align 1, !tbaa !9
  %i.kz = zext i8 %.sroa.5.0.copyload.i85.i.i to i32 ; 2 uses
  %i.la = and i32 %.sroa.27270.9.ph628.i.i, 63
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = shl i64 %.sroa.0269.7.ph629.i.i, %i.lb
  %i.ld = sub nsw i32 0, %i.kz
  %i.le = and i32 %i.ld, 63
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = lshr i64 %i.lc, %i.lf
  %i.lh = add i32 %.sroa.27270.9.ph628.i.i, %i.kz ; 7 uses
  %i.li = zext i16 %.sroa.0.0.copyload.i81.i.i to i64
  %i.lj = add i64 %i.lg, %i.li                    ; 5 uses
  %.add51.i23.i.i = or disjoint i64 %.1.idx.i15472.i.i, 1 ; 3 uses
  %.ptr.ptr.i24.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i23.i.i
  store i8 %.sroa.4.0.copyload.i83.i.i, ptr %.1.ptr.ptr.i16473.i.i, align 1, !tbaa !9
  %i.lk = icmp ugt i32 %i.lh, 64
  br i1 %i.lk, label %BIT_reloadDStream.exit80.split.loop.exit444.i.i, label %bb.bc

bb.bc:                                            ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.not.i88.i.i = icmp slt i64 %.sroa.61277.9.ph.idx627.i.i, 8
  br i1 %.not.i88.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ll = lshr i32 %i.lh, 3
  %i.lm = zext nneg i32 %i.ll to i64
  %.sroa.61277.9.ph.add386.i.i = sub nuw nsw i64 %.sroa.61277.9.ph.idx627.i.i, %i.lm ; 2 uses
  %.ptr389.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.61277.9.ph.add386.i.i
  %i.ln = and i32 %i.lh, 7
  %.val30.i89.i.i = load i64, ptr %.ptr389.i.i, align 1
  br label %BIT_reloadDStream.exit96.i.i

bb.be:                                            ; preds = %bb.bc
  br i1 %i.kx, label %BIT_reloadDStream.exit96.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lo = lshr i32 %i.lh, 3
  %i.lp = zext nneg i32 %i.lo to i64
  %.024.i91394.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.9.ph.idx627.i.i, i64 %i.lp) ; 2 uses
  %.024.i91.i.i = trunc i64 %.024.i91394.i.i to i32
  %i.lq = and i64 %.024.i91394.i.i, 4294967295
  %.sroa.61277.9.ph.add.i.i = sub nsw i64 %.sroa.61277.9.ph.idx627.i.i, %i.lq ; 2 uses
  %.ptr388.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61277.9.ph.add.i.i
  %i.lr = shl i32 %.024.i91.i.i, 3
  %i.ls = sub i32 %i.lh, %i.lr
  %.val.i93.i.i = load i64, ptr %.ptr388.i.i, align 1
  br label %BIT_reloadDStream.exit96.i.i

BIT_reloadDStream.exit96.i.i:                     ; preds = %bb.bf, %bb.be, %bb.bd
  %.sroa.61277.10.idx.i.i = phi i64 [ %.sroa.61277.9.ph.add386.i.i, %bb.bd ], [ %.sroa.61277.9.ph.add.i.i, %bb.bf ], [ 0, %bb.be ] ; 4 uses
  %.sroa.27270.10.i.i = phi i32 [ %i.ln, %bb.bd ], [ %i.ls, %bb.bf ], [ %i.lh, %bb.be ] ; 4 uses
  %.sroa.0269.8.i.i = phi i64 [ %.val30.i89.i.i, %bb.bd ], [ %.val.i93.i.i, %bb.bf ], [ %.sroa.0269.7.ph629.i.i, %bb.be ] ; 2 uses
  %i.lt = icmp eq i64 %.1.idx.i15472.i.i, 254
  br i1 %i.lt, label %BIT_reloadDStream.exit80.split.loop.exit456.i.i, label %bb.bg

bb.bg:                                            ; preds = %BIT_reloadDStream.exit96.i.i
  %i.lu = icmp eq i64 %.sroa.61277.10.idx.i.i, 0
  %.not395.i.i = icmp eq i32 %.sroa.27270.10.i.i, 64
  %or.cond425.i.i = and i1 %i.lu, %.not395.i.i
  br i1 %or.cond425.i.i, label %BIT_reloadDStream.exit80.i.i, label %BIT_endOfDStream.exit97.thread.i.i

BIT_endOfDStream.exit97.thread.i.i:               ; preds = %bb.bg
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.0256.1468.i.i ; 3 uses
  %.sroa.0.0.copyload.i98.i.i = load i16, ptr %i.lv, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i99.i.i = getelementptr inbounds nuw i8, ptr %i.lv, i64 2
  %.sroa.4.0.copyload.i100.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i99.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i101.i.i = getelementptr inbounds nuw i8, ptr %i.lv, i64 3
  %.sroa.5.0.copyload.i102.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i101.i.i, align 1, !tbaa !9
  %i.lw = zext i8 %.sroa.5.0.copyload.i102.i.i to i32 ; 2 uses
  %i.lx = and i32 %.sroa.27270.10.i.i, 63
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = shl i64 %.sroa.0269.8.i.i, %i.ly
  %i.ma = sub nsw i32 0, %i.lw
  %i.mb = and i32 %i.ma, 63
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = lshr i64 %i.lz, %i.mc
  %i.me = add i32 %.sroa.27270.10.i.i, %i.lw      ; 3 uses
  %i.mf = zext i16 %.sroa.0.0.copyload.i98.i.i to i64
  %i.mg = add i64 %i.md, %i.mf                    ; 2 uses
  %.add.i27.i.i = add nuw nsw i64 %.1.idx.i15472.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i100.i.i, ptr %.ptr.ptr.i24.i.i, align 1, !tbaa !9
  %i.mh = icmp ugt i32 %i.me, 64
  br i1 %i.mh, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i24.i

BIT_reloadDStream.exit80.split.loop.exit444.i.i:  ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.sroa.61277.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61277.9.ph.idx627.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.split.loop.exit450.i.i:  ; preds = %bb.ay, %BIT_endOfDStream.exit97.thread.i.i, %.preheader437.i.i, %FSE_initDState.exit43.i.i, %FSE_initDState.exit.i.i
  %.sroa.61277.1.idx.lcssa.i.i = phi i64 [ %.sroa.61277.8.idx.i.i, %.preheader437.i.i ], [ %.sroa.61277.10.idx.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.61277.5.ptr.add.i.i, %FSE_initDState.exit43.i.i ], [ %.sroa.61277.5.idx.i.i, %FSE_initDState.exit.i.i ], [ %.sroa.61277.8.idx.i.i, %bb.ay ]
  %.sroa.0256.1.lcssa.ph451.i.i = phi i64 [ %.sroa.0256.0.i96.i, %.preheader437.i.i ], [ %i.mg, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.hm, %FSE_initDState.exit43.i.i ], [ %i.hm, %FSE_initDState.exit.i.i ], [ %i.kj, %bb.ay ]
  %.sroa.0262.2.ph452.i.i = phi i64 [ %.sroa.0262.0.i95.i, %.preheader437.i.i ], [ %i.lj, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.gw, %FSE_initDState.exit43.i.i ], [ %i.gw, %FSE_initDState.exit.i.i ], [ %i.jv, %bb.ay ]
  %.sroa.27270.2.ph454.i.i = phi i32 [ %.sroa.27270.8.i.i, %.preheader437.i.i ], [ %i.me, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.hx, %FSE_initDState.exit43.i.i ], [ %i.hn, %FSE_initDState.exit.i.i ], [ %i.kh, %bb.ay ]
  %.2.idx.i18.ph455.i.i = phi i64 [ %.036.idx.i13.i100.i, %.preheader437.i.i ], [ %.add.i27.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ 0, %FSE_initDState.exit43.i.i ], [ 0, %FSE_initDState.exit.i.i ], [ %.036.add.i28.i.i, %bb.ay ]
  %.sroa.61277.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61277.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.split.loop.exit456.i.i:  ; preds = %BIT_reloadDStream.exit96.i.i
  %.sroa.61277.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61277.10.idx.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.i.i:                     ; preds = %bb.bg, %bb.bb, %BIT_reloadDStream.exit80.split.loop.exit456.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i
  %.sroa.0256.1.lcssa.i.i = phi i64 [ %.sroa.0256.1.lcssa.ph451.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.0256.1468.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.sroa.0256.1468.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %.sroa.0256.1468.i.i, %bb.bb ], [ %.sroa.0256.1468.i.i, %bb.bg ]
  %.sroa.0262.2.i.i = phi i64 [ %.sroa.0262.2.ph452.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %i.lj, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %i.lj, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %i.lj, %bb.bg ], [ %.sroa.0262.1467.i.i, %bb.bb ]
  %.sroa.61277.2.i.i = phi ptr [ %.sroa.61277.1.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.61277.10.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.sroa.61277.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %i.el, %bb.bb ], [ %i.el, %bb.bg ]
  %.sroa.27270.2.i.i = phi i32 [ %.sroa.27270.2.ph454.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.27270.10.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %i.lh, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ 64, %bb.bb ], [ 64, %bb.bg ]
  %.2.idx.i18.i.i = phi i64 [ %.2.idx.i18.ph455.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ 255, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.add51.i23.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %.add51.i23.i.i, %bb.bg ], [ %.1.idx.i15472.i.i, %bb.bb ] ; 2 uses
  %i.mi = icmp eq ptr %.sroa.61277.2.i.i, %i.el
  %.not396.i.i = icmp eq i32 %.sroa.27270.2.i.i, 64
  %or.cond426.i.i = and i1 %i.mi, %.not396.i.i
  %.not397.i.i = icmp eq i64 %.sroa.0262.2.i.i, 0
  %or.cond427.i.i = select i1 %or.cond426.i.i, i1 %.not397.i.i, i1 false
  %.not398.i.i = icmp eq i64 %.sroa.0256.1.lcssa.i.i, 0
  %or.cond428.i.i = select i1 %or.cond427.i.i, i1 %.not398.i.i, i1 false
  br i1 %or.cond428.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit105.thread.i.i

BIT_endOfDStream.exit105.thread.i.i:              ; preds = %BIT_reloadDStream.exit80.i.i
  %i.mj = icmp eq i64 %.2.idx.i18.i.i, 255
  %..i22.i.i = select i1 %i.mj, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

bb.bh:                                            ; preds = %bb.ac
  br i1 %i.em, label %FSE_decompress.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mk = icmp ugt i64 %i.ek, 7
  br i1 %i.mk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.ptr400.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.g
  %i.ml = getelementptr i8, ptr %.ptr400.i.i, i64 -1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !9   ; 2 uses
  %i.mn = icmp eq i8 %i.mm, 0
  br i1 %i.mn, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit110.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.mo = load i8, ptr %i.el, align 1, !tbaa !9
  %i.mp = zext i8 %i.mo to i64                    ; 7 uses
  switch i64 %i.ek, label %bb.br [
    i64 7, label %bb.bl
    i64 6, label %bb.bm
    i64 5, label %bb.bn
    i64 4, label %bb.bo
end_hunk_1
begin_hunk_2_@HUF_readStats:bb.a
  %.024.i.i118402.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.3360.idx.i.i, i64 %i.pb) ; 2 uses
  %.024.i.i118.i.i = trunc nsw i64 %.024.i.i118402.i.i to i32
  %i.pc = and i64 %.024.i.i118402.i.i, 4294967295
  %i.pd = shl nsw i32 %.024.i.i118.i.i, 3
  %i.pe = sub nsw i32 %i.ou, %i.pd
  br label %BIT_reloadDStream.exit.sink.split.i115.i.i

BIT_reloadDStream.exit.sink.split.i115.i.i:       ; preds = %bb.bw, %bb.bu
  %.sroa.27.4.i.i = phi i32 [ %i.pe, %bb.bw ], [ %i.oy, %bb.bu ]
  %.pn403.i.i = phi i64 [ %i.pc, %bb.bw ], [ %i.ox, %bb.bu ]
  %.sroa.61221.3360.ptr.add.i.i = sub nsw i64 %.sroa.61221.3360.idx.i.i, %.pn403.i.i ; 2 uses
  %.sroa.61221.4.ptr.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61221.3360.ptr.add.i.i
  %.val30.i.sink.i117.i.i = load i64, ptr %.sroa.61221.4.ptr.i.i, align 1
  br label %FSE_initDState.exit119.i.i

FSE_initDState.exit119.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i115.i.i, %bb.bv, %bb.bs
  %.sroa.0215.4.i.i = phi i64 [ %.sroa.0215.3358.i.i, %bb.bs ], [ %.sroa.0215.3358.i.i, %bb.bv ], [ %.val30.i.sink.i117.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 2 uses
  %.sroa.27.5.i.i = phi i32 [ %i.ou, %bb.bs ], [ %i.ou, %bb.bv ], [ %.sroa.27.4.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 2 uses
  %.sroa.61221.5.idx.i.i = phi i64 [ %.sroa.61221.3360.idx.i.i, %bb.bs ], [ 0, %bb.bv ], [ %.sroa.61221.3360.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 6 uses
  %i.pf = and i32 %.sroa.27.5.i.i, 63
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl i64 %.sroa.0215.4.i.i, %i.pg
  %i.pi = lshr i64 %i.ph, 1
  %i.pj = lshr i64 %i.pi, %i.os                   ; 3 uses
  %i.pk = add nsw i32 %.sroa.27.5.i.i, %i.bi      ; 7 uses
  %i.pl = icmp ugt i32 %i.pk, 64
  br i1 %i.pl, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %bb.bx

bb.bx:                                            ; preds = %FSE_initDState.exit119.i.i
  %.not.i.i123.i.i = icmp slt i64 %.sroa.61221.5.idx.i.i, 8
  br i1 %.not.i.i123.i.i, label %bb.by, label %FSE_initDState.exit128.i.thread251.i

FSE_initDState.exit128.i.thread251.i:             ; preds = %bb.bx
  %i.pm = lshr i32 %i.pk, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = and i32 %i.pk, 7
  %.sroa.61221.5.ptr.add.i254.i = sub nuw nsw i64 %.sroa.61221.5.idx.i.i, %i.pn ; 2 uses
  %.sroa.61221.6.ptr.i255.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.61221.5.ptr.add.i254.i
  %.val30.i.sink.i126.i256.i = load i64, ptr %.sroa.61221.6.ptr.i255.i, align 1
  br label %.lr.ph113.i.preheader

bb.by:                                            ; preds = %bb.bx
  %i.pp = icmp eq i64 %.sroa.61221.5.idx.i.i, 0
  br i1 %i.pp, label %.lr.ph113.i.preheader, label %FSE_initDState.exit128.i.i

FSE_initDState.exit128.i.i:                       ; preds = %bb.by
  %i.pq = lshr i32 %i.pk, 3
  %i.pr = zext nneg i32 %i.pq to i64
  %.024.i.i127404.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.5.idx.i.i, i64 %i.pr) ; 2 uses
  %.024.i.i127.i.i = trunc i64 %.024.i.i127404.i.i to i32
  %i.ps = and i64 %.024.i.i127404.i.i, 4294967295
  %i.pt = shl i32 %.024.i.i127.i.i, 3
  %i.pu = sub i32 %i.pk, %i.pt                    ; 3 uses
  %.sroa.61221.5.ptr.add.i.i = sub nsw i64 %.sroa.61221.5.idx.i.i, %i.ps ; 3 uses
  %.sroa.61221.6.ptr.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61221.5.ptr.add.i.i
  %.val30.i.sink.i126.i.i = load i64, ptr %.sroa.61221.6.ptr.i.i, align 1
  %i.pv = icmp ugt i32 %i.pu, 64
  br i1 %i.pv, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph113.i.preheader

.lr.ph113.i.preheader:                            ; preds = %FSE_initDState.exit128.i.i, %bb.by, %FSE_initDState.exit128.i.thread251.i
  %.sroa.61221.0.idx.i108.i.ph = phi i64 [ %.sroa.61221.5.ptr.add.i254.i, %FSE_initDState.exit128.i.thread251.i ], [ 0, %bb.by ], [ %.sroa.61221.5.ptr.add.i.i, %FSE_initDState.exit128.i.i ]
  %.sroa.27.0.i107.i.ph = phi i32 [ %i.po, %FSE_initDState.exit128.i.thread251.i ], [ %i.pk, %bb.by ], [ %i.pu, %FSE_initDState.exit128.i.i ]
  %.sroa.0215.0.i106.i.ph = phi i64 [ %.val30.i.sink.i126.i256.i, %FSE_initDState.exit128.i.thread251.i ], [ %.sroa.0215.4.i.i, %bb.by ], [ %.val30.i.sink.i126.i.i, %FSE_initDState.exit128.i.i ]
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %.lr.ph113.i.preheader, %bb.cc
  %.036.idx.i.i111.i = phi i64 [ %.036.add.i.i.i, %bb.cc ], [ 0, %.lr.ph113.i.preheader ] ; 5 uses
  %.sroa.0.0.i110.i = phi i64 [ %i.sk, %bb.cc ], [ %i.pj, %.lr.ph113.i.preheader ] ; 3 uses
  %.sroa.0207.0.i109.i = phi i64 [ %i.rv, %bb.cc ], [ %i.ot, %.lr.ph113.i.preheader ] ; 3 uses
  %.sroa.61221.0.idx.i108.i = phi i64 [ %.sroa.61221.8.idx.i.i, %bb.cc ], [ %.sroa.61221.0.idx.i108.i.ph, %.lr.ph113.i.preheader ] ; 5 uses
  %.sroa.27.0.i107.i = phi i32 [ %i.si, %bb.cc ], [ %.sroa.27.0.i107.i.ph, %.lr.ph113.i.preheader ] ; 5 uses
  %.sroa.0215.0.i106.i = phi i64 [ %.sroa.0215.6.i.i, %bb.cc ], [ %.sroa.0215.0.i106.i.ph, %.lr.ph113.i.preheader ]
  %.036.ptr.ptr.i.i112.i = getelementptr inbounds nuw i8, ptr %0, i64 %.036.idx.i.i111.i ; 4 uses
  %.not.i129.i.i = icmp slt i64 %.sroa.61221.0.idx.i108.i, 8
  br i1 %.not.i129.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph113.i
  %i.pw = lshr i32 %.sroa.27.0.i107.i, 3
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = and i32 %.sroa.27.0.i107.i, 7
  br label %BIT_reloadDStream.exit137.i.i

bb.ca:                                            ; preds = %.lr.ph113.i
  %i.pz = icmp eq i64 %.sroa.61221.0.idx.i108.i, 0
  br i1 %i.pz, label %.lr.ph514.i.i.preheader, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qa = lshr i32 %.sroa.27.0.i107.i, 3
  %i.qb = zext nneg i32 %i.qa to i64              ; 2 uses
  %i.qc = icmp sge i64 %.sroa.61221.0.idx.i108.i, %i.qb
  %.024.i132409.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.0.idx.i108.i, i64 %i.qb) ; 2 uses
  %.024.i132.i.i = trunc i64 %.024.i132409.i.i to i32
  %i.qd = and i64 %.024.i132409.i.i, 4294967295
  %i.qe = shl i32 %.024.i132.i.i, 3
  %i.qf = sub i32 %.sroa.27.0.i107.i, %i.qe
  br label %BIT_reloadDStream.exit137.i.i

BIT_reloadDStream.exit137.i.i:                    ; preds = %bb.cb, %bb.bz
  %.sroa.27.8.i.i = phi i32 [ %i.qf, %bb.cb ], [ %i.py, %bb.bz ] ; 5 uses
  %.pn733.i.i = phi i64 [ %i.qd, %bb.cb ], [ %i.px, %bb.bz ]
  %.025.i131.i.i = phi i1 [ %i.qc, %bb.cb ], [ true, %bb.bz ]
  %.sroa.61221.8.idx.i.i = sub nsw i64 %.sroa.61221.0.idx.i108.i, %.pn733.i.i ; 5 uses
  %.sroa.0215.6.in.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61221.8.idx.i.i
  %.sroa.0215.6.i.i = load i64, ptr %.sroa.0215.6.in.i.i, align 1 ; 6 uses
  %i.qg = icmp samesign ult i64 %.036.idx.i.i111.i, 252
  %i.qh = select i1 %.025.i131.i.i, i1 %i.qg, i1 false
  br i1 %i.qh, label %bb.cc, label %.preheader.i26.i

.preheader.i26.i:                                 ; preds = %BIT_reloadDStream.exit137.i.i
  %i.qi = icmp ugt i32 %.sroa.27.8.i.i, 64
  br i1 %i.qi, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph514.i.i.preheader

.lr.ph514.i.i.preheader:                          ; preds = %bb.ca, %.preheader.i26.i
  %.sroa.61221.1.idx509.i.i.ph = phi i64 [ %.sroa.61221.8.idx.i.i, %.preheader.i26.i ], [ 0, %bb.ca ]
  %.sroa.27.1508.i.i.ph = phi i32 [ %.sroa.27.8.i.i, %.preheader.i26.i ], [ %.sroa.27.0.i107.i, %bb.ca ]
  %.sroa.0215.1507.i.i.ph = phi i64 [ %.sroa.0215.6.i.i, %.preheader.i26.i ], [ %.sroa.0215.0.i106.i, %bb.ca ]
  br label %.lr.ph514.i.i

bb.cc:                                            ; preds = %BIT_reloadDStream.exit137.i.i
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.0207.0.i109.i ; 3 uses
  %.sroa.0.0.copyload.i138.i.i = load i16, ptr %i.qj, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i139.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %.sroa.4.0.copyload.i140.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i139.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i141.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 3
  %.sroa.5.0.copyload.i142.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i141.i.i, align 1, !tbaa !9
  %i.qk = zext i8 %.sroa.5.0.copyload.i142.i.i to i32 ; 2 uses
  %i.ql = and i32 %.sroa.27.8.i.i, 63
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = shl i64 %.sroa.0215.6.i.i, %i.qm
  %i.qo = lshr i64 %i.qn, 1
  %i.qp = and i32 %i.qk, 63
  %i.qq = xor i32 %i.qp, 63
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = lshr i64 %i.qo, %i.qr
  %i.qt = add i32 %.sroa.27.8.i.i, %i.qk          ; 2 uses
  %i.qu = zext i16 %.sroa.0.0.copyload.i138.i.i to i64
  store i8 %.sroa.4.0.copyload.i140.i.i, ptr %.036.ptr.ptr.i.i112.i, align 1, !tbaa !9
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.0.0.i110.i ; 3 uses
  %.sroa.0.0.copyload.i145.i.i = load i16, ptr %i.qv, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i146.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 2
  %.sroa.4.0.copyload.i147.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i146.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i148.i.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 3
  %.sroa.5.0.copyload.i149.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i148.i.i, align 1, !tbaa !9
  %i.qw = zext i8 %.sroa.5.0.copyload.i149.i.i to i32 ; 2 uses
  %i.qx = and i32 %i.qt, 63
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = shl i64 %.sroa.0215.6.i.i, %i.qy
  %i.ra = lshr i64 %i.qz, 1
  %i.rb = and i32 %i.qw, 63
  %i.rc = xor i32 %i.rb, 63
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = lshr i64 %i.ra, %i.rd
  %i.rf = add i32 %i.qt, %i.qw                    ; 2 uses
  %i.rg = zext i16 %.sroa.0.0.copyload.i145.i.i to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i112.i, i64 1
  store i8 %.sroa.4.0.copyload.i147.i.i, ptr %i.rh, align 1, !tbaa !9
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.qs
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.qu ; 3 uses
  %.sroa.0.0.copyload.i152.i.i = load i16, ptr %i.rj, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i153.i.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 2
  %.sroa.4.0.copyload.i154.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i153.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i155.i.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 3
  %.sroa.5.0.copyload.i156.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i155.i.i, align 1, !tbaa !9
  %i.rk = zext i8 %.sroa.5.0.copyload.i156.i.i to i32 ; 2 uses
  %i.rl = and i32 %i.rf, 63
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = shl i64 %.sroa.0215.6.i.i, %i.rm
  %i.ro = lshr i64 %i.rn, 1
  %i.rp = and i32 %i.rk, 63
  %i.rq = xor i32 %i.rp, 63
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = lshr i64 %i.ro, %i.rr
  %i.rt = add i32 %i.rf, %i.rk                    ; 2 uses
  %i.ru = zext i16 %.sroa.0.0.copyload.i152.i.i to i64
  %i.rv = add nuw i64 %i.rs, %i.ru                ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i112.i, i64 2
  store i8 %.sroa.4.0.copyload.i154.i.i, ptr %i.rw, align 1, !tbaa !9
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.re
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.rg ; 3 uses
  %.sroa.0.0.copyload.i159.i.i = load i16, ptr %i.ry, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i160.i.i = getelementptr inbounds nuw i8, ptr %i.ry, i64 2
  %.sroa.4.0.copyload.i161.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i160.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i162.i.i = getelementptr inbounds nuw i8, ptr %i.ry, i64 3
  %.sroa.5.0.copyload.i163.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i162.i.i, align 1, !tbaa !9
  %i.rz = zext i8 %.sroa.5.0.copyload.i163.i.i to i32 ; 2 uses
  %i.sa = and i32 %i.rt, 63
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = shl i64 %.sroa.0215.6.i.i, %i.sb
  %i.sd = lshr i64 %i.sc, 1
  %i.se = and i32 %i.rz, 63
  %i.sf = xor i32 %i.se, 63
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = lshr i64 %i.sd, %i.sg
  %i.si = add i32 %i.rt, %i.rz                    ; 3 uses
  %i.sj = zext i16 %.sroa.0.0.copyload.i159.i.i to i64
  %i.sk = add nuw i64 %i.sh, %i.sj                ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i112.i, i64 3
  store i8 %.sroa.4.0.copyload.i161.i.i, ptr %i.sl, align 1, !tbaa !9
  %.036.add.i.i.i = add nuw nsw i64 %.036.idx.i.i111.i, 4 ; 2 uses
  %i.sm = icmp ugt i32 %i.si, 64
  br i1 %i.sm, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph113.i, !llvm.loop !98

.lr.ph514.i.i:                                    ; preds = %.lr.ph514.i.i.preheader, %BIT_endOfDStream.exit192.thread.i.i
  %.1.idx.i512.i.i = phi i64 [ %.add.i.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.036.idx.i.i111.i, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0.1511.i.i = phi i64 [ %i.uj, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0.0.i110.i, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0207.1510.i.i = phi i64 [ %i.tl, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0207.0.i109.i, %.lr.ph514.i.i.preheader ] ; 2 uses
  %.sroa.61221.1.idx509.i.i = phi i64 [ %.sroa.61221.10.idx.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.61221.1.idx509.i.i.ph, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.27.1508.i.i = phi i32 [ %i.uh, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.27.1508.i.i.ph, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0215.1507.i.i = phi i64 [ %.sroa.0215.8.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0215.1507.i.i.ph, %.lr.ph514.i.i.preheader ]
  %.1.ptr.ptr.i513.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i512.i.i
  %.not.i166.i.i = icmp slt i64 %.sroa.61221.1.idx509.i.i, 8
  br i1 %.not.i166.i.i, label %bb.cd, label %.thread637.i.i

.thread637.i.i:                                   ; preds = %.lr.ph514.i.i
  %i.sn = lshr i32 %.sroa.27.1508.i.i, 3
  %i.so = zext nneg i32 %i.sn to i64
  %.sroa.61221.1.add411.i.i = sub nuw nsw i64 %.sroa.61221.1.idx509.i.i, %i.so ; 3 uses
  %.ptr415.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.61221.1.add411.i.i
  %i.sp = and i32 %.sroa.27.1508.i.i, 7
  %.val30.i167.i.i = load i64, ptr %.ptr415.i.i, align 1
  %i.sq = icmp eq i64 %.sroa.61221.1.add411.i.i, 0
  br label %BIT_endOfDStream.exit175.thread.i.i

bb.cd:                                            ; preds = %.lr.ph514.i.i
  %i.sr = icmp eq i64 %.sroa.61221.1.idx509.i.i, 0
  br i1 %i.sr, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ss = lshr i32 %.sroa.27.1508.i.i, 3
  %i.st = zext nneg i32 %i.ss to i64
  %.024.i169416.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.1.idx509.i.i, i64 %i.st) ; 2 uses
  %.024.i169.i.i = trunc i64 %.024.i169416.i.i to i32
  %i.su = and i64 %.024.i169416.i.i, 4294967295
  %.sroa.61221.1.add.i.i = sub nsw i64 %.sroa.61221.1.idx509.i.i, %i.su ; 2 uses
  %.ptr414.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61221.1.add.i.i
  %i.sv = shl i32 %.024.i169.i.i, 3
  %i.sw = sub i32 %.sroa.27.1508.i.i, %i.sv
  %.val.i171.i.i = load i64, ptr %.ptr414.i.i, align 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sroa.0215.7.ph.i.i = phi i64 [ %.sroa.0215.1507.i.i, %bb.cd ], [ %.val.i171.i.i, %bb.ce ]
  %.sroa.27.9.ph.i.i = phi i32 [ %.sroa.27.1508.i.i, %bb.cd ], [ %i.sw, %bb.ce ] ; 2 uses
  %.sroa.61221.9.ph.idx.i.i = phi i64 [ 0, %bb.cd ], [ %.sroa.61221.1.add.i.i, %bb.ce ] ; 2 uses
  %i.sx = icmp eq i64 %.sroa.61221.9.ph.idx.i.i, 0 ; 2 uses
  %.not417.i.i = icmp eq i32 %.sroa.27.9.ph.i.i, 64
  %or.cond429.i.i = and i1 %.not417.i.i, %i.sx
  %.not418.i.i = icmp eq i64 %.sroa.0207.1510.i.i, 0
  %or.cond430.i.i = select i1 %or.cond429.i.i, i1 %.not418.i.i, i1 false
  br i1 %or.cond430.i.i, label %BIT_reloadDStream.exit174.i.i, label %BIT_endOfDStream.exit175.thread.i.i

BIT_endOfDStream.exit175.thread.i.i:              ; preds = %bb.cf, %.thread637.i.i
  %i.sy = phi i1 [ %i.sq, %.thread637.i.i ], [ %i.sx, %bb.cf ]
  %.sroa.61221.9.ph.idx647.i.i = phi i64 [ %.sroa.61221.1.add411.i.i, %.thread637.i.i ], [ %.sroa.61221.9.ph.idx.i.i, %bb.cf ] ; 5 uses
  %.sroa.27.9.ph646.i.i = phi i32 [ %i.sp, %.thread637.i.i ], [ %.sroa.27.9.ph.i.i, %bb.cf ] ; 2 uses
  %.sroa.0215.7.ph645.i.i = phi i64 [ %.val30.i167.i.i, %.thread637.i.i ], [ %.sroa.0215.7.ph.i.i, %bb.cf ] ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.0207.1510.i.i ; 3 uses
  %.sroa.0.0.copyload.i176.i.i = load i16, ptr %i.sz, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i177.i.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 2
  %.sroa.4.0.copyload.i178.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i177.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i179.i.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 3
  %.sroa.5.0.copyload.i180.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i179.i.i, align 1, !tbaa !9
  %i.ta = zext i8 %.sroa.5.0.copyload.i180.i.i to i32 ; 2 uses
  %i.tb = and i32 %.sroa.27.9.ph646.i.i, 63
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = shl i64 %.sroa.0215.7.ph645.i.i, %i.tc
  %i.te = lshr i64 %i.td, 1
  %i.tf = and i32 %i.ta, 63
  %i.tg = xor i32 %i.tf, 63
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = lshr i64 %i.te, %i.th
  %i.tj = add i32 %.sroa.27.9.ph646.i.i, %i.ta    ; 7 uses
  %i.tk = zext i16 %.sroa.0.0.copyload.i176.i.i to i64
  %i.tl = add nuw i64 %i.ti, %i.tk                ; 5 uses
  %.add51.i.i.i = or disjoint i64 %.1.idx.i512.i.i, 1 ; 3 uses
  %.ptr.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i.i.i
  store i8 %.sroa.4.0.copyload.i178.i.i, ptr %.1.ptr.ptr.i513.i.i, align 1, !tbaa !9
  %i.tm = icmp ugt i32 %i.tj, 64
  br i1 %i.tm, label %BIT_reloadDStream.exit174.split.loop.exit484.i.i, label %bb.cg

bb.cg:                                            ; preds = %BIT_endOfDStream.exit175.thread.i.i
  %.not.i183.i.i = icmp slt i64 %.sroa.61221.9.ph.idx647.i.i, 8
  br i1 %.not.i183.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.tn = lshr i32 %i.tj, 3
  %i.to = zext nneg i32 %i.tn to i64
  %.sroa.61221.9.ph.add410.i.i = sub nuw nsw i64 %.sroa.61221.9.ph.idx647.i.i, %i.to ; 2 uses
  %.ptr413.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.61221.9.ph.add410.i.i
  %i.tp = and i32 %i.tj, 7
  %.val30.i184.i.i = load i64, ptr %.ptr413.i.i, align 1
  br label %BIT_reloadDStream.exit191.i.i

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.sy, label %BIT_reloadDStream.exit191.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tq = lshr i32 %i.tj, 3
  %i.tr = zext nneg i32 %i.tq to i64
  %.024.i186419.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.9.ph.idx647.i.i, i64 %i.tr) ; 2 uses
  %.024.i186.i.i = trunc i64 %.024.i186419.i.i to i32
  %i.ts = and i64 %.024.i186419.i.i, 4294967295
  %.sroa.61221.9.ph.add.i.i = sub nsw i64 %.sroa.61221.9.ph.idx647.i.i, %i.ts ; 2 uses
  %.ptr412.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61221.9.ph.add.i.i
  %i.tt = shl i32 %.024.i186.i.i, 3
  %i.tu = sub i32 %i.tj, %i.tt
  %.val.i188.i.i = load i64, ptr %.ptr412.i.i, align 1
  br label %BIT_reloadDStream.exit191.i.i

BIT_reloadDStream.exit191.i.i:                    ; preds = %bb.cj, %bb.ci, %bb.ch
  %.sroa.0215.8.i.i = phi i64 [ %.val30.i184.i.i, %bb.ch ], [ %.val.i188.i.i, %bb.cj ], [ %.sroa.0215.7.ph645.i.i, %bb.ci ] ; 2 uses
  %.sroa.27.10.i.i = phi i32 [ %i.tp, %bb.ch ], [ %i.tu, %bb.cj ], [ %i.tj, %bb.ci ] ; 4 uses
  %.sroa.61221.10.idx.i.i = phi i64 [ %.sroa.61221.9.ph.add410.i.i, %bb.ch ], [ %.sroa.61221.9.ph.add.i.i, %bb.cj ], [ 0, %bb.ci ] ; 4 uses
  %i.tv = icmp eq i64 %.1.idx.i512.i.i, 254
  br i1 %i.tv, label %BIT_reloadDStream.exit174.split.loop.exit496.i.i, label %bb.ck

bb.ck:                                            ; preds = %BIT_reloadDStream.exit191.i.i
  %i.tw = icmp eq i64 %.sroa.61221.10.idx.i.i, 0
  %.not420.i.i = icmp eq i32 %.sroa.27.10.i.i, 64
  %or.cond431.i.i = and i1 %.not420.i.i, %i.tw
  %.not421.i.i = icmp eq i64 %.sroa.0.1511.i.i, 0
  %or.cond432.i.i = select i1 %or.cond431.i.i, i1 %.not421.i.i, i1 false
  br i1 %or.cond432.i.i, label %BIT_reloadDStream.exit174.i.i, label %BIT_endOfDStream.exit192.thread.i.i

BIT_endOfDStream.exit192.thread.i.i:              ; preds = %bb.ck
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.sroa.0.1511.i.i ; 3 uses
  %.sroa.0.0.copyload.i193.i.i = load i16, ptr %i.tx, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i194.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 2
  %.sroa.4.0.copyload.i195.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i194.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i196.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 3
  %.sroa.5.0.copyload.i197.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i196.i.i, align 1, !tbaa !9
  %i.ty = zext i8 %.sroa.5.0.copyload.i197.i.i to i32 ; 2 uses
  %i.tz = and i32 %.sroa.27.10.i.i, 63
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = shl i64 %.sroa.0215.8.i.i, %i.ua
  %i.uc = lshr i64 %i.ub, 1
  %i.ud = and i32 %i.ty, 63
  %i.ue = xor i32 %i.ud, 63
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = lshr i64 %i.uc, %i.uf
  %i.uh = add i32 %.sroa.27.10.i.i, %i.ty         ; 3 uses
  %i.ui = zext i16 %.sroa.0.0.copyload.i193.i.i to i64
  %i.uj = add nuw i64 %i.ug, %i.ui                ; 2 uses
  %.add.i.i.i = add nuw nsw i64 %.1.idx.i512.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i195.i.i, ptr %.ptr.ptr.i.i.i, align 1, !tbaa !9
  %i.uk = icmp ugt i32 %i.uh, 64
  br i1 %i.uk, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph514.i.i

BIT_reloadDStream.exit174.split.loop.exit484.i.i: ; preds = %BIT_endOfDStream.exit175.thread.i.i
  %.sroa.61221.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61221.9.ph.idx647.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.split.loop.exit490.i.i: ; preds = %bb.cc, %BIT_endOfDStream.exit192.thread.i.i, %.preheader.i26.i, %FSE_initDState.exit128.i.i, %FSE_initDState.exit119.i.i
  %.sroa.61221.1.idx.lcssa.i.i = phi i64 [ %.sroa.61221.8.idx.i.i, %.preheader.i26.i ], [ %.sroa.61221.10.idx.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.61221.5.ptr.add.i.i, %FSE_initDState.exit128.i.i ], [ %.sroa.61221.5.idx.i.i, %FSE_initDState.exit119.i.i ], [ %.sroa.61221.8.idx.i.i, %bb.cc ]
  %.sroa.0.1.lcssa.ph491.i.i = phi i64 [ %.sroa.0.0.i110.i, %.preheader.i26.i ], [ %i.uj, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.pj, %FSE_initDState.exit128.i.i ], [ %i.pj, %FSE_initDState.exit119.i.i ], [ %i.sk, %bb.cc ]
  %.sroa.27.2.ph492.i.i = phi i32 [ %.sroa.27.8.i.i, %.preheader.i26.i ], [ %i.uh, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.pu, %FSE_initDState.exit128.i.i ], [ %i.pk, %FSE_initDState.exit119.i.i ], [ %i.si, %bb.cc ]
  %.sroa.0207.2.ph494.i.i = phi i64 [ %.sroa.0207.0.i109.i, %.preheader.i26.i ], [ %i.tl, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.ot, %FSE_initDState.exit128.i.i ], [ %i.ot, %FSE_initDState.exit119.i.i ], [ %i.rv, %bb.cc ]
  %.2.idx.i.ph495.i.i = phi i64 [ %.036.idx.i.i111.i, %.preheader.i26.i ], [ %.add.i.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ 0, %FSE_initDState.exit128.i.i ], [ 0, %FSE_initDState.exit119.i.i ], [ %.036.add.i.i.i, %bb.cc ]
  %.sroa.61221.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61221.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.split.loop.exit496.i.i: ; preds = %BIT_reloadDStream.exit191.i.i
  %.sroa.61221.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.el, i64 %.sroa.61221.10.idx.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.i.i:                    ; preds = %bb.ck, %bb.cf, %BIT_reloadDStream.exit174.split.loop.exit496.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.1.lcssa.ph491.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.0.1511.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.sroa.0.1511.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %.sroa.0.1511.i.i, %bb.cf ], [ 0, %bb.ck ]
  %.sroa.27.2.i.i = phi i32 [ %.sroa.27.2.ph492.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.27.10.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %i.tj, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ 64, %bb.cf ], [ 64, %bb.ck ]
  %.sroa.61221.2.i.i = phi ptr [ %.sroa.61221.1.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.61221.10.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.sroa.61221.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %i.el, %bb.cf ], [ %i.el, %bb.ck ]
  %.sroa.0207.2.i.i = phi i64 [ %.sroa.0207.2.ph494.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %i.tl, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %i.tl, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ 0, %bb.cf ], [ %i.tl, %bb.ck ]
  %.2.idx.i.i.i = phi i64 [ %.2.idx.i.ph495.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ 255, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.add51.i.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %.1.idx.i512.i.i, %bb.cf ], [ %.add51.i.i.i, %bb.ck ] ; 2 uses
  %i.ul = icmp eq ptr %.sroa.61221.2.i.i, %i.el
  %.not422.i.i = icmp eq i32 %.sroa.27.2.i.i, 64
  %or.cond433.i.i = and i1 %.not422.i.i, %i.ul
  %.not423.i.i = icmp eq i64 %.sroa.0207.2.i.i, 0
  %or.cond434.i.i = select i1 %or.cond433.i.i, i1 %.not423.i.i, i1 false
  %.not424.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i, 0
  %or.cond435.i.i = select i1 %or.cond434.i.i, i1 %.not424.i.i, i1 false
  br i1 %or.cond435.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit200.thread.i.i

BIT_endOfDStream.exit200.thread.i.i:              ; preds = %BIT_reloadDStream.exit174.i.i
  %i.um = icmp eq i64 %.2.idx.i.i.i, 255
  %..i.i.i = select i1 %i.um, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

FSE_decompress.exit.thread:                       ; preds = %FSE_buildDTable.exit.thread.i, %bb.g, %bb.h, %bb.i, %bb.an, %BIT_initDStream.exit.i.i, %BIT_endOfDStream.exit105.thread.i.i, %BIT_initDStream.exit110.i.i, %BIT_endOfDStream.exit200.thread.i.i, %bb.ad, %bb.af, %bb.bh, %bb.bj, %bb.br
  %.0.i.ph = phi i64 [ -1, %bb.br ], [ -1, %bb.bj ], [ -72, %bb.bh ], [ -1, %bb.af ], [ -72, %bb.ad ], [ %..i.i.i, %BIT_endOfDStream.exit200.thread.i.i ], [ %i.ek, %BIT_initDStream.exit110.i.i ], [ %..i22.i.i, %BIT_endOfDStream.exit105.thread.i.i ], [ %i.ek, %BIT_initDStream.exit.i.i ], [ -1, %bb.an ], [ -72, %bb.i ], [ %i.bf, %bb.h ], [ -72, %bb.g ], [ %.0.i.ph.i, %FSE_buildDTable.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.critedge

FSE_decompress.exit:                              ; preds = %BIT_reloadDStream.exit80.i.i, %BIT_reloadDStream.exit174.i.i
  %.0.i = phi i64 [ %.2.idx.i.i.i, %BIT_reloadDStream.exit174.i.i ], [ %.2.idx.i18.i.i, %BIT_reloadDStream.exit80.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.un = icmp ult i64 %.0.i, -119
  br i1 %i.un, label %.loopexit, label %.critedge

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
  %i.uo = phi i64 [ %i.vc, %bb.cl ], [ 0, %.lr.ph166.preheader ]
  %.069165 = phi i32 [ %i.va, %bb.cl ], [ 0, %.lr.ph166.preheader ]
  %.173164 = phi i32 [ %i.vb, %bb.cl ], [ 0, %.lr.ph166.preheader ]
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 %i.uo ; 2 uses
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !9   ; 2 uses
  %i.ur = icmp ugt i8 %i.uq, 15
  br i1 %i.ur, label %.critedge, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph166
  %i.us = zext nneg i8 %i.uq to i64
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.us ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !3
  %i.uv = add i32 %i.uu, 1
  store i32 %i.uv, ptr %i.ut, align 4, !tbaa !3
  %i.uw = load i8, ptr %i.up, align 1, !tbaa !9
  %i.ux = zext nneg i8 %i.uw to i32
  %i.uy = shl nuw i32 1, %i.ux
  %i.uz = ashr i32 %i.uy, 1
  %i.va = add i32 %i.uz, %.069165                 ; 4 uses
  %i.vb = add i32 %.173164, 1                     ; 2 uses
  %i.vc = zext i32 %i.vb to i64                   ; 2 uses
  %i.vd = icmp ugt i64 %.074291, %i.vc
  br i1 %i.vd, label %.lr.ph166, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.cl
  %i.ve = icmp eq i32 %i.va, 0
  br i1 %i.ve, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge
  %i.vf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.va, i1 true) ; 2 uses
  %i.vg = xor i32 %i.vf, 31                       ; 2 uses
  %i.vh = sub nuw nsw i32 32, %i.vf
  %i.vi = icmp samesign ugt i32 %i.vg, 15
  br i1 %i.vi, label %.critedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vj = shl nuw nsw i32 2, %i.vg
  %i.vk = sub i32 %i.vj, %i.va                    ; 2 uses
  %i.vl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vk, i1 true) ; 2 uses
  %i.vm = lshr exact i32 -2147483648, %i.vl
  %.not84 = icmp eq i32 %i.vm, %i.vk
  br i1 %.not84, label %bb.co, label %.critedge

bb.co:                                            ; preds = %bb.cn
  %i.vn = sub nuw nsw i32 32, %i.vl               ; 2 uses
  %i.vo = trunc nuw nsw i32 %i.vn to i8
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 %.074291
  store i8 %i.vo, ptr %i.vp, align 1, !tbaa !9
  %i.vq = zext nneg i32 %i.vn to i64
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vq ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !3
  %i.vt = add i32 %i.vs, 1
  store i32 %i.vt, ptr %i.vr, align 4, !tbaa !3
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !3  ; 2 uses
  %i.vw = icmp ugt i32 %i.vv, 1
  %i.vx = and i32 %i.vv, 1
  %.not85 = icmp eq i32 %i.vx, 0
  %or.cond = and i1 %i.vw, %.not85
  br i1 %or.cond, label %bb.cp, label %.critedge

bb.cp:                                            ; preds = %bb.co
  %i.vy = trunc nuw i64 %.074291 to i32
  %i.vz = add i32 %i.vy, 1
  store i32 %i.vz, ptr %2, align 4, !tbaa !3
  store i32 %i.vh, ptr %3, align 4, !tbaa !3
  %i.wa = add nuw nsw i64 %.070293, 1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph166, %.loopexit, %FSE_decompress.exit.thread, %bb.cn, %bb.co, %bb.cm, %._crit_edge, %FSE_decompress.exit, %bb.f, %bb.e, %bb.a, %bb.cp
  %.1 = phi i64 [ %.0.i, %FSE_decompress.exit ], [ %.0.i.ph, %FSE_decompress.exit.thread ], [ -20, %._crit_edge ], [ -20, %bb.co ], [ %i.wa, %bb.cp ], [ -20, %bb.cn ], [ -72, %bb.a ], [ -72, %bb.f ], [ -72, %bb.e ], [ -20, %bb.cm ], [ -20, %.loopexit ], [ -20, %.lr.ph166 ]
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
  store i32 %i.e, ptr %2, align 4, !tbaa !3
  %i.f = shl nuw nsw i32 32, %i.c                 ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = add nuw nsw i32 %i.c, 6
  %i.i = lshr i32 %.val160, 4
  %i.j = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
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
  br i1 %i.z, label %.lr.ph, label %.preheader162, !llvm.loop !100

.lr.ph178:                                        ; preds = %.preheader162, %.lr.ph178
  %.1108177 = phi i32 [ %i.aa, %.lr.ph178 ], [ %.0107.lcssa, %.preheader162 ]
  %.3118176 = phi i32 [ %i.ac, %.lr.ph178 ], [ %.1116.lcssa, %.preheader162 ]
  %.3122175 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.1120.lcssa, %.preheader162 ]
  %i.aa = add i32 %.1108177, 3                    ; 2 uses
  %i.ab = lshr i32 %.3122175, 2                   ; 3 uses
  %i.ac = add nsw i32 %.3118176, 2                ; 2 uses
  %i.ad = and i32 %i.ab, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph178, label %._crit_edge, !llvm.loop !101

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.ap, i1 false), !tbaa !37
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
  store i16 %i.bi, ptr %i.bo, align 2, !tbaa !37
  %i.bp = icmp ne i16 %i.bi, 0
  %i.bq = icmp slt i32 %i.bl, %.0126197
  br i1 %i.bq, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %bb.l, %.lr.ph190
  %.1127188 = phi i32 [ %i.bs, %.lr.ph190 ], [ %.0126197, %bb.l ]
  %.1130187 = phi i32 [ %i.br, %.lr.ph190 ], [ %.0129195, %bb.l ]
  %i.br = add nsw i32 %.1130187, -1               ; 2 uses
  %i.bs = ashr i32 %.1127188, 1                   ; 3 uses
  %i.bt = icmp slt i32 %i.bl, %i.bs
  br i1 %i.bt, label %.lr.ph190, label %._crit_edge191, !llvm.loop !102

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
  br i1 %i.cd, label %bb.c, label %.critedge, !llvm.loop !103

.critedge:                                        ; preds = %._crit_edge191
  %.not147 = icmp eq i32 %i.bl, 1
  br i1 %.not147, label %bb.m, label %.critedge158

bb.m:                                             ; preds = %.critedge
  store i32 %.3114, ptr %1, align 4, !tbaa !3
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
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
  %i.o = load i16, ptr %i.n, align 2, !tbaa !37   ; 3 uses
  %i.p = icmp eq i16 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = trunc i64 %indvars.iv to i8
  %i.r = add i32 %.07081, -1
  %i.s = zext i32 %.07081 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %i.q, ptr %i.u, align 2, !tbaa !33
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
  store i16 %.sink, ptr %i.w, align 4, !tbaa !37
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.y = load i16, ptr %i.x, align 2, !tbaa !37   ; 3 uses
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
  store i8 %i.ab, ptr %i.af, align 2, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.1 = phi i16 [ 1, %bb.h ], [ %i.y, %bb.g ]
  %.171.1 = phi i32 [ %i.ac, %bb.h ], [ %.171, %bb.g ] ; 3 uses
  %.269.1 = phi i16 [ %.269, %bb.h ], [ %spec.select.1, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.ag, align 2, !tbaa !37
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.preheader.unr-lcssa, label %bb.c, !llvm.loop !38

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
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !37 ; 3 uses
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
  store i8 %i.al, ptr %i.ap, align 2, !tbaa !33
  br label %.preheader79.preheader.epilog-lcssa

.preheader79.preheader.epilog-lcssa:              ; preds = %bb.k, %bb.j
  %.sink.epil = phi i16 [ 1, %bb.k ], [ %i.ai, %bb.j ]
  %.171.epil = phi i32 [ %i.am, %bb.k ], [ %.07081.epil.init, %bb.j ]
  %.269.epil = phi i16 [ %.06782.epil.init, %bb.k ], [ %spec.select.epil, %bb.j ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.aq, align 2, !tbaa !37
  br label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %.preheader79.preheader.unr-lcssa, %.preheader79.preheader.epilog-lcssa
  %.171.lcssa = phi i32 [ %.171.1, %.preheader79.preheader.unr-lcssa ], [ %.171.epil, %.preheader79.preheader.epilog-lcssa ] ; 3 uses
  %.269.lcssa = phi i16 [ %.269.1, %.preheader79.preheader.unr-lcssa ], [ %.269.epil, %.preheader79.preheader.epilog-lcssa ]
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %._crit_edge
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge ], [ 0, %.preheader79.preheader ] ; 3 uses
  %.06287 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.preheader79.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv90
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !37 ; 5 uses
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
  store i8 %i.au, ptr %i.az, align 2, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.1.pn = phi i32 [ %.185, %bb.l ], [ %.2, %bb.m ]
  %.pn = add nuw i32 %i.h, %.1.pn
  %.2 = and i32 %.pn, %i.d                        ; 4 uses
  %i.ba = icmp ugt i32 %.2, %.171.lcssa
  br i1 %i.ba, label %bb.m, label %bb.n, !llvm.loop !39

bb.n:                                             ; preds = %bb.m
  %i.bb = zext nneg i32 %.2 to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i8 %i.au, ptr %i.bd, align 2, !tbaa !33
  br label %bb.o

end_hunk_2
begin_hunk_3_@BIT_reloadDStream:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65   ; 6 uses
  %i.c = icmp ugt i32 %i.b, 64
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not = icmp ult ptr %i.e, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i32 %i.b, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !63
  %i.m = and i32 %i.b, 7
  store i32 %i.m, ptr %i.a, align 8, !tbaa !65
  %.val30 = load i64, ptr %i.l, align 1
  store i64 %.val30, ptr %0, align 8, !tbaa !64
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
  store ptr %i.z, ptr %i.d, align 8, !tbaa !63
  %i.aa = shl i32 %.024, 3
  %i.ab = sub i32 %i.b, %i.aa
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !65
  %.val = load i64, ptr %i.z, align 1
  store i64 %.val, ptr %0, align 8, !tbaa !64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.c
  %.025 = phi i32 [ %.0, %bb.f ], [ 0, %bb.c ], [ %., %bb.e ], [ 3, %bb.a ]
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @HUF_decodeStreamX2(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 65536) %4) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 -4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = sub nsw i32 0, %4
  %i.f = and i32 %i.e, 63
  %i.g = zext nneg i32 %i.f to i64                ; 6 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 64
  br i1 %i.i, label %.preheader55, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.e
  %i.j = phi i32 [ %i.cc, %bb.e ], [ %i.h, %bb.a ] ; 5 uses
  %.03 = phi ptr [ %i.cb, %bb.e ], [ %0, %bb.a ]  ; 8 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !63   ; 6 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.not.i = icmp ult ptr %i.k, %i.m
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph5
  %i.n = lshr i32 %i.j, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !63
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
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !63
  %i.af = shl i32 %.024.i, 3
  %i.ag = sub i32 %i.j, %i.af
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.b, %bb.d
  %.val30.i.sink.in = phi ptr [ %i.q, %bb.b ], [ %i.ae, %bb.d ]
  %.val7.i = phi i32 [ %i.r, %bb.b ], [ %i.ag, %bb.d ] ; 4 uses
  %.025.i = phi i1 [ true, %bb.b ], [ %i.x, %bb.d ]
  store i32 %.val7.i, ptr %i.a, align 8, !tbaa !65
  %.val30.i.sink = load i64, ptr %.val30.i.sink.in, align 1
  store i64 %.val30.i.sink, ptr %1, align 8, !tbaa !64
  %i.ah = icmp ule ptr %.03, %i.b
  %i.ai = select i1 %.025.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.e, label %.preheader55

.preheader55:                                     ; preds = %BIT_reloadDStream.exit, %bb.e, %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.03, %BIT_reloadDStream.exit ], [ %i.cb, %bb.e ], [ %.03, %bb.c ] ; 2 uses
  %.val7.i69 = phi i32 [ %i.h, %bb.a ], [ %.val7.i, %BIT_reloadDStream.exit ], [ %i.cc, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %i.aj = icmp ugt i32 %.val7.i69, 64
  br i1 %i.aj, label %BIT_reloadDStream.exit50.thread, label %.lr.ph13

bb.e:                                             ; preds = %BIT_reloadDStream.exit
  %.val.i35 = load i64, ptr %1, align 8, !tbaa !64
  %i.ak = and i32 %.val7.i, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %.val.i35, %i.al
  %i.an = lshr i64 %i.am, %i.g
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !68
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %.val7.i, %i.as
  store i32 %i.at, ptr %i.a, align 8, !tbaa !65
  store i8 %i.ap, ptr %.03, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %.03, i64 1
  %.val.i36 = load i64, ptr %1, align 8, !tbaa !64
  %.val7.i37 = load i32, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %i.av = and i32 %.val7.i37, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %.val.i36, %i.aw
  %i.ay = lshr i64 %i.ax, %i.g
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !68
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %.val7.i37, %i.bd
  store i32 %i.be, ptr %i.a, align 8, !tbaa !65
  store i8 %i.ba, ptr %i.au, align 1, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %.03, i64 2
  %.val.i38 = load i64, ptr %1, align 8, !tbaa !64
  %.val7.i39 = load i32, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %i.bg = and i32 %.val7.i39, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl i64 %.val.i38, %i.bh
  %i.bj = lshr i64 %i.bi, %i.g
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !66
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !68
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %.val7.i39, %i.bo
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !65
  store i8 %i.bl, ptr %i.bf, align 1, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %.03, i64 3
  %.val.i40 = load i64, ptr %1, align 8, !tbaa !64
  %.val7.i41 = load i32, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %i.br = and i32 %.val7.i41, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %.val.i40, %i.bs
  %i.bu = lshr i64 %i.bt, %i.g
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !66
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !68
  %i.bz = zext i8 %i.by to i32
  %i.ca = add i32 %.val7.i41, %i.bz
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %.03, i64 4 ; 2 uses
  store i8 %i.bw, ptr %i.bq, align 1, !tbaa !9
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !65  ; 3 uses
  %i.cd = icmp ugt i32 %i.cc, 64
  br i1 %i.cd, label %.preheader55, label %.lr.ph5, !llvm.loop !104

.lr.ph13:                                         ; preds = %.preheader55, %bb.i
  %.312 = phi ptr [ %i.dp, %bb.i ], [ %.0.lcssa, %.preheader55 ] ; 5 uses
  %i.ce = phi i32 [ %.pre, %bb.i ], [ %.val7.i69, %.preheader55 ] ; 4 uses
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !63  ; 6 uses
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !61  ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.not.i42 = icmp ult ptr %i.cf, %i.ch
  br i1 %.not.i42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph13
  %i.ci = lshr i32 %i.ce, 3
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.cf, i64 %i.ck ; 2 uses
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !63
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
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !63
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
  store i32 %.val7.i52, ptr %i.a, align 8, !tbaa !65
  %.val30.i43.sink = load i64, ptr %.val30.i43.sink.in, align 1
  store i64 %.val30.i43.sink, ptr %1, align 8, !tbaa !64
  %i.dd = icmp ult ptr %.312, %2                  ; 2 uses
  %i.de = select i1 %.025.i44, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.i, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit50
  br i1 %i.dd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %BIT_reloadDStream.exit50.thread, %.preheader
  %.456.ph = phi ptr [ %.312, %.preheader ], [ %.3.lcssa, %BIT_reloadDStream.exit50.thread ]
  br label %.lr.ph

bb.i:                                             ; preds = %BIT_reloadDStream.exit50
  %.val.i51 = load i64, ptr %1, align 8, !tbaa !64
  %i.df = and i32 %.val7.i52, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl i64 %.val.i51, %i.dg
  %i.di = lshr i64 %i.dh, %i.g
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !66
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !68
  %i.dn = zext i8 %i.dm to i32
  %i.do = add i32 %.val7.i52, %i.dn
  store i32 %i.do, ptr %i.a, align 8, !tbaa !65
  %i.dp = getelementptr inbounds nuw i8, ptr %.312, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.312, align 1, !tbaa !9
  %.pre = load i32, ptr %i.a, align 8, !tbaa !65  ; 2 uses
  %i.dq = icmp ugt i32 %.pre, 64
  br i1 %i.dq, label %BIT_reloadDStream.exit50.thread, label %.lr.ph13, !llvm.loop !105

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.456 = phi ptr [ %i.eb, %.lr.ph ], [ %.456.ph, %.lr.ph.preheader ] ; 2 uses
  %.val.i53 = load i64, ptr %1, align 8, !tbaa !64
  %.val7.i54 = load i32, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %i.dr = and i32 %.val7.i54, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl i64 %.val.i53, %i.ds
  %i.du = lshr i64 %i.dt, %i.g
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !66
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !68
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add i32 %.val7.i54, %i.dz
  store i32 %i.ea, ptr %i.a, align 8, !tbaa !65
  %i.eb = getelementptr inbounds nuw i8, ptr %.456, i64 1 ; 2 uses
  store i8 %i.dw, ptr %.456, align 1, !tbaa !9
  %i.ec = icmp ult ptr %i.eb, %2
  br i1 %i.ec, label %.lr.ph, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %.lr.ph, %BIT_reloadDStream.exit50.thread, %.preheader
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @HUF_decodeStreamX4(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 -7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = sub i32 0, %4
  %i.f = and i32 %i.e, 63
  %i.g = zext nneg i32 %i.f to i64                ; 7 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !65  ; 3 uses
  %i.h = icmp ugt i32 %.pre, 64
  br i1 %i.h, label %.preheader68, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.a, %bb.e
  %.02 = phi ptr [ %i.cr, %bb.e ], [ %0, %bb.a ]  ; 5 uses
  %i.i = phi i32 [ %i.cn, %bb.e ], [ %.pre, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !63   ; 6 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.not.i = icmp ult ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph4
  %i.m = lshr i32 %i.i, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.o ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !63
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
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !63
  %i.ae = shl i32 %.024.i, 3
  %i.af = sub i32 %i.i, %i.ae
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.b, %bb.d
  %.val30.i.sink.in = phi ptr [ %i.p, %bb.b ], [ %i.ad, %bb.d ]
  %.val9.i = phi i32 [ %i.q, %bb.b ], [ %i.af, %bb.d ] ; 3 uses
  %.025.i = phi i1 [ true, %bb.b ], [ %i.w, %bb.d ]
  store i32 %.val9.i, ptr %i.a, align 8, !tbaa !65
  %.val30.i.sink = load i64, ptr %.val30.i.sink.in, align 1
  store i64 %.val30.i.sink, ptr %1, align 8, !tbaa !64
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
  %.val.i47 = load i64, ptr %1, align 8, !tbaa !64
  %i.ak = and i32 %.val9.i, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %.val.i47, %i.al
  %i.an = lshr i64 %i.am, %i.g
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.an ; 3 uses
  %i.ap = load i16, ptr %i.ao, align 2
  store i16 %i.ap, ptr %.02, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !33
  %i.as = zext i8 %i.ar to i32
  %i.at = load i32, ptr %i.a, align 8, !tbaa !65
  %i.au = add i32 %i.at, %i.as                    ; 2 uses
  store i32 %i.au, ptr %i.a, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.02, i64 %i.ax ; 2 uses
  %.val.i48 = load i64, ptr %1, align 8, !tbaa !64
  %i.az = and i32 %i.au, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %.val.i48, %i.ba
  %i.bc = lshr i64 %i.bb, %i.g
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bc ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ay, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !33
  %i.bh = zext i8 %i.bg to i32
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !65
  %i.bj = add i32 %i.bi, %i.bh                    ; 2 uses
  store i32 %i.bj, ptr %i.a, align 8, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !34
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bm ; 2 uses
  %.val.i50 = load i64, ptr %1, align 8, !tbaa !64
  %i.bo = and i32 %i.bj, 63
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl i64 %.val.i50, %i.bp
  %i.br = lshr i64 %i.bq, %i.g
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.br ; 3 uses
  %i.bt = load i16, ptr %i.bs, align 2
  store i16 %i.bt, ptr %i.bn, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !33
  %i.bw = zext i8 %i.bv to i32
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !65
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  store i32 %i.by, ptr %i.a, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !34
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cb ; 2 uses
  %.val.i52 = load i64, ptr %1, align 8, !tbaa !64
  %i.cd = and i32 %i.by, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl i64 %.val.i52, %i.ce
  %i.cg = lshr i64 %i.cf, %i.g
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cg ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 2
  store i16 %i.ci, ptr %i.cc, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !33
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !65
  %i.cn = add i32 %i.cm, %i.cl                    ; 4 uses
  store i32 %i.cn, ptr %i.a, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !34
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cq ; 2 uses
  %i.cs = icmp ugt i32 %i.cn, 64
  br i1 %i.cs, label %.preheader68, label %.lr.ph4, !llvm.loop !107

.lr.ph12:                                         ; preds = %.preheader68, %bb.i
  %.311 = phi ptr [ %i.eh, %bb.i ], [ %.0.lcssa, %.preheader68 ] ; 5 uses
  %i.ct = phi i32 [ %i.ed, %bb.i ], [ %.val9.i88, %.preheader68 ] ; 5 uses
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !63  ; 6 uses
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !61  ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.not.i54 = icmp ult ptr %i.cu, %i.cw
  br i1 %.not.i54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph12
  %i.cx = lshr i32 %i.ct, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cu, i64 %i.cz ; 2 uses
  store ptr %i.da, ptr %i.c, align 8, !tbaa !63
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
  store ptr %i.do, ptr %i.c, align 8, !tbaa !63
  %i.dp = shl i32 %.024.i57, 3
  %i.dq = sub i32 %i.ct, %i.dp
  br label %BIT_reloadDStream.exit62

BIT_reloadDStream.exit62:                         ; preds = %bb.f, %bb.h
  %.val30.i55.sink.in = phi ptr [ %i.da, %bb.f ], [ %i.do, %bb.h ]
  %.val9.i64 = phi i32 [ %i.db, %bb.f ], [ %i.dq, %bb.h ] ; 3 uses
  %.025.i56 = phi i1 [ true, %bb.f ], [ %i.dh, %bb.h ]
  store i32 %.val9.i64, ptr %i.a, align 8, !tbaa !65
  %.val30.i55.sink = load i64, ptr %.val30.i55.sink.in, align 1
  store i64 %.val30.i55.sink, ptr %1, align 8, !tbaa !64
  %i.dr = icmp ule ptr %.311, %i.ai
  %i.ds = select i1 %.025.i56, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.i, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit62, %bb.i, %bb.g, %.preheader68
  %.3.lcssa = phi ptr [ %.0.lcssa, %.preheader68 ], [ %.311, %BIT_reloadDStream.exit62 ], [ %i.eh, %bb.i ], [ %.311, %bb.g ] ; 3 uses
  %.val9.i6491 = phi i32 [ %.val9.i88, %.preheader68 ], [ %.val9.i64, %BIT_reloadDStream.exit62 ], [ %i.ed, %bb.i ], [ %i.ct, %bb.g ] ; 2 uses
  %.not70 = icmp ugt ptr %.3.lcssa, %i.ai
  br i1 %.not70, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %BIT_reloadDStream.exit62
  %.val.i63 = load i64, ptr %1, align 8, !tbaa !64
  %i.dt = and i32 %.val9.i64, 63
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl i64 %.val.i63, %i.du
  %i.dw = lshr i64 %i.dv, %i.g
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw ; 3 uses
  %i.dy = load i16, ptr %i.dx, align 2
  store i16 %i.dy, ptr %.311, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !33
  %i.eb = zext i8 %i.ea to i32
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !65
  %i.ed = add i32 %i.ec, %i.eb                    ; 4 uses
  store i32 %i.ed, ptr %i.a, align 8, !tbaa !65
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !34
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.311, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt i32 %i.ed, 64
  br i1 %i.ei, label %.preheader, label %.lr.ph12, !llvm.loop !108

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.val9.i66 = phi i32 [ %i.et, %.lr.ph ], [ %.val9.i6491, %.preheader ]
  %.471 = phi ptr [ %i.ex, %.lr.ph ], [ %.3.lcssa, %.preheader ] ; 2 uses
  %.val.i65 = load i64, ptr %1, align 8, !tbaa !64
  %i.ej = and i32 %.val9.i66, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %.val.i65, %i.ek
  %i.em = lshr i64 %i.el, %i.g
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %.471, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !33
  %i.er = zext i8 %i.eq to i32
  %i.es = load i32, ptr %i.a, align 8, !tbaa !65
  %i.et = add i32 %i.es, %i.er                    ; 3 uses
  store i32 %i.et, ptr %i.a, align 8, !tbaa !65
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !34
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.471, i64 %i.ew ; 3 uses
  %.not = icmp ugt ptr %i.ex, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.val15.i = phi i32 [ %.val9.i6491, %.preheader ], [ %i.et, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.ex, %.lr.ph ] ; 2 uses
  %i.ey = icmp ult ptr %.4.lcssa, %2
  br i1 %i.ey, label %bb.j, label %HUF_decodeLastSymbolX4.exit

bb.j:                                             ; preds = %._crit_edge
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !64
  %i.ez = and i32 %.val15.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %.val.i67, %i.fa
  %i.fc = lshr i64 %i.fb, %i.g
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 2
  store i8 %i.fe, ptr %.4.lcssa, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !34
  %i.fh = icmp eq i8 %i.fg, 1
  br i1 %i.fh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !33
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !65
  %i.fm = add i32 %i.fl, %i.fk
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !65  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 64
  br i1 %i.fo, label %bb.m, label %HUF_decodeLastSymbolX4.exit

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !33
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

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
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !5, i64 0}
!12 = !{!13, !14, i64 10264}
!13 = !{!"ZSTDv03_Dctx_s", !5, i64 0, !5, i64 4100, !5, i64 6152, !14, i64 10256, !14, i64 10264, !8, i64 10272, !4, i64 10280, !4, i64 10284, !15, i64 10288, !8, i64 10296, !5, i64 10304}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!13, !8, i64 10272}
!17 = !{!13, !4, i64 10284}
!18 = !{!13, !14, i64 10256}
!19 = !{!13, !4, i64 10280}
!20 = !{!21, !4, i64 0}
!21 = !{!"", !4, i64 0, !4, i64 4}
!22 = !{!21, !4, i64 4}
!23 = !{!14, !14, i64 0}
!24 = distinct !{null, null, null}
!25 = !{!13, !15, i64 10288}
!26 = !{!13, !8, i64 10296}
!27 = !{!28, !29, i64 0}
!28 = !{!"", !29, i64 0, !29, i64 2}
!29 = !{!"short", !5, i64 0}
!30 = !{!28, !29, i64 2}
!31 = !{!32, !29, i64 0}
!32 = !{!"", !29, i64 0, !5, i64 2, !5, i64 3}
!33 = !{!32, !5, i64 2}
!34 = !{!32, !5, i64 3}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!29, !29, i64 0}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !36}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !36, !44}
!47 = distinct !{!47, !36, !44, !45}
!48 = distinct !{!48, !36, !44, !45}
!49 = distinct !{!49, !36, !44}
!50 = distinct !{!50, !36, !44, !45}
!51 = !{!"branch_weights", i32 4, i32 28}
!52 = distinct !{!52, !36, !44, !45}
!53 = distinct !{!53, !36, !44}
!54 = distinct !{!54, !36, !44}
!55 = distinct !{!55, !36}
!56 = distinct !{!56, !36, !44, !45}
!57 = !{!"branch_weights", i32 4, i32 12}
!58 = distinct !{!58, !36, !44, !45}
!59 = distinct !{!59, !36, !45, !44}
!60 = distinct !{!60, !36}
!61 = !{!62, !15, i64 24}
!62 = !{!"", !8, i64 0, !4, i64 8, !15, i64 16, !15, i64 24}
!63 = !{!62, !15, i64 16}
!64 = !{!62, !8, i64 0}
!65 = !{!62, !4, i64 8}
!66 = !{!67, !5, i64 0}
!67 = !{!"", !5, i64 0, !5, i64 1}
!68 = !{!67, !5, i64 1}
!69 = distinct !{!69, !36}
!70 = !{!15, !15, i64 0}
!71 = distinct !{!71, !36}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36, !44, !45}
!78 = distinct !{!78, !74}
!79 = distinct !{!79, !36, !44}
!80 = distinct !{!80, !36}
!81 = distinct !{!81, !36, !44, !45}
!82 = distinct !{!82, !36, !45, !44}
!83 = distinct !{!83, !36, !44, !45}
!84 = distinct !{!84, !36, !44}
!85 = distinct !{!85, !36}
!86 = distinct !{!86, !36, !44, !45}
!87 = distinct !{!87, !36, !45, !44}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = !{!91}
!91 = distinct !{!91, !92}
!92 = distinct !{!92, !"LVerDomain"}
!93 = !{!94}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !36, !44, !45}
!96 = distinct !{!96, !36, !44, !45}
!97 = distinct !{!97, !36, !44}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !36}
!102 = distinct !{!102, !36}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !36}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36}
!109 = distinct !{!109, !36}
end_hunk_3
