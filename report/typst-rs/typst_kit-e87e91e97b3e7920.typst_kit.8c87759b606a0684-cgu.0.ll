Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3957
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNCNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtBa_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerE00Csc4241EHy6Do_9typst_kit:bb.a
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #46
          to label %.body34 unwind label %bb.cj, !noalias !4120

bb.ch:                                            ; preds = %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4120
  call void @llvm.experimental.noalias.scope.decl(metadata !4127)
  call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  call void @llvm.experimental.noalias.scope.decl(metadata !4129)
  %i.md = load ptr, ptr %i.f, align 8, !alias.scope !4130, !noalias !4120, !nonnull !17, !noundef !17
  %i.me = atomicrmw add ptr %i.md, i64 -1 release, align 8, !noalias !4131
  %i.mf = icmp eq i64 %i.me, 1
  br i1 %i.mf, label %bb.ci, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i21.i

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i21.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i21.i: ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4120
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i

bb.cj:                                            ; preds = %bb.cp, %bb.cg
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !4120
  unreachable

bb.ck:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4120
  store ptr %i.lx, ptr %i.e, align 8, !noalias !4120
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store atomic i64 0, ptr %i.mh release, align 8, !noalias !4120
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  store atomic ptr null, ptr %i.mi release, align 8, !noalias !4120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4120
  store ptr %i.h, ptr %i.c, align 8, !noalias !4120
  store ptr %i.ac, ptr %.sroa.59.0..sroa_idx10.i.i.i.i5.i, align 8
  store ptr %i.i, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i6.i, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB7_7ChanneluE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.lx)
          to label %bb.cl unwind label %bb.co, !noalias !4120

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4120
  %i.mj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i17.i, align 8, !noalias !4120, !noundef !17 ; 3 uses
  store ptr %i.mj, ptr %i.b, align 8, !noalias !4120
  store ptr %i.lx, ptr %.sroa.0.0.i.i.i2.i.i.i17.i, align 8, !noalias !4120
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i20.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ml = atomicrmw add ptr %i.mj, i64 -1 release, align 8, !noalias !4132
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.cn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i20.i

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i20.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i20.i: ; preds = %bb.cn, %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4120
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i

bb.co:                                            ; preds = %bb.ck
  %i.mn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mo = atomicrmw add ptr %i.lx, i64 -1 release, align 8, !noalias !4133
  %i.mp = icmp eq i64 %i.mo, 1
  br i1 %i.mp, label %bb.cp, label %.body34

bb.cp:                                            ; preds = %bb.co
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #46
          to label %.body34 unwind label %bb.cj, !noalias !4120

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %.noexc42
  invoke fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChanneluE4recvs_0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nonnull %i.g) #48
          to label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i20.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4120
  br label %bb.af

.split.i22.i:                                     ; preds = %.noexc41
  %i.mq = extractvalue { i64, i32 } %i.lq, 1      ; 2 uses
  %i.mr = icmp ult i32 %i.mq, 1000000000
  call void @llvm.assume(i1 %i.mr)
  %.not25.i.i = icmp samesign ult i32 %i.mq, %i.cn
  br i1 %.not25.i.i, label %bb.cd, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i

bb.cq:                                            ; preds = %.noexc41
  %.not24.i.i = icmp slt i64 %i.lr, %i.lp
  br i1 %.not24.i.i, label %bb.cd, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.cq, %.split.i22.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #47
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge: ; preds = %bb.ca, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.r

bb.cr:                                            ; preds = %bb.u
  %i.ms = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http7request7RequestECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(176) %i.n) #44
          to label %.body34 unwind label %bb.p

.thread:                                          ; preds = %bb.j, %bb.z, %bb.cs
  %.pn.pn.pn.pn64 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.z ], [ %i.ae, %bb.cs ], [ %i.ag, %bb.j ]
  resume { ptr, i32 } %.pn.pn.pn.pn64

bb.cs:                                            ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.s) #44
          to label %.thread unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB4_10HttpServer10set_bundle0B6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [96 x i8], align 8                ; 16 uses
  %i.g = alloca [16 x i8], align 8                ; 13 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 13 uses
  %i.k = alloca [48 x i8], align 8                ; 13 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4282
  call void @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path10components(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !noalias !4283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4282
  call void @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g), !noalias !4285
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 89 ; 2 uses
  %.promoted69.i.i = load i8, ptr %i.q, align 1, !alias.scope !4286, !noalias !4282 ; 2 uses
  %.promoted70.i.i = load i64, ptr %i.p, align 8, !noalias !4282 ; 4 uses
  %.promoted76.i.i = load i64, ptr %i.o, align 8, !noalias !4282 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !4282, !nonnull !17 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val1.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !4282 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.u = load i64, ptr %i.t, align 8, !noalias !4282 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.u, %.val1.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.x = load i8, ptr %i.w, align 8, !noalias !4282 ; 2 uses
  %i.y = zext nneg i8 %i.x to i64                 ; 4 uses
  %i.z = icmp ult i8 %i.x, 5
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ad = load i8, ptr %i.ac, align 8, !range !41, !noalias !4282
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !4282 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i.i = load i64, ptr %i.af, align 8, !noalias !4282
  %i.ag = icmp eq i64 %.val.i.i.i, 0              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.610.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 9 ; 2 uses
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not.i.i.i.i.i.fr.i.i = freeze i1 %.not.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.fr.i.i, label %.split.us.i.i, label %.split.i.preheader.i

.split.i.preheader.i:                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.promoted81.i.i = load i64, ptr %i.aj, align 8, !noalias !4282
  br label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.a
  %i.ak = trunc nuw i8 %.promoted69.i.i to i1
  br i1 %i.ak, label %.loopexit186, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.lr.ph.i.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.lr.ph.i.i: ; preds = %.split.us.i.i
  %.not.i3.i.i.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i, %.promoted70.i.i
  %or.cond.not.i.i.i.i.i.us.i.i = select i1 %i.ae, i1 true, i1 %.not.i3.i.i.i.i.us.i.i
  %i.al = sub nuw i64 %.pre2.i.i.i.i.i.i.i, %.promoted70.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.promoted70.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4291)
  br i1 %or.cond.not.i.i.i.i.i.us.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i, label %.loopexit186

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.lr.ph.i.i
  switch i64 %i.al, label %bb.e [
    i64 0, label %bb.d
    i64 1, label %bb.c
    i64 2, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i
  %i.am = load i16, ptr %.sroa.0.1.i.i.i.i.us.i.i, align 1
  %i.an = icmp ne i16 %i.am, 11822
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread.us.us.i.i, label %bb.e

bb.c:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i
  %lhsc1.i.i.us.us.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.us.i.i, align 1, !noalias !4292
  %i.aq = icmp eq i8 %lhsc1.i.i.us.us.i.i, 46
  br i1 %i.aq, label %.thread.us.us.i.i, label %bb.e

bb.d:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i
  %i.ar = icmp ne i64 %.promoted76.i.i, 0
  %or.cond.i.i.us.us.i.i = select i1 %i.ar, i1 true, i1 %i.ag
  %spec.select.i.us.us.i.i = zext i1 %or.cond.i.i.us.us.i.i to i64
  br label %.thread.us.us.i.i

bb.e:                                             ; preds = %bb.c, %bb.b, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4293
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i.i, i64 noundef %i.al)
          to label %.noexc24.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285

.noexc24.us.us.i.i:                               ; preds = %bb.e
  %i.as = load i64, ptr %i.d, align 8, !range !19, !noalias !4293, !noundef !17
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %.split95.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc24.us.us.i.i
  %i.au = load ptr, ptr %i.ah, align 8, !noalias !4293, !nonnull !17, !noundef !17
  %i.av = load i64, ptr %i.ai, align 8, !noalias !4293, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4293
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %.sroa.829.0.extract.trunc.us.us.i.i = trunc i64 %i.aw to i8
  %.sroa.829.1.extract.shift.us.us.i.i = lshr i64 %i.aw, 8
  %.sroa.829.1.extract.trunc.us.us.i.i = trunc nuw i64 %.sroa.829.1.extract.shift.us.us.i.i to i56
  br label %.thread.us.us.i.i

.thread.us.us.i.i:                                ; preds = %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.829.1.extract.trunc46.us.us.i.i = phi i56 [ %.sroa.829.1.extract.trunc.us.us.i.i, %bb.f ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sroa.829.0.extract.trunc45.us.us.i.i = phi i8 [ %.sroa.829.0.extract.trunc.us.us.i.i, %bb.f ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.0.0.ph44.us.us.i.i = phi i64 [ 3, %bb.f ], [ 2, %bb.b ], [ %spec.select.i.us.us.i.i, %bb.d ], [ 1, %bb.c ]
  %.sroa.11.0.ph43.us.us.i.i = phi i64 [ %i.av, %bb.f ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.c ]
  store i64 %.sroa.0.0.ph44.us.us.i.i, ptr %i.e, align 8, !noalias !4282
  store i8 %.sroa.829.0.extract.trunc45.us.us.i.i, ptr %.sroa.610.0..sroa_idx11.i.i, align 8, !noalias !4282
  store i56 %.sroa.829.1.extract.trunc46.us.us.i.i, ptr %.sroa.8.0..sroa_idx13.i.i, align 1, !noalias !4282
  store i64 %.sroa.11.0.ph43.us.us.i.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i, align 8, !noalias !4282
  %i.ax = invoke noundef i8 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments14push_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285

bb.g:                                             ; preds = %.thread.us.us.i.i
  %.not20.us.us.i.i = icmp eq i8 %i.ax, 2
  br i1 %.not20.us.us.i.i, label %.loopexit186, label %.split100.i.i

.split.i.i:                                       ; preds = %bb.u, %.split.i.preheader.i
  %.lcssa6884.i.i = phi i64 [ %.lcssa6882.i.i, %bb.u ], [ %.promoted81.i.i, %.split.i.preheader.i ] ; 3 uses
  %i.ay = phi i64 [ %i.bw, %bb.u ], [ %.promoted76.i.i, %.split.i.preheader.i ] ; 2 uses
  %.lcssa6072.i.i = phi i64 [ %.lcssa6071.i.i, %bb.u ], [ %.promoted70.i.i, %.split.i.preheader.i ] ; 4 uses
  %i.az = phi i8 [ %i.bv, %bb.u ], [ %.promoted69.i.i, %.split.i.preheader.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4287)
  call void @llvm.experimental.noalias.scope.decl(metadata !4288)
  call void @llvm.experimental.noalias.scope.decl(metadata !4289)
  call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.loopexit186, label %bb.h

bb.h:                                             ; preds = %.split.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4291)
  %i.bb = icmp ult i64 %i.u, %.lcssa6884.i.i
  br i1 %i.bb, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i:             ; preds = %bb.h
  call void @llvm.assume(i1 %i.z)
  %.pre.i.i.i.i.i.i.i = load i8, ptr %i.ab, align 1, !alias.scope !4294, !noalias !4282 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.k, %.lr.ph.split.preheader.i.i.i.i.i.i.i
  %i.bc = phi i64 [ %i.bq, %bb.k ], [ %.lcssa6884.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.bd = sub nuw i64 %i.u, %i.bc                 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.bc ; 2 uses
  %i.bf = icmp samesign ult i64 %i.bd, 16
  br i1 %i.bf, label %.preheader.i.i.i.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.bg = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef range(i64 0, -9223372036854775808) %i.bd)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.i
  %i.bh = extractvalue { i64, i64 } %i.bg, 0
  %i.bi = extractvalue { i64, i64 } %i.bg, 1
  %i.bj = trunc nuw i64 %i.bh to i1
  br i1 %i.bj, label %.loopexit.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.j
  %.sroa.04.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.j ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.04.011.i.i.i.i.i.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !4295, !noalias !4296, !noundef !17
  %i.bm = icmp eq i8 %i.bl, %.pre.i.i.i.i.i.i.i
  br i1 %i.bm, label %.loopexit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bn, %i.bd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %.noexc.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i, %i.bd
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add i64 %i.bc, 1
  %i.bq = add i64 %i.bp, %.sroa.5.0.i.i.i.i.i.i.i.i ; 8 uses
  %.not11.i.i.i.i.i.i.i = icmp ult i64 %i.bq, %i.y
  %.not12.i.i.i.i.i.i.i = icmp ugt i64 %i.bq, %.val1.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i.i, %.not12.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.loopexit.i.i.i.i.i.i.i
  %i.br = icmp ult i64 %i.u, %i.bq
  br i1 %i.br, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.bs = sub nuw i64 %i.bq, %i.y                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.bs
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bt, ptr nonnull %i.v, i64 %i.y), !noalias !4297
  %i.bu = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bu, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i, label %bb.k

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %bb.k, %.noexc.i.i, %.preheader.i.i.i.i.i.i.i.i, %bb.j, %bb.h
  %.lcssa6883.i.i = phi i64 [ %i.u, %bb.j ], [ %.lcssa6884.i.i, %bb.h ], [ %i.u, %.noexc.i.i ], [ %i.u, %.preheader.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.k ]
  store i8 1, ptr %i.q, align 1, !alias.scope !4298, !noalias !4282
  %.not.i3.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i, %.lcssa6072.i.i
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.ae, i1 true, i1 %.not.i3.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i, label %.loopexit186

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i: ; preds = %bb.l, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %.lcssa6882.i.i = phi i64 [ %.lcssa6883.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %i.bq, %bb.l ]
  %.lcssa6071.i.i = phi i64 [ %.lcssa6072.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %i.bq, %bb.l ]
  %i.bv = phi i8 [ 1, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ 0, %bb.l ]
  %.pn.i.i = phi i64 [ %.pre2.i.i.i.i.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %i.bs, %bb.l ]
  %.sroa.4.1.i.i.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa6072.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.lcssa6072.i.i ; 3 uses
  %i.bw = add i64 %i.ay, 1
  switch i64 %.sroa.4.1.i.i.i.i.i.i, label %bb.p [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.m:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i
  %i.bx = icmp ne i64 %i.ay, 0
  %or.cond.i.i.i.i = select i1 %i.bx, i1 true, i1 %i.ag
  %spec.select.i.i.i = zext i1 %or.cond.i.i.i.i to i64
  br label %.thread.i.i

bb.n:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i
  %lhsc1.i.i.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.i.i, align 1, !noalias !4292
  %i.by = icmp eq i8 %lhsc1.i.i.i.i, 46
  br i1 %i.by, label %.thread.i.i, label %bb.p

bb.o:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i
  %i.bz = load i16, ptr %.sroa.0.1.i.i.i.i.i.i, align 1
  %i.ca = icmp ne i16 %i.bz, 11822
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4293
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i)
          to label %.noexc24.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285

.noexc24.i.i:                                     ; preds = %bb.p
  %i.cd = load i64, ptr %i.d, align 8, !range !19, !noalias !4293, !noundef !17
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %.split95.i.i, label %bb.s

.split95.i.i:                                     ; preds = %.noexc24.i.i, %.noexc24.us.us.i.i
  %i.cf = load i64, ptr %i.ai, align 8, !noalias !4293, !noundef !17
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %.split95.i.i
  %i.ch = load ptr, ptr %i.ah, align 8, !noalias !4293, !nonnull !17, !noundef !17
  %lhsc.i.i.i.i = load i8, ptr %i.ch, align 1, !noalias !4292
  %i.ci = icmp eq i8 %lhsc.i.i.i.i, 92
  br i1 %i.ci, label %bb.t, label %bb.r, !prof !16

bb.r:                                             ; preds = %bb.q, %.split95.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #47
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285
end_hunk_0
