Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.13?download=true
inline.NumInlined: 323
inline.NumDeleted: 181
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10dying_nextCs3f36owOmepS_6quiche:bb.a
    #dbg_value(i64 %.sroa.020.036.i.i, !11372, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11194)
    #dbg_value(i64 %.sroa.020.036.i.i, !11371, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11193)
    #dbg_value(i64 %.sroa.020.036.i.i, !11346, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11192)
    #dbg_value(i64 %.sroa.020.036.i.i, !11405, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11201)
    #dbg_value(i64 %.sroa.020.036.i.i, !11374, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11203)
    #dbg_value(i64 %.sroa.020.036.i.i, !11349, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11177)
    #dbg_value(ptr %i.s, !11374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11203)
    #dbg_value(ptr %i.s, !11349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11177)
    #dbg_value(ptr %i.s, !11365, !DIExpression(), !11204)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1072, !dbg !11552
    #dbg_value(ptr %i.t, !11423, !DIExpression(), !11207)
    #dbg_value(ptr %i.t, !11430, !DIExpression(), !11210)
    #dbg_value(ptr %i.t, !11434, !DIExpression(), !11213)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !11553, !noalias !11436, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.u, !11346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11192)
    #dbg_value(ptr %i.u, !11371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11193)
    #dbg_value(ptr %i.u, !11372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11194)
    #dbg_value(ptr %i.u, !11405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11201)
    #dbg_value(ptr %i.u, !11366, !DIExpression(), !11202)
    #dbg_value(i64 %.sroa.020.036.i.i, !11372, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11194)
    #dbg_value(i64 %.sroa.020.036.i.i, !11371, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11193)
    #dbg_value(i64 %.sroa.020.036.i.i, !11346, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11192)
    #dbg_value(i64 %.sroa.020.036.i.i, !11405, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11201)
    #dbg_value(i64 %.sroa.020.036.i.i, !11374, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11203)
    #dbg_value(i64 %.sroa.020.036.i.i, !11349, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11177)
    #dbg_value(ptr %i.u, !11374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11203)
    #dbg_value(ptr %i.u, !11349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11177)
    #dbg_value(ptr %i.u, !11365, !DIExpression(), !11204)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1072, !dbg !11552
    #dbg_value(ptr %i.v, !11423, !DIExpression(), !11207)
    #dbg_value(ptr %i.v, !11430, !DIExpression(), !11210)
    #dbg_value(ptr %i.v, !11434, !DIExpression(), !11213)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !11553, !noalias !11436, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.w, !11346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11192)
    #dbg_value(ptr %i.w, !11371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11193)
    #dbg_value(ptr %i.w, !11372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11194)
    #dbg_value(ptr %i.w, !11405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11201)
    #dbg_value(ptr %i.w, !11366, !DIExpression(), !11202)
    #dbg_value(i64 %.sroa.020.036.i.i, !11372, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11194)
    #dbg_value(i64 %.sroa.020.036.i.i, !11371, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11193)
    #dbg_value(i64 %.sroa.020.036.i.i, !11346, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11192)
    #dbg_value(i64 %.sroa.020.036.i.i, !11405, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11201)
    #dbg_value(i64 %.sroa.020.036.i.i, !11374, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11203)
    #dbg_value(i64 %.sroa.020.036.i.i, !11349, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11177)
    #dbg_value(ptr %i.w, !11374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11203)
    #dbg_value(ptr %i.w, !11349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11177)
    #dbg_value(ptr %i.w, !11365, !DIExpression(), !11204)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1072, !dbg !11552
    #dbg_value(ptr %i.x, !11423, !DIExpression(), !11207)
    #dbg_value(ptr %i.x, !11430, !DIExpression(), !11210)
    #dbg_value(ptr %i.x, !11434, !DIExpression(), !11213)
  %i.y = load ptr, ptr %i.x, align 8, !dbg !11553, !noalias !11436, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.y, !11346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11192)
    #dbg_value(ptr %i.y, !11371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11193)
    #dbg_value(ptr %i.y, !11372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11194)
    #dbg_value(ptr %i.y, !11405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11201)
    #dbg_value(ptr %i.y, !11366, !DIExpression(), !11202)
    #dbg_value(i64 %.sroa.020.036.i.i, !11372, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11194)
    #dbg_value(i64 %.sroa.020.036.i.i, !11371, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11193)
    #dbg_value(i64 %.sroa.020.036.i.i, !11346, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11192)
    #dbg_value(i64 %.sroa.020.036.i.i, !11405, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11201)
    #dbg_value(i64 %.sroa.020.036.i.i, !11374, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11203)
    #dbg_value(i64 %.sroa.020.036.i.i, !11349, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11177)
    #dbg_value(ptr %i.y, !11374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11203)
    #dbg_value(ptr %i.y, !11349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11177)
    #dbg_value(ptr %i.y, !11365, !DIExpression(), !11204)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1072, !dbg !11552
    #dbg_value(ptr %i.z, !11423, !DIExpression(), !11207)
    #dbg_value(ptr %i.z, !11430, !DIExpression(), !11210)
    #dbg_value(ptr %i.z, !11434, !DIExpression(), !11213)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !11553, !noalias !11436, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.aa, !11346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11192)
    #dbg_value(ptr %i.aa, !11371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11193)
    #dbg_value(ptr %i.aa, !11372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11194)
    #dbg_value(ptr %i.aa, !11405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11201)
    #dbg_value(ptr %i.aa, !11366, !DIExpression(), !11202)
    #dbg_value(i64 %.sroa.020.036.i.i, !11372, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11194)
    #dbg_value(i64 %.sroa.020.036.i.i, !11371, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11193)
    #dbg_value(i64 %.sroa.020.036.i.i, !11346, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11192)
    #dbg_value(i64 %.sroa.020.036.i.i, !11405, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11201)
    #dbg_value(i64 %.sroa.020.036.i.i, !11374, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11203)
    #dbg_value(i64 %.sroa.020.036.i.i, !11349, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11177)
    #dbg_value(ptr %i.aa, !11374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11203)
    #dbg_value(ptr %i.aa, !11349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11177)
    #dbg_value(ptr %i.aa, !11365, !DIExpression(), !11204)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1072, !dbg !11552
    #dbg_value(ptr %i.ab, !11423, !DIExpression(), !11207)
    #dbg_value(ptr %i.ab, !11430, !DIExpression(), !11210)
    #dbg_value(ptr %i.ab, !11434, !DIExpression(), !11213)
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !11553, !noalias !11436, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.ac, !11346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11192)
    #dbg_value(ptr %i.ac, !11371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11193)
    #dbg_value(ptr %i.ac, !11372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11194)
    #dbg_value(ptr %i.ac, !11405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11201)
    #dbg_value(ptr %i.ac, !11366, !DIExpression(), !11202)
  %i.ad = add i64 %.sroa.020.036.i.i, -8, !dbg !11554 ; 2 uses
    #dbg_value(i64 %i.ad, !11405, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11201)
    #dbg_value(i64 %i.ad, !11372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11194)
    #dbg_value(i64 %i.ad, !11371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11193)
    #dbg_value(i64 %i.ad, !11346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11192)
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !11551
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i, !dbg !11551

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11555, !noalias !11321
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !dbg !11555, !noalias !11321
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11555
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11555, !noalias !11321
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11555
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !11555, !noalias !11321
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !11556, !noalias !11321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11557, !noalias !11321
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !11558

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8, !dbg !11559
  br label %bb.j, !dbg !11560

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1, !dbg !11561
  store i64 %i.af, ptr %i.e, align 8, !dbg !11561
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11437), !dbg !11562
    #dbg_value(ptr %1, !11438, !DIExpression(), !11221)
    #dbg_declare(ptr poison, !11442, !DIExpression(), !11222)
    #dbg_declare(ptr poison, !11446, !DIExpression(), !11225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11452), !dbg !11563
    #dbg_value(ptr %1, !11453, !DIExpression(), !11236)
    #dbg_value(i64 0, !11470, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11246)
  %i.ag = load i64, ptr %1, align 8, !dbg !11564, !range !2020, !alias.scope !11479, !noundef !810
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !11565
  br i1 %i.ah, label %bb.f, label %.critedge.i, !dbg !11565

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11564 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !11564, !alias.scope !11479, !noundef !810
  %.not.i.i1 = icmp eq ptr %i.aj, null, !dbg !11564
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10init_frontCs3f36owOmepS_6quiche.exit.i, !dbg !11565

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !11467, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11247)
    #dbg_value(ptr %i.ai, !11481, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11250)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11566 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11566
  %i.am = load i64, ptr %i.al, align 8, !dbg !11566, !alias.scope !11479, !noundef !810 ; 5 uses
    #dbg_value(i64 %i.am, !11474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %i.am, !11475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %i.am, !11487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
  %.sroa.013.029.i.i = load ptr, ptr %i.ak, align 8, !dbg !11567, !alias.scope !11479, !nonnull !810, !noundef !810 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !11568
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader, !dbg !11568

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7, !dbg !11568       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !11568
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !11568

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.031.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.030.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !11487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !11477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11257)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !11470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !11477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11257)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !11470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !11471, !DIExpression(), !11258)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i.prol, i64 1072, !dbg !11569
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
  %i.ap = add i64 %.sroa.011.030.i.i.prol, -1, !dbg !11570 ; 2 uses
    #dbg_value(i64 %i.ap, !11474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %i.ap, !11475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %i.ap, !11487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11255)
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !dbg !11567, !noalias !11489, !nonnull !810, !noundef !810 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !11472, !DIExpression(), !11256)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !11568 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !11568
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !11568, !llvm.loop !11260

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.031.i.i.unr = phi ptr [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.030.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8, !dbg !11568
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !11568

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], !dbg !11567
  store i64 1, ptr %1, align 8, !dbg !11571, !alias.scope !11479
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !dbg !11571, !alias.scope !11479
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !dbg !11571, !alias.scope !11479
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10init_frontCs3f36owOmepS_6quiche.exit.i, !dbg !11572

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(i64 %.sroa.011.030.i.i, !11477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11257)
    #dbg_value(i64 %.sroa.011.030.i.i, !11470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr %.sroa.013.031.i.i, !11477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11257)
    #dbg_value(ptr %.sroa.013.031.i.i, !11470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %.sroa.013.031.i.i, !11471, !DIExpression(), !11258)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 1072, !dbg !11569
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
    #dbg_value(i64 %.sroa.011.030.i.i, !11474, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11475, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !11567, !noalias !11489, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i, !11472, !DIExpression(), !11256)
    #dbg_value(ptr %.sroa.013.0.i.i, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr %.sroa.013.0.i.i, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr %.sroa.013.0.i.i, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(i64 %.sroa.011.030.i.i, !11477, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11257)
    #dbg_value(i64 %.sroa.011.030.i.i, !11470, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i, !11477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11257)
    #dbg_value(ptr %.sroa.013.0.i.i, !11470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i, !11471, !DIExpression(), !11258)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 1072, !dbg !11569
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
    #dbg_value(i64 %.sroa.011.030.i.i, !11474, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11475, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !11567, !noalias !11489, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11472, !DIExpression(), !11256)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(i64 %.sroa.011.030.i.i, !11477, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11257)
    #dbg_value(i64 %.sroa.011.030.i.i, !11470, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11257)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11471, !DIExpression(), !11258)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 1072, !dbg !11569
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
    #dbg_value(i64 %.sroa.011.030.i.i, !11474, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11475, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !11567, !noalias !11489, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11472, !DIExpression(), !11256)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(i64 %.sroa.011.030.i.i, !11477, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11257)
    #dbg_value(i64 %.sroa.011.030.i.i, !11470, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11257)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11471, !DIExpression(), !11258)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 1072, !dbg !11569
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
    #dbg_value(i64 %.sroa.011.030.i.i, !11474, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11475, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !11567, !noalias !11489, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11472, !DIExpression(), !11256)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(i64 %.sroa.011.030.i.i, !11477, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11257)
    #dbg_value(i64 %.sroa.011.030.i.i, !11470, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11257)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11471, !DIExpression(), !11258)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 1072, !dbg !11569
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
    #dbg_value(i64 %.sroa.011.030.i.i, !11474, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11475, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !11567, !noalias !11489, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11472, !DIExpression(), !11256)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(i64 %.sroa.011.030.i.i, !11477, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11257)
    #dbg_value(i64 %.sroa.011.030.i.i, !11470, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11257)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11471, !DIExpression(), !11258)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 1072, !dbg !11569
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
    #dbg_value(i64 %.sroa.011.030.i.i, !11474, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11475, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !11567, !noalias !11489, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11472, !DIExpression(), !11256)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(i64 %.sroa.011.030.i.i, !11477, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11257)
    #dbg_value(i64 %.sroa.011.030.i.i, !11470, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11257)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11471, !DIExpression(), !11258)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 1072, !dbg !11569
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
    #dbg_value(i64 %.sroa.011.030.i.i, !11474, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11475, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !11567, !noalias !11489, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11472, !DIExpression(), !11256)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(i64 %.sroa.011.030.i.i, !11487, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11255)
    #dbg_value(i64 %.sroa.011.030.i.i, !11477, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11257)
    #dbg_value(i64 %.sroa.011.030.i.i, !11470, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11257)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11471, !DIExpression(), !11258)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 1072, !dbg !11569
    #dbg_value(ptr poison, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
    #dbg_value(ptr poison, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr poison, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr poison, !11472, !DIExpression(), !11256)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !11570 ; 2 uses
    #dbg_value(i64 %i.az, !11474, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11251)
    #dbg_value(i64 %i.az, !11475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11252)
    #dbg_value(i64 %i.az, !11487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11255)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !11567, !noalias !11489, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11472, !DIExpression(), !11256)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11255)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11252)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11474, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11251)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !11568
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !11568

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10init_frontCs3f36owOmepS_6quiche.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !11490, !DIExpression(), !11264)
    #dbg_value(ptr poison, !11444, !DIExpression(), !11265)
    #dbg_value(ptr poison, !11450, !DIExpression(), !11266)
    #dbg_declare(ptr %i.d, !11496, !DIExpression(), !11273)
    #dbg_value(ptr poison, !11501, !DIExpression(), !11274)
    #dbg_value(ptr poison, !11510, !DIExpression(), !11277)
    #dbg_declare(ptr poison, !11502, !DIExpression(), !11278)
    #dbg_declare(ptr poison, !11504, !DIExpression(), !11279)
    #dbg_declare(ptr %i.b, !11505, !DIExpression(), !11280)
    #dbg_declare(ptr %i.b, !11514, !DIExpression(), !11281)
    #dbg_declare(ptr poison, !11503, !DIExpression(), !11282)
    #dbg_declare(ptr poison, !11516, !DIExpression(), !11286)
    #dbg_declare(ptr poison, !11522, !DIExpression(), !11287)
    #dbg_declare(ptr %i.a, !11524, !DIExpression(), !11295)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11573, !noalias !11539
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !11574, !noalias !11540

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !11575, !noalias !11539, !noundef !810
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !11575
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !11576, !prof !1448

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18
          to label %.noexc2.i.i unwind label %bb.i, !dbg !11577, !noalias !11541

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !11577

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !11303)
    #dbg_value(ptr poison, !1679, !DIExpression(), !11305)
  tail call void @llvm.trap(), !dbg !11578
end_hunk_0
begin_hunk_1_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB18_EjE10dying_nextCs3f36owOmepS_6quiche:bb.a
    #dbg_value(i64 %.sroa.020.036.i.i, !11817, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11639)
    #dbg_value(i64 %.sroa.020.036.i.i, !11816, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11638)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11637)
    #dbg_value(i64 %.sroa.020.036.i.i, !11850, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11646)
    #dbg_value(i64 %.sroa.020.036.i.i, !11819, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11648)
    #dbg_value(i64 %.sroa.020.036.i.i, !11794, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11622)
    #dbg_value(ptr %i.s, !11819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11648)
    #dbg_value(ptr %i.s, !11794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11622)
    #dbg_value(ptr %i.s, !11810, !DIExpression(), !11649)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 808, !dbg !11997
    #dbg_value(ptr %i.t, !11868, !DIExpression(), !11652)
    #dbg_value(ptr %i.t, !11875, !DIExpression(), !11655)
    #dbg_value(ptr %i.t, !11879, !DIExpression(), !11658)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !11998, !noalias !11881, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.u, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11637)
    #dbg_value(ptr %i.u, !11816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11638)
    #dbg_value(ptr %i.u, !11817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11639)
    #dbg_value(ptr %i.u, !11850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11646)
    #dbg_value(ptr %i.u, !11811, !DIExpression(), !11647)
    #dbg_value(i64 %.sroa.020.036.i.i, !11817, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11639)
    #dbg_value(i64 %.sroa.020.036.i.i, !11816, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11638)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11637)
    #dbg_value(i64 %.sroa.020.036.i.i, !11850, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11646)
    #dbg_value(i64 %.sroa.020.036.i.i, !11819, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11648)
    #dbg_value(i64 %.sroa.020.036.i.i, !11794, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11622)
    #dbg_value(ptr %i.u, !11819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11648)
    #dbg_value(ptr %i.u, !11794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11622)
    #dbg_value(ptr %i.u, !11810, !DIExpression(), !11649)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 808, !dbg !11997
    #dbg_value(ptr %i.v, !11868, !DIExpression(), !11652)
    #dbg_value(ptr %i.v, !11875, !DIExpression(), !11655)
    #dbg_value(ptr %i.v, !11879, !DIExpression(), !11658)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !11998, !noalias !11881, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.w, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11637)
    #dbg_value(ptr %i.w, !11816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11638)
    #dbg_value(ptr %i.w, !11817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11639)
    #dbg_value(ptr %i.w, !11850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11646)
    #dbg_value(ptr %i.w, !11811, !DIExpression(), !11647)
    #dbg_value(i64 %.sroa.020.036.i.i, !11817, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11639)
    #dbg_value(i64 %.sroa.020.036.i.i, !11816, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11638)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11637)
    #dbg_value(i64 %.sroa.020.036.i.i, !11850, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11646)
    #dbg_value(i64 %.sroa.020.036.i.i, !11819, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11648)
    #dbg_value(i64 %.sroa.020.036.i.i, !11794, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11622)
    #dbg_value(ptr %i.w, !11819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11648)
    #dbg_value(ptr %i.w, !11794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11622)
    #dbg_value(ptr %i.w, !11810, !DIExpression(), !11649)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 808, !dbg !11997
    #dbg_value(ptr %i.x, !11868, !DIExpression(), !11652)
    #dbg_value(ptr %i.x, !11875, !DIExpression(), !11655)
    #dbg_value(ptr %i.x, !11879, !DIExpression(), !11658)
  %i.y = load ptr, ptr %i.x, align 8, !dbg !11998, !noalias !11881, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.y, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11637)
    #dbg_value(ptr %i.y, !11816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11638)
    #dbg_value(ptr %i.y, !11817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11639)
    #dbg_value(ptr %i.y, !11850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11646)
    #dbg_value(ptr %i.y, !11811, !DIExpression(), !11647)
    #dbg_value(i64 %.sroa.020.036.i.i, !11817, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11639)
    #dbg_value(i64 %.sroa.020.036.i.i, !11816, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11638)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11637)
    #dbg_value(i64 %.sroa.020.036.i.i, !11850, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11646)
    #dbg_value(i64 %.sroa.020.036.i.i, !11819, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11648)
    #dbg_value(i64 %.sroa.020.036.i.i, !11794, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11622)
    #dbg_value(ptr %i.y, !11819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11648)
    #dbg_value(ptr %i.y, !11794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11622)
    #dbg_value(ptr %i.y, !11810, !DIExpression(), !11649)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 808, !dbg !11997
    #dbg_value(ptr %i.z, !11868, !DIExpression(), !11652)
    #dbg_value(ptr %i.z, !11875, !DIExpression(), !11655)
    #dbg_value(ptr %i.z, !11879, !DIExpression(), !11658)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !11998, !noalias !11881, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.aa, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11637)
    #dbg_value(ptr %i.aa, !11816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11638)
    #dbg_value(ptr %i.aa, !11817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11639)
    #dbg_value(ptr %i.aa, !11850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11646)
    #dbg_value(ptr %i.aa, !11811, !DIExpression(), !11647)
    #dbg_value(i64 %.sroa.020.036.i.i, !11817, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11639)
    #dbg_value(i64 %.sroa.020.036.i.i, !11816, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11638)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11637)
    #dbg_value(i64 %.sroa.020.036.i.i, !11850, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11646)
    #dbg_value(i64 %.sroa.020.036.i.i, !11819, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11648)
    #dbg_value(i64 %.sroa.020.036.i.i, !11794, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11622)
    #dbg_value(ptr %i.aa, !11819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11648)
    #dbg_value(ptr %i.aa, !11794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11622)
    #dbg_value(ptr %i.aa, !11810, !DIExpression(), !11649)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 808, !dbg !11997
    #dbg_value(ptr %i.ab, !11868, !DIExpression(), !11652)
    #dbg_value(ptr %i.ab, !11875, !DIExpression(), !11655)
    #dbg_value(ptr %i.ab, !11879, !DIExpression(), !11658)
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !11998, !noalias !11881, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.ac, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11637)
    #dbg_value(ptr %i.ac, !11816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11638)
    #dbg_value(ptr %i.ac, !11817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11639)
    #dbg_value(ptr %i.ac, !11850, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11646)
    #dbg_value(ptr %i.ac, !11811, !DIExpression(), !11647)
  %i.ad = add i64 %.sroa.020.036.i.i, -8, !dbg !11999 ; 2 uses
    #dbg_value(i64 %i.ad, !11850, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11646)
    #dbg_value(i64 %i.ad, !11817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11639)
    #dbg_value(i64 %i.ad, !11816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11638)
    #dbg_value(i64 %i.ad, !11791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11637)
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !11996
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i, !dbg !11996

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12000, !noalias !11766
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !dbg !12000, !noalias !11766
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12000
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !12000, !noalias !11766
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12000
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !12000, !noalias !11766
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1T_EjNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !12001, !noalias !11766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12002, !noalias !11766
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1L_EjE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !12003

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1L_EjE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8, !dbg !12004
  br label %bb.j, !dbg !12005

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1, !dbg !12006
  store i64 %i.af, ptr %i.e, align 8, !dbg !12006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11882), !dbg !12007
    #dbg_value(ptr %1, !11883, !DIExpression(), !11666)
    #dbg_declare(ptr poison, !11887, !DIExpression(), !11667)
    #dbg_declare(ptr poison, !11891, !DIExpression(), !11670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11897), !dbg !12008
    #dbg_value(ptr %1, !11898, !DIExpression(), !11681)
    #dbg_value(i64 0, !11915, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11691)
  %i.ag = load i64, ptr %1, align 8, !dbg !12009, !range !2020, !alias.scope !11924, !noundef !810
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !12010
  br i1 %i.ah, label %bb.f, label %.critedge.i, !dbg !12010

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12009 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !12009, !alias.scope !11924, !noundef !810
  %.not.i.i1 = icmp eq ptr %i.aj, null, !dbg !12009
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1K_EjE10init_frontCs3f36owOmepS_6quiche.exit.i, !dbg !12010

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !11912, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11692)
    #dbg_value(ptr %i.ai, !11926, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11695)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12011 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12011
  %i.am = load i64, ptr %i.al, align 8, !dbg !12011, !alias.scope !11924, !noundef !810 ; 5 uses
    #dbg_value(i64 %i.am, !11919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %i.am, !11920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %i.am, !11932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
  %.sroa.013.029.i.i = load ptr, ptr %i.ak, align 8, !dbg !12012, !alias.scope !11924, !nonnull !810, !noundef !810 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !12013
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader, !dbg !12013

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7, !dbg !12013       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !12013
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !12013

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.031.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.030.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !11932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !11922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !11915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !11915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !11916, !DIExpression(), !11703)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i.prol, i64 808, !dbg !12014
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
  %i.ap = add i64 %.sroa.011.030.i.i.prol, -1, !dbg !12015 ; 2 uses
    #dbg_value(i64 %i.ap, !11919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %i.ap, !11920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %i.ap, !11932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11700)
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !dbg !12012, !noalias !11934, !nonnull !810, !noundef !810 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !11917, !DIExpression(), !11701)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !12013 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !12013
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !12013, !llvm.loop !11705

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.031.i.i.unr = phi ptr [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.030.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8, !dbg !12013
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !12013

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], !dbg !12012
  store i64 1, ptr %1, align 8, !dbg !12016, !alias.scope !11924
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !dbg !12016, !alias.scope !11924
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !dbg !12016, !alias.scope !11924
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1K_EjE10init_frontCs3f36owOmepS_6quiche.exit.i, !dbg !12017

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(i64 %.sroa.011.030.i.i, !11922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 %.sroa.011.030.i.i, !11915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(ptr %.sroa.013.031.i.i, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %.sroa.013.031.i.i, !11915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %.sroa.013.031.i.i, !11916, !DIExpression(), !11703)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 808, !dbg !12014
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
    #dbg_value(i64 %.sroa.011.030.i.i, !11919, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11920, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !12012, !noalias !11934, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i, !11917, !DIExpression(), !11701)
    #dbg_value(ptr %.sroa.013.0.i.i, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr %.sroa.013.0.i.i, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr %.sroa.013.0.i.i, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(i64 %.sroa.011.030.i.i, !11922, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 %.sroa.011.030.i.i, !11915, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %.sroa.013.0.i.i, !11915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i, !11916, !DIExpression(), !11703)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 808, !dbg !12014
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
    #dbg_value(i64 %.sroa.011.030.i.i, !11919, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11920, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !12012, !noalias !11934, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11917, !DIExpression(), !11701)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(i64 %.sroa.011.030.i.i, !11922, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 %.sroa.011.030.i.i, !11915, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11916, !DIExpression(), !11703)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 808, !dbg !12014
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
    #dbg_value(i64 %.sroa.011.030.i.i, !11919, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11920, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !12012, !noalias !11934, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11917, !DIExpression(), !11701)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(i64 %.sroa.011.030.i.i, !11922, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 %.sroa.011.030.i.i, !11915, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11916, !DIExpression(), !11703)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 808, !dbg !12014
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
    #dbg_value(i64 %.sroa.011.030.i.i, !11919, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11920, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !12012, !noalias !11934, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11917, !DIExpression(), !11701)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(i64 %.sroa.011.030.i.i, !11922, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 %.sroa.011.030.i.i, !11915, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11916, !DIExpression(), !11703)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 808, !dbg !12014
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
    #dbg_value(i64 %.sroa.011.030.i.i, !11919, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11920, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !12012, !noalias !11934, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11917, !DIExpression(), !11701)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(i64 %.sroa.011.030.i.i, !11922, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 %.sroa.011.030.i.i, !11915, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11916, !DIExpression(), !11703)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 808, !dbg !12014
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
    #dbg_value(i64 %.sroa.011.030.i.i, !11919, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11920, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !12012, !noalias !11934, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11917, !DIExpression(), !11701)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(i64 %.sroa.011.030.i.i, !11922, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 %.sroa.011.030.i.i, !11915, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11916, !DIExpression(), !11703)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 808, !dbg !12014
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
    #dbg_value(i64 %.sroa.011.030.i.i, !11919, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11920, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !12012, !noalias !11934, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11917, !DIExpression(), !11701)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(i64 %.sroa.011.030.i.i, !11932, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11700)
    #dbg_value(i64 %.sroa.011.030.i.i, !11922, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11702)
    #dbg_value(i64 %.sroa.011.030.i.i, !11915, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11702)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11916, !DIExpression(), !11703)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 808, !dbg !12014
    #dbg_value(ptr poison, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
    #dbg_value(ptr poison, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr poison, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr poison, !11917, !DIExpression(), !11701)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !12015 ; 2 uses
    #dbg_value(i64 %i.az, !11919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11696)
    #dbg_value(i64 %i.az, !11920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11697)
    #dbg_value(i64 %i.az, !11932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11700)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !12012, !noalias !11934, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11917, !DIExpression(), !11701)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11700)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11697)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11696)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !12013
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !12013

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1K_EjE10init_frontCs3f36owOmepS_6quiche.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !11935, !DIExpression(), !11709)
    #dbg_value(ptr poison, !11889, !DIExpression(), !11710)
    #dbg_value(ptr poison, !11895, !DIExpression(), !11711)
    #dbg_declare(ptr %i.d, !11941, !DIExpression(), !11718)
    #dbg_value(ptr poison, !11946, !DIExpression(), !11719)
    #dbg_value(ptr poison, !11955, !DIExpression(), !11722)
    #dbg_declare(ptr poison, !11947, !DIExpression(), !11723)
    #dbg_declare(ptr poison, !11949, !DIExpression(), !11724)
    #dbg_declare(ptr %i.b, !11950, !DIExpression(), !11725)
    #dbg_declare(ptr %i.b, !11959, !DIExpression(), !11726)
    #dbg_declare(ptr poison, !11948, !DIExpression(), !11727)
    #dbg_declare(ptr poison, !11961, !DIExpression(), !11731)
    #dbg_declare(ptr poison, !11967, !DIExpression(), !11732)
    #dbg_declare(ptr %i.a, !11969, !DIExpression(), !11740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12018, !noalias !11984
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1T_EjNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !12019, !noalias !11985

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1K_EjE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !12020, !noalias !11984, !noundef !810
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !12020
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1L_EjE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !12021, !prof !1448

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18
          to label %.noexc2.i.i unwind label %bb.i, !dbg !12022, !noalias !11986

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !12022

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1K_EjE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !11748)
    #dbg_value(ptr poison, !1679, !DIExpression(), !11750)
  tail call void @llvm.trap(), !dbg !12023
end_hunk_1
begin_hunk_2_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10dying_nextB1c_:bb.a
    #dbg_value(i64 %.sroa.020.036.i.i, !12261, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12084)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12083)
    #dbg_value(i64 %.sroa.020.036.i.i, !12236, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12082)
    #dbg_value(i64 %.sroa.020.036.i.i, !12294, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12091)
    #dbg_value(i64 %.sroa.020.036.i.i, !12263, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12093)
    #dbg_value(i64 %.sroa.020.036.i.i, !12239, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12067)
    #dbg_value(ptr %i.s, !12263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12093)
    #dbg_value(ptr %i.s, !12239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12067)
    #dbg_value(ptr %i.s, !12254, !DIExpression(), !12094)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 720, !dbg !12433
    #dbg_value(ptr %i.t, !12311, !DIExpression(), !12097)
    #dbg_value(ptr %i.t, !12313, !DIExpression(), !12100)
    #dbg_value(ptr %i.t, !12315, !DIExpression(), !12103)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12434, !noalias !12317, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.u, !12236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12082)
    #dbg_value(ptr %i.u, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12083)
    #dbg_value(ptr %i.u, !12261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12084)
    #dbg_value(ptr %i.u, !12294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12091)
    #dbg_value(ptr %i.u, !12255, !DIExpression(), !12092)
    #dbg_value(i64 %.sroa.020.036.i.i, !12261, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12084)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12083)
    #dbg_value(i64 %.sroa.020.036.i.i, !12236, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12082)
    #dbg_value(i64 %.sroa.020.036.i.i, !12294, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12091)
    #dbg_value(i64 %.sroa.020.036.i.i, !12263, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12093)
    #dbg_value(i64 %.sroa.020.036.i.i, !12239, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12067)
    #dbg_value(ptr %i.u, !12263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12093)
    #dbg_value(ptr %i.u, !12239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12067)
    #dbg_value(ptr %i.u, !12254, !DIExpression(), !12094)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 720, !dbg !12433
    #dbg_value(ptr %i.v, !12311, !DIExpression(), !12097)
    #dbg_value(ptr %i.v, !12313, !DIExpression(), !12100)
    #dbg_value(ptr %i.v, !12315, !DIExpression(), !12103)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !12434, !noalias !12317, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.w, !12236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12082)
    #dbg_value(ptr %i.w, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12083)
    #dbg_value(ptr %i.w, !12261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12084)
    #dbg_value(ptr %i.w, !12294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12091)
    #dbg_value(ptr %i.w, !12255, !DIExpression(), !12092)
    #dbg_value(i64 %.sroa.020.036.i.i, !12261, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12084)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12083)
    #dbg_value(i64 %.sroa.020.036.i.i, !12236, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12082)
    #dbg_value(i64 %.sroa.020.036.i.i, !12294, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12091)
    #dbg_value(i64 %.sroa.020.036.i.i, !12263, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12093)
    #dbg_value(i64 %.sroa.020.036.i.i, !12239, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12067)
    #dbg_value(ptr %i.w, !12263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12093)
    #dbg_value(ptr %i.w, !12239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12067)
    #dbg_value(ptr %i.w, !12254, !DIExpression(), !12094)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 720, !dbg !12433
    #dbg_value(ptr %i.x, !12311, !DIExpression(), !12097)
    #dbg_value(ptr %i.x, !12313, !DIExpression(), !12100)
    #dbg_value(ptr %i.x, !12315, !DIExpression(), !12103)
  %i.y = load ptr, ptr %i.x, align 8, !dbg !12434, !noalias !12317, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.y, !12236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12082)
    #dbg_value(ptr %i.y, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12083)
    #dbg_value(ptr %i.y, !12261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12084)
    #dbg_value(ptr %i.y, !12294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12091)
    #dbg_value(ptr %i.y, !12255, !DIExpression(), !12092)
    #dbg_value(i64 %.sroa.020.036.i.i, !12261, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12084)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12083)
    #dbg_value(i64 %.sroa.020.036.i.i, !12236, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12082)
    #dbg_value(i64 %.sroa.020.036.i.i, !12294, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12091)
    #dbg_value(i64 %.sroa.020.036.i.i, !12263, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12093)
    #dbg_value(i64 %.sroa.020.036.i.i, !12239, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12067)
    #dbg_value(ptr %i.y, !12263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12093)
    #dbg_value(ptr %i.y, !12239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12067)
    #dbg_value(ptr %i.y, !12254, !DIExpression(), !12094)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 720, !dbg !12433
    #dbg_value(ptr %i.z, !12311, !DIExpression(), !12097)
    #dbg_value(ptr %i.z, !12313, !DIExpression(), !12100)
    #dbg_value(ptr %i.z, !12315, !DIExpression(), !12103)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !12434, !noalias !12317, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.aa, !12236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12082)
    #dbg_value(ptr %i.aa, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12083)
    #dbg_value(ptr %i.aa, !12261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12084)
    #dbg_value(ptr %i.aa, !12294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12091)
    #dbg_value(ptr %i.aa, !12255, !DIExpression(), !12092)
    #dbg_value(i64 %.sroa.020.036.i.i, !12261, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12084)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12083)
    #dbg_value(i64 %.sroa.020.036.i.i, !12236, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12082)
    #dbg_value(i64 %.sroa.020.036.i.i, !12294, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12091)
    #dbg_value(i64 %.sroa.020.036.i.i, !12263, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12093)
    #dbg_value(i64 %.sroa.020.036.i.i, !12239, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12067)
    #dbg_value(ptr %i.aa, !12263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12093)
    #dbg_value(ptr %i.aa, !12239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12067)
    #dbg_value(ptr %i.aa, !12254, !DIExpression(), !12094)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 720, !dbg !12433
    #dbg_value(ptr %i.ab, !12311, !DIExpression(), !12097)
    #dbg_value(ptr %i.ab, !12313, !DIExpression(), !12100)
    #dbg_value(ptr %i.ab, !12315, !DIExpression(), !12103)
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !12434, !noalias !12317, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.ac, !12236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12082)
    #dbg_value(ptr %i.ac, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12083)
    #dbg_value(ptr %i.ac, !12261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12084)
    #dbg_value(ptr %i.ac, !12294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12091)
    #dbg_value(ptr %i.ac, !12255, !DIExpression(), !12092)
  %i.ad = add i64 %.sroa.020.036.i.i, -8, !dbg !12435 ; 2 uses
    #dbg_value(i64 %i.ad, !12294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12091)
    #dbg_value(i64 %i.ad, !12261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12084)
    #dbg_value(i64 %i.ad, !12260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12083)
    #dbg_value(i64 %i.ad, !12236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12082)
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !12432
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i, !dbg !12432

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12436, !noalias !12211
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !dbg !12436, !noalias !12211
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12436
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !12436, !noalias !12211
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12436
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !12436, !noalias !12211
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB1X_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !12437, !noalias !12211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12438, !noalias !12211
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE16deallocating_endNtNtBc_5alloc6GlobalEB1P_.exit, !dbg !12439

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE16deallocating_endNtNtBc_5alloc6GlobalEB1P_.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8, !dbg !12440
  br label %bb.j, !dbg !12441

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1, !dbg !12442
  store i64 %i.af, ptr %i.e, align 8, !dbg !12442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12318), !dbg !12443
    #dbg_value(ptr %1, !12319, !DIExpression(), !12111)
    #dbg_declare(ptr poison, !12323, !DIExpression(), !12112)
    #dbg_declare(ptr poison, !12327, !DIExpression(), !12115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12333), !dbg !12444
    #dbg_value(ptr %1, !12334, !DIExpression(), !12126)
    #dbg_value(i64 0, !12351, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12136)
  %i.ag = load i64, ptr %1, align 8, !dbg !12445, !range !2020, !alias.scope !12360, !noundef !810
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !12446
  br i1 %i.ah, label %bb.f, label %.critedge.i, !dbg !12446

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12445 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !12445, !alias.scope !12360, !noundef !810
  %.not.i.i1 = icmp eq ptr %i.aj, null, !dbg !12445
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10init_frontB1O_.exit.i, !dbg !12446

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !12348, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12137)
    #dbg_value(ptr %i.ai, !12362, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12140)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12447 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12447
  %i.am = load i64, ptr %i.al, align 8, !dbg !12447, !alias.scope !12360, !noundef !810 ; 5 uses
    #dbg_value(i64 %i.am, !12355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %i.am, !12356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %i.am, !12368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
  %.sroa.013.029.i.i = load ptr, ptr %i.ak, align 8, !dbg !12448, !alias.scope !12360, !nonnull !810, !noundef !810 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !12449
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader, !dbg !12449

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7, !dbg !12449       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !12449
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !12449

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.031.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.030.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !12368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !12358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12147)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !12351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12136)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !12358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !12351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12136)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !12352, !DIExpression(), !12148)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i.prol, i64 720, !dbg !12450
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
  %i.ap = add i64 %.sroa.011.030.i.i.prol, -1, !dbg !12451 ; 2 uses
    #dbg_value(i64 %i.ap, !12355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %i.ap, !12356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %i.ap, !12368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12145)
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !dbg !12448, !noalias !12370, !nonnull !810, !noundef !810 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !12353, !DIExpression(), !12146)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !12449 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !12449
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !12449, !llvm.loop !12150

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.031.i.i.unr = phi ptr [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.030.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8, !dbg !12449
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !12449

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], !dbg !12448
  store i64 1, ptr %1, align 8, !dbg !12452, !alias.scope !12360
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !dbg !12452, !alias.scope !12360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !dbg !12452, !alias.scope !12360
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10init_frontB1O_.exit.i, !dbg !12453

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(i64 %.sroa.011.030.i.i, !12358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12147)
    #dbg_value(i64 %.sroa.011.030.i.i, !12351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12136)
    #dbg_value(ptr %.sroa.013.031.i.i, !12358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %.sroa.013.031.i.i, !12351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12136)
    #dbg_value(ptr %.sroa.013.031.i.i, !12352, !DIExpression(), !12148)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 720, !dbg !12450
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
    #dbg_value(i64 %.sroa.011.030.i.i, !12355, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12356, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !12448, !noalias !12370, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i, !12353, !DIExpression(), !12146)
    #dbg_value(ptr %.sroa.013.0.i.i, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr %.sroa.013.0.i.i, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr %.sroa.013.0.i.i, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(i64 %.sroa.011.030.i.i, !12358, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12147)
    #dbg_value(i64 %.sroa.011.030.i.i, !12351, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i, !12358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %.sroa.013.0.i.i, !12351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i, !12352, !DIExpression(), !12148)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 720, !dbg !12450
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
    #dbg_value(i64 %.sroa.011.030.i.i, !12355, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12356, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !12448, !noalias !12370, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12353, !DIExpression(), !12146)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(i64 %.sroa.011.030.i.i, !12358, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12147)
    #dbg_value(i64 %.sroa.011.030.i.i, !12351, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12352, !DIExpression(), !12148)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 720, !dbg !12450
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
    #dbg_value(i64 %.sroa.011.030.i.i, !12355, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12356, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !12448, !noalias !12370, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12353, !DIExpression(), !12146)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(i64 %.sroa.011.030.i.i, !12358, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12147)
    #dbg_value(i64 %.sroa.011.030.i.i, !12351, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12352, !DIExpression(), !12148)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 720, !dbg !12450
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
    #dbg_value(i64 %.sroa.011.030.i.i, !12355, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12356, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !12448, !noalias !12370, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12353, !DIExpression(), !12146)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(i64 %.sroa.011.030.i.i, !12358, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12147)
    #dbg_value(i64 %.sroa.011.030.i.i, !12351, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12352, !DIExpression(), !12148)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 720, !dbg !12450
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
    #dbg_value(i64 %.sroa.011.030.i.i, !12355, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12356, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !12448, !noalias !12370, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12353, !DIExpression(), !12146)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(i64 %.sroa.011.030.i.i, !12358, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12147)
    #dbg_value(i64 %.sroa.011.030.i.i, !12351, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12352, !DIExpression(), !12148)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 720, !dbg !12450
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
    #dbg_value(i64 %.sroa.011.030.i.i, !12355, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12356, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !12448, !noalias !12370, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12353, !DIExpression(), !12146)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(i64 %.sroa.011.030.i.i, !12358, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12147)
    #dbg_value(i64 %.sroa.011.030.i.i, !12351, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12352, !DIExpression(), !12148)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 720, !dbg !12450
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
    #dbg_value(i64 %.sroa.011.030.i.i, !12355, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12356, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !12448, !noalias !12370, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12353, !DIExpression(), !12146)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(i64 %.sroa.011.030.i.i, !12368, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12145)
    #dbg_value(i64 %.sroa.011.030.i.i, !12358, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12147)
    #dbg_value(i64 %.sroa.011.030.i.i, !12351, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12136)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12352, !DIExpression(), !12148)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 720, !dbg !12450
    #dbg_value(ptr poison, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
    #dbg_value(ptr poison, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr poison, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr poison, !12353, !DIExpression(), !12146)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !12451 ; 2 uses
    #dbg_value(i64 %i.az, !12355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12141)
    #dbg_value(i64 %i.az, !12356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12142)
    #dbg_value(i64 %i.az, !12368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12145)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !12448, !noalias !12370, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12353, !DIExpression(), !12146)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12145)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12142)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12141)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !12449
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !12449

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10init_frontB1O_.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !12371, !DIExpression(), !12154)
    #dbg_value(ptr poison, !12325, !DIExpression(), !12155)
    #dbg_value(ptr poison, !12331, !DIExpression(), !12156)
    #dbg_declare(ptr %i.d, !12377, !DIExpression(), !12163)
    #dbg_value(ptr poison, !12382, !DIExpression(), !12164)
    #dbg_value(ptr poison, !12391, !DIExpression(), !12167)
    #dbg_declare(ptr poison, !12383, !DIExpression(), !12168)
    #dbg_declare(ptr poison, !12385, !DIExpression(), !12169)
    #dbg_declare(ptr %i.b, !12386, !DIExpression(), !12170)
    #dbg_declare(ptr %i.b, !12395, !DIExpression(), !12171)
    #dbg_declare(ptr poison, !12384, !DIExpression(), !12172)
    #dbg_declare(ptr poison, !12397, !DIExpression(), !12176)
    #dbg_declare(ptr poison, !12403, !DIExpression(), !12177)
    #dbg_declare(ptr %i.a, !12405, !DIExpression(), !12185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12454, !noalias !12420
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB1X_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !12455, !noalias !12421

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10init_frontB1O_.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !12456, !noalias !12420, !noundef !810
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !12456
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1P_.exit, !dbg !12457, !prof !1448

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18
          to label %.noexc2.i.i unwind label %bb.i, !dbg !12458, !noalias !12422

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !12458

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10init_frontB1O_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !12193)
    #dbg_value(ptr poison, !1679, !DIExpression(), !12195)
  tail call void @llvm.trap(), !dbg !12459
end_hunk_2
begin_hunk_3_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCs3f36owOmepS_6quiche:bb.a
    #dbg_value(i64 %.sroa.020.036.i.i, !12684, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12516)
    #dbg_value(i64 %.sroa.020.036.i.i, !12683, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12515)
    #dbg_value(i64 %.sroa.020.036.i.i, !12659, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12514)
    #dbg_value(i64 %.sroa.020.036.i.i, !12717, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12523)
    #dbg_value(i64 %.sroa.020.036.i.i, !12686, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12525)
    #dbg_value(i64 %.sroa.020.036.i.i, !12662, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12499)
    #dbg_value(ptr %i.s, !12686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(ptr %i.s, !12662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12499)
    #dbg_value(ptr %i.s, !12677, !DIExpression(), !12526)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192, !dbg !12856
    #dbg_value(ptr %i.t, !12734, !DIExpression(), !12529)
    #dbg_value(ptr %i.t, !12736, !DIExpression(), !12532)
    #dbg_value(ptr %i.t, !12738, !DIExpression(), !12535)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12857, !noalias !12740, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.u, !12659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12514)
    #dbg_value(ptr %i.u, !12683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12515)
    #dbg_value(ptr %i.u, !12684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12516)
    #dbg_value(ptr %i.u, !12717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12523)
    #dbg_value(ptr %i.u, !12678, !DIExpression(), !12524)
    #dbg_value(i64 %.sroa.020.036.i.i, !12684, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12516)
    #dbg_value(i64 %.sroa.020.036.i.i, !12683, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12515)
    #dbg_value(i64 %.sroa.020.036.i.i, !12659, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12514)
    #dbg_value(i64 %.sroa.020.036.i.i, !12717, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12523)
    #dbg_value(i64 %.sroa.020.036.i.i, !12686, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12525)
    #dbg_value(i64 %.sroa.020.036.i.i, !12662, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12499)
    #dbg_value(ptr %i.u, !12686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(ptr %i.u, !12662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12499)
    #dbg_value(ptr %i.u, !12677, !DIExpression(), !12526)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192, !dbg !12856
    #dbg_value(ptr %i.v, !12734, !DIExpression(), !12529)
    #dbg_value(ptr %i.v, !12736, !DIExpression(), !12532)
    #dbg_value(ptr %i.v, !12738, !DIExpression(), !12535)
  %i.w = load ptr, ptr %i.v, align 8, !dbg !12857, !noalias !12740, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.w, !12659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12514)
    #dbg_value(ptr %i.w, !12683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12515)
    #dbg_value(ptr %i.w, !12684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12516)
    #dbg_value(ptr %i.w, !12717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12523)
    #dbg_value(ptr %i.w, !12678, !DIExpression(), !12524)
    #dbg_value(i64 %.sroa.020.036.i.i, !12684, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12516)
    #dbg_value(i64 %.sroa.020.036.i.i, !12683, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12515)
    #dbg_value(i64 %.sroa.020.036.i.i, !12659, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12514)
    #dbg_value(i64 %.sroa.020.036.i.i, !12717, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12523)
    #dbg_value(i64 %.sroa.020.036.i.i, !12686, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12525)
    #dbg_value(i64 %.sroa.020.036.i.i, !12662, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12499)
    #dbg_value(ptr %i.w, !12686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(ptr %i.w, !12662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12499)
    #dbg_value(ptr %i.w, !12677, !DIExpression(), !12526)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192, !dbg !12856
    #dbg_value(ptr %i.x, !12734, !DIExpression(), !12529)
    #dbg_value(ptr %i.x, !12736, !DIExpression(), !12532)
    #dbg_value(ptr %i.x, !12738, !DIExpression(), !12535)
  %i.y = load ptr, ptr %i.x, align 8, !dbg !12857, !noalias !12740, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.y, !12659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12514)
    #dbg_value(ptr %i.y, !12683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12515)
    #dbg_value(ptr %i.y, !12684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12516)
    #dbg_value(ptr %i.y, !12717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12523)
    #dbg_value(ptr %i.y, !12678, !DIExpression(), !12524)
    #dbg_value(i64 %.sroa.020.036.i.i, !12684, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12516)
    #dbg_value(i64 %.sroa.020.036.i.i, !12683, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12515)
    #dbg_value(i64 %.sroa.020.036.i.i, !12659, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12514)
    #dbg_value(i64 %.sroa.020.036.i.i, !12717, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12523)
    #dbg_value(i64 %.sroa.020.036.i.i, !12686, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12525)
    #dbg_value(i64 %.sroa.020.036.i.i, !12662, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12499)
    #dbg_value(ptr %i.y, !12686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(ptr %i.y, !12662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12499)
    #dbg_value(ptr %i.y, !12677, !DIExpression(), !12526)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192, !dbg !12856
    #dbg_value(ptr %i.z, !12734, !DIExpression(), !12529)
    #dbg_value(ptr %i.z, !12736, !DIExpression(), !12532)
    #dbg_value(ptr %i.z, !12738, !DIExpression(), !12535)
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !12857, !noalias !12740, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.aa, !12659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12514)
    #dbg_value(ptr %i.aa, !12683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12515)
    #dbg_value(ptr %i.aa, !12684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12516)
    #dbg_value(ptr %i.aa, !12717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12523)
    #dbg_value(ptr %i.aa, !12678, !DIExpression(), !12524)
    #dbg_value(i64 %.sroa.020.036.i.i, !12684, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12516)
    #dbg_value(i64 %.sroa.020.036.i.i, !12683, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12515)
    #dbg_value(i64 %.sroa.020.036.i.i, !12659, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12514)
    #dbg_value(i64 %.sroa.020.036.i.i, !12717, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12523)
    #dbg_value(i64 %.sroa.020.036.i.i, !12686, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12525)
    #dbg_value(i64 %.sroa.020.036.i.i, !12662, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12499)
    #dbg_value(ptr %i.aa, !12686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12525)
    #dbg_value(ptr %i.aa, !12662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12499)
    #dbg_value(ptr %i.aa, !12677, !DIExpression(), !12526)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192, !dbg !12856
    #dbg_value(ptr %i.ab, !12734, !DIExpression(), !12529)
    #dbg_value(ptr %i.ab, !12736, !DIExpression(), !12532)
    #dbg_value(ptr %i.ab, !12738, !DIExpression(), !12535)
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !12857, !noalias !12740, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.ac, !12659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12514)
    #dbg_value(ptr %i.ac, !12683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12515)
    #dbg_value(ptr %i.ac, !12684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12516)
    #dbg_value(ptr %i.ac, !12717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12523)
    #dbg_value(ptr %i.ac, !12678, !DIExpression(), !12524)
  %i.ad = add i64 %.sroa.020.036.i.i, -8, !dbg !12858 ; 2 uses
    #dbg_value(i64 %i.ad, !12717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12523)
    #dbg_value(i64 %i.ad, !12684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12516)
    #dbg_value(i64 %i.ad, !12683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12515)
    #dbg_value(i64 %i.ad, !12659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12514)
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !12855
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i, !dbg !12855

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12859, !noalias !12634
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !dbg !12859, !noalias !12634
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12859
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !12859, !noalias !12634
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12859
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !12859, !noalias !12634
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyyNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !12860, !noalias !12634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12861, !noalias !12634
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !12862

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8, !dbg !12863
  br label %bb.j, !dbg !12864

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1, !dbg !12865
  store i64 %i.af, ptr %i.e, align 8, !dbg !12865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12741), !dbg !12866
    #dbg_value(ptr %1, !12742, !DIExpression(), !12543)
    #dbg_declare(ptr poison, !12746, !DIExpression(), !12544)
    #dbg_declare(ptr poison, !12750, !DIExpression(), !12547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12756), !dbg !12867
    #dbg_value(ptr %1, !12757, !DIExpression(), !12558)
    #dbg_value(i64 0, !12774, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12568)
  %i.ag = load i64, ptr %1, align 8, !dbg !12868, !range !2020, !alias.scope !12783, !noundef !810
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !12869
  br i1 %i.ah, label %bb.f, label %.critedge.i, !dbg !12869

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12868 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !12868, !alias.scope !12783, !noundef !810
  %.not.i.i1 = icmp eq ptr %i.aj, null, !dbg !12868
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCs3f36owOmepS_6quiche.exit.i, !dbg !12869

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !12771, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12569)
    #dbg_value(ptr %i.ai, !12785, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12572)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12870 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12870
  %i.am = load i64, ptr %i.al, align 8, !dbg !12870, !alias.scope !12783, !noundef !810 ; 5 uses
    #dbg_value(i64 %i.am, !12778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %i.am, !12779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %i.am, !12791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
  %.sroa.013.029.i.i = load ptr, ptr %i.ak, align 8, !dbg !12871, !alias.scope !12783, !nonnull !810, !noundef !810 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !12872
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader, !dbg !12872

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7, !dbg !12872       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !12872
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !12872

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.031.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.030.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !12791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !12781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 %.sroa.011.030.i.i.prol, !12774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !12781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !12774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %.sroa.013.031.i.i.prol, !12775, !DIExpression(), !12580)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i.prol, i64 192, !dbg !12873
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
  %i.ap = add i64 %.sroa.011.030.i.i.prol, -1, !dbg !12874 ; 2 uses
    #dbg_value(i64 %i.ap, !12778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %i.ap, !12779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %i.ap, !12791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12577)
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !dbg !12871, !noalias !12793, !nonnull !810, !noundef !810 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !12776, !DIExpression(), !12578)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr %.sroa.013.0.i.i.prol, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !12872 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !12872
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !12872, !llvm.loop !12582

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.031.i.i.unr = phi ptr [ %.sroa.013.029.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.030.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8, !dbg !12872
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !12872

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.029.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], !dbg !12871
  store i64 1, ptr %1, align 8, !dbg !12875, !alias.scope !12783
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !dbg !12875, !alias.scope !12783
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !dbg !12875, !alias.scope !12783
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCs3f36owOmepS_6quiche.exit.i, !dbg !12876

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(i64 %.sroa.011.030.i.i, !12781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 %.sroa.011.030.i.i, !12774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %.sroa.013.031.i.i, !12781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr %.sroa.013.031.i.i, !12774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %.sroa.013.031.i.i, !12775, !DIExpression(), !12580)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 192, !dbg !12873
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
    #dbg_value(i64 %.sroa.011.030.i.i, !12778, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12779, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !12871, !noalias !12793, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i, !12776, !DIExpression(), !12578)
    #dbg_value(ptr %.sroa.013.0.i.i, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr %.sroa.013.0.i.i, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr %.sroa.013.0.i.i, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(i64 %.sroa.011.030.i.i, !12781, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 %.sroa.011.030.i.i, !12774, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i, !12781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr %.sroa.013.0.i.i, !12774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i, !12775, !DIExpression(), !12580)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 192, !dbg !12873
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
    #dbg_value(i64 %.sroa.011.030.i.i, !12778, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12779, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !12871, !noalias !12793, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12776, !DIExpression(), !12578)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(i64 %.sroa.011.030.i.i, !12781, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 %.sroa.011.030.i.i, !12774, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12775, !DIExpression(), !12580)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 192, !dbg !12873
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
    #dbg_value(i64 %.sroa.011.030.i.i, !12778, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12779, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !12871, !noalias !12793, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12776, !DIExpression(), !12578)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(i64 %.sroa.011.030.i.i, !12781, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 %.sroa.011.030.i.i, !12774, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12775, !DIExpression(), !12580)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 192, !dbg !12873
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
    #dbg_value(i64 %.sroa.011.030.i.i, !12778, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12779, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !12871, !noalias !12793, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12776, !DIExpression(), !12578)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(i64 %.sroa.011.030.i.i, !12781, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 %.sroa.011.030.i.i, !12774, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12775, !DIExpression(), !12580)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 192, !dbg !12873
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
    #dbg_value(i64 %.sroa.011.030.i.i, !12778, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12779, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !12871, !noalias !12793, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12776, !DIExpression(), !12578)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(i64 %.sroa.011.030.i.i, !12781, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 %.sroa.011.030.i.i, !12774, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12775, !DIExpression(), !12580)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 192, !dbg !12873
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
    #dbg_value(i64 %.sroa.011.030.i.i, !12778, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12779, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !12871, !noalias !12793, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12776, !DIExpression(), !12578)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(i64 %.sroa.011.030.i.i, !12781, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 %.sroa.011.030.i.i, !12774, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12775, !DIExpression(), !12580)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 192, !dbg !12873
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
    #dbg_value(i64 %.sroa.011.030.i.i, !12778, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12779, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !12871, !noalias !12793, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12776, !DIExpression(), !12578)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(i64 %.sroa.011.030.i.i, !12791, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12577)
    #dbg_value(i64 %.sroa.011.030.i.i, !12781, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 %.sroa.011.030.i.i, !12774, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12775, !DIExpression(), !12580)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 192, !dbg !12873
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr poison, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr poison, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr poison, !12776, !DIExpression(), !12578)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !12874 ; 2 uses
    #dbg_value(i64 %i.az, !12778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %i.az, !12779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12574)
    #dbg_value(i64 %i.az, !12791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12577)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !12871, !noalias !12793, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12776, !DIExpression(), !12578)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12577)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12574)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !12872
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !12872

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCs3f36owOmepS_6quiche.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !12794, !DIExpression(), !12586)
    #dbg_value(ptr poison, !12748, !DIExpression(), !12587)
    #dbg_value(ptr poison, !12754, !DIExpression(), !12588)
    #dbg_declare(ptr %i.d, !12800, !DIExpression(), !12595)
    #dbg_value(ptr poison, !12805, !DIExpression(), !12596)
    #dbg_value(ptr poison, !12814, !DIExpression(), !12599)
    #dbg_declare(ptr poison, !12806, !DIExpression(), !12600)
    #dbg_declare(ptr poison, !12808, !DIExpression(), !12601)
    #dbg_declare(ptr %i.b, !12809, !DIExpression(), !12602)
    #dbg_declare(ptr %i.b, !12818, !DIExpression(), !12603)
    #dbg_declare(ptr poison, !12807, !DIExpression(), !12604)
    #dbg_declare(ptr poison, !12820, !DIExpression(), !12608)
    #dbg_declare(ptr poison, !12826, !DIExpression(), !12609)
    #dbg_declare(ptr %i.a, !12828, !DIExpression(), !12617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12877, !noalias !12843
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyyNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !12878, !noalias !12844

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !12879, !noalias !12843, !noundef !810
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !12879
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !12880, !prof !1448

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18
          to label %.noexc2.i.i unwind label %bb.i, !dbg !12881, !noalias !12845

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !12881

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !12625)
    #dbg_value(ptr poison, !1679, !DIExpression(), !12627)
  tail call void @llvm.trap(), !dbg !12882
end_hunk_3
begin_hunk_4_@_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs3f36owOmepS_6quiche:bb.a
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21), !dbg !14001
  %i.cy = xor i64 %i.cx, %i.cu, !dbg !13994       ; 2 uses
    #dbg_value(i64 %i.ct, !1230, !DIExpression(), !13809)
    #dbg_value(i64 %i.ct, !1238, !DIExpression(), !13829)
    #dbg_value(i32 32, !1240, !DIExpression(), !13829)
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32), !dbg !14002 ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.0.0.copyload, !dbg !14003 ; 2 uses
  %i.db = add nuw i64 %.sroa.0.129, 8, !dbg !14004 ; 3 uses
    #dbg_value(i64 %i.db, !13838, !DIExpression(), !13856)
    #dbg_value(i64 %i.db, !13835, !DIExpression(), !13855)
  %i.dc = icmp ult i64 %i.db, %i.ah, !dbg !13938
  br i1 %i.dc, label %bb.q, label %._crit_edge, !dbg !13938

bb.r:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit28, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit28 ], !dbg !13855
  store i64 %storemerge, ptr %i.d, align 8, !dbg !13855
  ret void, !dbg !13959
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsA_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 !dbg !14005 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
    #dbg_value(ptr %1, !14013, !DIExpression(), !14015)
    #dbg_declare(ptr %i.a, !14016, !DIExpression(), !14027)
    #dbg_declare(ptr %i.a, !14024, !DIExpression(), !14028)
    #dbg_declare(ptr %i.a, !14029, !DIExpression(), !14034)
    #dbg_declare(ptr poison, !14023, !DIExpression(), !14035)
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %1), !dbg !14036
  %i.b = load ptr, ptr %i.a, align 8, !dbg !14037, !noundef !810
  %.not = icmp eq ptr %i.b, null, !dbg !14037
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14038

bb.b:                                             ; preds = %bb.a
  %i.c = call { i64, i64 } @_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingyyNtB1m_14LeafOrInternalENtB1m_2KVE12into_key_valCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !14039 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !14039
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !14039
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14040
  store i64 %i.d, ptr %i.f, align 8, !dbg !14040
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14040
  store i64 %i.e, ptr %i.g, align 8, !dbg !14040
  br label %bb.c, !dbg !14041

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !14042
  store i64 %.sink, ptr %0, align 8, !dbg !14042
  ret void, !dbg !14043
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsX_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_5RangeyyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 !dbg !14044 {
bb.a:
    #dbg_value(ptr %0, !14050, !DIExpression(), !14052)
    #dbg_value(ptr %0, !14053, !DIExpression(), !14059)
  %i.a = tail call { ptr, ptr } @_RINvMs3_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutyyE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRyB2y_EECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0), !dbg !14060
  ret { ptr, ptr } %i.a, !dbg !14061
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs_NtCs3f36owOmepS_6quiche9range_bufNtB4_8RangeBufNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefB6_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 !dbg !14062 {
bb.a:
    #dbg_value(ptr %0, !14077, !DIExpression(), !14079)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14131
  %.val6 = load i64, ptr %i.a, align 8, !dbg !14131, !noundef !810 ; 2 uses
    #dbg_value(ptr poison, !14080, !DIExpression(), !14065)
    #dbg_value(ptr poison, !14085, !DIExpression(), !14068)
    #dbg_value(ptr poison, !14090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14104)
    #dbg_value(ptr poison, !14105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14113)
    #dbg_value(ptr poison, !14114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14121)
    #dbg_value(i64 %.val6, !14090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14104)
    #dbg_value(i64 %.val6, !14105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14113)
    #dbg_value(i64 %.val6, !14114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14121)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14132
  %i.c = load i64, ptr %i.b, align 8, !dbg !14132, !noundef !810 ; 4 uses
    #dbg_value(i64 %i.c, !14099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14104)
    #dbg_value(i64 %i.c, !14109, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14113)
    #dbg_value(i64 %i.c, !14122, !DIExpression(), !14128)
    #dbg_value(i64 %i.c, !14117, !DIExpression(), !14121)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14133
  %i.e = load i64, ptr %i.d, align 8, !dbg !14133, !noundef !810
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14134
  %i.g = load i64, ptr %i.f, align 8, !dbg !14134, !noundef !810
  %i.h = add i64 %i.g, %i.e, !dbg !14133          ; 4 uses
    #dbg_value(i64 %i.h, !14099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14104)
    #dbg_value(i64 %i.h, !14109, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14113)
    #dbg_value(i64 %i.h, !14125, !DIExpression(), !14128)
  %i.i = icmp ult i64 %i.h, %i.c, !dbg !14135
    #dbg_value(!DIArgList(i64 %i.h, i64 %i.c), !14110, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !14113)
    #dbg_value(!DIArgList(i64 %i.h, i64 %i.c), !14118, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !14121)
  %.not = icmp ugt i64 %i.h, %.val6
  %or.cond = or i1 %i.i, %.not, !dbg !14135
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !14135, !prof !14130

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !dbg !14131, !nonnull !810, !noundef !810
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !14136
  %i.k = sub nuw i64 %i.h, %i.c, !dbg !14137
    #dbg_value(i64 %i.k, !14110, !DIExpression(), !14113)
    #dbg_value(i64 %i.k, !14118, !DIExpression(), !14121)
    #dbg_value(ptr %i.j, !14090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14104)
    #dbg_value(ptr %i.j, !14105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14113)
    #dbg_value(ptr %i.j, !14114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14121)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !14138
  %i.m = insertvalue { ptr, i64 } poison, ptr %i.l, 0, !dbg !14139
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %i.k, 1, !dbg !14139
  ret { ptr, i64 } %i.n, !dbg !14139

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.c, i64 noundef %i.h, i64 noundef %.val6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #18, !dbg !14140
  unreachable, !dbg !14140
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14141 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !14211, !DIExpression(), !14213)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14275 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !14275, !noundef !810 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !14275
  br i1 %i.f, label %bb.e, label %bb.b, !dbg !14275

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1, !dbg !14276
  store i64 %i.g, ptr %i.d, align 8, !dbg !14276
    #dbg_value(ptr %0, !14214, !DIExpression(), !14218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14219), !dbg !14277
    #dbg_value(ptr %0, !14220, !DIExpression(), !14149)
    #dbg_value(i64 0, !14225, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14159)
  %i.h = load i64, ptr %0, align 8, !dbg !14278, !range !2020, !alias.scope !14219, !noundef !810
  %i.i = trunc nuw i64 %i.h to i1, !dbg !14279
  br i1 %i.i, label %bb.c, label %.critedge, !dbg !14279

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14278 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !14278, !alias.scope !14219, !noundef !810
  %.not.i = icmp eq ptr %i.k, null, !dbg !14278
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCs3f36owOmepS_6quiche.exit, !dbg !14279

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !14222, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !14160)
    #dbg_value(ptr %i.j, !14235, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14163)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14280 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14280
  %i.n = load i64, ptr %i.m, align 8, !dbg !14280, !alias.scope !14219, !noundef !810 ; 5 uses
    #dbg_value(i64 %i.n, !14230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %i.n, !14231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %i.n, !14237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
  %.sroa.013.029.i = load ptr, ptr %i.l, align 8, !dbg !14281, !alias.scope !14219, !nonnull !810, !noundef !810 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !14282
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !14282

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7, !dbg !14282        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !14282
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !14282

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.031.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.029.i, %.lr.ph.i.preheader ]
  %.sroa.011.030.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
    #dbg_value(i64 %.sroa.011.030.i.prol, !14237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 %.sroa.011.030.i.prol, !14233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14170)
    #dbg_value(i64 %.sroa.011.030.i.prol, !14225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14159)
    #dbg_value(ptr %.sroa.013.031.i.prol, !14233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14170)
    #dbg_value(ptr %.sroa.013.031.i.prol, !14225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(ptr %.sroa.013.031.i.prol, !14226, !DIExpression(), !14171)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.prol, i64 192, !dbg !14283
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
  %i.q = add i64 %.sroa.011.030.i.prol, -1, !dbg !14284 ; 2 uses
    #dbg_value(i64 %i.q, !14230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %i.q, !14231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %i.q, !14237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14168)
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !dbg !14281, !noalias !14219, !nonnull !810, !noundef !810 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.i.prol, !14227, !DIExpression(), !14169)
    #dbg_value(ptr %.sroa.013.0.i.prol, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr %.sroa.013.0.i.prol, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr %.sroa.013.0.i.prol, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !14282 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !14282
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !14282, !llvm.loop !14172

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.031.i.unr = phi ptr [ %.sroa.013.029.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.030.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8, !dbg !14282
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i, !dbg !14282

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.029.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ], !dbg !14281
  store i64 1, ptr %0, align 8, !dbg !14285, !alias.scope !14219
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !dbg !14285, !alias.scope !14219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !dbg !14285, !alias.scope !14219
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCs3f36owOmepS_6quiche.exit, !dbg !14286

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.031.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.031.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.030.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.030.i.unr, %.lr.ph.i.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 %.sroa.011.030.i, !14233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14170)
    #dbg_value(i64 %.sroa.011.030.i, !14225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14159)
    #dbg_value(ptr %.sroa.013.031.i, !14233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14170)
    #dbg_value(ptr %.sroa.013.031.i, !14225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(ptr %.sroa.013.031.i, !14226, !DIExpression(), !14171)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i, i64 192, !dbg !14283
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
    #dbg_value(i64 %.sroa.011.030.i, !14230, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14231, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !dbg !14281, !noalias !14219, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i, !14227, !DIExpression(), !14169)
    #dbg_value(ptr %.sroa.013.0.i, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr %.sroa.013.0.i, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr %.sroa.013.0.i, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 %.sroa.011.030.i, !14233, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14170)
    #dbg_value(i64 %.sroa.011.030.i, !14225, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i, !14233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14170)
    #dbg_value(ptr %.sroa.013.0.i, !14225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i, !14226, !DIExpression(), !14171)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 192, !dbg !14283
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
    #dbg_value(i64 %.sroa.011.030.i, !14230, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14231, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !dbg !14281, !noalias !14219, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.1, !14227, !DIExpression(), !14169)
    #dbg_value(ptr %.sroa.013.0.i.1, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr %.sroa.013.0.i.1, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr %.sroa.013.0.i.1, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 %.sroa.011.030.i, !14233, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14170)
    #dbg_value(i64 %.sroa.011.030.i, !14225, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.1, !14233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14170)
    #dbg_value(ptr %.sroa.013.0.i.1, !14225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.1, !14226, !DIExpression(), !14171)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 192, !dbg !14283
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
    #dbg_value(i64 %.sroa.011.030.i, !14230, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14231, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !dbg !14281, !noalias !14219, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.2, !14227, !DIExpression(), !14169)
    #dbg_value(ptr %.sroa.013.0.i.2, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr %.sroa.013.0.i.2, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr %.sroa.013.0.i.2, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 %.sroa.011.030.i, !14233, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14170)
    #dbg_value(i64 %.sroa.011.030.i, !14225, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.2, !14233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14170)
    #dbg_value(ptr %.sroa.013.0.i.2, !14225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.2, !14226, !DIExpression(), !14171)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 192, !dbg !14283
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
    #dbg_value(i64 %.sroa.011.030.i, !14230, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14231, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !dbg !14281, !noalias !14219, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.3, !14227, !DIExpression(), !14169)
    #dbg_value(ptr %.sroa.013.0.i.3, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr %.sroa.013.0.i.3, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr %.sroa.013.0.i.3, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 %.sroa.011.030.i, !14233, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14170)
    #dbg_value(i64 %.sroa.011.030.i, !14225, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.3, !14233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14170)
    #dbg_value(ptr %.sroa.013.0.i.3, !14225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.3, !14226, !DIExpression(), !14171)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 192, !dbg !14283
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
    #dbg_value(i64 %.sroa.011.030.i, !14230, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14231, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !dbg !14281, !noalias !14219, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.4, !14227, !DIExpression(), !14169)
    #dbg_value(ptr %.sroa.013.0.i.4, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr %.sroa.013.0.i.4, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr %.sroa.013.0.i.4, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 %.sroa.011.030.i, !14233, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14170)
    #dbg_value(i64 %.sroa.011.030.i, !14225, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.4, !14233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14170)
    #dbg_value(ptr %.sroa.013.0.i.4, !14225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.4, !14226, !DIExpression(), !14171)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 192, !dbg !14283
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
    #dbg_value(i64 %.sroa.011.030.i, !14230, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14231, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !dbg !14281, !noalias !14219, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.5, !14227, !DIExpression(), !14169)
    #dbg_value(ptr %.sroa.013.0.i.5, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr %.sroa.013.0.i.5, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr %.sroa.013.0.i.5, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 %.sroa.011.030.i, !14233, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14170)
    #dbg_value(i64 %.sroa.011.030.i, !14225, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.5, !14233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14170)
    #dbg_value(ptr %.sroa.013.0.i.5, !14225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.5, !14226, !DIExpression(), !14171)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 192, !dbg !14283
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
    #dbg_value(i64 %.sroa.011.030.i, !14230, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14231, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !dbg !14281, !noalias !14219, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.6, !14227, !DIExpression(), !14169)
    #dbg_value(ptr %.sroa.013.0.i.6, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr %.sroa.013.0.i.6, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr %.sroa.013.0.i.6, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(i64 %.sroa.011.030.i, !14237, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14168)
    #dbg_value(i64 %.sroa.011.030.i, !14233, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14170)
    #dbg_value(i64 %.sroa.011.030.i, !14225, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.6, !14233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14170)
    #dbg_value(ptr %.sroa.013.0.i.6, !14225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(ptr %.sroa.013.0.i.6, !14226, !DIExpression(), !14171)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 192, !dbg !14283
    #dbg_value(ptr poison, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
    #dbg_value(ptr poison, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr poison, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr poison, !14227, !DIExpression(), !14169)
  %i.aa = add i64 %.sroa.011.030.i, -8, !dbg !14284 ; 2 uses
    #dbg_value(i64 %i.aa, !14230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14164)
    #dbg_value(i64 %i.aa, !14231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14165)
    #dbg_value(i64 %i.aa, !14237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14168)
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !dbg !14281, !noalias !14219, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.7, !14227, !DIExpression(), !14169)
    #dbg_value(ptr %.sroa.013.0.i.7, !14237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14168)
    #dbg_value(ptr %.sroa.013.0.i.7, !14231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14165)
    #dbg_value(ptr %.sroa.013.0.i.7, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14164)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !14282
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i, !dbg !14282

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCs3f36owOmepS_6quiche.exit: ; preds = %bb.c, %._crit_edge.i
    #dbg_value(ptr poison, !14239, !DIExpression(), !14243)
    #dbg_value(ptr poison, !14244, !DIExpression(), !14248)
    #dbg_value(ptr poison, !14249, !DIExpression(), !14182)
    #dbg_declare(ptr poison, !14253, !DIExpression(), !14183)
    #dbg_declare(ptr poison, !14255, !DIExpression(), !14184)
    #dbg_declare(ptr poison, !14254, !DIExpression(), !14185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14287, !noalias !14261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14288, !noalias !14261
    #dbg_declare(ptr poison, !14268, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !14194)
    #dbg_declare(ptr poison, !14266, !DIExpression(), !14195)
    #dbg_declare(ptr poison, !14264, !DIExpression(), !14196)
    #dbg_declare(ptr %i.a, !14265, !DIExpression(), !14197)
    #dbg_declare(ptr %i.b, !14271, !DIExpression(), !14201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14288, !noalias !14274
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeE7next_kvCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h, !dbg !14289

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs3f36owOmepS_6quiche.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs3f36owOmepS_6quiche.exit ], [ undef, %bb.a ], !dbg !14213
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs3f36owOmepS_6quiche.exit ], [ null, %bb.a ], !dbg !14213
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !14290
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1, !dbg !14290
  ret { ptr, ptr } %i.ad, !dbg !14290

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCs3f36owOmepS_6quiche.exit
  %i.ae = load ptr, ptr %i.b, align 8, !dbg !14291, !noalias !14274, !noundef !810 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null, !dbg !14291
  br i1 %i.af, label %bb.f, label %bb.g, !dbg !14292, !prof !1448

bb.f:                                             ; preds = %.noexc.i
    #dbg_value(ptr null, !14268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14205)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14293, !noalias !14274
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #18
          to label %.noexc3.i unwind label %bb.h, !dbg !14294, !noalias !14261

.noexc3.i:                                        ; preds = %bb.f
  unreachable, !dbg !14294

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14295
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !dbg !14295, !noalias !14274
    #dbg_value(ptr %i.ae, !14268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14205)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14293, !noalias !14274
  store ptr %i.ae, ptr %i.a, align 8, !dbg !14296, !noalias !14274
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc4.i unwind label %bb.h, !dbg !14297, !noalias !14261

.noexc4.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutyyNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs3f36owOmepS_6quiche.exit unwind label %bb.h, !dbg !14298, !noalias !14261 ; 2 uses

bb.h:                                             ; preds = %.noexc4.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE10init_frontCs3f36owOmepS_6quiche.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !14207)
    #dbg_value(ptr poison, !1679, !DIExpression(), !14209)
  tail call void @llvm.trap(), !dbg !14299
  unreachable, !dbg !14299

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs3f36owOmepS_6quiche.exit: ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14300, !noalias !14261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !14301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14302, !noalias !14261
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0, !dbg !14303
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1, !dbg !14303
  br label %bb.e, !dbg !14304

.critedge:                                        ; preds = %bb.b
    #dbg_value(ptr poison, !14239, !DIExpression(), !14243)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #18, !dbg !14305
  unreachable, !dbg !14305
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IteryyENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14306 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !14389, !DIExpression(), !14391)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14443 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !14443, !noundef !810 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !14443
  br i1 %i.f, label %bb.e, label %bb.b, !dbg !14443

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1, !dbg !14444
  store i64 %i.g, ptr %i.d, align 8, !dbg !14444
    #dbg_value(ptr %0, !14392, !DIExpression(), !14396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14397), !dbg !14445
    #dbg_value(ptr %0, !14398, !DIExpression(), !14314)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14446 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !14446, !range !2020, !alias.scope !14397, !noundef !810
  %i.j = trunc nuw i64 %i.i to i1, !dbg !14447
  br i1 %i.j, label %bb.c, label %.critedge, !dbg !14447

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14446 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !dbg !14446, !alias.scope !14397, !noundef !810
  %.not.i = icmp eq ptr %i.l, null, !dbg !14446
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCs3f36owOmepS_6quiche.exit, !dbg !14447

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !14400, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !14315)
    #dbg_value(ptr %i.k, !14404, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14318)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14448 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !14448, !alias.scope !14397, !nonnull !810, !noundef !810 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14448 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !14448, !alias.scope !14397, !noundef !810 ; 5 uses
    #dbg_value(ptr %i.n, !3400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14320)
    #dbg_value(i64 %i.p, !3400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14320)
    #dbg_value(i64 %i.p, !3404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14321)
    #dbg_value(i64 %i.p, !3408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(ptr %i.n, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.n, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.n, !3410, !DIExpression(), !14325)
  %i.q = icmp eq i64 %i.p, 0, !dbg !14449
  br i1 %i.q, label %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCs3f36owOmepS_6quiche.exit.i, label %.lr.ph.i.i.preheader, !dbg !14449

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %i.p, 7, !dbg !14449        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !14449
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !14449

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.03.019.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.05.018.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.prol ], [ %i.p, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !3410, !DIExpression(), !14325)
    #dbg_value(i64 %.sroa.05.018.i.i.prol, !3408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %.sroa.05.018.i.i.prol, !3406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %.sroa.05.018.i.i.prol, !3414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14328)
    #dbg_value(i64 %.sroa.05.018.i.i.prol, !3411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !3414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14328)
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !3411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14329)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.prol, i64 186, !dbg !14450
  %i.s = load i16, ptr %i.r, align 2, !dbg !14450, !noalias !14406, !noundef !810 ; 2 uses
  %i.t = zext nneg i16 %i.s to i64, !dbg !14451
    #dbg_value(i64 %i.t, !3411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14329)
    #dbg_value(i64 %i.t, !3419, !DIExpression(), !14335)
    #dbg_value(i64 %i.t, !3422, !DIExpression(), !14337)
    #dbg_value(ptr %.sroa.03.019.i.i.prol, !3412, !DIExpression(), !14338)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.prol, i64 192, !dbg !14452
    #dbg_value(ptr %i.u, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14335)
    #dbg_value(ptr %i.u, !3423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14337)
    #dbg_value(i64 12, !3420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14335)
    #dbg_value(i64 12, !3423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14337)
  %i.v = icmp ult i16 %i.s, 12, !dbg !14453
  tail call void @llvm.assume(i1 %i.v), !dbg !14454
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t, !dbg !14455
    #dbg_value(ptr %i.w, !3425, !DIExpression(), !14340)
    #dbg_value(ptr %i.w, !3427, !DIExpression(), !14342)
    #dbg_value(ptr %i.w, !3429, !DIExpression(), !14344)
  %i.x = load ptr, ptr %i.w, align 8, !dbg !14456, !noalias !14406, !nonnull !810, !noundef !810 ; 3 uses
    #dbg_value(ptr %i.x, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.x, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.x, !3410, !DIExpression(), !14325)
  %i.y = add i64 %.sroa.05.018.i.i.prol, -1, !dbg !14457 ; 2 uses
    #dbg_value(i64 %i.y, !3408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %i.y, !3404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14321)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !14449 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !14449
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !14449, !llvm.loop !14345

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %.sroa.03.019.i.i.unr = phi ptr [ %i.n, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %.sroa.05.018.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.preheader ], [ %i.y, %.lr.ph.i.i.prol ]
  %i.z = icmp ult i64 %i.p, 8, !dbg !14449
  br i1 %i.z, label %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCs3f36owOmepS_6quiche.exit.i, label %.lr.ph.i.i, !dbg !14449

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.03.019.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.sroa.03.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %.sroa.05.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.03.019.i.i, !3410, !DIExpression(), !14325)
    #dbg_value(i64 %.sroa.05.018.i.i, !3408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %.sroa.05.018.i.i, !3406, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %.sroa.05.018.i.i, !3414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14328)
    #dbg_value(i64 %.sroa.05.018.i.i, !3411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr %.sroa.03.019.i.i, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %.sroa.03.019.i.i, !3414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14328)
    #dbg_value(ptr %.sroa.03.019.i.i, !3411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14329)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i, i64 186, !dbg !14450
  %i.ab = load i16, ptr %i.aa, align 2, !dbg !14450, !noalias !14406, !noundef !810 ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64, !dbg !14451
    #dbg_value(i64 %i.ac, !3411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14329)
    #dbg_value(i64 %i.ac, !3419, !DIExpression(), !14335)
    #dbg_value(i64 %i.ac, !3422, !DIExpression(), !14337)
    #dbg_value(ptr %.sroa.03.019.i.i, !3412, !DIExpression(), !14338)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i, i64 192, !dbg !14452
    #dbg_value(ptr %i.ad, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14335)
    #dbg_value(ptr %i.ad, !3423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14337)
    #dbg_value(i64 12, !3420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14335)
    #dbg_value(i64 12, !3423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14337)
  %i.ae = icmp ult i16 %i.ab, 12, !dbg !14453
  tail call void @llvm.assume(i1 %i.ae), !dbg !14454
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac, !dbg !14455
    #dbg_value(ptr %i.af, !3425, !DIExpression(), !14340)
    #dbg_value(ptr %i.af, !3427, !DIExpression(), !14342)
    #dbg_value(ptr %i.af, !3429, !DIExpression(), !14344)
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !14456, !noalias !14406, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.ag, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.ag, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.ag, !3410, !DIExpression(), !14325)
    #dbg_value(i64 %.sroa.05.018.i.i, !3404, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14321)
    #dbg_value(i64 %.sroa.05.018.i.i, !3408, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %.sroa.05.018.i.i, !3406, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %.sroa.05.018.i.i, !3414, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14328)
    #dbg_value(i64 %.sroa.05.018.i.i, !3411, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr %i.ag, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %i.ag, !3414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14328)
    #dbg_value(ptr %i.ag, !3411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14329)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 186, !dbg !14450
  %i.ai = load i16, ptr %i.ah, align 2, !dbg !14450, !noalias !14406, !noundef !810 ; 2 uses
  %i.aj = zext nneg i16 %i.ai to i64, !dbg !14451
    #dbg_value(i64 %i.aj, !3411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14329)
    #dbg_value(i64 %i.aj, !3419, !DIExpression(), !14335)
    #dbg_value(i64 %i.aj, !3422, !DIExpression(), !14337)
    #dbg_value(ptr %i.ag, !3412, !DIExpression(), !14338)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 192, !dbg !14452
    #dbg_value(ptr %i.ak, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14335)
    #dbg_value(ptr %i.ak, !3423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14337)
    #dbg_value(i64 12, !3420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14335)
    #dbg_value(i64 12, !3423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14337)
  %i.al = icmp ult i16 %i.ai, 12, !dbg !14453
  tail call void @llvm.assume(i1 %i.al), !dbg !14454
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj, !dbg !14455
    #dbg_value(ptr %i.am, !3425, !DIExpression(), !14340)
    #dbg_value(ptr %i.am, !3427, !DIExpression(), !14342)
    #dbg_value(ptr %i.am, !3429, !DIExpression(), !14344)
  %i.an = load ptr, ptr %i.am, align 8, !dbg !14456, !noalias !14406, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.an, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.an, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.an, !3410, !DIExpression(), !14325)
    #dbg_value(i64 %.sroa.05.018.i.i, !3404, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14321)
    #dbg_value(i64 %.sroa.05.018.i.i, !3408, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %.sroa.05.018.i.i, !3406, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %.sroa.05.018.i.i, !3414, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14328)
    #dbg_value(i64 %.sroa.05.018.i.i, !3411, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr %i.an, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %i.an, !3414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14328)
    #dbg_value(ptr %i.an, !3411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14329)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 186, !dbg !14450
  %i.ap = load i16, ptr %i.ao, align 2, !dbg !14450, !noalias !14406, !noundef !810 ; 2 uses
  %i.aq = zext nneg i16 %i.ap to i64, !dbg !14451
    #dbg_value(i64 %i.aq, !3411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14329)
    #dbg_value(i64 %i.aq, !3419, !DIExpression(), !14335)
    #dbg_value(i64 %i.aq, !3422, !DIExpression(), !14337)
    #dbg_value(ptr %i.an, !3412, !DIExpression(), !14338)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 192, !dbg !14452
    #dbg_value(ptr %i.ar, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14335)
    #dbg_value(ptr %i.ar, !3423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14337)
    #dbg_value(i64 12, !3420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14335)
    #dbg_value(i64 12, !3423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14337)
  %i.as = icmp ult i16 %i.ap, 12, !dbg !14453
  tail call void @llvm.assume(i1 %i.as), !dbg !14454
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq, !dbg !14455
    #dbg_value(ptr %i.at, !3425, !DIExpression(), !14340)
    #dbg_value(ptr %i.at, !3427, !DIExpression(), !14342)
    #dbg_value(ptr %i.at, !3429, !DIExpression(), !14344)
  %i.au = load ptr, ptr %i.at, align 8, !dbg !14456, !noalias !14406, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.au, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.au, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.au, !3410, !DIExpression(), !14325)
    #dbg_value(i64 %.sroa.05.018.i.i, !3404, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14321)
    #dbg_value(i64 %.sroa.05.018.i.i, !3408, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %.sroa.05.018.i.i, !3406, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %.sroa.05.018.i.i, !3414, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14328)
    #dbg_value(i64 %.sroa.05.018.i.i, !3411, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr %i.au, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %i.au, !3414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14328)
    #dbg_value(ptr %i.au, !3411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14329)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 186, !dbg !14450
  %i.aw = load i16, ptr %i.av, align 2, !dbg !14450, !noalias !14406, !noundef !810 ; 2 uses
  %i.ax = zext nneg i16 %i.aw to i64, !dbg !14451
    #dbg_value(i64 %i.ax, !3411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14329)
    #dbg_value(i64 %i.ax, !3419, !DIExpression(), !14335)
    #dbg_value(i64 %i.ax, !3422, !DIExpression(), !14337)
    #dbg_value(ptr %i.au, !3412, !DIExpression(), !14338)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 192, !dbg !14452
    #dbg_value(ptr %i.ay, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14335)
    #dbg_value(ptr %i.ay, !3423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14337)
    #dbg_value(i64 12, !3420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14335)
    #dbg_value(i64 12, !3423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14337)
  %i.az = icmp ult i16 %i.aw, 12, !dbg !14453
  tail call void @llvm.assume(i1 %i.az), !dbg !14454
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax, !dbg !14455
    #dbg_value(ptr %i.ba, !3425, !DIExpression(), !14340)
    #dbg_value(ptr %i.ba, !3427, !DIExpression(), !14342)
    #dbg_value(ptr %i.ba, !3429, !DIExpression(), !14344)
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !14456, !noalias !14406, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.bb, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.bb, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.bb, !3410, !DIExpression(), !14325)
    #dbg_value(i64 %.sroa.05.018.i.i, !3404, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14321)
    #dbg_value(i64 %.sroa.05.018.i.i, !3408, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %.sroa.05.018.i.i, !3406, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %.sroa.05.018.i.i, !3414, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14328)
    #dbg_value(i64 %.sroa.05.018.i.i, !3411, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr %i.bb, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %i.bb, !3414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14328)
    #dbg_value(ptr %i.bb, !3411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14329)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 186, !dbg !14450
  %i.bd = load i16, ptr %i.bc, align 2, !dbg !14450, !noalias !14406, !noundef !810 ; 2 uses
  %i.be = zext nneg i16 %i.bd to i64, !dbg !14451
    #dbg_value(i64 %i.be, !3411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14329)
    #dbg_value(i64 %i.be, !3419, !DIExpression(), !14335)
    #dbg_value(i64 %i.be, !3422, !DIExpression(), !14337)
    #dbg_value(ptr %i.bb, !3412, !DIExpression(), !14338)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 192, !dbg !14452
    #dbg_value(ptr %i.bf, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14335)
    #dbg_value(ptr %i.bf, !3423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14337)
    #dbg_value(i64 12, !3420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14335)
    #dbg_value(i64 12, !3423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14337)
  %i.bg = icmp ult i16 %i.bd, 12, !dbg !14453
  tail call void @llvm.assume(i1 %i.bg), !dbg !14454
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be, !dbg !14455
    #dbg_value(ptr %i.bh, !3425, !DIExpression(), !14340)
    #dbg_value(ptr %i.bh, !3427, !DIExpression(), !14342)
    #dbg_value(ptr %i.bh, !3429, !DIExpression(), !14344)
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !14456, !noalias !14406, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.bi, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.bi, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.bi, !3410, !DIExpression(), !14325)
    #dbg_value(i64 %.sroa.05.018.i.i, !3404, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14321)
    #dbg_value(i64 %.sroa.05.018.i.i, !3408, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %.sroa.05.018.i.i, !3406, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %.sroa.05.018.i.i, !3414, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14328)
    #dbg_value(i64 %.sroa.05.018.i.i, !3411, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr %i.bi, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %i.bi, !3414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14328)
    #dbg_value(ptr %i.bi, !3411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14329)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 186, !dbg !14450
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !14450, !noalias !14406, !noundef !810 ; 2 uses
  %i.bl = zext nneg i16 %i.bk to i64, !dbg !14451
    #dbg_value(i64 %i.bl, !3411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14329)
    #dbg_value(i64 %i.bl, !3419, !DIExpression(), !14335)
    #dbg_value(i64 %i.bl, !3422, !DIExpression(), !14337)
    #dbg_value(ptr %i.bi, !3412, !DIExpression(), !14338)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 192, !dbg !14452
    #dbg_value(ptr %i.bm, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14335)
    #dbg_value(ptr %i.bm, !3423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14337)
    #dbg_value(i64 12, !3420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14335)
    #dbg_value(i64 12, !3423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14337)
  %i.bn = icmp ult i16 %i.bk, 12, !dbg !14453
  tail call void @llvm.assume(i1 %i.bn), !dbg !14454
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl, !dbg !14455
    #dbg_value(ptr %i.bo, !3425, !DIExpression(), !14340)
    #dbg_value(ptr %i.bo, !3427, !DIExpression(), !14342)
    #dbg_value(ptr %i.bo, !3429, !DIExpression(), !14344)
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !14456, !noalias !14406, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.bp, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.bp, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.bp, !3410, !DIExpression(), !14325)
    #dbg_value(i64 %.sroa.05.018.i.i, !3404, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14321)
    #dbg_value(i64 %.sroa.05.018.i.i, !3408, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %.sroa.05.018.i.i, !3406, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %.sroa.05.018.i.i, !3414, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14328)
    #dbg_value(i64 %.sroa.05.018.i.i, !3411, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr %i.bp, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %i.bp, !3414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14328)
    #dbg_value(ptr %i.bp, !3411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14329)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 186, !dbg !14450
  %i.br = load i16, ptr %i.bq, align 2, !dbg !14450, !noalias !14406, !noundef !810 ; 2 uses
  %i.bs = zext nneg i16 %i.br to i64, !dbg !14451
    #dbg_value(i64 %i.bs, !3411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14329)
    #dbg_value(i64 %i.bs, !3419, !DIExpression(), !14335)
    #dbg_value(i64 %i.bs, !3422, !DIExpression(), !14337)
    #dbg_value(ptr %i.bp, !3412, !DIExpression(), !14338)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 192, !dbg !14452
    #dbg_value(ptr %i.bt, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14335)
    #dbg_value(ptr %i.bt, !3423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14337)
    #dbg_value(i64 12, !3420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14335)
    #dbg_value(i64 12, !3423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14337)
  %i.bu = icmp ult i16 %i.br, 12, !dbg !14453
  tail call void @llvm.assume(i1 %i.bu), !dbg !14454
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs, !dbg !14455
    #dbg_value(ptr %i.bv, !3425, !DIExpression(), !14340)
    #dbg_value(ptr %i.bv, !3427, !DIExpression(), !14342)
    #dbg_value(ptr %i.bv, !3429, !DIExpression(), !14344)
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !14456, !noalias !14406, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.bw, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.bw, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.bw, !3410, !DIExpression(), !14325)
    #dbg_value(i64 %.sroa.05.018.i.i, !3404, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14321)
    #dbg_value(i64 %.sroa.05.018.i.i, !3408, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %.sroa.05.018.i.i, !3406, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %.sroa.05.018.i.i, !3414, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14328)
    #dbg_value(i64 %.sroa.05.018.i.i, !3411, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !14329)
    #dbg_value(ptr %i.bw, !3406, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %i.bw, !3414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14328)
    #dbg_value(ptr %i.bw, !3411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14329)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 186, !dbg !14450
  %i.by = load i16, ptr %i.bx, align 2, !dbg !14450, !noalias !14406, !noundef !810 ; 2 uses
  %i.bz = zext nneg i16 %i.by to i64, !dbg !14451
    #dbg_value(i64 %i.bz, !3411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14329)
    #dbg_value(i64 %i.bz, !3419, !DIExpression(), !14335)
    #dbg_value(i64 %i.bz, !3422, !DIExpression(), !14337)
    #dbg_value(ptr %i.bw, !3412, !DIExpression(), !14338)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 192, !dbg !14452
    #dbg_value(ptr %i.ca, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14335)
    #dbg_value(ptr %i.ca, !3423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14337)
    #dbg_value(i64 12, !3420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14335)
    #dbg_value(i64 12, !3423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14337)
  %i.cb = icmp ult i16 %i.by, 12, !dbg !14453
  tail call void @llvm.assume(i1 %i.cb), !dbg !14454
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz, !dbg !14455
    #dbg_value(ptr %i.cc, !3425, !DIExpression(), !14340)
    #dbg_value(ptr %i.cc, !3427, !DIExpression(), !14342)
    #dbg_value(ptr %i.cc, !3429, !DIExpression(), !14344)
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !14456, !noalias !14406, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %i.cd, !3404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14321)
    #dbg_value(ptr %i.cd, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14323)
    #dbg_value(ptr %i.cd, !3410, !DIExpression(), !14325)
  %i.ce = add i64 %.sroa.05.018.i.i, -8, !dbg !14457 ; 2 uses
    #dbg_value(i64 %i.ce, !3408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14323)
    #dbg_value(i64 %i.ce, !3404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14321)
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !14449
  br i1 %i.cf, label %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCs3f36owOmepS_6quiche.exit.i, label %.lr.ph.i.i, !dbg !14449

_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCs3f36owOmepS_6quiche.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %.sroa.03.0.lcssa.i.i = phi ptr [ %i.n, %bb.d ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i ], !dbg !14458 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.lcssa.i.i, !3405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14346)
    #dbg_value(ptr %.sroa.03.0.lcssa.i.i, !3431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14348)
    #dbg_value(i64 0, !3405, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14346)
    #dbg_value(i64 0, !3431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14348)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 186, !dbg !14459
  %i.ch = load i16, ptr %i.cg, align 2, !dbg !14459, !noalias !14406, !noundef !810
  %i.ci = zext i16 %i.ch to i64, !dbg !14460
  store i64 1, ptr %i.h, align 8, !dbg !14461, !alias.scope !14397
  store ptr %.sroa.03.0.lcssa.i.i, ptr %i.k, align 8, !dbg !14461, !alias.scope !14397
  store i64 0, ptr %i.m, align 8, !dbg !14461, !alias.scope !14397
  store i64 %i.ci, ptr %i.o, align 8, !dbg !14461, !alias.scope !14397
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCs3f36owOmepS_6quiche.exit, !dbg !14462

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCs3f36owOmepS_6quiche.exit: ; preds = %bb.c, %_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutyyNtB1k_14LeafOrInternalE14last_leaf_edgeCs3f36owOmepS_6quiche.exit.i
    #dbg_value(ptr poison, !14407, !DIExpression(), !14411)
    #dbg_value(ptr poison, !14412, !DIExpression(), !14416)
    #dbg_value(ptr poison, !14417, !DIExpression(), !14360)
    #dbg_declare(ptr poison, !14421, !DIExpression(), !14361)
    #dbg_declare(ptr poison, !14423, !DIExpression(), !14362)
    #dbg_declare(ptr poison, !14422, !DIExpression(), !14363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14463, !noalias !14429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14464, !noalias !14429
    #dbg_declare(ptr poison, !14436, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !14372)
    #dbg_declare(ptr poison, !14434, !DIExpression(), !14373)
    #dbg_declare(ptr poison, !14432, !DIExpression(), !14374)
    #dbg_declare(ptr %i.a, !14433, !DIExpression(), !14375)
    #dbg_declare(ptr %i.b, !14439, !DIExpression(), !14379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14464, !noalias !14442
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeE12next_back_kvCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
          to label %.noexc.i unwind label %bb.h, !dbg !14465

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECs3f36owOmepS_6quiche.exit
  %.sroa.3.0 = phi ptr [ %i.cq, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECs3f36owOmepS_6quiche.exit ], [ undef, %bb.a ], !dbg !14391
  %.sroa.0.0 = phi ptr [ %i.cp, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECs3f36owOmepS_6quiche.exit ], [ null, %bb.a ], !dbg !14391
  %i.cj = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !14466
  %i.ck = insertvalue { ptr, ptr } %i.cj, ptr %.sroa.3.0, 1, !dbg !14466
  ret { ptr, ptr } %i.ck, !dbg !14466

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCs3f36owOmepS_6quiche.exit
  %i.cl = load ptr, ptr %i.b, align 8, !dbg !14467, !noalias !14442, !noundef !810 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null, !dbg !14467
  br i1 %i.cm, label %bb.f, label %bb.g, !dbg !14468, !prof !1448

bb.f:                                             ; preds = %.noexc.i
    #dbg_value(ptr null, !14436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14383)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14469, !noalias !14442
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18
          to label %.noexc3.i unwind label %bb.h, !dbg !14470, !noalias !14429

.noexc3.i:                                        ; preds = %bb.f
  unreachable, !dbg !14470

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14471
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !dbg !14471, !noalias !14442
    #dbg_value(ptr %i.cl, !14436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14383)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14469, !noalias !14442
  store ptr %i.cl, ptr %i.a, align 8, !dbg !14472, !noalias !14442
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_14LeafOrInternalENtB1y_2KVE19next_back_leaf_edgeCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc4.i unwind label %bb.h, !dbg !14473, !noalias !14429

.noexc4.i:                                        ; preds = %bb.g
  %i.cn = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutyyNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECs3f36owOmepS_6quiche.exit unwind label %bb.h, !dbg !14474, !noalias !14429 ; 2 uses

bb.h:                                             ; preds = %.noexc4.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutyyE9init_backCs3f36owOmepS_6quiche.exit
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !14385)
    #dbg_value(ptr poison, !1679, !DIExpression(), !14387)
  call void @llvm.trap(), !dbg !14475
  unreachable, !dbg !14475

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutyyNtB1y_4LeafENtB1y_4EdgeETRyB2i_ENCNvMsk_NtB4_8navigateBX_19next_back_unchecked0ECs3f36owOmepS_6quiche.exit: ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14476, !noalias !14429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !14477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14478, !noalias !14429
  %i.cp = extractvalue { ptr, ptr } %i.cn, 0, !dbg !14479
  %i.cq = extractvalue { ptr, ptr } %i.cn, 1, !dbg !14479
  br label %bb.e, !dbg !14480

.critedge:                                        ; preds = %bb.b
    #dbg_value(ptr poison, !14407, !DIExpression(), !14411)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #18, !dbg !14481
  unreachable, !dbg !14481
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !373 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !2301, !DIExpression(), !14482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14484
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0), !dbg !14485
  %i.b = load ptr, ptr %i.a, align 8, !dbg !14484, !noundef !810
  %.not7 = icmp eq ptr %i.b, null, !dbg !14484
  br i1 %.not7, label %._crit_edge, label %.lr.ph, !dbg !14486

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14487
  ret void, !dbg !14488

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
    #dbg_value(ptr poison, !2303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14483)
    #dbg_value(i64 poison, !2303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14483)
    #dbg_value(i64 poison, !2303, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14483)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14484
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(72) %0), !dbg !14485
  %i.c = load ptr, ptr %i.a, align 8, !dbg !14484, !noundef !810
  %.not = icmp eq ptr %i.c, null, !dbg !14484
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !14486
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCs6Hru1xGhrwY_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs83oNeXj4HCJ_8indexmap5inner8get_hashNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE0ECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1T_EjNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB1X_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyyNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1z_EjNtB1i_14LeafOrInternalE11search_treeB1y_ECs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromyEEB1J_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutyyNtB1i_14LeafOrInternalE11search_treeyECs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedyyNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCsexYYUdYSQU6_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedyyNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedIteryyINtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterTyyEKj4_EENtNtB9_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutyyNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeyTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundRyEB2B_EECs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker5ImmutyyNtB1l_14LeafOrInternalE30find_leaf_edges_spanning_rangeyTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB2B_EECs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTyyENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCNvXs1z_NtNtNtB1y_11collections5btree3mapINtB2k_8BTreeMapyyEINtNtBa_7convert4FromAB1m_j4_E4from0E0ECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtCs6Hru1xGhrwY_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs83oNeXj4HCJ_8indexmap6BucketNtNtB7_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs83oNeXj4HCJ_8indexmap6BucketNtNtB7_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutyyNtB1m_4LeafENtB1m_2KVE7into_kvCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyyNtB19_4LeafE16push_with_handleCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #0

end_hunk_4
