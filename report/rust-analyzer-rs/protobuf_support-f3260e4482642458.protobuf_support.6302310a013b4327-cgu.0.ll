inline.NumInlined: 194
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer10next_token:bb.a
  %i.gj = trunc nuw nsw i32 %i.fl to i8
  store i8 %i.gj, ptr %i.gi, align 1, !noalias !27
  br label %bb.ba

bb.aw:                                            ; preds = %.noexc149.i.i
  %i.gk = or disjoint i8 %i.fx, -64
  store i8 %i.gk, ptr %i.fs, align 1, !noalias !27
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  store i8 %i.fv, ptr %i.gl, align 1, !noalias !27
  br label %bb.ba

bb.ax:                                            ; preds = %.noexc149.i.i
  br i1 %i.fq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gm = or disjoint i8 %i.gb, -32
  store i8 %i.gm, ptr %i.fs, align 1, !noalias !27
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  store i8 %i.fz, ptr %i.gn, align 1, !noalias !27
  %i.go = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store i8 %i.fv, ptr %i.go, align 1, !noalias !27
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  store i8 %i.gg, ptr %i.fs, align 1, !noalias !27
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  store i8 %i.gd, ptr %i.gp, align 1, !noalias !27
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store i8 %i.fz, ptr %i.gq, align 1, !noalias !27
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  store i8 %i.fv, ptr %i.gr, align 1, !noalias !27
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw, %.noexc150.i.i
  %.sroa.0.03.i148.i.i = phi i64 [ 1, %.noexc150.i.i ], [ 2, %bb.aw ], [ 3, %bb.ay ], [ 4, %bb.az ]
  %i.gs = add nuw i64 %.sroa.0.03.i148.i.i, %i.fm
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit161.i.i, %bb.ba
  %storemerge205.i.i = phi i64 [ %i.gs, %bb.ba ], [ %i.ha, %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit161.i.i ]
  store i64 %storemerge205.i.i, ptr %.sroa.540.0..sroa_idx.i.i, align 8, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !19
  %i.gt = invoke noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %.noexc154.i.i unwind label %.loopexit.i.i, !noalias !27 ; 2 uses

.noexc154.i.i:                                    ; preds = %bb.bb
  %i.gu = add nsw i32 %i.gt, -48
  %or.cond.i152.i.i = icmp ult i32 %i.gu, 10
  br i1 %or.cond.i152.i.i, label %bb.bc, label %.thread179.i.i

.thread179.i.i:                                   ; preds = %.noexc154.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22
  br label %bb.bf

bb.bc:                                            ; preds = %.noexc154.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22
  %i.gv = load i64, ptr %.sroa.540.0..sroa_idx.i.i, align 8, !alias.scope !95, !noalias !22, !noundef !8 ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  call void @llvm.assume(i1 %i.gw)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit161.i.i unwind label %.loopexit.i.i, !noalias !27

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit161.i.i: ; preds = %bb.bc
  %i.gx = load ptr, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !alias.scope !95, !noalias !22, !nonnull !8, !noundef !8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gv
  %i.gz = trunc nuw nsw i32 %i.gt to i8
  store i8 %i.gz, ptr %i.gy, align 1, !noalias !27
  %i.ha = add nuw i64 %i.gv, 1
  br label %bb.bb

bb.bd:                                            ; preds = %.body.i.i
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !27
  unreachable

bb.be:                                            ; preds = %bb.v
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !22
  %.sroa.33.sroa.0.0.extract.trunc77 = trunc i64 %.sroa.19.i.sroa.0.1 to i32
  %.sroa.33.sroa.16.0.extract.shift98 = lshr i64 %.sroa.19.i.sroa.0.1, 32
  %.sroa.33.sroa.16.0.extract.trunc99 = trunc nuw i64 %.sroa.33.sroa.16.0.extract.shift98 to i32
  %.sroa.45.sroa.0.0.extract.trunc42 = trunc i64 %.sroa.19.i.sroa.8.1 to i32
  %.sroa.45.sroa.14.0.extract.shift54 = lshr i64 %.sroa.19.i.sroa.8.1, 32
  %.sroa.45.sroa.14.0.extract.trunc55 = trunc nuw i64 %.sroa.45.sroa.14.0.extract.shift54 to i32
  br label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer16next_token_inner.exit.thread179

bb.bf:                                            ; preds = %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i, %.thread179.i.i
  %.sroa.10220.8.copyload.i = load i64, ptr %i.aj, align 8, !noalias !72 ; 3 uses
  %.sroa.19.i.sroa.0.0.copyload = load i64, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !72 ; 2 uses
  %.sroa.19.i.sroa.8.0.copyload = load i64, ptr %.sroa.540.0..sroa_idx.i.i, align 8, !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !22
  %.not187.i = icmp eq i64 %.sroa.10220.8.copyload.i, -1
  br i1 %.not187.i, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.45.sroa.0.0.extract.trunc47 = trunc i64 %.sroa.19.i.sroa.0.0.copyload to i32
  %.sroa.45.sroa.14.0.extract.shift64 = lshr i64 %.sroa.19.i.sroa.0.0.copyload, 32
  %.sroa.45.sroa.14.0.extract.trunc65 = trunc nuw i64 %.sroa.45.sroa.14.0.extract.shift64 to i32
  %.sroa.33.sroa.0.0.extract.trunc74 = trunc i64 %.sroa.10220.8.copyload.i to i32
  %.sroa.33.sroa.16.0.extract.shift92 = lshr i64 %.sroa.10220.8.copyload.i, 32
  %.sroa.33.sroa.16.0.extract.trunc93 = trunc nuw i64 %.sroa.33.sroa.16.0.extract.shift92 to i32
  br label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer16next_token_inner.exit.thread

bb.bh:                                            ; preds = %.thread
  %.sroa.6135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.6135.0.copyload.i = load i64, ptr %.sroa.6135.0..sroa_idx.i, align 8, !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !18
  %.sroa.33.sroa.0.0.extract.trunc75 = trunc i64 %.sroa.6.sroa.732.i.sroa.0.0.copyload141 to i32
  %.sroa.33.sroa.16.0.extract.shift94 = lshr i64 %.sroa.6.sroa.732.i.sroa.0.0.copyload141, 32
  %.sroa.33.sroa.16.0.extract.trunc95 = trunc nuw i64 %.sroa.33.sroa.16.0.extract.shift94 to i32
  %.sroa.45.sroa.0.0.extract.trunc = trunc i64 %.sroa.6.sroa.732.i.sroa.6.0.copyload144 to i32
  %.sroa.45.sroa.14.0.extract.shift = lshr i64 %.sroa.6.sroa.732.i.sroa.6.0.copyload144, 32
  %.sroa.45.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.45.sroa.14.0.extract.shift to i32
  %.sroa.18.sroa.0.0.extract.trunc = trunc i64 %.sroa.0126.0.copyload.i to i32
  %.sroa.18.sroa.17.0.extract.shift = lshr i64 %.sroa.0126.0.copyload.i, 32
  %.sroa.18.sroa.17.0.extract.trunc = trunc nuw i64 %.sroa.18.sroa.17.0.extract.shift to i32
  br label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer16next_token_inner.exit.thread179

bb.bi:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !18
  %.not189.i = icmp eq i64 %.sroa.0126.0.copyload.i, -1
  br i1 %.not189.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !18
  store i64 %.sroa.0126.0.copyload.i, ptr %i.aq, align 8, !noalias !18
  %.sroa.328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.6.sroa.732.i.sroa.0.0.copyload141, ptr %.sroa.328.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.6.sroa.732.i.sroa.6.0..sroa.328.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.6.sroa.732.i.sroa.6.0.copyload144, ptr %.sroa.6.sroa.732.i.sroa.6.0..sroa.328.0..sroa_idx.i.sroa_idx, align 8, !noalias !18
  %i.hc = load i8, ptr %i.be, align 8, !range !15, !alias.scope !12, !noalias !16, !noundef !8
  %.not198.i = icmp ne i8 %i.hc, 2
  %i.hd = icmp eq i64 %.sroa.6.sroa.732.i.sroa.6.0.copyload144, 3
  %or.cond.i = select i1 %.not198.i, i1 %i.hd, i1 false
  %i.he = inttoptr i64 %.sroa.6.sroa.732.i.sroa.0.0.copyload141 to ptr ; 4 uses
  br i1 %or.cond.i, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %i.hf = load i8, ptr %i.be, align 8, !range !15, !alias.scope !12, !noalias !16, !noundef !8
  %.not190.i = icmp eq i8 %i.hf, 2
  br i1 %.not190.i, label %bb.bt, label %bb.cu

bb.bl:                                            ; preds = %bb.bj
  %i.hg = load i16, ptr %i.he, align 1
  %i.hh = xor i16 %i.hg, 24942
  %i.hi = getelementptr i8, ptr %i.he, i64 2
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = zext i8 %i.hj to i16
  %i.hl = xor i16 %i.hk, 110
  %i.hm = or i16 %i.hh, %i.hl
  %i.hn = icmp ne i16 %i.hm, 0
  %i.ho = zext i1 %i.hn to i32
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bq, label %.thread.i

bb.bm:                                            ; preds = %.thread.i, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !18
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq)
          to label %bb.bo unwind label %bb.bn, !noalias !16

.thread.i:                                        ; preds = %bb.bl
  %i.hq = load i16, ptr %i.he, align 1
  %i.hr = xor i16 %i.hq, 28265
  %i.hs = getelementptr i8, ptr %i.he, i64 2
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = zext i8 %i.ht to i16
  %i.hv = xor i16 %i.hu, 102
  %i.hw = or i16 %i.hr, %i.hv
  %i.hx = icmp ne i16 %i.hw, 0
  %i.hy = zext i1 %i.hx to i32
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.bq, label %bb.bm

bb.bn:                                            ; preds = %bb.bm
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq) #14
          to label %common.resume unwind label %bb.bp, !noalias !16

bb.bo:                                            ; preds = %bb.bm
  %.sroa.435.8.copyload.i197 = load i64, ptr %i.ap, align 8, !noalias !18
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.7.i.sroa.0.0.copyload = load i64, ptr %.sroa.7.8..sroa_idx.i, align 8, !noalias !18
  %.sroa.7.i.sroa.4.0..sroa.7.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.7.i.sroa.4.0.copyload = load i64, ptr %.sroa.7.i.sroa.4.0..sroa.7.8..sroa_idx.i.sroa_idx, align 8, !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !18
  br label %bb.bq

bb.bp:                                            ; preds = %bb.eb, %bb.bn
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !16
  unreachable

bb.bq:                                            ; preds = %bb.bo, %.thread.i, %bb.bl
  %.sroa.7.i.sroa.0.0 = phi i64 [ undef, %bb.bl ], [ undef, %.thread.i ], [ %.sroa.7.i.sroa.0.0.copyload, %bb.bo ] ; 2 uses
  %.sroa.7.i.sroa.4.0 = phi i64 [ undef, %bb.bl ], [ undef, %.thread.i ], [ %.sroa.7.i.sroa.4.0.copyload, %bb.bo ]
  %2 = phi i64 [ 9221120237041090560, %bb.bl ], [ 9218868437227405312, %.thread.i ], [ %.sroa.435.8.copyload.i197, %bb.bo ] ; 2 uses
  %.sroa.033.0.i = phi i32 [ 3, %bb.bl ], [ 3, %.thread.i ], [ 0, %bb.bo ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8v1fP8rbDwN_16protobuf_support.exit.i unwind label %bb.br, !noalias !16

bb.br:                                            ; preds = %bb.bq
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume unwind label %bb.bs, !noalias !16

bb.bs:                                            ; preds = %bb.br
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !16
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8v1fP8rbDwN_16protobuf_support.exit.i: ; preds = %bb.bq
  %.sroa.45.sroa.14.0.extract.shift58 = lshr i64 %.sroa.7.i.sroa.0.0, 32
  %.sroa.45.sroa.14.0.extract.trunc59 = trunc nuw i64 %.sroa.45.sroa.14.0.extract.shift58 to i32
  %.sroa.45.sroa.0.0.extract.trunc44 = trunc i64 %.sroa.7.i.sroa.0.0 to i32
  %.sroa.33.sroa.16.0.extract.shift = lshr i64 %2, 32
  %.sroa.33.sroa.16.0.extract.trunc = trunc nuw i64 %.sroa.33.sroa.16.0.extract.shift to i32
  %.sroa.33.sroa.0.0.extract.trunc = trunc i64 %2 to i32
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !18
  br label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer16next_token_inner.exit.thread

bb.bt:                                            ; preds = %bb.en, %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.ie = call fastcc noundef zeroext i1 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer20lookahead_char_is_in(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 2), !noalias !101
  br i1 %i.ie, label %bb.bu, label %.thread270.i

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !106
  store i64 0, ptr %i.t, align 8, !noalias !106
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !106
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  br label %bb.bv

bb.bv:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs8v1fP8rbDwN_16protobuf_support.exit.i.i.i, %bb.bu
  %storemerge.i.i.i = phi i64 [ 0, %bb.bu ], [ %i.jm, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs8v1fP8rbDwN_16protobuf_support.exit.i.i.i ]
  %.sroa.0.0.i.i.i = phi i1 [ true, %bb.bu ], [ false, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCs8v1fP8rbDwN_16protobuf_support.exit.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i, ptr %.sroa.519.0..sroa_idx.i.i.i, align 8, !noalias !106
  br i1 %.sroa.0.0.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !106
  invoke void @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer7skip_ws(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !108

bb.bx:                                            ; preds = %bb.ca, %bb.bv
  %i.if = load i64, ptr %i.az, align 8, !alias.scope !109, !noalias !108, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !116
  %i.ig = invoke noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.noexc.i.i208.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !117

.noexc.i.i208.i:                                  ; preds = %bb.bx
  %i.ih = icmp eq i32 %i.ig, 39
  br i1 %i.ih, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_in.exit.i.i.i, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.i.i.i

_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.i.i.i: ; preds = %.noexc.i.i208.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !116
  %i.ii = invoke noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %.noexc.1.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !117

.noexc.1.i.i.i:                                   ; preds = %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.i.i.i
  %i.ij = icmp eq i32 %i.ii, 34
  br i1 %i.ij, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_in.exit.i.i.i, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i

_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i: ; preds = %.noexc.1.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !110
  br i1 %.sroa.0.0.i.i.i, label %bb.cb, label %bb.eq

.loopexit.i.i.i:                                  ; preds = %bb.ch, %bb.ce
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.i.i.i, %bb.bx
  %lpad.loopexit78.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread.i.i.i, %bb.cg, %bb.bw
  %lpad.loopexit81.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread75.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit78.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit81.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #14
          to label %common.resume unwind label %bb.ct, !noalias !117

bb.by:                                            ; preds = %bb.bw
  %i.ik = load i64, ptr %i.s, align 8, !range !9, !noalias !106, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ik, -2
  br i1 %.not.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !118 ; 2 uses
  %.sroa.10.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.10.0.copyload.i.i to i32
  %.sroa.10.sroa.9.0.extract.shift.i.i = and i64 %.sroa.10.0.copyload.i.i, -4294967296
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.15.0.copyload.i.i = load i32, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !118
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %.sroa.16.0.copyload.i.i = load i32, ptr %.sroa.16.0..sroa_idx.i.i, align 4, !noalias !118
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !noalias !118
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.18.0.copyload.i.i = load i64, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !106
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !106
  br label %bb.bx

bb.cb:                                            ; preds = %bb.cr, %bb.ci, %bb.bz, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i
  %.sroa.10.sroa.9.0.i.i = phi i64 [ 0, %bb.ci ], [ %.sroa.10.sroa.9.0.extract.shift33.i.i, %bb.cr ], [ %.sroa.10.sroa.9.0.extract.shift.i.i, %bb.bz ], [ 0, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i ]
  %.sroa.10.sroa.0.0.i.i = phi i32 [ %.lcssa.i.i.i, %bb.ci ], [ %.sroa.10.sroa.0.0.extract.trunc28.i.i, %bb.cr ], [ %.sroa.10.sroa.0.0.extract.trunc.i.i, %bb.bz ], [ undef, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i ]
  %.sroa.18.0.i.i = phi i64 [ undef, %bb.ci ], [ %.sroa.18.24.copyload.i.i, %bb.cr ], [ %.sroa.18.0.copyload.i.i, %bb.bz ], [ undef, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i ]
  %.sroa.17.0.i.i = phi i64 [ undef, %bb.ci ], [ %.sroa.17.24.copyload.i.i, %bb.cr ], [ %.sroa.17.0.copyload.i.i, %bb.bz ], [ undef, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i = phi i32 [ undef, %bb.ci ], [ %.sroa.632.0.copyload.i.i.i, %bb.cr ], [ %.sroa.16.0.copyload.i.i, %bb.bz ], [ undef, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i ]
  %.sroa.15.0.i.i = phi i32 [ undef, %bb.ci ], [ %.sroa.531.0.copyload.i.i.i, %bb.cr ], [ %.sroa.15.0.copyload.i.i, %bb.bz ], [ undef, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i ]
  %.sroa.0.0.i207.i = phi i64 [ -9223372036854775806, %bb.ci ], [ %i.jn, %bb.cr ], [ %i.ik, %bb.bz ], [ -9223372036854775808, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_eq.exit.i.1.i.i.i ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ep unwind label %bb.cc, !noalias !117

bb.cc:                                            ; preds = %bb.cb
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.cd, !noalias !117

bb.cd:                                            ; preds = %bb.cc
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !117
  unreachable

_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_in.exit.i.i.i: ; preds = %.noexc.1.i.i.i, %.noexc.i.i208.i
  %.lcssa.i.i.i = phi i32 [ 39, %.noexc.i.i208.i ], [ 34, %.noexc.1.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !110
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cs, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer15next_char_if_in.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !108
  %i.in = invoke noundef range(i32 -1, 1114112) i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %bb.cf unwind label %.loopexit.i.i.i, !noalias !117

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !119
  %.not77.i.i.i = icmp eq i32 %i.in, %.lcssa.i.i.i
  br i1 %.not77.i.i.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !128
  %i.io = invoke noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.noexc51.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !117

.noexc51.i.i.i:                                   ; preds = %bb.cg
  %i.ip = icmp eq i32 %i.io, %.lcssa.i.i.i
  br i1 %i.ip, label %bb.cj, label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !106
  invoke void @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer18next_str_lit_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.cq unwind label %.loopexit.i.i.i, !noalias !108

bb.ci:                                            ; preds = %.noexc51.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !122
  br label %bb.cb

bb.cj:                                            ; preds = %.noexc51.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !122
  %i.iq = load ptr, ptr %1, align 8, !alias.scope !109, !noalias !108, !nonnull !8, !noundef !8 ; 4 uses
  %i.ir = load i64, ptr %i.bb, align 8, !alias.scope !109, !noalias !108, !noundef !8 ; 4 uses
  %i.is = add i64 %i.if, 1                        ; 8 uses
  %i.it = load i64, ptr %i.az, align 8, !alias.scope !109, !noalias !108, !noundef !8
  %i.iu = add i64 %i.it, -1                       ; 7 uses
  %i.iv = icmp ugt i64 %i.is, %i.iu
  %i.iw = icmp ugt i64 %i.iu, %i.ir
  %or.cond.i.i.i210.i = or i1 %i.iv, %i.iw
  br i1 %or.cond.i.i.i210.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread75.i.i.i, label %bb.ck, !prof !129

bb.ck:                                            ; preds = %bb.cj
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer20lookahead_char_is_in:bb.a
  %.not27.i.i.not.i.not.i.not.i.not.i.not.i.not4 = icmp ugt i64 %.sroa.0.05.i25.i.i.i.i, %i.at
  br i1 %.not27.i.i.not.i.not.i.not.i.not.i.not.i.not4, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i, label %.split.us.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i:                          ; preds = %.split.us.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader
  %i.au = phi i64 [ %i.ax, %.split.us.i.i.i.i.i.i.i ], [ %i.at, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader ]
  %.pn.i.i.i.i.i.i5 = phi ptr [ %i.av, %.split.us.i.i.i.i.i.i.i ], [ %1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i5, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.av, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i25.i.i.i.i), !alias.scope !458, !noalias !459
  %i.aw = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.ax = add nsw i64 %i.au, -1                   ; 2 uses
  %.not27.i.i.not.i.not.i.not.i.not.i.not.i.not = icmp ugt i64 %.sroa.0.05.i25.i.i.i.i, %i.ax
  %or.cond = select i1 %i.aw, i1 true, i1 %.not27.i.i.not.i.not.i.not.i.not.i.not.i.not
  br i1 %or.cond, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i, label %.split.us.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.3, %.preheader.split.i.i.i.i.i.i.2, %.preheader.split.i.i.i.i.i.i.1, %.preheader.split.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !463
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, 12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 1, 5) %.sroa.0.05.i.i.i.i.i), !noalias !464
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #18, !noalias !464
  %i.ay = load i64, ptr %i.b, align 8, !range !465, !noalias !463, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !463
  %i.az = trunc nuw i64 %i.ay to i1
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef nonnull readonly dereferenceable(1) %1, i64 range(i64 2, 5) %2), !alias.scope !466, !noalias !464
  %i.ba = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader, %bb.h, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi i1 [ false, %bb.g ], [ true, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %i.ba, %bb.h ], [ %i.az, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader ], [ %i.aw, %.split.us.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !436
  br label %_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer17lookahead_char_isNCNvB2_20lookahead_char_is_in0EBa_.exit

bb.i:                                             ; preds = %bb.b
  %i.bb = trunc nuw nsw i32 %i.e to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.05.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bf, %bb.j ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i.i.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !467, !noalias !464, !noundef !8
  %i.be = icmp eq i8 %i.bd, %i.bb                 ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bf, %2
  %or.cond.i.i.i.i = select i1 %i.be, i1 true, i1 %exitcond.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer17lookahead_char_isNCNvB2_20lookahead_char_is_in0EBa_.exit, label %bb.j

_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer17lookahead_char_isNCNvB2_20lookahead_char_is_in0EBa_.exit: ; preds = %bb.j, %bb.a, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i
  %.sroa.02.0.i.i = phi i1 [ false, %bb.a ], [ %.sroa.0.0.i.i.i.i.i, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i ], [ %i.be, %bb.j ]
  ret i1 %.sroa.02.0.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer20next_json_char_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 21 uses
  %i.b = tail call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !470 ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 -1, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit
    i32 92, label %bb.b
  ]

_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit: ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.438.0..sroa_idx, align 8
  br label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !473
  switch i32 %i.c, label %bb.d [
    i32 -1, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit67
    i32 34, label %bb.e
    i32 39, label %bb.f
    i32 92, label %bb.g
    i32 47, label %bb.h
    i32 98, label %bb.i
    i32 102, label %bb.j
    i32 110, label %bb.k
    i32 114, label %bb.l
    i32 116, label %bb.m
    i32 117, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !476
  %i.d = call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !479 ; 6 uses
  %.not.i.i = icmp eq i32 %i.d, -1
  br i1 %.not.i.i, label %bb.u, label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit67: ; preds = %bb.b
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.447.0..sroa_idx, align 8
  br label %bb.al

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.al

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 34, ptr %i.f, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.f:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 39, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.g:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 92, ptr %i.h, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.h:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 47, ptr %i.i, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.i:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.j, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.j:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 12, ptr %i.k, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.k:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.l, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.l:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 13, ptr %i.m, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.m:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 9, ptr %i.n, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.n:                                             ; preds = %.preheader.preheader
  %i.o = add nsw i32 %i.d, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.o, 10
  br i1 %or.cond.i, label %.preheader.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.p = add nsw i32 %i.d, -65
  %or.cond1.i = icmp ult i32 %i.p, 6
  br i1 %or.cond1.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.q = add nsw i32 %i.d, -97
  %or.cond2.i = icmp ult i32 %i.q, 6
  br i1 %or.cond2.i, label %bb.r, label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.r = add nsw i32 %i.d, -55
  br label %.preheader.1

bb.r:                                             ; preds = %bb.p
  %i.s = add nsw i32 %i.d, -87
  br label %.preheader.1

bb.s:                                             ; preds = %bb.ak
  %i.t = icmp samesign ult i32 %i.as, 1114112
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.as, ptr %i.u, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.t:                                             ; preds = %bb.ak
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.al

bb.u:                                             ; preds = %bb.ah, %.preheader.3, %bb.ac, %.preheader.2, %bb.x, %.preheader.1, %.preheader.preheader, %bb.p
  %.sroa.075.0.ph = phi i64 [ -9223372036854775799, %bb.p ], [ -9223372036854775807, %.preheader.preheader ], [ -9223372036854775807, %.preheader.1 ], [ -9223372036854775799, %bb.x ], [ -9223372036854775807, %.preheader.2 ], [ -9223372036854775799, %bb.ac ], [ -9223372036854775807, %.preheader.3 ], [ -9223372036854775799, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.075.0.ph, ptr %0, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.460.0..sroa_idx, align 8
  br label %bb.al

.preheader.1:                                     ; preds = %bb.r, %bb.q, %bb.n
  %.sroa.0.0.i = phi i32 [ %i.s, %bb.r ], [ %i.r, %bb.q ], [ %i.o, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !476
  %i.v = call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !479 ; 6 uses
  %.not.i.i.1 = icmp eq i32 %i.v, -1
  br i1 %.not.i.i.1, label %bb.u, label %bb.v

bb.v:                                             ; preds = %.preheader.1
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %or.cond.i.1 = icmp ult i32 %i.w, 10
  br i1 %or.cond.i.1, label %.preheader.2, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.x = add nsw i32 %i.v, -65
  %or.cond1.i.1 = icmp ult i32 %i.x, 6
  br i1 %or.cond1.i.1, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.y = add nsw i32 %i.v, -97
  %or.cond2.i.1 = icmp ult i32 %i.y, 6
  br i1 %or.cond2.i.1, label %bb.y, label %bb.u

bb.y:                                             ; preds = %bb.x
  %i.z = add nsw i32 %i.v, -87
  br label %.preheader.2

bb.z:                                             ; preds = %bb.w
  %i.aa = add nsw i32 %i.v, -55
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.z, %bb.y, %bb.v
  %.sroa.0.0.i.1 = phi i32 [ %i.z, %bb.y ], [ %i.aa, %bb.z ], [ %i.w, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !476
  %i.ab = call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !479 ; 6 uses
  %.not.i.i.2 = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.2, label %bb.u, label %bb.aa

bb.aa:                                            ; preds = %.preheader.2
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %or.cond.i.2 = icmp ult i32 %i.ac, 10
  br i1 %or.cond.i.2, label %.preheader.3, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ad = add nsw i32 %i.ab, -65
  %or.cond1.i.2 = icmp ult i32 %i.ad, 6
  br i1 %or.cond1.i.2, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ae = add nsw i32 %i.ab, -97
  %or.cond2.i.2 = icmp ult i32 %i.ae, 6
  br i1 %or.cond2.i.2, label %bb.ad, label %bb.u

bb.ad:                                            ; preds = %bb.ac
  %i.af = add nsw i32 %i.ab, -87
  br label %.preheader.3

bb.ae:                                            ; preds = %bb.ab
  %i.ag = add nsw i32 %i.ab, -55
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.ae, %bb.ad, %bb.aa
  %.sroa.0.0.i.2 = phi i32 [ %i.af, %bb.ad ], [ %i.ag, %bb.ae ], [ %i.ac, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = shl nuw nsw i32 %.sroa.0.0.i, 8
  %i.ai = shl nuw nsw i32 %.sroa.0.0.i.1, 4
  %i.aj = add nuw nsw i32 %i.ah, %i.ai
  %i.ak = add nuw nsw i32 %.sroa.0.0.i.2, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !476
  %i.al = call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !479 ; 6 uses
  %.not.i.i.3 = icmp eq i32 %i.al, -1
  br i1 %.not.i.i.3, label %bb.u, label %bb.af

bb.af:                                            ; preds = %.preheader.3
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %or.cond.i.3 = icmp ult i32 %i.am, 10
  br i1 %or.cond.i.3, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.an = add nsw i32 %i.al, -65
  %or.cond1.i.3 = icmp ult i32 %i.an, 6
  br i1 %or.cond1.i.3, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ao = add nsw i32 %i.al, -97
  %or.cond2.i.3 = icmp ult i32 %i.ao, 6
  br i1 %or.cond2.i.3, label %bb.ai, label %bb.u

bb.ai:                                            ; preds = %bb.ah
  %i.ap = add nsw i32 %i.al, -87
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.aq = add nsw i32 %i.al, -55
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.af
  %.sroa.0.0.i.3 = phi i32 [ %i.ap, %bb.ai ], [ %i.aq, %bb.aj ], [ %i.am, %bb.af ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = shl nuw nsw i32 %i.ak, 4
  %i.as = add nuw nsw i32 %.sroa.0.0.i.3, %i.ar   ; 3 uses
  %i.at = xor i32 %i.as, 55296
  %i.au = icmp ult i32 %i.at, 2048
  br i1 %i.au, label %bb.t, label %bb.s

bb.al:                                            ; preds = %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit, %bb.u, %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit67, %bb.c, %bb.s, %bb.t, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer7skip_ws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.f = phi i64 [ %i.gg, %.loopexit ], [ %.pre, %bb.a ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !481, !nonnull !8, !noundef !8 ; 10 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !481 ; 27 uses
  %.sroa.7.0..sroa_idx.promoted.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !481
  %.sroa.9.0..sroa_idx.promoted.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !481
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.4.0.copyload.i ; 8 uses
  br label %bb.c

thread-pre-split.i:                               ; preds = %bb.z, %bb.y
  %i.h = phi i32 [ %i.i, %bb.z ], [ %i.eq, %bb.y ]
  %storemerge.i = phi i32 [ %i.er, %bb.z ], [ 1, %bb.y ] ; 2 uses
  store i32 %storemerge.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !484
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %storemerge27.i = phi i32 [ %storemerge.i, %thread-pre-split.i ], [ %.sroa.9.0..sroa_idx.promoted.i, %bb.b ]
  %i.i = phi i32 [ %i.h, %thread-pre-split.i ], [ %.sroa.7.0..sroa_idx.promoted.i, %bb.b ] ; 2 uses
  %i.j = phi i64 [ %i.eo, %thread-pre-split.i ], [ %i.f, %bb.b ] ; 28 uses
  %i.k = icmp eq i64 %i.j, 0                      ; 4 uses
  br i1 %i.k, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9rem_chars.exit.i3.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i1.i = icmp ult i64 %i.j, %.sroa.4.0.copyload.i
  br i1 %.not.i.i.i1.i, label %bb.e, label %.split.i.i.i2.i

.split.i.i.i2.i:                                  ; preds = %bb.d
  %i.l = icmp eq i64 %i.j, %.sroa.4.0.copyload.i
  br i1 %i.l, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9rem_chars.exit.i3.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.j
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !487, !noalias !490, !noundef !8
  %i.o = icmp sgt i8 %i.n, -65
  br i1 %i.o, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9rem_chars.exit.i3.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.i.i.i2.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i, i64 noundef %i.j, i64 noundef %.sroa.4.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #15, !noalias !490
  unreachable

_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9rem_chars.exit.i3.i: ; preds = %bb.e, %.split.i.i.i2.i, %bb.c
  %i.p = sub nuw i64 %.sroa.4.0.copyload.i, %i.j  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.j ; 14 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_RNCNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB7_5Lexer16skip_whitespaces0Bb_.exit.thread7.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9rem_chars.exit.i3.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 4 uses
  %i.t = load i8, ptr %i.q, align 1, !noalias !499, !noundef !8 ; 10 uses
  %i.u = icmp sgt i8 %i.t, -1                     ; 2 uses
  br i1 %i.u, label %bb.h, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i.i4.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i.i4.i: ; preds = %bb.g
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = add nuw nsw i64 %i.j, 1
  %i.y = icmp samesign ne i64 %i.x, %.sroa.4.0.copyload.i
  tail call void @llvm.assume(i1 %i.y), !noalias !504
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.s, align 1, !noalias !499, !noundef !8
  %i.ab = shl nuw nsw i32 %i.w, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i.i13.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = zext nneg i8 %i.t to i32
  br label %bb.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i.i13.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i.i4.i
  %i.ah = add nuw nsw i64 %i.j, 2
  %i.ai = icmp samesign ne i64 %i.ah, %.sroa.4.0.copyload.i
  tail call void @llvm.assume(i1 %i.ai), !noalias !504
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 3 ; 2 uses
  %i.ak = load i8, ptr %i.z, align 1, !noalias !499, !noundef !8
  %i.al = shl nuw nsw i32 %i.ad, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.w, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.t, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit16.i.i.i14.i, label %bb.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit16.i.i.i14.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i.i13.i
  %i.as = add nuw nsw i64 %i.j, 3
  %i.at = icmp samesign ne i64 %i.as, %.sroa.4.0.copyload.i
  tail call void @llvm.assume(i1 %i.at), !noalias !504
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.av = load i8, ptr %i.aj, align 1, !noalias !499, !noundef !8
  %i.aw = shl nuw nsw i32 %i.w, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ao, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit16.i.i.i14.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i.i13.i, %bb.h, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i.i4.i
  %.sroa.0.020.i5.i = phi ptr [ %i.s, %bb.h ], [ %i.au, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit16.i.i.i14.i ], [ %i.aj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i.i13.i ], [ %i.z, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i.i4.i ] ; 5 uses
  %.sroa.4.0.i.ph.i.i6.i = phi i32 [ %i.ag, %bb.h ], [ %i.bc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit16.i.i.i14.i ], [ %i.aq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i.i13.i ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i.i4.i ] ; 8 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i6.i, 1114112
  tail call void @llvm.assume(i1 %i.bd), !noalias !504
  %i.be = icmp eq ptr %.sroa.0.020.i5.i, %i.g
  br i1 %i.be, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit16.i8.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load i8, ptr %.sroa.0.020.i5.i, align 1, !noalias !505, !noundef !8 ; 3 uses
  %i.bg = icmp sgt i8 %i.bf, -1
  br i1 %i.bg, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit16.i8.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i10.i7.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i10.i7.i: ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i5.i, i64 1
  %i.bi = icmp ne ptr %i.bh, %i.g
  tail call void @llvm.assume(i1 %i.bi), !noalias !504
  %i.bj = icmp samesign ugt i8 %i.bf, -33
  br i1 %i.bj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i14.i11.i, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit16.i8.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i14.i11.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i10.i7.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i5.i, i64 2
  %i.bl = icmp ne ptr %i.bk, %i.g
  tail call void @llvm.assume(i1 %i.bl), !noalias !504
  %i.bm = icmp samesign ugt i8 %i.bf, -17
  br i1 %i.bm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit16.i.i15.i12.i, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit16.i8.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit16.i.i15.i12.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i14.i11.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i5.i, i64 3
  %i.bo = icmp ne ptr %i.bn, %i.g
  tail call void @llvm.assume(i1 %i.bo), !noalias !504
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit16.i8.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit16.i8.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit12.i.i10.i7.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit14.i.i14.i11.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8v1fP8rbDwN_16protobuf_support.exit16.i.i15.i12.i, %bb.j, %bb.i
  switch i32 %.sroa.4.0.i.ph.i.i6.i, label %bb.k [
end_hunk_1
