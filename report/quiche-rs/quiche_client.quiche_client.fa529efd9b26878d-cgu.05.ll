Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.05?download=true
inline.NumInlined: 369
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsiGRwBGCeC5s_11quiche_apps6client7connectNvNtB4_6common11stdout_sinkECslusEaBCZKLp_13quiche_client:bb.a
    #dbg_value(ptr %.val.i.i1270, !4336, !DIExpression(), !6363)
    #dbg_value(ptr %.val.i.i1270, !4341, !DIExpression(), !6365)
  %i.vn = getelementptr i8, ptr %.val.i.i1270, i64 -1, !dbg !12966 ; 2 uses
    #dbg_value(ptr %i.vn, !4320, !DIExpression(), !6375)
    #dbg_declare(ptr poison, !4464, !DIExpression(), !6377)
    #dbg_value(ptr %i.vn, !4467, !DIExpression(), !6378)
    #dbg_value(ptr %i.vn, !4469, !DIExpression(), !6380)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vn) ], !dbg !12967
  %i.vo = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !12968 ; 2 uses
  store ptr %i.vn, ptr %i.vo, align 8, !dbg !12968, !alias.scope !10917, !noalias !10916
  store i8 3, ptr %i.m, align 8, !dbg !12969, !alias.scope !10917, !noalias !10916
    #dbg_value(ptr %i.m, !4475, !DIExpression(), !6384)
    #dbg_value(ptr %i.vo, !4480, !DIExpression(), !6386)
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECslusEaBCZKLp_13quiche_client.exit unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12970

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECslusEaBCZKLp_13quiche_client.exit: ; preds = %.thread1501, %.thread1501, %bb.he, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12971, !noalias !10916
  br label %bb.hg, !dbg !12956

bb.hg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtB4_2io5error5ErrorEECslusEaBCZKLp_13quiche_client.exit, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !dbg !12906
  br label %bb.hh, !dbg !12972

bb.hh:                                            ; preds = %bb.fp, %bb.hg
    #dbg_value(i64 3, !7653, !DIExpression(), !10918)
    #dbg_value(ptr poison, !8883, !DIExpression(), !10919)
    #dbg_value(ptr poison, !8883, !DIExpression(), !10920)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !8977, !DIExpression(), !8982)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !10922, !DIExpression(), !6389)
    #dbg_value(i8 0, !10925, !DIExpression(), !6389)
  %i.vp = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !12973 ; 2 uses
  %i.vq = icmp ult i64 %i.vp, 6, !dbg !12974
  call void @llvm.assume(i1 %i.vq), !dbg !12974
    #dbg_value(ptr poison, !8884, !DIExpression(), !10927)
    #dbg_value(i8 poison, !8912, !DIExpression(), !10928)
    #dbg_value(i8 poison, !8961, !DIExpression(), !10933)
    #dbg_value(i8 poison, !8911, !DIExpression(), !10934)
  %i.vr = icmp samesign ugt i64 %i.vp, 2, !dbg !12975
  br i1 %i.vr, label %bb.hi, label %bb.hj, !dbg !8889

bb.hi:                                            ; preds = %bb.hh
    #dbg_value(ptr %i.hk, !7655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !dbg !12976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !dbg !12976
  invoke void @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket10local_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fr, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hb)
          to label %bb.hk unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12977

bb.hj:                                            ; preds = %bb.hh, %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !dbg !12978
    #dbg_value(ptr %i.gg, !10936, !DIExpression(), !10954)
    #dbg_value(ptr %i.hp, !10951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10954)
    #dbg_value(i64 1350, !10951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10954)
  store i16 2, ptr %i.az, align 4, !dbg !12979
  invoke void @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection12send_on_pathCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.fm, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %i.gg, ptr noalias nofree noundef nonnull %i.hp, i64 noundef 1350, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.az, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.az)
          to label %bb.hr unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12980

bb.hk:                                            ; preds = %bb.hi
  call void @llvm.experimental.noalias.scope.decl(metadata !10955), !dbg !12981
  call void @llvm.experimental.noalias.scope.decl(metadata !10956), !dbg !12981
    #dbg_declare(ptr %i.fr, !10539, !DIExpression(), !6399)
    #dbg_declare(ptr %i.ak, !10554, !DIExpression(), !6400)
  %i.vs = load i16, ptr %i.fr, align 8, !dbg !12982, !range !9964, !alias.scope !10956, !noundef !1183
  %i.vt = icmp eq i16 %i.vs, 2, !dbg !12982
  br i1 %i.vt, label %bb.hl, label %bb.hp, !dbg !12983, !prof !9779

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !12984, !noalias !10957
  %i.vu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8, !dbg !12984
  %i.vv = load ptr, ptr %i.vu, align 8, !dbg !12984, !alias.scope !10956, !nonnull !1183, !noundef !1183
  store ptr %i.vv, ptr %i.ak, align 8, !dbg !12984, !noalias !10957
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 43, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #20
          to label %bb.hn unwind label %bb.hm, !dbg !12985, !noalias !10958

bb.hm:                                            ; preds = %bb.hl
  %i.vw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #21
          to label %.body1099 unwind label %bb.ho, !dbg !12986, !noalias !10958

bb.hn:                                            ; preds = %bb.hl
  unreachable

bb.ho:                                            ; preds = %bb.hm
  %i.vx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !12987, !noalias !10958
  unreachable, !dbg !12987

bb.hp:                                            ; preds = %bb.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.fs, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fr, i64 32, i1 false), !dbg !12988, !alias.scope !10958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !dbg !12989
    #dbg_value(ptr %i.fs, !7655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10935)
    #dbg_value(ptr %i.gj, !7655, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !dbg !12990
  store ptr %i.hk, ptr %i.fq, align 8, !dbg !12990
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8, !dbg !12990
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4133.0..sroa_idx, align 8, !dbg !12990
  %i.vy = getelementptr inbounds nuw i8, ptr %i.fq, i64 16, !dbg !12990
  store ptr %i.fs, ptr %i.vy, align 8, !dbg !12990
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 24, !dbg !12990
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4137.0..sroa_idx, align 8, !dbg !12990
  %i.vz = getelementptr inbounds nuw i8, ptr %i.fq, i64 32, !dbg !12990
  store ptr %i.gj, ptr %i.vz, align 8, !dbg !12990
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 40, !dbg !12990
  store ptr @_RNvXse_NtCs3f36owOmepS_6quiche6packetNtB5_12ConnectionIdNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.4141.0..sroa_idx, align 8, !dbg !12990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !dbg !8889
  store ptr @54, ptr %i.fp, align 8, !dbg !8889
  %i.wa = getelementptr inbounds nuw i8, ptr %i.fp, i64 8, !dbg !8889
  store i64 19, ptr %i.wa, align 8, !dbg !8889
  %i.wb = getelementptr inbounds nuw i8, ptr %i.fp, i64 16, !dbg !8889
  store ptr @54, ptr %i.wb, align 8, !dbg !8889
  %i.wc = getelementptr inbounds nuw i8, ptr %i.fp, i64 24, !dbg !8889
  store i64 19, ptr %i.wc, align 8, !dbg !8889
  %i.wd = getelementptr inbounds nuw i8, ptr %i.fp, i64 32, !dbg !8889
  store ptr @53, ptr %i.wd, align 8, !dbg !8889
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECslusEaBCZKLp_13quiche_client(ptr noundef nonnull @5, ptr noundef nonnull %i.fq, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fp)
          to label %bb.hq unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8889

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !dbg !8889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !dbg !8889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !dbg !8889
  br label %bb.hj, !dbg !8889

bb.hr:                                            ; preds = %bb.hj
  call void @llvm.experimental.noalias.scope.decl(metadata !10959), !dbg !12991
  call void @llvm.experimental.noalias.scope.decl(metadata !10960), !dbg !12991
    #dbg_declare(ptr %i.fm, !10961, !DIExpression(), !6409)
    #dbg_value(ptr @55, !10966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6410)
    #dbg_value(i64 19, !10966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6410)
    #dbg_declare(ptr %i.l, !10968, !DIExpression(), !6411)
  %i.we = getelementptr inbounds nuw i8, ptr %i.fm, i64 80, !dbg !12992
  %i.wf = load i32, ptr %i.we, align 16, !dbg !12992, !range !10970, !alias.scope !10960, !noundef !1183
  %i.wg = icmp eq i32 %i.wf, -1, !dbg !12992
  br i1 %i.wg, label %bb.hs, label %bb.ht, !dbg !12993, !prof !9779

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !12994, !noalias !10971
  %i.wh = load <2 x i64>, ptr %i.fm, align 16, !dbg !12994, !alias.scope !10960
  store <2 x i64> %i.wh, ptr %i.l, align 16, !dbg !12994, !noalias !10971
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 19, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #24
          to label %.noexc1278 unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !12995

.noexc1278:                                       ; preds = %bb.hs
  unreachable, !dbg !12995

bb.ht:                                            ; preds = %bb.hr
  %.sroa.01450.0.copyload = load i64, ptr %i.fm, align 16, !dbg !12996, !alias.scope !10971 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8, !dbg !12996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !dbg !12997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fn, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, i64 80, i1 false), !dbg !12996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !dbg !12998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !dbg !12999
    #dbg_value(i64 %.sroa.01450.0.copyload, !7658, !DIExpression(), !10972)
    #dbg_value(i64 %.sroa.01450.0.copyload, !8427, !DIExpression(), !8991)
    #dbg_value(i64 %.sroa.01450.0.copyload, !8997, !DIExpression(), !9000)
  store i64 %.sroa.01450.0.copyload, ptr %i.fo, align 8, !dbg !12999
    #dbg_value(ptr %i.hp, !8394, !DIExpression(), !10973)
    #dbg_value(ptr %i.hp, !8406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10974)
    #dbg_value(ptr %i.hp, !8414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10975)
    #dbg_value(ptr %i.hp, !8426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8991)
    #dbg_value(i64 1350, !8406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10974)
    #dbg_value(i64 1350, !8414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10975)
    #dbg_value(i64 1350, !8426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8991)
  %i.wi = icmp ult i64 %.sroa.01450.0.copyload, 1351
  br i1 %i.wi, label %.lr.ph, label %._crit_edge, !dbg !13000, !prof !10976

.lr.ph:                                           ; preds = %bb.ht
  %i.wj = getelementptr inbounds nuw i8, ptr %i.fn, i64 32 ; 2 uses
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.wl = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.wm = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.wn = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.wo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.wp = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.hu, !dbg !13000

bb.hu:                                            ; preds = %.lr.ph, %bb.is
  %i.wq = phi i64 [ %.sroa.01450.0.copyload, %.lr.ph ], [ %.pr1502, %bb.is ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !dbg !13001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %i.wj, i64 32, i1 false), !dbg !13001
  %i.wr = invoke { i64, ptr } @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket7send_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hp, i64 noundef %i.wq, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.fl)
          to label %bb.hv unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !13002 ; 2 uses

._crit_edge:                                      ; preds = %bb.is, %bb.ht
  %.lcssa1840 = phi i64 [ %.sroa.01450.0.copyload, %bb.ht ], [ %.pr1502, %bb.is ], !dbg !13000
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.lcssa1840, i64 noundef 1350, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #20
          to label %bb.t unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13003

bb.hv:                                            ; preds = %bb.hu
  %i.ws = extractvalue { i64, ptr } %i.wr, 0, !dbg !13004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !dbg !13005
  %i.wt = trunc nuw i64 %i.ws to i1, !dbg !13006
  br i1 %i.wt, label %bb.hw, label %bb.it, !dbg !13006

bb.hw:                                            ; preds = %bb.hv
  %i.wu = extractvalue { i64, ptr } %i.wr, 1, !dbg !13004 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wu) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !dbg !8432
  store ptr %i.wu, ptr %i.fk, align 8, !dbg !8432
    #dbg_value(ptr poison, !10977, !DIExpression(), !6418)
    #dbg_value(ptr poison, !10989, !DIExpression(), !6427)
    #dbg_value(ptr %i.wu, !11011, !DIExpression(), !6436)
    #dbg_declare(ptr poison, !11016, !DIExpression(), !6437)
    #dbg_value(i64 1, !11025, !DIExpression(), !6440)
    #dbg_value(i64 1, !11028, !DIExpression(), !6443)
    #dbg_value(i64 -1, !11031, !DIExpression(), !6446)
    #dbg_value(ptr %i.wu, !11034, !DIExpression(), !6449)
    #dbg_value(ptr %i.wu, !11026, !DIExpression(), !6440)
  %i.wv = ptrtoint ptr %i.wu to i64, !dbg !13007  ; 3 uses
    #dbg_value(i64 %i.wv, !11017, !DIExpression(), !6450)
  %i.ww = and i64 %i.wv, 3, !dbg !13008
  switch i64 %i.ww, label %default.unreachable [
    i64 2, label %bb.hx
    i64 3, label %bb.hy
    i64 0, label %bb.hz
    i64 1, label %bb.ia
  ], !dbg !13009, !prof !4347

bb.hx:                                            ; preds = %bb.hw
    #dbg_value(i64 %i.wv, !10982, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6451)
    #dbg_value(i64 %i.wv, !11037, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6456)
  %i.wx = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc1281 unwind label %.loopexit.split-lp1571.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13010

.noexc1281:                                       ; preds = %bb.hx
  %i.wy = lshr i64 %i.wv, 32, !dbg !13011
    #dbg_value(i64 %i.wy, !11037, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6456)
    #dbg_value(i64 %i.wy, !10982, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6451)
  %i.wz = trunc nuw i64 %i.wy to i32, !dbg !13011
    #dbg_value(i32 %i.wz, !10982, !DIExpression(), !6451)
    #dbg_value(i32 %i.wz, !11037, !DIExpression(), !6456)
    #dbg_value(ptr %i.wx, !11042, !DIExpression(), !6457)
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 8, !dbg !13012
  %i.xb = load ptr, ptr %i.xa, align 8, !dbg !13012, !nonnull !1183, !noundef !1183
  %i.xc = invoke noundef i8 %i.xb(i32 noundef %i.wz)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %.loopexit.split-lp1571.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13012, !inline_history !6458

bb.hy:                                            ; preds = %bb.hw
  %i.xd = lshr i64 %i.wv, 32, !dbg !13013
    #dbg_value(i64 %i.xd, !11019, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6459)
    #dbg_value(i64 %i.xd, !4349, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6461)
  %i.xe = icmp ult ptr %i.wu, inttoptr (i64 188978561024 to ptr), !dbg !13014
  %switch.idx.cast.i.i.i = trunc i64 %i.xd to i8  ; 2 uses
    #dbg_value(i8 poison, !11056, !DIExpression(), !6466)
    #dbg_value(ptr poison, !11064, !DIExpression(), !6467)
  %i.xf = icmp ne i8 %switch.idx.cast.i.i.i, -1, !dbg !13015
  call void @llvm.assume(i1 %i.xe), !dbg !13016
  call void @llvm.assume(i1 %i.xf), !dbg !13016
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !13017

bb.hz:                                            ; preds = %bb.hw
    #dbg_value(ptr %i.wu, !10986, !DIExpression(), !6468)
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wu, i64 16, !dbg !13018
  %i.xh = load i8, ptr %i.xg, align 8, !dbg !13018, !range !11067, !noundef !1183
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !13019

bb.ia:                                            ; preds = %bb.hw
    #dbg_value(ptr %i.wu, !11029, !DIExpression(), !6443)
    #dbg_value(ptr %i.wu, !11032, !DIExpression(), !6446)
    #dbg_value(ptr %i.wu, !10984, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !6469)
  %i.xi = getelementptr i8, ptr %i.wu, i64 31, !dbg !13020
  %i.xj = load i8, ptr %i.xi, align 8, !dbg !13020, !range !11067, !noundef !1183
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !13021

.loopexit.split-lp1571.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc1281, %bb.hx, %bb.iq, %bb.ih, %bb.ib
  %lpad.loopexit.split-lp2931 = landingpad { ptr, i32 }
          cleanup
  br label %.body1108

.body1108:                                        ; preds = %.loopexit.split-lp1571.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.in
  %eh.lpad-body1109 = phi { ptr, i32 } [ %i.yf, %bb.in ], [ %lpad.loopexit.split-lp2931, %.loopexit.split-lp1571.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fk) #21
          to label %.body1099 unwind label %bb.am, !dbg !13022

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ia, %bb.hz, %bb.hy, %.noexc1281
  %.sroa.0.0.i1279 = phi i8 [ %i.xj, %bb.ia ], [ %switch.idx.cast.i.i.i, %bb.hy ], [ %i.xh, %bb.hz ], [ %i.xc, %.noexc1281 ], !dbg !13023
    #dbg_value(ptr poison, !9006, !DIExpression(), !11069)
  %i.xk = icmp eq i8 %.sroa.0.0.i1279, 13, !dbg !11069
  br i1 %i.xk, label %bb.ig, label %bb.ib, !dbg !9008

bb.ib:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
    #dbg_value(ptr %i.fk, !7669, !DIExpression(), !11070)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe), !dbg !13024
  store ptr %i.fk, ptr %i.fe, align 8, !dbg !13024
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 8, !dbg !13024
  store ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr %.sroa.4153.0..sroa_idx, align 8, !dbg !13024
    #dbg_value(ptr @7, !9997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11073)
    #dbg_value(ptr %i.fe, !9997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11073)
    #dbg_value(ptr null, !9968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6471)
    #dbg_value(i64 undef, !9968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6471)
    #dbg_value(ptr poison, !9990, !DIExpression(), !6471)
    #dbg_declare(ptr poison, !9991, !DIExpression(), !6472)
    #dbg_value(ptr poison, !10003, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6474)
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ff, ptr noundef nonnull @7, ptr noundef nonnull %i.fe)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1284 unwind label %.loopexit.split-lp1571.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13025

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1284: ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !dbg !13026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !dbg !13027
  call void @llvm.experimental.noalias.scope.decl(metadata !11074), !dbg !13022
    #dbg_value(ptr %i.fk, !4293, !DIExpression(), !6478)
  %.val.i1285 = load ptr, ptr %i.fk, align 8, !dbg !13028, !alias.scope !11074, !nonnull !1183, !noundef !1183 ; 3 uses
    #dbg_value(ptr poison, !4300, !DIExpression(), !6480)
    #dbg_value(ptr poison, !4307, !DIExpression(), !6482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !13029, !noalias !11074
    #dbg_value(ptr %.val.i1285, !4310, !DIExpression(), !6484)
    #dbg_declare(ptr poison, !4314, !DIExpression(), !6485)
    #dbg_value(i64 1, !4325, !DIExpression(), !6487)
    #dbg_value(i64 1, !4333, !DIExpression(), !6489)
    #dbg_value(i64 -1, !4338, !DIExpression(), !6491)
    #dbg_value(ptr %.val.i1285, !4343, !DIExpression(), !6493)
    #dbg_value(ptr %.val.i1285, !4331, !DIExpression(), !6487)
  %i.xl = ptrtoint ptr %.val.i1285 to i64, !dbg !13030 ; 2 uses
    #dbg_value(i64 %i.xl, !4315, !DIExpression(), !6494)
  %i.xm = and i64 %i.xl, 3, !dbg !13031
  switch i64 %i.xm, label %default.unreachable [
    i64 2, label %bb.ie
    i64 3, label %bb.ic
    i64 0, label %bb.ie
    i64 1, label %bb.id
  ], !dbg !13032, !prof !4347

bb.ic:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1284
    #dbg_value(i64 %i.xl, !4317, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6495)
    #dbg_value(i64 %i.xl, !4349, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6497)
  %i.xn = icmp ult ptr %.val.i1285, inttoptr (i64 188978561024 to ptr), !dbg !13033
    #dbg_value(i8 poison, !4452, !DIExpression(), !6499)
    #dbg_value(ptr poison, !4461, !DIExpression(), !6500)
  %i.xo = and i64 %i.xl, 1095216660480, !dbg !13034
  %i.xp = icmp ne i64 %i.xo, 1095216660480, !dbg !13034
  call void @llvm.assume(i1 %i.xn), !dbg !13035
  call void @llvm.assume(i1 %i.xp), !dbg !13035
  br label %bb.ie, !dbg !13036

bb.id:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1284
    #dbg_value(ptr %.val.i1285, !4336, !DIExpression(), !6489)
    #dbg_value(ptr %.val.i1285, !4341, !DIExpression(), !6491)
  %i.xq = getelementptr i8, ptr %.val.i1285, i64 -1, !dbg !13037 ; 2 uses
    #dbg_value(ptr %i.xq, !4320, !DIExpression(), !6501)
    #dbg_declare(ptr poison, !4464, !DIExpression(), !6503)
    #dbg_value(ptr %i.xq, !4467, !DIExpression(), !6504)
    #dbg_value(ptr %i.xq, !4469, !DIExpression(), !6506)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xq) ], !dbg !13038
  %i.xr = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13039 ; 2 uses
  store ptr %i.xq, ptr %i.xr, align 8, !dbg !13039, !alias.scope !11075, !noalias !11074
  store i8 3, ptr %i.k, align 8, !dbg !13040, !alias.scope !11075, !noalias !11074
    #dbg_value(ptr %i.k, !4475, !DIExpression(), !6510)
    #dbg_value(ptr %i.xr, !4480, !DIExpression(), !6512)
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.xr)
          to label %bb.ie unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13041

bb.ie:                                            ; preds = %bb.ic, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1284, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1284, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13042, !noalias !11074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !dbg !13022
  br label %bb.if, !dbg !13043

bb.if:                                            ; preds = %bb.pd, %bb.ie
  %.sroa.20.6 = phi ptr [ undef, %bb.ie ], [ %.sroa.20.11, %bb.pd ], !dbg !12737 ; 11 uses
  %.sroa.01425.6 = phi ptr [ null, %bb.ie ], [ %.sroa.01425.11, %bb.pd ], !dbg !12738 ; 9 uses
  %.sroa.082.6 = phi i8 [ 1, %bb.ie ], [ %.sroa.082.15, %bb.pd ], !dbg !12738 ; 6 uses
    #dbg_value(ptr %.sroa.01425.6, !7626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10424)
    #dbg_value(ptr %.sroa.20.6, !7626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10424)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !dbg !13044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !dbg !13044
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3f36owOmepS_6quiche10ConnectionECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 16 dereferenceable(15552) %i.gg)
          to label %bb.tr unwind label %bb.ed, !dbg !12811

bb.ig:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
    #dbg_value(i64 5, !7662, !DIExpression(), !11077)
    #dbg_value(ptr poison, !8883, !DIExpression(), !11078)
    #dbg_value(ptr poison, !8883, !DIExpression(), !11079)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !8977, !DIExpression(), !9025)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !10922, !DIExpression(), !6514)
    #dbg_value(i8 0, !10925, !DIExpression(), !6514)
  %i.xs = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13045 ; 2 uses
  %i.xt = icmp ult i64 %i.xs, 6, !dbg !13046
  call void @llvm.assume(i1 %i.xt), !dbg !13046
    #dbg_value(ptr poison, !8884, !DIExpression(), !11080)
    #dbg_value(i8 poison, !8914, !DIExpression(), !11081)
    #dbg_value(i8 poison, !8961, !DIExpression(), !11086)
    #dbg_value(i8 poison, !8911, !DIExpression(), !11087)
  %i.xu = icmp samesign ugt i64 %i.xs, 4, !dbg !13047
  br i1 %i.xu, label %bb.ih, label %bb.ii, !dbg !9010

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !dbg !13048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi), !dbg !13048
  invoke void @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket10local_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fi, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.hb)
          to label %bb.il unwind label %.loopexit.split-lp1571.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13049

bb.ii:                                            ; preds = %bb.ig, %bb.ir
  call void @llvm.experimental.noalias.scope.decl(metadata !11088), !dbg !13022
    #dbg_value(ptr %i.fk, !4293, !DIExpression(), !6518)
  %.val.i1288 = load ptr, ptr %i.fk, align 8, !dbg !13050, !alias.scope !11088, !nonnull !1183, !noundef !1183 ; 3 uses
    #dbg_value(ptr poison, !4300, !DIExpression(), !6520)
    #dbg_value(ptr poison, !4307, !DIExpression(), !6522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13051, !noalias !11088
    #dbg_value(ptr %.val.i1288, !4310, !DIExpression(), !6524)
    #dbg_declare(ptr poison, !4314, !DIExpression(), !6525)
    #dbg_value(i64 1, !4325, !DIExpression(), !6527)
    #dbg_value(i64 1, !4333, !DIExpression(), !6529)
end_hunk_0
begin_hunk_1_@_RINvNtCsiGRwBGCeC5s_11quiche_apps6client7connectNvNtB4_6common11stdout_sinkECslusEaBCZKLp_13quiche_client:bb.a
bb.jn:                                            ; preds = %._crit_edge1851, %bb.jo
    #dbg_value(ptr %i.gg, !11261, !DIExpression(), !11265)
  %i.aev = load i8, ptr %i.aal, align 4, !dbg !13117, !range !10188, !noundef !1183
  %i.aew = trunc nuw i8 %i.aev to i1, !dbg !13117
  br i1 %i.aew, label %bb.qd, label %bb.jp, !dbg !13118

bb.jo:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !dbg !9073
  br label %bb.jn, !dbg !9073

bb.jp:                                            ; preds = %bb.jn
    #dbg_value(ptr %i.gg, !11266, !DIExpression(), !11270)
  %i.aex = load i8, ptr %i.aam, align 2, !dbg !13119, !range !10188, !noundef !1183
  %i.aey = trunc nuw i8 %i.aex to i1, !dbg !13119
  br i1 %i.aey, label %bb.jr, label %bb.jq, !dbg !13120

bb.jq:                                            ; preds = %bb.jp
    #dbg_value(ptr %i.gg, !11112, !DIExpression(), !11272)
  %i.aez = invoke noundef zeroext i1 @_RNvMs_NtNtCs3f36owOmepS_6quiche3tls9boringsslNtB6_9Handshake16is_in_early_data(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.yt)
          to label %bb.js unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !13121

bb.jr:                                            ; preds = %bb.js, %bb.jp
  %i.afa = load i8, ptr %i.kq, align 1, !dbg !13122, !range !10188, !noundef !1183
  %i.afb = trunc nuw i8 %i.afa to i1, !dbg !13122
  br i1 %i.afb, label %bb.jv, label %bb.ju, !dbg !13122

bb.js:                                            ; preds = %bb.jq
  br i1 %i.aez, label %bb.jr, label %bb.jt, !dbg !13123

bb.jt:                                            ; preds = %bb.kk, %bb.jv, %bb.ju, %bb.js
  %.sroa.20.8 = phi ptr [ %.sroa.20.7, %bb.jv ], [ %.sroa.20.9, %bb.kk ], [ %.sroa.20.7, %bb.ju ], [ %.sroa.20.7, %bb.js ], !dbg !12740 ; 33 uses
  %.sroa.01425.8 = phi ptr [ %.sroa.01425.7, %bb.jv ], [ %.sroa.01425.9, %bb.kk ], [ %.sroa.01425.7, %bb.ju ], [ %.sroa.01425.7, %bb.js ], !dbg !12740 ; 32 uses
  %.sroa.034.1 = phi i1 [ %.sroa.034.0, %bb.jv ], [ %.sroa.034.2, %bb.kk ], [ true, %bb.ju ], [ %.sroa.034.0, %bb.js ], !dbg !10424
    #dbg_value(ptr %.sroa.01425.8, !7626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10424)
    #dbg_value(ptr %.sroa.20.8, !7626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10424)
    #dbg_value(i8 poison, !7627, !DIExpression(), !10425)
    #dbg_value(ptr undef, !8305, !DIExpression(), !8321)
  %.not1022 = icmp eq ptr %.sroa.01425.8, null, !dbg !13124 ; 2 uses
  br i1 %.not1022, label %.preheader2669, label %bb.kp, !dbg !13125

bb.ju:                                            ; preds = %bb.jr
  br i1 %.sroa.034.0, label %bb.jt, label %bb.jw, !dbg !13126

bb.jv:                                            ; preds = %bb.jr
  %.not2 = xor i1 %.sroa.043.0, true, !dbg !13127
  %or.cond4 = select i1 %.not2, i1 true, i1 %.sroa.034.0, !dbg !13127
  br i1 %or.cond4, label %bb.jt, label %bb.jw, !dbg !13127

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !dbg !13128
    #dbg_value(ptr %i.gg, !11273, !DIExpression(), !11279)
    #dbg_value(ptr %i.gg, !11281, !DIExpression(DW_OP_plus_uconst, 14720, DW_OP_stack_value), !11285)
    #dbg_value(ptr %i.gg, !10513, !DIExpression(DW_OP_plus_uconst, 14720, DW_OP_stack_value), !11287)
    #dbg_value(ptr %i.gg, !9927, !DIExpression(DW_OP_plus_uconst, 14720, DW_OP_stack_value), !11290)
    #dbg_value(ptr %i.gg, !9929, !DIExpression(DW_OP_plus_uconst, 14720, DW_OP_stack_value), !11293)
  %i.afc = load ptr, ptr %i.aan, align 8, !dbg !13129, !nonnull !1183, !noundef !1183
  %i.afd = load i64, ptr %i.aao, align 16, !dbg !13130, !noundef !1183
    #dbg_value(ptr %i.afc, !7752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11300)
    #dbg_value(i64 %i.afd, !7752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11300)
  store ptr %i.afc, ptr %i.dq, align 8, !dbg !13131
  store i64 %i.afd, ptr %i.aap, align 8, !dbg !13131
    #dbg_value(ptr @67, !11301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11307)
    #dbg_value(i64 2, !11301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11307)
    #dbg_value(ptr %i.dq, !11304, !DIExpression(), !11307)
  %i.afe = invoke noundef zeroext i1 @_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpRShNtB5_13SliceContains14slice_containsCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @67, i64 noundef 2)
          to label %bb.jx unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !13132

bb.jx:                                            ; preds = %bb.jw
  br i1 %i.afe, label %bb.jz, label %bb.jy, !dbg !13133

bb.jy:                                            ; preds = %bb.jx
    #dbg_value(ptr @69, !11301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11309)
    #dbg_value(i64 1, !11301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11309)
    #dbg_value(ptr %i.dq, !11304, !DIExpression(), !11309)
  %i.aff = invoke noundef zeroext i1 @_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpRShNtB5_13SliceContains14slice_containsCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @69, i64 noundef 1)
          to label %bb.ka unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !13134

bb.jz:                                            ; preds = %bb.jx
    #dbg_value(ptr %1, !9870, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11311)
    #dbg_value(ptr %1, !9877, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11314)
    #dbg_value(ptr %1, !9882, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11317)
  %i.afg = load ptr, ptr %i.ik, align 8, !dbg !13135, !nonnull !1183, !noundef !1183
  %i.afh = load i64, ptr %i.im, align 8, !dbg !13136, !noundef !1183
  %i.afi = load i64, ptr %i.aas, align 8, !dbg !13137, !noundef !1183
    #dbg_value(ptr %i.ho, !9365, !DIExpression(), !11324)
    #dbg_value(ptr %i.ho, !11325, !DIExpression(), !11328)
  %i.afj = load ptr, ptr %i.ho, align 8, !dbg !13138, !nonnull !1183, !noundef !1183 ; 2 uses
    #dbg_value(ptr %i.afj, !9373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11330)
    #dbg_value(ptr %i.afj, !11331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11334)
    #dbg_value(ptr poison, !9373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11330)
    #dbg_value(ptr poison, !11331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11334)
    #dbg_value(ptr %i.afj, !11335, !DIExpression(), !11338)
  %i.afk = load i64, ptr %i.afj, align 8, !dbg !13139, !noundef !1183 ; 2 uses
    #dbg_value(i64 %i.afk, !9374, !DIExpression(), !11339)
    #dbg_value(i64 %i.afk, !9354, !DIExpression(), !9359)
  %i.afl = icmp ne i64 %i.afk, 0, !dbg !13140
    #dbg_value(i1 true, !10503, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11341)
  call void @llvm.assume(i1 %i.afl), !dbg !13141
  %i.afm = add i64 %i.afk, 1, !dbg !13142         ; 2 uses
    #dbg_value(i64 %i.afm, !9375, !DIExpression(), !11342)
    #dbg_value(i64 %i.afm, !11343, !DIExpression(), !11347)
    #dbg_value(i64 %i.afm, !11348, !DIExpression(), !11352)
    #dbg_value(ptr %i.afj, !11344, !DIExpression(), !11353)
    #dbg_value(ptr %i.afj, !11349, !DIExpression(), !11354)
  store i64 %i.afm, ptr %i.afj, align 8, !dbg !13143
  %i.afn = icmp eq i64 %i.afm, 0, !dbg !13144
    #dbg_value(i1 %i.afn, !11357, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11363)
  br i1 %i.afn, label %bb.kl, label %bb.km, !dbg !13145, !prof !9779

bb.ka:                                            ; preds = %bb.jy
  br i1 %i.aff, label %bb.kb, label %bb.kk, !dbg !13146

bb.kb:                                            ; preds = %bb.ka
  %i.afo = load i8, ptr %i.pe, align 1, !dbg !13147, !range !10188, !noundef !1183
  %i.afp = trunc nuw i8 %i.afo to i1, !dbg !13147
  br i1 %i.afp, label %bb.kd, label %bb.kc, !dbg !13147

bb.kc:                                            ; preds = %bb.kb
  store i64 -1, ptr %i.dp, align 8, !dbg !13148
  br label %bb.ke, !dbg !13149

bb.kd:                                            ; preds = %bb.kb
  %i.afq = load i64, ptr %i.aaq, align 8, !dbg !13150, !noundef !1183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !dbg !13151
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aar)
          to label %bb.kf unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !13152

bb.ke:                                            ; preds = %bb.kf, %bb.kc
    #dbg_value(ptr %1, !9870, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11365)
    #dbg_value(ptr %1, !9877, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11368)
    #dbg_value(ptr %1, !9882, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11371)
  %i.afr = load ptr, ptr %i.ik, align 8, !dbg !13153, !nonnull !1183, !noundef !1183
  %i.afs = load i64, ptr %i.im, align 8, !dbg !13154, !noundef !1183
  %i.aft = load i64, ptr %i.aas, align 8, !dbg !13155, !noundef !1183
    #dbg_value(ptr %1, !11380, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11389)
    #dbg_value(ptr %1, !11390, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11395)
    #dbg_value(ptr %1, !11396, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !11404)
  %i.afu = load ptr, ptr %i.aat, align 8, !dbg !13156, !nonnull !1183, !noundef !1183
  %i.afv = load i64, ptr %i.aau, align 8, !dbg !13157, !noundef !1183
    #dbg_value(ptr %1, !9910, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !11427)
    #dbg_value(ptr %1, !9914, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !11430)
  %i.afw = load ptr, ptr %i.aav, align 8, !dbg !13158, !nonnull !1183, !noundef !1183
  %i.afx = load i64, ptr %i.aaw, align 8, !dbg !13159, !noundef !1183
  %i.afy = load i8, ptr %i.aax, align 8, !dbg !13160, !range !10188, !noundef !1183
  %i.afz = load i64, ptr %2, align 8, !dbg !13161, !range !4205, !noundef !1183
  %i.aga = load i64, ptr %i.aay, align 8, !dbg !13161
  %i.agb = load i64, ptr %i.aaz, align 8, !dbg !13162, !range !4205, !noundef !1183
  %i.agc = load i64, ptr %i.aba, align 8, !dbg !13162
  %i.agd = load i64, ptr %i.abb, align 8, !dbg !13163, !range !4205, !noundef !1183
  %i.age = load i64, ptr %i.abc, align 8, !dbg !13163
  %i.agf = load i64, ptr %1, align 8, !dbg !13164, !range !4205, !noundef !1183
  %i.agg = load i64, ptr %i.abd, align 8, !dbg !13164
    #dbg_value(ptr %i.ho, !9365, !DIExpression(), !11441)
    #dbg_value(ptr %i.ho, !11325, !DIExpression(), !11443)
  %i.agh = load ptr, ptr %i.ho, align 8, !dbg !13165, !nonnull !1183, !noundef !1183 ; 2 uses
    #dbg_value(ptr %i.agh, !9373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11446)
    #dbg_value(ptr %i.agh, !11331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11449)
    #dbg_value(ptr poison, !9373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11446)
    #dbg_value(ptr poison, !11331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11449)
    #dbg_value(ptr %i.agh, !11335, !DIExpression(), !11452)
  %i.agi = load i64, ptr %i.agh, align 8, !dbg !13166, !noundef !1183 ; 2 uses
    #dbg_value(i64 %i.agi, !9376, !DIExpression(), !11453)
    #dbg_value(i64 %i.agi, !9354, !DIExpression(), !9386)
  %i.agj = icmp ne i64 %i.agi, 0, !dbg !13167
    #dbg_value(i1 true, !10503, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11455)
  call void @llvm.assume(i1 %i.agj), !dbg !13168
  %i.agk = add i64 %i.agi, 1, !dbg !13169         ; 2 uses
    #dbg_value(i64 %i.agk, !9377, !DIExpression(), !11456)
    #dbg_value(i64 %i.agk, !11343, !DIExpression(), !11459)
    #dbg_value(i64 %i.agk, !11348, !DIExpression(), !11462)
    #dbg_value(ptr %i.agh, !11344, !DIExpression(), !11463)
    #dbg_value(ptr %i.agh, !11349, !DIExpression(), !11464)
  store i64 %i.agk, ptr %i.agh, align 8, !dbg !13170
  %i.agl = icmp eq i64 %i.agk, 0, !dbg !13171
    #dbg_value(i1 %i.agl, !11357, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11468)
  br i1 %i.agl, label %bb.kg, label %bb.kh, !dbg !13172, !prof !9779

bb.kf:                                            ; preds = %bb.kd
    #dbg_value(i64 %i.afq, !11470, !DIExpression(), !6616)
    #dbg_declare(ptr %i.do, !11474, !DIExpression(), !6617)
    #dbg_value(i64 0, !11475, !DIExpression(), !6616)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false), !dbg !13173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.51463.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !13173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !dbg !13174
  store i64 %i.afq, ptr %.sroa.41462.0..sroa_idx, align 8, !dbg !13175
  br label %bb.ke, !dbg !13149

bb.kg:                                            ; preds = %bb.ke
  call void @llvm.trap(), !dbg !13176
  unreachable, !dbg !13176

bb.kh:                                            ; preds = %bb.ke
  %i.agm = trunc nuw i8 %i.afy to i1, !dbg !13160
  %i.agn = load ptr, ptr %i.ho, align 8, !dbg !13177, !nonnull !1183, !noundef !1183
  %i.ago = load ptr, ptr %i.hu, align 8, !dbg !13177, !nonnull !1183, !align !4521, !noundef !1183
  %i.agp = invoke { ptr, ptr } @_RNvMs2_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB5_9Http3Conn9with_urls(ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.afr, i64 noundef %i.afs, i64 noundef %i.aft, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.afu, i64 noundef %i.afv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abe, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afw, i64 noundef %i.afx, i1 noundef zeroext %i.agm, i64 noundef %i.afz, i64 %i.aga, i64 noundef %i.agb, i64 %i.agc, i64 noundef %i.agd, i64 %i.age, i64 noundef %i.agf, i64 %i.agg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.dp, ptr noundef nonnull %i.agn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ago)
          to label %bb.ki unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !13178 ; 2 uses

bb.ki:                                            ; preds = %bb.kh
  %i.agq = extractvalue { ptr, ptr } %i.agp, 0, !dbg !13178 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agq) ], !dbg !13179
  %i.agr = extractvalue { ptr, ptr } %i.agp, 1, !dbg !13178 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agr) ], !dbg !13179
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsiGRwBGCeC5s_11quiche_apps6common8HttpConnEL_EEECslusEaBCZKLp_13quiche_client(ptr %.sroa.01425.7, ptr %.sroa.20.7)
          to label %bb.kk unwind label %bb.kj, !dbg !13180

bb.kj:                                            ; preds = %bb.ki
  %i.ags = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.agq, !7626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10424)
    #dbg_value(ptr %i.agr, !7626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10424)
  br label %.body1099, !dbg !13180

bb.kk:                                            ; preds = %bb.kn, %bb.ki, %bb.ka
  %.sroa.20.9 = phi ptr [ %i.agr, %bb.ki ], [ %.sroa.20.7, %bb.ka ], [ %i.agx, %bb.kn ], !dbg !12740
  %.sroa.01425.9 = phi ptr [ %i.agq, %bb.ki ], [ %.sroa.01425.7, %bb.ka ], [ %i.agw, %bb.kn ], !dbg !12740
  %.sroa.034.2 = phi i1 [ true, %bb.ki ], [ false, %bb.ka ], [ true, %bb.kn ], !dbg !10424
    #dbg_value(ptr %.sroa.01425.9, !7626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10424)
    #dbg_value(ptr %.sroa.20.9, !7626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10424)
    #dbg_value(i8 poison, !7627, !DIExpression(), !10425)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !dbg !13181
  br label %bb.jt, !dbg !13182

bb.kl:                                            ; preds = %bb.jz
  call void @llvm.trap(), !dbg !13183
  unreachable, !dbg !13183

bb.km:                                            ; preds = %bb.jz
  %i.agt = load ptr, ptr %i.ho, align 8, !dbg !13184, !nonnull !1183, !noundef !1183
  %i.agu = load ptr, ptr %i.hu, align 8, !dbg !13184, !nonnull !1183, !align !4521, !noundef !1183
  %i.agv = invoke { ptr, ptr } @_RNvMs_NtCsiGRwBGCeC5s_11quiche_apps6commonNtB4_10Http09Conn9with_urls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.afg, i64 noundef %i.afh, i64 noundef %i.afi, ptr noundef nonnull %i.agt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.agu)
          to label %bb.kn unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !13185 ; 2 uses

bb.kn:                                            ; preds = %bb.km
  %i.agw = extractvalue { ptr, ptr } %i.agv, 0, !dbg !13185 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agw) ], !dbg !13186
  %i.agx = extractvalue { ptr, ptr } %i.agv, 1, !dbg !13185 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agx) ], !dbg !13186
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsiGRwBGCeC5s_11quiche_apps6common8HttpConnEL_EEECslusEaBCZKLp_13quiche_client(ptr %.sroa.01425.7, ptr %.sroa.20.7)
          to label %bb.kk unwind label %bb.ko, !dbg !13187

bb.ko:                                            ; preds = %bb.kn
  %i.agy = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.agw, !7626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10424)
    #dbg_value(ptr %i.agx, !7626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10424)
  br label %.body1099, !dbg !13187

bb.kp:                                            ; preds = %bb.jt
    #dbg_value(ptr undef, !7754, !DIExpression(), !8304)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.8) ]
  %i.agz = getelementptr inbounds nuw i8, ptr %.sroa.20.8, i64 24, !dbg !13188
  %i.aha = load ptr, ptr %i.agz, align 8, !dbg !13188, !invariant.load !1183, !nonnull !1183
  invoke void %i.aha(ptr noundef nonnull %.sroa.01425.8, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %i.gg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abf)
          to label %bb.kq unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !13189

bb.kq:                                            ; preds = %bb.kp
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.20.8, i64 32, !dbg !13190
  %i.ahc = load ptr, ptr %i.ahb, align 8, !dbg !13190, !invariant.load !1183, !nonnull !1183
  invoke void %i.ahc(ptr noundef nonnull %.sroa.01425.8, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %i.gg, ptr noalias nofree noundef nonnull %i.hq, i64 noundef 65535, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fb)
          to label %.preheader2669 unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !13191

.preheader2669:                                   ; preds = %bb.kq, %bb.jt
  br label %.outer, !dbg !13192

.outer:                                           ; preds = %.preheader2669, %bb.lc
  %.sroa.043.1.ph = phi i1 [ %.sroa.043.0, %.preheader2669 ], [ true, %bb.lc ]
  br label %bb.kr, !dbg !13192

bb.kr:                                            ; preds = %.backedge2676, %.outer
    #dbg_value(i8 poison, !7682, !DIExpression(), !11111)
    #dbg_value(ptr %i.gg, !11487, !DIExpression(), !11490)
  invoke void @_RNvMs2_NtCs3f36owOmepS_6quiche4pathNtB5_7PathMap9pop_event(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.dn, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.abg)
          to label %bb.ks unwind label %.thread1509.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !13192

bb.ks:                                            ; preds = %bb.kr
  %i.ahd = load i16, ptr %i.dn, align 8, !dbg !13193, !range !11491, !noundef !1183 ; 5 uses
  %.not1023 = icmp eq i16 %i.ahd, -1, !dbg !13193
  br i1 %.not1023, label %.preheader, label %bb.kt, !dbg !13194

bb.kt:                                            ; preds = %bb.ks
    #dbg_value(i16 %i.ahd, !7755, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !11493)
    #dbg_value(i64 poison, !7755, !DIExpression(DW_OP_LLVM_fragment, 1024, 64), !11493)
  %i.ahe = icmp ne i16 %i.ahd, 6, !dbg !13195
  call void @llvm.assume(i1 %i.ahe), !dbg !13195
  %i.ahf = add nsw i16 %i.ahd, -2, !dbg !13195
  %i.ahg = icmp samesign ugt i16 %i.ahd, 1, !dbg !13195
  %narrow = select i1 %i.ahg, i16 %i.ahf, i16 4, !dbg !13195
  switch i16 %narrow, label %bb.ku [
    i16 0, label %.invoke2633
    i16 1, label %bb.kw
    i16 2, label %bb.ld
    i16 3, label %bb.lh
    i16 4, label %bb.ll
    i16 5, label %bb.kv
  ], !dbg !13196, !prof !11495

bb.ku:                                            ; preds = %bb.kt
  unreachable, !dbg !13197

.invoke2633:                                      ; preds = %bb.kt, %bb.kv
  %i.ahh = phi ptr [ @77, %bb.kv ], [ @71, %bb.kt ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahh) #20
          to label %.cont unwind label %.loopexit.split-lp1531.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !11493

.cont:                                            ; preds = %.invoke2633
  unreachable

bb.kv:                                            ; preds = %bb.kt
  br label %.invoke2633, !dbg !13198

bb.kw:                                            ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !dbg !13199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dm, ptr noundef nonnull align 4 dereferenceable(32) %i.ady, i64 32, i1 false), !dbg !13199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !13200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dl, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.0..sroa_idx, i64 32, i1 false), !dbg !13200
    #dbg_value(i64 3, !7759, !DIExpression(), !11497)
    #dbg_value(ptr poison, !8883, !DIExpression(), !11498)
    #dbg_value(ptr poison, !8883, !DIExpression(), !11499)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !8977, !DIExpression(), !9435)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !10922, !DIExpression(), !6624)
    #dbg_value(i8 0, !10925, !DIExpression(), !6624)
  %i.ahi = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13201 ; 2 uses
  %i.ahj = icmp ult i64 %i.ahi, 6, !dbg !13202
  call void @llvm.assume(i1 %i.ahj), !dbg !13202
    #dbg_value(ptr poison, !8884, !DIExpression(), !11500)
    #dbg_value(i8 poison, !8937, !DIExpression(), !11501)
    #dbg_value(i8 poison, !8961, !DIExpression(), !11506)
    #dbg_value(i8 poison, !8911, !DIExpression(), !11507)
  %i.ahk = icmp samesign ugt i64 %i.ahi, 2, !dbg !13203
  br i1 %i.ahk, label %bb.kx, label %bb.ky, !dbg !9420

bb.kx:                                            ; preds = %bb.kw
    #dbg_value(ptr %i.dm, !7761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11508)
    #dbg_value(ptr %i.dl, !7761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !dbg !13204
  store ptr %i.dm, ptr %i.dk, align 8, !dbg !13204
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4234.0..sroa_idx, align 8, !dbg !13204
  store ptr %i.dl, ptr %i.abx, align 8, !dbg !13204
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4238.0..sroa_idx, align 8, !dbg !13204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !9420
  store ptr @54, ptr %i.dj, align 8, !dbg !9420
  store i64 19, ptr %i.aby, align 8, !dbg !9420
  store ptr @54, ptr %i.abz, align 8, !dbg !9420
  store i64 19, ptr %i.aca, align 8, !dbg !9420
  store ptr @72, ptr %i.acb, align 8, !dbg !9420
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECslusEaBCZKLp_13quiche_client(ptr noundef nonnull @17, ptr noundef nonnull %i.dk, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dj)
          to label %bb.kz unwind label %.thread1509.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !9420

bb.ky:                                            ; preds = %bb.kw, %bb.kz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !13205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !13205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ay, ptr noundef nonnull align 4 dereferenceable(32) %i.dm, i64 32, i1 false), !dbg !13205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !13205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ax, ptr noundef nonnull align 4 dereferenceable(32) %i.dl, i64 32, i1 false), !dbg !13205
  invoke void @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection7migrateCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.di, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %i.gg, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.ay, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.ax)
          to label %bb.la unwind label %.thread1509.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !13206

bb.kz:                                            ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !9420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !9420
  br label %bb.ky, !dbg !9420

bb.la:                                            ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !13205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !13205
  call void @llvm.experimental.noalias.scope.decl(metadata !11509), !dbg !13207
    #dbg_declare(ptr %i.di, !11510, !DIExpression(), !6635)
    #dbg_declare(ptr %i.aa, !11525, !DIExpression(), !6636)
  %i.ahl = load i64, ptr %i.di, align 8, !dbg !13208, !range !11527, !alias.scope !11509, !noundef !1183 ; 2 uses
  %.not.i1142 = icmp eq i64 %i.ahl, -1, !dbg !13208
  br i1 %.not.i1142, label %bb.lc, label %bb.lb, !dbg !13209, !prof !4196

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !13210, !noalias !11528
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.di, i64 8, !dbg !13210
  %i.ahn = load i64, ptr %i.ahm, align 8, !dbg !13210, !alias.scope !11509
  store i64 %i.ahl, ptr %i.aa, align 8, !dbg !13210, !noalias !11528
  br label %.invoke2634, !dbg !13211

bb.lc:                                            ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !13212
    #dbg_value(i8 1, !7682, !DIExpression(), !11111)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !dbg !13213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !dbg !13213
  br label %.outer, !dbg !13213

bb.ld:                                            ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !dbg !13214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dh, ptr noundef nonnull align 4 dereferenceable(32) %i.adx, i64 32, i1 false), !dbg !13214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !13215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dg, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.8.0..sroa_idx, i64 32, i1 false), !dbg !13215
    #dbg_value(i64 3, !7767, !DIExpression(), !11529)
    #dbg_value(ptr poison, !8883, !DIExpression(), !11530)
    #dbg_value(ptr poison, !8883, !DIExpression(), !11531)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !8977, !DIExpression(), !9445)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !10922, !DIExpression(), !6639)
    #dbg_value(i8 0, !10925, !DIExpression(), !6639)
  %i.aho = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13216 ; 2 uses
  %i.ahp = icmp ult i64 %i.aho, 6, !dbg !13217
  call void @llvm.assume(i1 %i.ahp), !dbg !13217
    #dbg_value(ptr poison, !8884, !DIExpression(), !11532)
    #dbg_value(i8 poison, !8938, !DIExpression(), !11533)
    #dbg_value(i8 poison, !8961, !DIExpression(), !11538)
    #dbg_value(i8 poison, !8911, !DIExpression(), !11539)
  %i.ahq = icmp samesign ugt i64 %i.aho, 2, !dbg !13218
  br i1 %i.ahq, label %bb.le, label %bb.lf, !dbg !9409

bb.le:                                            ; preds = %bb.ld
    #dbg_value(ptr %i.dh, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11540)
    #dbg_value(ptr %i.dg, !7769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !13219
  store ptr %i.dh, ptr %i.df, align 8, !dbg !13219
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4242.0..sroa_idx, align 8, !dbg !13219
  store ptr %i.dg, ptr %i.abs, align 8, !dbg !13219
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4246.0..sroa_idx, align 8, !dbg !13219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !dbg !9409
  store ptr @54, ptr %i.de, align 8, !dbg !9409
  store i64 19, ptr %i.abt, align 8, !dbg !9409
  store ptr @54, ptr %i.abu, align 8, !dbg !9409
  store i64 19, ptr %i.abv, align 8, !dbg !9409
  store ptr @74, ptr %i.abw, align 8, !dbg !9409
  invoke void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECslusEaBCZKLp_13quiche_client(ptr noundef nonnull @18, ptr noundef nonnull %i.df, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.de)
          to label %bb.lg unwind label %.thread1509.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !9409

bb.lf:                                            ; preds = %bb.ld, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !13220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !dbg !13220
  br label %.backedge2676, !dbg !13220

bb.lg:                                            ; preds = %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !dbg !9409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !9409
  br label %bb.lf, !dbg !9409

bb.lh:                                            ; preds = %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !dbg !13221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dd, ptr noundef nonnull align 4 dereferenceable(32) %i.adw, i64 32, i1 false), !dbg !13221
end_hunk_1
begin_hunk_2_@_RINvNtCsiGRwBGCeC5s_11quiche_apps6client7connectNvNtB4_6common11stdout_sinkECslusEaBCZKLp_13quiche_client:bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #21
          to label %.body1101 unwind label %bb.oh, !dbg !13376, !noalias !11972

bb.og:                                            ; preds = %bb.oe
  unreachable

bb.oh:                                            ; preds = %bb.of
  %i.alo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !13377, !noalias !11972
  unreachable, !dbg !13377

bb.oi:                                            ; preds = %bb.od
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ch, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !dbg !13378, !alias.scope !11972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !13379
    #dbg_value(ptr %i.gg, !8543, !DIExpression(), !11973)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !13380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cf, ptr noundef nonnull align 4 dereferenceable(32) %i.ch, i64 32, i1 false), !dbg !13380
    #dbg_value(ptr %i.gg, !11809, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11975)
    #dbg_value(ptr %i.gg, !11816, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11978)
    #dbg_value(ptr %i.gg, !11825, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11981)
    #dbg_value(ptr %i.gg, !11836, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11984)
    #dbg_value(ptr %i.gg, !11842, !DIExpression(DW_OP_plus_uconst, 13408, DW_OP_stack_value), !11987)
  %i.alp = load ptr, ptr %i.acn, align 8, !dbg !13381, !nonnull !1183, !noundef !1183 ; 2 uses
  %i.alq = load i64, ptr %i.aco, align 16, !dbg !13382, !noundef !1183
    #dbg_value(i64 %i.alq, !11876, !DIExpression(), !11997)
    #dbg_value(i64 %i.alq, !11891, !DIExpression(), !12000)
    #dbg_value(ptr %i.alp, !11889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12001)
    #dbg_value(ptr %i.alp, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12002)
    #dbg_value(i64 %i.alq, !11889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12001)
    #dbg_value(i64 %i.alq, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12002)
    #dbg_value(ptr %i.alp, !11877, !DIExpression(), !12003)
    #dbg_value(ptr %i.alp, !11894, !DIExpression(), !12000)
  %i.alr = getelementptr inbounds nuw [2792 x i8], ptr %i.alp, i64 %i.alq, !dbg !13383
  %i.als = load i64, ptr %i.acp, align 8, !dbg !13384, !noundef !1183
    #dbg_value(ptr %i.alp, !12004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12044)
    #dbg_value(ptr %i.alp, !12046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12052)
    #dbg_value(ptr %i.alr, !12004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12044)
    #dbg_value(ptr %i.alr, !12046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12052)
    #dbg_value(i64 0, !12004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12044)
    #dbg_value(i64 0, !12046, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12052)
    #dbg_value(i64 %i.als, !12004, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12044)
    #dbg_value(i64 %i.als, !12046, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12052)
    #dbg_value(ptr %i.cf, !12004, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12044)
    #dbg_value(ptr %i.cf, !12046, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12052)
    #dbg_declare(ptr %i.i, !12048, !DIExpression(), !6845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13385, !noalias !12054
  store i64 0, ptr %i.acq, align 8, !dbg !13386, !noalias !12054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13387, !noalias !12054
  store ptr %i.alp, ptr %i.h, align 8, !dbg !13387, !noalias !12058
  store ptr %i.alr, ptr %.sroa.41478.0..sroa_idx, align 8, !dbg !13387, !noalias !12058
  store i64 0, ptr %.sroa.51479.0..sroa_idx, align 8, !dbg !13387, !noalias !12058
  store i64 %i.als, ptr %.sroa.61480.0..sroa_idx, align 8, !dbg !13387, !noalias !12058
  store ptr %i.cf, ptr %.sroa.71481.0..sroa_idx, align 8, !dbg !13387, !noalias !12058
  invoke void @_RINvXst_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_EINtNtNtNtBP_4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1M_8adapters3map3MapINtNtB2y_6filter6FilterIB2W_IB2W_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B3X_NtB3X_10Connection10paths_iter0ENCB4v_s_0ENCB4v_s0_0ENCB4v_s1_0EECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.ol unwind label %bb.oj, !dbg !13388, !noalias !12054

bb.oj:                                            ; preds = %bb.oi
  %i.alt = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !12060, !DIExpression(), !6853)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.i)
          to label %.body1101 unwind label %bb.ok, !dbg !13389, !noalias !12054

bb.ok:                                            ; preds = %bb.oj
  %i.alu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !13390, !noalias !12054
  unreachable, !dbg !13390

bb.ol:                                            ; preds = %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13391, !noalias !12054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !13392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ce, ptr noundef nonnull align 8 dereferenceable(264) %i.i, i64 264, i1 false), !dbg !13393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13394, !noalias !12054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !13395
  store i64 0, ptr %.sroa.272.0..sroa_idx, align 8, !dbg !13392
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9), !dbg !8547
  %i.alv = load i64, ptr %i.acr, align 8, !dbg !13396, !alias.scope !12066, !noundef !1183 ; 2 uses
  %i.alw = icmp ugt i64 %i.alv, 8, !dbg !13396    ; 2 uses
  %i.alx = load i64, ptr %i.acs, align 8, !dbg !13397, !alias.scope !12066
  %.sink21.i.i1858 = select i1 %i.alw, i64 %i.alx, i64 %i.alv, !dbg !13397
  %.not1863 = icmp eq i64 %.sink21.i.i1858, 0, !dbg !13398
  br i1 %.not1863, label %_RNvXs0_NtCs3f36owOmepS_6quiche4pathNtB5_14SocketAddrIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %_RNvXs0_NtCs3f36owOmepS_6quiche4pathNtB5_14SocketAddrIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit, !dbg !13398

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1523.loopexit.split-lp
  %.pn1039 = phi { ptr, i32 } [ %lpad.loopexit.split-lp2640, %.loopexit.split-lp1523.loopexit.split-lp ], [ %lpad.loopexit.split-lp2643, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr %i.ce, !12127, !DIExpression(), !6887)
    #dbg_value(ptr %i.ce, !12060, !DIExpression(), !6889)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.ce)
          to label %.body1101 unwind label %bb.am, !dbg !13399

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.pn, %bb.or, %bb.on, %bb.pi, %bb.pw, %bb.pv, %bb.pr, %bb.pb, %bb.os
  %lpad.loopexit.split-lp2643 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_RNvXs0_NtCs3f36owOmepS_6quiche4pathNtB5_14SocketAddrIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.ol, %bb.pl
  %i.aly = phi i64 [ %i.aoa, %bb.pl ], [ 0, %bb.ol ] ; 2 uses
  %i.alz = phi i1 [ %i.any, %bb.pl ], [ %i.alw, %bb.ol ]
  %i.ama = load ptr, ptr %i.ce, align 8, !dbg !13397, !alias.scope !12066, !nonnull !1183
  %.sink22.i.i = select i1 %i.alz, ptr %i.ama, ptr %i.ce, !dbg !13397
    #dbg_value(ptr %.sink22.i.i, !12123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6890)
    #dbg_value(ptr %.sink22.i.i, !12119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6891)
  %i.amb = getelementptr inbounds nuw [32 x i8], ptr %.sink22.i.i, i64 %i.aly, !dbg !13400 ; 2 uses
    #dbg_value(ptr %i.amb, !12105, !DIExpression(), !6892)
  %i.amc = add nuw i64 %i.aly, 1, !dbg !13401
  store i64 %i.amc, ptr %.sroa.272.0..sroa_idx, align 8, !dbg !13401, !alias.scope !12133
  %.sroa.01464.0.copyload1466 = load i16, ptr %i.amb, align 4, !dbg !13402 ; 3 uses
  %.sroa.9.0..sroa_idx1468 = getelementptr inbounds nuw i8, ptr %i.amb, i64 2, !dbg !13402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.9, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.9.0..sroa_idx1468, i64 30, i1 false), !dbg !13402
  %.not1037 = icmp eq i16 %.sroa.01464.0.copyload1466, 2, !dbg !8547
  br i1 %.not1037, label %_RNvXs0_NtCs3f36owOmepS_6quiche4pathNtB5_14SocketAddrIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.om, !dbg !8547

bb.om:                                            ; preds = %_RNvXs0_NtCs3f36owOmepS_6quiche4pathNtB5_14SocketAddrIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !13403
  store i16 %.sroa.01464.0.copyload1466, ptr %i.cd, align 4, !dbg !13403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.9, i64 30, i1 false), !dbg !13403
  br label %bb.on, !dbg !13404

_RNvXs0_NtCs3f36owOmepS_6quiche4pathNtB5_14SocketAddrIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %_RNvXs0_NtCs3f36owOmepS_6quiche4pathNtB5_14SocketAddrIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit, %bb.pl, %bb.ol
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9), !dbg !13405
    #dbg_value(ptr %i.ce, !12127, !DIExpression(), !6894)
    #dbg_value(ptr %i.ce, !12060, !DIExpression(), !6896)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.ce)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche4path14SocketAddrIterECslusEaBCZKLp_13quiche_client.exit1327 unwind label %.loopexit.split-lp1540.loopexit.split-lp, !dbg !13406

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche4path14SocketAddrIterECslusEaBCZKLp_13quiche_client.exit1327: ; preds = %_RNvXs0_NtCs3f36owOmepS_6quiche4pathNtB5_14SocketAddrIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !13407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !13408
    #dbg_value(ptr %i.ci, !11774, !DIExpression(), !6897)
    #dbg_value(i64 1, !11781, !DIExpression(), !6778)
    #dbg_value(ptr %i.ci, !12136, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6900)
  %i.amd = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !13409, !alias.scope !12141, !nonnull !1183, !noundef !1183
    #dbg_value(ptr poison, !12139, !DIExpression(), !6903)
  %i.ame = load ptr, ptr %.sroa.567.0..sroa_idx, align 8, !dbg !13410, !alias.scope !12141, !nonnull !1183, !noundef !1183 ; 2 uses
  %i.amf = icmp eq ptr %i.ame, %i.amd, !dbg !13410
  br i1 %i.amf, label %._crit_edge1861, label %.lr.ph1860, !dbg !13411

bb.on:                                            ; preds = %bb.po, %bb.om
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !dbg !13412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !dbg !13413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bz, ptr noundef nonnull align 4 dereferenceable(32) %i.ch, i64 32, i1 false), !dbg !13413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !13412
  store i16 %.sroa.01464.0.copyload1466, ptr %i.aw, align 4, !dbg !13412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.9.0..sroa_idx1467, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.9, i64 30, i1 false), !dbg !13412
  invoke void @_RNvMs1_Cs3f36owOmepS_6quicheNtB5_10Connection12send_on_pathCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ca, ptr noalias nofree noundef nonnull align 16 dereferenceable(15552) %i.gg, ptr noalias nofree noundef nonnull %i.hp, i64 noundef 1350, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.bz, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.aw)
          to label %bb.oo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13414

bb.oo:                                            ; preds = %bb.on
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !13412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !dbg !13415
  %i.amg = load i32, ptr %i.act, align 8, !dbg !13412, !range !10970, !noundef !1183
  %i.amh = icmp eq i32 %i.amg, -1, !dbg !13412
  %i.ami = load i64, ptr %i.ca, align 8, !dbg !13416, !noundef !1183 ; 6 uses
  br i1 %i.amh, label %bb.op, label %bb.oq, !dbg !13417

bb.op:                                            ; preds = %bb.oo
  %i.amj = icmp eq i64 %i.ami, 0, !dbg !13417
  br i1 %i.amj, label %bb.pq, label %bb.pu, !dbg !13417

bb.oq:                                            ; preds = %bb.oo
    #dbg_value(i64 %i.ami, !8383, !DIExpression(), !12142)
    #dbg_value(i64 %i.ami, !8401, !DIExpression(), !12143)
    #dbg_value(i64 %i.ami, !8410, !DIExpression(), !12144)
    #dbg_value(i64 %i.ami, !8419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9568)
    #dbg_value(i64 %i.ami, !8427, !DIExpression(), !9568)
    #dbg_value(i64 %i.ami, !8997, !DIExpression(), !9571)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(80) %i.acu, i64 80, i1 false), !dbg !13418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !dbg !13419
    #dbg_value(i64 %i.ami, !7806, !DIExpression(), !12145)
  store i64 %i.ami, ptr %i.cc, align 8, !dbg !13419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !dbg !13420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cb, ptr noundef nonnull align 8 dereferenceable(80) %i.acu, i64 80, i1 false), !dbg !13420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !dbg !13421
    #dbg_value(ptr %i.hp, !8394, !DIExpression(), !12142)
    #dbg_value(ptr %i.hp, !8406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12143)
    #dbg_value(ptr %i.hp, !8414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12144)
    #dbg_value(ptr %i.hp, !8426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9568)
    #dbg_value(i64 1350, !8406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12143)
    #dbg_value(i64 1350, !8414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12144)
    #dbg_value(i64 1350, !8426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9568)
  %i.amk = icmp ult i64 %i.ami, 1351
  br i1 %i.amk, label %bb.or, label %bb.os, !dbg !13422, !prof !12146

bb.or:                                            ; preds = %bb.oq
  %i.aml = invoke { i64, ptr } @_RNvMNtNtCs3EyXvii9LsX_3mio3net3udpNtB2_9UdpSocket7send_to(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ajv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hp, i64 noundef %i.ami, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.acv)
          to label %bb.ot unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13423 ; 2 uses

bb.os:                                            ; preds = %bb.oq
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ami, i64 noundef 1350, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #20
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13424

bb.ot:                                            ; preds = %bb.or
  %i.amm = extractvalue { i64, ptr } %i.aml, 0, !dbg !13425
  %i.amn = trunc nuw i64 %i.amm to i1, !dbg !13426
  br i1 %i.amn, label %bb.ou, label %bb.pm, !dbg !13426

bb.ou:                                            ; preds = %bb.ot
  %i.amo = extractvalue { i64, ptr } %i.aml, 1, !dbg !13425 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amo) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !8551
  store ptr %i.amo, ptr %i.bt, align 8, !dbg !8551
    #dbg_value(ptr poison, !10977, !DIExpression(), !6905)
    #dbg_value(ptr poison, !10989, !DIExpression(), !6907)
    #dbg_value(ptr %i.amo, !11011, !DIExpression(), !6909)
    #dbg_declare(ptr poison, !11016, !DIExpression(), !6910)
    #dbg_value(i64 1, !11025, !DIExpression(), !6912)
    #dbg_value(i64 1, !11028, !DIExpression(), !6914)
    #dbg_value(i64 -1, !11031, !DIExpression(), !6916)
    #dbg_value(ptr %i.amo, !11034, !DIExpression(), !6918)
    #dbg_value(ptr %i.amo, !11026, !DIExpression(), !6912)
  %i.amp = ptrtoint ptr %i.amo to i64, !dbg !13427 ; 3 uses
    #dbg_value(i64 %i.amp, !11017, !DIExpression(), !6919)
  %i.amq = and i64 %i.amp, 3, !dbg !13428
  switch i64 %i.amq, label %default.unreachable [
    i64 2, label %bb.ov
    i64 3, label %bb.ow
    i64 0, label %bb.ox
    i64 1, label %bb.oy
  ], !dbg !13429, !prof !4347

bb.ov:                                            ; preds = %bb.ou
    #dbg_value(i64 %i.amp, !10982, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6920)
    #dbg_value(i64 %i.amp, !11037, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6922)
  %i.amr = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc1331 unwind label %.loopexit.split-lp1523.loopexit.split-lp, !dbg !13430

.noexc1331:                                       ; preds = %bb.ov
  %i.ams = lshr i64 %i.amp, 32, !dbg !13431
    #dbg_value(i64 %i.ams, !11037, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6922)
    #dbg_value(i64 %i.ams, !10982, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6920)
  %i.amt = trunc nuw i64 %i.ams to i32, !dbg !13431
    #dbg_value(i32 %i.amt, !10982, !DIExpression(), !6920)
    #dbg_value(i32 %i.amt, !11037, !DIExpression(), !6922)
    #dbg_value(ptr %i.amr, !11042, !DIExpression(), !6923)
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amr, i64 8, !dbg !13432
  %i.amv = load ptr, ptr %i.amu, align 8, !dbg !13432, !nonnull !1183, !noundef !1183
  %i.amw = invoke noundef i8 %i.amv(i32 noundef %i.amt)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit1333 unwind label %.loopexit.split-lp1523.loopexit.split-lp, !dbg !13432, !inline_history !6458

bb.ow:                                            ; preds = %bb.ou
  %i.amx = lshr i64 %i.amp, 32, !dbg !13433
    #dbg_value(i64 %i.amx, !11019, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6924)
    #dbg_value(i64 %i.amx, !4349, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6926)
  %i.amy = icmp ult ptr %i.amo, inttoptr (i64 188978561024 to ptr), !dbg !13434
  %switch.idx.cast.i.i.i1329 = trunc i64 %i.amx to i8 ; 2 uses
    #dbg_value(i8 poison, !11056, !DIExpression(), !6928)
    #dbg_value(ptr poison, !11064, !DIExpression(), !6929)
  %i.amz = icmp ne i8 %switch.idx.cast.i.i.i1329, -1, !dbg !13435
  call void @llvm.assume(i1 %i.amy), !dbg !13436
  call void @llvm.assume(i1 %i.amz), !dbg !13436
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit1333, !dbg !13437

bb.ox:                                            ; preds = %bb.ou
    #dbg_value(ptr %i.amo, !10986, !DIExpression(), !6930)
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amo, i64 16, !dbg !13438
  %i.anb = load i8, ptr %i.ana, align 8, !dbg !13438, !range !11067, !noundef !1183
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit1333, !dbg !13439

bb.oy:                                            ; preds = %bb.ou
    #dbg_value(ptr %i.amo, !11029, !DIExpression(), !6914)
    #dbg_value(ptr %i.amo, !11032, !DIExpression(), !6916)
    #dbg_value(ptr %i.amo, !10984, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !6931)
  %i.anc = getelementptr i8, ptr %i.amo, i64 31, !dbg !13440
  %i.and = load i8, ptr %i.anc, align 8, !dbg !13440, !range !11067, !noundef !1183
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit1333, !dbg !13441

.loopexit.split-lp1523.loopexit.split-lp:         ; preds = %.noexc1331, %bb.ov, %bb.pf, %bb.oz
  %lpad.loopexit.split-lp2640 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt) #21
          to label %.loopexit.split-lp unwind label %bb.am, !dbg !13442

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit1333: ; preds = %bb.oy, %bb.ox, %bb.ow, %.noexc1331
  %.sroa.0.0.i1328 = phi i8 [ %i.and, %bb.oy ], [ %switch.idx.cast.i.i.i1329, %bb.ow ], [ %i.anb, %bb.ox ], [ %i.amw, %.noexc1331 ], !dbg !13443
    #dbg_value(ptr poison, !9006, !DIExpression(), !12147)
  %i.ane = icmp eq i8 %.sroa.0.0.i1328, 13, !dbg !12147
  br i1 %i.ane, label %bb.pe, label %bb.oz, !dbg !9592

bb.oz:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit1333
    #dbg_value(ptr %i.ch, !7830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12148)
    #dbg_value(ptr %i.acw, !7830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12148)
    #dbg_value(ptr %i.bt, !7830, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !13444
  store ptr %i.ch, ptr %i.bp, align 8, !dbg !13444
  %.sroa.4313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !13444
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4313.0..sroa_idx, align 8, !dbg !13444
  %i.anf = getelementptr inbounds nuw i8, ptr %i.bp, i64 16, !dbg !13444
  store ptr %i.acw, ptr %i.anf, align 8, !dbg !13444
  %.sroa.4317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24, !dbg !13444
  store ptr @_RNvXs4_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4317.0..sroa_idx, align 8, !dbg !13444
  %i.ang = getelementptr inbounds nuw i8, ptr %i.bp, i64 32, !dbg !13444
  store ptr %i.bt, ptr %i.ang, align 8, !dbg !13444
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 40, !dbg !13444
  store ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr %.sroa.4321.0..sroa_idx, align 8, !dbg !13444
    #dbg_value(ptr @24, !9997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12151)
    #dbg_value(ptr %i.bp, !9997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12151)
    #dbg_value(ptr null, !9968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6933)
    #dbg_value(i64 undef, !9968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6933)
    #dbg_value(ptr poison, !9990, !DIExpression(), !6933)
    #dbg_declare(ptr poison, !9991, !DIExpression(), !6934)
    #dbg_value(ptr poison, !10003, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6936)
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noundef nonnull @24, ptr noundef nonnull %i.bp)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1335 unwind label %.loopexit.split-lp1523.loopexit.split-lp, !dbg !13445

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1335: ; preds = %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !13446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !dbg !13447
  call void @llvm.experimental.noalias.scope.decl(metadata !12152), !dbg !13442
    #dbg_value(ptr %i.bt, !4293, !DIExpression(), !6940)
  %.val.i1336 = load ptr, ptr %i.bt, align 8, !dbg !13448, !alias.scope !12152, !nonnull !1183, !noundef !1183 ; 3 uses
    #dbg_value(ptr poison, !4300, !DIExpression(), !6942)
    #dbg_value(ptr poison, !4307, !DIExpression(), !6944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13449, !noalias !12152
    #dbg_value(ptr %.val.i1336, !4310, !DIExpression(), !6946)
    #dbg_declare(ptr poison, !4314, !DIExpression(), !6947)
    #dbg_value(i64 1, !4325, !DIExpression(), !6949)
    #dbg_value(i64 1, !4333, !DIExpression(), !6951)
    #dbg_value(i64 -1, !4338, !DIExpression(), !6953)
    #dbg_value(ptr %.val.i1336, !4343, !DIExpression(), !6955)
    #dbg_value(ptr %.val.i1336, !4331, !DIExpression(), !6949)
  %i.anh = ptrtoint ptr %.val.i1336 to i64, !dbg !13450 ; 2 uses
    #dbg_value(i64 %i.anh, !4315, !DIExpression(), !6956)
  %i.ani = and i64 %i.anh, 3, !dbg !13451
  switch i64 %i.ani, label %default.unreachable [
    i64 2, label %bb.pc
    i64 3, label %bb.pa
    i64 0, label %bb.pc
    i64 1, label %bb.pb
  ], !dbg !13452, !prof !4347

bb.pa:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1335
    #dbg_value(i64 %i.anh, !4317, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6957)
    #dbg_value(i64 %i.anh, !4349, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6959)
  %i.anj = icmp ult ptr %.val.i1336, inttoptr (i64 188978561024 to ptr), !dbg !13453
    #dbg_value(i8 poison, !4452, !DIExpression(), !6961)
    #dbg_value(ptr poison, !4461, !DIExpression(), !6962)
  %i.ank = and i64 %i.anh, 1095216660480, !dbg !13454
  %i.anl = icmp ne i64 %i.ank, 1095216660480, !dbg !13454
  call void @llvm.assume(i1 %i.anj), !dbg !13455
  call void @llvm.assume(i1 %i.anl), !dbg !13455
  br label %bb.pc, !dbg !13456

bb.pb:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1335
    #dbg_value(ptr %.val.i1336, !4336, !DIExpression(), !6951)
    #dbg_value(ptr %.val.i1336, !4341, !DIExpression(), !6953)
  %i.anm = getelementptr i8, ptr %.val.i1336, i64 -1, !dbg !13457 ; 2 uses
    #dbg_value(ptr %i.anm, !4320, !DIExpression(), !6963)
    #dbg_declare(ptr poison, !4464, !DIExpression(), !6965)
    #dbg_value(ptr %i.anm, !4467, !DIExpression(), !6966)
    #dbg_value(ptr %i.anm, !4469, !DIExpression(), !6968)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.anm) ], !dbg !13458
  %i.ann = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !13459 ; 2 uses
  store ptr %i.anm, ptr %i.ann, align 8, !dbg !13459, !alias.scope !12153, !noalias !12152
  store i8 3, ptr %i.g, align 8, !dbg !13460, !alias.scope !12153, !noalias !12152
    #dbg_value(ptr %i.g, !4475, !DIExpression(), !6972)
    #dbg_value(ptr %i.ann, !4480, !DIExpression(), !6974)
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ann)
          to label %bb.pc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !13461

bb.pc:                                            ; preds = %bb.pa, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1335, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslusEaBCZKLp_13quiche_client.exit1335, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13462, !noalias !12152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !13442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !dbg !13463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !dbg !13463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !dbg !13405
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9), !dbg !13405
    #dbg_value(ptr %i.ce, !12127, !DIExpression(), !6976)
    #dbg_value(ptr %i.ce, !12060, !DIExpression(), !6978)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.ce)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche4path14SocketAddrIterECslusEaBCZKLp_13quiche_client.exit1341 unwind label %.loopexit.split-lp1540.loopexit.split-lp, !dbg !13464

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche4path14SocketAddrIterECslusEaBCZKLp_13quiche_client.exit1341: ; preds = %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !13407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !13408
    #dbg_value(ptr %i.ci, !11762, !DIExpression(), !6980)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterRNtNtNtCs3EyXvii9LsX_3mio3net3udp9UdpSocketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterRNtNtNtCs3EyXvii9LsX_3mio3net3udp9UdpSocketEECslusEaBCZKLp_13quiche_client.exit1343 unwind label %.thread1509.loopexit.split-lp, !dbg !13465

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterRNtNtNtCs3EyXvii9LsX_3mio3net3udp9UdpSocketEECslusEaBCZKLp_13quiche_client.exit1343: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche4path14SocketAddrIterECslusEaBCZKLp_13quiche_client.exit1341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !13329
  br label %bb.ob, !dbg !13332

bb.pd:                                            ; preds = %bb.qz, %bb.qo, %bb.tq, %bb.ob
  %.sroa.20.11 = phi ptr [ %.sroa.20.7, %bb.tq ], [ %.sroa.20.8, %bb.ob ], [ %.sroa.20.7, %bb.qo ], [ %.sroa.20.7, %bb.qz ], !dbg !12737
  %.sroa.01425.11 = phi ptr [ %.sroa.01425.7, %bb.tq ], [ %.sroa.01425.8, %bb.ob ], [ %.sroa.01425.7, %bb.qo ], [ %.sroa.01425.7, %bb.qz ], !dbg !12738
  %.sroa.082.15 = phi i8 [ 1, %bb.tq ], [ %.sroa.082.13, %bb.ob ], [ 1, %bb.qo ], [ 0, %bb.qz ], !dbg !12740
    #dbg_value(ptr %.sroa.01425.11, !7626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10424)
    #dbg_value(ptr %.sroa.20.11, !7626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10424)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !dbg !13369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !dbg !13370
  br label %bb.if, !dbg !13043

bb.pe:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit1333
    #dbg_value(i64 5, !7824, !DIExpression(), !12154)
    #dbg_value(ptr poison, !8883, !DIExpression(), !12155)
    #dbg_value(ptr poison, !8883, !DIExpression(), !12156)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !8977, !DIExpression(), !9609)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !10922, !DIExpression(), !6982)
    #dbg_value(i8 0, !10925, !DIExpression(), !6982)
  %i.ano = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !13466 ; 2 uses
  %i.anp = icmp ult i64 %i.ano, 6, !dbg !13467
  call void @llvm.assume(i1 %i.anp), !dbg !13467
    #dbg_value(ptr poison, !8884, !DIExpression(), !12157)
end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECslusEaBCZKLp_13quiche_client:bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4783, !DIExpression(), !14287)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14292

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4783, !DIExpression(), !14289)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14293
  ret void, !dbg !14291

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14291
  unreachable, !dbg !14291

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14291
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs7NSBlMkneoK_3url3UrlEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !853 {
bb.a:
    #dbg_value(ptr %0, !4799, !DIExpression(), !14298)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs7NSBlMkneoK_3url3UrlENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !14299

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4804, !DIExpression(), !14295)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7NSBlMkneoK_3url3UrlENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCs7NSBlMkneoK_3url3UrlEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14300

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4804, !DIExpression(), !14297)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7NSBlMkneoK_3url3UrlENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14301
  ret void, !dbg !14299

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14299
  unreachable, !dbg !14299

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCs7NSBlMkneoK_3url3UrlEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14299
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !834 {
bb.a:
    #dbg_value(ptr %0, !4672, !DIExpression(), !14306)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !14307

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4677, !DIExpression(), !14303)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14308

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4677, !DIExpression(), !14305)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14309
  ret void, !dbg !14307

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14307
  unreachable, !dbg !14307

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14307
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14310 {
bb.a:
    #dbg_value(ptr %0, !14319, !DIExpression(), !14323)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche4path9PathStatsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !14331

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !14325, !DIExpression(), !14313)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche4path9PathStatsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs3f36owOmepS_6quiche4path9PathStatsEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14332

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !14325, !DIExpression(), !14315)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche4path9PathStatsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14333
  ret void, !dbg !14331

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14331
  unreachable, !dbg !14331

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs3f36owOmepS_6quiche4path9PathStatsEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14331
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !701 {
bb.a:
    #dbg_value(ptr %0, !4161, !DIExpression(), !14338)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBL_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !14339

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4167, !DIExpression(), !14335)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtB4_3net11socket_addr10SocketAddrEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14340

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4167, !DIExpression(), !14337)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14341
  ret void, !dbg !14339

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14339
  unreachable, !dbg !14339

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtB4_3net11socket_addr10SocketAddrEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14339
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !704 {
bb.a:
    #dbg_value(ptr %0, !4178, !DIExpression(), !14346)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !14347

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4183, !DIExpression(), !14343)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14348

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4183, !DIExpression(), !14345)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14349
  ret void, !dbg !14347

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14347
  unreachable, !dbg !14347

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14347
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsiGRwBGCeC5s_11quiche_apps6common8HttpConnEL_EECslusEaBCZKLp_13quiche_client(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !807 {
bb.a:
    #dbg_value(ptr poison, !4546, !DIExpression(), !14390)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !14391, !invariant.load !1183 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !14391
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14391

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !14391

bb.c:                                             ; preds = %bb.b, %bb.a
    #dbg_value(ptr poison, !4550, !DIExpression(), !14351)
    #dbg_value(ptr poison, !4551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14352)
    #dbg_value(ptr %.8.val, !4551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14352)
    #dbg_value(ptr poison, !4565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14354)
    #dbg_value(ptr poison, !4572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14356)
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14358)
    #dbg_value(ptr poison, !4582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14360)
    #dbg_value(ptr %.8.val, !4565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14354)
    #dbg_value(ptr %.8.val, !4572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14356)
    #dbg_value(ptr %.8.val, !4576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14358)
    #dbg_value(ptr %.8.val, !4582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14360)
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !14392
  %i.c = load i64, ptr %i.b, align 8, !dbg !14392, !range !4269, !invariant.load !1183 ; 2 uses
    #dbg_value(i64 poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14361)
    #dbg_value(i64 %i.c, !4552, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14361)
  %i.d = icmp eq i64 %i.c, 0, !dbg !14393
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCsiGRwBGCeC5s_11quiche_apps6common8HttpConnEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit, label %bb.d, !dbg !14393

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !14392
  %i.f = load i64, ptr %i.e, align 8, !dbg !14394, !range !4270, !invariant.load !1183
    #dbg_value(i64 %i.f, !4552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14361)
    #dbg_value(ptr %.0.val, !4565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14354)
    #dbg_value(ptr %.0.val, !4572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14356)
    #dbg_value(ptr %.0.val, !4576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14358)
    #dbg_value(ptr %.0.val, !4582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14360)
    #dbg_value(ptr %.0.val, !4551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14352)
    #dbg_value(ptr poison, !4271, !DIExpression(), !14363)
    #dbg_value(ptr poison, !4277, !DIExpression(), !14365)
    #dbg_value(ptr %.0.val, !4274, !DIExpression(), !14363)
    #dbg_value(ptr %.0.val, !4280, !DIExpression(), !14365)
    #dbg_value(ptr %.0.val, !4283, !DIExpression(), !14367)
    #dbg_value(ptr %.0.val, !4289, !DIExpression(), !14369)
    #dbg_value(i64 %i.f, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14363)
    #dbg_value(i64 %i.f, !4281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14365)
    #dbg_value(i64 %i.f, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14367)
    #dbg_value(i64 %i.f, !4290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14369)
    #dbg_value(i64 %i.c, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14363)
    #dbg_value(i64 %i.c, !4281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14365)
    #dbg_value(i64 %i.c, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14367)
    #dbg_value(i64 %i.c, !4290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14369)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #19, !dbg !14395
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCsiGRwBGCeC5s_11quiche_apps6common8HttpConnEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit, !dbg !14396

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCsiGRwBGCeC5s_11quiche_apps6common8HttpConnEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !14391

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !4550, !DIExpression(), !14371)
    #dbg_value(ptr poison, !4551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14372)
    #dbg_value(ptr %.8.val, !4551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14372)
    #dbg_value(ptr poison, !4565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14374)
    #dbg_value(ptr poison, !4572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14376)
    #dbg_value(ptr poison, !4576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14378)
    #dbg_value(ptr poison, !4582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14380)
    #dbg_value(ptr %.8.val, !4565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14374)
    #dbg_value(ptr %.8.val, !4572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14376)
    #dbg_value(ptr %.8.val, !4576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14378)
    #dbg_value(ptr %.8.val, !4582, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14380)
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !14397
  %i.i = load i64, ptr %i.h, align 8, !dbg !14397, !range !4269, !invariant.load !1183 ; 2 uses
    #dbg_value(i64 poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14381)
    #dbg_value(i64 %i.i, !4552, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14381)
  %i.j = icmp eq i64 %i.i, 0, !dbg !14398
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCsiGRwBGCeC5s_11quiche_apps6common8HttpConnEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit5, label %bb.f, !dbg !14398

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !14397
  %i.l = load i64, ptr %i.k, align 8, !dbg !14399, !range !4270, !invariant.load !1183
    #dbg_value(i64 %i.l, !4552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14381)
    #dbg_value(ptr %.0.val, !4565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14374)
    #dbg_value(ptr %.0.val, !4572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14376)
    #dbg_value(ptr %.0.val, !4576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14378)
    #dbg_value(ptr %.0.val, !4582, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14380)
    #dbg_value(ptr %.0.val, !4551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14372)
    #dbg_value(ptr poison, !4271, !DIExpression(), !14383)
    #dbg_value(ptr poison, !4277, !DIExpression(), !14385)
    #dbg_value(ptr %.0.val, !4274, !DIExpression(), !14383)
    #dbg_value(ptr %.0.val, !4280, !DIExpression(), !14385)
    #dbg_value(ptr %.0.val, !4283, !DIExpression(), !14387)
    #dbg_value(ptr %.0.val, !4289, !DIExpression(), !14389)
    #dbg_value(i64 %i.l, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14383)
    #dbg_value(i64 %i.l, !4281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14385)
    #dbg_value(i64 %i.l, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14387)
    #dbg_value(i64 %i.l, !4290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14389)
    #dbg_value(i64 %i.i, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14383)
    #dbg_value(i64 %i.i, !4281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14385)
    #dbg_value(i64 %i.i, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14387)
    #dbg_value(i64 %i.i, !4290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14389)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #19, !dbg !14400
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCsiGRwBGCeC5s_11quiche_apps6common8HttpConnEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit5, !dbg !14401

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCsiGRwBGCeC5s_11quiche_apps6common8HttpConnEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit5: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !14391
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_2io5write5WriteNtNtB4_6marker4SendNtB1B_4SyncEL_EECslusEaBCZKLp_13quiche_client(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !711 {
bb.a:
    #dbg_value(ptr poison, !4228, !DIExpression(), !14442)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !14443, !invariant.load !1183 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !14443
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14443

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !14443

bb.c:                                             ; preds = %bb.b, %bb.a
    #dbg_value(ptr poison, !4232, !DIExpression(), !14403)
    #dbg_value(ptr poison, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14404)
    #dbg_value(ptr %.8.val, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14404)
    #dbg_value(ptr poison, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14406)
    #dbg_value(ptr poison, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14408)
    #dbg_value(ptr poison, !4261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14410)
    #dbg_value(ptr poison, !4267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14412)
    #dbg_value(ptr %.8.val, !4249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14406)
    #dbg_value(ptr %.8.val, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14408)
    #dbg_value(ptr %.8.val, !4261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14410)
    #dbg_value(ptr %.8.val, !4267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14412)
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !14444
  %i.c = load i64, ptr %i.b, align 8, !dbg !14444, !range !4269, !invariant.load !1183 ; 2 uses
    #dbg_value(i64 poison, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14413)
    #dbg_value(i64 %i.c, !4235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14413)
  %i.d = icmp eq i64 %i.c, 0, !dbg !14445
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBO_6marker4SendNtB1o_4SyncEL_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit, label %bb.d, !dbg !14445

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !14444
  %i.f = load i64, ptr %i.e, align 8, !dbg !14446, !range !4270, !invariant.load !1183
    #dbg_value(i64 %i.f, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14413)
    #dbg_value(ptr %.0.val, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14406)
    #dbg_value(ptr %.0.val, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14408)
    #dbg_value(ptr %.0.val, !4261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14410)
    #dbg_value(ptr %.0.val, !4267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14412)
    #dbg_value(ptr %.0.val, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14404)
    #dbg_value(ptr poison, !4271, !DIExpression(), !14415)
    #dbg_value(ptr poison, !4277, !DIExpression(), !14417)
    #dbg_value(ptr %.0.val, !4274, !DIExpression(), !14415)
    #dbg_value(ptr %.0.val, !4280, !DIExpression(), !14417)
    #dbg_value(ptr %.0.val, !4283, !DIExpression(), !14419)
    #dbg_value(ptr %.0.val, !4289, !DIExpression(), !14421)
    #dbg_value(i64 %i.f, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14415)
    #dbg_value(i64 %i.f, !4281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14417)
    #dbg_value(i64 %i.f, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14419)
    #dbg_value(i64 %i.f, !4290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14421)
    #dbg_value(i64 %i.c, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14415)
    #dbg_value(i64 %i.c, !4281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14417)
    #dbg_value(i64 %i.c, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14419)
    #dbg_value(i64 %i.c, !4290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14421)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #19, !dbg !14447
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBO_6marker4SendNtB1o_4SyncEL_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit, !dbg !14448

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBO_6marker4SendNtB1o_4SyncEL_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !14443

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !4232, !DIExpression(), !14423)
    #dbg_value(ptr poison, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14424)
    #dbg_value(ptr %.8.val, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14424)
    #dbg_value(ptr poison, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14426)
    #dbg_value(ptr poison, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14428)
    #dbg_value(ptr poison, !4261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14430)
    #dbg_value(ptr poison, !4267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14432)
    #dbg_value(ptr %.8.val, !4249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14426)
    #dbg_value(ptr %.8.val, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14428)
    #dbg_value(ptr %.8.val, !4261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14430)
    #dbg_value(ptr %.8.val, !4267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14432)
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !14449
  %i.i = load i64, ptr %i.h, align 8, !dbg !14449, !range !4269, !invariant.load !1183 ; 2 uses
    #dbg_value(i64 poison, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14433)
    #dbg_value(i64 %i.i, !4235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14433)
  %i.j = icmp eq i64 %i.i, 0, !dbg !14450
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBO_6marker4SendNtB1o_4SyncEL_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit5, label %bb.f, !dbg !14450

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !14449
  %i.l = load i64, ptr %i.k, align 8, !dbg !14451, !range !4270, !invariant.load !1183
    #dbg_value(i64 %i.l, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14433)
    #dbg_value(ptr %.0.val, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14426)
    #dbg_value(ptr %.0.val, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14428)
    #dbg_value(ptr %.0.val, !4261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14430)
    #dbg_value(ptr %.0.val, !4267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14432)
    #dbg_value(ptr %.0.val, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14424)
    #dbg_value(ptr poison, !4271, !DIExpression(), !14435)
    #dbg_value(ptr poison, !4277, !DIExpression(), !14437)
    #dbg_value(ptr %.0.val, !4274, !DIExpression(), !14435)
    #dbg_value(ptr %.0.val, !4280, !DIExpression(), !14437)
    #dbg_value(ptr %.0.val, !4283, !DIExpression(), !14439)
    #dbg_value(ptr %.0.val, !4289, !DIExpression(), !14441)
    #dbg_value(i64 %i.l, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14435)
    #dbg_value(i64 %i.l, !4281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14437)
    #dbg_value(i64 %i.l, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14439)
    #dbg_value(i64 %i.l, !4290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14441)
    #dbg_value(i64 %i.i, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14435)
    #dbg_value(i64 %i.i, !4281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14437)
    #dbg_value(i64 %i.i, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14439)
    #dbg_value(i64 %i.i, !4290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14441)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #19, !dbg !14452
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBO_6marker4SendNtB1o_4SyncEL_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit5, !dbg !14453

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBO_6marker4SendNtB1o_4SyncEL_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client.exit5: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !14443
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche4path9PathEventEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !855 {
bb.a:
    #dbg_value(ptr %0, !4813, !DIExpression(), !14458)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche4path9PathEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b, !dbg !14459

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4818, !DIExpression(), !14455)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche4path9PathEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs3f36owOmepS_6quiche4path9PathEventEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14460

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4818, !DIExpression(), !14457)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche4path9PathEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14461
  ret void, !dbg !14459

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14459
  unreachable, !dbg !14459

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs3f36owOmepS_6quiche4path9PathEventEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14459
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !857 {
bb.a:
    #dbg_value(ptr %0, !4827, !DIExpression(), !14466)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b, !dbg !14467

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4832, !DIExpression(), !14463)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14468

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4832, !DIExpression(), !14465)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14469
  ret void, !dbg !14467

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14467
  unreachable, !dbg !14467

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14467
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeTINtNtBI_3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !859 {
bb.a:
    #dbg_value(ptr %0, !4841, !DIExpression(), !14474)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTINtNtB9_3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b, !dbg !14475

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4846, !DIExpression(), !14471)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTINtNtBG_3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14476

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4846, !DIExpression(), !14473)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14477
  ret void, !dbg !14475

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14475
  unreachable, !dbg !14475

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTINtNtBG_3vec3VechENtCs3f36owOmepS_6quiche8RecvInfoEEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14475
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeyEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !861 {
bb.a:
    #dbg_value(ptr %0, !4855, !DIExpression(), !14482)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b, !dbg !14483

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !4860, !DIExpression(), !14479)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !14484

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !4860, !DIExpression(), !14481)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !14485
  ret void, !dbg !14483

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !14483
  unreachable, !dbg !14483

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !14483
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14486 {
bb.a:
    #dbg_value(ptr %0, !14519, !DIExpression(), !14521)
  invoke void @_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b, !dbg !14524

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3f36owOmepS_6quiche10ConnectionECslusEaBCZKLp_13quiche_client:bb.a
  br label %bb.ck

bb.cm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_2io5write5WriteNtNtB4_6marker4SendNtB1X_4SyncEL_EEECslusEaBCZKLp_13quiche_client.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 13552, !dbg !15017 ; 3 uses
    #dbg_value(ptr %i.er, !4771, !DIExpression(), !14947)
    #dbg_value(ptr %i.er, !4776, !DIExpression(), !14949)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.er)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECslusEaBCZKLp_13quiche_client.exit.i unwind label %bb.cn, !dbg !15089

bb.cn:                                            ; preds = %bb.cm
  %i.es = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.er, !4783, !DIExpression(), !14951)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.er)
          to label %.body92 unwind label %bb.co, !dbg !15090

bb.co:                                            ; preds = %bb.cn
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !15089
  unreachable, !dbg !15089

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECslusEaBCZKLp_13quiche_client.exit.i: ; preds = %bb.cm
    #dbg_value(ptr %i.er, !4783, !DIExpression(), !14953)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.er)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3f36owOmepS_6quiche5dgram13DatagramQueueNtNtBG_7buffers17DefaultBufFactoryEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.cp, !dbg !15091

.body92:                                          ; preds = %bb.cp, %bb.cn, %bb.ck
  %.pn39 = phi { ptr, i32 } [ %.pn37, %bb.ck ], [ %i.ev, %bb.cp ], [ %i.es, %bb.cn ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 13600, !dbg !15017
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3f36owOmepS_6quiche5dgram13DatagramQueueNtNtBG_7buffers17DefaultBufFactoryEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(48) %i.eu) #21
          to label %common.resume unwind label %bb.cs, !dbg !15017

bb.cp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECslusEaBCZKLp_13quiche_client.exit.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body92

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3f36owOmepS_6quiche5dgram13DatagramQueueNtNtBG_7buffers17DefaultBufFactoryEECslusEaBCZKLp_13quiche_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECslusEaBCZKLp_13quiche_client.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 13600, !dbg !15017 ; 3 uses
    #dbg_value(ptr %i.ew, !4771, !DIExpression(), !14955)
    #dbg_value(ptr %i.ew, !4776, !DIExpression(), !14957)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ew)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3f36owOmepS_6quiche5dgram13DatagramQueueNtNtBG_7buffers17DefaultBufFactoryEECslusEaBCZKLp_13quiche_client.exit97 unwind label %bb.cq, !dbg !15092

bb.cq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3f36owOmepS_6quiche5dgram13DatagramQueueNtNtBG_7buffers17DefaultBufFactoryEECslusEaBCZKLp_13quiche_client.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ew, !4783, !DIExpression(), !14959)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ew)
          to label %common.resume unwind label %bb.cr, !dbg !15093

bb.cr:                                            ; preds = %bb.cq
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !15092
  unreachable, !dbg !15092

common.resume:                                    ; preds = %.body92, %bb.cq
  %common.resume.op = phi { ptr, i32 } [ %i.ex, %bb.cq ], [ %.pn39, %.body92 ]
  resume { ptr, i32 } %common.resume.op, !dbg !15017

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3f36owOmepS_6quiche5dgram13DatagramQueueNtNtBG_7buffers17DefaultBufFactoryEECslusEaBCZKLp_13quiche_client.exit97: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs3f36owOmepS_6quiche5dgram13DatagramQueueNtNtBG_7buffers17DefaultBufFactoryEECslusEaBCZKLp_13quiche_client.exit
    #dbg_value(ptr %i.ew, !4783, !DIExpression(), !14961)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ew), !dbg !15094
  ret void, !dbg !15017

bb.cs:                                            ; preds = %bb.ak, %.body88, %.body92, %bb.ck, %.body90, %.body85, %.body80, %.body75, %.body71, %.body65, %.body59, %bb.az, %.body57, %bb.as, %.body54, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls9HandshakeECslusEaBCZKLp_13quiche_client.exit, %bb.ah, %.body49, %.body46, %.body44, %.body
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !15017
  unreachable, !dbg !15017
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3f36owOmepS_6quiche6ConfigECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 16 dereferenceable(624) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15095 {
bb.a:
    #dbg_value(ptr %0, !15109, !DIExpression(), !15112)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche16transport_params15TransportParamsECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 16 dereferenceable(256) %0)
          to label %bb.c unwind label %bb.b, !dbg !15120

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520, !dbg !15120
    #dbg_value(ptr %i.b, !15114, !DIExpression(), !15098)
  invoke void @_RNvXs1_NtCs3f36owOmepS_6quiche3tlsNtB5_7ContextNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit unwind label %bb.g, !dbg !15121

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520, !dbg !15120
    #dbg_value(ptr %i.c, !15114, !DIExpression(), !15100)
  invoke void @_RNvXs1_NtCs3f36owOmepS_6quiche3tlsNtB5_7ContextNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit3 unwind label %bb.d, !dbg !15122

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 496, !dbg !15120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.g, !dbg !15120

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit3: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496, !dbg !15120 ; 3 uses
    #dbg_value(ptr %i.f, !4792, !DIExpression(), !15102)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.e, !dbg !15123

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit3
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !4783, !DIExpression(), !15104)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.f, !dbg !15124

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !15123
  unreachable, !dbg !15123

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit ]
  resume { ptr, i32 } %common.resume.op, !dbg !15120

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECslusEaBCZKLp_13quiche_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit3
    #dbg_value(ptr %i.f, !4783, !DIExpression(), !15106)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !15125
  ret void, !dbg !15120

bb.g:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche3tls7ContextECslusEaBCZKLp_13quiche_client.exit
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !15120
  unreachable, !dbg !15120
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3f36owOmepS_6quiche8QlogInfoECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15126 {
bb.a:
    #dbg_value(ptr %0, !15182, !DIExpression(), !15186)
    #dbg_value(ptr %0, !15188, !DIExpression(), !15129)
  %i.a = load i64, ptr %0, align 8, !dbg !15201, !range !4102, !alias.scope !15194, !noundef !1183
  %i.b = icmp eq i64 %i.a, -1, !dbg !15201
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3JBf551F2Kj_4qlog8streamer12QlogStreamerEECslusEaBCZKLp_13quiche_client.exit, label %bb.b, !dbg !15201

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !15196, !DIExpression(), !15134)
  invoke void @_RNvXs_NtCs3JBf551F2Kj_4qlog8streamerNtB4_12QlogStreamerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %0)
          to label %bb.d unwind label %bb.c, !dbg !15202

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !15202
  %.val4.i.i = load ptr, ptr %i.d, align 8, !dbg !15202, !alias.scope !15200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !15202
  %.val5.i.i = load ptr, ptr %i.e, align 8, !dbg !15202, !alias.scope !15200, !nonnull !1183, !align !4521, !noundef !1183
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_2io5write5WriteNtNtB4_6marker4SendNtB1B_4SyncEL_EECslusEaBCZKLp_13quiche_client(ptr %.val4.i.i, ptr nonnull %.val5.i.i) #21
          to label %.body.i.i unwind label %bb.j, !dbg !15202

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !15202
  %.val.i.i = load ptr, ptr %i.f, align 8, !dbg !15202, !alias.scope !15200 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !15202
  %.val3.i.i = load ptr, ptr %i.g, align 8, !dbg !15202, !alias.scope !15200, !nonnull !1183, !align !4521, !noundef !1183 ; 5 uses
    #dbg_value(ptr poison, !4228, !DIExpression(), !15138)
  %i.h = load ptr, ptr %.val3.i.i, align 8, !dbg !15203, !invariant.load !1183 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null, !dbg !15203
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !dbg !15203

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !dbg !15203

bb.f:                                             ; preds = %bb.e, %bb.d
    #dbg_value(ptr poison, !4232, !DIExpression(), !15140)
    #dbg_value(ptr poison, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15141)
    #dbg_value(ptr %.val3.i.i, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15141)
    #dbg_value(ptr poison, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15143)
    #dbg_value(ptr poison, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15145)
    #dbg_value(ptr poison, !4261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15147)
    #dbg_value(ptr poison, !4267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15149)
    #dbg_value(ptr %.val3.i.i, !4249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15143)
    #dbg_value(ptr %.val3.i.i, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15145)
    #dbg_value(ptr %.val3.i.i, !4261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15147)
    #dbg_value(ptr %.val3.i.i, !4267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15149)
  %i.i = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8, !dbg !15204
  %i.j = load i64, ptr %i.i, align 8, !dbg !15204, !range !4269, !invariant.load !1183 ; 2 uses
    #dbg_value(i64 poison, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15150)
    #dbg_value(i64 %i.j, !4235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15150)
  %i.k = icmp eq i64 %i.j, 0, !dbg !15205
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog8streamer12QlogStreamerECslusEaBCZKLp_13quiche_client.exit.i, label %bb.g, !dbg !15205

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16, !dbg !15204
  %i.m = load i64, ptr %i.l, align 8, !dbg !15206, !range !4270, !invariant.load !1183
    #dbg_value(i64 %i.m, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15150)
    #dbg_value(ptr %.val.i.i, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15143)
    #dbg_value(ptr %.val.i.i, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15145)
    #dbg_value(ptr %.val.i.i, !4261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15147)
    #dbg_value(ptr %.val.i.i, !4267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15149)
    #dbg_value(ptr %.val.i.i, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15141)
    #dbg_value(ptr poison, !4271, !DIExpression(), !15152)
    #dbg_value(ptr poison, !4277, !DIExpression(), !15154)
    #dbg_value(ptr %.val.i.i, !4274, !DIExpression(), !15152)
    #dbg_value(ptr %.val.i.i, !4280, !DIExpression(), !15154)
    #dbg_value(ptr %.val.i.i, !4283, !DIExpression(), !15156)
    #dbg_value(ptr %.val.i.i, !4289, !DIExpression(), !15158)
    #dbg_value(i64 %i.m, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15152)
    #dbg_value(i64 %i.m, !4281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15154)
    #dbg_value(i64 %i.m, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15156)
    #dbg_value(i64 %i.m, !4290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15158)
    #dbg_value(i64 %i.j, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15152)
    #dbg_value(i64 %i.j, !4281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15154)
    #dbg_value(i64 %i.j, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15156)
    #dbg_value(i64 %i.j, !4290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15158)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #19, !dbg !15207
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog8streamer12QlogStreamerECslusEaBCZKLp_13quiche_client.exit.i, !dbg !15208

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr poison, !4232, !DIExpression(), !15160)
    #dbg_value(ptr poison, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15161)
    #dbg_value(ptr %.val3.i.i, !4234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15161)
    #dbg_value(ptr poison, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15163)
    #dbg_value(ptr poison, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15165)
    #dbg_value(ptr poison, !4261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr poison, !4267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15169)
    #dbg_value(ptr %.val3.i.i, !4249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15163)
    #dbg_value(ptr %.val3.i.i, !4256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15165)
    #dbg_value(ptr %.val3.i.i, !4261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15167)
    #dbg_value(ptr %.val3.i.i, !4267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15169)
  %i.o = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8, !dbg !15209
  %i.p = load i64, ptr %i.o, align 8, !dbg !15209, !range !4269, !invariant.load !1183 ; 2 uses
    #dbg_value(i64 poison, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15170)
    #dbg_value(i64 %i.p, !4235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15170)
  %i.q = icmp eq i64 %i.p, 0, !dbg !15210
  br i1 %i.q, label %.body.i.i, label %bb.i, !dbg !15210

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16, !dbg !15209
  %i.s = load i64, ptr %i.r, align 8, !dbg !15211, !range !4270, !invariant.load !1183
    #dbg_value(i64 %i.s, !4235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15170)
    #dbg_value(ptr %.val.i.i, !4249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15163)
    #dbg_value(ptr %.val.i.i, !4256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15165)
    #dbg_value(ptr %.val.i.i, !4261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15167)
    #dbg_value(ptr %.val.i.i, !4267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15169)
    #dbg_value(ptr %.val.i.i, !4234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15161)
    #dbg_value(ptr poison, !4271, !DIExpression(), !15172)
    #dbg_value(ptr poison, !4277, !DIExpression(), !15174)
    #dbg_value(ptr %.val.i.i, !4274, !DIExpression(), !15172)
    #dbg_value(ptr %.val.i.i, !4280, !DIExpression(), !15174)
    #dbg_value(ptr %.val.i.i, !4283, !DIExpression(), !15176)
    #dbg_value(ptr %.val.i.i, !4289, !DIExpression(), !15178)
    #dbg_value(i64 %i.s, !4275, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15172)
    #dbg_value(i64 %i.s, !4281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15174)
    #dbg_value(i64 %i.s, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15176)
    #dbg_value(i64 %i.s, !4290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15178)
    #dbg_value(i64 %i.p, !4275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15172)
    #dbg_value(i64 %i.p, !4281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15174)
    #dbg_value(i64 %i.p, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15176)
    #dbg_value(i64 %i.p, !4290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15178)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #19, !dbg !15212
  br label %.body.i.i, !dbg !15213

.body.i.i:                                        ; preds = %bb.i, %bb.h, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog7QlogSeqECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %0) #21
          to label %bb.k unwind label %bb.j, !dbg !15202

bb.j:                                             ; preds = %.body.i.i, %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !15202
  unreachable, !dbg !15202

bb.k:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %.pn.i.i, !dbg !15202

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog8streamer12QlogStreamerECslusEaBCZKLp_13quiche_client.exit.i: ; preds = %bb.g, %bb.f
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog7QlogSeqECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %0), !dbg !15202
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3JBf551F2Kj_4qlog8streamer12QlogStreamerEECslusEaBCZKLp_13quiche_client.exit, !dbg !15201

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3JBf551F2Kj_4qlog8streamer12QlogStreamerEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog8streamer12QlogStreamerECslusEaBCZKLp_13quiche_client.exit.i
  ret void, !dbg !15214
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche16transport_params15TransportParamsECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 16 dereferenceable(256) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15215 {
bb.a:
    #dbg_value(ptr %0, !15267, !DIExpression(), !15270)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15275 ; 4 uses
    #dbg_value(ptr %i.a, !4764, !DIExpression(), !15217)
  %i.b = load i64, ptr %i.a, align 16, !dbg !15276, !range !4522, !alias.scope !15271, !noundef !1183
  %switch.i = icmp ugt i64 %i.b, -3, !dbg !15276
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit, label %bb.b, !dbg !15276

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !4178, !DIExpression(), !15223)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i unwind label %bb.c, !dbg !15277

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !4183, !DIExpression(), !15225)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d, !dbg !15278

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !15277
  unreachable, !dbg !15277

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i: ; preds = %bb.b
    #dbg_value(ptr %i.a, !4183, !DIExpression(), !15227)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.e, !dbg !15279

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !15275

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !15275
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #21
          to label %.body8 unwind label %bb.q, !dbg !15275

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !15275 ; 4 uses
    #dbg_value(ptr %i.g, !4764, !DIExpression(), !15229)
  %i.h = load i64, ptr %i.g, align 8, !dbg !15280, !range !4522, !alias.scope !15272, !noundef !1183
  %switch.i5 = icmp ugt i64 %i.h, -3, !dbg !15280
  br i1 %switch.i5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit11, label %bb.f, !dbg !15280

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit
    #dbg_value(ptr %i.g, !4178, !DIExpression(), !15235)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i7 unwind label %bb.g, !dbg !15281

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !4183, !DIExpression(), !15237)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body8 unwind label %bb.h, !dbg !15282

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !15281
  unreachable, !dbg !15281

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i7: ; preds = %bb.f
    #dbg_value(ptr %i.g, !4183, !DIExpression(), !15239)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit11 unwind label %bb.i, !dbg !15283

.body8:                                           ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.l, %bb.i ], [ %i.i, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !15275
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #21
          to label %.body15 unwind label %bb.q, !dbg !15275

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i7
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit11: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !15275 ; 4 uses
    #dbg_value(ptr %i.m, !4764, !DIExpression(), !15241)
  %i.n = load i64, ptr %i.m, align 16, !dbg !15284, !range !4522, !alias.scope !15273, !noundef !1183
  %switch.i12 = icmp ugt i64 %i.n, -3, !dbg !15284
  br i1 %switch.i12, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit18, label %bb.j, !dbg !15284

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche6packet12ConnectionIdEECslusEaBCZKLp_13quiche_client.exit11
    #dbg_value(ptr %i.m, !4178, !DIExpression(), !15247)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECslusEaBCZKLp_13quiche_client.exit.i.i.i14 unwind label %bb.k, !dbg !15285

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.m, !4183, !DIExpression(), !15249)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body15 unwind label %bb.l, !dbg !15286

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !15285
  unreachable, !dbg !15285
end_hunk_4
