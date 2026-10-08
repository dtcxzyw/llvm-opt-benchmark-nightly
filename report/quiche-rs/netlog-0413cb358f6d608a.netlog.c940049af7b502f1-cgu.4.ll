Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.4?download=true
inline.NumInlined: 135
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringB1D_NtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3a_11VacantEntryB1D_B1D_E12insert_entry0ECshhfsHpF03Qr_6netlog:bb.a
    #dbg_value(i64 %spec.select.i, !2947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3396)
    #dbg_value(i64 %spec.select.i, !2950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3394)
    #dbg_value(i64 %spec.select.i, !3397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3405)
    #dbg_value(i64 %spec.select.i, !3397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3407)
    #dbg_value(ptr %spec.select40.i, !2947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3396)
    #dbg_value(ptr %spec.select40.i, !2950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3394)
    #dbg_value(ptr %spec.select40.i, !3397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3405)
    #dbg_value(ptr %spec.select40.i, !3397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3407)
    #dbg_value(i64 %.sroa.510.0.i, !2947, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3396)
    #dbg_value(i64 %.sroa.510.0.i, !2950, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3394)
    #dbg_value(i64 %.sroa.510.0.i, !3397, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3405)
    #dbg_value(i64 %.sroa.510.0.i, !3397, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3407)
    #dbg_value(i64 %.sroa.074.0.copyload, !2946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3396)
    #dbg_value(ptr %i.o, !2946, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !3396)
    #dbg_value(i64 %i.aj, !2946, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !3396)
    #dbg_value(ptr %i.ak, !2946, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !3396)
    #dbg_value(i64 0, !2946, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !3396)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !4160
  %i.cb = load ptr, ptr %i.o, align 8, !dbg !4161, !noalias !3408, !noundef !520 ; 2 uses
  %.not.i194 = icmp eq ptr %i.cb, null, !dbg !4162
  br i1 %.not.i194, label %._crit_edge, label %.lr.ph, !dbg !4163

.lr.ph:                                           ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cd = icmp eq i64 %i.aj, 0, !dbg !4164
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7293.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7293, i64 16 ; 5 uses
  br label %bb.an, !dbg !4163

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i85 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink58.i84 = phi i64 [ %i.bx, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink59.i83 = phi ptr [ %i.o, %.thread ], [ %spec.select40.i, %bb.v ]
    #dbg_value(i64 %.sink58.i84, !2948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3430)
    #dbg_value(i64 %.sink58.i84, !3397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3432)
    #dbg_value(ptr %.sink59.i83, !2948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3430)
    #dbg_value(ptr %.sink59.i83, !3397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3432)
    #dbg_value(i64 %.sink.i85, !2948, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3430)
    #dbg_value(i64 %.sink.i85, !3397, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3432)
  store ptr %.sink59.i83, ptr %0, align 8, !dbg !4165
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4165
  store i64 %.sink58.i84, ptr %i.ce, align 8, !dbg !4165
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4165
  store i64 %.sink.i85, ptr %i.cf, align 8, !dbg !4165
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !4160
  br label %bb.bx, !dbg !4166

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.074.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ], !dbg !3135
  %.lcssa186 = phi i64 [ 0, %bb.w ], [ %i.dh, %bb.bw ] ; 2 uses
  %.lcssa178 = phi ptr [ %i.ak, %bb.w ], [ %i.fz, %bb.bw ] ; 4 uses
  %.lcssa170 = phi i64 [ %i.aj, %bb.w ], [ %i.dh, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.dc, %bb.bw ]
    #dbg_value(i64 %.sroa.0.0, !2946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3396)
    #dbg_value(ptr %.lcssa, !2946, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !3396)
    #dbg_value(i64 %.lcssa170, !2946, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !3396)
    #dbg_value(ptr %.lcssa178, !2946, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !3396)
    #dbg_value(i64 %.lcssa186, !2946, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !3396)
    #dbg_value(ptr null, !3434, !DIExpression(), !2155)
    #dbg_value(ptr poison, !3455, !DIExpression(DW_OP_deref), !2158)
    #dbg_value(ptr undef, !3459, !DIExpression(DW_OP_deref), !2158)
    #dbg_value(ptr poison, !3452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2155)
    #dbg_value(ptr undef, !3452, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2155)
    #dbg_value(ptr %.lcssa, !2953, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3461)
    #dbg_value(i64 %.lcssa170, !2953, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4167
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !4167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7293, i64 40, i1 false), !dbg !4168
  store i64 %.sroa.0.0, ptr %i.j, align 8, !dbg !4167
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !4167
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !4167
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56, !dbg !4167
  store i64 %.lcssa170, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !4167
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64, !dbg !4167
  store ptr %.lcssa178, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !4167
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72, !dbg !4167
  store i64 %.lcssa186, ptr %.sroa.76.0..sroa_idx, align 8, !dbg !4167
  %.val = load ptr, ptr %4, align 8, !dbg !4167, !nonnull !520, !noundef !520 ; 3 uses
    #dbg_value(ptr poison, !3463, !DIExpression(DW_OP_deref), !2163)
    #dbg_declare(ptr %i.j, !3466, !DIExpression(), !2164)
    #dbg_declare(ptr poison, !3473, !DIExpression(), !2167)
    #dbg_declare(ptr poison, !3480, !DIExpression(), !2171)
    #dbg_value(ptr %.val, !3469, !DIExpression(), !2172)
    #dbg_value(ptr %.val, !3493, !DIExpression(), !2180)
  %i.cg = load ptr, ptr %.val, align 8, !dbg !4169, !noalias !3508, !noundef !520 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !4169 ; 2 uses
  %.not.i40 = icmp eq ptr %i.cg, null, !dbg !4169
  br i1 %.not.i40, label %bb.y, label %bb.aa, !dbg !4170, !prof !1022

bb.y:                                             ; preds = %._crit_edge
    #dbg_value(ptr null, !3509, !DIExpression(), !2186)
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #17
          to label %bb.z unwind label %bb.ak, !dbg !4171, !noalias !3508

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
    #dbg_value(ptr %.val, !3509, !DIExpression(), !2186)
    #dbg_value(ptr %.val, !3471, !DIExpression(), !2187)
    #dbg_value(ptr %.val, !3477, !DIExpression(), !2188)
    #dbg_value(ptr %.val, !3488, !DIExpression(), !2189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3515), !dbg !4172
    #dbg_declare(ptr poison, !3516, !DIExpression(), !2199)
    #dbg_value(ptr %.val, !3522, !DIExpression(), !2200)
    #dbg_value(ptr %.val, !3532, !DIExpression(), !2203)
    #dbg_value(ptr %.val, !3537, !DIExpression(), !2206)
    #dbg_declare(ptr poison, !3523, !DIExpression(), !2207)
    #dbg_declare(ptr poison, !3524, !DIExpression(), !2208)
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !4173, !alias.scope !3515, !noalias !3508, !noundef !520 ; 2 uses
    #dbg_value(ptr %i.cg, !3525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2209)
    #dbg_value(i64 %i.ci, !3525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2209)
    #dbg_declare(ptr poison, !3543, !DIExpression(), !2213)
    #dbg_value(ptr %i.cg, !3549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2214)
    #dbg_value(i64 %i.ci, !3549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2214)
    #dbg_declare(ptr poison, !3551, !DIExpression(), !2217)
    #dbg_value(ptr %i.cg, !3554, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2218)
    #dbg_value(i64 %i.ci, !3554, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2218)
    #dbg_value(ptr %i.cg, !3556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2222)
    #dbg_value(i64 %i.ci, !3556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2222)
    #dbg_declare(ptr poison, !3560, !DIExpression(), !2223)
    #dbg_declare(ptr poison, !3564, !DIExpression(), !2230)
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringB1u_EE13new_uninit_inCshhfsHpF03Qr_6netlog()
          to label %.noexc.i.i unwind label %bb.ae, !dbg !4174, !noalias !3580 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
    #dbg_value(ptr %i.cj, !3569, !DIExpression(), !2231)
    #dbg_value(ptr %i.cj, !3581, !DIExpression(), !2234)
  store ptr null, ptr %i.cj, align 8, !dbg !4175, !noalias !3580
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 538, !dbg !4176 ; 3 uses
  store i16 0, ptr %i.ck, align 2, !dbg !4176, !noalias !3580
    #dbg_value(ptr %i.cj, !3562, !DIExpression(), !2243)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 544, !dbg !4177 ; 2 uses
    #dbg_value(ptr %i.cl, !3585, !DIExpression(), !2246)
    #dbg_value(ptr %i.cg, !3590, !DIExpression(), !2246)
  store ptr %i.cg, ptr %i.cl, align 8, !dbg !4178, !noalias !3580
  %i.cm = add i64 %i.ci, 1, !dbg !4179            ; 2 uses
    #dbg_value(i64 %i.cm, !3592, !DIExpression(), !2256)
  %.not.i.i.i.i.i = icmp eq i64 %i.cm, 0, !dbg !4180
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !dbg !4181, !prof !1022

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17
          to label %bb.ac unwind label %bb.ad, !dbg !4182, !noalias !3580

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !3613, !DIExpression(), !2259)
    #dbg_value(ptr poison, !3619, !DIExpression(), !2266)
    #dbg_value(ptr %i.cj, !3620, !DIExpression(), !2267)
    #dbg_value(i64 8, !3621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2268)
    #dbg_value(i64 640, !3621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2268)
    #dbg_value(ptr poison, !977, !DIExpression(), !2270)
    #dbg_value(ptr poison, !984, !DIExpression(), !2272)
    #dbg_value(ptr %i.cj, !981, !DIExpression(), !2270)
    #dbg_value(ptr %i.cj, !987, !DIExpression(), !2272)
    #dbg_value(ptr %i.cj, !990, !DIExpression(), !2274)
    #dbg_value(ptr %i.cj, !996, !DIExpression(), !2276)
    #dbg_value(i64 8, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2270)
    #dbg_value(i64 8, !988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2272)
    #dbg_value(i64 8, !994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2274)
    #dbg_value(i64 8, !997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2276)
    #dbg_value(i64 640, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2270)
    #dbg_value(i64 640, !988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2272)
    #dbg_value(i64 640, !994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2274)
    #dbg_value(i64 640, !997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2276)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 640, i64 noundef 8) #20, !dbg !4183, !noalias !3580
  br label %.body.i.i, !dbg !4184

bb.ae:                                            ; preds = %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i, !dbg !4185

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
    #dbg_value(ptr poison, !3628, !DIExpression(), !2279)
    #dbg_value(ptr poison, !3634, !DIExpression(), !2282)
  tail call void @llvm.trap(), !dbg !4186
  unreachable, !dbg !4186

bb.af:                                            ; preds = %.noexc.i.i
    #dbg_declare(ptr poison, !3638, !DIExpression(DW_OP_LLVM_fragment, 136, 56), !2295)
    #dbg_value(ptr %i.cj, !3662, !DIExpression(), !2296)
    #dbg_value(i64 %i.cm, !3663, !DIExpression(), !2296)
    #dbg_declare(ptr poison, !3665, !DIExpression(), !2297)
    #dbg_value(ptr %i.cj, !3664, !DIExpression(), !2298)
    #dbg_value(ptr %i.cj, !3666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2299)
    #dbg_value(i64 %i.cm, !3666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2299)
    #dbg_value(ptr undef, !3656, !DIExpression(), !2300)
    #dbg_value(i64 0, !3657, !DIExpression(), !2301)
    #dbg_value(i64 0, !3638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2302)
    #dbg_value(i64 0, !3638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2302)
    #dbg_value(i8 0, !3638, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !2302)
    #dbg_value(ptr poison, !3649, !DIExpression(), !2303)
    #dbg_value(i64 0, !3650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2304)
    #dbg_value(i64 0, !3650, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2304)
    #dbg_value(i8 0, !3650, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !2304)
    #dbg_value(i64 0, !3651, !DIExpression(), !2305)
    #dbg_declare(ptr poison, !3669, !DIExpression(), !2311)
    #dbg_value(ptr %i.cj, !3674, !DIExpression(), !2312)
    #dbg_value(ptr %i.cj, !3678, !DIExpression(), !2315)
    #dbg_value(i64 0, !3675, !DIExpression(), !2316)
    #dbg_value(i64 0, !3683, !DIExpression(), !2315)
    #dbg_value(ptr %i.cg, !3676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2317)
    #dbg_value(i64 poison, !3676, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2317)
    #dbg_value(ptr poison, !3682, !DIExpression(), !2318)
  store ptr %i.cj, ptr %i.cg, align 8, !dbg !4187, !noalias !3685
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 536, !dbg !4188
  store i16 0, ptr %i.cp, align 8, !dbg !4188, !noalias !3690
    #dbg_value(i64 poison, !3650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2304)
    #dbg_value(i8 poison, !3650, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !2304)
    #dbg_value(ptr %i.cj, !3526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2325)
    #dbg_value(ptr %i.cj, !3541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2206)
    #dbg_value(i64 %i.cm, !3526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2325)
    #dbg_value(i64 %i.cm, !3541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2206)
  store ptr %i.cj, ptr %.val, align 8, !dbg !4189, !alias.scope !3515, !noalias !3508
  store i64 %i.cm, ptr %i.ch, align 8, !dbg !4189, !alias.scope !3515, !noalias !3508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4190, !noalias !3508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 24, i1 false), !dbg !4190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4191, !noalias !3508
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.7293, i64 16, !dbg !4191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !dbg !4191
    #dbg_value(ptr poison, !3691, !DIExpression(), !2330)
    #dbg_value(ptr poison, !3702, !DIExpression(), !2333)
    #dbg_value(ptr poison, !3709, !DIExpression(), !2336)
    #dbg_value(ptr poison, !3713, !DIExpression(), !2339)
    #dbg_declare(ptr %i.e, !3696, !DIExpression(), !2340)
    #dbg_declare(ptr %i.d, !3697, !DIExpression(), !2341)
    #dbg_value(ptr %.lcssa178, !3698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2330)
    #dbg_value(i64 %.lcssa186, !3698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2330)
  %i.cr = icmp eq i64 %.lcssa186, %i.ci, !dbg !4192
  br i1 %i.cr, label %bb.ag, label %.invoke.i.i, !dbg !4192, !prof !1027

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cs = phi ptr [ @40, %bb.af ], [ @38, %bb.ag ]
  %i.ct = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.cu = phi ptr [ @41, %bb.af ], [ @42, %bb.ag ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu) #17
          to label %.cont.i.i unwind label %bb.ah, !dbg !4193, !noalias !3721

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr %i.cj, !3699, !DIExpression(DW_OP_plus_uconst, 538, DW_OP_stack_value), !2345)
  %i.cv = load i16, ptr %i.ck, align 2, !dbg !4194, !noalias !3721, !noundef !520 ; 3 uses
    #dbg_value(i16 %i.cv, !3722, !DIExpression(), !2348)
    #dbg_value(i16 %i.cv, !3700, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2349)
    #dbg_value(i16 %i.cv, !3707, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2333)
    #dbg_value(i16 %i.cv, !3724, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2352)
    #dbg_value(i16 %i.cv, !3727, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2355)
    #dbg_value(i16 %i.cv, !3711, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2336)
    #dbg_value(i16 %i.cv, !3724, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2357)
    #dbg_value(i16 %i.cv, !3727, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2359)
  %i.cw = icmp ult i16 %i.cv, 11, !dbg !4195
  br i1 %i.cw, label %bb.by, label %.invoke.i.i, !dbg !4195, !prof !1027

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #18
          to label %bb.aj unwind label %bb.ai, !dbg !4196, !noalias !3731

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4197, !noalias !3508
  unreachable, !dbg !4197

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #18
          to label %.critedge37 unwind label %bb.ai, !dbg !4196, !noalias !3508

bb.ak:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.j) #18
          to label %bb.am unwind label %bb.al, !dbg !4198

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !4199
  unreachable, !dbg !4199

bb.am:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !4198
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #18
          to label %.critedge37 unwind label %bb.al, !dbg !4198

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.074.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ], !dbg !3135
  %i.dc = phi ptr [ %i.cb, %.lr.ph ], [ %i.km, %bb.bw ] ; 24 uses
  %i.dd = phi ptr [ %i.o, %.lr.ph ], [ %i.dc, %bb.bw ]
  %i.de = phi i64 [ %i.aj, %.lr.ph ], [ %i.dh, %bb.bw ]
  %i.df = phi ptr [ %i.ak, %.lr.ph ], [ %i.fz, %bb.bw ] ; 2 uses
  %i.dg = phi i1 [ %i.cd, %.lr.ph ], [ true, %bb.bw ]
    #dbg_value(i64 %.sroa.0.1, !2946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3396)
    #dbg_value(ptr %i.dd, !3424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2360)
    #dbg_value(i64 %i.de, !3424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2360)
    #dbg_value(ptr undef, !3434, !DIExpression(), !2155)
    #dbg_value(ptr poison, !3455, !DIExpression(DW_OP_deref), !2158)
    #dbg_value(ptr undef, !3459, !DIExpression(DW_OP_deref), !2158)
    #dbg_value(ptr poison, !3452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2155)
    #dbg_value(ptr undef, !3452, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2155)
    #dbg_value(ptr undef, !3453, !DIExpression(), !2361)
    #dbg_value(ptr undef, !3458, !DIExpression(), !2158)
  %i.dh = add i64 %i.de, 1, !dbg !4200            ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 536, !dbg !4201
  %i.dj = load i16, ptr %i.di, align 8, !dbg !4201, !noalias !3408 ; 4 uses
  %i.dk = zext i16 %i.dj to i64, !dbg !4202       ; 12 uses
    #dbg_value(ptr %i.dc, !2951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3732)
    #dbg_value(ptr %i.dc, !3012, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3733)
    #dbg_value(i64 %i.dh, !2951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3732)
    #dbg_value(i64 %i.dh, !3012, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3733)
    #dbg_value(i64 %i.dk, !2951, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3732)
    #dbg_value(i64 %i.dk, !3012, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3733)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.767), !dbg !4203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !4204
  store i64 %.sroa.0.1, ptr %i.l, align 8, !dbg !4204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7293.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7293, i64 16, i1 false), !dbg !4204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !4205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7293.24..sroa_idx, i64 24, i1 false), !dbg !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4), !dbg !4206
    #dbg_value(ptr poison, !3084, !DIExpression(), !2366)
    #dbg_value(ptr poison, !3109, !DIExpression(), !2368)
    #dbg_value(ptr poison, !3118, !DIExpression(), !2370)
    #dbg_value(ptr poison, !3123, !DIExpression(), !2372)
    #dbg_value(ptr poison, !3103, !DIExpression(), !2373)
    #dbg_value(ptr poison, !3734, !DIExpression(), !2384)
    #dbg_value(ptr poison, !3753, !DIExpression(), !2387)
    #dbg_declare(ptr %i.l, !3013, !DIExpression(), !2388)
    #dbg_declare(ptr %i.k, !3014, !DIExpression(), !2389)
    #dbg_value(ptr %i.df, !3015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2390)
    #dbg_value(i64 poison, !3015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2390)
    #dbg_declare(ptr poison, !3016, !DIExpression(), !2391)
  br i1 %i.dg, label %bb.ap, label %bb.ao, !dbg !4164, !prof !1027

bb.ao:                                            ; preds = %bb.an
    #dbg_value(ptr poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !3396)
    #dbg_value(i64 poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !3396)
    #dbg_value(ptr poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !3396)
    #dbg_value(i64 poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !3396)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17
          to label %bb.aq unwind label %.loopexit.split-lp, !dbg !4207, !noalias !3755

bb.ap:                                            ; preds = %bb.an
    #dbg_value(ptr undef, !3128, !DIExpression(), !1810)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 538, !dbg !4208 ; 4 uses
  %i.dm = load i16, ptr %i.dl, align 2, !dbg !4208, !noalias !3755, !noundef !520 ; 5 uses
  %i.dn = icmp ult i16 %i.dm, 11, !dbg !4209
  br i1 %i.dn, label %bb.as, label %bb.ar, !dbg !4209

.loopexit94:                                      ; preds = %bb.az
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !3396)
    #dbg_value(i64 poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !3396)
    #dbg_value(ptr poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !3396)
    #dbg_value(i64 poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !3396)
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
    #dbg_value(i64 %i.dk, !3756, !DIExpression(), !2399)
  %i.do = icmp ult i16 %i.dj, 5, !dbg !4210
  br i1 %i.do, label %bb.az, label %bb.aw, !dbg !4210

bb.as:                                            ; preds = %bb.ap
    #dbg_value(ptr poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !3396)
    #dbg_value(i64 poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !3396)
    #dbg_value(ptr %i.df, !2946, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !3396)
    #dbg_value(i64 poison, !2946, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !3396)
    #dbg_value(ptr undef, !3103, !DIExpression(), !1807)
    #dbg_declare(ptr poison, !3104, !DIExpression(), !2400)
    #dbg_declare(ptr poison, !3105, !DIExpression(), !2401)
    #dbg_value(ptr %i.df, !3106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1807)
    #dbg_value(i64 poison, !3106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1807)
    #dbg_value(ptr undef, !3123, !DIExpression(), !1806)
  %i.dp = zext nneg i16 %i.dm to i64, !dbg !4211  ; 5 uses
  %i.dq = add nuw nsw i16 %i.dm, 1, !dbg !4212
    #dbg_value(i64 %i.dp, !3107, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2404)
    #dbg_value(i64 %i.dp, !3120, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2405)
    #dbg_value(i64 %i.dp, !3116, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2406)
    #dbg_value(ptr undef, !3118, !DIExpression(), !1803)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !4213 ; 2 uses
    #dbg_value(ptr %i.dr, !3178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2408)
    #dbg_value(i64 %i.dp, !3178, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2408)
    #dbg_value(i64 %i.dk, !3181, !DIExpression(), !2408)
end_hunk_0
