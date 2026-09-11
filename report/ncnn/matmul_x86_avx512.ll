Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/matmul_x86_avx512?download=true
inline.NumInlined: 95
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4ncnn17MatMul_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a

bb.ra:                                            ; preds = %bb.qz
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  br i1 %i.hv, label %bb.rb, label %bb.rc

bb.rb:                                            ; preds = %bb.ra
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !72
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bbe = load i32, ptr %i.bbd, align 8, !tbaa !79
  call void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %28, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i32 noundef %i.bbc, i32 noundef %i.bbe, i32 noundef 1, ptr noundef null)
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.rc:                                            ; preds = %bb.ra
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !41 ; 2 uses
  %i.bbh = load <2 x ptr>, ptr %i.a, align 8, !tbaa !73
  store <2 x ptr> %i.bbh, ptr %28, align 16, !tbaa !73
  %i.bbi = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bbj = load i64, ptr %i.h, align 8, !tbaa !71
  store i64 %i.bbj, ptr %i.bbi, align 16, !tbaa !71
  %i.bbk = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bbm = load i32, ptr %i.bbl, align 8, !tbaa !74
  store i32 %i.bbm, ptr %i.bbk, align 8, !tbaa !74
  %i.bbn = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bbp = load ptr, ptr %i.bbo, align 8, !tbaa !42
  store ptr %i.bbp, ptr %i.bbn, align 16, !tbaa !42
  %i.bbq = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.bbr = load <4 x i32>, ptr %i.d, align 8, !tbaa !75
  store <4 x i32> %i.bbr, ptr %i.bbq, align 8, !tbaa !75
  %i.bbs = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bbu = load i32, ptr %i.bbt, align 8, !tbaa !76
  store i32 %i.bbu, ptr %i.bbs, align 8, !tbaa !76
  %i.bbv = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bbx = load i64, ptr %i.bbw, align 8, !tbaa !39
  store i64 %i.bbx, ptr %i.bbv, align 16, !tbaa !39
  %.not.i1108 = icmp eq ptr %i.bbg, null
  br i1 %.not.i1108, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.bby = atomicrmw add ptr %i.bbg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.rd, %bb.rc, %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  br i1 %i.hw, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !72
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bcc = load i32, ptr %i.bcb, align 8, !tbaa !79
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %29, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef %i.bca, i32 noundef %i.bcc, i32 noundef 1, ptr noundef null)
          to label %_ZN4ncnn3Mat6addrefEv.exit1110 unwind label %bb.ri

bb.rf:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bce = load ptr, ptr %i.bcd, align 8, !tbaa !41 ; 2 uses
  %i.bcf = load <2 x ptr>, ptr %i.b, align 8, !tbaa !73
  store <2 x ptr> %i.bcf, ptr %29, align 16, !tbaa !73
  %i.bcg = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.bch = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bci = load i64, ptr %i.bch, align 8, !tbaa !71
  store i64 %i.bci, ptr %i.bcg, align 16, !tbaa !71
  %i.bcj = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.bck = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bcl = load i32, ptr %i.bck, align 8, !tbaa !74
  store i32 %i.bcl, ptr %i.bcj, align 8, !tbaa !74
  %i.bcm = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !42
  store ptr %i.bco, ptr %i.bcm, align 16, !tbaa !42
  %i.bcp = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.bcq = load <4 x i32>, ptr %i.f, align 8, !tbaa !75
  store <4 x i32> %i.bcq, ptr %i.bcp, align 8, !tbaa !75
  %i.bcr = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bct = load i32, ptr %i.bcs, align 8, !tbaa !76
  store i32 %i.bct, ptr %i.bcr, align 8, !tbaa !76
  %i.bcu = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !39
  store i64 %i.bcw, ptr %i.bcu, align 16, !tbaa !39
  %.not.i1109 = icmp eq ptr %i.bce, null
  br i1 %.not.i1109, label %_ZN4ncnn3Mat6addrefEv.exit1110, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bcx = atomicrmw add ptr %i.bce, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1110

_ZN4ncnn3Mat6addrefEv.exit1110:                   ; preds = %bb.rg, %bb.rf, %bb.re
  %i.bcy = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.bcz = load i32, ptr %i.bcy, align 16, !tbaa !79
  %i.bda = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bdb = load i32, ptr %i.bda, align 8, !tbaa !32
  %i.bdc = icmp eq i32 %i.bdb, 0
  %i.bdd = getelementptr inbounds nuw i8, ptr %29, i64 44 ; 2 uses
  %i.bde = load i32, ptr %i.bdd, align 4
  %i.bdf = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  %i.bdg = load i32, ptr %i.bdf, align 16
  %i.bdh = select i1 %i.bdc, i32 %i.bde, i32 %i.bdg
  %i.bdi = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 2 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  %i.bdk = load i32, ptr %i.bdi, align 8, !tbaa !75
  %i.bdl = load i32, ptr %i.bdj, align 8, !tbaa !75
  %i.bdm = call i32 @llvm.smax.i32(i32 %i.bdk, i32 %i.bdl) ; 3 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !78
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i32 noundef %i.bdh, i32 noundef %i.bcz, i32 noundef %i.bdm, i64 noundef %i.i, ptr noundef %i.bdo)
          to label %bb.rh unwind label %bb.rj

bb.rh:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1110
  %i.bdp = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.bdq = icmp eq ptr %i.bdp, null
  br i1 %i.bdq, label %.critedge347, label %_ZNK4ncnn3Mat5emptyEv.exit495

_ZNK4ncnn3Mat5emptyEv.exit495:                    ; preds = %bb.rh
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !39
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bdu = load i32, ptr %i.bdt, align 8, !tbaa !76
  %i.bdv = sext i32 %i.bdu to i64
  %i.bdw = mul i64 %i.bds, %i.bdv
  %i.bdx = icmp eq i64 %i.bdw, 0
  br i1 %i.bdx, label %.critedge347, label %.preheader1406

.preheader1406:                                   ; preds = %_ZNK4ncnn3Mat5emptyEv.exit495
  %i.bdy = icmp sgt i32 %i.bdm, 0
  br i1 %i.bdy, label %.lr.ph1765, label %._crit_edge1766

.lr.ph1765:                                       ; preds = %.preheader1406
  %i.bdz = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %28, i64 44
  %i.bec = getelementptr inbounds nuw i8, ptr %28, i64 52
  %i.bed = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.bee = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bef = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.beg = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.beh = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.bei = getelementptr inbounds nuw i8, ptr %29, i64 52
  %i.bej = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.bek = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.bel = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.bem = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.ben = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.beo = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ber = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bes = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.bet = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.beu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bev = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bew = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bex = getelementptr inbounds nuw i8, ptr %0, i64 216
  %wide.trip.count1789 = zext nneg i32 %i.bdm to i64
  br label %bb.rk

bb.ri:                                            ; preds = %bb.re
  %i.bey = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit444

bb.rj:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1110
  %i.bez = landingpad { ptr, i32 }
          cleanup
  br label %bb.sr

bb.rk:                                            ; preds = %.lr.ph1765, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1269
  %indvars.iv1786 = phi i64 [ 0, %.lr.ph1765 ], [ %indvars.iv.next1787, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1269 ] ; 4 uses
  %i.bfa = load i32, ptr %i.bdi, align 8, !tbaa !76
  %i.bfb = load i32, ptr %i.bdj, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.bfc = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #17
          to label %.noexc1236 unwind label %bb.sa ; 28 uses

.noexc1236:                                       ; preds = %bb.rk
  %i.bfd = icmp eq i32 %i.bfb, 1
  store ptr %i.bfc, ptr %30, align 8, !tbaa !35
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfc, i64 144
  store ptr %i.bfe, ptr %i.bdz, align 8, !tbaa !38
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfc, i64 32 ; 2 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfc, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bfc, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bff, i8 0, i64 28, i1 false)
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfc, i64 72
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfc, i64 104
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfc, i64 136
  store i64 0, ptr %i.bfj, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bfi, i8 0, i64 28, i1 false)
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfc, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bfg, i8 0, i64 36, i1 false)
  store ptr %i.bfk, ptr %i.bea, align 8, !tbaa !40
  %i.bfl = icmp eq i32 %i.bfa, 1
  %36 = load i32, ptr %i.beb, align 4, !tbaa !72, !noalias !85 ; 2 uses
  %37 = load i32, ptr %i.bcy, align 16, !tbaa !79, !noalias !85 ; 2 uses
  %i.bfm = load i32, ptr %i.bec, align 4, !tbaa !80, !noalias !85
  %i.bfn = load ptr, ptr %28, align 16, !tbaa !43, !noalias !85
  %i.bfo = load i64, ptr %i.bed, align 16, !tbaa !39, !noalias !85
  %i.bfp = and i64 %indvars.iv1786, 4294967295
  %i.bfq = select i1 %i.bfl, i64 0, i64 %i.bfp
  %i.bfr = mul i64 %i.bfo, %i.bfq
  %i.bfs = load i64, ptr %i.bee, align 16, !tbaa !71, !noalias !85 ; 4 uses
  %i.bft = mul i64 %i.bfr, %i.bfs
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfn, i64 %i.bft
  %i.bfv = load i32, ptr %i.bef, align 8, !tbaa !74, !noalias !85
  %i.bfw = load ptr, ptr %i.beg, align 16, !tbaa !42, !noalias !85
  %38 = sext i32 %36 to i64
  %39 = sext i32 %37 to i64
  %40 = mul nsw i64 %39, %38                      ; 2 uses
  %41 = mul i64 %i.bfs, %40
  %42 = add i64 %41, 15
  %43 = and i64 %42, -16
  %44 = udiv i64 %43, %i.bfs
  %i.bfx = load i32, ptr %i.beh, align 8, !tbaa !70, !noalias !85 ; 2 uses
  %i.bfy = add nsw i32 %i.bfx, -1
  %i.bfz = icmp eq i32 %i.bfx, 4
  %spec.select2313 = select i1 %i.bfz, i64 %40, i64 %44
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfc, i64 8
  %.pre1897 = load i32, ptr %i.bdd, align 4, !tbaa !72, !noalias !86 ; 2 uses
  %.pre1898 = load i32, ptr %i.bdf, align 16, !tbaa !79, !noalias !86 ; 2 uses
  %.pre1899 = load i32, ptr %i.bei, align 4, !tbaa !80, !noalias !86
  %.pre1902 = load i64, ptr %i.bek, align 16, !tbaa !71, !noalias !86 ; 4 uses
  %.pre1903 = load i32, ptr %i.bel, align 8, !tbaa !74, !noalias !86
  %.pre1904 = load ptr, ptr %i.bem, align 16, !tbaa !42, !noalias !86
  %.pre1905 = load i32, ptr %i.ben, align 8, !tbaa !70, !noalias !86 ; 2 uses
  %.pre1901 = load i64, ptr %i.bej, align 16, !tbaa !39, !noalias !86
  %.pre1900 = load ptr, ptr %29, align 16, !tbaa !43, !noalias !86
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfc, i64 16
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfc, i64 24
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 40
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfc, i64 44
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bfc, i64 48
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfc, i64 52
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bfc, i64 56
  store ptr %i.bfu, ptr %i.bfc, align 8, !tbaa !43
  store ptr null, ptr %i.bga, align 8, !tbaa !41
  store i64 %i.bfs, ptr %i.bgb, align 8, !tbaa !71
  store i32 %i.bfv, ptr %i.bgc, align 8, !tbaa !74
  store ptr %i.bfw, ptr %i.bff, align 8, !tbaa !42
  store i32 %i.bfy, ptr %i.bgd, align 8, !tbaa !70
  store i32 %36, ptr %i.bge, align 4, !tbaa !72
  store i32 %37, ptr %i.bgf, align 8, !tbaa !79
  store i32 1, ptr %i.bgg, align 4, !tbaa !80
  store i32 %i.bfm, ptr %i.bgh, align 8, !tbaa !76
  store i64 %spec.select2313, ptr %i.bfg, align 8, !tbaa !39
  %45 = and i64 %indvars.iv1786, 4294967295
  %46 = select i1 %i.bfd, i64 0, i64 %45
  %47 = mul i64 %.pre1901, %46
  %48 = mul i64 %47, %.pre1902
  %49 = getelementptr inbounds nuw i8, ptr %.pre1900, i64 %48
  %i.bgi = sext i32 %.pre1897 to i64
  %i.bgj = sext i32 %.pre1898 to i64
  %i.bgk = mul nsw i64 %i.bgj, %i.bgi             ; 2 uses
  %i.bgl = mul i64 %.pre1902, %i.bgk
  %50 = add i64 %i.bgl, 15
  %51 = and i64 %50, -16
  %52 = udiv i64 %51, %.pre1902
  %i.bgm = add nsw i32 %.pre1905, -1
  %i.bgn = icmp eq i32 %.pre1905, 4
  %.sroa.321815.0 = select i1 %i.bgn, i64 %i.bgk, i64 %52
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bfc, i64 80
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bfc, i64 88
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bfc, i64 96
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bfc, i64 112
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bfc, i64 116
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bfc, i64 120
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bfc, i64 124
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bfc, i64 128
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bfc, i64 136
  store ptr %49, ptr %i.bfh, align 8, !tbaa !43
  store ptr null, ptr %i.bgo, align 8, !tbaa !41
  store i64 %.pre1902, ptr %i.bgp, align 8, !tbaa !71
  store i32 %.pre1903, ptr %i.bgq, align 8, !tbaa !74
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bfc, i64 104
  store ptr %.pre1904, ptr %i.bgx, align 8, !tbaa !42
  store i32 %i.bgm, ptr %i.bgr, align 8, !tbaa !70
  store i32 %.pre1897, ptr %i.bgs, align 4, !tbaa !72
  store i32 %.pre1898, ptr %i.bgt, align 8, !tbaa !79
  store i32 1, ptr %i.bgu, align 4, !tbaa !80
  store i32 %.pre1899, ptr %i.bgv, align 8, !tbaa !76
  store i64 %.sroa.321815.0, ptr %i.bgw, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.bgy = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #17
          to label %.noexc1242 unwind label %bb.sb ; 14 uses

.noexc1242:                                       ; preds = %.noexc1236
  store ptr %i.bgy, ptr %31, align 8, !tbaa !35
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgy, i64 72 ; 2 uses
  store ptr %i.bgz, ptr %i.beo, align 8, !tbaa !38
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgy, i64 32 ; 2 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgy, i64 64 ; 2 uses
  store i64 0, ptr %i.bhb, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bgy, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bha, i8 0, i64 28, i1 false)
  store ptr %i.bgz, ptr %i.bep, align 8, !tbaa !40
  %i.bhc = load i32, ptr %i.beq, align 4, !tbaa !72, !noalias !87 ; 2 uses
  %i.bhd = load i32, ptr %i.ber, align 8, !tbaa !79, !noalias !87 ; 2 uses
  %i.bhe = load i32, ptr %i.bes, align 4, !tbaa !80, !noalias !87
  %i.bhf = load ptr, ptr %i.c, align 8, !tbaa !43, !noalias !87
  %i.bhg = load i64, ptr %i.bdr, align 8, !tbaa !39, !noalias !87
  %i.bhh = mul i64 %i.bhg, %indvars.iv1786
  %i.bhi = load i64, ptr %i.bet, align 8, !tbaa !71, !noalias !87 ; 4 uses
  %i.bhj = mul i64 %i.bhh, %i.bhi
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhf, i64 %i.bhj
  %i.bhl = load i32, ptr %i.beu, align 8, !tbaa !74, !noalias !87
  %i.bhm = load ptr, ptr %i.bev, align 8, !tbaa !42, !noalias !87
  %i.bhn = sext i32 %i.bhc to i64
  %i.bho = sext i32 %i.bhd to i64
  %i.bhp = mul nsw i64 %i.bho, %i.bhn             ; 2 uses
  %i.bhq = mul i64 %i.bhi, %i.bhp
  %i.bhr = add i64 %i.bhq, 15
  %i.bhs = and i64 %i.bhr, -16
  %i.bht = udiv i64 %i.bhs, %i.bhi
  %i.bhu = load i32, ptr %i.bew, align 8, !tbaa !70, !noalias !87 ; 2 uses
  %i.bhv = add nsw i32 %i.bhu, -1
  %i.bhw = icmp eq i32 %i.bhu, 4
  %spec.select2314 = select i1 %i.bhw, i64 %i.bhp, i64 %i.bht
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bgy, i64 8
  %.pre1910 = load ptr, ptr %i.bex, align 8, !tbaa !31 ; 2 uses
  %.pre1911 = load ptr, ptr %.pre1910, align 8, !tbaa !34
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bgy, i64 16
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bgy, i64 24
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bgy, i64 40
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bgy, i64 44
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bgy, i64 48
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bgy, i64 52
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bgy, i64 56
  store ptr %i.bhk, ptr %i.bgy, align 8, !tbaa !43
  store ptr null, ptr %i.bhx, align 8, !tbaa !41
  store i64 %i.bhi, ptr %i.bhy, align 8, !tbaa !71
  store i32 %i.bhl, ptr %i.bhz, align 8, !tbaa !74
  store ptr %i.bhm, ptr %i.bha, align 8, !tbaa !42
  store i32 %i.bhv, ptr %i.bia, align 8, !tbaa !70
  store i32 %i.bhc, ptr %i.bib, align 4, !tbaa !72
  store i32 %i.bhd, ptr %i.bic, align 8, !tbaa !79
  store i32 1, ptr %i.bid, align 4, !tbaa !80
  store i32 %i.bhe, ptr %i.bie, align 8, !tbaa !76
  store i64 %spec.select2314, ptr %i.bhb, align 8, !tbaa !39
  %i.bif = getelementptr inbounds nuw i8, ptr %.pre1911, i64 48
  %i.big = load ptr, ptr %i.bif, align 8
  %i.bih = invoke noundef i32 %i.big(ptr noundef nonnull align 8 dereferenceable(208) %.pre1910, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.rl unwind label %bb.sc     ; 0 uses

bb.rl:                                            ; preds = %.noexc1242
  %i.bii = load ptr, ptr %31, align 8, !tbaa !35  ; 3 uses
  %i.bij = load ptr, ptr %i.bep, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i.i1244 = icmp eq ptr %i.bii, %i.bij
  br i1 %.not4.i.i.i1244, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i1252, label %.lr.ph.i.i.i1245

.lr.ph.i.i.i1245:                                 ; preds = %bb.rl, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1248
  %.05.i.i.i1246 = phi ptr [ %i.biy, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1248 ], [ %i.bii, %bb.rl ] ; 7 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %.05.i.i.i1246, i64 8
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i1247 = icmp eq ptr %i.bil, null
  br i1 %.not.i.i.i.i.i1247, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1248, label %bb.rm

bb.rm:                                            ; preds = %.lr.ph.i.i.i1245
  %i.bim = atomicrmw add ptr %i.bil, i32 -1 acq_rel, align 4
  %i.bin = icmp eq i32 %i.bim, 1
  br i1 %i.bin, label %bb.rn, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1248

bb.rn:                                            ; preds = %bb.rm
  %i.bio = getelementptr inbounds nuw i8, ptr %.05.i.i.i1246, i64 32
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !42 ; 3 uses
  %.not3.i.i.i.i.i1254 = icmp eq ptr %i.bip, null
  %i.biq = load ptr, ptr %.05.i.i.i1246, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i.i.i.i.i1254, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.bir = load ptr, ptr %i.bip, align 8, !tbaa !34
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 24
  %i.bit = load ptr, ptr %i.bis, align 8
  invoke void %i.bit(ptr noundef nonnull align 8 dereferenceable(8) %i.bip, ptr noundef %i.biq)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1248 unwind label %bb.rr, !inline_history !0

bb.rp:                                            ; preds = %bb.rn
  %.not.i1.i.i.i.i1255 = icmp eq ptr %i.biq, null
  br i1 %.not.i1.i.i.i.i1255, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1248, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  call void @free(ptr noundef nonnull %i.biq) #15
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1248

bb.rr:                                            ; preds = %bb.ro
  %i.biu = landingpad { ptr, i32 }
          catch ptr null
  %i.biv = extractvalue { ptr, i32 } %i.biu, 0
  call void @__clang_call_terminate(ptr %i.biv) #18
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1248:    ; preds = %bb.rq, %bb.rp, %bb.ro, %bb.rm, %.lr.ph.i.i.i1245
  %i.biw = getelementptr inbounds nuw i8, ptr %.05.i.i.i1246, i64 40
  %i.bix = getelementptr inbounds nuw i8, ptr %.05.i.i.i1246, i64 64
  store i64 0, ptr %i.bix, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i1246, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.biw, i8 0, i64 20, i1 false)
  %i.biy = getelementptr inbounds nuw i8, ptr %.05.i.i.i1246, i64 72 ; 2 uses
  %.not.i.i.i1249 = icmp eq ptr %i.biy, %i.bij
  br i1 %.not.i.i.i1249, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1250, label %.lr.ph.i.i.i1245, !llvm.loop !1

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1250: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1248
  %.pr.i1251 = load ptr, ptr %31, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i1252

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i1252: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1250, %bb.rl
  %i.biz = phi ptr [ %.pr.i1251, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1250 ], [ %i.bii, %bb.rl ] ; 3 uses
  %.not.i.i1.i1253 = icmp eq ptr %i.biz, null
  br i1 %.not.i.i1.i1253, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1256, label %bb.rs

bb.rs:                                            ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i1252
  %i.bja = load ptr, ptr %i.beo, align 8, !tbaa !38
  %i.bjb = ptrtoint ptr %i.bja to i64
  %i.bjc = ptrtoint ptr %i.biz to i64
  %i.bjd = sub i64 %i.bjb, %i.bjc
  call void @_ZdlPvm(ptr noundef nonnull %i.biz, i64 noundef %i.bjd) #16
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1256

_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1256:    ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i1252, %bb.rs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  %i.bje = load ptr, ptr %30, align 8, !tbaa !35  ; 3 uses
  %i.bjf = load ptr, ptr %i.bea, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i.i1257 = icmp eq ptr %i.bje, %i.bjf
  br i1 %.not4.i.i.i1257, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i1265, label %.lr.ph.i.i.i1258

.lr.ph.i.i.i1258:                                 ; preds = %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1256, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1261
  %.05.i.i.i1259 = phi ptr [ %i.bju, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1261 ], [ %i.bje, %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit1256 ] ; 7 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %.05.i.i.i1259, i64 8
  %i.bjh = load ptr, ptr %i.bjg, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i1260 = icmp eq ptr %i.bjh, null
  br i1 %.not.i.i.i.i.i1260, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1261, label %bb.rt

bb.rt:                                            ; preds = %.lr.ph.i.i.i1258
  %i.bji = atomicrmw add ptr %i.bjh, i32 -1 acq_rel, align 4
  %i.bjj = icmp eq i32 %i.bji, 1
  br i1 %i.bjj, label %bb.ru, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1261

bb.ru:                                            ; preds = %bb.rt
  %i.bjk = getelementptr inbounds nuw i8, ptr %.05.i.i.i1259, i64 32
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !42 ; 3 uses
  %.not3.i.i.i.i.i1267 = icmp eq ptr %i.bjl, null
  %i.bjm = load ptr, ptr %.05.i.i.i1259, align 8, !tbaa !43 ; 3 uses
  br i1 %.not3.i.i.i.i.i1267, label %bb.rw, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.bjn = load ptr, ptr %i.bjl, align 8, !tbaa !34
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 24
  %i.bjp = load ptr, ptr %i.bjo, align 8
  invoke void %i.bjp(ptr noundef nonnull align 8 dereferenceable(8) %i.bjl, ptr noundef %i.bjm)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1261 unwind label %bb.ry, !inline_history !0

bb.rw:                                            ; preds = %bb.ru
  %.not.i1.i.i.i.i1268 = icmp eq ptr %i.bjm, null
  br i1 %.not.i1.i.i.i.i1268, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1261, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  call void @free(ptr noundef nonnull %i.bjm) #15
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1261

bb.ry:                                            ; preds = %bb.rv
  %i.bjq = landingpad { ptr, i32 }
          catch ptr null
  %i.bjr = extractvalue { ptr, i32 } %i.bjq, 0
  call void @__clang_call_terminate(ptr %i.bjr) #18
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i1261:    ; preds = %bb.rx, %bb.rw, %bb.rv, %bb.rt, %.lr.ph.i.i.i1258
  %i.bjs = getelementptr inbounds nuw i8, ptr %.05.i.i.i1259, i64 40
  %i.bjt = getelementptr inbounds nuw i8, ptr %.05.i.i.i1259, i64 64
  store i64 0, ptr %i.bjt, align 8, !tbaa !39
end_hunk_0
