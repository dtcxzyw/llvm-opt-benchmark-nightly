Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_read_opts:bb.a
  %i.bcp = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bco
  store i64 %i.bcl, ptr %i.bcp, align 8, !tbaa !106
  %i.bcq = add nsw i64 %indvars.iv7079, -2        ; 2 uses
  %i.bcr = getelementptr [8 x i8], ptr %7, i64 %i.bcj
  %i.bcs = load i64, ptr %i.bcr, align 8, !tbaa !106
  %i.bct = trunc nuw i64 %i.bcj to i32
  %i.bcu = add i32 %i.baz, %i.bct
  %i.bcv = zext i32 %i.bcu to i64
  %i.bcw = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bcv
  store i64 %i.bcs, ptr %i.bcw, align 8, !tbaa !106
  %i.bcx = add nsw i64 %indvars.iv7079, -3        ; 2 uses
  %i.bcy = getelementptr [8 x i8], ptr %7, i64 %i.bcq
  %i.bcz = load i64, ptr %i.bcy, align 8, !tbaa !106
  %i.bda = trunc nuw i64 %i.bcq to i32
  %i.bdb = add i32 %i.baz, %i.bda
  %i.bdc = zext i32 %i.bdb to i64
  %i.bdd = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bdc
  store i64 %i.bcz, ptr %i.bdd, align 8, !tbaa !106
  %i.bde = add nsw i64 %indvars.iv7079, -4        ; 2 uses
  %i.bdf = getelementptr [8 x i8], ptr %7, i64 %i.bcx
  %i.bdg = load i64, ptr %i.bdf, align 8, !tbaa !106
  %i.bdh = trunc nuw i64 %i.bcx to i32
  %i.bdi = add i32 %i.baz, %i.bdh
  %i.bdj = zext i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bdj
  store i64 %i.bdg, ptr %i.bdk, align 8, !tbaa !106
  %.not46.i1562.wide.3 = icmp eq i64 %i.bde, 0
  br i1 %.not46.i1562.wide.3, label %._crit_edge5926, label %scalar.ph10091, !llvm.loop !203

._crit_edge5926:                                  ; preds = %scalar.ph10091.prol.loopexit, %scalar.ph10091, %middle.block10100, %.preheader5052
  %i.bdl = add i32 %i.baw, %i.bav
  store i32 %i.bdl, ptr %7, align 8, !tbaa !131
  %.not47.i15645927 = icmp eq i32 %i.bav, 0
  br i1 %.not47.i15645927, label %bigint_mul_pow2.exit1556, label %.lr.ph5930

.lr.ph5930:                                       ; preds = %._crit_edge5926
  %i.bdm = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bigint_mul_pow2.exit1556.sink.split

bb.je:                                            ; preds = %bb.jd
  %i.bdn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  %i.bdo = zext i32 %i.baw to i64                 ; 10 uses
  %i.bdp = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bdo
  store i64 0, ptr %i.bdp, align 8, !tbaa !106
  %.not.i15585914 = icmp eq i32 %i.baw, 0
  %.pre7700 = zext nneg i32 %i.bau to i64         ; 5 uses
  br i1 %.not.i15585914, label %._crit_edge5918, label %.lr.ph5917

.lr.ph5917:                                       ; preds = %bb.je
  %i.bdq = sub nuw nsw i32 64, %i.bau
  %i.bdr = zext nneg i32 %i.bdq to i64            ; 4 uses
  %min.iters.check10071 = icmp ult i32 %i.baw, 20
  br i1 %min.iters.check10071, label %scalar.ph10070.preheader, label %vector.scevcheck10065

vector.scevcheck10065:                            ; preds = %.lr.ph5917
  %i.bds = add nsw i64 %i.bdo, -1                 ; 2 uses
  %i.bdt = add i32 %i.baw, %i.bav
  %i.bdu = trunc i64 %i.bds to i32
  %i.bdv = icmp ult i32 %i.bdt, %i.bdu
  %i.bdw = icmp ugt i64 %i.bds, 4294967295
  %i.bdx = or i1 %i.bdv, %i.bdw
  br i1 %i.bdx, label %scalar.ph10070.preheader, label %vector.memcheck10066

vector.memcheck10066:                             ; preds = %vector.scevcheck10065
  %i.bdy = shl nuw nsw i64 %i.bdo, 3              ; 2 uses
  %i.bdz = add i32 %i.baw, %i.bav
  %i.bea = zext i32 %i.bdz to i64
  %i.beb = shl nuw nsw i64 %i.bea, 3              ; 2 uses
  %i.bec = sub nsw i64 %i.beb, %i.bdy
  %diff.check10067 = icmp ugt i64 %i.bec, -32
  %i.bed = sub nsw i64 %i.bdy, %i.beb
  %i.bee = add nsw i64 %i.bed, -9
  %diff.check10068 = icmp ult i64 %i.bee, 31
  %conflict.rdx10069 = or i1 %diff.check10067, %diff.check10068
  br i1 %conflict.rdx10069, label %scalar.ph10070.preheader, label %vector.ph10072

vector.ph10072:                                   ; preds = %vector.memcheck10066
  %n.vec10073 = and i64 %i.bdo, 4294967292        ; 2 uses
  %i.bef = and i64 %i.bdo, 3
  %broadcast.splatinsert10074 = insertelement <2 x i64> poison, i64 %i.bdr, i64 0
  %broadcast.splat10075 = shufflevector <2 x i64> %broadcast.splatinsert10074, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10076 = insertelement <2 x i64> poison, i64 %.pre7700, i64 0
  %broadcast.splat10077 = shufflevector <2 x i64> %broadcast.splatinsert10076, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10078

vector.body10078:                                 ; preds = %vector.body10078, %vector.ph10072
  %index10079 = phi i64 [ 0, %vector.ph10072 ], [ %index.next10084, %vector.body10078 ] ; 2 uses
  %i.beg = sub i64 %i.bdo, %index10079            ; 3 uses
  %i.beh = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.beg ; 2 uses
  %i.bei = getelementptr inbounds i8, ptr %i.beh, i64 -8
  %i.bej = getelementptr inbounds i8, ptr %i.beh, i64 -24
  %wide.load10080 = load <2 x i64>, ptr %i.bei, align 8, !tbaa !106
  %wide.load10081 = load <2 x i64>, ptr %i.bej, align 8, !tbaa !106
  %i.bek = shl <2 x i64> %wide.load10080, %broadcast.splat10077
  %i.bel = shl <2 x i64> %wide.load10081, %broadcast.splat10077
  %i.bem = getelementptr [8 x i8], ptr %7, i64 %i.beg ; 2 uses
  %i.ben = getelementptr i8, ptr %i.bem, i64 -8
  %i.beo = getelementptr i8, ptr %i.bem, i64 -24
  %wide.load10082 = load <2 x i64>, ptr %i.ben, align 8, !tbaa !106
  %wide.load10083 = load <2 x i64>, ptr %i.beo, align 8, !tbaa !106
  %i.bep = lshr <2 x i64> %wide.load10082, %broadcast.splat10075
  %i.beq = lshr <2 x i64> %wide.load10083, %broadcast.splat10075
  %i.ber = or <2 x i64> %i.bep, %i.bek
  %i.bes = or <2 x i64> %i.beq, %i.bel
  %i.bet = trunc nuw i64 %i.beg to i32
  %i.beu = add i32 %i.bav, %i.bet
  %i.bev = zext i32 %i.beu to i64
  %i.bew = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bev ; 2 uses
  %i.bex = getelementptr inbounds i8, ptr %i.bew, i64 -8
  %i.bey = getelementptr inbounds i8, ptr %i.bew, i64 -24
  store <2 x i64> %i.ber, ptr %i.bex, align 8, !tbaa !106
  store <2 x i64> %i.bes, ptr %i.bey, align 8, !tbaa !106
  %index.next10084 = add nuw i64 %index10079, 4   ; 2 uses
  %i.bez = icmp eq i64 %index.next10084, %n.vec10073
  br i1 %i.bez, label %middle.block10085, label %vector.body10078, !llvm.loop !204

middle.block10085:                                ; preds = %vector.body10078
  %cmp.n10086 = icmp eq i64 %n.vec10073, %i.bdo
  br i1 %cmp.n10086, label %._crit_edge5918, label %scalar.ph10070.preheader

scalar.ph10070.preheader:                         ; preds = %vector.memcheck10066, %vector.scevcheck10065, %.lr.ph5917, %middle.block10085
  %indvars.iv7074.ph = phi i64 [ %i.bdo, %vector.memcheck10066 ], [ %i.bdo, %vector.scevcheck10065 ], [ %i.bdo, %.lr.ph5917 ], [ %i.bef, %middle.block10085 ] ; 7 uses
  %xtraiter11103 = and i64 %indvars.iv7074.ph, 1
  %lcmp.mod11104.not = icmp eq i64 %xtraiter11103, 0
  br i1 %lcmp.mod11104.not, label %scalar.ph10070.prol.loopexit, label %scalar.ph10070.prol

scalar.ph10070.prol:                              ; preds = %scalar.ph10070.preheader
  %i.bfa = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %indvars.iv7074.ph
  %i.bfb = load i64, ptr %i.bfa, align 8, !tbaa !106
  %i.bfc = shl i64 %i.bfb, %.pre7700
  %i.bfd = add nsw i64 %indvars.iv7074.ph, -1
  %i.bfe = getelementptr [8 x i8], ptr %7, i64 %indvars.iv7074.ph
  %i.bff = load i64, ptr %i.bfe, align 8, !tbaa !106
  %i.bfg = lshr i64 %i.bff, %i.bdr
  %i.bfh = or i64 %i.bfg, %i.bfc
  %i.bfi = trunc nuw i64 %indvars.iv7074.ph to i32
  %i.bfj = add i32 %i.bav, %i.bfi
  %i.bfk = zext i32 %i.bfj to i64
  %i.bfl = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bfk
  store i64 %i.bfh, ptr %i.bfl, align 8, !tbaa !106
  br label %scalar.ph10070.prol.loopexit

scalar.ph10070.prol.loopexit:                     ; preds = %scalar.ph10070.prol, %scalar.ph10070.preheader
  %indvars.iv7074.unr = phi i64 [ %indvars.iv7074.ph, %scalar.ph10070.preheader ], [ %i.bfd, %scalar.ph10070.prol ]
  %i.bfm = icmp eq i64 %indvars.iv7074.ph, 1
  br i1 %i.bfm, label %._crit_edge5918, label %scalar.ph10070

scalar.ph10070:                                   ; preds = %scalar.ph10070.prol.loopexit, %scalar.ph10070
  %indvars.iv7074 = phi i64 [ %i.bgc, %scalar.ph10070 ], [ %indvars.iv7074.unr, %scalar.ph10070.prol.loopexit ] ; 6 uses
  %i.bfn = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %indvars.iv7074
  %i.bfo = load i64, ptr %i.bfn, align 8, !tbaa !106
  %i.bfp = shl i64 %i.bfo, %.pre7700
  %i.bfq = add nsw i64 %indvars.iv7074, -1        ; 2 uses
  %i.bfr = getelementptr [8 x i8], ptr %7, i64 %indvars.iv7074
  %i.bfs = load i64, ptr %i.bfr, align 8, !tbaa !106
  %i.bft = lshr i64 %i.bfs, %i.bdr
  %i.bfu = or i64 %i.bft, %i.bfp
  %i.bfv = trunc nuw i64 %indvars.iv7074 to i32
  %i.bfw = add i32 %i.bav, %i.bfv
  %i.bfx = zext i32 %i.bfw to i64
  %i.bfy = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bfx
  store i64 %i.bfu, ptr %i.bfy, align 8, !tbaa !106
  %i.bfz = getelementptr [8 x i8], ptr %7, i64 %indvars.iv7074
  %i.bga = load i64, ptr %i.bfz, align 8, !tbaa !106
  %i.bgb = shl i64 %i.bga, %.pre7700
  %i.bgc = add nsw i64 %indvars.iv7074, -2        ; 2 uses
  %i.bgd = getelementptr [8 x i8], ptr %7, i64 %i.bfq
  %i.bge = load i64, ptr %i.bgd, align 8, !tbaa !106
  %i.bgf = lshr i64 %i.bge, %i.bdr
  %i.bgg = or i64 %i.bgf, %i.bgb
  %i.bgh = trunc nuw i64 %i.bfq to i32
  %i.bgi = add i32 %i.bav, %i.bgh
  %i.bgj = zext i32 %i.bgi to i64
  %i.bgk = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bgj
  store i64 %i.bgg, ptr %i.bgk, align 8, !tbaa !106
  %.not.i1558.wide.1 = icmp eq i64 %i.bgc, 0
  br i1 %.not.i1558.wide.1, label %._crit_edge5918, label %scalar.ph10070, !llvm.loop !205

._crit_edge5918:                                  ; preds = %scalar.ph10070.prol.loopexit, %scalar.ph10070, %middle.block10085, %bb.je
  %i.bgl = load i64, ptr %i.bdn, align 8, !tbaa !106
  %i.bgm = shl i64 %i.bgl, %.pre7700
  %i.bgn = zext nneg i32 %i.bav to i64
  %i.bgo = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bgn
  store i64 %i.bgm, ptr %i.bgo, align 8, !tbaa !106
  %i.bgp = add i32 %i.baw, %i.bav                 ; 2 uses
  %i.bgq = zext i32 %i.bgp to i64
  %i.bgr = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bgq
  %i.bgs = load i64, ptr %i.bgr, align 8, !tbaa !106
  %i.bgt = icmp ne i64 %i.bgs, 0
  %i.bgu = zext i1 %i.bgt to i32
  %i.bgv = add i32 %i.bgp, %i.bgu
  store i32 %i.bgv, ptr %7, align 8, !tbaa !131
  %.not45.i15605919 = icmp eq i32 %i.bav, 0
  br i1 %.not45.i15605919, label %bigint_mul_pow2.exit1556, label %bigint_mul_pow2.exit1556.sink.split

bigint_mul_pow2.exit1556.sink.split:              ; preds = %._crit_edge5918, %._crit_edge5935, %.lr.ph5947.preheader, %.lr.ph5930
  %.sink9041 = phi i32 [ %i.auw, %._crit_edge5935 ], [ %i.bav, %.lr.ph5930 ], [ %i.auw, %.lr.ph5947.preheader ], [ %i.bav, %._crit_edge5918 ]
  %.sink9036 = phi ptr [ %i.anv, %._crit_edge5935 ], [ %i.bdm, %.lr.ph5930 ], [ %i.anv, %.lr.ph5947.preheader ], [ %i.bdn, %._crit_edge5918 ]
  %.ph9035 = phi i32 [ %i.bas, %._crit_edge5935 ], [ %i.aut, %.lr.ph5930 ], [ %i.axk, %.lr.ph5947.preheader ], [ %i.aut, %._crit_edge5918 ]
  %i.bgw = add nsw i32 %.sink9041, -1
  %i.bgx = zext nneg i32 %i.bgw to i64
  %i.bgy = shl nuw nsw i64 %i.bgx, 3
  %i.bgz = add nuw nsw i64 %i.bgy, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink9036, i8 0, i64 %i.bgz, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit1556

bigint_mul_pow2.exit1556:                         ; preds = %bigint_mul_pow2.exit1556.sink.split, %._crit_edge5918, %._crit_edge5926, %._crit_edge5935
  %i.bha = phi i32 [ %i.bas, %._crit_edge5935 ], [ %i.aut, %._crit_edge5918 ], [ %i.aut, %._crit_edge5926 ], [ %.ph9035, %bigint_mul_pow2.exit1556.sink.split ] ; 2 uses
  %i.bhb = load i32, ptr %7, align 8, !tbaa !131  ; 4 uses
  %i.bhc = icmp ult i32 %i.bhb, %i.bha
  br i1 %i.bhc, label %bigint_cmp.exit1613.thread, label %bb.jf

bb.jf:                                            ; preds = %bigint_mul_pow2.exit1556
  %i.bhd = icmp ugt i32 %i.bhb, %i.bha
  br i1 %i.bhd, label %bigint_cmp.exit1613.thread, label %.preheader5048

.preheader5048:                                   ; preds = %bb.jf
  %.not.i16079954 = icmp eq i32 %i.bhb, 0
  br i1 %.not.i16079954, label %bigint_cmp.exit1613.thread4170, label %.lr.ph9957

.lr.ph9957:                                       ; preds = %.preheader5048
  %i.bhe = zext i32 %i.bhb to i64
  br label %bb.jh

bb.jg:                                            ; preds = %bb.jh
  %i.bhf = add nsw i64 %indvars.iv70929955, -1    ; 2 uses
  %.not.i1607 = icmp eq i64 %i.bhf, 0
  br i1 %.not.i1607, label %bigint_cmp.exit1613.thread4170, label %bb.jh, !llvm.loop !16

bb.jh:                                            ; preds = %.lr.ph9957, %bb.jg
  %.016.i16059956 = phi i32 [ undef, %.lr.ph9957 ], [ %.1.i1610, %bb.jg ]
  %indvars.iv70929955 = phi i64 [ %i.bhe, %.lr.ph9957 ], [ %i.bhf, %bb.jg ] ; 3 uses
  %i.bhg = getelementptr [8 x i8], ptr %7, i64 %indvars.iv70929955
  %i.bhh = load i64, ptr %i.bhg, align 8, !tbaa !106 ; 3 uses
  %i.bhi = getelementptr [8 x i8], ptr %8, i64 %indvars.iv70929955
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !106 ; 3 uses
  %.not4913 = icmp ult i64 %i.bhh, %i.bhj
  %.not4914 = icmp ugt i64 %i.bhh, %i.bhj
  %..016.i1608 = select i1 %.not4914, i32 1, i32 %.016.i16059956
  %.1.i1610 = select i1 %.not4913, i32 -1, i32 %..016.i1608 ; 3 uses
  %cond.i1611 = icmp eq i64 %i.bhh, %i.bhj
  br i1 %cond.i1611, label %bb.jg, label %bigint_cmp.exit1613, !llvm.loop !16

bigint_cmp.exit1613:                              ; preds = %bb.jh
  %.not989.i561 = icmp eq i32 %.1.i1610, 0
  br i1 %.not989.i561, label %bigint_cmp.exit1613.thread4170, label %bigint_cmp.exit1613.thread, !prof !125

bigint_cmp.exit1613.thread:                       ; preds = %bigint_mul_pow2.exit1556, %bb.jf, %bigint_cmp.exit1613
  %.2.i16124169 = phi i32 [ %.1.i1610, %bigint_cmp.exit1613 ], [ -1, %bigint_mul_pow2.exit1556 ], [ 1, %bb.jf ]
  %i.bhk = icmp sgt i32 %.2.i16124169, 0
  %i.bhl = zext i1 %i.bhk to i64
  br label %bb.ji

bigint_cmp.exit1613.thread4170:                   ; preds = %bb.jg, %.preheader5048, %bigint_cmp.exit1613
  %i.bhm = and i64 %.0.i1505.ph, 1
  br label %bb.ji

bb.ji:                                            ; preds = %bigint_cmp.exit1613.thread4170, %bigint_cmp.exit1613.thread
  %.pn.i562 = phi i64 [ %i.bhl, %bigint_cmp.exit1613.thread ], [ %i.bhm, %bigint_cmp.exit1613.thread4170 ]
  %.0895.i563 = add nuw nsw i64 %.pn.i562, %.0.i1505.ph ; 2 uses
  %i.bhn = icmp eq i64 %.0895.i563, 9218868437227405312
  br i1 %i.bhn, label %bb.jj, label %bb.jo, !prof !45

bb.jj:                                            ; preds = %bb.ji
  %i.bho = and i32 %2, 128
  %.not4915 = icmp eq i32 %i.bho, 0
  br i1 %.not4915, label %bb.jl, label %bb.jk, !prof !62

bb.jk:                                            ; preds = %bb.jj
  %i.bhp = load ptr, ptr %i.l, align 8, !tbaa !107
  store i8 0, ptr %i.bhp, align 1, !tbaa !100
  %i.bhq = ptrtoint ptr %.33.i537 to i64
  %i.bhr = ptrtoint ptr %i.gl to i64
  %i.bhs = sub i64 %i.bhq, %i.bhr
  %i.bht = shl i64 %i.bhs, 8
  %i.bhu = or disjoint i64 %i.bht, 1
  store i64 %i.bhu, ptr %.5665.i, align 8, !tbaa !99
  %i.bhv = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store ptr %i.gl, ptr %i.bhv, align 8, !tbaa !100
  store ptr %.33.i537, ptr %i.l, align 8, !tbaa !107
  br label %.split4204

bb.jl:                                            ; preds = %bb.jj
  br i1 %.not4873, label %bb.jn, label %bb.jm, !prof !62

bb.jm:                                            ; preds = %bb.jl
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.bhw = select i1 %i.gq, i64 -4503599627370496, i64 9218868437227405312
  %i.bhx = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.bhw, ptr %i.bhx, align 8, !tbaa !100
  br label %.split4204

bb.jn:                                            ; preds = %bb.jl
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !107
  store ptr %i.gl, ptr %i.i, align 8, !tbaa !107
  br label %.split4204.thread

bb.jo:                                            ; preds = %bb.ji
  store i64 20, ptr %.5665.i, align 8, !tbaa !99
  %i.bhy = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.bhz = or disjoint i64 %.0895.i563, %i.bhy
  %i.bia = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.bhz, ptr %i.bia, align 8, !tbaa !100
  br label %.split4204

.split4204.thread:                                ; preds = %bb.ij, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aje

.split4204:                                       ; preds = %bb.jo, %bb.jm, %bb.jk, %bb.il, %bb.ii, %bb.ig
  store ptr %.33.i537, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

.preheader5069:                                   ; preds = %bb.oo, %bb.op, %bb.ov, %bb.ou, %bb.pa, %bb.pq, %bb.aiu, %.split, %.split4190, %read_num.exit646, %read_str_opt.exit897, %read_true.exit779, %read_false.exit782, %read_null.exit785, %read_nan.exit832, %read_inf.exit1480, %.split4191, %.split4189, %.split4201, %.split4193, %.split4185, %.split4184, %.split4183, %.split4192, %.split4194, %.split4195, %.split4196, %.split4199, %.split4200, %.split4174, %.split4175, %.split4176, %.split4177, %.split4178, %.split4179, %.split4180, %.split4181, %.split4182, %.split4188, %.split4187, %.split4186, %.split4198, %.split4197, %.split4202, %.split4203, %.split4204
  %.10779.i.ph = phi i64 [ %.3772.i, %.split4203 ], [ %.3772.i, %.split4202 ], [ %.3772.i, %.split4201 ], [ %.3772.i, %.split4200 ], [ %.3772.i, %.split4199 ], [ %.3772.i, %.split4198 ], [ %.3772.i, %.split4197 ], [ %.3772.i, %.split4196 ], [ %.3772.i, %.split4195 ], [ %.3772.i, %.split4194 ], [ %.3772.i, %.split4193 ], [ %.3772.i, %.split4192 ], [ %.3772.i, %.split4191 ], [ %.3772.i, %.split4190 ], [ %.3772.i, %.split4189 ], [ %.3772.i, %read_inf.exit1480 ], [ %.3772.i, %.split4188 ], [ %.3772.i, %.split4187 ], [ %.3772.i, %.split4186 ], [ %.3772.i, %.split4185 ], [ %.3772.i, %.split4184 ], [ %.3772.i, %.split4183 ], [ %.3772.i, %.split4182 ], [ %.3772.i, %.split4181 ], [ %.3772.i, %.split4180 ], [ %.3772.i, %.split4179 ], [ %.3772.i, %.split4178 ], [ %.3772.i, %.split4177 ], [ %.3772.i, %.split4176 ], [ %.3772.i, %.split4175 ], [ %.3772.i, %.split4174 ], [ %.3772.i, %.split ], [ %.3772.i, %.split4204 ], [ %.9778.i, %bb.pa ], [ %.20789.i, %bb.aiu ], [ %.11780.i, %bb.pq ], [ %.7776.i, %read_nan.exit832 ], [ %.7776.i, %read_null.exit785 ], [ %.6775.i, %read_false.exit782 ], [ %.5774.i, %read_true.exit779 ], [ %.4773.i, %read_str_opt.exit897 ], [ %.3772.i, %read_num.exit646 ], [ %.8777.i8197, %bb.ou ], [ %.8777.i8197, %bb.ov ], [ %.8777.i8197, %bb.op ], [ %.8777.i8197, %bb.oo ] ; 3 uses
  %.2762.i.ph = phi i64 [ %i.gm, %.split4203 ], [ %i.gm, %.split4202 ], [ %i.gm, %.split4201 ], [ %i.gm, %.split4200 ], [ %i.gm, %.split4199 ], [ %i.gm, %.split4198 ], [ %i.gm, %.split4197 ], [ %i.gm, %.split4196 ], [ %i.gm, %.split4195 ], [ %i.gm, %.split4194 ], [ %i.gm, %.split4193 ], [ %i.gm, %.split4192 ], [ %i.gm, %.split4191 ], [ %i.gm, %.split4190 ], [ %i.gm, %.split4189 ], [ %i.gm, %read_inf.exit1480 ], [ %i.gm, %.split4188 ], [ %i.gm, %.split4187 ], [ %i.gm, %.split4186 ], [ %i.gm, %.split4185 ], [ %i.gm, %.split4184 ], [ %i.gm, %.split4183 ], [ %i.gm, %.split4182 ], [ %i.gm, %.split4181 ], [ %i.gm, %.split4180 ], [ %i.gm, %.split4179 ], [ %i.gm, %.split4178 ], [ %i.gm, %.split4177 ], [ %i.gm, %.split4176 ], [ %i.gm, %.split4175 ], [ %i.gm, %.split4174 ], [ %i.gm, %.split ], [ %i.gm, %.split4204 ], [ %i.ckd, %bb.pa ], [ %i.gni, %bb.aiu ], [ %i.clp, %bb.pq ], [ %i.cec, %read_nan.exit832 ], [ %i.cec, %read_null.exit785 ], [ %i.cdk, %read_false.exit782 ], [ %i.ccq, %read_true.exit779 ], [ %i.biu, %read_str_opt.exit897 ], [ %i.gm, %read_num.exit646 ], [ %i.cgs, %bb.ou ], [ %i.cgs, %bb.ov ], [ %i.cgs, %bb.op ], [ %i.cgs, %bb.oo ] ; 3 uses
  %.18744.i.ph = phi ptr [ %.5731.i, %.split4203 ], [ %.5731.i, %.split4202 ], [ %.5731.i, %.split4201 ], [ %.5731.i, %.split4200 ], [ %.5731.i, %.split4199 ], [ %.5731.i, %.split4198 ], [ %.5731.i, %.split4197 ], [ %.5731.i, %.split4196 ], [ %.5731.i, %.split4195 ], [ %.5731.i, %.split4194 ], [ %.5731.i, %.split4193 ], [ %.5731.i, %.split4192 ], [ %.5731.i, %.split4191 ], [ %.5731.i, %.split4190 ], [ %.5731.i, %.split4189 ], [ %.5731.i, %read_inf.exit1480 ], [ %.5731.i, %.split4188 ], [ %.5731.i, %.split4187 ], [ %.5731.i, %.split4186 ], [ %.5731.i, %.split4185 ], [ %.5731.i, %.split4184 ], [ %.5731.i, %.split4183 ], [ %.5731.i, %.split4182 ], [ %.5731.i, %.split4181 ], [ %.5731.i, %.split4180 ], [ %.5731.i, %.split4179 ], [ %.5731.i, %.split4178 ], [ %.5731.i, %.split4177 ], [ %.5731.i, %.split4176 ], [ %.5731.i, %.split4175 ], [ %.5731.i, %.split4174 ], [ %.5731.i, %.split ], [ %.5731.i, %.split4204 ], [ %.17743.i, %bb.pa ], [ %.32758.i, %bb.aiu ], [ %.19745.i, %bb.pq ], [ %.13739.i, %read_nan.exit832 ], [ %.13739.i, %read_null.exit785 ], [ %.11737.i, %read_false.exit782 ], [ %.9735.i, %read_true.exit779 ], [ %.7733.i, %read_str_opt.exit897 ], [ %.5731.i, %read_num.exit646 ], [ %.15741.i8199, %bb.ou ], [ %.15741.i8199, %bb.ov ], [ %.15741.i8199, %bb.op ], [ %.15741.i8199, %bb.oo ] ; 5 uses
  %.18711.i.ph = phi ptr [ %.5698.i, %.split4203 ], [ %.5698.i, %.split4202 ], [ %.5698.i, %.split4201 ], [ %.5698.i, %.split4200 ], [ %.5698.i, %.split4199 ], [ %.5698.i, %.split4198 ], [ %.5698.i, %.split4197 ], [ %.5698.i, %.split4196 ], [ %.5698.i, %.split4195 ], [ %.5698.i, %.split4194 ], [ %.5698.i, %.split4193 ], [ %.5698.i, %.split4192 ], [ %.5698.i, %.split4191 ], [ %.5698.i, %.split4190 ], [ %.5698.i, %.split4189 ], [ %.5698.i, %read_inf.exit1480 ], [ %.5698.i, %.split4188 ], [ %.5698.i, %.split4187 ], [ %.5698.i, %.split4186 ], [ %.5698.i, %.split4185 ], [ %.5698.i, %.split4184 ], [ %.5698.i, %.split4183 ], [ %.5698.i, %.split4182 ], [ %.5698.i, %.split4181 ], [ %.5698.i, %.split4180 ], [ %.5698.i, %.split4179 ], [ %.5698.i, %.split4178 ], [ %.5698.i, %.split4177 ], [ %.5698.i, %.split4176 ], [ %.5698.i, %.split4175 ], [ %.5698.i, %.split4174 ], [ %.5698.i, %.split ], [ %.5698.i, %.split4204 ], [ %.17710.i, %bb.pa ], [ %.32725.i, %bb.aiu ], [ %.19712.i, %bb.pq ], [ %.13706.i, %read_nan.exit832 ], [ %.13706.i, %read_null.exit785 ], [ %.11704.i, %read_false.exit782 ], [ %.9702.i, %read_true.exit779 ], [ %.7700.i, %read_str_opt.exit897 ], [ %.5698.i, %read_num.exit646 ], [ %.15708.i8203, %bb.ou ], [ %.15708.i8203, %bb.ov ], [ %.15708.i8203, %bb.op ], [ %.15708.i8203, %bb.oo ] ; 3 uses
  %.18678.i.ph = phi ptr [ %.5665.i, %.split4203 ], [ %.5665.i, %.split4202 ], [ %.5665.i, %.split4201 ], [ %.5665.i, %.split4200 ], [ %.5665.i, %.split4199 ], [ %.5665.i, %.split4198 ], [ %.5665.i, %.split4197 ], [ %.5665.i, %.split4196 ], [ %.5665.i, %.split4195 ], [ %.5665.i, %.split4194 ], [ %.5665.i, %.split4193 ], [ %.5665.i, %.split4192 ], [ %.5665.i, %.split4191 ], [ %.5665.i, %.split4190 ], [ %.5665.i, %.split4189 ], [ %.5665.i, %read_inf.exit1480 ], [ %.5665.i, %.split4188 ], [ %.5665.i, %.split4187 ], [ %.5665.i, %.split4186 ], [ %.5665.i, %.split4185 ], [ %.5665.i, %.split4184 ], [ %.5665.i, %.split4183 ], [ %.5665.i, %.split4182 ], [ %.5665.i, %.split4181 ], [ %.5665.i, %.split4180 ], [ %.5665.i, %.split4179 ], [ %.5665.i, %.split4178 ], [ %.5665.i, %.split4177 ], [ %.5665.i, %.split4176 ], [ %.5665.i, %.split4175 ], [ %.5665.i, %.split4174 ], [ %.5665.i, %.split ], [ %.5665.i, %.split4204 ], [ %.17677.i, %bb.pa ], [ %.32692.i, %bb.aiu ], [ %.19679.i, %bb.pq ], [ %.13673.i, %read_nan.exit832 ], [ %.13673.i, %read_null.exit785 ], [ %.11671.i, %read_false.exit782 ], [ %.9669.i, %read_true.exit779 ], [ %.7667.i, %read_str_opt.exit897 ], [ %.5665.i, %read_num.exit646 ], [ %.15675.i8205, %bb.ou ], [ %.15675.i8205, %bb.ov ], [ %.15675.i8205, %bb.op ], [ %.15675.i8205, %bb.oo ] ; 3 uses
  %.18.i.ph = phi ptr [ %.5653.i, %.split4203 ], [ %.5653.i, %.split4202 ], [ %.5653.i, %.split4201 ], [ %.5653.i, %.split4200 ], [ %.5653.i, %.split4199 ], [ %.5653.i, %.split4198 ], [ %.5653.i, %.split4197 ], [ %.5653.i, %.split4196 ], [ %.5653.i, %.split4195 ], [ %.5653.i, %.split4194 ], [ %.5653.i, %.split4193 ], [ %.5653.i, %.split4192 ], [ %.5653.i, %.split4191 ], [ %.5653.i, %.split4190 ], [ %.5653.i, %.split4189 ], [ %.5653.i, %read_inf.exit1480 ], [ %.5653.i, %.split4188 ], [ %.5653.i, %.split4187 ], [ %.5653.i, %.split4186 ], [ %.5653.i, %.split4185 ], [ %.5653.i, %.split4184 ], [ %.5653.i, %.split4183 ], [ %.5653.i, %.split4182 ], [ %.5653.i, %.split4181 ], [ %.5653.i, %.split4180 ], [ %.5653.i, %.split4179 ], [ %.5653.i, %.split4178 ], [ %.5653.i, %.split4177 ], [ %.5653.i, %.split4176 ], [ %.5653.i, %.split4175 ], [ %.5653.i, %.split4174 ], [ %.5653.i, %.split ], [ %.5653.i, %.split4204 ], [ %.17.i, %bb.pa ], [ %i.gmz, %bb.aiu ], [ %i.clg, %bb.pq ], [ %.13.i, %read_nan.exit832 ], [ %.13.i, %read_null.exit785 ], [ %.11659.i, %read_false.exit782 ], [ %.9657.i, %read_true.exit779 ], [ %.7655.i, %read_str_opt.exit897 ], [ %.5653.i, %read_num.exit646 ], [ %.15.i8209, %bb.ou ], [ %.15.i8209, %bb.ov ], [ %.15.i8209, %bb.op ], [ %.15.i8209, %bb.oo ] ; 3 uses
  %i.bib = load ptr, ptr %i.i, align 8, !tbaa !107 ; 3 uses
  %.sroa.01.0.copyload.i8235792 = load i16, ptr %i.bib, align 1 ; 2 uses
  %i.bic = icmp eq i16 %.sroa.01.0.copyload.i8235792, 2604
  br i1 %i.bic, label %._crit_edge5794, label %.lr.ph5793

.lr.ph5793:                                       ; preds = %.preheader5069
  %i.bid = and i32 %2, 2056
  %.not4859 = icmp eq i32 %i.bid, 0
  br label %bb.pf

read_num.exit646.thread:                          ; preds = %bb.ha, %bb.hh, %bb.hq, %bb.cc, %bb.gq, %bb.gw, %bb.ce, %bb.cg, %read_inf_or_nan.exit839.thread, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aje

read_num.exit646:                                 ; preds = %bb.do, %bb.dr, %bb.du, %bb.hc, %bb.he, %bb.hg, %bb.hk, %bb.hn, %bb.hp
  %.sink9042 = phi ptr [ %i.no, %bb.do ], [ %i.nv, %bb.dr ], [ %i.oc, %bb.du ], [ %.31.i529.lcssa, %bb.hc ], [ %.31.i529.lcssa, %bb.he ], [ %.31.i529.lcssa, %bb.hg ], [ %.32.i531, %bb.hk ], [ %.32.i531, %bb.hn ], [ %.32.i531, %bb.hp ]
  store ptr %.sink9042, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

bb.jp:                                            ; preds = %bb.bd
  switch i8 %i.fr, label %bb.nz [
    i8 34, label %bb.jq
    i8 116, label %bb.ng
    i8 102, label %bb.nj
    i8 110, label %bb.nm
    i8 93, label %bb.nx
  ]

bb.jq:                                            ; preds = %bb.jp
  %i.bie = getelementptr inbounds nuw i8, ptr %.3663.i.ph, i64 16 ; 3 uses
  %.not867.i = icmp ult ptr %i.bie, %.3696.i.ph
  br i1 %.not867.i, label %bb.js, label %bb.jr, !prof !62

bb.jr:                                            ; preds = %bb.jq
  %i.bif = lshr i64 %.2771.i.ph, 1
  %i.big = add i64 %i.bif, %.2771.i.ph            ; 3 uses
  %i.bih = shl i64 %.2771.i.ph, 4
  %i.bii = shl i64 %i.big, 4
  %i.bij = call ptr %.sroa.5.0.copyload2121(ptr noundef %.sroa.31.0.copyload2149, ptr noundef %.3729.i.ph, i64 noundef %i.bih, i64 noundef %i.bii) #33, !inline_history !195 ; 5 uses
  %.not868.i = icmp eq ptr %i.bij, null
  br i1 %.not868.i, label %bb.aji, label %.thread4205

.thread4205:                                      ; preds = %bb.jr
  %i.bik = ptrtoint ptr %.3651.i.ph to i64
  %i.bil = ptrtoint ptr %.3729.i.ph to i64        ; 2 uses
  %i.bim = sub i64 %i.bik, %i.bil
  %i.bin = ptrtoint ptr %i.bie to i64
  %i.bio = sub i64 %i.bin, %i.bil
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bij, i64 %i.bio
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bij, i64 %i.bim
  %i.bir = getelementptr [16 x i8], ptr %i.bij, i64 %i.big
  %i.bis = getelementptr i8, ptr %i.bir, i64 -32
  %.pre7525 = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %bb.js

bb.js:                                            ; preds = %.thread4205, %bb.jq
  %i.bit = phi ptr [ %.pre7525, %.thread4205 ], [ %.promoted5816, %bb.jq ]
  %.4773.i = phi i64 [ %i.big, %.thread4205 ], [ %.2771.i.ph, %bb.jq ]
  %.7733.i = phi ptr [ %i.bij, %.thread4205 ], [ %.3729.i.ph, %bb.jq ] ; 22 uses
  %.7700.i = phi ptr [ %i.bis, %.thread4205 ], [ %.3696.i.ph, %bb.jq ]
  %.7667.i = phi ptr [ %i.bip, %.thread4205 ], [ %i.bie, %bb.jq ] ; 3 uses
  %.7655.i = phi ptr [ %i.biq, %.thread4205 ], [ %.3651.i.ph, %bb.jq ]
  %i.biu = add i64 %.1761.i.ph, 1
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bit, i64 1 ; 3 uses
  %i.biw = and i32 %2, 64
  %.not4867 = icmp eq i32 %i.biw, 0               ; 3 uses
  br label %.backedge5045

.backedge5045:                                    ; preds = %.backedge5045.backedge, %bb.js
  %.04050 = phi ptr [ %i.biv, %bb.js ], [ %.04050.be, %.backedge5045.backedge ] ; 18 uses
  %i.bix = load i8, ptr %.04050, align 1, !tbaa !100 ; 2 uses
  %i.biy = zext i8 %i.bix to i64
  %i.biz = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.biy
  %i.bja = load i8, ptr %i.biz, align 1, !tbaa !100
  %i.bjb = trunc i8 %i.bja to i1
end_hunk_0
begin_hunk_1_@yyjson_read_opts:bb.a
  %i.gbt = getelementptr inbounds nuw [8 x i8], ptr %i.gac, i64 %i.gbs
  store i64 %i.gbp, ptr %i.gbt, align 8, !tbaa !106
  %i.gbu = add nsw i64 %indvars.iv7018, -2        ; 2 uses
  %i.gbv = getelementptr [8 x i8], ptr %5, i64 %i.gbn
  %i.gbw = load i64, ptr %i.gbv, align 8, !tbaa !106
  %i.gbx = trunc nuw i64 %i.gbn to i32
  %i.gby = add i32 %i.gad, %i.gbx
  %i.gbz = zext i32 %i.gby to i64
  %i.gca = getelementptr inbounds nuw [8 x i8], ptr %i.gac, i64 %i.gbz
  store i64 %i.gbw, ptr %i.gca, align 8, !tbaa !106
  %i.gcb = add nsw i64 %indvars.iv7018, -3        ; 2 uses
  %i.gcc = getelementptr [8 x i8], ptr %5, i64 %i.gbu
  %i.gcd = load i64, ptr %i.gcc, align 8, !tbaa !106
  %i.gce = trunc nuw i64 %i.gbu to i32
  %i.gcf = add i32 %i.gad, %i.gce
  %i.gcg = zext i32 %i.gcf to i64
  %i.gch = getelementptr inbounds nuw [8 x i8], ptr %i.gac, i64 %i.gcg
  store i64 %i.gcd, ptr %i.gch, align 8, !tbaa !106
  %i.gci = add nsw i64 %indvars.iv7018, -4        ; 2 uses
  %i.gcj = getelementptr [8 x i8], ptr %5, i64 %i.gcb
  %i.gck = load i64, ptr %i.gcj, align 8, !tbaa !106
  %i.gcl = trunc nuw i64 %i.gcb to i32
  %i.gcm = add i32 %i.gad, %i.gcl
  %i.gcn = zext i32 %i.gcm to i64
  %i.gco = getelementptr inbounds nuw [8 x i8], ptr %i.gac, i64 %i.gcn
  store i64 %i.gck, ptr %i.gco, align 8, !tbaa !106
  %.not46.i1544.wide.3 = icmp eq i64 %i.gci, 0
  br i1 %.not46.i1544.wide.3, label %._crit_edge5700, label %scalar.ph10015, !llvm.loop !219

._crit_edge5700:                                  ; preds = %scalar.ph10015.prol.loopexit, %scalar.ph10015, %middle.block10024, %.preheader5090
  %i.gcp = add i32 %i.gaa, %i.fzz
  store i32 %i.gcp, ptr %5, align 8, !tbaa !131
  %.not47.i15465701 = icmp eq i32 %i.fzz, 0
  br i1 %.not47.i15465701, label %bigint_mul_pow2.exit, label %.lr.ph5704

.lr.ph5704:                                       ; preds = %._crit_edge5700
  %i.gcq = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bigint_mul_pow2.exit.sink.split

bb.agk:                                           ; preds = %bb.agj
  %i.gcr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.gcs = zext i32 %i.gaa to i64                 ; 10 uses
  %i.gct = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %i.gcs
  store i64 0, ptr %i.gct, align 8, !tbaa !106
  %.not.i15405688 = icmp eq i32 %i.gaa, 0
  %.pre7722 = zext nneg i32 %i.fzy to i64         ; 5 uses
  br i1 %.not.i15405688, label %._crit_edge5692, label %.lr.ph5691

.lr.ph5691:                                       ; preds = %bb.agk
  %i.gcu = sub nuw nsw i32 64, %i.fzy
  %i.gcv = zext nneg i32 %i.gcu to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.gaa, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph5691
  %i.gcw = add nsw i64 %i.gcs, -1                 ; 2 uses
  %i.gcx = add i32 %i.gaa, %i.fzz
  %i.gcy = trunc i64 %i.gcw to i32
  %i.gcz = icmp ult i32 %i.gcx, %i.gcy
  %i.gda = icmp ugt i64 %i.gcw, 4294967295
  %i.gdb = or i1 %i.gcz, %i.gda
  br i1 %i.gdb, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gdc = shl nuw nsw i64 %i.gcs, 3              ; 2 uses
  %i.gdd = add i32 %i.gaa, %i.fzz
  %i.gde = zext i32 %i.gdd to i64
  %i.gdf = shl nuw nsw i64 %i.gde, 3              ; 2 uses
  %i.gdg = sub nsw i64 %i.gdf, %i.gdc
  %diff.check = icmp ugt i64 %i.gdg, -32
  %i.gdh = sub nsw i64 %i.gdc, %i.gdf
  %i.gdi = add nsw i64 %i.gdh, -9
  %diff.check10006 = icmp ult i64 %i.gdi, 31
  %conflict.rdx = or i1 %diff.check, %diff.check10006
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gcs, 4294967292             ; 2 uses
  %i.gdj = and i64 %i.gcs, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gcv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10007 = insertelement <2 x i64> poison, i64 %.pre7722, i64 0
  %broadcast.splat10008 = shufflevector <2 x i64> %broadcast.splatinsert10007, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gdk = sub i64 %i.gcs, %index                 ; 3 uses
  %i.gdl = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %i.gdk ; 2 uses
  %i.gdm = getelementptr inbounds i8, ptr %i.gdl, i64 -8
  %i.gdn = getelementptr inbounds i8, ptr %i.gdl, i64 -24
  %wide.load = load <2 x i64>, ptr %i.gdm, align 8, !tbaa !106
  %wide.load10009 = load <2 x i64>, ptr %i.gdn, align 8, !tbaa !106
  %i.gdo = shl <2 x i64> %wide.load, %broadcast.splat10008
  %i.gdp = shl <2 x i64> %wide.load10009, %broadcast.splat10008
  %i.gdq = getelementptr [8 x i8], ptr %5, i64 %i.gdk ; 2 uses
  %i.gdr = getelementptr i8, ptr %i.gdq, i64 -8
  %i.gds = getelementptr i8, ptr %i.gdq, i64 -24
  %wide.load10010 = load <2 x i64>, ptr %i.gdr, align 8, !tbaa !106
  %wide.load10011 = load <2 x i64>, ptr %i.gds, align 8, !tbaa !106
  %i.gdt = lshr <2 x i64> %wide.load10010, %broadcast.splat
  %i.gdu = lshr <2 x i64> %wide.load10011, %broadcast.splat
  %i.gdv = or <2 x i64> %i.gdt, %i.gdo
  %i.gdw = or <2 x i64> %i.gdu, %i.gdp
  %i.gdx = trunc nuw i64 %i.gdk to i32
  %i.gdy = add i32 %i.fzz, %i.gdx
  %i.gdz = zext i32 %i.gdy to i64
  %i.gea = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %i.gdz ; 2 uses
  %i.geb = getelementptr inbounds i8, ptr %i.gea, i64 -8
  %i.gec = getelementptr inbounds i8, ptr %i.gea, i64 -24
  store <2 x i64> %i.gdv, ptr %i.geb, align 8, !tbaa !106
  store <2 x i64> %i.gdw, ptr %i.gec, align 8, !tbaa !106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ged = icmp eq i64 %index.next, %n.vec
  br i1 %i.ged, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gcs
  br i1 %cmp.n, label %._crit_edge5692, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph5691, %middle.block
  %indvars.iv7013.ph = phi i64 [ %i.gcs, %vector.memcheck ], [ %i.gcs, %vector.scevcheck ], [ %i.gcs, %.lr.ph5691 ], [ %i.gdj, %middle.block ] ; 7 uses
  %xtraiter11063 = and i64 %indvars.iv7013.ph, 1
  %lcmp.mod11064.not = icmp eq i64 %xtraiter11063, 0
  br i1 %lcmp.mod11064.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gee = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %indvars.iv7013.ph
  %i.gef = load i64, ptr %i.gee, align 8, !tbaa !106
  %i.geg = shl i64 %i.gef, %.pre7722
  %i.geh = add nsw i64 %indvars.iv7013.ph, -1
  %i.gei = getelementptr [8 x i8], ptr %5, i64 %indvars.iv7013.ph
  %i.gej = load i64, ptr %i.gei, align 8, !tbaa !106
  %i.gek = lshr i64 %i.gej, %i.gcv
  %i.gel = or i64 %i.gek, %i.geg
  %i.gem = trunc nuw i64 %indvars.iv7013.ph to i32
  %i.gen = add i32 %i.fzz, %i.gem
  %i.geo = zext i32 %i.gen to i64
  %i.gep = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %i.geo
  store i64 %i.gel, ptr %i.gep, align 8, !tbaa !106
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv7013.unr = phi i64 [ %indvars.iv7013.ph, %scalar.ph.preheader ], [ %i.geh, %scalar.ph.prol ]
  %i.geq = icmp eq i64 %indvars.iv7013.ph, 1
  br i1 %i.geq, label %._crit_edge5692, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv7013 = phi i64 [ %i.gfg, %scalar.ph ], [ %indvars.iv7013.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ger = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %indvars.iv7013
  %i.ges = load i64, ptr %i.ger, align 8, !tbaa !106
  %i.get = shl i64 %i.ges, %.pre7722
  %i.geu = add nsw i64 %indvars.iv7013, -1        ; 2 uses
  %i.gev = getelementptr [8 x i8], ptr %5, i64 %indvars.iv7013
  %i.gew = load i64, ptr %i.gev, align 8, !tbaa !106
  %i.gex = lshr i64 %i.gew, %i.gcv
  %i.gey = or i64 %i.gex, %i.get
  %i.gez = trunc nuw i64 %indvars.iv7013 to i32
  %i.gfa = add i32 %i.fzz, %i.gez
  %i.gfb = zext i32 %i.gfa to i64
  %i.gfc = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %i.gfb
  store i64 %i.gey, ptr %i.gfc, align 8, !tbaa !106
  %i.gfd = getelementptr [8 x i8], ptr %5, i64 %indvars.iv7013
  %i.gfe = load i64, ptr %i.gfd, align 8, !tbaa !106
  %i.gff = shl i64 %i.gfe, %.pre7722
  %i.gfg = add nsw i64 %indvars.iv7013, -2        ; 2 uses
  %i.gfh = getelementptr [8 x i8], ptr %5, i64 %i.geu
  %i.gfi = load i64, ptr %i.gfh, align 8, !tbaa !106
  %i.gfj = lshr i64 %i.gfi, %i.gcv
  %i.gfk = or i64 %i.gfj, %i.gff
  %i.gfl = trunc nuw i64 %i.geu to i32
  %i.gfm = add i32 %i.fzz, %i.gfl
  %i.gfn = zext i32 %i.gfm to i64
  %i.gfo = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %i.gfn
  store i64 %i.gfk, ptr %i.gfo, align 8, !tbaa !106
  %.not.i1540.wide.1 = icmp eq i64 %i.gfg, 0
  br i1 %.not.i1540.wide.1, label %._crit_edge5692, label %scalar.ph, !llvm.loop !221

._crit_edge5692:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.agk
  %i.gfp = load i64, ptr %i.gcr, align 8, !tbaa !106
  %i.gfq = shl i64 %i.gfp, %.pre7722
  %i.gfr = zext nneg i32 %i.fzz to i64
  %i.gfs = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %i.gfr
  store i64 %i.gfq, ptr %i.gfs, align 8, !tbaa !106
  %i.gft = add i32 %i.gaa, %i.fzz                 ; 2 uses
  %i.gfu = zext i32 %i.gft to i64
  %i.gfv = getelementptr inbounds nuw [8 x i8], ptr %i.gcr, i64 %i.gfu
  %i.gfw = load i64, ptr %i.gfv, align 8, !tbaa !106
  %i.gfx = icmp ne i64 %i.gfw, 0
  %i.gfy = zext i1 %i.gfx to i32
  %i.gfz = add i32 %i.gft, %i.gfy
  store i32 %i.gfz, ptr %5, align 8, !tbaa !131
  %.not45.i15425693 = icmp eq i32 %i.fzz, 0
  br i1 %.not45.i15425693, label %bigint_mul_pow2.exit, label %bigint_mul_pow2.exit.sink.split

bigint_mul_pow2.exit.sink.split:                  ; preds = %._crit_edge5692, %._crit_edge5709, %.lr.ph5721.preheader, %.lr.ph5704
  %.sink9082 = phi i32 [ %i.fua, %._crit_edge5709 ], [ %i.fzz, %.lr.ph5704 ], [ %i.fua, %.lr.ph5721.preheader ], [ %i.fzz, %._crit_edge5692 ]
  %.sink9077 = phi ptr [ %i.fmz, %._crit_edge5709 ], [ %i.gcq, %.lr.ph5704 ], [ %i.fmz, %.lr.ph5721.preheader ], [ %i.gcr, %._crit_edge5692 ]
  %.ph9076 = phi i32 [ %i.fzw, %._crit_edge5709 ], [ %i.ftx, %.lr.ph5704 ], [ %i.fwo, %.lr.ph5721.preheader ], [ %i.ftx, %._crit_edge5692 ]
  %i.gga = add nsw i32 %.sink9082, -1
  %i.ggb = zext nneg i32 %i.gga to i64
  %i.ggc = shl nuw nsw i64 %i.ggb, 3
  %i.ggd = add nuw nsw i64 %i.ggc, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink9077, i8 0, i64 %i.ggd, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %bigint_mul_pow2.exit.sink.split, %._crit_edge5692, %._crit_edge5700, %._crit_edge5709
  %i.gge = phi i32 [ %i.fzw, %._crit_edge5709 ], [ %i.ftx, %._crit_edge5692 ], [ %i.ftx, %._crit_edge5700 ], [ %.ph9076, %bigint_mul_pow2.exit.sink.split ] ; 2 uses
  %i.ggf = load i32, ptr %5, align 8, !tbaa !131  ; 4 uses
  %i.ggg = icmp ult i32 %i.ggf, %i.gge
  br i1 %i.ggg, label %bigint_cmp.exit.thread, label %bb.agl

bb.agl:                                           ; preds = %bigint_mul_pow2.exit
  %i.ggh = icmp ugt i32 %i.ggf, %i.gge
  br i1 %i.ggh, label %bigint_cmp.exit.thread, label %.preheader5086

.preheader5086:                                   ; preds = %bb.agl
  %.not.i16029940 = icmp eq i32 %i.ggf, 0
  br i1 %.not.i16029940, label %bigint_cmp.exit.thread4317, label %.lr.ph9943

.lr.ph9943:                                       ; preds = %.preheader5086
  %i.ggi = zext i32 %i.ggf to i64
  br label %bb.agn

bb.agm:                                           ; preds = %bb.agn
  %i.ggj = add nsw i64 %indvars.iv70319941, -1    ; 2 uses
  %.not.i1602 = icmp eq i64 %i.ggj, 0
  br i1 %.not.i1602, label %bigint_cmp.exit.thread4317, label %bb.agn, !llvm.loop !16

bb.agn:                                           ; preds = %.lr.ph9943, %bb.agm
  %.016.i9942 = phi i32 [ undef, %.lr.ph9943 ], [ %.1.i1603, %bb.agm ]
  %indvars.iv70319941 = phi i64 [ %i.ggi, %.lr.ph9943 ], [ %i.ggj, %bb.agm ] ; 3 uses
  %i.ggk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv70319941
  %i.ggl = load i64, ptr %i.ggk, align 8, !tbaa !106 ; 3 uses
  %i.ggm = getelementptr [8 x i8], ptr %6, i64 %indvars.iv70319941
  %i.ggn = load i64, ptr %i.ggm, align 8, !tbaa !106 ; 3 uses
  %.not4845 = icmp ult i64 %i.ggl, %i.ggn
  %.not4846 = icmp ugt i64 %i.ggl, %i.ggn
  %..016.i = select i1 %.not4846, i32 1, i32 %.016.i9942
  %.1.i1603 = select i1 %.not4845, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.ggl, %i.ggn
  br i1 %cond.i, label %bb.agm, label %bigint_cmp.exit, !llvm.loop !16

bigint_cmp.exit:                                  ; preds = %bb.agn
  %.not989.i692 = icmp eq i32 %.1.i1603, 0
  br i1 %.not989.i692, label %bigint_cmp.exit.thread4317, label %bigint_cmp.exit.thread, !prof !125

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.agl, %bigint_cmp.exit
  %.2.i16044316 = phi i32 [ %.1.i1603, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.agl ]
  %i.ggo = icmp sgt i32 %.2.i16044316, 0
  %i.ggp = zext i1 %i.ggo to i64
  br label %bb.ago

bigint_cmp.exit.thread4317:                       ; preds = %bb.agm, %.preheader5086, %bigint_cmp.exit
  %i.ggq = and i64 %.0.i1504.ph, 1
  br label %bb.ago

bb.ago:                                           ; preds = %bigint_cmp.exit.thread4317, %bigint_cmp.exit.thread
  %.pn.i693 = phi i64 [ %i.ggp, %bigint_cmp.exit.thread ], [ %i.ggq, %bigint_cmp.exit.thread4317 ]
  %.0895.i694 = add nuw nsw i64 %.pn.i693, %.0.i1504.ph ; 2 uses
  %i.ggr = icmp eq i64 %.0895.i694, 9218868437227405312
  br i1 %i.ggr, label %bb.agp, label %bb.agu, !prof !45

bb.agp:                                           ; preds = %bb.ago
  %i.ggs = and i32 %2, 128
  %.not4847 = icmp eq i32 %i.ggs, 0
  br i1 %.not4847, label %bb.agr, label %bb.agq, !prof !62

bb.agq:                                           ; preds = %bb.agp
  %i.ggt = load ptr, ptr %i.l, align 8, !tbaa !107
  store i8 0, ptr %i.ggt, align 1, !tbaa !100
  %i.ggu = ptrtoint ptr %.33.i668 to i64
  %i.ggv = ptrtoint ptr %i.efd to i64
  %i.ggw = sub i64 %i.ggu, %i.ggv
  %i.ggx = shl i64 %i.ggw, 8
  %i.ggy = or disjoint i64 %i.ggx, 1
  store i64 %i.ggy, ptr %i.efi, align 8, !tbaa !99
  %i.ggz = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store ptr %i.efd, ptr %i.ggz, align 8, !tbaa !100
  store ptr %.33.i668, ptr %i.l, align 8, !tbaa !107
  br label %.split4352

bb.agr:                                           ; preds = %bb.agp
  br i1 %.not4805, label %bb.agt, label %bb.ags, !prof !62

bb.ags:                                           ; preds = %bb.agr
  store i64 20, ptr %i.efi, align 8, !tbaa !99
  %i.gha = select i1 %i.efm, i64 -4503599627370496, i64 9218868437227405312
  %i.ghb = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.gha, ptr %i.ghb, align 8, !tbaa !100
  br label %.split4352

bb.agt:                                           ; preds = %bb.agr
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !107
  store ptr %i.efd, ptr %i.i, align 8, !tbaa !107
  br label %.split4352.thread

bb.agu:                                           ; preds = %bb.ago
  store i64 20, ptr %i.efi, align 8, !tbaa !99
  %i.ghc = select i1 %i.efm, i64 -9223372036854775808, i64 0
  %i.ghd = or disjoint i64 %.0895.i694, %i.ghc
  %i.ghe = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.ghd, ptr %i.ghe, align 8, !tbaa !100
  br label %.split4352

.split4352.thread:                                ; preds = %bb.afp, %bb.agt
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.aje

.split4352:                                       ; preds = %bb.agu, %bb.ags, %bb.agq, %bb.afr, %bb.afo, %bb.afm
  store ptr %.33.i668, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

.preheader5074:                                   ; preds = %bb.ahu, %bb.ahv, %bb.aib, %bb.aia, %bb.pq, %bb.aie, %bb.aiu, %read_str_opt.exit882, %.split4321, %.split4338, %read_num.exit777, %read_true.exit780, %read_false.exit783, %read_null.exit786, %read_nan.exit834, %read_inf.exit1483, %.split4339, %.split4337, %.split4349, %.split4341, %.split4333, %.split4332, %.split4331, %.split4340, %.split4342, %.split4343, %.split4344, %.split4347, %.split4348, %.split4322, %.split4323, %.split4324, %.split4325, %.split4326, %.split4327, %.split4328, %.split4329, %.split4330, %.split4336, %.split4335, %.split4334, %.split4346, %.split4345, %.split4350, %.split4351, %.split4352
  %.19788.i.ph = phi i64 [ %.18787.i.ph, %.split4351 ], [ %.18787.i.ph, %.split4350 ], [ %.18787.i.ph, %.split4349 ], [ %.18787.i.ph, %.split4348 ], [ %.18787.i.ph, %.split4347 ], [ %.18787.i.ph, %.split4346 ], [ %.18787.i.ph, %.split4345 ], [ %.18787.i.ph, %.split4344 ], [ %.18787.i.ph, %.split4343 ], [ %.18787.i.ph, %.split4342 ], [ %.18787.i.ph, %.split4341 ], [ %.18787.i.ph, %.split4340 ], [ %.18787.i.ph, %.split4339 ], [ %.18787.i.ph, %.split4338 ], [ %.18787.i.ph, %.split4337 ], [ %.18787.i.ph, %read_inf.exit1483 ], [ %.18787.i.ph, %.split4336 ], [ %.18787.i.ph, %.split4335 ], [ %.18787.i.ph, %.split4334 ], [ %.18787.i.ph, %.split4333 ], [ %.18787.i.ph, %.split4332 ], [ %.18787.i.ph, %.split4331 ], [ %.18787.i.ph, %.split4330 ], [ %.18787.i.ph, %.split4329 ], [ %.18787.i.ph, %.split4328 ], [ %.18787.i.ph, %.split4327 ], [ %.18787.i.ph, %.split4326 ], [ %.18787.i.ph, %.split4325 ], [ %.18787.i.ph, %.split4324 ], [ %.18787.i.ph, %.split4323 ], [ %.18787.i.ph, %.split4322 ], [ %.18787.i.ph, %.split4321 ], [ %.18787.i.ph, %bb.aie ], [ %.18787.i.ph, %read_str_opt.exit882 ], [ %.18787.i.ph, %read_nan.exit834 ], [ %.18787.i.ph, %read_null.exit786 ], [ %.18787.i.ph, %read_false.exit783 ], [ %.18787.i.ph, %read_true.exit780 ], [ %.18787.i.ph, %read_num.exit777 ], [ %.18787.i.ph, %.split4352 ], [ %.11780.i, %bb.pq ], [ %.20789.i, %bb.aiu ], [ %.18787.i.ph, %bb.aia ], [ %.18787.i.ph, %bb.aib ], [ %.18787.i.ph, %bb.ahv ], [ %.18787.i.ph, %bb.ahu ] ; 3 uses
  %.7767.i.ph = phi i64 [ %i.efj, %.split4351 ], [ %i.efj, %.split4350 ], [ %i.efj, %.split4349 ], [ %i.efj, %.split4348 ], [ %i.efj, %.split4347 ], [ %i.efj, %.split4346 ], [ %i.efj, %.split4345 ], [ %i.efj, %.split4344 ], [ %i.efj, %.split4343 ], [ %i.efj, %.split4342 ], [ %i.efj, %.split4341 ], [ %i.efj, %.split4340 ], [ %i.efj, %.split4339 ], [ %i.efj, %.split4338 ], [ %i.efj, %.split4337 ], [ %i.efj, %read_inf.exit1483 ], [ %i.efj, %.split4336 ], [ %i.efj, %.split4335 ], [ %i.efj, %.split4334 ], [ %i.efj, %.split4333 ], [ %i.efj, %.split4332 ], [ %i.efj, %.split4331 ], [ %i.efj, %.split4330 ], [ %i.efj, %.split4329 ], [ %i.efj, %.split4328 ], [ %i.efj, %.split4327 ], [ %i.efj, %.split4326 ], [ %i.efj, %.split4325 ], [ %i.efj, %.split4324 ], [ %i.efj, %.split4323 ], [ %i.efj, %.split4322 ], [ %i.efj, %.split4321 ], [ %i.glt, %bb.aie ], [ %i.dlx, %read_str_opt.exit882 ], [ %i.ghs, %read_nan.exit834 ], [ %i.ghs, %read_null.exit786 ], [ %i.gho, %read_false.exit783 ], [ %i.ghj, %read_true.exit780 ], [ %i.efj, %read_num.exit777 ], [ %i.efj, %.split4352 ], [ %i.clp, %bb.pq ], [ %i.gni, %bb.aiu ], [ %i.gjg, %bb.aia ], [ %i.gjg, %bb.aib ], [ %i.gjg, %bb.ahv ], [ %i.gjg, %bb.ahu ] ; 3 uses
  %.31757.i.ph = phi ptr [ %.30756.i.ph, %.split4351 ], [ %.30756.i.ph, %.split4350 ], [ %.30756.i.ph, %.split4349 ], [ %.30756.i.ph, %.split4348 ], [ %.30756.i.ph, %.split4347 ], [ %.30756.i.ph, %.split4346 ], [ %.30756.i.ph, %.split4345 ], [ %.30756.i.ph, %.split4344 ], [ %.30756.i.ph, %.split4343 ], [ %.30756.i.ph, %.split4342 ], [ %.30756.i.ph, %.split4341 ], [ %.30756.i.ph, %.split4340 ], [ %.30756.i.ph, %.split4339 ], [ %.30756.i.ph, %.split4338 ], [ %.30756.i.ph, %.split4337 ], [ %.30756.i.ph, %read_inf.exit1483 ], [ %.30756.i.ph, %.split4336 ], [ %.30756.i.ph, %.split4335 ], [ %.30756.i.ph, %.split4334 ], [ %.30756.i.ph, %.split4333 ], [ %.30756.i.ph, %.split4332 ], [ %.30756.i.ph, %.split4331 ], [ %.30756.i.ph, %.split4330 ], [ %.30756.i.ph, %.split4329 ], [ %.30756.i.ph, %.split4328 ], [ %.30756.i.ph, %.split4327 ], [ %.30756.i.ph, %.split4326 ], [ %.30756.i.ph, %.split4325 ], [ %.30756.i.ph, %.split4324 ], [ %.30756.i.ph, %.split4323 ], [ %.30756.i.ph, %.split4322 ], [ %.30756.i.ph, %.split4321 ], [ %.30756.i.ph, %bb.aie ], [ %.30756.i.ph, %read_str_opt.exit882 ], [ %.30756.i.ph, %read_nan.exit834 ], [ %.30756.i.ph, %read_null.exit786 ], [ %.30756.i.ph, %read_false.exit783 ], [ %.30756.i.ph, %read_true.exit780 ], [ %.30756.i.ph, %read_num.exit777 ], [ %.30756.i.ph, %.split4352 ], [ %.19745.i, %bb.pq ], [ %.32758.i, %bb.aiu ], [ %.30756.i.ph, %bb.aia ], [ %.30756.i.ph, %bb.aib ], [ %.30756.i.ph, %bb.ahv ], [ %.30756.i.ph, %bb.ahu ] ; 5 uses
  %.31724.i.ph = phi ptr [ %.30723.i.ph, %.split4351 ], [ %.30723.i.ph, %.split4350 ], [ %.30723.i.ph, %.split4349 ], [ %.30723.i.ph, %.split4348 ], [ %.30723.i.ph, %.split4347 ], [ %.30723.i.ph, %.split4346 ], [ %.30723.i.ph, %.split4345 ], [ %.30723.i.ph, %.split4344 ], [ %.30723.i.ph, %.split4343 ], [ %.30723.i.ph, %.split4342 ], [ %.30723.i.ph, %.split4341 ], [ %.30723.i.ph, %.split4340 ], [ %.30723.i.ph, %.split4339 ], [ %.30723.i.ph, %.split4338 ], [ %.30723.i.ph, %.split4337 ], [ %.30723.i.ph, %read_inf.exit1483 ], [ %.30723.i.ph, %.split4336 ], [ %.30723.i.ph, %.split4335 ], [ %.30723.i.ph, %.split4334 ], [ %.30723.i.ph, %.split4333 ], [ %.30723.i.ph, %.split4332 ], [ %.30723.i.ph, %.split4331 ], [ %.30723.i.ph, %.split4330 ], [ %.30723.i.ph, %.split4329 ], [ %.30723.i.ph, %.split4328 ], [ %.30723.i.ph, %.split4327 ], [ %.30723.i.ph, %.split4326 ], [ %.30723.i.ph, %.split4325 ], [ %.30723.i.ph, %.split4324 ], [ %.30723.i.ph, %.split4323 ], [ %.30723.i.ph, %.split4322 ], [ %.30723.i.ph, %.split4321 ], [ %.30723.i.ph, %bb.aie ], [ %.30723.i.ph, %read_str_opt.exit882 ], [ %.30723.i.ph, %read_nan.exit834 ], [ %.30723.i.ph, %read_null.exit786 ], [ %.30723.i.ph, %read_false.exit783 ], [ %.30723.i.ph, %read_true.exit780 ], [ %.30723.i.ph, %read_num.exit777 ], [ %.30723.i.ph, %.split4352 ], [ %.19712.i, %bb.pq ], [ %.32725.i, %bb.aiu ], [ %.30723.i.ph, %bb.aia ], [ %.30723.i.ph, %bb.aib ], [ %.30723.i.ph, %bb.ahv ], [ %.30723.i.ph, %bb.ahu ] ; 3 uses
  %.31691.i.ph = phi ptr [ %i.efi, %.split4351 ], [ %i.efi, %.split4350 ], [ %i.efi, %.split4349 ], [ %i.efi, %.split4348 ], [ %i.efi, %.split4347 ], [ %i.efi, %.split4346 ], [ %i.efi, %.split4345 ], [ %i.efi, %.split4344 ], [ %i.efi, %.split4343 ], [ %i.efi, %.split4342 ], [ %i.efi, %.split4341 ], [ %i.efi, %.split4340 ], [ %i.efi, %.split4339 ], [ %i.efi, %.split4338 ], [ %i.efi, %.split4337 ], [ %i.efi, %read_inf.exit1483 ], [ %i.efi, %.split4336 ], [ %i.efi, %.split4335 ], [ %i.efi, %.split4334 ], [ %i.efi, %.split4333 ], [ %i.efi, %.split4332 ], [ %i.efi, %.split4331 ], [ %i.efi, %.split4330 ], [ %i.efi, %.split4329 ], [ %i.efi, %.split4328 ], [ %i.efi, %.split4327 ], [ %i.efi, %.split4326 ], [ %i.efi, %.split4325 ], [ %i.efi, %.split4324 ], [ %i.efi, %.split4323 ], [ %i.efi, %.split4322 ], [ %i.efi, %.split4321 ], [ %i.gls, %bb.aie ], [ %i.dlw, %read_str_opt.exit882 ], [ %i.ghr, %read_nan.exit834 ], [ %i.ghr, %read_null.exit786 ], [ %i.ghp, %read_false.exit783 ], [ %i.ghk, %read_true.exit780 ], [ %i.efi, %read_num.exit777 ], [ %i.efi, %.split4352 ], [ %.19679.i, %bb.pq ], [ %.32692.i, %bb.aiu ], [ %i.gjf, %bb.aia ], [ %i.gjf, %bb.aib ], [ %i.gjf, %bb.ahv ], [ %i.gjf, %bb.ahu ] ; 3 uses
  %.31.i.ph = phi ptr [ %.30.i.ph, %.split4351 ], [ %.30.i.ph, %.split4350 ], [ %.30.i.ph, %.split4349 ], [ %.30.i.ph, %.split4348 ], [ %.30.i.ph, %.split4347 ], [ %.30.i.ph, %.split4346 ], [ %.30.i.ph, %.split4345 ], [ %.30.i.ph, %.split4344 ], [ %.30.i.ph, %.split4343 ], [ %.30.i.ph, %.split4342 ], [ %.30.i.ph, %.split4341 ], [ %.30.i.ph, %.split4340 ], [ %.30.i.ph, %.split4339 ], [ %.30.i.ph, %.split4338 ], [ %.30.i.ph, %.split4337 ], [ %.30.i.ph, %read_inf.exit1483 ], [ %.30.i.ph, %.split4336 ], [ %.30.i.ph, %.split4335 ], [ %.30.i.ph, %.split4334 ], [ %.30.i.ph, %.split4333 ], [ %.30.i.ph, %.split4332 ], [ %.30.i.ph, %.split4331 ], [ %.30.i.ph, %.split4330 ], [ %.30.i.ph, %.split4329 ], [ %.30.i.ph, %.split4328 ], [ %.30.i.ph, %.split4327 ], [ %.30.i.ph, %.split4326 ], [ %.30.i.ph, %.split4325 ], [ %.30.i.ph, %.split4324 ], [ %.30.i.ph, %.split4323 ], [ %.30.i.ph, %.split4322 ], [ %.30.i.ph, %.split4321 ], [ %.30.i.ph, %bb.aie ], [ %.30.i.ph, %read_str_opt.exit882 ], [ %.30.i.ph, %read_nan.exit834 ], [ %.30.i.ph, %read_null.exit786 ], [ %.30.i.ph, %read_false.exit783 ], [ %.30.i.ph, %read_true.exit780 ], [ %.30.i.ph, %read_num.exit777 ], [ %.30.i.ph, %.split4352 ], [ %i.clg, %bb.pq ], [ %i.gmz, %bb.aiu ], [ %.30.i.ph, %bb.aia ], [ %.30.i.ph, %bb.aib ], [ %.30.i.ph, %bb.ahv ], [ %.30.i.ph, %bb.ahu ] ; 3 uses
  %i.ghf = load ptr, ptr %i.i, align 8, !tbaa !107 ; 3 uses
  %.sroa.01.0.copyload.i8225787 = load i16, ptr %i.ghf, align 1 ; 2 uses
  %i.ghg = icmp eq i16 %.sroa.01.0.copyload.i8225787, 2604
  br i1 %i.ghg, label %._crit_edge5789, label %.lr.ph5788

.lr.ph5788:                                       ; preds = %.preheader5074
  %i.ghh = and i32 %2, 2056
  %.not4926 = icmp eq i32 %i.ghh, 0
  br label %bb.aij

read_num.exit777.thread:                          ; preds = %bb.aeg, %bb.aen, %bb.aew, %bb.zi, %bb.adw, %bb.aec, %bb.zk, %bb.zm, %read_inf_or_nan.exit.thread, %bb.ado
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.aje

read_num.exit777:                                 ; preds = %bb.aau, %bb.aax, %bb.aba, %bb.aei, %bb.aek, %bb.aem, %bb.aeq, %bb.aet, %bb.aev
  %.sink9083 = phi ptr [ %i.ems, %bb.aau ], [ %i.emz, %bb.aax ], [ %i.eng, %bb.aba ], [ %.31.i660.lcssa, %bb.aei ], [ %.31.i660.lcssa, %bb.aek ], [ %.31.i660.lcssa, %bb.aem ], [ %.32.i662, %bb.aeq ], [ %.32.i662, %bb.aet ], [ %.32.i662, %bb.aev ]
  store ptr %.sink9083, ptr %i.i, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

bb.agv:                                           ; preds = %bb.yj
  switch i8 %i.efc, label %bb.ahh [
    i8 123, label %.loopexit5064
    i8 91, label %.loopexit5065
    i8 116, label %bb.agw
    i8 102, label %bb.agx
    i8 110, label %bb.agy
  ]

bb.agw:                                           ; preds = %bb.agv
  %.sroa.01.0.copyload.i1733 = load i32, ptr %i.efd, align 1
  %i.ghi = icmp eq i32 %.sroa.01.0.copyload.i1733, 1702195828
  br i1 %i.ghi, label %read_true.exit780, label %read_true.exit779.thread, !prof !62

read_true.exit780:                                ; preds = %bb.agw
  %i.ghj = add i64 %.5765.i.ph, 2
  %i.ghk = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 16 ; 2 uses
  store i64 11, ptr %i.ghk, align 8, !tbaa !99
  %i.ghl = getelementptr inbounds nuw i8, ptr %i.efd, i64 4
  store ptr %i.ghl, ptr %i.i, align 8, !tbaa !107
  br label %.preheader5074

bb.agx:                                           ; preds = %bb.agv
  %i.ghm = getelementptr inbounds nuw i8, ptr %i.efd, i64 1
  %.sroa.01.0.copyload.i1729 = load i32, ptr %i.ghm, align 1
  %i.ghn = icmp eq i32 %.sroa.01.0.copyload.i1729, 1702063201
  br i1 %i.ghn, label %read_false.exit783, label %read_false.exit782.thread, !prof !62

read_false.exit783:                               ; preds = %bb.agx
  %i.gho = add i64 %.5765.i.ph, 2
  %i.ghp = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 16 ; 2 uses
  store i64 3, ptr %i.ghp, align 8, !tbaa !99
  %i.ghq = getelementptr inbounds nuw i8, ptr %i.efd, i64 5
  store ptr %i.ghq, ptr %i.i, align 8, !tbaa !107
  br label %.preheader5074

bb.agy:                                           ; preds = %bb.agv
  %i.ghr = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 16 ; 4 uses
  %i.ghs = add i64 %.5765.i.ph, 2                 ; 2 uses
  %.sroa.01.0.copyload.i1725 = load i32, ptr %i.efd, align 1 ; 3 uses
  %i.ght = icmp eq i32 %.sroa.01.0.copyload.i1725, 1819047278
  %i.ghu = trunc i32 %.sroa.01.0.copyload.i1725 to i8 ; 2 uses
  br i1 %i.ght, label %read_null.exit786, label %bb.agz, !prof !62

read_null.exit786:                                ; preds = %bb.agy
  store i64 2, ptr %i.ghr, align 8, !tbaa !99
  %i.ghv = getelementptr inbounds nuw i8, ptr %i.efd, i64 4
  store ptr %i.ghv, ptr %i.i, align 8, !tbaa !107
  br label %.preheader5074

bb.agz:                                           ; preds = %bb.agy
  br i1 %.not4805, label %read_nan.exit832.thread, label %bb.aha, !prof !62

bb.aha:                                           ; preds = %bb.agz
  %i.ghw = icmp eq i8 %i.ghu, 45
  %i.ghx = icmp ne i8 %i.ghu, 43
end_hunk_1
begin_hunk_2_@yyjson_read_opts:bb.a
  %i.iqi = getelementptr inbounds nuw [8 x i8], ptr %i.ior, i64 %i.iqh
  store i64 %i.iqe, ptr %i.iqi, align 8, !tbaa !106
  %i.iqj = add nsw i64 %indvars.iv7201, -2        ; 2 uses
  %i.iqk = getelementptr [8 x i8], ptr %11, i64 %i.iqc
  %i.iql = load i64, ptr %i.iqk, align 8, !tbaa !106
  %i.iqm = trunc nuw i64 %i.iqc to i32
  %i.iqn = add i32 %i.ios, %i.iqm
  %i.iqo = zext i32 %i.iqn to i64
  %i.iqp = getelementptr inbounds nuw [8 x i8], ptr %i.ior, i64 %i.iqo
  store i64 %i.iql, ptr %i.iqp, align 8, !tbaa !106
  %i.iqq = add nsw i64 %indvars.iv7201, -3        ; 2 uses
  %i.iqr = getelementptr [8 x i8], ptr %11, i64 %i.iqj
  %i.iqs = load i64, ptr %i.iqr, align 8, !tbaa !106
  %i.iqt = trunc nuw i64 %i.iqj to i32
  %i.iqu = add i32 %i.ios, %i.iqt
  %i.iqv = zext i32 %i.iqu to i64
  %i.iqw = getelementptr inbounds nuw [8 x i8], ptr %i.ior, i64 %i.iqv
  store i64 %i.iqs, ptr %i.iqw, align 8, !tbaa !106
  %i.iqx = add nsw i64 %indvars.iv7201, -4        ; 2 uses
  %i.iqy = getelementptr [8 x i8], ptr %11, i64 %i.iqq
  %i.iqz = load i64, ptr %i.iqy, align 8, !tbaa !106
  %i.ira = trunc nuw i64 %i.iqq to i32
  %i.irb = add i32 %i.ios, %i.ira
  %i.irc = zext i32 %i.irb to i64
  %i.ird = getelementptr inbounds nuw [8 x i8], ptr %i.ior, i64 %i.irc
  store i64 %i.iqz, ptr %i.ird, align 8, !tbaa !106
  %.not46.i1598.wide.3 = icmp eq i64 %i.iqx, 0
  br i1 %.not46.i1598.wide.3, label %._crit_edge6404, label %scalar.ph10243, !llvm.loop !233

._crit_edge6404:                                  ; preds = %scalar.ph10243.prol.loopexit, %scalar.ph10243, %middle.block10252, %.preheader4962
  %i.ire = add i32 %i.iop, %i.ioo
  store i32 %i.ire, ptr %11, align 8, !tbaa !131
  %.not47.i16006405 = icmp eq i32 %i.ioo, 0
  br i1 %.not47.i16006405, label %bigint_mul_pow2.exit1592, label %.lr.ph6408

.lr.ph6408:                                       ; preds = %._crit_edge6404
  %i.irf = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bigint_mul_pow2.exit1592.sink.split

bb.art:                                           ; preds = %bb.ars
  %i.irg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 12 uses
  %i.irh = zext i32 %i.iop to i64                 ; 10 uses
  %i.iri = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %i.irh
  store i64 0, ptr %i.iri, align 8, !tbaa !106
  %.not.i15946392 = icmp eq i32 %i.iop, 0
  %.pre7656 = zext nneg i32 %i.ion to i64         ; 5 uses
  br i1 %.not.i15946392, label %._crit_edge6396, label %.lr.ph6395

.lr.ph6395:                                       ; preds = %bb.art
  %i.irj = sub nuw nsw i32 64, %i.ion
  %i.irk = zext nneg i32 %i.irj to i64            ; 4 uses
  %min.iters.check10223 = icmp ult i32 %i.iop, 20
  br i1 %min.iters.check10223, label %scalar.ph10222.preheader, label %vector.scevcheck10217

vector.scevcheck10217:                            ; preds = %.lr.ph6395
  %i.irl = add nsw i64 %i.irh, -1                 ; 2 uses
  %i.irm = add i32 %i.iop, %i.ioo
  %i.irn = trunc i64 %i.irl to i32
  %i.iro = icmp ult i32 %i.irm, %i.irn
  %i.irp = icmp ugt i64 %i.irl, 4294967295
  %i.irq = or i1 %i.iro, %i.irp
  br i1 %i.irq, label %scalar.ph10222.preheader, label %vector.memcheck10218

vector.memcheck10218:                             ; preds = %vector.scevcheck10217
  %i.irr = shl nuw nsw i64 %i.irh, 3              ; 2 uses
  %i.irs = add i32 %i.iop, %i.ioo
  %i.irt = zext i32 %i.irs to i64
  %i.iru = shl nuw nsw i64 %i.irt, 3              ; 2 uses
  %i.irv = sub nsw i64 %i.iru, %i.irr
  %diff.check10219 = icmp ugt i64 %i.irv, -32
  %i.irw = sub nsw i64 %i.irr, %i.iru
  %i.irx = add nsw i64 %i.irw, -9
  %diff.check10220 = icmp ult i64 %i.irx, 31
  %conflict.rdx10221 = or i1 %diff.check10219, %diff.check10220
  br i1 %conflict.rdx10221, label %scalar.ph10222.preheader, label %vector.ph10224

vector.ph10224:                                   ; preds = %vector.memcheck10218
  %n.vec10225 = and i64 %i.irh, 4294967292        ; 2 uses
  %i.iry = and i64 %i.irh, 3
  %broadcast.splatinsert10226 = insertelement <2 x i64> poison, i64 %i.irk, i64 0
  %broadcast.splat10227 = shufflevector <2 x i64> %broadcast.splatinsert10226, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10228 = insertelement <2 x i64> poison, i64 %.pre7656, i64 0
  %broadcast.splat10229 = shufflevector <2 x i64> %broadcast.splatinsert10228, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10230

vector.body10230:                                 ; preds = %vector.body10230, %vector.ph10224
  %index10231 = phi i64 [ 0, %vector.ph10224 ], [ %index.next10236, %vector.body10230 ] ; 2 uses
  %i.irz = sub i64 %i.irh, %index10231            ; 3 uses
  %i.isa = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %i.irz ; 2 uses
  %i.isb = getelementptr inbounds i8, ptr %i.isa, i64 -8
  %i.isc = getelementptr inbounds i8, ptr %i.isa, i64 -24
  %wide.load10232 = load <2 x i64>, ptr %i.isb, align 8, !tbaa !106
  %wide.load10233 = load <2 x i64>, ptr %i.isc, align 8, !tbaa !106
  %i.isd = shl <2 x i64> %wide.load10232, %broadcast.splat10229
  %i.ise = shl <2 x i64> %wide.load10233, %broadcast.splat10229
  %i.isf = getelementptr [8 x i8], ptr %11, i64 %i.irz ; 2 uses
  %i.isg = getelementptr i8, ptr %i.isf, i64 -8
  %i.ish = getelementptr i8, ptr %i.isf, i64 -24
  %wide.load10234 = load <2 x i64>, ptr %i.isg, align 8, !tbaa !106
  %wide.load10235 = load <2 x i64>, ptr %i.ish, align 8, !tbaa !106
  %i.isi = lshr <2 x i64> %wide.load10234, %broadcast.splat10227
  %i.isj = lshr <2 x i64> %wide.load10235, %broadcast.splat10227
  %i.isk = or <2 x i64> %i.isi, %i.isd
  %i.isl = or <2 x i64> %i.isj, %i.ise
  %i.ism = trunc nuw i64 %i.irz to i32
  %i.isn = add i32 %i.ioo, %i.ism
  %i.iso = zext i32 %i.isn to i64
  %i.isp = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %i.iso ; 2 uses
  %i.isq = getelementptr inbounds i8, ptr %i.isp, i64 -8
  %i.isr = getelementptr inbounds i8, ptr %i.isp, i64 -24
  store <2 x i64> %i.isk, ptr %i.isq, align 8, !tbaa !106
  store <2 x i64> %i.isl, ptr %i.isr, align 8, !tbaa !106
  %index.next10236 = add nuw i64 %index10231, 4   ; 2 uses
  %i.iss = icmp eq i64 %index.next10236, %n.vec10225
  br i1 %i.iss, label %middle.block10237, label %vector.body10230, !llvm.loop !234

middle.block10237:                                ; preds = %vector.body10230
  %cmp.n10238 = icmp eq i64 %n.vec10225, %i.irh
  br i1 %cmp.n10238, label %._crit_edge6396, label %scalar.ph10222.preheader

scalar.ph10222.preheader:                         ; preds = %vector.memcheck10218, %vector.scevcheck10217, %.lr.ph6395, %middle.block10237
  %indvars.iv7196.ph = phi i64 [ %i.irh, %vector.memcheck10218 ], [ %i.irh, %vector.scevcheck10217 ], [ %i.irh, %.lr.ph6395 ], [ %i.iry, %middle.block10237 ] ; 7 uses
  %xtraiter11187 = and i64 %indvars.iv7196.ph, 1
  %lcmp.mod11188.not = icmp eq i64 %xtraiter11187, 0
  br i1 %lcmp.mod11188.not, label %scalar.ph10222.prol.loopexit, label %scalar.ph10222.prol

scalar.ph10222.prol:                              ; preds = %scalar.ph10222.preheader
  %i.ist = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %indvars.iv7196.ph
  %i.isu = load i64, ptr %i.ist, align 8, !tbaa !106
  %i.isv = shl i64 %i.isu, %.pre7656
  %i.isw = add nsw i64 %indvars.iv7196.ph, -1
  %i.isx = getelementptr [8 x i8], ptr %11, i64 %indvars.iv7196.ph
  %i.isy = load i64, ptr %i.isx, align 8, !tbaa !106
  %i.isz = lshr i64 %i.isy, %i.irk
  %i.ita = or i64 %i.isz, %i.isv
  %i.itb = trunc nuw i64 %indvars.iv7196.ph to i32
  %i.itc = add i32 %i.ioo, %i.itb
  %i.itd = zext i32 %i.itc to i64
  %i.ite = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %i.itd
  store i64 %i.ita, ptr %i.ite, align 8, !tbaa !106
  br label %scalar.ph10222.prol.loopexit

scalar.ph10222.prol.loopexit:                     ; preds = %scalar.ph10222.prol, %scalar.ph10222.preheader
  %indvars.iv7196.unr = phi i64 [ %indvars.iv7196.ph, %scalar.ph10222.preheader ], [ %i.isw, %scalar.ph10222.prol ]
  %i.itf = icmp eq i64 %indvars.iv7196.ph, 1
  br i1 %i.itf, label %._crit_edge6396, label %scalar.ph10222

scalar.ph10222:                                   ; preds = %scalar.ph10222.prol.loopexit, %scalar.ph10222
  %indvars.iv7196 = phi i64 [ %i.itv, %scalar.ph10222 ], [ %indvars.iv7196.unr, %scalar.ph10222.prol.loopexit ] ; 6 uses
  %i.itg = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %indvars.iv7196
  %i.ith = load i64, ptr %i.itg, align 8, !tbaa !106
  %i.iti = shl i64 %i.ith, %.pre7656
  %i.itj = add nsw i64 %indvars.iv7196, -1        ; 2 uses
  %i.itk = getelementptr [8 x i8], ptr %11, i64 %indvars.iv7196
  %i.itl = load i64, ptr %i.itk, align 8, !tbaa !106
  %i.itm = lshr i64 %i.itl, %i.irk
  %i.itn = or i64 %i.itm, %i.iti
  %i.ito = trunc nuw i64 %indvars.iv7196 to i32
  %i.itp = add i32 %i.ioo, %i.ito
  %i.itq = zext i32 %i.itp to i64
  %i.itr = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %i.itq
  store i64 %i.itn, ptr %i.itr, align 8, !tbaa !106
  %i.its = getelementptr [8 x i8], ptr %11, i64 %indvars.iv7196
  %i.itt = load i64, ptr %i.its, align 8, !tbaa !106
  %i.itu = shl i64 %i.itt, %.pre7656
  %i.itv = add nsw i64 %indvars.iv7196, -2        ; 2 uses
  %i.itw = getelementptr [8 x i8], ptr %11, i64 %i.itj
  %i.itx = load i64, ptr %i.itw, align 8, !tbaa !106
  %i.ity = lshr i64 %i.itx, %i.irk
  %i.itz = or i64 %i.ity, %i.itu
  %i.iua = trunc nuw i64 %i.itj to i32
  %i.iub = add i32 %i.ioo, %i.iua
  %i.iuc = zext i32 %i.iub to i64
  %i.iud = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %i.iuc
  store i64 %i.itz, ptr %i.iud, align 8, !tbaa !106
  %.not.i1594.wide.1 = icmp eq i64 %i.itv, 0
  br i1 %.not.i1594.wide.1, label %._crit_edge6396, label %scalar.ph10222, !llvm.loop !235

._crit_edge6396:                                  ; preds = %scalar.ph10222.prol.loopexit, %scalar.ph10222, %middle.block10237, %bb.art
  %i.iue = load i64, ptr %i.irg, align 8, !tbaa !106
  %i.iuf = shl i64 %i.iue, %.pre7656
  %i.iug = zext nneg i32 %i.ioo to i64
  %i.iuh = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %i.iug
  store i64 %i.iuf, ptr %i.iuh, align 8, !tbaa !106
  %i.iui = add i32 %i.iop, %i.ioo                 ; 2 uses
  %i.iuj = zext i32 %i.iui to i64
  %i.iuk = getelementptr inbounds nuw [8 x i8], ptr %i.irg, i64 %i.iuj
  %i.iul = load i64, ptr %i.iuk, align 8, !tbaa !106
  %i.ium = icmp ne i64 %i.iul, 0
  %i.iun = zext i1 %i.ium to i32
  %i.iuo = add i32 %i.iui, %i.iun
  store i32 %i.iuo, ptr %11, align 8, !tbaa !131
  %.not45.i15966397 = icmp eq i32 %i.ioo, 0
  br i1 %.not45.i15966397, label %bigint_mul_pow2.exit1592, label %bigint_mul_pow2.exit1592.sink.split

bigint_mul_pow2.exit1592.sink.split:              ; preds = %._crit_edge6396, %._crit_edge6413, %.lr.ph6425.preheader, %.lr.ph6408
  %.sink9133 = phi i32 [ %i.iip, %._crit_edge6413 ], [ %i.ioo, %.lr.ph6408 ], [ %i.iip, %.lr.ph6425.preheader ], [ %i.ioo, %._crit_edge6396 ]
  %.sink9128 = phi ptr [ %i.ibo, %._crit_edge6413 ], [ %i.irf, %.lr.ph6408 ], [ %i.ibo, %.lr.ph6425.preheader ], [ %i.irg, %._crit_edge6396 ]
  %.ph9127 = phi i32 [ %i.iol, %._crit_edge6413 ], [ %i.iim, %.lr.ph6408 ], [ %i.ild, %.lr.ph6425.preheader ], [ %i.iim, %._crit_edge6396 ]
  %i.iup = add nsw i32 %.sink9133, -1
  %i.iuq = zext nneg i32 %i.iup to i64
  %i.iur = shl nuw nsw i64 %i.iuq, 3
  %i.ius = add nuw nsw i64 %i.iur, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink9128, i8 0, i64 %i.ius, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit1592

bigint_mul_pow2.exit1592:                         ; preds = %bigint_mul_pow2.exit1592.sink.split, %._crit_edge6396, %._crit_edge6404, %._crit_edge6413
  %i.iut = phi i32 [ %i.iol, %._crit_edge6413 ], [ %i.iim, %._crit_edge6396 ], [ %i.iim, %._crit_edge6404 ], [ %.ph9127, %bigint_mul_pow2.exit1592.sink.split ] ; 2 uses
  %i.iuu = load i32, ptr %11, align 8, !tbaa !131 ; 4 uses
  %i.iuv = icmp ult i32 %i.iuu, %i.iut
  br i1 %i.iuv, label %bigint_cmp.exit1631.thread, label %bb.aru

bb.aru:                                           ; preds = %bigint_mul_pow2.exit1592
  %i.iuw = icmp ugt i32 %i.iuu, %i.iut
  br i1 %i.iuw, label %bigint_cmp.exit1631.thread, label %.preheader4958

.preheader4958:                                   ; preds = %bb.aru
  %.not.i16259992 = icmp eq i32 %i.iuu, 0
  br i1 %.not.i16259992, label %bigint_cmp.exit1631.thread4385, label %.lr.ph9995

.lr.ph9995:                                       ; preds = %.preheader4958
  %i.iux = zext i32 %i.iuu to i64
  br label %bb.arw

bb.arv:                                           ; preds = %bb.arw
  %i.iuy = add nsw i64 %indvars.iv72149993, -1    ; 2 uses
  %.not.i1625 = icmp eq i64 %i.iuy, 0
  br i1 %.not.i1625, label %bigint_cmp.exit1631.thread4385, label %bb.arw, !llvm.loop !16

bb.arw:                                           ; preds = %.lr.ph9995, %bb.arv
  %.016.i16239994 = phi i32 [ undef, %.lr.ph9995 ], [ %.1.i1628, %bb.arv ]
  %indvars.iv72149993 = phi i64 [ %i.iux, %.lr.ph9995 ], [ %i.iuy, %bb.arv ] ; 3 uses
  %i.iuz = getelementptr [8 x i8], ptr %11, i64 %indvars.iv72149993
  %i.iva = load i64, ptr %i.iuz, align 8, !tbaa !106 ; 3 uses
  %i.ivb = getelementptr [8 x i8], ptr %12, i64 %indvars.iv72149993
  %i.ivc = load i64, ptr %i.ivb, align 8, !tbaa !106 ; 3 uses
  %.not4762 = icmp ult i64 %i.iva, %i.ivc
  %.not4763 = icmp ugt i64 %i.iva, %i.ivc
  %..016.i1626 = select i1 %.not4763, i32 1, i32 %.016.i16239994
  %.1.i1628 = select i1 %.not4762, i32 -1, i32 %..016.i1626 ; 3 uses
  %cond.i1629 = icmp eq i64 %i.iva, %i.ivc
  br i1 %cond.i1629, label %bb.arv, label %bigint_cmp.exit1631, !llvm.loop !16

bigint_cmp.exit1631:                              ; preds = %bb.arw
  %.not989.i = icmp eq i32 %.1.i1628, 0
  br i1 %.not989.i, label %bigint_cmp.exit1631.thread4385, label %bigint_cmp.exit1631.thread, !prof !125

bigint_cmp.exit1631.thread:                       ; preds = %bigint_mul_pow2.exit1592, %bb.aru, %bigint_cmp.exit1631
  %.2.i16304384 = phi i32 [ %.1.i1628, %bigint_cmp.exit1631 ], [ -1, %bigint_mul_pow2.exit1592 ], [ 1, %bb.aru ]
  %i.ivd = icmp sgt i32 %.2.i16304384, 0
  %i.ive = zext i1 %i.ivd to i64
  br label %bb.arx

bigint_cmp.exit1631.thread4385:                   ; preds = %bb.arv, %.preheader4958, %bigint_cmp.exit1631
  %i.ivf = and i64 %.0.i1509.ph, 1
  br label %bb.arx

bb.arx:                                           ; preds = %bigint_cmp.exit1631.thread4385, %bigint_cmp.exit1631.thread
  %.pn.i360 = phi i64 [ %i.ive, %bigint_cmp.exit1631.thread ], [ %i.ivf, %bigint_cmp.exit1631.thread4385 ]
  %.0895.i = add nuw nsw i64 %.pn.i360, %.0.i1509.ph ; 2 uses
  %i.ivg = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.ivg, label %bb.ary, label %bb.asd, !prof !45

bb.ary:                                           ; preds = %bb.arx
  %i.ivh = and i32 %2, 128
  %.not4764 = icmp eq i32 %i.ivh, 0
  br i1 %.not4764, label %bb.asa, label %bb.arz, !prof !62

bb.arz:                                           ; preds = %bb.ary
  %i.ivi = load ptr, ptr %i.h, align 8, !tbaa !107
  store i8 0, ptr %i.ivi, align 1, !tbaa !100
  %i.ivj = ptrtoint ptr %.33.i357 to i64
  %i.ivk = ptrtoint ptr %i.gue to i64
  %i.ivl = sub i64 %i.ivj, %i.ivk
  %i.ivm = shl i64 %i.ivl, 8
  %i.ivn = or disjoint i64 %i.ivm, 1
  store i64 %i.ivn, ptr %.5665.i347, align 8, !tbaa !99
  %i.ivo = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store ptr %i.gue, ptr %i.ivo, align 8, !tbaa !100
  store ptr %.33.i357, ptr %i.h, align 8, !tbaa !107
  br label %.split4420

bb.asa:                                           ; preds = %bb.ary
  br i1 %.not4722, label %bb.asc, label %bb.asb, !prof !62

bb.asb:                                           ; preds = %bb.asa
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.ivp = select i1 %i.guj, i64 -4503599627370496, i64 9218868437227405312
  %i.ivq = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.ivp, ptr %i.ivq, align 8, !tbaa !100
  br label %.split4420

bb.asc:                                           ; preds = %bb.asa
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !107
  store ptr %i.gue, ptr %i.e, align 8, !tbaa !107
  br label %.split4420.thread

bb.asd:                                           ; preds = %bb.arx
  store i64 20, ptr %.5665.i347, align 8, !tbaa !99
  %i.ivr = select i1 %i.guj, i64 -9223372036854775808, i64 0
  %i.ivs = or disjoint i64 %.0895.i, %i.ivr
  %i.ivt = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.ivs, ptr %i.ivt, align 8, !tbaa !100
  br label %.split4420

.split4420.thread:                                ; preds = %bb.aqy, %bb.asc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.bqv

.split4420:                                       ; preds = %bb.asd, %bb.asb, %bb.arz, %bb.ara, %bb.aqx, %bb.aqv
  store ptr %.33.i357, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

.preheader4979:                                   ; preds = %bb.axd, %bb.axe, %bb.axk, %bb.axj, %bb.axp, %bb.ayc, %bb.bql, %.split4389, %.split4406, %read_num.exit, %read_str_opt.exit942, %read_true.exit, %read_false.exit, %read_null.exit, %read_nan.exit, %read_inf.exit1474, %.split4407, %.split4405, %.split4417, %.split4409, %.split4401, %.split4400, %.split4399, %.split4408, %.split4410, %.split4411, %.split4412, %.split4415, %.split4416, %.split4390, %.split4391, %.split4392, %.split4393, %.split4394, %.split4395, %.split4396, %.split4397, %.split4398, %.split4404, %.split4403, %.split4402, %.split4414, %.split4413, %.split4418, %.split4419, %.split4420
  %.10779.i181.ph = phi i64 [ %.3772.i344, %.split4419 ], [ %.3772.i344, %.split4418 ], [ %.3772.i344, %.split4417 ], [ %.3772.i344, %.split4416 ], [ %.3772.i344, %.split4415 ], [ %.3772.i344, %.split4414 ], [ %.3772.i344, %.split4413 ], [ %.3772.i344, %.split4412 ], [ %.3772.i344, %.split4411 ], [ %.3772.i344, %.split4410 ], [ %.3772.i344, %.split4409 ], [ %.3772.i344, %.split4408 ], [ %.3772.i344, %.split4407 ], [ %.3772.i344, %.split4406 ], [ %.3772.i344, %.split4405 ], [ %.3772.i344, %read_inf.exit1474 ], [ %.3772.i344, %.split4404 ], [ %.3772.i344, %.split4403 ], [ %.3772.i344, %.split4402 ], [ %.3772.i344, %.split4401 ], [ %.3772.i344, %.split4400 ], [ %.3772.i344, %.split4399 ], [ %.3772.i344, %.split4398 ], [ %.3772.i344, %.split4397 ], [ %.3772.i344, %.split4396 ], [ %.3772.i344, %.split4395 ], [ %.3772.i344, %.split4394 ], [ %.3772.i344, %.split4393 ], [ %.3772.i344, %.split4392 ], [ %.3772.i344, %.split4391 ], [ %.3772.i344, %.split4390 ], [ %.3772.i344, %.split4389 ], [ %.3772.i344, %.split4420 ], [ %.9778.i320, %bb.axp ], [ %.20789.i175, %bb.bql ], [ %.11780.i187, %bb.ayc ], [ %.7776.i272, %read_nan.exit ], [ %.7776.i272, %read_null.exit ], [ %.6775.i284, %read_false.exit ], [ %.5774.i296, %read_true.exit ], [ %.4773.i308, %read_str_opt.exit942 ], [ %.3772.i344, %read_num.exit ], [ %.8777.i3328316, %bb.axj ], [ %.8777.i3328316, %bb.axk ], [ %.8777.i3328316, %bb.axe ], [ %.8777.i3328316, %bb.axd ] ; 2 uses
  %.2762.i182.ph = phi i64 [ %i.guf, %.split4419 ], [ %i.guf, %.split4418 ], [ %i.guf, %.split4417 ], [ %i.guf, %.split4416 ], [ %i.guf, %.split4415 ], [ %i.guf, %.split4414 ], [ %i.guf, %.split4413 ], [ %i.guf, %.split4412 ], [ %i.guf, %.split4411 ], [ %i.guf, %.split4410 ], [ %i.guf, %.split4409 ], [ %i.guf, %.split4408 ], [ %i.guf, %.split4407 ], [ %i.guf, %.split4406 ], [ %i.guf, %.split4405 ], [ %i.guf, %read_inf.exit1474 ], [ %i.guf, %.split4404 ], [ %i.guf, %.split4403 ], [ %i.guf, %.split4402 ], [ %i.guf, %.split4401 ], [ %i.guf, %.split4400 ], [ %i.guf, %.split4399 ], [ %i.guf, %.split4398 ], [ %i.guf, %.split4397 ], [ %i.guf, %.split4396 ], [ %i.guf, %.split4395 ], [ %i.guf, %.split4394 ], [ %i.guf, %.split4393 ], [ %i.guf, %.split4392 ], [ %i.guf, %.split4391 ], [ %i.guf, %.split4390 ], [ %i.guf, %.split4389 ], [ %i.guf, %.split4420 ], [ %i.jxu, %bb.axp ], [ %i.nyn, %bb.bql ], [ %i.jzd, %bb.ayc ], [ %i.jrt, %read_nan.exit ], [ %i.jrt, %read_null.exit ], [ %i.jrb, %read_false.exit ], [ %i.jqh, %read_true.exit ], [ %i.iwl, %read_str_opt.exit942 ], [ %i.guf, %read_num.exit ], [ %i.juj, %bb.axj ], [ %i.juj, %bb.axk ], [ %i.juj, %bb.axe ], [ %i.juj, %bb.axd ] ; 2 uses
  %.18744.i183.ph = phi ptr [ %.5731.i345, %.split4419 ], [ %.5731.i345, %.split4418 ], [ %.5731.i345, %.split4417 ], [ %.5731.i345, %.split4416 ], [ %.5731.i345, %.split4415 ], [ %.5731.i345, %.split4414 ], [ %.5731.i345, %.split4413 ], [ %.5731.i345, %.split4412 ], [ %.5731.i345, %.split4411 ], [ %.5731.i345, %.split4410 ], [ %.5731.i345, %.split4409 ], [ %.5731.i345, %.split4408 ], [ %.5731.i345, %.split4407 ], [ %.5731.i345, %.split4406 ], [ %.5731.i345, %.split4405 ], [ %.5731.i345, %read_inf.exit1474 ], [ %.5731.i345, %.split4404 ], [ %.5731.i345, %.split4403 ], [ %.5731.i345, %.split4402 ], [ %.5731.i345, %.split4401 ], [ %.5731.i345, %.split4400 ], [ %.5731.i345, %.split4399 ], [ %.5731.i345, %.split4398 ], [ %.5731.i345, %.split4397 ], [ %.5731.i345, %.split4396 ], [ %.5731.i345, %.split4395 ], [ %.5731.i345, %.split4394 ], [ %.5731.i345, %.split4393 ], [ %.5731.i345, %.split4392 ], [ %.5731.i345, %.split4391 ], [ %.5731.i345, %.split4390 ], [ %.5731.i345, %.split4389 ], [ %.5731.i345, %.split4420 ], [ %.17743.i321, %bb.axp ], [ %.32758.i177, %bb.bql ], [ %.19745.i189, %bb.ayc ], [ %.13739.i273, %read_nan.exit ], [ %.13739.i273, %read_null.exit ], [ %.11737.i285, %read_false.exit ], [ %.9735.i297, %read_true.exit ], [ %.7733.i309, %read_str_opt.exit942 ], [ %.5731.i345, %read_num.exit ], [ %.15741.i3338318, %bb.axj ], [ %.15741.i3338318, %bb.axk ], [ %.15741.i3338318, %bb.axe ], [ %.15741.i3338318, %bb.axd ] ; 4 uses
  %.18711.i184.ph = phi ptr [ %.5698.i346, %.split4419 ], [ %.5698.i346, %.split4418 ], [ %.5698.i346, %.split4417 ], [ %.5698.i346, %.split4416 ], [ %.5698.i346, %.split4415 ], [ %.5698.i346, %.split4414 ], [ %.5698.i346, %.split4413 ], [ %.5698.i346, %.split4412 ], [ %.5698.i346, %.split4411 ], [ %.5698.i346, %.split4410 ], [ %.5698.i346, %.split4409 ], [ %.5698.i346, %.split4408 ], [ %.5698.i346, %.split4407 ], [ %.5698.i346, %.split4406 ], [ %.5698.i346, %.split4405 ], [ %.5698.i346, %read_inf.exit1474 ], [ %.5698.i346, %.split4404 ], [ %.5698.i346, %.split4403 ], [ %.5698.i346, %.split4402 ], [ %.5698.i346, %.split4401 ], [ %.5698.i346, %.split4400 ], [ %.5698.i346, %.split4399 ], [ %.5698.i346, %.split4398 ], [ %.5698.i346, %.split4397 ], [ %.5698.i346, %.split4396 ], [ %.5698.i346, %.split4395 ], [ %.5698.i346, %.split4394 ], [ %.5698.i346, %.split4393 ], [ %.5698.i346, %.split4392 ], [ %.5698.i346, %.split4391 ], [ %.5698.i346, %.split4390 ], [ %.5698.i346, %.split4389 ], [ %.5698.i346, %.split4420 ], [ %.17710.i322, %bb.axp ], [ %.32725.i178, %bb.bql ], [ %.19712.i190, %bb.ayc ], [ %.13706.i274, %read_nan.exit ], [ %.13706.i274, %read_null.exit ], [ %.11704.i286, %read_false.exit ], [ %.9702.i298, %read_true.exit ], [ %.7700.i310, %read_str_opt.exit942 ], [ %.5698.i346, %read_num.exit ], [ %.15708.i3348322, %bb.axj ], [ %.15708.i3348322, %bb.axk ], [ %.15708.i3348322, %bb.axe ], [ %.15708.i3348322, %bb.axd ] ; 2 uses
  %.18678.i185.ph = phi ptr [ %.5665.i347, %.split4419 ], [ %.5665.i347, %.split4418 ], [ %.5665.i347, %.split4417 ], [ %.5665.i347, %.split4416 ], [ %.5665.i347, %.split4415 ], [ %.5665.i347, %.split4414 ], [ %.5665.i347, %.split4413 ], [ %.5665.i347, %.split4412 ], [ %.5665.i347, %.split4411 ], [ %.5665.i347, %.split4410 ], [ %.5665.i347, %.split4409 ], [ %.5665.i347, %.split4408 ], [ %.5665.i347, %.split4407 ], [ %.5665.i347, %.split4406 ], [ %.5665.i347, %.split4405 ], [ %.5665.i347, %read_inf.exit1474 ], [ %.5665.i347, %.split4404 ], [ %.5665.i347, %.split4403 ], [ %.5665.i347, %.split4402 ], [ %.5665.i347, %.split4401 ], [ %.5665.i347, %.split4400 ], [ %.5665.i347, %.split4399 ], [ %.5665.i347, %.split4398 ], [ %.5665.i347, %.split4397 ], [ %.5665.i347, %.split4396 ], [ %.5665.i347, %.split4395 ], [ %.5665.i347, %.split4394 ], [ %.5665.i347, %.split4393 ], [ %.5665.i347, %.split4392 ], [ %.5665.i347, %.split4391 ], [ %.5665.i347, %.split4390 ], [ %.5665.i347, %.split4389 ], [ %.5665.i347, %.split4420 ], [ %.17677.i323, %bb.axp ], [ %.32692.i179, %bb.bql ], [ %.19679.i191, %bb.ayc ], [ %.13673.i275, %read_nan.exit ], [ %.13673.i275, %read_null.exit ], [ %.11671.i287, %read_false.exit ], [ %.9669.i299, %read_true.exit ], [ %.7667.i311, %read_str_opt.exit942 ], [ %.5665.i347, %read_num.exit ], [ %.15675.i3358324, %bb.axj ], [ %.15675.i3358324, %bb.axk ], [ %.15675.i3358324, %bb.axe ], [ %.15675.i3358324, %bb.axd ] ; 2 uses
  %.18.i186.ph = phi ptr [ %.5653.i348, %.split4419 ], [ %.5653.i348, %.split4418 ], [ %.5653.i348, %.split4417 ], [ %.5653.i348, %.split4416 ], [ %.5653.i348, %.split4415 ], [ %.5653.i348, %.split4414 ], [ %.5653.i348, %.split4413 ], [ %.5653.i348, %.split4412 ], [ %.5653.i348, %.split4411 ], [ %.5653.i348, %.split4410 ], [ %.5653.i348, %.split4409 ], [ %.5653.i348, %.split4408 ], [ %.5653.i348, %.split4407 ], [ %.5653.i348, %.split4406 ], [ %.5653.i348, %.split4405 ], [ %.5653.i348, %read_inf.exit1474 ], [ %.5653.i348, %.split4404 ], [ %.5653.i348, %.split4403 ], [ %.5653.i348, %.split4402 ], [ %.5653.i348, %.split4401 ], [ %.5653.i348, %.split4400 ], [ %.5653.i348, %.split4399 ], [ %.5653.i348, %.split4398 ], [ %.5653.i348, %.split4397 ], [ %.5653.i348, %.split4396 ], [ %.5653.i348, %.split4395 ], [ %.5653.i348, %.split4394 ], [ %.5653.i348, %.split4393 ], [ %.5653.i348, %.split4392 ], [ %.5653.i348, %.split4391 ], [ %.5653.i348, %.split4390 ], [ %.5653.i348, %.split4389 ], [ %.5653.i348, %.split4420 ], [ %.17.i324, %bb.axp ], [ %i.nyl, %bb.bql ], [ %i.jzb, %bb.ayc ], [ %.13.i276, %read_nan.exit ], [ %.13.i276, %read_null.exit ], [ %.11659.i288, %read_false.exit ], [ %.9657.i300, %read_true.exit ], [ %.7655.i312, %read_str_opt.exit942 ], [ %.5653.i348, %read_num.exit ], [ %.15.i3368328, %bb.axj ], [ %.15.i3368328, %bb.axk ], [ %.15.i3368328, %bb.axe ], [ %.15.i3368328, %bb.axd ] ; 2 uses
  %i.ivu = and i32 %2, 2056
  %.not4771 = icmp eq i32 %i.ivu, 0
  %.pre7573 = load ptr, ptr %i.e, align 8, !tbaa !107
  br label %.backedge4981

read_num.exit.thread:                             ; preds = %bb.app, %bb.apw, %bb.aqf, %bb.akr, %bb.apf, %bb.apl, %bb.akt, %bb.akv, %read_inf_or_nan.exit847.thread, %bb.aox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.bqv

read_num.exit:                                    ; preds = %bb.amd, %bb.amg, %bb.amj, %bb.apr, %bb.apt, %bb.apv, %bb.apz, %bb.aqc, %bb.aqe
  %.sink9134 = phi ptr [ %i.hbh, %bb.amd ], [ %i.hbo, %bb.amg ], [ %i.hbv, %bb.amj ], [ %.31.i354.lcssa, %bb.apr ], [ %.31.i354.lcssa, %bb.apt ], [ %.31.i354.lcssa, %bb.apv ], [ %.32.i355, %bb.apz ], [ %.32.i355, %bb.aqc ], [ %.32.i355, %bb.aqe ]
  store ptr %.sink9134, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

bb.ase:                                           ; preds = %bb.ajs
  switch i8 %i.gtk, label %bb.awo [
    i8 34, label %bb.asf
    i8 116, label %bb.avv
    i8 102, label %bb.avy
    i8 110, label %bb.awb
    i8 93, label %bb.awm
  ]

bb.asf:                                           ; preds = %bb.ase
  %i.ivv = getelementptr inbounds nuw i8, ptr %.3663.i121.ph, i64 16 ; 3 uses
  %.not867.i301 = icmp ult ptr %i.ivv, %.3696.i120.ph
  br i1 %.not867.i301, label %bb.ash, label %bb.asg, !prof !62

bb.asg:                                           ; preds = %bb.asf
  %i.ivw = lshr i64 %.2771.i117.ph, 1
  %i.ivx = add i64 %i.ivw, %.2771.i117.ph         ; 3 uses
  %i.ivy = shl i64 %.2771.i117.ph, 4
  %i.ivz = shl i64 %i.ivx, 4
  %i.iwa = call ptr %.sroa.52178.0.copyload2180(ptr noundef %.sroa.312208.0.copyload2210, ptr noundef %.3729.i119.ph, i64 noundef %i.ivy, i64 noundef %i.ivz) #33, !inline_history !225 ; 5 uses
  %.not868.i302 = icmp eq ptr %i.iwa, null
  br i1 %.not868.i302, label %bb.bqz, label %.thread4421

.thread4421:                                      ; preds = %bb.asg
  %i.iwb = ptrtoint ptr %.3651.i122.ph to i64
  %i.iwc = ptrtoint ptr %.3729.i119.ph to i64     ; 2 uses
  %i.iwd = sub i64 %i.iwb, %i.iwc
  %i.iwe = ptrtoint ptr %i.ivv to i64
  %i.iwf = sub i64 %i.iwe, %i.iwc
  %i.iwg = getelementptr inbounds nuw i8, ptr %i.iwa, i64 %i.iwf
  %i.iwh = getelementptr inbounds nuw i8, ptr %i.iwa, i64 %i.iwd
  %i.iwi = getelementptr [16 x i8], ptr %i.iwa, i64 %i.ivx
  %i.iwj = getelementptr i8, ptr %i.iwi, i64 -32
  %.pre7588 = load ptr, ptr %i.e, align 8, !tbaa !107
  br label %bb.ash

bb.ash:                                           ; preds = %.thread4421, %bb.asf
  %i.iwk = phi ptr [ %.pre7588, %.thread4421 ], [ %.promoted6294, %bb.asf ]
  %.4773.i308 = phi i64 [ %i.ivx, %.thread4421 ], [ %.2771.i117.ph, %bb.asf ]
  %.7733.i309 = phi ptr [ %i.iwa, %.thread4421 ], [ %.3729.i119.ph, %bb.asf ] ; 22 uses
  %.7700.i310 = phi ptr [ %i.iwj, %.thread4421 ], [ %.3696.i120.ph, %bb.asf ]
  %.7667.i311 = phi ptr [ %i.iwg, %.thread4421 ], [ %i.ivv, %bb.asf ] ; 3 uses
  %.7655.i312 = phi ptr [ %i.iwh, %.thread4421 ], [ %.3651.i122.ph, %bb.asf ]
  %i.iwl = add i64 %.1761.i118.ph, 1
  %i.iwm = getelementptr inbounds nuw i8, ptr %i.iwk, i64 1 ; 3 uses
  %i.iwn = and i32 %2, 64
  %.not4716 = icmp eq i32 %i.iwn, 0               ; 3 uses
  br label %.backedge4955

.backedge4955:                                    ; preds = %.backedge4955.backedge, %bb.ash
  %.04128 = phi ptr [ %i.iwm, %bb.ash ], [ %.04128.be, %.backedge4955.backedge ] ; 18 uses
  %i.iwo = load i8, ptr %.04128, align 1, !tbaa !100 ; 2 uses
  %i.iwp = zext i8 %i.iwo to i64
  %i.iwq = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.iwp
  %i.iwr = load i8, ptr %i.iwq, align 1, !tbaa !100
  %i.iws = trunc i8 %i.iwr to i1
  br i1 %i.iws, label %bb.asi, label %bb.asy, !prof !62

bb.asi:                                           ; preds = %.backedge4955
  %i.iwt = getelementptr inbounds nuw i8, ptr %.04128, i64 1 ; 2 uses
  %i.iwu = load i8, ptr %i.iwt, align 1, !tbaa !100 ; 2 uses
end_hunk_2
begin_hunk_3_@yyjson_read_opts:bb.a
  %i.nnd = getelementptr inbounds nuw [8 x i8], ptr %i.nlm, i64 %i.nnc
  store i64 %i.nmz, ptr %i.nnd, align 8, !tbaa !106
  %i.nne = add nsw i64 %indvars.iv7140, -2        ; 2 uses
  %i.nnf = getelementptr [8 x i8], ptr %9, i64 %i.nmx
  %i.nng = load i64, ptr %i.nnf, align 8, !tbaa !106
  %i.nnh = trunc nuw i64 %i.nmx to i32
  %i.nni = add i32 %i.nln, %i.nnh
  %i.nnj = zext i32 %i.nni to i64
  %i.nnk = getelementptr inbounds nuw [8 x i8], ptr %i.nlm, i64 %i.nnj
  store i64 %i.nng, ptr %i.nnk, align 8, !tbaa !106
  %i.nnl = add nsw i64 %indvars.iv7140, -3        ; 2 uses
  %i.nnm = getelementptr [8 x i8], ptr %9, i64 %i.nne
  %i.nnn = load i64, ptr %i.nnm, align 8, !tbaa !106
  %i.nno = trunc nuw i64 %i.nne to i32
  %i.nnp = add i32 %i.nln, %i.nno
  %i.nnq = zext i32 %i.nnp to i64
  %i.nnr = getelementptr inbounds nuw [8 x i8], ptr %i.nlm, i64 %i.nnq
  store i64 %i.nnn, ptr %i.nnr, align 8, !tbaa !106
  %i.nns = add nsw i64 %indvars.iv7140, -4        ; 2 uses
  %i.nnt = getelementptr [8 x i8], ptr %9, i64 %i.nnl
  %i.nnu = load i64, ptr %i.nnt, align 8, !tbaa !106
  %i.nnv = trunc nuw i64 %i.nnl to i32
  %i.nnw = add i32 %i.nln, %i.nnv
  %i.nnx = zext i32 %i.nnw to i64
  %i.nny = getelementptr inbounds nuw [8 x i8], ptr %i.nlm, i64 %i.nnx
  store i64 %i.nnu, ptr %i.nny, align 8, !tbaa !106
  %.not46.i1580.wide.3 = icmp eq i64 %i.nns, 0
  br i1 %.not46.i1580.wide.3, label %._crit_edge6206, label %scalar.ph10167, !llvm.loop !249

._crit_edge6206:                                  ; preds = %scalar.ph10167.prol.loopexit, %scalar.ph10167, %middle.block10176, %.preheader5000
  %i.nnz = add i32 %i.nlk, %i.nlj
  store i32 %i.nnz, ptr %9, align 8, !tbaa !131
  %.not47.i15826207 = icmp eq i32 %i.nlj, 0
  br i1 %.not47.i15826207, label %bigint_mul_pow2.exit1574, label %.lr.ph6210

.lr.ph6210:                                       ; preds = %._crit_edge6206
  %i.noa = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bigint_mul_pow2.exit1574.sink.split

bb.boe:                                           ; preds = %bb.bod
  %i.nob = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 12 uses
  %i.noc = zext i32 %i.nlk to i64                 ; 10 uses
  %i.nod = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %i.noc
  store i64 0, ptr %i.nod, align 8, !tbaa !106
  %.not.i15766194 = icmp eq i32 %i.nlk, 0
  %.pre7678 = zext nneg i32 %i.nli to i64         ; 5 uses
  br i1 %.not.i15766194, label %._crit_edge6198, label %.lr.ph6197

.lr.ph6197:                                       ; preds = %bb.boe
  %i.noe = sub nuw nsw i32 64, %i.nli
  %i.nof = zext nneg i32 %i.noe to i64            ; 4 uses
  %min.iters.check10147 = icmp ult i32 %i.nlk, 20
  br i1 %min.iters.check10147, label %scalar.ph10146.preheader, label %vector.scevcheck10141

vector.scevcheck10141:                            ; preds = %.lr.ph6197
  %i.nog = add nsw i64 %i.noc, -1                 ; 2 uses
  %i.noh = add i32 %i.nlk, %i.nlj
  %i.noi = trunc i64 %i.nog to i32
  %i.noj = icmp ult i32 %i.noh, %i.noi
  %i.nok = icmp ugt i64 %i.nog, 4294967295
  %i.nol = or i1 %i.noj, %i.nok
  br i1 %i.nol, label %scalar.ph10146.preheader, label %vector.memcheck10142

vector.memcheck10142:                             ; preds = %vector.scevcheck10141
  %i.nom = shl nuw nsw i64 %i.noc, 3              ; 2 uses
  %i.non = add i32 %i.nlk, %i.nlj
  %i.noo = zext i32 %i.non to i64
  %i.nop = shl nuw nsw i64 %i.noo, 3              ; 2 uses
  %i.noq = sub nsw i64 %i.nop, %i.nom
  %diff.check10143 = icmp ugt i64 %i.noq, -32
  %i.nor = sub nsw i64 %i.nom, %i.nop
  %i.nos = add nsw i64 %i.nor, -9
  %diff.check10144 = icmp ult i64 %i.nos, 31
  %conflict.rdx10145 = or i1 %diff.check10143, %diff.check10144
  br i1 %conflict.rdx10145, label %scalar.ph10146.preheader, label %vector.ph10148

vector.ph10148:                                   ; preds = %vector.memcheck10142
  %n.vec10149 = and i64 %i.noc, 4294967292        ; 2 uses
  %i.not = and i64 %i.noc, 3
  %broadcast.splatinsert10150 = insertelement <2 x i64> poison, i64 %i.nof, i64 0
  %broadcast.splat10151 = shufflevector <2 x i64> %broadcast.splatinsert10150, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10152 = insertelement <2 x i64> poison, i64 %.pre7678, i64 0
  %broadcast.splat10153 = shufflevector <2 x i64> %broadcast.splatinsert10152, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10154

vector.body10154:                                 ; preds = %vector.body10154, %vector.ph10148
  %index10155 = phi i64 [ 0, %vector.ph10148 ], [ %index.next10160, %vector.body10154 ] ; 2 uses
  %i.nou = sub i64 %i.noc, %index10155            ; 3 uses
  %i.nov = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %i.nou ; 2 uses
  %i.now = getelementptr inbounds i8, ptr %i.nov, i64 -8
  %i.nox = getelementptr inbounds i8, ptr %i.nov, i64 -24
  %wide.load10156 = load <2 x i64>, ptr %i.now, align 8, !tbaa !106
  %wide.load10157 = load <2 x i64>, ptr %i.nox, align 8, !tbaa !106
  %i.noy = shl <2 x i64> %wide.load10156, %broadcast.splat10153
  %i.noz = shl <2 x i64> %wide.load10157, %broadcast.splat10153
  %i.npa = getelementptr [8 x i8], ptr %9, i64 %i.nou ; 2 uses
  %i.npb = getelementptr i8, ptr %i.npa, i64 -8
  %i.npc = getelementptr i8, ptr %i.npa, i64 -24
  %wide.load10158 = load <2 x i64>, ptr %i.npb, align 8, !tbaa !106
  %wide.load10159 = load <2 x i64>, ptr %i.npc, align 8, !tbaa !106
  %i.npd = lshr <2 x i64> %wide.load10158, %broadcast.splat10151
  %i.npe = lshr <2 x i64> %wide.load10159, %broadcast.splat10151
  %i.npf = or <2 x i64> %i.npd, %i.noy
  %i.npg = or <2 x i64> %i.npe, %i.noz
  %i.nph = trunc nuw i64 %i.nou to i32
  %i.npi = add i32 %i.nlj, %i.nph
  %i.npj = zext i32 %i.npi to i64
  %i.npk = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %i.npj ; 2 uses
  %i.npl = getelementptr inbounds i8, ptr %i.npk, i64 -8
  %i.npm = getelementptr inbounds i8, ptr %i.npk, i64 -24
  store <2 x i64> %i.npf, ptr %i.npl, align 8, !tbaa !106
  store <2 x i64> %i.npg, ptr %i.npm, align 8, !tbaa !106
  %index.next10160 = add nuw i64 %index10155, 4   ; 2 uses
  %i.npn = icmp eq i64 %index.next10160, %n.vec10149
  br i1 %i.npn, label %middle.block10161, label %vector.body10154, !llvm.loop !250

middle.block10161:                                ; preds = %vector.body10154
  %cmp.n10162 = icmp eq i64 %n.vec10149, %i.noc
  br i1 %cmp.n10162, label %._crit_edge6198, label %scalar.ph10146.preheader

scalar.ph10146.preheader:                         ; preds = %vector.memcheck10142, %vector.scevcheck10141, %.lr.ph6197, %middle.block10161
  %indvars.iv7135.ph = phi i64 [ %i.noc, %vector.memcheck10142 ], [ %i.noc, %vector.scevcheck10141 ], [ %i.noc, %.lr.ph6197 ], [ %i.not, %middle.block10161 ] ; 7 uses
  %xtraiter11145 = and i64 %indvars.iv7135.ph, 1
  %lcmp.mod11146.not = icmp eq i64 %xtraiter11145, 0
  br i1 %lcmp.mod11146.not, label %scalar.ph10146.prol.loopexit, label %scalar.ph10146.prol

scalar.ph10146.prol:                              ; preds = %scalar.ph10146.preheader
  %i.npo = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %indvars.iv7135.ph
  %i.npp = load i64, ptr %i.npo, align 8, !tbaa !106
  %i.npq = shl i64 %i.npp, %.pre7678
  %i.npr = add nsw i64 %indvars.iv7135.ph, -1
  %i.nps = getelementptr [8 x i8], ptr %9, i64 %indvars.iv7135.ph
  %i.npt = load i64, ptr %i.nps, align 8, !tbaa !106
  %i.npu = lshr i64 %i.npt, %i.nof
  %i.npv = or i64 %i.npu, %i.npq
  %i.npw = trunc nuw i64 %indvars.iv7135.ph to i32
  %i.npx = add i32 %i.nlj, %i.npw
  %i.npy = zext i32 %i.npx to i64
  %i.npz = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %i.npy
  store i64 %i.npv, ptr %i.npz, align 8, !tbaa !106
  br label %scalar.ph10146.prol.loopexit

scalar.ph10146.prol.loopexit:                     ; preds = %scalar.ph10146.prol, %scalar.ph10146.preheader
  %indvars.iv7135.unr = phi i64 [ %indvars.iv7135.ph, %scalar.ph10146.preheader ], [ %i.npr, %scalar.ph10146.prol ]
  %i.nqa = icmp eq i64 %indvars.iv7135.ph, 1
  br i1 %i.nqa, label %._crit_edge6198, label %scalar.ph10146

scalar.ph10146:                                   ; preds = %scalar.ph10146.prol.loopexit, %scalar.ph10146
  %indvars.iv7135 = phi i64 [ %i.nqq, %scalar.ph10146 ], [ %indvars.iv7135.unr, %scalar.ph10146.prol.loopexit ] ; 6 uses
  %i.nqb = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %indvars.iv7135
  %i.nqc = load i64, ptr %i.nqb, align 8, !tbaa !106
  %i.nqd = shl i64 %i.nqc, %.pre7678
  %i.nqe = add nsw i64 %indvars.iv7135, -1        ; 2 uses
  %i.nqf = getelementptr [8 x i8], ptr %9, i64 %indvars.iv7135
  %i.nqg = load i64, ptr %i.nqf, align 8, !tbaa !106
  %i.nqh = lshr i64 %i.nqg, %i.nof
  %i.nqi = or i64 %i.nqh, %i.nqd
  %i.nqj = trunc nuw i64 %indvars.iv7135 to i32
  %i.nqk = add i32 %i.nlj, %i.nqj
  %i.nql = zext i32 %i.nqk to i64
  %i.nqm = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %i.nql
  store i64 %i.nqi, ptr %i.nqm, align 8, !tbaa !106
  %i.nqn = getelementptr [8 x i8], ptr %9, i64 %indvars.iv7135
  %i.nqo = load i64, ptr %i.nqn, align 8, !tbaa !106
  %i.nqp = shl i64 %i.nqo, %.pre7678
  %i.nqq = add nsw i64 %indvars.iv7135, -2        ; 2 uses
  %i.nqr = getelementptr [8 x i8], ptr %9, i64 %i.nqe
  %i.nqs = load i64, ptr %i.nqr, align 8, !tbaa !106
  %i.nqt = lshr i64 %i.nqs, %i.nof
  %i.nqu = or i64 %i.nqt, %i.nqp
  %i.nqv = trunc nuw i64 %i.nqe to i32
  %i.nqw = add i32 %i.nlj, %i.nqv
  %i.nqx = zext i32 %i.nqw to i64
  %i.nqy = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %i.nqx
  store i64 %i.nqu, ptr %i.nqy, align 8, !tbaa !106
  %.not.i1576.wide.1 = icmp eq i64 %i.nqq, 0
  br i1 %.not.i1576.wide.1, label %._crit_edge6198, label %scalar.ph10146, !llvm.loop !251

._crit_edge6198:                                  ; preds = %scalar.ph10146.prol.loopexit, %scalar.ph10146, %middle.block10161, %bb.boe
  %i.nqz = load i64, ptr %i.nob, align 8, !tbaa !106
  %i.nra = shl i64 %i.nqz, %.pre7678
  %i.nrb = zext nneg i32 %i.nlj to i64
  %i.nrc = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %i.nrb
  store i64 %i.nra, ptr %i.nrc, align 8, !tbaa !106
  %i.nrd = add i32 %i.nlk, %i.nlj                 ; 2 uses
  %i.nre = zext i32 %i.nrd to i64
  %i.nrf = getelementptr inbounds nuw [8 x i8], ptr %i.nob, i64 %i.nre
  %i.nrg = load i64, ptr %i.nrf, align 8, !tbaa !106
  %i.nrh = icmp ne i64 %i.nrg, 0
  %i.nri = zext i1 %i.nrh to i32
  %i.nrj = add i32 %i.nrd, %i.nri
  store i32 %i.nrj, ptr %9, align 8, !tbaa !131
  %.not45.i15786199 = icmp eq i32 %i.nlj, 0
  br i1 %.not45.i15786199, label %bigint_mul_pow2.exit1574, label %bigint_mul_pow2.exit1574.sink.split

bigint_mul_pow2.exit1574.sink.split:              ; preds = %._crit_edge6198, %._crit_edge6215, %.lr.ph6227.preheader, %.lr.ph6210
  %.sink9175 = phi i32 [ %i.nfk, %._crit_edge6215 ], [ %i.nlj, %.lr.ph6210 ], [ %i.nfk, %.lr.ph6227.preheader ], [ %i.nlj, %._crit_edge6198 ]
  %.sink9170 = phi ptr [ %i.myj, %._crit_edge6215 ], [ %i.noa, %.lr.ph6210 ], [ %i.myj, %.lr.ph6227.preheader ], [ %i.nob, %._crit_edge6198 ]
  %.ph9169 = phi i32 [ %i.nlg, %._crit_edge6215 ], [ %i.nfh, %.lr.ph6210 ], [ %i.nhy, %.lr.ph6227.preheader ], [ %i.nfh, %._crit_edge6198 ]
  %i.nrk = add nsw i32 %.sink9175, -1
  %i.nrl = zext nneg i32 %i.nrk to i64
  %i.nrm = shl nuw nsw i64 %i.nrl, 3
  %i.nrn = add nuw nsw i64 %i.nrm, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink9170, i8 0, i64 %i.nrn, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit1574

bigint_mul_pow2.exit1574:                         ; preds = %bigint_mul_pow2.exit1574.sink.split, %._crit_edge6198, %._crit_edge6206, %._crit_edge6215
  %i.nro = phi i32 [ %i.nlg, %._crit_edge6215 ], [ %i.nfh, %._crit_edge6198 ], [ %i.nfh, %._crit_edge6206 ], [ %.ph9169, %bigint_mul_pow2.exit1574.sink.split ] ; 2 uses
  %i.nrp = load i32, ptr %9, align 8, !tbaa !131  ; 4 uses
  %i.nrq = icmp ult i32 %i.nrp, %i.nro
  br i1 %i.nrq, label %bigint_cmp.exit1622.thread, label %bb.bof

bb.bof:                                           ; preds = %bigint_mul_pow2.exit1574
  %i.nrr = icmp ugt i32 %i.nrp, %i.nro
  br i1 %i.nrr, label %bigint_cmp.exit1622.thread, label %.preheader4996

.preheader4996:                                   ; preds = %bb.bof
  %.not.i16169978 = icmp eq i32 %i.nrp, 0
  br i1 %.not.i16169978, label %bigint_cmp.exit1622.thread4534, label %.lr.ph9981

.lr.ph9981:                                       ; preds = %.preheader4996
  %i.nrs = zext i32 %i.nrp to i64
  br label %bb.boh

bb.bog:                                           ; preds = %bb.boh
  %i.nrt = add nsw i64 %indvars.iv71539979, -1    ; 2 uses
  %.not.i1616 = icmp eq i64 %i.nrt, 0
  br i1 %.not.i1616, label %bigint_cmp.exit1622.thread4534, label %bb.boh, !llvm.loop !16

bb.boh:                                           ; preds = %.lr.ph9981, %bb.bog
  %.016.i16149980 = phi i32 [ undef, %.lr.ph9981 ], [ %.1.i1619, %bb.bog ]
  %indvars.iv71539979 = phi i64 [ %i.nrs, %.lr.ph9981 ], [ %i.nrt, %bb.bog ] ; 3 uses
  %i.nru = getelementptr [8 x i8], ptr %9, i64 %indvars.iv71539979
  %i.nrv = load i64, ptr %i.nru, align 8, !tbaa !106 ; 3 uses
  %i.nrw = getelementptr [8 x i8], ptr %10, i64 %indvars.iv71539979
  %i.nrx = load i64, ptr %i.nrw, align 8, !tbaa !106 ; 3 uses
  %.not4698 = icmp ult i64 %i.nrv, %i.nrx
  %.not4699 = icmp ugt i64 %i.nrv, %i.nrx
  %..016.i1617 = select i1 %.not4699, i32 1, i32 %.016.i16149980
  %.1.i1619 = select i1 %.not4698, i32 -1, i32 %..016.i1617 ; 3 uses
  %cond.i1620 = icmp eq i64 %i.nrv, %i.nrx
  br i1 %cond.i1620, label %bb.bog, label %bigint_cmp.exit1622, !llvm.loop !16

bigint_cmp.exit1622:                              ; preds = %bb.boh
  %.not989.i430 = icmp eq i32 %.1.i1619, 0
  br i1 %.not989.i430, label %bigint_cmp.exit1622.thread4534, label %bigint_cmp.exit1622.thread, !prof !125

bigint_cmp.exit1622.thread:                       ; preds = %bigint_mul_pow2.exit1574, %bb.bof, %bigint_cmp.exit1622
  %.2.i16214533 = phi i32 [ %.1.i1619, %bigint_cmp.exit1622 ], [ -1, %bigint_mul_pow2.exit1574 ], [ 1, %bb.bof ]
  %i.nry = icmp sgt i32 %.2.i16214533, 0
  %i.nrz = zext i1 %i.nry to i64
  br label %bb.boi

bigint_cmp.exit1622.thread4534:                   ; preds = %bb.bog, %.preheader4996, %bigint_cmp.exit1622
  %i.nsa = and i64 %.0.i1507.ph, 1
  br label %bb.boi

bb.boi:                                           ; preds = %bigint_cmp.exit1622.thread4534, %bigint_cmp.exit1622.thread
  %.pn.i431 = phi i64 [ %i.nrz, %bigint_cmp.exit1622.thread ], [ %i.nsa, %bigint_cmp.exit1622.thread4534 ]
  %.0895.i432 = add nuw nsw i64 %.pn.i431, %.0.i1507.ph ; 2 uses
  %i.nsb = icmp eq i64 %.0895.i432, 9218868437227405312
  br i1 %i.nsb, label %bb.boj, label %bb.boo, !prof !45

bb.boj:                                           ; preds = %bb.boi
  %i.nsc = and i32 %2, 128
  %.not4700 = icmp eq i32 %i.nsc, 0
  br i1 %.not4700, label %bb.bol, label %bb.bok, !prof !62

bb.bok:                                           ; preds = %bb.boj
  %i.nsd = load ptr, ptr %i.h, align 8, !tbaa !107
  store i8 0, ptr %i.nsd, align 1, !tbaa !100
  %i.nse = ptrtoint ptr %.33.i406 to i64
  %i.nsf = ptrtoint ptr %i.lqn to i64
  %i.nsg = sub i64 %i.nse, %i.nsf
  %i.nsh = shl i64 %i.nsg, 8
  %i.nsi = or disjoint i64 %i.nsh, 1
  store i64 %i.nsi, ptr %i.lqs, align 8, !tbaa !99
  %i.nsj = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store ptr %i.lqn, ptr %i.nsj, align 8, !tbaa !100
  store ptr %.33.i406, ptr %i.h, align 8, !tbaa !107
  br label %.split4569

bb.bol:                                           ; preds = %bb.boj
  br i1 %.not4658, label %bb.bon, label %bb.bom, !prof !62

bb.bom:                                           ; preds = %bb.bol
  store i64 20, ptr %i.lqs, align 8, !tbaa !99
  %i.nsk = select i1 %i.lqw, i64 -4503599627370496, i64 9218868437227405312
  %i.nsl = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.nsk, ptr %i.nsl, align 8, !tbaa !100
  br label %.split4569

bb.bon:                                           ; preds = %bb.bol
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !107
  store ptr %i.lqn, ptr %i.e, align 8, !tbaa !107
  br label %.split4569.thread

bb.boo:                                           ; preds = %bb.boi
  store i64 20, ptr %i.lqs, align 8, !tbaa !99
  %i.nsm = select i1 %i.lqw, i64 -9223372036854775808, i64 0
  %i.nsn = or disjoint i64 %.0895.i432, %i.nsm
  %i.nso = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.nsn, ptr %i.nso, align 8, !tbaa !100
  br label %.split4569

.split4569.thread:                                ; preds = %bb.bnj, %bb.bon
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.bqv

.split4569:                                       ; preds = %bb.boo, %bb.bom, %bb.bok, %bb.bnl, %bb.bni, %bb.bng
  store ptr %.33.i406, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

.preheader4984:                                   ; preds = %bb.bpo, %bb.bpp, %bb.bpv, %bb.bpu, %bb.ayc, %bb.bpy, %bb.bql, %read_str_opt.exit927, %.split4538, %.split4555, %read_num.exit515, %read_true.exit778, %read_false.exit781, %read_null.exit784, %read_nan.exit830, %read_inf.exit1477, %.split4556, %.split4554, %.split4566, %.split4558, %.split4550, %.split4549, %.split4548, %.split4557, %.split4559, %.split4560, %.split4561, %.split4564, %.split4565, %.split4539, %.split4540, %.split4541, %.split4542, %.split4543, %.split4544, %.split4545, %.split4546, %.split4547, %.split4553, %.split4552, %.split4551, %.split4563, %.split4562, %.split4567, %.split4568, %.split4569
  %.19788.i193.ph = phi i64 [ %.18787.i222.ph, %.split4568 ], [ %.18787.i222.ph, %.split4567 ], [ %.18787.i222.ph, %.split4566 ], [ %.18787.i222.ph, %.split4565 ], [ %.18787.i222.ph, %.split4564 ], [ %.18787.i222.ph, %.split4563 ], [ %.18787.i222.ph, %.split4562 ], [ %.18787.i222.ph, %.split4561 ], [ %.18787.i222.ph, %.split4560 ], [ %.18787.i222.ph, %.split4559 ], [ %.18787.i222.ph, %.split4558 ], [ %.18787.i222.ph, %.split4557 ], [ %.18787.i222.ph, %.split4556 ], [ %.18787.i222.ph, %.split4555 ], [ %.18787.i222.ph, %.split4554 ], [ %.18787.i222.ph, %read_inf.exit1477 ], [ %.18787.i222.ph, %.split4553 ], [ %.18787.i222.ph, %.split4552 ], [ %.18787.i222.ph, %.split4551 ], [ %.18787.i222.ph, %.split4550 ], [ %.18787.i222.ph, %.split4549 ], [ %.18787.i222.ph, %.split4548 ], [ %.18787.i222.ph, %.split4547 ], [ %.18787.i222.ph, %.split4546 ], [ %.18787.i222.ph, %.split4545 ], [ %.18787.i222.ph, %.split4544 ], [ %.18787.i222.ph, %.split4543 ], [ %.18787.i222.ph, %.split4542 ], [ %.18787.i222.ph, %.split4541 ], [ %.18787.i222.ph, %.split4540 ], [ %.18787.i222.ph, %.split4539 ], [ %.18787.i222.ph, %.split4538 ], [ %.18787.i222.ph, %bb.bpy ], [ %.18787.i222.ph, %read_str_opt.exit927 ], [ %.18787.i222.ph, %read_nan.exit830 ], [ %.18787.i222.ph, %read_null.exit784 ], [ %.18787.i222.ph, %read_false.exit781 ], [ %.18787.i222.ph, %read_true.exit778 ], [ %.18787.i222.ph, %read_num.exit515 ], [ %.18787.i222.ph, %.split4569 ], [ %.11780.i187, %bb.ayc ], [ %.20789.i175, %bb.bql ], [ %.18787.i222.ph, %bb.bpu ], [ %.18787.i222.ph, %bb.bpv ], [ %.18787.i222.ph, %bb.bpp ], [ %.18787.i222.ph, %bb.bpo ] ; 2 uses
  %.7767.i194.ph = phi i64 [ %i.lqt, %.split4568 ], [ %i.lqt, %.split4567 ], [ %i.lqt, %.split4566 ], [ %i.lqt, %.split4565 ], [ %i.lqt, %.split4564 ], [ %i.lqt, %.split4563 ], [ %i.lqt, %.split4562 ], [ %i.lqt, %.split4561 ], [ %i.lqt, %.split4560 ], [ %i.lqt, %.split4559 ], [ %i.lqt, %.split4558 ], [ %i.lqt, %.split4557 ], [ %i.lqt, %.split4556 ], [ %i.lqt, %.split4555 ], [ %i.lqt, %.split4554 ], [ %i.lqt, %read_inf.exit1477 ], [ %i.lqt, %.split4553 ], [ %i.lqt, %.split4552 ], [ %i.lqt, %.split4551 ], [ %i.lqt, %.split4550 ], [ %i.lqt, %.split4549 ], [ %i.lqt, %.split4548 ], [ %i.lqt, %.split4547 ], [ %i.lqt, %.split4546 ], [ %i.lqt, %.split4545 ], [ %i.lqt, %.split4544 ], [ %i.lqt, %.split4543 ], [ %i.lqt, %.split4542 ], [ %i.lqt, %.split4541 ], [ %i.lqt, %.split4540 ], [ %i.lqt, %.split4539 ], [ %i.lqt, %.split4538 ], [ %i.nxb, %bb.bpy ], [ %i.kxh, %read_str_opt.exit927 ], [ %i.nta, %read_nan.exit830 ], [ %i.nta, %read_null.exit784 ], [ %i.nsw, %read_false.exit781 ], [ %i.nsr, %read_true.exit778 ], [ %i.lqt, %read_num.exit515 ], [ %i.lqt, %.split4569 ], [ %i.jzd, %bb.ayc ], [ %i.nyn, %bb.bql ], [ %i.nuo, %bb.bpu ], [ %i.nuo, %bb.bpv ], [ %i.nuo, %bb.bpp ], [ %i.nuo, %bb.bpo ] ; 2 uses
  %.31757.i195.ph = phi ptr [ %.30756.i224.ph, %.split4568 ], [ %.30756.i224.ph, %.split4567 ], [ %.30756.i224.ph, %.split4566 ], [ %.30756.i224.ph, %.split4565 ], [ %.30756.i224.ph, %.split4564 ], [ %.30756.i224.ph, %.split4563 ], [ %.30756.i224.ph, %.split4562 ], [ %.30756.i224.ph, %.split4561 ], [ %.30756.i224.ph, %.split4560 ], [ %.30756.i224.ph, %.split4559 ], [ %.30756.i224.ph, %.split4558 ], [ %.30756.i224.ph, %.split4557 ], [ %.30756.i224.ph, %.split4556 ], [ %.30756.i224.ph, %.split4555 ], [ %.30756.i224.ph, %.split4554 ], [ %.30756.i224.ph, %read_inf.exit1477 ], [ %.30756.i224.ph, %.split4553 ], [ %.30756.i224.ph, %.split4552 ], [ %.30756.i224.ph, %.split4551 ], [ %.30756.i224.ph, %.split4550 ], [ %.30756.i224.ph, %.split4549 ], [ %.30756.i224.ph, %.split4548 ], [ %.30756.i224.ph, %.split4547 ], [ %.30756.i224.ph, %.split4546 ], [ %.30756.i224.ph, %.split4545 ], [ %.30756.i224.ph, %.split4544 ], [ %.30756.i224.ph, %.split4543 ], [ %.30756.i224.ph, %.split4542 ], [ %.30756.i224.ph, %.split4541 ], [ %.30756.i224.ph, %.split4540 ], [ %.30756.i224.ph, %.split4539 ], [ %.30756.i224.ph, %.split4538 ], [ %.30756.i224.ph, %bb.bpy ], [ %.30756.i224.ph, %read_str_opt.exit927 ], [ %.30756.i224.ph, %read_nan.exit830 ], [ %.30756.i224.ph, %read_null.exit784 ], [ %.30756.i224.ph, %read_false.exit781 ], [ %.30756.i224.ph, %read_true.exit778 ], [ %.30756.i224.ph, %read_num.exit515 ], [ %.30756.i224.ph, %.split4569 ], [ %.19745.i189, %bb.ayc ], [ %.32758.i177, %bb.bql ], [ %.30756.i224.ph, %bb.bpu ], [ %.30756.i224.ph, %bb.bpv ], [ %.30756.i224.ph, %bb.bpp ], [ %.30756.i224.ph, %bb.bpo ] ; 4 uses
  %.31724.i196.ph = phi ptr [ %.30723.i225.ph, %.split4568 ], [ %.30723.i225.ph, %.split4567 ], [ %.30723.i225.ph, %.split4566 ], [ %.30723.i225.ph, %.split4565 ], [ %.30723.i225.ph, %.split4564 ], [ %.30723.i225.ph, %.split4563 ], [ %.30723.i225.ph, %.split4562 ], [ %.30723.i225.ph, %.split4561 ], [ %.30723.i225.ph, %.split4560 ], [ %.30723.i225.ph, %.split4559 ], [ %.30723.i225.ph, %.split4558 ], [ %.30723.i225.ph, %.split4557 ], [ %.30723.i225.ph, %.split4556 ], [ %.30723.i225.ph, %.split4555 ], [ %.30723.i225.ph, %.split4554 ], [ %.30723.i225.ph, %read_inf.exit1477 ], [ %.30723.i225.ph, %.split4553 ], [ %.30723.i225.ph, %.split4552 ], [ %.30723.i225.ph, %.split4551 ], [ %.30723.i225.ph, %.split4550 ], [ %.30723.i225.ph, %.split4549 ], [ %.30723.i225.ph, %.split4548 ], [ %.30723.i225.ph, %.split4547 ], [ %.30723.i225.ph, %.split4546 ], [ %.30723.i225.ph, %.split4545 ], [ %.30723.i225.ph, %.split4544 ], [ %.30723.i225.ph, %.split4543 ], [ %.30723.i225.ph, %.split4542 ], [ %.30723.i225.ph, %.split4541 ], [ %.30723.i225.ph, %.split4540 ], [ %.30723.i225.ph, %.split4539 ], [ %.30723.i225.ph, %.split4538 ], [ %.30723.i225.ph, %bb.bpy ], [ %.30723.i225.ph, %read_str_opt.exit927 ], [ %.30723.i225.ph, %read_nan.exit830 ], [ %.30723.i225.ph, %read_null.exit784 ], [ %.30723.i225.ph, %read_false.exit781 ], [ %.30723.i225.ph, %read_true.exit778 ], [ %.30723.i225.ph, %read_num.exit515 ], [ %.30723.i225.ph, %.split4569 ], [ %.19712.i190, %bb.ayc ], [ %.32725.i178, %bb.bql ], [ %.30723.i225.ph, %bb.bpu ], [ %.30723.i225.ph, %bb.bpv ], [ %.30723.i225.ph, %bb.bpp ], [ %.30723.i225.ph, %bb.bpo ] ; 2 uses
  %.31691.i197.ph = phi ptr [ %i.lqs, %.split4568 ], [ %i.lqs, %.split4567 ], [ %i.lqs, %.split4566 ], [ %i.lqs, %.split4565 ], [ %i.lqs, %.split4564 ], [ %i.lqs, %.split4563 ], [ %i.lqs, %.split4562 ], [ %i.lqs, %.split4561 ], [ %i.lqs, %.split4560 ], [ %i.lqs, %.split4559 ], [ %i.lqs, %.split4558 ], [ %i.lqs, %.split4557 ], [ %i.lqs, %.split4556 ], [ %i.lqs, %.split4555 ], [ %i.lqs, %.split4554 ], [ %i.lqs, %read_inf.exit1477 ], [ %i.lqs, %.split4553 ], [ %i.lqs, %.split4552 ], [ %i.lqs, %.split4551 ], [ %i.lqs, %.split4550 ], [ %i.lqs, %.split4549 ], [ %i.lqs, %.split4548 ], [ %i.lqs, %.split4547 ], [ %i.lqs, %.split4546 ], [ %i.lqs, %.split4545 ], [ %i.lqs, %.split4544 ], [ %i.lqs, %.split4543 ], [ %i.lqs, %.split4542 ], [ %i.lqs, %.split4541 ], [ %i.lqs, %.split4540 ], [ %i.lqs, %.split4539 ], [ %i.lqs, %.split4538 ], [ %i.nxa, %bb.bpy ], [ %i.kxg, %read_str_opt.exit927 ], [ %i.nsz, %read_nan.exit830 ], [ %i.nsz, %read_null.exit784 ], [ %i.nsx, %read_false.exit781 ], [ %i.nss, %read_true.exit778 ], [ %i.lqs, %read_num.exit515 ], [ %i.lqs, %.split4569 ], [ %.19679.i191, %bb.ayc ], [ %.32692.i179, %bb.bql ], [ %i.nun, %bb.bpu ], [ %i.nun, %bb.bpv ], [ %i.nun, %bb.bpp ], [ %i.nun, %bb.bpo ] ; 2 uses
  %.31.i198.ph = phi ptr [ %.30.i227.ph, %.split4568 ], [ %.30.i227.ph, %.split4567 ], [ %.30.i227.ph, %.split4566 ], [ %.30.i227.ph, %.split4565 ], [ %.30.i227.ph, %.split4564 ], [ %.30.i227.ph, %.split4563 ], [ %.30.i227.ph, %.split4562 ], [ %.30.i227.ph, %.split4561 ], [ %.30.i227.ph, %.split4560 ], [ %.30.i227.ph, %.split4559 ], [ %.30.i227.ph, %.split4558 ], [ %.30.i227.ph, %.split4557 ], [ %.30.i227.ph, %.split4556 ], [ %.30.i227.ph, %.split4555 ], [ %.30.i227.ph, %.split4554 ], [ %.30.i227.ph, %read_inf.exit1477 ], [ %.30.i227.ph, %.split4553 ], [ %.30.i227.ph, %.split4552 ], [ %.30.i227.ph, %.split4551 ], [ %.30.i227.ph, %.split4550 ], [ %.30.i227.ph, %.split4549 ], [ %.30.i227.ph, %.split4548 ], [ %.30.i227.ph, %.split4547 ], [ %.30.i227.ph, %.split4546 ], [ %.30.i227.ph, %.split4545 ], [ %.30.i227.ph, %.split4544 ], [ %.30.i227.ph, %.split4543 ], [ %.30.i227.ph, %.split4542 ], [ %.30.i227.ph, %.split4541 ], [ %.30.i227.ph, %.split4540 ], [ %.30.i227.ph, %.split4539 ], [ %.30.i227.ph, %.split4538 ], [ %.30.i227.ph, %bb.bpy ], [ %.30.i227.ph, %read_str_opt.exit927 ], [ %.30.i227.ph, %read_nan.exit830 ], [ %.30.i227.ph, %read_null.exit784 ], [ %.30.i227.ph, %read_false.exit781 ], [ %.30.i227.ph, %read_true.exit778 ], [ %.30.i227.ph, %read_num.exit515 ], [ %.30.i227.ph, %.split4569 ], [ %i.jzb, %bb.ayc ], [ %i.nyl, %bb.bql ], [ %.30.i227.ph, %bb.bpu ], [ %.30.i227.ph, %bb.bpv ], [ %.30.i227.ph, %bb.bpp ], [ %.30.i227.ph, %bb.bpo ] ; 2 uses
  %i.nsp = and i32 %2, 2056
  %.not4779 = icmp eq i32 %i.nsp, 0
  %.pre7571 = load ptr, ptr %i.e, align 8, !tbaa !107
  br label %.backedge4986

read_num.exit515.thread:                          ; preds = %bb.bma, %bb.bmh, %bb.bmq, %bb.bhc, %bb.blq, %bb.blw, %bb.bhe, %bb.bhg, %read_inf_or_nan.exit843.thread, %bb.bli
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.bqv

read_num.exit515:                                 ; preds = %bb.bio, %bb.bir, %bb.biu, %bb.bmc, %bb.bme, %bb.bmg, %bb.bmk, %bb.bmn, %bb.bmp
  %.sink9176 = phi ptr [ %i.lyc, %bb.bio ], [ %i.lyj, %bb.bir ], [ %i.lyq, %bb.biu ], [ %.31.i398.lcssa, %bb.bmc ], [ %.31.i398.lcssa, %bb.bme ], [ %.31.i398.lcssa, %bb.bmg ], [ %.32.i400, %bb.bmk ], [ %.32.i400, %bb.bmn ], [ %.32.i400, %bb.bmp ]
  store ptr %.sink9176, ptr %i.e, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

bb.bop:                                           ; preds = %bb.bgd
  switch i8 %i.lqm, label %bb.bpb [
    i8 123, label %.loopexit4974
    i8 91, label %.loopexit4975
    i8 116, label %bb.boq
    i8 102, label %bb.bor
    i8 110, label %bb.bos
  ]

bb.boq:                                           ; preds = %bb.bop
  %.sroa.01.0.copyload.i1735 = load i32, ptr %i.lqn, align 1
  %i.nsq = icmp eq i32 %.sroa.01.0.copyload.i1735, 1702195828
  br i1 %i.nsq, label %read_true.exit778, label %read_true.exit.thread, !prof !62

read_true.exit778:                                ; preds = %bb.boq
  %i.nsr = add i64 %.5765.i167.ph, 2
  %i.nss = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 16 ; 2 uses
  store i64 11, ptr %i.nss, align 8, !tbaa !99
  %i.nst = getelementptr inbounds nuw i8, ptr %i.lqn, i64 4
  store ptr %i.nst, ptr %i.e, align 8, !tbaa !107
  br label %.preheader4984

bb.bor:                                           ; preds = %bb.bop
  %i.nsu = getelementptr inbounds nuw i8, ptr %i.lqn, i64 1
  %.sroa.01.0.copyload.i1731 = load i32, ptr %i.nsu, align 1
  %i.nsv = icmp eq i32 %.sroa.01.0.copyload.i1731, 1702063201
  br i1 %i.nsv, label %read_false.exit781, label %read_false.exit.thread, !prof !62

read_false.exit781:                               ; preds = %bb.bor
  %i.nsw = add i64 %.5765.i167.ph, 2
  %i.nsx = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 16 ; 2 uses
  store i64 3, ptr %i.nsx, align 8, !tbaa !99
  %i.nsy = getelementptr inbounds nuw i8, ptr %i.lqn, i64 5
  store ptr %i.nsy, ptr %i.e, align 8, !tbaa !107
  br label %.preheader4984

bb.bos:                                           ; preds = %bb.bop
  %i.nsz = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 16 ; 4 uses
  %i.nta = add i64 %.5765.i167.ph, 2              ; 2 uses
  %.sroa.01.0.copyload.i1727 = load i32, ptr %i.lqn, align 1 ; 3 uses
  %i.ntb = icmp eq i32 %.sroa.01.0.copyload.i1727, 1819047278
  %i.ntc = trunc i32 %.sroa.01.0.copyload.i1727 to i8 ; 2 uses
  br i1 %i.ntb, label %read_null.exit784, label %bb.bot, !prof !62

read_null.exit784:                                ; preds = %bb.bos
  store i64 2, ptr %i.nsz, align 8, !tbaa !99
  %i.ntd = getelementptr inbounds nuw i8, ptr %i.lqn, i64 4
  store ptr %i.ntd, ptr %i.e, align 8, !tbaa !107
  br label %.preheader4984

bb.bot:                                           ; preds = %bb.bos
  br i1 %.not4658, label %read_nan.exit.thread, label %bb.bou, !prof !62

bb.bou:                                           ; preds = %bb.bot
  %i.nte = icmp eq i8 %i.ntc, 45
  %i.ntf = icmp ne i8 %i.ntc, 43
  %i.ntg = and i32 %2, 512
  %i.nth = icmp ne i32 %i.ntg, 0
  %or.cond4628 = or i1 %i.nth, %i.ntf
  br i1 %or.cond4628, label %bb.bov, label %read_nan.exit.thread, !prof !122

end_hunk_3
begin_hunk_4_@read_root_single:bb.a
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.avk
  store i64 %i.avh, ptr %i.avl, align 8, !tbaa !106
  %i.avm = add nsw i64 %indvars.iv1082, -2        ; 2 uses
  %i.avn = getelementptr [8 x i8], ptr %6, i64 %i.avf
  %i.avo = load i64, ptr %i.avn, align 8, !tbaa !106
  %i.avp = trunc nuw i64 %i.avf to i32
  %i.avq = add i32 %i.atv, %i.avp
  %i.avr = zext i32 %i.avq to i64
  %i.avs = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.avr
  store i64 %i.avo, ptr %i.avs, align 8, !tbaa !106
  %i.avt = add nsw i64 %indvars.iv1082, -3        ; 2 uses
  %i.avu = getelementptr [8 x i8], ptr %6, i64 %i.avm
  %i.avv = load i64, ptr %i.avu, align 8, !tbaa !106
  %i.avw = trunc nuw i64 %i.avm to i32
  %i.avx = add i32 %i.atv, %i.avw
  %i.avy = zext i32 %i.avx to i64
  %i.avz = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.avy
  store i64 %i.avv, ptr %i.avz, align 8, !tbaa !106
  %i.awa = add nsw i64 %indvars.iv1082, -4        ; 2 uses
  %i.awb = getelementptr [8 x i8], ptr %6, i64 %i.avt
  %i.awc = load i64, ptr %i.awb, align 8, !tbaa !106
  %i.awd = trunc nuw i64 %i.avt to i32
  %i.awe = add i32 %i.atv, %i.awd
  %i.awf = zext i32 %i.awe to i64
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.awf
  store i64 %i.awc, ptr %i.awg, align 8, !tbaa !106
  %.not46.i269.wide.3 = icmp eq i64 %i.awa, 0
  br i1 %.not46.i269.wide.3, label %._crit_edge886, label %scalar.ph1470, !llvm.loop !279

._crit_edge886:                                   ; preds = %scalar.ph1470.prol.loopexit, %scalar.ph1470, %middle.block1479, %.preheader729
  %i.awh = add i32 %i.ats, %i.atr
  store i32 %i.awh, ptr %6, align 8, !tbaa !131
  %.not47.i271887 = icmp eq i32 %i.atr, 0
  br i1 %.not47.i271887, label %bigint_mul_pow2.exit, label %.lr.ph890

.lr.ph890:                                        ; preds = %._crit_edge886
  %i.awi = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bigint_mul_pow2.exit.sink.split

bb.ib:                                            ; preds = %bb.ia
  %i.awj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  %i.awk = zext i32 %i.ats to i64                 ; 10 uses
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.awk
  store i64 0, ptr %i.awl, align 8, !tbaa !106
  %.not.i265874 = icmp eq i32 %i.ats, 0
  %.pre1154 = zext nneg i32 %i.atq to i64         ; 5 uses
  br i1 %.not.i265874, label %._crit_edge878, label %.lr.ph877

.lr.ph877:                                        ; preds = %bb.ib
  %i.awm = sub nuw nsw i32 64, %i.atq
  %i.awn = zext nneg i32 %i.awm to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.ats, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph877
  %i.awo = add nsw i64 %i.awk, -1                 ; 2 uses
  %i.awp = add i32 %i.ats, %i.atr
  %i.awq = trunc i64 %i.awo to i32
  %i.awr = icmp ult i32 %i.awp, %i.awq
  %i.aws = icmp ugt i64 %i.awo, 4294967295
  %i.awt = or i1 %i.awr, %i.aws
  br i1 %i.awt, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awu = shl nuw nsw i64 %i.awk, 3              ; 2 uses
  %i.awv = add i32 %i.ats, %i.atr
  %i.aww = zext i32 %i.awv to i64
  %i.awx = shl nuw nsw i64 %i.aww, 3              ; 2 uses
  %i.awy = sub nsw i64 %i.awx, %i.awu
  %diff.check = icmp ugt i64 %i.awy, -32
  %i.awz = sub nsw i64 %i.awu, %i.awx
  %i.axa = add nsw i64 %i.awz, -9
  %diff.check1461 = icmp ult i64 %i.axa, 31
  %conflict.rdx = or i1 %diff.check, %diff.check1461
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.awk, 4294967292             ; 2 uses
  %i.axb = and i64 %i.awk, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.awn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1462 = insertelement <2 x i64> poison, i64 %.pre1154, i64 0
  %broadcast.splat1463 = shufflevector <2 x i64> %broadcast.splatinsert1462, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.axc = sub i64 %i.awk, %index                 ; 3 uses
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.axc ; 2 uses
  %i.axe = getelementptr inbounds i8, ptr %i.axd, i64 -8
  %i.axf = getelementptr inbounds i8, ptr %i.axd, i64 -24
  %wide.load = load <2 x i64>, ptr %i.axe, align 8, !tbaa !106
  %wide.load1464 = load <2 x i64>, ptr %i.axf, align 8, !tbaa !106
  %i.axg = shl <2 x i64> %wide.load, %broadcast.splat1463
  %i.axh = shl <2 x i64> %wide.load1464, %broadcast.splat1463
  %i.axi = getelementptr [8 x i8], ptr %6, i64 %i.axc ; 2 uses
  %i.axj = getelementptr i8, ptr %i.axi, i64 -8
  %i.axk = getelementptr i8, ptr %i.axi, i64 -24
  %wide.load1465 = load <2 x i64>, ptr %i.axj, align 8, !tbaa !106
  %wide.load1466 = load <2 x i64>, ptr %i.axk, align 8, !tbaa !106
  %i.axl = lshr <2 x i64> %wide.load1465, %broadcast.splat
  %i.axm = lshr <2 x i64> %wide.load1466, %broadcast.splat
  %i.axn = or <2 x i64> %i.axl, %i.axg
  %i.axo = or <2 x i64> %i.axm, %i.axh
  %i.axp = trunc nuw i64 %i.axc to i32
  %i.axq = add i32 %i.atr, %i.axp
  %i.axr = zext i32 %i.axq to i64
  %i.axs = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.axr ; 2 uses
  %i.axt = getelementptr inbounds i8, ptr %i.axs, i64 -8
  %i.axu = getelementptr inbounds i8, ptr %i.axs, i64 -24
  store <2 x i64> %i.axn, ptr %i.axt, align 8, !tbaa !106
  store <2 x i64> %i.axo, ptr %i.axu, align 8, !tbaa !106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.axv = icmp eq i64 %index.next, %n.vec
  br i1 %i.axv, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.awk
  br i1 %cmp.n, label %._crit_edge878, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph877, %middle.block
  %indvars.iv1077.ph = phi i64 [ %i.awk, %vector.memcheck ], [ %i.awk, %vector.scevcheck ], [ %i.awk, %.lr.ph877 ], [ %i.axb, %middle.block ] ; 7 uses
  %xtraiter1613 = and i64 %indvars.iv1077.ph, 1
  %lcmp.mod1614.not = icmp eq i64 %xtraiter1613, 0
  br i1 %lcmp.mod1614.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv1077.ph
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !106
  %i.axy = shl i64 %i.axx, %.pre1154
  %i.axz = add nsw i64 %indvars.iv1077.ph, -1
  %i.aya = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1077.ph
  %i.ayb = load i64, ptr %i.aya, align 8, !tbaa !106
  %i.ayc = lshr i64 %i.ayb, %i.awn
  %i.ayd = or i64 %i.ayc, %i.axy
  %i.aye = trunc nuw i64 %indvars.iv1077.ph to i32
  %i.ayf = add i32 %i.atr, %i.aye
  %i.ayg = zext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.ayg
  store i64 %i.ayd, ptr %i.ayh, align 8, !tbaa !106
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1077.unr = phi i64 [ %indvars.iv1077.ph, %scalar.ph.preheader ], [ %i.axz, %scalar.ph.prol ]
  %i.ayi = icmp eq i64 %indvars.iv1077.ph, 1
  br i1 %i.ayi, label %._crit_edge878, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1077 = phi i64 [ %i.ayy, %scalar.ph ], [ %indvars.iv1077.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv1077
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !106
  %i.ayl = shl i64 %i.ayk, %.pre1154
  %i.aym = add nsw i64 %indvars.iv1077, -1        ; 2 uses
  %i.ayn = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1077
  %i.ayo = load i64, ptr %i.ayn, align 8, !tbaa !106
  %i.ayp = lshr i64 %i.ayo, %i.awn
  %i.ayq = or i64 %i.ayp, %i.ayl
  %i.ayr = trunc nuw i64 %indvars.iv1077 to i32
  %i.ays = add i32 %i.atr, %i.ayr
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.ayt
  store i64 %i.ayq, ptr %i.ayu, align 8, !tbaa !106
  %i.ayv = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1077
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !106
  %i.ayx = shl i64 %i.ayw, %.pre1154
  %i.ayy = add nsw i64 %indvars.iv1077, -2        ; 2 uses
  %i.ayz = getelementptr [8 x i8], ptr %6, i64 %i.aym
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !106
  %i.azb = lshr i64 %i.aza, %i.awn
  %i.azc = or i64 %i.azb, %i.ayx
  %i.azd = trunc nuw i64 %i.aym to i32
  %i.aze = add i32 %i.atr, %i.azd
  %i.azf = zext i32 %i.aze to i64
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.azf
  store i64 %i.azc, ptr %i.azg, align 8, !tbaa !106
  %.not.i265.wide.1 = icmp eq i64 %i.ayy, 0
  br i1 %.not.i265.wide.1, label %._crit_edge878, label %scalar.ph, !llvm.loop !281

._crit_edge878:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ib
  %i.azh = load i64, ptr %i.awj, align 8, !tbaa !106
  %i.azi = shl i64 %i.azh, %.pre1154
  %i.azj = zext nneg i32 %i.atr to i64
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.azj
  store i64 %i.azi, ptr %i.azk, align 8, !tbaa !106
  %i.azl = add i32 %i.ats, %i.atr                 ; 2 uses
  %i.azm = zext i32 %i.azl to i64
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.azm
  %i.azo = load i64, ptr %i.azn, align 8, !tbaa !106
  %i.azp = icmp ne i64 %i.azo, 0
  %i.azq = zext i1 %i.azp to i32
  %i.azr = add i32 %i.azl, %i.azq
  store i32 %i.azr, ptr %6, align 8, !tbaa !131
  %.not45.i267879 = icmp eq i32 %i.atr, 0
  br i1 %.not45.i267879, label %bigint_mul_pow2.exit, label %bigint_mul_pow2.exit.sink.split

bigint_mul_pow2.exit.sink.split:                  ; preds = %._crit_edge878, %._crit_edge895, %.lr.ph907.preheader, %.lr.ph890
  %.sink1365 = phi i32 [ %i.ans, %._crit_edge895 ], [ %i.atr, %.lr.ph890 ], [ %i.ans, %.lr.ph907.preheader ], [ %i.atr, %._crit_edge878 ]
  %.sink1360 = phi ptr [ %i.agr, %._crit_edge895 ], [ %i.awi, %.lr.ph890 ], [ %i.agr, %.lr.ph907.preheader ], [ %i.awj, %._crit_edge878 ]
  %.ph1359 = phi i32 [ %i.ato, %._crit_edge895 ], [ %i.anp, %.lr.ph890 ], [ %i.aqg, %.lr.ph907.preheader ], [ %i.anp, %._crit_edge878 ]
  %i.azs = add nsw i32 %.sink1365, -1
  %i.azt = zext nneg i32 %i.azs to i64
  %i.azu = shl nuw nsw i64 %i.azt, 3
  %i.azv = add nuw nsw i64 %i.azu, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink1360, i8 0, i64 %i.azv, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %bigint_mul_pow2.exit.sink.split, %._crit_edge878, %._crit_edge886, %._crit_edge895
  %i.azw = phi i32 [ %i.ato, %._crit_edge895 ], [ %i.anp, %._crit_edge878 ], [ %i.anp, %._crit_edge886 ], [ %.ph1359, %bigint_mul_pow2.exit.sink.split ] ; 2 uses
  %i.azx = load i32, ptr %6, align 8, !tbaa !131  ; 4 uses
  %i.azy = icmp ult i32 %i.azx, %i.azw
  br i1 %i.azy, label %bigint_cmp.exit.thread, label %bb.ic

bb.ic:                                            ; preds = %bigint_mul_pow2.exit
  %i.azz = icmp ugt i32 %i.azx, %i.azw
  br i1 %i.azz, label %bigint_cmp.exit.thread, label %.preheader725

.preheader725:                                    ; preds = %bb.ic
  %.not.i2731448 = icmp eq i32 %i.azx, 0
  br i1 %.not.i2731448, label %bigint_cmp.exit.thread623, label %.lr.ph1451

.lr.ph1451:                                       ; preds = %.preheader725
  %i.baa = zext i32 %i.azx to i64
  br label %bb.ie

bb.id:                                            ; preds = %bb.ie
  %i.bab = add nsw i64 %indvars.iv10951449, -1    ; 2 uses
  %.not.i273 = icmp eq i64 %i.bab, 0
  br i1 %.not.i273, label %bigint_cmp.exit.thread623, label %bb.ie, !llvm.loop !16

bb.ie:                                            ; preds = %.lr.ph1451, %bb.id
  %.016.i1450 = phi i32 [ undef, %.lr.ph1451 ], [ %.1.i274, %bb.id ]
  %indvars.iv10951449 = phi i64 [ %i.baa, %.lr.ph1451 ], [ %i.bab, %bb.id ] ; 3 uses
  %i.bac = getelementptr [8 x i8], ptr %6, i64 %indvars.iv10951449
  %i.bad = load i64, ptr %i.bac, align 8, !tbaa !106 ; 3 uses
  %i.bae = getelementptr [8 x i8], ptr %7, i64 %indvars.iv10951449
  %i.baf = load i64, ptr %i.bae, align 8, !tbaa !106 ; 3 uses
  %.not702 = icmp ult i64 %i.bad, %i.baf
  %.not703 = icmp ugt i64 %i.bad, %i.baf
  %..016.i = select i1 %.not703, i32 1, i32 %.016.i1450
  %.1.i274 = select i1 %.not702, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.bad, %i.baf
  br i1 %cond.i, label %bb.id, label %bigint_cmp.exit, !llvm.loop !16

bigint_cmp.exit:                                  ; preds = %bb.ie
  %.not989.i = icmp eq i32 %.1.i274, 0
  br i1 %.not989.i, label %bigint_cmp.exit.thread623, label %bigint_cmp.exit.thread, !prof !125

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.ic, %bigint_cmp.exit
  %.2.i275622 = phi i32 [ %.1.i274, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.ic ]
  %i.bag = icmp sgt i32 %.2.i275622, 0
  %i.bah = zext i1 %i.bag to i64
  br label %bb.if

bigint_cmp.exit.thread623:                        ; preds = %bb.id, %.preheader725, %bigint_cmp.exit
  %i.bai = and i64 %.0.i254.ph, 1
  br label %bb.if

bb.if:                                            ; preds = %bigint_cmp.exit.thread623, %bigint_cmp.exit.thread
  %.pn.i = phi i64 [ %i.bah, %bigint_cmp.exit.thread ], [ %i.bai, %bigint_cmp.exit.thread623 ]
  %.0895.i = add nuw nsw i64 %.pn.i, %.0.i254.ph  ; 2 uses
  %i.baj = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.baj, label %bb.ig, label %bb.il, !prof !45

bb.ig:                                            ; preds = %bb.if
  %i.bak = and i32 %4, 128
  %.not704 = icmp eq i32 %i.bak, 0
  br i1 %.not704, label %bb.ii, label %bb.ih, !prof !62

bb.ih:                                            ; preds = %bb.ig
  %i.bal = load ptr, ptr %i.e, align 8, !tbaa !107
  store i8 0, ptr %i.bal, align 1, !tbaa !100
  %i.bam = ptrtoint ptr %.33.i to i64
  %i.ban = ptrtoint ptr %1 to i64
  %i.bao = sub i64 %i.bam, %i.ban
  %i.bap = shl i64 %i.bao, 8
  %i.baq = or disjoint i64 %i.bap, 1
  store i64 %i.baq, ptr %i.j, align 8, !tbaa !99
  %i.bar = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.bar, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.e, align 8, !tbaa !107
  br label %read_num.exit.thread632

bb.ii:                                            ; preds = %bb.ig
  %i.bas = and i32 %4, 16
  %.not705 = icmp eq i32 %i.bas, 0
  br i1 %.not705, label %bb.ik, label %bb.ij, !prof !62

bb.ij:                                            ; preds = %bb.ii
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.bat = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.bau = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bat, ptr %i.bau, align 8, !tbaa !100
  br label %read_num.exit.thread632

bb.ik:                                            ; preds = %bb.ii
  store ptr @.str.93, ptr %i.c, align 8, !tbaa !107
  store ptr %1, ptr %i.b, align 8, !tbaa !107
  br label %read_num.exit

bb.il:                                            ; preds = %bb.if
  store i64 20, ptr %i.j, align 8, !tbaa !99
  %i.bav = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.baw = or disjoint i64 %.0895.i, %i.bav
  %i.bax = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.baw, ptr %i.bax, align 8, !tbaa !100
  br label %read_num.exit.thread632

read_num.exit.thread:                             ; preds = %bb.fx, %bb.fz, %bb.gb, %bb.gf, %bb.gi, %bb.gk, %bb.gv, %bb.gq, %bb.z, %bb.fg, %bb.ft, %.loopexit736, %bb.bd, %.thread, %bb.eu, %bb.ev, %bb.ew, %bb.az, %bb.ba, %bb.bb, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.t, %read_inf.exit251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit.thread632:                          ; preds = %bb.hd, %bb.hf, %bb.hi, %bb.ih, %bb.ij, %bb.il
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit:                                    ; preds = %bb.hg, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.sink.split

bb.im:                                            ; preds = %bb.b
  switch i8 %i.k, label %bb.mw [
    i8 34, label %bb.in
    i8 116, label %bb.mm
    i8 102, label %bb.mn
    i8 110, label %bb.mo
  ]

bb.in:                                            ; preds = %bb.im
  %i.bay = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %i.baz = and i32 %4, 64
  %.not661 = icmp eq i32 %i.baz, 0                ; 3 uses
  br label %.backedge724

.backedge724:                                     ; preds = %.backedge724.backedge, %bb.in
  %.0599 = phi ptr [ %i.bay, %bb.in ], [ %.0599.be, %.backedge724.backedge ] ; 18 uses
  %i.bba = load i8, ptr %.0599, align 1, !tbaa !100 ; 2 uses
  %i.bbb = zext i8 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbb
  %i.bbd = load i8, ptr %i.bbc, align 1, !tbaa !100
  %i.bbe = trunc i8 %i.bbd to i1
  br i1 %i.bbe, label %bb.io, label %bb.je, !prof !62

bb.io:                                            ; preds = %.backedge724
  %i.bbf = getelementptr inbounds nuw i8, ptr %.0599, i64 1 ; 2 uses
  %i.bbg = load i8, ptr %i.bbf, align 1, !tbaa !100 ; 2 uses
  %i.bbh = zext i8 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbh
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !100
  %i.bbk = trunc i8 %i.bbj to i1
  br i1 %i.bbk, label %bb.ip, label %bb.je, !prof !62

bb.ip:                                            ; preds = %bb.io
  %i.bbl = getelementptr inbounds nuw i8, ptr %.0599, i64 2 ; 2 uses
  %i.bbm = load i8, ptr %i.bbl, align 1, !tbaa !100 ; 2 uses
  %i.bbn = zext i8 %i.bbm to i64
  %i.bbo = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbn
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !100
  %i.bbq = trunc i8 %i.bbp to i1
  br i1 %i.bbq, label %bb.iq, label %bb.je, !prof !62

bb.iq:                                            ; preds = %bb.ip
  %i.bbr = getelementptr inbounds nuw i8, ptr %.0599, i64 3 ; 2 uses
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !100 ; 2 uses
  %i.bbt = zext i8 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbt
  %i.bbv = load i8, ptr %i.bbu, align 1, !tbaa !100
  %i.bbw = trunc i8 %i.bbv to i1
  br i1 %i.bbw, label %bb.ir, label %bb.je, !prof !62

bb.ir:                                            ; preds = %bb.iq
  %i.bbx = getelementptr inbounds nuw i8, ptr %.0599, i64 4 ; 2 uses
  %i.bby = load i8, ptr %i.bbx, align 1, !tbaa !100 ; 2 uses
  %i.bbz = zext i8 %i.bby to i64
  %i.bca = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbz
  %i.bcb = load i8, ptr %i.bca, align 1, !tbaa !100
  %i.bcc = trunc i8 %i.bcb to i1
  br i1 %i.bcc, label %bb.is, label %bb.je, !prof !62

bb.is:                                            ; preds = %bb.ir
  %i.bcd = getelementptr inbounds nuw i8, ptr %.0599, i64 5 ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !100 ; 2 uses
  %i.bcf = zext i8 %i.bce to i64
  %i.bcg = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bcf
  %i.bch = load i8, ptr %i.bcg, align 1, !tbaa !100
  %i.bci = trunc i8 %i.bch to i1
  br i1 %i.bci, label %bb.it, label %bb.je, !prof !62

bb.it:                                            ; preds = %bb.is
  %i.bcj = getelementptr inbounds nuw i8, ptr %.0599, i64 6 ; 2 uses
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !100 ; 2 uses
  %i.bcl = zext i8 %i.bck to i64
  %i.bcm = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bcl
  %i.bcn = load i8, ptr %i.bcm, align 1, !tbaa !100
  %i.bco = trunc i8 %i.bcn to i1
  br i1 %i.bco, label %bb.iu, label %bb.je, !prof !62

bb.iu:                                            ; preds = %bb.it
end_hunk_4
begin_hunk_5_@yyjson_read_number:bb.a
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.aux
  store i64 %i.auu, ptr %i.auy, align 8, !tbaa !106
  %i.auz = add nsw i64 %indvars.iv414, -2         ; 2 uses
  %i.ava = getelementptr [8 x i8], ptr %5, i64 %i.aus
  %i.avb = load i64, ptr %i.ava, align 8, !tbaa !106
  %i.avc = trunc nuw i64 %i.aus to i32
  %i.avd = add i32 %i.ati, %i.avc
  %i.ave = zext i32 %i.avd to i64
  %i.avf = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.ave
  store i64 %i.avb, ptr %i.avf, align 8, !tbaa !106
  %i.avg = add nsw i64 %indvars.iv414, -3         ; 2 uses
  %i.avh = getelementptr [8 x i8], ptr %5, i64 %i.auz
  %i.avi = load i64, ptr %i.avh, align 8, !tbaa !106
  %i.avj = trunc nuw i64 %i.auz to i32
  %i.avk = add i32 %i.ati, %i.avj
  %i.avl = zext i32 %i.avk to i64
  %i.avm = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.avl
  store i64 %i.avi, ptr %i.avm, align 8, !tbaa !106
  %i.avn = add nsw i64 %indvars.iv414, -4         ; 2 uses
  %i.avo = getelementptr [8 x i8], ptr %5, i64 %i.avg
  %i.avp = load i64, ptr %i.avo, align 8, !tbaa !106
  %i.avq = trunc nuw i64 %i.avg to i32
  %i.avr = add i32 %i.ati, %i.avq
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.avs
  store i64 %i.avp, ptr %i.avt, align 8, !tbaa !106
  %.not46.i41.wide.3 = icmp eq i64 %i.avn, 0
  br i1 %.not46.i41.wide.3, label %._crit_edge320, label %scalar.ph662, !llvm.loop !294

._crit_edge320:                                   ; preds = %scalar.ph662.prol.loopexit, %scalar.ph662, %middle.block671, %.preheader196
  %i.avu = add i32 %i.atf, %i.ate
  store i32 %i.avu, ptr %5, align 8, !tbaa !131
  %.not47.i43321 = icmp eq i32 %i.ate, 0
  br i1 %.not47.i43321, label %bigint_mul_pow2.exit, label %.lr.ph324

.lr.ph324:                                        ; preds = %._crit_edge320
  %i.avv = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bigint_mul_pow2.exit.sink.split

bb.ic:                                            ; preds = %bb.ib
  %i.avw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.avx = zext i32 %i.atf to i64                 ; 10 uses
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.avx
  store i64 0, ptr %i.avy, align 8, !tbaa !106
  %.not.i37308 = icmp eq i32 %i.atf, 0
  %.pre460 = zext nneg i32 %i.atd to i64          ; 5 uses
  br i1 %.not.i37308, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %bb.ic
  %i.avz = sub nuw nsw i32 64, %i.atd
  %i.awa = zext nneg i32 %i.avz to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.atf, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph311
  %i.awb = add nsw i64 %i.avx, -1                 ; 2 uses
  %i.awc = add i32 %i.atf, %i.ate
  %i.awd = trunc i64 %i.awb to i32
  %i.awe = icmp ult i32 %i.awc, %i.awd
  %i.awf = icmp ugt i64 %i.awb, 4294967295
  %i.awg = or i1 %i.awe, %i.awf
  br i1 %i.awg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awh = shl nuw nsw i64 %i.avx, 3              ; 2 uses
  %i.awi = add i32 %i.atf, %i.ate
  %i.awj = zext i32 %i.awi to i64
  %i.awk = shl nuw nsw i64 %i.awj, 3              ; 2 uses
  %i.awl = sub nsw i64 %i.awk, %i.awh
  %diff.check = icmp ugt i64 %i.awl, -32
  %i.awm = sub nsw i64 %i.awh, %i.awk
  %i.awn = add nsw i64 %i.awm, -9
  %diff.check653 = icmp ult i64 %i.awn, 31
  %conflict.rdx = or i1 %diff.check, %diff.check653
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.avx, 4294967292             ; 2 uses
  %i.awo = and i64 %i.avx, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.awa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert654 = insertelement <2 x i64> poison, i64 %.pre460, i64 0
  %broadcast.splat655 = shufflevector <2 x i64> %broadcast.splatinsert654, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awp = sub i64 %i.avx, %index                 ; 3 uses
  %i.awq = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.awp ; 2 uses
  %i.awr = getelementptr inbounds i8, ptr %i.awq, i64 -8
  %i.aws = getelementptr inbounds i8, ptr %i.awq, i64 -24
  %wide.load = load <2 x i64>, ptr %i.awr, align 8, !tbaa !106
  %wide.load656 = load <2 x i64>, ptr %i.aws, align 8, !tbaa !106
  %i.awt = shl <2 x i64> %wide.load, %broadcast.splat655
  %i.awu = shl <2 x i64> %wide.load656, %broadcast.splat655
  %i.awv = getelementptr [8 x i8], ptr %5, i64 %i.awp ; 2 uses
  %i.aww = getelementptr i8, ptr %i.awv, i64 -8
  %i.awx = getelementptr i8, ptr %i.awv, i64 -24
  %wide.load657 = load <2 x i64>, ptr %i.aww, align 8, !tbaa !106
  %wide.load658 = load <2 x i64>, ptr %i.awx, align 8, !tbaa !106
  %i.awy = lshr <2 x i64> %wide.load657, %broadcast.splat
  %i.awz = lshr <2 x i64> %wide.load658, %broadcast.splat
  %i.axa = or <2 x i64> %i.awy, %i.awt
  %i.axb = or <2 x i64> %i.awz, %i.awu
  %i.axc = trunc nuw i64 %i.awp to i32
  %i.axd = add i32 %i.ate, %i.axc
  %i.axe = zext i32 %i.axd to i64
  %i.axf = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.axe ; 2 uses
  %i.axg = getelementptr inbounds i8, ptr %i.axf, i64 -8
  %i.axh = getelementptr inbounds i8, ptr %i.axf, i64 -24
  store <2 x i64> %i.axa, ptr %i.axg, align 8, !tbaa !106
  store <2 x i64> %i.axb, ptr %i.axh, align 8, !tbaa !106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.axi = icmp eq i64 %index.next, %n.vec
  br i1 %i.axi, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.avx
  br i1 %cmp.n, label %._crit_edge312, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph311, %middle.block
  %indvars.iv409.ph = phi i64 [ %i.avx, %vector.memcheck ], [ %i.avx, %vector.scevcheck ], [ %i.avx, %.lr.ph311 ], [ %i.awo, %middle.block ] ; 7 uses
  %xtraiter770 = and i64 %indvars.iv409.ph, 1
  %lcmp.mod771.not = icmp eq i64 %xtraiter770, 0
  br i1 %lcmp.mod771.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %indvars.iv409.ph
  %i.axk = load i64, ptr %i.axj, align 8, !tbaa !106
  %i.axl = shl i64 %i.axk, %.pre460
  %i.axm = add nsw i64 %indvars.iv409.ph, -1
  %i.axn = getelementptr [8 x i8], ptr %5, i64 %indvars.iv409.ph
  %i.axo = load i64, ptr %i.axn, align 8, !tbaa !106
  %i.axp = lshr i64 %i.axo, %i.awa
  %i.axq = or i64 %i.axp, %i.axl
  %i.axr = trunc nuw i64 %indvars.iv409.ph to i32
  %i.axs = add i32 %i.ate, %i.axr
  %i.axt = zext i32 %i.axs to i64
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.axt
  store i64 %i.axq, ptr %i.axu, align 8, !tbaa !106
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv409.unr = phi i64 [ %indvars.iv409.ph, %scalar.ph.preheader ], [ %i.axm, %scalar.ph.prol ]
  %i.axv = icmp eq i64 %indvars.iv409.ph, 1
  br i1 %i.axv, label %._crit_edge312, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv409 = phi i64 [ %i.ayl, %scalar.ph ], [ %indvars.iv409.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %indvars.iv409
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !106
  %i.axy = shl i64 %i.axx, %.pre460
  %i.axz = add nsw i64 %indvars.iv409, -1         ; 2 uses
  %i.aya = getelementptr [8 x i8], ptr %5, i64 %indvars.iv409
  %i.ayb = load i64, ptr %i.aya, align 8, !tbaa !106
  %i.ayc = lshr i64 %i.ayb, %i.awa
  %i.ayd = or i64 %i.ayc, %i.axy
  %i.aye = trunc nuw i64 %indvars.iv409 to i32
  %i.ayf = add i32 %i.ate, %i.aye
  %i.ayg = zext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ayg
  store i64 %i.ayd, ptr %i.ayh, align 8, !tbaa !106
  %i.ayi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv409
  %i.ayj = load i64, ptr %i.ayi, align 8, !tbaa !106
  %i.ayk = shl i64 %i.ayj, %.pre460
  %i.ayl = add nsw i64 %indvars.iv409, -2         ; 2 uses
  %i.aym = getelementptr [8 x i8], ptr %5, i64 %i.axz
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !106
  %i.ayo = lshr i64 %i.ayn, %i.awa
  %i.ayp = or i64 %i.ayo, %i.ayk
  %i.ayq = trunc nuw i64 %i.axz to i32
  %i.ayr = add i32 %i.ate, %i.ayq
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ays
  store i64 %i.ayp, ptr %i.ayt, align 8, !tbaa !106
  %.not.i37.wide.1 = icmp eq i64 %i.ayl, 0
  br i1 %.not.i37.wide.1, label %._crit_edge312, label %scalar.ph, !llvm.loop !296

._crit_edge312:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ic
  %i.ayu = load i64, ptr %i.avw, align 8, !tbaa !106
  %i.ayv = shl i64 %i.ayu, %.pre460
  %i.ayw = zext nneg i32 %i.ate to i64
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ayw
  store i64 %i.ayv, ptr %i.ayx, align 8, !tbaa !106
  %i.ayy = add i32 %i.atf, %i.ate                 ; 2 uses
  %i.ayz = zext i32 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ayz
  %i.azb = load i64, ptr %i.aza, align 8, !tbaa !106
  %i.azc = icmp ne i64 %i.azb, 0
  %i.azd = zext i1 %i.azc to i32
  %i.aze = add i32 %i.ayy, %i.azd
  store i32 %i.aze, ptr %5, align 8, !tbaa !131
  %.not45.i39313 = icmp eq i32 %i.ate, 0
  br i1 %.not45.i39313, label %bigint_mul_pow2.exit, label %bigint_mul_pow2.exit.sink.split

bigint_mul_pow2.exit.sink.split:                  ; preds = %._crit_edge312, %._crit_edge329, %.lr.ph341.preheader, %.lr.ph324
  %.sink616 = phi i32 [ %i.anf, %._crit_edge329 ], [ %i.ate, %.lr.ph324 ], [ %i.anf, %.lr.ph341.preheader ], [ %i.ate, %._crit_edge312 ]
  %.sink611 = phi ptr [ %i.age, %._crit_edge329 ], [ %i.avv, %.lr.ph324 ], [ %i.age, %.lr.ph341.preheader ], [ %i.avw, %._crit_edge312 ]
  %.ph610 = phi i32 [ %i.atb, %._crit_edge329 ], [ %i.anc, %.lr.ph324 ], [ %i.apt, %.lr.ph341.preheader ], [ %i.anc, %._crit_edge312 ]
  %i.azf = add nsw i32 %.sink616, -1
  %i.azg = zext nneg i32 %i.azf to i64
  %i.azh = shl nuw nsw i64 %i.azg, 3
  %i.azi = add nuw nsw i64 %i.azh, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink611, i8 0, i64 %i.azi, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %bigint_mul_pow2.exit.sink.split, %._crit_edge312, %._crit_edge320, %._crit_edge329
  %i.azj = phi i32 [ %i.atb, %._crit_edge329 ], [ %i.anc, %._crit_edge312 ], [ %i.anc, %._crit_edge320 ], [ %.ph610, %bigint_mul_pow2.exit.sink.split ] ; 2 uses
  %i.azk = load i32, ptr %5, align 8, !tbaa !131  ; 4 uses
  %i.azl = icmp ult i32 %i.azk, %i.azj
  br i1 %i.azl, label %bigint_cmp.exit.thread, label %bb.id

bb.id:                                            ; preds = %bigint_mul_pow2.exit
  %i.azm = icmp ugt i32 %i.azk, %i.azj
  br i1 %i.azm, label %bigint_cmp.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.id
  %.not.i45649 = icmp eq i32 %i.azk, 0
  br i1 %.not.i45649, label %bigint_cmp.exit.thread133, label %.lr.ph652

.lr.ph652:                                        ; preds = %.preheader
  %i.azn = zext i32 %i.azk to i64
  br label %bb.if

bb.ie:                                            ; preds = %bb.if
  %i.azo = add nsw i64 %indvars.iv427650, -1      ; 2 uses
  %.not.i45 = icmp eq i64 %i.azo, 0
  br i1 %.not.i45, label %bigint_cmp.exit.thread133, label %bb.if, !llvm.loop !16

bb.if:                                            ; preds = %.lr.ph652, %bb.ie
  %.016.i651 = phi i32 [ undef, %.lr.ph652 ], [ %.1.i46, %bb.ie ]
  %indvars.iv427650 = phi i64 [ %i.azn, %.lr.ph652 ], [ %i.azo, %bb.ie ] ; 3 uses
  %i.azp = getelementptr [8 x i8], ptr %5, i64 %indvars.iv427650
  %i.azq = load i64, ptr %i.azp, align 8, !tbaa !106 ; 3 uses
  %i.azr = getelementptr [8 x i8], ptr %6, i64 %indvars.iv427650
  %i.azs = load i64, ptr %i.azr, align 8, !tbaa !106 ; 3 uses
  %.not182 = icmp ult i64 %i.azq, %i.azs
  %.not183 = icmp ugt i64 %i.azq, %i.azs
  %..016.i = select i1 %.not183, i32 1, i32 %.016.i651
  %.1.i46 = select i1 %.not182, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.azq, %i.azs
  br i1 %cond.i, label %bb.ie, label %bigint_cmp.exit, !llvm.loop !16

bigint_cmp.exit:                                  ; preds = %bb.if
  %.not989.i = icmp eq i32 %.1.i46, 0
  br i1 %.not989.i, label %bigint_cmp.exit.thread133, label %bigint_cmp.exit.thread, !prof !125

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.id, %bigint_cmp.exit
  %.2.i47132 = phi i32 [ %.1.i46, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.id ]
  %i.azt = icmp sgt i32 %.2.i47132, 0
  %i.azu = zext i1 %i.azt to i64
  br label %bb.ig

bigint_cmp.exit.thread133:                        ; preds = %bb.ie, %.preheader, %bigint_cmp.exit
  %i.azv = and i64 %.0.i28.ph, 1
  br label %bb.ig

bb.ig:                                            ; preds = %bigint_cmp.exit.thread133, %bigint_cmp.exit.thread
  %.pn.i = phi i64 [ %i.azu, %bigint_cmp.exit.thread ], [ %i.azv, %bigint_cmp.exit.thread133 ]
  %.0895.i = add nuw nsw i64 %.pn.i, %.0.i28.ph   ; 2 uses
  %i.azw = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.azw, label %bb.ih, label %bb.il, !prof !45

bb.ih:                                            ; preds = %bb.ig
  %i.azx = and i32 %2, 128
  %.not184 = icmp eq i32 %i.azx, 0
  br i1 %.not184, label %bb.ij, label %bb.ii, !prof !62

bb.ii:                                            ; preds = %bb.ih
  %i.azy = load ptr, ptr %i.d, align 8, !tbaa !107
  store i8 0, ptr %i.azy, align 1, !tbaa !100
  %i.azz = ptrtoint ptr %.33.i to i64
  %i.baa = sub i64 %i.azz, %i.f
  %i.bab = shl i64 %i.baa, 8
  %i.bac = or disjoint i64 %i.bab, 1
  store i64 %i.bac, ptr %1, align 8, !tbaa !99
  %i.bad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.bad, align 8, !tbaa !100
  br label %read_num.exit.thread142

bb.ij:                                            ; preds = %bb.ih
  %i.bae = and i32 %2, 16
  %.not185 = icmp eq i32 %i.bae, 0
  br i1 %.not185, label %read_num.exit, label %bb.ik, !prof !62

bb.ik:                                            ; preds = %bb.ij
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.baf = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.bag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.baf, ptr %i.bag, align 8, !tbaa !100
  br label %read_num.exit.thread142

bb.il:                                            ; preds = %bb.ig
  store i64 20, ptr %1, align 8, !tbaa !99
  %i.bah = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.bai = or disjoint i64 %.0895.i, %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bai, ptr %i.baj, align 8, !tbaa !100
  br label %read_num.exit.thread142

read_num.exit.thread138:                          ; preds = %bb.fx, %bb.ac, %bb.fm, %bb.ge, %bb.fd, %read_inf_or_nan.exit.thread, %bb.fs, %bb.gn, %bb.ae, %bb.ag
  %.sink617 = phi ptr [ %i.yj, %bb.fx ], [ %i.de, %bb.ac ], [ %i.wv, %bb.fm ], [ %0, %bb.ge ], [ %i.vv, %bb.fd ], [ %.0903.i215, %read_inf_or_nan.exit.thread ], [ %.28.i, %bb.fs ], [ %0, %bb.gn ], [ %i.dt, %bb.ae ], [ %i.ee, %bb.ag ]
  store ptr %.sink617, ptr %i.b, align 8, !tbaa !107
  br label %.sink.split

read_num.exit.thread142:                          ; preds = %bb.hf, %bb.hh, %bb.hj, %bb.ii, %bb.ik, %bb.il
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split618

read_num.exit:                                    ; preds = %bb.ij, %bb.hg
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  store ptr %0, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split

.sink.split:                                      ; preds = %read_num.exit.thread138, %read_num.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.im

bb.im:                                            ; preds = %.sink.split, %.split140, %.split
  br i1 %.not, label %.cont.cont.cont, label %.cont89.cont.else

.cont89.cont.else:                                ; preds = %bb.im
  %.sroa.gep69 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bak = load ptr, ptr %i.b, align 8, !tbaa !107 ; 2 uses
  %i.bal = icmp ugt ptr %i.bak, %0
  %i.bam = ptrtoint ptr %i.bak to i64
  %i.ban = sub i64 %i.bam, %i.f
  %i.bao = select i1 %i.bal, i64 %i.ban, i64 0
  store i64 %i.bao, ptr %.sroa.gep69, align 8, !tbaa !113
  %i.bap = load ptr, ptr %i.e, align 8, !tbaa !107
  %.sroa.gep71 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bap, ptr %.sroa.gep71, align 8, !tbaa !114
  store i32 9, ptr %4, align 8, !tbaa !115
  br label %.cont.cont.cont

.sink.split618:                                   ; preds = %read_inf.exit, %bb.v, %bb.bi, %bb.bl, %bb.bo, %bb.br, %bb.bu, %bb.bx, %bb.ca, %bb.cd, %bb.cg, %bb.cj, %bb.cm, %bb.cp, %bb.cs, %bb.cv, %bb.cy, %bb.db, %bb.de, %bb.bd, %bb.bc, %bb.bb, %bb.ey, %bb.ex, %bb.ew, %.thread, %bb.bf, %.loopexit202, %bb.fv, %bb.fi, %bb.ab, %bb.gs, %bb.gx, %bb.gm, %bb.gk, %bb.gh, %bb.gd, %bb.gb, %bb.fz, %read_num.exit.thread142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.in

bb.in:                                            ; preds = %.sink.split618, %.split140, %.split
  %i.baq = load ptr, ptr %i.b, align 8, !tbaa !107
  br label %.cont.cont.cont

.cont.cont.cont:                                  ; preds = %.cont89.cont.else, %bb.im, %.cont86.cont.else, %bb.d, %.cont.cont.else, %bb.b, %bb.in
  %.0 = phi ptr [ null, %.cont86.cont.else ], [ null, %.cont.cont.else ], [ %i.baq, %bb.in ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.im ], [ null, %.cont89.cont.else ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_incr_new(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !47
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.77.0.copyload = load ptr, ptr %.sroa.77.0..sroa_idx, align 8, !tbaa !47
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.b ], [ null, %bb.a ] ; 4 uses
  %.sroa.77.0 = phi ptr [ %.sroa.77.0.copyload, %bb.b ], [ @default_free, %bb.a ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ @default_realloc, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.b ], [ @default_malloc, %bb.a ] ; 3 uses
  %i.a = and i32 %2, -16221
  %.not48 = icmp eq ptr %0, null
  %i.b = icmp ugt i64 %1, -6
  %or.cond = or i1 %.not48, %i.b
  br i1 %or.cond, label %bb.k, label %bb.d, !prof !139

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr %.sroa.0.0(ptr noundef %.sroa.8.0, i64 noundef 144) #33 ; 15 uses
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i8 0, i64 144, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0, ptr %i.d, align 8, !tbaa !47
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx5, align 8, !tbaa !47
  %.sroa.77.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.77.0, ptr %.sroa.77.0..sroa_idx9, align 8, !tbaa !47
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx12, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.a, ptr %i.e, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
end_hunk_5
begin_hunk_6_@yyjson_incr_read:bb.a
  %i.ayg = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.ayf
  store i64 %i.ayc, ptr %i.ayg, align 8, !tbaa !106
  %i.ayh = add nsw i64 %indvars.iv4797, -2        ; 2 uses
  %i.ayi = getelementptr [8 x i8], ptr %3, i64 %i.aya
  %i.ayj = load i64, ptr %i.ayi, align 8, !tbaa !106
  %i.ayk = trunc nuw i64 %i.aya to i32
  %i.ayl = add i32 %i.awq, %i.ayk
  %i.aym = zext i32 %i.ayl to i64
  %i.ayn = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.aym
  store i64 %i.ayj, ptr %i.ayn, align 8, !tbaa !106
  %i.ayo = add nsw i64 %indvars.iv4797, -3        ; 2 uses
  %i.ayp = getelementptr [8 x i8], ptr %3, i64 %i.ayh
  %i.ayq = load i64, ptr %i.ayp, align 8, !tbaa !106
  %i.ayr = trunc nuw i64 %i.ayh to i32
  %i.ays = add i32 %i.awq, %i.ayr
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.ayt
  store i64 %i.ayq, ptr %i.ayu, align 8, !tbaa !106
  %i.ayv = add nsw i64 %indvars.iv4797, -4        ; 2 uses
  %i.ayw = getelementptr [8 x i8], ptr %3, i64 %i.ayo
  %i.ayx = load i64, ptr %i.ayw, align 8, !tbaa !106
  %i.ayy = trunc nuw i64 %i.ayo to i32
  %i.ayz = add i32 %i.awq, %i.ayy
  %i.aza = zext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.aza
  store i64 %i.ayx, ptr %i.azb, align 8, !tbaa !106
  %.not46.i1528.wide.3 = icmp eq i64 %i.ayv, 0
  br i1 %.not46.i1528.wide.3, label %._crit_edge4352, label %scalar.ph6175, !llvm.loop !310

._crit_edge4352:                                  ; preds = %scalar.ph6175.prol.loopexit, %scalar.ph6175, %middle.block6184, %.preheader3531
  %i.azc = add i32 %i.awn, %i.awm
  store i32 %i.azc, ptr %3, align 8, !tbaa !131
  %.not47.i15304353 = icmp eq i32 %i.awm, 0
  br i1 %.not47.i15304353, label %bigint_mul_pow2.exit, label %.lr.ph4356

.lr.ph4356:                                       ; preds = %._crit_edge4352
  %i.azd = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bigint_mul_pow2.exit.sink.split

bb.iu:                                            ; preds = %bb.it
  %i.aze = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.azf = zext i32 %i.awn to i64                 ; 10 uses
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.azf
  store i64 0, ptr %i.azg, align 8, !tbaa !106
  %.not.i15244340 = icmp eq i32 %i.awn, 0
  %.pre4999 = zext nneg i32 %i.awl to i64         ; 5 uses
  br i1 %.not.i15244340, label %._crit_edge4344, label %.lr.ph4343

.lr.ph4343:                                       ; preds = %bb.iu
  %i.azh = sub nuw nsw i32 64, %i.awl
  %i.azi = zext nneg i32 %i.azh to i64            ; 4 uses
  %min.iters.check6155 = icmp ult i32 %i.awn, 20
  br i1 %min.iters.check6155, label %scalar.ph6154.preheader, label %vector.scevcheck6149

vector.scevcheck6149:                             ; preds = %.lr.ph4343
  %i.azj = add nsw i64 %i.azf, -1                 ; 2 uses
  %i.azk = add i32 %i.awn, %i.awm
  %i.azl = trunc i64 %i.azj to i32
  %i.azm = icmp ult i32 %i.azk, %i.azl
  %i.azn = icmp ugt i64 %i.azj, 4294967295
  %i.azo = or i1 %i.azm, %i.azn
  br i1 %i.azo, label %scalar.ph6154.preheader, label %vector.memcheck6150

vector.memcheck6150:                              ; preds = %vector.scevcheck6149
  %i.azp = shl nuw nsw i64 %i.azf, 3              ; 2 uses
  %i.azq = add i32 %i.awn, %i.awm
  %i.azr = zext i32 %i.azq to i64
  %i.azs = shl nuw nsw i64 %i.azr, 3              ; 2 uses
  %i.azt = sub nsw i64 %i.azs, %i.azp
  %diff.check6151 = icmp ugt i64 %i.azt, -32
  %i.azu = sub nsw i64 %i.azp, %i.azs
  %i.azv = add nsw i64 %i.azu, -9
  %diff.check6152 = icmp ult i64 %i.azv, 31
  %conflict.rdx6153 = or i1 %diff.check6151, %diff.check6152
  br i1 %conflict.rdx6153, label %scalar.ph6154.preheader, label %vector.ph6156

vector.ph6156:                                    ; preds = %vector.memcheck6150
  %n.vec6157 = and i64 %i.azf, 4294967292         ; 2 uses
  %i.azw = and i64 %i.azf, 3
  %broadcast.splatinsert6158 = insertelement <2 x i64> poison, i64 %i.azi, i64 0
  %broadcast.splat6159 = shufflevector <2 x i64> %broadcast.splatinsert6158, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6160 = insertelement <2 x i64> poison, i64 %.pre4999, i64 0
  %broadcast.splat6161 = shufflevector <2 x i64> %broadcast.splatinsert6160, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body6162

vector.body6162:                                  ; preds = %vector.body6162, %vector.ph6156
  %index6163 = phi i64 [ 0, %vector.ph6156 ], [ %index.next6168, %vector.body6162 ] ; 2 uses
  %i.azx = sub i64 %i.azf, %index6163             ; 3 uses
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.azx ; 2 uses
  %i.azz = getelementptr inbounds i8, ptr %i.azy, i64 -8
  %i.baa = getelementptr inbounds i8, ptr %i.azy, i64 -24
  %wide.load6164 = load <2 x i64>, ptr %i.azz, align 8, !tbaa !106
  %wide.load6165 = load <2 x i64>, ptr %i.baa, align 8, !tbaa !106
  %i.bab = shl <2 x i64> %wide.load6164, %broadcast.splat6161
  %i.bac = shl <2 x i64> %wide.load6165, %broadcast.splat6161
  %i.bad = getelementptr [8 x i8], ptr %3, i64 %i.azx ; 2 uses
  %i.bae = getelementptr i8, ptr %i.bad, i64 -8
  %i.baf = getelementptr i8, ptr %i.bad, i64 -24
  %wide.load6166 = load <2 x i64>, ptr %i.bae, align 8, !tbaa !106
  %wide.load6167 = load <2 x i64>, ptr %i.baf, align 8, !tbaa !106
  %i.bag = lshr <2 x i64> %wide.load6166, %broadcast.splat6159
  %i.bah = lshr <2 x i64> %wide.load6167, %broadcast.splat6159
  %i.bai = or <2 x i64> %i.bag, %i.bab
  %i.baj = or <2 x i64> %i.bah, %i.bac
  %i.bak = trunc nuw i64 %i.azx to i32
  %i.bal = add i32 %i.awm, %i.bak
  %i.bam = zext i32 %i.bal to i64
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bam ; 2 uses
  %i.bao = getelementptr inbounds i8, ptr %i.ban, i64 -8
  %i.bap = getelementptr inbounds i8, ptr %i.ban, i64 -24
  store <2 x i64> %i.bai, ptr %i.bao, align 8, !tbaa !106
  store <2 x i64> %i.baj, ptr %i.bap, align 8, !tbaa !106
  %index.next6168 = add nuw i64 %index6163, 4     ; 2 uses
  %i.baq = icmp eq i64 %index.next6168, %n.vec6157
  br i1 %i.baq, label %middle.block6169, label %vector.body6162, !llvm.loop !311

middle.block6169:                                 ; preds = %vector.body6162
  %cmp.n6170 = icmp eq i64 %n.vec6157, %i.azf
  br i1 %cmp.n6170, label %._crit_edge4344, label %scalar.ph6154.preheader

scalar.ph6154.preheader:                          ; preds = %vector.memcheck6150, %vector.scevcheck6149, %.lr.ph4343, %middle.block6169
  %indvars.iv4792.ph = phi i64 [ %i.azf, %vector.memcheck6150 ], [ %i.azf, %vector.scevcheck6149 ], [ %i.azf, %.lr.ph4343 ], [ %i.azw, %middle.block6169 ] ; 7 uses
  %xtraiter6570 = and i64 %indvars.iv4792.ph, 1
  %lcmp.mod6571.not = icmp eq i64 %xtraiter6570, 0
  br i1 %lcmp.mod6571.not, label %scalar.ph6154.prol.loopexit, label %scalar.ph6154.prol

scalar.ph6154.prol:                               ; preds = %scalar.ph6154.preheader
  %i.bar = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %indvars.iv4792.ph
  %i.bas = load i64, ptr %i.bar, align 8, !tbaa !106
  %i.bat = shl i64 %i.bas, %.pre4999
  %i.bau = add nsw i64 %indvars.iv4792.ph, -1
  %i.bav = getelementptr [8 x i8], ptr %3, i64 %indvars.iv4792.ph
  %i.baw = load i64, ptr %i.bav, align 8, !tbaa !106
  %i.bax = lshr i64 %i.baw, %i.azi
  %i.bay = or i64 %i.bax, %i.bat
  %i.baz = trunc nuw i64 %indvars.iv4792.ph to i32
  %i.bba = add i32 %i.awm, %i.baz
  %i.bbb = zext i32 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bbb
  store i64 %i.bay, ptr %i.bbc, align 8, !tbaa !106
  br label %scalar.ph6154.prol.loopexit

scalar.ph6154.prol.loopexit:                      ; preds = %scalar.ph6154.prol, %scalar.ph6154.preheader
  %indvars.iv4792.unr = phi i64 [ %indvars.iv4792.ph, %scalar.ph6154.preheader ], [ %i.bau, %scalar.ph6154.prol ]
  %i.bbd = icmp eq i64 %indvars.iv4792.ph, 1
  br i1 %i.bbd, label %._crit_edge4344, label %scalar.ph6154

scalar.ph6154:                                    ; preds = %scalar.ph6154.prol.loopexit, %scalar.ph6154
  %indvars.iv4792 = phi i64 [ %i.bbt, %scalar.ph6154 ], [ %indvars.iv4792.unr, %scalar.ph6154.prol.loopexit ] ; 6 uses
  %i.bbe = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %indvars.iv4792
  %i.bbf = load i64, ptr %i.bbe, align 8, !tbaa !106
  %i.bbg = shl i64 %i.bbf, %.pre4999
  %i.bbh = add nsw i64 %indvars.iv4792, -1        ; 2 uses
  %i.bbi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv4792
  %i.bbj = load i64, ptr %i.bbi, align 8, !tbaa !106
  %i.bbk = lshr i64 %i.bbj, %i.azi
  %i.bbl = or i64 %i.bbk, %i.bbg
  %i.bbm = trunc nuw i64 %indvars.iv4792 to i32
  %i.bbn = add i32 %i.awm, %i.bbm
  %i.bbo = zext i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bbo
  store i64 %i.bbl, ptr %i.bbp, align 8, !tbaa !106
  %i.bbq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv4792
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !106
  %i.bbs = shl i64 %i.bbr, %.pre4999
  %i.bbt = add nsw i64 %indvars.iv4792, -2        ; 2 uses
  %i.bbu = getelementptr [8 x i8], ptr %3, i64 %i.bbh
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !106
  %i.bbw = lshr i64 %i.bbv, %i.azi
  %i.bbx = or i64 %i.bbw, %i.bbs
  %i.bby = trunc nuw i64 %i.bbh to i32
  %i.bbz = add i32 %i.awm, %i.bby
  %i.bca = zext i32 %i.bbz to i64
  %i.bcb = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bca
  store i64 %i.bbx, ptr %i.bcb, align 8, !tbaa !106
  %.not.i1524.wide.1 = icmp eq i64 %i.bbt, 0
  br i1 %.not.i1524.wide.1, label %._crit_edge4344, label %scalar.ph6154, !llvm.loop !312

._crit_edge4344:                                  ; preds = %scalar.ph6154.prol.loopexit, %scalar.ph6154, %middle.block6169, %bb.iu
  %i.bcc = load i64, ptr %i.aze, align 8, !tbaa !106
  %i.bcd = shl i64 %i.bcc, %.pre4999
  %i.bce = zext nneg i32 %i.awm to i64
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bce
  store i64 %i.bcd, ptr %i.bcf, align 8, !tbaa !106
  %i.bcg = add i32 %i.awn, %i.awm                 ; 2 uses
  %i.bch = zext i32 %i.bcg to i64
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bch
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !106
  %i.bck = icmp ne i64 %i.bcj, 0
  %i.bcl = zext i1 %i.bck to i32
  %i.bcm = add i32 %i.bcg, %i.bcl
  store i32 %i.bcm, ptr %3, align 8, !tbaa !131
  %.not45.i15264345 = icmp eq i32 %i.awm, 0
  br i1 %.not45.i15264345, label %bigint_mul_pow2.exit, label %bigint_mul_pow2.exit.sink.split

bigint_mul_pow2.exit.sink.split:                  ; preds = %._crit_edge4344, %._crit_edge4361, %.lr.ph4373.preheader, %.lr.ph4356
  %.sink5677 = phi i32 [ %i.aqn, %._crit_edge4361 ], [ %i.awm, %.lr.ph4356 ], [ %i.aqn, %.lr.ph4373.preheader ], [ %i.awm, %._crit_edge4344 ]
  %.sink5672 = phi ptr [ %i.ajm, %._crit_edge4361 ], [ %i.azd, %.lr.ph4356 ], [ %i.ajm, %.lr.ph4373.preheader ], [ %i.aze, %._crit_edge4344 ]
  %.ph5671 = phi i32 [ %i.awj, %._crit_edge4361 ], [ %i.aqk, %.lr.ph4356 ], [ %i.atb, %.lr.ph4373.preheader ], [ %i.aqk, %._crit_edge4344 ]
  %i.bcn = add nsw i32 %.sink5677, -1
  %i.bco = zext nneg i32 %i.bcn to i64
  %i.bcp = shl nuw nsw i64 %i.bco, 3
  %i.bcq = add nuw nsw i64 %i.bcp, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink5672, i8 0, i64 %i.bcq, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %bigint_mul_pow2.exit.sink.split, %._crit_edge4344, %._crit_edge4352, %._crit_edge4361
  %i.bcr = phi i32 [ %i.awj, %._crit_edge4361 ], [ %i.aqk, %._crit_edge4344 ], [ %i.aqk, %._crit_edge4352 ], [ %.ph5671, %bigint_mul_pow2.exit.sink.split ] ; 2 uses
  %i.bcs = load i32, ptr %3, align 8, !tbaa !131  ; 4 uses
  %i.bct = icmp ult i32 %i.bcs, %i.bcr
  br i1 %i.bct, label %bigint_cmp.exit.thread, label %bb.iv

bb.iv:                                            ; preds = %bigint_mul_pow2.exit
  %i.bcu = icmp ugt i32 %i.bcs, %i.bcr
  br i1 %i.bcu, label %bigint_cmp.exit.thread, label %.preheader3527

.preheader3527:                                   ; preds = %bb.iv
  %.not.i15686000 = icmp eq i32 %i.bcs, 0
  br i1 %.not.i15686000, label %bigint_cmp.exit.thread3162, label %.lr.ph6003

.lr.ph6003:                                       ; preds = %.preheader3527
  %i.bcv = zext i32 %i.bcs to i64
  br label %bb.ix

bb.iw:                                            ; preds = %bb.ix
  %i.bcw = add nsw i64 %indvars.iv48106001, -1    ; 2 uses
  %.not.i1568 = icmp eq i64 %i.bcw, 0
  br i1 %.not.i1568, label %bigint_cmp.exit.thread3162, label %bb.ix, !llvm.loop !16

bb.ix:                                            ; preds = %.lr.ph6003, %bb.iw
  %.016.i6002 = phi i32 [ undef, %.lr.ph6003 ], [ %.1.i1569, %bb.iw ]
  %indvars.iv48106001 = phi i64 [ %i.bcv, %.lr.ph6003 ], [ %i.bcw, %bb.iw ] ; 3 uses
  %i.bcx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv48106001
  %i.bcy = load i64, ptr %i.bcx, align 8, !tbaa !106 ; 3 uses
  %i.bcz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv48106001
  %i.bda = load i64, ptr %i.bcz, align 8, !tbaa !106 ; 3 uses
  %.not3496 = icmp ult i64 %i.bcy, %i.bda
  %.not3497 = icmp ugt i64 %i.bcy, %i.bda
  %..016.i = select i1 %.not3497, i32 1, i32 %.016.i6002
  %.1.i1569 = select i1 %.not3496, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.bcy, %i.bda
  br i1 %cond.i, label %bb.iw, label %bigint_cmp.exit, !llvm.loop !16

bigint_cmp.exit:                                  ; preds = %bb.ix
  %.not989.i1032 = icmp eq i32 %.1.i1569, 0
  br i1 %.not989.i1032, label %bigint_cmp.exit.thread3162, label %bigint_cmp.exit.thread, !prof !125

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.iv, %bigint_cmp.exit
  %.2.i15703161 = phi i32 [ %.1.i1569, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.iv ]
  %i.bdb = icmp sgt i32 %.2.i15703161, 0
  %i.bdc = zext i1 %i.bdb to i64
  br label %bb.iy

bigint_cmp.exit.thread3162:                       ; preds = %bb.iw, %.preheader3527, %bigint_cmp.exit
  %i.bdd = and i64 %.0.i1497.ph, 1
  br label %bb.iy

bb.iy:                                            ; preds = %bigint_cmp.exit.thread3162, %bigint_cmp.exit.thread
  %.pn.i1033 = phi i64 [ %i.bdc, %bigint_cmp.exit.thread ], [ %i.bdd, %bigint_cmp.exit.thread3162 ]
  %.0895.i1034 = add nuw nsw i64 %.pn.i1033, %.0.i1497.ph ; 2 uses
  %i.bde = icmp eq i64 %.0895.i1034, 9218868437227405312
  br i1 %i.bde, label %bb.iz, label %bb.je, !prof !45

bb.iz:                                            ; preds = %bb.iy
  %i.bdf = and i32 %.fr, 128
  %.not3498 = icmp eq i32 %i.bdf, 0
  br i1 %.not3498, label %bb.jb, label %bb.ja, !prof !62

bb.ja:                                            ; preds = %bb.iz
  %i.bdg = load ptr, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.bdg, align 1, !tbaa !100
  %i.bdh = ptrtoint ptr %.33.i1008 to i64
  %i.bdi = ptrtoint ptr %i.bq to i64
  %i.bdj = sub i64 %i.bdh, %i.bdi
  %i.bdk = shl i64 %i.bdj, 8
  %i.bdl = or disjoint i64 %i.bdk, 1
  store i64 %i.bdl, ptr %.0617, align 8, !tbaa !99
  %i.bdm = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store ptr %i.bq, ptr %i.bdm, align 8, !tbaa !100
  store ptr %.33.i1008, ptr %i.g, align 8, !tbaa !107
  br label %read_num.exit1117.thread3171

bb.jb:                                            ; preds = %bb.iz
  %i.bdn = and i32 %.fr, 16
  %.not3499 = icmp eq i32 %i.bdn, 0
  br i1 %.not3499, label %bb.jd, label %bb.jc, !prof !62

bb.jc:                                            ; preds = %bb.jb
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.bdo = select i1 %i.cb, i64 -4503599627370496, i64 9218868437227405312
  %i.bdp = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.bdo, ptr %i.bdp, align 8, !tbaa !100
  br label %read_num.exit1117.thread3171

bb.jd:                                            ; preds = %bb.jb
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  store ptr %i.bq, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit1117

bb.je:                                            ; preds = %bb.iy
  store i64 20, ptr %.0617, align 8, !tbaa !99
  %i.bdq = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.bdr = or disjoint i64 %.0895.i1034, %i.bdq
  %i.bds = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.bdr, ptr %i.bds, align 8, !tbaa !100
  br label %read_num.exit1117.thread3171

read_num.exit1117.thread:                         ; preds = %bb.gq, %bb.gs, %bb.gu, %bb.gy, %bb.hb, %bb.hd, %bb.ho, %bb.hj, %bb.as, %bb.fz, %bb.gm, %.loopexit3538, %bb.bw, %.thread5335, %bb.fn, %bb.fo, %bb.fp, %bb.bs, %bb.bt, %bb.bu, %bb.dv, %bb.ds, %bb.dp, %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.am, %read_inf.exit1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit1117.thread3167:                     ; preds = %bb.go, %bb.at, %bb.gd, %bb.gv, %bb.fu, %read_inf_or_nan.exit.thread, %bb.gj, %bb.he, %bb.av, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.atc

read_num.exit1117.thread3171:                     ; preds = %bb.hw, %bb.hy, %bb.ib, %bb.ja, %bb.jc, %bb.je
  store ptr %.33.i1008, ptr %i.d, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit1117:                                ; preds = %bb.hz, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.atc

bb.jf:                                            ; preds = %bb.s
  switch i8 %i.bp, label %bb.na [
    i8 34, label %bb.jg
    i8 116, label %bb.mx
    i8 102, label %bb.my
    i8 110, label %bb.mz
  ]

bb.jg:                                            ; preds = %bb.jf
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 5 uses
  %i.bdu = load ptr, ptr %i.ah, align 8, !tbaa !107 ; 3 uses
  %.not113.i = icmp eq ptr %i.bdu, null
  br i1 %.not113.i, label %bb.ji, label %bb.jh, !prof !62

bb.jh:                                            ; preds = %bb.jg
  %i.bdv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !107 ; 2 uses
  %.not114.i = icmp eq ptr %i.bdw, null
  br i1 %.not114.i, label %bb.ji, label %.preheader3522

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %.93056 = phi ptr [ %i.bdt, %bb.jg ], [ %i.bdu, %bb.jh ]
  %i.bdx = and i32 %.fr, 64
  %.not3460 = icmp eq i32 %i.bdx, 0
  br label %.backedge3526

.backedge3526:                                    ; preds = %.backedge3526.backedge, %bb.ji
  %.103057 = phi ptr [ %.93056, %bb.ji ], [ %.103057.be, %.backedge3526.backedge ] ; 18 uses
  %i.bdy = load i8, ptr %.103057, align 1, !tbaa !100 ; 2 uses
  %i.bdz = zext i8 %i.bdy to i64
  %i.bea = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bdz
  %i.beb = load i8, ptr %i.bea, align 1, !tbaa !100
  %i.bec = trunc i8 %i.beb to i1
  br i1 %i.bec, label %bb.jj, label %bb.jz, !prof !62

bb.jj:                                            ; preds = %.backedge3526
  %i.bed = getelementptr inbounds nuw i8, ptr %.103057, i64 1 ; 2 uses
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !100 ; 2 uses
  %i.bef = zext i8 %i.bee to i64
  %i.beg = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bef
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !100
  %i.bei = trunc i8 %i.beh to i1
  br i1 %i.bei, label %bb.jk, label %bb.jz, !prof !62

bb.jk:                                            ; preds = %bb.jj
  %i.bej = getelementptr inbounds nuw i8, ptr %.103057, i64 2 ; 2 uses
  %i.bek = load i8, ptr %i.bej, align 1, !tbaa !100 ; 2 uses
  %i.bel = zext i8 %i.bek to i64
  %i.bem = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bel
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !100
  %i.beo = trunc i8 %i.ben to i1
  br i1 %i.beo, label %bb.jl, label %bb.jz, !prof !62

bb.jl:                                            ; preds = %bb.jk
  %i.bep = getelementptr inbounds nuw i8, ptr %.103057, i64 3 ; 2 uses
  %i.beq = load i8, ptr %i.bep, align 1, !tbaa !100 ; 2 uses
  %i.ber = zext i8 %i.beq to i64
  %i.bes = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ber
  %i.bet = load i8, ptr %i.bes, align 1, !tbaa !100
  %i.beu = trunc i8 %i.bet to i1
  br i1 %i.beu, label %bb.jm, label %bb.jz, !prof !62

bb.jm:                                            ; preds = %bb.jl
  %i.bev = getelementptr inbounds nuw i8, ptr %.103057, i64 4 ; 2 uses
  %i.bew = load i8, ptr %i.bev, align 1, !tbaa !100 ; 2 uses
  %i.bex = zext i8 %i.bew to i64
  %i.bey = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bex
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !100
  %i.bfa = trunc i8 %i.bez to i1
  br i1 %i.bfa, label %bb.jn, label %bb.jz, !prof !62

bb.jn:                                            ; preds = %bb.jm
  %i.bfb = getelementptr inbounds nuw i8, ptr %.103057, i64 5 ; 2 uses
end_hunk_6
begin_hunk_7_@yyjson_incr_read:bb.a
  %i.dwk = getelementptr inbounds nuw [8 x i8], ptr %i.dut, i64 %i.dwj
  store i64 %i.dwg, ptr %i.dwk, align 8, !tbaa !106
  %i.dwl = add nsw i64 %indvars.iv4736, -2        ; 2 uses
  %i.dwm = getelementptr [8 x i8], ptr %5, i64 %i.dwe
  %i.dwn = load i64, ptr %i.dwm, align 8, !tbaa !106
  %i.dwo = trunc nuw i64 %i.dwe to i32
  %i.dwp = add i32 %i.duu, %i.dwo
  %i.dwq = zext i32 %i.dwp to i64
  %i.dwr = getelementptr inbounds nuw [8 x i8], ptr %i.dut, i64 %i.dwq
  store i64 %i.dwn, ptr %i.dwr, align 8, !tbaa !106
  %i.dws = add nsw i64 %indvars.iv4736, -3        ; 2 uses
  %i.dwt = getelementptr [8 x i8], ptr %5, i64 %i.dwl
  %i.dwu = load i64, ptr %i.dwt, align 8, !tbaa !106
  %i.dwv = trunc nuw i64 %i.dwl to i32
  %i.dww = add i32 %i.duu, %i.dwv
  %i.dwx = zext i32 %i.dww to i64
  %i.dwy = getelementptr inbounds nuw [8 x i8], ptr %i.dut, i64 %i.dwx
  store i64 %i.dwu, ptr %i.dwy, align 8, !tbaa !106
  %i.dwz = add nsw i64 %indvars.iv4736, -4        ; 2 uses
  %i.dxa = getelementptr [8 x i8], ptr %5, i64 %i.dws
  %i.dxb = load i64, ptr %i.dxa, align 8, !tbaa !106
  %i.dxc = trunc nuw i64 %i.dws to i32
  %i.dxd = add i32 %i.duu, %i.dxc
  %i.dxe = zext i32 %i.dxd to i64
  %i.dxf = getelementptr inbounds nuw [8 x i8], ptr %i.dut, i64 %i.dxe
  store i64 %i.dxb, ptr %i.dxf, align 8, !tbaa !106
  %.not46.i1546.wide.3 = icmp eq i64 %i.dwz, 0
  br i1 %.not46.i1546.wide.3, label %._crit_edge4153, label %scalar.ph6099, !llvm.loop !321

._crit_edge4153:                                  ; preds = %scalar.ph6099.prol.loopexit, %scalar.ph6099, %middle.block6108, %.preheader3557
  %i.dxg = add i32 %i.dur, %i.duq
  store i32 %i.dxg, ptr %5, align 8, !tbaa !131
  %.not47.i15484154 = icmp eq i32 %i.duq, 0
  br i1 %.not47.i15484154, label %bigint_mul_pow2.exit1540, label %.lr.ph4157

.lr.ph4157:                                       ; preds = %._crit_edge4153
  %i.dxh = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bigint_mul_pow2.exit1540.sink.split

bb.wn:                                            ; preds = %bb.wm
  %i.dxi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.dxj = zext i32 %i.dur to i64                 ; 10 uses
  %i.dxk = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.dxj
  store i64 0, ptr %i.dxk, align 8, !tbaa !106
  %.not.i15424141 = icmp eq i32 %i.dur, 0
  %.pre5021 = zext nneg i32 %i.dup to i64         ; 5 uses
  br i1 %.not.i15424141, label %._crit_edge4145, label %.lr.ph4144

.lr.ph4144:                                       ; preds = %bb.wn
  %i.dxl = sub nuw nsw i32 64, %i.dup
  %i.dxm = zext nneg i32 %i.dxl to i64            ; 4 uses
  %min.iters.check6079 = icmp ult i32 %i.dur, 20
  br i1 %min.iters.check6079, label %scalar.ph6078.preheader, label %vector.scevcheck6073

vector.scevcheck6073:                             ; preds = %.lr.ph4144
  %i.dxn = add nsw i64 %i.dxj, -1                 ; 2 uses
  %i.dxo = add i32 %i.dur, %i.duq
  %i.dxp = trunc i64 %i.dxn to i32
  %i.dxq = icmp ult i32 %i.dxo, %i.dxp
  %i.dxr = icmp ugt i64 %i.dxn, 4294967295
  %i.dxs = or i1 %i.dxq, %i.dxr
  br i1 %i.dxs, label %scalar.ph6078.preheader, label %vector.memcheck6074

vector.memcheck6074:                              ; preds = %vector.scevcheck6073
  %i.dxt = shl nuw nsw i64 %i.dxj, 3              ; 2 uses
  %i.dxu = add i32 %i.dur, %i.duq
  %i.dxv = zext i32 %i.dxu to i64
  %i.dxw = shl nuw nsw i64 %i.dxv, 3              ; 2 uses
  %i.dxx = sub nsw i64 %i.dxw, %i.dxt
  %diff.check6075 = icmp ugt i64 %i.dxx, -32
  %i.dxy = sub nsw i64 %i.dxt, %i.dxw
  %i.dxz = add nsw i64 %i.dxy, -9
  %diff.check6076 = icmp ult i64 %i.dxz, 31
  %conflict.rdx6077 = or i1 %diff.check6075, %diff.check6076
  br i1 %conflict.rdx6077, label %scalar.ph6078.preheader, label %vector.ph6080

vector.ph6080:                                    ; preds = %vector.memcheck6074
  %n.vec6081 = and i64 %i.dxj, 4294967292         ; 2 uses
  %i.dya = and i64 %i.dxj, 3
  %broadcast.splatinsert6082 = insertelement <2 x i64> poison, i64 %i.dxm, i64 0
  %broadcast.splat6083 = shufflevector <2 x i64> %broadcast.splatinsert6082, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6084 = insertelement <2 x i64> poison, i64 %.pre5021, i64 0
  %broadcast.splat6085 = shufflevector <2 x i64> %broadcast.splatinsert6084, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body6086

vector.body6086:                                  ; preds = %vector.body6086, %vector.ph6080
  %index6087 = phi i64 [ 0, %vector.ph6080 ], [ %index.next6092, %vector.body6086 ] ; 2 uses
  %i.dyb = sub i64 %i.dxj, %index6087             ; 3 uses
  %i.dyc = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.dyb ; 2 uses
  %i.dyd = getelementptr inbounds i8, ptr %i.dyc, i64 -8
  %i.dye = getelementptr inbounds i8, ptr %i.dyc, i64 -24
  %wide.load6088 = load <2 x i64>, ptr %i.dyd, align 8, !tbaa !106
  %wide.load6089 = load <2 x i64>, ptr %i.dye, align 8, !tbaa !106
  %i.dyf = shl <2 x i64> %wide.load6088, %broadcast.splat6085
  %i.dyg = shl <2 x i64> %wide.load6089, %broadcast.splat6085
  %i.dyh = getelementptr [8 x i8], ptr %5, i64 %i.dyb ; 2 uses
  %i.dyi = getelementptr i8, ptr %i.dyh, i64 -8
  %i.dyj = getelementptr i8, ptr %i.dyh, i64 -24
  %wide.load6090 = load <2 x i64>, ptr %i.dyi, align 8, !tbaa !106
  %wide.load6091 = load <2 x i64>, ptr %i.dyj, align 8, !tbaa !106
  %i.dyk = lshr <2 x i64> %wide.load6090, %broadcast.splat6083
  %i.dyl = lshr <2 x i64> %wide.load6091, %broadcast.splat6083
  %i.dym = or <2 x i64> %i.dyk, %i.dyf
  %i.dyn = or <2 x i64> %i.dyl, %i.dyg
  %i.dyo = trunc nuw i64 %i.dyb to i32
  %i.dyp = add i32 %i.duq, %i.dyo
  %i.dyq = zext i32 %i.dyp to i64
  %i.dyr = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.dyq ; 2 uses
  %i.dys = getelementptr inbounds i8, ptr %i.dyr, i64 -8
  %i.dyt = getelementptr inbounds i8, ptr %i.dyr, i64 -24
  store <2 x i64> %i.dym, ptr %i.dys, align 8, !tbaa !106
  store <2 x i64> %i.dyn, ptr %i.dyt, align 8, !tbaa !106
  %index.next6092 = add nuw i64 %index6087, 4     ; 2 uses
  %i.dyu = icmp eq i64 %index.next6092, %n.vec6081
  br i1 %i.dyu, label %middle.block6093, label %vector.body6086, !llvm.loop !322

middle.block6093:                                 ; preds = %vector.body6086
  %cmp.n6094 = icmp eq i64 %n.vec6081, %i.dxj
  br i1 %cmp.n6094, label %._crit_edge4145, label %scalar.ph6078.preheader

scalar.ph6078.preheader:                          ; preds = %vector.memcheck6074, %vector.scevcheck6073, %.lr.ph4144, %middle.block6093
  %indvars.iv4731.ph = phi i64 [ %i.dxj, %vector.memcheck6074 ], [ %i.dxj, %vector.scevcheck6073 ], [ %i.dxj, %.lr.ph4144 ], [ %i.dya, %middle.block6093 ] ; 7 uses
  %xtraiter6528 = and i64 %indvars.iv4731.ph, 1
  %lcmp.mod6529.not = icmp eq i64 %xtraiter6528, 0
  br i1 %lcmp.mod6529.not, label %scalar.ph6078.prol.loopexit, label %scalar.ph6078.prol

scalar.ph6078.prol:                               ; preds = %scalar.ph6078.preheader
  %i.dyv = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %indvars.iv4731.ph
  %i.dyw = load i64, ptr %i.dyv, align 8, !tbaa !106
  %i.dyx = shl i64 %i.dyw, %.pre5021
  %i.dyy = add nsw i64 %indvars.iv4731.ph, -1
  %i.dyz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv4731.ph
  %i.dza = load i64, ptr %i.dyz, align 8, !tbaa !106
  %i.dzb = lshr i64 %i.dza, %i.dxm
  %i.dzc = or i64 %i.dzb, %i.dyx
  %i.dzd = trunc nuw i64 %indvars.iv4731.ph to i32
  %i.dze = add i32 %i.duq, %i.dzd
  %i.dzf = zext i32 %i.dze to i64
  %i.dzg = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.dzf
  store i64 %i.dzc, ptr %i.dzg, align 8, !tbaa !106
  br label %scalar.ph6078.prol.loopexit

scalar.ph6078.prol.loopexit:                      ; preds = %scalar.ph6078.prol, %scalar.ph6078.preheader
  %indvars.iv4731.unr = phi i64 [ %indvars.iv4731.ph, %scalar.ph6078.preheader ], [ %i.dyy, %scalar.ph6078.prol ]
  %i.dzh = icmp eq i64 %indvars.iv4731.ph, 1
  br i1 %i.dzh, label %._crit_edge4145, label %scalar.ph6078

scalar.ph6078:                                    ; preds = %scalar.ph6078.prol.loopexit, %scalar.ph6078
  %indvars.iv4731 = phi i64 [ %i.dzx, %scalar.ph6078 ], [ %indvars.iv4731.unr, %scalar.ph6078.prol.loopexit ] ; 6 uses
  %i.dzi = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %indvars.iv4731
  %i.dzj = load i64, ptr %i.dzi, align 8, !tbaa !106
  %i.dzk = shl i64 %i.dzj, %.pre5021
  %i.dzl = add nsw i64 %indvars.iv4731, -1        ; 2 uses
  %i.dzm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv4731
  %i.dzn = load i64, ptr %i.dzm, align 8, !tbaa !106
  %i.dzo = lshr i64 %i.dzn, %i.dxm
  %i.dzp = or i64 %i.dzo, %i.dzk
  %i.dzq = trunc nuw i64 %indvars.iv4731 to i32
  %i.dzr = add i32 %i.duq, %i.dzq
  %i.dzs = zext i32 %i.dzr to i64
  %i.dzt = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.dzs
  store i64 %i.dzp, ptr %i.dzt, align 8, !tbaa !106
  %i.dzu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv4731
  %i.dzv = load i64, ptr %i.dzu, align 8, !tbaa !106
  %i.dzw = shl i64 %i.dzv, %.pre5021
  %i.dzx = add nsw i64 %indvars.iv4731, -2        ; 2 uses
  %i.dzy = getelementptr [8 x i8], ptr %5, i64 %i.dzl
  %i.dzz = load i64, ptr %i.dzy, align 8, !tbaa !106
  %i.eaa = lshr i64 %i.dzz, %i.dxm
  %i.eab = or i64 %i.eaa, %i.dzw
  %i.eac = trunc nuw i64 %i.dzl to i32
  %i.ead = add i32 %i.duq, %i.eac
  %i.eae = zext i32 %i.ead to i64
  %i.eaf = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.eae
  store i64 %i.eab, ptr %i.eaf, align 8, !tbaa !106
  %.not.i1542.wide.1 = icmp eq i64 %i.dzx, 0
  br i1 %.not.i1542.wide.1, label %._crit_edge4145, label %scalar.ph6078, !llvm.loop !323

._crit_edge4145:                                  ; preds = %scalar.ph6078.prol.loopexit, %scalar.ph6078, %middle.block6093, %bb.wn
  %i.eag = load i64, ptr %i.dxi, align 8, !tbaa !106
  %i.eah = shl i64 %i.eag, %.pre5021
  %i.eai = zext nneg i32 %i.duq to i64
  %i.eaj = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.eai
  store i64 %i.eah, ptr %i.eaj, align 8, !tbaa !106
  %i.eak = add i32 %i.dur, %i.duq                 ; 2 uses
  %i.eal = zext i32 %i.eak to i64
  %i.eam = getelementptr inbounds nuw [8 x i8], ptr %i.dxi, i64 %i.eal
  %i.ean = load i64, ptr %i.eam, align 8, !tbaa !106
  %i.eao = icmp ne i64 %i.ean, 0
  %i.eap = zext i1 %i.eao to i32
  %i.eaq = add i32 %i.eak, %i.eap
  store i32 %i.eaq, ptr %5, align 8, !tbaa !131
  %.not45.i15444146 = icmp eq i32 %i.duq, 0
  br i1 %.not45.i15444146, label %bigint_mul_pow2.exit1540, label %bigint_mul_pow2.exit1540.sink.split

bigint_mul_pow2.exit1540.sink.split:              ; preds = %._crit_edge4145, %._crit_edge4162, %.lr.ph4174.preheader, %.lr.ph4157
  %.sink5690 = phi i32 [ %i.dor, %._crit_edge4162 ], [ %i.duq, %.lr.ph4157 ], [ %i.dor, %.lr.ph4174.preheader ], [ %i.duq, %._crit_edge4145 ]
  %.sink5685 = phi ptr [ %i.dhq, %._crit_edge4162 ], [ %i.dxh, %.lr.ph4157 ], [ %i.dhq, %.lr.ph4174.preheader ], [ %i.dxi, %._crit_edge4145 ]
  %.ph5684 = phi i32 [ %i.dun, %._crit_edge4162 ], [ %i.doo, %.lr.ph4157 ], [ %i.drf, %.lr.ph4174.preheader ], [ %i.doo, %._crit_edge4145 ]
  %i.ear = add nsw i32 %.sink5690, -1
  %i.eas = zext nneg i32 %i.ear to i64
  %i.eat = shl nuw nsw i64 %i.eas, 3
  %i.eau = add nuw nsw i64 %i.eat, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink5685, i8 0, i64 %i.eau, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit1540

bigint_mul_pow2.exit1540:                         ; preds = %bigint_mul_pow2.exit1540.sink.split, %._crit_edge4145, %._crit_edge4153, %._crit_edge4162
  %i.eav = phi i32 [ %i.dun, %._crit_edge4162 ], [ %i.doo, %._crit_edge4145 ], [ %i.doo, %._crit_edge4153 ], [ %.ph5684, %bigint_mul_pow2.exit1540.sink.split ] ; 2 uses
  %i.eaw = load i32, ptr %5, align 8, !tbaa !131  ; 4 uses
  %i.eax = icmp ult i32 %i.eaw, %i.eav
  br i1 %i.eax, label %bigint_cmp.exit1579.thread, label %bb.wo

bb.wo:                                            ; preds = %bigint_mul_pow2.exit1540
  %i.eay = icmp ugt i32 %i.eaw, %i.eav
  br i1 %i.eay, label %bigint_cmp.exit1579.thread, label %.preheader3553

.preheader3553:                                   ; preds = %bb.wo
  %.not.i15735986 = icmp eq i32 %i.eaw, 0
  br i1 %.not.i15735986, label %bigint_cmp.exit1579.thread3215, label %.lr.ph5989

.lr.ph5989:                                       ; preds = %.preheader3553
  %i.eaz = zext i32 %i.eaw to i64
  br label %bb.wq

bb.wp:                                            ; preds = %bb.wq
  %i.eba = add nsw i64 %indvars.iv47495987, -1    ; 2 uses
  %.not.i1573 = icmp eq i64 %i.eba, 0
  br i1 %.not.i1573, label %bigint_cmp.exit1579.thread3215, label %bb.wq, !llvm.loop !16

bb.wq:                                            ; preds = %.lr.ph5989, %bb.wp
  %.016.i15715988 = phi i32 [ undef, %.lr.ph5989 ], [ %.1.i1576, %bb.wp ]
  %indvars.iv47495987 = phi i64 [ %i.eaz, %.lr.ph5989 ], [ %i.eba, %bb.wp ] ; 3 uses
  %i.ebb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv47495987
  %i.ebc = load i64, ptr %i.ebb, align 8, !tbaa !106 ; 3 uses
  %i.ebd = getelementptr [8 x i8], ptr %6, i64 %indvars.iv47495987
  %i.ebe = load i64, ptr %i.ebd, align 8, !tbaa !106 ; 3 uses
  %.not3445 = icmp ult i64 %i.ebc, %i.ebe
  %.not3446 = icmp ugt i64 %i.ebc, %i.ebe
  %..016.i1574 = select i1 %.not3446, i32 1, i32 %.016.i15715988
  %.1.i1576 = select i1 %.not3445, i32 -1, i32 %..016.i1574 ; 3 uses
  %cond.i1577 = icmp eq i64 %i.ebc, %i.ebe
  br i1 %cond.i1577, label %bb.wp, label %bigint_cmp.exit1579, !llvm.loop !16

bigint_cmp.exit1579:                              ; preds = %bb.wq
  %.not989.i901 = icmp eq i32 %.1.i1576, 0
  br i1 %.not989.i901, label %bigint_cmp.exit1579.thread3215, label %bigint_cmp.exit1579.thread, !prof !125

bigint_cmp.exit1579.thread:                       ; preds = %bigint_mul_pow2.exit1540, %bb.wo, %bigint_cmp.exit1579
  %.2.i15783214 = phi i32 [ %.1.i1576, %bigint_cmp.exit1579 ], [ -1, %bigint_mul_pow2.exit1540 ], [ 1, %bb.wo ]
  %i.ebf = icmp sgt i32 %.2.i15783214, 0
  %i.ebg = zext i1 %i.ebf to i64
  br label %bb.wr

bigint_cmp.exit1579.thread3215:                   ; preds = %bb.wp, %.preheader3553, %bigint_cmp.exit1579
  %i.ebh = and i64 %.0.i1498.ph, 1
  br label %bb.wr

bb.wr:                                            ; preds = %bigint_cmp.exit1579.thread3215, %bigint_cmp.exit1579.thread
  %.pn.i902 = phi i64 [ %i.ebg, %bigint_cmp.exit1579.thread ], [ %i.ebh, %bigint_cmp.exit1579.thread3215 ]
  %.0895.i903 = add nuw nsw i64 %.pn.i902, %.0.i1498.ph ; 2 uses
  %i.ebi = icmp eq i64 %.0895.i903, 9218868437227405312
  br i1 %i.ebi, label %bb.ws, label %bb.wx, !prof !45

bb.ws:                                            ; preds = %bb.wr
  %i.ebj = and i32 %.fr, 128
  %.not3447 = icmp eq i32 %i.ebj, 0
  br i1 %.not3447, label %bb.wu, label %bb.wt, !prof !62

bb.wt:                                            ; preds = %bb.ws
  %i.ebk = load ptr, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.ebk, align 1, !tbaa !100
  %i.ebl = ptrtoint ptr %.33.i877 to i64
  %i.ebm = ptrtoint ptr %i.cad to i64
  %i.ebn = sub i64 %i.ebl, %i.ebm
  %i.ebo = shl i64 %i.ebn, 8
  %i.ebp = or disjoint i64 %i.ebo, 1
  store i64 %i.ebp, ptr %.6623, align 8, !tbaa !99
  %i.ebq = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store ptr %i.cad, ptr %i.ebq, align 8, !tbaa !100
  store ptr %.33.i877, ptr %i.g, align 8, !tbaa !107
  br label %read_num.exit986.thread3225

bb.wu:                                            ; preds = %bb.ws
  %i.ebr = and i32 %.fr, 16
  %.not3448 = icmp eq i32 %i.ebr, 0
  br i1 %.not3448, label %bb.ww, label %bb.wv, !prof !62

bb.wv:                                            ; preds = %bb.wu
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.ebs = select i1 %i.cah, i64 -4503599627370496, i64 9218868437227405312
  %i.ebt = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.ebs, ptr %i.ebt, align 8, !tbaa !100
  br label %read_num.exit986.thread3225

bb.ww:                                            ; preds = %bb.wu
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  store ptr %i.cad, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit986

bb.wx:                                            ; preds = %bb.wr
  store i64 20, ptr %.6623, align 8, !tbaa !99
  %i.ebu = select i1 %i.cah, i64 -9223372036854775808, i64 0
  %i.ebv = or disjoint i64 %.0895.i903, %i.ebu
  %i.ebw = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.ebv, ptr %i.ebw, align 8, !tbaa !100
  br label %read_num.exit986.thread3225

read_num.exit986.thread3220:                      ; preds = %bb.uh, %bb.om, %bb.tw, %bb.uo, %bb.tn, %read_inf_or_nan.exit1129.thread, %bb.uc, %bb.ux, %bb.oo, %bb.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.atc

read_num.exit986.thread3225:                      ; preds = %bb.vp, %bb.vr, %bb.vu, %bb.wt, %bb.wv, %bb.wx
  store ptr %.33.i877, ptr %i.d, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split5703

read_num.exit986:                                 ; preds = %bb.vs, %bb.ww
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.atc

bb.wy:                                            ; preds = %bb.nl
  switch i8 %i.bzf, label %bb.aba [
    i8 34, label %bb.wz
    i8 116, label %bb.aaq
    i8 102, label %bb.aat
    i8 110, label %bb.aaw
    i8 93, label %bb.aaz
  ]

bb.wz:                                            ; preds = %bb.wy
  %i.ebx = getelementptr inbounds nuw i8, ptr %.4621, i64 16 ; 3 uses
  %.not837 = icmp ult ptr %i.ebx, %.4649
  br i1 %.not837, label %bb.xb, label %bb.xa, !prof !62

bb.xa:                                            ; preds = %bb.wz
  %i.eby = lshr i64 %.4726, 1
  %i.ebz = add i64 %i.eby, %.4726                 ; 4 uses
  %i.eca = shl i64 %.4726, 4
  %i.ecb = shl i64 %i.ebz, 4
  %i.ecc = call ptr %.sroa.5.0.copyload(ptr noundef %.sroa.13338.0.copyload, ptr noundef %.4686, i64 noundef %i.eca, i64 noundef %i.ecb) #33 ; 7 uses
  %.not838 = icmp eq ptr %i.ecc, null
  br i1 %.not838, label %bb.ate, label %.thread3227

.thread3227:                                      ; preds = %bb.xa
  %i.ecd = ptrtoint ptr %i.ebx to i64
  %i.ece = ptrtoint ptr %.4686 to i64             ; 3 uses
  %i.ecf = sub i64 %i.ecd, %i.ece
  %i.ecg = getelementptr inbounds nuw i8, ptr %i.ecc, i64 %i.ecf
  %i.ech = ptrtoint ptr %.4613 to i64
  %i.eci = sub i64 %i.ech, %i.ece
  %i.ecj = getelementptr inbounds nuw i8, ptr %i.ecc, i64 %i.eci
  %i.eck = load ptr, ptr %i.z, align 8, !tbaa !345
  %i.ecl = ptrtoint ptr %i.eck to i64
  %i.ecm = sub i64 %i.ecl, %i.ece
  %i.ecn = getelementptr inbounds nuw i8, ptr %i.ecc, i64 %i.ecm
  store ptr %i.ecn, ptr %i.z, align 8, !tbaa !345
  store ptr %i.ecc, ptr %i.ab, align 8, !tbaa !146
  %i.eco = getelementptr [16 x i8], ptr %i.ecc, i64 %i.ebz
  %i.ecp = getelementptr i8, ptr %i.eco, i64 -32  ; 2 uses
  store ptr %i.ecp, ptr %i.ad, align 8, !tbaa !346
  %.pre4935 = load ptr, ptr %i.d, align 8, !tbaa !107
  br label %bb.xb

bb.xb:                                            ; preds = %.thread3227, %bb.wz
  %i.ecq = phi ptr [ %.pre4935, %.thread3227 ], [ %i.bze, %bb.wz ]
  %.6728 = phi i64 [ %i.ebz, %.thread3227 ], [ %.4726, %bb.wz ] ; 22 uses
  %.8690 = phi ptr [ %i.ecc, %.thread3227 ], [ %.4686, %bb.wz ]
  %.8653 = phi ptr [ %i.ecp, %.thread3227 ], [ %.4649, %bb.wz ] ; 22 uses
  %.8625 = phi ptr [ %i.ecg, %.thread3227 ], [ %i.ebx, %bb.wz ] ; 3 uses
  %.8 = phi ptr [ %i.ecj, %.thread3227 ], [ %.4613, %bb.wz ] ; 22 uses
  %i.ecr = add i64 %.2712, 1
  %i.ecs = getelementptr inbounds nuw i8, ptr %i.ecq, i64 1 ; 3 uses
  %i.ect = load ptr, ptr %i.ah, align 8, !tbaa !107 ; 3 uses
  %.not113.i1140 = icmp eq ptr %i.ect, null
  br i1 %.not113.i1140, label %bb.xd, label %bb.xc, !prof !62

bb.xc:                                            ; preds = %bb.xb
  %i.ecu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ecv = load ptr, ptr %i.ecu, align 8, !tbaa !107 ; 2 uses
  %.not114.i1141 = icmp eq ptr %i.ecv, null
  br i1 %.not114.i1141, label %bb.xd, label %.preheader3544

bb.xd:                                            ; preds = %bb.xc, %bb.xb
  %.93084 = phi ptr [ %i.ecs, %bb.xb ], [ %i.ect, %bb.xc ]
  %i.ecw = and i32 %.fr, 64
  %.not3407 = icmp eq i32 %i.ecw, 0
  br label %.backedge3550

.backedge3550:                                    ; preds = %.backedge3550.backedge, %bb.xd
  %.103085 = phi ptr [ %.93084, %bb.xd ], [ %.103085.be, %.backedge3550.backedge ] ; 18 uses
  %i.ecx = load i8, ptr %.103085, align 1, !tbaa !100 ; 2 uses
  %i.ecy = zext i8 %i.ecx to i64
  %i.ecz = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ecy
  %i.eda = load i8, ptr %i.ecz, align 1, !tbaa !100
  %i.edb = trunc i8 %i.eda to i1
  br i1 %i.edb, label %bb.xe, label %bb.xu, !prof !62

bb.xe:                                            ; preds = %.backedge3550
end_hunk_7
begin_hunk_8_@yyjson_incr_read:bb.a
  %i.inq = getelementptr inbounds nuw [8 x i8], ptr %i.ilz, i64 %i.inp
  store i64 %i.inm, ptr %i.inq, align 8, !tbaa !106
  %i.inr = add nsw i64 %indvars.iv4675, -2        ; 2 uses
  %i.ins = getelementptr [8 x i8], ptr %7, i64 %i.ink
  %i.int = load i64, ptr %i.ins, align 8, !tbaa !106
  %i.inu = trunc nuw i64 %i.ink to i32
  %i.inv = add i32 %i.ima, %i.inu
  %i.inw = zext i32 %i.inv to i64
  %i.inx = getelementptr inbounds nuw [8 x i8], ptr %i.ilz, i64 %i.inw
  store i64 %i.int, ptr %i.inx, align 8, !tbaa !106
  %i.iny = add nsw i64 %indvars.iv4675, -3        ; 2 uses
  %i.inz = getelementptr [8 x i8], ptr %7, i64 %i.inr
  %i.ioa = load i64, ptr %i.inz, align 8, !tbaa !106
  %i.iob = trunc nuw i64 %i.inr to i32
  %i.ioc = add i32 %i.ima, %i.iob
  %i.iod = zext i32 %i.ioc to i64
  %i.ioe = getelementptr inbounds nuw [8 x i8], ptr %i.ilz, i64 %i.iod
  store i64 %i.ioa, ptr %i.ioe, align 8, !tbaa !106
  %i.iof = add nsw i64 %indvars.iv4675, -4        ; 2 uses
  %i.iog = getelementptr [8 x i8], ptr %7, i64 %i.iny
  %i.ioh = load i64, ptr %i.iog, align 8, !tbaa !106
  %i.ioi = trunc nuw i64 %i.iny to i32
  %i.ioj = add i32 %i.ima, %i.ioi
  %i.iok = zext i32 %i.ioj to i64
  %i.iol = getelementptr inbounds nuw [8 x i8], ptr %i.ilz, i64 %i.iok
  store i64 %i.ioh, ptr %i.iol, align 8, !tbaa !106
  %.not46.i1564.wide.3 = icmp eq i64 %i.iof, 0
  br i1 %.not46.i1564.wide.3, label %._crit_edge3939, label %scalar.ph6023, !llvm.loop !337

._crit_edge3939:                                  ; preds = %scalar.ph6023.prol.loopexit, %scalar.ph6023, %middle.block6032, %.preheader3595
  %i.iom = add i32 %i.ilx, %i.ilw
  store i32 %i.iom, ptr %7, align 8, !tbaa !131
  %.not47.i15663940 = icmp eq i32 %i.ilw, 0
  br i1 %.not47.i15663940, label %bigint_mul_pow2.exit1558, label %.lr.ph3943

.lr.ph3943:                                       ; preds = %._crit_edge3939
  %i.ion = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bigint_mul_pow2.exit1558.sink.split

bb.ary:                                           ; preds = %bb.arx
  %i.ioo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  %i.iop = zext i32 %i.ilx to i64                 ; 10 uses
  %i.ioq = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %i.iop
  store i64 0, ptr %i.ioq, align 8, !tbaa !106
  %.not.i15603927 = icmp eq i32 %i.ilx, 0
  %.pre5043 = zext nneg i32 %i.ilv to i64         ; 5 uses
  br i1 %.not.i15603927, label %._crit_edge3931, label %.lr.ph3930

.lr.ph3930:                                       ; preds = %bb.ary
  %i.ior = sub nuw nsw i32 64, %i.ilv
  %i.ios = zext nneg i32 %i.ior to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.ilx, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3930
  %i.iot = add nsw i64 %i.iop, -1                 ; 2 uses
  %i.iou = add i32 %i.ilx, %i.ilw
  %i.iov = trunc i64 %i.iot to i32
  %i.iow = icmp ult i32 %i.iou, %i.iov
  %i.iox = icmp ugt i64 %i.iot, 4294967295
  %i.ioy = or i1 %i.iow, %i.iox
  br i1 %i.ioy, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ioz = shl nuw nsw i64 %i.iop, 3              ; 2 uses
  %i.ipa = add i32 %i.ilx, %i.ilw
  %i.ipb = zext i32 %i.ipa to i64
  %i.ipc = shl nuw nsw i64 %i.ipb, 3              ; 2 uses
  %i.ipd = sub nsw i64 %i.ipc, %i.ioz
  %diff.check = icmp ugt i64 %i.ipd, -32
  %i.ipe = sub nsw i64 %i.ioz, %i.ipc
  %i.ipf = add nsw i64 %i.ipe, -9
  %diff.check6014 = icmp ult i64 %i.ipf, 31
  %conflict.rdx = or i1 %diff.check, %diff.check6014
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iop, 4294967292             ; 2 uses
  %i.ipg = and i64 %i.iop, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ios, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6015 = insertelement <2 x i64> poison, i64 %.pre5043, i64 0
  %broadcast.splat6016 = shufflevector <2 x i64> %broadcast.splatinsert6015, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iph = sub i64 %i.iop, %index                 ; 3 uses
  %i.ipi = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %i.iph ; 2 uses
  %i.ipj = getelementptr inbounds i8, ptr %i.ipi, i64 -8
  %i.ipk = getelementptr inbounds i8, ptr %i.ipi, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ipj, align 8, !tbaa !106
  %wide.load6017 = load <2 x i64>, ptr %i.ipk, align 8, !tbaa !106
  %i.ipl = shl <2 x i64> %wide.load, %broadcast.splat6016
  %i.ipm = shl <2 x i64> %wide.load6017, %broadcast.splat6016
  %i.ipn = getelementptr [8 x i8], ptr %7, i64 %i.iph ; 2 uses
  %i.ipo = getelementptr i8, ptr %i.ipn, i64 -8
  %i.ipp = getelementptr i8, ptr %i.ipn, i64 -24
  %wide.load6018 = load <2 x i64>, ptr %i.ipo, align 8, !tbaa !106
  %wide.load6019 = load <2 x i64>, ptr %i.ipp, align 8, !tbaa !106
  %i.ipq = lshr <2 x i64> %wide.load6018, %broadcast.splat
  %i.ipr = lshr <2 x i64> %wide.load6019, %broadcast.splat
  %i.ips = or <2 x i64> %i.ipq, %i.ipl
  %i.ipt = or <2 x i64> %i.ipr, %i.ipm
  %i.ipu = trunc nuw i64 %i.iph to i32
  %i.ipv = add i32 %i.ilw, %i.ipu
  %i.ipw = zext i32 %i.ipv to i64
  %i.ipx = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %i.ipw ; 2 uses
  %i.ipy = getelementptr inbounds i8, ptr %i.ipx, i64 -8
  %i.ipz = getelementptr inbounds i8, ptr %i.ipx, i64 -24
  store <2 x i64> %i.ips, ptr %i.ipy, align 8, !tbaa !106
  store <2 x i64> %i.ipt, ptr %i.ipz, align 8, !tbaa !106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iqa = icmp eq i64 %index.next, %n.vec
  br i1 %i.iqa, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.iop
  br i1 %cmp.n, label %._crit_edge3931, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3930, %middle.block
  %indvars.iv4670.ph = phi i64 [ %i.iop, %vector.memcheck ], [ %i.iop, %vector.scevcheck ], [ %i.iop, %.lr.ph3930 ], [ %i.ipg, %middle.block ] ; 7 uses
  %xtraiter6488 = and i64 %indvars.iv4670.ph, 1
  %lcmp.mod6489.not = icmp eq i64 %xtraiter6488, 0
  br i1 %lcmp.mod6489.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.iqb = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %indvars.iv4670.ph
  %i.iqc = load i64, ptr %i.iqb, align 8, !tbaa !106
  %i.iqd = shl i64 %i.iqc, %.pre5043
  %i.iqe = add nsw i64 %indvars.iv4670.ph, -1
  %i.iqf = getelementptr [8 x i8], ptr %7, i64 %indvars.iv4670.ph
  %i.iqg = load i64, ptr %i.iqf, align 8, !tbaa !106
  %i.iqh = lshr i64 %i.iqg, %i.ios
  %i.iqi = or i64 %i.iqh, %i.iqd
  %i.iqj = trunc nuw i64 %indvars.iv4670.ph to i32
  %i.iqk = add i32 %i.ilw, %i.iqj
  %i.iql = zext i32 %i.iqk to i64
  %i.iqm = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %i.iql
  store i64 %i.iqi, ptr %i.iqm, align 8, !tbaa !106
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv4670.unr = phi i64 [ %indvars.iv4670.ph, %scalar.ph.preheader ], [ %i.iqe, %scalar.ph.prol ]
  %i.iqn = icmp eq i64 %indvars.iv4670.ph, 1
  br i1 %i.iqn, label %._crit_edge3931, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv4670 = phi i64 [ %i.ird, %scalar.ph ], [ %indvars.iv4670.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.iqo = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %indvars.iv4670
  %i.iqp = load i64, ptr %i.iqo, align 8, !tbaa !106
  %i.iqq = shl i64 %i.iqp, %.pre5043
  %i.iqr = add nsw i64 %indvars.iv4670, -1        ; 2 uses
  %i.iqs = getelementptr [8 x i8], ptr %7, i64 %indvars.iv4670
  %i.iqt = load i64, ptr %i.iqs, align 8, !tbaa !106
  %i.iqu = lshr i64 %i.iqt, %i.ios
  %i.iqv = or i64 %i.iqu, %i.iqq
  %i.iqw = trunc nuw i64 %indvars.iv4670 to i32
  %i.iqx = add i32 %i.ilw, %i.iqw
  %i.iqy = zext i32 %i.iqx to i64
  %i.iqz = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %i.iqy
  store i64 %i.iqv, ptr %i.iqz, align 8, !tbaa !106
  %i.ira = getelementptr [8 x i8], ptr %7, i64 %indvars.iv4670
  %i.irb = load i64, ptr %i.ira, align 8, !tbaa !106
  %i.irc = shl i64 %i.irb, %.pre5043
  %i.ird = add nsw i64 %indvars.iv4670, -2        ; 2 uses
  %i.ire = getelementptr [8 x i8], ptr %7, i64 %i.iqr
  %i.irf = load i64, ptr %i.ire, align 8, !tbaa !106
  %i.irg = lshr i64 %i.irf, %i.ios
  %i.irh = or i64 %i.irg, %i.irc
  %i.iri = trunc nuw i64 %i.iqr to i32
  %i.irj = add i32 %i.ilw, %i.iri
  %i.irk = zext i32 %i.irj to i64
  %i.irl = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %i.irk
  store i64 %i.irh, ptr %i.irl, align 8, !tbaa !106
  %.not.i1560.wide.1 = icmp eq i64 %i.ird, 0
  br i1 %.not.i1560.wide.1, label %._crit_edge3931, label %scalar.ph, !llvm.loop !339

._crit_edge3931:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ary
  %i.irm = load i64, ptr %i.ioo, align 8, !tbaa !106
  %i.irn = shl i64 %i.irm, %.pre5043
  %i.iro = zext nneg i32 %i.ilw to i64
  %i.irp = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %i.iro
  store i64 %i.irn, ptr %i.irp, align 8, !tbaa !106
  %i.irq = add i32 %i.ilx, %i.ilw                 ; 2 uses
  %i.irr = zext i32 %i.irq to i64
  %i.irs = getelementptr inbounds nuw [8 x i8], ptr %i.ioo, i64 %i.irr
  %i.irt = load i64, ptr %i.irs, align 8, !tbaa !106
  %i.iru = icmp ne i64 %i.irt, 0
  %i.irv = zext i1 %i.iru to i32
  %i.irw = add i32 %i.irq, %i.irv
  store i32 %i.irw, ptr %7, align 8, !tbaa !131
  %.not45.i15623932 = icmp eq i32 %i.ilw, 0
  br i1 %.not45.i15623932, label %bigint_mul_pow2.exit1558, label %bigint_mul_pow2.exit1558.sink.split

bigint_mul_pow2.exit1558.sink.split:              ; preds = %._crit_edge3931, %._crit_edge3948, %.lr.ph3960.preheader, %.lr.ph3943
  %.sink5741 = phi i32 [ %i.ifx, %._crit_edge3948 ], [ %i.ilw, %.lr.ph3943 ], [ %i.ifx, %.lr.ph3960.preheader ], [ %i.ilw, %._crit_edge3931 ]
  %.sink5736 = phi ptr [ %i.hyw, %._crit_edge3948 ], [ %i.ion, %.lr.ph3943 ], [ %i.hyw, %.lr.ph3960.preheader ], [ %i.ioo, %._crit_edge3931 ]
  %.ph5735 = phi i32 [ %i.ilt, %._crit_edge3948 ], [ %i.ifu, %.lr.ph3943 ], [ %i.iil, %.lr.ph3960.preheader ], [ %i.ifu, %._crit_edge3931 ]
  %i.irx = add nsw i32 %.sink5741, -1
  %i.iry = zext nneg i32 %i.irx to i64
  %i.irz = shl nuw nsw i64 %i.iry, 3
  %i.isa = add nuw nsw i64 %i.irz, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink5736, i8 0, i64 %i.isa, i1 false), !tbaa !106
  br label %bigint_mul_pow2.exit1558

bigint_mul_pow2.exit1558:                         ; preds = %bigint_mul_pow2.exit1558.sink.split, %._crit_edge3931, %._crit_edge3939, %._crit_edge3948
  %i.isb = phi i32 [ %i.ilt, %._crit_edge3948 ], [ %i.ifu, %._crit_edge3931 ], [ %i.ifu, %._crit_edge3939 ], [ %.ph5735, %bigint_mul_pow2.exit1558.sink.split ] ; 2 uses
  %i.isc = load i32, ptr %7, align 8, !tbaa !131  ; 4 uses
  %i.isd = icmp ult i32 %i.isc, %i.isb
  br i1 %i.isd, label %bigint_cmp.exit1588.thread, label %bb.arz

bb.arz:                                           ; preds = %bigint_mul_pow2.exit1558
  %i.ise = icmp ugt i32 %i.isc, %i.isb
  br i1 %i.ise, label %bigint_cmp.exit1588.thread, label %.preheader3591

.preheader3591:                                   ; preds = %bb.arz
  %.not.i15825972 = icmp eq i32 %i.isc, 0
  br i1 %.not.i15825972, label %bigint_cmp.exit1588.thread3316, label %.lr.ph5975

.lr.ph5975:                                       ; preds = %.preheader3591
  %i.isf = zext i32 %i.isc to i64
  br label %bb.asb

bb.asa:                                           ; preds = %bb.asb
  %i.isg = add nsw i64 %indvars.iv46885973, -1    ; 2 uses
  %.not.i1582 = icmp eq i64 %i.isg, 0
  br i1 %.not.i1582, label %bigint_cmp.exit1588.thread3316, label %bb.asb, !llvm.loop !16

bb.asb:                                           ; preds = %.lr.ph5975, %bb.asa
  %.016.i15805974 = phi i32 [ undef, %.lr.ph5975 ], [ %.1.i1585, %bb.asa ]
  %indvars.iv46885973 = phi i64 [ %i.isf, %.lr.ph5975 ], [ %i.isg, %bb.asa ] ; 3 uses
  %i.ish = getelementptr [8 x i8], ptr %7, i64 %indvars.iv46885973
  %i.isi = load i64, ptr %i.ish, align 8, !tbaa !106 ; 3 uses
  %i.isj = getelementptr [8 x i8], ptr %8, i64 %indvars.iv46885973
  %i.isk = load i64, ptr %i.isj, align 8, !tbaa !106 ; 3 uses
  %.not3394 = icmp ult i64 %i.isi, %i.isk
  %.not3395 = icmp ugt i64 %i.isi, %i.isk
  %..016.i1583 = select i1 %.not3395, i32 1, i32 %.016.i15805974
  %.1.i1585 = select i1 %.not3394, i32 -1, i32 %..016.i1583 ; 3 uses
  %cond.i1586 = icmp eq i64 %i.isi, %i.isk
  br i1 %cond.i1586, label %bb.asa, label %bigint_cmp.exit1588, !llvm.loop !16

bigint_cmp.exit1588:                              ; preds = %bb.asb
  %.not989.i = icmp eq i32 %.1.i1585, 0
  br i1 %.not989.i, label %bigint_cmp.exit1588.thread3316, label %bigint_cmp.exit1588.thread, !prof !125

bigint_cmp.exit1588.thread:                       ; preds = %bigint_mul_pow2.exit1558, %bb.arz, %bigint_cmp.exit1588
  %.2.i15873315 = phi i32 [ %.1.i1585, %bigint_cmp.exit1588 ], [ -1, %bigint_mul_pow2.exit1558 ], [ 1, %bb.arz ]
  %i.isl = icmp sgt i32 %.2.i15873315, 0
  %i.ism = zext i1 %i.isl to i64
  br label %bb.asc

bigint_cmp.exit1588.thread3316:                   ; preds = %bb.asa, %.preheader3591, %bigint_cmp.exit1588
  %i.isn = and i64 %.0.i1500.ph, 1
  br label %bb.asc

bb.asc:                                           ; preds = %bigint_cmp.exit1588.thread3316, %bigint_cmp.exit1588.thread
  %.pn.i = phi i64 [ %i.ism, %bigint_cmp.exit1588.thread ], [ %i.isn, %bigint_cmp.exit1588.thread3316 ]
  %.0895.i = add nuw nsw i64 %.pn.i, %.0.i1500.ph ; 2 uses
  %i.iso = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.iso, label %bb.asd, label %bb.asi, !prof !45

bb.asd:                                           ; preds = %bb.asc
  %i.isp = and i32 %.fr, 128
  %.not3396 = icmp eq i32 %i.isp, 0
  br i1 %.not3396, label %bb.asf, label %bb.ase, !prof !62

bb.ase:                                           ; preds = %bb.asd
  %i.isq = load ptr, ptr %i.g, align 8, !tbaa !107
  store i8 0, ptr %i.isq, align 1, !tbaa !100
  %i.isr = ptrtoint ptr %.33.i to i64
  %i.iss = ptrtoint ptr %i.gqy to i64
  %i.ist = sub i64 %i.isr, %i.iss
  %i.isu = shl i64 %i.ist, 8
  %i.isv = or disjoint i64 %i.isu, 1
  store i64 %i.isv, ptr %i.grc, align 8, !tbaa !99
  %i.isw = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store ptr %i.gqy, ptr %i.isw, align 8, !tbaa !100
  store ptr %.33.i, ptr %i.g, align 8, !tbaa !107
  br label %read_num.exit.thread3326

bb.asf:                                           ; preds = %bb.asd
  %i.isx = and i32 %.fr, 16
  %.not3397 = icmp eq i32 %i.isx, 0
  br i1 %.not3397, label %bb.ash, label %bb.asg, !prof !62

bb.asg:                                           ; preds = %bb.asf
  store i64 20, ptr %i.grc, align 8, !tbaa !99
  %i.isy = select i1 %i.grf, i64 -4503599627370496, i64 9218868437227405312
  %i.isz = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.isy, ptr %i.isz, align 8, !tbaa !100
  br label %read_num.exit.thread3326

bb.ash:                                           ; preds = %bb.asf
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !107
  store ptr %i.gqy, ptr %i.d, align 8, !tbaa !107
  br label %read_num.exit

bb.asi:                                           ; preds = %bb.asc
  store i64 20, ptr %i.grc, align 8, !tbaa !99
  %i.ita = select i1 %i.grf, i64 -9223372036854775808, i64 0
  %i.itb = or disjoint i64 %.0895.i, %i.ita
  %i.itc = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.itb, ptr %i.itc, align 8, !tbaa !100
  br label %read_num.exit.thread3326

read_num.exit.thread3321:                         ; preds = %bb.aps, %bb.ajx, %bb.aph, %bb.apz, %bb.aoy, %read_inf_or_nan.exit1133.thread, %bb.apn, %bb.aqi, %bb.ajz, %bb.akb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.atc

read_num.exit.thread3326:                         ; preds = %bb.ara, %bb.arc, %bb.arf, %bb.ase, %bb.asg, %bb.asi
  store ptr %.33.i, ptr %i.d, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %.sink.split5742

read_num.exit:                                    ; preds = %bb.ard, %bb.ash
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.atc

bb.asj:                                           ; preds = %.lr.ph3828
  switch i8 %i.gqz, label %bb.asn [
    i8 123, label %.loopexit3570
    i8 91, label %.loopexit3571
    i8 116, label %bb.ask
    i8 102, label %bb.asl
    i8 110, label %bb.asm
  ]

bb.ask:                                           ; preds = %bb.asj
  %.sroa.01.0.copyload.i1665 = load i32, ptr %i.gqy, align 1
  %i.itd = icmp eq i32 %.sroa.01.0.copyload.i1665, 1702195828
  br i1 %i.itd, label %read_true.exit, label %read_true.exit1119, !prof !62

read_true.exit:                                   ; preds = %bb.ask
  %i.ite = add i64 %.8718, 1
  %i.itf = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 2 uses
  store i64 11, ptr %i.itf, align 8, !tbaa !99
  %i.itg = getelementptr inbounds nuw i8, ptr %i.gqy, i64 4 ; 2 uses
  store ptr %i.itg, ptr %i.d, align 8, !tbaa !107
  br label %.preheader3579

bb.asl:                                           ; preds = %bb.asj
  %i.ith = getelementptr inbounds nuw i8, ptr %i.gqy, i64 1
  %.sroa.01.0.copyload.i1662 = load i32, ptr %i.ith, align 1
  %i.iti = icmp eq i32 %.sroa.01.0.copyload.i1662, 1702063201
  br i1 %i.iti, label %read_false.exit, label %read_false.exit1121, !prof !62

read_false.exit:                                  ; preds = %bb.asl
  %i.itj = add i64 %.8718, 1
  %i.itk = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 2 uses
  store i64 3, ptr %i.itk, align 8, !tbaa !99
  %i.itl = getelementptr inbounds nuw i8, ptr %i.gqy, i64 5 ; 2 uses
  store ptr %i.itl, ptr %i.d, align 8, !tbaa !107
  br label %.preheader3579

bb.asm:                                           ; preds = %bb.asj
  %.sroa.01.0.copyload.i1659 = load i32, ptr %i.gqy, align 1
  %i.itm = icmp eq i32 %.sroa.01.0.copyload.i1659, 1819047278
  br i1 %i.itm, label %read_null.exit, label %read_null.exit1123, !prof !62

read_null.exit:                                   ; preds = %bb.asm
  %i.itn = add i64 %.8718, 1
  %i.ito = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 2 uses
  store i64 2, ptr %i.ito, align 8, !tbaa !99
  %i.itp = getelementptr inbounds nuw i8, ptr %i.gqy, i64 4 ; 2 uses
  store ptr %i.itp, ptr %i.d, align 8, !tbaa !107
  br label %.preheader3579

.preheader3579:                                   ; preds = %..preheader3579_crit_edge, %bb.abi, %bb.aso, %bb.asv, %read_str_opt.exit1192, %read_true.exit, %read_false.exit, %read_null.exit
  %.promoted4026 = phi ptr [ %i.itp, %read_null.exit ], [ %i.itl, %read_false.exit ], [ %i.itg, %read_true.exit ], [ %i.itz, %bb.aso ], [ %.promoted4026.pre, %..preheader3579_crit_edge ], [ %.promoted40264920, %bb.abi ], [ %.promoted40264919, %bb.asv ], [ %i.gqv, %read_str_opt.exit1192 ] ; 3 uses
  %.9761.ph = phi i64 [ %.8760, %read_null.exit ], [ %.8760, %read_false.exit ], [ %.8760, %read_true.exit ], [ %.8760, %bb.aso ], [ %i.w, %..preheader3579_crit_edge ], [ %.4756, %bb.abi ], [ %.10762, %bb.asv ], [ %.8760, %read_str_opt.exit1192 ] ; 3 uses
  %.18740.ph = phi i64 [ %.17739, %read_null.exit ], [ %.17739, %read_false.exit ], [ %.17739, %read_true.exit ], [ %.17739, %bb.aso ], [ %i.y, %..preheader3579_crit_edge ], [ %.11733, %bb.abi ], [ %.19741, %bb.asv ], [ %.17739, %read_str_opt.exit1192 ] ; 5 uses
  %.9719.ph = phi i64 [ %i.itn, %read_null.exit ], [ %i.itj, %read_false.exit ], [ %i.ite, %read_true.exit ], [ %i.ity, %bb.aso ], [ %i.u, %..preheader3579_crit_edge ], [ %i.fao, %bb.abi ], [ %i.ivd, %bb.asv ], [ %i.fxl, %read_str_opt.exit1192 ] ; 3 uses
  %.25707.ph = phi ptr [ %.24706, %read_null.exit ], [ %.24706, %read_false.exit ], [ %.24706, %read_true.exit ], [ %.24706, %bb.aso ], [ %i.ac, %..preheader3579_crit_edge ], [ %.16698, %bb.abi ], [ %.26708, %bb.asv ], [ %.24706, %read_str_opt.exit1192 ] ; 2 uses
  %.25670.ph = phi ptr [ %.24669, %read_null.exit ], [ %.24669, %read_false.exit ], [ %.24669, %read_true.exit ], [ %.24669, %bb.aso ], [ %i.ae, %..preheader3579_crit_edge ], [ %.16661, %bb.abi ], [ %.26671, %bb.asv ], [ %.24669, %read_str_opt.exit1192 ] ; 5 uses
  %.25642.ph = phi ptr [ %i.ito, %read_null.exit ], [ %i.itk, %read_false.exit ], [ %i.itf, %read_true.exit ], [ %i.grc, %bb.aso ], [ %i.aa, %..preheader3579_crit_edge ], [ %.16633, %bb.abi ], [ %.26643, %bb.asv ], [ %i.fxk, %read_str_opt.exit1192 ] ; 3 uses
  %.25.ph = phi ptr [ %.24, %read_null.exit ], [ %.24, %read_false.exit ], [ %.24, %read_true.exit ], [ %.24, %bb.aso ], [ %i.ag, %..preheader3579_crit_edge ], [ %i.fam, %bb.abi ], [ %i.ivb, %bb.asv ], [ %.24, %read_str_opt.exit1192 ] ; 5 uses
  store i32 6, ptr %0, align 8, !tbaa !145
  store ptr %.25642.ph, ptr %i.z, align 8, !tbaa !345
  store i64 %.9719.ph, ptr %i.t, align 8, !tbaa !342
  store i64 %.9761.ph, ptr %i.v, align 8, !tbaa !343
  store ptr %.promoted4026, ptr %i.n, align 8, !tbaa !144
  %.not8274029 = icmp ult ptr %.promoted4026, %i.m
  br i1 %.not8274029, label %.lr.ph4031, label %.loopexit3576, !prof !117

bb.asn:                                           ; preds = %bb.asj
  %i.itq = and i8 %i.gqx, 4
  %.not3360 = icmp eq i8 %i.itq, 0
  br i1 %.not3360, label %.loopexit3572, label %.preheader3605

.preheader3605:                                   ; preds = %bb.asn, %.preheader3605
  %i.itr = phi ptr [ %i.its, %.preheader3605 ], [ %i.gqy, %bb.asn ]
  %i.its = getelementptr inbounds nuw i8, ptr %i.itr, i64 1 ; 5 uses
  store ptr %i.its, ptr %i.d, align 8, !tbaa !107
  %i.itt = load i8, ptr %i.its, align 1, !tbaa !100 ; 3 uses
  %i.itu = zext i8 %i.itt to i64
  %i.itv = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.itu
end_hunk_8
