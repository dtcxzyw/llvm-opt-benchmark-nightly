Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.14?download=true
inline.NumInlined: 10775
inline.NumDeleted: 3811
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph:bb.a

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !140204
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ci) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel8ReceiverINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.ee, !dbg !140205

bb.k:                                             ; preds = %bb.e
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140192
  unreachable, !dbg !140192

bb.l:                                             ; preds = %bb.d
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel8ReceiverINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit91.thread

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !140206
  %i.ct = load i64, ptr %i.bp, align 8, !dbg !140206, !range !3987, !noundef !3769 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !140206
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !140206, !noundef !3769 ; 2 uses
  store i64 %i.ct, ptr %i.br, align 8, !dbg !140206
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 8, !dbg !140206
  store ptr %i.cv, ptr %i.cw, align 8, !dbg !140206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !140207
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16, !dbg !140207
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !140207, !range !4051, !noundef !3769
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 24, !dbg !140207
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !140207
  store i64 %i.cy, ptr %i.bq, align 8, !dbg !140207
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !140207 ; 9 uses
  store ptr %i.da, ptr %i.db, align 8, !dbg !140207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !140208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !140209
  %i.dc = invoke noundef nonnull align 8 ptr @_RNvCshZ4kA9mlxmz_13polars_config6config()
          to label %bb.v unwind label %bb.u, !dbg !140210

.body152:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit.i147, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit2.i, %bb.u
  %.sroa.029.1 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit2.i ], [ %.sroa.029.2, %bb.u ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit.i147 ], !dbg !140211
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit2.i ], [ %i.dm, %bb.u ], [ %.pn.i148, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit.i147 ] ; 2 uses
  invoke void @_RNvXsb_NtCslovz2ii29zg_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEENtNtNtB23_3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %bb.o unwind label %bb.n, !dbg !140212

bb.n:                                             ; preds = %.body152
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel14ReceiverFlavorINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bq) #38
          to label %.body unwind label %bb.t, !dbg !140212

bb.o:                                             ; preds = %.body152
  call void @llvm.experimental.noalias.scope.decl(metadata !139844), !dbg !140212
  %i.de = load i64, ptr %i.bq, align 8, !dbg !140213, !range !4051, !alias.scope !139845, !noundef !3769
  switch i64 %i.de, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel8ReceiverINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit91 [
    i64 3, label %bb.p
    i64 4, label %bb.r
  ], !dbg !140213

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !139846), !dbg !140213
  call void @llvm.experimental.noalias.scope.decl(metadata !139847), !dbg !140214
  %i.df = load ptr, ptr %i.db, align 8, !dbg !140215, !alias.scope !139848, !nonnull !3769, !noundef !3769
  %i.dg = atomicrmw add ptr %i.df, i64 -1 release, align 8, !dbg !140216, !noalias !139849
  %i.dh = icmp eq i64 %i.dg, 1, !dbg !140217
  br i1 %i.dh, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel8ReceiverINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit91, !dbg !140217

bb.q:                                             ; preds = %bb.p
  fence acquire, !dbg !140218
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors2at7ChannelE9drop_slowCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel8ReceiverINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit91 unwind label %bb.ee, !dbg !140219

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !139850), !dbg !140213
  call void @llvm.experimental.noalias.scope.decl(metadata !139851), !dbg !140220
  %i.di = load ptr, ptr %i.db, align 8, !dbg !140221, !alias.scope !139852, !nonnull !3769, !noundef !3769
  %i.dj = atomicrmw add ptr %i.di, i64 -1 release, align 8, !dbg !140222, !noalias !139853
  %i.dk = icmp eq i64 %i.dj, 1, !dbg !140223
  br i1 %i.dk, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel8ReceiverINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit91, !dbg !140223

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !140224
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslovz2ii29zg_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel8ReceiverINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit91 unwind label %bb.ee, !dbg !140225

bb.t:                                             ; preds = %bb.n
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140212
  unreachable, !dbg !140212

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit2.i150, %bb.dn, %bb.v, %bb.m
  %.sroa.029.2 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit2.i150 ], [ false, %bb.dn ], [ true, %bb.v ], [ true, %bb.m ], !dbg !140191
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.v:                                             ; preds = %bb.m
  %i.dn = load atomic i64, ptr %i.dc monotonic, align 8, !dbg !140226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !dbg !140227
  invoke void @_RNvXs3_NtNtCskY9G75ZWc4U_11polars_expr5state15execution_stateNtB5_14ExecutionStateNtNtCscgRAwXFJnXP_4core7default7Default7default(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.bn)
          to label %bb.w unwind label %bb.u, !dbg !140227

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %i.bo, i64 136, !dbg !140228 ; 2 uses
  store i64 %i.dn, ptr %i.do, align 8, !dbg !140228
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32, !dbg !140228 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dp, ptr noundef nonnull align 8 dereferenceable(104) %i.bn, i64 104, i1 false), !dbg !140228
  store i64 %i.ca, ptr %i.bo, align 8, !dbg !140228
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !140228
  store ptr %i.cc, ptr %i.dq, align 8, !dbg !140228
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bo, i64 16, !dbg !140228 ; 5 uses
  store i64 %i.ct, ptr %i.dr, align 8, !dbg !140228
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bo, i64 24, !dbg !140228
  store ptr %i.cv, ptr %i.ds, align 8, !dbg !140228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !dbg !140229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !139860
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtBP_9GraphNodeE4iterBR_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.ab unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140230

.body117:                                         ; preds = %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ec, %.body99
  %.pn67 = phi { ptr, i32 } [ %.pn63, %.body99 ], [ %i.rr, %bb.ec ], [ %lpad.loopexit.split-lp1064, %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskY9G75ZWc4U_11polars_expr5state15execution_state14ExecutionStateECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(104) %i.dp)
          to label %bb.y unwind label %bb.x, !dbg !140231

bb.x:                                             ; preds = %.body117
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs3_NtCslovz2ii29zg_17crossbeam_channel7channelINtB5_6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEENtNtNtB21_3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.bo)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.aa, !dbg !140232

bb.y:                                             ; preds = %.body117
  invoke void @_RNvXs3_NtCslovz2ii29zg_17crossbeam_channel7channelINtB5_6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEENtNtNtB21_3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.bo)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit2.i unwind label %bb.z, !dbg !140233

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.z, %bb.x
  invoke void @_RNvXs3_NtCslovz2ii29zg_17crossbeam_channel7channelINtB5_6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEENtNtNtB21_3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dr)
          to label %.body unwind label %bb.aa, !dbg !140234

bb.z:                                             ; preds = %bb.y
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit2.i: ; preds = %bb.y
  invoke void @_RNvXs3_NtCslovz2ii29zg_17crossbeam_channel7channelINtB5_6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEENtNtNtB21_3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dr)
          to label %.body152 unwind label %bb.ee, !dbg !140235

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCslovz2ii29zg_17crossbeam_channel7channel6SenderINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECs2g09Ig8GZd6_13polars_stream.exit.i, %bb.x
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140231
  unreachable, !dbg !140231

.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph933, %bb.jq, %.lr.ph937, %bb.jn, %bb.ac, %.invoke, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs5ERpa6sqwDS_7slotmap9secondary4SlotINtNtBL_4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEEEECs2g09Ig8GZd6_13polars_stream.exit.i, %bb.dm, %bb.af, %bb.w
  %lpad.loopexit.split-lp1064 = landingpad { ptr, i32 }
          cleanup
  br label %.body117

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !dbg !139860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !dbg !139860
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  br label %bb.ac, !dbg !140236

bb.ac:                                            ; preds = %._crit_edge938, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !140237
  invoke void @_RNvXse_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_4IterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtBM_9GraphNodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.ad unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140237

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load i32, ptr %i.bk, align 8, !dbg !140237, !noundef !3769 ; 3 uses
  %.not = icmp eq i32 %i.dz, 0, !dbg !140237
  br i1 %.not, label %bb.af, label %bb.ae, !dbg !140237

bb.ae:                                            ; preds = %bb.ad
  %i.ea = load i32, ptr %i.dw, align 4, !dbg !140238, !noundef !3769 ; 2 uses
  %i.eb = load ptr, ptr %i.dx, align 8, !dbg !140239, !nonnull !3769, !align !3958, !noundef !3769 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8, !dbg !140240
  %i.ed = load ptr, ptr %i.ec, align 8, !dbg !140240, !nonnull !3769, !noundef !3769 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16, !dbg !140241
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !140241, !noundef !3769 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ef, 3, !dbg !140242
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx, !dbg !140242
  %i.eh = icmp eq i64 %i.ef, 0, !dbg !140243
  br i1 %i.eh, label %._crit_edge, label %.lr.ph933, !dbg !140244

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !140245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !140246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !140246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !140247
  invoke void @_RNvMs_NtCs5ERpa6sqwDS_7slotmap9secondaryINtB4_12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEE13with_capacityB10_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bj, i64 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140248

.preheader:                                       ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.611.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.712.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.et = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 7 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bd, i64 40 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.4.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.fp = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 11 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 14 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.7198.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 4 uses
  %i.ge = insertelement <2 x ptr> poison, ptr %1, i64 0, !dbg !140249
  %i.gf = insertelement <2 x ptr> %i.ge, ptr %i.dy, i64 1, !dbg !140249 ; 2 uses
  br label %bb.ag, !dbg !140250

bb.ag:                                            ; preds = %.preheader, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEB1p_.exit139
  %i.gg = invoke noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core6config7verbose()
          to label %bb.ah unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140250

.body99:                                          ; preds = %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body105, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i, %bb.bt, %.body.thread.i, %bb.cq, %bb.ar, %bb.as
  %.pn63 = phi { ptr, i32 } [ %i.gs, %bb.ar ], [ %.pn, %.body105 ], [ %i.ld, %bb.bt ], [ %lpad.loopexit.split-lp947, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gs, %bb.as ], [ %lpad.loopexit.split-lp976, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ph, %bb.cq ], [ %.pn.pn.i.i, %.body.i.i ], [ %eh.lpad-body27.i, %.body.thread.i ], [ %lpad.loopexit.split-lp979, %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs5ERpa6sqwDS_7slotmap9secondary12SecondaryMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellyEEEEB1z_(ptr noalias noundef align 8 dereferenceable(32) %i.bj) #38
          to label %.body117 unwind label %bb.ee, !dbg !140251

.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyEEB1h_.exit137, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEEB1h_.exit.i.i, %_RNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockers.exit.i, %bb.au, %bb.an, %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECs2g09Ig8GZd6_13polars_stream.exit, %bb.ap, %bb.ai, %bb.aj, %bb.ag, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyEEB1h_.exit144, %bb.dv, %bb.dc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyEEB1h_.exit, %bb.eg, %bb.dg, %bb.df, %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECs2g09Ig8GZd6_13polars_stream.exit111, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEB1p_.exit109
  %lpad.loopexit.split-lp979 = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.gg, label %bb.aj, label %bb.ai, !dbg !140250

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !139876
  %i.gh = load ptr, ptr %i.bv, align 8, !dbg !140252, !noundef !3769 ; 2 uses
  %.not50 = icmp eq ptr %i.gh, null, !dbg !140252
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16, !dbg !140253
  %.sroa.011.0 = select i1 %.not50, ptr null, ptr %i.gi, !dbg !140253
  invoke void @_RNvMNtCs2g09Ig8GZd6_13polars_stream5graphNtB2_5Graph17update_all_states(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 %i.bo, ptr noundef align 8 %.sroa.011.0)
          to label %bb.ak unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140254

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @748, ptr noundef nonnull inttoptr (i64 73 to ptr))
          to label %bb.ai unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140255

bb.ak:                                            ; preds = %bb.ai
  %i.gj = load i64, ptr %i.bi, align 8, !dbg !140256, !range !4069, !noundef !3769
  %.not51 = icmp eq i64 %i.gj, 18, !dbg !140256
  br i1 %.not51, label %bb.am, label %bb.al, !dbg !140257

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bi, i64 72, i1 false), !dbg !140258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !140259
  br label %bb.eb, !dbg !140260

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !140259
  %i.gk = load ptr, ptr %i.bv, align 8, !dbg !140261, !noundef !3769 ; 3 uses
  %.not52 = icmp eq ptr %i.gk, null, !dbg !140261
  br i1 %.not52, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEEB2i_.exit98, label %bb.ao, !dbg !140262

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEEB2i_.exit98: ; preds = %bb.au, %bb.at, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !139879
  %i.gl = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80) acquire, align 8, !dbg !140263
  %i.gm = icmp eq i32 %i.gl, 0, !dbg !140264
  br i1 %i.gm, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.an, !dbg !140264, !prof !3821

bb.an:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEEB2i_.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !140265
  store ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr %i.al, align 8, !dbg !140266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !140267
  store ptr %i.al, ptr %i.ak, align 8, !dbg !140267
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80), i1 noundef zeroext true, ptr noundef nonnull %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %.noexc95 unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140268

.noexc95:                                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !140269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !140270
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !140270

bb.ao:                                            ; preds = %bb.am
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16, !dbg !140271 ; 6 uses
  %i.go = cmpxchg weak ptr %i.gn, i8 0, i8 1 acquire monotonic, align 1, !dbg !140272
  %i.gp = extractvalue { i8, i1 } %i.go, 1, !dbg !140272
  br i1 %i.gp, label %bb.aq, label %bb.ap, !dbg !140273, !prof !3821

bb.ap:                                            ; preds = %bb.ao
  %i.gq = invoke noundef zeroext i1 @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.gn, i64 undef, i32 noundef 1000000000)
          to label %bb.aq unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140274 ; 0 uses

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 24, !dbg !140275
  invoke void @_RNvMs_NtCs2g09Ig8GZd6_13polars_stream7metricsNtB4_12GraphMetrics5flush(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.gr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dy)
          to label %bb.at unwind label %bb.ar, !dbg !140276

bb.ar:                                            ; preds = %bb.aq
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gt = cmpxchg ptr %i.gn, i8 1, i8 0 release monotonic, align 1, !dbg !140277
  %i.gu = extractvalue { i8, i1 } %i.gt, 1, !dbg !140277
  br i1 %i.gu, label %.body99, label %bb.as, !dbg !140278, !prof !3821

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.gn, i1 noundef zeroext false)
          to label %.body99 unwind label %bb.ee, !dbg !140279

bb.at:                                            ; preds = %bb.aq
  %i.gv = cmpxchg ptr %i.gn, i8 1, i8 0 release monotonic, align 1, !dbg !140280
  %i.gw = extractvalue { i8, i1 } %i.gv, 1, !dbg !140280
  br i1 %i.gw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEEB2i_.exit98, label %bb.au, !dbg !140281, !prof !3821

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.gn, i1 noundef zeroext false)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEEB2i_.exit98 unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140282

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %.noexc95, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEEB2i_.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !140283
  store ptr %i.bq, ptr %i.bg, align 8, !dbg !140283
  store i8 0, ptr %i.ei, align 8, !dbg !140283
  invoke void @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager17block_in_place_onNCNvNtCs2g09Ig8GZd6_13polars_stream7execute13execute_graph0EB1f_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bh, ptr noundef nonnull align 8 @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.bg)
          to label %bb.av unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140284

bb.av:                                            ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECs2g09Ig8GZd6_13polars_stream.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !140285
  %i.gx = load i64, ptr %i.bh, align 8, !dbg !140286, !range !4069, !noundef !3769
  %.not53 = icmp eq i64 %i.gx, 18, !dbg !140286
  br i1 %.not53, label %bb.ax, label %bb.aw, !dbg !140287

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 72, i1 false), !dbg !140288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !140289
  br label %bb.eb, !dbg !140260

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !140289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !140290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !140291, !noalias !139890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !140291, !noalias !139891
  store i64 0, ptr %i.ac, align 8, !dbg !140292, !noalias !139891
  store ptr inttoptr (i64 4 to ptr), ptr %i.ej, align 8, !dbg !140292, !noalias !139891
  store i64 0, ptr %i.ek, align 8, !dbg !140292, !noalias !139891
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtBP_9GraphNodeE4iterBR_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140293, !noalias !139892

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph940, %.split.i.i.i, %.lr.ph.i.i.i, %bb.bd, %bb.az, %bb.ax
  %lpad.loopexit.split-lp976 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #38
          to label %.body99 unwind label %bb.be, !dbg !140294, !noalias !139892

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !140295, !noalias !139891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !dbg !140295, !noalias !139891
  br label %bb.az, !dbg !140296

bb.az:                                            ; preds = %.backedge.i.i, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !140297, !noalias !139891
  invoke void @_RNvXse_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_4IterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtBM_9GraphNodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140297, !noalias !139892

bb.ba:                                            ; preds = %bb.az
  %i.gy = load i32, ptr %i.z, align 8, !dbg !140297, !noalias !139891, !noundef !3769
  %.not.i.i = icmp eq i32 %i.gy, 0, !dbg !140297
  br i1 %.not.i.i, label %_RNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockers.exit.i, label %bb.bb, !dbg !140297

bb.bb:                                            ; preds = %bb.ba
  %3 = load <2 x i32>, ptr %i.z, align 8, !dbg !140298, !noalias !139891
  %i.gz = load ptr, ptr %i.el, align 8, !dbg !140299, !noalias !139891, !nonnull !3769, !align !3958, !noundef !3769 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32, !dbg !140300
  %i.hb = load ptr, ptr %i.ha, align 8, !dbg !140300, !noalias !139892, !nonnull !3769, !noundef !3769 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 40, !dbg !140301
  %i.hd = load i64, ptr %i.hc, align 8, !dbg !140301, !noalias !139892, !noundef !3769 ; 2 uses
  %.idx945 = shl nuw nsw i64 %i.hd, 3, !dbg !140302
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.idx945, !dbg !140302
  %i.hf = icmp eq i64 %i.hd, 0, !dbg !140303
  br i1 %i.hf, label %._crit_edge941, label %.lr.ph940, !dbg !140304

bb.bc:                                            ; preds = %.noexc.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hi, i64 8, !dbg !140305 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.he, !dbg !140303
  br i1 %i.hh, label %._crit_edge941, label %.lr.ph940, !dbg !140304

.lr.ph940:                                        ; preds = %bb.bb, %bb.bc
  %i.hi = phi ptr [ %i.hg, %bb.bc ], [ %i.hb, %bb.bb ] ; 3 uses
  %.val3.i.i.i = load i32, ptr %i.hi, align 4, !dbg !140306, !range !139893, !noalias !139894, !noundef !3769
  %i.hj = getelementptr i8, ptr %i.hi, i64 4, !dbg !140306
  %.val4.i.i.i = load i32, ptr %i.hj, align 4, !dbg !140306, !noalias !139894, !noundef !3769
  %i.hk = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyNtBP_11LogicalPipeEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dy, i32 noundef %.val3.i.i.i, i32 noundef %.val4.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140307, !noalias !139892

.noexc.i.i:                                       ; preds = %.lr.ph940
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32, !dbg !140308
  %i.hm = load i8, ptr %i.hl, align 8, !dbg !140308, !range !4015, !noalias !139894, !noundef !3769
  %i.hn = icmp eq i8 %i.hm, 0, !dbg !140309
  br i1 %i.hn, label %bb.bc, label %.backedge.i.i, !dbg !140306

.backedge.i.i:                                    ; preds = %.noexc.i.i, %_RNCNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockerss_0B5_.exit.backedge.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyE8push_mutBJ_.exit.i.i, %._crit_edge941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !140310, !noalias !139891
  br label %bb.az, !dbg !140297

._crit_edge941:                                   ; preds = %bb.bc, %bb.bb
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gz, i64 8, !dbg !140311
  %i.hp = load ptr, ptr %i.ho, align 8, !dbg !140311, !noalias !139892, !nonnull !3769, !noundef !3769 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gz, i64 16, !dbg !140312
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !140312, !noalias !139892, !noundef !3769 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.hr, 3, !dbg !140313
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.idx.i.i, !dbg !140313
  %.not.i.i.i = icmp eq i64 %i.hr, 0, !dbg !140314
  br i1 %.not.i.i.i, label %.backedge.i.i, label %.lr.ph.i.i.i, !dbg !140315

.lr.ph.i.i.i:                                     ; preds = %._crit_edge941, %_RNCNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockerss_0B5_.exit.backedge.i.i.i
  %i.ht = phi ptr [ %i.hu, %_RNCNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockerss_0B5_.exit.backedge.i.i.i ], [ %i.hp, %._crit_edge941 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8, !dbg !140316 ; 2 uses
  %.val3.i2.i.i = load i32, ptr %i.ht, align 4, !dbg !140317, !range !139893, !noalias !139906, !noundef !3769 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.ht, i64 4, !dbg !140317
  %.val4.i3.i.i = load i32, ptr %i.hv, align 4, !dbg !140317, !noalias !139906, !noundef !3769 ; 2 uses
  %i.hw = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyNtBP_11LogicalPipeEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dy, i32 noundef %.val3.i2.i.i, i32 noundef %.val4.i3.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140318, !noalias !139892

.noexc4.i.i:                                      ; preds = %.lr.ph.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32, !dbg !140319
  %i.hy = load i8, ptr %i.hx, align 8, !dbg !140319, !range !4015, !noalias !139906, !noundef !3769
  %i.hz = icmp eq i8 %i.hy, 1, !dbg !140320
  br i1 %i.hz, label %.split.i.i.i, label %_RNCNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockerss_0B5_.exit.backedge.i.i.i, !dbg !140320

.split.i.i.i:                                     ; preds = %.noexc4.i.i
  %i.ia = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyNtBP_11LogicalPipeEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dy, i32 noundef %.val3.i2.i.i, i32 noundef %.val4.i3.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140321, !noalias !139892

.noexc5.i.i:                                      ; preds = %.split.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 33, !dbg !140322
  %i.ic = load i8, ptr %i.ib, align 1, !dbg !140322, !range !4015, !noalias !139906, !noundef !3769
  %i.id = icmp eq i8 %i.ic, 1, !dbg !140323
  br i1 %i.id, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_7execute31find_runnable_pipeline_blockerss_0EBU_.exit.i.i, label %_RNCNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockerss_0B5_.exit.backedge.i.i.i, !dbg !140317

_RNCNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockerss_0B5_.exit.backedge.i.i.i: ; preds = %.noexc5.i.i, %.noexc4.i.i
  %.not6.i.i.i = icmp eq ptr %i.hu, %i.hs, !dbg !140314
  br i1 %.not6.i.i.i, label %.backedge.i.i, label %.lr.ph.i.i.i, !dbg !140315

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_7execute31find_runnable_pipeline_blockerss_0EBU_.exit.i.i: ; preds = %.noexc5.i.i
  %i.ie = load i64, ptr %i.ek, align 8, !dbg !140324, !alias.scope !139907, !noalias !139891, !noundef !3769 ; 3 uses
  %i.if = load i64, ptr %i.ac, align 8, !dbg !140325, !range !3935, !alias.scope !139907, !noalias !139891, !noundef !3769
  %i.ig = icmp eq i64 %i.ie, %i.if, !dbg !140326
  br i1 %i.ig, label %bb.bd, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyE8push_mutBJ_.exit.i.i, !dbg !140326

bb.bd:                                            ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_7execute31find_runnable_pipeline_blockerss_0EBU_.exit.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyE8push_mutBJ_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140327, !noalias !139892

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyE8push_mutBJ_.exit.i.i: ; preds = %bb.bd, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_7execute31find_runnable_pipeline_blockerss_0EBU_.exit.i.i
  %i.ih = load ptr, ptr %i.ej, align 8, !dbg !140328, !alias.scope !139907, !noalias !139891, !nonnull !3769, !noundef !3769
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.ie, !dbg !140329
  store <2 x i32> %3, ptr %i.ii, align 4, !dbg !140330, !noalias !139892
  %i.ij = add i64 %i.ie, 1, !dbg !140331
  store i64 %i.ij, ptr %i.ek, align 8, !dbg !140331, !alias.scope !139907, !noalias !139891
  br label %.backedge.i.i, !dbg !140332

bb.be:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140333, !noalias !139892
  unreachable, !dbg !140333

_RNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockers.exit.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !140310, !noalias !139891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !140334, !noalias !139891
  %.sroa.0.0.copyload.i = load i64, ptr %i.ac, align 8, !dbg !140335, !noalias !139908
  %.sroa.4.0.copyload.i = load ptr, ptr %i.ej, align 8, !dbg !140335, !noalias !139908, !nonnull !3769, !noundef !3769 ; 3 uses
  %.sroa.5.0.copyload.i = load i64, ptr %i.ek, align 8, !dbg !140335, !noalias !139908 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !140294, !noalias !139891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !140336, !noalias !139890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !140337, !noalias !139890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !140337, !noalias !139890
  %i.il = icmp ult i64 %.sroa.5.0.copyload.i, 1152921504606846976, !dbg !140338
  call void @llvm.assume(i1 %i.il), !dbg !140339
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i, !dbg !140340
  store ptr %.sroa.4.0.copyload.i, ptr %i.ag, align 8, !dbg !140341, !noalias !139890
  store i64 %.sroa.0.0.copyload.i, ptr %i.em, align 8, !dbg !140341, !noalias !139890
  store ptr %.sroa.4.0.copyload.i, ptr %i.en, align 8, !dbg !140341, !noalias !139890
  store ptr %i.im, ptr %i.eo, align 8, !dbg !140341, !noalias !139890
  invoke void @_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENCNvNtBV_7execute22find_runnable_subgraph0EBV_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %.noexc101 unwind label %.loopexit.split-lp250.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140342

.noexc101:                                        ; preds = %_RNvNtCs2g09Ig8GZd6_13polars_stream7execute31find_runnable_pipeline_blockers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !140343, !noalias !139890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !140344, !noalias !139890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !dbg !140344, !noalias !139890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !140345, !noalias !139890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false), !dbg !140345, !noalias !139890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !140346, !noalias !139890
  %i.in = load ptr, ptr %i.eq, align 8, !dbg !140347, !noalias !139890, !nonnull !3769, !noundef !3769 ; 10 uses
  %i.io = load i64, ptr %i.er, align 8, !dbg !140348, !noalias !139890, !noundef !3769 ; 5 uses
  %.idx946 = shl nuw nsw i64 %i.io, 3, !dbg !140349
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 %.idx946, !dbg !140349 ; 2 uses
  %i.iq = icmp eq i64 %i.io, 0, !dbg !140350
  br i1 %i.iq, label %._crit_edge943, label %.lr.ph942, !dbg !140351

bb.bf:                                            ; preds = %.noexc.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.it, i64 8, !dbg !140352 ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.ip, !dbg !140350
  br i1 %i.is, label %._crit_edge943, label %.lr.ph942, !dbg !140351

.lr.ph942:                                        ; preds = %.noexc101, %bb.bf
  %i.it = phi ptr [ %i.ir, %bb.bf ], [ %i.in, %.noexc101 ] ; 3 uses
  %.val3.i.i = load i32, ptr %i.it, align 4, !dbg !140353, !range !139893, !noalias !139909, !noundef !3769
  %i.iu = getelementptr i8, ptr %i.it, i64 4, !dbg !140353
  %.val4.i.i = load i32, ptr %i.iu, align 4, !dbg !140353, !noalias !139909, !noundef !3769
  %i.iv = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtBP_9GraphNodeEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, i32 noundef %.val3.i.i, i32 noundef %.val4.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335)
          to label %.noexc.i unwind label %bb.cp, !dbg !140354, !noalias !139910

.noexc.i:                                         ; preds = %.lr.ph942
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 40, !dbg !140355
  %i.ix = load i64, ptr %i.iw, align 8, !dbg !140355, !noalias !139909, !noundef !3769 ; 2 uses
  %i.iy = icmp ult i64 %i.ix, 1152921504606846976, !dbg !140356
  call void @llvm.assume(i1 %i.iy), !dbg !140357
  %i.iz = icmp eq i64 %i.ix, 0, !dbg !140358
  br i1 %i.iz, label %bb.bf, label %bb.bg, !dbg !140353

bb.bg:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !140359, !noalias !139890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !140360, !noalias !139890
  %i.ja = load i64, ptr %i.aj, align 8, !dbg !140361, !range !3935, !noalias !139890, !noundef !3769
  %i.jb = icmp ult i64 %i.io, 1152921504606846976, !dbg !140362
  call void @llvm.assume(i1 %i.jb), !dbg !140363
  %.idx.i = shl nuw nsw i64 %i.io, 3, !dbg !140364
  %i.jc = getelementptr inbounds nuw i8, ptr %i.in, i64 %.idx.i, !dbg !140364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !140365, !noalias !139913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !140365, !noalias !139913
  call void @llvm.experimental.noalias.scope.decl(metadata !139914), !dbg !140366
  store ptr %i.in, ptr %i.x, align 8, !dbg !140367, !alias.scope !139915, !noalias !139916
  store ptr %i.in, ptr %.sroa.419.0..sroa_idx.i, align 8, !dbg !140367, !alias.scope !139915, !noalias !139916
  store i64 %i.ja, ptr %.sroa.520.0..sroa_idx.i, align 8, !dbg !140367, !alias.scope !139915, !noalias !139916
  store ptr %i.jc, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !140367, !alias.scope !139915, !noalias !139916
  store <2 x ptr> %i.gf, ptr %i.es, align 8, !dbg !140367, !alias.scope !139917, !noalias !139913
  call void @llvm.experimental.noalias.scope.decl(metadata !139918), !dbg !140368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !140369, !noalias !139913
  call void @llvm.experimental.noalias.scope.decl(metadata !139919), !dbg !140369
  call void @llvm.experimental.noalias.scope.decl(metadata !139920), !dbg !140370
  %i.jd = getelementptr inbounds nuw i8, ptr %i.in, i64 8, !dbg !140371
  store ptr %i.jd, ptr %.sroa.419.0..sroa_idx.i, align 8, !dbg !140372, !alias.scope !139921, !noalias !139913
  %i.je = load i32, ptr %i.in, align 4, !dbg !140373, !range !139893, !noalias !139922, !noundef !3769 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.in, i64 4, !dbg !140373
  %i.jg = load i32, ptr %i.jf, align 4, !dbg !140373, !noalias !139922, !noundef !3769 ; 3 uses
  %i.jh = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtBP_9GraphNodeEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, i32 noundef range(i32 1, 0) %i.je, i32 noundef %i.jg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @333)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140374, !noalias !139923

.noexc.i.i.i:                                     ; preds = %bb.bg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 40, !dbg !140375
  %i.jj = load i64, ptr %i.ji, align 8, !dbg !140375, !noalias !139926, !noundef !3769 ; 2 uses
  %i.jk = icmp ult i64 %i.jj, 1152921504606846976, !dbg !140376
  call void @llvm.assume(i1 %i.jk), !dbg !140377
  %i.jl = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyNtBP_9GraphNodeEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, i32 noundef range(i32 1, 0) %i.je, i32 noundef %i.jg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140378, !noalias !139923 ; 2 uses

.noexc3.i.i.i:                                    ; preds = %.noexc.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32, !dbg !140379
  %i.jn = load ptr, ptr %i.jm, align 8, !dbg !140379, !noalias !139926, !nonnull !3769, !noundef !3769
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 40, !dbg !140380
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !140380, !noalias !139926, !noundef !3769 ; 3 uses
  %i.jq = icmp eq i64 %i.jp, 0, !dbg !140381
  br i1 %i.jq, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyB1F_TjjENCNvNtB1J_7execute22find_runnable_subgraphs0_0E0EB2E_6reduceNCINvNvB2E_6max_by4foldTB3w_B1F_EINvB2C_7compareB1F_B3w_EE0EB1J_.exit.i.i, label %.preheader.i.i.i.i.i.i.i, !dbg !140382

.preheader.i.i.i.i.i.i.i:                         ; preds = %.noexc3.i.i.i, %.noexc4.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %i.jz, %.noexc4.i.i.i ], [ 0, %.noexc3.i.i.i ], !dbg !140383 ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi i64 [ %i.jy, %.noexc4.i.i.i ], [ 0, %.noexc3.i.i.i ], !dbg !140384
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.sroa.04.0.i.i.i.i.i.i.i.i, !dbg !140385 ; 2 uses
  %.val13.i.i.i.i.i.i.i.i = load i32, ptr %i.jr, align 4, !dbg !140386, !range !139893, !alias.scope !139933, !noalias !139934, !noundef !3769
  %i.js = getelementptr i8, ptr %i.jr, i64 4, !dbg !140386
  %.val14.i.i.i.i.i.i.i.i = load i32, ptr %i.js, align 4, !dbg !140386, !alias.scope !139933, !noalias !139934, !noundef !3769
  %i.jt = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2g09Ig8GZd6_13polars_stream5graph14LogicalPipeKeyNtBP_11LogicalPipeEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dy, i32 noundef %.val13.i.i.i.i.i.i.i.i, i32 noundef %.val14.i.i.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !140387, !noalias !139923

.noexc4.i.i.i:                                    ; preds = %.preheader.i.i.i.i.i.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 33, !dbg !140388
  %i.jv = load i8, ptr %i.ju, align 1, !dbg !140388, !range !4015, !noalias !139939, !noundef !3769
  %i.jw = icmp eq i8 %i.jv, 1, !dbg !140389
  %i.jx = zext i1 %i.jw to i64, !dbg !140390
  %i.jy = add i64 %.sroa.02.0.i.i.i.i.i.i.i.i, %i.jx, !dbg !140391 ; 2 uses
  %i.jz = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i, 1, !dbg !140392 ; 2 uses
  %i.ka = icmp eq i64 %i.jz, %i.jp, !dbg !140393
  br i1 %i.ka, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyB1F_TjjENCNvNtB1J_7execute22find_runnable_subgraphs0_0E0EB2E_6reduceNCINvNvB2E_6max_by4foldTB3w_B1F_EINvB2C_7compareB1F_B3w_EE0EB1J_.exit.i.i, label %.preheader.i.i.i.i.i.i.i, !dbg !140393

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i.i.i.i.i.i.i, %.noexc.i.i.i, %bb.bg
  %lpad.loopexit.split-lp973 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %.body.thread.i unwind label %bb.bh, !dbg !140394, !noalias !139941

bb.bh:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !140395, !noalias !139941
  unreachable, !dbg !140395

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyB1F_TjjENCNvNtB1J_7execute22find_runnable_subgraphs0_0E0EB2E_6reduceNCINvNvB2E_6max_by4foldTB3w_B1F_EINvB2C_7compareB1F_B3w_EE0EB1J_.exit.i.i: ; preds = %.noexc4.i.i.i, %.noexc3.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc3.i.i.i ], [ %i.jy, %.noexc4.i.i.i ], !dbg !140384 ; 2 uses
  %i.kc = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.jp, !dbg !140396
  call void @llvm.assume(i1 %i.kc), !dbg !140397
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.w, align 8, !dbg !140398, !noalias !139943
  store i64 %i.jj, ptr %.sroa.510.0..sroa_idx.i.i.i, align 8, !dbg !140398, !noalias !139943
  store i32 %i.je, ptr %.sroa.611.0..sroa_idx.i.i.i, align 8, !dbg !140398, !noalias !139943
  store i32 %i.jg, ptr %.sroa.712.0..sroa_idx.i.i.i, align 4, !dbg !140398, !noalias !139943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !140399, !noalias !139943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false), !dbg !140399, !noalias !139944
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyB1L_TjjENCNvNtB1P_7execute22find_runnable_subgraphs0_0E0EB2K_4foldTB3C_B1L_ENCINvNvB2K_6max_by4foldB4C_INvB2I_7compareB1L_B3C_EE0EB1P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc7.i unwind label %.body.thread31.i, !dbg !140400, !noalias !139910

.noexc7.i:                                        ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyB1F_TjjENCNvNtB1J_7execute22find_runnable_subgraphs0_0E0EB2E_6reduceNCINvNvB2E_6max_by4foldTB3w_B1F_EINvB2C_7compareB1F_B3w_EE0EB1J_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !140401, !noalias !139943
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !dbg !140402, !noalias !139913 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !140403, !noalias !139913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !140404, !noalias !139913
  %.not.i5.i = icmp eq i32 %.pre.i.i, 0, !dbg !140402
  %.sroa.69.0.copyload.i.i = load i32, ptr %.sroa.69.0..sroa_idx.i.i, align 4
  %spec.select601 = select i1 %.not.i5.i, i32 undef, i32 %.sroa.69.0.copyload.i.i, !dbg !140405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !140406, !noalias !139913
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyE14extend_trustedINtNtCscgRAwXFJnXP_4core6option8IntoIterBG_EEBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, i32 noundef %.pre.i.i, i32 %spec.select601)
          to label %bb.bi unwind label %.body.thread31.i, !dbg !140407, !noalias !139910

._crit_edge943:                                   ; preds = %bb.bf, %.noexc101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !140359, !noalias !139890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !140360, !noalias !139890
  %i.kd = load i64, ptr %i.aj, align 8, !dbg !140408, !range !3935, !noalias !139890, !noundef !3769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !140409, !noalias !139890
  %i.ke = icmp ult i64 %i.io, 1152921504606846976, !dbg !140410
  call void @llvm.assume(i1 %i.ke), !dbg !140411
  store ptr %i.in, ptr %i.ad, align 8, !dbg !140412, !noalias !139890
  store i64 %i.kd, ptr %i.et, align 8, !dbg !140412, !noalias !139890
  store ptr %i.in, ptr %i.eu, align 8, !dbg !140412, !noalias !139890
  store ptr %i.ip, ptr %i.ev, align 8, !dbg !140412, !noalias !139890
  invoke void @_RNvXs0_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB7_3VecNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ad)
          to label %bb.cn unwind label %.body.thread31.i, !dbg !140413, !noalias !139910

.body.thread31.i:                                 ; preds = %.noexc7.i, %._crit_edge943, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyB1F_TjjENCNvNtB1J_7execute22find_runnable_subgraphs0_0E0EB2E_6reduceNCINvNvB2E_6max_by4foldTB3w_B1F_EINvB2C_7compareB1F_B3w_EE0EB1J_.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i, !dbg !140414

bb.bi:                                            ; preds = %bb.cn, %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !140415, !noalias !139890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !dbg !140415, !noalias !139890
  call void @llvm.experimental.noalias.scope.decl(metadata !139948), !dbg !140416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !140417, !noalias !139949
  %i.kf = load ptr, ptr %i.ew, align 8, !dbg !140418, !alias.scope !139948, !noalias !139890, !nonnull !3769, !noundef !3769 ; 3 uses
  %i.kg = load i64, ptr %i.ex, align 8, !dbg !140419, !alias.scope !139948, !noalias !139890, !noundef !3769
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.kg, !dbg !140420 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !140421, !noalias !139950
  %i.ki = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i8.i unwind label %bb.bo, !dbg !140422, !noalias !139954

.noexc.i8.i:                                      ; preds = %bb.bi
  %i.kj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !140423, !noalias !139950
  %i.kk = icmp eq i8 %i.kj, 2, !dbg !140424
end_hunk_0
