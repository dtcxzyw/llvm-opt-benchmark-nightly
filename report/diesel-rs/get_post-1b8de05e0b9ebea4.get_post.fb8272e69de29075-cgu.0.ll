Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/get_post-1b8de05e0b9ebea4.get_post.fb8272e69de29075-cgu.0?download=true
inline.NumInlined: 238
inline.NumDeleted: 120
begin_hunk_0_@_RINvYINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB8_11from_clause10FromClauseNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableEINtNtB8_13select_clause12SelectClauseINtNtNtBa_10expression9select_by8SelectByNtNtB1W_6models4PostNtNtNtBa_5mysql7backend5MysqlEENtNtB8_15distinct_clause16NoDistinctClauseINtNtB8_12where_clause11WhereClauseINtNtB3E_7grouped7GroupedINtNtB3E_9operators2EqNtNtB1S_7columns2idINtNtB3E_5bound5BoundNtNtBa_9sql_types7IntegerlEEEENtNtB8_12order_clause13NoOrderClauseINtNtB8_19limit_offset_clause17LimitOffsetClauseINtNtB8_12limit_clause11LimitClauseIB7n_NtB7J_6BigIntxEENtNtB8_13offset_clause14NoOffsetClauseEEINtNtBa_9query_dsl11RunQueryDslNtNtB4C_10connection15MysqlConnectionE10get_resultB4e_ECslAMksGb6ZpN_8get_post:bb.a
          to label %.noexc92.i.i.i unwind label %bb.cg, !noalias !426

.noexc92.i.i.i:                                   ; preds = %.noexc4.i86.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !459
  %i.gh = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 40)
          to label %bb.by unwind label %bb.bw, !noalias !463 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i89.i.i.i = load ptr, ptr %i.gi, align 8, !alias.scope !469, !noalias !462, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  %i.gj = load i64, ptr %.val.i.i.i89.i.i.i, align 8, !noalias !470, !noundef !15
  %i.gk = add i64 %i.gj, -1
  store i64 %i.gk, ptr %.val.i.i.i89.i.i.i, align 8, !noalias !470
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !477, !noalias !462, !nonnull !15, !noundef !15 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !478, !noundef !15
  %i.go = add i64 %i.gn, -1                       ; 2 uses
  store i64 %i.go, ptr %i.gm, align 8, !noalias !478
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.bv, label %.noexc58.thread175.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gl)
          to label %.noexc58.thread175.i.i.i unwind label %bb.cg, !noalias !426

bb.bw:                                            ; preds = %.noexc92.i.i.i
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result21DeserializeFieldErrorECslAMksGb6ZpN_8get_post(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d) #21
          to label %.body.i.i.i unwind label %bb.bx, !noalias !460

bb.bx:                                            ; preds = %bb.bw
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !460
  unreachable

bb.by:                                            ; preds = %.noexc92.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gh, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !459
  br label %.noexc58.thread175.i.i.i

bb.bz:                                            ; preds = %bb.bs
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECslAMksGb6ZpN_8get_post(ptr nonnull %i.gc, ptr nonnull readonly align 8 dereferenceable(80) %i.gb) #21
          to label %bb.cb unwind label %bb.ca, !noalias !460

bb.ca:                                            ; preds = %bb.cb, %bb.bz
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !479
  unreachable

bb.cb:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator10MysqlFieldECslAMksGb6ZpN_8get_post(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #21
          to label %.body.i.i.i unwind label %bb.ca, !noalias !479

bb.cc:                                            ; preds = %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCslAMksGb6ZpN_8get_post.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i6.i90.i.i.i = load ptr, ptr %i.gu, align 8, !alias.scope !486, !noalias !445, !nonnull !15, !align !16, !noundef !15 ; 2 uses
  %i.gv = load i64, ptr %.val.i.i6.i90.i.i.i, align 8, !noalias !487, !noundef !15
  %i.gw = add i64 %i.gv, -1
  store i64 %i.gw, ptr %.val.i.i6.i90.i.i.i, align 8, !noalias !487
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !494, !noalias !445, !nonnull !15, !noundef !15 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !495, !noundef !15
  %i.ha = add i64 %i.gz, -1                       ; 2 uses
  store i64 %i.ha, ptr %i.gy, align 8, !noalias !495
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.cd, label %bb.cq

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gx)
          to label %bb.cq unwind label %bb.cg, !noalias !426

.noexc58.thread175.i.i.i:                         ; preds = %bb.by, %bb.bv, %bb.bu
  %.sroa.3.0.i.i87.i.i.i = phi ptr [ @7, %bb.by ], [ %i.gb, %bb.bu ], [ %i.gb, %bb.bv ]
  %.sroa.0.0.i.i88.i.i.i = phi ptr [ %i.gh, %bb.by ], [ %i.gc, %bb.bu ], [ %i.gc, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !445
  br label %bb.ci

bb.ce:                                            ; preds = %bb.br, %bb.bp
  %lpad.thr_comm.split-lp.i78.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator10MysqlFieldECslAMksGb6ZpN_8get_post(ptr noalias noundef align 8 dereferenceable(32) %i.i) #21
          to label %.body.i.i.i unwind label %bb.cf, !noalias !447

bb.cf:                                            ; preds = %bb.ce
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !447
  unreachable

bb.cg:                                            ; preds = %bb.cd, %bb.bv, %.noexc4.i86.i.i.i, %bb.bo
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.cg, %bb.ce, %bb.cb, %bb.bw
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.hd, %bb.cg ], [ %i.gs, %bb.cb ], [ %lpad.thr_comm.split-lp.i78.i.i.i, %bb.ce ], [ %i.gq, %bb.bw ] ; 2 uses
  %i.he = icmp eq i64 %i.fr, 0
  br i1 %i.he, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit95.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.body.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fu, i64 noundef %i.fr, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !496
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit95.i.i.i

bb.ci:                                            ; preds = %.noexc58.thread175.i.i.i, %.noexc58.thread.i.i.i
  %i.hf = phi ptr [ @3, %.noexc58.thread.i.i.i ], [ %.sroa.3.0.i.i87.i.i.i, %.noexc58.thread175.i.i.i ]
  %i.hg = phi ptr [ inttoptr (i64 1 to ptr), %.noexc58.thread.i.i.i ], [ %.sroa.0.0.i.i88.i.i.i, %.noexc58.thread175.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !438
  %i.hh = icmp eq i64 %i.fr, 0
  br i1 %i.hh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit96.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fu, i64 noundef %i.fr, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !499
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit96.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit96.i.i.i: ; preds = %bb.cj, %bb.ci
  %i.hi = icmp eq i64 %i.fk, 0
  br i1 %i.hi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit98.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit96.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef %i.fk, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !502
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit98.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit98.i.i.i: ; preds = %bb.ck, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit96.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !361
  br label %bb.cp

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit95.i.i.i: ; preds = %bb.ch, %.body.i.i.i
  %i.hj = icmp eq i64 %i.fk, 0
  br i1 %i.hj, label %.body.i.i, label %common.resume.sink.split.i.i.i

bb.cl:                                            ; preds = %bb.bn
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = icmp eq i64 %i.fr, 0
  br i1 %i.hl, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fu, i64 noundef %i.fr, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !505
  br label %bb.cn

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit.i.i.i: ; preds = %bb.bm, %bb.bl, %.noexc52.i.i
  %.sroa.1756.0.i.i = phi ptr [ %i.fw, %bb.bm ], [ %i.fw, %bb.bl ], [ %i.fp, %.noexc52.i.i ]
  %.sroa.10.0.i.i = phi ptr [ %i.fu, %bb.bm ], [ %i.fu, %bb.bl ], [ %i.fn, %.noexc52.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !361
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.bj
  %.pn.pn.ph.i.i.i = phi { ptr, i32 } [ %i.fq, %bb.bj ], [ %i.hk, %bb.cl ], [ %i.hk, %bb.cm ] ; 2 uses
  %i.hm = icmp eq i64 %i.fk, 0
  br i1 %i.hm, label %.body.i.i, label %common.resume.sink.split.i.i.i

bb.co:                                            ; preds = %.noexc51.i.i, %.noexc50.i.i.a, %bb.be, %bb.aw, %.noexc4.i.i.i.i, %.noexc46.i.i.a, %.noexc45.i.i.a, %bb.ap
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.co, %bb.cn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit95.i.i.i, %bb.bf, %common.resume.sink.split.i.i.i, %bb.bc, %bb.ax
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.hn, %bb.co ], [ %i.et, %bb.ax ], [ %i.ev, %bb.bc ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.bf ], [ %.pn.pn.ph.i.i.i, %bb.cn ], [ %eh.lpad-body.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit95.i.i.i ], [ %common.resume.op.ph.i.i.i, %common.resume.sink.split.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post(ptr noalias noundef align 8 dereferenceable(16) %i.aa) #21
          to label %.body unwind label %bb.cx, !noalias !360

bb.cp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit98.i.i.i, %bb.bh
  %.sroa.1756.1.ph.i.i = phi ptr [ %i.hf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit98.i.i.i ], [ %.sroa.1756.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit.i.i.i ], [ %i.fg, %bb.bh ] ; 2 uses
  %.sroa.10.1.ph.i.i = phi ptr [ %i.hg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit98.i.i.i ], [ %.sroa.10.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECslAMksGb6ZpN_8get_post.exit.i.i.i ], [ %i.fh, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !361
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.1.ph.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1756.1.ph.i.i) ]
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !445
  %i.ho = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hp = load i8, ptr %i.ho, align 8, !range !508, !noalias !438, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !361
  %i.hq = ptrtoint ptr %i.fu to i64
  %4 = ptrtoint ptr %i.fw to i64
  %i.hr = ptrtoint ptr %i.fn to i64
  %i.hs = inttoptr i64 %i.fr to ptr
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.sroa.29.06987.i.i = phi i8 [ undef, %bb.cp ], [ %i.hp, %bb.cq ]
  %.sroa.28.07185.i.i = phi i32 [ undef, %bb.cp ], [ %i.fj, %bb.cq ]
  %.sroa.614.sroa.0.0.i.i = phi i64 [ undef, %bb.cp ], [ %4, %bb.cq ]
  %.sroa.512.sroa.0.0.i.i = phi i64 [ -9223372036854775805, %bb.cp ], [ %i.hr, %bb.cq ]
  %.sroa.512.sroa.5.0.i.i = phi ptr [ %.sroa.10.1.ph.i.i, %bb.cp ], [ %i.fp, %bb.cq ]
  %.sroa.010.0.i.i = phi i64 [ -1, %bb.cp ], [ %i.fk, %bb.cq ]
  %.sroa.512.sroa.6.0.i.i = phi ptr [ %.sroa.1756.1.ph.i.i, %bb.cp ], [ %i.hs, %bb.cq ]
  %.sroa.512.sroa.7.0.i.i = phi i64 [ undef, %bb.cp ], [ %i.hq, %bb.cq ]
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.ht = load ptr, ptr %i.aa, align 8, !alias.scope !518, !noalias !359, !nonnull !15, !noundef !15 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !519, !noundef !15
  %i.hv = add i64 %i.hu, -1                       ; 2 uses
  store i64 %i.hv, ptr %i.ht, align 8, !noalias !519
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %bb.cs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECslAMksGb6ZpN_8get_post.exit.i.i.i

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECslAMksGb6ZpN_8get_post.exit.i.i.i unwind label %bb.ct, !noalias !360

bb.ct:                                            ; preds = %bb.cs
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.hy = load ptr, ptr %i.dz, align 8, !alias.scope !526, !noalias !359, !nonnull !15, !noundef !15 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !noalias !527, !noundef !15
  %i.ia = add i64 %i.hz, -1                       ; 2 uses
  store i64 %i.ia, ptr %i.hy, align 8, !noalias !527
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.cu, label %.body

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dz)
          to label %.body unwind label %bb.cw, !noalias !360

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECslAMksGb6ZpN_8get_post.exit.i.i.i: ; preds = %bb.cs, %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.ic = load ptr, ptr %i.dz, align 8, !alias.scope !534, !noalias !359, !nonnull !15, !noundef !15 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !noalias !535, !noundef !15
  %i.ie = add i64 %i.id, -1                       ; 2 uses
  store i64 %i.ie, ptr %i.ic, align 8, !noalias !535
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i

bb.cv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECslAMksGb6ZpN_8get_post.exit.i.i.i
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !360
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i: ; preds = %bb.cv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECslAMksGb6ZpN_8get_post.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !359
  br label %bb.cz

bb.cx:                                            ; preds = %.body.i.i
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !360
  unreachable

bb.cy:                                            ; preds = %bb.cv, %bb.am
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.ct, %bb.cu, %bb.cy
  %eh.lpad-body = phi { ptr, i32 } [ %i.ii, %bb.cy ], [ %i.hx, %bb.ct ], [ %i.hx, %bb.cu ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator17StatementIteratorECslAMksGb6ZpN_8get_post(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.as)
          to label %common.resume unwind label %bb.dd

bb.cz:                                            ; preds = %bb.ao, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i
  %.sroa.18.0.ph = phi i8 [ %.sroa.29.06987.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i ], [ undef, %bb.ao ]
  %.sroa.17.0.ph = phi i32 [ %.sroa.28.07185.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i ], [ undef, %bb.ao ]
  %.sroa.16.0.ph = phi i64 [ %.sroa.614.sroa.0.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i ], [ undef, %bb.ao ]
  %.sroa.14.0.ph = phi i64 [ %.sroa.512.sroa.7.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i ], [ %.sroa.628.0.copyload.i.i, %bb.ao ]
  %.sroa.12.0.ph = phi ptr [ %.sroa.512.sroa.6.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i ], [ %.sroa.527.0.copyload.i.i, %bb.ao ]
  %.sroa.10.0.ph = phi ptr [ %.sroa.512.sroa.5.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i ], [ %.sroa.426.0.copyload.i.i, %bb.ao ]
  %.sroa.818.0.ph = phi i64 [ %.sroa.512.sroa.0.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i ], [ %i.dy, %bb.ao ]
  %.sroa.0.0.ph = phi i64 [ %.sroa.010.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECslAMksGb6ZpN_8get_post.exit.i.i ], [ -1, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !349
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.818.0.ph, ptr %.sroa.818.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.ph, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.12.0.ph, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.14.0.ph, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.16.0.ph, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.17.0.ph, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %.sroa.18.0.ph, ptr %.sroa.18.0..sroa_idx, align 4
  br label %bb.db

bb.da:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !349
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.ij, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator17StatementIteratorECslAMksGb6ZpN_8get_post(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.as)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  ret void

bb.dd:                                            ; preds = %.body
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslAMksGb6ZpN_8get_post(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = mul i64 %1, 40                           ; 6 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 40                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %i.a, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #22
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.k, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslAMksGb6ZpN_8get_post(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !4
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  br i1 %2, label %bb.g, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 9) %0, i64 noundef range(i64 0, 41) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, label %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit

_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.c

_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.c = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 1, -9223372036854775807) %0) #22 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !536

bb.b:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #23
  unreachable

bb.c:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast10as_any_mutCslAMksGb6ZpN_8get_post(ptr noalias noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @8, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast11into_any_rcCslAMksGb6ZpN_8get_post(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @8, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXCs4dGG1v6Lohn_11downcast_rsNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation17NoInstrumentationNtB2_8Downcast6as_anyCslAMksGb6ZpN_8get_post(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @8, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
end_hunk_0
