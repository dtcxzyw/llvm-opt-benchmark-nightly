Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15191
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN5xtask4test3run28_$u7b$$u7b$closure$u7d$$u7d$17hbb04f121be65d0c4E":bb.a

bb.lo:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !25699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !25693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !25693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !25693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !25693
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit237.i"

.body164.i:                                       ; preds = %bb.ea, %bb.dz
  %i.aak = phi ptr [ %i.nk, %bb.dz ], [ %i.dj, %bb.ea ]
  %i.aal = phi ptr [ %i.nl, %bb.dz ], [ %i.di, %bb.ea ]
  %i.aam = phi ptr [ %i.nn, %bb.dz ], [ %i.iz, %bb.ea ]
  %.pn34.i = phi { ptr, i32 } [ %.pn7.pn.pn.i.i, %bb.dz ], [ %i.no, %bb.ea ]
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$tokio..fs..read_to_string..read_to_string$LT$$RF$std..path..PathBuf$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h839b9d169427bc3eE"(ptr noundef nonnull align 8 %i.aam) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit243.i" unwind label %bb.af

bb.lp:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$anyhow..Error$GT$17hcaef6195b9b35c92E.exit.i", %bb.bb, %bb.aw
  %.pn71.pn.i = phi { ptr, i32 } [ %.pn71.i, %"_ZN4core3ptr34drop_in_place$LT$anyhow..Error$GT$17hcaef6195b9b35c92E.exit.i" ], [ %i.hl, %bb.bb ], [ %i.hc, %bb.aw ] ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.experimental.noalias.scope.decl(metadata !25892)
  %.val.i246.i = load i64, ptr %i.aan, align 8, !alias.scope !25892, !noalias !25613 ; 2 uses
  %i.aao = icmp eq i64 %.val.i246.i, 0
  br i1 %i.aao, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit248.i", label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.val1.i247.i = load ptr, ptr %i.aap, align 8, !alias.scope !25892, !noalias !25613, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i247.i, i64 noundef %.val.i246.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !25892
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit248.i"

bb.lr:                                            ; preds = %bb.ls
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !25613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !25613
  br label %bb.lz

bb.ls:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !25613
  store ptr %i.gq, ptr %i.cm, align 8, !noalias !25613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !25613
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !25613
  store ptr %i.aar, ptr %i.ck, align 8, !noalias !25613
  %.sroa.5359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.5359.0..sroa_idx.i, align 8, !noalias !25613
  %i.aas = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.cm, ptr %i.aas, align 8, !noalias !25613
  %.sroa.5361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr @"_ZN6anyhow5error62_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..Error$GT$3fmt17h3b4a611e2c73857dE", ptr %.sroa.5361.0..sroa_idx.i, align 8, !noalias !25613
  store ptr @840, ptr %i.cl, align 8, !alias.scope !25893, !noalias !25894
  %i.aat = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 3, ptr %i.aat, align 8, !alias.scope !25893, !noalias !25894
  %i.aau = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr null, ptr %i.aau, align 8, !alias.scope !25893, !noalias !25894
  %i.aav = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.ck, ptr %i.aav, align 8, !alias.scope !25893, !noalias !25894
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 2, ptr %i.aaw, align 8, !alias.scope !25893, !noalias !25894
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cl)
          to label %bb.lu unwind label %bb.lr

bb.lt:                                            ; preds = %bb.lu
  %i.aax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !25613
  br label %bb.lz

bb.lu:                                            ; preds = %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !25613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !25613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !25613
  store ptr @842, ptr %i.cj, align 8, !alias.scope !25895, !noalias !25896
  %i.aay = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 1, ptr %i.aay, align 8, !alias.scope !25895, !noalias !25896
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store ptr null, ptr %i.aaz, align 8, !alias.scope !25895, !noalias !25896
  %i.aba = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aba, align 8, !alias.scope !25895, !noalias !25896
  %i.abb = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 0, ptr %i.abb, align 8, !alias.scope !25895, !noalias !25896
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cj)
          to label %bb.lv unwind label %bb.lt

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !25613
  %i.abc = load ptr, ptr %i.cm, align 8, !noalias !25613, !nonnull !24, !noundef !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !25613
  call void @llvm.experimental.noalias.scope.decl(metadata !25897)
  %.val.i250.i = load i64, ptr %i.aar, align 8, !alias.scope !25897, !noalias !25613 ; 2 uses
  %i.abd = icmp eq i64 %.val.i250.i, 0
  br i1 %i.abd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit252.i", label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.val1.i251.i = load ptr, ptr %i.abe, align 8, !alias.scope !25897, !noalias !25613, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i251.i, i64 noundef %.val.i250.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !25897
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit252.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit252.i": ; preds = %bb.lw, %bb.lv
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.abg = load i64, ptr %i.abf, align 8, !range !47, !noalias !25613, !noundef !24
  %.not77.i = icmp eq i64 %i.abg, -9223372036854775808
  br i1 %.not77.i, label %bb.ly, label %"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E.exit258.i"

"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E.exit258.i": ; preds = %bb.ly, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit252.i"
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.experimental.noalias.scope.decl(metadata !25898)
  %.val.i253.i = load i64, ptr %i.abh, align 8, !alias.scope !25898, !noalias !25613 ; 2 uses
  %i.abi = icmp eq i64 %.val.i253.i, 0
  br i1 %i.abi, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit237.i", label %bb.lx

bb.lx:                                            ; preds = %"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E.exit258.i"
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.val1.i254.i = load ptr, ptr %i.abj, align 8, !alias.scope !25898, !noalias !25613, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i254.i, i64 noundef %.val.i253.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !25898
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit237.i"

bb.ly:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit252.i"
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 3632
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$xtask..bench..workload..BenchWorkload$GT$17h918730da179636d7E"(ptr noalias noundef align 8 dereferenceable(152) %i.abk)
          to label %"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E.exit258.i" unwind label %bb.bh

bb.lz:                                            ; preds = %bb.lt, %bb.lr
  %.pn71.i = phi { ptr, i32 } [ %i.aax, %bb.lt ], [ %i.aaq, %bb.lr ]
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hf449d51980abb73cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %"_ZN4core3ptr34drop_in_place$LT$anyhow..Error$GT$17hcaef6195b9b35c92E.exit.i" unwind label %bb.af

"_ZN4core3ptr34drop_in_place$LT$anyhow..Error$GT$17hcaef6195b9b35c92E.exit.i": ; preds = %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !25613
  br label %bb.lp

bb.ma:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit248.i"
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E"(ptr noalias noundef align 8 dereferenceable(192) %i.hr) #55
          to label %bb.bg unwind label %bb.af

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i": ; preds = %bb.ar, %bb.aq
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 3624 ; 2 uses
  %i.abm = load i64, ptr %i.abl, align 8, !range !47, !noalias !25613, !noundef !24
  %.not59.i = icmp eq i64 %i.abm, -9223372036854775808
  br i1 %.not59.i, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %bb.mc, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i"
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val.i260.i = load i64, ptr %i.abn, align 8, !alias.scope !25899, !noalias !25613 ; 2 uses
  %i.abo = icmp eq i64 %.val.i260.i, 0
  br i1 %i.abo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit243.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit152.sink.split.i"

bb.mc:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i"
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E"(ptr noalias noundef align 8 dereferenceable(192) %i.abl) #55
          to label %bb.mb unwind label %bb.af

bb.md:                                            ; preds = %bb.ak, %bb.aj
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN5xtask4test9run_inner28_$u7b$$u7b$closure$u7d$$u7d$17hab4f8fa57fb359bbE.exit": ; preds = %bb.eb, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$xtask..common..client..Client$GT$$GT$17hf97e362a057162b1E.exit134.i", %bb.ao
  %i.abq = phi ptr [ %i.gl, %bb.ao ], [ %i.is, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$xtask..common..client..Client$GT$$GT$17hf97e362a057162b1E.exit134.i" ], [ %i.lt, %bb.eb ]
  %common.ret.op.i = phi { i64, ptr } [ { i64 1, ptr undef }, %bb.ao ], [ %i.iu, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$xtask..common..client..Client$GT$$GT$17hf97e362a057162b1E.exit134.i" ], [ { i64 1, ptr undef }, %bb.eb ] ; 2 uses
  %i.abr = extractvalue { i64, ptr } %common.ret.op.i, 0
  %i.abs = trunc nuw i64 %i.abr to i1
  br i1 %i.abs, label %common.ret, label %bb.me

common.ret:                                       ; preds = %bb.me, %"_ZN5xtask4test9run_inner28_$u7b$$u7b$closure$u7d$$u7d$17hab4f8fa57fb359bbE.exit"
  %storemerge = phi i8 [ 3, %"_ZN5xtask4test9run_inner28_$u7b$$u7b$closure$u7d$$u7d$17hab4f8fa57fb359bbE.exit" ], [ 1, %bb.me ]
  %common.ret.op = phi { i64, ptr } [ { i64 1, ptr undef }, %"_ZN5xtask4test9run_inner28_$u7b$$u7b$closure$u7d$$u7d$17hab4f8fa57fb359bbE.exit" ], [ %common.ret.op.i, %bb.me ]
  store i8 %storemerge, ptr %i.dd, align 8
  ret { i64, ptr } %common.ret.op

bb.me:                                            ; preds = %"_ZN5xtask4test9run_inner28_$u7b$$u7b$closure$u7d$$u7d$17hab4f8fa57fb359bbE.exit"
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$xtask..test..run_inner..$u7b$$u7b$closure$u7d$$u7d$$GT$17h315aa7812bdb2794E"(ptr noundef nonnull align 8 %i.abq)
          to label %common.ret unwind label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.body:                                            ; preds = %bb.md, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$xtask..common..client..Client$GT$$GT$17hf97e362a057162b1E.exit136.i"
  %i.abu = phi ptr [ %i.gi, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$xtask..common..client..Client$GT$$GT$17hf97e362a057162b1E.exit136.i" ], [ %i.di, %bb.md ]
  %.pn10 = phi { ptr, i32 } [ %.pn105.pn.i, %"_ZN4core3ptr74drop_in_place$LT$alloc..sync..Arc$LT$xtask..common..client..Client$GT$$GT$17hf97e362a057162b1E.exit136.i" ], [ %i.abp, %bb.md ]
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$xtask..test..run_inner..$u7b$$u7b$closure$u7d$$u7d$$GT$17h315aa7812bdb2794E"(ptr noundef nonnull align 8 %i.abu) #55
          to label %bb.b unwind label %bb.mg

bb.mg:                                            ; preds = %.body
  %i.abv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN5xtask4test8workload12TestWorkload3run28_$u7b$$u7b$closure$u7d$$u7d$17hc85164c7d8eefebfE"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [272 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [40 x i8], align 1                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 13 uses
  %i.r = alloca [16 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 12 uses
  %i.t = alloca [16 x i8], align 8                ; 8 uses
  %i.u = alloca [72 x i8], align 8                ; 12 uses
  %i.v = alloca [72 x i8], align 8                ; 12 uses
  %i.w = alloca [40 x i8], align 8                ; 9 uses
  %i.x = alloca [32 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [16 x i8], align 4               ; 9 uses
  %i.ah = alloca [104 x i8], align 8              ; 5 uses
  %i.ai = alloca [128 x i8], align 8              ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [128 x i8], align 8              ; 17 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.am = alloca [48 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [40 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [48 x i8], align 8               ; 8 uses
  %i.at = alloca [48 x i8], align 8               ; 8 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [48 x i8], align 8               ; 4 uses
  %i.aw = alloca [48 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [48 x i8], align 8               ; 8 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [48 x i8], align 8               ; 4 uses
  %i.bb = alloca [48 x i8], align 8               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 8 uses
  %i.bh = alloca [16 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 10 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [16 x i8], align 8               ; 7 uses
  %i.bn = alloca [16 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [80 x i8], align 8               ; 24 uses
  %i.bt = alloca [32 x i8], align 8               ; 4 uses
  %i.bu = alloca [40 x i8], align 8               ; 5 uses
  %i.bv = alloca [40 x i8], align 8               ; 8 uses
  %i.bw = alloca [40 x i8], align 8               ; 4 uses
  %i.bx = alloca [40 x i8], align 8               ; 5 uses
  %i.by = alloca [48 x i8], align 8               ; 8 uses
  %i.bz = alloca [48 x i8], align 8               ; 8 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [24 x i8], align 8               ; 5 uses
  %i.ce = alloca [24 x i8], align 8               ; 8 uses
  %i.cf = alloca [32 x i8], align 8               ; 10 uses
  %i.cg = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.4227.i.i.i = alloca [120 x i8], align 8  ; 6 uses
  %i.ch = alloca [136 x i8], align 8              ; 8 uses
  %i.ci = alloca [24 x i8], align 8               ; 7 uses
  %i.cj = alloca [272 x i8], align 8              ; 5 uses
  %i.ck = alloca [952 x i8], align 8              ; 7 uses
  %i.cl = alloca [952 x i8], align 8              ; 5 uses
  %i.cm = alloca [16 x i8], align 8               ; 6 uses
  %i.cn = alloca [24 x i8], align 8               ; 7 uses
  %i.co = alloca [48 x i8], align 8               ; 9 uses
  %i.cp = alloca [40 x i8], align 8               ; 8 uses
  %i.cq = alloca [40 x i8], align 8               ; 14 uses
  %i.cr = alloca [24 x i8], align 8               ; 8 uses
  %i.cs = alloca [48 x i8], align 8               ; 8 uses
  %i.ct = alloca [32 x i8], align 8               ; 7 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [16 x i8], align 8               ; 5 uses
  %i.cw = alloca [48 x i8], align 8               ; 8 uses
  %i.cx = alloca [48 x i8], align 8               ; 9 uses
  %i.cy = alloca [16 x i8], align 8               ; 5 uses
  %i.cz = alloca [16 x i8], align 8               ; 5 uses
  %i.da = alloca [8 x i8], align 8                ; 4 uses
  %i.db = alloca [24 x i8], align 8               ; 4 uses
  %i.dc = alloca [24 x i8], align 8               ; 5 uses
  %i.dd = alloca [80 x i8], align 8               ; 10 uses
  %i.de = alloca [24 x i8], align 8               ; 5 uses
  %i.df = alloca [80 x i8], align 8               ; 12 uses
  %i.dg = alloca [32 x i8], align 8               ; 8 uses
  %i.dh = alloca [24 x i8], align 8               ; 7 uses
  %i.di = alloca [32 x i8], align 8               ; 8 uses
  %i.dj = alloca [48 x i8], align 8               ; 9 uses
  %i.dk = alloca [16 x i8], align 8               ; 6 uses
  %i.dl = alloca [32 x i8], align 8               ; 8 uses
  %i.dm = alloca [24 x i8], align 8               ; 8 uses
  %i.dn = alloca [32 x i8], align 8               ; 8 uses
  %i.do = alloca [48 x i8], align 8               ; 9 uses
  %i.dp = alloca [16 x i8], align 8               ; 6 uses
  %i.dq = alloca [32 x i8], align 8               ; 9 uses
  %i.dr = alloca [8 x i8], align 8                ; 8 uses
  %i.ds = alloca [24 x i8], align 8               ; 8 uses
  %i.dt = alloca [24 x i8], align 8               ; 8 uses
  %i.du = alloca [8 x i8], align 8                ; 4 uses
  %i.dv = alloca [24 x i8], align 8               ; 6 uses
  %i.dw = alloca [24 x i8], align 8               ; 4 uses
  %i.dx = alloca [48 x i8], align 8               ; 11 uses
  %i.dy = alloca [24 x i8], align 8               ; 4 uses
  %i.dz = alloca [24 x i8], align 8               ; 4 uses
  %i.ea = alloca [24 x i8], align 8               ; 4 uses
  %i.eb = alloca [16 x i8], align 8               ; 6 uses
  %i.ec = alloca [16 x i8], align 8               ; 6 uses
  %i.ed = alloca [48 x i8], align 8               ; 9 uses
  %i.ee = alloca [16 x i8], align 8               ; 6 uses
  %i.ef = alloca [32 x i8], align 8               ; 8 uses
  %i.eg = alloca [24 x i8], align 8               ; 5 uses
  %i.eh = alloca [16 x i8], align 8               ; 6 uses
  %i.ei = alloca [16 x i8], align 8               ; 6 uses
  %i.ej = alloca [48 x i8], align 8               ; 9 uses
  %i.ek = alloca [16 x i8], align 8               ; 6 uses
  %i.el = alloca [32 x i8], align 8               ; 8 uses
  %i.em = alloca [16 x i8], align 8               ; 8 uses
  %i.en = alloca [4 x i8], align 4                ; 10 uses
  %i.eo = alloca [192 x i8], align 8              ; 31 uses
  %i.ep = alloca [16 x i8], align 8               ; 6 uses
  %i.eq = alloca [48 x i8], align 8               ; 9 uses
  %i.er = alloca [16 x i8], align 8               ; 6 uses
  %i.es = alloca [32 x i8], align 8               ; 8 uses
  %i.et = alloca [24 x i8], align 8               ; 5 uses
  %i.eu = alloca [16 x i8], align 8               ; 6 uses
  %i.ev = alloca [48 x i8], align 8               ; 9 uses
  %i.ew = alloca [16 x i8], align 8               ; 6 uses
  %i.ex = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.5726 = alloca [152 x i8], align 8        ; 2 uses
  %i.ey = alloca [168 x i8], align 8              ; 8 uses
  %i.ez = alloca [112 x i8], align 8              ; 5 uses
  %i.fa = alloca [48 x i8], align 8               ; 9 uses
  %i.fb = alloca [16 x i8], align 8               ; 6 uses
  %i.fc = alloca [32 x i8], align 8               ; 8 uses
  %i.fd = alloca [24 x i8], align 8               ; 5 uses
  %i.fe = alloca [48 x i8], align 8               ; 9 uses
  %i.ff = alloca [16 x i8], align 8               ; 6 uses
  %i.fg = alloca [32 x i8], align 8               ; 9 uses
  %i.fh = alloca [72 x i8], align 8               ; 7 uses
  %i.fi = alloca [80 x i8], align 8               ; 13 uses
  %i.fj = alloca [48 x i8], align 8               ; 4 uses
  %i.fk = alloca [8 x i8], align 8                ; 2 uses
  %i.fl = alloca [8 x i8], align 8                ; 2 uses
  %i.fm = alloca [24 x i8], align 8               ; 8 uses
  %i.fn = alloca [24 x i8], align 8               ; 10 uses
  %i.fo = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5593 = alloca [152 x i8], align 8        ; 2 uses
  %i.fp = alloca [168 x i8], align 8              ; 8 uses
  %i.fq = alloca [96 x i8], align 8               ; 7 uses
  %i.fr = alloca [96 x i8], align 8               ; 10 uses
  %i.fs = alloca [96 x i8], align 8               ; 7 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 11 uses
  %i.fu = load i8, ptr %i.ft, align 8, !range !96, !noundef !24
  switch i8 %i.fu, label %default.unreachable1214 [
    i8 0, label %bb.e
    i8 1, label %bb.au
    i8 2, label %bb.av
    i8 3, label %bb.aw
    i8 4, label %bb.mh
    i8 5, label %bb.mz
    i8 6, label %bb.nm
    i8 7, label %bb.b
    i8 8, label %bb.xs
    i8 9, label %bb.yz
    i8 10, label %bb.ov
  ]

default.unreachable1214:                          ; preds = %bb.sq, %bb.ca, %bb.bb, %bb.aw, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  br label %bb.vz

bb.c:                                             ; preds = %bb.zu, %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$xtask..common..command..Command$GT$$GT$17h12d64c8d176cbea7E.exit533", %bb.d
  %.pn187.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn187.pn.pn, %bb.zu ], [ %.pn187.pn.pn, %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$xtask..common..command..Command$GT$$GT$17h12d64c8d176cbea7E.exit533" ], [ %i.fz, %bb.d ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 926
end_hunk_0
begin_hunk_1_@"_ZN5xtask4test8workload12TestWorkload3run28_$u7b$$u7b$closure$u7d$$u7d$17hc85164c7d8eefebfE":bb.a

bb.uu:                                            ; preds = %bb.us, %bb.uv
  %.pn93 = phi { ptr, i32 } [ %i.blk, %bb.uv ], [ %i.bkz, %bb.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  br label %.body443

bb.uv:                                            ; preds = %bb.ut
  %i.blk = landingpad { ptr, i32 }
          cleanup
  br label %bb.uu

bb.uw:                                            ; preds = %bb.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  br label %bb.uy

bb.ux:                                            ; preds = %.body386, %.body443
  %.pn101.pn = phi { ptr, i32 } [ %.pn98.pn, %.body443 ], [ %.pn77, %.body386 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E"(ptr noalias noundef align 8 dereferenceable(192) %i.eo) #55
          to label %bb.uz unwind label %bb.mg

bb.uy:                                            ; preds = %bb.uw, %bb.uc, %bb.ud, %bb.ui, %bb.up
  %.val214 = load i32, ptr %i.en, align 4, !range !93, !noundef !24
  %i.bll = call noundef i32 @close(i32 noundef %.val214) #47 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E"(ptr noalias noundef align 8 dereferenceable(192) %i.eo)
          to label %bb.vb unwind label %bb.va

bb.uz:                                            ; preds = %bb.va, %bb.ux
  %.pn104 = phi { ptr, i32 } [ %i.blm, %bb.va ], [ %.pn101.pn, %bb.ux ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  br label %bb.vt

bb.va:                                            ; preds = %bb.vq, %bb.vp, %bb.uy
  %i.blm = landingpad { ptr, i32 }
          cleanup
  br label %bb.uz

bb.vb:                                            ; preds = %bb.uy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  br label %bb.qr

"_ZN4core3ptr113drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0fbbd1c36456640dE.exit": ; preds = %bb.qr
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27217)
  call void @llvm.experimental.noalias.scope.decl(metadata !27218)
  %i.blo = load ptr, ptr %i.bln, align 8, !alias.scope !27219, !nonnull !24, !noundef !24
  %i.blp = atomicrmw sub ptr %i.blo, i64 1 release, align 8, !noalias !27219
  %i.blq = icmp eq i64 %i.blp, 1
  br i1 %i.blq, label %bb.vc, label %"_ZN4core3ptr145drop_in_place$LT$alloc..sync..Arc$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$xtask..common..assets..Asset$GT$$GT$$GT$17he1d643f6de6bc3d3E.exit466"

bb.vc:                                            ; preds = %"_ZN4core3ptr113drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0fbbd1c36456640dE.exit"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc9b9dc33c310ad67E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bln)
          to label %"_ZN4core3ptr145drop_in_place$LT$alloc..sync..Arc$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$xtask..common..assets..Asset$GT$$GT$$GT$17he1d643f6de6bc3d3E.exit466" unwind label %bb.vd

bb.vd:                                            ; preds = %bb.zh, %bb.vc
  %i.blr = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr145drop_in_place$LT$alloc..sync..Arc$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$xtask..common..assets..Asset$GT$$GT$$GT$17he1d643f6de6bc3d3E.exit"

"_ZN4core3ptr145drop_in_place$LT$alloc..sync..Arc$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$xtask..common..assets..Asset$GT$$GT$$GT$17he1d643f6de6bc3d3E.exit466": ; preds = %"_ZN4core3ptr113drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0fbbd1c36456640dE.exit", %bb.vc
  %i.bls = getelementptr inbounds nuw i8, ptr %0, i64 928
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$tokio..process..Child$GT$17hc2178ade0bef0844E"(ptr noalias noundef align 8 dereferenceable(168) %i.bls)
          to label %bb.vf unwind label %bb.ve

bb.ve:                                            ; preds = %bb.zi, %"_ZN4core3ptr145drop_in_place$LT$alloc..sync..Arc$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$xtask..common..assets..Asset$GT$$GT$$GT$17he1d643f6de6bc3d3E.exit466"
  %i.blt = landingpad { ptr, i32 }
          cleanup
  br label %.body324

bb.vf:                                            ; preds = %"_ZN4core3ptr145drop_in_place$LT$alloc..sync..Arc$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$xtask..common..assets..Asset$GT$$GT$$GT$17he1d643f6de6bc3d3E.exit466"
  %i.blu = getelementptr inbounds nuw i8, ptr %0, i64 925
  store i8 0, ptr %i.blu, align 1
  %i.blv = getelementptr inbounds nuw i8, ptr %0, i64 927
  store i8 0, ptr %i.blv, align 1
  %i.blw = getelementptr inbounds nuw i8, ptr %0, i64 923 ; 2 uses
  %i.blx = load i8, ptr %i.blw, align 1, !range !38, !noundef !24
  %i.bly = trunc nuw i8 %i.blx to i1
  br i1 %i.bly, label %bb.vg, label %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$xtask..common..command..Command$GT$$GT$17h12d64c8d176cbea7E.exit"

"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$xtask..common..command..Command$GT$$GT$17h12d64c8d176cbea7E.exit": ; preds = %bb.vh, %bb.vg, %bb.vf
  store i8 0, ptr %i.blw, align 1
  %i.blz = getelementptr inbounds nuw i8, ptr %0, i64 926
  store i8 0, ptr %i.blz, align 2
  %i.bma = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 2 uses
  %i.bmb = load i8, ptr %i.bma, align 4, !range !38, !noundef !24
  %i.bmc = trunc nuw i8 %i.bmb to i1
  br i1 %i.bmc, label %bb.vj, label %bb.vi

bb.vg:                                            ; preds = %bb.vf
  %i.bmd = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.val225 = load i64, ptr %i.bmd, align 8        ; 2 uses
  %i.bme = icmp eq i64 %.val225, 0
  br i1 %i.bme, label %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$xtask..common..command..Command$GT$$GT$17h12d64c8d176cbea7E.exit", label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.bmf = getelementptr i8, ptr %0, i64 496
  %.val226 = load ptr, ptr %i.bmf, align 8, !nonnull !24, !noundef !24
  %i.bmg = shl nuw i64 %.val225, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val226, i64 noundef %i.bmg, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$xtask..common..command..Command$GT$$GT$17h12d64c8d176cbea7E.exit"

bb.vi:                                            ; preds = %bb.vj, %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$xtask..common..command..Command$GT$$GT$17h12d64c8d176cbea7E.exit"
  store i8 0, ptr %i.bma, align 4
  br label %bb.vm

bb.vj:                                            ; preds = %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$xtask..common..command..Command$GT$$GT$17h12d64c8d176cbea7E.exit"
  %i.bmh = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$xtask..test..workload..TestWorkload$GT$17h678d4632d7b7cad4E"(ptr noalias noundef align 8 dereferenceable(192) %i.bmh)
          to label %bb.vi unwind label %bb.vl

bb.vk:                                            ; preds = %bb.zv, %bb.vl, %bb.c
  %.pn187.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn187.pn.pn.pn.pn.pn, %bb.zv ], [ %.pn187.pn.pn.pn.pn.pn, %bb.c ], [ %i.bmj, %bb.vl ]
  %i.bmi = getelementptr inbounds nuw i8, ptr %0, i64 924
  store i8 0, ptr %i.bmi, align 4
  store i8 2, ptr %i.ft, align 8
  resume { ptr, i32 } %.pn187.pn.pn.pn.pn.pn.pn

bb.vl:                                            ; preds = %bb.zo, %bb.vj
  %i.bmj = landingpad { ptr, i32 }
          cleanup
  br label %bb.vk

bb.vm:                                            ; preds = %bb.zn, %bb.vi
  %.sroa.046.2 = phi ptr [ %.sroa.046.0, %bb.zn ], [ null, %bb.vi ]
  store i8 1, ptr %i.ft, align 8
  %i.bmk = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.046.2, 1
  br label %common.ret

.body443:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ue, %bb.un, %bb.uh, %bb.tn, %bb.tl, %bb.tk, %bb.ts, %bb.tq, %bb.tx, %bb.tz, %bb.uu
  %.pn98.pn = phi { ptr, i32 } [ %i.bjb, %bb.tq ], [ %i.bjv, %bb.ue ], [ %.pn93, %bb.uu ], [ %i.bjg, %bb.ts ], [ %lpad.thr_comm.i437, %bb.tl ], [ %i.biz, %bb.tn ], [ %i.biu, %bb.tk ], [ %i.bjo, %bb.tz ], [ %.pn87, %bb.un ], [ %i.bjm, %bb.tx ], [ %i.bkf, %bb.uh ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val213 = load i32, ptr %i.en, align 4, !range !93, !noundef !24
  %i.bml = call noundef i32 @close(i32 noundef %.val213) #47 ; 0 uses
  br label %bb.ux

bb.vn:                                            ; preds = %bb.tt, %bb.to
  %.sroa.046.3 = phi ptr [ %i.bit, %bb.to ], [ %i.bjf, %bb.tt ]
  %.val212 = load i32, ptr %i.en, align 4, !range !93, !noundef !24
  %i.bmm = call noundef i32 @close(i32 noundef %.val212) #47 ; 0 uses
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vn, %bb.vr
  %.sroa.046.4 = phi ptr [ %i.bdy, %bb.vr ], [ %.sroa.046.3, %bb.vn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  %i.bmn = load i64, ptr %i.eo, align 8, !range !47, !alias.scope !27220, !noundef !24
  %i.bmo = icmp eq i64 %i.bmn, -9223372036854775808
  br i1 %i.bmo, label %bb.vp, label %bb.vq

bb.vp:                                            ; preds = %bb.vo
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$xtask..bench..workload..BenchWorkload$GT$17h918730da179636d7E"(ptr noalias noundef align 8 dereferenceable(152) %i.bmp)
          to label %"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E.exit" unwind label %bb.va

bb.vq:                                            ; preds = %bb.vo
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$xtask..test..workload..TestWorkload$GT$17h678d4632d7b7cad4E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.eo)
          to label %"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E.exit" unwind label %bb.va

bb.vr:                                            ; preds = %bb.rp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !27175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !27170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !27170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !27170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !27170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  br label %bb.vo

"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E.exit": ; preds = %bb.vp, %bb.vq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  br label %bb.vs

bb.vs:                                            ; preds = %bb.xo, %"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E.exit"
  %.sroa.046.5 = phi ptr [ %.sroa.046.4, %"_ZN4core3ptr54drop_in_place$LT$xtask..common..workload..Workload$GT$17h6da5b297e4e417b3E.exit" ], [ %.sroa.046.6, %bb.xo ] ; 2 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %0, i64 544
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$$GT$17h13c831d2935c961bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.bmq)
          to label %"_ZN4core3ptr113drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0fbbd1c36456640dE.exit470" unwind label %bb.oq

bb.vt:                                            ; preds = %bb.ql, %bb.qp, %bb.rg, %bb.uz
  %.pn170.pn = phi { ptr, i32 } [ %i.bda, %bb.rg ], [ %.pn104, %bb.uz ], [ %i.avm, %bb.qp ], [ %.pn168, %bb.ql ]
  %i.bmr = getelementptr inbounds nuw i8, ptr %0, i64 544
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$serde_json..value..Value$RP$$GT$$GT$17h13c831d2935c961bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.bmr)
          to label %"_ZN4core3ptr113drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h0fbbd1c36456640dE.exit472" unwind label %bb.mg

bb.vu:                                            ; preds = %bb.qn
  %i.bms = getelementptr inbounds nuw i8, ptr %0, i64 922
  store i8 1, ptr %i.bms, align 2
  %i.bmt = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.bmu = getelementptr inbounds nuw i8, ptr %0, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmt, ptr noundef nonnull align 8 dereferenceable(24) %i.bmu, i64 24, i1 false)
  %i.bmv = getelementptr i8, ptr %0, i64 1104
  %.val278 = load ptr, ptr %i.bmv, align 8, !nonnull !24, !noundef !24
  %i.bmw = getelementptr i8, ptr %0, i64 1112
  %.val279 = load i64, ptr %i.bmw, align 8, !noundef !24 ; 7 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %0, i64 1120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27221
  %i.bmy = mul i64 %.val279, 272                  ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %.val279, 33909456017848440
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.vv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i473, !prof !43

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i473: ; preds = %bb.vu
  %i.bmz = icmp eq i64 %i.bmy, 0
  br i1 %i.bmz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74600da42ffc07a3E.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i474"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i474": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i473
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !27222
  %i.bna = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bmy, i64 noundef range(i64 1, 9) 8) #47, !noalias !27222 ; 2 uses
  %i.bnb = icmp eq ptr %i.bna, null
  br i1 %i.bnb, label %bb.vv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74600da42ffc07a3E.exit.i.i.i.i.i.i"

bb.vv:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i474", %bb.vu
  %.sroa.4.0.ph.i.i.i.i.i476 = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i474" ], [ 0, %bb.vu ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i476, i64 %i.bmy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #54
          to label %.noexc477 unwind label %bb.vy

.noexc477:                                        ; preds = %bb.vv
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74600da42ffc07a3E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i474", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i473
  %.sroa.10.0.i.i.i.i.i475 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i473 ], [ %i.bna, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i474" ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i473 ], [ %.val279, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i474" ] ; 2 uses
  %2 = icmp samesign ule i64 %.val279, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %2)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !27221
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i475, ptr %i.bnc, align 8, !noalias !27221
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27223)
  call void @llvm.experimental.noalias.scope.decl(metadata !27224)
  %3 = icmp eq i64 %.val279, 0
  br i1 %3, label %.loopexit807, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74600da42ffc07a3E.exit.i.i.i.i.i.i", %bb.vw
  %.val20.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bng, %bb.vw ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74600da42ffc07a3E.exit.i.i.i.i.i.i" ] ; 4 uses
  %i.bne = getelementptr inbounds nuw [8 x i8], ptr %.val278, i64 %.val20.i.i.i.i.i.i.i.i.i
  %.val21.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bne, align 8, !noalias !27225, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27226
  invoke fastcc void @"_ZN70_$LT$xtask..common..command..Command$u20$as$u20$core..clone..Clone$GT$5clone17ha4e20a443f081a27E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(272) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val21.i.i.i.i.i.i.i.i.i)
          to label %bb.vw unwind label %.body.i.i.i.i, !noalias !27225

bb.vw:                                            ; preds = %.preheader.i.i.i.i.i.i
  %i.bnf = getelementptr inbounds nuw [272 x i8], ptr %.sroa.10.0.i.i.i.i.i475, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bnf, ptr noundef nonnull readonly align 8 dereferenceable(272) %i.d, i64 272, i1 false), !noalias !27227
  %i.bng = add nuw nsw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27226
  %i.bnh = icmp eq i64 %i.bng, %.val279
  br i1 %i.bnh, label %.loopexit807, label %.preheader.i.i.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.preheader.i.i.i.i.i.i
  %i.bni = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i, ptr %i.bnd, align 8, !alias.scope !27228, !noalias !27229
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$xtask..common..command..Command$GT$$GT$17h5b8f9efd7e2155e9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #55
          to label %.body478 unwind label %bb.vx, !noalias !27221

bb.vx:                                            ; preds = %.body.i.i.i.i
  %i.bnj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !27221
  unreachable

bb.vy:                                            ; preds = %bb.vv
  %i.bnk = landingpad { ptr, i32 }
          cleanup
  br label %.body478

.loopexit807:                                     ; preds = %bb.vw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h74600da42ffc07a3E.exit.i.i.i.i.i.i"
  store i64 %.val279, ptr %i.bnd, align 8, !alias.scope !27228, !noalias !27229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  %i.bnl = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bnm = load ptr, ptr %i.bnl, align 8, !nonnull !24, !align !31, !noundef !24
  %i.bnn = getelementptr i8, ptr %0, i64 1128
  %.val280 = load ptr, ptr %i.bnn, align 8, !nonnull !24, !noundef !24
  %i.bno = getelementptr i8, ptr %0, i64 1136
  %.val281 = load i64, ptr %i.bno, align 8, !noundef !24
  %i.bnp = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bnq = load i64, ptr %i.bnp, align 8, !noundef !24
  %i.bnr = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bns = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bnt = load ptr, ptr %i.bns, align 8, !nonnull !24, !align !42, !noundef !24
  %i.bnu = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bnv = load i64, ptr %i.bnu, align 8, !noundef !24
  %i.bnw = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bnx = getelementptr inbounds nuw i8, ptr %0, i64 921
  %i.bny = load i8, ptr %i.bnx, align 1, !range !38, !noundef !24
  %.sroa.8627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %.val280, ptr %.sroa.8627.0..sroa_idx, align 8
  %.sroa.9628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i64 %.val281, ptr %.sroa.9628.0..sroa_idx, align 8
  %.sroa.10629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store ptr %i.bnt, ptr %.sroa.10629.0..sroa_idx, align 8
  %.sroa.11630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 %i.bnv, ptr %.sroa.11630.0..sroa_idx, align 8
  %.sroa.12631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i64 %i.bnq, ptr %.sroa.12631.0..sroa_idx, align 8
  %.sroa.14633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store ptr %i.bnm, ptr %.sroa.14633.0..sroa_idx, align 8
  %.sroa.15634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2032
  store ptr %i.bnr, ptr %.sroa.15634.0..sroa_idx, align 8
  %.sroa.16635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2040
  store ptr %i.bnw, ptr %.sroa.16635.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2049
  store i8 0, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2050
  store i8 %i.bny, ptr %.sroa.19.0..sroa_idx, align 2
  br label %bb.vz

bb.vz:                                            ; preds = %bb.b, %.loopexit807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  %i.bnz = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  invoke fastcc void @"_ZN5xtask6common7command12run_commands28_$u7b$$u7b$closure$u7d$$u7d$17h489cc10dbe2d418eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.fm, ptr noundef nonnull align 8 %i.bnz, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.wb unwind label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.boa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$xtask..common..command..run_commands..$u7b$$u7b$closure$u7d$$u7d$$GT$17h92d4193f566abe03E"(ptr noundef nonnull align 8 %i.bnz) #55
          to label %.body505 unwind label %bb.mg

bb.wb:                                            ; preds = %bb.vz
  %i.bob = load i64, ptr %i.fm, align 8, !range !39, !noundef !24 ; 8 uses
  %i.boc = icmp eq i64 %i.bob, -9223372036854775807
  br i1 %i.boc, label %bb.wc, label %bb.wd

bb.wc:                                            ; preds = %bb.wb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  store i8 7, ptr %i.ft, align 8
  br label %common.ret

bb.wd:                                            ; preds = %bb.wb
  %.sroa.3638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.3638.0.copyload = load ptr, ptr %.sroa.3638.0..sroa_idx, align 8 ; 11 uses
  %.sroa.5639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %.sroa.5639.0.copyload = load i64, ptr %.sroa.5639.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  %i.bod = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.boe = load i8, ptr %i.bod, align 1, !range !90, !noundef !24
  %cond.i480 = icmp eq i8 %i.boe, 3
  br i1 %cond.i480, label %bb.we, label %"_ZN4core3ptr86drop_in_place$LT$xtask..common..command..run_commands..$u7b$$u7b$closure$u7d$$u7d$$GT$17h92d4193f566abe03E.exit"

bb.we:                                            ; preds = %bb.wd
  %i.bof = getelementptr inbounds nuw i8, ptr %0, i64 1296
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$xtask..common..command..run_batch..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd0fd49840d4b55efE"(ptr noundef nonnull align 8 %i.bof)
          to label %bb.wg unwind label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.bog = landingpad { ptr, i32 }
          cleanup
  %i.boh = getelementptr inbounds nuw i8, ptr %0, i64 1248
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E"(ptr noalias noundef align 8 dereferenceable(24) %i.boh) #55
          to label %.body505 unwind label %bb.wh

bb.wg:                                            ; preds = %bb.we
  %i.boi = getelementptr inbounds nuw i8, ptr %0, i64 1248
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E"(ptr noalias noundef align 8 dereferenceable(24) %i.boi)
          to label %"_ZN4core3ptr86drop_in_place$LT$xtask..common..command..run_commands..$u7b$$u7b$closure$u7d$$u7d$$GT$17h92d4193f566abe03E.exit" unwind label %bb.wi

bb.wh:                                            ; preds = %bb.wf
  %i.boj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.wi:                                            ; preds = %bb.wg
  %i.bok = landingpad { ptr, i32 }
          cleanup
  br label %.body505

"_ZN4core3ptr86drop_in_place$LT$xtask..common..command..run_commands..$u7b$$u7b$closure$u7d$$u7d$$GT$17h92d4193f566abe03E.exit": ; preds = %bb.wd, %bb.wg
  %i.bol = icmp eq i64 %i.bob, -9223372036854775808
  br i1 %i.bol, label %bb.xl, label %bb.wj

bb.wj:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$xtask..common..command..run_commands..$u7b$$u7b$closure$u7d$$u7d$$GT$17h92d4193f566abe03E.exit"
  store i64 %i.bob, ptr %i.fn, align 8
  %.sroa.4641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %.sroa.3638.0.copyload, ptr %.sroa.4641.0..sroa_idx, align 8
  %.sroa.5642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %.sroa.5639.0.copyload, ptr %.sroa.5642.0..sroa_idx, align 8
  %i.bom = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bon = getelementptr i8, ptr %0, i64 1136
  %.val283 = load i64, ptr %i.bon, align 8, !noundef !24 ; 4 uses
  %i.boo = icmp ult i64 %.val283, 33909456017848441
  call void @llvm.assume(i1 %i.boo)
  %i.bop = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.boq = load i64, ptr %i.bop, align 8, !noundef !24
  %i.bor = add i64 %i.boq, %.val283
  store i64 %i.bor, ptr %i.bop, align 8
  %i.bos = getelementptr inbounds nuw i8, ptr %0, i64 921
  %i.bot = load i8, ptr %i.bos, align 1, !range !38, !noundef !24
  %i.bou = trunc nuw i8 %i.bot to i1
  br i1 %i.bou, label %bb.wk, label %"_ZN4core3ptr80drop_in_place$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$17hea17f039477a24c5E.exit.i.i.i.preheader"

"_ZN4core3ptr80drop_in_place$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$17hea17f039477a24c5E.exit.i.i.i.preheader": ; preds = %bb.wj
  %i.bov = icmp eq i64 %.sroa.5639.0.copyload, 0
  br i1 %i.bov, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ca717c3dfa02006E.exit.i", label %.lr.ph1515.a

bb.wk:                                            ; preds = %bb.wj
  %i.bow = icmp ult i64 %.sroa.5639.0.copyload, 115292150460684698
  call void @llvm.assume(i1 %i.bow)
  store i64 %.sroa.5639.0.copyload, ptr %i.fl, align 8
  store i64 %.val283, ptr %i.fk, align 8
  %i.box = icmp eq i64 %.sroa.5639.0.copyload, %.val283
  br i1 %i.box, label %bb.wn, label %bb.wl, !prof !29

bb.wl:                                            ; preds = %bb.wk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  store ptr null, ptr %i.fj, align 8
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.fj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @807) #54
          to label %bb.wm unwind label %.thread796

.thread796:                                       ; preds = %bb.wl
  %i.boy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  invoke fastcc void @"_ZN4core3ptr103drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$$GT$17h076e4bdcd3dbabf2E"(ptr noalias noundef align 8 dereferenceable(24) %i.fn) #55
          to label %.body505 unwind label %bb.mg

bb.wm:                                            ; preds = %bb.wl
  unreachable

bb.wn:                                            ; preds = %bb.wk
  %i.boz = getelementptr inbounds nuw i8, ptr %0, i64 922
  store i8 0, ptr %i.boz, align 2
  %i.bpa = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %.sroa.0665.0.copyload = load i64, ptr %i.bpa, align 8 ; 3 uses
  %.sroa.5666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.sroa.5666.0.copyload = load ptr, ptr %.sroa.5666.0..sroa_idx, align 8, !nonnull !24, !noundef !24 ; 5 uses
  %.sroa.6667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.sroa.6667.0.copyload = load i64, ptr %.sroa.6667.0..sroa_idx, align 8 ; 3 uses
  %i.bpb = icmp ult i64 %.sroa.6667.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.bpb)
  %.idx1215 = shl nuw nsw i64 %.sroa.6667.0.copyload, 3
  %i.bpc = getelementptr inbounds nuw i8, ptr %.sroa.5666.0.copyload, i64 %.idx1215 ; 2 uses
  %i.bpd = ptrtoint ptr %i.bpc to i64
  %i.bpe = getelementptr inbounds nuw [80 x i8], ptr %.sroa.3638.0.copyload, i64 %.sroa.5639.0.copyload ; 3 uses
  %.sroa.12660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12660.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %.sroa.5666.0.copyload, ptr %i.fi, align 8
  %.sroa.5653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %.sroa.6654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i64 %.sroa.0665.0.copyload, ptr %.sroa.6654.0..sroa_idx, align 8
  %.sroa.7655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store i64 %i.bpd, ptr %.sroa.7655.0..sroa_idx, align 8
  %.sroa.8656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  store ptr %.sroa.3638.0.copyload, ptr %.sroa.8656.0..sroa_idx, align 8
  %.sroa.9657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 40 ; 4 uses
  %.sroa.10658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  store i64 %i.bob, ptr %.sroa.10658.0..sroa_idx, align 8
  %.sroa.11659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  store ptr %i.bpe, ptr %.sroa.11659.0..sroa_idx, align 8
  %i.bpf = icmp eq i64 %.sroa.6667.0.copyload, 0
  br i1 %i.bpf, label %._crit_edge963, label %.lr.ph962

.lr.ph962:                                        ; preds = %bb.wn
  %.sroa.9673.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.bpg = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.wo

bb.wo:                                            ; preds = %.lr.ph962, %bb.xi
  %i.bph = phi ptr [ %.sroa.3638.0.copyload, %.lr.ph962 ], [ %i.bpm, %bb.xi ] ; 5 uses
  %i.bpi = phi ptr [ %.sroa.5666.0.copyload, %.lr.ph962 ], [ %i.bpj, %bb.xi ] ; 2 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 8 ; 8 uses
  %i.bpk = load ptr, ptr %i.bpi, align 8, !noalias !27230, !nonnull !24, !align !31, !noundef !24 ; 4 uses
end_hunk_1
