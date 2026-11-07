Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.05?download=true
inline.NumInlined: 3165
inline.NumDeleted: 1280
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_0INtB7_5FnMutTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB28_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEE8call_mutBU_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2769
  invoke void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1s_4find5checkBX_NCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00E0INtNtNtB1A_3ops12control_flow11ControlFlowBX_EEB34_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.bw unwind label %bb.bv, !noalias !2769

bb.bv:                                            ; preds = %bb.bu
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.ah, !noalias !2769

bb.bw:                                            ; preds = %bb.bu
  %i.di = load i8, ptr %i.d, align 4, !range !16, !noalias !2769, !noundef !10
  %.not83.i = icmp eq i8 %i.di, -1
  br i1 %.not83.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !2769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2769
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit129.i unwind label %bb.bt, !noalias !2769

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2769
  store i64 -2, ptr %0, align 8, !alias.scope !2769
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit131.i unwind label %bb.bt, !noalias !2769

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit131.i: ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2769
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECslLuZgPVt6hg_3ide(ptr nonnull %i.cv)
          to label %bb.bs unwind label %bb.g, !noalias !2769

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit129.i: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2769
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvXsm_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir9AssocItemNtB5_8TryToNav10try_to_nav(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.g, ptr noundef nonnull align 8 %.val)
          to label %bb.bz unwind label %bb.bt

bb.bz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2769
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECslLuZgPVt6hg_3ide(ptr nonnull %i.cv)
          to label %bb.ca unwind label %bb.g, !noalias !2769

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2769
  %i.dj = load i32, ptr %i.x, align 4, !noalias !2769, !noundef !10
  %i.dk = add i32 %i.dj, -1                       ; 2 uses
  store i32 %i.dk, ptr %i.x, align 4, !noalias !2769
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.cb, label %_RNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_0B5_.exit

bb.cb:                                            ; preds = %bb.ca
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val92.i) #39, !noalias !2769
  br label %_RNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_0B5_.exit

bb.cc:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2769
  br label %bb.bh

bb.cd:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2769
  br label %bb.aw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameECslLuZgPVt6hg_3ide.exit123.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2769
  br label %bb.af

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %.pn85.i

_RNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_0B5_.exit: ; preds = %bb.e, %bb.af, %bb.ag, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.217.sroa.3.sroa.7.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.sroa.3.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslLuZgPVt6hg_3ide19goto_implementation12impls_for_ty0INtB7_5FnMutTNtCs8Xq8PKFYOms_3hir4ImplEE8call_mutBU_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #2 !guid !2770 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.b = load ptr, ptr %1, align 8, !nonnull !10, !align !23, !noundef !10
  %.val = load ptr, ptr %i.b, align 8, !nonnull !10, !align !23, !noundef !10
  call void @_RNvXsh_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir4ImplNtB5_8TryToNav10try_to_nav(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noundef nonnull align 8 %.val)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslLuZgPVt6hg_3ide19goto_implementation15impls_for_trait0INtB7_5FnMutTNtCs8Xq8PKFYOms_3hir4ImplEE8call_mutBU_(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #2 !guid !2771 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.b = load ptr, ptr %1, align 8, !nonnull !10, !align !23, !noundef !10
  %.val = load ptr, ptr %i.b, align 8, !nonnull !10, !align !23, !noundef !10
  call void @_RNvXsh_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir4ImplNtB5_8TryToNav10try_to_nav(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noundef nonnull align 8 %.val)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslLuZgPVt6hg_3ide19goto_implementation19goto_implementations_0INtB7_5FnMutTRINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEE8call_mutBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !2789 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [408 x i8], align 8               ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [408 x i8], align 8               ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [408 x i8], align 8               ; 10 uses
  %i.k = alloca [12 x i8], align 4                ; 5 uses
  %i.l = alloca [12 x i8], align 4                ; 6 uses
  %i.m = alloca [12 x i8], align 4                ; 5 uses
  %i.n = alloca [12 x i8], align 4                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [408 x i8], align 8               ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [12 x i8], align 4                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [80 x i8], align 8                ; 6 uses
  %i.w = alloca [80 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [40 x i8], align 8                ; 13 uses
  %.sroa.11.i = alloca [39 x i8], align 1         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !nonnull !10, !align !23, !noundef !10 ; 3 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  %i.aa = getelementptr i8, ptr %.val, i64 16
  %.val.i = load ptr, ptr %i.aa, align 8, !noalias !2792, !noundef !10 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !2792, !noundef !10 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #41, !noalias !2792
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ae = add nuw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.ab, align 4, !noalias !2792
  %i.af = tail call { i64, ptr } @_RNvXsq_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtB5_8NameLikeNtB7_7AstNode4cast(ptr noundef nonnull %.val.i), !noalias !2792 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0      ; 3 uses
  %.not6.i = icmp eq i64 %i.ag, -1
  br i1 %.not6.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.z, align 8, !alias.scope !2791, !nonnull !10, !align !23, !noundef !10 ; 21 uses
  %i.ai = extractvalue { i64, ptr } %i.af, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2792
  store i64 %i.ag, ptr %i.x, align 8, !noalias !2793
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !noalias !2793
  switch i64 %i.ag, label %default.unreachable15.i.i [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.k
  ]

default.unreachable15.i.i:                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs2_NtCs6oosyzwIepl_6ide_db4defsNtB5_12NameRefClass8classify(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.v, ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %bb.i unwind label %bb.h, !noalias !2793

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvMs0_NtCs6oosyzwIepl_6ide_db4defsNtB5_9NameClass8classify(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.w, ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %bb.l unwind label %bb.h, !noalias !2793

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noalias !2793, !noundef !10
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !noalias !2793
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i, label %common.resume.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i: ; preds = %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ai) #39
          to label %common.resume.i unwind label %bb.n, !noalias !2793

bb.i:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.v, align 8, !range !44, !noalias !2793, !noundef !10
  %.not7.i.i = icmp eq i32 %i.ap, 3
  br i1 %.not7.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.0.0.copyload2.i = load i8, ptr %i.aq, align 8, !noalias !2792
  %.sroa.11.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.v, i64 41
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.m
  %.sroa.413.0..sroa_idx.i.sink = phi ptr [ %.sroa.413.0..sroa_idx.i, %bb.m ], [ %.sroa.11.0..sroa_idx4.i, %bb.j ]
  %.sroa.0.0.i.ph = phi i8 [ %.sroa.012.0.copyload.i, %bb.m ], [ %.sroa.0.0.copyload2.i, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.11.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.413.0..sroa_idx.i.sink, i64 39, i1 false), !noalias !2792
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.l, %bb.i, %bb.e
  %.sroa.0.0.i = phi i8 [ -1, %bb.e ], [ -1, %bb.i ], [ -1, %bb.l ], [ %.sroa.0.0.i.ph, %.sink.split ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !noalias !2793, !noundef !10
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !noalias !2793
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECslLuZgPVt6hg_3ide.exit.sink.split.i12.i.i, label %_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation19goto_implementations_00B7_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECslLuZgPVt6hg_3ide.exit.sink.split.i12.i.i: ; preds = %bb.k
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ai) #39, !noalias !2793
  br label %_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation19goto_implementations_00B7_.exit.i

bb.l:                                             ; preds = %bb.g
  %i.av = load i32, ptr %i.w, align 8, !range !45, !noalias !2793, !noundef !10
  %.off = add nsw i32 %i.av, -3
  %switch = icmp ult i32 %.off, -4
  br i1 %switch, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.012.0.copyload.i = load i8, ptr %i.aw, align 8, !noalias !2793
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  br label %.sink.split

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !2793
  unreachable

common.resume.i:                                  ; preds = %bb.aw, %bb.al, %bb.ah, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.ak, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i ], [ %i.dp, %bb.ah ], [ %i.ej, %bb.aw ], [ %i.du, %bb.al ]
  resume { ptr, i32 } %common.resume.op.i

_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation19goto_implementations_00B7_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECslLuZgPVt6hg_3ide.exit.sink.split.i12.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2792
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !2791, !nonnull !10, !align !23, !noundef !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !2791, !nonnull !10, !noundef !10
  %.not7.i = icmp eq i8 %.sroa.0.0.i, -1
  br i1 %.not7.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i, label %bb.o

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread.i: ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation19goto_implementations_00B7_.exit.i, %bb.d, %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !2790
  br label %_RNCNvNtCslLuZgPVt6hg_3ide19goto_implementation19goto_implementations_0B5_.exit

bb.o:                                             ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation19goto_implementations_00B7_.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.11.i, i64 39, i1 false), !noalias !2792
  store i8 %.sroa.0.0.i, ptr %i.y, align 8, !noalias !2792
  call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2792
  switch i8 %.sroa.0.0.i, label %bb.p [
    i8 5, label %bb.q
    i8 6, label %bb.r
    i8 8, label %bb.s
    i8 10, label %bb.t
    i8 11, label %bb.u
    i8 17, label %bb.v
  ]

bb.p:                                             ; preds = %bb.o
  store i64 -1, ptr %0, align 8, !alias.scope !2796
  br label %_RNCNCNvNtCslLuZgPVt6hg_3ide19goto_implementation19goto_implementations_0s_0B7_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2797
  %i.bd = load ptr, ptr %i.ah, align 8, !noalias !2797, !nonnull !10, !align !23, !noundef !10
  call void @_RNvXsT_Cs8Xq8PKFYOms_3hirNtB5_8FunctionNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bc, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @42), !noalias !2798
  %i.be = load i8, ptr %i.n, align 4, !range !16, !noalias !2797, !noundef !10
  %.not47.i.i = icmp eq i8 %i.be, -1
  br i1 %.not47.i.i, label %bb.x, label %bb.w

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2797
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.11.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 1 dereferenceable(12) %i.bg, i64 12, i1 false), !noalias !2792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2797
  %i.bh = load ptr, ptr %i.ah, align 8, !noalias !2797, !nonnull !10, !align !23, !noundef !10
  call void @_RNvMsi_Cs8Xq8PKFYOms_3hirNtB5_3Adt2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.bf, ptr noundef nonnull %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @42), !noalias !2798
  call void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl12all_for_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @42, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r), !noalias !2797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2797
  %i.bi = load i8, ptr %i.bb, align 1, !range !11, !noalias !2797, !noundef !10
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ak, label %bb.aj

bb.s:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !range !14, !alias.scope !2795, !noalias !2792, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !2795, !noalias !2792, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2797
  %i.bo = load ptr, ptr %i.ah, align 8, !noalias !2797, !nonnull !10, !align !23, !noundef !10
  call void @_RNvXsU_Cs8Xq8PKFYOms_3hirNtB5_5ConstNtB5_11AsAssocItem13as_assoc_item(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.l, i32 noundef %i.bl, i32 noundef %i.bn, ptr noundef nonnull %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @42), !noalias !2797
  %i.bp = load i8, ptr %i.l, align 4, !range !16, !noalias !2797, !noundef !10
  %.not.i9.i = icmp eq i8 %i.bp, -1
  br i1 %.not.i9.i, label %bb.an, label %bb.am

bb.t:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !range !14, !alias.scope !2795, !noalias !2792, !noundef !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !alias.scope !2795, !noalias !2792, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2799
  %i.bu = load ptr, ptr %i.ah, align 8, !noalias !2799, !nonnull !10, !align !23, !noundef !10
  call void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl13all_for_trait(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @42, i32 noundef range(i32 1, 0) %i.br, i32 noundef %i.bt), !noalias !2799
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !2799, !nonnull !10, !noundef !10 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noalias !2799, !noundef !10 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 768614336404564651
  call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.by
  %i.cb = load i64, ptr %i.i, align 8, !range !37, !noalias !2799, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2799
  store i64 0, ptr %i.j, align 8, !noalias !2799
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  store i64 0, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !noalias !2799
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  store ptr %i.bw, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !2799
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 376
  store ptr %i.bw, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !2799
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  store i64 %i.cb, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !2799
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 392
  store ptr %i.ca, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !2799
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 400
  store ptr %i.ah, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !2799
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtB2y_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENCNvNtB15_19goto_implementation15impls_for_trait0EEE9from_iterB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(408) %i.j), !noalias !2797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2799
  br label %bb.ag

bb.u:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !range !14, !alias.scope !2795, !noalias !2792, !noundef !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !alias.scope !2795, !noalias !2792, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2797
  %i.cg = load ptr, ptr %i.ah, align 8, !noalias !2797, !nonnull !10, !align !23, !noundef !10
  call void @_RNvMsF_Cs8Xq8PKFYOms_3hirNtB5_9TypeAlias2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, i32 noundef %i.cd, i32 noundef %i.cf, ptr noundef nonnull %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @42), !noalias !2797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2800
  %i.ch = load ptr, ptr %i.ah, align 8, !noalias !2800, !nonnull !10, !align !23, !noundef !10
  call void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl12all_for_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @42, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p), !noalias !2801
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !2800, !nonnull !10, !noundef !10 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !2800, !noundef !10 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 768614336404564651
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.cl
  %i.co = load i64, ptr %i.g, align 8, !range !37, !noalias !2800, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2800
  store i64 0, ptr %i.h, align 8, !noalias !2800
  %.sroa.58.0..sroa_idx.i54.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i64 0, ptr %.sroa.58.0..sroa_idx.i54.i.i, align 8, !noalias !2800
  %.sroa.7.0..sroa_idx.i55.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  store ptr %i.cj, ptr %.sroa.7.0..sroa_idx.i55.i.i, align 8, !noalias !2800
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i56.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  store ptr %i.cj, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i56.i.i, align 8, !noalias !2800
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i57.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  store i64 %i.co, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i57.i.i, align 8, !noalias !2800
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i58.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 392
  store ptr %i.cn, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i58.i.i, align 8, !noalias !2800
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i59.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  store ptr %i.ah, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i59.i.i, align 8, !noalias !2800
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtB2y_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENCNvNtB15_19goto_implementation12impls_for_ty0EEE9from_iterB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(408) %i.h), !noalias !2802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2797
  br label %bb.ag

bb.v:                                             ; preds = %bb.o
  %i.cp = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !range !2803, !alias.scope !2795, !noalias !2792, !noundef !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.cr = load i8, ptr %i.cq, align 2, !alias.scope !2795, !noalias !2792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2797
  %i.cs = load ptr, ptr %i.ah, align 8, !noalias !2797, !nonnull !10, !align !23, !noundef !10
  call void @_RNvMsJ_Cs8Xq8PKFYOms_3hirNtB5_11BuiltinType2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i8 noundef %i.cp, i8 %i.cr, ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @42), !noalias !2797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2804
  %i.ct = load ptr, ptr %i.ah, align 8, !noalias !2804, !nonnull !10, !align !23, !noundef !10
  call void @_RNvMs1j_Cs8Xq8PKFYOms_3hirNtB6_4Impl12all_for_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @42, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o), !noalias !2805
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !2804, !nonnull !10, !noundef !10 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !2804, !noundef !10 ; 2 uses
  %i.cy = icmp ult i64 %i.cx, 768614336404564651
  call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.cx
end_hunk_0
