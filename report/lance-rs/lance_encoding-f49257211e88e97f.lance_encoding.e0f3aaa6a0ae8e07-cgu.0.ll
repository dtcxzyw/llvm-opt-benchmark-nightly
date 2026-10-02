Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RNvNtCsjjpCCFGI3ul_14lance_encoding7decoder28schedule_and_decode_blocking:bb.a
  %i.op = atomicrmw sub ptr %i.oo, i64 1 release, align 8, !noalias !52444
  %i.oq = icmp eq i64 %i.op, 1
  br i1 %i.oq, label %bb.fx, label %.body118

bb.fx:                                            ; preds = %bb.fw
  fence acquire, !noalias !52434
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.oj)
          to label %.body118 unwind label %bb.gk, !noalias !52359

bb.fy:                                            ; preds = %bb.fr
  %i.or = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !52361
  unreachable

bb.fz:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !52379
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gj, %bb.fz
  %.sroa.0191.1 = phi i8 [ %i.gw, %bb.gj ], [ %.sroa.0191.0, %bb.fz ] ; 2 uses
  invoke void @_RNvXs0_NtNtNtCseXbohGRa9jr_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.gc unwind label %bb.gb, !noalias !52361

bb.gb:                                            ; preds = %bb.ga
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler6HandleEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al) #67
          to label %.body118 unwind label %bb.gi, !noalias !52361

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.experimental.noalias.scope.decl(metadata !52445)
  %i.ot = load i64, ptr %i.al, align 8, !range !96, !alias.scope !52446, !noalias !52361, !noundef !75 ; 2 uses
  %i.ou = icmp eq i64 %i.ot, -1
  br i1 %i.ou, label %bb.gm, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.experimental.noalias.scope.decl(metadata !52447)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.ow = icmp eq i64 %i.ot, 0
  br i1 %i.ow, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.experimental.noalias.scope.decl(metadata !52448)
  call void @llvm.experimental.noalias.scope.decl(metadata !52449)
  %i.ox = load ptr, ptr %i.ov, align 8, !alias.scope !52450, !noalias !52361, !nonnull !75, !noundef !75
  %i.oy = atomicrmw sub ptr %i.ox, i64 1 release, align 8, !noalias !52451
  %i.oz = icmp eq i64 %i.oy, 1
  br i1 %i.oz, label %bb.gf, label %bb.gm

bb.gf:                                            ; preds = %bb.ge
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ov)
          to label %bb.gm unwind label %bb.ab

bb.gg:                                            ; preds = %bb.gd
  call void @llvm.experimental.noalias.scope.decl(metadata !52452)
  call void @llvm.experimental.noalias.scope.decl(metadata !52453)
  %i.pa = load ptr, ptr %i.ov, align 8, !alias.scope !52454, !noalias !52361, !nonnull !75, !noundef !75
  %i.pb = atomicrmw sub ptr %i.pa, i64 1 release, align 8, !noalias !52455
  %i.pc = icmp eq i64 %i.pb, 1
  br i1 %i.pc, label %bb.gh, label %bb.gm

bb.gh:                                            ; preds = %bb.gg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ov)
          to label %bb.gm unwind label %bb.ab

bb.gi:                                            ; preds = %bb.gb
  %i.pd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !52361
  unreachable

bb.gj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !52362
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !52361
  br label %bb.ga

bb.gk:                                            ; preds = %bb.gl, %bb.fx, %bb.fv
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.gk, %bb.fr
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !52456
  unreachable

bb.gl:                                            ; preds = %bb.ad
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtBJ_20DecodeBatchScheduler7try_new0EBL_(ptr noundef nonnull align 8 dereferenceable(664) %i.am) #67
          to label %.body118 unwind label %bb.gk, !noalias !52456

bb.gm:                                            ; preds = %bb.gg, %bb.ge, %bb.gc, %bb.gf, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !52361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !52359
  %.not67.not = icmp eq i8 %.sroa.0191.1, -1
  br i1 %.not67.not, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.8, i64 55, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.448.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.6, i64 55, i1 false)
  store i8 %.sroa.0191.1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !52457)
  %.val.i120 = load i64, ptr %i.au, align 8, !alias.scope !52457 ; 2 uses
  %i.pf = icmp eq i64 %.val.i120, 0
  br i1 %i.pf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsjjpCCFGI3ul_14lance_encoding.exit122, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.val1.i121 = load ptr, ptr %i.er, align 8, !alias.scope !52457, !nonnull !75, !noundef !75
  %i.pg = shl nuw i64 %.val.i120, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i121, i64 noundef %i.pg, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !52457
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsjjpCCFGI3ul_14lance_encoding.exit122

bb.gp:                                            ; preds = %bb.gm
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 7
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(48) %.sroa.8.8..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 1 dereferenceable(48) %.sroa.6.8..sroa_idx, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !52458)
  %.val.i123 = load i64, ptr %i.au, align 8, !alias.scope !52458 ; 2 uses
  %i.ph = icmp eq i64 %.val.i123, 0
  br i1 %i.ph, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsjjpCCFGI3ul_14lance_encoding.exit125, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %.val1.i124 = load ptr, ptr %i.er, align 8, !alias.scope !52458, !nonnull !75, !noundef !75
  %i.pi = shl nuw i64 %.val.i123, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i124, i64 noundef %i.pi, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !52458
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsjjpCCFGI3ul_14lance_encoding.exit125

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.body149, %bb.gy, %bb.gx, %bb.gu, %bb.gt, %.body149.thread
  %.sroa.033.6 = phi i8 [ %.sroa.033.8, %.body149.thread ], [ %.sroa.033.8, %.body149 ], [ 0, %bb.gy ], [ 1, %bb.gu ], [ 1, %bb.gt ], [ 0, %bb.gx ]
  %.sroa.031.6 = phi i8 [ %.sroa.031.8, %.body149.thread ], [ %.sroa.031.8, %.body149 ], [ 1, %bb.gy ], [ 0, %bb.gu ], [ 0, %bb.gt ], [ 1, %bb.gx ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body150339, %.body149.thread ], [ %lpad.thr_comm.split-lp, %.body149 ], [ %i.qe, %bb.gy ], [ %i.pm, %bb.gu ], [ %i.pm, %bb.gt ], [ %i.qe, %bb.gx ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder20DecodeBatchSchedulerEBF_(ptr noalias noundef align 8 dereferenceable(48) %i.av) #67
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.gw

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsjjpCCFGI3ul_14lance_encoding.exit125: ; preds = %bb.gq, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0325.0.copyload = load i64, ptr %i.pj, align 8 ; 7 uses
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5326.0.copyload = load ptr, ptr %.sroa.5326.0..sroa_idx, align 8, !nonnull !75, !noundef !75 ; 5 uses
  %.sroa.8327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.8327.0.copyload = load i64, ptr %.sroa.8327.0..sroa_idx, align 8 ; 2 uses
  %i.pk = load ptr, ptr %i.ev, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.pl = load ptr, ptr %i.ex, align 8, !nonnull !75, !align !95, !noundef !75 ; 2 uses
  br i1 %i.bc, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsjjpCCFGI3ul_14lance_encoding.exit125
  invoke void @_RNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_20DecodeBatchScheduler13schedule_take(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5326.0.copyload, i64 noundef %.sroa.8327.0.copyload, ptr noundef nonnull align 8 %3, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.pk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pl)
          to label %bb.gz unwind label %bb.gx

bb.gs:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsjjpCCFGI3ul_14lance_encoding.exit125
  invoke void @_RNvMs8_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_20DecodeBatchScheduler15schedule_ranges(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5326.0.copyload, i64 noundef %.sroa.8327.0.copyload, ptr noundef nonnull align 8 %3, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.pk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pl)
          to label %bb.gv unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.pm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pn = icmp eq i64 %.sroa.0325.0.copyload, 0
  br i1 %i.pn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.po = shl nuw i64 %.sroa.0325.0.copyload, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5326.0.copyload, i64 noundef %i.po, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !52459
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit

bb.gv:                                            ; preds = %bb.gs
  %i.pp = icmp eq i64 %.sroa.0325.0.copyload, 0
  br i1 %i.pp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130.sink.split: ; preds = %bb.gv, %bb.gz
  %.sink574 = phi i64 [ 3, %bb.gz ], [ 4, %bb.gv ]
  %.sroa.033.8.ph = phi i8 [ 0, %bb.gz ], [ 1, %bb.gv ]
  %.sroa.031.8.ph = phi i8 [ 1, %bb.gz ], [ 0, %bb.gv ]
  %i.pq = shl nuw i64 %.sroa.0325.0.copyload, %.sink574
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5326.0.copyload, i64 noundef %i.pq, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !75
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130.sink.split, %bb.gz, %bb.gv
  %.sroa.033.8 = phi i8 [ 1, %bb.gv ], [ 0, %bb.gz ], [ %.sroa.033.8.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130.sink.split ] ; 9 uses
  %.sroa.031.8 = phi i8 [ 0, %bb.gv ], [ 1, %bb.gz ], [ %.sroa.031.8.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130.sink.split ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 0, ptr %i.at, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.pr, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 5 uses
  store i64 0, ptr %i.ps, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.6332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.px = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCseXbohGRa9jr_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 72 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 68
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 69 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %bb.ha

bb.gw:                                            ; preds = %bb.js, %bb.jr, %bb.jp, %bb.jg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.jq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit185, %.body149.thread, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.qd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.gx:                                            ; preds = %bb.gr
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = icmp eq i64 %.sroa.0325.0.copyload, 0
  br i1 %i.qf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.qg = shl nuw i64 %.sroa.0325.0.copyload, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5326.0.copyload, i64 noundef %i.qg, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !52460
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit

bb.gz:                                            ; preds = %bb.gr
  %i.qh = icmp eq i64 %.sroa.0325.0.copyload, 0
  br i1 %i.qh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130.sink.split

bb.ha:                                            ; preds = %bb.if, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsjjpCCFGI3ul_14lance_encoding.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !52461
  store ptr @2316, ptr %i.j, align 8, !noalias !52461
  store ptr null, ptr %i.pt, align 8, !noalias !52461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !52461
  store ptr %i.j, ptr %i.i, align 8, !noalias !52461
  store ptr %i.j, ptr %i.pu, align 8, !noalias !52461
  store ptr null, ptr %i.pv, align 8, !noalias !52461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !52461
  store ptr %i.aw, ptr %i.h, align 8
  store ptr %i.at, ptr %.sroa.4329.0..sroa_idx, align 8
  store i64 -1, ptr %.sroa.5330.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.6332.0..sroa_idx, align 8
  store i64 -1, ptr %.sroa.6331.0..sroa_idx, align 8, !noalias !52462
  store ptr %i.aw, ptr %i.pw, align 8, !noalias !52462
  store ptr %i.at, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !52462
  store ptr %.sroa.6331.0..sroa_idx, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !52462
  call void @llvm.experimental.noalias.scope.decl(metadata !52463)
  call void @llvm.experimental.noalias.scope.decl(metadata !52464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !52465
  %i.qi = load i8, ptr %i.py, align 8, !range !91, !noalias !52466, !noundef !75
  switch i8 %i.qi, label %default.unreachable [
    i8 0, label %bb.hb
    i8 1, label %bb.hc
    i8 2, label %.lr.ph.i.i.i.i.i.i
  ], !prof !92

bb.hb:                                            ; preds = %bb.ha
  invoke void @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.px, ptr noundef nonnull @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native5eager7destroyNtNtNtCseXbohGRa9jr_5tokio7runtime7context7ContextECsjjpCCFGI3ul_14lance_encoding)
          to label %.noexc.i.i unwind label %bb.ia, !noalias !52462

.noexc.i.i:                                       ; preds = %bb.hb
  store i8 1, ptr %i.py, align 8, !noalias !52466
  br label %bb.hc

bb.hc:                                            ; preds = %.noexc.i.i, %bb.ha
  %i.qj = load i8, ptr %i.pz, align 4, !range !89, !noalias !52467, !noundef !75 ; 2 uses
  %i.qk = trunc nuw i8 %i.qj to i1
  %i.ql = load i8, ptr %i.qa, align 1, !noalias !52467 ; 4 uses
  br i1 %i.qk, label %bb.hd, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingENtNtNtCsgczF5crJ4sT_3std6thread5local11AccessErrorE9unwrap_orCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i

bb.hd:                                            ; preds = %bb.hc
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ql, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingENtNtNtCsgczF5crJ4sT_3std6thread5local11AccessErrorE9unwrap_orCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i.i.i.i, label %bb.he

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingENtNtNtCsgczF5crJ4sT_3std6thread5local11AccessErrorE9unwrap_orCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i.i.i.i: ; preds = %bb.hd
  invoke void @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.noexc10.i.i unwind label %bb.ia, !noalias !52461

.noexc10.i.i:                                     ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingENtNtNtCsgczF5crJ4sT_3std6thread5local11AccessErrorE9unwrap_orCsjjpCCFGI3ul_14lance_encoding.exit.i.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !52465
  store i24 0, ptr %i.f, align 4, !noalias !52465
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.qb)
          to label %.thread.i.i145 unwind label %bb.ia, !noalias !52461

.thread.i.i145:                                   ; preds = %.noexc10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !52465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !52465
  br label %bb.ic

bb.he:                                            ; preds = %bb.hd
  %i.qm = add i8 %i.ql, -1
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingENtNtNtCsgczF5crJ4sT_3std6thread5local11AccessErrorE9unwrap_orCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingENtNtNtCsgczF5crJ4sT_3std6thread5local11AccessErrorE9unwrap_orCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i: ; preds = %bb.he, %bb.hc
  %.sroa.33.0.i.i.i.i.i.i.i.i = phi i8 [ %i.qm, %bb.he ], [ %i.ql, %bb.hc ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i.i, ptr %i.qa, align 1, !noalias !52467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !52465
  store i24 0, ptr %i.f, align 4, !noalias !52465
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.qb)
          to label %.noexc12.i.i unwind label %bb.ia, !noalias !52462

.noexc12.i.i:                                     ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingENtNtNtCsgczF5crJ4sT_3std6thread5local11AccessErrorE9unwrap_orCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !52465
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ha, %.noexc12.i.i
  %.sroa.03.011.i40.off8.i.i.i.i.i = phi i8 [ %i.qj, %.noexc12.i.i ], [ 0, %bb.ha ]
  %.sroa.03.011.i40.off16.i.i.i.i.i = phi i8 [ %i.ql, %.noexc12.i.i ], [ 0, %bb.ha ]
  store i8 %.sroa.03.011.i40.off8.i.i.i.i.i, ptr %i.g, align 1, !noalias !52465
  store i8 %.sroa.03.011.i40.off16.i.i.i.i.i, ptr %i.qc, align 1, !noalias !52465
  %i.qn = load i64, ptr %i.ps, align 8, !alias.scope !52464, !noalias !52468, !noundef !75 ; 9 uses
  %i.qo = icmp ult i64 %i.qn, 164703072086692426
  call void @llvm.assume(i1 %i.qo)
  %i.qp = load ptr, ptr %i.aw, align 8, !alias.scope !52463, !noalias !52469, !nonnull !75, !noundef !75 ; 9 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 416 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 128 ; 2 uses
  br label %bb.hf

bb.hf:                                            ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit11.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.qs = phi i64 [ %i.qn, %.lr.ph.i.i.i.i.i.i ], [ %i.se, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit11.i.i.i.i.i.i ] ; 6 uses
  %.sroa.033.0.i.i.i.i.i = phi i64 [ -1, %.lr.ph.i.i.i.i.i.i ], [ %i.rx, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit11.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !52470
  invoke fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc4listINtB5_2RxINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE3popB1z_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qq, ptr noundef nonnull align 8 %i.qr)
          to label %.noexc.i.i.i.i.i141 unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !52471

.noexc.i.i.i.i.i141:                              ; preds = %bb.hf
  %i.qt = load i8, ptr %i.e, align 8, !range !119, !noalias !52470, !noundef !75
  switch i8 %i.qt, label %bb.hu [
    i8 -3, label %bb.hg
    i8 -2, label %bb.ht
  ]

.loopexit12.i.i.i.i.i.i:                          ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit11.i.i.i.i.i.i, %bb.hg
  %i.qu = phi i64 [ %i.qs, %bb.hg ], [ %i.se, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit11.i.i.i.i.i.i ] ; 3 uses
  %.sroa.033.1.i.i.i.i.i = phi i64 [ %.sroa.033.0.i.i.i.i.i, %bb.hg ], [ 0, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit11.i.i.i.i.i.i ] ; 2 uses
  %i.qv = icmp ult i64 %i.qu, 164703072086692426
  call void @llvm.assume(i1 %i.qv)
  %.not5.i.i.i.i.i.i = icmp eq i64 %i.qu, %i.qn
  br i1 %.not5.i.i.i.i.i.i, label %bb.hh, label %bb.hi

bb.hg:                                            ; preds = %.noexc.i.i.i.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !52470
  br label %.loopexit12.i.i.i.i.i.i

bb.hh:                                            ; preds = %.loopexit12.i.i.i.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qp, i64 256
  invoke void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker15register_by_ref(ptr noundef nonnull align 8 %i.qw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %.noexc18.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !52471

.noexc18.i.i.i.i.i:                               ; preds = %bb.hh
  %.not620.i.i.i.i.i.i = icmp eq i64 %.sroa.033.1.i.i.i.i.i, 0
  br i1 %.not620.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.thread, label %.lr.ph21.i.i.i.i.i.i

bb.hi:                                            ; preds = %.loopexit12.i.i.i.i.i.i
  %i.qx = sub nsw i64 %i.qu, %i.qn
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qp, i64 448
  invoke void @_RNvXsf_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore11add_permits(ptr noundef nonnull align 8 %i.qy, i64 noundef %i.qx)
          to label %.noexc19.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !52471

.noexc19.i.i.i.i.i:                               ; preds = %bb.hi
  store i8 0, ptr %i.g, align 1, !noalias !52470
  br label %.sink.split.i.i.i.i.i

.lr.ph21.i.i.i.i.i.i:                             ; preds = %.noexc18.i.i.i.i.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit.i.i.i.i.i.i
  %i.qz = phi i64 [ %i.rt, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit.i.i.i.i.i.i ], [ %i.qn, %.noexc18.i.i.i.i.i ] ; 6 uses
  %.sroa.033.2.i.i.i.i.i = phi i64 [ %i.rm, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit.i.i.i.i.i.i ], [ %.sroa.033.1.i.i.i.i.i, %.noexc18.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !52470
  invoke fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc4listINtB5_2RxINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE3popB1z_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qq, ptr noundef nonnull align 8 %i.qr)
          to label %.noexc20.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i142, !noalias !52471

.noexc20.i.i.i.i.i:                               ; preds = %.lr.ph21.i.i.i.i.i.i
  %i.ra = load i8, ptr %i.c, align 8, !range !119, !noalias !52470, !noundef !75
  switch i8 %i.ra, label %bb.ho [
    i8 -3, label %bb.hj
    i8 -2, label %bb.hn
  ]

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit.i.i.i.i.i.i, %bb.hj
  %i.rb = phi i64 [ %i.qz, %bb.hj ], [ %i.rt, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.rc = icmp ult i64 %i.rb, 164703072086692426
  call void @llvm.assume(i1 %i.rc)
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.rb, %i.qn
  br i1 %.not8.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.thread, label %bb.hk

bb.hj:                                            ; preds = %.noexc20.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !52470
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.thread:                     ; preds = %.noexc18.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qp, i64 440
  %i.re = load i8, ptr %i.rd, align 8, !range !89, !noalias !52472, !noundef !75
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.hl, label %.sink.split.i.i.i.i.i

bb.hk:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.rg = sub nsw i64 %i.rb, %i.qn
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qp, i64 448
  invoke void @_RNvXsf_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore11add_permits(ptr noundef nonnull align 8 %i.rh, i64 noundef %i.rg)
          to label %.noexc21.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !52471

.noexc21.i.i.i.i.i:                               ; preds = %bb.hk
  store i8 0, ptr %i.g, align 1, !noalias !52470
  br label %.sink.split.i.i.i.i.i

bb.hl:                                            ; preds = %.loopexit.i.i.i.i.i.i.thread
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qp, i64 448
  %i.rj = invoke noundef zeroext i1 @_RNvXsf_NtNtNtCseXbohGRa9jr_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.ri)
          to label %.noexc22.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !52471

.noexc22.i.i.i.i.i:                               ; preds = %bb.hl
  br i1 %i.rj, label %bb.hm, label %.sink.split.i.i.i.i.i

bb.hm:                                            ; preds = %.noexc22.i.i.i.i.i
  store i8 0, ptr %i.g, align 1, !noalias !52470
  br label %.sink.split.i.i.i.i.i

bb.hn:                                            ; preds = %.noexc20.i.i.i.i.i
  %i.rk = icmp ult i64 %i.qz, 164703072086692426
  call void @llvm.assume(i1 %i.rk)
  %i.rl = sub nsw i64 %i.qz, %i.qn                ; 3 uses
  %.not9.i.i.i.i.i.i = icmp eq i64 %i.rl, 0
  br i1 %.not9.i.i.i.i.i.i, label %.noexc23.i.i.i.i.i, label %bb.hs

bb.ho:                                            ; preds = %.noexc20.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !52470
  %i.rm = add i64 %.sroa.033.2.i.i.i.i.i, -1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52473)
  %i.rn = load i64, ptr %i.at, align 8, !range !76, !alias.scope !52474, !noalias !52475, !noundef !75
  %i.ro = icmp eq i64 %i.qz, %i.rn
  br i1 %i.ro, label %bb.hp, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit.i.i.i.i.i.i

bb.hp:                                            ; preds = %bb.ho
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8grow_oneB1s_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE8push_mutB1l_.exit.i.i.i.i.i.i unwind label %bb.hq, !noalias !52476

bb.hq:                                            ; preds = %bb.hp
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderMessageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #67
          to label %.body.i.i.i.i.i136 unwind label %bb.hr, !noalias !52477

bb.hr:                                            ; preds = %bb.hq
  %i.rq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !52477
end_hunk_0
