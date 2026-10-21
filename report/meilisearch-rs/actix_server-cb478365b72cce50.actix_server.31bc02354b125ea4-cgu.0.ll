Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_server-cb478365b72cce50.actix_server.31bc02354b125ea4-cgu.0?download=true
inline.NumInlined: 4000
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZN5tokio4task5local8LocalSet9run_until28_$u7b$$u7b$closure$u7d$$u7d$17h9d9a59c4524adbfcE":bb.a
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc19.i.i.i.i.i.i.i.i.i, %.thread11.i.i.i.i.i.i.i.i.i
  %i.ec = load ptr, ptr %i.z, align 8, !noalias !7737, !noundef !12 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !7738, !noundef !12 ; 2 uses
  %i.ed = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.ee, ptr %i.ec, align 8, !noalias !7738
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.bn, label %bb.br, !prof !18

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.trap()
  unreachable

bb.bo:                                            ; preds = %.thread11.i.i.i.i.i.i.i.i.i
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc20.i.i.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !7738

.noexc20.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %.noexc14.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !7737
  %i.eg = add i64 %.pre.i.i.i.i.i.i.i.i.i.i.i, -1
  store i64 %i.eg, ptr %i.bk, align 8, !noalias !7737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7737
  store ptr @333, ptr %i.n, align 8, !noalias !7737
  br label %.invoke.i.i.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.bs, %bb.bp
  %.sink40.i.sroa.phi.i.i.i.i.i.i.i.i = phi ptr [ %.sink40.i.sroa.gep.i.i.i.i.i.i.i.i, %bb.bs ], [ %.sink40.i.sroa.gep1.i.i.i.i.i.i.i.i, %bb.bp ]
  %.sink40.i.sroa.phi2.i.i.i.i.i.i.i.i = phi ptr [ %.sink40.i.sroa.gep3.i.i.i.i.i.i.i.i, %bb.bs ], [ %.sink40.i.sroa.gep4.i.i.i.i.i.i.i.i, %bb.bp ]
  %.sink40.i.sroa.phi5.i.i.i.i.i.i.i.i = phi ptr [ %.sink40.i.sroa.gep6.i.i.i.i.i.i.i.i, %bb.bs ], [ %.sink40.i.sroa.gep7.i.i.i.i.i.i.i.i, %bb.bp ]
  %.sink40.i.sroa.phi8.i.i.i.i.i.i.i.i = phi ptr [ %.sink40.i.sroa.gep9.i.i.i.i.i.i.i.i, %bb.bs ], [ %.sink40.i.sroa.gep10.i.i.i.i.i.i.i.i, %bb.bp ]
  %.sink40.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %bb.bs ], [ %i.n, %bb.bp ]
  store i64 1, ptr %.sink40.i.sroa.phi.i.i.i.i.i.i.i.i, align 8, !noalias !7737
  store ptr null, ptr %.sink40.i.sroa.phi2.i.i.i.i.i.i.i.i, align 8, !noalias !7737
  store ptr inttoptr (i64 8 to ptr), ptr %.sink40.i.sroa.phi5.i.i.i.i.i.i.i.i, align 8, !noalias !7737
  store i64 0, ptr %.sink40.i.sroa.phi8.i.i.i.i.i.i.i.i, align 8, !noalias !7737
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink40.i.i.i.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #35
          to label %.cont.i.i.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !7738

.cont.i.i.i.i.i.i.i.i.i:                          ; preds = %.invoke.i.i.i.i.i.i.i.i.i
  unreachable

bb.bq:                                            ; preds = %bb.bu
  unreachable

bb.br:                                            ; preds = %bb.bm
  %i.eh = load ptr, ptr %i.z, align 8, !noalias !7737, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7737
  store ptr %i.eh, ptr %i.l, align 8, !noalias !7737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7737
  %.sroa.06.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !7737
  %i.ei = trunc nuw i64 %.sroa.06.0.copyload.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ei, label %bb.bt, label %bb.bu, !prof !23

bb.bs:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7737
  store ptr @335, ptr %i.m, align 8, !noalias !7737
  br label %.invoke.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.k, ptr noundef nonnull align 8 dereferenceable(248) %i.bg, i64 248, i1 false), !noalias !7737
  %i.ek = invoke fastcc noundef nonnull ptr @_ZN5tokio4task5local7Context5spawn17h755249f0dc4866deE(ptr noundef nonnull align 8 %i.ej, ptr noalias noundef align 8 captures(address) dereferenceable(248) %i.k)
          to label %bb.bx unwind label %bb.bv, !noalias !7738

bb.bu:                                            ; preds = %bb.br
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #35
          to label %bb.bq unwind label %bb.bv, !noalias !7738

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7758)
  %i.em = load ptr, ptr %i.l, align 8, !alias.scope !7759, !noalias !7737, !nonnull !12, !noundef !12 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !noalias !7760, !noundef !12
  %i.eo = add i64 %i.en, -1                       ; 2 uses
  store i64 %i.eo, ptr %i.em, align 8, !noalias !7760
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.bw, label %.body.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bv
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.body.i.i.i.i.i.i unwind label %bb.cb, !noalias !7738

bb.bx:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7762)
  %i.eq = load ptr, ptr %i.l, align 8, !alias.scope !7763, !noalias !7737, !nonnull !12, !noundef !12 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !noalias !7764, !noundef !12
  %i.es = add i64 %i.er, -1                       ; 2 uses
  store i64 %i.es, ptr %i.eq, align 8, !noalias !7764
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.by, label %.noexc11.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.noexc11.i.i.i.i.i.i unwind label %bb.cd, !noalias !7765

.noexc11.i.i.i.i.i.i:                             ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7737
  br label %bb.ce

bb.bz:                                            ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit18.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ar, %bb.aq
  %.sroa.0.0.i.i6.i.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.ar ], [ %i.cq, %bb.aq ], [ %i.dm, %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$tokio..task..local..Context$GT$$GT$17hcae508354056d132E.exit18.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre.i.i21.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !7737
  %i.eu = add i64 %.pre.i.i21.i.i.i.i.i.i.i.i.i, -1
  store i64 %i.eu, ptr %i.bk, align 8, !noalias !7737
  %i.ev = load i64, ptr %i.o, align 8, !range !34, !noalias !7737, !noundef !12
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2148715cd225bc0eE"(ptr noundef nonnull align 8 %i.bg)
          to label %bb.ce unwind label %bb.cd, !noalias !7765

bb.cb:                                            ; preds = %bb.cc, %bb.bw
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7738
  unreachable

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.bi, %bb.bh
  %.pn4.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i, %bb.bh ], [ %i.ea, %bb.bi ] ; 2 uses
  %i.ey = load i64, ptr %i.o, align 8, !range !34, !noalias !7737, !noundef !12
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.body.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2148715cd225bc0eE"(ptr noundef nonnull align 8 %i.bg)
          to label %.body.i.i.i.i.i.i unwind label %bb.cb, !noalias !7738

bb.cd:                                            ; preds = %bb.ca, %bb.by
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.cd, %bb.cc, %.thread.i.i.i.i.i.i.i.i.i, %bb.bw, %bb.bv
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fa, %bb.cd ], [ %i.el, %bb.bw ], [ %.pn4.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.el, %bb.bv ], [ %.pn4.i.i.i.i.i.i.i.i.i, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i.i.i.i.i.i)
  br label %bb.ch

bb.ce:                                            ; preds = %bb.ca, %bb.bz, %.noexc11.i.i.i.i.i.i
  %.sroa.0.028.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.noexc11.i.i.i.i.i.i ], [ %.sroa.0.0.i.i6.i.ph.i.i.i.i.i.i.i.i.i, %bb.bz ], [ %.sroa.0.0.i.i6.i.ph.i.i.i.i.i.i.i.i.i, %bb.ca ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7737
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i.i.i.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.028.i.i.i.i.i.i.i.i.i) ]
  %i.fb = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.sroa.0.028.i.i.i.i.i.i.i.i.i)
          to label %.noexc13.i.i.i.i.i.i unwind label %bb.dh, !noalias !7765

.noexc13.i.i.i.i.i.i:                             ; preds = %bb.ce
  br i1 %i.fb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.noexc13.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.sroa.0.028.i.i.i.i.i.i.i.i.i)
          to label %bb.cg unwind label %bb.dh, !noalias !7765

bb.cg:                                            ; preds = %bb.cf, %.noexc13.i.i.i.i.i.i
  store i8 0, ptr %i.av, align 1, !noalias !7735
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !7735, !noundef !12 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.fd, ptr %i.fe, align 8, !noalias !7735
  br label %bb.ck

bb.ch:                                            ; preds = %bb.dh, %.body22.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %.pn9.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hf, %bb.dh ], [ %eh.lpad-body23.i.i.i.i.i.i, %.body22.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.fg = load i8, ptr %i.ff, align 1, !range !31, !noalias !7735, !noundef !12
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.dm, label %bb.dl

bb.ci:                                            ; preds = %.noexc3.i.i.i.i
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #35
          to label %.noexc.i.i.i.i.i unwind label %bb.dn, !noalias !7732

.noexc.i.i.i.i.i:                                 ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %.noexc3.i.i.i.i
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #35
          to label %.noexc4.i.i.i.i.i unwind label %bb.dn, !noalias !7732

.noexc4.i.i.i.i.i:                                ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cg, %._crit_edge.i.i.i.i.i.i
  %i.fi = phi ptr [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.fd, %bb.cg ] ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7736)
  call void @llvm.experimental.noalias.scope.decl(metadata !7766)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.db, label %bb.cl, !prof !18

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !7767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7768
  %i.fk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 8, !range !41, !noalias !7769, !noundef !12
  switch i8 %i.fm, label %default.unreachable28 [
    i8 0, label %bb.cm
    i8 1, label %bb.cn
    i8 2, label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i"
  ], !prof !44

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.fk, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc17.i.i.i.i.i.i unwind label %bb.dg, !noalias !7765

.noexc17.i.i.i.i.i.i:                             ; preds = %bb.cm
  store i8 1, ptr %i.fl, align 8, !noalias !7769
  br label %bb.cn

bb.cn:                                            ; preds = %.noexc17.i.i.i.i.i.i, %bb.cl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 68
  %i.fo = load i8, ptr %i.fn, align 4, !range !31, !noalias !7770, !noundef !12 ; 2 uses
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 69 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !7770 ; 4 uses
  br i1 %i.fp, label %bb.co, label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i.i.i.i.i.i.i.i"

bb.co:                                            ; preds = %bb.cn
  %.not.i.i.i.i.i15.i.i.i.i.i.i = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i.i15.i.i.i.i.i.i, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread.i.i.i.i.i.i.i", label %bb.cp

"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread.i.i.i.i.i.i.i": ; preds = %bb.co
  invoke void @_ZN5tokio4task4coop14register_waker17hc1a950aa71c31494E(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc18.i.i.i.i.i.i unwind label %bb.dg, !noalias !7732

.noexc18.i.i.i.i.i.i:                             ; preds = %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7768
  store i24 0, ptr %i.b, align 4, !noalias !7768
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.fs)
          to label %.noexc19.i.i.i.i.i.i unwind label %bb.dg, !noalias !7732

.noexc19.i.i.i.i.i.i:                             ; preds = %.noexc18.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7768
  br label %bb.do

bb.cp:                                            ; preds = %bb.co
  %i.ft = add i8 %i.fr, -1
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i.i.i.i.i.i.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.cp, %bb.cn
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ft, %bb.cp ], [ %i.fr, %bb.cn ]
  store i8 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fq, align 1, !noalias !7770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7768
  store i24 0, ptr %i.b, align 4, !noalias !7768
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.fu)
          to label %.noexc20.i.i.i.i.i.i unwind label %bb.dg, !noalias !7765

.noexc20.i.i.i.i.i.i:                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7768
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %.noexc20.i.i.i.i.i.i, %bb.cl
  %.sroa.03.012.i37.off8.i.i.i.i.i.i.i.i = phi i8 [ %i.fo, %.noexc20.i.i.i.i.i.i ], [ 0, %bb.cl ]
  %.sroa.03.012.i37.off16.i.i.i.i.i.i.i.i = phi i8 [ %i.fr, %.noexc20.i.i.i.i.i.i ], [ 0, %bb.cl ]
  store i8 %.sroa.03.012.i37.off8.i.i.i.i.i.i.i.i, ptr %i.c, align 1, !noalias !7768
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.03.012.i37.off16.i.i.i.i.i.i.i.i, ptr %i.fv, align 1, !noalias !7768
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fi, i64 48 ; 4 uses
  %i.fx = invoke noundef i64 @_ZN5tokio4sync7oneshot5State4load17h7852ae69f84d6a44E(ptr noundef nonnull align 8 %i.fw, i8 noundef 2)
          to label %bb.cr unwind label %bb.cq, !noalias !7771 ; 3 uses

bb.cq:                                            ; preds = %.thread.i.i.i.i.i.i.i.i, %bb.cx, %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i"
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.c)
          to label %.body22.i.i.i.i.i.i unwind label %bb.da, !noalias !7772

bb.cr:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.thread.i.i.i.i.i.i.i.i"
  %i.fz = and i64 %i.fx, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cs, label %bb.dc

bb.cs:                                            ; preds = %bb.cr
  %i.ga = and i64 %i.fx, 4
  %.not29.i.i.i.i.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not29.i.i.i.i.i.i.i.i, label %bb.ct, label %.thread.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.gb = and i64 %i.fx, 1
  %.not30.i.i.i.i.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not30.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.cu

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.cs
  store i8 0, ptr %i.c, align 1, !noalias !7768
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.c)
          to label %.noexc21.i.i.i.i.i.i unwind label %bb.dg, !noalias !7765

.noexc21.i.i.i.i.i.i:                             ; preds = %.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7768
  br label %bb.dd

bb.cu:                                            ; preds = %bb.ct
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  %i.gd = load ptr, ptr %1, align 8, !alias.scope !7773, !noalias !7732, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !7774, !noundef !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !7771, !noundef !12
  %i.gi = icmp eq ptr %i.gf, %i.gh
  br i1 %i.gi, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.gj = load ptr, ptr %i.gd, align 8, !noalias !7771, !nonnull !12, !align !13, !noundef !12
  %i.gk = load ptr, ptr %i.gc, align 8, !noalias !7774, !nonnull !12, !align !13, !noundef !12
  %i.gl = icmp eq ptr %i.gk, %i.gj
  br i1 %i.gl, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread9.i.i.i.i.i.i.i", label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.gm = atomicrmw and ptr %i.fw, i64 -2 acq_rel, align 8, !noalias !7774
  %i.gn = and i64 %i.gm, 2
  %.not31.i.i.i.i.i.i.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not31.i.i.i.i.i.i.i.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN5tokio4sync7oneshot4Task9drop_task17h4716b0adcea0322aE(ptr noundef nonnull align 8 %i.gc)
          to label %.thread.i.i.i.i.i.i.i.i unwind label %bb.cq, !noalias !7771

bb.cy:                                            ; preds = %bb.cw
  %i.go = atomicrmw or ptr %i.fw, i64 1 acq_rel, align 8, !noalias !7774 ; 0 uses
  br label %bb.dc

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.cx, %bb.ct
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  invoke void @_ZN5tokio4sync7oneshot4Task8set_task17hf2a8b67a2f898703E(ptr noundef nonnull align 8 %i.gp, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.cz unwind label %bb.cq, !noalias !7772

bb.cz:                                            ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.gq = atomicrmw or ptr %i.fw, i64 1 acq_rel, align 8, !noalias !7775
  %i.gr = and i64 %i.gq, 2
  %.not33.i.i.i.i.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not33.i.i.i.i.i.i.i.i, label %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread9.i.i.i.i.i.i.i", label %bb.dc

bb.da:                                            ; preds = %bb.cq
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7772
  unreachable

"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread9.i.i.i.i.i.i.i": ; preds = %bb.cz, %bb.cv
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.c)
          to label %bb.do unwind label %bb.dg, !noalias !7732

bb.db:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7776
  store ptr @439, ptr %i.d, align 8, !noalias !7776
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.gt, align 8, !noalias !7776
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.gu, align 8, !noalias !7776
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gv, align 8, !noalias !7776
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.gw, align 8, !noalias !7776
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #35
          to label %.noexc25.i.i.i.i.i.i unwind label %bb.dg, !noalias !7765

.noexc25.i.i.i.i.i.i:                             ; preds = %bb.db
  unreachable

bb.dc:                                            ; preds = %bb.cz, %bb.cy, %bb.cr
  store i8 0, ptr %i.c, align 1, !noalias !7768
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fi, i64 56 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !range !31, !noalias !7775, !noundef !12
  store i8 0, ptr %i.gx, align 1, !noalias !7775
  invoke void @"_ZN77_$LT$tokio..task..coop..RestoreOnPending$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52db0a92ec3c1fc9E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.c)
          to label %.noexc26.i.i.i.i.i.i unwind label %bb.dg, !noalias !7732

.noexc26.i.i.i.i.i.i:                             ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7768
  %spec.select.i.i.i.i.i.i.i = xor i8 %i.gy, 1    ; 2 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !7777, !noalias !7735 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7778)
  %i.gz = icmp eq ptr %.pre.i.i.i.i.i.i.i, null
  br i1 %i.gz, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %.noexc26.i.i.i.i.i.i, %.noexc21.i.i.i.i.i.i
  %.sroa.02.016.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc21.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i.i ] ; 2 uses
  %i.ha = phi ptr [ %i.fi, %.noexc21.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i.i ]
  %i.hb = atomicrmw add ptr %i.ha, i64 -1 release, align 8, !noalias !7779
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd1d4e4546c42d21aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %bb.di unwind label %bb.df, !noalias !7732

bb.df:                                            ; preds = %bb.de
  %i.hd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.fj, align 8, !alias.scope !7736, !noalias !7735
  br label %.body22.i.i.i.i.i.i

bb.dg:                                            ; preds = %bb.dc, %bb.db, %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread9.i.i.i.i.i.i.i", %.thread.i.i.i.i.i.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h28fc893905faf612E.exit.i.i.i.i.i.i.i.i", %.noexc18.i.i.i.i.i.i, %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread.i.i.i.i.i.i.i", %bb.cm
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i.i.i.i.i

.body22.i.i.i.i.i.i:                              ; preds = %bb.dg, %bb.df, %bb.cq
  %eh.lpad-body23.i.i.i.i.i.i = phi { ptr, i32 } [ %i.he, %bb.dg ], [ %i.hd, %bb.df ], [ %i.fy, %bb.cq ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$tokio..sync..oneshot..Receiver$LT$$LP$$RP$$GT$$GT$17hda34d53a9da8a35cE"(ptr noalias noundef align 8 dereferenceable(8) %i.fj) #36
          to label %bb.ch unwind label %bb.dk, !noalias !7732

bb.dh:                                            ; preds = %bb.dj, %bb.cf, %bb.ce
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.di:                                            ; preds = %bb.de, %bb.dd, %.noexc26.i.i.i.i.i.i
  %.sroa.02.017.i.i.i.i.i.i.i = phi i8 [ %.sroa.02.016.i.i.i.i.i.i.i, %bb.dd ], [ %spec.select.i.i.i.i.i.i.i, %.noexc26.i.i.i.i.i.i ], [ %.sroa.02.016.i.i.i.i.i.i.i, %bb.de ]
  store ptr null, ptr %i.fj, align 8, !alias.scope !7736, !noalias !7735
  %i.hg = trunc nuw i8 %.sroa.02.017.i.i.i.i.i.i.i to i1
  br i1 %i.hg, label %bb.dj, label %bb.dp, !prof !18

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #35
          to label %.noexc.i.i.i.i.i.i unwind label %bb.dh, !noalias !7732

.noexc.i.i.i.i.i.i:                               ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.dm, %.body22.i.i.i.i.i.i
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7732
  unreachable

bb.dl:                                            ; preds = %bb.dm, %bb.ch
  store i8 2, ptr %i.at, align 8, !noalias !7735
  br label %.body.i.i.i.i.i

bb.dm:                                            ; preds = %bb.ch
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$tokio..sync..oneshot..Receiver$LT$$LP$$RP$$GT$$GT$17hda34d53a9da8a35cE"(ptr noalias noundef align 8 dereferenceable(8) %i.hi) #36
          to label %bb.dl unwind label %bb.dk, !noalias !7732

bb.dn:                                            ; preds = %bb.ds, %bb.do, %bb.cj, %bb.ci
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.dn, %bb.dl
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.hj, %bb.dn ], [ %.pn9.i.i.i.i.i.i, %bb.dl ]
  invoke void @"_ZN102_$LT$tokio..runtime..context..blocking..DisallowBlockInPlaceGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f8ff2cac240530cE"(ptr noalias noundef nonnull align 1 dereferenceable(1) %i.p)
          to label %.body.i.i.i.i unwind label %bb.dt, !noalias !7732

bb.do:                                            ; preds = %"_ZN5tokio4sync7oneshot14Inner$LT$T$GT$9poll_recv17hd4c774dd33b9751aE.exit.thread9.i.i.i.i.i.i.i", %.noexc19.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7768
  store i8 3, ptr %i.at, align 8, !noalias !7735
  %i.hk = invoke noundef zeroext i1 @_ZN5tokio4task5local8LocalSet4tick17hb66cf62f46a3564fE(ptr noundef nonnull align 8 %i.x)
          to label %bb.dr unwind label %bb.dn, !noalias !7732

bb.dp:                                            ; preds = %bb.di
  store i8 1, ptr %i.at, align 8, !noalias !7735
  br label %bb.dq

bb.dq:                                            ; preds = %bb.ds, %bb.dr, %bb.dp
  %i.hl = phi i1 [ false, %bb.dp ], [ true, %bb.ds ], [ true, %bb.dr ] ; 2 uses
  invoke void @"_ZN102_$LT$tokio..runtime..context..blocking..DisallowBlockInPlaceGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f8ff2cac240530cE"(ptr noalias noundef nonnull align 1 dereferenceable(1) %i.p)
          to label %bb.ec unwind label %bb.du, !noalias !7731

bb.dr:                                            ; preds = %bb.do
  br i1 %i.hk, label %bb.ds, label %bb.dq

bb.ds:                                            ; preds = %bb.dr
  %i.hm = load ptr, ptr %1, align 8, !alias.scope !7728, !noalias !7732, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !7732, !nonnull !12, !align !13, !noundef !12
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !7732, !nonnull !12, !noundef !12
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !7732, !noundef !12
  invoke void %i.hp(ptr noundef %i.hr)
          to label %bb.dq unwind label %bb.dn, !noalias !7732

bb.dt:                                            ; preds = %.body.i.i.i.i.i
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7732
  unreachable

bb.du:                                            ; preds = %bb.dq, %.noexc.i.i.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hfdaf1ca3b5afcb5dE.exit.i.i.i.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.du, %.body.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ht, %bb.du ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ] ; 3 uses
  invoke void @"_ZN81_$LT$tokio..task..local..LocalDataEnterGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd17a4f6b7b15fefE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.dy unwind label %bb.dv, !noalias !7731

bb.dv:                                            ; preds = %.body.i.i.i.i
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7780), !noalias !7781
  %i.hv = load ptr, ptr %i.ak, align 8, !alias.scope !7782, !noalias !7730, !noundef !12 ; 3 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %.body.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.hx = load i64, ptr %i.hv, align 8, !noalias !7783, !noundef !12
  %i.hy = add i64 %i.hx, -1                       ; 2 uses
  store i64 %i.hy, ptr %i.hv, align 8, !noalias !7783
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %bb.dx, label %.body.i.i.i

bb.dx:                                            ; preds = %bb.dw
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %.body.i.i.i unwind label %bb.eb, !noalias !7731

bb.dy:                                            ; preds = %.body.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7784), !noalias !7781
  %i.ia = load ptr, ptr %i.ak, align 8, !alias.scope !7785, !noalias !7730, !noundef !12 ; 3 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %.body, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ic = load i64, ptr %i.ia, align 8, !noalias !7786, !noundef !12
  %i.id = add i64 %i.ic, -1                       ; 2 uses
  store i64 %i.id, ptr %i.ia, align 8, !noalias !7786
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %bb.ea, label %.body

bb.ea:                                            ; preds = %bb.dz
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %.body unwind label %bb.ek, !noalias !7787

bb.eb:                                            ; preds = %bb.dx
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7731
  unreachable

bb.ec:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7733
  invoke void @"_ZN81_$LT$tokio..task..local..LocalDataEnterGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd17a4f6b7b15fefE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.eg unwind label %bb.ed, !noalias !7731

bb.ed:                                            ; preds = %bb.ec
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7788)
  %i.ih = load ptr, ptr %i.ak, align 8, !alias.scope !7789, !noalias !7730, !noundef !12 ; 3 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %.body, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ij = load i64, ptr %i.ih, align 8, !noalias !7790, !noundef !12
  %i.ik = add i64 %i.ij, -1                       ; 2 uses
  store i64 %i.ik, ptr %i.ih, align 8, !noalias !7790
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.ef, label %.body

bb.ef:                                            ; preds = %bb.ee
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %.body unwind label %bb.ej, !noalias !7731

bb.eg:                                            ; preds = %bb.ec
  call void @llvm.experimental.noalias.scope.decl(metadata !7791)
  %i.im = load ptr, ptr %i.ak, align 8, !alias.scope !7792, !noalias !7730, !noundef !12 ; 3 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.en, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.io = load i64, ptr %i.im, align 8, !noalias !7793, !noundef !12
  %i.ip = add i64 %i.io, -1                       ; 2 uses
  store i64 %i.ip, ptr %i.im, align 8, !noalias !7793
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %bb.ei, label %bb.en

bb.ei:                                            ; preds = %bb.eh
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.en unwind label %bb.em

bb.ej:                                            ; preds = %bb.ef
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7731
  unreachable

bb.ek:                                            ; preds = %bb.ea
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ek, %bb.dx, %bb.dw, %bb.dv
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7731
  unreachable

bb.el:                                            ; preds = %bb.g
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc10 unwind label %bb.em

.noexc10:                                         ; preds = %bb.el
  unreachable

bb.em:                                            ; preds = %bb.el, %bb.ei, %bb.h
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.dy, %bb.dz, %bb.ea, %bb.ed, %bb.ee, %bb.ef, %bb.em
  %eh.lpad-body = phi { ptr, i32 } [ %i.it, %bb.em ], [ %i.ig, %bb.ed ], [ %i.ig, %bb.ef ], [ %i.ig, %bb.ee ], [ %eh.lpad-body.i.i.i.i, %bb.ea ], [ %eh.lpad-body.i.i.i.i, %bb.dy ], [ %eh.lpad-body.i.i.i.i, %bb.dz ]
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haa216450f2cc7791E"(ptr noundef nonnull align 8 %i.y)
          to label %"_ZN4core3ptr156drop_in_place$LT$tokio..task..local..RunUntil$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha65766bbadc762b8E.exit" unwind label %bb.ep

bb.en:                                            ; preds = %bb.eh, %bb.eg, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7730
  br i1 %i.hl, label %common.ret, label %bb.eo

common.ret:                                       ; preds = %bb.eo, %bb.en
  %storemerge = phi i8 [ 3, %bb.en ], [ 1, %bb.eo ]
end_hunk_0
