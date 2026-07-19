inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@HUF_decompress4X4:bb.a
bb.bb:                                            ; preds = %BIT_reloadDStream.exit216.i
  %.not.i217.i = icmp ult ptr %i.qb, %i.pv
  br i1 %.not.i217.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.aam = lshr i32 %i.yb, 3
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = sub nsw i64 0, %i.aan
  %i.aap = getelementptr inbounds i8, ptr %i.qb, i64 %i.aao ; 2 uses
  %i.aaq = and i32 %i.yb, 7
  %.val30.i218.i = load i64, ptr %i.aap, align 1
  br label %BIT_reloadDStream.exit225.i

bb.bd:                                            ; preds = %bb.bb
  %i.aar = icmp eq ptr %i.qb, %i.pu
  br i1 %i.aar, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.not29.i223.i = icmp eq i32 %i.yb, 64
  %..i224.i = select i1 %.not29.i223.i, i32 2, i32 1
  br label %BIT_reloadDStream.exit225.i

bb.bf:                                            ; preds = %bb.bd
  %i.aas = lshr i32 %i.yb, 3                      ; 2 uses
  %i.aat = zext nneg i32 %i.aas to i64
  %i.aau = sub nsw i64 0, %i.aat
  %i.aav = getelementptr inbounds i8, ptr %i.qb, i64 %i.aau
  %i.aaw = icmp ult ptr %i.aav, %i.pu             ; 2 uses
  %i.aax = ptrtoint ptr %i.qb to i64
  %i.aay = sub i64 %i.aax, %i.pw
  %i.aaz = trunc i64 %i.aay to i32
  %.024.i220.i = select i1 %i.aaw, i32 %i.aaz, i32 %i.aas ; 2 uses
  %.0.i221.i = zext i1 %i.aaw to i32
  %i.aba = zext i32 %.024.i220.i to i64
  %i.abb = sub nsw i64 0, %i.aba
  %i.abc = getelementptr inbounds i8, ptr %i.qb, i64 %i.abb ; 2 uses
  %i.abd = shl i32 %.024.i220.i, 3
  %i.abe = sub i32 %i.yb, %i.abd
  %.val.i222.i = load i64, ptr %i.abc, align 1
  br label %BIT_reloadDStream.exit225.i

BIT_reloadDStream.exit225.i:                      ; preds = %bb.bf, %bb.be, %bb.bc, %BIT_reloadDStream.exit216.i
  %i.abf = phi ptr [ %i.abc, %bb.bf ], [ %i.aap, %bb.bc ], [ %i.qb, %bb.be ], [ %i.qb, %BIT_reloadDStream.exit216.i ] ; 2 uses
  %.val9.i180297.i = phi i32 [ %i.abe, %bb.bf ], [ %i.aaq, %bb.bc ], [ %i.yb, %bb.be ], [ %i.yb, %BIT_reloadDStream.exit216.i ] ; 2 uses
  %.val.i222270.i = phi i64 [ %.val.i222.i, %bb.bf ], [ %.val30.i218.i, %bb.bc ], [ %.val.i222271276.i, %bb.be ], [ %.val.i222271276.i, %BIT_reloadDStream.exit216.i ] ; 2 uses
  %.025.i219.i = phi i32 [ %.0.i221.i, %bb.bf ], [ 0, %bb.bc ], [ %..i224.i, %bb.be ], [ 3, %BIT_reloadDStream.exit216.i ]
  %i.abg = or i32 %i.aak, %.025.i219.i
  %i.abh = icmp ugt i32 %i.yp, 64
  br i1 %i.abh, label %BIT_reloadDStream.exit234.i, label %bb.bg

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
  %i.g = zext i8 %i.f to i64                      ; 12 uses
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
  %i.n = add nsw i64 %i.g, -127                   ; 4 uses
  %i.o = add nsw i64 %i.g, -126
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %.not83 = icmp ult i64 %i.p, %5
  br i1 %.not83, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %6 = trunc nuw nsw i64 %i.n to i32              ; 3 uses
  %umax76 = tail call i32 @llvm.umax.i32(i32 %6, i32 2)
  %7 = add nsw i32 %umax76, -1
  %8 = lshr i32 %7, 1
  %narrow = add nuw i32 %8, 1
  %9 = zext i32 %narrow to i64                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.n, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i32 @llvm.umax.i32(i32 %6, i32 2)
  %10 = add nsw i32 %umax, -1
  %11 = lshr i32 %10, 1
  %12 = zext nneg i32 %11 to i64                  ; 2 uses
  %13 = shl nuw nsw i64 %12, 1
  %i.r = getelementptr i8, ptr %0, i64 %13
  %scevgep = getelementptr i8, ptr %i.r, i64 2
  %i.s = getelementptr i8, ptr %4, i64 %12
  %scevgep75 = getelementptr i8, ptr %i.s, i64 2
  %bound0 = icmp ult ptr %0, %scevgep75
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.n, 31
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %9, 12
  %n.vec = and i64 %9, 4294967280                 ; 4 uses
  %i.t = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = shl i64 %index, 1                        ; 2 uses
  %i.v = and i64 %index, 9223372036854775792
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.w, align 1, !tbaa !9, !alias.scope !90
  %wide.load78 = load <8 x i8>, ptr %i.x, align 1, !tbaa !9, !alias.scope !90
  %i.y = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.z = lshr <8 x i8> %wide.load78, splat (i8 4)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load79 = load <8 x i8>, ptr %i.w, align 1, !tbaa !9, !alias.scope !90
  %wide.load80 = load <8 x i8>, ptr %i.x, align 1, !tbaa !9, !alias.scope !90
  %i.ad = and <8 x i8> %wide.load79, splat (i8 15)
  %i.ae = and <8 x i8> %wide.load80, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.y, <8 x i8> %i.ad, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.aa, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %interleaved.vec81 = shufflevector <8 x i8> %i.z, <8 x i8> %i.ae, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec81, ptr %i.ac, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %9
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %9, 4294967292               ; 3 uses
  %i.ag = shl nuw nsw i64 %n.vec83, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = shl i64 %index84, 1
  %i.ai = and i64 %index84, 9223372036854775804
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ai
  %wide.load85 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !9, !alias.scope !90 ; 2 uses
  %i.ak = lshr <4 x i8> %wide.load85, splat (i8 4)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.am = and <4 x i8> %wide.load85, splat (i8 15)
  %interleaved.vec87 = shufflevector <4 x i8> %i.ak, <4 x i8> %i.am, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec87, ptr %i.al, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %index.next88 = add nuw i64 %index84, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %n.vec83, %9
  br i1 %cmp.n89, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ao = lshr exact i64 %indvars.iv, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = lshr i8 %i.aq, 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !9
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.au = and i8 %i.at, 15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !9
  %indvars.iv.next = add nuw i64 %indvars.iv, 2   ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.ax = icmp ugt i32 %6, %indvars
  br i1 %i.ax, label %.lr.ph, label %.loopexit.thread, !llvm.loop !97

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph166.preheader

bb.f:                                             ; preds = %bb.b
  %.not81 = icmp ugt i64 %5, %i.g
  br i1 %.not81, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 255, ptr %i.e, align 4, !tbaa !3
  %i.az = icmp samesign ult i8 %i.f, 2
  br i1 %i.az, label %FSE_decompress.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = call fastcc i64 @FSE_readNCount(ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull %i.ay, i64 noundef range(i64 0, 128) %i.g) ; 5 uses
  %i.bb = icmp ult i64 %i.ba, -119
  br i1 %i.bb, label %bb.i, label %FSE_decompress.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not21.i = icmp ult i64 %i.ba, %i.g
  br i1 %.not21.i, label %bb.j, label %FSE_decompress.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bc = load i32, ptr %i.e, align 4, !tbaa !3   ; 3 uses
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !3   ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 19 uses
  %i.bf = shl nuw i32 1, %i.bd                    ; 5 uses
  %i.bg = add i32 %i.bf, -1                       ; 5 uses
  %i.bh = lshr i32 %i.bf, 1
  %i.bi = lshr i32 %i.bf, 3
  %i.bj = add nuw nsw i32 %i.bi, 3
  %i.bk = add nuw nsw i32 %i.bj, %i.bh            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bl = icmp ugt i32 %i.bc, 255
  br i1 %i.bl, label %FSE_buildDTable.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = icmp ugt i32 %i.bd, 12
  br i1 %i.bm, label %FSE_buildDTable.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %sext.i.i = shl nuw nsw i32 32768, %i.bd
  %i.bn = lshr exact i32 %sext.i.i, 16            ; 3 uses
  %i.bo = add nuw nsw i32 %i.bc, 1                ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bo to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.bp = icmp eq i32 %i.bc, 0
  br i1 %i.bp, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %wide.trip.count.i.i, 510
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.s ] ; 5 uses
  %.06782.i.i = phi i16 [ 1, %.new ], [ %.269.i.i.1, %bb.s ] ; 2 uses
  %.07081.i.i = phi i32 [ %i.bg, %.new ], [ %.171.i.i.1, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !37 ; 3 uses
  %i.bs = icmp eq i16 %i.br, -1
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = trunc i64 %indvars.iv.i.i to i8
  %i.bu = add i32 %.07081.i.i, -1
  %i.bv = zext i32 %.07081.i.i to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i8 %i.bt, ptr %i.bx, align 2, !tbaa !33
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.by = sext i16 %i.br to i32
  %.not78.i.i = icmp sgt i32 %i.bn, %i.by
  %spec.select.i.i = select i1 %.not78.i.i, i16 %.06782.i.i, i16 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i.i = phi i16 [ 1, %bb.n ], [ %i.br, %bb.o ]
  %.171.i.i = phi i32 [ %i.bu, %bb.n ], [ %.07081.i.i, %bb.o ] ; 3 uses
  %.269.i.i = phi i16 [ %.06782.i.i, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i16 %.sink.i.i, ptr %i.bz, align 4, !tbaa !37
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !37 ; 3 uses
  %i.cc = icmp eq i16 %i.cb, -1
  br i1 %i.cc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = sext i16 %i.cb to i32
  %.not78.i.i.1 = icmp sgt i32 %i.bn, %i.cd
  %spec.select.i.i.1 = select i1 %.not78.i.i.1, i16 %.269.i.i, i16 0
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ce = trunc i64 %indvars.iv.next.i.i to i8
  %i.cf = add i32 %.171.i.i, -1
  %i.cg = zext i32 %.171.i.i to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i8 %i.ce, ptr %i.ci, align 2, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i.1 = phi i16 [ 1, %bb.r ], [ %i.cb, %bb.q ]
  %.171.i.i.1 = phi i32 [ %i.cf, %bb.r ], [ %.171.i.i, %bb.q ] ; 3 uses
  %.269.i.i.1 = phi i16 [ %.269.i.i, %bb.r ], [ %spec.select.i.i.1, %bb.q ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i16 %.sink.i.i.1, ptr %i.cj, align 2, !tbaa !37
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
  %.07081.i.i.epil.init = phi i32 [ %i.bg, %bb.l ], [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod167 = trunc i32 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil.init
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !37 ; 3 uses
  %i.cm = icmp eq i16 %i.cl, -1
  br i1 %i.cm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.cn = sext i16 %i.cl to i32
  %.not78.i.i.epil = icmp sgt i32 %i.bn, %i.cn
  %spec.select.i.i.epil = select i1 %.not78.i.i.epil, i16 %.06782.i.i.epil.init, i16 0
  br label %.preheader79.i.i.preheader.epilog-lcssa

bb.u:                                             ; preds = %.epil.preheader
  %i.co = trunc i64 %indvars.iv.i.i.epil.init to i8
  %i.cp = add i32 %.07081.i.i.epil.init, -1
  %i.cq = zext i32 %.07081.i.i.epil.init to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 %i.co, ptr %i.cs, align 2, !tbaa !33
  br label %.preheader79.i.i.preheader.epilog-lcssa

.preheader79.i.i.preheader.epilog-lcssa:          ; preds = %bb.u, %bb.t
  %.sink.i.i.epil = phi i16 [ 1, %bb.u ], [ %i.cl, %bb.t ]
  %.171.i.i.epil = phi i32 [ %i.cp, %bb.u ], [ %.07081.i.i.epil.init, %bb.t ]
  %.269.i.i.epil = phi i16 [ %.06782.i.i.epil.init, %bb.u ], [ %spec.select.i.i.epil, %bb.t ]
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.epil.init
  store i16 %.sink.i.i.epil, ptr %i.ct, align 2, !tbaa !37
  br label %.preheader79.i.i.preheader

.preheader79.i.i.preheader:                       ; preds = %.preheader79.i.i.preheader.unr-lcssa, %.preheader79.i.i.preheader.epilog-lcssa
  %.171.i.i.lcssa = phi i32 [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.171.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.269.i.i.lcssa = phi i16 [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.269.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 2 uses
  br label %.preheader79.i.i

.preheader79.i.i:                                 ; preds = %.preheader79.i.i.preheader, %._crit_edge.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %.06287.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv90.i.i
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !37 ; 5 uses
  %i.cw = icmp sgt i16 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader79.i.i
  %i.cx = trunc i64 %indvars.iv90.i.i to i8       ; 3 uses
  %i.cy = icmp eq i16 %i.cv, 1
  br i1 %i.cy, label %.epil.preheader168, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %i.cz = and i16 %i.cv, 32766
  %unroll_iter173 = zext nneg i16 %i.cz to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.new
  %.185.i.i = phi i32 [ %.06287.i.i, %.lr.ph.i.i.new ], [ %.2.i.i.1, %bb.z ] ; 2 uses
  %niter174 = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter174.next.1, %bb.z ]
  %i.da = zext nneg i32 %.185.i.i to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i8 %i.cx, ptr %i.dc, align 2, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.1.pn.i.i = phi i32 [ %.185.i.i, %bb.v ], [ %.2.i.i, %bb.w ]
  %.pn.i.i = add nuw i32 %i.bk, %.1.pn.i.i
  %.2.i.i = and i32 %.pn.i.i, %i.bg               ; 4 uses
  %i.dd = icmp ugt i32 %.2.i.i, %.171.i.i.lcssa
  br i1 %i.dd, label %bb.w, label %bb.x, !llvm.loop !39

end_hunk_0
