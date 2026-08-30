Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.093?download=true
inline.NumInlined: 733
inline.NumDeleted: 323
begin_hunk_0_@_RNvMNtCsl8OoimOLbh_6qdrant9consensusNtB2_9Consensus3run:bb.a
  store i8 0, ptr %i.ff, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bq unwind label %bb.do

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.trap()
  unreachable

bb.bp:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp304 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.bq:                                            ; preds = %bb.bn
  %i.fg = load i64, ptr %i.f, align 8, !range !35, !noundef !12
  %i.fh = trunc nuw i64 %i.fg to i1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !range !1262, !noundef !12 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.fh, label %bb.br, label %bb.bs, !prof !142

bb.br:                                            ; preds = %bb.bq
  %i.fl = load i64, ptr %i.fk, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.fj, i64 %i.fl) #22
          to label %bb.i unwind label %bb.do

bb.bs:                                            ; preds = %bb.bq
  %i.fm = load ptr, ptr %i.fk, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.fn = icmp samesign ugt i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.fm, ptr noundef nonnull align 1 dereferenceable(17) @80, i64 17, i1 false)
  store i64 %i.fj, ptr %i.t, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.fm, ptr %.sroa.4117.0..sroa_idx, align 8
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 17, ptr %.sroa.6118.0..sroa_idx, align 8
  invoke void @_RNvMNtNtCsG258MDvU3F_3std6thread7builderNtB2_7Builder4name(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t)
          to label %bb.bt unwind label %bb.bp

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.fo = load i64, ptr %i.ba, align 8, !range !34, !noundef !12
  %i.fp = load ptr, ptr %i.bc, align 8, !noundef !12
  store i64 %i.fo, ptr %i.s, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.fp, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.fd, ptr %i.fr, align 8
  invoke void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNvMNtCsl8OoimOLbh_6qdrant9consensusNtB1c_9Consensus3runs_0uEB1e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.cc, %bb.dk, %bb.cs, %bb.cl, %bb.ck, %bb.bx, %bb.bw, %bb.bt
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.thread339

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ft = load ptr, ptr %i.w, align 8, !noundef !12 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  %i.fv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  br i1 %i.fu, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.fx = invoke noundef nonnull ptr @_RNvXs_NtCscxI0zlRnmiB_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.fw)
          to label %bb.dm unwind label %bb.bu

bb.bx:                                            ; preds = %bb.bv
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5121.0.copyload = load i64, ptr %.sroa.5121.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store ptr %i.ft, ptr %i.x, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.fw, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.5121.0.copyload, ptr %.sroa.540.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x)
          to label %bb.by unwind label %bb.bu

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 1532
  %i.fz = load i8, ptr %i.fy, align 4, !range !1094, !noundef !12
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i64 -2, ptr %i.r, align 8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 1600 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !range !34, !noundef !12
  %.not144 = icmp eq i64 %i.gc, 2
  br i1 %.not144, label %bb.ck, label %bb.cc

bb.cb:                                            ; preds = %bb.ct, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 -1, ptr %i.gd, align 8
  store i64 0, ptr %i.m, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 0, ptr %i.ge, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 13, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cv unwind label %bb.dh

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1266
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 1616
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gf)
          to label %.noexc190 unwind label %bb.bu

.noexc190:                                        ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1266
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 1640
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gg)
          to label %bb.cf unwind label %bb.ce, !noalias !1268

bb.cd:                                            ; preds = %bb.ch, %bb.ce
  %.pn.i = phi { ptr, i32 } [ %i.gk, %bb.ch ], [ %i.gh, %bb.ce ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #20
          to label %.thread339 unwind label %bb.cj, !noalias !1268

bb.ce:                                            ; preds = %.noexc190
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cf:                                            ; preds = %.noexc190
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 1664 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !range !33, !alias.scope !1263, !noalias !1268, !noundef !12
  %.not.i = icmp eq i64 %i.gj, -1
  br i1 %.not.i, label %bb.co, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1266
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gi)
          to label %bb.ci unwind label %bb.ch, !noalias !1268

bb.ch:                                            ; preds = %bb.cg
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #20
          to label %bb.cd unwind label %bb.cj, !noalias !1268

bb.ci:                                            ; preds = %bb.cg
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !1266
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false), !noalias !1266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1266
  br label %bb.co

bb.cj:                                            ; preds = %bb.ch, %bb.cd
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1268
  unreachable

bb.ck:                                            ; preds = %bb.ca
  %i.gm = invoke noundef nonnull ptr @_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings29tls_config_is_undefined_error()
          to label %bb.cl unwind label %bb.bu

bb.cl:                                            ; preds = %bb.ck
  %i.gn = invoke noundef nonnull ptr @_RNvXs_NtCscxI0zlRnmiB_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.gm)
          to label %bb.cm unwind label %bb.bu

bb.cm:                                            ; preds = %bb.cl
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gn, ptr %i.go, align 8
  store ptr null, ptr %0, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.dk, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.dl

bb.co:                                            ; preds = %bb.ci, %bb.cf
  %.sroa.0.0.i189 = phi i64 [ %.sroa.0.0.copyload.i, %bb.ci ], [ -1, %bb.cf ]
  %i.gp = load i64, ptr %i.gb, align 8, !range !35, !alias.scope !1263, !noalias !1268, !noundef !12 ; 2 uses
  %i.gq = trunc nuw i64 %i.gp to i1
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 1608
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !1263, !noalias !1268
  %.sroa.54.0.i = select i1 %i.gq, i64 %i.gs, i64 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1263
  %.sroa.6.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1263
  %.sroa.557.sroa.5.0..sroa.557.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.557.sroa.5.0..sroa.557.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1266
  %i.gt = inttoptr i64 %.sroa.54.0.i to ptr
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.557.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %i.gp, ptr %i.q, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.gt, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.sroa.4.0..sroa.557.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 %.sroa.0.0.i189, ptr %.sroa.557.sroa.4.0..sroa.557.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvNtNtCsl8OoimOLbh_6qdrant6common7helpers31load_tls_internal_server_config(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.q)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.cr, %bb.co
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.q) #20
          to label %.thread339 unwind label %bb.di

bb.cq:                                            ; preds = %bb.co
  %i.gv = load i64, ptr %i.p, align 8, !range !52, !noundef !12 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, -2
  %i.gx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8            ; 2 uses
  br i1 %i.gw, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gz = invoke noundef nonnull ptr @_RNvXs_NtCscxI0zlRnmiB_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.gy)
          to label %bb.dk unwind label %bb.cp

bb.cs:                                            ; preds = %bb.cq
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5133.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.gv, ptr %i.r, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.gy, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.q)
          to label %bb.ct unwind label %bb.bu

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cb

bb.cu:                                            ; preds = %bb.cx
  %lpad.thr_comm.split-lp317 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.cv:                                            ; preds = %bb.cb
  %i.ha = load i64, ptr %i.e, align 8, !range !35, !noundef !12
  %i.hb = trunc nuw i64 %i.ha to i1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !range !1262, !noundef !12 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.hb, label %bb.cw, label %bb.cx, !prof !142

bb.cw:                                            ; preds = %bb.cv
  %i.hf = load i64, ptr %i.he, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.hd, i64 %i.hf) #22
          to label %bb.i unwind label %bb.dh

bb.cx:                                            ; preds = %bb.cv
  %i.hg = load ptr, ptr %i.he, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.hh = icmp samesign ugt i64 %i.hd, 12
  call void @llvm.assume(i1 %i.hh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.hg, ptr noundef nonnull align 1 dereferenceable(13) @81, i64 13, i1 false)
  store i64 %i.hd, ptr %i.l, align 8
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.hg, ptr %.sroa.4135.0..sroa_idx, align 8
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 13, ptr %.sroa.6136.0..sroa_idx, align 8
  invoke void @_RNvMNtNtCsG258MDvU3F_3std6thread7builderNtB2_7Builder4name(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l)
          to label %bb.cy unwind label %bb.cu

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.hi = load ptr, ptr %i.ax, align 8, !nonnull !12, !noundef !12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.k, i64 2184
  store ptr %i.hi, ptr %i.hj, align 8
  %i.hk = load ptr, ptr %i.bb, align 8, !nonnull !12, !noundef !12
  %i.hl = getelementptr inbounds nuw i8, ptr %i.k, i64 2192
  store ptr %i.hk, ptr %i.hl, align 8
  %i.hm = load ptr, ptr %i.az, align 8, !nonnull !12, !noundef !12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.k, i64 2200
  store ptr %i.hm, ptr %i.hn, align 8
  %i.ho = load ptr, ptr %i.ay, align 8, !nonnull !12, !noundef !12
  %i.hp = getelementptr inbounds nuw i8, ptr %i.k, i64 2208
  store ptr %i.ho, ptr %i.hp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.k, ptr noundef nonnull align 8 dereferenceable(2048) %5, i64 2048, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.k, i64 2064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.k, i64 2224
  store i16 %i.bq, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.k, i64 2088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hs, ptr noundef nonnull align 8 dereferenceable(96) %i.r, i64 96, i1 false)
  %i.ht = load ptr, ptr %i.as, align 8, !nonnull !12, !noundef !12
  %i.hu = getelementptr inbounds nuw i8, ptr %i.k, i64 2216
  store ptr %i.ht, ptr %i.hu, align 8
  %i.hv = load i64, ptr %i.aw, align 8, !range !35, !noundef !12
  %i.hw = load ptr, ptr %i.bd, align 8, !noundef !12
  %i.hx = getelementptr inbounds nuw i8, ptr %i.k, i64 2048
  store i64 %i.hv, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.k, i64 2056
  store ptr %i.hw, ptr %i.hy, align 8
  invoke void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNvMNtCsl8OoimOLbh_6qdrant9consensusNtB1c_9Consensus3runs0_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2b_2io5error5ErrorEEB1e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2232) %i.k)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync4mpsc8ReceiverNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsEECsl8OoimOLbh_6qdrant.exit223

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %i.ia = load ptr, ptr %i.o, align 8, !alias.scope !1269, !noalias !1272, !noundef !12
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.db, label %bb.df, !prof !142

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1274
  %i.ic = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !1269, !noalias !1272, !nonnull !12, !noundef !12
  store ptr %i.id, ptr %i.d, align 8, !noalias !1274
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #22
          to label %bb.dd unwind label %bb.dc, !noalias !1274

bb.dc:                                            ; preds = %bb.db
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync4mpsc8ReceiverNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsEECsl8OoimOLbh_6qdrant.exit223 unwind label %bb.de, !noalias !1274

bb.dd:                                            ; preds = %bb.db
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1274
  unreachable

bb.df:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards15channel_service14ChannelServiceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(80) %6)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit213

bb.dg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync4mpsc8ReceiverNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsEECsl8OoimOLbh_6qdrant.exit223
  br i1 %.sroa.097.16, label %bb.fw, label %bb.ff

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit213: ; preds = %bb.df, %bb.fm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit215
  ret void

bb.dh:                                            ; preds = %bb.cw, %bb.cb
  %lpad.thr_comm316 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread7builder7BuilderECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m) #20
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %bb.ga, %bb.fz, %bb.fv, %bb.fu, %bb.fs, %bb.fq, %bb.eq, %bb.eo, %bb.ea, %bb.fx, %bb.fw, %bb.fo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync4mpsc8ReceiverNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsEECsl8OoimOLbh_6qdrant.exit223, %bb.et, %bb.es, %.thread339, %bb.er, %bb.em, %bb.el, %bb.eb, %.noexc197, %bb.dy, %bb.dx, %bb.dw, %bb.dp, %bb.do, %bb.dj, %bb.dh, %bb.cp
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.dj:                                            ; preds = %bb.dh, %bb.cu
  %.pn145.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp317, %bb.cu ], [ %lpad.thr_comm316, %bb.dh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server3tls15ServerTlsConfigEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.r) #20
          to label %.thread339 unwind label %bb.di

bb.dk:                                            ; preds = %bb.cr
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gz, ptr %i.ih, align 8
  store ptr null, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.q)
          to label %bb.cn unwind label %bb.bu

bb.dl:                                            ; preds = %bb.dm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.dn

bb.dm:                                            ; preds = %bb.bw
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fx, ptr %i.ii, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dl
end_hunk_0
