Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_ls.yara_x_ls.375707425faaecf2-cgu.11?download=true
inline.NumInlined: 2062
inline.NumDeleted: 975
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens15semantic_tokens:bb.a
  unreachable

bb.ao:                                            ; preds = %bb.ai
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ap:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens18SemanticTokensIterEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.h)
          to label %bb.ar unwind label %.thread53

.thread53:                                        ; preds = %bb.ap
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aq:                                            ; preds = %bb.a, %bb.v, %bb.at
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 -1, ptr %i.gc, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens13SemanticTokenENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens13SemanticTokenENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.au

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens13SemanticTokenENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens13SemanticTokenEECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.aq

bb.au:                                            ; preds = %bb.as
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens13SemanticTokenEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i26 unwind label %bb.av

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens13SemanticTokenEECs4KzxGwe94yc_9yara_x_ls.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %.body14 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i26: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens13SemanticTokenEECs4KzxGwe94yc_9yara_x_ls.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit30 unwind label %bb.ad

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit30: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i26
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.gi = load ptr, ptr %i.k, align 8, !alias.scope !1326, !nonnull !4, !noundef !4
  %i.gj = atomicrmw add ptr %i.gi, i64 -1 release, align 8, !noalias !1326
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit18.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit18

_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens16token_type_index.exit: ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i.i
  %i.gl = load i64, ptr %i.bu, align 8, !alias.scope !1327, !noundef !4 ; 3 uses
  %i.gm = load i64, ptr %i.i, align 8, !range !7, !alias.scope !1327, !noundef !4
  %i.gn = icmp eq i64 %i.gl, %i.gm
  br i1 %i.gn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens16token_type_index.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens13SemanticTokenE8grow_oneCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #36
          to label %bb.ay unwind label %bb.af

bb.ay:                                            ; preds = %_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features15semantic_tokens16token_type_index.exit, %bb.ax
  %i.go = load ptr, ptr %i.bt, align 8, !alias.scope !1327, !nonnull !4, !noundef !4
  %i.gp = getelementptr inbounds nuw [20 x i8], ptr %i.go, i64 %i.gl ; 5 uses
  store i32 %i.cf, ptr %i.gp, align 4
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store i32 %.sroa.0.0, ptr %.sroa.440.0..sroa_idx, align 4
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i32 %i.ce, ptr %.sroa.541.0..sroa_idx, align 4
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 %.sroa.02.010.i.lcssa.i, ptr %.sroa.642.0..sroa_idx, align 4
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i32 %i.cb, ptr %.sroa.743.0..sroa_idx, align 4
  %i.gq = add i64 %i.gl, 1
  store i64 %i.gq, ptr %i.bu, align 8, !alias.scope !1327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.az:                                            ; preds = %bb.ac, %.thread, %.body19, %.body
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread:                                          ; preds = %.body19, %.thread53
  %.pn49 = phi { ptr, i32 } [ %i.ga, %.thread53 ], [ %eh.lpad-body20, %.body19 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2w2nn1AeeqK_9lsp_types15semantic_tokens13SemanticTokenEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #34
          to label %.body unwind label %bb.az

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit: ; preds = %.body14, %bb.ac
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features6rename6rename(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [20 x i8], align 4                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [104 x i8], align 8               ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [88 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [112 x i8], align 8               ; 7 uses
  %i.r = alloca [64 x i8], align 8                ; 6 uses
  %i.s = alloca [144 x i8], align 8               ; 6 uses
  %i.t = alloca [144 x i8], align 8               ; 10 uses
  %i.u = alloca [88 x i8], align 8                ; 13 uses
  %i.v = alloca [112 x i8], align 8               ; 5 uses
  %i.w = alloca [112 x i8], align 8               ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [20 x i8], align 4                ; 5 uses
  %i.aa = alloca [16 x i8], align 4               ; 4 uses
  %i.ab = alloca [40 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [20 x i8], align 4               ; 5 uses
  %i.ah = alloca [16 x i8], align 4               ; 4 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 11 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [88 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [40 x i8], align 8               ; 7 uses
  %i.ar = alloca [20 x i8], align 4               ; 7 uses
  %i.as = alloca [8 x i8], align 8                ; 5 uses
  %i.at = alloca [32 x i8], align 8               ; 10 uses
  %i.au = alloca [24 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [40 x i8], align 8               ; 7 uses
  %i.ax = alloca [20 x i8], align 4               ; 7 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 16 uses
  %i.bb = alloca [24 x i8], align 8               ; 15 uses
  %i.bc = alloca [8 x i8], align 8                ; 6 uses
  %i.bd = alloca [48 x i8], align 8               ; 12 uses
  %i.be = alloca [8 x i8], align 8                ; 12 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [8 x i8], align 8                ; 7 uses
  store ptr %1, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storageNtB2_15DocumentStorage3get(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
          to label %bb.c unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit, %bb.f, %bb.b
  %.sroa.051.0 = phi i1 [ %.sroa.051.1, %bb.b ], [ %.sroa.051.2, %bb.f ], [ %.sroa.051.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit ] ; 2 uses
  %.sroa.048.0 = phi i8 [ %.sroa.048.1, %bb.b ], [ %.sroa.048.2, %bb.f ], [ %.sroa.048.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit ]
  %.pn116 = phi { ptr, i32 } [ %i.bj, %bb.b ], [ %.pn114, %bb.f ], [ %.pn114, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit ] ; 2 uses
  %i.bi = trunc nuw i8 %.sroa.048.0 to i1
  br i1 %i.bi, label %bb.gh, label %.body

bb.b:                                             ; preds = %bb.ga, %bb.fh, %bb.k, %bb.a
  %.sroa.051.1 = phi i1 [ %7, %bb.ga ], [ true, %bb.fh ], [ true, %bb.k ], [ true, %bb.a ]
  %.sroa.048.1 = phi i8 [ %.sroa.048.8, %bb.ga ], [ %.sroa.048.9, %bb.fh ], [ 1, %bb.k ], [ 1, %bb.a ]
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit

bb.c:                                             ; preds = %bb.a
  %i.bk = load ptr, ptr %i.bf, align 8, !noundef !4 ; 9 uses
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.5318.0.copyload = load ptr, ptr %.sroa.5318.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.5318.0.copyload, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.bm = invoke noundef ptr @_RNvNtNtCs4KzxGwe94yc_9yara_x_ls5utils13cst_traversal17ident_at_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl, i32 noundef %4, i32 noundef %5)
          to label %bb.h unwind label %bb.g       ; 8 uses

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  store ptr null, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit162

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit, %bb.n, %bb.g
  %.sroa.051.2 = phi i1 [ %.sroa.051.3, %bb.g ], [ %.sroa.051.4, %bb.n ], [ %.sroa.051.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit ] ; 2 uses
  %.sroa.048.2 = phi i8 [ %.sroa.048.3, %bb.g ], [ %.sroa.048.4, %bb.n ], [ %.sroa.048.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit ] ; 2 uses
  %.pn114 = phi { ptr, i32 } [ %i.bp, %bb.g ], [ %.pn108.pn.pn.pn.pn, %bb.n ], [ %.pn108.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit ] ; 2 uses
  %i.bn = atomicrmw add ptr %i.bk, i64 -4 release, align 8
  %i.bo = icmp eq i64 %i.bn, 6
  br i1 %i.bo, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit, !prof !9

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit
  invoke void @_RNvMs0_NtCsjUxepGb3YzM_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit unwind label %bb.ay

bb.g:                                             ; preds = %bb.fg, %bb.t, %bb.d
  %.sroa.051.3 = phi i1 [ %7, %bb.t ], [ true, %bb.fg ], [ true, %bb.d ]
  %.sroa.048.3 = phi i8 [ %.sroa.048.8, %bb.t ], [ %.sroa.048.9, %bb.fg ], [ 1, %bb.d ]
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit

bb.h:                                             ; preds = %bb.d
  %.not76 = icmp eq ptr %i.bm, null
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bm, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.bq = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @123)
          to label %bb.p unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.br = atomicrmw add ptr %i.bk, i64 -4 release, align 8
  %i.bs = icmp eq i64 %i.br, 6
  br i1 %i.bs, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit162, !prof !9

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs0_NtCsjUxepGb3YzM_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit162 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit162: ; preds = %bb.j, %bb.k, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit263
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit162
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit162
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit unwind label %.split424.thread

.split424.thread:                                 ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit183, %bb.o
  %.sroa.051.4 = phi i1 [ true, %bb.o ], [ %.sroa.051.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit183 ] ; 2 uses
  %.sroa.048.4 = phi i8 [ %.sroa.048.5, %bb.o ], [ %.sroa.048.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit183 ] ; 2 uses
  %.pn108.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %.pn108.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit183 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !4
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.bm) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.ay

bb.o:                                             ; preds = %bb.bf, %bb.i
  %.sroa.048.5 = phi i8 [ %.sroa.048.9, %bb.bf ], [ 1, %bb.i ]
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit

bb.p:                                             ; preds = %bb.i
  %i.ca = extractvalue { i64, i64 } %i.bq, 0
  %i.cb = extractvalue { i64, i64 } %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) @26, i64 32, i1 false)
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 %i.ca, ptr %.sroa.458.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 %i.cb, ptr %.sroa.559.0..sroa_idx, align 8
  %i.cc = invoke noundef i16 @_RNvMs5_NtCskKs5foxPL5A_5rowan3apiINtB5_11SyntaxTokenNtNtCsfF8zpZz1lvn_13yara_x_parser3cst4YARAE4kindCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be)
          to label %bb.r unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit183: ; preds = %.body254, %bb.fd, %bb.db, %bb.dc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit189, %bb.bc, %bb.q
  %.sroa.051.5 = phi i1 [ true, %bb.db ], [ %.sroa.051.6, %bb.q ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit189 ], [ true, %bb.bc ], [ true, %bb.dc ], [ %.sroa.051.12, %bb.fd ], [ %.sroa.051.12, %.body254 ]
  %.sroa.048.6 = phi i8 [ 1, %bb.db ], [ %.sroa.048.7, %bb.q ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit189 ], [ 1, %bb.bc ], [ 1, %bb.dc ], [ %.sroa.048.14, %bb.fd ], [ %.sroa.048.14, %.body254 ]
  %.pn108.pn.pn.pn = phi { ptr, i32 } [ %.pn103.pn342, %bb.db ], [ %i.cd, %bb.q ], [ %.pn108.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit189 ], [ %.pn108.pn.pn, %bb.bc ], [ %.pn103.pn342, %bb.dc ], [ %.pn88.pn, %bb.fd ], [ %.pn88.pn, %.body254 ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.ay

bb.q:                                             ; preds = %bb.fz, %bb.ff, %bb.cq, %bb.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst14NodesAndTokensNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit199, %bb.y, %bb.v, %bb.u, %bb.p
  %.sroa.051.6 = phi i1 [ true, %bb.be ], [ true, %bb.cq ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst14NodesAndTokensNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit199 ], [ true, %bb.y ], [ true, %bb.u ], [ true, %bb.ff ], [ false, %bb.fz ], [ true, %bb.v ], [ true, %bb.p ]
  %.sroa.048.7 = phi i8 [ 1, %bb.be ], [ 1, %bb.cq ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst14NodesAndTokensNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit199 ], [ 1, %bb.y ], [ 1, %bb.u ], [ %.sroa.048.13, %bb.ff ], [ %.sroa.048.13, %bb.fz ], [ 1, %bb.v ], [ 1, %bb.p ]
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit183

bb.r:                                             ; preds = %bb.p
  switch i16 %i.cc, label %bb.s [
    i16 83, label %bb.u
    i16 84, label %bb.v
    i16 85, label %bb.v
    i16 86, label %bb.v
    i16 87, label %bb.v
  ]

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit289, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit208, %bb.r
  %7 = phi i1 [ true, %bb.r ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit208 ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit289 ] ; 5 uses
  %.sroa.048.8 = phi i8 [ 1, %bb.r ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit208 ], [ %.sroa.048.13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit289 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !noundef !4
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit167

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.bm) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit167 unwind label %bb.g

bb.u:                                             ; preds = %bb.r
  %i.ci = invoke { ptr, ptr } @_RNvNtNtCs4KzxGwe94yc_9yara_x_ls5utils13cst_traversal16find_declaration(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be)
          to label %bb.w unwind label %bb.q       ; 2 uses

bb.v:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.cj = invoke noundef ptr @_RNvNtNtCs4KzxGwe94yc_9yara_x_ls5utils13cst_traversal21rule_containing_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be)
          to label %bb.dd unwind label %bb.q      ; 8 uses

bb.w:                                             ; preds = %bb.u
  %i.ck = extractvalue { ptr, ptr } %i.ci, 0      ; 6 uses
  %.not91 = icmp eq ptr %i.ck, null
  br i1 %.not91, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = extractvalue { ptr, ptr } %i.ci, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.ck, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  store ptr %i.cl, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 5 uses
  store i64 0, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvNtNtCs4KzxGwe94yc_9yara_x_ls5utils8position14token_to_range(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.aa unwind label %.thread332

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.co = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storageNtB2_15DocumentStorage21find_rule_occurrences(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be)
          to label %bb.bi unwind label %bb.q

.thread332:                                       ; preds = %bb.an, %._crit_edge392, %bb.ai, %bb.x, %bb.ab, %bb.ac
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread329

bb.z:                                             ; preds = %bb.az
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.aa:                                            ; preds = %bb.x
  %i.cq = load i32, ptr %i.ag, align 4, !range !12, !noundef !4
  %i.cr = trunc nuw i32 %i.cq to i1
  br i1 %i.cr, label %bb.ab, label %bb.ac, !prof !15

bb.ab:                                            ; preds = %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %i.cs, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.ae unwind label %.thread332

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #33
          to label %bb.ad unwind label %.thread332

bb.ad:                                            ; preds = %bb.dn, %bb.dl, %bb.cn, %bb.ar, %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.cu = load i64, ptr %i.cn, align 8, !alias.scope !1378, !noundef !4 ; 3 uses
  %i.cv = load i64, ptr %i.aj, align 8, !range !7, !alias.scope !1378, !noundef !4
  %i.cw = icmp eq i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs2w2nn1AeeqK_9lsp_types8TextEditE8grow_oneCs6m2LFPinx2P_9async_lsp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.ai unwind label %bb.ag, !noalias !1379

bb.ag:                                            ; preds = %bb.af
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types8TextEditECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ai) #34
          to label %.thread329 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %i.cz = load ptr, ptr %i.cm, align 8, !alias.scope !1378, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw [40 x i8], ptr %i.cz, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 40, i1 false)
  %i.db = add i64 %i.cu, 1
  store i64 %i.db, ptr %i.cn, align 8, !alias.scope !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvNtNtCs4KzxGwe94yc_9yara_x_ls5utils13cst_traversal23occurrences_in_with_for(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be)
          to label %bb.aj unwind label %.thread332

bb.aj:                                            ; preds = %bb.ai
  %i.dc = load i64, ptr %i.ae, align 8, !range !5, !noundef !4 ; 2 uses
  %.not106 = icmp eq i64 %i.dc, -1
  br i1 %.not106, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !noundef !4 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 1152921504606846976
  call void @llvm.assume(i1 %i.dh)
  %.idx393 = shl nuw nsw i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.de, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store ptr %i.de, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.dc, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.di, ptr %.sroa.638.0..sroa_idx, align 8
  %i.dj = icmp eq i64 %i.dg, 0
  br i1 %i.dj, label %._crit_edge392, label %.lr.ph391

.lr.ph391:                                        ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  br label %bb.am

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit175: ; preds = %.body176, %bb.ao, %bb.al
  %.pn108 = phi { ptr, i32 } [ %i.dm, %bb.al ], [ %eh.lpad-body177, %bb.ao ], [ %eh.lpad-body177, %.body176 ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBZ_9ImmutableEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.thread329 unwind label %bb.ay

bb.al:                                            ; preds = %bb.ax
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit175

bb.am:                                            ; preds = %.lr.ph391, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit180
  %i.dn = phi ptr [ %i.de, %.lr.ph391 ], [ %i.ej, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit180 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.do, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1380
  %i.dp = load ptr, ptr %i.dn, align 8, !noalias !1380, !nonnull !4, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.dp, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvNtNtCs4KzxGwe94yc_9yara_x_ls5utils8position14token_to_range(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp

._crit_edge392:                                   ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit180, %bb.ak
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBZ_9ImmutableEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtB1s_9ImmutableEEECs4KzxGwe94yc_9yara_x_ls.exit172 unwind label %.thread332

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtB1s_9ImmutableEEECs4KzxGwe94yc_9yara_x_ls.exit172: ; preds = %._crit_edge392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtB1s_9ImmutableEEECs4KzxGwe94yc_9yara_x_ls.exit172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(88) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2)
          to label %bb.az unwind label %.thread332

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aq, %bb.am, %bb.ar
  %lpad.loopexit.split-lp444 = landingpad { ptr, i32 }
          cleanup
  br label %.body176
end_hunk_0
begin_hunk_1_@_RNvNtNtCs4KzxGwe94yc_9yara_x_ls8features6rename6rename:bb.a
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types8TextEditECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aw) #34
          to label %.body234 unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.en:                                            ; preds = %bb.ek, %bb.ej
  %i.mt = load ptr, ptr %i.jf, align 8, !alias.scope !1392, !nonnull !4, !noundef !4
  %i.mu = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %i.mo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mu, ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i64 40, i1 false)
  %i.mv = add i64 %i.mo, 1
  store i64 %i.mv, ptr %i.jg, align 8, !alias.scope !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lj, i64 24 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !noundef !4
  %i.my = add i32 %i.mx, -1                       ; 2 uses
  store i32 %i.my, ptr %i.mw, align 4
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %bb.eo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit238

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.lj) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit238 unwind label %bb.dv

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit238: ; preds = %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.na = getelementptr inbounds nuw i8, ptr %i.kx, i64 24 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !noundef !4
  %i.nc = add i32 %i.nb, -1                       ; 2 uses
  store i32 %i.nc, ptr %i.na, align 4
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %.invoke, label %.sink.split

.invoke:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit238, %bb.dy
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.kx) #36
          to label %.sink.split unwind label %bb.dr

.sink.split:                                      ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit238, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.ep

bb.ep:                                            ; preds = %.sink.split, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RNvNtNtCs4KzxGwe94yc_9yara_x_ls5utils13cst_traversal14pattern_usages(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be)
          to label %bb.eq unwind label %bb.dr

bb.eq:                                            ; preds = %bb.ep
  %i.ne = load i64, ptr %i.au, align 8, !range !5, !noundef !4 ; 2 uses
  %.not83 = icmp eq i64 %i.ne, -1
  br i1 %.not83, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.nf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !noundef !4 ; 3 uses
  %i.nj = icmp ult i64 %i.ni, 1152921504606846976
  call void @llvm.assume(i1 %i.nj)
  %.idx = shl nuw nsw i64 %i.ni, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.ng, ptr %i.at, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  store ptr %i.ng, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.ne, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  store ptr %i.nk, ptr %.sroa.719.0..sroa_idx, align 8
  %i.nl = icmp eq i64 %i.ni, 0
  br i1 %i.nl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.er
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.nn = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  br label %bb.es

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit248: ; preds = %.loopexit.split-lp379.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body269, %bb.ev
  %.pn85 = phi { ptr, i32 } [ %eh.lpad-body270, %.body269 ], [ %eh.lpad-body270, %bb.ev ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp379.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBZ_9ImmutableEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %.body276 unwind label %bb.ay

.loopexit.split-lp379.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fs, %bb.ez
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit248

bb.es:                                            ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit273
  %i.no = phi ptr [ %i.ng, %.lr.ph ], [ %i.pt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit273 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.np, ptr %.sroa.517.0..sroa_idx, align 8, !alias.scope !1394
  %i.nq = load ptr, ptr %i.no, align 8, !noalias !1394, !nonnull !4, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.nq, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvNtNtCs4KzxGwe94yc_9yara_x_ls5utils8position14token_to_range(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as)
          to label %bb.ew unwind label %bb.eu

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit273, %bb.er
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBZ_9ImmutableEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtB1s_9ImmutableEEECs4KzxGwe94yc_9yara_x_ls.exit246 unwind label %bb.dr

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtB1s_9ImmutableEEECs4KzxGwe94yc_9yara_x_ls.exit246: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.et

bb.et:                                            ; preds = %bb.eq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtB1s_9ImmutableEEECs4KzxGwe94yc_9yara_x_ls.exit246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.am)
          to label %bb.ft unwind label %bb.dr

bb.eu:                                            ; preds = %bb.ex, %bb.es
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %.body269

.body269:                                         ; preds = %bb.fp, %bb.eu
  %eh.lpad-body270 = phi { ptr, i32 } [ %i.nr, %bb.eu ], [ %i.pj, %bb.fp ] ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 24 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !noundef !4
  %i.nu = add i32 %i.nt, -1                       ; 2 uses
  store i32 %i.nu, ptr %i.ns, align 4
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.ev, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit248

bb.ev:                                            ; preds = %.body269
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.nq) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit248 unwind label %bb.ay

bb.ew:                                            ; preds = %bb.es
  %i.nw = load i32, ptr %i.ar, align 4, !range !12, !noundef !4
  %i.nx = trunc nuw i32 %i.nw to i1
  br i1 %i.nx, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ny = load <2 x i32>, ptr %i.nm, align 4
  %.sroa.574.0.copyload = load i64, ptr %.sroa.574.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %bb.fn unwind label %bb.eu

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store ptr null, ptr %0, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 24 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !noundef !4
  %i.ob = add i32 %i.oa, -1                       ; 2 uses
  store i32 %i.ob, ptr %i.nz, align 4
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %bb.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit250

bb.ez:                                            ; preds = %bb.ey
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.nq) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit250 unwind label %.loopexit.split-lp379.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit250: ; preds = %bb.ey, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBZ_9ImmutableEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtB1s_9ImmutableEEECs4KzxGwe94yc_9yara_x_ls.exit252 unwind label %bb.dr

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtB1s_9ImmutableEEECs4KzxGwe94yc_9yara_x_ls.exit252: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.eg

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit233: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit233
  %i.od = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body254 unwind label %bb.fc

bb.fb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit233
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.fe

bb.fc:                                            ; preds = %bb.fa
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

.body254:                                         ; preds = %.split, %bb.fx, %bb.fe, %bb.fa, %.body230.thread, %.body230
  %.sroa.051.12 = phi i1 [ true, %.body230.thread ], [ false, %.body230 ], [ true, %bb.fa ], [ true, %bb.fe ], [ false, %bb.fx ], [ false, %.split ] ; 2 uses
  %.sroa.048.14 = phi i8 [ %.sroa.048.11369, %.body230.thread ], [ %.sroa.048.13, %.body230 ], [ %.sroa.048.13, %bb.fa ], [ %.sroa.048.13, %bb.fe ], [ %.sroa.048.13, %bb.fx ], [ %.sroa.048.13, %.split ] ; 2 uses
  %.pn88.pn = phi { ptr, i32 } [ %.pn88370, %.body230.thread ], [ %.pn85.pn, %.body230 ], [ %i.od, %bb.fa ], [ %i.oj, %bb.fe ], [ %i.pz, %bb.fx ], [ %lpad.thr_comm.split-lp419, %.split ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !noundef !4
  %i.oh = add i32 %i.og, -1                       ; 2 uses
  store i32 %i.oh, ptr %i.of, align 4
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.fd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit183

bb.fd:                                            ; preds = %.body254
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.cj) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit183 unwind label %bb.ay

bb.fe:                                            ; preds = %bb.fb
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body254

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.ok = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !noundef !4
  %i.om = add i32 %i.ol, -1                       ; 2 uses
  store i32 %i.om, ptr %i.ok, align 4
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %bb.ff, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit259

bb.ff:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEECs4KzxGwe94yc_9yara_x_ls.exit
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.cj) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit259 unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit187: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !noundef !4
  %i.oq = add i32 %i.op, -1                       ; 2 uses
  store i32 %i.oq, ptr %i.oo, align 4
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %bb.fg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit261

bb.fg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit187
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.bm) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit261 unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit261: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit187, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.os = atomicrmw add ptr %i.bk, i64 -4 release, align 8
  %i.ot = icmp eq i64 %i.os, 6
  br i1 %i.ot, label %bb.fh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit263, !prof !9

bb.fh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit261
  invoke void @_RNvMs0_NtCsjUxepGb3YzM_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit263 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit263: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit261, %bb.fh
  %i.ou = trunc nuw i8 %.sroa.048.9 to i1
  br i1 %i.ou, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit162, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit263
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.fi

bb.fi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit
  %i.ov = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %.body264 unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.fm

.body:                                            ; preds = %bb.gc, %bb.gh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit
  %.sroa.051.13 = phi i1 [ %.sroa.051.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit ], [ %.sroa.051.0, %bb.gh ], [ %7, %bb.gc ]
  %.pn118 = phi { ptr, i32 } [ %.pn116, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit ], [ %.pn116, %bb.gh ], [ %i.qi, %bb.gc ] ; 2 uses
  br i1 %.sroa.051.13, label %.body.thread, label %.body264

bb.fk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i293
  %i.ox = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %7, label %.body.thread, label %.body264

.body264:                                         ; preds = %bb.fk, %bb.gf, %bb.fi, %bb.fm, %.body.thread, %.body
  %.pn120 = phi { ptr, i32 } [ %.pn118, %.body ], [ %.pn118377, %.body.thread ], [ %i.ov, %bb.fi ], [ %i.pb, %bb.fm ], [ %i.qn, %bb.gf ], [ %i.ox, %bb.fk ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.oy = load ptr, ptr %i.bg, align 8, !alias.scope !1397, !nonnull !4, !noundef !4
  %i.oz = atomicrmw add ptr %i.oy, i64 -1 release, align 8, !noalias !1397
  %i.pa = icmp eq i64 %i.oz, 1
  br i1 %i.pa, label %bb.fl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit

bb.fl:                                            ; preds = %.body264
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit unwind label %bb.ay

bb.fm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i301, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %.body264

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.pc = load ptr, ptr %i.bg, align 8, !alias.scope !1400, !nonnull !4, !noundef !4
  %i.pd = atomicrmw add ptr %i.pc, i64 -1 release, align 8, !noalias !1400
  %i.pe = icmp eq i64 %i.pd, 1
  br i1 %i.pe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit268.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit268

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit268.sink.split: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit305
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg) #36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit268

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit268: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit268.sink.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit305, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit
  ret void

bb.fn:                                            ; preds = %bb.ex
  %i.pf = add <2 x i32> %i.ny, <i32 0, i32 1>
  store <2 x i32> %i.pf, ptr %i.nn, align 8
  store i64 %.sroa.574.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.pg = load i64, ptr %i.jg, align 8, !alias.scope !1401, !noundef !4 ; 3 uses
  %i.ph = load i64, ptr %i.bb, align 8, !range !7, !alias.scope !1401, !noundef !4
  %i.pi = icmp eq i64 %i.pg, %i.ph
  br i1 %i.pi, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs2w2nn1AeeqK_9lsp_types8TextEditE8grow_oneCs6m2LFPinx2P_9async_lsp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.fr unwind label %bb.fp, !noalias !1402

bb.fp:                                            ; preds = %bb.fo
  %i.pj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types8TextEditECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aq) #34
          to label %.body269 unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.pk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.fr:                                            ; preds = %bb.fo, %bb.fn
  %i.pl = load ptr, ptr %i.jf, align 8, !alias.scope !1401, !nonnull !4, !noundef !4
  %i.pm = getelementptr inbounds nuw [40 x i8], ptr %i.pl, i64 %i.pg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pm, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false)
  %i.pn = add i64 %i.pg, 1
  store i64 %i.pn, ptr %i.jg, align 8, !alias.scope !1401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.po = getelementptr inbounds nuw i8, ptr %i.nq, i64 24 ; 2 uses
  %i.pp = load i32, ptr %i.po, align 4, !noundef !4
  %i.pq = add i32 %i.pp, -1                       ; 2 uses
  store i32 %i.pq, ptr %i.po, align 4
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.fs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit273

bb.fs:                                            ; preds = %bb.fr
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.nq) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit273 unwind label %.loopexit.split-lp379.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit273: ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.ps = load ptr, ptr %.sroa.719.0..sroa_idx, align 8, !alias.scope !1403, !nonnull !4, !noundef !4
  %i.pt = load ptr, ptr %.sroa.517.0..sroa_idx, align 8, !alias.scope !1403, !nonnull !4, !noundef !4 ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.ps
  br i1 %i.pu, label %._crit_edge, label %bb.es

bb.ft:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.pv = load i64, ptr %i.ao, align 8, !range !5, !alias.scope !1404, !noundef !4
  %i.pw = icmp eq i64 %i.pv, -1
  br i1 %i.pw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit279, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEECs4KzxGwe94yc_9yara_x_ls.exit.i275 unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.px = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body276 unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.py = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEECs4KzxGwe94yc_9yara_x_ls.exit.i275: ; preds = %bb.fu
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs2w2nn1AeeqK_9lsp_types8TextEditENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit279 unwind label %bb.dr

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit279: ; preds = %bb.ft, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEECs4KzxGwe94yc_9yara_x_ls.exit.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i281 unwind label %bb.fx

bb.fx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit279
  %i.pz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body254 unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i281: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEECs4KzxGwe94yc_9yara_x_ls.exit279
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit287 unwind label %.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit287: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.qb = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !noundef !4
  %i.qd = add i32 %i.qc, -1                       ; 2 uses
  store i32 %i.qd, ptr %i.qb, align 4
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %bb.fz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit289

bb.fz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit287
  invoke void @_RNvNtCskKs5foxPL5A_5rowan6cursor4free(ptr noundef nonnull %i.cj) #36
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit289 unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst4NodeNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit289: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit287, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.s

.body230.thread:                                  ; preds = %.split.thread, %bb.eh, %.body230
  %.pn88370 = phi { ptr, i32 } [ %.pn85.pn, %.body230 ], [ %i.mk, %bb.eh ], [ %lpad.thr_comm418, %.split.thread ]
  %.sroa.048.11369 = phi i8 [ %.sroa.048.13, %.body230 ], [ %.sroa.048.13, %bb.eh ], [ %.sroa.048.12.ph, %.split.thread ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #34
          to label %.body254 unwind label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit167: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.qf = atomicrmw add ptr %i.bk, i64 -4 release, align 8
  %i.qg = icmp eq i64 %i.qf, 6
  br i1 %i.qg, label %bb.ga, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit291, !prof !9

bb.ga:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit167
  invoke void @_RNvMs0_NtCsjUxepGb3YzM_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit291 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit291: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfF8zpZz1lvn_13yara_x_parser3cst5TokenNtBE_9ImmutableEECs4KzxGwe94yc_9yara_x_ls.exit167, %bb.ga
  %i.qh = trunc nuw i8 %.sroa.048.8 to i1
  br i1 %i.qh, label %bb.gb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit298

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit298: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i293, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit291
  br i1 %7, label %bb.ge, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit305

bb.gb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit291
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i293 unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.qi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.qj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i293: ; preds = %bb.gb
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit298 unwind label %bb.fk

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit305: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i301, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit298
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.qk = load ptr, ptr %i.bg, align 8, !alias.scope !1407, !nonnull !4, !noundef !4
  %i.ql = atomicrmw add ptr %i.qk, i64 -1 release, align 8, !noalias !1407
  %i.qm = icmp eq i64 %i.ql, 1
  br i1 %i.qm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit268.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit268

bb.ge:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit298
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i301 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.qn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %.body264 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.qo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i301: ; preds = %bb.ge
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls.exit305 unwind label %bb.fm

bb.gh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjUxepGb3YzM_7dashmap6mapref3one3RefNtCs6SHYdBec2sV_3url3UrlNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents8document8DocumentEEB1N_.exit
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #34
          to label %.body unwind label %bb.ay

.body.thread:                                     ; preds = %.split424.thread, %bb.fk, %bb.l, %.body
  %.pn118377 = phi { ptr, i32 } [ %.pn118, %.body ], [ %i.bt, %bb.l ], [ %i.ox, %bb.fk ], [ %6, %.split424.thread ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6SHYdBec2sV_3url3UrlECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(88) %2) #34
          to label %.body264 unwind label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEEB1f_.exit: ; preds = %.body264, %bb.fl
  resume { ptr, i32 } %.pn120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRReINtB2_10EquivalentBq_E10equivalentCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %.val1, i64 8
  %.val3.i = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = icmp eq i64 %.val1.i, %.val3.i
  br i1 %i.c, label %bb.b, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRReNtB7_9PartialEq2eqCs4KzxGwe94yc_9yara_x_ls.exit

bb.b:                                             ; preds = %bb.a
  %.val2.i = load ptr, ptr %.val1, align 8, !nonnull !4, !noundef !4
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val2.i, i64 %.val1.i), !alias.scope !1411
  %i.d = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRReNtB7_9PartialEq2eqCs4KzxGwe94yc_9yara_x_ls.exit

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRReNtB7_9PartialEq2eqCs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownReINtB2_10EquivalentBq_E10equivalentCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsReNtB7_9PartialEq2eqCs4KzxGwe94yc_9yara_x_ls.exit

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1), !alias.scope !1415
  %i.d = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsReNtB7_9PartialEq2eqCs4KzxGwe94yc_9yara_x_ls.exit

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsReNtB7_9PartialEq2eqCs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentNtNtCsexYYUdYSQU6_5alloc6string6StringE10equivalentCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !1419
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtB7_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB13_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs4KzxGwe94yc_9yara_x_ls13configurations0_1__NtB7_22MetadataValidationRuleNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1n_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs4KzxGwe94yc_9yara_x_ls13configurations_1__NtB7_23FormattingConfigurationNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1n_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs7gfv9tzbXmh_6yara_x8compiler3wshINtB5_22WarningSuppressionHookNtNtCsfF8zpZz1lvn_13yara_x_parser6parser6ParserNCINvMs3_B7_NtB7_8Compiler10add_sourceNtB7_10SourceCodeE0ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(568) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i = alloca [14 x i8], align 2          ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.18 = alloca [14 x i8], align 2           ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1428
  call void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerNtNtB8_6parser6ParserENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1), !noalias !1429
  %i.d = load i64, ptr %i.a, align 8, !range !31, !noalias !1428, !noundef !4 ; 2 uses
  %.not49.i = icmp eq i64 %i.d, -1
  br i1 %.not49.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 481
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 482
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECs4KzxGwe94yc_9yara_x_ls.exit.i, %.lr.ph.i
  %i.h = phi i64 [ %i.d, %.lr.ph.i ], [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECs4KzxGwe94yc_9yara_x_ls.exit.i ] ; 4 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1428 ; 4 uses
  %.sroa.5.0.copyload.i = load i16, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1428 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.630.0..sroa_idx.i, i64 14, i1 false), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1428
  %i.i = icmp eq i64 %i.h, -9223372036854775806
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  switch i16 %.sroa.5.0.copyload.i, label %bb.g [
    i16 80, label %bb.d
    i16 81, label %bb.e
    i16 82, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.g, align 2, !range !10, !alias.scope !1427, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECs4KzxGwe94yc_9yara_x_ls.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 8, !range !10, !alias.scope !1427, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECs4KzxGwe94yc_9yara_x_ls.exit.i

bb.f:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.e, align 1, !range !10, !alias.scope !1427, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECs4KzxGwe94yc_9yara_x_ls.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1428
  call void @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3cst12error_mergerINtB4_11ErrorMergerNtNtB8_6parser6ParserENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1), !noalias !1429
  %i.p = load i64, ptr %i.a, align 8, !range !31, !noalias !1428, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.p, -1
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  %.sroa.14.0.ph = phi i16 [ 81, %bb.e ], [ 80, %bb.d ], [ %.sroa.5.0.copyload.i, %bb.b ], [ %.sroa.5.0.copyload.i, %bb.c ], [ 82, %bb.f ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.7.i, i64 14, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i64 %i.h, ptr %i.c, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i16 %.sroa.14.0.ph, ptr %.sroa.543.0..sroa_idx, align 8
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.644.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.18, i64 14, i1 false)
  %i.q = icmp slt i64 %i.h, 0
  %i.r = trunc i64 %.sroa.4.0.copyload.i to i32   ; 3 uses
  %i.s = lshr i64 %.sroa.4.0.copyload.i, 32       ; 3 uses
  %i.t = trunc nuw i64 %i.s to i32                ; 4 uses
  br i1 %i.q, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = and i64 %i.h, 9223372036854775807
  switch i64 %i.u, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %.thread
  ]

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventECs4KzxGwe94yc_9yara_x_ls.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = and i16 %.sroa.14.0.ph, 123
  %or.cond = icmp eq i16 %i.v, 90
end_hunk_1
