Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.152?download=true
inline.NumInlined: 432
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtB5_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueEB9_:bb.a
  %.sroa.030.i.i.i = alloca [72 x i8], align 16   ; 7 uses
  %i.m = alloca [96 x i8], align 16               ; 4 uses
  %i.n = alloca [96 x i8], align 16               ; 8 uses
  %i.o = alloca [96 x i8], align 16               ; 4 uses
  %i.p = alloca [96 x i8], align 16               ; 8 uses
  %i.q = alloca [56 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 19 uses
  %i.s = alloca [24 x i8], align 8                ; 19 uses
  %i.t = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.060.sroa.7.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.u = alloca [96 x i8], align 16               ; 9 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.027.sroa.7.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.x = alloca [96 x i8], align 16               ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.011.sroa.7.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.z = alloca [96 x i8], align 16               ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 13 uses
  %i.ab = alloca [96 x i8], align 16              ; 8 uses
  %i.ac = alloca [120 x i8], align 8              ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 17 uses
  %i.aj = alloca [48 x i8], align 8               ; 4 uses
  %i.ak = alloca [40 x i8], align 8               ; 15 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.am = load i8, ptr %1, align 16, !range !22, !alias.scope !582, !noundef !6
  switch i8 %i.am, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.cc, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !584
  store i8 7, ptr %i.ah, align 8, !noalias !584
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ah, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
          to label %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor10visit_unitNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i unwind label %bb.by, !noalias !582

_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor10visit_unitNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !584
  store i64 1, ptr %0, align 16, !alias.scope !585
  br label %bb.bt

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !range !20, !alias.scope !582, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !587
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !noalias !587
  store i8 0, ptr %i.ag, align 8, !noalias !587
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ag, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
          to label %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor10visit_boolNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i unwind label %bb.by, !noalias !582

_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor10visit_boolNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !587
  store i64 1, ptr %0, align 16, !alias.scope !588
  br label %bb.bt

bb.d:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !582, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !590
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.at, ptr %i.au, align 8, !noalias !590
  store i8 2, ptr %i.af, align 8, !noalias !590
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.af, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
          to label %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor9visit_i64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i unwind label %bb.by, !noalias !582

_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor9visit_i64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !590
  store i64 1, ptr %0, align 16, !alias.scope !591
  br label %bb.bt

bb.e:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i128, ptr %i.aw, align 16, !alias.scope !582, !noundef !6
  invoke fastcc void @_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor10visit_i128NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(128) %0, i128 noundef %i.ax)
          to label %bb.bt unwind label %bb.by, !noalias !582

bb.f:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !582, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !593
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !noalias !593
  store i8 1, ptr %i.ae, align 8, !noalias !593
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ae, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
          to label %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor9visit_u64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i unwind label %bb.by, !noalias !582

_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor9visit_u64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !593
  store i64 1, ptr %0, align 16, !alias.scope !594
  br label %bb.bt

bb.g:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i128, ptr %i.bc, align 16, !alias.scope !582, !noundef !6
  invoke fastcc void @_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor10visit_u128NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(128) %0, i128 noundef %i.bd)
          to label %bb.bt unwind label %bb.by, !noalias !582

bb.h:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load double, ptr %i.be, align 8, !alias.scope !582, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !596
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store double %i.bf, ptr %i.bg, align 8, !noalias !596
  store i8 3, ptr %i.ad, align 8, !noalias !596
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error12invalid_typeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ad, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
          to label %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor9visit_f64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i unwind label %bb.by, !noalias !582

_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor9visit_f64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !596
  store i64 1, ptr %0, align 16, !alias.scope !597
  br label %bb.bt

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !598
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !599
  invoke fastcc void @_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor12visit_stringNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.al)
          to label %bb.bx unwind label %bb.by, !noalias !582

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !598
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i64 48, i1 false), !noalias !599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !598
  invoke void @_RNvMs2_NtCshE3sgg5Qsfb_6config2deNtB5_9MapAccess3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.aj)
          to label %bb.bz unwind label %bb.by, !noalias !582

bb.k:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 16, !alias.scope !582, !nonnull !6, !noundef !6 ; 3 uses
  %i.bn = load i64, ptr %i.bk, align 8, !range !7, !alias.scope !582, !noundef !6
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !582, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !598
  %i.bq = icmp ult i64 %i.bp, 96076792050570582
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [96 x i8], ptr %i.bm, i64 %i.bp
  store ptr %i.bm, ptr %i.ak, align 8, !noalias !598
  %.sroa.01.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.bm, ptr %.sroa.01.sroa.4.0..sroa_idx.i.i, align 8, !noalias !598
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.bn, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i, align 8, !noalias !598
  %.sroa.01.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.br, ptr %.sroa.01.sroa.6.0..sroa_idx.i.i, align 8, !noalias !598
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.060.sroa.7.i.i.i), !noalias !598
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !601
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 112 ; 2 uses
  store i8 2, ptr %i.bs, align 8, !alias.scope !602, !noalias !601
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 12 uses
  store i64 -1, ptr %i.bt, align 8, !alias.scope !602, !noalias !601
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 10 uses
  store i64 -1, ptr %i.bu, align 8, !alias.scope !602, !noalias !601
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 113 ; 2 uses
  store i8 2, ptr %i.bv, align 1, !alias.scope !602, !noalias !601
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 11 uses
  store ptr null, ptr %i.bw, align 8, !alias.scope !602, !noalias !601
  store i64 0, ptr %i.ac, align 8, !alias.scope !602, !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !601
  invoke void @_RINvXs1_NtCshE3sgg5Qsfb_6config2deNtB6_9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1Q_6option6OptionbEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.m, !noalias !603

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i: ; preds = %bb.bs, %bb.bq, %bb.bn, %.body249.i.i.i, %bb.at, %bb.ap, %bb.l
  %.pn225.i.i.i = phi { ptr, i32 } [ %i.bx, %bb.l ], [ %.pn223.i.i.i, %bb.bn ], [ %.pn223.i.i.i, %.body249.i.i.i ], [ %.pn221303.i.i.i, %bb.bs ], [ %.pn221303.i.i.i, %bb.bq ], [ %.pn.i.i.i, %bb.ap ], [ %.pn.i.i.i, %bb.at ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshE3sgg5Qsfb_6config5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %.body.i.i unwind label %bb.as, !noalias !603

bb.l:                                             ; preds = %.invoke.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i

.body237.i.i.i:                                   ; preds = %bb.az, %.body.i.i.i
  %.sroa.0102.0.i.i.i = phi i8 [ %.sroa.0102.2.i.i.i, %.body.i.i.i ], [ %.sroa.0102.9.i.i.i, %bb.az ] ; 2 uses
  %.sroa.0107.0.i.i.i = phi i8 [ %.sroa.0107.2.i.i.i, %.body.i.i.i ], [ %.sroa.0107.5.i.i.i, %bb.az ] ; 2 uses
  %.pn221.i.i.i = phi { ptr, i32 } [ %.pn219.i.i.i, %.body.i.i.i ], [ %i.dy, %bb.az ] ; 2 uses
  br i1 %.not208.not.not.i.i.i, label %bb.bp, label %bb.bo

bb.m:                                             ; preds = %bb.o, %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i236.i.i.i
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not208.not.not.i.i.i, label %bb.bp, label %bb.bo

_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !range !23, !noalias !601, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ca, -2
  %i.cb = load i8, ptr %i.ab, align 16, !noalias !601 ; 3 uses
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %.sroa.4120.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.4124.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4124.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4120.0..sroa_idx.i.i.i, i64 71, i1 false), !noalias !604
  %.sroa.6122.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %.sroa.6126.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6126.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6122.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !601
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cb, ptr %i.cc, align 16, !alias.scope !605
  %.sroa.5125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ca, ptr %.sroa.5125.0..sroa_idx.i.i.i, align 8, !alias.scope !605
  store i64 1, ptr %0, align 16, !alias.scope !605
  br label %bb.bi

bb.o:                                             ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !601
  %.not206.i.i.i = icmp eq i8 %i.cb, -1
  %i.cd = load i8, ptr %i.bs, align 8, !range !18, !noalias !601
  %.sroa.010.0.i.i.i = select i1 %.not206.i.i.i, i8 %i.cd, i8 %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !601
  invoke void @_RINvXs1_NtCshE3sgg5Qsfb_6config2deNtB6_9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1Q_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.m, !noalias !603

_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.cf = load i64, ptr %i.ce, align 8, !range !23, !noalias !601, !noundef !6 ; 2 uses
  %.not207.i.i.i = icmp eq i64 %i.cf, -2
  %.sroa.0127.0.copyload.i.i.i = load i64, ptr %i.z, align 16, !noalias !601 ; 3 uses
  %.sroa.4128.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4128.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !601
  br i1 %.not207.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %.sroa.5136.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.5141.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5141.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5136.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !604
  %.sroa.7138.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %.sroa.7143.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7143.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7138.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !601
  %.sroa.4140.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4140.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.sroa.7.i.i.i, i64 16, i1 false), !noalias !604
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0127.0.copyload.i.i.i, ptr %i.cg, align 16, !alias.scope !605
  %.sroa.6142.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.cf, ptr %.sroa.6142.0..sroa_idx.i.i.i, align 8, !alias.scope !605
  store i64 1, ptr %0, align 16, !alias.scope !605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !601
  br label %bb.bi

bb.q:                                             ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !601
  %.not208.not.not.i.i.i = icmp ne i64 %.sroa.0127.0.copyload.i.i.i, -2 ; 5 uses
  br i1 %.not208.not.not.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.sroa.7.i.i.i, i64 16, i1 false), !noalias !601
  store i64 %.sroa.0127.0.copyload.i.i.i, ptr %i.aa, align 8, !noalias !601
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !601
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !601
  invoke void @_RINvXs1_NtCshE3sgg5Qsfb_6config2deNtB6_9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1Q_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit227.i.i.i unwind label %bb.u, !noalias !603

.body.i.i.i:                                      ; preds = %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i.i.i, %bb.u
  %.sroa.0102.2.i.i.i = phi i8 [ %.sroa.0102.4.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i.i.i ], [ %.sroa.0102.3.i.i.i, %bb.u ], [ %.sroa.0102.8.i.i.i, %bb.aw ]
  %.sroa.0107.2.i.i.i = phi i8 [ %.sroa.0107.4.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i.i.i ], [ %.sroa.0107.3.i.i.i, %bb.u ], [ %.sroa.0107.4.i.i.i, %bb.aw ]
  %.pn219.i.i.i = phi { ptr, i32 } [ %.pn217.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i.i.i ], [ %i.ch, %bb.u ], [ %i.du, %bb.aw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #21
          to label %.body237.i.i.i unwind label %bb.as, !noalias !603

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.t
  %.sroa.0102.3.i.i.i = phi i8 [ %.sroa.0102.8.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ 1, %bb.t ]
  %.sroa.0107.3.i.i.i = phi i8 [ %.sroa.0107.4.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ 1, %bb.t ]
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit227.i.i.i: ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.cj = load i64, ptr %i.ci, align 8, !range !23, !noalias !601, !noundef !6 ; 2 uses
  %.not209.i.i.i = icmp eq i64 %i.cj, -2
  %.sroa.0144.0.copyload.i.i.i = load i64, ptr %i.x, align 16, !noalias !601 ; 3 uses
  %.sroa.4145.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4145.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !601
  br i1 %.not209.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit227.i.i.i
  %.sroa.5153.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.5158.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5158.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5153.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !604
  %.sroa.7155.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.7160.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7160.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7155.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !601
  %.sroa.4157.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4157.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.sroa.7.i.i.i, i64 16, i1 false), !noalias !604
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0144.0.copyload.i.i.i, ptr %i.ck, align 16, !alias.scope !605
  %.sroa.6159.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.cj, ptr %.sroa.6159.0..sroa_idx.i.i.i, align 8, !alias.scope !605
  store i64 1, ptr %0, align 16, !alias.scope !605
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i

bb.w:                                             ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit227.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !601
  %.not210.i.i.i.a = icmp eq i64 %.sroa.0144.0.copyload.i.i.i, -2 ; 3 uses
  br i1 %.not210.i.i.i.a, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.443.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.443.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.sroa.7.i.i.i, i64 16, i1 false), !noalias !601
  store i64 %.sroa.0144.0.copyload.i.i.i, ptr %i.y, align 8, !noalias !601
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !noalias !601
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0107.4.i.i.i = phi i8 [ 1, %bb.x ], [ 0, %bb.y ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !601
  invoke void @_RINvXs1_NtCshE3sgg5Qsfb_6config2deNtB6_9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1Q_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEEEB2W_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEEB2i_.exit.i.i.i unwind label %bb.aa, !noalias !603

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i.i.i: ; preds = %bb.ag, %bb.af, %bb.aa
  %.sroa.0102.4.i.i.i = phi i8 [ %.sroa.0102.5.i.i.i, %bb.aa ], [ %i.cv, %bb.ag ], [ %i.cv, %bb.af ]
  %.pn217.i.i.i = phi { ptr, i32 } [ %i.cl, %bb.aa ], [ %i.cw, %bb.ag ], [ %i.cw, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #21
          to label %.body.i.i.i unwind label %bb.as, !noalias !603

bb.aa:                                            ; preds = %bb.ai, %bb.ac, %bb.z
  %.sroa.0102.5.i.i.i = phi i8 [ %i.cv, %bb.ai ], [ 1, %bb.ac ], [ 1, %bb.z ]
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i.i.i

_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEEB2i_.exit.i.i.i: ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.cn = load i64, ptr %i.cm, align 8, !range !23, !noalias !601, !noundef !6 ; 2 uses
  %.not211.i.i.i = icmp eq i64 %i.cn, -2
  %i.co = load i8, ptr %i.w, align 16, !noalias !601 ; 3 uses
  br i1 %.not211.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEEB2i_.exit.i.i.i
  %.sroa.4166.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.4170.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4170.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4166.0..sroa_idx.i.i.i, i64 71, i1 false), !noalias !604
  %.sroa.6168.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %.sroa.6172.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6172.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6168.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !601
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.co, ptr %i.cp, align 16, !alias.scope !605
  %.sroa.5171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.cn, ptr %.sroa.5171.0..sroa_idx.i.i.i, align 8, !alias.scope !605
  store i64 1, ptr %0, align 16, !alias.scope !605
  br label %bb.au

bb.ac:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9LogFormatEEB2i_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !601
  %.not212.i.i.i = icmp eq i8 %i.co, -1
  %i.cq = load i8, ptr %i.bv, align 1, !range !18, !noalias !601
  %.sroa.059.0.i.i.i = select i1 %.not212.i.i.i, i8 %i.cq, i8 %i.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !601
  invoke void @_RINvXs1_NtCshE3sgg5Qsfb_6config2deNtB6_9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1Q_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEEB3Q_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB3c_.exit.i.i.i unwind label %bb.aa, !noalias !603

_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB3c_.exit.i.i.i: ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.cs = load i64, ptr %i.cr, align 8, !range !23, !noalias !601, !noundef !6 ; 2 uses
  %.not213.i.i.i = icmp eq i64 %i.cs, -2
  %.sroa.0173.0.copyload.i.i.i = load i64, ptr %i.u, align 16, !noalias !601 ; 3 uses
  %.sroa.4174.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.060.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4174.0..sroa_idx.i.i.i, i64 48, i1 false), !noalias !601
  br i1 %.not213.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB3c_.exit.i.i.i
  %.sroa.5182.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.5187.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5187.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5182.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !604
  %.sroa.7184.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %.sroa.7189.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7189.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7184.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !601
  %.sroa.4186.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4186.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.060.sroa.7.i.i.i, i64 48, i1 false), !noalias !604
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0173.0.copyload.i.i.i, ptr %i.ct, align 16, !alias.scope !605
  %.sroa.6188.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.cs, ptr %.sroa.6188.0..sroa_idx.i.i.i, align 8, !alias.scope !605
  store i64 1, ptr %0, align 16, !alias.scope !605
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit229.i.i.i

bb.ae:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB3c_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !601
  %i.cu = trunc nuw i64 %.sroa.0173.0.copyload.i.i.i to i1 ; 3 uses
  %.sroa.060.sroa.7.i..i.i = select i1 %i.cu, ptr %.sroa.060.sroa.7.i.i.i, ptr %i.bw
  %i.cv = trunc i64 %.sroa.0173.0.copyload.i.i.i to i8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.060.sroa.7.i..i.i, i64 48, i1 false), !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !601
  invoke void @_RINvXs1_NtCshE3sgg5Qsfb_6config2deNtB6_9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess17next_element_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1Q_6option6OptionjEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionjEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.af, !noalias !603

bb.af:                                            ; preds = %bb.ae
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %i.v, align 8, !alias.scope !606, !noalias !601, !noundef !6
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i.i.i unwind label %bb.as, !noalias !603

_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionjEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.da = load i64, ptr %i.cz, align 8, !range !23, !noalias !601, !noundef !6 ; 2 uses
  %.not214.i.i.i = icmp eq i64 %i.da, -2
  %i.db = load i64, ptr %i.t, align 16, !noalias !601 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !601 ; 2 uses
  br i1 %.not214.i.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionjEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %.sroa.5197.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5202.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.5202.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.5197.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !604
  %.sroa.7199.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.7204.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7204.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7199.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !601
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.db, ptr %i.de, align 16, !alias.scope !605
  %.sroa.4201.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dd, ptr %.sroa.4201.0..sroa_idx.i.i.i, align 8, !alias.scope !605
  %.sroa.6203.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.da, ptr %.sroa.6203.0..sroa_idx.i.i.i, align 8, !alias.scope !605
  store i64 1, ptr %0, align 16, !alias.scope !605
  %i.df = load ptr, ptr %i.v, align 8, !alias.scope !607, !noalias !601, !noundef !6
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit229.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit229.i.i.i unwind label %bb.aa, !noalias !603

bb.aj:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9SeqAccessNtNtCs4NSHK7GLW4I_10serde_core2de9SeqAccess12next_elementINtNtCskKLDkoKarTP_4core6option6OptionjEECsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !601
  %.not215.i.i.i = icmp eq i64 %i.db, 2           ; 2 uses
  %i.dh = load i64, ptr %i.ac, align 8, !range !11, !noalias !601
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !noalias !601
  %.sroa.092.0.i.i.i = select i1 %.not215.i.i.i, i64 %i.dh, i64 %i.db
  %.sroa.393.0.i.i.i = select i1 %.not215.i.i.i, i64 %i.dj, i64 %i.dd
  %.sroa.596.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.596.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !604
  %.sroa.697.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.697.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !604
  %.sroa.798.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.798.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !604
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.092.0.i.i.i, ptr %i.dk, align 8, !alias.scope !605
  %.sroa.495.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.393.0.i.i.i, ptr %.sroa.495.0..sroa_idx.i.i.i, align 16, !alias.scope !605
  %.sroa.899.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.sroa.010.0.i.i.i, ptr %.sroa.899.0..sroa_idx.i.i.i, align 8, !alias.scope !605
  %.sroa.9100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %.sroa.059.0.i.i.i, ptr %.sroa.9100.0..sroa_idx.i.i.i, align 1, !alias.scope !605
  store i64 0, ptr %0, align 16, !alias.scope !605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !601
  br i1 %.not208.not.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  br i1 %.not210.i.i.i.a, label %bb.an, label %bb.ao

bb.al:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt)
          to label %bb.ak unwind label %bb.am, !noalias !603

bb.am:                                            ; preds = %bb.al
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not210.i.i.i.a, label %bb.ap, label %bb.ar

bb.an:                                            ; preds = %bb.ao, %bb.ak
  %i.dm = load ptr, ptr %i.bw, align 8, !noalias !601
  %i.dn = icmp ne ptr %i.dm, null
  %or.cond.not.i.i.i = select i1 %i.cu, i1 %i.dn, i1 false
  br i1 %or.cond.not.i.i.i, label %.invoke.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit262.i.i.i

bb.ao:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu)
          to label %bb.an unwind label %bb.aq, !noalias !603

bb.ap:                                            ; preds = %bb.ar, %bb.aq, %bb.am
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dq, %bb.aq ], [ %i.dl, %bb.ar ], [ %i.dl, %bb.am ] ; 2 uses
  %i.do = load ptr, ptr %i.bw, align 8, !noalias !601
  %i.dp = icmp ne ptr %i.do, null
  %or.cond276.not.i.i.i = select i1 %i.cu, i1 %i.dp, i1 false
  br i1 %or.cond276.not.i.i.i, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit262.i.i.i: ; preds = %.invoke.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit252.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !601
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshE3sgg5Qsfb_6config5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %bb.eu unwind label %bb.by, !noalias !582

bb.ar:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu) #21
          to label %bb.ap unwind label %bb.as, !noalias !603

bb.as:                                            ; preds = %bb.bs, %bb.br, %bb.bp, %bb.bn, %.body243.thread.i.i.i, %bb.at, %bb.ar, %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i.i.i, %.body.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !603
  unreachable

bb.at:                                            ; preds = %bb.ap
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i unwind label %bb.as, !noalias !603

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit229.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ad
  %.sroa.0102.7.i.i.i = phi i8 [ 1, %bb.ad ], [ %i.cv, %bb.ai ], [ %i.cv, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !601
  br label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit229.i.i.i, %bb.ab
  %.sroa.0102.8.i.i.i = phi i8 [ 1, %bb.ab ], [ %.sroa.0102.7.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit229.i.i.i ] ; 4 uses
  %i.ds = load i64, ptr %i.y, align 8, !range !5, !alias.scope !608, !noalias !601, !noundef !6
  %i.dt = icmp eq i64 %i.ds, -1
  br i1 %i.dt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.aw, !noalias !603

bb.aw:                                            ; preds = %bb.av
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i.i.i unwind label %bb.ax, !noalias !603

bb.ax:                                            ; preds = %bb.aw
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !603
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.u, !noalias !603

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.au, %bb.v
  %.sroa.0102.9.i.i.i = phi i8 [ 1, %bb.v ], [ %.sroa.0102.8.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.0102.8.i.i.i, %bb.au ] ; 7 uses
  %.sroa.0107.5.i.i.i = phi i8 [ 1, %bb.v ], [ %.sroa.0107.4.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.0107.4.i.i.i, %bb.au ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !601
  %i.dw = load i64, ptr %i.aa, align 8, !range !5, !alias.scope !609, !noalias !601, !noundef !6
  %i.dx = icmp eq i64 %i.dw, -1
  br i1 %i.dx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit240.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i236.i.i.i unwind label %bb.az, !noalias !603

bb.az:                                            ; preds = %bb.ay
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body237.i.i.i unwind label %bb.ba, !noalias !603

bb.ba:                                            ; preds = %bb.az
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !603
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i236.i.i.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit240.i.i.i unwind label %.split.i.i.i, !noalias !603

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit240.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i236.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !601
  %i.ea = load i64, ptr %i.bt, align 8, !range !5, !noalias !601
  %i.eb = icmp ne i64 %i.ea, -1
  %or.cond279.not.i.i.i = select i1 %.not208.not.not.i.i.i, i1 %i.eb, i1 false
  br i1 %or.cond279.not.i.i.i, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit246.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit246.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i242.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit240.i.i.i
  %i.ec = trunc nuw i8 %.sroa.0107.5.i.i.i to i1
  br i1 %i.ec, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit260.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit252.i.i.i

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit240.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i242.i.i.i unwind label %bb.bc, !noalias !603

bb.bc:                                            ; preds = %bb.bb
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body243.i.i.i unwind label %bb.bd, !noalias !603

bb.bd:                                            ; preds = %bb.bc
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !603
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i242.i.i.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit246.i.i.i unwind label %bb.be, !noalias !603

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i254.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i242.i.i.i
  %.sroa.0102.10.i.i.i = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i254.i.i.i ], [ %.sroa.0102.9.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i242.i.i.i ]
  %.sroa.0107.6.i.i.i = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i254.i.i.i ], [ %.sroa.0107.5.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i242.i.i.i ]
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body243.i.i.i

.body243.i.i.i:                                   ; preds = %bb.be, %bb.bc
  %.sroa.0102.10.lpad-body.i.i.i = phi i8 [ %.sroa.0102.9.i.i.i, %bb.bc ], [ %.sroa.0102.10.i.i.i, %bb.be ] ; 2 uses
  %.sroa.0107.6.lpad-body.i.i.i = phi i8 [ %.sroa.0107.5.i.i.i, %bb.bc ], [ %.sroa.0107.6.i.i.i, %bb.be ]
  %eh.lpad-body244.i.i.i = phi { ptr, i32 } [ %i.ed, %bb.bc ], [ %i.ef, %bb.be ] ; 2 uses
  %i.eg = trunc nuw i8 %.sroa.0107.6.lpad-body.i.i.i to i1
  br i1 %i.eg, label %.body243.thread.i.i.i, label %.body249.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit252.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i248.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit260.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit246.i.i.i
  %.sroa.0102.11.i.i.i = phi i8 [ %.sroa.0102.9.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit246.i.i.i ], [ %.sroa.0102.12.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i248.i.i.i ], [ %.sroa.0102.12.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit260.i.i.i ]
  %i.eh = trunc i8 %.sroa.0102.11.i.i.i to i1
  %i.ei = load ptr, ptr %i.bw, align 8, !noalias !601
  %i.ej = icmp ne ptr %i.ei, null
  %or.cond282.not.i.i.i = select i1 %i.eh, i1 %i.ej, i1 false
  br i1 %or.cond282.not.i.i.i, label %.invoke.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit262.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit260.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i254.i.i.i, %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit246.i.i.i
  %.sroa.0102.12.i.i.i = phi i8 [ %.sroa.0102.9.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit246.i.i.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i254.i.i.i ], [ 1, %bb.bi ] ; 4 uses
  %i.ek = load i64, ptr %i.bu, align 8, !range !5, !alias.scope !610, !noalias !601, !noundef !6
  %i.el = icmp eq i64 %i.ek, -1
  br i1 %i.el, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit252.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit260.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i248.i.i.i unwind label %bb.bg, !noalias !603

bb.bg:                                            ; preds = %bb.bf
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body249.i.i.i unwind label %bb.bh, !noalias !603

bb.bh:                                            ; preds = %bb.bg
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !603
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i248.i.i.i: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit252.i.i.i unwind label %bb.bm, !noalias !603

bb.bi:                                            ; preds = %bb.p, %bb.n
  %i.eo = load i64, ptr %i.bt, align 8, !range !5, !alias.scope !611, !noalias !601, !noundef !6
  %i.ep = icmp eq i64 %i.eo, -1
  br i1 %i.ep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit260.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i254.i.i.i unwind label %bb.bk, !noalias !603

bb.bk:                                            ; preds = %bb.bj
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body243.thread.i.i.i unwind label %bb.bl, !noalias !603

bb.bl:                                            ; preds = %bb.bk
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !603
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i254.i.i.i: ; preds = %bb.bj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit260.i.i.i unwind label %bb.be, !noalias !603

.body249.i.i.i:                                   ; preds = %.body243.thread.i.i.i, %bb.bm, %bb.bg, %.body243.i.i.i
  %.sroa.0102.13.i.i.i = phi i8 [ %.sroa.0102.10.lpad-body.i.i.i, %.body243.i.i.i ], [ %.sroa.0102.10.lpad-body270.i.i.i, %.body243.thread.i.i.i ], [ %.sroa.0102.12.i.i.i, %bb.bg ], [ %.sroa.0102.12.i.i.i, %bb.bm ]
  %.pn223.i.i.i = phi { ptr, i32 } [ %eh.lpad-body244.i.i.i, %.body243.i.i.i ], [ %eh.lpad-body244271.i.i.i, %.body243.thread.i.i.i ], [ %i.em, %bb.bg ], [ %i.ev, %bb.bm ] ; 2 uses
  %i.es = trunc i8 %.sroa.0102.13.i.i.i to i1
  %i.et = load ptr, ptr %i.bw, align 8, !noalias !601
  %i.eu = icmp ne ptr %i.et, null
  %or.cond285.not.i.i.i = select i1 %i.es, i1 %i.eu, i1 false
  br i1 %or.cond285.not.i.i.i, label %bb.bn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i248.i.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body249.i.i.i

.invoke.i.i.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit252.i.i.i, %bb.an
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit262.i.i.i unwind label %bb.l, !noalias !603

.body243.thread.i.i.i:                            ; preds = %bb.bk, %.body243.i.i.i
  %eh.lpad-body244271.i.i.i = phi { ptr, i32 } [ %eh.lpad-body244.i.i.i, %.body243.i.i.i ], [ %i.eq, %bb.bk ]
  %.sroa.0102.10.lpad-body270.i.i.i = phi i8 [ %.sroa.0102.10.lpad-body.i.i.i, %.body243.i.i.i ], [ 1, %bb.bk ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu) #21
          to label %.body249.i.i.i unwind label %bb.as, !noalias !603

bb.bn:                                            ; preds = %.body249.i.i.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i unwind label %bb.as, !noalias !603

bb.bo:                                            ; preds = %bb.bp, %.split.i.i.i, %.body237.i.i.i
  %.pn221303.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.split.i.i.i ], [ %.pn221304.i.i.i, %bb.bp ], [ %.pn221.i.i.i, %.body237.i.i.i ] ; 2 uses
  %.sroa.0107.0301.i.i.i = phi i8 [ %.sroa.0107.5.i.i.i, %.split.i.i.i ], [ %.sroa.0107.0302.i.i.i, %bb.bp ], [ %.sroa.0107.0.i.i.i, %.body237.i.i.i ]
  %.sroa.0102.0299.i.i.i = phi i8 [ %.sroa.0102.9.i.i.i, %.split.i.i.i ], [ %.sroa.0102.0300.i.i.i, %bb.bp ], [ %.sroa.0102.0.i.i.i, %.body237.i.i.i ]
  %i.ew = trunc nuw i8 %.sroa.0107.0301.i.i.i to i1
  br i1 %i.ew, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %.split.i.i.i, %bb.m, %.body237.i.i.i
  %.pn221304.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.split.i.i.i ], [ %.pn221.i.i.i, %.body237.i.i.i ], [ %i.by, %bb.m ]
  %.sroa.0107.0302.i.i.i = phi i8 [ %.sroa.0107.5.i.i.i, %.split.i.i.i ], [ %.sroa.0107.0.i.i.i, %.body237.i.i.i ], [ 1, %bb.m ]
  %.sroa.0102.0300.i.i.i = phi i8 [ %.sroa.0102.9.i.i.i, %.split.i.i.i ], [ %.sroa.0102.0.i.i.i, %.body237.i.i.i ], [ 1, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #21
          to label %bb.bo unwind label %bb.as, !noalias !603

bb.bq:                                            ; preds = %bb.br, %bb.bo
  %i.ex = trunc i8 %.sroa.0102.0299.i.i.i to i1
  %i.ey = load ptr, ptr %i.bw, align 8, !noalias !601
  %i.ez = icmp ne ptr %i.ey, null
  %or.cond288.not.i.i.i = select i1 %i.ex, i1 %i.ez, i1 false
  br i1 %or.cond288.not.i.i.i, label %bb.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i

bb.br:                                            ; preds = %bb.bo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu) #21
          to label %bb.bq unwind label %bb.as, !noalias !603

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i unwind label %bb.as, !noalias !603

bb.bt:                                            ; preds = %bb.eu, %bb.et, %bb.bx, %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor9visit_f64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i, %bb.g, %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor9visit_u64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i, %bb.e, %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor9visit_i64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i, %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor10visit_boolNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i, %_RINvYNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtBa_6ConfigNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB15_7Visitor10visit_unitNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBe_.exit.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.fb = load i64, ptr %i.fa, align 16, !range !5, !alias.scope !612, !noundef !6
  %i.fc = icmp eq i64 %i.fb, -1
  br i1 %i.fc, label %_RINvXNtCshE3sgg5Qsfb_6config2deNtNtB5_5value5ValueNtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtB1Y_6ConfigNtBO_11Deserialize11deserialize9___VisitorEB22_.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %common.resume.i.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume.i.i:                                ; preds = %.body.i.i, %bb.bv
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.fd, %bb.bv ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.bu
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa)
  br label %_RINvXNtCshE3sgg5Qsfb_6config2deNtNtB5_5value5ValueNtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtB1Y_6ConfigNtBO_11Deserialize11deserialize9___VisitorEB22_.exit

bb.bx:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !598
  br label %bb.bt

bb.by:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshE3sgg5Qsfb_6config2de9MapAccessECsl8OoimOLbh_6qdrant.exit267.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit262.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.en, %.body262.i.i.i, %bb.eb, %bb.by, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %.pn225.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit233.i.i.i ], [ %i.ff, %bb.by ], [ %i.ik, %bb.en ], [ %i.hw, %bb.eb ], [ %.pn223.i9.i.i, %.body262.i.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fg) #21
          to label %common.resume.i.i unwind label %bb.ev

bb.bz:                                            ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.068.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.039.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.030.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !614
  store i64 -2, ptr %i.s, align 8, !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !614
  store i64 -2, ptr %i.r, align 8, !noalias !614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !614
  store i64 0, ptr %i.q, align 8, !noalias !614
  %i.fh = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.fm = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 9 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  br label %.outer

.outer:                                           ; preds = %bb.dv, %bb.bz
  %.sroa.580.0.i.i.i.ph = phi i64 [ %i.hd, %bb.dv ], [ undef, %bb.bz ]
  %.sroa.077.0.i.i.i.ph = phi i64 [ %i.hc, %bb.dv ], [ 2, %bb.bz ] ; 3 uses
  %.sroa.048.0.i.i.i.ph = phi i8 [ %.sroa.048.0.i.i.i.ph478, %bb.dv ], [ -1, %bb.bz ]
  %.sroa.015.0.i.i.i.ph = phi i8 [ %.sroa.015.0.i.i.i.ph483, %bb.dv ], [ -1, %bb.bz ]
  br label %.outer477

.outer477:                                        ; preds = %.outer, %bb.dk
  %.sroa.048.0.i.i.i.ph478 = phi i8 [ %.sroa.048.0.i.i.i.ph, %.outer ], [ %i.gq, %bb.dk ] ; 4 uses
  %.sroa.015.0.i.i.i.ph479 = phi i8 [ %.sroa.015.0.i.i.i.ph, %.outer ], [ %.sroa.015.0.i.i.i.ph483, %bb.dk ]
  br label %.outer482

.outer482:                                        ; preds = %.outer477, %bb.cn
  %.sroa.015.0.i.i.i.ph483 = phi i8 [ %.sroa.015.0.i.i.i.ph479, %.outer477 ], [ %i.fy, %bb.cn ] ; 5 uses
  br label %bb.ca

bb.ca:                                            ; preds = %.backedge, %.outer482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !614
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess13next_key_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtB2w_6ConfigNtBN_11Deserialize11deserialize7___FieldEEB2A_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtB1C_6ConfigNtBH_11Deserialize11deserialize7___FieldEB1G_.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.loopexit.split-lp, !noalias !615

.loopexit.split-lp.i.loopexit.split-lp.i.i:       ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.loopexit.split-lp, %.body230.i.i.i, %.body.i20.i.i
  %.pn217.ph.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i20.i.i ], [ %eh.lpad-body231.i.i.i, %.body230.i.i.i ], [ %lpad.loopexit.split-lp485, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.loopexit.split-lp ] ; 2 uses
  %.pr.i.i.i = load i64, ptr %i.q, align 8, !noalias !614
  %.not525.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not525.i.i.i, label %.thread.i.i.i, label %bb.ep

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.loopexit.split-lp: ; preds = %bb.cl, %bb.cq, %bb.cz, %bb.di, %bb.dn, %bb.dt, %bb.ds, %bb.dh, %bb.ca, %bb.cj, %bb.cp, %bb.cy, %bb.dm, %bb.ck
  %lpad.loopexit.split-lp485 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp.i.i

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtB1C_6ConfigNtBH_11Deserialize11deserialize7___FieldEB1G_.exit.i.i.i: ; preds = %bb.ca
  %i.fr = load i64, ptr %i.fh, align 8, !range !23, !noalias !614, !noundef !6 ; 2 uses
  %.not.i10.i.i = icmp eq i64 %i.fr, -2
  %i.fs = load i8, ptr %i.p, align 16, !noalias !614 ; 2 uses
  br i1 %.not.i10.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtB1C_6ConfigNtBH_11Deserialize11deserialize7___FieldEB1G_.exit.i.i.i
  %.sroa.4123.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.4127.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4127.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4123.0..sroa_idx.i.i.i, i64 71, i1 false), !noalias !616
  %.sroa.6125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.6129.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6129.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6125.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !614
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.fs, ptr %i.ft, align 16, !alias.scope !617
  %.sroa.5128.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.fr, ptr %.sroa.5128.0..sroa_idx.i.i.i, align 8, !alias.scope !617
  store i64 1, ptr %0, align 16, !alias.scope !617
  br label %bb.dz

bb.cc:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCsl8OoimOLbh_6qdrant7tracing7on_disk1__NtB1C_6ConfigNtBH_11Deserialize11deserialize7___FieldEB1G_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !614
  switch i8 %i.fs, label %default.unreachable [
    i8 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_.exit.i24.i.i
    i8 0, label %bb.cd
    i8 1, label %bb.ce
    i8 2, label %bb.cf
    i8 3, label %bb.cg
    i8 4, label %bb.ch
    i8 5, label %bb.ci
    i8 6, label %bb.cj
  ]

bb.cd:                                            ; preds = %bb.cc
  %.not215.i21.i.i = icmp eq i8 %.sroa.015.0.i.i.i.ph483, -1
  br i1 %.not215.i21.i.i, label %bb.ck, label %bb.cl, !prof !24

bb.ce:                                            ; preds = %bb.cc
  %i.fu = load i64, ptr %i.s, align 8, !range !17, !noalias !614, !noundef !6
  %.not213.i18.i.i = icmp eq i64 %i.fu, -2
  br i1 %.not213.i18.i.i, label %bb.cp, label %bb.cq, !prof !24

bb.cf:                                            ; preds = %bb.cc
  %i.fv = load i64, ptr %i.r, align 8, !range !17, !noalias !614, !noundef !6
  %.not211.i16.i.i = icmp eq i64 %i.fv, -2
  br i1 %.not211.i16.i.i, label %bb.cy, label %bb.cz, !prof !24

bb.cg:                                            ; preds = %bb.cc
  %.not209.i14.i.i = icmp eq i8 %.sroa.048.0.i.i.i.ph478, -1
  br i1 %.not209.i14.i.i, label %bb.dh, label %bb.di, !prof !24

bb.ch:                                            ; preds = %bb.cc
  %i.fw = load i64, ptr %i.q, align 8, !range !11, !noalias !614, !noundef !6
  %.not207.i12.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not207.i12.i.i, label %bb.dm, label %bb.dn, !prof !24

bb.ci:                                            ; preds = %bb.cc
  %.not205.i.i.i = icmp eq i64 %.sroa.077.0.i.i.i.ph, 2
  br i1 %.not205.i.i.i, label %bb.ds, label %bb.dt, !prof !24

bb.cj:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !614
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtBN_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtBH_11ignored_any10IgnoredAnyECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.loopexit.split-lp, !noalias !615

bb.ck:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !614
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionbEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.loopexit.split-lp, !noalias !615

bb.cl:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !614
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 7)
          to label %bb.co unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.loopexit.split-lp, !noalias !615

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.ck
  %i.fx = load i64, ptr %i.fq, align 8, !range !23, !noalias !614, !noundef !6 ; 2 uses
  %.not216.i.i.i = icmp eq i64 %i.fx, -2
  %i.fy = load i8, ptr %i.n, align 16, !noalias !614 ; 2 uses
  br i1 %.not216.i.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %.sroa.4135.0..sroa_idx.i23.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.4139.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4139.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4135.0..sroa_idx.i23.i.i, i64 71, i1 false), !noalias !616
  %.sroa.6137.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80
end_hunk_0
