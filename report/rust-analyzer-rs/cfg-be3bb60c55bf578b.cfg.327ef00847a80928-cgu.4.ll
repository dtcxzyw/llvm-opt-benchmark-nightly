Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/cfg-be3bb60c55bf578b.cfg.327ef00847a80928-cgu.4?download=true
inline.NumInlined: 149
inline.NumDeleted: 68
begin_hunk_0_@_RNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_expr:bb.a
  %i.cl = and i64 %i.ck, 1
  %.not.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit, label %bb.aq

bb.aq:                                            ; preds = %.noexc122
  %i.cm = getelementptr i8, ptr %i.aj, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  %i.cn = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.cm), !noalias !131
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 %i.co ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !131
  store ptr %i.cp, ptr %i.d, align 8, !noalias !131
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8, !noalias !131
  %i.cr = icmp eq i64 %i.cq, 2
  br i1 %i.cr, label %bb.ar, label %bb.as, !prof !9

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !131
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !131
  store ptr %i.cp, ptr %i.c, align 8, !noalias !131
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !131
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

bb.at:                                            ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.cs = load i64, ptr %i.r, align 8, !range !119, !alias.scope !132, !noundef !8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -2
  br i1 %i.ct, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.cu = icmp eq i64 %i.cs, -1
  br i1 %i.cu, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127

bb.av:                                            ; preds = %bb.au
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i124 = load i32, ptr %i.cv, align 8, !range !120, !alias.scope !134, !noundef !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i.i125 = load ptr, ptr %i.cw, align 8, !alias.scope !134
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.val.i.i124, ptr %.val1.i.i125)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127 unwind label %.thread241, !noalias !134

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127: ; preds = %bb.au, %bb.at, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cx = icmp eq ptr %i.aj, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3all10SYMBOL_STR
  br i1 %i.cx, label %bb.bo, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3any10SYMBOL_STR, ptr %i.o, align 8
  %i.cy = icmp eq ptr %i.aj, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3any10SYMBOL_STR
  br i1 %i.cy, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.bk unwind label %.thread241

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3not10SYMBOL_STR, ptr %i.m, align 8
  %i.cz = icmp eq ptr %i.aj, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3not10SYMBOL_STR
  br i1 %i.cz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.bb unwind label %.thread241

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.z, align 8
  br label %.thread252

.thread252:                                       ; preds = %bb.ba, %bb.bj, %bb.bn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit158
  %.sroa.048.6 = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit158 ], [ 0, %bb.bn ], [ 0, %bb.bj ], [ 1, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.aj, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_expr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RNCNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_exprs_0B5_.exit unwind label %bb.bc, !noalias !135, !inline_history !103

bb.bc:                                            ; preds = %bb.bb, %bb.bd
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bg, %bb.bc
  %eh.lpad-body = phi { ptr, i32 } [ %i.da, %bb.bc ], [ %i.dd, %bb.bg ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.an

_RNCNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_exprs_0B5_.exit: ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.db = load i64, ptr %i.k, align 8, !range !12, !noundef !8
  %.not72 = icmp eq i64 %i.db, -1
  br i1 %.not72, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_RNCNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_exprs_0B5_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.bf unwind label %bb.bc

bb.be:                                            ; preds = %_RNCNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_exprs_0B5_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dc = invoke fastcc noundef ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit()
          to label %bb.bi unwind label %bb.bg     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #21
          to label %.body unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.df = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.dc, ptr %i.df, align 8
  store i64 4, ptr %i.z, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.bj unwind label %.thread241

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.thread252

bb.bk:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.aj, ptr %i.p, align 8
  %i.dg = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_7sources7from_fn6FromFnNCNvBS_13next_cfg_exprs_0EEBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %bb.bm unwind label %bb.bl     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.an

bb.bm:                                            ; preds = %bb.bk
  %i.di = extractvalue { ptr, i64 } %i.dg, 0
  %i.dj = extractvalue { ptr, i64 } %i.dg, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.di, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.dj, ptr %i.dl, align 8
  store i64 3, ptr %i.z, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.bn unwind label %.thread241

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.thread252

bb.bo:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.aj, ptr %i.q, align 8
  %i.dm = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_7sources7from_fn6FromFnNCNvBS_13next_cfg_exprs_0EEBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit158 unwind label %bb.bp ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.an

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit158: ; preds = %bb.bo
  %i.do = extractvalue { ptr, i64 } %i.dm, 0
  %i.dp = extractvalue { ptr, i64 } %i.dm, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.do, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.dp, ptr %i.dr, align 8
  store i64 2, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.thread252

.thread234:                                       ; preds = %bb.al, %bb.aa, %bb.q
  %.pn73239 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.q ], [ %i.cf, %bb.al ], [ %.pn66, %bb.aa ]
  %.sroa.048.1238 = phi i8 [ 1, %bb.q ], [ 0, %bb.al ], [ %.sroa.048.3, %bb.aa ]
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val1.i160 = load ptr, ptr %i.ds, align 8, !alias.scope !136
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 1, ptr %.val1.i160)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162 unwind label %bb.an, !noalias !136

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166: ; preds = %bb.am, %.thread252, %bb.bq
  %.sroa.048.5248 = phi i8 [ 0, %bb.bq ], [ 0, %bb.am ], [ %.sroa.048.6, %.thread252 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter4peek(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.bs unwind label %bb.br

bb.bq:                                            ; preds = %.thread256, %.thread245
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val1.i164 = load ptr, ptr %i.dt, align 8, !alias.scope !137
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %i.ba, ptr %.val1.i164)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166 unwind label %bb.br, !noalias !137

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174: ; preds = %bb.bw, %bb.br
  %.sroa.048.5250.a = phi i8 [ %.sroa.048.5251, %bb.br ], [ %.sroa.048.5248, %bb.bw ]
  %.pn81 = phi { ptr, i32 } [ %i.du, %bb.br ], [ %i.ec, %bb.bw ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162 unwind label %bb.an

bb.br:                                            ; preds = %.invoke, %bb.bq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166
  %.sroa.048.5251 = phi i8 [ %.sroa.048.5248, %.invoke ], [ %.sroa.048.5248, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166 ], [ 0, %bb.bq ]
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174

bb.bs:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166
  %i.dv = load i64, ptr %i.i, align 8, !range !119, !noundef !8 ; 2 uses
  %.not79 = icmp eq i64 %i.dv, -2
  br i1 %.not79, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not80 = icmp eq i64 %i.dv, -1                 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !range !120 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 1
  %or.cond29 = select i1 %.not80, i1 %i.dy, i1 false
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !range !122
  %i.eb = icmp eq i32 %i.ea, 44
  %or.cond87 = select i1 %or.cond29, i1 %i.eb, i1 false
  br i1 %or.cond87, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %.not80, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.bx unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %bb.bv
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.ed = load i64, ptr %i.h, align 8, !range !119, !alias.scope !138, !noundef !8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, -2
  br i1 %i.ee, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.ef = icmp eq i64 %i.ed, -1
  br i1 %i.ef, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i.i175 = load i32, ptr %i.eg, align 8, !range !120, !alias.scope !140, !noundef !8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i.i176 = load ptr, ptr %i.eh, align 8, !alias.scope !140
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.val.i.i175, ptr %.val1.i.i176)
          to label %bb.ca unwind label %bb.bw, !noalias !140

bb.ca:                                            ; preds = %bb.by, %bb.bx, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.invoke

.invoke:                                          ; preds = %bb.bu, %bb.ca
  %i.ei = phi i32 [ 1, %bb.ca ], [ %i.dx, %bb.bu ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.i168 = load ptr, ptr %i.ej, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %i.ei, ptr %.val1.i.i168)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170 unwind label %bb.br, !noalias !141

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170: ; preds = %.invoke, %bb.bu, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ek = trunc nuw i8 %.sroa.048.5248 to i1
  %i.el = ptrtoint ptr %i.aj to i64
  %.not.i.i.i184 = trunc i64 %i.el to i1
  %or.cond207.not = and i1 %.not.i.i.i184, %i.ek
  br i1 %or.cond207.not, label %bb.cb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

bb.cb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170
  %i.em = getelementptr i8, ptr %i.aj, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  %i.en = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.em), !noalias !142
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.em, i64 %i.eo ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !142
  store ptr %i.ep, ptr %i.b, align 8, !noalias !142
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8, !noalias !142
  %i.er = icmp eq i64 %i.eq, 2
  br i1 %i.er, label %bb.cc, label %bb.cd, !prof !9

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !142
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  store ptr %i.ep, ptr %i.a, align 8, !noalias !142
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170, %bb.cd, %bb.ch, %.noexc122, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread: ; preds = %bb.d, %bb.bp, %bb.bl, %.body, %bb.cf, %.thread223, %bb.ce, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162, %bb.h
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn203, %bb.ce ], [ %.pn81.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162 ], [ %i.at, %.thread223 ], [ %i.at, %bb.cf ], [ %i.at, %bb.h ], [ %eh.lpad-body, %.body ], [ %i.dh, %bb.bl ], [ %i.dn, %bb.bp ], [ %i.ak, %bb.d ]
  resume { ptr, i32 } %.pn81.pn.pn

bb.ce:                                            ; preds = %.thread200, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162
  %.pn81.pn203 = phi { ptr, i32 } [ %i.ax, %.thread200 ], [ %.pn81.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.an

.thread223:                                       ; preds = %bb.h
  %.pre261 = load i32, ptr %i.af, align 8, !range !120 ; 2 uses
  %i.es = icmp ne i64 %.pre, -1
  %i.et = icmp eq i32 %.pre261, 2
  %or.cond33 = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond33, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread, label %bb.cf

bb.cf:                                            ; preds = %.thread223
  %.val96 = load ptr, ptr %i.ai, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.pre261, ptr %.val96) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.an

bb.cg:                                            ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %.not52.not = xor i1 %.not52, true
  %or.cond37 = select i1 %.not52.not, i1 true, i1 %i.ah
  br i1 %or.cond37, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.thread, %bb.ci, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

bb.ci:                                            ; preds = %bb.cg
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val94 = load ptr, ptr %i.eu, align 8
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %i.ag, ptr %.val94)
  br label %bb.ch
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit() unnamed_addr #2 !guid !143 {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr %.0.val, i16 noundef range(i16 149, 154) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !147 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !noundef !8 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit, !prof !9

bb.b:                                             ; preds = %bb.a
end_hunk_0
