inline.NumInlined: 323
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@HUF_decompress4X4:bb.a
bb.bg:                                            ; preds = %BIT_reloadDStream.exit225.i
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
  br i1 %i.acf, label %bb.aq, label %._crit_edge.i21, !llvm.loop !110

._crit_edge.i21:                                  ; preds = %BIT_reloadDStream.exit234.i
  store i32 %.val9.i291.i, ptr %i.pf, align 8, !tbaa !86
  store i32 %.val9.i178294.i, ptr %i.pg, align 8, !tbaa !86
  store i32 %.val9.i180297.i, ptr %i.ph, align 8, !tbaa !86
  store i32 %.val9.i182300.i, ptr %i.pi, align 8, !tbaa !86
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
  %i.acw = load <2 x ptr>, ptr %i.acj, align 8, !tbaa !91 ; 2 uses
  %i.acx = load <2 x ptr>, ptr %i.acn, align 8, !tbaa !91 ; 2 uses
  %i.acy = load <2 x ptr>, ptr %i.acr, align 8, !tbaa !91 ; 2 uses
  %i.acz = load <2 x ptr>, ptr %i.acv, align 8, !tbaa !91 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %HUF_decompress4X4_usingDTable.exit

HUF_decompress4X4_usingDTable.exit:               ; preds = %BIT_initDStream.exit.thread.i, %bb.f, %HUF_readDTableX4.exit.thread, %HUF_readDTableX4.exit
  %.0 = phi i64 [ %.0.i.ph, %HUF_readDTableX4.exit.thread ], [ -20, %bb.f ], [ -72, %HUF_readDTableX4.exit ], [ %.0152.i, %BIT_initDStream.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 5 uses
  %i.b = alloca [4097 x i32], align 16            ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %4, align 1, !tbaa !10      ; 4 uses
  %i.f = zext i8 %i.e to i64                      ; 14 uses
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i8 %i.e, -15
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr [4 x i8], ptr @HUF_readStats.l, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 -968
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  %i.l = sext i32 %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 1, i64 256, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i64 %i.f, -127                   ; 5 uses
  %i.n = add nsw i64 %i.f, -126
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %.not83 = icmp ult i64 %i.o, %5
  br i1 %.not83, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.m, i64 2)
  %i.q = add nsw i64 %umax76, -1
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.m, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add nsw i64 %i.f, -128
  %i.u = lshr i64 %i.t, 1
  %i.v = and i64 %i.f, 126
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.w, i64 2
  %i.x = getelementptr i8, ptr %4, i64 %i.u
  %scevgep75 = getelementptr i8, ptr %i.x, i64 2
  %bound0 = icmp ult ptr %0, %scevgep75
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.m, 31
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 4 uses
  %i.y = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %6 = shl nuw i64 %index, 1                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %wide.load.a = load <8 x i8>, ptr %i.z, align 1, !tbaa !10, !alias.scope !111
  %wide.load78.a = load <8 x i8>, ptr %i.aa, align 1, !tbaa !10, !alias.scope !111
  %i.ab = lshr <8 x i8> %wide.load.a, splat (i8 4)
  %i.ac = lshr <8 x i8> %wide.load78.a, splat (i8 4)
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load79 = load <8 x i8>, ptr %i.z, align 1, !tbaa !10, !alias.scope !111
  %wide.load80 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !10, !alias.scope !111
  %i.af = and <8 x i8> %wide.load79, splat (i8 15)
  %i.ag = and <8 x i8> %wide.load80, splat (i8 15)
  %interleaved.vec.a = shufflevector <8 x i8> %i.ab, <8 x i8> %i.af, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.a, ptr %7, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  %interleaved.vec81.a = shufflevector <8 x i8> %i.ac, <8 x i8> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec81.a, ptr %i.ae, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %i.s, -4                     ; 3 uses
  %i.ai = shl i64 %n.vec83, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.aj = shl nuw i64 %index84, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 %index84
  %wide.load85 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !10, !alias.scope !111 ; 2 uses
  %i.al = lshr <4 x i8> %wide.load85, splat (i8 4)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.an = and <4 x i8> %wide.load85, splat (i8 15)
  %interleaved.vec87 = shufflevector <4 x i8> %i.al, <4 x i8> %i.an, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec87, ptr %i.am, align 1, !tbaa !10, !alias.scope !114, !noalias !111
  %index.next88 = add nuw i64 %index84, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.s, %n.vec83
  br i1 %cmp.n89, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ap = phi i64 [ %i.az, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.aq = lshr exact i64 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.at = lshr i8 %i.as, 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  store i8 %i.at, ptr %i.au, align 1, !tbaa !10
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.aw = and i8 %i.av, 15
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !10
  %i.az = add nuw nsw i64 %i.ap, 2                ; 2 uses
  %i.ba = icmp samesign ugt i64 %i.m, %i.az
  br i1 %i.ba, label %.lr.ph, label %.loopexit.thread, !llvm.loop !118

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph166.preheader

bb.f:                                             ; preds = %bb.b
  %.not81 = icmp ugt i64 %5, %i.f
  br i1 %.not81, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 255, ptr %i.d, align 4, !tbaa !50
  %i.bc = icmp samesign ult i8 %i.e, 2
  br i1 %i.bc, label %FSE_decompress.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = call fastcc i64 @FSE_readNCount(ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.c, ptr noundef nonnull %i.bb, i64 noundef range(i64 0, 128) %i.f) ; 5 uses
  %i.be = icmp ult i64 %i.bd, -119
  br i1 %i.be, label %bb.i, label %FSE_decompress.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not21.i = icmp ult i64 %i.bd, %i.f
  br i1 %.not21.i, label %bb.j, label %FSE_decompress.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !50
  %i.bg = load i32, ptr %i.c, align 4, !tbaa !50
  %i.bh = call fastcc i64 @FSE_buildDTable(ptr noundef nonnull %i.b, ptr noundef %i.a, i32 noundef %i.bf, i32 noundef %i.bg) ; 2 uses
  %i.bi = icmp ult i64 %i.bh, -119
  br i1 %i.bi, label %bb.k, label %FSE_decompress.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bj = sub nsw i64 %i.f, %i.bd                 ; 13 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd ; 42 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.3.0.copyload.i.i = load i16, ptr %.sroa.3.0..sroa_idx.i.i, align 2
  %.not.i.i = icmp eq i16 %.sroa.3.0.copyload.i.i, 0
  %i.bl = icmp eq i64 %i.bj, 0                    ; 2 uses
  br i1 %.not.i.i, label %bb.ar, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.bl, label %FSE_decompress.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = icmp ugt i64 %i.bj, 7
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.f
  %i.bn = getelementptr i8, ptr %.ptr.i.i, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10  ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !10
  %i.br = zext i8 %i.bq to i64                    ; 7 uses
  switch i64 %i.bj, label %bb.v [
    i64 7, label %bb.p
    i64 6, label %bb.q
    i64 5, label %bb.r
    i64 4, label %bb.s
    i64 3, label %bb.t
    i64 2, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 48
  %i.bw = or disjoint i64 %i.bv, %i.br
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bx = phi i64 [ %i.bw, %bb.p ], [ %i.br, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 40
  %i.cc = add nuw nsw i64 %i.cb, %i.bx
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cd = phi i64 [ %i.cc, %bb.q ], [ %i.br, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 32
  %i.ci = add nuw nsw i64 %i.ch, %i.cd
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.cj = phi i64 [ %i.ci, %bb.r ], [ %i.br, %bb.o ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !10
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 24
  %i.co = add nuw nsw i64 %i.cn, %i.cj
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %i.cp = phi i64 [ %i.co, %bb.s ], [ %i.br, %bb.o ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 16
  %i.cu = add nuw nsw i64 %i.ct, %i.cp
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %i.cv = phi i64 [ %i.cu, %bb.t ], [ %i.br, %bb.o ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !10
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 8
  %i.da = add nuw nsw i64 %i.cz, %i.cv
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.o
  %.sroa.0270.2.i.i = phi i64 [ %i.br, %bb.o ], [ %i.da, %bb.u ]
  %i.db = getelementptr i8, ptr %i.bb, i64 %i.f
  %i.dc = getelementptr i8, ptr %i.db, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10  ; 2 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.thread320.i.i

BIT_initDStream.exit.thread320.i.i:               ; preds = %bb.v
  %i.df = zext i8 %i.dd to i32
  %i.dg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.df, i1 true)
  %i.dh = trunc nuw nsw i64 %i.bj to i32
  %i.di = shl nuw nsw i32 %i.dh, 3
  %reass.sub = sub nsw i32 %i.dg, %i.di
  %i.dj = add nsw i32 %reass.sub, 41
  br label %bb.w

BIT_initDStream.exit.i.i:                         ; preds = %bb.n
  %.add.i.i = add nsw i64 %i.bj, -8               ; 2 uses
  %.ptr378.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.add.i.i
  %.val.i.i.i = load i64, ptr %.ptr378.i.i, align 1
  %i.dk = zext i8 %i.bo to i32
  %i.dl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dk, i1 true)
  %i.dm = xor i32 %i.dl, 31
  %i.dn = sub nuw nsw i32 8, %i.dm
  %i.do = icmp ult i64 %i.bj, -119
  br i1 %i.do, label %bb.w, label %FSE_decompress.exit.thread

bb.w:                                             ; preds = %BIT_initDStream.exit.i.i, %BIT_initDStream.exit.thread320.i.i
  %.sroa.0270.3330.i.i = phi i64 [ %.sroa.0270.2.i.i, %BIT_initDStream.exit.thread320.i.i ], [ %.val.i.i.i, %BIT_initDStream.exit.i.i ] ; 3 uses
  %.sroa.27271.3329.i.i = phi i32 [ %i.dj, %BIT_initDStream.exit.thread320.i.i ], [ %i.dn, %BIT_initDStream.exit.i.i ] ; 2 uses
  %.sroa.61278.3328.idx.i.i = phi i64 [ 0, %BIT_initDStream.exit.thread320.i.i ], [ %.add.i.i, %BIT_initDStream.exit.i.i ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.b, align 16
  %i.dp = zext i16 %.sroa.0.0.copyload.i.i.i to i32 ; 3 uses
  %i.dq = and i32 %.sroa.27271.3329.i.i, 63
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl i64 %.sroa.0270.3330.i.i, %i.dr
  %i.dt = lshr i64 %i.ds, 1
  %i.du = and i32 %i.dp, 63
  %i.dv = xor i32 %i.du, 63
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = lshr i64 %i.dt, %i.dw                   ; 2 uses
  %i.dy = add nuw nsw i32 %.sroa.27271.3329.i.i, %i.dp ; 7 uses
  %i.dz = icmp samesign ugt i32 %i.dy, 64
  br i1 %i.dz, label %FSE_initDState.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i.i = icmp slt i64 %.sroa.61278.3328.idx.i.i, 8
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = lshr i32 %i.dy, 3
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = and i32 %i.dy, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ed = icmp eq i64 %.sroa.61278.3328.idx.i.i, 0
  br i1 %i.ed, label %FSE_initDState.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = lshr i32 %i.dy, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %.024.i.i379.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.3328.idx.i.i, i64 %i.ef) ; 2 uses
  %.024.i.i.i.i = trunc nsw i64 %.024.i.i379.i.i to i32
  %i.eg = and i64 %.024.i.i379.i.i, 4294967295
  %i.eh = shl nsw i32 %.024.i.i.i.i, 3
  %i.ei = sub nsw i32 %i.dy, %i.eh
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

BIT_reloadDStream.exit.sink.split.i.i.i:          ; preds = %bb.aa, %bb.y
  %.pn380.i.i = phi i64 [ %i.eg, %bb.aa ], [ %i.eb, %bb.y ]
  %.sroa.27271.4.i.i = phi i32 [ %i.ei, %bb.aa ], [ %i.ec, %bb.y ]
  %.sroa.61278.3328.ptr.add.i.i = sub nsw i64 %.sroa.61278.3328.idx.i.i, %.pn380.i.i ; 2 uses
  %.sroa.61278.4.ptr.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61278.3328.ptr.add.i.i
  %.val30.i.sink.i.i.i = load i64, ptr %.sroa.61278.4.ptr.i.i, align 1
  br label %FSE_initDState.exit.i.i

FSE_initDState.exit.i.i:                          ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i, %bb.z, %bb.w
  %.sroa.61278.5.idx.i.i = phi i64 [ %.sroa.61278.3328.idx.i.i, %bb.w ], [ 0, %bb.z ], [ %.sroa.61278.3328.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 5 uses
  %.sroa.27271.5.i.i = phi i32 [ %i.dy, %bb.w ], [ %i.dy, %bb.z ], [ %.sroa.27271.4.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %.sroa.0270.4.i.i = phi i64 [ %.sroa.0270.3330.i.i, %bb.w ], [ %.sroa.0270.3330.i.i, %bb.z ], [ %.val30.i.sink.i.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 6 uses
  %i.ek = and i32 %.sroa.27271.5.i.i, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl i64 %.sroa.0270.4.i.i, %i.el
  %i.en = lshr i64 %i.em, 1
  %i.eo = lshr i64 %i.en, %i.dw                   ; 2 uses
  %i.ep = add nsw i32 %.sroa.27271.5.i.i, %i.dp   ; 7 uses
  %i.eq = icmp ugt i32 %i.ep, 64
  br i1 %i.eq, label %FSE_initDState.exit44.i.i, label %bb.ab

bb.ab:                                            ; preds = %FSE_initDState.exit.i.i
  %.not.i.i39.i.i = icmp slt i64 %.sroa.61278.5.idx.i.i, 8
  br i1 %.not.i.i39.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = lshr i32 %i.ep, 3
  %i.es = zext nneg i32 %i.er to i64
  %i.et = and i32 %i.ep, 7
  br label %BIT_reloadDStream.exit.sink.split.i40.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.eu = icmp eq i64 %.sroa.61278.5.idx.i.i, 0
  br i1 %i.eu, label %.lr.ph.i.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = lshr i32 %i.ep, 3
  %i.ew = zext nneg i32 %i.ev to i64
  %.024.i.i43381.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.5.idx.i.i, i64 %i.ew) ; 2 uses
  %.024.i.i43.i.i = trunc i64 %.024.i.i43381.i.i to i32
  %i.ex = and i64 %.024.i.i43381.i.i, 4294967295
  %i.ey = shl i32 %.024.i.i43.i.i, 3
  %i.ez = sub i32 %i.ep, %i.ey
  br label %BIT_reloadDStream.exit.sink.split.i40.i.i

BIT_reloadDStream.exit.sink.split.i40.i.i:        ; preds = %bb.ae, %bb.ac
  %.pn382.i.i = phi i64 [ %i.ex, %bb.ae ], [ %i.es, %bb.ac ]
  %.sroa.27271.6.i.i = phi i32 [ %i.ez, %bb.ae ], [ %i.et, %bb.ac ]
  %.sroa.61278.5.ptr.add.i.i = sub nsw i64 %.sroa.61278.5.idx.i.i, %.pn382.i.i ; 2 uses
  %.sroa.61278.6.ptr.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61278.5.ptr.add.i.i
  %.val30.i.sink.i42.i.i = load i64, ptr %.sroa.61278.6.ptr.i.i, align 1
  br label %FSE_initDState.exit44.i.i

FSE_initDState.exit44.i.i:                        ; preds = %BIT_reloadDStream.exit.sink.split.i40.i.i, %FSE_initDState.exit.i.i
  %.sroa.61278.7.idx.i.i = phi i64 [ %.sroa.61278.5.idx.i.i, %FSE_initDState.exit.i.i ], [ %.sroa.61278.5.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i40.i.i ] ; 2 uses
  %.sroa.27271.7.i.i = phi i32 [ %i.ep, %FSE_initDState.exit.i.i ], [ %.sroa.27271.6.i.i, %BIT_reloadDStream.exit.sink.split.i40.i.i ] ; 3 uses
  %.sroa.0270.5.i.i = phi i64 [ %.sroa.0270.4.i.i, %FSE_initDState.exit.i.i ], [ %.val30.i.sink.i42.i.i, %BIT_reloadDStream.exit.sink.split.i40.i.i ]
  %i.fa = icmp ugt i32 %.sroa.27271.7.i.i, 64
  br i1 %i.fa, label %BIT_reloadDStream.exit81.split.loop.exit451.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %FSE_initDState.exit44.i.i, %bb.ad
  %.sroa.0270.0.i93.i.ph = phi i64 [ %.sroa.0270.4.i.i, %bb.ad ], [ %.sroa.0270.5.i.i, %FSE_initDState.exit44.i.i ]
  %.sroa.27271.0.i92.i.ph = phi i32 [ %i.ep, %bb.ad ], [ %.sroa.27271.7.i.i, %FSE_initDState.exit44.i.i ]
  %.sroa.61278.0.idx.i91.i.ph = phi i64 [ 0, %bb.ad ], [ %.sroa.61278.7.idx.i.i, %FSE_initDState.exit44.i.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ai
  %.036.idx.i14.i94.i = phi i64 [ %.036.add.i29.i.i, %bb.ai ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.0270.0.i93.i = phi i64 [ %.sroa.0270.6.i.i, %bb.ai ], [ %.sroa.0270.0.i93.i.ph, %.lr.ph.i.preheader ]
  %.sroa.27271.0.i92.i = phi i32 [ %i.hj, %bb.ai ], [ %.sroa.27271.0.i92.i.ph, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.61278.0.idx.i91.i = phi i64 [ %.sroa.61278.8.idx.i.i, %bb.ai ], [ %.sroa.61278.0.idx.i91.i.ph, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.0257.0.i90.i = phi i64 [ %i.hl, %bb.ai ], [ %i.eo, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.0263.0.i89.i = phi i64 [ %i.gx, %bb.ai ], [ %i.dx, %.lr.ph.i.preheader ] ; 3 uses
  %.036.ptr.ptr.i15.i95.i = getelementptr inbounds nuw i8, ptr %0, i64 %.036.idx.i14.i94.i ; 4 uses
  %.not.i45.i.i = icmp slt i64 %.sroa.61278.0.idx.i91.i, 8
  br i1 %.not.i45.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i
  %i.fb = lshr i32 %.sroa.27271.0.i92.i, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = and i32 %.sroa.27271.0.i92.i, 7
  br label %BIT_reloadDStream.exit.i.i

bb.ag:                                            ; preds = %.lr.ph.i
  %i.fe = icmp eq i64 %.sroa.61278.0.idx.i91.i, 0
  br i1 %i.fe, label %.lr.ph.i.i.preheader, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ff = lshr i32 %.sroa.27271.0.i92.i, 3
  %i.fg = zext nneg i32 %i.ff to i64              ; 2 uses
  %i.fh = icmp sge i64 %.sroa.61278.0.idx.i91.i, %i.fg
  %.024.i386.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.0.idx.i91.i, i64 %i.fg) ; 2 uses
  %.024.i.i.i = trunc i64 %.024.i386.i.i to i32
  %i.fi = and i64 %.024.i386.i.i, 4294967295
  %i.fj = shl i32 %.024.i.i.i, 3
  %i.fk = sub i32 %.sroa.27271.0.i92.i, %i.fj
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.ah, %bb.af
  %.pn.i.i = phi i64 [ %i.fi, %bb.ah ], [ %i.fc, %bb.af ]
  %.sroa.27271.8.i.i = phi i32 [ %i.fk, %bb.ah ], [ %i.fd, %bb.af ] ; 5 uses
  %.025.i.i.i = phi i1 [ %i.fh, %bb.ah ], [ true, %bb.af ]
  %.sroa.61278.8.idx.i.i = sub nsw i64 %.sroa.61278.0.idx.i91.i, %.pn.i.i ; 5 uses
  %.sroa.0270.6.in.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61278.8.idx.i.i
  %.sroa.0270.6.i.i = load i64, ptr %.sroa.0270.6.in.i.i, align 1 ; 6 uses
  %i.fl = icmp samesign ult i64 %.036.idx.i14.i94.i, 252
  %i.fm = select i1 %.025.i.i.i, i1 %i.fl, i1 false
  br i1 %i.fm, label %bb.ai, label %.preheader438.i.i

.preheader438.i.i:                                ; preds = %BIT_reloadDStream.exit.i.i
  %i.fn = icmp ugt i32 %.sroa.27271.8.i.i, 64
  br i1 %i.fn, label %BIT_reloadDStream.exit81.split.loop.exit451.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ag, %.preheader438.i.i
  %.sroa.0270.1472.i.i.ph = phi i64 [ %.sroa.0270.6.i.i, %.preheader438.i.i ], [ %.sroa.0270.0.i93.i, %bb.ag ]
  %.sroa.27271.1471.i.i.ph = phi i32 [ %.sroa.27271.8.i.i, %.preheader438.i.i ], [ %.sroa.27271.0.i92.i, %bb.ag ]
  %.sroa.61278.1.idx470.i.i.ph = phi i64 [ %.sroa.61278.8.idx.i.i, %.preheader438.i.i ], [ 0, %bb.ag ]
  br label %.lr.ph.i.i

bb.ai:                                            ; preds = %BIT_reloadDStream.exit.i.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.sroa.0263.0.i89.i ; 3 uses
  %.sroa.0.0.copyload.i49.i.i = load i16, ptr %i.fo, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 3
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !tbaa !10
  %i.fp = zext i8 %.sroa.5.0.copyload.i.i.i to i32 ; 2 uses
  %i.fq = and i32 %.sroa.27271.8.i.i, 63
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = shl i64 %.sroa.0270.6.i.i, %i.fr
  %i.ft = sub nsw i32 0, %i.fp
  %i.fu = and i32 %i.ft, 63
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = lshr i64 %i.fs, %i.fv
  %i.fx = add i32 %.sroa.27271.8.i.i, %i.fp       ; 2 uses
  %i.fy = zext i16 %.sroa.0.0.copyload.i49.i.i to i64
  store i8 %.sroa.4.0.copyload.i.i.i, ptr %.036.ptr.ptr.i15.i95.i, align 1, !tbaa !10
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.sroa.0257.0.i90.i ; 3 uses
  %.sroa.0.0.copyload.i52.i.i = load i16, ptr %i.fz, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %.sroa.4.0.copyload.i54.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i53.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i55.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 3
  %.sroa.5.0.copyload.i56.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i55.i.i, align 1, !tbaa !10
  %i.ga = zext i8 %.sroa.5.0.copyload.i56.i.i to i32 ; 2 uses
  %i.gb = and i32 %i.fx, 63
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = shl i64 %.sroa.0270.6.i.i, %i.gc
  %i.ge = sub nsw i32 0, %i.ga
  %i.gf = and i32 %i.ge, 63
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = lshr i64 %i.gd, %i.gg
  %i.gi = add i32 %i.fx, %i.ga                    ; 2 uses
  %i.gj = zext i16 %.sroa.0.0.copyload.i52.i.i to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i15.i95.i, i64 1
  store i8 %.sroa.4.0.copyload.i54.i.i, ptr %i.gk, align 1, !tbaa !10
  %i.gl = getelementptr [4 x i8], ptr %i.ej, i64 %i.fw
  %i.gm = getelementptr [4 x i8], ptr %i.gl, i64 %i.fy ; 3 uses
  %.sroa.0.0.copyload.i59.i.i = load i16, ptr %i.gm, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i60.i.i = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %.sroa.4.0.copyload.i61.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i60.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i62.i.i = getelementptr inbounds nuw i8, ptr %i.gm, i64 3
  %.sroa.5.0.copyload.i63.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i62.i.i, align 1, !tbaa !10
  %i.gn = zext i8 %.sroa.5.0.copyload.i63.i.i to i32 ; 2 uses
  %i.go = and i32 %i.gi, 63
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl i64 %.sroa.0270.6.i.i, %i.gp
  %i.gr = sub nsw i32 0, %i.gn
  %i.gs = and i32 %i.gr, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = lshr i64 %i.gq, %i.gt
  %i.gv = add i32 %i.gi, %i.gn                    ; 2 uses
  %i.gw = zext i16 %.sroa.0.0.copyload.i59.i.i to i64
  %i.gx = add i64 %i.gu, %i.gw                    ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i15.i95.i, i64 2
  store i8 %.sroa.4.0.copyload.i61.i.i, ptr %i.gy, align 1, !tbaa !10
  %i.gz = getelementptr [4 x i8], ptr %i.ej, i64 %i.gh
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gj ; 3 uses
  %.sroa.0.0.copyload.i66.i.i = load i16, ptr %i.ha, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i67.i.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %.sroa.4.0.copyload.i68.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i67.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i69.i.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3
  %.sroa.5.0.copyload.i70.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i69.i.i, align 1, !tbaa !10
  %i.hb = zext i8 %.sroa.5.0.copyload.i70.i.i to i32 ; 2 uses
  %i.hc = and i32 %i.gv, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl i64 %.sroa.0270.6.i.i, %i.hd
  %i.hf = sub nsw i32 0, %i.hb
  %i.hg = and i32 %i.hf, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = lshr i64 %i.he, %i.hh
  %i.hj = add i32 %i.gv, %i.hb                    ; 3 uses
  %i.hk = zext i16 %.sroa.0.0.copyload.i66.i.i to i64
  %i.hl = add i64 %i.hi, %i.hk                    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i15.i95.i, i64 3
  store i8 %.sroa.4.0.copyload.i68.i.i, ptr %i.hm, align 1, !tbaa !10
  %.036.add.i29.i.i = add nuw nsw i64 %.036.idx.i14.i94.i, 4 ; 2 uses
  %i.hn = icmp ugt i32 %i.hj, 64
  br i1 %i.hn, label %BIT_reloadDStream.exit81.split.loop.exit451.i.i, label %.lr.ph.i, !llvm.loop !119

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %BIT_endOfDStream.exit98.thread.i.i
  %.1.idx.i16473.i.i = phi i64 [ %.add.i28.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.036.idx.i14.i94.i, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.0270.1472.i.i = phi i64 [ %.sroa.0270.8.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.0270.1472.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.27271.1471.i.i = phi i32 [ %i.jg, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.27271.1471.i.i.ph, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.61278.1.idx470.i.i = phi i64 [ %.sroa.61278.10.idx.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.61278.1.idx470.i.i.ph, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.0257.1469.i.i = phi i64 [ %i.ji, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.0257.0.i90.i, %.lr.ph.i.i.preheader ] ; 5 uses
  %.sroa.0263.1468.i.i = phi i64 [ %i.il, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.0263.0.i89.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.1.ptr.ptr.i17474.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i16473.i.i
  %.not.i73.i.i = icmp slt i64 %.sroa.61278.1.idx470.i.i, 8
  br i1 %.not.i73.i.i, label %bb.aj, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.ho = lshr i32 %.sroa.27271.1471.i.i, 3
  %i.hp = zext nneg i32 %i.ho to i64
  %.sroa.61278.1.add388.i.i = sub nuw nsw i64 %.sroa.61278.1.idx470.i.i, %i.hp ; 3 uses
  %.ptr392.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.61278.1.add388.i.i
  %i.hq = and i32 %.sroa.27271.1471.i.i, 7
  %.val30.i74.i.i = load i64, ptr %.ptr392.i.i, align 1
  %i.hr = icmp eq i64 %.sroa.61278.1.add388.i.i, 0
  br label %BIT_endOfDStream.exit.thread.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.hs = icmp eq i64 %.sroa.61278.1.idx470.i.i, 0
  br i1 %i.hs, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ht = lshr i32 %.sroa.27271.1471.i.i, 3
  %i.hu = zext nneg i32 %i.ht to i64
  %.024.i76393.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.1.idx470.i.i, i64 %i.hu) ; 2 uses
  %.024.i76.i.i = trunc i64 %.024.i76393.i.i to i32
  %i.hv = and i64 %.024.i76393.i.i, 4294967295
  %.sroa.61278.1.add.i.i = sub nsw i64 %.sroa.61278.1.idx470.i.i, %i.hv ; 2 uses
  %.ptr391.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61278.1.add.i.i
  %i.hw = shl i32 %.024.i76.i.i, 3
  %i.hx = sub i32 %.sroa.27271.1471.i.i, %i.hw
  %.val.i78.i.i = load i64, ptr %.ptr391.i.i, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.61278.9.ph.idx.i.i = phi i64 [ 0, %bb.aj ], [ %.sroa.61278.1.add.i.i, %bb.ak ] ; 2 uses
  %.sroa.27271.9.ph.i.i = phi i32 [ %.sroa.27271.1471.i.i, %bb.aj ], [ %i.hx, %bb.ak ] ; 2 uses
  %.sroa.0270.7.ph.i.i = phi i64 [ %.sroa.0270.1472.i.i, %bb.aj ], [ %.val.i78.i.i, %bb.ak ]
  %i.hy = icmp eq i64 %.sroa.61278.9.ph.idx.i.i, 0 ; 2 uses
  %.not394.i.i = icmp eq i32 %.sroa.27271.9.ph.i.i, 64
  %or.cond.i.i = and i1 %i.hy, %.not394.i.i
  br i1 %or.cond.i.i, label %BIT_reloadDStream.exit81.i.i, label %BIT_endOfDStream.exit.thread.i.i

BIT_endOfDStream.exit.thread.i.i:                 ; preds = %bb.al, %.thread.i.i
  %i.hz = phi i1 [ %i.hr, %.thread.i.i ], [ %i.hy, %bb.al ]
  %.sroa.0270.7.ph630.i.i = phi i64 [ %.val30.i74.i.i, %.thread.i.i ], [ %.sroa.0270.7.ph.i.i, %bb.al ] ; 2 uses
  %.sroa.27271.9.ph629.i.i = phi i32 [ %i.hq, %.thread.i.i ], [ %.sroa.27271.9.ph.i.i, %bb.al ] ; 2 uses
  %.sroa.61278.9.ph.idx628.i.i = phi i64 [ %.sroa.61278.1.add388.i.i, %.thread.i.i ], [ %.sroa.61278.9.ph.idx.i.i, %bb.al ] ; 5 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.sroa.0263.1468.i.i ; 3 uses
  %.sroa.0.0.copyload.i82.i.i = load i16, ptr %i.ia, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i83.i.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %.sroa.4.0.copyload.i84.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i83.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i85.i.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 3
  %.sroa.5.0.copyload.i86.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i85.i.i, align 1, !tbaa !10
  %i.ib = zext i8 %.sroa.5.0.copyload.i86.i.i to i32 ; 2 uses
  %i.ic = and i32 %.sroa.27271.9.ph629.i.i, 63
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = shl i64 %.sroa.0270.7.ph630.i.i, %i.id
  %i.if = sub nsw i32 0, %i.ib
  %i.ig = and i32 %i.if, 63
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = lshr i64 %i.ie, %i.ih
  %i.ij = add i32 %.sroa.27271.9.ph629.i.i, %i.ib ; 7 uses
  %i.ik = zext i16 %.sroa.0.0.copyload.i82.i.i to i64
  %i.il = add i64 %i.ii, %i.ik                    ; 5 uses
  %.add51.i24.i.i = or disjoint i64 %.1.idx.i16473.i.i, 1 ; 3 uses
  %.ptr.ptr.i25.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i24.i.i
  store i8 %.sroa.4.0.copyload.i84.i.i, ptr %.1.ptr.ptr.i17474.i.i, align 1, !tbaa !10
  %i.im = icmp ugt i32 %i.ij, 64
  br i1 %i.im, label %BIT_reloadDStream.exit81.split.loop.exit445.i.i, label %bb.am

bb.am:                                            ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.not.i89.i.i = icmp slt i64 %.sroa.61278.9.ph.idx628.i.i, 8
  br i1 %.not.i89.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.in = lshr i32 %i.ij, 3
  %i.io = zext nneg i32 %i.in to i64
  %.sroa.61278.9.ph.add387.i.i = sub nuw nsw i64 %.sroa.61278.9.ph.idx628.i.i, %i.io ; 2 uses
  %.ptr390.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.61278.9.ph.add387.i.i
  %i.ip = and i32 %i.ij, 7
  %.val30.i90.i.i = load i64, ptr %.ptr390.i.i, align 1
  br label %BIT_reloadDStream.exit97.i.i

bb.ao:                                            ; preds = %bb.am
  br i1 %i.hz, label %BIT_reloadDStream.exit97.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iq = lshr i32 %i.ij, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %.024.i92395.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61278.9.ph.idx628.i.i, i64 %i.ir) ; 2 uses
  %.024.i92.i.i = trunc i64 %.024.i92395.i.i to i32
  %i.is = and i64 %.024.i92395.i.i, 4294967295
  %.sroa.61278.9.ph.add.i.i = sub nsw i64 %.sroa.61278.9.ph.idx628.i.i, %i.is ; 2 uses
  %.ptr389.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61278.9.ph.add.i.i
  %i.it = shl i32 %.024.i92.i.i, 3
  %i.iu = sub i32 %i.ij, %i.it
  %.val.i94.i.i = load i64, ptr %.ptr389.i.i, align 1
  br label %BIT_reloadDStream.exit97.i.i

BIT_reloadDStream.exit97.i.i:                     ; preds = %bb.ap, %bb.ao, %bb.an
  %.sroa.61278.10.idx.i.i = phi i64 [ %.sroa.61278.9.ph.add387.i.i, %bb.an ], [ %.sroa.61278.9.ph.add.i.i, %bb.ap ], [ 0, %bb.ao ] ; 4 uses
  %.sroa.27271.10.i.i = phi i32 [ %i.ip, %bb.an ], [ %i.iu, %bb.ap ], [ %i.ij, %bb.ao ] ; 4 uses
  %.sroa.0270.8.i.i = phi i64 [ %.val30.i90.i.i, %bb.an ], [ %.val.i94.i.i, %bb.ap ], [ %.sroa.0270.7.ph630.i.i, %bb.ao ] ; 2 uses
  %i.iv = icmp eq i64 %.1.idx.i16473.i.i, 254
  br i1 %i.iv, label %BIT_reloadDStream.exit81.split.loop.exit457.i.i, label %bb.aq

bb.aq:                                            ; preds = %BIT_reloadDStream.exit97.i.i
  %i.iw = icmp eq i64 %.sroa.61278.10.idx.i.i, 0
  %.not396.i.i = icmp eq i32 %.sroa.27271.10.i.i, 64
  %or.cond426.i.i = and i1 %i.iw, %.not396.i.i
  br i1 %or.cond426.i.i, label %BIT_reloadDStream.exit81.i.i, label %BIT_endOfDStream.exit98.thread.i.i

BIT_endOfDStream.exit98.thread.i.i:               ; preds = %bb.aq
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.sroa.0257.1469.i.i ; 3 uses
  %.sroa.0.0.copyload.i99.i.i = load i16, ptr %i.ix, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i100.i.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  %.sroa.4.0.copyload.i101.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i100.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i102.i.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 3
  %.sroa.5.0.copyload.i103.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i102.i.i, align 1, !tbaa !10
  %i.iy = zext i8 %.sroa.5.0.copyload.i103.i.i to i32 ; 2 uses
  %i.iz = and i32 %.sroa.27271.10.i.i, 63
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl i64 %.sroa.0270.8.i.i, %i.ja
  %i.jc = sub nsw i32 0, %i.iy
  %i.jd = and i32 %i.jc, 63
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = lshr i64 %i.jb, %i.je
  %i.jg = add i32 %.sroa.27271.10.i.i, %i.iy      ; 3 uses
  %i.jh = zext i16 %.sroa.0.0.copyload.i99.i.i to i64
  %i.ji = add i64 %i.jf, %i.jh                    ; 2 uses
  %.add.i28.i.i = add nuw nsw i64 %.1.idx.i16473.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i101.i.i, ptr %.ptr.ptr.i25.i.i, align 1, !tbaa !10
  %i.jj = icmp ugt i32 %i.jg, 64
  br i1 %i.jj, label %BIT_reloadDStream.exit81.split.loop.exit451.i.i, label %.lr.ph.i.i

BIT_reloadDStream.exit81.split.loop.exit445.i.i:  ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.sroa.61278.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61278.9.ph.idx628.i.i
  br label %BIT_reloadDStream.exit81.i.i

BIT_reloadDStream.exit81.split.loop.exit451.i.i:  ; preds = %bb.ai, %BIT_endOfDStream.exit98.thread.i.i, %.preheader438.i.i, %FSE_initDState.exit44.i.i
  %.sroa.61278.1.idx.lcssa.i.i = phi i64 [ %.sroa.61278.8.idx.i.i, %.preheader438.i.i ], [ %.sroa.61278.10.idx.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.61278.7.idx.i.i, %FSE_initDState.exit44.i.i ], [ %.sroa.61278.8.idx.i.i, %bb.ai ]
  %.sroa.0257.1.lcssa.ph452.i.i = phi i64 [ %.sroa.0257.0.i90.i, %.preheader438.i.i ], [ %i.ji, %BIT_endOfDStream.exit98.thread.i.i ], [ %i.eo, %FSE_initDState.exit44.i.i ], [ %i.hl, %bb.ai ]
  %.sroa.0263.2.ph453.i.i = phi i64 [ %.sroa.0263.0.i89.i, %.preheader438.i.i ], [ %i.il, %BIT_endOfDStream.exit98.thread.i.i ], [ %i.dx, %FSE_initDState.exit44.i.i ], [ %i.gx, %bb.ai ]
  %.sroa.27271.2.ph455.i.i = phi i32 [ %.sroa.27271.8.i.i, %.preheader438.i.i ], [ %i.jg, %BIT_endOfDStream.exit98.thread.i.i ], [ %.sroa.27271.7.i.i, %FSE_initDState.exit44.i.i ], [ %i.hj, %bb.ai ]
  %.2.idx.i19.ph456.i.i = phi i64 [ %.036.idx.i14.i94.i, %.preheader438.i.i ], [ %.add.i28.i.i, %BIT_endOfDStream.exit98.thread.i.i ], [ 0, %FSE_initDState.exit44.i.i ], [ %.036.add.i29.i.i, %bb.ai ]
  %.sroa.61278.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61278.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit81.i.i

BIT_reloadDStream.exit81.split.loop.exit457.i.i:  ; preds = %BIT_reloadDStream.exit97.i.i
  %.sroa.61278.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61278.10.idx.i.i
  br label %BIT_reloadDStream.exit81.i.i

BIT_reloadDStream.exit81.i.i:                     ; preds = %bb.aq, %bb.al, %BIT_reloadDStream.exit81.split.loop.exit457.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i
  %.sroa.0257.1.lcssa.i.i = phi i64 [ %.sroa.0257.1.lcssa.ph452.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %.sroa.0257.1469.i.i, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %.sroa.0257.1469.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %.sroa.0257.1469.i.i, %bb.al ], [ %.sroa.0257.1469.i.i, %bb.aq ]
  %.sroa.0263.2.i.i = phi i64 [ %.sroa.0263.2.ph453.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %i.il, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %i.il, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %i.il, %bb.aq ], [ %.sroa.0263.1468.i.i, %bb.al ]
  %.sroa.61278.2.i.i = phi ptr [ %.sroa.61278.1.ptr.le.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %.sroa.61278.10.ptr.le.i.i, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %.sroa.61278.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %i.bk, %bb.al ], [ %i.bk, %bb.aq ]
  %.sroa.27271.2.i.i = phi i32 [ %.sroa.27271.2.ph455.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ %.sroa.27271.10.i.i, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %i.ij, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ 64, %bb.al ], [ 64, %bb.aq ]
  %.2.idx.i19.i.i = phi i64 [ %.2.idx.i19.ph456.i.i, %BIT_reloadDStream.exit81.split.loop.exit451.i.i ], [ 255, %BIT_reloadDStream.exit81.split.loop.exit457.i.i ], [ %.add51.i24.i.i, %BIT_reloadDStream.exit81.split.loop.exit445.i.i ], [ %.add51.i24.i.i, %bb.aq ], [ %.1.idx.i16473.i.i, %bb.al ] ; 2 uses
  %i.jk = icmp eq ptr %.sroa.61278.2.i.i, %i.bk
  %.not397.i.i = icmp eq i32 %.sroa.27271.2.i.i, 64
  %or.cond427.i.i = and i1 %i.jk, %.not397.i.i
  %.not398.i.i = icmp eq i64 %.sroa.0263.2.i.i, 0
  %or.cond428.i.i = select i1 %or.cond427.i.i, i1 %.not398.i.i, i1 false
  %.not399.i.i = icmp eq i64 %.sroa.0257.1.lcssa.i.i, 0
  %or.cond429.i.i = select i1 %or.cond428.i.i, i1 %.not399.i.i, i1 false
  br i1 %or.cond429.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit106.thread.i.i

BIT_endOfDStream.exit106.thread.i.i:              ; preds = %BIT_reloadDStream.exit81.i.i
  %i.jl = icmp eq i64 %.2.idx.i19.i.i, 255
  %..i23.i.i = select i1 %i.jl, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

bb.ar:                                            ; preds = %bb.k
  br i1 %i.bl, label %FSE_decompress.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jm = icmp ugt i64 %i.bj, 7
  br i1 %i.jm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.ptr401.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.f
  %i.jn = getelementptr i8, ptr %.ptr401.i.i, i64 -1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !10  ; 2 uses
  %i.jp = icmp eq i8 %i.jo, 0
  br i1 %i.jp, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit111.i.i

bb.au:                                            ; preds = %bb.as
  %i.jq = load i8, ptr %i.bk, align 1, !tbaa !10
  %i.jr = zext i8 %i.jq to i64                    ; 7 uses
  switch i64 %i.bj, label %bb.bb [
    i64 7, label %bb.av
    i64 6, label %bb.aw
    i64 5, label %bb.ax
    i64 4, label %bb.ay
end_hunk_0
begin_hunk_1_@HUF_readStats:bb.a
  %.pn404.i.i = phi i64 [ %i.mg, %bb.bg ], [ %i.mb, %bb.be ]
  %.sroa.61222.3361.ptr.add.i.i = sub nsw i64 %.sroa.61222.3361.idx.i.i, %.pn404.i.i ; 2 uses
  %.sroa.61222.4.ptr.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61222.3361.ptr.add.i.i
  %.val30.i.sink.i118.i.i = load i64, ptr %.sroa.61222.4.ptr.i.i, align 1
  br label %FSE_initDState.exit120.i.i

FSE_initDState.exit120.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i116.i.i, %bb.bf, %bb.bc
  %.sroa.0216.4.i.i = phi i64 [ %.sroa.0216.3359.i.i, %bb.bc ], [ %.sroa.0216.3359.i.i, %bb.bf ], [ %.val30.i.sink.i118.i.i, %BIT_reloadDStream.exit.sink.split.i116.i.i ] ; 3 uses
  %.sroa.27.5.i.i = phi i32 [ %i.ly, %bb.bc ], [ %i.ly, %bb.bf ], [ %.sroa.27.4.i.i, %BIT_reloadDStream.exit.sink.split.i116.i.i ] ; 2 uses
  %.sroa.61222.5.idx.i.i = phi i64 [ %.sroa.61222.3361.idx.i.i, %bb.bc ], [ 0, %bb.bf ], [ %.sroa.61222.3361.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i116.i.i ] ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 6 uses
  %i.mk = and i32 %.sroa.27.5.i.i, 63
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = shl i64 %.sroa.0216.4.i.i, %i.ml
  %i.mn = lshr i64 %i.mm, 1
  %i.mo = lshr i64 %i.mn, %i.lw                   ; 2 uses
  %i.mp = add nsw i32 %.sroa.27.5.i.i, %i.lp      ; 7 uses
  %i.mq = icmp ugt i32 %i.mp, 64
  br i1 %i.mq, label %FSE_initDState.exit129.i.i, label %bb.bh

bb.bh:                                            ; preds = %FSE_initDState.exit120.i.i
  %.not.i.i124.i.i = icmp slt i64 %.sroa.61222.5.idx.i.i, 8
  br i1 %.not.i.i124.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mr = lshr i32 %i.mp, 3
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = and i32 %i.mp, 7
  br label %BIT_reloadDStream.exit.sink.split.i125.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.mu = icmp eq i64 %.sroa.61222.5.idx.i.i, 0
  br i1 %i.mu, label %.lr.ph107.i.preheader, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mv = lshr i32 %i.mp, 3
  %i.mw = zext nneg i32 %i.mv to i64
  %.024.i.i128405.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.5.idx.i.i, i64 %i.mw) ; 2 uses
  %.024.i.i128.i.i = trunc i64 %.024.i.i128405.i.i to i32
  %i.mx = and i64 %.024.i.i128405.i.i, 4294967295
  %i.my = shl i32 %.024.i.i128.i.i, 3
  %i.mz = sub i32 %i.mp, %i.my
  br label %BIT_reloadDStream.exit.sink.split.i125.i.i

BIT_reloadDStream.exit.sink.split.i125.i.i:       ; preds = %bb.bk, %bb.bi
  %.sroa.27.6.i.i = phi i32 [ %i.mz, %bb.bk ], [ %i.mt, %bb.bi ]
  %.pn406.i.i = phi i64 [ %i.mx, %bb.bk ], [ %i.ms, %bb.bi ]
  %.sroa.61222.5.ptr.add.i.i = sub nsw i64 %.sroa.61222.5.idx.i.i, %.pn406.i.i ; 2 uses
  %.sroa.61222.6.ptr.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61222.5.ptr.add.i.i
  %.val30.i.sink.i127.i.i = load i64, ptr %.sroa.61222.6.ptr.i.i, align 1
  br label %FSE_initDState.exit129.i.i

FSE_initDState.exit129.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i125.i.i, %FSE_initDState.exit120.i.i
  %.sroa.0216.5.i.i = phi i64 [ %.sroa.0216.4.i.i, %FSE_initDState.exit120.i.i ], [ %.val30.i.sink.i127.i.i, %BIT_reloadDStream.exit.sink.split.i125.i.i ]
  %.sroa.27.7.i.i = phi i32 [ %i.mp, %FSE_initDState.exit120.i.i ], [ %.sroa.27.6.i.i, %BIT_reloadDStream.exit.sink.split.i125.i.i ] ; 3 uses
  %.sroa.61222.7.idx.i.i = phi i64 [ %.sroa.61222.5.idx.i.i, %FSE_initDState.exit120.i.i ], [ %.sroa.61222.5.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i125.i.i ] ; 2 uses
  %i.na = icmp ugt i32 %.sroa.27.7.i.i, 64
  br i1 %i.na, label %BIT_reloadDStream.exit175.split.loop.exit491.i.i, label %.lr.ph107.i.preheader

.lr.ph107.i.preheader:                            ; preds = %FSE_initDState.exit129.i.i, %bb.bj
  %.sroa.61222.0.idx.i102.i.ph = phi i64 [ 0, %bb.bj ], [ %.sroa.61222.7.idx.i.i, %FSE_initDState.exit129.i.i ]
  %.sroa.27.0.i101.i.ph = phi i32 [ %i.mp, %bb.bj ], [ %.sroa.27.7.i.i, %FSE_initDState.exit129.i.i ]
  %.sroa.0216.0.i100.i.ph = phi i64 [ %.sroa.0216.4.i.i, %bb.bj ], [ %.sroa.0216.5.i.i, %FSE_initDState.exit129.i.i ]
  br label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.lr.ph107.i.preheader, %bb.bo
  %.036.idx.i.i105.i = phi i64 [ %.036.add.i.i.i, %bb.bo ], [ 0, %.lr.ph107.i.preheader ] ; 5 uses
  %.sroa.0.0.i104.i = phi i64 [ %i.pp, %bb.bo ], [ %i.mo, %.lr.ph107.i.preheader ] ; 3 uses
  %.sroa.0208.0.i103.i = phi i64 [ %i.pa, %bb.bo ], [ %i.lx, %.lr.ph107.i.preheader ] ; 3 uses
  %.sroa.61222.0.idx.i102.i = phi i64 [ %.sroa.61222.8.idx.i.i, %bb.bo ], [ %.sroa.61222.0.idx.i102.i.ph, %.lr.ph107.i.preheader ] ; 5 uses
  %.sroa.27.0.i101.i = phi i32 [ %i.pn, %bb.bo ], [ %.sroa.27.0.i101.i.ph, %.lr.ph107.i.preheader ] ; 5 uses
  %.sroa.0216.0.i100.i = phi i64 [ %.sroa.0216.6.i.i, %bb.bo ], [ %.sroa.0216.0.i100.i.ph, %.lr.ph107.i.preheader ]
  %.036.ptr.ptr.i.i106.i = getelementptr inbounds nuw i8, ptr %0, i64 %.036.idx.i.i105.i ; 4 uses
  %.not.i130.i.i = icmp slt i64 %.sroa.61222.0.idx.i102.i, 8
  br i1 %.not.i130.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph107.i
  %i.nb = lshr i32 %.sroa.27.0.i101.i, 3
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = and i32 %.sroa.27.0.i101.i, 7
  br label %BIT_reloadDStream.exit138.i.i

bb.bm:                                            ; preds = %.lr.ph107.i
  %i.ne = icmp eq i64 %.sroa.61222.0.idx.i102.i, 0
  br i1 %i.ne, label %.lr.ph515.i.i.preheader, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nf = lshr i32 %.sroa.27.0.i101.i, 3
  %i.ng = zext nneg i32 %i.nf to i64              ; 2 uses
  %i.nh = icmp sge i64 %.sroa.61222.0.idx.i102.i, %i.ng
  %.024.i133410.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.0.idx.i102.i, i64 %i.ng) ; 2 uses
  %.024.i133.i.i = trunc i64 %.024.i133410.i.i to i32
  %i.ni = and i64 %.024.i133410.i.i, 4294967295
  %i.nj = shl i32 %.024.i133.i.i, 3
  %i.nk = sub i32 %.sroa.27.0.i101.i, %i.nj
  br label %BIT_reloadDStream.exit138.i.i

BIT_reloadDStream.exit138.i.i:                    ; preds = %bb.bn, %bb.bl
  %.sroa.27.8.i.i = phi i32 [ %i.nk, %bb.bn ], [ %i.nd, %bb.bl ] ; 5 uses
  %.pn734.i.i = phi i64 [ %i.ni, %bb.bn ], [ %i.nc, %bb.bl ]
  %.025.i132.i.i = phi i1 [ %i.nh, %bb.bn ], [ true, %bb.bl ]
  %.sroa.61222.8.idx.i.i = sub nsw i64 %.sroa.61222.0.idx.i102.i, %.pn734.i.i ; 5 uses
  %.sroa.0216.6.in.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61222.8.idx.i.i
  %.sroa.0216.6.i.i = load i64, ptr %.sroa.0216.6.in.i.i, align 1 ; 6 uses
  %i.nl = icmp samesign ult i64 %.036.idx.i.i105.i, 252
  %i.nm = select i1 %.025.i132.i.i, i1 %i.nl, i1 false
  br i1 %i.nm, label %bb.bo, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %BIT_reloadDStream.exit138.i.i
  %i.nn = icmp ugt i32 %.sroa.27.8.i.i, 64
  br i1 %i.nn, label %BIT_reloadDStream.exit175.split.loop.exit491.i.i, label %.lr.ph515.i.i.preheader

.lr.ph515.i.i.preheader:                          ; preds = %bb.bm, %.preheader.i.i
  %.sroa.61222.1.idx510.i.i.ph = phi i64 [ %.sroa.61222.8.idx.i.i, %.preheader.i.i ], [ 0, %bb.bm ]
  %.sroa.27.1509.i.i.ph = phi i32 [ %.sroa.27.8.i.i, %.preheader.i.i ], [ %.sroa.27.0.i101.i, %bb.bm ]
  %.sroa.0216.1508.i.i.ph = phi i64 [ %.sroa.0216.6.i.i, %.preheader.i.i ], [ %.sroa.0216.0.i100.i, %bb.bm ]
  br label %.lr.ph515.i.i

bb.bo:                                            ; preds = %BIT_reloadDStream.exit138.i.i
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %.sroa.0208.0.i103.i ; 3 uses
  %.sroa.0.0.copyload.i139.i.i = load i16, ptr %i.no, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i140.i.i = getelementptr inbounds nuw i8, ptr %i.no, i64 2
  %.sroa.4.0.copyload.i141.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i140.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i142.i.i = getelementptr inbounds nuw i8, ptr %i.no, i64 3
  %.sroa.5.0.copyload.i143.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i142.i.i, align 1, !tbaa !10
  %i.np = zext i8 %.sroa.5.0.copyload.i143.i.i to i32 ; 2 uses
  %i.nq = and i32 %.sroa.27.8.i.i, 63
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = shl i64 %.sroa.0216.6.i.i, %i.nr
  %i.nt = lshr i64 %i.ns, 1
  %i.nu = and i32 %i.np, 63
  %i.nv = xor i32 %i.nu, 63
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = lshr i64 %i.nt, %i.nw
  %i.ny = add i32 %.sroa.27.8.i.i, %i.np          ; 2 uses
  %i.nz = zext i16 %.sroa.0.0.copyload.i139.i.i to i64
  store i8 %.sroa.4.0.copyload.i141.i.i, ptr %.036.ptr.ptr.i.i106.i, align 1, !tbaa !10
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %.sroa.0.0.i104.i ; 3 uses
  %.sroa.0.0.copyload.i146.i.i = load i16, ptr %i.oa, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i147.i.i = getelementptr inbounds nuw i8, ptr %i.oa, i64 2
  %.sroa.4.0.copyload.i148.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i147.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i149.i.i = getelementptr inbounds nuw i8, ptr %i.oa, i64 3
  %.sroa.5.0.copyload.i150.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i149.i.i, align 1, !tbaa !10
  %i.ob = zext i8 %.sroa.5.0.copyload.i150.i.i to i32 ; 2 uses
  %i.oc = and i32 %i.ny, 63
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = shl i64 %.sroa.0216.6.i.i, %i.od
  %i.of = lshr i64 %i.oe, 1
  %i.og = and i32 %i.ob, 63
  %i.oh = xor i32 %i.og, 63
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = lshr i64 %i.of, %i.oi
  %i.ok = add i32 %i.ny, %i.ob                    ; 2 uses
  %i.ol = zext i16 %.sroa.0.0.copyload.i146.i.i to i64
  %i.om = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i106.i, i64 1
  store i8 %.sroa.4.0.copyload.i148.i.i, ptr %i.om, align 1, !tbaa !10
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.nx
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.nz ; 3 uses
  %.sroa.0.0.copyload.i153.i.i = load i16, ptr %i.oo, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i154.i.i = getelementptr inbounds nuw i8, ptr %i.oo, i64 2
  %.sroa.4.0.copyload.i155.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i154.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i156.i.i = getelementptr inbounds nuw i8, ptr %i.oo, i64 3
  %.sroa.5.0.copyload.i157.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i156.i.i, align 1, !tbaa !10
  %i.op = zext i8 %.sroa.5.0.copyload.i157.i.i to i32 ; 2 uses
  %i.oq = and i32 %i.ok, 63
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = shl i64 %.sroa.0216.6.i.i, %i.or
  %i.ot = lshr i64 %i.os, 1
  %i.ou = and i32 %i.op, 63
  %i.ov = xor i32 %i.ou, 63
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = lshr i64 %i.ot, %i.ow
  %i.oy = add i32 %i.ok, %i.op                    ; 2 uses
  %i.oz = zext i16 %.sroa.0.0.copyload.i153.i.i to i64
  %i.pa = add nuw i64 %i.ox, %i.oz                ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i106.i, i64 2
  store i8 %.sroa.4.0.copyload.i155.i.i, ptr %i.pb, align 1, !tbaa !10
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.oj
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.ol ; 3 uses
  %.sroa.0.0.copyload.i160.i.i = load i16, ptr %i.pd, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i161.i.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  %.sroa.4.0.copyload.i162.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i161.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i163.i.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 3
  %.sroa.5.0.copyload.i164.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i163.i.i, align 1, !tbaa !10
  %i.pe = zext i8 %.sroa.5.0.copyload.i164.i.i to i32 ; 2 uses
  %i.pf = and i32 %i.oy, 63
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl i64 %.sroa.0216.6.i.i, %i.pg
  %i.pi = lshr i64 %i.ph, 1
  %i.pj = and i32 %i.pe, 63
  %i.pk = xor i32 %i.pj, 63
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = lshr i64 %i.pi, %i.pl
  %i.pn = add i32 %i.oy, %i.pe                    ; 3 uses
  %i.po = zext i16 %.sroa.0.0.copyload.i160.i.i to i64
  %i.pp = add nuw i64 %i.pm, %i.po                ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i106.i, i64 3
  store i8 %.sroa.4.0.copyload.i162.i.i, ptr %i.pq, align 1, !tbaa !10
  %.036.add.i.i.i = add nuw nsw i64 %.036.idx.i.i105.i, 4 ; 2 uses
  %i.pr = icmp ugt i32 %i.pn, 64
  br i1 %i.pr, label %BIT_reloadDStream.exit175.split.loop.exit491.i.i, label %.lr.ph107.i, !llvm.loop !119

.lr.ph515.i.i:                                    ; preds = %.lr.ph515.i.i.preheader, %BIT_endOfDStream.exit193.thread.i.i
  %.1.idx.i513.i.i = phi i64 [ %.add.i.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.036.idx.i.i105.i, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.0.1512.i.i = phi i64 [ %i.ro, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.0.0.i104.i, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.0208.1511.i.i = phi i64 [ %i.qq, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.0208.0.i103.i, %.lr.ph515.i.i.preheader ] ; 2 uses
  %.sroa.61222.1.idx510.i.i = phi i64 [ %.sroa.61222.10.idx.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.61222.1.idx510.i.i.ph, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.27.1509.i.i = phi i32 [ %i.rm, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.27.1509.i.i.ph, %.lr.ph515.i.i.preheader ] ; 5 uses
  %.sroa.0216.1508.i.i = phi i64 [ %.sroa.0216.8.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.0216.1508.i.i.ph, %.lr.ph515.i.i.preheader ]
  %.1.ptr.ptr.i514.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i513.i.i
  %.not.i167.i.i = icmp slt i64 %.sroa.61222.1.idx510.i.i, 8
  br i1 %.not.i167.i.i, label %bb.bp, label %.thread638.i.i

.thread638.i.i:                                   ; preds = %.lr.ph515.i.i
  %i.ps = lshr i32 %.sroa.27.1509.i.i, 3
  %i.pt = zext nneg i32 %i.ps to i64
  %.sroa.61222.1.add412.i.i = sub nuw nsw i64 %.sroa.61222.1.idx510.i.i, %i.pt ; 3 uses
  %.ptr416.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.61222.1.add412.i.i
  %i.pu = and i32 %.sroa.27.1509.i.i, 7
  %.val30.i168.i.i = load i64, ptr %.ptr416.i.i, align 1
  %i.pv = icmp eq i64 %.sroa.61222.1.add412.i.i, 0
  br label %BIT_endOfDStream.exit176.thread.i.i

bb.bp:                                            ; preds = %.lr.ph515.i.i
  %i.pw = icmp eq i64 %.sroa.61222.1.idx510.i.i, 0
  br i1 %i.pw, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.px = lshr i32 %.sroa.27.1509.i.i, 3
  %i.py = zext nneg i32 %i.px to i64
  %.024.i170417.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.1.idx510.i.i, i64 %i.py) ; 2 uses
  %.024.i170.i.i = trunc i64 %.024.i170417.i.i to i32
  %i.pz = and i64 %.024.i170417.i.i, 4294967295
  %.sroa.61222.1.add.i.i = sub nsw i64 %.sroa.61222.1.idx510.i.i, %i.pz ; 2 uses
  %.ptr415.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61222.1.add.i.i
  %i.qa = shl i32 %.024.i170.i.i, 3
  %i.qb = sub i32 %.sroa.27.1509.i.i, %i.qa
  %.val.i172.i.i = load i64, ptr %.ptr415.i.i, align 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.0216.7.ph.i.i = phi i64 [ %.sroa.0216.1508.i.i, %bb.bp ], [ %.val.i172.i.i, %bb.bq ]
  %.sroa.27.9.ph.i.i = phi i32 [ %.sroa.27.1509.i.i, %bb.bp ], [ %i.qb, %bb.bq ] ; 2 uses
  %.sroa.61222.9.ph.idx.i.i = phi i64 [ 0, %bb.bp ], [ %.sroa.61222.1.add.i.i, %bb.bq ] ; 2 uses
  %i.qc = icmp eq i64 %.sroa.61222.9.ph.idx.i.i, 0 ; 2 uses
  %.not418.i.i = icmp eq i32 %.sroa.27.9.ph.i.i, 64
  %or.cond430.i.i = and i1 %.not418.i.i, %i.qc
  %.not419.i.i = icmp eq i64 %.sroa.0208.1511.i.i, 0
  %or.cond431.i.i = select i1 %or.cond430.i.i, i1 %.not419.i.i, i1 false
  br i1 %or.cond431.i.i, label %BIT_reloadDStream.exit175.i.i, label %BIT_endOfDStream.exit176.thread.i.i

BIT_endOfDStream.exit176.thread.i.i:              ; preds = %bb.br, %.thread638.i.i
  %i.qd = phi i1 [ %i.pv, %.thread638.i.i ], [ %i.qc, %bb.br ]
  %.sroa.61222.9.ph.idx648.i.i = phi i64 [ %.sroa.61222.1.add412.i.i, %.thread638.i.i ], [ %.sroa.61222.9.ph.idx.i.i, %bb.br ] ; 5 uses
  %.sroa.27.9.ph647.i.i = phi i32 [ %i.pu, %.thread638.i.i ], [ %.sroa.27.9.ph.i.i, %bb.br ] ; 2 uses
  %.sroa.0216.7.ph646.i.i = phi i64 [ %.val30.i168.i.i, %.thread638.i.i ], [ %.sroa.0216.7.ph.i.i, %bb.br ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %.sroa.0208.1511.i.i ; 3 uses
  %.sroa.0.0.copyload.i177.i.i = load i16, ptr %i.qe, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i178.i.i = getelementptr inbounds nuw i8, ptr %i.qe, i64 2
  %.sroa.4.0.copyload.i179.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i178.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i180.i.i = getelementptr inbounds nuw i8, ptr %i.qe, i64 3
  %.sroa.5.0.copyload.i181.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i180.i.i, align 1, !tbaa !10
  %i.qf = zext i8 %.sroa.5.0.copyload.i181.i.i to i32 ; 2 uses
  %i.qg = and i32 %.sroa.27.9.ph647.i.i, 63
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = shl i64 %.sroa.0216.7.ph646.i.i, %i.qh
  %i.qj = lshr i64 %i.qi, 1
  %i.qk = and i32 %i.qf, 63
  %i.ql = xor i32 %i.qk, 63
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = lshr i64 %i.qj, %i.qm
  %i.qo = add i32 %.sroa.27.9.ph647.i.i, %i.qf    ; 7 uses
  %i.qp = zext i16 %.sroa.0.0.copyload.i177.i.i to i64
  %i.qq = add nuw i64 %i.qn, %i.qp                ; 5 uses
  %.add51.i.i.i = or disjoint i64 %.1.idx.i513.i.i, 1 ; 3 uses
  %.ptr.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i.i.i
  store i8 %.sroa.4.0.copyload.i179.i.i, ptr %.1.ptr.ptr.i514.i.i, align 1, !tbaa !10
  %i.qr = icmp ugt i32 %i.qo, 64
  br i1 %i.qr, label %BIT_reloadDStream.exit175.split.loop.exit485.i.i, label %bb.bs

bb.bs:                                            ; preds = %BIT_endOfDStream.exit176.thread.i.i
  %.not.i184.i.i = icmp slt i64 %.sroa.61222.9.ph.idx648.i.i, 8
  br i1 %.not.i184.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qs = lshr i32 %i.qo, 3
  %i.qt = zext nneg i32 %i.qs to i64
  %.sroa.61222.9.ph.add411.i.i = sub nuw nsw i64 %.sroa.61222.9.ph.idx648.i.i, %i.qt ; 2 uses
  %.ptr414.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.61222.9.ph.add411.i.i
  %i.qu = and i32 %i.qo, 7
  %.val30.i185.i.i = load i64, ptr %.ptr414.i.i, align 1
  br label %BIT_reloadDStream.exit192.i.i

bb.bu:                                            ; preds = %bb.bs
  br i1 %i.qd, label %BIT_reloadDStream.exit192.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qv = lshr i32 %i.qo, 3
  %i.qw = zext nneg i32 %i.qv to i64
  %.024.i187420.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61222.9.ph.idx648.i.i, i64 %i.qw) ; 2 uses
  %.024.i187.i.i = trunc i64 %.024.i187420.i.i to i32
  %i.qx = and i64 %.024.i187420.i.i, 4294967295
  %.sroa.61222.9.ph.add.i.i = sub nsw i64 %.sroa.61222.9.ph.idx648.i.i, %i.qx ; 2 uses
  %.ptr413.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61222.9.ph.add.i.i
  %i.qy = shl i32 %.024.i187.i.i, 3
  %i.qz = sub i32 %i.qo, %i.qy
  %.val.i189.i.i = load i64, ptr %.ptr413.i.i, align 1
  br label %BIT_reloadDStream.exit192.i.i

BIT_reloadDStream.exit192.i.i:                    ; preds = %bb.bv, %bb.bu, %bb.bt
  %.sroa.0216.8.i.i = phi i64 [ %.val30.i185.i.i, %bb.bt ], [ %.val.i189.i.i, %bb.bv ], [ %.sroa.0216.7.ph646.i.i, %bb.bu ] ; 2 uses
  %.sroa.27.10.i.i = phi i32 [ %i.qu, %bb.bt ], [ %i.qz, %bb.bv ], [ %i.qo, %bb.bu ] ; 4 uses
  %.sroa.61222.10.idx.i.i = phi i64 [ %.sroa.61222.9.ph.add411.i.i, %bb.bt ], [ %.sroa.61222.9.ph.add.i.i, %bb.bv ], [ 0, %bb.bu ] ; 4 uses
  %i.ra = icmp eq i64 %.1.idx.i513.i.i, 254
  br i1 %i.ra, label %BIT_reloadDStream.exit175.split.loop.exit497.i.i, label %bb.bw

bb.bw:                                            ; preds = %BIT_reloadDStream.exit192.i.i
  %i.rb = icmp eq i64 %.sroa.61222.10.idx.i.i, 0
  %.not421.i.i = icmp eq i32 %.sroa.27.10.i.i, 64
  %or.cond432.i.i = and i1 %.not421.i.i, %i.rb
  %.not422.i.i = icmp eq i64 %.sroa.0.1512.i.i, 0
  %or.cond433.i.i = select i1 %or.cond432.i.i, i1 %.not422.i.i, i1 false
  br i1 %or.cond433.i.i, label %BIT_reloadDStream.exit175.i.i, label %BIT_endOfDStream.exit193.thread.i.i

BIT_endOfDStream.exit193.thread.i.i:              ; preds = %bb.bw
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %.sroa.0.1512.i.i ; 3 uses
  %.sroa.0.0.copyload.i194.i.i = load i16, ptr %i.rc, align 4, !tbaa !60
  %.sroa.4.0..sroa_idx.i195.i.i = getelementptr inbounds nuw i8, ptr %i.rc, i64 2
  %.sroa.4.0.copyload.i196.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i195.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i197.i.i = getelementptr inbounds nuw i8, ptr %i.rc, i64 3
  %.sroa.5.0.copyload.i198.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i197.i.i, align 1, !tbaa !10
  %i.rd = zext i8 %.sroa.5.0.copyload.i198.i.i to i32 ; 2 uses
  %i.re = and i32 %.sroa.27.10.i.i, 63
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = shl i64 %.sroa.0216.8.i.i, %i.rf
  %i.rh = lshr i64 %i.rg, 1
  %i.ri = and i32 %i.rd, 63
  %i.rj = xor i32 %i.ri, 63
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = lshr i64 %i.rh, %i.rk
  %i.rm = add i32 %.sroa.27.10.i.i, %i.rd         ; 3 uses
  %i.rn = zext i16 %.sroa.0.0.copyload.i194.i.i to i64
  %i.ro = add nuw i64 %i.rl, %i.rn                ; 2 uses
  %.add.i.i.i = add nuw nsw i64 %.1.idx.i513.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i196.i.i, ptr %.ptr.ptr.i.i.i, align 1, !tbaa !10
  %i.rp = icmp ugt i32 %i.rm, 64
  br i1 %i.rp, label %BIT_reloadDStream.exit175.split.loop.exit491.i.i, label %.lr.ph515.i.i

BIT_reloadDStream.exit175.split.loop.exit485.i.i: ; preds = %BIT_endOfDStream.exit176.thread.i.i
  %.sroa.61222.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61222.9.ph.idx648.i.i
  br label %BIT_reloadDStream.exit175.i.i

BIT_reloadDStream.exit175.split.loop.exit491.i.i: ; preds = %bb.bo, %BIT_endOfDStream.exit193.thread.i.i, %.preheader.i.i, %FSE_initDState.exit129.i.i
  %.sroa.61222.1.idx.lcssa.i.i = phi i64 [ %.sroa.61222.8.idx.i.i, %.preheader.i.i ], [ %.sroa.61222.10.idx.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.61222.7.idx.i.i, %FSE_initDState.exit129.i.i ], [ %.sroa.61222.8.idx.i.i, %bb.bo ]
  %.sroa.0.1.lcssa.ph492.i.i = phi i64 [ %.sroa.0.0.i104.i, %.preheader.i.i ], [ %i.ro, %BIT_endOfDStream.exit193.thread.i.i ], [ %i.mo, %FSE_initDState.exit129.i.i ], [ %i.pp, %bb.bo ]
  %.sroa.27.2.ph493.i.i = phi i32 [ %.sroa.27.8.i.i, %.preheader.i.i ], [ %i.rm, %BIT_endOfDStream.exit193.thread.i.i ], [ %.sroa.27.7.i.i, %FSE_initDState.exit129.i.i ], [ %i.pn, %bb.bo ]
  %.sroa.0208.2.ph495.i.i = phi i64 [ %.sroa.0208.0.i103.i, %.preheader.i.i ], [ %i.qq, %BIT_endOfDStream.exit193.thread.i.i ], [ %i.lx, %FSE_initDState.exit129.i.i ], [ %i.pa, %bb.bo ]
  %.2.idx.i.ph496.i.i = phi i64 [ %.036.idx.i.i105.i, %.preheader.i.i ], [ %.add.i.i.i, %BIT_endOfDStream.exit193.thread.i.i ], [ 0, %FSE_initDState.exit129.i.i ], [ %.036.add.i.i.i, %bb.bo ]
  %.sroa.61222.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61222.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit175.i.i

BIT_reloadDStream.exit175.split.loop.exit497.i.i: ; preds = %BIT_reloadDStream.exit192.i.i
  %.sroa.61222.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.bk, i64 %.sroa.61222.10.idx.i.i
  br label %BIT_reloadDStream.exit175.i.i

BIT_reloadDStream.exit175.i.i:                    ; preds = %bb.bw, %bb.br, %BIT_reloadDStream.exit175.split.loop.exit497.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.1.lcssa.ph492.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %.sroa.0.1512.i.i, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %.sroa.0.1512.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ %.sroa.0.1512.i.i, %bb.br ], [ 0, %bb.bw ]
  %.sroa.27.2.i.i = phi i32 [ %.sroa.27.2.ph493.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %.sroa.27.10.i.i, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %i.qo, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ 64, %bb.br ], [ 64, %bb.bw ]
  %.sroa.61222.2.i.i = phi ptr [ %.sroa.61222.1.ptr.le.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %.sroa.61222.10.ptr.le.i.i, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %.sroa.61222.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ %i.bk, %bb.br ], [ %i.bk, %bb.bw ]
  %.sroa.0208.2.i.i = phi i64 [ %.sroa.0208.2.ph495.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ %i.qq, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %i.qq, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ 0, %bb.br ], [ %i.qq, %bb.bw ]
  %.2.idx.i.i.i = phi i64 [ %.2.idx.i.ph496.i.i, %BIT_reloadDStream.exit175.split.loop.exit491.i.i ], [ 255, %BIT_reloadDStream.exit175.split.loop.exit497.i.i ], [ %.add51.i.i.i, %BIT_reloadDStream.exit175.split.loop.exit485.i.i ], [ %.1.idx.i513.i.i, %bb.br ], [ %.add51.i.i.i, %bb.bw ] ; 2 uses
  %i.rq = icmp eq ptr %.sroa.61222.2.i.i, %i.bk
  %.not423.i.i = icmp eq i32 %.sroa.27.2.i.i, 64
  %or.cond434.i.i = and i1 %.not423.i.i, %i.rq
  %.not424.i.i = icmp eq i64 %.sroa.0208.2.i.i, 0
  %or.cond435.i.i = select i1 %or.cond434.i.i, i1 %.not424.i.i, i1 false
  %.not425.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i, 0
  %or.cond436.i.i = select i1 %or.cond435.i.i, i1 %.not425.i.i, i1 false
  br i1 %or.cond436.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit201.thread.i.i

BIT_endOfDStream.exit201.thread.i.i:              ; preds = %BIT_reloadDStream.exit175.i.i
  %i.rr = icmp eq i64 %.2.idx.i.i.i, 255
  %..i.i.i = select i1 %i.rr, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

FSE_decompress.exit.thread:                       ; preds = %bb.j, %bb.g, %bb.h, %bb.i, %bb.v, %BIT_initDStream.exit.i.i, %BIT_endOfDStream.exit106.thread.i.i, %BIT_initDStream.exit111.i.i, %BIT_endOfDStream.exit201.thread.i.i, %bb.l, %bb.n, %bb.ar, %bb.at, %bb.bb
  %.0.i.ph = phi i64 [ -1, %bb.bb ], [ -1, %bb.at ], [ -72, %bb.ar ], [ -1, %bb.n ], [ -72, %bb.l ], [ %..i.i.i, %BIT_endOfDStream.exit201.thread.i.i ], [ %i.bj, %BIT_initDStream.exit111.i.i ], [ %..i23.i.i, %BIT_endOfDStream.exit106.thread.i.i ], [ %i.bj, %BIT_initDStream.exit.i.i ], [ -1, %bb.v ], [ -72, %bb.i ], [ %i.bd, %bb.h ], [ -72, %bb.g ], [ %i.bh, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.critedge

FSE_decompress.exit:                              ; preds = %BIT_reloadDStream.exit81.i.i, %BIT_reloadDStream.exit175.i.i
  %.0.i = phi i64 [ %.2.idx.i.i.i, %BIT_reloadDStream.exit175.i.i ], [ %.2.idx.i19.i.i, %BIT_reloadDStream.exit81.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.rs = icmp ult i64 %.0.i, -119
  br i1 %i.rs, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %FSE_decompress.exit, %bb.d
  %.074 = phi i64 [ %i.l, %bb.d ], [ %.0.i, %FSE_decompress.exit ] ; 2 uses
  %.070 = phi i64 [ 0, %bb.d ], [ %i.f, %FSE_decompress.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  %.not170 = icmp eq i64 %.074, 0
  br i1 %.not170, label %.critedge, label %.lr.ph166.preheader

.lr.ph166.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.070286 = phi i64 [ %i.o, %.loopexit.thread ], [ %.070, %.loopexit ]
  %.074284 = phi i64 [ %i.m, %.loopexit.thread ], [ %.074, %.loopexit ] ; 3 uses
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.bx
  %i.rt = phi i64 [ %i.sh, %bb.bx ], [ 0, %.lr.ph166.preheader ]
  %.069165 = phi i32 [ %i.sf, %bb.bx ], [ 0, %.lr.ph166.preheader ]
  %.173164 = phi i32 [ %i.sg, %bb.bx ], [ 0, %.lr.ph166.preheader ]
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 %i.rt ; 2 uses
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !10  ; 2 uses
  %i.rw = icmp ugt i8 %i.rv, 15
  br i1 %i.rw, label %.critedge, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph166
  %i.rx = zext nneg i8 %i.rv to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rx ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !50
  %i.sa = add i32 %i.rz, 1
  store i32 %i.sa, ptr %i.ry, align 4, !tbaa !50
  %i.sb = load i8, ptr %i.ru, align 1, !tbaa !10
  %i.sc = zext nneg i8 %i.sb to i32
  %i.sd = shl nuw i32 1, %i.sc
  %i.se = ashr i32 %i.sd, 1
  %i.sf = add i32 %i.se, %.069165                 ; 4 uses
  %i.sg = add i32 %.173164, 1                     ; 2 uses
  %i.sh = zext i32 %i.sg to i64                   ; 2 uses
  %i.si = icmp ugt i64 %.074284, %i.sh
  br i1 %i.si, label %.lr.ph166, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.bx
  %i.sj = icmp eq i32 %i.sf, 0
  br i1 %i.sj, label %.critedge, label %bb.by

bb.by:                                            ; preds = %._crit_edge
  %i.sk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sf, i1 true) ; 2 uses
  %i.sl = xor i32 %i.sk, 31                       ; 2 uses
  %i.sm = sub nuw nsw i32 32, %i.sk
  %i.sn = icmp samesign ugt i32 %i.sl, 15
  br i1 %i.sn, label %.critedge, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.so = shl nuw nsw i32 2, %i.sl
  %i.sp = sub i32 %i.so, %i.sf                    ; 2 uses
  %i.sq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sp, i1 true) ; 2 uses
  %i.sr = lshr exact i32 -2147483648, %i.sq
  %.not84 = icmp eq i32 %i.sr, %i.sp
  br i1 %.not84, label %bb.ca, label %.critedge

bb.ca:                                            ; preds = %bb.bz
  %i.ss = sub nuw nsw i32 32, %i.sq               ; 2 uses
  %i.st = trunc nuw nsw i32 %i.ss to i8
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 %.074284
  store i8 %i.st, ptr %i.su, align 1, !tbaa !10
  %i.sv = zext nneg i32 %i.ss to i64
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sv ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !50
  %i.sy = add i32 %i.sx, 1
  store i32 %i.sy, ptr %i.sw, align 4, !tbaa !50
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !50 ; 2 uses
  %i.tb = icmp ugt i32 %i.ta, 1
  %i.tc = and i32 %i.ta, 1
  %.not85 = icmp eq i32 %i.tc, 0
  %or.cond = and i1 %i.tb, %.not85
  br i1 %or.cond, label %bb.cb, label %.critedge

bb.cb:                                            ; preds = %bb.ca
  %i.td = trunc nuw i64 %.074284 to i32
  %i.te = add i32 %i.td, 1
  store i32 %i.te, ptr %2, align 4, !tbaa !50
  store i32 %i.sm, ptr %3, align 4, !tbaa !50
  %i.tf = add nuw nsw i64 %.070286, 1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph166, %.loopexit, %FSE_decompress.exit.thread, %bb.bz, %bb.ca, %bb.by, %._crit_edge, %FSE_decompress.exit, %bb.f, %bb.e, %bb.a, %bb.cb
  %.1 = phi i64 [ %.0.i, %FSE_decompress.exit ], [ %.0.i.ph, %FSE_decompress.exit.thread ], [ -20, %._crit_edge ], [ -20, %bb.ca ], [ %i.tf, %bb.cb ], [ -20, %bb.bz ], [ -72, %bb.a ], [ -72, %bb.f ], [ -72, %bb.e ], [ -20, %bb.by ], [ -20, %.loopexit ], [ -20, %.lr.ph166 ]
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
  store i32 %i.e, ptr %2, align 4, !tbaa !50
  %i.f = shl nuw nsw i32 32, %i.c                 ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = add nuw nsw i32 %i.c, 6
  %i.i = lshr i32 %.val160, 4
  %i.j = load i32, ptr %1, align 4, !tbaa !50     ; 2 uses
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
  br i1 %i.z, label %.lr.ph, label %.preheader162, !llvm.loop !121

.lr.ph178:                                        ; preds = %.preheader162, %.lr.ph178
  %.1108177 = phi i32 [ %i.aa, %.lr.ph178 ], [ %.0107.lcssa, %.preheader162 ]
  %.3118176 = phi i32 [ %i.ac, %.lr.ph178 ], [ %.1116.lcssa, %.preheader162 ]
  %.3122175 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.1120.lcssa, %.preheader162 ]
  %i.aa = add i32 %.1108177, 3                    ; 2 uses
  %i.ab = lshr i32 %.3122175, 2                   ; 3 uses
  %i.ac = add nsw i32 %.3118176, 2                ; 2 uses
  %i.ad = and i32 %i.ab, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph178, label %._crit_edge, !llvm.loop !122

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.ap, i1 false), !tbaa !60
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
  store i16 %i.bi, ptr %i.bo, align 2, !tbaa !60
  %i.bp = icmp ne i16 %i.bi, 0
  %i.bq = icmp slt i32 %i.bl, %.0126197
  br i1 %i.bq, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %bb.l, %.lr.ph190
  %.1127188 = phi i32 [ %i.bs, %.lr.ph190 ], [ %.0126197, %bb.l ]
  %.1130187 = phi i32 [ %i.br, %.lr.ph190 ], [ %.0129195, %bb.l ]
  %i.br = add nsw i32 %.1130187, -1               ; 2 uses
  %i.bs = ashr i32 %.1127188, 1                   ; 3 uses
  %i.bt = icmp slt i32 %i.bl, %i.bs
  br i1 %i.bt, label %.lr.ph190, label %._crit_edge191, !llvm.loop !123

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
  br i1 %i.cd, label %bb.c, label %.critedge, !llvm.loop !124

.critedge:                                        ; preds = %._crit_edge191
  %.not147 = icmp eq i32 %i.bl, 1
  br i1 %.not147, label %bb.m, label %.critedge158

bb.m:                                             ; preds = %.critedge
  store i32 %.3114, ptr %1, align 4, !tbaa !50
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
define internal fastcc range(i64 -46, 1) i64 @FSE_buildDTable(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.c = shl nuw i32 1, %3                        ; 5 uses
  %i.d = add i32 %i.c, -1                         ; 5 uses
  %i.e = lshr i32 %i.c, 1
  %i.f = lshr i32 %i.c, 3
  %i.g = add nuw nsw i32 %i.f, 3
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.i = icmp ugt i32 %2, 255
  br i1 %i.i, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %3, 12
  br i1 %i.j, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl nuw nsw i32 %2, 2
  %i.l = add nuw nsw i32 %i.k, 4
  %i.m = zext nneg i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.b, i8 0, i64 %i.m, i1 false)
  %sext = shl nuw nsw i32 32768, %3
  %i.n = lshr exact i32 %sext, 16                 ; 3 uses
  %i.o = add nuw nsw i32 %2, 1                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %wide.trip.count, 510
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %.06984 = phi i16 [ 1, %.new ], [ %.271.1, %bb.j ] ; 2 uses
  %.07283 = phi i32 [ %i.d, %.new ], [ %.173.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.j ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.r = load i16, ptr %i.q, align 2, !tbaa !60   ; 3 uses
  %i.s = icmp eq i16 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = trunc i64 %indvars.iv to i8
  %i.u = add i32 %.07283, -1
  %i.v = zext i32 %.07283 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.t, ptr %i.x, align 2, !tbaa !57
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = sext i16 %i.r to i32
  %.not80 = icmp sgt i32 %i.n, %i.y
  %spec.select = select i1 %.not80, i16 %.06984, i16 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i16 [ 1, %bb.e ], [ %i.r, %bb.f ]
  %.173 = phi i32 [ %i.u, %bb.e ], [ %.07283, %bb.f ] ; 3 uses
  %.271 = phi i16 [ %.06984, %bb.e ], [ %spec.select, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %.sink, ptr %i.z, align 4, !tbaa !60
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !60 ; 3 uses
  %i.ac = icmp eq i16 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = sext i16 %i.ab to i32
  %.not80.1 = icmp sgt i32 %i.n, %i.ad
  %spec.select.1 = select i1 %.not80.1, i16 %.271, i16 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = trunc i64 %indvars.iv.next to i8
  %i.af = add i32 %.173, -1
  %i.ag = zext i32 %.173 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %i.ae, ptr %i.ai, align 2, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.1 = phi i16 [ 1, %bb.i ], [ %i.ab, %bb.h ]
  %.173.1 = phi i32 [ %i.af, %bb.i ], [ %.173, %bb.h ] ; 3 uses
  %.271.1 = phi i16 [ %.271, %bb.i ], [ %spec.select.1, %bb.h ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.aj, align 2, !tbaa !60
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader81.preheader.unr-lcssa, label %bb.d, !llvm.loop !125

.preheader81.preheader.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader81.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader81.preheader.unr-lcssa, %bb.c
  %indvars.iv.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.1, %.preheader81.preheader.unr-lcssa ] ; 3 uses
  %.06984.epil.init = phi i16 [ 1, %bb.c ], [ %.271.1, %.preheader81.preheader.unr-lcssa ] ; 2 uses
  %.07283.epil.init = phi i32 [ %i.d, %bb.c ], [ %.173.1, %.preheader81.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod108 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !60 ; 3 uses
  %i.am = icmp eq i16 %i.al, -1
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.an = sext i16 %i.al to i32
  %.not80.epil = icmp sgt i32 %i.n, %i.an
  %spec.select.epil = select i1 %.not80.epil, i16 %.06984.epil.init, i16 0
  br label %.preheader81.preheader.epilog-lcssa

bb.l:                                             ; preds = %.epil.preheader
  %i.ao = trunc i64 %indvars.iv.epil.init to i8
  %i.ap = add i32 %.07283.epil.init, -1
  %i.aq = zext i32 %.07283.epil.init to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.ao, ptr %i.as, align 2, !tbaa !57
  br label %.preheader81.preheader.epilog-lcssa

.preheader81.preheader.epilog-lcssa:              ; preds = %bb.l, %bb.k
  %.sink.epil = phi i16 [ 1, %bb.l ], [ %i.al, %bb.k ]
  %.173.epil = phi i32 [ %i.ap, %bb.l ], [ %.07283.epil.init, %bb.k ]
  %.271.epil = phi i16 [ %.06984.epil.init, %bb.l ], [ %spec.select.epil, %bb.k ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.at, align 2, !tbaa !60
  br label %.preheader81.preheader

.preheader81.preheader:                           ; preds = %.preheader81.preheader.unr-lcssa, %.preheader81.preheader.epilog-lcssa
  %.173.lcssa = phi i32 [ %.173.1, %.preheader81.preheader.unr-lcssa ], [ %.173.epil, %.preheader81.preheader.epilog-lcssa ] ; 3 uses
  %.271.lcssa = phi i16 [ %.271.1, %.preheader81.preheader.unr-lcssa ], [ %.271.epil, %.preheader81.preheader.epilog-lcssa ]
  br label %.preheader81

.preheader81:                                     ; preds = %.preheader81.preheader, %._crit_edge
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %._crit_edge ], [ 0, %.preheader81.preheader ] ; 3 uses
  %.06489 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.preheader81.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv92
  %i.av = load i16, ptr %i.au, align 2, !tbaa !60 ; 5 uses
  %i.aw = icmp sgt i16 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader81
  %i.ax = trunc i64 %indvars.iv92 to i8           ; 3 uses
  %i.ay = icmp eq i16 %i.av, 1
  br i1 %i.ay, label %.epil.preheader109, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.az = and i16 %i.av, 32766
  %unroll_iter114 = zext nneg i16 %i.az to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %.187 = phi i32 [ %.06489, %.lr.ph.new ], [ %.2.1, %bb.q ] ; 2 uses
  %niter115 = phi i32 [ 0, %.lr.ph.new ], [ %niter115.next.1, %bb.q ]
  %i.ba = zext nneg i32 %.187 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i8 %i.ax, ptr %i.bc, align 2, !tbaa !57
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.1.pn = phi i32 [ %.187, %bb.m ], [ %.2, %bb.n ]
  %.pn = add nuw i32 %i.h, %.1.pn
  %.2 = and i32 %.pn, %i.d                        ; 4 uses
  %i.bd = icmp ugt i32 %.2, %.173.lcssa
  br i1 %i.bd, label %bb.n, label %bb.o, !llvm.loop !126

bb.o:                                             ; preds = %bb.n
  %i.be = zext nneg i32 %.2 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i8 %i.ax, ptr %i.bg, align 2, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1.pn.1 = phi i32 [ %.2, %bb.o ], [ %.2.1, %bb.p ]
  %.pn.1 = add nuw i32 %i.h, %.1.pn.1
  %.2.1 = and i32 %.pn.1, %i.d                    ; 5 uses
  %i.bh = icmp ugt i32 %.2.1, %.173.lcssa
  br i1 %i.bh, label %bb.p, label %bb.q, !llvm.loop !126

bb.q:                                             ; preds = %bb.p
  %niter115.next.1 = add i32 %niter115, 2         ; 2 uses
  %niter115.ncmp.1 = icmp eq i32 %niter115.next.1, %unroll_iter114
  br i1 %niter115.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !127

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.q
  %i.bi = and i16 %i.av, 1
  %lcmp.mod111.not = icmp eq i16 %i.bi, 0
  br i1 %lcmp.mod111.not, label %._crit_edge, label %.epil.preheader109

.epil.preheader109:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.187.epil.init = phi i32 [ %.06489, %.lr.ph ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod113 = trunc i16 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod113)
  %i.bj = zext nneg i32 %.187.epil.init to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %i.ax, ptr %i.bl, align 2, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader109
  %.1.pn.epil = phi i32 [ %.187.epil.init, %.epil.preheader109 ], [ %.2.epil, %bb.r ]
  %.pn.epil = add nuw i32 %i.h, %.1.pn.epil
  %.2.epil = and i32 %.pn.epil, %i.d              ; 3 uses
  %i.bm = icmp ugt i32 %.2.epil, %.173.lcssa
  br i1 %i.bm, label %bb.r, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.r, %.preheader81
  %.1.lcssa = phi i32 [ %.06489, %.preheader81 ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %.2.epil, %bb.r ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count
  br i1 %exitcond96.not, label %bb.s, label %.preheader81, !llvm.loop !128

bb.s:                                             ; preds = %._crit_edge
  %i.bn = trunc nuw nsw i32 %3 to i16
  %.not79 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not79, label %.preheader.preheader, label %bb.u

.preheader.preheader:                             ; preds = %bb.s
  %wide.trip.count100 = zext nneg i32 %i.c to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv97 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next98, %.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv97 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !57
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.br ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !60 ; 2 uses
  %i.bu = add i16 %i.bt, 1
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !60
  %i.bv = zext i16 %i.bt to i32                   ; 2 uses
  %i.bw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bv, i1 true)
  %i.bx = xor i32 %i.bw, 31
  %i.by = sub nsw i32 %3, %i.bx                   ; 2 uses
  %i.bz = trunc nsw i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !58
  %i.cb = and i32 %i.by, 255
  %i.cc = shl i32 %i.bv, %i.cb
  %i.cd = sub i32 %i.cc, %i.c
  %i.ce = trunc i32 %i.cd to i16
  store i16 %i.ce, ptr %i.bo, align 2, !tbaa !55
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %bb.t, label %.preheader, !llvm.loop !129

bb.t:                                             ; preds = %.preheader
  store i16 %i.bn, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.271.lcssa, ptr %.sroa.4.0..sroa_idx, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.b, %bb.a, %bb.t
  %.0 = phi i64 [ 0, %bb.t ], [ -46, %bb.a ], [ -44, %bb.b ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @BIT_initDStream(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8), (16, 32)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !82
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !84
  %.val = load i64, ptr %i.e, align 1
  store i64 %.val, ptr %0, align 8, !tbaa !85
  %i.g = getelementptr i8, ptr %i.d, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10    ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.d
  %i.j = zext i8 %i.h to i32
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.j, i1 true)
  %i.l = xor i32 %i.k, 31
  %i.m = sub nuw nsw i32 8, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !86
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !84
  %i.p = load i8, ptr %1, align 1, !tbaa !10
  %i.q = zext i8 %i.p to i64                      ; 7 uses
  store i64 %i.q, ptr %0, align 8, !tbaa !85
  switch i64 %2, label %bb.l [
    i64 7, label %bb.f
    i64 6, label %bb.g
    i64 5, label %bb.h
    i64 4, label %bb.i
    i64 3, label %bb.j
    i64 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 48
  %i.v = or disjoint i64 %i.u, %i.q               ; 2 uses
  store i64 %i.v, ptr %0, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %i.v, %bb.f ], [ %i.q, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 40
  %i.ab = add nuw nsw i64 %i.aa, %i.w             ; 2 uses
  store i64 %i.ab, ptr %0, align 8, !tbaa !85
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ac = phi i64 [ %i.ab, %bb.g ], [ %i.q, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = add nuw nsw i64 %i.ag, %i.ac            ; 2 uses
  store i64 %i.ah, ptr %0, align 8, !tbaa !85
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ai = phi i64 [ %i.ah, %bb.h ], [ %i.q, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 24
  %i.an = add nuw nsw i64 %i.am, %i.ai            ; 2 uses
  store i64 %i.an, ptr %0, align 8, !tbaa !85
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ao = phi i64 [ %i.an, %bb.i ], [ %i.q, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 16
  %i.at = add nuw nsw i64 %i.as, %i.ao            ; 2 uses
  store i64 %i.at, ptr %0, align 8, !tbaa !85
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.au = phi i64 [ %i.at, %bb.j ], [ %i.q, %bb.e ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = add nuw nsw i64 %i.ay, %i.au
  store i64 %i.az, ptr %0, align 8, !tbaa !85
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k
  %i.ba = getelementptr i8, ptr %1, i64 %2
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %.thread48

.thread48:                                        ; preds = %bb.l
  %i.be = zext i8 %i.bc to i32
  %i.bf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 true)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = trunc nuw nsw i64 %2 to i32
  %i.bi = shl nuw nsw i32 %i.bh, 3
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = add nsw i32 %i.bj, 41
  store i32 %i.bk, ptr %i.bg, align 8, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %.thread, %.thread48, %bb.l, %bb.d, %bb.b
  %.2 = phi i64 [ -72, %bb.b ], [ -1, %bb.l ], [ -1, %bb.d ], [ %2, %.thread48 ], [ %2, %.thread ]
  ret i64 %.2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 4) i32 @BIT_reloadDStream(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86   ; 6 uses
  %i.c = icmp ugt i32 %i.b, 64
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not = icmp ult ptr %i.e, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i32 %i.b, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !84
  %i.m = and i32 %i.b, 7
  store i32 %i.m, ptr %i.a, align 8, !tbaa !86
  %.val30 = load i64, ptr %i.l, align 1
  store i64 %.val30, ptr %0, align 8, !tbaa !85
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
  store ptr %i.z, ptr %i.d, align 8, !tbaa !84
  %i.aa = shl i32 %.024, 3
  %i.ab = sub i32 %i.b, %i.aa
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !86
  %.val = load i64, ptr %i.z, align 1
  store i64 %.val, ptr %0, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.c
  %.025 = phi i32 [ %.0, %bb.f ], [ 0, %bb.c ], [ %., %bb.e ], [ 3, %bb.a ]
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @HUF_decodeStreamX2(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 65536) %4) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 -4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = sub nsw i32 0, %4
  %i.f = and i32 %i.e, 63
  %i.g = zext nneg i32 %i.f to i64                ; 6 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.i = icmp ugt i32 %i.h, 64
  br i1 %i.i, label %.preheader55, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a, %bb.e
  %i.j = phi i32 [ %i.cc, %bb.e ], [ %i.h, %bb.a ] ; 5 uses
  %.03 = phi ptr [ %i.cb, %bb.e ], [ %0, %bb.a ]  ; 8 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !84   ; 6 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !82   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.not.i = icmp ult ptr %i.k, %i.m
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph5
  %i.n = lshr i32 %i.j, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !84
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
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !84
  %i.af = shl i32 %.024.i, 3
  %i.ag = sub i32 %i.j, %i.af
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.b, %bb.d
  %.val30.i.sink.in = phi ptr [ %i.q, %bb.b ], [ %i.ae, %bb.d ]
  %.val7.i = phi i32 [ %i.r, %bb.b ], [ %i.ag, %bb.d ] ; 4 uses
  %.025.i = phi i1 [ true, %bb.b ], [ %i.x, %bb.d ]
  store i32 %.val7.i, ptr %i.a, align 8, !tbaa !86
  %.val30.i.sink = load i64, ptr %.val30.i.sink.in, align 1
  store i64 %.val30.i.sink, ptr %1, align 8, !tbaa !85
  %i.ah = icmp ule ptr %.03, %i.b
  %i.ai = select i1 %.025.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.e, label %.preheader55

.preheader55:                                     ; preds = %BIT_reloadDStream.exit, %bb.e, %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.03, %BIT_reloadDStream.exit ], [ %i.cb, %bb.e ], [ %.03, %bb.c ] ; 2 uses
  %.val7.i69 = phi i32 [ %i.h, %bb.a ], [ %.val7.i, %BIT_reloadDStream.exit ], [ %i.cc, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %i.aj = icmp ugt i32 %.val7.i69, 64
  br i1 %i.aj, label %BIT_reloadDStream.exit50.thread, label %.lr.ph13

bb.e:                                             ; preds = %BIT_reloadDStream.exit
  %.val.i35 = load i64, ptr %1, align 8, !tbaa !85
  %i.ak = and i32 %.val7.i, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %.val.i35, %i.al
  %i.an = lshr i64 %i.am, %i.g
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !89
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %.val7.i, %i.as
  store i32 %i.at, ptr %i.a, align 8, !tbaa !86
  store i8 %i.ap, ptr %.03, align 1, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %.03, i64 1
  %.val.i36 = load i64, ptr %1, align 8, !tbaa !85
  %.val7.i37 = load i32, ptr %i.a, align 8, !tbaa !86 ; 2 uses
  %i.av = and i32 %.val7.i37, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %.val.i36, %i.aw
  %i.ay = lshr i64 %i.ax, %i.g
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !89
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %.val7.i37, %i.bd
  store i32 %i.be, ptr %i.a, align 8, !tbaa !86
  store i8 %i.ba, ptr %i.au, align 1, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %.03, i64 2
  %.val.i38 = load i64, ptr %1, align 8, !tbaa !85
  %.val7.i39 = load i32, ptr %i.a, align 8, !tbaa !86 ; 2 uses
  %i.bg = and i32 %.val7.i39, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl i64 %.val.i38, %i.bh
  %i.bj = lshr i64 %i.bi, %i.g
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !87
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !89
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %.val7.i39, %i.bo
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !86
  store i8 %i.bl, ptr %i.bf, align 1, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %.03, i64 3
  %.val.i40 = load i64, ptr %1, align 8, !tbaa !85
  %.val7.i41 = load i32, ptr %i.a, align 8, !tbaa !86 ; 2 uses
  %i.br = and i32 %.val7.i41, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %.val.i40, %i.bs
  %i.bu = lshr i64 %i.bt, %i.g
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !89
  %i.bz = zext i8 %i.by to i32
  %i.ca = add i32 %.val7.i41, %i.bz
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !86
  %i.cb = getelementptr inbounds nuw i8, ptr %.03, i64 4 ; 2 uses
  store i8 %i.bw, ptr %i.bq, align 1, !tbaa !10
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !86  ; 3 uses
  %i.cd = icmp ugt i32 %i.cc, 64
  br i1 %i.cd, label %.preheader55, label %.lr.ph5, !llvm.loop !130

.lr.ph13:                                         ; preds = %.preheader55, %bb.i
  %.312 = phi ptr [ %i.dp, %bb.i ], [ %.0.lcssa, %.preheader55 ] ; 5 uses
  %i.ce = phi i32 [ %.pre, %bb.i ], [ %.val7.i69, %.preheader55 ] ; 4 uses
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !84  ; 6 uses
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !82  ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.not.i42 = icmp ult ptr %i.cf, %i.ch
  br i1 %.not.i42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph13
  %i.ci = lshr i32 %i.ce, 3
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.cf, i64 %i.ck ; 2 uses
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !84
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
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !84
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
  store i32 %.val7.i52, ptr %i.a, align 8, !tbaa !86
  %.val30.i43.sink = load i64, ptr %.val30.i43.sink.in, align 1
  store i64 %.val30.i43.sink, ptr %1, align 8, !tbaa !85
  %i.dd = icmp ult ptr %.312, %2                  ; 2 uses
  %i.de = select i1 %.025.i44, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.i, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit50
  br i1 %i.dd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %BIT_reloadDStream.exit50.thread, %.preheader
  %.456.ph = phi ptr [ %.312, %.preheader ], [ %.3.lcssa, %BIT_reloadDStream.exit50.thread ]
  br label %.lr.ph

bb.i:                                             ; preds = %BIT_reloadDStream.exit50
  %.val.i51 = load i64, ptr %1, align 8, !tbaa !85
  %i.df = and i32 %.val7.i52, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl i64 %.val.i51, %i.dg
  %i.di = lshr i64 %i.dh, %i.g
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !87
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !89
  %i.dn = zext i8 %i.dm to i32
  %i.do = add i32 %.val7.i52, %i.dn
  store i32 %i.do, ptr %i.a, align 8, !tbaa !86
  %i.dp = getelementptr inbounds nuw i8, ptr %.312, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.312, align 1, !tbaa !10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.dq = icmp ugt i32 %.pre, 64
  br i1 %i.dq, label %BIT_reloadDStream.exit50.thread, label %.lr.ph13, !llvm.loop !131

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.456 = phi ptr [ %i.eb, %.lr.ph ], [ %.456.ph, %.lr.ph.preheader ] ; 2 uses
  %.val.i53 = load i64, ptr %1, align 8, !tbaa !85
  %.val7.i54 = load i32, ptr %i.a, align 8, !tbaa !86 ; 2 uses
  %i.dr = and i32 %.val7.i54, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl i64 %.val.i53, %i.ds
  %i.du = lshr i64 %i.dt, %i.g
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !87
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !89
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add i32 %.val7.i54, %i.dz
  store i32 %i.ea, ptr %i.a, align 8, !tbaa !86
  %i.eb = getelementptr inbounds nuw i8, ptr %.456, i64 1 ; 2 uses
  store i8 %i.dw, ptr %.456, align 1, !tbaa !10
  %i.ec = icmp ult ptr %i.eb, %2
  br i1 %i.ec, label %.lr.ph, label %._crit_edge, !llvm.loop !132

._crit_edge:                                      ; preds = %.lr.ph, %BIT_reloadDStream.exit50.thread, %.preheader
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @HUF_decodeStreamX4(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 -7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = sub i32 0, %4
  %i.f = and i32 %i.e, 63
  %i.g = zext nneg i32 %i.f to i64                ; 7 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !86  ; 3 uses
  %i.h = icmp ugt i32 %.pre, 64
  br i1 %i.h, label %.preheader68, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.a, %bb.e
  %.02 = phi ptr [ %i.cr, %bb.e ], [ %0, %bb.a ]  ; 5 uses
  %i.i = phi i32 [ %i.cn, %bb.e ], [ %.pre, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !84   ; 6 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !82   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.not.i = icmp ult ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph4
  %i.m = lshr i32 %i.i, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.o ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !84
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
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !84
  %i.ae = shl i32 %.024.i, 3
  %i.af = sub i32 %i.i, %i.ae
  br label %BIT_reloadDStream.exit

BIT_reloadDStream.exit:                           ; preds = %bb.b, %bb.d
  %.val30.i.sink.in = phi ptr [ %i.p, %bb.b ], [ %i.ad, %bb.d ]
  %.val9.i = phi i32 [ %i.q, %bb.b ], [ %i.af, %bb.d ] ; 3 uses
  %.025.i = phi i1 [ true, %bb.b ], [ %i.w, %bb.d ]
  store i32 %.val9.i, ptr %i.a, align 8, !tbaa !86
  %.val30.i.sink = load i64, ptr %.val30.i.sink.in, align 1
  store i64 %.val30.i.sink, ptr %1, align 8, !tbaa !85
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
  %.val.i47 = load i64, ptr %1, align 8, !tbaa !85
  %i.ak = and i32 %.val9.i, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %.val.i47, %i.al
  %i.an = lshr i64 %i.am, %i.g
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.an ; 3 uses
  %i.ap = load i16, ptr %i.ao, align 2
  store i16 %i.ap, ptr %.02, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !57
  %i.as = zext i8 %i.ar to i32
  %i.at = load i32, ptr %i.a, align 8, !tbaa !86
  %i.au = add i32 %i.at, %i.as                    ; 2 uses
  store i32 %i.au, ptr %i.a, align 8, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !58
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.02, i64 %i.ax ; 2 uses
  %.val.i48 = load i64, ptr %1, align 8, !tbaa !85
  %i.az = and i32 %i.au, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %.val.i48, %i.ba
  %i.bc = lshr i64 %i.bb, %i.g
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bc ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ay, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !57
  %i.bh = zext i8 %i.bg to i32
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !86
  %i.bj = add i32 %i.bi, %i.bh                    ; 2 uses
  store i32 %i.bj, ptr %i.a, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !58
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bm ; 2 uses
  %.val.i50 = load i64, ptr %1, align 8, !tbaa !85
  %i.bo = and i32 %i.bj, 63
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl i64 %.val.i50, %i.bp
  %i.br = lshr i64 %i.bq, %i.g
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.br ; 3 uses
  %i.bt = load i16, ptr %i.bs, align 2
  store i16 %i.bt, ptr %i.bn, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !57
  %i.bw = zext i8 %i.bv to i32
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !86
  %i.by = add i32 %i.bx, %i.bw                    ; 2 uses
  store i32 %i.by, ptr %i.a, align 8, !tbaa !86
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !58
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cb ; 2 uses
  %.val.i52 = load i64, ptr %1, align 8, !tbaa !85
  %i.cd = and i32 %i.by, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl i64 %.val.i52, %i.ce
  %i.cg = lshr i64 %i.cf, %i.g
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cg ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 2
  store i16 %i.ci, ptr %i.cc, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !57
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load i32, ptr %i.a, align 8, !tbaa !86
  %i.cn = add i32 %i.cm, %i.cl                    ; 4 uses
  store i32 %i.cn, ptr %i.a, align 8, !tbaa !86
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !58
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cq ; 2 uses
  %i.cs = icmp ugt i32 %i.cn, 64
  br i1 %i.cs, label %.preheader68, label %.lr.ph4, !llvm.loop !133

.lr.ph12:                                         ; preds = %.preheader68, %bb.i
  %.311 = phi ptr [ %i.eh, %bb.i ], [ %.0.lcssa, %.preheader68 ] ; 5 uses
  %i.ct = phi i32 [ %i.ed, %bb.i ], [ %.val9.i88, %.preheader68 ] ; 5 uses
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !84  ; 6 uses
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !82  ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.not.i54 = icmp ult ptr %i.cu, %i.cw
  br i1 %.not.i54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph12
  %i.cx = lshr i32 %i.ct, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cu, i64 %i.cz ; 2 uses
  store ptr %i.da, ptr %i.c, align 8, !tbaa !84
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
  store ptr %i.do, ptr %i.c, align 8, !tbaa !84
  %i.dp = shl i32 %.024.i57, 3
  %i.dq = sub i32 %i.ct, %i.dp
  br label %BIT_reloadDStream.exit62

BIT_reloadDStream.exit62:                         ; preds = %bb.f, %bb.h
  %.val30.i55.sink.in = phi ptr [ %i.da, %bb.f ], [ %i.do, %bb.h ]
  %.val9.i64 = phi i32 [ %i.db, %bb.f ], [ %i.dq, %bb.h ] ; 3 uses
  %.025.i56 = phi i1 [ true, %bb.f ], [ %i.dh, %bb.h ]
  store i32 %.val9.i64, ptr %i.a, align 8, !tbaa !86
  %.val30.i55.sink = load i64, ptr %.val30.i55.sink.in, align 1
  store i64 %.val30.i55.sink, ptr %1, align 8, !tbaa !85
  %i.dr = icmp ule ptr %.311, %i.ai
  %i.ds = select i1 %.025.i56, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.i, label %.preheader

.preheader:                                       ; preds = %BIT_reloadDStream.exit62, %bb.i, %bb.g, %.preheader68
  %.3.lcssa = phi ptr [ %.0.lcssa, %.preheader68 ], [ %.311, %BIT_reloadDStream.exit62 ], [ %i.eh, %bb.i ], [ %.311, %bb.g ] ; 3 uses
  %.val9.i6491 = phi i32 [ %.val9.i88, %.preheader68 ], [ %.val9.i64, %BIT_reloadDStream.exit62 ], [ %i.ed, %bb.i ], [ %i.ct, %bb.g ] ; 2 uses
  %.not70 = icmp ugt ptr %.3.lcssa, %i.ai
  br i1 %.not70, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %BIT_reloadDStream.exit62
  %.val.i63 = load i64, ptr %1, align 8, !tbaa !85
  %i.dt = and i32 %.val9.i64, 63
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl i64 %.val.i63, %i.du
  %i.dw = lshr i64 %i.dv, %i.g
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw ; 3 uses
  %i.dy = load i16, ptr %i.dx, align 2
  store i16 %i.dy, ptr %.311, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !57
  %i.eb = zext i8 %i.ea to i32
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !86
  %i.ed = add i32 %i.ec, %i.eb                    ; 4 uses
  store i32 %i.ed, ptr %i.a, align 8, !tbaa !86
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !58
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.311, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt i32 %i.ed, 64
  br i1 %i.ei, label %.preheader, label %.lr.ph12, !llvm.loop !134

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.val9.i66 = phi i32 [ %i.et, %.lr.ph ], [ %.val9.i6491, %.preheader ]
  %.471 = phi ptr [ %i.ex, %.lr.ph ], [ %.3.lcssa, %.preheader ] ; 2 uses
  %.val.i65 = load i64, ptr %1, align 8, !tbaa !85
  %i.ej = and i32 %.val9.i66, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %.val.i65, %i.ek
  %i.em = lshr i64 %i.el, %i.g
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %.471, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !57
  %i.er = zext i8 %i.eq to i32
  %i.es = load i32, ptr %i.a, align 8, !tbaa !86
  %i.et = add i32 %i.es, %i.er                    ; 3 uses
  store i32 %i.et, ptr %i.a, align 8, !tbaa !86
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !58
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.471, i64 %i.ew ; 3 uses
  %.not = icmp ugt ptr %i.ex, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.val15.i = phi i32 [ %.val9.i6491, %.preheader ], [ %i.et, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.ex, %.lr.ph ] ; 2 uses
  %i.ey = icmp ult ptr %.4.lcssa, %2
  br i1 %i.ey, label %bb.j, label %HUF_decodeLastSymbolX4.exit

bb.j:                                             ; preds = %._crit_edge
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !85
  %i.ez = and i32 %.val15.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %.val.i67, %i.fa
  %i.fc = lshr i64 %i.fb, %i.g
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 2
  store i8 %i.fe, ptr %.4.lcssa, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !58
  %i.fh = icmp eq i8 %i.fg, 1
  br i1 %i.fh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !57
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !86
  %i.fm = add i32 %i.fl, %i.fk
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 64
  br i1 %i.fo, label %bb.m, label %HUF_decodeLastSymbolX4.exit

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !57
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
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }

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
!13 = !{!14, !9, i64 10288}
!14 = !{!"ZSTDv04_Dctx_s", !6, i64 0, !6, i64 4100, !6, i64 6152, !15, i64 10256, !15, i64 10264, !15, i64 10272, !15, i64 10280, !9, i64 10288, !9, i64 10296, !16, i64 10304, !5, i64 10336, !5, i64 10340, !17, i64 10344, !9, i64 10352, !6, i64 10360, !6, i64 141440}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!14, !5, i64 10340}
!19 = !{!14, !15, i64 10280}
!20 = !{!14, !15, i64 10264}
!21 = !{!14, !15, i64 10272}
!22 = !{!14, !9, i64 10296}
!23 = !{!16, !5, i64 8}
!24 = !{!14, !15, i64 10256}
!25 = !{!14, !5, i64 10336}
!26 = !{!27, !28, i64 0}
!27 = !{!"ZBUFFv04_DCtx_s", !28, i64 0, !16, i64 8, !17, i64 40, !9, i64 48, !9, i64 56, !17, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !17, i64 104, !9, i64 112, !5, i64 120, !6, i64 124}
!28 = !{!"p1 _ZTS14ZSTDv04_Dctx_s", !15, i64 0}
!29 = !{!27, !17, i64 40}
!30 = !{!27, !17, i64 64}
!31 = !{!27, !5, i64 120}
!32 = !{!27, !9, i64 112}
!33 = !{!27, !9, i64 56}
!34 = !{!27, !17, i64 104}
!35 = !{!27, !9, i64 88}
!36 = !{!27, !9, i64 80}
!37 = !{!27, !5, i64 16}
!38 = !{!27, !9, i64 96}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!27, !9, i64 48}
!42 = !{!27, !9, i64 72}
!43 = !{!44, !5, i64 0}
!44 = !{!"", !5, i64 0, !5, i64 4}
!45 = !{!44, !5, i64 4}
!46 = !{!15, !15, i64 0}
!47 = distinct !{null, null, null}
!48 = !{!14, !17, i64 10344}
!49 = !{!14, !9, i64 10352}
!50 = !{!5, !5, i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"", !53, i64 0, !53, i64 2}
!53 = !{!"short", !6, i64 0}
!54 = !{!52, !53, i64 2}
!55 = !{!56, !53, i64 0}
!56 = !{!"", !53, i64 0, !6, i64 2, !6, i64 3}
!57 = !{!56, !6, i64 2}
!58 = !{!56, !6, i64 3}
!59 = distinct !{!59, !40}
!60 = !{!53, !53, i64 0}
!61 = distinct !{!61, !40, !62, !63}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = distinct !{!64, !40, !62}
!65 = distinct !{!65, !40, !62, !63}
!66 = !{!"branch_weights", i32 4, i32 28}
!67 = distinct !{!67, !40, !62, !63}
!68 = distinct !{!68, !40, !62}
!69 = distinct !{!69, !40, !62, !63}
!70 = distinct !{!70, !40, !62}
!71 = distinct !{!71, !40, !62, !63}
!72 = distinct !{!72, !40, !62, !63}
!73 = distinct !{!73, !40, !62}
!74 = distinct !{!74, !40, !62, !63}
!75 = distinct !{!75, !40, !62}
!76 = distinct !{!76, !40}
!77 = distinct !{!77, !40, !62, !63}
!78 = !{!"branch_weights", i32 4, i32 12}
!79 = distinct !{!79, !40, !62, !63}
!80 = distinct !{!80, !40, !63, !62}
!81 = distinct !{!81, !40}
!82 = !{!83, !17, i64 24}
!83 = !{!"", !9, i64 0, !5, i64 8, !17, i64 16, !17, i64 24}
!84 = !{!83, !17, i64 16}
!85 = !{!83, !9, i64 0}
!86 = !{!83, !5, i64 8}
!87 = !{!88, !6, i64 0}
!88 = !{!"", !6, i64 0, !6, i64 1}
!89 = !{!88, !6, i64 1}
!90 = distinct !{!90, !40}
!91 = !{!17, !17, i64 0}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40}
!98 = distinct !{!98, !40, !62, !63}
!99 = distinct !{!99, !95}
!100 = distinct !{!100, !40, !62}
!101 = distinct !{!101, !40}
!102 = distinct !{!102, !40, !62, !63}
!103 = distinct !{!103, !40, !63, !62}
!104 = distinct !{!104, !40, !62, !63}
!105 = distinct !{!105, !40, !62}
!106 = distinct !{!106, !40}
!107 = distinct !{!107, !40, !62, !63}
!108 = distinct !{!108, !40, !63, !62}
!109 = distinct !{!109, !40}
!110 = distinct !{!110, !40}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!115}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !40, !62, !63}
!117 = distinct !{!117, !40, !62, !63}
!118 = distinct !{!118, !40, !62}
!119 = distinct !{!119, !40}
!120 = distinct !{!120, !40}
!121 = distinct !{!121, !40}
!122 = distinct !{!122, !40}
!123 = distinct !{!123, !40}
!124 = distinct !{!124, !40}
!125 = distinct !{!125, !40}
!126 = distinct !{!126, !40}
!127 = distinct !{!127, !40}
!128 = distinct !{!128, !40}
!129 = distinct !{!129, !40}
!130 = distinct !{!130, !40}
!131 = distinct !{!131, !40}
!132 = distinct !{!132, !40}
!133 = distinct !{!133, !40}
!134 = distinct !{!134, !40}
!135 = distinct !{!135, !40}
end_hunk_1
