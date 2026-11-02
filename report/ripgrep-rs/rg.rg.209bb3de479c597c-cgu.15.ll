Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.15?download=true
inline.NumInlined: 496
inline.NumDeleted: 260
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2k_EE10take_frontB1N_:bb.a
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0, !dbg !3070
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader, !dbg !3070

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7, !dbg !3070 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3070
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3070

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 552, !dbg !3071
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3072, !nonnull !263, !noundef !263 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1, !dbg !3073 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3070 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3070
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3070, !llvm.loop !3050

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8, !dbg !3070
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !3070

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ], !dbg !3074
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8, !dbg !3075
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3075
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !3075
  br label %bb.d, !dbg !3076

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 552, !dbg !3071
  %i.h = load ptr, ptr %i.g, align 8, !dbg !3072, !nonnull !263, !noundef !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552, !dbg !3071
  %i.j = load ptr, ptr %i.i, align 8, !dbg !3072, !nonnull !263, !noundef !263
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 552, !dbg !3071
  %i.l = load ptr, ptr %i.k, align 8, !dbg !3072, !nonnull !263, !noundef !263
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 552, !dbg !3071
  %i.n = load ptr, ptr %i.m, align 8, !dbg !3072, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 552, !dbg !3071
  %i.p = load ptr, ptr %i.o, align 8, !dbg !3072, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 552, !dbg !3071
  %i.r = load ptr, ptr %i.q, align 8, !dbg !3072, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 552, !dbg !3071
  %i.t = load ptr, ptr %i.s, align 8, !dbg !3072, !nonnull !263, !noundef !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 552, !dbg !3071
  %i.v = load ptr, ptr %i.u, align 8, !dbg !3072, !nonnull !263, !noundef !263 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8, !dbg !3073   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0, !dbg !3070
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !3070
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1J_EE10take_frontCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 !dbg !3077 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8, !dbg !3109
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3109
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3109 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3109
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !3109 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3109
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !3109 ; 6 uses
  store i64 0, ptr %1, align 8, !dbg !3110
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1, !dbg !3111
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !3111

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null, !dbg !3100
  br i1 %.not, label %bb.f, label %bb.e, !dbg !3112

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !dbg !3113
  br label %bb.d, !dbg !3114

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void, !dbg !3114

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8, !dbg !3115
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3115
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !3115
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3115
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !3115
  br label %bb.d, !dbg !3116

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0, !dbg !3117
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader, !dbg !3117

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7, !dbg !3117 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3117
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3117

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 544, !dbg !3118
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3119, !nonnull !263, !noundef !263 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1, !dbg !3120 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3117 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3117
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3117, !llvm.loop !3097

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8, !dbg !3117
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !3117

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ], !dbg !3121
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8, !dbg !3122
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !3122
  br label %bb.d, !dbg !3123

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 544, !dbg !3118
  %i.h = load ptr, ptr %i.g, align 8, !dbg !3119, !nonnull !263, !noundef !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 544, !dbg !3118
  %i.j = load ptr, ptr %i.i, align 8, !dbg !3119, !nonnull !263, !noundef !263
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 544, !dbg !3118
  %i.l = load ptr, ptr %i.k, align 8, !dbg !3119, !nonnull !263, !noundef !263
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 544, !dbg !3118
  %i.n = load ptr, ptr %i.m, align 8, !dbg !3119, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 544, !dbg !3118
  %i.p = load ptr, ptr %i.o, align 8, !dbg !3119, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 544, !dbg !3118
  %i.r = load ptr, ptr %i.q, align 8, !dbg !3119, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 544, !dbg !3118
  %i.t = load ptr, ptr %i.s, align 8, !dbg !3119, !nonnull !263, !noundef !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 544, !dbg !3118
  %i.v = load ptr, ptr %i.u, align 8, !dbg !3119, !nonnull !263, !noundef !263 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8, !dbg !3120   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0, !dbg !3117
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !3117
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_6borrow3CowShENtNtB7_7set_val9SetValZSTE10init_frontCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !3124 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3139, !range !313, !noundef !263
  %i.b = trunc nuw i64 %i.a to i1, !dbg !3140     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3140

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3139 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3139, !noundef !263
  %.not = icmp eq ptr %i.d, null, !dbg !3139
  br i1 %.not, label %bb.d, label %bb.c, !dbg !3140

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3141
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !3141
  ret ptr %.sroa.0.0, !dbg !3142

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3143 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3143
  %i.h = load i64, ptr %i.g, align 8, !dbg !3143, !noundef !263 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !3144, !nonnull !263, !noundef !263 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !3145
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !3145

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !3145         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3145
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3145

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 280, !dbg !3146
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !3147 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !3144, !nonnull !263, !noundef !263 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3145 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3145
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3145, !llvm.loop !3134

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !3145
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !3145

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !3144
  store i64 1, ptr %0, align 8, !dbg !3148
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !3148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !3148
  br label %bb.c, !dbg !3149

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 280, !dbg !3146
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !3144, !nonnull !263, !noundef !263
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 280, !dbg !3146
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !3144, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 280, !dbg !3146
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !3144, !nonnull !263, !noundef !263
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 280, !dbg !3146
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !3144, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 280, !dbg !3146
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !3144, !nonnull !263, !noundef !263
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 280, !dbg !3146
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !3144, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 280, !dbg !3146
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !3144, !nonnull !263, !noundef !263
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 280, !dbg !3146
  %i.u = add i64 %.sroa.011.016, -8, !dbg !3147   ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !3144, !nonnull !263, !noundef !263 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !3145
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !3145
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsgixc6xHyZOO_10serde_json5value5ValueE10init_frontCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !3150 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3165, !range !313, !noundef !263
  %i.b = trunc nuw i64 %i.a to i1, !dbg !3166     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3166

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3165 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3165, !noundef !263
  %.not = icmp eq ptr %i.d, null, !dbg !3165
  br i1 %.not, label %bb.d, label %bb.c, !dbg !3166

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3167
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !3167
  ret ptr %.sroa.0.0, !dbg !3168

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3169 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3169
  %i.h = load i64, ptr %i.g, align 8, !dbg !3169, !noundef !263 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !3170, !nonnull !263, !noundef !263 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !3171
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !3171

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !3171         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3171
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3171

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 632, !dbg !3172
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !3173 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !3170, !nonnull !263, !noundef !263 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3171 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3171
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3171, !llvm.loop !3160

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !3171
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !3171

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !3170
  store i64 1, ptr %0, align 8, !dbg !3174
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !3174
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !3174
  br label %bb.c, !dbg !3175

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 632, !dbg !3172
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !3170, !nonnull !263, !noundef !263
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 632, !dbg !3172
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !3170, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 632, !dbg !3172
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !3170, !nonnull !263, !noundef !263
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 632, !dbg !3172
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !3170, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 632, !dbg !3172
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !3170, !nonnull !263, !noundef !263
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 632, !dbg !3172
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !3170, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 632, !dbg !3172
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !3170, !nonnull !263, !noundef !263
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 632, !dbg !3172
  %i.u = add i64 %.sroa.011.016, -8, !dbg !3173   ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !3170, !nonnull !263, !noundef !263 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !3171
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !3171
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringE10init_frontB1N_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !3176 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3191, !range !313, !noundef !263
  %i.b = trunc nuw i64 %i.a to i1, !dbg !3192     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3192

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3191 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3191, !noundef !263
  %.not = icmp eq ptr %i.d, null, !dbg !3191
  br i1 %.not, label %bb.d, label %bb.c, !dbg !3192

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3193
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !3193
  ret ptr %.sroa.0.0, !dbg !3194

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3195 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3195
  %i.h = load i64, ptr %i.g, align 8, !dbg !3195, !noundef !263 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !3196, !nonnull !263, !noundef !263 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !3197
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !3197

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !3197         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3197
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3197

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 288, !dbg !3198
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !3199 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !3196, !nonnull !263, !noundef !263 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3197 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3197
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3197, !llvm.loop !3186

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !3197
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !3197

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !3196
  store i64 1, ptr %0, align 8, !dbg !3200
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !3200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !3200
  br label %bb.c, !dbg !3201

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 288, !dbg !3198
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !3196, !nonnull !263, !noundef !263
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 288, !dbg !3198
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !3196, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 288, !dbg !3198
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !3196, !nonnull !263, !noundef !263
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 288, !dbg !3198
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !3196, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 288, !dbg !3198
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !3196, !nonnull !263, !noundef !263
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 288, !dbg !3198
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !3196, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 288, !dbg !3198
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !3196, !nonnull !263, !noundef !263
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 288, !dbg !3198
  %i.u = add i64 %.sroa.011.016, -8, !dbg !3199   ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !3196, !nonnull !263, !noundef !263 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !3197
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !3197
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2k_EE10init_frontB1N_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !3202 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3217, !range !313, !noundef !263
  %i.b = trunc nuw i64 %i.a to i1, !dbg !3218     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3218

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3217 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3217, !noundef !263
  %.not = icmp eq ptr %i.d, null, !dbg !3217
  br i1 %.not, label %bb.d, label %bb.c, !dbg !3218

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3219
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !3219
  ret ptr %.sroa.0.0, !dbg !3220

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3221 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3221
  %i.h = load i64, ptr %i.g, align 8, !dbg !3221, !noundef !263 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !3222, !nonnull !263, !noundef !263 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !3223
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !3223

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !3223         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3223
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3223

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 552, !dbg !3224
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !3225 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !3222, !nonnull !263, !noundef !263 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3223 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3223
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3223, !llvm.loop !3212

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !3223
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !3223

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !3222
  store i64 1, ptr %0, align 8, !dbg !3226
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !3226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !3226
  br label %bb.c, !dbg !3227

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 552, !dbg !3224
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !3222, !nonnull !263, !noundef !263
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 552, !dbg !3224
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !3222, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 552, !dbg !3224
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !3222, !nonnull !263, !noundef !263
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 552, !dbg !3224
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !3222, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 552, !dbg !3224
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !3222, !nonnull !263, !noundef !263
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 552, !dbg !3224
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !3222, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 552, !dbg !3224
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !3222, !nonnull !263, !noundef !263
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 552, !dbg !3224
  %i.u = add i64 %.sroa.011.016, -8, !dbg !3225   ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !3222, !nonnull !263, !noundef !263 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !3223
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !3223
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1J_EE10init_frontCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !3228 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3243, !range !313, !noundef !263
  %i.b = trunc nuw i64 %i.a to i1, !dbg !3244     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3244

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3243 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3243, !noundef !263
  %.not = icmp eq ptr %i.d, null, !dbg !3243
  br i1 %.not, label %bb.d, label %bb.c, !dbg !3244

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3245
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !3245
  ret ptr %.sroa.0.0, !dbg !3246

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3247 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3247
  %i.h = load i64, ptr %i.g, align 8, !dbg !3247, !noundef !263 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !3248, !nonnull !263, !noundef !263 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !3249
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !3249

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !3249         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3249
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3249

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 544, !dbg !3250
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !3251 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !3248, !nonnull !263, !noundef !263 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3249 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3249
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3249, !llvm.loop !3238

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !3249
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !3249

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !3248
  store i64 1, ptr %0, align 8, !dbg !3252
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !3252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !3252
  br label %bb.c, !dbg !3253

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 544, !dbg !3250
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !3248, !nonnull !263, !noundef !263
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 544, !dbg !3250
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !3248, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 544, !dbg !3250
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !3248, !nonnull !263, !noundef !263
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 544, !dbg !3250
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !3248, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 544, !dbg !3250
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !3248, !nonnull !263, !noundef !263
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 544, !dbg !3250
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !3248, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 544, !dbg !3250
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !3248, !nonnull !263, !noundef !263
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 544, !dbg !3250
  %i.u = add i64 %.sroa.011.016, -8, !dbg !3251   ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !3248, !nonnull !263, !noundef !263 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !3249
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !3249
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_6borrow3CowShENtNtB7_7set_val9SetValZSTE10init_frontCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !3254 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3269, !range !313, !noundef !263
  %i.b = trunc nuw i64 %i.a to i1, !dbg !3270     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3270

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3269 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3269, !noundef !263
  %.not = icmp eq ptr %i.d, null, !dbg !3269
  br i1 %.not, label %bb.d, label %bb.c, !dbg !3270

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3271
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !3271
  ret ptr %.sroa.0.0, !dbg !3272

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3273 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3273
  %i.h = load i64, ptr %i.g, align 8, !dbg !3273, !noundef !263 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !3274, !nonnull !263, !noundef !263 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !3275
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !3275

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !3275         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3275
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3275

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 280, !dbg !3276
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !3277 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !3274, !nonnull !263, !noundef !263 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3275 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3275
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3275, !llvm.loop !3264

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !3275
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !3275

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !3274
  store i64 1, ptr %0, align 8, !dbg !3278
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !3278
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !3278
  br label %bb.c, !dbg !3279

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 280, !dbg !3276
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !3274, !nonnull !263, !noundef !263
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 280, !dbg !3276
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !3274, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 280, !dbg !3276
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !3274, !nonnull !263, !noundef !263
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 280, !dbg !3276
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !3274, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 280, !dbg !3276
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !3274, !nonnull !263, !noundef !263
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 280, !dbg !3276
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !3274, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 280, !dbg !3276
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !3274, !nonnull !263, !noundef !263
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 280, !dbg !3276
  %i.u = add i64 %.sroa.011.016, -8, !dbg !3277   ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !3274, !nonnull !263, !noundef !263 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !3275
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !3275
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCsgixc6xHyZOO_10serde_json5value5ValueE10init_frontCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !3280 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3295, !range !313, !noundef !263
  %i.b = trunc nuw i64 %i.a to i1, !dbg !3296     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3296

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3295 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3295, !noundef !263
  %.not = icmp eq ptr %i.d, null, !dbg !3295
  br i1 %.not, label %bb.d, label %bb.c, !dbg !3296

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3297
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !3297
  ret ptr %.sroa.0.0, !dbg !3298

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3299 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3299
  %i.h = load i64, ptr %i.g, align 8, !dbg !3299, !noundef !263 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !3300, !nonnull !263, !noundef !263 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !3301
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !3301

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !3301         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3301
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3301

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 632, !dbg !3302
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !3303 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !3300, !nonnull !263, !noundef !263 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3301 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3301
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3301, !llvm.loop !3290

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !3301
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !3301

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !3300
  store i64 1, ptr %0, align 8, !dbg !3304
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !3304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !3304
  br label %bb.c, !dbg !3305

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 632, !dbg !3302
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !3300, !nonnull !263, !noundef !263
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 632, !dbg !3302
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !3300, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 632, !dbg !3302
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !3300, !nonnull !263, !noundef !263
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 632, !dbg !3302
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !3300, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 632, !dbg !3302
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !3300, !nonnull !263, !noundef !263
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 632, !dbg !3302
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !3300, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 632, !dbg !3302
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !3300, !nonnull !263, !noundef !263
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 632, !dbg !3302
  %i.u = add i64 %.sroa.011.016, -8, !dbg !3303   ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !3300, !nonnull !263, !noundef !263 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !3301
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !3301
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringE10init_frontB1N_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !3306 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3321, !range !313, !noundef !263
  %i.b = trunc nuw i64 %i.a to i1, !dbg !3322     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3322

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3321 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3321, !noundef !263
  %.not = icmp eq ptr %i.d, null, !dbg !3321
  br i1 %.not, label %bb.d, label %bb.c, !dbg !3322

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3323
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !3323
  ret ptr %.sroa.0.0, !dbg !3324

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3325 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3325
  %i.h = load i64, ptr %i.g, align 8, !dbg !3325, !noundef !263 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !3326, !nonnull !263, !noundef !263 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !3327
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !3327

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !3327         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3327
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3327

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 288, !dbg !3328
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !3329 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !3326, !nonnull !263, !noundef !263 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3327 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3327
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3327, !llvm.loop !3316

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !3327
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !3327

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !3326
  store i64 1, ptr %0, align 8, !dbg !3330
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !3330
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !3330
  br label %bb.c, !dbg !3331

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 288, !dbg !3328
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !3326, !nonnull !263, !noundef !263
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 288, !dbg !3328
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !3326, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 288, !dbg !3328
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !3326, !nonnull !263, !noundef !263
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 288, !dbg !3328
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !3326, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 288, !dbg !3328
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !3326, !nonnull !263, !noundef !263
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 288, !dbg !3328
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !3326, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 288, !dbg !3328
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !3326, !nonnull !263, !noundef !263
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 288, !dbg !3328
  %i.u = add i64 %.sroa.011.016, -8, !dbg !3329   ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !3326, !nonnull !263, !noundef !263 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !3327
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !3327
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2k_EE10init_frontB1N_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !3332 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3347, !range !313, !noundef !263
  %i.b = trunc nuw i64 %i.a to i1, !dbg !3348     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3348

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3347 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3347, !noundef !263
  %.not = icmp eq ptr %i.d, null, !dbg !3347
  br i1 %.not, label %bb.d, label %bb.c, !dbg !3348

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3349
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !3349
  ret ptr %.sroa.0.0, !dbg !3350

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3351 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3351
  %i.h = load i64, ptr %i.g, align 8, !dbg !3351, !noundef !263 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !3352, !nonnull !263, !noundef !263 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !3353
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !3353

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !3353         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3353
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3353

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 552, !dbg !3354
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !3355 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !3352, !nonnull !263, !noundef !263 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3353 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3353
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !3353, !llvm.loop !3342

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !3353
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !3353

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !3352
  store i64 1, ptr %0, align 8, !dbg !3356
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !3356
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !3356
  br label %bb.c, !dbg !3357

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 552, !dbg !3354
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !3352, !nonnull !263, !noundef !263
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 552, !dbg !3354
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !3352, !nonnull !263, !noundef !263
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 552, !dbg !3354
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !3352, !nonnull !263, !noundef !263
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 552, !dbg !3354
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !3352, !nonnull !263, !noundef !263
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 552, !dbg !3354
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !3352, !nonnull !263, !noundef !263
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 552, !dbg !3354
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !3352, !nonnull !263, !noundef !263
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 552, !dbg !3354
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !3352, !nonnull !263, !noundef !263
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 552, !dbg !3354
  %i.u = add i64 %.sroa.011.016, -8, !dbg !3355   ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !3352, !nonnull !263, !noundef !263 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !3353
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !3353
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCseNfSUspcXaQ_6anyhow9___private10format_err(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !199 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = ptrtoint ptr %1 to i64, !dbg !3366       ; 2 uses
  %i.c = and i64 %i.b, 1, !dbg !3367
  %.not = icmp eq i64 %i.c, 0, !dbg !3367
  br i1 %.not, label %bb.c, label %bb.b, !dbg !3367

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1, !dbg !3368
  %i.e = tail call noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.d), !dbg !3369
  br label %bb.d, !dbg !3370

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3365
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !3371
  %i.f = call noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !3372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3373
  br label %bb.d, !dbg !3370

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ], !dbg !3374
  ret ptr %.sroa.0.0, !dbg !3375
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs2NzvFoTxuAy_2rg5flags3doc4help13generate_long(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3376 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [104 x i8], align 8               ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 9 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [128 x i8], align 8              ; 10 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 9 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 22 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [104 x i8], align 8              ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 31 uses
  %i.ax = alloca [136 x i8], align 8              ; 10 uses
  %i.ay = alloca [80 x i8], align 8               ; 12 uses
  %i.az = alloca [24 x i8], align 8               ; 11 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 12 uses
  %i.bd = alloca [24 x i8], align 8               ; 11 uses
  %i.be = alloca [24 x i8], align 8               ; 11 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [4 x i8], align 4                ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 8 uses
  %i.bs = alloca [72 x i8], align 8               ; 12 uses
  %i.bt = alloca [24 x i8], align 8               ; 9 uses
  %i.bu = alloca [24 x i8], align 8               ; 12 uses
  %i.bv = alloca [24 x i8], align 8               ; 6 uses
  %i.bw = alloca [40 x i8], align 8               ; 4 uses
  %i.bx = alloca [24 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !4681
  store ptr null, ptr %i.bx, align 8, !dbg !4682
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !4682
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !4682 ; 2 uses
  store i64 0, ptr %i.bz, align 8, !dbg !4682
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.497.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 12 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.479.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.680.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.475.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.470.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.571.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.559.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.559.sroa.4.0..sroa.559.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.559.sroa.5.0..sroa.559.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.559.sroa.6.0..sroa.559.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.559.sroa.7.0..sroa.559.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.660.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %.sroa.761.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 65
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.466.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 104 ; 6 uses
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 112 ; 4 uses
  %.sroa.630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 120 ; 3 uses
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 121 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.4125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
end_hunk_0
