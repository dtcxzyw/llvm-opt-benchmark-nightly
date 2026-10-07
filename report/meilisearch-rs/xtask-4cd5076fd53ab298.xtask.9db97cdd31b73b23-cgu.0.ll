Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN10serde_core2de9MapAccess10next_value17h290cf84af363a2e6E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2981
  store i64 3, ptr %i.c, align 8, !noalias !2898
  %i.gl = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %.val69.i.i.i.i.i, i64 noundef %.val70.i.i.i.i.i), !noalias !2982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2981
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcc6fb5511c80899eE.exit"

bb.bx:                                            ; preds = %bb.br
  store i8 0, ptr %i.p, align 8, !alias.scope !2983
  %i.gm = load i64, ptr %i.o, align 8, !range !47, !alias.scope !2983 ; 2 uses
  %.not.i158.not.i.i.i.i.i = icmp eq i64 %i.gm, -9223372036854775808
  br i1 %.not.i158.not.i.i.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit161.i.i.i.i.i.backedge", label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gn = load i64, ptr %i.t, align 8, !alias.scope !2984, !noalias !2985, !noundef !24 ; 3 uses
  %i.go = icmp eq i64 %i.gn, %i.gm
  br i1 %i.go, label %bb.bz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i160.i.i.i.i.i"

bb.bz:                                            ; preds = %bb.by
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i160.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i160.i.i.i.i.i": ; preds = %bb.bz, %bb.by
  %i.gp = load ptr, ptr %i.u, align 8, !alias.scope !2984, !noalias !2985, !nonnull !24, !noundef !24
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gn
  store i8 58, ptr %i.gq, align 1
  %i.gr = add i64 %i.gn, 1
  store i64 %i.gr, ptr %i.t, align 8, !alias.scope !2984, !noalias !2985
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit161.i.i.i.i.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit161.i.i.i.i.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i160.i.i.i.i.i", %bb.bx, %.critedge.i.i.i.i.i
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit161.i.i.i.i.i"

bb.ca:                                            ; preds = %bb.br
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %.val67.i.i.i.i.i = load i64, ptr %i.gs, align 8, !alias.scope !2898, !noundef !24
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %.val68.i.i.i.i.i = load i64, ptr %i.gt, align 8, !alias.scope !2898, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2986
  store i64 6, ptr %i.b, align 8, !noalias !2898
  %i.gu = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val67.i.i.i.i.i, i64 noundef %.val68.i.i.i.i.i), !noalias !2987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2986
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcc6fb5511c80899eE.exit"

bb.cb:                                            ; preds = %bb.bc
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #54
  unreachable

bb.cc:                                            ; preds = %bb.bc
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bc
  %storemerge65.i.i.i.i.i = phi i64 [ 8, %bb.cc ], [ 7, %bb.bc ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %.val.i.i.i.i.i = load i64, ptr %i.gv, align 8, !alias.scope !2898, !noundef !24
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %.val66.i.i.i.i.i = load i64, ptr %i.gw, align 8, !alias.scope !2898, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2988
  store i64 %storemerge65.i.i.i.i.i, ptr %i.a, align 8, !noalias !2898
  %i.gx = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val.i.i.i.i.i, i64 noundef %.val66.i.i.i.i.i), !noalias !2989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2988
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcc6fb5511c80899eE.exit"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcc6fb5511c80899eE.exit": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.i.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit84.i.i.i.i.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit88.i.i.i.i.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit92.i.i.i.i.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit96.i.i.i.i.i", %bb.ae, %bb.ag, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit142.i.i.i.i.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit123.i.i.i.i.i", %bb.a, %bb.h, %bb.i, %bb.ad, %bb.an, %bb.ar, %bb.bj, %bb.bk, %bb.bo, %bb.bv, %bb.bw, %bb.ca, %bb.cd
  %.sroa.0.0.i = phi ptr [ %i.m, %bb.a ], [ %i.gi, %bb.bv ], [ %i.an, %bb.h ], [ %i.ft, %bb.bo ], [ %i.fg, %bb.bj ], [ %i.cv, %bb.ad ], [ %i.gx, %bb.cd ], [ %i.gl, %bb.bw ], [ %i.ds, %bb.an ], [ null, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit123.i.i.i.i.i" ], [ %i.fj, %bb.bk ], [ %i.dv, %bb.ar ], [ %i.aq, %bb.i ], [ %i.gu, %bb.ca ], [ %i.bm, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit88.i.i.i.i.i" ], [ %i.bf, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit84.i.i.i.i.i" ], [ %i.ay, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.i.i" ], [ %i.bt, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit92.i.i.i.i.i" ], [ %i.cw, %bb.ae ], [ %i.ca, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit96.i.i.i.i.i" ], [ %i.fq, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit142.i.i.i.i.i" ], [ null, %bb.ag ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN10serde_core2de9MapAccess10next_value17hcd21fa6643272d3cE(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3133, !noalias !3134, !noundef !24 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !3135, !noalias !3136 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3133, !noalias !3134, !nonnull !24, !align !42, !noundef !24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !3139, !noundef !24
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !58

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !3140, !noalias !3136
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3131
  store i64 3, ptr %i.o, align 8, !noalias !3131
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hbff09041473190e1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3131
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3131
  store i64 6, ptr %i.p, align 8, !noalias !3131
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hbff09041473190e1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3131
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !3141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 8 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !3146
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit153.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bg, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eo, %bb.bg ] ; 11 uses
  %.promoted.i194.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bg ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.en, %bb.bg ] ; 7 uses
  %.sroa.01.0193.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bg ] ; 3 uses
  %.sroa.8.0192.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.030.0186.i.i.i.i.i, %bb.bg ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i194.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !3148, !noundef !24 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !3149, !noalias !3150
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i, label %bb.f

.loopexit153.i.i.i.i.i:                           ; preds = %bb.bg, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3146
  store i64 5, ptr %i.n, align 8, !noalias !3146
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hbff09041473190e1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3146
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ah, label %bb.ag, !prof !57

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !3151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.j, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !3155, !noundef !24
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !3156, !noalias !3157
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit256.i.i.i.i.i, !prof !59

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3159)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3160, !noundef !24
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !3161, !noalias !3157
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit256.i.i.i.i.i, !prof !59

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3163)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3164, !noundef !24
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !3165, !noalias !3157
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %.loopexit256.i.i.i.i.i, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i": ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3166
  store i64 5, ptr %i.f, align 8, !noalias !3166
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !3167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3166
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

.loopexit256.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3166
  store i64 9, ptr %i.e, align 8, !noalias !3166
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !3167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3166
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !3168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  %umax.i69.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  %exitcond.not.i71.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i71.not.i.i.i.i.i, label %bb.p, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i74.i.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !3172, !noundef !24
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !3173, !noalias !3174
  %.not.i72.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i72.i.i.i.i.i, label %bb.q, label %.loopexit249.i.i.i.i.i, !prof !59

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176)
  %exitcond.not.i71.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i69.i.i.i.i.i
  br i1 %exitcond.not.i71.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i74.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !3177, !noundef !24
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !3178, !noalias !3174
  %.not.i72.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i72.1.i.i.i.i.i, label %bb.s, label %.loopexit249.i.i.i.i.i, !prof !59

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  %exitcond.not.i71.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i69.i.i.i.i.i
  br i1 %exitcond.not.i71.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i74.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !3181, !noundef !24
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !3182, !noalias !3174
  %.not.i72.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i72.2.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %.loopexit249.i.i.i.i.i, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i74.i.i.i.i.i": ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3183
  store i64 5, ptr %i.d, align 8, !noalias !3183
  %i.bk = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !3184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3183
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

.loopexit249.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3183
  store i64 9, ptr %i.c, align 8, !noalias !3183
  %i.bl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !3184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3183
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !3185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3186)
  %umax.i77.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  %exitcond.not.i79.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i79.not.i.i.i.i.i, label %bb.v, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i"

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !3189, !noundef !24
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !3190, !noalias !3191
  %.not.i80.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i80.i.i.i.i.i, label %bb.w, label %.loopexit242.i.i.i.i.i, !prof !59

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3193)
  %exitcond.not.i79.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i77.i.i.i.i.i
  br i1 %exitcond.not.i79.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !3194, !noundef !24
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !3195, !noalias !3191
  %.not.i80.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i80.1.i.i.i.i.i, label %bb.y, label %.loopexit242.i.i.i.i.i, !prof !59

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3197)
  %exitcond.not.i79.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i77.i.i.i.i.i
  br i1 %exitcond.not.i79.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !3198, !noundef !24
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !3199, !noalias !3191
  %.not.i80.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i80.2.i.i.i.i.i, label %bb.aa, label %.loopexit242.i.i.i.i.i, !prof !59

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  %exitcond.not.i79.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i77.i.i.i.i.i
  br i1 %exitcond.not.i79.3.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !3202, !noundef !24
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !3203, !noalias !3191
  %.not.i80.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i80.3.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %.loopexit242.i.i.i.i.i, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i": ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3204
  store i64 5, ptr %i.b, align 8, !noalias !3204
  %i.bz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !3205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3204
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

.loopexit242.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3204
  store i64 9, ptr %i.a, align 8, !noalias !3204
  %i.ca = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !3205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3204
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !3206
  %i.cc = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h5efa6bd67d590e58E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %.0.val) ; 2 uses
  %.not57.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not57.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !3207
  %i.ce = tail call noundef align 8 ptr @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17h52a610ba0f700e2eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3208)
  %i.cf = zext i1 %.sroa.01.0193.i.i.i.i.i to i64 ; 2 uses
  %i.cg = load i64, ptr %i.ad, align 8, !alias.scope !3209, !noundef !24 ; 3 uses
  %i.ch = load i64, ptr %.0.val, align 8, !range !30, !alias.scope !3209, !noundef !24
  %i.ci = sub i64 %i.ch, %i.cg
  %i.cj = icmp ult i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h287f6d9e6297d660E.exit.i.i.i.i.i.i", !prof !26

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %.0.val, i64 noundef %i.cg, i64 noundef %i.cf, i64 noundef 1, i64 noundef 1)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !3210
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h287f6d9e6297d660E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h287f6d9e6297d660E.exit.i.i.i.i.i.i": ; preds = %bb.af, %bb.ae
  %i.ck = phi i64 [ %i.cg, %bb.ae ], [ %.pre.i.i.i.i.i.i, %bb.af ] ; 3 uses
  br i1 %.sroa.01.0193.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h287f6d9e6297d660E.exit.i.i.i.i.i.i"
  %i.cl = load ptr, ptr %i.af, align 8, !alias.scope !3210, !nonnull !24, !noundef !24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 %.sroa.8.0192.i.i.i.i.i, ptr %i.cm, align 1, !noalias !3211
  %i.cn = add i64 %i.ck, 1
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.i.i.i.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h287f6d9e6297d660E.exit.i.i.i.i.i.i"
  %.val5.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ck, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h287f6d9e6297d660E.exit.i.i.i.i.i.i" ]
  store i64 %.val5.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !alias.scope !3210, !noalias !3212
  %i.co = load i64, ptr %i.q, align 8, !alias.scope !3213, !noundef !24
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.q, align 8, !alias.scope !3213
  br label %bb.ak

bb.ag:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3146
  store i64 10, ptr %i.m, align 8, !noalias !3146
  %i.cq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hbff09041473190e1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3146
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

bb.ah:                                            ; preds = %bb.h
  %i.cr = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h5efa6bd67d590e58E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %.0.val) ; 2 uses
  %.not61.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not61.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit"

.loopexit150.i.i.i.i.i:                           ; preds = %bb.ah, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.01.0193.i.i.i.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.loopexit150.i.i.i.i.i
  %i.cs = load i64, ptr %i.ad, align 8, !alias.scope !3146, !noundef !24 ; 2 uses
  %.not62.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not62.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h63b3b0f00c1bcd70E.exit", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = add i64 %i.cs, -1                       ; 3 uses
  store i64 %i.ct, ptr %i.ad, align 8, !alias.scope !3146
  %i.cu = load i64, ptr %.0.val, align 8, !range !30, !alias.scope !3146, !noundef !24
  %i.cv = icmp ult i64 %i.ct, %i.cu
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = load ptr, ptr %i.af, align 8, !alias.scope !3146, !nonnull !24, !noundef !24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit150.i.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.i.i.i.i.i"
  %.sroa.054.1.i.i.i.i.i = phi i1 [ false, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.i.i.i.i.i" ], [ true, %.loopexit150.i.i.i.i.i ], [ true, %bb.aj ]
  %.sroa.055.1.i.i.i.i.i = phi i8 [ %i.ak, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.i.i.i.i.i" ], [ %.sroa.8.0192.i.i.i.i.i, %.loopexit150.i.i.i.i.i ], [ %i.cy, %bb.aj ] ; 2 uses
  %i.cz = load i64, ptr %i.r, align 8, !alias.scope !3214, !noalias !3215, !noundef !24 ; 6 uses
  %.promoted.i84185.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !3216, !noalias !3217 ; 2 uses
  %i.da = icmp ult i64 %.promoted.i84185.i.i.i.i.i, %i.cz
  br i1 %i.da, label %.lr.ph.i89.lr.ph.i.i.i.i.i, label %.loopexit145.i.i.i.i.i

.lr.ph.i89.lr.ph.i.i.i.i.i:                       ; preds = %bb.ak
  %i.db = load ptr, ptr %i.u, align 8, !alias.scope !3214, !noalias !3215, !nonnull !24, !align !42, !noundef !24 ; 3 uses
  br label %.lr.ph.i89.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i89.lr.ph.i.i.i.i.i
  %.promoted.i84188.i.i.i.i.i = phi i64 [ %.promoted.i84185.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.av ]
  %.sroa.028.0187.i.i.i.i.i = phi i1 [ %.sroa.054.1.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i ], [ true, %bb.av ] ; 2 uses
  %.sroa.030.0186.i.i.i.i.i = phi i8 [ %.sroa.055.1.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i ], [ %i.ds, %bb.av ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3218)
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i89.i.i.i.i.i
  %i.dc = phi i64 [ %.promoted.i84188.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i ], [ %i.df, %bb.am ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3220)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !3221, !noundef !24
  switch i8 %i.de, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 44, label %bb.aq
    i8 93, label %bb.ar
    i8 125, label %bb.as
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.df = add i64 %i.dc, 1                        ; 3 uses
  store i64 %i.df, ptr %i.q, align 8, !alias.scope !3222, !noalias !3217
  %exitcond.not.i90.i.i.i.i.i = icmp eq i64 %i.df, %i.cz
  br i1 %exitcond.not.i90.i.i.i.i.i, label %.loopexit145.i.i.i.i.i, label %bb.al

.loopexit145.i.i.i.i.i:                           ; preds = %bb.ak, %bb.av, %bb.am
  %.sroa.030.0182.i.i.i.i.i = phi i8 [ %i.ds, %bb.av ], [ %.sroa.030.0186.i.i.i.i.i, %bb.am ], [ %.sroa.055.1.i.i.i.i.i, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3146
  switch i8 %.sroa.030.0182.i.i.i.i.i, label %bb.an [
    i8 91, label %bb.ap
    i8 123, label %bb.ao
  ]

bb.an:                                            ; preds = %.loopexit145.i.i.i.i.i
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #54
  unreachable

end_hunk_0
begin_hunk_1_@"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h00dc492065e217d5E":bb.a
  %or.cond.not.i36 = select i1 %i.cj, i1 %.not.i35, i1 false
  br i1 %or.cond.not.i36, label %bb.w, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit38"

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !4482, !noalias !4483, !noundef !24 ; 3 uses
  %i.co = icmp eq i64 %i.cn, %i.cl
  br i1 %i.co, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i37"

bb.x:                                             ; preds = %bb.w
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i37": ; preds = %bb.x, %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !4482, !noalias !4483, !nonnull !24, !noundef !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  store i8 %i.ck, ptr %i.cr, align 1
  %i.cs = add i64 %i.cn, 1
  store i64 %i.cs, ptr %i.cm, align 8, !alias.scope !4482, !noalias !4483
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit38"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit38": ; preds = %bb.v, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i37"
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$9parse_str17h458984b9e04eb4daE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 dereferenceable(64) %i.ch, ptr noalias noundef align 8 dereferenceable(24) %0)
  %i.cu = load i64, ptr %i.f, align 8, !range !34, !noundef !24
  %i.cv = icmp eq i64 %i.cu, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !24, !noundef !24 ; 2 uses
  br i1 %i.cv, label %bb.ag, label %bb.ah, !prof !29

bb.y:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 8
  %i.cy = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab

bb.z:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 11, ptr %i.c, align 8
  %i.cz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.aa:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 7, ptr %i.m, align 8
  %i.da = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.al, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %.sroa.02.0 = phi ptr [ %i.dv, %bb.al ], [ %i.dq, %bb.ai ], [ %i.da, %bb.aa ], [ %i.df, %bb.ac ], [ %i.dh, %bb.ad ], [ %i.dk, %bb.af ], [ %i.dn, %bb.ah ], [ %i.cy, %bb.y ], [ %i.cz, %bb.z ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val21 = load i64, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val22 = load i64, ptr %i.dc, align 8
  %i.dd = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17he0a166f86c30ce24E(ptr noalias noundef nonnull align 8 %.sroa.02.0, i64 %.val21, i64 %.val22)
  br label %bb.am

bb.ac:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit26"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 1, ptr %i.de, align 1
  store i8 0, ptr %i.l, align 8
  %i.df = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.ad:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit30"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 0, ptr %i.dg, align 1
  store i8 0, ptr %i.k, align 8
  %i.dh = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ab

bb.ae:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit34"
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.am

bb.af:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit34"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.dk = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ab

bb.ag:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit38"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.am

bb.ah:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit38"
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cx, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.dm, align 8
  store i8 5, ptr %i.e, align 8
  %i.dn = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ab

bb.ai:                                            ; preds = %.thread13, %bb.i
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i64, ptr %i.do, align 8, !noundef !24
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val18 = load i64, ptr %i.dp, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4484
  store i64 10, ptr %i.a, align 8
  %i.dq = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val18), !noalias !4484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4484
  br label %bb.ab

bb.aj:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hfb8db8417cbc0b28E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(96) %0, i1 noundef zeroext true)
  %i.dr = load i64, ptr %i.h, align 8, !range !56, !noundef !24
  %i.ds = icmp eq i64 %i.dr, 3
  br i1 %i.ds, label %bb.ak, label %bb.al, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.dv = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.am:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit30", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit26", %bb.ae, %bb.ag, %bb.ak, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit", %bb.ab
  %.sroa.0.1 = phi ptr [ %i.dd, %bb.ab ], [ %i.du, %bb.ak ], [ %i.cx, %bb.ag ], [ %i.as, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit" ], [ %i.bf, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit26" ], [ %i.dj, %bb.ae ], [ %i.bs, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h2dc3e6baaabfce0cE.exit30" ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h3069df0055086c2aE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4527)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !4528, !noalias !4529, !noundef !24 ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !4528, !noalias !4529, !noundef !24 ; 10 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %.thread40

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !4528, !noalias !4529, !nonnull !24, !align !42, !noundef !24 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !noalias !4530, !noundef !24 ; 2 uses
  switch i8 %i.aa, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !67

bb.c:                                             ; preds = %bb.b
  %i.ab = add i8 %i.aa, -48
  %or.cond = icmp ult i8 %i.ab, 10
  br i1 %or.cond, label %bb.aj, label %.thread40, !prof !59

bb.d:                                             ; preds = %bb.b
  %i.ac = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ac, ptr %i.s, align 8, !alias.scope !4531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4532)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ac)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4533)
  %exitcond.not.i.not = icmp ult i64 %i.ac, %i.v
  br i1 %exitcond.not.i.not, label %bb.e, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !4534, !noundef !24
  %i.af = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !4535, !noalias !4536
  %.not.i = icmp eq i8 %i.ae, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !59

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4537)
  %exitcond.not.i.1 = icmp eq i64 %i.v, %i.af
  br i1 %exitcond.not.i.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !4538, !noundef !24
  %i.ai = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !4539, !noalias !4536
  %.not.i.1 = icmp eq i8 %i.ah, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !59

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4540)
  %exitcond.not.i.2 = icmp eq i64 %i.ai, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !4541, !noundef !24
  %i.al = add i64 %i.t, 4
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !4542, !noalias !4536
  %.not.i.2 = icmp eq i8 %i.ak, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit", label %bb.j, !prof !59

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4543
  store i64 5, ptr %i.f, align 8, !noalias !4543
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !4544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4543
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4543
  store i64 9, ptr %i.e, align 8, !noalias !4543
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !4544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4543
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !4545
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4546)
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ao)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4547)
  %exitcond.not.i22.not = icmp ult i64 %i.ao, %i.v
  br i1 %exitcond.not.i22.not, label %bb.l, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25"

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !4548, !noundef !24
  %i.ar = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !4549, !noalias !4550
  %.not.i23 = icmp eq i8 %i.aq, 114
  br i1 %.not.i23, label %bb.m, label %bb.q, !prof !59

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4551)
  %exitcond.not.i22.1 = icmp eq i64 %i.v, %i.ar
  br i1 %exitcond.not.i22.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !4552, !noundef !24
  %i.au = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !4553, !noalias !4550
  %.not.i23.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i23.1, label %bb.o, label %bb.q, !prof !59

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4554)
  %exitcond.not.i22.2 = icmp eq i64 %i.au, %umax.i20
  br i1 %exitcond.not.i22.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !4555, !noundef !24
  %i.ax = add i64 %i.t, 4
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !4556, !noalias !4550
  %.not.i23.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i23.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit26", label %bb.q, !prof !59

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4557
  store i64 5, ptr %i.d, align 8, !noalias !4557
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !4558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4557
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4557
  store i64 9, ptr %i.c, align 8, !noalias !4557
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !4558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4557
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !4559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4560)
  %umax.i28 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4561)
  %exitcond.not.i30.not = icmp ult i64 %i.ba, %i.v
  br i1 %exitcond.not.i30.not, label %bb.s, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33"

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !4562, !noundef !24
  %i.bd = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !4563, !noalias !4564
  %.not.i31 = icmp eq i8 %i.bc, 97
  br i1 %.not.i31, label %bb.t, label %bb.z, !prof !59

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4565)
  %exitcond.not.i30.1 = icmp eq i64 %i.v, %i.bd
  br i1 %exitcond.not.i30.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4566, !noundef !24
  %i.bg = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !4567, !noalias !4564
  %.not.i31.1 = icmp eq i8 %i.bf, 108
  br i1 %.not.i31.1, label %bb.v, label %bb.z, !prof !59

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  %exitcond.not.i30.2 = icmp eq i64 %i.bg, %umax.i28
  br i1 %exitcond.not.i30.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4569, !noundef !24
  %i.bj = add i64 %i.t, 4                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !4570, !noalias !4564
  %.not.i31.2 = icmp eq i8 %i.bi, 115
  br i1 %.not.i31.2, label %bb.x, label %bb.z, !prof !59

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4571)
  %exitcond.not.i30.3 = icmp eq i64 %i.bj, %umax.i28
  br i1 %exitcond.not.i30.3, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !4572, !noundef !24
  %i.bm = add i64 %i.t, 5
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !4573, !noalias !4564
  %.not.i31.3 = icmp eq i8 %i.bl, 101
  br i1 %.not.i31.3, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit34", label %bb.z, !prof !59

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33": ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4574
  store i64 5, ptr %i.b, align 8, !noalias !4574
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !4575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4574
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4574
  store i64 9, ptr %i.a, align 8, !noalias !4574
  %i.bo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !4575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4574
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

bb.aa:                                            ; preds = %bb.b
  %i.bp = add nuw i64 %i.t, 1
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !4576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hac0c276490b9e118E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef align 8 dereferenceable(64) %0, i1 noundef zeroext false)
  %i.bq = load i64, ptr %i.o, align 8, !range !56, !noundef !24
  %i.br = icmp eq i64 %i.bq, 3
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !29

bb.ab:                                            ; preds = %bb.b
  %i.bs = add nuw i64 %i.t, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !4577
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bu = load i64, ptr %i.k, align 8, !range !34, !noundef !24
  %i.bv = icmp eq i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !24, !noundef !24 ; 2 uses
  br i1 %i.bv, label %bb.ah, label %bb.ai, !prof !29

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.bz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit": ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 7, ptr %i.r, align 8
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread40, %bb.ai, %bb.ag, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit34", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit26", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit", %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cr, %bb.al ], [ %i.cm, %.thread40 ], [ %i.ca, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit" ], [ %i.cd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit26" ], [ %i.cf, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit34" ], [ %i.ci, %bb.ag ], [ %i.cl, %bb.ai ], [ %i.by, %bb.ac ], [ %i.bz, %bb.ad ]
  %i.cb = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h2db3c445fd96cae1E(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit26": ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %i.cc, align 1
  store i8 0, ptr %i.q, align 8
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit34": ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.ce, align 1
  store i8 0, ptr %i.p, align 8
  %i.cf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.ci = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bx, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.ck, align 8
  store i8 5, ptr %i.j, align 8
  %i.cl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread40:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4f3d251723666839E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hac0c276490b9e118E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(64) %0, i1 noundef zeroext true)
  %i.cn = load i64, ptr %i.m, align 8, !range !56, !noundef !24
  %i.co = icmp eq i64 %i.cn, 3
  br i1 %i.co, label %bb.ak, label %bb.al, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread"

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.cr = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h5e737721d85bac84E.exit.thread": ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33", %bb.z, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25", %bb.q, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cb, %bb.ae ], [ %i.cq, %bb.ak ], [ %i.bx, %bb.ah ], [ %i.az, %bb.q ], [ %i.an, %bb.j ], [ %i.ch, %bb.af ], [ %i.am, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i" ], [ %i.ay, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i25" ], [ %i.bn, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i33" ], [ %i.bo, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hc0ca08a5a6262175E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
end_hunk_1
begin_hunk_2_@"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hc0ca08a5a6262175E":bb.a
  br i1 %or.cond.not.i36, label %bb.w, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit38"

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !4640, !noalias !4641, !noundef !24 ; 3 uses
  %i.co = icmp eq i64 %i.cn, %i.cl
  br i1 %i.co, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i37"

bb.x:                                             ; preds = %bb.w
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i37": ; preds = %bb.x, %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !4640, !noalias !4641, !nonnull !24, !noundef !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  store i8 %i.ck, ptr %i.cr, align 1
  %i.cs = add i64 %i.cn, 1
  store i64 %i.cs, ptr %i.cm, align 8, !alias.scope !4640, !noalias !4641
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit38"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit38": ; preds = %bb.v, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i37"
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$9parse_str17h2daa3d128bb0c92fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 dereferenceable(64) %i.ch, ptr noalias noundef align 8 dereferenceable(24) %0)
  %i.cu = load i64, ptr %i.f, align 8, !range !34, !noundef !24
  %i.cv = icmp eq i64 %i.cu, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !24, !noundef !24 ; 2 uses
  br i1 %i.cv, label %bb.ag, label %bb.ah, !prof !29

bb.y:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 8
  %i.cy = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab

bb.z:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 11, ptr %i.c, align 8
  %i.cz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.aa:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 7, ptr %i.m, align 8
  %i.da = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.al, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %.sroa.02.0 = phi ptr [ %i.dv, %bb.al ], [ %i.dq, %bb.ai ], [ %i.da, %bb.aa ], [ %i.df, %bb.ac ], [ %i.dh, %bb.ad ], [ %i.dk, %bb.af ], [ %i.dn, %bb.ah ], [ %i.cy, %bb.y ], [ %i.cz, %bb.z ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val21 = load i64, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val22 = load i64, ptr %i.dc, align 8
  %i.dd = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0bd662c0478d6700E(ptr noalias noundef nonnull align 8 %.sroa.02.0, i64 %.val21, i64 %.val22)
  br label %bb.am

bb.ac:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit26"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 1, ptr %i.de, align 1
  store i8 0, ptr %i.l, align 8
  %i.df = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.ad:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit30"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 0, ptr %i.dg, align 1
  store i8 0, ptr %i.k, align 8
  %i.dh = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ab

bb.ae:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit34"
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.am

bb.af:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit34"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.dk = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ab

bb.ag:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit38"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.am

bb.ah:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit38"
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cx, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.dm, align 8
  store i8 5, ptr %i.e, align 8
  %i.dn = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ab

bb.ai:                                            ; preds = %.thread51, %bb.i
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load i64, ptr %i.do, align 8, !noundef !24
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val18 = load i64, ptr %i.dp, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4642
  store i64 10, ptr %i.a, align 8
  %i.dq = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val18), !noalias !4642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4642
  br label %bb.ab

bb.aj:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17haefe54babd6cefdfE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(96) %0, i1 noundef zeroext true)
  %i.dr = load i64, ptr %i.h, align 8, !range !56, !noundef !24
  %i.ds = icmp eq i64 %i.dr, 3
  br i1 %i.ds, label %bb.ak, label %bb.al, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.dv = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.am:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit30", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit26", %bb.ae, %bb.ag, %bb.ak, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit", %bb.ab
  %.sroa.0.1 = phi ptr [ %i.dd, %bb.ab ], [ %i.du, %bb.ak ], [ %i.cx, %bb.ag ], [ %i.as, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit" ], [ %i.bf, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit26" ], [ %i.dj, %bb.ae ], [ %i.bs, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit30" ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hf6acfd3a53c574c9E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4705)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !4706, !noalias !4707, !noundef !24 ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !4706, !noalias !4707, !noundef !24 ; 10 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %.thread40

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !4706, !noalias !4707, !nonnull !24, !align !42, !noundef !24 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !noalias !4708, !noundef !24 ; 2 uses
  switch i8 %i.aa, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !67

bb.c:                                             ; preds = %bb.b
  %i.ab = add i8 %i.aa, -48
  %or.cond = icmp ult i8 %i.ab, 10
  br i1 %or.cond, label %bb.aj, label %.thread40, !prof !59

bb.d:                                             ; preds = %bb.b
  %i.ac = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ac, ptr %i.s, align 8, !alias.scope !4709
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4710)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ac)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4712)
  %exitcond.not.i.not = icmp ult i64 %i.ac, %i.v
  br i1 %exitcond.not.i.not, label %bb.e, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !4713, !noundef !24
  %i.af = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !4714, !noalias !4715
  %.not.i = icmp eq i8 %i.ae, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !59

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4717)
  %exitcond.not.i.1 = icmp eq i64 %i.v, %i.af
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !4718, !noundef !24
  %i.ai = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !4719, !noalias !4715
  %.not.i.1 = icmp eq i8 %i.ah, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !59

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4721)
  %exitcond.not.i.2 = icmp eq i64 %i.ai, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !4722, !noundef !24
  %i.al = add i64 %i.t, 4
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !4723, !noalias !4715
  %.not.i.2 = icmp eq i8 %i.ak, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit", label %bb.j, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4724
  store i64 5, ptr %i.f, align 8, !noalias !4724
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !4725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4724
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4724
  store i64 9, ptr %i.e, align 8, !noalias !4724
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !4725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4724
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !4726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4727)
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ao)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4729)
  %exitcond.not.i22.not = icmp ult i64 %i.ao, %i.v
  br i1 %exitcond.not.i22.not, label %bb.l, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25"

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !4730, !noundef !24
  %i.ar = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !4731, !noalias !4732
  %.not.i23 = icmp eq i8 %i.aq, 114
  br i1 %.not.i23, label %bb.m, label %bb.q, !prof !59

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4734)
  %exitcond.not.i22.1 = icmp eq i64 %i.v, %i.ar
  br i1 %exitcond.not.i22.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !4735, !noundef !24
  %i.au = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !4736, !noalias !4732
  %.not.i23.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i23.1, label %bb.o, label %bb.q, !prof !59

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4738)
  %exitcond.not.i22.2 = icmp eq i64 %i.au, %umax.i20
  br i1 %exitcond.not.i22.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !4739, !noundef !24
  %i.ax = add i64 %i.t, 4
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !4740, !noalias !4732
  %.not.i23.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i23.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit26", label %bb.q, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4741
  store i64 5, ptr %i.d, align 8, !noalias !4741
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !4742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4741
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4741
  store i64 9, ptr %i.c, align 8, !noalias !4741
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !4742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4741
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !4743
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4744)
  %umax.i28 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4746)
  %exitcond.not.i30.not = icmp ult i64 %i.ba, %i.v
  br i1 %exitcond.not.i30.not, label %bb.s, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33"

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !4747, !noundef !24
  %i.bd = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !4748, !noalias !4749
  %.not.i31 = icmp eq i8 %i.bc, 97
  br i1 %.not.i31, label %bb.t, label %bb.z, !prof !59

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4751)
  %exitcond.not.i30.1 = icmp eq i64 %i.v, %i.bd
  br i1 %exitcond.not.i30.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4752, !noundef !24
  %i.bg = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !4753, !noalias !4749
  %.not.i31.1 = icmp eq i8 %i.bf, 108
  br i1 %.not.i31.1, label %bb.v, label %bb.z, !prof !59

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4755)
  %exitcond.not.i30.2 = icmp eq i64 %i.bg, %umax.i28
  br i1 %exitcond.not.i30.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4756, !noundef !24
  %i.bj = add i64 %i.t, 4                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !4757, !noalias !4749
  %.not.i31.2 = icmp eq i8 %i.bi, 115
  br i1 %.not.i31.2, label %bb.x, label %bb.z, !prof !59

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4759)
  %exitcond.not.i30.3 = icmp eq i64 %i.bj, %umax.i28
  br i1 %exitcond.not.i30.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !4760, !noundef !24
  %i.bm = add i64 %i.t, 5
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !4761, !noalias !4749
  %.not.i31.3 = icmp eq i8 %i.bl, 101
  br i1 %.not.i31.3, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit34", label %bb.z, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33": ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4762
  store i64 5, ptr %i.b, align 8, !noalias !4762
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !4763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4762
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4762
  store i64 9, ptr %i.a, align 8, !noalias !4762
  %i.bo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !4763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4762
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

bb.aa:                                            ; preds = %bb.b
  %i.bp = add nuw i64 %i.t, 1
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !4764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h775dfdd57d8eaa7cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  %i.bq = load i64, ptr %i.o, align 8, !range !56, !noundef !24
  %i.br = icmp eq i64 %i.bq, 3
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !29

bb.ab:                                            ; preds = %bb.b
  %i.bs = add nuw i64 %i.t, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !4765
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bu = load i64, ptr %i.k, align 8, !range !34, !noundef !24
  %i.bv = icmp eq i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !24, !noundef !24 ; 2 uses
  br i1 %i.bv, label %bb.ah, label %bb.ai, !prof !29

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.bz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit": ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 7, ptr %i.r, align 8
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread40, %bb.ai, %bb.ag, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit34", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit26", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit", %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cr, %bb.al ], [ %i.cm, %.thread40 ], [ %i.ca, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit" ], [ %i.cd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit26" ], [ %i.cf, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit34" ], [ %i.ci, %bb.ag ], [ %i.cl, %bb.ai ], [ %i.by, %bb.ac ], [ %i.bz, %bb.ad ]
  %i.cb = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h020c265af5679557E(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit26": ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %i.cc, align 1
  store i8 0, ptr %i.q, align 8
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit34": ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.ce, align 1
  store i8 0, ptr %i.p, align 8
  %i.cf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.ci = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bx, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.ck, align 8
  store i8 5, ptr %i.j, align 8
  %i.cl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread40:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hbff09041473190e1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h775dfdd57d8eaa7cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  %i.cn = load i64, ptr %i.m, align 8, !range !56, !noundef !24
  %i.co = icmp eq i64 %i.cn, 3
  br i1 %i.co, label %bb.ak, label %bb.al, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread"

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.cr = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.thread": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33", %bb.z, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25", %bb.q, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cb, %bb.ae ], [ %i.cq, %bb.ak ], [ %i.bx, %bb.ah ], [ %i.az, %bb.q ], [ %i.an, %bb.j ], [ %i.ch, %bb.af ], [ %i.am, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i" ], [ %i.ay, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25" ], [ %i.bn, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33" ], [ %i.bo, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_long_integer17h3a4ec8550f7db6f7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(96) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN10serde_json5error5Error12fix_position17h0bd662c0478d6700E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5558
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #47
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #47
  resume { ptr, i32 } %i.f
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h2db3c445fd96cae1E(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !24
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0)
          to label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12fix_position28_$u7b$$u7b$closure$u7d$$u7d$17h1627afb7d50a5f39E.exit" unwind label %bb.d

"_ZN10serde_json2de21Deserializer$LT$R$GT$12fix_position28_$u7b$$u7b$closure$u7d$$u7d$17h1627afb7d50a5f39E.exit": ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12fix_position28_$u7b$$u7b$closure$u7d$$u7d$17h1627afb7d50a5f39E.exit"
  %.sroa.0.0 = phi ptr [ %i.d, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12fix_position28_$u7b$$u7b$closure$u7d$$u7d$17h1627afb7d50a5f39E.exit" ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #47
  resume { ptr, i32 } %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17he0a166f86c30ce24E(ptr noalias noundef nonnull align 8 %0, i64 %.48.val, i64 %.56.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !24
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.e = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.48.val, i64 noundef %.56.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5563
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #47
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #47
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10serde_json5value2de82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$11deserialize17h0eac9bb75c42c276E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [80 x i8], align 8               ; 4 uses
  %i.ag = alloca [80 x i8], align 8               ; 4 uses
  %i.ah = alloca [72 x i8], align 8               ; 5 uses
  %.sroa.13128.sroa.6 = alloca [72 x i8], align 8 ; 2 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [72 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [72 x i8], align 8               ; 6 uses
  %i.am = alloca [72 x i8], align 8               ; 15 uses
  %i.an = alloca [72 x i8], align 8               ; 8 uses
  %i.ao = alloca [16 x i8], align 8               ; 9 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [72 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [72 x i8], align 8               ; 11 uses
  %i.av = alloca [80 x i8], align 8               ; 12 uses
  %.sroa.17.sroa.9 = alloca [32 x i8], align 8    ; 10 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [72 x i8], align 8               ; 9 uses
  %i.ay = alloca [80 x i8], align 8               ; 12 uses
  %.sroa.9101 = alloca [56 x i8], align 8         ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 8 uses
  %i.bb = alloca [16 x i8], align 8               ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.56 = alloca [40 x i8], align 8           ; 13 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5910)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 31 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5911, !noalias !5912, !noundef !24 ; 10 uses
  %.promoted.i63 = load i64, ptr %i.be, align 8, !alias.scope !5910, !noalias !5913 ; 2 uses
  %i.bh = icmp ult i64 %.promoted.i63, %i.bg
  br i1 %i.bh, label %.lr.ph.i, label %.loopexit351

.lr.ph.i:                                         ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !5911, !noalias !5912, !nonnull !24, !align !42, !noundef !24 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bk = phi i64 [ %.promoted.i63, %.lr.ph.i ], [ %i.bn, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5914), !noalias !5908
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !5915, !noundef !24 ; 3 uses
  switch i8 %i.bm, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bn = add i64 %i.bk, 1                        ; 3 uses
  store i64 %i.bn, ptr %i.be, align 8, !alias.scope !5916, !noalias !5913
  %exitcond.not.i65 = icmp eq i64 %i.bn, %i.bg
  br i1 %exitcond.not.i65, label %.loopexit351, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  switch i8 %i.bm, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit351:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5917
  store i64 5, ptr %i.bd, align 8, !noalias !5917
  %i.bo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4f3d251723666839E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bd), !noalias !5908, !inline_history !5575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5917
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !alias.scope !5908, !noalias !5909
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5908, !noalias !5909
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.bq = add i8 %i.bm, -48
  %or.cond8.i = icmp ult i8 %i.bq, 10
  br i1 %or.cond8.i, label %bb.fn, label %bb.fm, !prof !57

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.br = add i64 %i.bk, 1                        ; 4 uses
  store i64 %i.br, ptr %i.be, align 8, !alias.scope !5918, !noalias !5908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5919)
  %umax.i55 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.br) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5920), !noalias !5908
  %exitcond.not.i57.not = icmp ult i64 %i.br, %i.bg
  br i1 %exitcond.not.i57.not, label %bb.f, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61"

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !5921, !noundef !24
  %i.bu = add i64 %i.bk, 2                        ; 3 uses
  store i64 %i.bu, ptr %i.be, align 8, !alias.scope !5922, !noalias !5923
  %.not.i58 = icmp eq i8 %i.bt, 117
  br i1 %.not.i58, label %bb.g, label %bb.k, !prof !59

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5924), !noalias !5908
  %exitcond.not.i57.1 = icmp eq i64 %i.bu, %umax.i55
  br i1 %exitcond.not.i57.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !5925, !noundef !24
  %i.bx = add i64 %i.bk, 3                        ; 3 uses
  store i64 %i.bx, ptr %i.be, align 8, !alias.scope !5926, !noalias !5923
  %.not.i58.1 = icmp eq i8 %i.bw, 108
  br i1 %.not.i58.1, label %bb.i, label %bb.k, !prof !59

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5927), !noalias !5908
  %exitcond.not.i57.2 = icmp eq i64 %i.bx, %umax.i55
  br i1 %exitcond.not.i57.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !5928, !noundef !24
  %i.ca = add i64 %i.bk, 4
  store i64 %i.ca, ptr %i.be, align 8, !alias.scope !5929, !noalias !5923
  %.not.i58.2 = icmp eq i8 %i.bz, 108
  br i1 %.not.i58.2, label %bb.ag, label %bb.k, !prof !59

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5930
  store i64 5, ptr %i.m, align 8, !noalias !5930
  %i.cb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !5931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5930
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5930
  store i64 9, ptr %i.l, align 8, !noalias !5930
  %i.cc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !5931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5930
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.cd = add i64 %i.bk, 1                        ; 4 uses
  store i64 %i.cd, ptr %i.be, align 8, !alias.scope !5932, !noalias !5908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5933)
  %umax.i46 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.cd) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5934), !noalias !5908
  %exitcond.not.i48.not = icmp ult i64 %i.cd, %i.bg
  br i1 %exitcond.not.i48.not, label %bb.m, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52"

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !5935, !noundef !24
  %i.cg = add i64 %i.bk, 2                        ; 3 uses
  store i64 %i.cg, ptr %i.be, align 8, !alias.scope !5936, !noalias !5937
  %.not.i49 = icmp eq i8 %i.cf, 114
  br i1 %.not.i49, label %bb.n, label %bb.r, !prof !59

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5938), !noalias !5908
  %exitcond.not.i48.1 = icmp eq i64 %i.cg, %umax.i46
  br i1 %exitcond.not.i48.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !5939, !noundef !24
  %i.cj = add i64 %i.bk, 3                        ; 3 uses
  store i64 %i.cj, ptr %i.be, align 8, !alias.scope !5940, !noalias !5937
  %.not.i49.1 = icmp eq i8 %i.ci, 117
  br i1 %.not.i49.1, label %bb.p, label %bb.r, !prof !59

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5941), !noalias !5908
  %exitcond.not.i48.2 = icmp eq i64 %i.cj, %umax.i46
  br i1 %exitcond.not.i48.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !5942, !noundef !24
  %i.cm = add i64 %i.bk, 4
  store i64 %i.cm, ptr %i.be, align 8, !alias.scope !5943, !noalias !5937
  %.not.i49.2 = icmp eq i8 %i.cl, 101
  br i1 %.not.i49.2, label %bb.aj, label %bb.r, !prof !59

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5944
  store i64 5, ptr %i.o, align 8, !noalias !5944
  %i.cn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !5945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5944
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5944
  store i64 9, ptr %i.n, align 8, !noalias !5944
  %i.co = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !5945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5944
  br label %bb.ai

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.cp = add i64 %i.bk, 1                        ; 4 uses
  store i64 %i.cp, ptr %i.be, align 8, !alias.scope !5946, !noalias !5908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5947)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.cp) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5948), !noalias !5908
  %exitcond.not.i.not = icmp ult i64 %i.cp, %i.bg
  br i1 %exitcond.not.i.not, label %bb.t, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i"

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !5949, !noundef !24
  %i.cs = add i64 %i.bk, 2                        ; 3 uses
  store i64 %i.cs, ptr %i.be, align 8, !alias.scope !5950, !noalias !5951
  %.not.i42 = icmp eq i8 %i.cr, 97
  br i1 %.not.i42, label %bb.u, label %bb.aa, !prof !59

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5952), !noalias !5908
  %exitcond.not.i.1 = icmp eq i64 %i.cs, %umax.i
  br i1 %exitcond.not.i.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !5953, !noundef !24
  %i.cv = add i64 %i.bk, 3                        ; 3 uses
  store i64 %i.cv, ptr %i.be, align 8, !alias.scope !5954, !noalias !5951
  %.not.i42.1 = icmp eq i8 %i.cu, 108
  br i1 %.not.i42.1, label %bb.w, label %bb.aa, !prof !59

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5955), !noalias !5908
  %exitcond.not.i.2 = icmp eq i64 %i.cv, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !5956, !noundef !24
  %i.cy = add i64 %i.bk, 4                        ; 3 uses
  store i64 %i.cy, ptr %i.be, align 8, !alias.scope !5957, !noalias !5951
  %.not.i42.2 = icmp eq i8 %i.cx, 115
  br i1 %.not.i42.2, label %bb.y, label %bb.aa, !prof !59

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5958), !noalias !5908
  %exitcond.not.i.3 = icmp eq i64 %i.cy, %umax.i
  br i1 %exitcond.not.i.3, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !noalias !5959, !noundef !24
  %i.db = add i64 %i.bk, 5
  store i64 %i.db, ptr %i.be, align 8, !alias.scope !5960, !noalias !5951
  %.not.i42.3 = icmp eq i8 %i.da, 101
  br i1 %.not.i42.3, label %bb.al, label %bb.aa, !prof !59

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5961
  store i64 5, ptr %i.q, align 8, !noalias !5961
  %i.dc = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q), !noalias !5962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5961
  br label %bb.ak

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5961
  store i64 9, ptr %i.p, align 8, !noalias !5961
  %i.dd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h76a61760c98b61bbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !5962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5961
  br label %bb.ak

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.de = add i64 %i.bk, 1
  store i64 %i.de, ptr %i.be, align 8, !alias.scope !5963, !noalias !5908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !5917
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hac0c276490b9e118E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false), !noalias !5908, !inline_history !5575
  %i.df = load i64, ptr %i.bc, align 8, !range !56, !noalias !5917, !noundef !24 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br i1 %i.dg, label %bb.am, label %bb.an

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.di = add i64 %i.bk, 1
  store i64 %i.di, ptr %i.be, align 8, !alias.scope !5964, !noalias !5908
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dj, align 8, !alias.scope !5909, !noalias !5908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !5917
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !5908, !inline_history !5575
  %i.dk = load i64, ptr %i.ba, align 8, !range !34, !noalias !5917, !noundef !24 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !5917 ; 4 uses
  br i1 %i.dl, label %bb.as, label %bb.at

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 8, !range !38, !alias.scope !5909, !noalias !5908, !noundef !24
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.bc, label %bb.bb

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h98aada7194e8b809E.exit"
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !range !38, !alias.scope !5909, !noalias !5908, !noundef !24
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.cv, label %bb.cu

bb.af:                                            ; preds = %bb.k, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61"
  %.sroa.0.1.i60.ph = phi ptr [ %i.cb, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i61" ], [ %i.cc, %bb.k ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i60.ph, ptr %i.du, align 8, !alias.scope !5908, !noalias !5909
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5908, !noalias !5909
  br label %bb.ah

bb.ag:                                            ; preds = %bb.j
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.36.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.ah:                                            ; preds = %bb.fo, %bb.ew, %bb.bz, %bb.as, %bb.am, %bb.ak, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.ai:                                            ; preds = %bb.r, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52"
  %.sroa.0.1.i51.ph = phi ptr [ %i.cn, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i52" ], [ %i.co, %bb.r ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i51.ph, ptr %i.dv, align 8, !alias.scope !5908, !noalias !5909
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5908, !noalias !5909
  br label %bb.ah

bb.aj:                                            ; preds = %bb.q
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.36.0..sroa_idx620 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.36.0..sroa_idx620, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.ak:                                            ; preds = %bb.aa, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i"
  %.sroa.0.1.i44.ph = phi ptr [ %i.dc, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i" ], [ %i.dd, %bb.aa ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i44.ph, ptr %i.dw, align 8, !alias.scope !5908, !noalias !5909
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5908, !noalias !5909
  br label %bb.ah

bb.al:                                            ; preds = %bb.z
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.36.0..sroa_idx622 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.36.0..sroa_idx622, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.am:                                            ; preds = %bb.ab
  %i.dx = load ptr, ptr %i.dh, align 8, !noalias !5917, !nonnull !24, !align !31, !noundef !24
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !alias.scope !5908, !noalias !5909
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5908, !noalias !5909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5917
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.dh, align 8, !noalias !5917 ; 3 uses
  switch i64 %i.df, label %default.unreachable960 [
    i64 0, label %bb.ao
    i64 1, label %bb.ar
    i64 2, label %bb.aq
  ]

default.unreachable960:                           ; preds = %bb.fp, %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.dz = bitcast i64 %.sroa.4.0.copyload to double
  %i.ea = tail call double @llvm.fabs.f64(double %i.dz)
  %i.eb = fcmp ueq double %i.ea, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5965
  br i1 %i.eb, label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 -9223372036854775808, ptr %i.r, align 8, !noalias !5965
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.r), !noalias !5966
  br label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33"

"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33": ; preds = %bb.ap, %bb.ao
  %.sroa.07.013.i.i34 = phi i64 [ 2, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.0.0.i.i35 = phi i64 [ -9223372036854775806, %bb.ap ], [ -9223372036854775808, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5965
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %.lobit.i.i.i28 = lshr i64 %.sroa.4.0.copyload, 63
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33"
  %.sink = phi i64 [ -9223372036854775806, %bb.aq ], [ %.sroa.0.0.i.i35, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33" ], [ -9223372036854775806, %bb.an ]
  %.lobit.i.i.i28.sink = phi i64 [ %.lobit.i.i.i28, %bb.aq ], [ %.sroa.07.013.i.i34, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i33" ], [ 0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5917
  store i64 %.sink, ptr %0, align 8
  %.sroa.36.0..sroa_idx624 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i28.sink, ptr %.sroa.36.0..sroa_idx624, align 8
  %.sroa.50.0..sroa_idx642 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.50.0..sroa_idx642, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.as:                                            ; preds = %bb.ac
end_hunk_3
begin_hunk_4_@"_ZN10serde_json5value2de82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$11deserialize17h0eac9bb75c42c276E":bb.a
  store i64 %.sroa.36.sroa.34.sroa.0.2.in.in, ptr %.sroa.36.0..sroa_idx634, align 8
  %.sroa.50.0..sroa_idx652 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.in, ptr %.sroa.50.0..sroa_idx652, align 8
  %.sroa.56.0..sroa_idx681 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.0..sroa_idx681, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56, i64 40, i1 false)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

bb.fm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5917
  store i64 10, ptr %i.at, align 8, !noalias !5917
  %i.qg = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4f3d251723666839E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.at), !noalias !5908, !inline_history !5575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5917
  %i.qh = ptrtoint ptr %i.qg to i64
  br label %bb.ay

bb.fn:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !5917
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hac0c276490b9e118E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !5908, !inline_history !5575
  %i.qi = load i64, ptr %i.bb, align 8, !range !56, !noalias !5917, !noundef !24 ; 2 uses
  %i.qj = icmp eq i64 %i.qi, 3
  %i.qk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  br i1 %i.qj, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.ql = load ptr, ptr %i.qk, align 8, !noalias !5917, !nonnull !24, !align !31, !noundef !24
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ql, ptr %i.qm, align 8, !alias.scope !5908, !noalias !5909
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !5908, !noalias !5909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5917
  br label %bb.ah

bb.fp:                                            ; preds = %bb.fn
  %.sroa.497.0.copyload = load i64, ptr %i.qk, align 8, !noalias !5917 ; 3 uses
  switch i64 %i.qi, label %default.unreachable960 [
    i64 0, label %bb.fq
    i64 1, label %bb.ft
    i64 2, label %bb.fs
  ]

bb.fq:                                            ; preds = %bb.fp
  %i.qn = bitcast i64 %.sroa.497.0.copyload to double
  %i.qo = tail call double @llvm.fabs.f64(double %i.qn)
  %i.qp = fcmp ueq double %i.qo, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !6125
  br i1 %i.qp, label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i", label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  store i64 -9223372036854775808, ptr %i.as, align 8, !noalias !6125
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.as), !noalias !6126
  br label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i"

"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i": ; preds = %bb.fr, %bb.fq
  %.sroa.07.013.i.i = phi i64 [ 2, %bb.fr ], [ 3, %bb.fq ]
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775806, %bb.fr ], [ -9223372036854775808, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6125
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fp
  %.lobit.i.i.i = lshr i64 %.sroa.497.0.copyload, 63
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fp, %bb.fs, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i"
  %.sink607 = phi i64 [ -9223372036854775806, %bb.fs ], [ %.sroa.0.0.i.i, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i" ], [ -9223372036854775806, %bb.fp ]
  %.lobit.i.i.i.sink = phi i64 [ %.lobit.i.i.i, %bb.fs ], [ %.sroa.07.013.i.i, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i" ], [ 0, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5917
  store i64 %.sink607, ptr %0, align 8
  %.sroa.36.0..sroa_idx636 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i.sink, ptr %.sroa.36.0..sroa_idx636, align 8
  %.sroa.50.0..sroa_idx654 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.497.0.copyload, ptr %.sroa.50.0..sroa_idx654, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h00942df1743577daE.exit": ; preds = %.loopexit351, %bb.ag, %bb.ah, %bb.aj, %bb.al, %bb.ar, %bb.az, %bb.ba, %bb.fl, %bb.ft
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10serde_json5value2de82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$11deserialize17h786ed32b337e573cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [80 x i8], align 8                ; 4 uses
  %i.aa = alloca [80 x i8], align 8               ; 4 uses
  %i.ab = alloca [72 x i8], align 8               ; 5 uses
  %.sroa.13104.sroa.6 = alloca [72 x i8], align 8 ; 2 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [72 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [72 x i8], align 8               ; 6 uses
  %i.ag = alloca [72 x i8], align 8               ; 15 uses
  %i.ah = alloca [72 x i8], align 8               ; 8 uses
  %i.ai = alloca [16 x i8], align 8               ; 9 uses
  %i.aj = alloca [72 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [72 x i8], align 8               ; 9 uses
  %i.am = alloca [80 x i8], align 8               ; 10 uses
  %.sroa.17.sroa.9 = alloca [32 x i8], align 8    ; 9 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [72 x i8], align 8               ; 7 uses
  %i.ap = alloca [80 x i8], align 8               ; 10 uses
  %.sroa.977 = alloca [56 x i8], align 8          ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.52 = alloca [40 x i8], align 8           ; 13 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6445)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !6446, !noalias !6447, !noundef !24 ; 8 uses
  %.promoted.i49 = load i64, ptr %i.av, align 8, !alias.scope !6445, !noalias !6448 ; 2 uses
  %i.ay = icmp ult i64 %.promoted.i49, %i.ax
  br i1 %i.ay, label %.lr.ph.i, label %.loopexit272

.lr.ph.i:                                         ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !6446, !noalias !6447, !nonnull !24, !align !42, !noundef !24 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bb = phi i64 [ %.promoted.i49, %.lr.ph.i ], [ %i.be, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6449), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6450), !noalias !6443
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !6451, !noundef !24 ; 3 uses
  switch i8 %i.bd, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.be = add i64 %i.bb, 1                        ; 3 uses
  store i64 %i.be, ptr %i.av, align 8, !alias.scope !6452, !noalias !6448
  %exitcond.not.i51 = icmp eq i64 %i.be, %i.ax
  br i1 %exitcond.not.i51, label %.loopexit272, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52)
  switch i8 %i.bd, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit272:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !6453
  store i64 5, ptr %i.au, align 8, !noalias !6453
  %i.bf = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hbff09041473190e1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.au), !noalias !6443, !inline_history !6141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6453
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !alias.scope !6443, !noalias !6444
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6443, !noalias !6444
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.bh = add i8 %i.bd, -48
  %or.cond8.i = icmp ult i8 %i.bh, 10
  br i1 %or.cond8.i, label %bb.fd, label %bb.fc, !prof !57

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.bi = add i64 %i.bb, 1                        ; 4 uses
  store i64 %i.bi, ptr %i.av, align 8, !alias.scope !6454, !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6455)
  %umax.i42 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.bi) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6456), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6457), !noalias !6443
  %exitcond.not.i44.not = icmp ult i64 %i.bi, %i.ax
  br i1 %exitcond.not.i44.not, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i47"

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !6458, !noundef !24
  %i.bl = add i64 %i.bb, 2                        ; 3 uses
  store i64 %i.bl, ptr %i.av, align 8, !alias.scope !6459, !noalias !6460
  %.not.i45 = icmp eq i8 %i.bk, 117
  br i1 %.not.i45, label %bb.g, label %bb.k, !prof !59

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6461), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6462), !noalias !6443
  %exitcond.not.i44.1 = icmp eq i64 %i.bl, %umax.i42
  br i1 %exitcond.not.i44.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i47", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !6463, !noundef !24
  %i.bo = add i64 %i.bb, 3                        ; 3 uses
  store i64 %i.bo, ptr %i.av, align 8, !alias.scope !6464, !noalias !6460
  %.not.i45.1 = icmp eq i8 %i.bn, 108
  br i1 %.not.i45.1, label %bb.i, label %bb.k, !prof !59

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6465), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6466), !noalias !6443
  %exitcond.not.i44.2 = icmp eq i64 %i.bo, %umax.i42
  br i1 %exitcond.not.i44.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i47", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !6467, !noundef !24
  %i.br = add i64 %i.bb, 4
  store i64 %i.br, ptr %i.av, align 8, !alias.scope !6468, !noalias !6460
  %.not.i45.2 = icmp eq i8 %i.bq, 108
  br i1 %.not.i45.2, label %bb.ag, label %bb.k, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i47": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6469
  store i64 5, ptr %i.j, align 8, !noalias !6469
  %i.bs = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !6470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6469
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6469
  store i64 9, ptr %i.i, align 8, !noalias !6469
  %i.bt = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !6470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6469
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.bu = add i64 %i.bb, 1                        ; 4 uses
  store i64 %i.bu, ptr %i.av, align 8, !alias.scope !6471, !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6472)
  %umax.i34 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.bu) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6473), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6474), !noalias !6443
  %exitcond.not.i36.not = icmp ult i64 %i.bu, %i.ax
  br i1 %exitcond.not.i36.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39"

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !6475, !noundef !24
  %i.bx = add i64 %i.bb, 2                        ; 3 uses
  store i64 %i.bx, ptr %i.av, align 8, !alias.scope !6476, !noalias !6477
  %.not.i37 = icmp eq i8 %i.bw, 114
  br i1 %.not.i37, label %bb.n, label %bb.r, !prof !59

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6478), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6479), !noalias !6443
  %exitcond.not.i36.1 = icmp eq i64 %i.bx, %umax.i34
  br i1 %exitcond.not.i36.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !6480, !noundef !24
  %i.ca = add i64 %i.bb, 3                        ; 3 uses
  store i64 %i.ca, ptr %i.av, align 8, !alias.scope !6481, !noalias !6477
  %.not.i37.1 = icmp eq i8 %i.bz, 117
  br i1 %.not.i37.1, label %bb.p, label %bb.r, !prof !59

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6482), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6483), !noalias !6443
  %exitcond.not.i36.2 = icmp eq i64 %i.ca, %umax.i34
  br i1 %exitcond.not.i36.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !6484, !noundef !24
  %i.cd = add i64 %i.bb, 4
  store i64 %i.cd, ptr %i.av, align 8, !alias.scope !6485, !noalias !6477
  %.not.i37.2 = icmp eq i8 %i.cc, 101
  br i1 %.not.i37.2, label %bb.aj, label %bb.r, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6486
  store i64 5, ptr %i.l, align 8, !noalias !6486
  %i.ce = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !6487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6486
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6486
  store i64 9, ptr %i.k, align 8, !noalias !6486
  %i.cf = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !6487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6486
  br label %bb.ai

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.cg = add i64 %i.bb, 1                        ; 4 uses
  store i64 %i.cg, ptr %i.av, align 8, !alias.scope !6488, !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.cg) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6490), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6491), !noalias !6443
  %exitcond.not.i.not = icmp ult i64 %i.cg, %i.ax
  br i1 %exitcond.not.i.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !6492, !noundef !24
  %i.cj = add i64 %i.bb, 2                        ; 3 uses
  store i64 %i.cj, ptr %i.av, align 8, !alias.scope !6493, !noalias !6494
  %.not.i32 = icmp eq i8 %i.ci, 97
  br i1 %.not.i32, label %bb.u, label %bb.aa, !prof !59

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6495), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6496), !noalias !6443
  %exitcond.not.i.1 = icmp eq i64 %i.cj, %umax.i
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !6497, !noundef !24
  %i.cm = add i64 %i.bb, 3                        ; 3 uses
  store i64 %i.cm, ptr %i.av, align 8, !alias.scope !6498, !noalias !6494
  %.not.i32.1 = icmp eq i8 %i.cl, 108
  br i1 %.not.i32.1, label %bb.w, label %bb.aa, !prof !59

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6499), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6500), !noalias !6443
  %exitcond.not.i.2 = icmp eq i64 %i.cm, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noalias !6501, !noundef !24
  %i.cp = add i64 %i.bb, 4                        ; 3 uses
  store i64 %i.cp, ptr %i.av, align 8, !alias.scope !6502, !noalias !6494
  %.not.i32.2 = icmp eq i8 %i.co, 115
  br i1 %.not.i32.2, label %bb.y, label %bb.aa, !prof !59

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6503), !noalias !6443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6504), !noalias !6443
  %exitcond.not.i.3 = icmp eq i64 %i.cp, %umax.i
  br i1 %exitcond.not.i.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !6505, !noundef !24
  %i.cs = add i64 %i.bb, 5
  store i64 %i.cs, ptr %i.av, align 8, !alias.scope !6506, !noalias !6494
  %.not.i32.3 = icmp eq i8 %i.cr, 101
  br i1 %.not.i32.3, label %bb.al, label %bb.aa, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6507
  store i64 5, ptr %i.n, align 8, !noalias !6507
  %i.ct = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !6508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6507
  br label %bb.ak

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6507
  store i64 9, ptr %i.m, align 8, !noalias !6507
  %i.cu = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !6508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6507
  br label %bb.ak

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.cv = add i64 %i.bb, 1
  store i64 %i.cv, ptr %i.av, align 8, !alias.scope !6509, !noalias !6443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !6453
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h775dfdd57d8eaa7cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false), !noalias !6443, !inline_history !6141
  %i.cw = load i64, ptr %i.at, align 8, !range !56, !noalias !6453, !noundef !24 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  br i1 %i.cx, label %bb.am, label %bb.an

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.cz = add i64 %i.bb, 1
  store i64 %i.cz, ptr %i.av, align 8, !alias.scope !6510, !noalias !6443
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.da, align 8, !alias.scope !6444, !noalias !6443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6453
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !6443, !inline_history !6141
  %i.db = load i64, ptr %i.ar, align 8, !range !34, !noalias !6453, !noundef !24 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !6453 ; 4 uses
  br i1 %i.dc, label %bb.as, label %bb.at

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 8, !range !38, !alias.scope !6444, !noalias !6443, !noundef !24
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.bc, label %bb.bb

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !range !38, !alias.scope !6444, !noalias !6443, !noundef !24
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.cm, label %bb.cl

bb.af:                                            ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i47"
  %.sroa.0.1.i46.ph = phi ptr [ %i.bs, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i47" ], [ %i.bt, %bb.k ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i46.ph, ptr %i.dl, align 8, !alias.scope !6443, !noalias !6444
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6443, !noalias !6444
  br label %bb.ah

bb.ag:                                            ; preds = %bb.j
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.34.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.ah:                                            ; preds = %bb.fe, %bb.en, %bb.bw, %bb.as, %bb.am, %bb.ak, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.ai:                                            ; preds = %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39"
  %.sroa.0.1.i38.ph = phi ptr [ %i.ce, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i39" ], [ %i.cf, %bb.r ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i38.ph, ptr %i.dm, align 8, !alias.scope !6443, !noalias !6444
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6443, !noalias !6444
  br label %bb.ah

bb.aj:                                            ; preds = %bb.q
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.34.0..sroa_idx486 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.34.0..sroa_idx486, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.ak:                                            ; preds = %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"
  %.sroa.0.1.i.ph = phi ptr [ %i.ct, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i" ], [ %i.cu, %bb.aa ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dn, align 8, !alias.scope !6443, !noalias !6444
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6443, !noalias !6444
  br label %bb.ah

bb.al:                                            ; preds = %bb.z
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.34.0..sroa_idx488 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.34.0..sroa_idx488, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17ha0fb66df0ca558a1E.exit"

bb.am:                                            ; preds = %bb.ab
  %i.do = load ptr, ptr %i.cy, align 8, !noalias !6453, !nonnull !24, !align !31, !noundef !24
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !alias.scope !6443, !noalias !6444
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !6443, !noalias !6444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6453
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cy, align 8, !noalias !6453 ; 3 uses
  switch i64 %i.cw, label %default.unreachable779 [
    i64 0, label %bb.ao
    i64 1, label %bb.ar
    i64 2, label %bb.aq
  ]

default.unreachable779:                           ; preds = %bb.ff, %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.dq = bitcast i64 %.sroa.4.0.copyload to double
  %i.dr = tail call double @llvm.fabs.f64(double %i.dq)
  %i.ds = fcmp ueq double %i.dr, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6511
  br i1 %i.ds, label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !6511
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.o), !noalias !6512
  br label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23"

"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23": ; preds = %bb.ap, %bb.ao
  %.sroa.07.013.i.i24 = phi i64 [ 2, %bb.ap ], [ 3, %bb.ao ]
  %.sroa.0.0.i.i25 = phi i64 [ -9223372036854775806, %bb.ap ], [ -9223372036854775808, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6511
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %.lobit.i.i.i18 = lshr i64 %.sroa.4.0.copyload, 63
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23"
  %.sink = phi i64 [ -9223372036854775806, %bb.aq ], [ %.sroa.0.0.i.i25, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23" ], [ -9223372036854775806, %bb.an ]
  %.lobit.i.i.i18.sink = phi i64 [ %.lobit.i.i.i18, %bb.aq ], [ %.sroa.07.013.i.i24, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417hb94c5a8d62df9b37E.exit.i23" ], [ 0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6453
  store i64 %.sink, ptr %0, align 8
  %.sroa.34.0..sroa_idx490 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i18.sink, ptr %.sroa.34.0..sroa_idx490, align 8
  %.sroa.46.0..sroa_idx508 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.46.0..sroa_idx508, align 8
end_hunk_4
begin_hunk_5_@"_ZN5xtask4test3run28_$u7b$$u7b$closure$u7d$$u7d$17hbb04f121be65d0c4E":bb.a
  store i8 3, ptr %i.ls, align 8, !noalias !25616
  br label %"_ZN5xtask4test9run_inner28_$u7b$$u7b$closure$u7d$$u7d$17hab4f8fa57fb359bbE.exit"

bb.ec:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !25658
  store i8 1, ptr %i.lu, align 8, !noalias !25658
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.nq = icmp eq i64 %.sroa.06.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.nq, label %bb.ed, label %bb.en

bb.ed:                                            ; preds = %bb.ec, %.thread384.i
  %.pn427.in.i = phi ptr [ %i.my, %.thread384.i ], [ %i.np, %bb.ec ]
  %.sroa.3.042.i28.i390.i = phi ptr [ %i.mx, %.thread384.i ], [ %.sroa.47.0.copyload.i.i.i, %bb.ec ] ; 4 uses
  %.pn427.i = load ptr, ptr %.pn427.in.i, align 8, !noalias !25616, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  %.val120391.in.i = getelementptr i8, ptr %.pn427.i, i64 8
  %.val120391.i = load ptr, ptr %.val120391.in.i, align 8, !nonnull !24, !noundef !24
  %.val121392.in.i = getelementptr i8, ptr %.pn427.i, i64 16
  %.val121392.i = load i64, ptr %.val121392.in.i, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.042.i28.i390.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !25696
  store ptr %.sroa.3.042.i28.i390.i, ptr %i.bw, align 8, !noalias !25696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !25696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !25697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !25697
  store ptr %.val120391.i, ptr %i.bt, align 8, !noalias !25697
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.val121392.i, ptr %i.nr, align 8, !noalias !25697
  store ptr %i.bt, ptr %i.bu, align 8, !noalias !25697
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !25697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !25698
  store ptr @847, ptr %i.bs, align 8, !noalias !25699
  %.sroa.4.0..sroa_idx.i.i169.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i169.i, align 8, !noalias !25699
  %.sroa.5.0..sroa_idx.i.i170.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.bu, ptr %.sroa.5.0..sroa_idx.i.i170.i, align 8, !noalias !25699
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !25699
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !25699
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bs)
          to label %bb.ee unwind label %bb.ek, !noalias !25700

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !25698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !25697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !25697
  call void @llvm.experimental.noalias.scope.decl(metadata !25701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !25696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !25696
  store ptr %.sroa.3.042.i28.i390.i, ptr %i.br, align 8, !noalias !25702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !25702
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bp)
          to label %bb.ef unwind label %bb.eg, !noalias !25703

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.bp, i64 48, i1 false), !noalias !25702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !25702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !25702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !25704
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %.sroa.3.042.i28.i390.i, ptr %i.ns, align 8, !noalias !25705
  %i.nt = invoke fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h72222cf2ad51769eE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bq)
          to label %bb.lo unwind label %bb.em

bb.eg:                                            ; preds = %bb.ee
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !25706)
  %.val.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !25707, !noalias !25696 ; 2 uses
  %i.nv = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.nv, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.nw, align 8, !alias.scope !25707, !noalias !25696, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !25708
  br label %bb.ej

bb.ei:                                            ; preds = %bb.ej
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !25703
  unreachable

bb.ej:                                            ; preds = %bb.eh, %bb.eg
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.br) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit243.i" unwind label %bb.ei, !noalias !25703

bb.ek:                                            ; preds = %bb.ed
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bw) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit243.i" unwind label %bb.el, !noalias !25700

bb.el:                                            ; preds = %bb.ek
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !25700
  unreachable

bb.em:                                            ; preds = %bb.ef
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit243.i"

.body191.i:                                       ; preds = %bb.km, %bb.kk, %bb.kj, %bb.jq, %.body.i.i178.i
  %.pn38.i = phi { ptr, i32 } [ %.pn.i.i179.i, %.body.i.i178.i ], [ %i.yk, %bb.kk ], [ %i.yg, %bb.kj ], [ %.pn.i.i179.i, %bb.jq ], [ %i.ym, %bb.km ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12317.i)
  br label %bb.li

bb.en:                                            ; preds = %bb.ec
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %i.lv, align 8, !noalias !25616
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  store ptr %.sroa.47.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !25616
  %.sroa.5305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.5305.0..sroa_idx.i, align 8, !noalias !25616
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12317.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.47.0.copyload.i.i.i) ]
  %i.ob = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h369a8729cb13c1ffE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.47.0.copyload.i.i.i, i64 noundef %.sroa.5.0.copyload.i.i.i) ; 2 uses
  %i.oc = extractvalue { ptr, i64 } %i.ob, 0      ; 13 uses
  %i.od = extractvalue { ptr, i64 } %i.ob, 1      ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25709)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !25710
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 3 uses
  store ptr %i.oc, ptr %i.oe, align 8, !noalias !25711
  %.sroa.4.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  store i64 %i.od, ptr %.sroa.4.0..sroa_idx1.i.i, align 8, !noalias !25711
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 21 uses
  %.sroa.7.0..sroa_idx.i174.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i8 0, i64 16, i1 false), !noalias !25712
  store ptr %i.oc, ptr %.sroa.7.0..sroa_idx.i174.i, align 8, !noalias !25711
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store i64 %i.od, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !25711
  store i64 0, ptr %i.bn, align 8, !noalias !25710
  %.sroa.4.0..sroa_idx.i.i175.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i175.i, align 8, !noalias !25710
  %.sroa.5.0..sroa_idx.i.i176.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i176.i, align 8, !noalias !25710
  %i.of = getelementptr inbounds nuw i8, ptr %i.bn, i64 73 ; 7 uses
  store i8 -128, ptr %i.of, align 1, !noalias !25710
  %i.og = getelementptr inbounds nuw i8, ptr %i.bn, i64 72 ; 3 uses
  store i8 0, ptr %i.og, align 8, !noalias !25710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !25710
  call void @llvm.experimental.noalias.scope.decl(metadata !25713)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !25710
  call void @llvm.experimental.noalias.scope.decl(metadata !25714)
  call void @llvm.experimental.noalias.scope.decl(metadata !25715)
  %.not.i177.i = icmp eq i64 %i.od, 0
  br i1 %.not.i177.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.en, %bb.eo
  %i.oh = phi i64 [ %i.ok, %bb.eo ], [ 0, %bb.en ] ; 19 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !alias.scope !25709, !noalias !25716, !noundef !24 ; 3 uses
  switch i8 %i.oj, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.i.i.i.i.i" [
    i8 32, label %bb.eo
    i8 10, label %bb.eo
    i8 9, label %bb.eo
    i8 13, label %bb.eo
  ]

bb.eo:                                            ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ok = add nuw i64 %i.oh, 1                    ; 3 uses
  store i64 %i.ok, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25717, !noalias !25718
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ok, %i.od
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63.i.i.i.i.i)
  switch i8 %i.oj, label %bb.ep [
    i8 110, label %bb.eq
    i8 116, label %bb.ex
    i8 102, label %bb.fe
    i8 45, label %bb.fn
    i8 34, label %bb.fo
    i8 91, label %bb.gd
    i8 123, label %bb.ha
  ]

.loopexit.i.i.i.i.i:                              ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !25719
  store i64 5, ptr %i.bi, align 8, !noalias !25719
  %i.ol = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hbff09041473190e1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bi)
          to label %.noexc.i.i.i unwind label %bb.jr, !noalias !25720

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !25719
  br label %.thread.i.i180.i

bb.ep:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.i.i.i.i.i"
  %i.om = add i8 %i.oj, -48
  %or.cond8.i.i.i.i.i = icmp ult i8 %i.om, 10
  br i1 %or.cond8.i.i.i.i.i, label %bb.jb, label %bb.ja, !prof !57

bb.eq:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.i.i.i.i.i"
  %i.on = add i64 %i.oh, 1                        ; 4 uses
  store i64 %i.on, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25721, !noalias !25722
  call void @llvm.experimental.noalias.scope.decl(metadata !25723)
  %umax.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.od, i64 %i.on) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25724)
  call void @llvm.experimental.noalias.scope.decl(metadata !25725)
  %exitcond.not.i74.not.i.i.i.i.i = icmp ult i64 %i.on, %i.od
  br i1 %exitcond.not.i74.not.i.i.i.i.i, label %bb.er, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i"

bb.er:                                            ; preds = %bb.eq
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !alias.scope !25709, !noalias !25726, !noundef !24
  %i.oq = add i64 %i.oh, 2                        ; 3 uses
  store i64 %i.oq, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25727, !noalias !25728
  %.not.i.i.i.i.i188.i = icmp eq i8 %i.op, 117
  br i1 %.not.i.i.i.i.i188.i, label %bb.es, label %bb.ew, !prof !59

bb.es:                                            ; preds = %bb.er
  call void @llvm.experimental.noalias.scope.decl(metadata !25729)
  call void @llvm.experimental.noalias.scope.decl(metadata !25730)
  %exitcond.not.i74.1.i.i.i.i.i = icmp eq i64 %i.oq, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i74.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i", label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.or = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !alias.scope !25709, !noalias !25731, !noundef !24
  %i.ot = add i64 %i.oh, 3                        ; 3 uses
  store i64 %i.ot, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25732, !noalias !25728
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.os, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.eu, label %bb.ew, !prof !59

bb.eu:                                            ; preds = %bb.et
  call void @llvm.experimental.noalias.scope.decl(metadata !25733)
  call void @llvm.experimental.noalias.scope.decl(metadata !25734)
  %exitcond.not.i74.2.i.i.i.i.i = icmp eq i64 %i.ot, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i74.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i", label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !alias.scope !25709, !noalias !25735, !noundef !24
  %i.ow = add i64 %i.oh, 4
  store i64 %i.ow, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25736, !noalias !25728
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.ov, 108
  br i1 %.not.i.2.i.i.i.i.i, label %bb.fp, label %bb.ew, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i": ; preds = %bb.eu, %bb.es, %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !25737
  store i64 5, ptr %i.as, align 8, !noalias !25737
  %i.ox = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as)
          to label %.noexc10.i.i.i unwind label %bb.jr, !noalias !25720

.noexc10.i.i.i:                                   ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !25737
  br label %bb.fq

bb.ew:                                            ; preds = %bb.ev, %bb.et, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !25737
  store i64 9, ptr %i.ar, align 8, !noalias !25737
  %i.oy = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ar)
          to label %.noexc11.i.i.i unwind label %bb.jr, !noalias !25720

.noexc11.i.i.i:                                   ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !25737
  br label %bb.fq

bb.ex:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.i.i.i.i.i"
  %i.oz = add i64 %i.oh, 1                        ; 4 uses
  store i64 %i.oz, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25738, !noalias !25722
  call void @llvm.experimental.noalias.scope.decl(metadata !25739)
  %umax.i76.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.od, i64 %i.oz) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25740)
  call void @llvm.experimental.noalias.scope.decl(metadata !25741)
  %exitcond.not.i78.not.i.i.i.i.i = icmp ult i64 %i.oz, %i.od
  br i1 %exitcond.not.i78.not.i.i.i.i.i, label %bb.ey, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i81.i.i.i.i.i"

bb.ey:                                            ; preds = %bb.ex
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !alias.scope !25709, !noalias !25742, !noundef !24
  %i.pc = add i64 %i.oh, 2                        ; 3 uses
  store i64 %i.pc, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25743, !noalias !25744
  %.not.i79.i.i.i.i.i = icmp eq i8 %i.pb, 114
  br i1 %.not.i79.i.i.i.i.i, label %bb.ez, label %bb.fd, !prof !59

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.experimental.noalias.scope.decl(metadata !25745)
  call void @llvm.experimental.noalias.scope.decl(metadata !25746)
  %exitcond.not.i78.1.i.i.i.i.i = icmp eq i64 %i.pc, %umax.i76.i.i.i.i.i
  br i1 %exitcond.not.i78.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i81.i.i.i.i.i", label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !alias.scope !25709, !noalias !25747, !noundef !24
  %i.pf = add i64 %i.oh, 3                        ; 3 uses
  store i64 %i.pf, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25748, !noalias !25744
  %.not.i79.1.i.i.i.i.i = icmp eq i8 %i.pe, 117
  br i1 %.not.i79.1.i.i.i.i.i, label %bb.fb, label %bb.fd, !prof !59

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.experimental.noalias.scope.decl(metadata !25749)
  call void @llvm.experimental.noalias.scope.decl(metadata !25750)
  %exitcond.not.i78.2.i.i.i.i.i = icmp eq i64 %i.pf, %umax.i76.i.i.i.i.i
  br i1 %exitcond.not.i78.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i81.i.i.i.i.i", label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !alias.scope !25709, !noalias !25751, !noundef !24
  %i.pi = add i64 %i.oh, 4
  store i64 %i.pi, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25752, !noalias !25744
  %.not.i79.2.i.i.i.i.i = icmp eq i8 %i.ph, 101
  br i1 %.not.i79.2.i.i.i.i.i, label %bb.fr, label %bb.fd, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i81.i.i.i.i.i": ; preds = %bb.fb, %bb.ez, %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !25753
  store i64 5, ptr %i.aq, align 8, !noalias !25753
  %i.pj = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aq)
          to label %.noexc12.i.i.i unwind label %bb.jr, !noalias !25720

.noexc12.i.i.i:                                   ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i81.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !25753
  br label %bb.fq

bb.fd:                                            ; preds = %bb.fc, %bb.fa, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !25753
  store i64 9, ptr %i.ap, align 8, !noalias !25753
  %i.pk = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ap)
          to label %.noexc13.i.i.i unwind label %bb.jr, !noalias !25720

.noexc13.i.i.i:                                   ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !25753
  br label %bb.fq

bb.fe:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.i.i.i.i.i"
  %i.pl = add i64 %i.oh, 1                        ; 4 uses
  store i64 %i.pl, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25754, !noalias !25722
  call void @llvm.experimental.noalias.scope.decl(metadata !25755)
  %umax.i84.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.od, i64 %i.pl) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25756)
  call void @llvm.experimental.noalias.scope.decl(metadata !25757)
  %exitcond.not.i86.not.i.i.i.i.i = icmp ult i64 %i.pl, %i.od
  br i1 %exitcond.not.i86.not.i.i.i.i.i, label %bb.ff, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i89.i.i.i.i.i"

bb.ff:                                            ; preds = %bb.fe
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !alias.scope !25709, !noalias !25758, !noundef !24
  %i.po = add i64 %i.oh, 2                        ; 3 uses
  store i64 %i.po, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25759, !noalias !25760
  %.not.i87.i.i.i.i.i = icmp eq i8 %i.pn, 97
  br i1 %.not.i87.i.i.i.i.i, label %bb.fg, label %bb.fm, !prof !59

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.experimental.noalias.scope.decl(metadata !25761)
  call void @llvm.experimental.noalias.scope.decl(metadata !25762)
  %exitcond.not.i86.1.i.i.i.i.i = icmp eq i64 %i.po, %umax.i84.i.i.i.i.i
  br i1 %exitcond.not.i86.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i89.i.i.i.i.i", label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !alias.scope !25709, !noalias !25763, !noundef !24
  %i.pr = add i64 %i.oh, 3                        ; 3 uses
  store i64 %i.pr, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25764, !noalias !25760
  %.not.i87.1.i.i.i.i.i = icmp eq i8 %i.pq, 108
  br i1 %.not.i87.1.i.i.i.i.i, label %bb.fi, label %bb.fm, !prof !59

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.experimental.noalias.scope.decl(metadata !25765)
  call void @llvm.experimental.noalias.scope.decl(metadata !25766)
  %exitcond.not.i86.2.i.i.i.i.i = icmp eq i64 %i.pr, %umax.i84.i.i.i.i.i
  br i1 %exitcond.not.i86.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i89.i.i.i.i.i", label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !alias.scope !25709, !noalias !25767, !noundef !24
  %i.pu = add i64 %i.oh, 4                        ; 3 uses
  store i64 %i.pu, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25768, !noalias !25760
  %.not.i87.2.i.i.i.i.i = icmp eq i8 %i.pt, 115
  br i1 %.not.i87.2.i.i.i.i.i, label %bb.fk, label %bb.fm, !prof !59

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.experimental.noalias.scope.decl(metadata !25769)
  call void @llvm.experimental.noalias.scope.decl(metadata !25770)
  %exitcond.not.i86.3.i.i.i.i.i = icmp eq i64 %i.pu, %umax.i84.i.i.i.i.i
  br i1 %exitcond.not.i86.3.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i89.i.i.i.i.i", label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !alias.scope !25709, !noalias !25771, !noundef !24
  %i.px = add i64 %i.oh, 5
  store i64 %i.px, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25772, !noalias !25760
  %.not.i87.3.i.i.i.i.i = icmp eq i8 %i.pw, 101
  br i1 %.not.i87.3.i.i.i.i.i, label %bb.fs, label %bb.fm, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i89.i.i.i.i.i": ; preds = %bb.fk, %bb.fi, %bb.fg, %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !25773
  store i64 5, ptr %i.ao, align 8, !noalias !25773
  %i.py = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ao)
          to label %.noexc14.i.i.i unwind label %bb.jr, !noalias !25720

.noexc14.i.i.i:                                   ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i89.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !25773
  br label %bb.fq

bb.fm:                                            ; preds = %bb.fl, %bb.fj, %bb.fh, %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !25773
  store i64 9, ptr %i.an, align 8, !noalias !25773
  %i.pz = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.an)
          to label %.noexc15.i.i.i unwind label %bb.jr, !noalias !25720

.noexc15.i.i.i:                                   ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !25773
  br label %bb.fq

bb.fn:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.i.i.i.i.i"
  %i.qa = add i64 %i.oh, 1
  store i64 %i.qa, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25774, !noalias !25722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !25719
  invoke fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h775dfdd57d8eaa7cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bn, i1 noundef zeroext false)
          to label %.noexc16.i.i.i unwind label %bb.jr, !noalias !25720

.noexc16.i.i.i:                                   ; preds = %bb.fn
  %i.qb = load i64, ptr %i.be, align 8, !range !56, !noalias !25719, !noundef !24 ; 2 uses
  %i.qc = icmp eq i64 %i.qb, 3
  %i.qd = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  br i1 %i.qc, label %bb.ft, label %bb.fu

bb.fo:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.i.i.i.i.i"
  %i.qe = add i64 %i.oh, 1
  store i64 %i.qe, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !25775, !noalias !25722
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i176.i, align 8, !alias.scope !25776, !noalias !25722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !25719
  invoke void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.oe, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bn)
          to label %.noexc17.i.i.i unwind label %bb.jr, !noalias !25720

.noexc17.i.i.i:                                   ; preds = %bb.fo
  %i.qf = load i64, ptr %i.ba, align 8, !range !34, !noalias !25719, !noundef !24 ; 2 uses
  %i.qg = icmp eq i64 %i.qf, 2
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !noalias !25719 ; 4 uses
  br i1 %i.qg, label %bb.fz, label %bb.ga

bb.fp:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !25719
  store ptr @1407, ptr %i.bh, align 8, !noalias !25777
  %.sroa.12.0..sroa_idx22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 4, ptr %.sroa.12.0..sroa_idx22.i.i.i.i, align 8, !noalias !25777
  %.sroa.15.0..sroa_idx34.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr @1409, ptr %.sroa.15.0..sroa_idx34.i.i.i.i, align 8, !noalias !25777
  %.sroa.16.0..sroa_idx46.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 31, ptr %.sroa.16.0..sroa_idx46.i.i.i.i, align 8, !noalias !25777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !25778
  store i8 7, ptr %i.am, align 8, !noalias !25778
  %i.qj = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86)
          to label %.noexc18.i.i189.i unwind label %bb.jr, !noalias !25720

.noexc18.i.i189.i:                                ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !25778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !25719
  %i.qk = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h020c265af5679557E(ptr noalias noundef nonnull align 8 %i.qj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn)
          to label %.noexc19.i.i190.i unwind label %bb.jr, !noalias !25720

.noexc19.i.i190.i:                                ; preds = %.noexc18.i.i189.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i.i.i.i)
  br label %.thread.i.i180.i

bb.fq:                                            ; preds = %bb.jc, %bb.fz, %bb.ft, %.noexc15.i.i.i, %.noexc14.i.i.i, %.noexc13.i.i.i, %.noexc12.i.i.i, %.noexc11.i.i.i, %.noexc10.i.i.i
  %.sroa.21.1.i.i.i.i = phi ptr [ %i.wt, %bb.jc ], [ %i.py, %.noexc14.i.i.i ], [ %i.oy, %.noexc11.i.i.i ], [ %i.pk, %.noexc13.i.i.i ], [ %i.qr, %bb.ft ], [ %i.qi, %bb.fz ], [ %i.pz, %.noexc15.i.i.i ], [ %i.ox, %.noexc10.i.i.i ], [ %i.pj, %.noexc12.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i.i.i.i)
  br label %.thread.i.i180.i

bb.fr:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !25719
  store ptr @1407, ptr %i.bg, align 8, !noalias !25777
  %.sroa.12.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 4, ptr %.sroa.12.0..sroa_idx20.i.i.i.i, align 8, !noalias !25777
  %.sroa.15.0..sroa_idx32.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr @1409, ptr %.sroa.15.0..sroa_idx32.i.i.i.i, align 8, !noalias !25777
  %.sroa.16.0..sroa_idx44.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 31, ptr %.sroa.16.0..sroa_idx44.i.i.i.i, align 8, !noalias !25777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !25779
  %i.ql = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 1, ptr %i.ql, align 1, !noalias !25779
  store i8 0, ptr %i.al, align 8, !noalias !25779
  %i.qm = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86)
          to label %.noexc20.i.i187.i unwind label %bb.jr, !noalias !25720

.noexc20.i.i187.i:                                ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !25779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !25719
  %i.qn = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h020c265af5679557E(ptr noalias noundef nonnull align 8 %i.qm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn)
          to label %.noexc21.i.i.i unwind label %bb.jr, !noalias !25720

.noexc21.i.i.i:                                   ; preds = %.noexc20.i.i187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i.i.i.i)
  br label %.thread.i.i180.i

bb.fs:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !25719
  store ptr @1407, ptr %i.bf, align 8, !noalias !25777
  %.sroa.12.0..sroa_idx18.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 4, ptr %.sroa.12.0..sroa_idx18.i.i.i.i, align 8, !noalias !25777
  %.sroa.15.0..sroa_idx30.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr @1409, ptr %.sroa.15.0..sroa_idx30.i.i.i.i, align 8, !noalias !25777
  %.sroa.16.0..sroa_idx42.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 31, ptr %.sroa.16.0..sroa_idx42.i.i.i.i, align 8, !noalias !25777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !25780
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 0, ptr %i.qo, align 1, !noalias !25780
  store i8 0, ptr %i.ak, align 8, !noalias !25780
  %i.qp = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86)
          to label %.noexc22.i.i.i unwind label %bb.jr, !noalias !25720

.noexc22.i.i.i:                                   ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !25780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !25719
  %i.qq = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h020c265af5679557E(ptr noalias noundef nonnull align 8 %i.qp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bn)
          to label %.noexc23.i.i.i unwind label %bb.jr, !noalias !25720

.noexc23.i.i.i:                                   ; preds = %.noexc22.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i.i.i.i.i)
  br label %.thread.i.i180.i

bb.ft:                                            ; preds = %.noexc16.i.i.i
  %i.qr = load ptr, ptr %i.qd, align 8, !noalias !25719, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25719
  br label %bb.fq

bb.fu:                                            ; preds = %.noexc16.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %i.qd, align 8, !noalias !25719 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !25719
  store ptr @1407, ptr %i.bd, align 8, !noalias !25777
  %.sroa.12.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 4, ptr %.sroa.12.0..sroa_idx16.i.i.i.i, align 8, !noalias !25777
  %.sroa.15.0..sroa_idx28.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @1409, ptr %.sroa.15.0..sroa_idx28.i.i.i.i, align 8, !noalias !25777
  %.sroa.16.0..sroa_idx40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 31, ptr %.sroa.16.0..sroa_idx40.i.i.i.i, align 8, !noalias !25777
  switch i64 %i.qb, label %default.unreachable184 [
end_hunk_5
begin_hunk_6_@"_ZN85_$LT$std..io..buffered..linewriter..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hf054208a0fe16e5dE":bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !44010, !noundef !24 ; 3 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !44010, !nonnull !24, !noundef !24
  %i.k = getelementptr i8, ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !noundef !24
  %i.n = icmp eq i8 %i.m, 10
  br i1 %i.n, label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.i", label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread.i"

"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.i": ; preds = %bb.d
  %i.o = tail call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17ha3f05b79838716e2E"(ptr noalias noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit._ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread_crit_edge.i", label %"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hb256e47b8ce8c429E.exit"

"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit._ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread_crit_edge.i": ; preds = %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.i"
  %.pre.i = load i64, ptr %i.g, align 8, !noalias !44010
  br label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread.i"

"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread.i": ; preds = %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit._ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread_crit_edge.i", %bb.d, %bb.c
  %i.p = phi i64 [ %.pre.i, %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit._ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread_crit_edge.i" ], [ %i.h, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.q = load i64, ptr %0, align 8, !range !30, !noalias !44010, !noundef !24
  %i.r = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = sub nsw i64 %i.q, %i.p
  %i.t = icmp ult i64 %2, %i.s
  br i1 %i.t, label %bb.f, label %bb.e, !prof !29

bb.e:                                             ; preds = %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread.i"
  %i.u = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h9b0421d574bb2a57E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  br label %"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hb256e47b8ce8c429E.exit"

bb.f:                                             ; preds = %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.thread.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44011)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !44011, !noalias !44012, !nonnull !24, !noundef !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %1, i64 range(i64 0, -1) %2, i1 false), !noalias !44011
  %i.y = add i64 %i.p, %2
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !44011, !noalias !44012
  br label %"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hb256e47b8ce8c429E.exit"

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44010
  store ptr @103, ptr %i.a, align 8, !noalias !44010
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.z, align 8, !noalias !44010
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.aa, align 8, !noalias !44010
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !44010
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ac, align 8, !noalias !44010
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1823) #54
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.ae = sub nuw i64 %2, %i.f                    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !44010, !noundef !24 ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = tail call noundef ptr @"_ZN57_$LT$std..io..stdio..Stderr$u20$as$u20$std..io..Write$GT$9write_all17h07dc4dcc3e737871E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %i.f) ; 2 uses
  %.not28.i = icmp eq ptr %i.aj, null
  br i1 %.not28.i, label %bb.k, label %"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hb256e47b8ce8c429E.exit"

bb.j:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %0, align 8, !range !30, !noalias !44010, !noundef !24
  %i.al = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = sub nsw i64 %i.ak, %i.ag
  %i.an = icmp ult i64 %i.f, %i.am
  br i1 %i.an, label %.thread.i, label %bb.l, !prof !29

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.ao = load i64, ptr %0, align 8, !range !30, !noalias !44010, !noundef !24
  %i.ap = load i64, ptr %i.af, align 8, !noalias !44010, !noundef !24 ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nsw i64 %i.ao, %i.ap
  %i.as = icmp ult i64 %i.ae, %i.ar
  br i1 %i.as, label %bb.o, label %bb.n, !prof !29

.thread.i:                                        ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44013)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !44013, !noalias !44014, !nonnull !24, !noundef !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %1, i64 range(i64 0, -1) %i.f, i1 false), !noalias !44013
  %i.aw = add i64 %i.ag, %i.f
  store i64 %i.aw, ptr %i.af, align 8, !alias.scope !44013, !noalias !44014
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h9b0421d574bb2a57E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %i.f) ; 2 uses
  %.not24.i = icmp eq ptr %i.ax, null
  br i1 %.not24.i, label %bb.m, label %"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hb256e47b8ce8c429E.exit"

bb.m:                                             ; preds = %bb.l, %.thread.i
  %i.ay = tail call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17ha3f05b79838716e2E"(ptr noalias noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not26.i = icmp eq ptr %i.ay, null
  br i1 %.not26.i, label %bb.k, label %"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hb256e47b8ce8c429E.exit"

bb.n:                                             ; preds = %bb.k
  %i.az = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h9b0421d574bb2a57E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.ae)
  br label %"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hb256e47b8ce8c429E.exit"

bb.o:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44015)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !44015, !noalias !44016, !nonnull !24, !noundef !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull readonly align 1 %i.ad, i64 range(i64 0, -1) %i.ae, i1 false), !noalias !44015
  %i.bd = add i64 %i.ap, %i.ae
  store i64 %i.bd, ptr %i.af, align 8, !alias.scope !44015, !noalias !44016
  br label %"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hb256e47b8ce8c429E.exit"

"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hb256e47b8ce8c429E.exit": ; preds = %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.i", %bb.e, %bb.f, %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.0.2.i = phi ptr [ %i.u, %bb.e ], [ null, %bb.o ], [ %i.az, %bb.n ], [ null, %bb.f ], [ %i.o, %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17hc9cea89fc7b1331eE.exit.i" ], [ %i.aj, %bb.i ], [ %i.ax, %bb.l ], [ %i.ay, %bb.m ]
  ret ptr %.sroa.0.2.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0d0cc33758db58e3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44058)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !44059, !noalias !44060, !noundef !24 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !44061, !noalias !44062 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !44059, !noalias !44060, !nonnull !24, !align !42, !noundef !24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44064)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !44065, !noundef !24
  switch i8 %i.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !44066, !noalias !44062
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.thread.i.i": ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44067)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44068
  call fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17hf97487988520047dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !44069
  %i.n = load i64, ptr %i.c, align 8, !range !47, !noalias !44068, !noundef !24
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.thread.i.i"
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !44068, !nonnull !24, !align !31, !noundef !24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !44069, !noalias !44070
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !44069, !noalias !44070
  br label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hd34de40e71e6203eE.exit.i.i"

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit.thread.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !44070
  br label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hd34de40e71e6203eE.exit.i.i"

"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hd34de40e71e6203eE.exit.i.i": ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44068
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6ca041797eac83b7E.exit"

bb.f:                                             ; preds = %bb.b
  %i.s = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !44071, !noalias !44072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44073)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44075)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !44076, !noundef !24
  %i.v = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !44077, !noalias !44078
  %.not.i.i.i = icmp eq i8 %i.u, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !59

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44080)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !44081, !noundef !24
  %i.y = add i64 %i.j, 3                          ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !44082, !noalias !44078
  %.not.i.1.i.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !59

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44084)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !44085, !noundef !24
  %i.ab = add i64 %i.j, 4
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !44086, !noalias !44078
  %.not.i.2.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.i.i", label %bb.l, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i": ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44087
  store i64 5, ptr %i.b, align 8, !noalias !44087
  %i.ac = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !44088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44087
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44087
  store i64 9, ptr %i.a, align 8, !noalias !44087
  %i.ad = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !44088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44087
  br label %bb.m

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.i.i": ; preds = %bb.k
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !44089, !noalias !44090
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6ca041797eac83b7E.exit"

bb.m:                                             ; preds = %bb.l, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ac, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i" ], [ %i.ad, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ae, align 8, !alias.scope !44072, !noalias !44090
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !44072, !noalias !44090
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6ca041797eac83b7E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6ca041797eac83b7E.exit": ; preds = %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hd34de40e71e6203eE.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h2b1ab51c357ae02cE.exit.i.i", %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h12281c3437c3b35eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44189)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44190)
  %i.u = load i8, ptr %i.o, align 8, !range !38, !alias.scope !44191, !noalias !44192, !noundef !24
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.thread.i.i.i, label %bb.b

.thread.i.i.i:                                    ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"
  %i.w = load i8, ptr %i.p, align 1, !alias.scope !44191, !noalias !44192, !noundef !24
  br label %bb.c

bb.b:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !44193
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h92f8f7b98fabe574E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(32) %i.q), !noalias !44192
  %i.x = load i8, ptr %i.m, align 8, !range !35, !noalias !44193, !noundef !24
  switch i8 %i.x, label %bb.g [
    i8 2, label %bb.h
    i8 0, label %.thread30.i.i.i
  ], !prof !55

.thread30.i.i.i:                                  ; preds = %bb.b
  %i.y = load i8, ptr %i.r, align 1, !noalias !44193, !noundef !24 ; 2 uses
  store i8 1, ptr %i.o, align 8, !alias.scope !44191, !noalias !44192
  store i8 %i.y, ptr %i.p, align 1, !alias.scope !44191, !noalias !44192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44193
  br label %bb.c

bb.c:                                             ; preds = %.thread30.i.i.i, %.thread.i.i.i
  %i.z = phi i8 [ %i.w, %.thread.i.i.i ], [ %i.y, %.thread30.i.i.i ] ; 2 uses
  switch i8 %i.z, label %bb.i [
    i8 32, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 91, label %bb.j
    i8 123, label %bb.k
  ], !prof !80

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  store i8 0, ptr %i.o, align 8, !alias.scope !44194, !noalias !44195
  %i.aa = load i64, ptr %i.n, align 8, !range !47, !alias.scope !44194, !noalias !44195 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.aa, -9223372036854775808
  br i1 %.not.i.not.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.s, align 8, !alias.scope !44196, !noalias !44197, !noundef !24 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685), !noalias !44195
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.ad = load ptr, ptr %i.t, align 8, !alias.scope !44196, !noalias !44197, !nonnull !24, !noundef !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 %i.z, ptr %i.ae, align 1, !noalias !44195
  %i.af = add i64 %i.ab, 1
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !44196, !noalias !44197
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i", %bb.d
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"

bb.g:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !44193, !nonnull !24, !noundef !24
  %i.ai = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ah), !noalias !44198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44193
  store ptr %i.ai, ptr %0, align 8, !alias.scope !44199, !noalias !44200
  br label %"_ZN10serde_core2de5impls78_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..time..Duration$GT$11deserialize17h4cf4a78e8dc3e8ecE.exit"

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44193
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i = load i64, ptr %i.aj, align 8, !alias.scope !44200, !noalias !44199, !noundef !24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val25.i.i = load i64, ptr %i.ak, align 8, !alias.scope !44200, !noalias !44199, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !44201
  store i64 5, ptr %i.l, align 8, !noalias !44202
  %i.al = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.val.i.i, i64 noundef %.val25.i.i), !noalias !44203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !44201
  store ptr %i.al, ptr %0, align 8, !alias.scope !44199, !noalias !44200
  br label %"_ZN10serde_core2de5impls78_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..time..Duration$GT$11deserialize17h4cf4a78e8dc3e8ecE.exit"

bb.i:                                             ; preds = %bb.c
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hc0ca08a5a6262175E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @298), !noalias !44199
  %i.an = ptrtoint ptr %i.am to i64
  br label %.thread46.i.i

bb.j:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !range !38, !alias.scope !44200, !noalias !44199, !noundef !24
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !38, !alias.scope !44200, !noalias !44199, !noundef !24
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.at, label %bb.as
end_hunk_6
begin_hunk_7_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h0e848e70c3ea840cE":bb.a
  store ptr %i.hl, ptr %i.hm, align 8
  store i8 22, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9149)
  %.not205 = icmp eq ptr %i.hf, null
  br i1 %.not205, label %.thread202, label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  %i.hn = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.hf, ptr %i.hn, align 8
  store i8 22, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9149)
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.n)
  br label %.thread202

.thread202:                                       ; preds = %bb.ct, %bb.cr, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit121", %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bj

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !49360)
  call void @llvm.experimental.noalias.scope.decl(metadata !49361)
  %i.ho = load i64, ptr %i.hf, align 8, !range !64, !alias.scope !49362, !noalias !49363, !noundef !24
  switch i64 %i.ho, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit121" [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %.val1.i.i.i.i118 = load i64, ptr %i.hp, align 8, !alias.scope !49362, !noalias !49363, !noundef !24 ; 2 uses
  %i.hq = icmp eq i64 %.val1.i.i.i.i118, 0
  br i1 %i.hq, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit121", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i119"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i119": ; preds = %bb.cv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %.val.i.i.i.i120 = load ptr, ptr %i.hr, align 8, !alias.scope !49362, !noalias !49363, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i120, i64 noundef %.val1.i.i.i.i118, i64 noundef 1) #47, !noalias !49364
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit121"

bb.cw:                                            ; preds = %bb.cu
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.hs)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit121" unwind label %bb.cx, !noalias !49363

bb.cx:                                            ; preds = %bb.cw
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hf, i64 noundef 40, i64 noundef 8) #47, !noalias !49363
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit121": ; preds = %bb.cu, %bb.cv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i119", %bb.cw
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hf, i64 noundef 40, i64 noundef 8) #47, !noalias !49363
  br label %.thread202

bb.cy:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.ao, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ae

bb.da:                                            ; preds = %bb.k
  %.val75 = load i64, ptr %i.x, align 8, !noundef !24
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val76 = load i64, ptr %i.hu, align 8, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !49365
  store i64 10, ptr %i.e, align 8
  %i.hv = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %.val75, i64 noundef %.val76), !noalias !49365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !49365
  %i.hw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.hv, ptr %i.hw, align 8
  br label %bb.ao

bb.db:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hfb8db8417cbc0b28E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.r, ptr noalias noundef align 8 dereferenceable(96) %1, i1 noundef zeroext true)
  %i.hx = load i64, ptr %i.r, align 8, !range !56, !noundef !24 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.hy, label %bb.dc, label %switch.lookup284

bb.dc:                                            ; preds = %bb.db
  %i.ia = load ptr, ptr %i.hz, align 8, !nonnull !24, !align !31, !noundef !24
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ia, ptr %i.ib, align 8
  store i8 22, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.af

switch.lookup284:                                 ; preds = %bb.db
  %.sroa.2142.0.copyload = load i64, ptr %i.hz, align 8
  %.sroa.41.0..sroa_idx.i.i122 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %switch.cast285 = trunc nuw i64 %i.hx to i24
  %switch.shiftamt286 = shl nuw nsw i24 %switch.cast285, 3
  %switch.downshift287 = lshr i24 525322, %switch.shiftamt286
  %switch.masked288 = trunc i24 %switch.downshift287 to i8
  store i8 %switch.masked288, ptr %i.t, align 8, !alias.scope !49366, !noalias !49367
  store i64 %.sroa.2142.0.copyload, ptr %.sroa.41.0..sroa_idx.i.i122, align 8, !alias.scope !49366, !noalias !49367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ae
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hfe4738f9ecdb93fbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.6132 = alloca [48 x i8], align 8         ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.9119 = alloca [16 x i8], align 8         ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [40 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.35 = alloca [6 x i8], align 2            ; 13 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49508)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !49509, !noalias !49510, !noundef !24 ; 8 uses
  %.promoted.i = load i64, ptr %i.aa, align 8, !alias.scope !49508, !noalias !49511 ; 2 uses
  %i.ad = icmp ult i64 %.promoted.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %.loopexit186

.lr.ph.i:                                         ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !49509, !noalias !49510, !nonnull !24, !align !42, !noundef !24 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ag = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aj, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49513)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !49514, !noundef !24 ; 3 uses
  switch i8 %i.ai, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aj = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.aj, ptr %i.aa, align 8, !alias.scope !49515, !noalias !49511
  %exitcond.not.i = icmp eq i64 %i.aj, %i.ac
  br i1 %exitcond.not.i, label %.loopexit186, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35)
  switch i8 %i.ai, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit186:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 5, ptr %i.z, align 8
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hbff09041473190e1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  store i8 22, ptr %0, align 8
  br label %bb.ah

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.am = add i8 %i.ai, -48
  %or.cond8 = icmp ult i8 %i.am, 10
  br i1 %or.cond8, label %bb.da, label %bb.cz, !prof !57

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.an = add i64 %i.ag, 1                        ; 4 uses
  store i64 %i.an, ptr %i.aa, align 8, !alias.scope !49516
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49517)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.an) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49519)
  %exitcond.not.i71.not = icmp ult i64 %i.an, %i.ac
  br i1 %exitcond.not.i71.not, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !49520, !noundef !24
  %i.aq = add i64 %i.ag, 2                        ; 3 uses
  store i64 %i.aq, ptr %i.aa, align 8, !alias.scope !49521, !noalias !49522
  %.not.i = icmp eq i8 %i.ap, 117
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !59

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49524)
  %exitcond.not.i71.1 = icmp eq i64 %i.aq, %umax.i
  br i1 %exitcond.not.i71.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !49525, !noundef !24
  %i.at = add i64 %i.ag, 3                        ; 3 uses
  store i64 %i.at, ptr %i.aa, align 8, !alias.scope !49526, !noalias !49522
  %.not.i.1 = icmp eq i8 %i.as, 108
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !59

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49528)
  %exitcond.not.i71.2 = icmp eq i64 %i.at, %umax.i
  br i1 %exitcond.not.i71.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !49529, !noundef !24
  %i.aw = add i64 %i.ag, 4
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !49530, !noalias !49522
  %.not.i.2 = icmp eq i8 %i.av, 108
  br i1 %.not.i.2, label %bb.ag, label %bb.k, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !49531
  store i64 5, ptr %i.o, align 8, !noalias !49531
  %i.ax = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !49532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !49531
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !49531
  store i64 9, ptr %i.n, align 8, !noalias !49531
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !49532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !49531
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.az = add i64 %i.ag, 1                        ; 4 uses
  store i64 %i.az, ptr %i.aa, align 8, !alias.scope !49533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49534)
  %umax.i73 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.az) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49536)
  %exitcond.not.i75.not = icmp ult i64 %i.az, %i.ac
  br i1 %exitcond.not.i75.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78"

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !49537, !noundef !24
  %i.bc = add i64 %i.ag, 2                        ; 3 uses
  store i64 %i.bc, ptr %i.aa, align 8, !alias.scope !49538, !noalias !49539
  %.not.i76 = icmp eq i8 %i.bb, 114
  br i1 %.not.i76, label %bb.n, label %bb.r, !prof !59

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49541)
  %exitcond.not.i75.1 = icmp eq i64 %i.bc, %umax.i73
  br i1 %exitcond.not.i75.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !49542, !noundef !24
  %i.bf = add i64 %i.ag, 3                        ; 3 uses
  store i64 %i.bf, ptr %i.aa, align 8, !alias.scope !49543, !noalias !49539
  %.not.i76.1 = icmp eq i8 %i.be, 117
  br i1 %.not.i76.1, label %bb.p, label %bb.r, !prof !59

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49545)
  %exitcond.not.i75.2 = icmp eq i64 %i.bf, %umax.i73
  br i1 %exitcond.not.i75.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !49546, !noundef !24
  %i.bi = add i64 %i.ag, 4
  store i64 %i.bi, ptr %i.aa, align 8, !alias.scope !49547, !noalias !49539
  %.not.i76.2 = icmp eq i8 %i.bh, 101
  br i1 %.not.i76.2, label %bb.ak, label %bb.r, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !49548
  store i64 5, ptr %i.m, align 8, !noalias !49548
  %i.bj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !49549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !49548
  br label %bb.aj

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !49548
  store i64 9, ptr %i.l, align 8, !noalias !49548
  %i.bk = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !49549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !49548
  br label %bb.aj

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.bl = add i64 %i.ag, 1                        ; 4 uses
  store i64 %i.bl, ptr %i.aa, align 8, !alias.scope !49550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49551)
  %umax.i81 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.bl) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49553)
  %exitcond.not.i83.not = icmp ult i64 %i.bl, %i.ac
  br i1 %exitcond.not.i83.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86"

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !49554, !noundef !24
  %i.bo = add i64 %i.ag, 2                        ; 3 uses
  store i64 %i.bo, ptr %i.aa, align 8, !alias.scope !49555, !noalias !49556
  %.not.i84 = icmp eq i8 %i.bn, 97
  br i1 %.not.i84, label %bb.u, label %bb.aa, !prof !59

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49558)
  %exitcond.not.i83.1 = icmp eq i64 %i.bo, %umax.i81
  br i1 %exitcond.not.i83.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !49559, !noundef !24
  %i.br = add i64 %i.ag, 3                        ; 3 uses
  store i64 %i.br, ptr %i.aa, align 8, !alias.scope !49560, !noalias !49556
  %.not.i84.1 = icmp eq i8 %i.bq, 108
  br i1 %.not.i84.1, label %bb.w, label %bb.aa, !prof !59

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49562)
  %exitcond.not.i83.2 = icmp eq i64 %i.br, %umax.i81
  br i1 %exitcond.not.i83.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !49563, !noundef !24
  %i.bu = add i64 %i.ag, 4                        ; 3 uses
  store i64 %i.bu, ptr %i.aa, align 8, !alias.scope !49564, !noalias !49556
  %.not.i84.2 = icmp eq i8 %i.bt, 115
  br i1 %.not.i84.2, label %bb.y, label %bb.aa, !prof !59

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49566)
  %exitcond.not.i83.3 = icmp eq i64 %i.bu, %umax.i81
  br i1 %exitcond.not.i83.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !49567, !noundef !24
  %i.bx = add i64 %i.ag, 5
  store i64 %i.bx, ptr %i.aa, align 8, !alias.scope !49568, !noalias !49556
  %.not.i84.3 = icmp eq i8 %i.bw, 101
  br i1 %.not.i84.3, label %bb.am, label %bb.aa, !prof !59

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !49569
  store i64 5, ptr %i.k, align 8, !noalias !49569
  %i.by = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !49570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !49569
  br label %bb.al

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !49569
  store i64 9, ptr %i.j, align 8, !noalias !49569
  %i.bz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h94ec12d23cb89b70E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !49570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !49569
  br label %bb.al

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.ca = add i64 %i.ag, 1
  store i64 %i.ca, ptr %i.aa, align 8, !alias.scope !49571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h775dfdd57d8eaa7cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.y, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext false)
  %i.cb = load i64, ptr %i.y, align 8, !range !56, !noundef !24 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.cc, label %bb.an, label %switch.lookup

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.ce = add i64 %i.ag, 1
  store i64 %i.ce, ptr %i.aa, align 8, !alias.scope !49572
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.cg = load i64, ptr %i.w, align 8, !range !34, !noundef !24 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8            ; 4 uses
  br i1 %i.ch, label %bb.ao, label %bb.ap

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !range !38, !noundef !24
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.aw, label %bb.av

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h954fd29c224a723eE.exit"
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8, !range !38, !noundef !24
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit", label %bb.bm

bb.af:                                            ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"
  %.sroa.0.1.i.ph = phi ptr [ %i.ax, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i" ], [ %i.ay, %bb.k ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cq, align 8
  store i8 22, ptr %0, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.j
  store i8 18, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.cy, %.loopexit186, %bb.ai, %switch.lookup507, %bb.au, %bb.at, %switch.lookup, %bb.am, %bb.ak, %bb.ag
  ret void

bb.ai:                                            ; preds = %bb.db, %bb.ck, %bb.ax, %bb.ao, %bb.an, %bb.al, %bb.aj, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78"
  %.sroa.0.1.i77.ph = phi ptr [ %i.bj, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i78" ], [ %i.bk, %bb.r ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i77.ph, ptr %i.cr, align 8
  store i8 22, ptr %0, align 8
  br label %bb.ai

bb.ak:                                            ; preds = %bb.q
  store i8 0, ptr %0, align 8
  %.sroa.33.0..sroa_idx293 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.33.0..sroa_idx293, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.al:                                            ; preds = %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86"
  %.sroa.0.1.i85.ph = phi ptr [ %i.by, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i86" ], [ %i.bz, %bb.aa ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i85.ph, ptr %i.cs, align 8
  store i8 22, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  store i8 0, ptr %0, align 8
  %.sroa.33.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.33.0..sroa_idx295, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %i.ct = load ptr, ptr %i.cd, align 8, !nonnull !24, !align !31, !noundef !24
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cu, align 8
  store i8 22, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ai

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.cd, align 8
  %switch.cast = trunc nuw i64 %i.cb to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i8 %switch.masked, ptr %0, align 8
  %.sroa.35320.0..sroa_idx325 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.35320.0..sroa_idx325, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %bb.ah

bb.ao:                                            ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.cv, align 8
  store i8 22, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ai

bb.ap:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %i.cw = trunc nuw i64 %i.cg to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  br i1 %i.cw, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.cx = icmp slt i64 %.sroa.4.0.copyload, 0
  br i1 %i.cx, label %bb.ar, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !43

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.aq
  %i.cy = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.cy, label %bb.au, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !49573
  %i.cz = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, 9) 1) #47, !noalias !49573 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ar, label %bb.au

end_hunk_7
