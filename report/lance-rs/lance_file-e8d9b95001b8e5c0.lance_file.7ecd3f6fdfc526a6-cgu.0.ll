Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB6_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request0B8_:bb.a
  %scevgep = getelementptr i8, ptr %i.on, i64 16
  br label %bb.ei

bb.ei:                                            ; preds = %.lr.ph, %.backedge
  %i.oo = phi ptr [ %.val96, %.lr.ph ], [ %i.oq, %.backedge ] ; 5 uses
  %i.op = phi ptr [ %.sroa.5235.0.copyload, %.lr.ph ], [ %i.os, %.backedge ] ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 16 ; 14 uses
  %i.or = icmp eq ptr %i.op, %i.oh
  br i1 %i.or, label %._crit_edge, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.ei
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 24 ; 14 uses
  %.sroa.0.0.copyload7.i.i = load i64, ptr %i.op, align 8, !noalias !29549 ; 3 uses
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload7.i.i, -1
  br i1 %.not6.i.i, label %._crit_edge, label %bb.em

._crit_edge:                                      ; preds = %bb.ei, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i, %.backedge, %bb.eh
  %i.ot = phi ptr [ %.sroa.5235.0.copyload, %bb.eh ], [ %i.oh, %bb.ei ], [ %i.os, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.os, %.backedge ]
  %i.ou = phi ptr [ %.val96, %bb.eh ], [ %scevgep, %bb.ei ], [ %i.oq, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.of, %.backedge ]
  store ptr %i.ou, ptr %i.af, align 8
  store ptr %i.ot, ptr %.sroa.8230.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterINtNtNtB4_3ops5range5RangeyEEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB27_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(64) %i.af)
          to label %bb.el unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ek, %bb.fv
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41, %bb.fv ], [ %i.ov, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #50
          to label %.thread372.sink.split unwind label %bb.fp

bb.ek:                                            ; preds = %bb.fw, %._crit_edge
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.el:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.0279.0.copyload = load ptr, ptr %i.ag, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13276, ptr noundef nonnull align 8 dereferenceable(16) %i.oc, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.val81 = load i64, ptr %i.md, align 8          ; 2 uses
  %i.ow = icmp eq i64 %.val81, 0
  br i1 %i.ow, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit167: ; preds = %bb.gt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit168
  store i8 2, ptr %i.ap, align 1
  resume { ptr, i32 } %.pn65.pn

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split: ; preds = %bb.el, %bb.gq
  %.val79.sink = phi i64 [ %.val79, %bb.gq ], [ %.val81, %bb.el ]
  %.val80.sink.in = phi ptr [ %i.ug, %bb.gq ], [ %i.oe, %bb.el ]
  %.sroa.9274.1.ph = phi ptr [ %.sroa.9274.2, %bb.gq ], [ %.sroa.0279.0.copyload, %bb.el ]
  %.sroa.0272.1.ph = phi i8 [ %.sroa.0272.2, %bb.gq ], [ -1, %bb.el ]
  %.val80.sink = load ptr, ptr %.val80.sink.in, align 8, !nonnull !76, !noundef !76
  %i.ox = shl nuw i64 %.val79.sink, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80.sink, i64 noundef %i.ox, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit, %bb.el
  %.sroa.9274.1 = phi ptr [ %.sroa.9274.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit ], [ %.sroa.0279.0.copyload, %bb.el ], [ %.sroa.9274.1.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split ]
  %.sroa.0272.1 = phi i8 [ %.sroa.0272.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit ], [ -1, %bb.el ], [ %.sroa.0272.1.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split ]
  store i8 %.sroa.0272.1, ptr %0, align 8
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6273.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6273, i64 7, i1 false)
  %.sroa.9274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9274.1, ptr %.sroa.9274.0..sroa_idx, align 8
  %.sroa.13276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13276, i64 40, i1 false)
  br label %common.ret

bb.em:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11239.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i, i64 16, i1 false)
  store i64 %.sroa.0.0.copyload7.i.i, ptr %i.ae, align 8
  %.val98 = load i64, ptr %i.oj, align 8, !noundef !76 ; 6 uses
  %i.oy = icmp ult i64 %.val98, 288230376151711744
  call void @llvm.assume(i1 %i.oy)
  switch i64 %.val98, label %bb.ev [
    i64 0, label %bb.en
    i64 1, label %bb.eo
  ]

bb.en:                                            ; preds = %bb.em
  %i.oz = load i64, ptr %i.oo, align 8, !noundef !76
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.pb = load i64, ptr %i.pa, align 8, !noundef !76
  %i.pc = icmp eq i64 %i.oz, %i.pb
  br i1 %i.pc, label %bb.fy, label %bb.fs

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.val85 = load ptr, ptr %.sroa.11239.8..sroa_idx, align 8, !nonnull !76, !noundef !76 ; 4 uses
  %i.pd = load ptr, ptr %.val85, align 8, !noalias !29550, !nonnull !76, !align !77, !noundef !76
  %i.pe = load ptr, ptr %i.pd, align 8, !noalias !29550, !nonnull !76, !noundef !76
  %i.pf = getelementptr inbounds nuw i8, ptr %.val85, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %.val85, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !noalias !29550, !noundef !76
  %i.pi = getelementptr inbounds nuw i8, ptr %.val85, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !noalias !29550, !noundef !76
  invoke void %i.pe(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noundef nonnull align 8 %i.pf, ptr noundef %i.ph, i64 noundef %i.pj)
          to label %_RNvXs2_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit unwind label %bb.ep, !inline_history !29384

bb.ep:                                            ; preds = %bb.eo
  %i.pk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.oq, ptr %i.af, align 8
  store ptr %i.os, ptr %.sroa.8230.0..sroa_idx, align 8
  br label %.body127

.body127:                                         ; preds = %bb.er, %bb.ep
  %eh.lpad-body128 = phi { ptr, i32 } [ %i.pk, %bb.ep ], [ %i.po, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.thread341

_RNvXs2_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.eo
  call void @llvm.experimental.noalias.scope.decl(metadata !29551)
  call void @llvm.experimental.noalias.scope.decl(metadata !29552)
  call void @llvm.experimental.noalias.scope.decl(metadata !29553)
  call void @llvm.experimental.noalias.scope.decl(metadata !29554)
  %i.pl = load i64, ptr %i.od, align 8, !alias.scope !29555, !noundef !76 ; 3 uses
  %i.pm = load i64, ptr %i.ag, align 8, !range !79, !alias.scope !29555, !noundef !76
  %i.pn = icmp eq i64 %i.pl, %i.pm
  br i1 %i.pn, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %_RNvXs2_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.et unwind label %bb.er, !noalias !29556

bb.er:                                            ; preds = %bb.eq
  %i.po = landingpad { ptr, i32 }
          cleanup
  store ptr %i.oq, ptr %i.af, align 8
  store ptr %i.os, ptr %.sroa.8230.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !29557)
  call void @llvm.experimental.noalias.scope.decl(metadata !29558)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !alias.scope !29559, !noundef !76
  %i.pr = load ptr, ptr %i.ab, align 8, !alias.scope !29559, !nonnull !76, !align !77, !noundef !76
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !29559, !nonnull !76, !noundef !76
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !alias.scope !29559, !noundef !76
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !29559, !noundef !76
  invoke void %i.pt(ptr noundef %i.pq, ptr noundef %i.pv, i64 noundef %i.px)
          to label %.body127 unwind label %bb.es, !noalias !29556, !inline_history !5

bb.es:                                            ; preds = %bb.er
  %i.py = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !29556
  unreachable

bb.et:                                            ; preds = %bb.eq, %_RNvXs2_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
  %i.pz = load ptr, ptr %i.oc, align 8, !alias.scope !29555, !nonnull !76, !noundef !76
  %i.qa = getelementptr inbounds nuw [32 x i8], ptr %i.pz, i64 %i.pl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.qb = add i64 %i.pl, 1
  store i64 %i.qb, ptr %i.od, align 8, !alias.scope !29555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.gb, %bb.et
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.ae)
          to label %.backedge unwind label %.loopexit

bb.ev:                                            ; preds = %bb.em
  %.val99 = load ptr, ptr %.sroa.11239.8..sroa_idx, align 8, !nonnull !76, !noundef !76 ; 8 uses
  %i.qc = add nsw i64 %.val98, -1
  %xtraiter1221 = and i64 %.val98, 3              ; 3 uses
  %i.qd = icmp ult i64 %i.qc, 3
  br i1 %i.qd, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ev
  %unroll_iter1226 = and i64 %.val98, 288230376151711740
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.qq, %bb.ew ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new ], [ %i.qp, %bb.ew ]
  %niter1227 = phi i64 [ 0, %.new ], [ %niter1227.next.3, %bb.ew ]
  %i.qe = getelementptr inbounds nuw [32 x i8], ptr %.val99, i64 %.sroa.04.0.i.i.i.i
  %i.qf = getelementptr i8, ptr %i.qe, i64 16
  %.val.i.i.i.i = load i64, ptr %i.qf, align 8, !noundef !76
  %i.qg = add i64 %.val.i.i.i.i, %.sroa.02.0.i.i.i.i
  %i.qh = getelementptr inbounds nuw [32 x i8], ptr %.val99, i64 %.sroa.04.0.i.i.i.i
  %i.qi = getelementptr i8, ptr %i.qh, i64 48
  %.val.i.i.i.i.1 = load i64, ptr %i.qi, align 8, !noundef !76
  %i.qj = add i64 %.val.i.i.i.i.1, %i.qg
  %i.qk = getelementptr inbounds nuw [32 x i8], ptr %.val99, i64 %.sroa.04.0.i.i.i.i
  %i.ql = getelementptr i8, ptr %i.qk, i64 80
  %.val.i.i.i.i.2 = load i64, ptr %i.ql, align 8, !noundef !76
  %i.qm = add i64 %.val.i.i.i.i.2, %i.qj
  %i.qn = getelementptr inbounds nuw [32 x i8], ptr %.val99, i64 %.sroa.04.0.i.i.i.i
  %i.qo = getelementptr i8, ptr %i.qn, i64 112
  %.val.i.i.i.i.3 = load i64, ptr %i.qo, align 8, !noundef !76
  %i.qp = add i64 %.val.i.i.i.i.3, %i.qm          ; 3 uses
  %i.qq = add nuw i64 %.sroa.04.0.i.i.i.i, 4      ; 2 uses
  %niter1227.next.3 = add i64 %niter1227, 4       ; 2 uses
  %niter1227.ncmp.3 = icmp eq i64 %niter1227.next.3, %unroll_iter1226
  br i1 %niter1227.ncmp.3, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit.unr-lcssa, label %bb.ew

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit.unr-lcssa: ; preds = %bb.ew
  %lcmp.mod1223.not = icmp eq i64 %xtraiter1221, 0
  br i1 %lcmp.mod1223.not, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit.unr-lcssa, %bb.ev
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.ev ], [ %i.qq, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.ev ], [ %i.qp, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit.unr-lcssa ]
  %lcmp.mod1225 = icmp ne i64 %xtraiter1221, 0
  call void @llvm.assume(i1 %lcmp.mod1225)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %.epil.preheader
  %.sroa.04.0.i.i.i.i.epil = phi i64 [ %.sroa.04.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.qu, %bb.ex ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi i64 [ %.sroa.02.0.i.i.i.i.epil.init, %.epil.preheader ], [ %i.qt, %bb.ex ]
  %epil.iter1222 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1222.next, %bb.ex ]
  %i.qr = getelementptr inbounds nuw [32 x i8], ptr %.val99, i64 %.sroa.04.0.i.i.i.i.epil
  %i.qs = getelementptr i8, ptr %i.qr, i64 16
  %.val.i.i.i.i.epil = load i64, ptr %i.qs, align 8, !noundef !76
  %i.qt = add i64 %.val.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.epil ; 2 uses
  %i.qu = add nuw i64 %.sroa.04.0.i.i.i.i.epil, 1
  %epil.iter1222.next = add i64 %epil.iter1222, 1 ; 2 uses
  %epil.iter1222.cmp.not = icmp eq i64 %epil.iter1222.next, %xtraiter1221
  br i1 %epil.iter1222.cmp.not, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit, label %bb.ex, !llvm.loop !29395

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit: ; preds = %bb.ex, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.qp, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit.unr-lcssa ], [ %i.qt, %bb.ex ] ; 5 uses
  %.idx = shl nuw nsw i64 %.val98, 5
  %i.qv = getelementptr inbounds nuw i8, ptr %.val99, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !29560)
  %.not.i.i.i129 = icmp slt i64 %.lcssa, 0
  br i1 %.not.i.i.i129, label %bb.fa, label %bb.ey, !prof !29561

bb.ey:                                            ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit
  %i.qw = icmp eq i64 %.lcssa, 0
  br i1 %i.qw, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.preheader, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !29562
  %i.qx = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.lcssa, i64 noundef range(i64 1, 9) 1) #44, !noalias !29562 ; 2 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %bb.fa, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.preheader

bb.fa:                                            ; preds = %bb.ez, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit
  %.sroa.4.0.ph.i.i131 = phi i64 [ 1, %bb.ez ], [ 0, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENCNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB21_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request00ENtNtNtBa_6traits8iterator8Iterator3sumjEB23_.exit ]
  store ptr %i.oq, ptr %i.af, align 8
  store ptr %i.os, ptr %.sroa.8230.0..sroa_idx, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i131, i64 %.lcssa) #49
          to label %.noexc132 unwind label %bb.fr

.noexc132:                                        ; preds = %bb.fa
  unreachable

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.preheader: ; preds = %bb.ez, %bb.ey
  %.sroa.10.0.i.i130 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ey ], [ %i.qx, %bb.ez ] ; 2 uses
  store i64 %.lcssa, ptr %i.aa, align 8, !alias.scope !29560
  store ptr %.sroa.10.0.i.i130, ptr %i.ok, align 8, !alias.scope !29560
  store i64 0, ptr %i.ol, align 8, !alias.scope !29560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.val99, ptr %i.z, align 8
  store i64 %.sroa.0.0.copyload7.i.i, ptr %.sroa.6256.0..sroa_idx, align 8
  store ptr %i.qv, ptr %.sroa.7257.0..sroa_idx, align 8
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit146: ; preds = %bb.fn
  %i.qz = icmp eq ptr %i.rd, %i.qv
  br i1 %i.qz, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.thread, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.fo, %bb.fk
  %.pn22.pn = phi { ptr, i32 } [ %i.rz, %bb.fk ], [ %i.sq, %bb.fo ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(32) %i.z) #50
          to label %.thread337 unwind label %bb.fp

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.preheader, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit146
  %i.ra = phi ptr [ %i.sl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit146 ], [ %.sroa.10.0.i.i130, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.preheader ] ; 2 uses
  %i.rb = phi i64 [ %i.sn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit146 ], [ 0, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.preheader ] ; 5 uses
  %i.rc = phi ptr [ %i.rd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit146 ], [ %.val99, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.preheader ] ; 5 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32 ; 5 uses
  %.sroa.0261.0.copyload262 = load ptr, ptr %i.rc, align 8, !noalias !29563 ; 3 uses
  %.sroa.8263.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %.sroa.8263.sroa.0.0.copyload = load ptr, ptr %.sroa.8263.0..sroa_idx264, align 8, !noalias !29563 ; 3 uses
  %.sroa.8263.sroa.6.0..sroa.8263.0..sroa_idx264.sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %.sroa.8263.sroa.6.0.copyload = load i64, ptr %.sroa.8263.sroa.6.0..sroa.8263.0..sroa_idx264.sroa_idx, align 8, !noalias !29563 ; 7 uses
  %.sroa.8263.sroa.7.0..sroa.8263.0..sroa_idx264.sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %.sroa.8263.sroa.7.0.copyload = load ptr, ptr %.sroa.8263.sroa.7.0..sroa.8263.0..sroa_idx264.sroa_idx, align 8, !noalias !29563 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.0261.0.copyload262, null
  br i1 %.not19, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.fl

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit146
  %.lcssa566 = phi ptr [ %i.qv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit146 ], [ %i.rd, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit ]
  store ptr %.lcssa566, ptr %.sroa.5255.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(32) %i.z)
          to label %bb.fc unwind label %bb.fb

.thread337:                                       ; preds = %bb.fb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit ], [ %i.rf, %bb.fb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.re = icmp eq i64 %.val, 0
  br i1 %i.re, label %.thread346, label %bb.fq

bb.fb:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.thread
  %i.rf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.oq, ptr %i.af, align 8
  store ptr %i.os, ptr %.sroa.8230.0..sroa_idx, align 8
  br label %.thread337

bb.fc:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  invoke void @_RNvXsE_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.fe unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.rg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.oq, ptr %i.af, align 8
  store ptr %i.os, ptr %.sroa.8230.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.fj

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !29564)
  call void @llvm.experimental.noalias.scope.decl(metadata !29565)
  call void @llvm.experimental.noalias.scope.decl(metadata !29566)
  call void @llvm.experimental.noalias.scope.decl(metadata !29567)
  %i.rh = load i64, ptr %i.od, align 8, !alias.scope !29568, !noundef !76 ; 3 uses
  %i.ri = load i64, ptr %i.ag, align 8, !range !79, !alias.scope !29568, !noundef !76
  %i.rj = icmp eq i64 %i.rh, %i.ri
  br i1 %i.rj, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.fi unwind label %bb.fg, !noalias !29569

bb.fg:                                            ; preds = %bb.ff
  %i.rk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.oq, ptr %i.af, align 8
  store ptr %i.os, ptr %.sroa.8230.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !29570)
  call void @llvm.experimental.noalias.scope.decl(metadata !29571)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.rm = load ptr, ptr %i.rl, align 8, !alias.scope !29572, !noundef !76
  %i.rn = load ptr, ptr %i.y, align 8, !alias.scope !29572, !nonnull !76, !align !77, !noundef !76
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.rp = load ptr, ptr %i.ro, align 8, !noalias !29572, !nonnull !76, !noundef !76
  %i.rq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !alias.scope !29572, !noundef !76
  %i.rs = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.rt = load i64, ptr %i.rs, align 8, !alias.scope !29572, !noundef !76
  invoke void %i.rp(ptr noundef %i.rm, ptr noundef %i.rr, i64 noundef %i.rt)
          to label %bb.fj unwind label %bb.fh, !noalias !29569, !inline_history !5

bb.fh:                                            ; preds = %bb.fg
  %i.ru = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !29569
  unreachable

bb.fi:                                            ; preds = %bb.ff, %bb.fe
  %i.rv = load ptr, ptr %i.oc, align 8, !alias.scope !29568, !nonnull !76, !noundef !76
  %i.rw = getelementptr inbounds nuw [32 x i8], ptr %i.rv, i64 %i.rh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.rx = add i64 %i.rh, 1
  store i64 %i.rx, ptr %i.od, align 8, !alias.scope !29568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %.backedge

.backedge:                                        ; preds = %bb.eu, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ry = icmp eq ptr %i.oq, %i.of
  br i1 %i.ry, label %._crit_edge, label %bb.ei

bb.fj:                                            ; preds = %bb.fd, %bb.fg
  %.pn20 = phi { ptr, i32 } [ %i.rg, %bb.fd ], [ %i.rk, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.thread346

bb.fk:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i
  %i.rz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.oq, ptr %i.af, align 8
  store ptr %i.os, ptr %.sroa.8230.0..sroa_idx, align 8
  store ptr %i.rd, ptr %.sroa.5255.0..sroa_idx, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0261.0.copyload262, i64 32
  %i.sb = load ptr, ptr %i.sa, align 8, !noalias !29573, !nonnull !76, !noundef !76
  invoke void %i.sb(ptr noundef %.sroa.8263.sroa.7.0.copyload, ptr noundef %.sroa.8263.sroa.0.0.copyload, i64 noundef %.sroa.8263.sroa.6.0.copyload)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.fp, !inline_history !5

bb.fl:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !29574)
  call void @llvm.experimental.noalias.scope.decl(metadata !29575)
  call void @llvm.experimental.noalias.scope.decl(metadata !29576)
  %i.sc = load i64, ptr %i.aa, align 8, !range !79, !alias.scope !29577, !noundef !76
  %i.sd = sub i64 %i.sc, %i.rb
  %i.se = icmp ugt i64 %.sroa.8263.sroa.6.0.copyload, %i.sd
  br i1 %i.se, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i, !prof !75

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i: ; preds = %bb.fl
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %i.rb, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8263.sroa.6.0.copyload, i64 noundef 1, i64 noundef 1)
          to label %.noexc144 unwind label %bb.fk

.noexc144:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i
  %i.sf = load i64, ptr %i.ol, align 8, !alias.scope !29578, !noundef !76 ; 2 uses
  %i.sg = icmp sgt i64 %i.sf, -1
  call void @llvm.assume(i1 %i.sg)
  %.pre709 = load ptr, ptr %i.ok, align 8, !alias.scope !29578
  br label %bb.fm

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.fl
  %i.sh = icmp sgt i64 %i.rb, -1
  call void @llvm.assume(i1 %i.sh)
  %.not.i.i.i143 = icmp samesign eq i64 %.sroa.8263.sroa.6.0.copyload, 0
  br i1 %.not.i.i.i143, label %bb.fn, label %bb.fm
end_hunk_0
