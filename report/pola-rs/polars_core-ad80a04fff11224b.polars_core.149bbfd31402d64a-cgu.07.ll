Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.07?download=true
inline.NumInlined: 8529
inline.NumDeleted: 2232
loop-unroll.NumCompletelyUnrolled: 78
loop-unroll.NumRuntimeUnrolled: 397
loop-unroll.NumUnrolled: 475
begin_hunk_0_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBJ_NCNvMNtB2B_11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes16Categorical8TypeNtB4N_9UInt8TypeE9sort_with0E00E0EB2H_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !121118
  %i.iz = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24, !dbg !121119 ; 2 uses
  br label %.preheader10.i.i.prol.loopexit, !dbg !121099

.preheader10.i.i.prol.loopexit:                   ; preds = %.preheader10.i.i.prol, %.preheader10.i.i.preheader
  %.sroa.01.230.i.i.unr = phi ptr [ %spec.select.i.i, %.preheader10.i.i.preheader ], [ %i.iz, %.preheader10.i.i.prol ]
  %.sroa.084.329.i.i.unr = phi ptr [ %.sroa.084.1.i.i, %.preheader10.i.i.preheader ], [ %i.iu, %.preheader10.i.i.prol ]
  %.lcssa533.unr = phi ptr [ poison, %.preheader10.i.i.preheader ], [ %i.iz, %.preheader10.i.i.prol ]
  %i.ja = add i64 %.sroa.084.1.i.i.lcssa590591, -1, !dbg !121099
  %i.jb = icmp eq i64 %i.ja, %.sroa.046.2.i.i.lcssa592593, !dbg !121099
  br i1 %i.jb, label %.loopexit.i, label %.preheader10.i.i, !dbg !121099

.preheader10.i.i:                                 ; preds = %.preheader10.i.i.prol.loopexit, %.preheader10.i.i
  %.sroa.01.230.i.i = phi ptr [ %i.jn, %.preheader10.i.i ], [ %.sroa.01.230.i.i.unr, %.preheader10.i.i.prol.loopexit ] ; 4 uses
  %.sroa.084.329.i.i = phi ptr [ %i.ji, %.preheader10.i.i ], [ %.sroa.084.329.i.i.unr, %.preheader10.i.i.prol.loopexit ] ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.sroa.084.329.i.i, i64 -1, !dbg !121100
  %i.jd = load i8, ptr %i.jc, align 1, !dbg !121102, !noalias !120857, !noundef !12
  %i.je = zext i8 %i.jd to i64, !dbg !121103
  %i.jf = xor i64 %i.je, -1, !dbg !121105
  %i.jg = getelementptr inbounds [24 x i8], ptr %.sroa.032.1.i.i, i64 %i.jf, !dbg !121107 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !121108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.230.i.i, i64 24, i1 false), !dbg !121110
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.230.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i64 24, i1 false), !dbg !121114, !alias.scope !120857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !121116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !121118
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.01.230.i.i, i64 24, !dbg !121119 ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %.sroa.084.329.i.i, i64 -2, !dbg !121100 ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1, !dbg !121102, !noalias !120857, !noundef !12
  %i.jk = zext i8 %i.jj to i64, !dbg !121103
  %i.jl = xor i64 %i.jk, -1, !dbg !121105
  %i.jm = getelementptr inbounds [24 x i8], ptr %.sroa.032.1.i.i, i64 %i.jl, !dbg !121107 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !121108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i64 24, i1 false), !dbg !121110
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %i.jm, i64 24, i1 false), !dbg !121114, !alias.scope !120857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jm, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !121116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !121118
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.01.230.i.i, i64 48, !dbg !121119 ; 2 uses
  %i.jo = icmp ult ptr %.sroa.046.2.i.i, %i.ji, !dbg !121099
  br i1 %i.jo, label %.preheader10.i.i, label %.loopexit.i, !dbg !121099

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.sroa.032.232.i.i = phi ptr [ %i.jy, %.preheader.i.i ], [ %.sroa.032.232.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %.sroa.068.331.i.i = phi ptr [ %i.ju, %.preheader.i.i ], [ %.sroa.068.331.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %.sroa.068.331.i.i, i64 -1, !dbg !121076
  %i.jq = load i8, ptr %i.jp, align 1, !dbg !121079, !noalias !120857, !noundef !12
  %i.jr = zext i8 %i.jq to i64, !dbg !121080
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %spec.select.i.i, i64 %i.jr, !dbg !121082 ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %.sroa.032.232.i.i, i64 -24, !dbg !121084 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !121086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.js, i64 24, i1 false), !dbg !121089
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i64 24, i1 false), !dbg !121092, !alias.scope !120857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !121095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !121097
  %i.ju = getelementptr inbounds i8, ptr %.sroa.068.331.i.i, i64 -2, !dbg !121076 ; 3 uses
  %i.jv = load i8, ptr %i.ju, align 1, !dbg !121079, !noalias !120857, !noundef !12
  %i.jw = zext i8 %i.jv to i64, !dbg !121080
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %spec.select.i.i, i64 %i.jw, !dbg !121082 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.sroa.032.232.i.i, i64 -48, !dbg !121084 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !121086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.jx, i64 24, i1 false), !dbg !121089
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, ptr noundef nonnull align 8 dereferenceable(24) %i.jy, i64 24, i1 false), !dbg !121092, !alias.scope !120857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !121095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !121097
  %i.jz = icmp ult ptr %.sroa.018.2.i.i, %i.ju, !dbg !121075
  br i1 %i.jz, label %.preheader.i.i, label %.loopexit.i, !dbg !121075

bb.ag:                                            ; preds = %.split24._crit_edge.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef %.sroa.07.0.lcssa.i, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25
          to label %bb.ai unwind label %bb.aj, !dbg !121121

.loopexit.i:                                      ; preds = %.preheader10.i.i.prol.loopexit, %.preheader10.i.i, %.preheader.i.i.prol.loopexit, %.preheader.i.i, %bb.af
  %spec.select.lcssa.sink.i.i = phi ptr [ %i.jy, %.preheader.i.i ], [ %spec.select.i.i, %bb.af ], [ %.lcssa534.unr, %.preheader.i.i.prol.loopexit ], [ %.lcssa533.unr, %.preheader10.i.i.prol.loopexit ], [ %i.jn, %.preheader10.i.i ]
  %i.ka = ptrtoint ptr %spec.select.lcssa.sink.i.i to i64, !dbg !121122
  %i.kb = ptrtoint ptr %i.eg to i64, !dbg !121124
  %i.kc = sub i64 %i.ka, %i.kb, !dbg !121125
  %.sroa.0.0.i.i = udiv i64 %i.kc, 24, !dbg !121125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !121126, !noalias !120857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !121127, !noalias !120857
  %i.kd = add i64 %.sroa.0.0.i.i, %.sroa.0.0.lcssa7275.i, !dbg !121128 ; 10 uses
  store i64 %.sroa.019.0.copyload.i, ptr %.sroa.0.0172.lcssa209, align 8, !dbg !121129, !alias.scope !120738
  store ptr %.sroa.420.0.copyload.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !121129, !alias.scope !120738
  store i64 %.sroa.521.0.copyload.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !dbg !121129, !alias.scope !120738
  %i.ke = icmp ult i64 %i.kd, %.sroa.20.0171.lcssa199, !dbg !121133
  br i1 %i.ke, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptionhEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, label %bb.ah, !dbg !121133

bb.ah:                                            ; preds = %.loopexit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.kd, i64 noundef range(i64 21, 384307168202282326) %.sroa.20.0171.lcssa199, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #23, !dbg !121133
  unreachable, !dbg !121133

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.kf = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.019.0.copyload.i, ptr %.sroa.0.0172.lcssa209, align 8, !dbg !121137, !alias.scope !120738
  store ptr %.sroa.420.0.copyload.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !121137, !alias.scope !120738
  store i64 %.sroa.521.0.copyload.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !dbg !121137, !alias.scope !120738
  resume { ptr, i32 } %i.kf, !dbg !121141

_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptionhEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit.i
  %i.kg = icmp uge i64 %.sroa.0.0.lcssa7275.i, %.sroa.07.0.lcssa76.i, !dbg !121142
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0172.lcssa209, i64 %i.kd, !dbg !121143 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !121144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172.lcssa209, i64 24, i1 false), !dbg !121148
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172.lcssa209, ptr noundef nonnull align 8 dereferenceable(24) %i.kh, i64 24, i1 false), !dbg !121152, !alias.scope !120738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !121154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !121156
  %i.ki = sub nuw i64 %.sroa.20.0171.lcssa199, %i.kd, !dbg !121157 ; 2 uses
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.ki, i64 %i.kd), !dbg !121159
  %i.kj = lshr i64 %.sroa.20.0171.lcssa199, 3, !dbg !121163
  %i.kk = icmp uge i64 %.sroa.0.0.i72, %i.kj, !dbg !121164
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 24, !dbg !121165 ; 3 uses
  %i.km = add nsw i64 %i.ki, -1, !dbg !121171     ; 5 uses
  %.sroa.0.0.i88 = call noundef i64 @llvm.umax.i64(i64 %i.km, i64 %i.kd), !dbg !121172
  %i.kn = icmp ult i64 %.sroa.0.0.i88, 2001, !dbg !121176
  br i1 %i.kn, label %bb.aq, label %bb.ap, !dbg !121176

bb.ak:                                            ; preds = %bb.s
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0172, i64 %.sroa.0.0.i303, !dbg !121177 ; 4 uses
  %.sroa.032.0.val = load ptr, ptr %i.v, align 8, !dbg !121178 ; 2 uses
  %.sroa.032.0.val63 = load i64, ptr %i.w, align 8, !dbg !121178 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 8, !dbg !121178
  %.val = load ptr, ptr %i.kp, align 8, !dbg !121178, !noundef !12 ; 2 uses
  %i.kq = getelementptr i8, ptr %i.ko, i64 16, !dbg !121178
  %.val64 = load i64, ptr %i.kq, align 8, !dbg !121178 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val, null, !dbg !121179
  %.not7.i.i.i.not = icmp eq ptr %.sroa.032.0.val, null, !dbg !121179 ; 2 uses
  br i1 %.not.i.i.i, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit, label %bb.al, !dbg !121184

bb.al:                                            ; preds = %bb.ak
  br i1 %.not7.i.i.i.not, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread, label %.split, !dbg !121184

.split:                                           ; preds = %bb.al
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %.val64, i64 %.sroa.032.0.val63), !dbg !121185
  %i.kr = call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.sroa.032.0.val, i64 %spec.store.select.i.i.i), !dbg !121190 ; 2 uses
  %i.ks = sext i32 %i.kr to i64, !dbg !121190
  %i.kt = icmp eq i32 %i.kr, 0, !dbg !121191
  %i.ku = sub i64 %.val64, %.sroa.032.0.val63
  %spec.select.i.i.i = select i1 %i.kt, i64 %i.ku, i64 %i.ks, !dbg !121191
  %i.kv = icmp slt i64 %spec.select.i.i.i, 0, !dbg !121192
  br i1 %i.kv, label %bb.t, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread, !dbg !121178

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit: ; preds = %bb.ak
  br i1 %.not7.i.i.i.not, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread, label %bb.t, !dbg !121178

bb.am:                                            ; preds = %bb.s
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i303, i64 noundef %.sroa.20.0171, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #23, !dbg !120737
  unreachable, !dbg !120737

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread: ; preds = %bb.al, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !121194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172, i64 24, i1 false), !dbg !121203
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172, ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i64 24, i1 false), !dbg !121207, !alias.scope !121210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ko, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !121213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !121215
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.0172, i64 24, !dbg !121216 ; 2 uses
  %i.kx = add nsw i64 %.sroa.20.0171, -1, !dbg !121221 ; 4 uses
  %.sroa.014.0.copyload.i = load i64, ptr %.sroa.0.0172, align 8, !dbg !121222, !alias.scope !121210
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0172, i64 8, !dbg !121222 ; 2 uses
  %.sroa.415.0.copyload.i = load ptr, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !121222, !alias.scope !121210
  %.sroa.415.0.copyload.fr.i = freeze ptr %.sroa.415.0.copyload.i ; 4 uses
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0172, i64 16, !dbg !121222 ; 2 uses
  %.sroa.516.0.copyload.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8, !dbg !121222, !alias.scope !121210 ; 5 uses
  %.not8.i.i.i.i79 = icmp eq ptr %.sroa.415.0.copyload.fr.i, null ; 2 uses
  br label %.outer.i, !dbg !121227

.outer.i:                                         ; preds = %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit41.thread.i, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread
  %.sroa.09.0.ph.i = phi i64 [ %i.kx, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread ], [ %.us-phi36.i, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit41.thread.i ] ; 7 uses
  %.sroa.01.0.ph.i = phi i64 [ 0, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread ], [ %i.ly, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit41.thread.i ] ; 3 uses
  %i.ky = icmp ult i64 %.sroa.01.0.ph.i, %.sroa.09.0.ph.i, !dbg !121232
  br i1 %i.ky, label %.lr.ph.i80, label %.split._crit_edge.i, !dbg !121232

.lr.ph.i80:                                       ; preds = %.outer.i
  br i1 %.not8.i.i.i.i79, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes16Categorical8TypeNtB4W_9UInt8TypeE9sort_with0E00E0EB2Q_.exit, label %.lr.ph.split.i81

.lr.ph.split.i81:                                 ; preds = %.lr.ph.i80, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread.i86
  %.sroa.01.022.i = phi i64 [ %i.ll, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread.i86 ], [ %.sroa.01.0.ph.i, %.lr.ph.i80 ] ; 5 uses
  %i.kz = icmp ult i64 %.sroa.01.022.i, %i.kx, !dbg !121235
  call void @llvm.assume(i1 %i.kz), !dbg !121240
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %.sroa.01.022.i, !dbg !121241 ; 2 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 8, !dbg !121242
  %.val27.i = load ptr, ptr %i.lb, align 8, !dbg !121242, !alias.scope !121210, !noundef !12 ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %.val27.i, null, !dbg !121243
  br i1 %.not.i.i.i.i82, label %.split._crit_edge.i, label %.split.i83, !dbg !121248

.split.i83:                                       ; preds = %.lr.ph.split.i81
  %i.lc = getelementptr i8, ptr %i.la, i64 16, !dbg !121242
  %.val28.i = load i64, ptr %i.lc, align 8, !dbg !121242, !alias.scope !121210 ; 2 uses
  %spec.store.select.i.i.i.i84 = call i64 @llvm.umin.i64(i64 %.val28.i, i64 %.sroa.516.0.copyload.i), !dbg !121249
  %i.ld = call i32 @memcmp(ptr nonnull readonly %.val27.i, ptr nonnull readonly %.sroa.415.0.copyload.fr.i, i64 %spec.store.select.i.i.i.i84), !dbg !121254 ; 2 uses
  %i.le = sext i32 %i.ld to i64, !dbg !121254
  %i.lf = icmp eq i32 %i.ld, 0, !dbg !121255
  %i.lg = sub i64 %.val28.i, %.sroa.516.0.copyload.i
  %spec.select.i.i.i.i85 = select i1 %i.lf, i64 %i.lg, i64 %i.le, !dbg !121255
  %i.lh = icmp slt i64 %spec.select.i.i.i.i85, 0, !dbg !121256
  br i1 %i.lh, label %.split._crit_edge.i, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread.i86, !dbg !121242

.split._crit_edge.i:                              ; preds = %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread.i86, %.split.i83, %.lr.ph.split.i81, %.outer.i
  %.sroa.01.0.lcssa.i = phi i64 [ %.sroa.01.0.ph.i, %.outer.i ], [ %.sroa.01.022.i, %.split.i83 ], [ %.sroa.09.0.ph.i, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread.i86 ], [ %.sroa.01.022.i, %.lr.ph.split.i81 ], !dbg !121258 ; 6 uses
  %i.li = add nsw i64 %.sroa.09.0.ph.i, -1, !dbg !121259 ; 4 uses
  %.not2128.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.li, !dbg !121260
  br i1 %.not2128.i, label %.lr.ph31.i, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes16Categorical8TypeNtB4W_9UInt8TypeE9sort_with0E00E0EB2Q_.exit, !dbg !121260

.lr.ph31.i:                                       ; preds = %.split._crit_edge.i
  br i1 %.not8.i.i.i.i79, label %.lr.ph31.split.us.split.us.i, label %.lr.ph31.split.i

.lr.ph31.split.us.split.us.i:                     ; preds = %.lr.ph31.i
  %i.lj = icmp ult i64 %i.li, %i.kx, !dbg !121261
  call void @llvm.assume(i1 %i.lj), !dbg !121265
  %i.lk = getelementptr [24 x i8], ptr %.sroa.0.0172, i64 %.sroa.09.0.ph.i, !dbg !121266
  br label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit41.thread.i, !dbg !121267

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit.thread.i86: ; preds = %.split.i83
  %i.ll = add nuw nsw i64 %.sroa.01.022.i, 1, !dbg !121272 ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %i.ll, %.sroa.09.0.ph.i, !dbg !121232
  br i1 %exitcond.not.i87, label %.split._crit_edge.i, label %.lr.ph.split.i81, !dbg !121232

.lr.ph31.split.i:                                 ; preds = %.lr.ph31.i, %.backedge.i
  %i.lm = phi i64 [ %i.lw, %.backedge.i ], [ %i.li, %.lr.ph31.i ] ; 4 uses
  %.sroa.09.129.i = phi i64 [ %i.lm, %.backedge.i ], [ %.sroa.09.0.ph.i, %.lr.ph31.i ]
  %i.ln = icmp ult i64 %i.lm, %i.kx, !dbg !121261
  call void @llvm.assume(i1 %i.ln), !dbg !121265
  %i.lo = getelementptr [24 x i8], ptr %.sroa.0.0172, i64 %.sroa.09.129.i, !dbg !121266 ; 3 uses
  %i.lp = getelementptr i8, ptr %i.lo, i64 8, !dbg !121273
  %.val23.i = load ptr, ptr %i.lp, align 8, !dbg !121273, !alias.scope !121210, !noundef !12 ; 2 uses
  %.not.i.i.i35.i = icmp eq ptr %.val23.i, null, !dbg !121274
  br i1 %.not.i.i.i35.i, label %.backedge.i, label %.split19.i, !dbg !121267

.split19.i:                                       ; preds = %.lr.ph31.split.i
  %i.lq = getelementptr i8, ptr %i.lo, i64 16, !dbg !121273
  %.val24.i = load i64, ptr %i.lq, align 8, !dbg !121273, !alias.scope !121210 ; 2 uses
  %spec.store.select.i.i.i37.i = call i64 @llvm.umin.i64(i64 %.val24.i, i64 %.sroa.516.0.copyload.i), !dbg !121275
  %i.lr = call i32 @memcmp(ptr nonnull readonly %.val23.i, ptr nonnull readonly %.sroa.415.0.copyload.fr.i, i64 %spec.store.select.i.i.i37.i), !dbg !121280 ; 2 uses
  %i.ls = sext i32 %i.lr to i64, !dbg !121280
  %i.lt = icmp eq i32 %i.lr, 0, !dbg !121281
  %i.lu = sub i64 %.val24.i, %.sroa.516.0.copyload.i
  %spec.select.i.i.i38.i = select i1 %i.lt, i64 %i.lu, i64 %i.ls, !dbg !121281
  %i.lv = icmp slt i64 %spec.select.i.i.i38.i, 0, !dbg !121282
  br i1 %i.lv, label %.backedge.i, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit41.thread.i, !dbg !121273

.backedge.i:                                      ; preds = %.split19.i, %.lr.ph31.split.i
  %i.lw = add nsw i64 %i.lm, -1, !dbg !121259     ; 2 uses
  %.not21.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.lw, !dbg !121260
  br i1 %.not21.i, label %.lr.ph31.split.i, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes16Categorical8TypeNtB4W_9UInt8TypeE9sort_with0E00E0EB2Q_.exit, !dbg !121260

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes16Categorical8TypeNtB4p_9UInt8TypeE9sort_with0E00E0B2j_.exit41.thread.i: ; preds = %.split19.i, %.lr.ph31.split.us.split.us.i
  %.us-phi35.i = phi ptr [ %i.lk, %.lr.ph31.split.us.split.us.i ], [ %i.lo, %.split19.i ], !dbg !121284 ; 2 uses
  %.us-phi36.i = phi i64 [ %i.li, %.lr.ph31.split.us.split.us.i ], [ %i.lm, %.split19.i ], !dbg !121284
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %.sroa.01.0.lcssa.i, !dbg !121284 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !121288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.lx, i64 24, i1 false), !dbg !121290
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %.us-phi35.i, i64 24, i1 false), !dbg !121294, !alias.scope !121210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.us-phi35.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !121296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !121298
  %i.ly = add nuw i64 %.sroa.01.0.lcssa.i, 1, !dbg !121299
  br label %.outer.i, !dbg !121300

_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes16Categorical8TypeNtB4W_9UInt8TypeE9sort_with0E00E0EB2Q_.exit: ; preds = %.lr.ph.i80, %.split._crit_edge.i, %.backedge.i
  %.sroa.01.0.lcssa77.i = phi i64 [ %.sroa.01.0.lcssa.i, %.backedge.i ], [ %.sroa.01.0.lcssa.i, %.split._crit_edge.i ], [ %.sroa.09.0.ph.i, %.lr.ph.i80 ]
  %i.lz = add i64 %.sroa.01.0.lcssa77.i, 1, !dbg !121301 ; 4 uses
  store i64 %.sroa.014.0.copyload.i, ptr %.sroa.0.0172, align 8, !dbg !121302, !alias.scope !121210
  store ptr %.sroa.415.0.copyload.fr.i, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !121302, !alias.scope !121210
  store i64 %.sroa.516.0.copyload.i, ptr %.sroa.516.0..sroa_idx.i, align 8, !dbg !121302, !alias.scope !121210
  %i.ma = icmp ugt i64 %i.lz, %.sroa.20.0171, !dbg !121306
  br i1 %i.ma, label %bb.ao, label %bb.an, !dbg !121306, !prof !42729

bb.an:                                            ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes16Categorical8TypeNtB4W_9UInt8TypeE9sort_with0E00E0EB2Q_.exit
  %i.mb = sub nuw i64 %.sroa.20.0171, %i.lz, !dbg !121312 ; 3 uses
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0172, i64 %i.lz, !dbg !121313 ; 2 uses
  %i.md = icmp ult i64 %i.mb, 21, !dbg !120496
  br i1 %i.md, label %.outer._crit_edge, label %bb.b, !dbg !120496

bb.ao:                                            ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes16Categorical8TypeNtB4W_9UInt8TypeE9sort_with0E00E0EB2Q_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.lz, i64 noundef %.sroa.20.0171, i64 noundef %.sroa.20.0171, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23, !dbg !121318
  unreachable, !dbg !121318

bb.ap:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptionhEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !121319
  store ptr %i.kl, ptr %i.p, align 8, !dbg !121319
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !121319
  store i64 %i.km, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !121319
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !121319
  store ptr %2, ptr %.sroa.552.0..sroa_idx, align 8, !dbg !121319
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !121319
  store ptr %i.kh, ptr %.sroa.653.0..sroa_idx, align 8, !dbg !121319
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !121319
  store ptr %i.q, ptr %.sroa.754.0..sroa_idx, align 8, !dbg !121319
  %i.me = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !121319
  store ptr %.sroa.0.0172.lcssa209, ptr %i.me, align 8, !dbg !121319
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48, !dbg !121319
  store i64 %i.kd, ptr %.sroa.446.0..sroa_idx, align 8, !dbg !121319
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56, !dbg !121319
  store ptr %2, ptr %.sroa.547.0..sroa_idx, align 8, !dbg !121319
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !121319
  store ptr %i.q, ptr %.sroa.648.0..sroa_idx, align 8, !dbg !121319
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72, !dbg !121319
  store ptr %.sroa.032.0.ph179, ptr %.sroa.749.0..sroa_idx, align 8, !dbg !121319
  call void @_RINvNtCs4BcJZGCY6Ba_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB2p_ReEENCINvYSB2n_INtB1I_16ParallelSliceMutB2n_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB2n_NCNvMNtB4j_11categoricalINtNtB4n_7logical7LogicalNtNtB4p_9datatypes16Categorical8TypeNtB6w_9UInt8TypeE9sort_with0E00E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB4p_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.p), !dbg !121324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !121325
  br label %.loopexit, !dbg !121326

bb.aq:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptionhEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.mf = icmp ult i64 %i.kd, %i.km, !dbg !121327
  %i.mg = load i32, ptr %i.q, align 4, !dbg !121328, !noundef !12 ; 2 uses
  br i1 %i.mf, label %bb.as, label %bb.ar, !dbg !121327

.loopexit:                                        ; preds = %bb.r, %bb.c, %bb.at, %.outer._crit_edge, %bb.ap
  ret void, !dbg !121326

bb.ar:                                            ; preds = %bb.aq
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBJ_NCNvMNtB2B_11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes16Categorical8TypeNtB4N_9UInt8TypeE9sort_with0E00E0EB2H_(ptr noalias noundef nonnull align 8 %i.kl, i64 noundef %i.km, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 dereferenceable_or_null(24) %i.kh, i32 noundef %i.mg), !dbg !121329
  br label %.outer, !dbg !121330

bb.as:                                            ; preds = %bb.aq
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBJ_NCNvMNtB2B_11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes16Categorical8TypeNtB4N_9UInt8TypeE9sort_with0E00E0EB2H_(ptr noalias noundef nonnull align 8 %.sroa.0.0172.lcssa209, i64 noundef %i.kd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable_or_null(24) %.sroa.032.0.ph179, i32 noundef %i.mg), !dbg !121331
  br label %.outer, !dbg !121330

.outer:                                           ; preds = %bb.as, %bb.ar
  %.sroa.032.1 = phi ptr [ %i.kh, %bb.as ], [ %.sroa.032.0.ph179, %bb.ar ]
  %.sroa.20.1 = phi i64 [ %i.km, %bb.as ], [ %i.kd, %bb.ar ], !dbg !121332 ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.kl, %bb.as ], [ %.sroa.0.0172.lcssa209, %bb.ar ], !dbg !121332 ; 2 uses
  %i.mh = icmp ult i64 %.sroa.20.1, 21, !dbg !120496
  br i1 %i.mh, label %.outer._crit_edge, label %.lr.ph, !dbg !120496

bb.at:                                            ; preds = %.outer._crit_edge
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftTINtNtCscgRAwXFJnXP_4core6option6OptionhEIB14_ReEENCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB12_NCNvMNtB2X_11categoricalINtNtB31_7logical7LogicalNtNtB33_9datatypes16Categorical8TypeNtB5a_9UInt8TypeE9sort_with0E00E0EB33_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef %.sroa.20.0.lcssa, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !121333
  br label %.loopexit, !dbg !121334
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes16Categorical8TypeNtB4a_9UInt8TypeE9sort_with0E0EB2H_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable_or_null(24) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !121335 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [128 x i8], align 1               ; 9 uses
  %i.g = alloca [128 x i8], align 1               ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 13 uses
  %i.q = alloca [4 x i8], align 4                 ; 7 uses
  store i32 %4, ptr %i.q, align 4
  %i.r = icmp samesign ult i64 %1, 21, !dbg !121336
  br i1 %i.r, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !121336

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  br label %.lr.ph, !dbg !121336

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph178 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.sroa.0.1, %.outer ] ; 2 uses
  %.sroa.20.0.ph177 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %.sroa.20.1, %.outer ] ; 2 uses
  %.sroa.032.0.ph176 = phi ptr [ %3, %.lr.ph.lr.ph ], [ %.sroa.032.1, %.outer ] ; 6 uses
  %.sroa.036.0.ph175 = phi i1 [ true, %.lr.ph.lr.ph ], [ %i.jd, %.outer ] ; 2 uses
  %.sroa.038.0.ph174 = phi i1 [ true, %.lr.ph.lr.ph ], [ %i.iz, %.outer ]
  %or.cond = select i1 %.sroa.036.0.ph175, i1 %.sroa.038.0.ph174, i1 false ; 2 uses
  %.not = icmp eq ptr %.sroa.032.0.ph176, null
  %i.v = getelementptr i8, ptr %.sroa.032.0.ph176, i64 8
  %i.w = getelementptr i8, ptr %.sroa.032.0.ph176, i64 16
  br label %bb.b, !dbg !121336

bb.b:                                             ; preds = %.lr.ph, %bb.al
  %.sroa.0.0170 = phi ptr [ %.sroa.0.0.ph178, %.lr.ph ], [ %i.lc, %bb.al ] ; 20 uses
  %.sroa.20.0169 = phi i64 [ %.sroa.20.0.ph177, %.lr.ph ], [ %i.lb, %bb.al ] ; 19 uses
  %i.x = load i32, ptr %i.q, align 4, !dbg !121340, !noundef !12
  %i.y = icmp eq i32 %i.x, 0, !dbg !121340
  br i1 %i.y, label %bb.c, label %bb.d, !dbg !121340, !prof !42729

.outer._crit_edge:                                ; preds = %.outer, %bb.al, %bb.a
  %.sroa.20.0.lcssa = phi i64 [ %i.lb, %bb.al ], [ %1, %bb.a ], [ %.sroa.20.1, %.outer ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.lc, %bb.al ], [ %0, %bb.a ], [ %.sroa.0.1, %.outer ]
  %i.z = icmp samesign ugt i64 %.sroa.20.0.lcssa, 1, !dbg !121341
  br i1 %i.z, label %bb.ar, label %.loopexit, !dbg !121341

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort8heapsortTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBM_ReEERNCINvYSBK_INtB4_16ParallelSliceMutBK_E20par_sort_unstable_byNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort11categoricalINtNtB2H_7logical7LogicalNtNtB2J_9datatypes16Categorical8TypeNtB4c_9UInt8TypeE9sort_with0E0EB2J_(ptr noalias noundef nonnull align 8 %.sroa.0.0170, i64 noundef %.sroa.20.0169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !dbg !121342
  br label %.loopexit, !dbg !121343

bb.d:                                             ; preds = %bb.b
  br i1 %.sroa.036.0.ph175, label %bb.f, label %bb.e, !dbg !121345, !prof !113043

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort14break_patternsTINtNtCscgRAwXFJnXP_4core6option6OptionhEIBT_ReEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %.sroa.0.0170, i64 noundef %.sroa.20.0169), !dbg !121346
  %i.aa = load i32, ptr %i.q, align 4, !dbg !121347, !noundef !12
  %i.ab = add i32 %i.aa, -1, !dbg !121347
  store i32 %i.ab, ptr %i.q, align 4, !dbg !121347
  br label %bb.f, !dbg !121348

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !121349, !noalias !121354
end_hunk_0
begin_hunk_1_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBJ_NCNvMNtB2B_11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes17Categorical32TypeNtB4N_10UInt32TypeE9sort_with0E00E0EB2H_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !122768
  %i.iz = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24, !dbg !122769 ; 2 uses
  br label %.preheader10.i.i.prol.loopexit, !dbg !122749

.preheader10.i.i.prol.loopexit:                   ; preds = %.preheader10.i.i.prol, %.preheader10.i.i.preheader
  %.sroa.01.230.i.i.unr = phi ptr [ %spec.select.i.i, %.preheader10.i.i.preheader ], [ %i.iz, %.preheader10.i.i.prol ]
  %.sroa.084.329.i.i.unr = phi ptr [ %.sroa.084.1.i.i, %.preheader10.i.i.preheader ], [ %i.iu, %.preheader10.i.i.prol ]
  %.lcssa533.unr = phi ptr [ poison, %.preheader10.i.i.preheader ], [ %i.iz, %.preheader10.i.i.prol ]
  %i.ja = add i64 %.sroa.084.1.i.i.lcssa590591, -1, !dbg !122749
  %i.jb = icmp eq i64 %i.ja, %.sroa.046.2.i.i.lcssa592593, !dbg !122749
  br i1 %i.jb, label %.loopexit.i, label %.preheader10.i.i, !dbg !122749

.preheader10.i.i:                                 ; preds = %.preheader10.i.i.prol.loopexit, %.preheader10.i.i
  %.sroa.01.230.i.i = phi ptr [ %i.jn, %.preheader10.i.i ], [ %.sroa.01.230.i.i.unr, %.preheader10.i.i.prol.loopexit ] ; 4 uses
  %.sroa.084.329.i.i = phi ptr [ %i.ji, %.preheader10.i.i ], [ %.sroa.084.329.i.i.unr, %.preheader10.i.i.prol.loopexit ] ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.sroa.084.329.i.i, i64 -1, !dbg !122750
  %i.jd = load i8, ptr %i.jc, align 1, !dbg !122752, !noalias !122507, !noundef !12
  %i.je = zext i8 %i.jd to i64, !dbg !122753
  %i.jf = xor i64 %i.je, -1, !dbg !122755
  %i.jg = getelementptr inbounds [24 x i8], ptr %.sroa.032.1.i.i, i64 %i.jf, !dbg !122757 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !122758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.230.i.i, i64 24, i1 false), !dbg !122760
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.230.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i64 24, i1 false), !dbg !122764, !alias.scope !122507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !122766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !122768
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.01.230.i.i, i64 24, !dbg !122769 ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %.sroa.084.329.i.i, i64 -2, !dbg !122750 ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1, !dbg !122752, !noalias !122507, !noundef !12
  %i.jk = zext i8 %i.jj to i64, !dbg !122753
  %i.jl = xor i64 %i.jk, -1, !dbg !122755
  %i.jm = getelementptr inbounds [24 x i8], ptr %.sroa.032.1.i.i, i64 %i.jl, !dbg !122757 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !122758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i64 24, i1 false), !dbg !122760
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %i.jm, i64 24, i1 false), !dbg !122764, !alias.scope !122507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jm, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !122766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !122768
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.01.230.i.i, i64 48, !dbg !122769 ; 2 uses
  %i.jo = icmp ult ptr %.sroa.046.2.i.i, %i.ji, !dbg !122749
  br i1 %i.jo, label %.preheader10.i.i, label %.loopexit.i, !dbg !122749

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.sroa.032.232.i.i = phi ptr [ %i.jy, %.preheader.i.i ], [ %.sroa.032.232.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %.sroa.068.331.i.i = phi ptr [ %i.ju, %.preheader.i.i ], [ %.sroa.068.331.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %.sroa.068.331.i.i, i64 -1, !dbg !122726
  %i.jq = load i8, ptr %i.jp, align 1, !dbg !122729, !noalias !122507, !noundef !12
  %i.jr = zext i8 %i.jq to i64, !dbg !122730
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %spec.select.i.i, i64 %i.jr, !dbg !122732 ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %.sroa.032.232.i.i, i64 -24, !dbg !122734 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !122736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.js, i64 24, i1 false), !dbg !122739
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i64 24, i1 false), !dbg !122742, !alias.scope !122507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !122745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !122747
  %i.ju = getelementptr inbounds i8, ptr %.sroa.068.331.i.i, i64 -2, !dbg !122726 ; 3 uses
  %i.jv = load i8, ptr %i.ju, align 1, !dbg !122729, !noalias !122507, !noundef !12
  %i.jw = zext i8 %i.jv to i64, !dbg !122730
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %spec.select.i.i, i64 %i.jw, !dbg !122732 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.sroa.032.232.i.i, i64 -48, !dbg !122734 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !122736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.jx, i64 24, i1 false), !dbg !122739
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, ptr noundef nonnull align 8 dereferenceable(24) %i.jy, i64 24, i1 false), !dbg !122742, !alias.scope !122507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !122745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !122747
  %i.jz = icmp ult ptr %.sroa.018.2.i.i, %i.ju, !dbg !122725
  br i1 %i.jz, label %.preheader.i.i, label %.loopexit.i, !dbg !122725

bb.ag:                                            ; preds = %.split24._crit_edge.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef %.sroa.07.0.lcssa.i, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25
          to label %bb.ai unwind label %bb.aj, !dbg !122771

.loopexit.i:                                      ; preds = %.preheader10.i.i.prol.loopexit, %.preheader10.i.i, %.preheader.i.i.prol.loopexit, %.preheader.i.i, %bb.af
  %spec.select.lcssa.sink.i.i = phi ptr [ %i.jy, %.preheader.i.i ], [ %spec.select.i.i, %bb.af ], [ %.lcssa534.unr, %.preheader.i.i.prol.loopexit ], [ %.lcssa533.unr, %.preheader10.i.i.prol.loopexit ], [ %i.jn, %.preheader10.i.i ]
  %i.ka = ptrtoint ptr %spec.select.lcssa.sink.i.i to i64, !dbg !122772
  %i.kb = ptrtoint ptr %i.eg to i64, !dbg !122774
  %i.kc = sub i64 %i.ka, %i.kb, !dbg !122775
  %.sroa.0.0.i.i = udiv i64 %i.kc, 24, !dbg !122775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !122776, !noalias !122507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !122777, !noalias !122507
  %i.kd = add i64 %.sroa.0.0.i.i, %.sroa.0.0.lcssa7275.i, !dbg !122778 ; 10 uses
  store i64 %.sroa.019.0.copyload.i, ptr %.sroa.0.0172.lcssa209, align 8, !dbg !122779, !alias.scope !122389
  store ptr %.sroa.420.0.copyload.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !122779, !alias.scope !122389
  store i64 %.sroa.521.0.copyload.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !dbg !122779, !alias.scope !122389
  %i.ke = icmp ult i64 %i.kd, %.sroa.20.0171.lcssa199, !dbg !122783
  br i1 %i.ke, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptionmEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, label %bb.ah, !dbg !122783

bb.ah:                                            ; preds = %.loopexit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.kd, i64 noundef range(i64 21, 384307168202282326) %.sroa.20.0171.lcssa199, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #23, !dbg !122783
  unreachable, !dbg !122783

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.kf = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.019.0.copyload.i, ptr %.sroa.0.0172.lcssa209, align 8, !dbg !122787, !alias.scope !122389
  store ptr %.sroa.420.0.copyload.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !122787, !alias.scope !122389
  store i64 %.sroa.521.0.copyload.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !dbg !122787, !alias.scope !122389
  resume { ptr, i32 } %i.kf, !dbg !122791

_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptionmEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit.i
  %i.kg = icmp uge i64 %.sroa.0.0.lcssa7275.i, %.sroa.07.0.lcssa76.i, !dbg !122792
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0172.lcssa209, i64 %i.kd, !dbg !122793 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !122794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172.lcssa209, i64 24, i1 false), !dbg !122798
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172.lcssa209, ptr noundef nonnull align 8 dereferenceable(24) %i.kh, i64 24, i1 false), !dbg !122802, !alias.scope !122389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !122804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !122806
  %i.ki = sub nuw i64 %.sroa.20.0171.lcssa199, %i.kd, !dbg !122807 ; 2 uses
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.ki, i64 %i.kd), !dbg !122809
  %i.kj = lshr i64 %.sroa.20.0171.lcssa199, 3, !dbg !122813
  %i.kk = icmp uge i64 %.sroa.0.0.i72, %i.kj, !dbg !122814
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 24, !dbg !122815 ; 3 uses
  %i.km = add nsw i64 %i.ki, -1, !dbg !122821     ; 5 uses
  %.sroa.0.0.i88 = call noundef i64 @llvm.umax.i64(i64 %i.km, i64 %i.kd), !dbg !122822
  %i.kn = icmp ult i64 %.sroa.0.0.i88, 2001, !dbg !122826
  br i1 %i.kn, label %bb.aq, label %bb.ap, !dbg !122826

bb.ak:                                            ; preds = %bb.s
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0172, i64 %.sroa.0.0.i303, !dbg !122827 ; 4 uses
  %.sroa.032.0.val = load ptr, ptr %i.v, align 8, !dbg !122828 ; 2 uses
  %.sroa.032.0.val63 = load i64, ptr %i.w, align 8, !dbg !122828 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 8, !dbg !122828
  %.val = load ptr, ptr %i.kp, align 8, !dbg !122828, !noundef !12 ; 2 uses
  %i.kq = getelementptr i8, ptr %i.ko, i64 16, !dbg !122828
  %.val64 = load i64, ptr %i.kq, align 8, !dbg !122828 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val, null, !dbg !122829
  %.not7.i.i.i.not = icmp eq ptr %.sroa.032.0.val, null, !dbg !122829 ; 2 uses
  br i1 %.not.i.i.i, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit, label %bb.al, !dbg !122834

bb.al:                                            ; preds = %bb.ak
  br i1 %.not7.i.i.i.not, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread, label %.split, !dbg !122834

.split:                                           ; preds = %bb.al
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %.val64, i64 %.sroa.032.0.val63), !dbg !122835
  %i.kr = call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.sroa.032.0.val, i64 %spec.store.select.i.i.i), !dbg !122840 ; 2 uses
  %i.ks = sext i32 %i.kr to i64, !dbg !122840
  %i.kt = icmp eq i32 %i.kr, 0, !dbg !122841
  %i.ku = sub i64 %.val64, %.sroa.032.0.val63
  %spec.select.i.i.i = select i1 %i.kt, i64 %i.ku, i64 %i.ks, !dbg !122841
  %i.kv = icmp slt i64 %spec.select.i.i.i, 0, !dbg !122842
  br i1 %i.kv, label %bb.t, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread, !dbg !122828

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit: ; preds = %bb.ak
  br i1 %.not7.i.i.i.not, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread, label %bb.t, !dbg !122828

bb.am:                                            ; preds = %bb.s
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i303, i64 noundef %.sroa.20.0171, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #23, !dbg !122388
  unreachable, !dbg !122388

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread: ; preds = %bb.al, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !122844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172, i64 24, i1 false), !dbg !122853
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172, ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i64 24, i1 false), !dbg !122857, !alias.scope !122860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ko, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !122863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !122865
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.0172, i64 24, !dbg !122866 ; 2 uses
  %i.kx = add nsw i64 %.sroa.20.0171, -1, !dbg !122871 ; 4 uses
  %.sroa.014.0.copyload.i = load i64, ptr %.sroa.0.0172, align 8, !dbg !122872, !alias.scope !122860
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0172, i64 8, !dbg !122872 ; 2 uses
  %.sroa.415.0.copyload.i = load ptr, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !122872, !alias.scope !122860
  %.sroa.415.0.copyload.fr.i = freeze ptr %.sroa.415.0.copyload.i ; 4 uses
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0172, i64 16, !dbg !122872 ; 2 uses
  %.sroa.516.0.copyload.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8, !dbg !122872, !alias.scope !122860 ; 5 uses
  %.not8.i.i.i.i79 = icmp eq ptr %.sroa.415.0.copyload.fr.i, null ; 2 uses
  br label %.outer.i, !dbg !122877

.outer.i:                                         ; preds = %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit41.thread.i, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread
  %.sroa.09.0.ph.i = phi i64 [ %i.kx, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread ], [ %.us-phi36.i, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit41.thread.i ] ; 7 uses
  %.sroa.01.0.ph.i = phi i64 [ 0, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread ], [ %i.ly, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit41.thread.i ] ; 3 uses
  %i.ky = icmp ult i64 %.sroa.01.0.ph.i, %.sroa.09.0.ph.i, !dbg !122882
  br i1 %i.ky, label %.lr.ph.i80, label %.split._crit_edge.i, !dbg !122882

.lr.ph.i80:                                       ; preds = %.outer.i
  br i1 %.not8.i.i.i.i79, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical32TypeNtB4W_10UInt32TypeE9sort_with0E00E0EB2Q_.exit, label %.lr.ph.split.i81

.lr.ph.split.i81:                                 ; preds = %.lr.ph.i80, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread.i86
  %.sroa.01.022.i = phi i64 [ %i.ll, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread.i86 ], [ %.sroa.01.0.ph.i, %.lr.ph.i80 ] ; 5 uses
  %i.kz = icmp ult i64 %.sroa.01.022.i, %i.kx, !dbg !122885
  call void @llvm.assume(i1 %i.kz), !dbg !122890
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %.sroa.01.022.i, !dbg !122891 ; 2 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 8, !dbg !122892
  %.val27.i = load ptr, ptr %i.lb, align 8, !dbg !122892, !alias.scope !122860, !noundef !12 ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %.val27.i, null, !dbg !122893
  br i1 %.not.i.i.i.i82, label %.split._crit_edge.i, label %.split.i83, !dbg !122898

.split.i83:                                       ; preds = %.lr.ph.split.i81
  %i.lc = getelementptr i8, ptr %i.la, i64 16, !dbg !122892
  %.val28.i = load i64, ptr %i.lc, align 8, !dbg !122892, !alias.scope !122860 ; 2 uses
  %spec.store.select.i.i.i.i84 = call i64 @llvm.umin.i64(i64 %.val28.i, i64 %.sroa.516.0.copyload.i), !dbg !122899
  %i.ld = call i32 @memcmp(ptr nonnull readonly %.val27.i, ptr nonnull readonly %.sroa.415.0.copyload.fr.i, i64 %spec.store.select.i.i.i.i84), !dbg !122904 ; 2 uses
  %i.le = sext i32 %i.ld to i64, !dbg !122904
  %i.lf = icmp eq i32 %i.ld, 0, !dbg !122905
  %i.lg = sub i64 %.val28.i, %.sroa.516.0.copyload.i
  %spec.select.i.i.i.i85 = select i1 %i.lf, i64 %i.lg, i64 %i.le, !dbg !122905
  %i.lh = icmp slt i64 %spec.select.i.i.i.i85, 0, !dbg !122906
  br i1 %i.lh, label %.split._crit_edge.i, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread.i86, !dbg !122892

.split._crit_edge.i:                              ; preds = %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread.i86, %.split.i83, %.lr.ph.split.i81, %.outer.i
  %.sroa.01.0.lcssa.i = phi i64 [ %.sroa.01.0.ph.i, %.outer.i ], [ %.sroa.01.022.i, %.split.i83 ], [ %.sroa.09.0.ph.i, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread.i86 ], [ %.sroa.01.022.i, %.lr.ph.split.i81 ], !dbg !122908 ; 6 uses
  %i.li = add nsw i64 %.sroa.09.0.ph.i, -1, !dbg !122909 ; 4 uses
  %.not2128.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.li, !dbg !122910
  br i1 %.not2128.i, label %.lr.ph31.i, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical32TypeNtB4W_10UInt32TypeE9sort_with0E00E0EB2Q_.exit, !dbg !122910

.lr.ph31.i:                                       ; preds = %.split._crit_edge.i
  br i1 %.not8.i.i.i.i79, label %.lr.ph31.split.us.split.us.i, label %.lr.ph31.split.i

.lr.ph31.split.us.split.us.i:                     ; preds = %.lr.ph31.i
  %i.lj = icmp ult i64 %i.li, %i.kx, !dbg !122911
  call void @llvm.assume(i1 %i.lj), !dbg !122915
  %i.lk = getelementptr [24 x i8], ptr %.sroa.0.0172, i64 %.sroa.09.0.ph.i, !dbg !122916
  br label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit41.thread.i, !dbg !122917

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit.thread.i86: ; preds = %.split.i83
  %i.ll = add nuw nsw i64 %.sroa.01.022.i, 1, !dbg !122922 ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %i.ll, %.sroa.09.0.ph.i, !dbg !122882
  br i1 %exitcond.not.i87, label %.split._crit_edge.i, label %.lr.ph.split.i81, !dbg !122882

.lr.ph31.split.i:                                 ; preds = %.lr.ph31.i, %.backedge.i
  %i.lm = phi i64 [ %i.lw, %.backedge.i ], [ %i.li, %.lr.ph31.i ] ; 4 uses
  %.sroa.09.129.i = phi i64 [ %i.lm, %.backedge.i ], [ %.sroa.09.0.ph.i, %.lr.ph31.i ]
  %i.ln = icmp ult i64 %i.lm, %i.kx, !dbg !122911
  call void @llvm.assume(i1 %i.ln), !dbg !122915
  %i.lo = getelementptr [24 x i8], ptr %.sroa.0.0172, i64 %.sroa.09.129.i, !dbg !122916 ; 3 uses
  %i.lp = getelementptr i8, ptr %i.lo, i64 8, !dbg !122923
  %.val23.i = load ptr, ptr %i.lp, align 8, !dbg !122923, !alias.scope !122860, !noundef !12 ; 2 uses
  %.not.i.i.i35.i = icmp eq ptr %.val23.i, null, !dbg !122924
  br i1 %.not.i.i.i35.i, label %.backedge.i, label %.split19.i, !dbg !122917

.split19.i:                                       ; preds = %.lr.ph31.split.i
  %i.lq = getelementptr i8, ptr %i.lo, i64 16, !dbg !122923
  %.val24.i = load i64, ptr %i.lq, align 8, !dbg !122923, !alias.scope !122860 ; 2 uses
  %spec.store.select.i.i.i37.i = call i64 @llvm.umin.i64(i64 %.val24.i, i64 %.sroa.516.0.copyload.i), !dbg !122925
  %i.lr = call i32 @memcmp(ptr nonnull readonly %.val23.i, ptr nonnull readonly %.sroa.415.0.copyload.fr.i, i64 %spec.store.select.i.i.i37.i), !dbg !122930 ; 2 uses
  %i.ls = sext i32 %i.lr to i64, !dbg !122930
  %i.lt = icmp eq i32 %i.lr, 0, !dbg !122931
  %i.lu = sub i64 %.val24.i, %.sroa.516.0.copyload.i
  %spec.select.i.i.i38.i = select i1 %i.lt, i64 %i.lu, i64 %i.ls, !dbg !122931
  %i.lv = icmp slt i64 %spec.select.i.i.i38.i, 0, !dbg !122932
  br i1 %i.lv, label %.backedge.i, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit41.thread.i, !dbg !122923

.backedge.i:                                      ; preds = %.split19.i, %.lr.ph31.split.i
  %i.lw = add nsw i64 %i.lm, -1, !dbg !122909     ; 2 uses
  %.not21.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.lw, !dbg !122910
  br i1 %.not21.i, label %.lr.ph31.split.i, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical32TypeNtB4W_10UInt32TypeE9sort_with0E00E0EB2Q_.exit, !dbg !122910

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical32TypeNtB4p_10UInt32TypeE9sort_with0E00E0B2j_.exit41.thread.i: ; preds = %.split19.i, %.lr.ph31.split.us.split.us.i
  %.us-phi35.i = phi ptr [ %i.lk, %.lr.ph31.split.us.split.us.i ], [ %i.lo, %.split19.i ], !dbg !122934 ; 2 uses
  %.us-phi36.i = phi i64 [ %i.li, %.lr.ph31.split.us.split.us.i ], [ %i.lm, %.split19.i ], !dbg !122934
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %.sroa.01.0.lcssa.i, !dbg !122934 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !122938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.lx, i64 24, i1 false), !dbg !122940
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %.us-phi35.i, i64 24, i1 false), !dbg !122944, !alias.scope !122860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.us-phi35.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !122946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !122948
  %i.ly = add nuw i64 %.sroa.01.0.lcssa.i, 1, !dbg !122949
  br label %.outer.i, !dbg !122950

_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical32TypeNtB4W_10UInt32TypeE9sort_with0E00E0EB2Q_.exit: ; preds = %.lr.ph.i80, %.split._crit_edge.i, %.backedge.i
  %.sroa.01.0.lcssa77.i = phi i64 [ %.sroa.01.0.lcssa.i, %.backedge.i ], [ %.sroa.01.0.lcssa.i, %.split._crit_edge.i ], [ %.sroa.09.0.ph.i, %.lr.ph.i80 ]
  %i.lz = add i64 %.sroa.01.0.lcssa77.i, 1, !dbg !122951 ; 4 uses
  store i64 %.sroa.014.0.copyload.i, ptr %.sroa.0.0172, align 8, !dbg !122952, !alias.scope !122860
  store ptr %.sroa.415.0.copyload.fr.i, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !122952, !alias.scope !122860
  store i64 %.sroa.516.0.copyload.i, ptr %.sroa.516.0..sroa_idx.i, align 8, !dbg !122952, !alias.scope !122860
  %i.ma = icmp ugt i64 %i.lz, %.sroa.20.0171, !dbg !122956
  br i1 %i.ma, label %bb.ao, label %bb.an, !dbg !122956, !prof !42729

bb.an:                                            ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical32TypeNtB4W_10UInt32TypeE9sort_with0E00E0EB2Q_.exit
  %i.mb = sub nuw i64 %.sroa.20.0171, %i.lz, !dbg !122962 ; 3 uses
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0172, i64 %i.lz, !dbg !122963 ; 2 uses
  %i.md = icmp ult i64 %i.mb, 21, !dbg !122147
  br i1 %i.md, label %.outer._crit_edge, label %bb.b, !dbg !122147

bb.ao:                                            ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical32TypeNtB4W_10UInt32TypeE9sort_with0E00E0EB2Q_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.lz, i64 noundef %.sroa.20.0171, i64 noundef %.sroa.20.0171, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23, !dbg !122968
  unreachable, !dbg !122968

bb.ap:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptionmEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !122969
  store ptr %i.kl, ptr %i.p, align 8, !dbg !122969
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !122969
  store i64 %i.km, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !122969
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !122969
  store ptr %2, ptr %.sroa.552.0..sroa_idx, align 8, !dbg !122969
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !122969
  store ptr %i.kh, ptr %.sroa.653.0..sroa_idx, align 8, !dbg !122969
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !122969
  store ptr %i.q, ptr %.sroa.754.0..sroa_idx, align 8, !dbg !122969
  %i.me = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !122969
  store ptr %.sroa.0.0172.lcssa209, ptr %i.me, align 8, !dbg !122969
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48, !dbg !122969
  store i64 %i.kd, ptr %.sroa.446.0..sroa_idx, align 8, !dbg !122969
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56, !dbg !122969
  store ptr %2, ptr %.sroa.547.0..sroa_idx, align 8, !dbg !122969
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !122969
  store ptr %i.q, ptr %.sroa.648.0..sroa_idx, align 8, !dbg !122969
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72, !dbg !122969
  store ptr %.sroa.032.0.ph179, ptr %.sroa.749.0..sroa_idx, align 8, !dbg !122969
  call void @_RINvNtCs4BcJZGCY6Ba_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB2p_ReEENCINvYSB2n_INtB1I_16ParallelSliceMutB2n_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB2n_NCNvMNtB4j_11categoricalINtNtB4n_7logical7LogicalNtNtB4p_9datatypes17Categorical32TypeNtB6w_10UInt32TypeE9sort_with0E00E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB4p_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.p), !dbg !122974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !122975
  br label %.loopexit, !dbg !122976

bb.aq:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptionmEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.mf = icmp ult i64 %i.kd, %i.km, !dbg !122977
  %i.mg = load i32, ptr %i.q, align 4, !dbg !122978, !noundef !12 ; 2 uses
  br i1 %i.mf, label %bb.as, label %bb.ar, !dbg !122977

.loopexit:                                        ; preds = %bb.r, %bb.c, %bb.at, %.outer._crit_edge, %bb.ap
  ret void, !dbg !122976

bb.ar:                                            ; preds = %bb.aq
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBJ_NCNvMNtB2B_11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes17Categorical32TypeNtB4N_10UInt32TypeE9sort_with0E00E0EB2H_(ptr noalias noundef nonnull align 8 %i.kl, i64 noundef %i.km, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 dereferenceable_or_null(24) %i.kh, i32 noundef %i.mg), !dbg !122979
  br label %.outer, !dbg !122980

bb.as:                                            ; preds = %bb.aq
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBJ_NCNvMNtB2B_11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes17Categorical32TypeNtB4N_10UInt32TypeE9sort_with0E00E0EB2H_(ptr noalias noundef nonnull align 8 %.sroa.0.0172.lcssa209, i64 noundef %i.kd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable_or_null(24) %.sroa.032.0.ph179, i32 noundef %i.mg), !dbg !122981
  br label %.outer, !dbg !122980

.outer:                                           ; preds = %bb.as, %bb.ar
  %.sroa.032.1 = phi ptr [ %i.kh, %bb.as ], [ %.sroa.032.0.ph179, %bb.ar ]
  %.sroa.20.1 = phi i64 [ %i.km, %bb.as ], [ %i.kd, %bb.ar ], !dbg !122982 ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.kl, %bb.as ], [ %.sroa.0.0172.lcssa209, %bb.ar ], !dbg !122982 ; 2 uses
  %i.mh = icmp ult i64 %.sroa.20.1, 21, !dbg !122147
  br i1 %i.mh, label %.outer._crit_edge, label %.lr.ph, !dbg !122147

bb.at:                                            ; preds = %.outer._crit_edge
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftTINtNtCscgRAwXFJnXP_4core6option6OptionmEIB14_ReEENCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB12_NCNvMNtB2X_11categoricalINtNtB31_7logical7LogicalNtNtB33_9datatypes17Categorical32TypeNtB5a_10UInt32TypeE9sort_with0E00E0EB33_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef %.sroa.20.0.lcssa, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !122983
  br label %.loopexit, !dbg !122984
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes17Categorical32TypeNtB4a_10UInt32TypeE9sort_with0E0EB2H_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable_or_null(24) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !122985 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [128 x i8], align 1               ; 9 uses
  %i.g = alloca [128 x i8], align 1               ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 13 uses
  %i.q = alloca [4 x i8], align 4                 ; 7 uses
  store i32 %4, ptr %i.q, align 4
  %i.r = icmp samesign ult i64 %1, 21, !dbg !122986
  br i1 %i.r, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !122986

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  br label %.lr.ph, !dbg !122986

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph178 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.sroa.0.1, %.outer ] ; 2 uses
  %.sroa.20.0.ph177 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %.sroa.20.1, %.outer ] ; 2 uses
  %.sroa.032.0.ph176 = phi ptr [ %3, %.lr.ph.lr.ph ], [ %.sroa.032.1, %.outer ] ; 6 uses
  %.sroa.036.0.ph175 = phi i1 [ true, %.lr.ph.lr.ph ], [ %i.jd, %.outer ] ; 2 uses
  %.sroa.038.0.ph174 = phi i1 [ true, %.lr.ph.lr.ph ], [ %i.iz, %.outer ]
  %or.cond = select i1 %.sroa.036.0.ph175, i1 %.sroa.038.0.ph174, i1 false ; 2 uses
  %.not = icmp eq ptr %.sroa.032.0.ph176, null
  %i.v = getelementptr i8, ptr %.sroa.032.0.ph176, i64 8
  %i.w = getelementptr i8, ptr %.sroa.032.0.ph176, i64 16
  br label %bb.b, !dbg !122986

bb.b:                                             ; preds = %.lr.ph, %bb.al
  %.sroa.0.0170 = phi ptr [ %.sroa.0.0.ph178, %.lr.ph ], [ %i.lc, %bb.al ] ; 20 uses
  %.sroa.20.0169 = phi i64 [ %.sroa.20.0.ph177, %.lr.ph ], [ %i.lb, %bb.al ] ; 19 uses
  %i.x = load i32, ptr %i.q, align 4, !dbg !122990, !noundef !12
  %i.y = icmp eq i32 %i.x, 0, !dbg !122990
  br i1 %i.y, label %bb.c, label %bb.d, !dbg !122990, !prof !42729

.outer._crit_edge:                                ; preds = %.outer, %bb.al, %bb.a
  %.sroa.20.0.lcssa = phi i64 [ %i.lb, %bb.al ], [ %1, %bb.a ], [ %.sroa.20.1, %.outer ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.lc, %bb.al ], [ %0, %bb.a ], [ %.sroa.0.1, %.outer ]
  %i.z = icmp samesign ugt i64 %.sroa.20.0.lcssa, 1, !dbg !122991
  br i1 %i.z, label %bb.ar, label %.loopexit, !dbg !122991

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort8heapsortTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBM_ReEERNCINvYSBK_INtB4_16ParallelSliceMutBK_E20par_sort_unstable_byNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort11categoricalINtNtB2H_7logical7LogicalNtNtB2J_9datatypes17Categorical32TypeNtB4c_10UInt32TypeE9sort_with0E0EB2J_(ptr noalias noundef nonnull align 8 %.sroa.0.0170, i64 noundef %.sroa.20.0169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !dbg !122992
  br label %.loopexit, !dbg !122993

bb.d:                                             ; preds = %bb.b
  br i1 %.sroa.036.0.ph175, label %bb.f, label %bb.e, !dbg !122995, !prof !113043

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort14break_patternsTINtNtCscgRAwXFJnXP_4core6option6OptionmEIBT_ReEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %.sroa.0.0170, i64 noundef %.sroa.20.0169), !dbg !122996
  %i.aa = load i32, ptr %i.q, align 4, !dbg !122997, !noundef !12
  %i.ab = add i32 %i.aa, -1, !dbg !122997
  store i32 %i.ab, ptr %i.q, align 4, !dbg !122997
  br label %bb.f, !dbg !122998

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !122999, !noalias !123004
end_hunk_1
begin_hunk_2_@_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBJ_NCNvMNtB2B_11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes17Categorical16TypeNtB4N_10UInt16TypeE9sort_with0E00E0EB2H_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !124417
  %i.iz = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24, !dbg !124418 ; 2 uses
  br label %.preheader10.i.i.prol.loopexit, !dbg !124398

.preheader10.i.i.prol.loopexit:                   ; preds = %.preheader10.i.i.prol, %.preheader10.i.i.preheader
  %.sroa.01.230.i.i.unr = phi ptr [ %spec.select.i.i, %.preheader10.i.i.preheader ], [ %i.iz, %.preheader10.i.i.prol ]
  %.sroa.084.329.i.i.unr = phi ptr [ %.sroa.084.1.i.i, %.preheader10.i.i.preheader ], [ %i.iu, %.preheader10.i.i.prol ]
  %.lcssa533.unr = phi ptr [ poison, %.preheader10.i.i.preheader ], [ %i.iz, %.preheader10.i.i.prol ]
  %i.ja = add i64 %.sroa.084.1.i.i.lcssa590591, -1, !dbg !124398
  %i.jb = icmp eq i64 %i.ja, %.sroa.046.2.i.i.lcssa592593, !dbg !124398
  br i1 %i.jb, label %.loopexit.i, label %.preheader10.i.i, !dbg !124398

.preheader10.i.i:                                 ; preds = %.preheader10.i.i.prol.loopexit, %.preheader10.i.i
  %.sroa.01.230.i.i = phi ptr [ %i.jn, %.preheader10.i.i ], [ %.sroa.01.230.i.i.unr, %.preheader10.i.i.prol.loopexit ] ; 4 uses
  %.sroa.084.329.i.i = phi ptr [ %i.ji, %.preheader10.i.i ], [ %.sroa.084.329.i.i.unr, %.preheader10.i.i.prol.loopexit ] ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.sroa.084.329.i.i, i64 -1, !dbg !124399
  %i.jd = load i8, ptr %i.jc, align 1, !dbg !124401, !noalias !124156, !noundef !12
  %i.je = zext i8 %i.jd to i64, !dbg !124402
  %i.jf = xor i64 %i.je, -1, !dbg !124404
  %i.jg = getelementptr inbounds [24 x i8], ptr %.sroa.032.1.i.i, i64 %i.jf, !dbg !124406 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !124407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.230.i.i, i64 24, i1 false), !dbg !124409
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.230.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i64 24, i1 false), !dbg !124413, !alias.scope !124156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !124415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !124417
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.01.230.i.i, i64 24, !dbg !124418 ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %.sroa.084.329.i.i, i64 -2, !dbg !124399 ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1, !dbg !124401, !noalias !124156, !noundef !12
  %i.jk = zext i8 %i.jj to i64, !dbg !124402
  %i.jl = xor i64 %i.jk, -1, !dbg !124404
  %i.jm = getelementptr inbounds [24 x i8], ptr %.sroa.032.1.i.i, i64 %i.jl, !dbg !124406 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !124407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i64 24, i1 false), !dbg !124409
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %i.jm, i64 24, i1 false), !dbg !124413, !alias.scope !124156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jm, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !124415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !124417
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.01.230.i.i, i64 48, !dbg !124418 ; 2 uses
  %i.jo = icmp ult ptr %.sroa.046.2.i.i, %i.ji, !dbg !124398
  br i1 %i.jo, label %.preheader10.i.i, label %.loopexit.i, !dbg !124398

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.sroa.032.232.i.i = phi ptr [ %i.jy, %.preheader.i.i ], [ %.sroa.032.232.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %.sroa.068.331.i.i = phi ptr [ %i.ju, %.preheader.i.i ], [ %.sroa.068.331.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %.sroa.068.331.i.i, i64 -1, !dbg !124375
  %i.jq = load i8, ptr %i.jp, align 1, !dbg !124378, !noalias !124156, !noundef !12
  %i.jr = zext i8 %i.jq to i64, !dbg !124379
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %spec.select.i.i, i64 %i.jr, !dbg !124381 ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %.sroa.032.232.i.i, i64 -24, !dbg !124383 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !124385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.js, i64 24, i1 false), !dbg !124388
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i64 24, i1 false), !dbg !124391, !alias.scope !124156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jt, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !124394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !124396
  %i.ju = getelementptr inbounds i8, ptr %.sroa.068.331.i.i, i64 -2, !dbg !124375 ; 3 uses
  %i.jv = load i8, ptr %i.ju, align 1, !dbg !124378, !noalias !124156, !noundef !12
  %i.jw = zext i8 %i.jv to i64, !dbg !124379
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %spec.select.i.i, i64 %i.jw, !dbg !124381 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.sroa.032.232.i.i, i64 -48, !dbg !124383 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !124385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.jx, i64 24, i1 false), !dbg !124388
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, ptr noundef nonnull align 8 dereferenceable(24) %i.jy, i64 24, i1 false), !dbg !124391, !alias.scope !124156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !124394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !124396
  %i.jz = icmp ult ptr %.sroa.018.2.i.i, %i.ju, !dbg !124374
  br i1 %i.jz, label %.preheader.i.i, label %.loopexit.i, !dbg !124374

bb.ag:                                            ; preds = %.split24._crit_edge.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef %.sroa.07.0.lcssa.i, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25
          to label %bb.ai unwind label %bb.aj, !dbg !124420

.loopexit.i:                                      ; preds = %.preheader10.i.i.prol.loopexit, %.preheader10.i.i, %.preheader.i.i.prol.loopexit, %.preheader.i.i, %bb.af
  %spec.select.lcssa.sink.i.i = phi ptr [ %i.jy, %.preheader.i.i ], [ %spec.select.i.i, %bb.af ], [ %.lcssa534.unr, %.preheader.i.i.prol.loopexit ], [ %.lcssa533.unr, %.preheader10.i.i.prol.loopexit ], [ %i.jn, %.preheader10.i.i ]
  %i.ka = ptrtoint ptr %spec.select.lcssa.sink.i.i to i64, !dbg !124421
  %i.kb = ptrtoint ptr %i.eg to i64, !dbg !124423
  %i.kc = sub i64 %i.ka, %i.kb, !dbg !124424
  %.sroa.0.0.i.i = udiv i64 %i.kc, 24, !dbg !124424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !124425, !noalias !124156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !124426, !noalias !124156
  %i.kd = add i64 %.sroa.0.0.i.i, %.sroa.0.0.lcssa7275.i, !dbg !124427 ; 10 uses
  store i64 %.sroa.019.0.copyload.i, ptr %.sroa.0.0172.lcssa209, align 8, !dbg !124428, !alias.scope !124038
  store ptr %.sroa.420.0.copyload.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !124428, !alias.scope !124038
  store i64 %.sroa.521.0.copyload.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !dbg !124428, !alias.scope !124038
  %i.ke = icmp ult i64 %i.kd, %.sroa.20.0171.lcssa199, !dbg !124432
  br i1 %i.ke, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptiontEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, label %bb.ah, !dbg !124432

bb.ah:                                            ; preds = %.loopexit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.kd, i64 noundef range(i64 21, 384307168202282326) %.sroa.20.0171.lcssa199, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #23, !dbg !124432
  unreachable, !dbg !124432

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.kf = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.019.0.copyload.i, ptr %.sroa.0.0172.lcssa209, align 8, !dbg !124436, !alias.scope !124038
  store ptr %.sroa.420.0.copyload.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !124436, !alias.scope !124038
  store i64 %.sroa.521.0.copyload.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !dbg !124436, !alias.scope !124038
  resume { ptr, i32 } %i.kf, !dbg !124440

_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptiontEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.loopexit.i
  %i.kg = icmp uge i64 %.sroa.0.0.lcssa7275.i, %.sroa.07.0.lcssa76.i, !dbg !124441
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0172.lcssa209, i64 %i.kd, !dbg !124442 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !124443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172.lcssa209, i64 24, i1 false), !dbg !124447
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172.lcssa209, ptr noundef nonnull align 8 dereferenceable(24) %i.kh, i64 24, i1 false), !dbg !124451, !alias.scope !124038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !124453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !124455
  %i.ki = sub nuw i64 %.sroa.20.0171.lcssa199, %i.kd, !dbg !124456 ; 2 uses
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.ki, i64 %i.kd), !dbg !124458
  %i.kj = lshr i64 %.sroa.20.0171.lcssa199, 3, !dbg !124462
  %i.kk = icmp uge i64 %.sroa.0.0.i72, %i.kj, !dbg !124463
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 24, !dbg !124464 ; 3 uses
  %i.km = add nsw i64 %i.ki, -1, !dbg !124470     ; 5 uses
  %.sroa.0.0.i88 = call noundef i64 @llvm.umax.i64(i64 %i.km, i64 %i.kd), !dbg !124471
  %i.kn = icmp ult i64 %.sroa.0.0.i88, 2001, !dbg !124475
  br i1 %i.kn, label %bb.aq, label %bb.ap, !dbg !124475

bb.ak:                                            ; preds = %bb.s
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0172, i64 %.sroa.0.0.i303, !dbg !124476 ; 4 uses
  %.sroa.032.0.val = load ptr, ptr %i.v, align 8, !dbg !124477 ; 2 uses
  %.sroa.032.0.val63 = load i64, ptr %i.w, align 8, !dbg !124477 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 8, !dbg !124477
  %.val = load ptr, ptr %i.kp, align 8, !dbg !124477, !noundef !12 ; 2 uses
  %i.kq = getelementptr i8, ptr %i.ko, i64 16, !dbg !124477
  %.val64 = load i64, ptr %i.kq, align 8, !dbg !124477 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val, null, !dbg !124478
  %.not7.i.i.i.not = icmp eq ptr %.sroa.032.0.val, null, !dbg !124478 ; 2 uses
  br i1 %.not.i.i.i, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit, label %bb.al, !dbg !124483

bb.al:                                            ; preds = %bb.ak
  br i1 %.not7.i.i.i.not, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread, label %.split, !dbg !124483

.split:                                           ; preds = %bb.al
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %.val64, i64 %.sroa.032.0.val63), !dbg !124484
  %i.kr = call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.sroa.032.0.val, i64 %spec.store.select.i.i.i), !dbg !124489 ; 2 uses
  %i.ks = sext i32 %i.kr to i64, !dbg !124489
  %i.kt = icmp eq i32 %i.kr, 0, !dbg !124490
  %i.ku = sub i64 %.val64, %.sroa.032.0.val63
  %spec.select.i.i.i = select i1 %i.kt, i64 %i.ku, i64 %i.ks, !dbg !124490
  %i.kv = icmp slt i64 %spec.select.i.i.i, 0, !dbg !124491
  br i1 %i.kv, label %bb.t, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread, !dbg !124477

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit: ; preds = %bb.ak
  br i1 %.not7.i.i.i.not, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread, label %bb.t, !dbg !124477

bb.am:                                            ; preds = %bb.s
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i303, i64 noundef %.sroa.20.0171, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #23, !dbg !124037
  unreachable, !dbg !124037

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread: ; preds = %bb.al, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !124493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172, i64 24, i1 false), !dbg !124502
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0172, ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i64 24, i1 false), !dbg !124506, !alias.scope !124509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ko, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !124512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !124514
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.0172, i64 24, !dbg !124515 ; 2 uses
  %i.kx = add nsw i64 %.sroa.20.0171, -1, !dbg !124520 ; 4 uses
  %.sroa.014.0.copyload.i = load i64, ptr %.sroa.0.0172, align 8, !dbg !124521, !alias.scope !124509
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0172, i64 8, !dbg !124521 ; 2 uses
  %.sroa.415.0.copyload.i = load ptr, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !124521, !alias.scope !124509
  %.sroa.415.0.copyload.fr.i = freeze ptr %.sroa.415.0.copyload.i ; 4 uses
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0172, i64 16, !dbg !124521 ; 2 uses
  %.sroa.516.0.copyload.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8, !dbg !124521, !alias.scope !124509 ; 5 uses
  %.not8.i.i.i.i79 = icmp eq ptr %.sroa.415.0.copyload.fr.i, null ; 2 uses
  br label %.outer.i, !dbg !124526

.outer.i:                                         ; preds = %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit41.thread.i, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread
  %.sroa.09.0.ph.i = phi i64 [ %i.kx, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread ], [ %.us-phi36.i, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit41.thread.i ] ; 7 uses
  %.sroa.01.0.ph.i = phi i64 [ 0, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread ], [ %i.ly, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit41.thread.i ] ; 3 uses
  %i.ky = icmp ult i64 %.sroa.01.0.ph.i, %.sroa.09.0.ph.i, !dbg !124531
  br i1 %i.ky, label %.lr.ph.i80, label %.split._crit_edge.i, !dbg !124531

.lr.ph.i80:                                       ; preds = %.outer.i
  br i1 %.not8.i.i.i.i79, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical16TypeNtB4W_10UInt16TypeE9sort_with0E00E0EB2Q_.exit, label %.lr.ph.split.i81

.lr.ph.split.i81:                                 ; preds = %.lr.ph.i80, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread.i86
  %.sroa.01.022.i = phi i64 [ %i.ll, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread.i86 ], [ %.sroa.01.0.ph.i, %.lr.ph.i80 ] ; 5 uses
  %i.kz = icmp ult i64 %.sroa.01.022.i, %i.kx, !dbg !124534
  call void @llvm.assume(i1 %i.kz), !dbg !124539
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %.sroa.01.022.i, !dbg !124540 ; 2 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 8, !dbg !124541
  %.val27.i = load ptr, ptr %i.lb, align 8, !dbg !124541, !alias.scope !124509, !noundef !12 ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %.val27.i, null, !dbg !124542
  br i1 %.not.i.i.i.i82, label %.split._crit_edge.i, label %.split.i83, !dbg !124547

.split.i83:                                       ; preds = %.lr.ph.split.i81
  %i.lc = getelementptr i8, ptr %i.la, i64 16, !dbg !124541
  %.val28.i = load i64, ptr %i.lc, align 8, !dbg !124541, !alias.scope !124509 ; 2 uses
  %spec.store.select.i.i.i.i84 = call i64 @llvm.umin.i64(i64 %.val28.i, i64 %.sroa.516.0.copyload.i), !dbg !124548
  %i.ld = call i32 @memcmp(ptr nonnull readonly %.val27.i, ptr nonnull readonly %.sroa.415.0.copyload.fr.i, i64 %spec.store.select.i.i.i.i84), !dbg !124553 ; 2 uses
  %i.le = sext i32 %i.ld to i64, !dbg !124553
  %i.lf = icmp eq i32 %i.ld, 0, !dbg !124554
  %i.lg = sub i64 %.val28.i, %.sroa.516.0.copyload.i
  %spec.select.i.i.i.i85 = select i1 %i.lf, i64 %i.lg, i64 %i.le, !dbg !124554
  %i.lh = icmp slt i64 %spec.select.i.i.i.i85, 0, !dbg !124555
  br i1 %i.lh, label %.split._crit_edge.i, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread.i86, !dbg !124541

.split._crit_edge.i:                              ; preds = %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread.i86, %.split.i83, %.lr.ph.split.i81, %.outer.i
  %.sroa.01.0.lcssa.i = phi i64 [ %.sroa.01.0.ph.i, %.outer.i ], [ %.sroa.01.022.i, %.split.i83 ], [ %.sroa.09.0.ph.i, %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread.i86 ], [ %.sroa.01.022.i, %.lr.ph.split.i81 ], !dbg !124557 ; 6 uses
  %i.li = add nsw i64 %.sroa.09.0.ph.i, -1, !dbg !124558 ; 4 uses
  %.not2128.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.li, !dbg !124559
  br i1 %.not2128.i, label %.lr.ph31.i, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical16TypeNtB4W_10UInt16TypeE9sort_with0E00E0EB2Q_.exit, !dbg !124559

.lr.ph31.i:                                       ; preds = %.split._crit_edge.i
  br i1 %.not8.i.i.i.i79, label %.lr.ph31.split.us.split.us.i, label %.lr.ph31.split.i

.lr.ph31.split.us.split.us.i:                     ; preds = %.lr.ph31.i
  %i.lj = icmp ult i64 %i.li, %i.kx, !dbg !124560
  call void @llvm.assume(i1 %i.lj), !dbg !124564
  %i.lk = getelementptr [24 x i8], ptr %.sroa.0.0172, i64 %.sroa.09.0.ph.i, !dbg !124565
  br label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit41.thread.i, !dbg !124566

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit.thread.i86: ; preds = %.split.i83
  %i.ll = add nuw nsw i64 %.sroa.01.022.i, 1, !dbg !124571 ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %i.ll, %.sroa.09.0.ph.i, !dbg !124531
  br i1 %exitcond.not.i87, label %.split._crit_edge.i, label %.lr.ph.split.i81, !dbg !124531

.lr.ph31.split.i:                                 ; preds = %.lr.ph31.i, %.backedge.i
  %i.lm = phi i64 [ %i.lw, %.backedge.i ], [ %i.li, %.lr.ph31.i ] ; 4 uses
  %.sroa.09.129.i = phi i64 [ %i.lm, %.backedge.i ], [ %.sroa.09.0.ph.i, %.lr.ph31.i ]
  %i.ln = icmp ult i64 %i.lm, %i.kx, !dbg !124560
  call void @llvm.assume(i1 %i.ln), !dbg !124564
  %i.lo = getelementptr [24 x i8], ptr %.sroa.0.0172, i64 %.sroa.09.129.i, !dbg !124565 ; 3 uses
  %i.lp = getelementptr i8, ptr %i.lo, i64 8, !dbg !124572
  %.val23.i = load ptr, ptr %i.lp, align 8, !dbg !124572, !alias.scope !124509, !noundef !12 ; 2 uses
  %.not.i.i.i35.i = icmp eq ptr %.val23.i, null, !dbg !124573
  br i1 %.not.i.i.i35.i, label %.backedge.i, label %.split19.i, !dbg !124566

.split19.i:                                       ; preds = %.lr.ph31.split.i
  %i.lq = getelementptr i8, ptr %i.lo, i64 16, !dbg !124572
  %.val24.i = load i64, ptr %i.lq, align 8, !dbg !124572, !alias.scope !124509 ; 2 uses
  %spec.store.select.i.i.i37.i = call i64 @llvm.umin.i64(i64 %.val24.i, i64 %.sroa.516.0.copyload.i), !dbg !124574
  %i.lr = call i32 @memcmp(ptr nonnull readonly %.val23.i, ptr nonnull readonly %.sroa.415.0.copyload.fr.i, i64 %spec.store.select.i.i.i37.i), !dbg !124579 ; 2 uses
  %i.ls = sext i32 %i.lr to i64, !dbg !124579
  %i.lt = icmp eq i32 %i.lr, 0, !dbg !124580
  %i.lu = sub i64 %.val24.i, %.sroa.516.0.copyload.i
  %spec.select.i.i.i38.i = select i1 %i.lt, i64 %i.lu, i64 %i.ls, !dbg !124580
  %i.lv = icmp slt i64 %spec.select.i.i.i38.i, 0, !dbg !124581
  br i1 %i.lv, label %.backedge.i, label %_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit41.thread.i, !dbg !124572

.backedge.i:                                      ; preds = %.split19.i, %.lr.ph31.split.i
  %i.lw = add nsw i64 %i.lm, -1, !dbg !124558     ; 2 uses
  %.not21.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.lw, !dbg !124559
  br i1 %.not21.i, label %.lr.ph31.split.i, label %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical16TypeNtB4W_10UInt16TypeE9sort_with0E00E0EB2Q_.exit, !dbg !124559

_RNCINvYSTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB8_ReEEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB6_NCNvMNtB2d_11categoricalINtNtB2h_7logical7LogicalNtNtB2j_9datatypes17Categorical16TypeNtB4p_10UInt16TypeE9sort_with0E00E0B2j_.exit41.thread.i: ; preds = %.split19.i, %.lr.ph31.split.us.split.us.i
  %.us-phi35.i = phi ptr [ %i.lk, %.lr.ph31.split.us.split.us.i ], [ %i.lo, %.split19.i ], !dbg !124583 ; 2 uses
  %.us-phi36.i = phi i64 [ %i.li, %.lr.ph31.split.us.split.us.i ], [ %i.lm, %.split19.i ], !dbg !124583
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %.sroa.01.0.lcssa.i, !dbg !124583 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !124587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.lx, i64 24, i1 false), !dbg !124589
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %.us-phi35.i, i64 24, i1 false), !dbg !124593, !alias.scope !124509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.us-phi35.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !124595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !124597
  %i.ly = add nuw i64 %.sroa.01.0.lcssa.i, 1, !dbg !124598
  br label %.outer.i, !dbg !124599

_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical16TypeNtB4W_10UInt16TypeE9sort_with0E00E0EB2Q_.exit: ; preds = %.lr.ph.i80, %.split._crit_edge.i, %.backedge.i
  %.sroa.01.0.lcssa77.i = phi i64 [ %.sroa.01.0.lcssa.i, %.backedge.i ], [ %.sroa.01.0.lcssa.i, %.split._crit_edge.i ], [ %.sroa.09.0.ph.i, %.lr.ph.i80 ]
  %i.lz = add i64 %.sroa.01.0.lcssa77.i, 1, !dbg !124600 ; 4 uses
  store i64 %.sroa.014.0.copyload.i, ptr %.sroa.0.0172, align 8, !dbg !124601, !alias.scope !124509
  store ptr %.sroa.415.0.copyload.fr.i, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !124601, !alias.scope !124509
  store i64 %.sroa.516.0.copyload.i, ptr %.sroa.516.0..sroa_idx.i, align 8, !dbg !124601, !alias.scope !124509
  %i.ma = icmp ugt i64 %i.lz, %.sroa.20.0171, !dbg !124605
  br i1 %i.ma, label %bb.ao, label %bb.an, !dbg !124605, !prof !42729

bb.an:                                            ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical16TypeNtB4W_10UInt16TypeE9sort_with0E00E0EB2Q_.exit
  %i.mb = sub nuw i64 %.sroa.20.0171, %i.lz, !dbg !124611 ; 3 uses
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0172, i64 %i.lz, !dbg !124612 ; 2 uses
  %i.md = icmp ult i64 %i.mb, 21, !dbg !123796
  br i1 %i.md, label %.outer._crit_edge, label %bb.b, !dbg !123796

bb.ao:                                            ; preds = %_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort15partition_equalTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBU_ReEENCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBS_NCNvMNtB2K_11categoricalINtNtB2O_7logical7LogicalNtNtB2Q_9datatypes17Categorical16TypeNtB4W_10UInt16TypeE9sort_with0E00E0EB2Q_.exit
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.lz, i64 noundef %.sroa.20.0171, i64 noundef %.sroa.20.0171, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23, !dbg !124617
  unreachable, !dbg !124617

bb.ap:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptiontEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !124618
  store ptr %i.kl, ptr %i.p, align 8, !dbg !124618
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !124618
  store i64 %i.km, ptr %.sroa.451.0..sroa_idx, align 8, !dbg !124618
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !124618
  store ptr %2, ptr %.sroa.552.0..sroa_idx, align 8, !dbg !124618
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !124618
  store ptr %i.kh, ptr %.sroa.653.0..sroa_idx, align 8, !dbg !124618
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !124618
  store ptr %i.q, ptr %.sroa.754.0..sroa_idx, align 8, !dbg !124618
  %i.me = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !124618
  store ptr %.sroa.0.0172.lcssa209, ptr %i.me, align 8, !dbg !124618
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48, !dbg !124618
  store i64 %i.kd, ptr %.sroa.446.0..sroa_idx, align 8, !dbg !124618
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56, !dbg !124618
  store ptr %2, ptr %.sroa.547.0..sroa_idx, align 8, !dbg !124618
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !124618
  store ptr %i.q, ptr %.sroa.648.0..sroa_idx, align 8, !dbg !124618
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72, !dbg !124618
  store ptr %.sroa.032.0.ph179, ptr %.sroa.749.0..sroa_idx, align 8, !dbg !124618
  call void @_RINvNtCs4BcJZGCY6Ba_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvBS_4join4calluNCINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB2p_ReEENCINvYSB2n_INtB1I_16ParallelSliceMutB2n_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB2n_NCNvMNtB4j_11categoricalINtNtB4n_7logical7LogicalNtNtB4p_9datatypes17Categorical16TypeNtB6w_10UInt16TypeE9sort_with0E00E0E0E0NCIB1j_uNCB1D_s_0E0uuE0TuuEEB4p_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.p), !dbg !124623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !124624
  br label %.loopexit, !dbg !124625

bb.aq:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTINtNtB4_6option6OptiontEIBw_ReEE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.mf = icmp ult i64 %i.kd, %i.km, !dbg !124626
  %i.mg = load i32, ptr %i.q, align 4, !dbg !124627, !noundef !12 ; 2 uses
  br i1 %i.mf, label %bb.as, label %bb.ar, !dbg !124626

.loopexit:                                        ; preds = %bb.r, %bb.c, %bb.at, %.outer._crit_edge, %bb.ap
  ret void, !dbg !124625

bb.ar:                                            ; preds = %bb.aq
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBJ_NCNvMNtB2B_11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes17Categorical16TypeNtB4N_10UInt16TypeE9sort_with0E00E0EB2H_(ptr noalias noundef nonnull align 8 %i.kl, i64 noundef %i.km, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 dereferenceable_or_null(24) %i.kh, i32 noundef %i.mg), !dbg !124628
  br label %.outer, !dbg !124629

bb.as:                                            ; preds = %bb.aq
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchBJ_NCNvMNtB2B_11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes17Categorical16TypeNtB4N_10UInt16TypeE9sort_with0E00E0EB2H_(ptr noalias noundef nonnull align 8 %.sroa.0.0172.lcssa209, i64 noundef %i.kd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable_or_null(24) %.sroa.032.0.ph179, i32 noundef %i.mg), !dbg !124630
  br label %.outer, !dbg !124629

.outer:                                           ; preds = %bb.as, %bb.ar
  %.sroa.032.1 = phi ptr [ %i.kh, %bb.as ], [ %.sroa.032.0.ph179, %bb.ar ]
  %.sroa.20.1 = phi i64 [ %i.km, %bb.as ], [ %i.kd, %bb.ar ], !dbg !124631 ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.kl, %bb.as ], [ %.sroa.0.0172.lcssa209, %bb.ar ], !dbg !124631 ; 2 uses
  %i.mh = icmp ult i64 %.sroa.20.1, 21, !dbg !123796
  br i1 %i.mh, label %.outer._crit_edge, label %.lr.ph, !dbg !123796

bb.at:                                            ; preds = %.outer._crit_edge
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort25insertion_sort_shift_leftTINtNtCscgRAwXFJnXP_4core6option6OptiontEIB14_ReEENCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort23sort_unstable_by_branchB12_NCNvMNtB2X_11categoricalINtNtB31_7logical7LogicalNtNtB33_9datatypes17Categorical16TypeNtB5a_10UInt16TypeE9sort_with0E00E0EB33_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef %.sroa.20.0.lcssa, i64 noundef 1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison) #24, !dbg !124632
  br label %.loopexit, !dbg !124633
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort7recurseTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBL_ReEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort11categoricalINtNtB2F_7logical7LogicalNtNtB2H_9datatypes17Categorical16TypeNtB4a_10UInt16TypeE9sort_with0E0EB2H_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable_or_null(24) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !124634 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [128 x i8], align 1               ; 9 uses
  %i.g = alloca [128 x i8], align 1               ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [80 x i8], align 8                ; 13 uses
  %i.q = alloca [4 x i8], align 4                 ; 7 uses
  store i32 %4, ptr %i.q, align 4
  %i.r = icmp samesign ult i64 %1, 21, !dbg !124635
  br i1 %i.r, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !124635

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  br label %.lr.ph, !dbg !124635

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph178 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %.sroa.0.1, %.outer ] ; 2 uses
  %.sroa.20.0.ph177 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %.sroa.20.1, %.outer ] ; 2 uses
  %.sroa.032.0.ph176 = phi ptr [ %3, %.lr.ph.lr.ph ], [ %.sroa.032.1, %.outer ] ; 6 uses
  %.sroa.036.0.ph175 = phi i1 [ true, %.lr.ph.lr.ph ], [ %i.jd, %.outer ] ; 2 uses
  %.sroa.038.0.ph174 = phi i1 [ true, %.lr.ph.lr.ph ], [ %i.iz, %.outer ]
  %or.cond = select i1 %.sroa.036.0.ph175, i1 %.sroa.038.0.ph174, i1 false ; 2 uses
  %.not = icmp eq ptr %.sroa.032.0.ph176, null
  %i.v = getelementptr i8, ptr %.sroa.032.0.ph176, i64 8
  %i.w = getelementptr i8, ptr %.sroa.032.0.ph176, i64 16
  br label %bb.b, !dbg !124635

bb.b:                                             ; preds = %.lr.ph, %bb.al
  %.sroa.0.0170 = phi ptr [ %.sroa.0.0.ph178, %.lr.ph ], [ %i.lc, %bb.al ] ; 20 uses
  %.sroa.20.0169 = phi i64 [ %.sroa.20.0.ph177, %.lr.ph ], [ %i.lb, %bb.al ] ; 19 uses
  %i.x = load i32, ptr %i.q, align 4, !dbg !124639, !noundef !12
  %i.y = icmp eq i32 %i.x, 0, !dbg !124639
  br i1 %i.y, label %bb.c, label %bb.d, !dbg !124639, !prof !42729

.outer._crit_edge:                                ; preds = %.outer, %bb.al, %bb.a
  %.sroa.20.0.lcssa = phi i64 [ %i.lb, %bb.al ], [ %1, %bb.a ], [ %.sroa.20.1, %.outer ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.lc, %bb.al ], [ %0, %bb.a ], [ %.sroa.0.1, %.outer ]
  %i.z = icmp samesign ugt i64 %.sroa.20.0.lcssa, 1, !dbg !124640
  br i1 %i.z, label %bb.ar, label %.loopexit, !dbg !124640

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort8heapsortTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBM_ReEERNCINvYSBK_INtB4_16ParallelSliceMutBK_E20par_sort_unstable_byNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort11categoricalINtNtB2H_7logical7LogicalNtNtB2J_9datatypes17Categorical16TypeNtB4c_10UInt16TypeE9sort_with0E0EB2J_(ptr noalias noundef nonnull align 8 %.sroa.0.0170, i64 noundef %.sroa.20.0169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !dbg !124641
  br label %.loopexit, !dbg !124642

bb.d:                                             ; preds = %bb.b
  br i1 %.sroa.036.0.ph175, label %bb.f, label %bb.e, !dbg !124644, !prof !113043

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort14break_patternsTINtNtCscgRAwXFJnXP_4core6option6OptiontEIBT_ReEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %.sroa.0.0170, i64 noundef %.sroa.20.0169), !dbg !124645
  %i.aa = load i32, ptr %i.q, align 4, !dbg !124646, !noundef !12
  %i.ab = add i32 %i.aa, -1, !dbg !124646
  store i32 %i.ab, ptr %i.q, align 4, !dbg !124646
  br label %bb.f, !dbg !124647

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !124648, !noalias !124653
end_hunk_2
