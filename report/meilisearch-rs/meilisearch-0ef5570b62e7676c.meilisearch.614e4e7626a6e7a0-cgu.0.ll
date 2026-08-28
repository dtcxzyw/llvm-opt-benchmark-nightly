Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN141_$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$S$GT$$u20$as$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$GT$4call28_$u7b$$u7b$closure$u7d$$u7d$17hdc16abacf12a62aaE":bb.a
  store ptr %.sroa.392.0, ptr %.sroa.392.0..sroa_idx93, align 8
  %.sroa.495.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.495.0, ptr %.sroa.495.0..sroa_idx96, align 8
  %.sroa.598.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.598.0..sroa_idx99, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.598, i64 88, i1 false)
  br label %common.ret

bb.dh:                                            ; preds = %bb.g, %bb.dz, %bb.dg
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %bb.t, %bb.s
  %i.py = icmp eq i64 %.sroa.070.0.copyload, 0
  br i1 %i.py, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit42", label %bb.di

bb.di:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.672.0.copyload) ]
  call void @mi_free(ptr noundef nonnull %.sroa.672.0.copyload) #38, !noalias !11962
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit42"

bb.dj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit42", %bb.n
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit42" ], [ %i.ax, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.dg

.body:                                            ; preds = %bb.g, %bb.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.dg
  %.pn12.pn = phi { ptr, i32 } [ %.pn10, %bb.dg ], [ %i.ar, %bb.l ], [ %i.ak, %bb.g ], [ %i.ar, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 115
  %i.qa = load i8, ptr %i.pz, align 1, !range !188, !noundef !27
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.du, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit57"

bb.dk:                                            ; preds = %"_ZN4core3ptr226drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$GT$17hfc87e6a401cb0f43E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !11965)
  %.val.i43 = load i64, ptr %1, align 8, !alias.scope !11965
  %i.qc = icmp eq i64 %.val.i43, 0
  br i1 %i.qc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit45", label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i44 = load ptr, ptr %i.qd, align 8, !alias.scope !11965, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i44) #38, !noalias !11965
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit45"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit45": ; preds = %bb.dl, %bb.dk
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !11968)
  %.val.i49 = load i64, ptr %i.qe, align 8, !alias.scope !11968
  %i.qf = icmp eq i64 %.val.i49, 0
  br i1 %i.qf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit51", label %bb.dm

bb.dm:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit45"
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i50 = load ptr, ptr %i.qg, align 8, !alias.scope !11968, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i50) #38, !noalias !11968
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit51"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit51": ; preds = %bb.dm, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit45"
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.qi = load i32, ptr %i.qh, align 8, !range !6271, !alias.scope !11971, !noundef !27
  %i.qj = icmp eq i32 %i.qi, 1000000000
  br i1 %i.qj, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..HistogramTimer$GT$$GT$17hffa5b9bd31b55700E.exit", label %bb.dn

bb.dn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit51"
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @"_ZN79_$LT$prometheus..histogram..HistogramTimer$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9c6144f2ce4df8a2E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.qk)
          to label %bb.dq unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ql = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11974)
  call void @llvm.experimental.noalias.scope.decl(metadata !11977)
  call void @llvm.experimental.noalias.scope.decl(metadata !11980)
  %i.qn = load ptr, ptr %i.qm, align 8, !alias.scope !11983, !nonnull !27, !noundef !27
  %i.qo = atomicrmw sub ptr %i.qn, i64 1 release, align 8, !noalias !11986
  %i.qp = icmp eq i64 %i.qo, 1
  br i1 %i.qp, label %bb.dp, label %.body53

bb.dp:                                            ; preds = %bb.do
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h63390e65b165830cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qm)
          to label %.body53 unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dn
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11987)
  call void @llvm.experimental.noalias.scope.decl(metadata !11990)
  call void @llvm.experimental.noalias.scope.decl(metadata !11993)
  %i.qr = load ptr, ptr %i.qq, align 8, !alias.scope !11996, !nonnull !27, !noundef !27
  %i.qs = atomicrmw sub ptr %i.qr, i64 1 release, align 8, !noalias !11997
  %i.qt = icmp eq i64 %i.qs, 1
  br i1 %i.qt, label %bb.dr, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..HistogramTimer$GT$$GT$17hffa5b9bd31b55700E.exit"

bb.dr:                                            ; preds = %bb.dq
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h63390e65b165830cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qq)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..HistogramTimer$GT$$GT$17hffa5b9bd31b55700E.exit" unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dp
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

.body53:                                          ; preds = %bb.dt, %bb.dp, %bb.do, %bb.dz, %bb.dy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit60"
  %.pn18 = phi { ptr, i32 } [ %.pn12.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit60" ], [ %i.ql, %bb.do ], [ %.pn12.pn, %bb.dz ], [ %.pn12.pn, %bb.dy ], [ %i.qv, %bb.dt ], [ %i.ql, %bb.dp ]
  store i8 2, ptr %i.v, align 8
  resume { ptr, i32 } %.pn18

bb.dt:                                            ; preds = %bb.dr
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %.body53

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit57": ; preds = %bb.dv, %bb.du, %.body
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.qx = load i8, ptr %i.qw, align 2, !range !188, !noundef !27
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.dw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit60"

bb.du:                                            ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !11998)
  %.val.i55 = load i64, ptr %1, align 8, !alias.scope !11998
  %i.qz = icmp eq i64 %.val.i55, 0
  br i1 %i.qz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit57", label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i56 = load ptr, ptr %i.ra, align 8, !alias.scope !11998, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i56) #38, !noalias !11998
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit57"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit60": ; preds = %bb.dx, %bb.dw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit57"
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.rd = load i32, ptr %i.rc, align 8, !range !6271, !noundef !27
  %.not15 = icmp eq i32 %i.rd, 1000000000
  br i1 %.not15, label %.body53, label %bb.dy

bb.dw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit57"
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !12001)
  %.val.i58 = load i64, ptr %i.re, align 8, !alias.scope !12001
  %i.rf = icmp eq i64 %.val.i58, 0
  br i1 %i.rf, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit60", label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i59 = load ptr, ptr %i.rg, align 8, !alias.scope !12001, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i59) #38, !noalias !12001
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit60"

bb.dy:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit60"
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.ri = load i8, ptr %i.rh, align 1, !range !188, !noundef !27
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.dz, label %.body53

bb.dz:                                            ; preds = %bb.dy
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$prometheus..histogram..HistogramTimer$GT$17hb8e046ee8afcb8c3E"(ptr noalias noundef align 8 dereferenceable(32) %i.rb) #44
          to label %.body53 unwind label %bb.dh
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN163_$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$S$C$RootSpanType$GT$$u20$as$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$GT$4call17h449757f7bed14c0cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [128 x i8], align 8               ; 18 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 18 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 6 uses
  %i.t = alloca [80 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [112 x i8], align 8               ; 17 uses
  %.sroa.018.sroa.0.i.sroa.7.i.i.i.i.i.i.i.i.i = alloca [184 x i8], align 8 ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [112 x i8], align 8               ; 9 uses
  %i.z = alloca [272 x i8], align 8               ; 15 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [16 x i8], align 16              ; 4 uses
  %i.ag = alloca [120 x i8], align 8              ; 14 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 5 uses
  %i.al = alloca [344 x i8], align 8              ; 11 uses
  %i.am = alloca [24 x i8], align 8               ; 10 uses
  %i.an = alloca [16 x i8], align 1               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 12 uses
  %i.ap = alloca [32 x i8], align 8               ; 4 uses
  %i.aq = alloca [40 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 14 uses
  %i.at = alloca [192 x i8], align 8              ; 4 uses
  %i.au = alloca [40 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 8 uses
  %i.ax = alloca [104 x i8], align 8              ; 7 uses
  %i.ay = alloca [88 x i8], align 8               ; 9 uses
  %i.az = alloca [32 x i8], align 8               ; 13 uses
  %i.ba = alloca [20 x i8], align 1               ; 3 uses
  %i.bb = alloca [32 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 4 uses
  %i.bd = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.02.i.i.i.i = alloca [88 x i8], align 8   ; 4 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [104 x i8], align 8              ; 15 uses
  %i.bg = alloca [56 x i8], align 8               ; 7 uses
  %i.bh = alloca [72 x i8], align 8               ; 9 uses
  %i.bi = alloca [72 x i8], align 8               ; 6 uses
  %i.bj = alloca [72 x i8], align 8               ; 6 uses
  %i.bk = alloca [72 x i8], align 8               ; 6 uses
  %i.bl = alloca [72 x i8], align 8               ; 5 uses
  %i.bm = alloca [40 x i8], align 8               ; 5 uses
  %i.bn = alloca [96 x i8], align 8               ; 21 uses
  %i.bo = alloca [32 x i8], align 8               ; 4 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [32 x i8], align 8               ; 4 uses
  %i.br = alloca [8 x i8], align 8                ; 16 uses
  %i.bs = alloca [24 x i8], align 8               ; 7 uses
  %i.bt = alloca [32 x i8], align 8               ; 12 uses
  %i.bu = alloca [48 x i8], align 8               ; 9 uses
  %i.bv = alloca [32 x i8], align 8               ; 6 uses
  %i.bw = alloca [8 x i8], align 8                ; 6 uses
  %i.bx = alloca [112 x i8], align 8              ; 4 uses
  %i.by = alloca [120 x i8], align 8              ; 6 uses
  %i.bz = alloca [32 x i8], align 8               ; 4 uses
  %i.ca = alloca [112 x i8], align 8              ; 6 uses
  %i.cb = alloca [120 x i8], align 8              ; 6 uses
  %i.cc = alloca [32 x i8], align 8               ; 6 uses
  %i.cd = alloca [112 x i8], align 8              ; 9 uses
  %i.ce = alloca [32 x i8], align 8               ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
  %i.ch = alloca [48 x i8], align 8               ; 8 uses
  %i.ci = alloca [16 x i8], align 16              ; 4 uses
  %i.cj = alloca [16 x i8], align 16              ; 4 uses
  %i.ck = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.cl = alloca [40 x i8], align 8               ; 12 uses
  %i.cm = alloca [40 x i8], align 8               ; 5 uses
  %i.cn = alloca [40 x i8], align 8               ; 5 uses
  %i.co = alloca [40 x i8], align 8               ; 8 uses
  %i.cp = alloca [40 x i8], align 8               ; 19 uses
  %i.cq = alloca [16 x i8], align 1               ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !27, !noundef !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 168
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 6 uses
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !27
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.b, label %bb.c, !prof !222

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.cv, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  invoke void @_ZN17tracing_actix_web10request_id9RequestId8generate17h8bc58413edd86bcaE(ptr noalias noundef nonnull sret([16 x i8]) align 1 captures(address) dereferenceable(16) %i.cq)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @637) #43
          to label %bb.mn unwind label %bb.o

bb.d:                                             ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i, %bb.f, %bb.b
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.m, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.cz, %bb.d ], [ %i.dj, %bb.h ], [ %i.dr, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i" ], [ %i.dr, %bb.m ]
  %i.da = load i64, ptr %i.cv, align 8, !noundef !27
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cv, align 8
  br label %.thread

bb.e:                                             ; preds = %bb.b
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !12004
  %i.dc = call noundef ptr @mi_malloc_aligned(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !12004 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.f, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i, !prof !304

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 16) #43
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dc, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.cq, i64 16, i1 false), !noalias !12011
  %i.de = invoke fastcc { ptr, ptr } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5b36fb9e6d17d11cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noalias noundef align 8 captures(address) dereferenceable(16) @82, ptr noundef nonnull align 1 %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
          to label %.noexc13 unwind label %bb.d   ; 2 uses

.noexc13:                                         ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i
  %i.df = extractvalue { ptr, ptr } %i.de, 0      ; 6 uses
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %bb.p, label %bb.g

bb.g:                                             ; preds = %.noexc13
  %i.dg = extractvalue { ptr, ptr } %i.de, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12012)
  call void @llvm.experimental.noalias.scope.decl(metadata !12015)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !12018
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !27, !alias.scope !12021, !noalias !12022, !nonnull !27
  invoke void %i.di(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cj, ptr noundef nonnull align 1 %i.df)
          to label %"_ZN5alloc5boxed7convert69_$LT$impl$u20$alloc..boxed..Box$LT$dyn$u20$core..any..Any$C$A$GT$$GT$8downcast17h30d9b197f06eadaeE.exit.i.i" unwind label %bb.h, !noalias !12023

bb.h:                                             ; preds = %bb.g
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h83d3a8d9881c883aE"(ptr nonnull align 1 %i.df, ptr nonnull readonly align 8 dereferenceable(32) %i.dg) #44
          to label %.body unwind label %bb.i, !noalias !12022

bb.i:                                             ; preds = %bb.h
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !12023
  unreachable

"_ZN5alloc5boxed7convert69_$LT$impl$u20$alloc..boxed..Box$LT$dyn$u20$core..any..Any$C$A$GT$$GT$8downcast17h30d9b197f06eadaeE.exit.i.i": ; preds = %bb.g
  %i.dl = load i128, ptr %i.cj, align 16, !noalias !12018, !noundef !27
  %i.dm = icmp eq i128 %i.dl, -124721986742907757784090571811976276359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !12018
  br i1 %i.dm, label %_ZN10actix_http10extensions14downcast_owned17he19194cabab6d934E.exit.sink.split.i, label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc5boxed7convert69_$LT$impl$u20$alloc..boxed..Box$LT$dyn$u20$core..any..Any$C$A$GT$$GT$8downcast17h30d9b197f06eadaeE.exit.i.i"
  %i.dn = load ptr, ptr %i.dg, align 8, !invariant.load !27, !alias.scope !12012, !noalias !12024 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.dn(ptr noundef nonnull align 1 %i.df)
          to label %bb.l unwind label %bb.m, !noalias !12025

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !28, !invariant.load !27, !alias.scope !12012, !noalias !12024
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.p, label %_ZN10actix_http10extensions14downcast_owned17he19194cabab6d934E.exit.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !28, !invariant.load !27, !alias.scope !12012, !noalias !12024
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.m
  call void @mi_free(ptr noundef nonnull align 1 %i.df) #38, !noalias !12025
  br label %.body

_ZN10actix_http10extensions14downcast_owned17he19194cabab6d934E.exit.sink.split.i: ; preds = %"_ZN5alloc5boxed7convert69_$LT$impl$u20$alloc..boxed..Box$LT$dyn$u20$core..any..Any$C$A$GT$$GT$8downcast17h30d9b197f06eadaeE.exit.i.i", %bb.l
  call void @mi_free(ptr noundef nonnull align 1 %i.df) #38, !noalias !12025
  br label %bb.p

bb.n:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$tracing_actix_web..root_span..RootSpan$GT$17h67b2fff35d5d6c57E.exit"
  br i1 %.sroa.02.1, label %.thread, label %bb.mp

bb.o:                                             ; preds = %bb.p, %bb.c
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.p:                                             ; preds = %.noexc13, %bb.l, %_ZN10actix_http10extensions14downcast_owned17he19194cabab6d934E.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.dw = load i64, ptr %i.cv, align 8, !noundef !27
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
end_hunk_0
begin_hunk_1_@"_ZN163_$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$S$C$RootSpanType$GT$$u20$as$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$GT$4call17h449757f7bed14c0cE":bb.a

bb.id:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.val1.i5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.515.0..sroa_idx16.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !12633, !noalias !12556, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i.i.i.i.i.i) #38, !noalias !12634
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

bb.ie:                                            ; preds = %bb.hj, %bb.hi, %._crit_edge65.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.586.8.copyload88.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !12635 ; 2 uses
  %.sroa.9.8.copyload92.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aeh, align 8, !noalias !12635 ; 2 uses
  %.sroa.10.8.copyload96.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aei, align 8, !noalias !12635 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12556
  store i64 %.sroa.586.8.copyload88.i.i.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !12529
  %.sroa.4153.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.9.8.copyload92.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4153.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !12529
  %.sroa.5154.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.10.8.copyload96.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5154.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !12529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !12529
  %i.agh = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i, i64 304
  %.val49.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.agh, align 8, !alias.scope !12636, !noalias !12532, !nonnull !27, !noundef !27
  %i.agi = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i, i64 312
  %.val50.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agi, align 8, !alias.scope !12636, !noalias !12532, !noundef !27 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12637)
  call void @llvm.experimental.noalias.scope.decl(metadata !12640)
  %i.agj = shl i64 %.val50.i.i.i.i.i.i.i.i.i.i, 3 ; 5 uses
  %i.agk = icmp ugt i64 %.val50.i.i.i.i.i.i.i.i.i.i, 2305843009213693951
  %i.agl = icmp ugt i64 %i.agj, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.agk, %i.agl
  %i.agm = inttoptr i64 %.sroa.9.8.copyload92.i.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ig, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i60.i.i.i.i.i.i.i.i.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i60.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ie
  %i.agn = icmp eq i64 %i.agj, 0
  br i1 %i.agn, label %bb.ih, label %bb.if

bb.if:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i60.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !12643
  %i.ago = call noundef ptr @mi_malloc_aligned(i64 noundef %i.agj, i64 noundef range(i64 1, 9) 8) #38, !noalias !12643 ; 2 uses
  %i.agp = icmp eq ptr %i.ago, null
  br i1 %i.agp, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.sroa.4.0.ph.i.i.i62.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.if ], [ 0, %bb.ie ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i62.i.i.i.i.i.i.i.i.i.i, i64 %i.agj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2142) #43
          to label %.noexc63.i.i.i.i.i.i.i.i.i.i unwind label %bb.it, !noalias !12532

.noexc63.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ig
  unreachable

bb.ih:                                            ; preds = %bb.if, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i60.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i61.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i60.i.i.i.i.i.i.i.i.i.i ], [ %i.ago, %bb.if ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i60.i.i.i.i.i.i.i.i.i.i ], [ %.val50.i.i.i.i.i.i.i.i.i.i, %bb.if ] ; 2 uses
  %i.agq = icmp samesign ule i64 %.val50.i.i.i.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.agq)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i61.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 8 %.val49.i.i.i.i.i.i.i.i.i.i, i64 %i.agj, i1 false), !noalias !12649
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.w, align 8, !alias.scope !12650, !noalias !12651
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.10.0.i.i.i61.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !12650, !noalias !12651
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.val50.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !12650, !noalias !12651
  invoke void @_ZN10prometheus9histogram24check_and_adjust_buckets17h02c6f1f088505c76E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.ii unwind label %bb.it, !noalias !12532

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12529
  %i.agr = load i64, ptr %i.x, align 8, !range !223, !noalias !12529, !noundef !27
  %i.ags = trunc nuw i64 %i.agr to i1
  %i.agt = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.0172.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agt, align 8, !noalias !12529 ; 4 uses
  %.sroa.4173.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4173.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4173.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !12529 ; 4 uses
  %.sroa.5174.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.5174.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5174.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !12529 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12529
  br i1 %i.ags, label %bb.ij, label %bb.in

bb.ij:                                            ; preds = %bb.ii
  %i.agu = ptrtoint ptr %.sroa.4173.0.copyload.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12652)
  %i.agv = icmp eq i64 %.sroa.10.8.copyload96.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.agv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ij, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agx, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.ij ] ; 2 uses
  %i.agw = getelementptr inbounds nuw [48 x i8], ptr %i.agm, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.agx = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12655)
  call void @llvm.experimental.noalias.scope.decl(metadata !12658)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agw, align 8, !alias.scope !12661, !noalias !12662
  %i.agy = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.agy, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ik

bb.ik:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.agz, align 8, !alias.scope !12661, !noalias !12662, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #38, !noalias !12665
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ik, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agw, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !12666)
  %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aha, align 8, !alias.scope !12669, !noalias !12662
  %i.ahb = icmp eq i64 %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahb, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.il

bb.il:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agw, i64 32
  %.val1.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahc, align 8, !alias.scope !12669, !noalias !12662, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #38, !noalias !12670
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.il, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ahd = icmp eq i64 %i.agx, %.sroa.10.8.copyload96.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ahd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h3b4ecd3de80ffbedE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ij
  %i.ahe = icmp eq i64 %.sroa.586.8.copyload88.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahe, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.im

bb.im:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @mi_free(ptr noundef nonnull %i.agm) #38, !noalias !12662
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit.i.i.i.i.i.i.i.i.i.i"

bb.in:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12529
  %i.ahf = icmp ult i64 %.sroa.5174.0.copyload.i.i.i.i.i.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ahf)
  invoke void @_ZN10prometheus9histogram5Shard3new17he8ee867337382109E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.s, i64 noundef %.sroa.5174.0.copyload.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ip unwind label %bb.io, !noalias !12532

"_ZN4core3ptr49drop_in_place$LT$prometheus..histogram..Shard$GT$17h97a456e418add97fE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ir, %bb.iq, %bb.io
  %.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ahh, %bb.io ], [ %i.ahi, %bb.iq ], [ %i.ahi, %bb.ir ] ; 2 uses
  call fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E"(ptr noalias noundef align 8 dereferenceable(24) %i.u) #44, !noalias !12532
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17h00fe6d3a76a52d34E"(ptr noalias noundef align 8 dereferenceable(112) %i.v) #44, !noalias !12532
  %i.ahg = icmp eq i64 %.sroa.0172.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahg, label %.body.i.i.i.i.i.i.i, label %bb.is

bb.io:                                            ; preds = %bb.in
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..histogram..Shard$GT$17h97a456e418add97fE.exit.i.i.i.i.i.i.i.i.i.i"

bb.ip:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12529
  invoke void @_ZN10prometheus9histogram5Shard3new17he8ee867337382109E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.r, i64 noundef %.sroa.5174.0.copyload.i.i.i.i.i.i.i.i.i.i)
          to label %_ZN10prometheus9histogram13HistogramCore3new17hba1c07fd92f5901dE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.iq, !noalias !12532

bb.iq:                                            ; preds = %bb.ip
  %i.ahi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val51.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !12529
  %i.ahj = icmp eq i64 %.val51.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahj, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..histogram..Shard$GT$17h97a456e418add97fE.exit.i.i.i.i.i.i.i.i.i.i", label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val52.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahk, align 8, !noalias !12529, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val52.i.i.i.i.i.i.i.i.i.i) #38, !noalias !12532
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..histogram..Shard$GT$17h97a456e418add97fE.exit.i.i.i.i.i.i.i.i.i.i"

bb.is:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..histogram..Shard$GT$17h97a456e418add97fE.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4173.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @mi_free(ptr noundef nonnull %.sroa.4173.0.copyload.i.i.i.i.i.i.i.i.i.i) #38, !noalias !12532
  br label %.body.i.i.i.i.i.i.i

bb.it:                                            ; preds = %bb.ih, %bb.ig
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E"(ptr noalias noundef align 8 dereferenceable(24) %i.u) #44, !noalias !12532
  br label %bb.iw

bb.iu:                                            ; preds = %bb.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.adq, ptr noundef nonnull align 1 dereferenceable(47) @174, i64 47, i1 false), !noalias !12671
  %i.ahm = ptrtoint ptr %i.adq to i64
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit.i.i.i.i.i.i.i.i.i.i"

bb.iv:                                            ; preds = %bb.gy, %.lr.ph229.i.i.i.i.i.i.i.i.i.i
  %i.ahn = icmp eq ptr %.sroa.039.1227.i.i.i.i.i.i.i.i.i.i, %i.adb ; 2 uses
  %.sroa.039.1.idx.i.i.i.i.i.i.i.i.i.i = select i1 %i.ahn, i64 0, i64 48
  %.sroa.039.1.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.039.1227.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.039.1.idx.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ahn, label %._crit_edge230.i.i.i.i.i.i.i.i.i.i, label %.lr.ph229.i.i.i.i.i.i.i.i.i.i

bb.iw:                                            ; preds = %bb.it, %bb.hd, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i77.i.i.i.i.i.i.i.i.i.i", %bb.gv
  %.pn44.ph.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ahl, %bb.it ], [ %i.ade, %bb.gv ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd4084279672a1cfE.exit.i77.i.i.i.i.i.i.i.i.i.i" ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i, %bb.hd ]
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17h00fe6d3a76a52d34E"(ptr noalias noundef align 8 dereferenceable(112) %i.v) #44, !noalias !12532
  br label %.body.i.i.i.i.i.i.i

_ZN10prometheus9histogram13HistogramCore3new17hba1c07fd92f5901dE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false), !noalias !12529
  %i.aho = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aho, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !12529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.018.sroa.0.i.sroa.7.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 80, i1 false), !noalias !12524
  %.sroa.018.sroa.0.i.sroa.7.112..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.sroa.0.i.sroa.7.i.i.i.i.i.i.i.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.sroa.0.i.sroa.7.112..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !12524
  %.sroa.018.sroa.0.i.sroa.7.136..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.sroa.0.i.sroa.7.i.i.i.i.i.i.i.i.i, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.018.sroa.0.i.sroa.7.136..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.t, i64 80, i1 false), !noalias !12524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12524
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !12524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12524
  store i64 1, ptr %i.z, align 8, !noalias !12524
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 1, ptr %i.ahp, align 8, !noalias !12524
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.abu, ptr %i.ahq, align 8, !noalias !12524
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %.sroa.6.i.sroa.0.0.copyload33.i.i.i.i.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !12524
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %.sroa.6.i.sroa.7.0.copyload36.i.i.i.i.i.i.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !12524
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %.sroa.6.i.sroa.8.0.copyload39.i.i.i.i.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !12524
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.018.sroa.0.i.sroa.7.i.i.i.i.i.i.i.i.i, i64 184, i1 false), !noalias !12524
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  store i64 %.sroa.0172.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !12524
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  store ptr %.sroa.4173.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !12524
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  store i64 %.sroa.5174.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !12524
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !12672
  %i.ahr = call noundef ptr @mi_malloc_aligned(i64 noundef 272, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !12672 ; 3 uses
  %i.ahs = icmp eq ptr %i.ahr, null
  br i1 %i.ahs, label %bb.ix, label %.thread.i.i.i.i.i.i.i, !prof !304

bb.ix:                                            ; preds = %_ZN10prometheus9histogram13HistogramCore3new17hba1c07fd92f5901dE.exit.i.i.i.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 272) #43
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.iy, !noalias !12675

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ix
  unreachable

bb.iy:                                            ; preds = %bb.ix
  %i.aht = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..sync..ArcInner$LT$prometheus..histogram..HistogramCore$GT$$GT$17hb0f8aa2d2beee4ccE"(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.z) #44, !noalias !12675
  br label %.body.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN10prometheus9histogram13HistogramCore3new17hba1c07fd92f5901dE.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ahr, ptr noundef nonnull align 8 dereferenceable(272) %i.z, i64 272, i1 false), !noalias !12675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12524
  %i.ahu = ptrtoint ptr %i.ahr to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018.sroa.0.i.sroa.7.i.i.i.i.i.i.i.i.i)
  br label %bb.jb

bb.iz:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit.i.i.i.i.i.i.i.i.i.i", %bb.gr
  %.sroa.21.1.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.21.0.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.i.sroa.8.0.copyload39.i.i.i.i.i.i.i.i.i, %bb.gr ]
  %.sroa.17.1.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.17.0.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.i.sroa.7.0.copyload36.i.i.i.i.i.i.i.i.i, %bb.gr ] ; 2 uses
  %.sroa.10.1.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17he96d490a4ec23f64E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.i.sroa.0.0.copyload33.i.i.i.i.i.i.i.i.i, %bb.gr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12524
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018.sroa.0.i.sroa.7.i.i.i.i.i.i.i.i.i)
  %.not21.i.i.i.i.i.i.i = icmp eq i64 %.sroa.10.1.ph.i.i.i.i.i.i.i.i.i, -9223372036854775804
  br i1 %.not21.i.i.i.i.i.i.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12514
  br label %bb.js

bb.jb:                                            ; preds = %bb.iz, %.thread.i.i.i.i.i.i.i
  %.sroa.6.055.i.i.i.i.i.i.i = phi i64 [ %i.ahu, %.thread.i.i.i.i.i.i.i ], [ %.sroa.17.1.ph.i.i.i.i.i.i.i.i.i, %bb.iz ]
  %i.ahv = inttoptr i64 %.sroa.6.055.i.i.i.i.i.i.i to ptr ; 7 uses
  store ptr %i.ahv, ptr %i.ab, align 8, !noalias !12514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !12514
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahv) ]
  %i.ahw = atomicrmw add ptr %i.ahv, i64 1 monotonic, align 8, !noalias !12491
  %i.ahx = icmp slt i64 %i.ahw, 0
  br i1 %i.ahx, label %bb.jc, label %"_ZN71_$LT$prometheus..histogram..Histogram$u20$as$u20$core..clone..Clone$GT$5clone17hbee10940e112a093E.exit30.i.i.i.i.i.i.i"

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.trap()
  unreachable

bb.jd:                                            ; preds = %bb.jq
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i.i.i.i.i.i.i

.body39.i.i.i.i.i.i.i:                            ; preds = %bb.jn, %bb.jm, %bb.jd
  %eh.lpad-body40.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ahy, %bb.jd ], [ %i.akg, %bb.jn ], [ %i.akg, %bb.jm ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12676)
  call void @llvm.experimental.noalias.scope.decl(metadata !12679)
  call void @llvm.experimental.noalias.scope.decl(metadata !12682)
  %i.ahz = load ptr, ptr %i.ab, align 8, !alias.scope !12685, !noalias !12514, !nonnull !27, !noundef !27
  %i.aia = atomicrmw sub ptr %i.ahz, i64 1 release, align 8, !noalias !12686
  %i.aib = icmp eq i64 %i.aia, 1
  br i1 %i.aib, label %bb.je, label %.body.i.i.i.i.i.i.i

bb.je:                                            ; preds = %.body39.i.i.i.i.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h63390e65b165830cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.jr, !noalias !12491

"_ZN71_$LT$prometheus..histogram..Histogram$u20$as$u20$core..clone..Clone$GT$5clone17hbee10940e112a093E.exit30.i.i.i.i.i.i.i": ; preds = %bb.jb
  call void @llvm.experimental.noalias.scope.decl(metadata !12687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12514
  store ptr %i.ahv, ptr %i.i, align 8, !noalias !12690
  %i.aic = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i, i64 344 ; 3 uses
  %i.aid = load i64, ptr %i.aic, align 8, !alias.scope !12691, !noalias !12696, !noundef !27
  %i.aie = icmp eq i64 %i.aid, 0
  br i1 %i.aie, label %bb.jf, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h714d2c1b781f1daeE.exit.i.i.i.i.i.i.i.i.i", !prof !29

bb.jf:                                            ; preds = %"_ZN71_$LT$prometheus..histogram..Histogram$u20$as$u20$core..clone..Clone$GT$5clone17hbee10940e112a093E.exit30.i.i.i.i.i.i.i"
  %i.aif = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i, i64 360
  %i.aig = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h902bcf3934c7ae7dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.zf, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aif, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h714d2c1b781f1daeE.exit.i.i.i.i.i.i.i.i.i" unwind label %bb.jm, !noalias !12491 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h714d2c1b781f1daeE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.jf, %"_ZN71_$LT$prometheus..histogram..Histogram$u20$as$u20$core..clone..Clone$GT$5clone17hbee10940e112a093E.exit30.i.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zf, align 8, !alias.scope !12700, !noalias !12701, !nonnull !27, !noundef !27 ; 8 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i, i64 336
  %.val7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aih, align 8, !alias.scope !12700, !noalias !12701, !noundef !27 ; 4 uses
  %i.aii = lshr i64 %.sroa.6.0.ph.i.i.i.i.i.i, 57
  %i.aij = trunc nuw nsw i64 %i.aii to i8         ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.aij, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jj, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h714d2c1b781f1daeE.exit.i.i.i.i.i.i.i.i.i"
  %.pn.i.i.i32.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.ph.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h714d2c1b781f1daeE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.aji, %bb.jj ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h714d2c1b781f1daeE.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i.i.i.i.i.i, %bb.jj ]
  %.sroa.01.0.i.i.i33.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h714d2c1b781f1daeE.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i.i.i.i.i.i, %bb.jj ]
  %i.aik = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h714d2c1b781f1daeE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.ajh, %bb.jj ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i32.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ail, align 1, !noalias !12702 ; 3 uses
  %i.aim = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i.i.i.i.i.i
  %i.ain = bitcast <16 x i1> %i.aim to i16        ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ain, 0
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i36.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i

.lr.ph.i.i.i34.i.i.i.i.i.i.i:                     ; preds = %bb.jg, %bb.jh
  %.sroa.05.026.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aix, %bb.jh ], [ %i.ain, %bb.jg ] ; 3 uses
  %i.aio = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aip = zext nneg i16 %i.aio to i64
  %i.aiq = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i, %i.aip
  %i.air = and i64 %i.aiq, %.val7.i.i.i.i.i.i.i.i.i
  %i.ais = sub nsw i64 0, %i.air
  %i.ait = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.ais ; 2 uses
  %i.aiu = getelementptr inbounds i8, ptr %i.ait, i64 -16
  %.val3.i.i.i35.i.i.i.i.i.i.i = load i64, ptr %i.aiu, align 8, !noalias !12705, !noundef !27
  %i.aiv = icmp eq i64 %.sroa.6.0.ph.i.i.i.i.i.i, %.val3.i.i.i35.i.i.i.i.i.i.i
  br i1 %i.aiv, label %bb.jp, label %bb.jh, !prof !222

._crit_edge.i.i.i36.i.i.i.i.i.i.i:                ; preds = %bb.jh, %bb.jg
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i33.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i37.i.i.i.i.i.i.i, label %bb.ji, !prof !29

bb.jh:                                            ; preds = %.lr.ph.i.i.i34.i.i.i.i.i.i.i
  %i.aiw = add i16 %.sroa.05.026.i.i.i.i.i.i.i.i.i.i, -1
  %i.aix = and i16 %i.aiw, %.sroa.05.026.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i45.i.i.i = icmp eq i16 %i.aix, 0
  br i1 %.not.i.i.i.i.i.i.i45.i.i.i, label %._crit_edge.i.i.i36.i.i.i.i.i.i.i, label %.lr.ph.i.i.i34.i.i.i.i.i.i.i

bb.ji:                                            ; preds = %._crit_edge.i.i.i36.i.i.i.i.i.i.i
  %i.aiy = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.aiz = bitcast <16 x i1> %i.aiy to i16        ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aiz, 0 ; 2 uses
  %i.aja = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aiz, i1 true)
  %i.ajb = zext nneg i16 %i.aja to i64
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %i.ajb
  %i.ajc = add i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  %i.ajd = and i64 %i.ajc, %.val7.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i.i.i.i.i.i, label %bb.jj, label %.thread.i.i.i37.i.i.i.i.i.i.i

.thread.i.i.i37.i.i.i.i.i.i.i:                    ; preds = %bb.ji, %._crit_edge.i.i.i36.i.i.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ajd, %bb.ji ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i36.i.i.i.i.i.i.i ] ; 3 uses
  %i.aje = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ajf = bitcast <16 x i1> %i.aje to i16
  %i.ajg = icmp eq i16 %i.ajf, 0
  br i1 %i.ajg, label %bb.jj, label %bb.jk, !prof !29

bb.jj:                                            ; preds = %.thread.i.i.i37.i.i.i.i.i.i.i, %bb.ji
  %.sroa.01.122.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i37.i.i.i.i.i.i.i ], [ 0, %bb.ji ]
  %.sroa.6.120.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i37.i.i.i.i.i.i.i ], [ undef, %bb.ji ]
  %i.ajh = add i64 %i.aik, 16                     ; 2 uses
  %i.aji = add i64 %i.ajh, %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  br label %bb.jg

bb.jk:                                            ; preds = %.thread.i.i.i37.i.i.i.i.i.i.i
  %i.ajj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.121.i.i.i.i.i.i.i.i.i.i
  %i.ajk = load i8, ptr %i.ajj, align 1, !noalias !12708, !noundef !27 ; 2 uses
  %i.ajl = icmp sgt i8 %i.ajk, -1
  br i1 %i.ajl, label %bb.jl, label %.thread56.i.i.i.i.i.i.i, !prof !29

bb.jl:                                            ; preds = %bb.jk
  %.val62.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i, align 16, !noalias !12708
  %i.ajm = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ajn = bitcast <16 x i1> %i.ajm to i16        ; 2 uses
  %i.ajo = icmp ne i16 %i.ajn, 0
  call void @llvm.assume(i1 %i.ajo)
  %i.ajp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ajn, i1 true)
  %i.ajq = zext nneg i16 %i.ajp to i64            ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.ajq
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 1, !noalias !12709
  br label %.thread56.i.i.i.i.i.i.i

.thread56.i.i.i.i.i.i.i:                          ; preds = %bb.jl, %bb.jk
  %i.ajr = phi i8 [ %.pre.i.i.i.i.i.i.i.i, %bb.jl ], [ %i.ajk, %bb.jk ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ajq, %bb.jl ], [ %.sroa.6.121.i.i.i.i.i.i.i.i.i.i, %bb.jk ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12712)
  %i.ajs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i
  %i.ajt = and i8 %i.ajr, 1
  %i.aju = zext nneg i8 %i.ajt to i64
  %i.ajv = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i, -16
  %i.ajw = and i64 %i.ajv, %.val7.i.i.i.i.i.i.i.i.i
  store i8 %i.aij, ptr %i.ajs, align 1, !noalias !12709
  %i.ajx = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.ajw
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 16
  store i8 %i.aij, ptr %i.ajy, align 1, !noalias !12709
  %i.ajz = load <2 x i64>, ptr %i.aic, align 8, !alias.scope !12713, !noalias !12491
  %i.aka = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aju, i64 0
  %i.akb = sub <2 x i64> %i.ajz, %i.aka
  store <2 x i64> %i.akb, ptr %i.aic, align 8, !alias.scope !12713, !noalias !12491
  %i.akc = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i
  %i.akd = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.akc ; 2 uses
  %i.ake = getelementptr inbounds i8, ptr %i.akd, i64 -16
  store i64 %.sroa.6.0.ph.i.i.i.i.i.i, ptr %i.ake, align 8, !noalias !12709
  %i.akf = getelementptr inbounds i8, ptr %i.akd, i64 -8
  store ptr %i.ahv, ptr %i.akf, align 8, !noalias !12709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12514
end_hunk_1
begin_hunk_2_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h6b17b2dbb7a285edE":bb.a
bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !41352, !noundef !27
  %i.bw = add i64 %i.bg, 4
  store i64 %i.bw, ptr %i.ba, align 8, !alias.scope !41353, !noalias !41341
  %.not.i.2 = icmp eq i8 %i.bv, 108
  br i1 %.not.i.2, label %bb.ag, label %bb.k, !prof !2519

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !41354
  store i64 5, ptr %i.ao, align 8, !noalias !41354
  %i.bx = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h8e341903ea1848b1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ao), !noalias !41355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !41354
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !41354
  store i64 9, ptr %i.an, align 8, !noalias !41354
  %i.by = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h8e341903ea1848b1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.an), !noalias !41355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !41354
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hbd05fa0a7ee03f96E.exit"
  %i.bz = add i64 %i.bg, 1                        ; 4 uses
  store i64 %i.bz, ptr %i.ba, align 8, !alias.scope !41356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41359)
  %umax.i73 = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 %i.bc) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41365)
  %exitcond.not.i75.not = icmp ult i64 %i.bz, %i.bc
  br i1 %exitcond.not.i75.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78"

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !41368, !noundef !27
  %i.cc = add i64 %i.bg, 2                        ; 3 uses
  store i64 %i.cc, ptr %i.ba, align 8, !alias.scope !41372, !noalias !41373
  %.not.i76 = icmp eq i8 %i.cb, 114
  br i1 %.not.i76, label %bb.n, label %bb.r, !prof !2519

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41376)
  %exitcond.not.i75.1 = icmp eq i64 %i.cc, %umax.i73
  br i1 %exitcond.not.i75.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !41378, !noundef !27
  %i.cf = add i64 %i.bg, 3                        ; 3 uses
  store i64 %i.cf, ptr %i.ba, align 8, !alias.scope !41379, !noalias !41373
  %.not.i76.1 = icmp eq i8 %i.ce, 117
  br i1 %.not.i76.1, label %bb.p, label %bb.r, !prof !2519

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41382)
  %exitcond.not.i75.2 = icmp eq i64 %i.cf, %umax.i73
  br i1 %exitcond.not.i75.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !41384, !noundef !27
  %i.ci = add i64 %i.bg, 4
  store i64 %i.ci, ptr %i.ba, align 8, !alias.scope !41385, !noalias !41373
  %.not.i76.2 = icmp eq i8 %i.ch, 101
  br i1 %.not.i76.2, label %bb.ak, label %bb.r, !prof !2519

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !41386
  store i64 5, ptr %i.am, align 8, !noalias !41386
  %i.cj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h8e341903ea1848b1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.am), !noalias !41387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !41386
  br label %bb.aj

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !41386
  store i64 9, ptr %i.al, align 8, !noalias !41386
  %i.ck = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h8e341903ea1848b1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al), !noalias !41387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !41386
  br label %bb.aj

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hbd05fa0a7ee03f96E.exit"
  %i.cl = add i64 %i.bg, 1                        ; 4 uses
  store i64 %i.cl, ptr %i.ba, align 8, !alias.scope !41388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41391)
  %umax.i81 = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.bc) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41397)
  %exitcond.not.i83.not = icmp ult i64 %i.cl, %i.bc
  br i1 %exitcond.not.i83.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86"

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !41400, !noundef !27
  %i.co = add i64 %i.bg, 2                        ; 3 uses
  store i64 %i.co, ptr %i.ba, align 8, !alias.scope !41404, !noalias !41405
  %.not.i84 = icmp eq i8 %i.cn, 97
  br i1 %.not.i84, label %bb.u, label %bb.aa, !prof !2519

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41408)
  %exitcond.not.i83.1 = icmp eq i64 %i.co, %umax.i81
  br i1 %exitcond.not.i83.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !41410, !noundef !27
  %i.cr = add i64 %i.bg, 3                        ; 3 uses
  store i64 %i.cr, ptr %i.ba, align 8, !alias.scope !41411, !noalias !41405
  %.not.i84.1 = icmp eq i8 %i.cq, 108
  br i1 %.not.i84.1, label %bb.w, label %bb.aa, !prof !2519

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41414)
  %exitcond.not.i83.2 = icmp eq i64 %i.cr, %umax.i81
  br i1 %exitcond.not.i83.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !41416, !noundef !27
  %i.cu = add i64 %i.bg, 4                        ; 3 uses
  store i64 %i.cu, ptr %i.ba, align 8, !alias.scope !41417, !noalias !41405
  %.not.i84.2 = icmp eq i8 %i.ct, 115
  br i1 %.not.i84.2, label %bb.y, label %bb.aa, !prof !2519

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41420)
  %exitcond.not.i83.3 = icmp eq i64 %i.cu, %umax.i81
  br i1 %exitcond.not.i83.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !41422, !noundef !27
  %i.cx = add i64 %i.bg, 5
  store i64 %i.cx, ptr %i.ba, align 8, !alias.scope !41423, !noalias !41405
  %.not.i84.3 = icmp eq i8 %i.cw, 101
  br i1 %.not.i84.3, label %bb.am, label %bb.aa, !prof !2519

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !41424
  store i64 5, ptr %i.ak, align 8, !noalias !41424
  %i.cy = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h8e341903ea1848b1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak), !noalias !41425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !41424
  br label %bb.al

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !41424
  store i64 9, ptr %i.aj, align 8, !noalias !41424
  %i.cz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h8e341903ea1848b1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj), !noalias !41425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !41424
  br label %bb.al

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hbd05fa0a7ee03f96E.exit"
  %i.da = add i64 %i.bg, 1
  store i64 %i.da, ptr %i.ba, align 8, !alias.scope !41426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h8b84a0acf5a939faE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ay, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext false)
  %i.db = load i64, ptr %i.ay, align 8, !range !2702, !noundef !27 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  br i1 %i.dc, label %bb.an, label %bb.ao

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hbd05fa0a7ee03f96E.exit"
  %i.de = add i64 %i.bg, 1
  store i64 %i.de, ptr %i.ba, align 8, !alias.scope !41429
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.df, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.dg = load i64, ptr %i.aw, align 8, !range !210, !noundef !27 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dj = load ptr, ptr %i.di, align 8            ; 4 uses
  br i1 %i.dh, label %bb.at, label %bb.au

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hbd05fa0a7ee03f96E.exit"
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 8, !range !188, !noundef !27
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.bf, label %bb.be

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hbd05fa0a7ee03f96E.exit"
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 8, !range !188, !noundef !27
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.cw, label %bb.cv

bb.af:                                            ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"
  %.sroa.0.1.i.ph = phi ptr [ %i.bx, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i" ], [ %i.by, %bb.k ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dq, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.j
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.36.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.fh, %.loopexit439, %bb.ai, %bb.fp, %bb.bd, %bb.bc, %bb.as, %bb.am, %bb.ak, %bb.ag
  ret void

bb.ai:                                            ; preds = %bb.fk, %bb.eu, %bb.cc, %bb.at, %bb.an, %bb.al, %bb.aj, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78"
  %.sroa.0.1.i77.ph = phi ptr [ %i.cj, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78" ], [ %i.ck, %bb.r ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i77.ph, ptr %i.dr, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.ai

bb.ak:                                            ; preds = %bb.q
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.36.0..sroa_idx679 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.36.0..sroa_idx679, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ah

bb.al:                                            ; preds = %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86"
  %.sroa.0.1.i85.ph = phi ptr [ %i.cy, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86" ], [ %i.cz, %bb.aa ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i85.ph, ptr %i.ds, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.36.0..sroa_idx681.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.36.0..sroa_idx681.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %i.dt = load ptr, ptr %i.dd, align 8, !nonnull !27, !align !148, !noundef !27
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dt, ptr %i.du, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.ai

bb.ao:                                            ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.dd, align 8 ; 3 uses
  switch i64 %i.db, label %default.unreachable1006 [
    i64 0, label %bb.ap
    i64 1, label %bb.as
    i64 2, label %bb.ar
  ]

default.unreachable1006:                          ; preds = %bb.fl, %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.dv = bitcast i64 %.sroa.2.0.copyload to double
  %i.dw = tail call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp ueq double %i.dw, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !41432
  br i1 %i.dx, label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 -9223372036854775808, ptr %i.ai, align 8, !noalias !41432
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ai), !noalias !41438
  br label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i"

"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i": ; preds = %bb.aq, %bb.ap
  %.sroa.07.013.i.i = phi i64 [ 2, %bb.aq ], [ 3, %bb.ap ]
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775806, %bb.aq ], [ -9223372036854775808, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !41432
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %.lobit.i.i.i = lshr i64 %.sroa.2.0.copyload, 63
  br label %bb.as

bb.as:                                            ; preds = %bb.ao, %bb.ar, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i"
  %.sink = phi i64 [ -9223372036854775806, %bb.ar ], [ %.sroa.0.0.i.i, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i" ], [ -9223372036854775806, %bb.ao ]
  %.lobit.i.i.i.sink = phi i64 [ %.lobit.i.i.i, %bb.ar ], [ %.sroa.07.013.i.i, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h5ea71d253797ac99E.exit.i" ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  store i64 %.sink, ptr %0, align 8
  %.sroa.36.0..sroa_idx683.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i.sink, ptr %.sroa.36.0..sroa_idx683.a, align 8
  %.sroa.50.0..sroa_idx701 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2.0.copyload, ptr %.sroa.50.0..sroa_idx701, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ah

bb.at:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dj, ptr %i.dy, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ai

bb.au:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 13 uses
  %i.dz = trunc nuw i64 %i.dg to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dj) ]
  %i.ea = icmp slt i64 %.sroa.4.0.copyload, 0     ; 2 uses
  br i1 %i.dz, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  br i1 %i.ea, label %bb.ax, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.av
  %i.eb = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.eb, label %bb.bd, label %bb.aw

bb.aw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !41442
  %i.ec = call noundef ptr @mi_malloc_aligned(i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, 9) 1) #38, !noalias !41442 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ax, label %bb.bd

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.aw ], [ 0, %bb.av ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2142) #43, !noalias !41453
  unreachable

bb.ay:                                            ; preds = %bb.au
  br i1 %i.ea, label %bb.ba, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.ee = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.ee, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !41454
  %i.ef = call noundef ptr @mi_malloc_aligned(i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, 9) 1) #38, !noalias !41454 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.az ], [ 0, %bb.ay ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2142) #43, !noalias !41468
  unreachable

bb.bb:                                            ; preds = %bb.fi, %bb.cu
  %.sroa.36.sroa.34.sroa.0.0.in.in = phi i64 [ %i.oo, %bb.fi ], [ %.sroa.36.sroa.34.sroa.0.2.in.in, %bb.cu ]
  %i.eh = inttoptr i64 %.sroa.36.sroa.34.sroa.0.0.in.in to ptr
  %i.ei = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h18445bd9092dc776E(ptr noalias noundef nonnull align 8 %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %i.ej, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.fh

bb.bc:                                            ; preds = %bb.az, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ef, %bb.az ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.dj, i64 %.sroa.4.0.copyload, i1 false), !noalias !41469
  %i.ek = ptrtoint ptr %.sroa.10.0.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.36.0..sroa_idx685 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.36.0..sroa_idx685, align 8
  %.sroa.50.0..sroa_idx703 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ek, ptr %.sroa.50.0..sroa_idx703, align 8
  %.sroa.54.0..sroa_idx721 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload, ptr %.sroa.54.0..sroa_idx721, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ah

bb.bd:                                            ; preds = %bb.aw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ec, %bb.aw ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.dj, i64 %.sroa.4.0.copyload, i1 false), !noalias !41470
  %i.el = ptrtoint ptr %.sroa.10.0.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.36.0..sroa_idx687.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.36.0..sroa_idx687.a, align 8
  %.sroa.50.0..sroa_idx705 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.el, ptr %.sroa.50.0..sroa_idx705, align 8
  %.sroa.54.0..sroa_idx723 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload, ptr %.sroa.54.0..sroa_idx723, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %bb.ah

bb.be:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !noundef !27
  %i.eo = add i8 %i.en, -1                        ; 2 uses
  store i8 %i.eo, ptr %i.em, align 1
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.cc, label %bb.bf, !prof !29

bb.bf:                                            ; preds = %bb.be, %bb.ad
  %i.eq = add i64 %i.bg, 1                        ; 3 uses
  store i64 %i.eq, ptr %i.ba, align 8, !alias.scope !41471
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !41474
  store i64 0, ptr %i.ah, align 8, !noalias !41474
  %i.er = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.er, align 8, !noalias !41474
  %i.es = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 4 uses
  store i64 0, ptr %i.es, align 8, !noalias !41474
end_hunk_2
