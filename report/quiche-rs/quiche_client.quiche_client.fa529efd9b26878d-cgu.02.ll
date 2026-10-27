Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.02?download=true
inline.NumInlined: 1006
inline.NumDeleted: 389
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection11send_singleCslusEaBCZKLp_13quiche_client:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !29060
  %i.bem = invoke { ptr, i64 } @_RNvMs2_Cs3cD8Bj6DSIP_6octetsNtB5_9OctetsMut19put_varint_with_len(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.bej, i64 noundef 2)
          to label %bb.yd unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29061

bb.yd:                                            ; preds = %bb.yc
  %i.ben = extractvalue { ptr, i64 } %i.bem, 0, !dbg !27290
    #dbg_value(ptr %i.ben, !27262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27291)
    #dbg_value(i64 poison, !27262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27291)
  %i.beo = icmp eq ptr %i.ben, null, !dbg !29062
  br i1 %i.beo, label %bb.abr, label %bb.ye, !dbg !29063

bb.ye:                                            ; preds = %bb.yd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !29064
  br label %bb.yf, !dbg !29065

bb.yf:                                            ; preds = %bb.ye, %bb.xz
    #dbg_value(i64 5, !24019, !DIExpression(), !27292)
    #dbg_value(ptr poison, !24898, !DIExpression(), !27293)
    #dbg_value(ptr poison, !24898, !DIExpression(), !27294)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !7753, !DIExpression(), !23482)
    #dbg_value(i8 0, !7756, !DIExpression(), !23482)
  %i.bep = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !29066 ; 2 uses
  %i.beq = icmp ult i64 %i.bep, 6, !dbg !29067
  call void @llvm.assume(i1 %i.beq), !dbg !29067
    #dbg_value(ptr poison, !24899, !DIExpression(), !27295)
    #dbg_value(i8 poison, !24911, !DIExpression(), !27296)
    #dbg_value(i8 poison, !24919, !DIExpression(), !27301)
    #dbg_value(i8 poison, !24906, !DIExpression(), !27302)
  %i.ber = icmp samesign ugt i64 %i.bep, 4, !dbg !29068
  br i1 %i.ber, label %bb.yg, label %bb.yn, !dbg !25200

bb.yg:                                            ; preds = %bb.yf
  %i.bes = getelementptr inbounds nuw i8, ptr %1, i64 14672, !dbg !25200
    #dbg_value(ptr %i.bes, !24021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !29069
  %.sroa.0478.0.copyload = load i64, ptr %i.ff, align 8, !dbg !29069 ; 2 uses
    #dbg_value(i64 %.sroa.0478.0.copyload, !24386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27304)
  %.not1555 = icmp eq i64 %.sroa.0478.0.copyload, -1, !dbg !29070
  %.sroa.4625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !27304 ; 2 uses
  br i1 %.not1555, label %bb.yi, label %bb.yh, !dbg !29071

bb.yh:                                            ; preds = %bb.yg
  %.sroa.5480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 8, !dbg !29069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4625.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5480.0..sroa_idx, i64 16, i1 false), !dbg !29072
  br label %bb.yk, !dbg !29073

bb.yi:                                            ; preds = %bb.yg
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4625.0..sroa_idx, align 8, !dbg !29074
  %.sroa.5626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !29074
  store i64 0, ptr %.sroa.5626.0..sroa_idx, align 8, !dbg !29074
  br label %bb.yk, !dbg !27308

bb.yj:                                            ; preds = %bb.yk
  %i.bet = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #24
          to label %.thread2030 unwind label %bb.gj, !dbg !25200

bb.yk:                                            ; preds = %bb.yi, %bb.yh
  %.sroa.0478.0.copyload.sink = phi i64 [ 0, %bb.yi ], [ %.sroa.0478.0.copyload, %bb.yh ], !dbg !27304
  store i64 %.sroa.0478.0.copyload.sink, ptr %i.ac, align 8, !dbg !27304
    #dbg_value(ptr %i.ac, !24021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27303)
    #dbg_value(ptr %i.af, !24021, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27303)
    #dbg_value(ptr %i.fk, !24021, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !29075
    #dbg_value(ptr %i.yz, !9157, !DIExpression(), !23486)
  %i.beu = getelementptr inbounds nuw i8, ptr %i.yz, i64 2608, !dbg !29076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !29077
    #dbg_value(ptr %i.yz, !9162, !DIExpression(), !23488)
  %i.bev = getelementptr inbounds nuw i8, ptr %i.yz, i64 2640, !dbg !29078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bev, i64 32, i1 false), !dbg !29078, !alias.scope !27311
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.beu, i64 32, i1 false), !dbg !29075
  %i.bew = getelementptr inbounds nuw i8, ptr %i.ab, i64 32, !dbg !29075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bew, ptr noundef nonnull align 4 dereferenceable(32) %i.aa, i64 32, i1 false), !dbg !29075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !29079
    #dbg_value(ptr %i.ab, !24021, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !27303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !29080
  store ptr %i.bes, ptr %i.z, align 8, !dbg !29080
  %.sroa.4630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !29080
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4630.0..sroa_idx, align 8, !dbg !29080
  %i.bex = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !29080
  store ptr %i.ac, ptr %i.bex, align 8, !dbg !29080
  %.sroa.4634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !29080
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4634.0..sroa_idx, align 8, !dbg !29080
  %i.bey = getelementptr inbounds nuw i8, ptr %i.z, i64 32, !dbg !29080
  store ptr %i.af, ptr %i.bey, align 8, !dbg !29080
  %.sroa.4638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40, !dbg !29080
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4638.0..sroa_idx, align 8, !dbg !29080
  %i.bez = getelementptr inbounds nuw i8, ptr %i.z, i64 48, !dbg !29080
  store ptr %i.fk, ptr %i.bez, align 8, !dbg !29080
  %.sroa.4642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 56, !dbg !29080
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4642.0..sroa_idx, align 8, !dbg !29080
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.z, i64 64, !dbg !29080
  store ptr %i.ab, ptr %i.bfa, align 8, !dbg !29080
  %.sroa.4646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 72, !dbg !29080
  store ptr @_RNvXs3_Cs3f36owOmepS_6quicheNtB5_12AddrTupleFmtNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4646.0..sroa_idx, align 8, !dbg !29080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !25200
  store ptr @13, ptr %i.y, align 8, !dbg !25200
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !25200
  store i64 6, ptr %i.bfb, align 8, !dbg !25200
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !25200
  store ptr @13, ptr %i.bfc, align 8, !dbg !25200
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !25200
  store i64 6, ptr %i.bfd, align 8, !dbg !25200
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.y, i64 32, !dbg !25200
  store ptr @53, ptr %i.bfe, align 8, !dbg !25200
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECslusEaBCZKLp_13quiche_client(ptr noundef nonnull @43, ptr noundef nonnull %i.z, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y)
          to label %bb.yl unwind label %bb.yj, !dbg !25200

bb.yl:                                            ; preds = %bb.yk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !25200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !25200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !25200
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac)
          to label %bb.ym unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !25200

bb.ym:                                            ; preds = %bb.yl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !25200
  br label %bb.yn, !dbg !25200

bb.yn:                                            ; preds = %bb.ym, %bb.yf
  %.sroa.0565.8 = phi i8 [ 0, %bb.ym ], [ 1, %bb.yf ], !dbg !27898 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !29081
    #dbg_value(ptr %i.fa, !26237, !DIExpression(), !27313)
    #dbg_value(ptr %i.fa, !26244, !DIExpression(), !23493)
    #dbg_value(ptr %i.fa, !26257, !DIExpression(), !23495)
  %i.bff = load i64, ptr %i.wh, align 8, !dbg !29082, !alias.scope !27314, !noundef !2431 ; 2 uses
  %i.bfg = icmp ugt i64 %i.bff, 1, !dbg !29082
  %i.bfh = load i64, ptr %i.bde, align 8, !dbg !29083, !alias.scope !27314
  %.sink21.i1866 = select i1 %i.bfg, i64 %i.bfh, i64 %i.bff, !dbg !29083 ; 2 uses
    #dbg_value(i64 %.sink21.i1866, !25233, !DIExpression(), !27315)
    #dbg_value(i64 %.sink21.i1866, !25225, !DIExpression(), !27316)
    #dbg_value(i64 %.sink21.i1866, !25239, !DIExpression(), !27317)
    #dbg_value(i64 %.sink21.i1866, !25244, !DIExpression(), !27318)
    #dbg_value(i64 %.sink21.i1866, !25253, !DIExpression(), !25257)
    #dbg_value(i64 8, !25245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27318)
    #dbg_value(i64 8, !25254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25257)
    #dbg_value(i64 96, !25245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27318)
    #dbg_value(i64 96, !25254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !29084
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %.sink21.i1866, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
          to label %bb.yo unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29084

bb.yo:                                            ; preds = %bb.yn
  %i.bfi = load i64, ptr %i.i, align 8, !dbg !29084, !range !2896, !noundef !2431
  %i.bfj = trunc nuw i64 %i.bfi to i1, !dbg !29085
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !27318
  %i.bfl = load i64, ptr %i.bfk, align 8, !dbg !27318, !range !8171, !noundef !2431 ; 3 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !27318 ; 2 uses
  br i1 %i.bfj, label %bb.yp, label %bb.yq, !dbg !29085, !prof !7439

bb.yp:                                            ; preds = %bb.yo
  %i.bfn = load i64, ptr %i.bfm, align 8, !dbg !29086
    #dbg_value(i64 %i.bfl, !25247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27319)
    #dbg_value(i64 %i.bfn, !25247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27319)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bfl, i64 %i.bfn) #29
          to label %bb.ee unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !29087

bb.yq:                                            ; preds = %bb.yo
  %i.bfo = load ptr, ptr %i.bfm, align 8, !dbg !29088, !nonnull !2431, !noundef !2431
    #dbg_value(i64 %i.bfl, !25246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27320)
    #dbg_value(ptr %i.bfo, !25246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27320)
    #dbg_value(ptr poison, !25252, !DIExpression(), !27321)
    #dbg_value(ptr poison, !24251, !DIExpression(), !27322)
    #dbg_value(i64 %i.bfl, !26640, !DIExpression(), !27325)
  %i.bfp = icmp ule i64 %.sink21.i1866, %i.bfl, !dbg !29089
    #dbg_value(i1 true, !27326, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !27329)
  call void @llvm.assume(i1 %i.bfp), !dbg !29090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !29091
  store i64 %i.bfl, ptr %i.x, align 8, !dbg !29092
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !29092
  store ptr %i.bfo, ptr %i.bfq, align 8, !dbg !29092
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !29092
  store i64 0, ptr %i.bfr, align 8, !dbg !29092
  %i.bfs = invoke { ptr, ptr } @_RNvXsO_Cs5kGgRUzsVpH_8smallvecQINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.fa)
          to label %bb.yr unwind label %.loopexit.split-lp, !dbg !29093 ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche8recovery4SentECslusEaBCZKLp_13quiche_client.exit: ; preds = %.loopexit.split-lp, %bb.abn, %.thread2476
  %.sroa.0558.0 = phi i8 [ %.sroa.0562.7, %bb.abn ], [ %.sroa.0562.7, %.thread2476 ], [ %.sroa.0562.6.ph, %.loopexit.split-lp ], !dbg !29094
  %.sroa.0568.2 = phi i1 [ false, %bb.abn ], [ false, %.thread2476 ], [ true, %.loopexit.split-lp ], !dbg !27918 ; 2 uses
  %.pn1573 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp2475, %bb.abn ], [ %lpad.thr_comm2474, %.thread2476 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bft = trunc nuw i8 %.sroa.0558.0 to i1, !dbg !29095
  br i1 %i.bft, label %.thread2446, label %bb.dm, !dbg !29095

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche8recovery4SentECslusEaBCZKLp_13quiche_client.exit.thread: ; preds = %bb.zd, %bb.zc, %bb.yu, %bb.yt
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread2446, !dbg !29095

.loopexit.split-lp:                               ; preds = %bb.yq, %._crit_edge2826, %bb.zy
  %.sroa.0562.6.ph = phi i8 [ 1, %._crit_edge2826 ], [ %.sroa.0562.7, %bb.zy ], [ 1, %bb.yq ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche8recovery4SentECslusEaBCZKLp_13quiche_client.exit

bb.yr:                                            ; preds = %bb.yq
  %i.bfu = extractvalue { ptr, ptr } %i.bfs, 0, !dbg !29093 ; 3 uses
  %i.bfv = extractvalue { ptr, ptr } %i.bfs, 1, !dbg !29093 ; 3 uses
    #dbg_value(ptr %i.bfu, !24025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27330)
    #dbg_value(ptr %i.bfv, !24025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27330)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bfv) ]
    #dbg_value(ptr %i.bfu, !24025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27330)
    #dbg_value(ptr undef, !24368, !DIExpression(), !24384)
    #dbg_value(ptr %i.bfu, !24379, !DIExpression(), !27331)
    #dbg_value(ptr %i.bfu, !25264, !DIExpression(), !25267)
    #dbg_value(ptr %i.bfv, !24380, !DIExpression(), !27332)
    #dbg_value(ptr poison, !27334, !DIExpression(), !27340)
    #dbg_value(ptr poison, !27337, !DIExpression(), !27341)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bfu) ], !dbg !29096
  %i.bfw = icmp eq ptr %i.bfu, %i.bfv, !dbg !29097
  br i1 %i.bfw, label %._crit_edge2826, label %.lr.ph2825, !dbg !27339

.lr.ph2825:                                       ; preds = %bb.yr
  %i.bfx = getelementptr inbounds nuw i8, ptr %1, i64 14672
  %.sroa.4650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bga = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bgd = getelementptr inbounds nuw i8, ptr %1, i64 14041
  br label %bb.ys, !dbg !27339

._crit_edge2826:                                  ; preds = %bb.zb, %bb.yr
  %i.bge = invoke noundef i8 @_RNvXs3_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9EventTypeE4from(i8 noundef 0, i8 12)
          to label %bb.zf unwind label %.loopexit.split-lp, !dbg !29098 ; 2 uses

bb.ys:                                            ; preds = %.lr.ph2825, %bb.zb
  %.sroa.0482.02823 = phi ptr [ %i.bfu, %.lr.ph2825 ], [ %i.bgf, %bb.zb ] ; 2 uses
    #dbg_value(ptr %.sroa.0482.02823, !24025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27330)
  %i.bgf = getelementptr inbounds nuw i8, ptr %.sroa.0482.02823, i64 128, !dbg !29099 ; 2 uses
    #dbg_value(ptr %i.bgf, !24025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !29100
    #dbg_value(ptr %.sroa.0482.02823, !24026, !DIExpression(), !27346)
  store ptr %.sroa.0482.02823, ptr %i.w, align 8, !dbg !29100
    #dbg_value(i64 5, !24028, !DIExpression(), !27347)
    #dbg_value(ptr poison, !24898, !DIExpression(), !27348)
    #dbg_value(ptr poison, !24898, !DIExpression(), !27349)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !7753, !DIExpression(), !23502)
    #dbg_value(i8 0, !7756, !DIExpression(), !23502)
  %i.bgg = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !29101 ; 2 uses
  %i.bgh = icmp ult i64 %i.bgg, 6, !dbg !29102
  call void @llvm.assume(i1 %i.bgh), !dbg !29102
    #dbg_value(ptr poison, !24899, !DIExpression(), !27350)
    #dbg_value(i8 poison, !24913, !DIExpression(), !27351)
    #dbg_value(i8 poison, !24919, !DIExpression(), !27356)
    #dbg_value(i8 poison, !24906, !DIExpression(), !27357)
  %i.bgi = icmp samesign ugt i64 %i.bgg, 4, !dbg !29103
  br i1 %i.bgi, label %bb.yt, label %bb.yu, !dbg !25268

bb.yt:                                            ; preds = %bb.ys
    #dbg_value(ptr %i.bfx, !24030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27358)
    #dbg_value(ptr %i.w, !24030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !29104
  store ptr %i.bfx, ptr %i.v, align 8, !dbg !29104
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4650.0..sroa_idx, align 8, !dbg !29104
  store ptr %i.w, ptr %i.bfy, align 8, !dbg !29104
  store ptr @_RNvXs1h_NtCskKLDkoKarTP_4core3fmtQNtNtCs3f36owOmepS_6quiche5frame5FrameNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client, ptr %.sroa.4654.0..sroa_idx, align 8, !dbg !29104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !25268
  store ptr @13, ptr %i.u, align 8, !dbg !25268
  store i64 6, ptr %i.bfz, align 8, !dbg !25268
  store ptr @13, ptr %i.bga, align 8, !dbg !25268
  store i64 6, ptr %i.bgb, align 8, !dbg !25268
  store ptr @54, ptr %i.bgc, align 8, !dbg !25268
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECslusEaBCZKLp_13quiche_client(ptr noundef nonnull @44, ptr noundef nonnull %i.v, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.yv unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche8recovery4SentECslusEaBCZKLp_13quiche_client.exit.thread, !dbg !25268

bb.yu:                                            ; preds = %bb.ys, %bb.yv
  %i.bgj = invoke noundef i8 @_RNvXs3_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceINtNtCskKLDkoKarTP_4core7convert4FromNtB5_9EventTypeE4from(i8 noundef 0, i8 12)
          to label %bb.yw unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche8recovery4SentECslusEaBCZKLp_13quiche_client.exit.thread, !dbg !29105 ; 2 uses

bb.yv:                                            ; preds = %bb.yt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !25268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !25268
  br label %bb.yu, !dbg !25268

bb.yw:                                            ; preds = %bb.yu
    #dbg_value(ptr poison, !27359, !DIExpression(), !27364)
    #dbg_value(ptr %1, !27360, !DIExpression(DW_OP_plus_uconst, 14041, DW_OP_stack_value), !27365)
  %i.bgk = load i8, ptr %i.bgd, align 1, !dbg !29106, !range !8018, !noundef !2431
  switch i8 %i.bgk, label %default.unreachable3163 [
    i8 0, label %bb.yy
    i8 1, label %bb.yz
    i8 2, label %bb.za
  ], !dbg !29107

bb.yx:                                            ; preds = %bb.acr
  unreachable, !dbg !27692

bb.yy:                                            ; preds = %bb.yw
  %i.bgl = icmp eq i8 %i.bgj, 0, !dbg !29107
  br i1 %i.bgl, label %bb.za, label %bb.zb, !dbg !29105

bb.yz:                                            ; preds = %bb.yw
  %i.bgm = icmp eq i8 %i.bgj, 2, !dbg !29107
  br i1 %i.bgm, label %bb.zb, label %bb.za, !dbg !29107

bb.za:                                            ; preds = %bb.yw, %bb.yz, %bb.yy
  %i.bgn = load i64, ptr %i.vm, align 16, !dbg !29108, !range !3339, !noundef !2431
  %.not1556 = icmp eq i64 %i.bgn, -1, !dbg !29108
  br i1 %.not1556, label %bb.zb, label %bb.zc, !dbg !29109

bb.zb:                                            ; preds = %bb.yz, %bb.yy, %bb.ze, %bb.za
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !29110
    #dbg_value(ptr %i.bgf, !24025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27330)
    #dbg_value(ptr undef, !24368, !DIExpression(), !24384)
    #dbg_value(ptr %i.bgf, !24379, !DIExpression(), !27331)
    #dbg_value(ptr %i.bgf, !25264, !DIExpression(), !25267)
    #dbg_value(ptr %i.bfv, !24380, !DIExpression(), !27332)
    #dbg_value(ptr poison, !27334, !DIExpression(), !27340)
    #dbg_value(ptr poison, !27337, !DIExpression(), !27341)
  %i.bgo = icmp eq ptr %i.bgf, %i.bfv, !dbg !29097
  br i1 %i.bgo, label %._crit_edge2826, label %bb.ys, !dbg !27339

bb.zc:                                            ; preds = %bb.za
    #dbg_value(ptr %1, !24033, !DIExpression(DW_OP_plus_uconst, 13648, DW_OP_stack_value), !27366)
    #dbg_value(ptr %i.x, !24828, !DIExpression(), !27367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !29111
  %i.bgp = load ptr, ptr %i.w, align 8, !dbg !29111, !nonnull !2431, !align !3857, !noundef !2431
    #dbg_value(ptr %i.bgp, !24026, !DIExpression(), !27346)
  invoke void @_RNvMNtCs3f36owOmepS_6quiche5frameNtB2_5Frame7to_qlog(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bgp)
          to label %bb.zd unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche8recovery4SentECslusEaBCZKLp_13quiche_client.exit.thread, !dbg !29112

bb.zd:                                            ; preds = %bb.zc
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameE8push_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.t)
          to label %bb.ze unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche8recovery4SentECslusEaBCZKLp_13quiche_client.exit.thread, !dbg !29113

bb.ze:                                            ; preds = %bb.zd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !29114
  br label %bb.zb, !dbg !29115

bb.zf:                                            ; preds = %._crit_edge2826
    #dbg_value(ptr poison, !27359, !DIExpression(), !27370)
    #dbg_value(ptr %1, !27360, !DIExpression(DW_OP_plus_uconst, 14041, DW_OP_stack_value), !27371)
  %i.bgq = getelementptr inbounds nuw i8, ptr %1, i64 14041, !dbg !29116 ; 2 uses
  %i.bgr = load i8, ptr %i.bgq, align 1, !dbg !29116, !range !8018, !noundef !2431
  switch i8 %i.bgr, label %default.unreachable3163 [
    i8 0, label %bb.zg
    i8 1, label %bb.zh
    i8 2, label %bb.zi
  ], !dbg !29117

bb.zg:                                            ; preds = %bb.zf
  %i.bgs = icmp eq i8 %i.bge, 0, !dbg !29117
  br i1 %i.bgs, label %bb.zi, label %bb.zj, !dbg !29098

bb.zh:                                            ; preds = %bb.zf
  %i.bgt = icmp eq i8 %i.bge, 2, !dbg !29117
  br i1 %i.bgt, label %bb.zj, label %bb.zi, !dbg !29117

bb.zi:                                            ; preds = %bb.zh, %bb.zf, %bb.zg
  %i.bgu = load i64, ptr %i.vm, align 16, !dbg !29118, !range !3339, !noundef !2431
  %.not1557 = icmp eq i64 %i.bgu, -1, !dbg !29118
    #dbg_value(ptr %i.vm, !24034, !DIExpression(), !27372)
    #dbg_value(ptr %i.vm, !27373, !DIExpression(), !27379)
  %i.bgv = load i64, ptr %i.fc, align 8, !range !4604
  %.not1558 = icmp eq i64 %i.bgv, 2
  %or.cond1618 = select i1 %.not1557, i1 true, i1 %.not1558, !dbg !29119
  br i1 %or.cond1618, label %bb.zj, label %bb.zk, !dbg !29119

bb.zj:                                            ; preds = %bb.zh, %bb.zg, %bb.zv, %bb.zi
  %.sroa.0562.7 = phi i8 [ 0, %bb.zv ], [ 1, %bb.zh ], [ 1, %bb.zi ], [ 1, %bb.zg ], !dbg !26093 ; 7 uses
  %i.bgw = load i64, ptr %i.tp, align 16, !dbg !29120, !range !3339, !noundef !2431
  %.not1565 = icmp eq i64 %i.bgw, -1, !dbg !29120
  br i1 %.not1565, label %bb.zz, label %bb.zy, !dbg !29121

bb.zk:                                            ; preds = %bb.zi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !24832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.s, ptr noundef nonnull align 8 dereferenceable(144) %i.fc, i64 144, i1 false), !dbg !24832
  %i.bgx = load i64, ptr %i.af, align 8, !dbg !29122, !noundef !2431 ; 2 uses
    #dbg_value(i64 %i.bgx, !24011, !DIExpression(), !27258)
    #dbg_value(!DIArgList(i64 %i.bgx, i64 %i.xc), !24036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value), !27380)
    #dbg_value(i64 1, !24037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27381)
    #dbg_value(!DIArgList(i64 %i.bgx, i64 %i.xc), !24037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !27381)
    #dbg_value(i64 1, !24037, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27381)
    #dbg_value(i64 %i.bgx, !24037, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27381)
    #dbg_value(ptr null, !24037, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !27381)
  %i.bgy = getelementptr inbounds nuw i8, ptr %1, i64 14000, !dbg !29123
  %i.bgz = load i64, ptr %i.bgy, align 16, !dbg !29123, !noundef !2431
  %i.bha = getelementptr inbounds nuw i8, ptr %1, i64 14008, !dbg !29123
  %i.bhb = load i32, ptr %i.bha, align 8, !dbg !29123, !range !7819, !noundef !2431
  %i.bhc = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant14duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fu, i64 noundef %i.bgz, i32 noundef %i.bhb)
          to label %bb.zl unwind label %bb.zw, !dbg !29124 ; 2 uses

bb.zl:                                            ; preds = %bb.zk
    #dbg_value(!DIArgList(i64 %i.xc, i64 %i.bgx), !24037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !27381)
    #dbg_value(!DIArgList(i64 %i.xc, i64 %i.bgx), !24036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value), !27380)
  %i.bhd = add i64 %i.xc, 16, !dbg !29122
  %i.bhe = add i64 %i.bhd, %i.bgx, !dbg !29122
  %i.bhf = extractvalue { i64, i32 } %i.bhc, 0, !dbg !29125
  %i.bhg = extractvalue { i64, i32 } %i.bhc, 1, !dbg !29125 ; 2 uses
    #dbg_value(ptr poison, !27383, !DIExpression(), !27389)
  %i.bhh = uitofp i64 %i.bhf to double, !dbg !29126
  %i.bhi = icmp ult i32 %i.bhg, 1000000000, !dbg !29127
  call void @llvm.assume(i1 %i.bhi), !dbg !29127
  %i.bhj = uitofp nneg i32 %i.bhg to double, !dbg !29128
  %i.bhk = fdiv nnan double %i.bhj, 1.000000e+09, !dbg !29128
  %i.bhl = fadd nnan double %i.bhk, %i.bhh, !dbg !29126
  %i.bhm = fmul nnan double %i.bhl, 1.000000e+03, !dbg !29125
    #dbg_value(double %i.bhm, !24038, !DIExpression(), !27391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !29129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.r, ptr noundef nonnull align 8 dereferenceable(144) %i.s, i64 144, i1 false), !dbg !29130
  %.sroa.8490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 224, !dbg !29131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8490.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !29094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !27395
  store i64 0, ptr %i.q, align 8, !dbg !29132
  %.sroa.5657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !29132
  store i64 0, ptr %.sroa.5657.0..sroa_idx, align 8, !dbg !29132
end_hunk_0
begin_hunk_1_@llvm.umax.v2i64
!27143 = !{!23274, !23270}
!27144 = !{!23288}
!27145 = !{!23292}
!27146 = !{!23292, !23288}
!27147 = !DILexicalBlockFile(scope: !21157, file: !7763, discriminator: 0)
!27148 = !{!23306}
!27149 = !{!23310}
!27150 = !{!23310, !23306}
!27151 = !DILocation(line: 0, scope: !21638, inlinedAt: !25159)
!27152 = !{!23324}
!27153 = !{!23328}
!27154 = !{!23328, !23324}
!27155 = !{!23342}
!27156 = !{!23346}
!27157 = !{!23346, !23342}
!27158 = !DILexicalBlockFile(scope: !21162, file: !7763, discriminator: 0)
!27159 = !{!23360}
!27160 = !{!23364}
!27161 = !{!23364, !23360}
!27162 = !DILocation(line: 0, scope: !21137)
!27163 = !DILexicalBlockFile(scope: !21137, file: !7322, discriminator: 222)
!27164 = !DILocation(line: 1891, column: 13, scope: !27163)
!27165 = !DILocation(line: 0, scope: !22160, inlinedAt: !27164)
!27166 = !DILocation(line: 0, scope: !22116, inlinedAt: !27164)
!27167 = !DILocalVariable(name: "self", arg: 1, scope: !23379, file: !7826, line: 207, type: !9062)
!27168 = !{null, !9062, !2309}
!27169 = !DISubroutineType(types: !27168)
!27170 = !DILocalVariable(name: "__enum_dispatch_arg_0", arg: 2, scope: !23379, file: !7826, line: 207, type: !2309)
!27171 = !DILocalVariable(name: "inner", scope: !23378, file: !7826, line: 185, type: !9072, align: 64)
!27172 = !DILocalVariable(name: "inner", scope: !23377, file: !7826, line: 185, type: !9073, align: 64)
!27173 = !{!27167, !27170, !27171, !27172}
!27174 = !{!23383}
!27175 = !DILocalVariable(name: "self", arg: 1, scope: !23385, file: !8929, line: 733, type: !9073)
!27176 = !{null, !9073, !2309}
!27177 = !DISubroutineType(types: !27176)
!27178 = !DILocalVariable(name: "epoch", arg: 2, scope: !23385, file: !8929, line: 733, type: !2309)
!27179 = !{!27175, !27178}
!27180 = !DILocalVariable(name: "index", arg: 2, scope: !23388, file: !8499, line: 390, type: !2309)
!27181 = !DILocalVariable(name: "self", arg: 1, scope: !23388, file: !8499, line: 390, type: !25508)
!27182 = !{!27181, !27180}
!27183 = !DILocalVariable(name: "index", arg: 2, scope: !23391, file: !7403, line: 105, type: !2309)
!27184 = !DILocalVariable(name: "self", arg: 1, scope: !23391, file: !7403, line: 105, type: !21919)
!27185 = !{!27184, !27183}
!27186 = !DILocalVariable(name: "rhs", scope: !23394, file: !7608, line: 2569, type: !2411, align: 64)
!27187 = !DILocalVariable(name: "self", arg: 1, scope: !23394, file: !7608, line: 2569, type: !2411)
!27188 = !{!27187, !27186}
!27189 = !DILocalVariable(name: "self", arg: 1, scope: !23397, file: !8109, line: 18, type: !21919)
!27190 = !DILocalVariable(name: "index", arg: 2, scope: !23397, file: !8109, line: 18, type: !2411)
!27191 = !{!27189, !27190}
!27192 = !DILocalVariable(name: "slice", arg: 2, scope: !23400, file: !8109, line: 236, type: !21919)
!27193 = !DILocalVariable(name: "self", arg: 1, scope: !23400, file: !8109, line: 236, type: !2411)
!27194 = !{!27193, !27192}
!27195 = !{!23404, !23383}
!27196 = !DILocalVariable(name: "self", arg: 1, scope: !23406, file: !8931, line: 613, type: !9072)
!27197 = !{null, !9072, !2309}
!27198 = !DISubroutineType(types: !27197)
!27199 = !DILocalVariable(name: "epoch", arg: 2, scope: !23406, file: !8931, line: 613, type: !2309)
!27200 = !{!27196, !27199}
!27201 = !DILocalVariable(name: "index", arg: 2, scope: !23409, file: !8499, line: 390, type: !2309)
!27202 = !DILocalVariable(name: "self", arg: 1, scope: !23409, file: !8499, line: 390, type: !25533)
!27203 = !{!27202, !27201}
!27204 = !DILocalVariable(name: "index", arg: 2, scope: !23412, file: !7403, line: 105, type: !2309)
!27205 = !DILocalVariable(name: "self", arg: 1, scope: !23412, file: !7403, line: 105, type: !21929)
!27206 = !{!27205, !27204}
!27207 = !DILocalVariable(name: "rhs", scope: !23415, file: !7608, line: 2569, type: !2411, align: 64)
!27208 = !DILocalVariable(name: "self", arg: 1, scope: !23415, file: !7608, line: 2569, type: !2411)
!27209 = !{!27208, !27207}
!27210 = !DILocalVariable(name: "self", arg: 1, scope: !23418, file: !8109, line: 18, type: !21929)
!27211 = !DILocalVariable(name: "index", arg: 2, scope: !23418, file: !8109, line: 18, type: !2411)
!27212 = !{!27210, !27211}
!27213 = !DILocalVariable(name: "slice", arg: 2, scope: !23421, file: !8109, line: 236, type: !21929)
!27214 = !DILocalVariable(name: "self", arg: 1, scope: !23421, file: !8109, line: 236, type: !2411)
!27215 = !{!27214, !27213}
!27216 = !{!23425, !23383}
!27217 = !DILocalVariable(name: "self", arg: 1, scope: !23428, file: !7826, line: 261, type: !9062)
!27218 = !{null, !9062}
!27219 = !DISubroutineType(types: !27218)
!27220 = !DILocalVariable(name: "inner", scope: !23427, file: !7826, line: 185, type: !9072, align: 64)
!27221 = !DILocalVariable(name: "inner", scope: !23426, file: !7826, line: 185, type: !9073, align: 64)
!27222 = !{!27217, !27220, !27221}
!27223 = !{!23432}
!27224 = !DILocation(line: 5321, column: 19, scope: !21182)
!27225 = !DILocation(line: 0, scope: !22681, inlinedAt: !27224)
!27226 = !DILexicalBlockFile(scope: !22681, file: !7417, discriminator: 2)
!27227 = !DILocation(line: 983, column: 14, scope: !27226, inlinedAt: !27224)
!27228 = !DILocation(line: 0, scope: !22682, inlinedAt: !27227)
!27229 = !{!23439}
!27230 = !{!23447}
!27231 = !DILocalVariable(name: "self", arg: 1, scope: !23451, file: !7778, line: 352, type: !7860)
!27232 = !DISubprogram(name: "validated", linkageName: "_RNvMs_NtCs3f36owOmepS_6quiche4pathNtB4_4Path9validated", scope: !880, file: !7778, line: 352, type: !7992, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2431)
!27233 = !{!27231}
!27234 = !DILocalVariable(name: "other", scope: !23456, file: !7778, line: 52, type: !9153, align: 64)
!27235 = !DINamespace(name: "{impl#11}", scope: !1848)
!27236 = !DILocalVariable(name: "self", arg: 1, scope: !23456, file: !7778, line: 52, type: !9153)
!27237 = !DILocalVariable(name: "__self_discr", scope: !23455, file: !7778, line: 52, type: !4160, align: 64)
!27238 = !DILocalVariable(name: "__arg1_discr", scope: !23454, file: !7778, line: 52, type: !4160, align: 64)
!27239 = !{!27236, !27234, !27237, !27238}
!27240 = !DILocation(line: 5348, column: 14, scope: !21182)
!27241 = !DILocation(line: 797, column: 16, scope: !22562, inlinedAt: !27240)
!27242 = !DILocation(line: 0, scope: !21134)
!27243 = !DILexicalBlockFile(scope: !21134, file: !7322, discriminator: 226)
!27244 = !DILocation(line: 1891, column: 13, scope: !27243)
!27245 = !DILocation(line: 0, scope: !22160, inlinedAt: !27244)
!27246 = !DILocation(line: 0, scope: !22115, inlinedAt: !27244)
!27247 = !DILocation(line: 5349, column: 33, scope: !21182)
!27248 = !DILocation(line: 797, column: 16, scope: !22562, inlinedAt: !27247)
!27249 = !DILocation(line: 0, scope: !21132)
!27250 = !DILocation(line: 5361, column: 29, scope: !21182)
!27252 = !DILocation(line: 0, scope: !21130)
!27253 = !DILexicalBlockFile(scope: !21130, file: !7322, discriminator: 230)
!27254 = !DILocation(line: 1891, column: 13, scope: !27253)
!27255 = !DILocation(line: 0, scope: !22160, inlinedAt: !27254)
!27256 = !DILocation(line: 0, scope: !22114, inlinedAt: !27254)
!27257 = !DILocation(line: 797, column: 16, scope: !22562, inlinedAt: !27250)
!27258 = !DILocation(line: 0, scope: !21128)
!27260 = !DILocation(line: 0, scope: !21127)
!27261 = !DILocation(line: 0, scope: !21462, inlinedAt: !24234)
!27262 = !DILocalVariable(name: "self", arg: 1, scope: !23480, file: !7438, line: 2175, type: !23473)
!27263 = !{!23472}
!27264 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !23472, file: !1839, baseType: !23471, size: 128, align: 64)
!27265 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !23472, file: !1839, baseType: !23470, size: 128, align: 64, extraData: i64 0)
!27266 = !{!27264, !27265}
!27267 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23470, file: !1839, baseType: !1271, align: 8, flags: DIFlagPublic)
!27268 = !{!27267}
!27269 = !DITemplateTypeParameter(name: "T", type: !1455)
!27270 = !{!27269, !8297}
!27271 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23471, file: !1839, baseType: !1455, size: 128, align: 64, flags: DIFlagPublic)
!27272 = !{!27271}
!27273 = !DIDerivedType(tag: DW_TAG_member, scope: !23473, file: !1839, baseType: !2022, size: 64, align: 64, flags: DIFlagArtificial)
!27274 = !{!23477, !23473}
!27275 = !DISubroutineType(types: !27274)
!27276 = !{!23476}
!27277 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !23476, file: !1839, baseType: !23475, size: 128, align: 64)
!27278 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !23476, file: !1839, baseType: !23474, size: 128, align: 64, extraData: i64 0)
!27279 = !{!27277, !27278}
!27280 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23474, file: !1839, baseType: !21356, align: 8, flags: DIFlagPublic)
!27281 = !{!27280}
!27282 = !DITemplateTypeParameter(name: "C", type: !1455)
!27283 = !{!24219, !27282}
!27284 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23475, file: !1839, baseType: !1455, size: 128, align: 64, flags: DIFlagPublic)
!27285 = !{!27284}
!27286 = !DIDerivedType(tag: DW_TAG_member, scope: !23477, file: !1839, baseType: !2022, size: 64, align: 64, flags: DIFlagArtificial)
!27287 = !DILocalVariable(name: "v", scope: !23479, file: !7438, line: 2177, type: !1455, align: 64)
!27288 = !DILocalVariable(name: "e", scope: !23478, file: !7438, line: 2178, type: !1271, align: 8)
!27289 = !{!27262, !27287, !27288}
!27290 = !DILocation(line: 5368, column: 13, scope: !21126)
!27291 = !DILocation(line: 0, scope: !23480, inlinedAt: !27290)
!27292 = !DILocation(line: 0, scope: !24018)
!27293 = !DILocation(line: 1488, column: 11, scope: !21639, inlinedAt: !25200)
!27294 = !DILocation(line: 1488, column: 11, scope: !21639, inlinedAt: !25218)
!27295 = !DILocation(line: 1488, column: 18, scope: !21639, inlinedAt: !25218)
!27296 = !DILocation(line: 0, scope: !21642, inlinedAt: !25219)
!27297 = !DILexicalBlockFile(scope: !21650, file: !7707, discriminator: 10)
!27298 = !DILexicalBlockFile(scope: !21642, file: !4276, discriminator: 10)
!27299 = !DILocation(line: 662, column: 24, scope: !27298, inlinedAt: !25219)
!27300 = !DILocation(line: 250, column: 5, scope: !27297, inlinedAt: !27299)
!27301 = !DILocation(line: 0, scope: !21649, inlinedAt: !27300)
!27302 = !DILocation(line: 0, scope: !21648, inlinedAt: !25219)
!27303 = !DILocation(line: 0, scope: !24020)
!27304 = !DILocation(line: 0, scope: !21512, inlinedAt: !24392)
!27305 = !{!61}
!27306 = !DISubroutineType(types: !27305)
!27307 = !DISubprogram(name: "new", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String3new", scope: !61, file: !7367, line: 446, type: !27306, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2431)
!27308 = !DILocation(line: 1099, column: 21, scope: !21512, inlinedAt: !24392)
!27309 = !DILocation(line: 2758, column: 9, scope: !23484, inlinedAt: !27308)
!27310 = !DINamespace(name: "{impl#27}", scope: !2593)
!27311 = !{!23491, !23490}
!27312 = !DILocation(line: 5383, column: 39, scope: !21128)
!27313 = !DILocation(line: 0, scope: !22682, inlinedAt: !27312)
!27314 = !{!23497}
!27315 = !DILocation(line: 0, scope: !21697, inlinedAt: !25227)
!27316 = !DILocation(line: 0, scope: !21696, inlinedAt: !25228)
!27317 = !DILocation(line: 0, scope: !21698, inlinedAt: !25241)
!27318 = !DILocation(line: 0, scope: !21701, inlinedAt: !25249)
!27319 = !DILocation(line: 0, scope: !21699, inlinedAt: !25249)
!27320 = !DILocation(line: 0, scope: !21700, inlinedAt: !25249)
!27321 = !DILocation(line: 763, column: 28, scope: !21702, inlinedAt: !25256)
!27322 = !DILocation(line: 615, column: 23, scope: !21467, inlinedAt: !25258)
!27323 = !DILexicalBlockFile(scope: !21467, file: !7372, discriminator: 6)
!27324 = !DILocation(line: 616, column: 58, scope: !27323, inlinedAt: !25258)
!27325 = !DILocation(line: 0, scope: !22935, inlinedAt: !27324)
!27326 = !DILocalVariable(name: "cond", arg: 1, scope: !23498, file: !8173, line: 202, type: !2526)
!27327 = !{!27326}
!27328 = !DILocation(line: 439, column: 21, scope: !21700, inlinedAt: !25249)
!27329 = !DILocation(line: 0, scope: !23498, inlinedAt: !27328)
!27330 = !DILocation(line: 0, scope: !21116)
!27331 = !DILocation(line: 0, scope: !21509, inlinedAt: !24383)
!27332 = !DILocation(line: 0, scope: !21508, inlinedAt: !24383)
!27333 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<quiche::frame::Frame>", baseType: !829, size: 64, align: 64, dwarfAddressSpace: 0)
!27334 = !DILocalVariable(name: "self", arg: 1, scope: !23499, file: !4310, line: 1662, type: !27333)
!27335 = !{!2526, !27333, !27333}
!27336 = !DISubroutineType(types: !27335)
!27337 = !DILocalVariable(name: "other", arg: 2, scope: !23499, file: !4310, line: 1662, type: !27333)
!27338 = !{!27334, !27337}
!27339 = !DILocation(line: 180, column: 28, scope: !21508, inlinedAt: !24383)
!27340 = !DILocation(line: 1662, column: 11, scope: !23499, inlinedAt: !27339)
!27341 = !DILocation(line: 1662, column: 18, scope: !23499, inlinedAt: !27339)
!27342 = !{!8791, !829}
!27343 = !DISubroutineType(types: !27342)
!27344 = !DISubprogram(name: "as_ptr<quiche::frame::Frame>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullNtNtCs3f36owOmepS_6quiche5frame5FrameE6as_ptrCslusEaBCZKLp_13quiche_client", scope: !829, file: !4310, line: 411, type: !27343, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5538)
!27345 = !DILocation(line: 1663, column: 14, scope: !23499, inlinedAt: !27339)
!27346 = !DILocation(line: 0, scope: !21113)
!27347 = !DILocation(line: 0, scope: !24027)
!27348 = !DILocation(line: 1488, column: 11, scope: !21639, inlinedAt: !25268)
!27349 = !DILocation(line: 1488, column: 11, scope: !21639, inlinedAt: !25286)
!27350 = !DILocation(line: 1488, column: 18, scope: !21639, inlinedAt: !25286)
!27351 = !DILocation(line: 0, scope: !21640, inlinedAt: !25287)
!27352 = !DILexicalBlockFile(scope: !21650, file: !7707, discriminator: 14)
!27353 = !DILexicalBlockFile(scope: !21640, file: !4276, discriminator: 14)
!27354 = !DILocation(line: 662, column: 24, scope: !27353, inlinedAt: !25287)
!27355 = !DILocation(line: 250, column: 5, scope: !27352, inlinedAt: !27354)
!27356 = !DILocation(line: 0, scope: !21649, inlinedAt: !27355)
!27357 = !DILocation(line: 0, scope: !21648, inlinedAt: !25287)
!27358 = !DILocation(line: 0, scope: !24029)
!27359 = !DILocalVariable(name: "self", arg: 1, scope: !23503, file: !8012, line: 166, type: !8013)
!27360 = !DILocalVariable(name: "other", arg: 2, scope: !23503, file: !8012, line: 166, type: !8013)
!27361 = !{!27359, !27360}
!27362 = !DILexicalBlockFile(scope: !21113, file: !7322, discriminator: 2)
!27363 = !DILocation(line: 1909, column: 43, scope: !27362)
!27364 = !DILocation(line: 166, column: 28, scope: !23503, inlinedAt: !27363)
!27365 = !DILocation(line: 166, column: 35, scope: !23503, inlinedAt: !27363)
!27366 = !DILocation(line: 1910, column: 29, scope: !21108)
!27367 = !DILocation(line: 0, scope: !21628, inlinedAt: !24830)
!27368 = !DILexicalBlockFile(scope: !21117, file: !7322, discriminator: 4)
!27369 = !DILocation(line: 1909, column: 43, scope: !27368)
!27370 = !DILocation(line: 166, column: 28, scope: !23503, inlinedAt: !27369)
!27371 = !DILocation(line: 166, column: 35, scope: !23503, inlinedAt: !27369)
!27372 = !DILocation(line: 0, scope: !21107)
!27373 = !DILocalVariable(name: "self", arg: 1, scope: !23504, file: !9165, line: 385, type: !7077)
!27374 = !{!135, !7394}
!27375 = !DISubroutineType(types: !27374)
!27376 = !DISubprogram(name: "start_time", linkageName: "_RNvMNtCs3JBf551F2Kj_4qlog8streamerNtB2_12QlogStreamer10start_time", scope: !620, file: !9165, line: 385, type: !27375, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2431)
!27377 = !{!27373}
!27378 = !DILocation(line: 5407, column: 42, scope: !21104)
!27379 = !DILocation(line: 0, scope: !23504, inlinedAt: !27378)
!27380 = !DILocation(line: 0, scope: !21105)
!27381 = !DILocation(line: 0, scope: !21104)
!27383 = !DILocalVariable(name: "self", arg: 1, scope: !23505, file: !8243, line: 866, type: !9109)
!27384 = !{!4664, !9109}
!27385 = !DISubroutineType(types: !27384)
!27386 = !DISubprogram(name: "as_secs_f64", linkageName: "_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11as_secs_f64", scope: !706, file: !8243, line: 866, type: !27385, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2431)
!27387 = !{!27383}
!27388 = !DILocation(line: 5407, column: 56, scope: !21104)
!27389 = !DILocation(line: 866, column: 30, scope: !23505, inlinedAt: !27388)
!27390 = !DILocation(line: 867, column: 42, scope: !23505, inlinedAt: !27388)
!27391 = !DILocation(line: 0, scope: !21103)
!27392 = !DINamespace(name: "{impl#226}", scope: !1905)
!27393 = !{!1188}
!27394 = !DISubroutineType(types: !27393)
!27395 = !DILocation(line: 5415, column: 27, scope: !21103)
!27396 = !DILocalVariable(name: "self", arg: 1, scope: !23509, file: !7438, line: 709, type: !473)
!27397 = !DILocalVariable(name: "x", scope: !23508, file: !7438, line: 715, type: !2408, align: 8)
!27398 = !DILocalVariable(name: "x", scope: !23507, file: !7438, line: 715, type: !2408, align: 8)
!27399 = !{!27396, !27397, !27398}
!27400 = !DILocation(line: 5418, column: 61, scope: !21102)
!27401 = !DILocation(line: 0, scope: !23509, inlinedAt: !27400)
!27402 = !DILocation(line: 0, scope: !21101)
!27403 = !DILocation(line: 0, scope: !21098)
!27404 = !DILexicalBlockFile(scope: !21098, file: !7322, discriminator: 2)
!27405 = !DILocation(line: 5427, column: 23, scope: !27404)
!27406 = !DILocation(line: 0, scope: !22160, inlinedAt: !27405)
!27407 = !DILocation(line: 0, scope: !22113, inlinedAt: !27405)
!27408 = !DILexicalBlockFile(scope: !21101, file: !7763, discriminator: 0)
!27409 = !DILocation(line: 0, scope: !21099)
!27410 = !DILocation(line: 5497, column: 51, scope: !21086)
!27411 = !DILocation(line: 0, scope: !22622, inlinedAt: !27410)
!27412 = !DILocalVariable(name: "self", arg: 1, scope: !23512, file: !7826, line: 323, type: !7827)
!27413 = !{!2526, !7827}
!27414 = !DISubroutineType(cc: DW_CC_nocall, types: !27413)
!27415 = !DILocalVariable(name: "inner", scope: !23511, file: !7826, line: 185, type: !7831, align: 64)
!27416 = !DILocalVariable(name: "inner", scope: !23510, file: !7826, line: 185, type: !7832, align: 64)
!27417 = !{!27412, !27415, !27416}
!27418 = !DILocalVariable(name: "self", arg: 1, scope: !23517, file: !7403, line: 963, type: !7765)
!27419 = !DISubroutineType(cc: DW_CC_nocall, types: !7766)
!27420 = !{!27418}
!27421 = !DILocalVariable(name: "self", arg: 1, scope: !23520, file: !4276, line: 633, type: !7770)
!27422 = !{!27421}
!27423 = !DILocation(line: 0, scope: !21094)
!27424 = !DILocation(line: 5475, column: 9, scope: !21094)
!27425 = !DILocation(line: 0, scope: !22541, inlinedAt: !27424)
!27426 = !{!23533}
!27427 = !DILocation(line: 0, scope: !21091)
!27428 = !DILexicalBlockFile(scope: !21091, file: !7322, discriminator: 6)
!27429 = !DILocation(line: 1909, column: 43, scope: !27428)
!27430 = !DILocation(line: 166, column: 28, scope: !23503, inlinedAt: !27429)
!27431 = !DILocation(line: 166, column: 35, scope: !23503, inlinedAt: !27429)
!27432 = !DILocation(line: 0, scope: !21088)
!27433 = !DILocation(line: 0, scope: !21087)
!27434 = !{!23541}
!27436 = !DILocation(line: 0, scope: !21086)
!27438 = !DILocation(line: 0, scope: !21085)
!27439 = !DILexicalBlockFile(scope: !21128, file: !7763, discriminator: 0)
!27440 = !DILexicalBlockFile(scope: !21127, file: !7763, discriminator: 0)
!27441 = !DILexicalBlockFile(scope: !21347, file: !7763, discriminator: 0)
!27442 = !DILocation(line: 185, column: 1, scope: !26120, inlinedAt: !26109)
!27443 = !DILocation(line: 1022, column: 25, scope: !22572, inlinedAt: !27442)
!27444 = !{!23559}
!27445 = !DILocation(line: 0, scope: !21409)
!27446 = !DILocation(line: 0, scope: !21419)
!27447 = !DILocation(line: 0, scope: !21418)
!27448 = !DILocation(line: 0, scope: !21429)
!27449 = !DILocation(line: 0, scope: !21428)
!27450 = !DILocation(line: 0, scope: !21422)
!27451 = !DILocation(line: 0, scope: !21416)
!27452 = !DILocation(line: 0, scope: !21415)
!27453 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut quiche::StreamsBlockedState", baseType: !619, size: 64, align: 64, dwarfAddressSpace: 0)
!27454 = !DILocalVariable(name: "self", arg: 1, scope: !23562, file: !7322, line: 1300, type: !27453)
!27455 = !{null, !27453, !2022}
!27456 = !DISubroutineType(types: !27455)
!27457 = !DISubprogram(name: "force_retransmit_sent_limit_eq", linkageName: "_RNvMs_Cs3f36owOmepS_6quicheNtB4_19StreamsBlockedState30force_retransmit_sent_limit_eq", scope: !619, file: !7322, line: 1300, type: !27456, scopeLine: 1300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2431)
!27458 = !DILocalVariable(name: "limit", arg: 2, scope: !23562, file: !7322, line: 1300, type: !2022)
!27459 = !{!27454, !27458}
!27460 = !DILocalVariable(name: "self", arg: 1, scope: !23566, file: !4276, line: 2441, type: !8270)
!27461 = !DILocalVariable(name: "other", arg: 2, scope: !23566, file: !4276, line: 2441, type: !8270)
!27462 = !DILocalVariable(name: "l", scope: !23565, file: !4276, line: 2445, type: !2580, align: 64)
!27463 = !DILocalVariable(name: "r", scope: !23565, file: !4276, line: 2445, type: !2580, align: 64)
!27464 = !{!27460, !27461, !27462, !27463}
!27465 = !{!23571}
!27466 = !DILocation(line: 0, scope: !21414)
!27467 = !{!23578}
!27468 = !DILocation(line: 0, scope: !21413)
!27469 = !DILocation(line: 0, scope: !21412)
!27470 = !{!23588}
!27471 = !DILocation(line: 4290, column: 25, scope: !21412)
!27472 = !DILocation(line: 0, scope: !22541, inlinedAt: !27471)
!27473 = !DILocation(line: 0, scope: !21408)
!27474 = !DILocation(line: 4296, column: 58, scope: !21407)
!27475 = !DILocation(line: 766, column: 25, scope: !22431, inlinedAt: !27474)
!27476 = !DILocation(line: 0, scope: !21407)
!27477 = !DILocation(line: 0, scope: !23755)
!27478 = !DILocation(line: 1488, column: 11, scope: !21639, inlinedAt: !24901)
!27479 = !DILocation(line: 1488, column: 11, scope: !21639, inlinedAt: !24934)
!27480 = !DILocation(line: 1488, column: 18, scope: !21639, inlinedAt: !24934)
!27481 = !DILocation(line: 0, scope: !21646, inlinedAt: !24935)
!27482 = !DILexicalBlockFile(scope: !21650, file: !7707, discriminator: 2)
!27483 = !DILexicalBlockFile(scope: !21646, file: !4276, discriminator: 2)
!27484 = !DILocation(line: 662, column: 24, scope: !27483, inlinedAt: !24935)
!27485 = !DILocation(line: 250, column: 5, scope: !27482, inlinedAt: !27484)
!27486 = !DILocation(line: 0, scope: !21649, inlinedAt: !27485)
!27487 = !DILocation(line: 0, scope: !21648, inlinedAt: !24935)
!27488 = !DILocation(line: 0, scope: !23757)
!27489 = !DILocation(line: 0, scope: !21417)
!27490 = !DILocalVariable(name: "self", arg: 1, scope: !23591, file: !9148, line: 399, type: !9149)
!27491 = !DISubprogram(name: "is_fin", linkageName: "_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf6is_fin", scope: !203, file: !9148, line: 399, type: !9151, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2431)
!27492 = !{!27490}
!27493 = !DILocalVariable(name: "self", arg: 1, scope: !23595, file: !4276, line: 2441, type: !8270)
!27494 = !DILocalVariable(name: "other", arg: 2, scope: !23595, file: !4276, line: 2441, type: !8270)
!27495 = !DILocalVariable(name: "l", scope: !23594, file: !4276, line: 2445, type: !2580, align: 64)
!27496 = !DILocalVariable(name: "r", scope: !23594, file: !4276, line: 2445, type: !2580, align: 64)
!27497 = !{!27493, !27494, !27495, !27496}
!27498 = !{!23599}
!27499 = !DILocation(line: 0, scope: !21427)
!27500 = !DILocation(line: 0, scope: !21423)
!27501 = !DILocation(line: 0, scope: !21421)
!27502 = !DILocation(line: 2464, column: 14, scope: !21636, inlinedAt: !24878)
!27503 = !DILocation(line: 2476, column: 29, scope: !21636, inlinedAt: !24878)
!27504 = !DILocation(line: 2186, column: 14, scope: !23220, inlinedAt: !27503)
!27505 = !DILocation(line: 2192, column: 27, scope: !23220, inlinedAt: !27503)
!27506 = !DILocation(line: 3223, column: 36, scope: !21632, inlinedAt: !24879)
!27507 = !DILocation(line: 0, scope: !21635, inlinedAt: !24878)
!27508 = !DILocation(line: 0, scope: !21638, inlinedAt: !24895)
!27509 = !{!23606}
!27510 = !{!23610}
!27511 = !{!23610, !23606}
!27512 = !{!23624}
!27513 = !{!23628}
!27514 = !{!23628, !23624}
!27515 = !DILocalVariable(name: "self", arg: 1, scope: !23641, file: !8711, line: 737, type: !7274)
!27516 = !DISubprogram(name: "add_tx_buffered<quiche::buffers::DefaultBufFactory>", linkageName: "_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap15add_tx_bufferedCslusEaBCZKLp_13quiche_client", scope: !659, file: !8711, line: 737, type: !8714, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3067)
!27517 = !DILocalVariable(name: "delta", arg: 2, scope: !23641, file: !8711, line: 737, type: !2411)
!27518 = !{!27515, !27517}
!27519 = !{!23645}
!27520 = !DILocation(line: 1909, column: 43, scope: !21428)
!27521 = !DILocation(line: 166, column: 28, scope: !23503, inlinedAt: !27520)
!27522 = !DILocation(line: 166, column: 35, scope: !23503, inlinedAt: !27520)
!27523 = !DILocation(line: 0, scope: !21425)
!27524 = !DILocation(line: 0, scope: !21424)
!27530 = !DILocation(line: 4176, column: 42, scope: !21424)
!27531 = !DILocation(line: 0, scope: !23509, inlinedAt: !27530)
!27532 = !{!23679}
!27533 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<&quiche::stream::Stream<quiche::buffers::DefaultBufFactory>>", baseType: !23687, size: 64, align: 64, dwarfAddressSpace: 0)
!27534 = !DILocalVariable(name: "self", arg: 1, scope: !23688, file: !4276, line: 633, type: !27533)
!27535 = !{!23686}
!27536 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !23686, file: !1839, baseType: !23685, size: 64, align: 64, extraData: i64 0)
!27537 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !23686, file: !1839, baseType: !23684, size: 64, align: 64)
!27538 = !{!27536, !27537}
!27539 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23684, file: !1839, baseType: !8787, size: 64, align: 64, flags: DIFlagPublic)
!27540 = !{!27539}
!27541 = !DITemplateTypeParameter(name: "T", type: !8787)
!27542 = !{!27541}
!27543 = !DIDerivedType(tag: DW_TAG_member, scope: !23687, file: !1839, baseType: !2022, size: 64, align: 64, flags: DIFlagArtificial)
!27544 = !{!2526, !27533}
!27545 = !DISubroutineType(types: !27544)
!27546 = !DISubprogram(name: "is_some<&quiche::stream::Stream<quiche::buffers::DefaultBufFactory>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionRNtNtCs3f36owOmepS_6quiche6stream6StreamE7is_someCslusEaBCZKLp_13quiche_client", scope: !23687, file: !4276, line: 633, type: !27545, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !27542)
!27547 = !{!27534}
!27548 = !DILocation(line: 4253, column: 56, scope: !21416)
!27549 = !DILocation(line: 633, column: 26, scope: !23688, inlinedAt: !27548)
!27550 = !DILocation(line: 0, scope: !21411)
!27551 = !DILexicalBlockFile(scope: !21411, file: !7322, discriminator: 2)
!27552 = !DILocation(line: 4290, column: 25, scope: !27551)
!27553 = !DILocation(line: 0, scope: !22160, inlinedAt: !27552)
end_hunk_1
