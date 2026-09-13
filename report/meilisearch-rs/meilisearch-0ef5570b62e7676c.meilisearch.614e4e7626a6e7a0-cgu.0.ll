Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
.lr.ph.i.i.i146.i.epil:                           ; preds = %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i.epil
  %.sroa.0.08.i.i.i147.i.epil = phi ptr [ %i.ss, %.lr.ph.i.i.i146.i.epil ], [ %i.ta, %.lr.ph.i.i.i146.i ] ; 4 uses
  %epil.iter1360 = phi i64 [ %epil.iter1360.next, %.lr.ph.i.i.i146.i.epil ], [ 0, %.lr.ph.i.i.i146.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i147.i.epil, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.epil, align 8, !noalias !38214
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i.epil, i64 1040 ; 2 uses
  %epil.iter1360.next = add i64 %epil.iter1360, 1 ; 2 uses
  %epil.iter1360.cmp.not = icmp eq i64 %epil.iter1360.next, 7
  br i1 %epil.iter1360.cmp.not, label %._crit_edge.thread.i.i.i143.i, label %.lr.ph.i.i.i146.i.epil, !llvm.loop !37776

._crit_edge.thread.i.i.i143.i:                    ; preds = %.lr.ph.i.i.i146.i.epil
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i145.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i.epil, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ss, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i145.i, align 8, !noalias !38214
  br label %._crit_edge.i.i.i141.i

.lr.ph.i.i.i146.i:                                ; preds = %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i.preheader.new
  %.sroa.0.08.i.i.i147.i = phi ptr [ %.sroa.10.0.i.i.i139.i, %.lr.ph.i.i.i146.i.preheader.new ], [ %i.ta, %.lr.ph.i.i.i146.i ] ; 17 uses
  %niter1366 = phi i64 [ 0, %.lr.ph.i.i.i146.i.preheader.new ], [ %niter1366.next.7, %.lr.ph.i.i.i146.i ] ; 2 uses
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i147.i, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i, align 8, !noalias !38214
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.st, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.1, align 8, !noalias !38214
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.su, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.2, align 8, !noalias !38214
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 4152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.sv, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.3, align 8, !noalias !38214
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 5192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.sw, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.4, align 8, !noalias !38214
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 6232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.sx, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.5, align 8, !noalias !38214
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.sy, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.6, align 8, !noalias !38214
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 8312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.sz, i8 0, i64 1032, i1 false), !noalias !38151
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.i.7, align 8, !noalias !38214
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.i, i64 8320 ; 2 uses
  %niter1366.next.7 = add nuw i64 %niter1366, 8
  %niter1366.ncmp.7 = icmp eq i64 %niter1366, %i.sr
  br i1 %niter1366.ncmp.7, label %.lr.ph.i.i.i146.i.epil, label %.lr.ph.i.i.i146.i

._crit_edge.i.i.i141.i:                           ; preds = %._crit_edge.thread.i.i.i143.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i138.i"
  %.val52.i = load i64, ptr %i.fc, align 8, !alias.scope !38151, !noalias !38153, !noundef !45
  %i.tb = icmp eq i64 %.val52.i, 0
  br i1 %i.tb, label %bb.cx, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i154.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i154.i": ; preds = %._crit_edge.i.i.i141.i
  %.val51.i = load ptr, ptr %i.fb, align 8, !alias.scope !38151, !noalias !38153, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val51.i) #38, !noalias !38151
  br label %bb.cx

bb.cx:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i154.i", %._crit_edge.i.i.i141.i
  store ptr %.sroa.10.0.i.i.i139.i, ptr %i.fb, align 8, !alias.scope !38151, !noalias !38153
  store i64 %i.rz, ptr %i.fc, align 8, !alias.scope !38151, !noalias !38153
  call void @llvm.experimental.noalias.scope.decl(metadata !38215)
  call void @llvm.experimental.noalias.scope.decl(metadata !38216)
  call void @llvm.experimental.noalias.scope.decl(metadata !38217)
  call void @llvm.experimental.noalias.scope.decl(metadata !38218)
  %.not.i155.i = icmp eq i64 %i.js, 0             ; 7 uses
  br i1 %.not.i155.i, label %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.cx
  %i.tc = shl nuw nsw i64 %i.js, 2                ; 4 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38219
  %i.td = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.tc, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38219 ; 3 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %.invoke1133.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38220
  %i.tf = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.tc, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38220 ; 2 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %bb.cy, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i.i"

bb.cy:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.tc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i.i unwind label %.thread72.i.i, !noalias !38221

.noexc.i.i:                                       ; preds = %bb.cy
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i.i
  %i.th = insertvalue { ptr, i64 } poison, ptr %i.tf, 0
  %i.ti = insertvalue { ptr, i64 } %i.th, i64 %i.js, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i.i

.thread72.i.i:                                    ; preds = %bb.cy
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i.i"

_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i.i", %bb.cx
  %i.tk = phi ptr [ %i.td, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i.i" ], [ inttoptr (i64 4 to ptr), %bb.cx ] ; 6 uses
  %.pn.i82.i.i = phi { ptr, i64 } [ %i.ti, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i.i" ], [ { ptr inttoptr (i64 4 to ptr), i64 0 }, %bb.cx ] ; 2 uses
  %i.tl = extractvalue { ptr, i64 } %.pn.i82.i.i, 0 ; 12 uses
  %i.tm = extractvalue { ptr, i64 } %.pn.i82.i.i, 1 ; 18 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38222
  %i.tn = call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !38222 ; 12 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc91.i.i unwind label %.thread27.i.i, !noalias !38221

.noexc91.i.i:                                     ; preds = %bb.cz
  unreachable

.thread45.thread81.loopexit.i.i:                  ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

.thread45.thread81.loopexit.split-lp.loopexit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit42.us.i.i.i
  %lpad.loopexit90.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.lr.ph.split.us37.preheader.i.i.i
  %lpad.loopexit98.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.split31.us.i.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

.thread27.i.i:                                    ; preds = %bb.cz
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i.i

bb.da:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.tn, i8 0, i64 32784, i1 false), !noalias !38221
  br i1 %.not.i155.i, label %._crit_edge160.i.i, label %.lr.ph.i156.i.preheader

.lr.ph.i156.i.preheader:                          ; preds = %bb.da
  %min.iters.check = icmp ult i64 %i.js, 8
  br i1 %min.iters.check, label %.lr.ph.i156.i.preheader1288, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i156.i.preheader
  %n.vec = and i64 %i.js, 9007199254740984        ; 4 uses
  %i.tq = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %index ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  store <4 x i32> splat (i32 1), ptr %i.tr, align 4, !noalias !38221
  store <4 x i32> splat (i32 1), ptr %i.ts, align 4, !noalias !38221
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.tt = icmp eq i64 %index.next, %n.vec
  br i1 %i.tt, label %middle.block, label %vector.body, !llvm.loop !37797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.js, %n.vec
  br i1 %cmp.n, label %.preheader105.i.i, label %.lr.ph.i156.i.preheader1288

.lr.ph.i156.i.preheader1288:                      ; preds = %.lr.ph.i156.i.preheader, %middle.block
  %.ph1289 = phi i64 [ 1, %.lr.ph.i156.i.preheader ], [ %i.tq, %middle.block ]
  %.sroa.029.0152.i.i.ph = phi i64 [ 0, %.lr.ph.i156.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i156.i

.preheader105.i.i:                                ; preds = %.lr.ph.i156.i, %middle.block
  %i.tu = or disjoint i64 %i.rz, 1
  br label %bb.ew

.preheader101.i.i:                                ; preds = %bb.fa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tl) ]
  br label %.lr.ph156.i.i

.lr.ph156.i.i:                                    ; preds = %bb.eu, %.preheader101.i.i
  %indvars.iv.i.i = phi i64 [ %i.js, %.preheader101.i.i ], [ %indvars.iv.next.i.i, %bb.eu ] ; 2 uses
  %.sroa.0.0158.i.i = phi i64 [ 0, %.preheader101.i.i ], [ %i.acw, %bb.eu ] ; 8 uses
  %.sroa.08.0157.i.i = phi i64 [ 0, %.preheader101.i.i ], [ %i.acx, %bb.eu ] ; 6 uses
  %i.tv = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax226.i.i = call i64 @llvm.umin.i64(i64 %i.tv, i64 64) ; 2 uses
  %i.tw = sub nuw nsw i64 %i.js, %.sroa.08.0157.i.i
  %.sroa.0.0.i92.i.i = call noundef i64 @llvm.umin.i64(i64 %i.tw, i64 64) ; 2 uses
  %reass.sub.i = call i64 @llvm.usub.sat.i64(i64 %i.tm, i64 %.sroa.0.0158.i.i) ; 2 uses
  %i.tx = add nuw nsw i64 %reass.sub.i, 1
  %i.ty = add nsw i64 %umax226.i.i, -1
  %i.tz = call i64 @llvm.umin.i64(i64 %reass.sub.i, i64 %i.ty) ; 2 uses
  %min.iters.check1051 = icmp samesign ult i64 %i.tz, 8
  br i1 %min.iters.check1051, label %scalar.ph1050.preheader, label %vector.ph1052

scalar.ph1050.preheader:                          ; preds = %vector.body1054, %.lr.ph156.i.i
  %.ph1281 = phi i64 [ 1, %.lr.ph156.i.i ], [ %i.ue, %vector.body1054 ]
  %.sroa.033.0155.i.i.ph = phi i64 [ 0, %.lr.ph156.i.i ], [ %n.vec1053, %vector.body1054 ]
  br label %scalar.ph1050

vector.ph1052:                                    ; preds = %.lr.ph156.i.i
  %i.ua = add nuw nsw i64 %i.tz, 1                ; 2 uses
  %i.ub = and i64 %i.ua, 7                        ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 0
  %i.ud = select i1 %i.uc, i64 8, i64 %i.ub
  %n.vec1053 = sub nsw i64 %i.ua, %i.ud           ; 3 uses
  %i.ue = add i64 %n.vec1053, 1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.sroa.08.0157.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw <4 x i64> splat (i64 4), %broadcast.splat
  %invariant.gep = getelementptr [4 x i8], ptr %i.tl, i64 %.sroa.0.0158.i.i
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %vector.ph1052
  %index1055 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1056, %vector.body1054 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1052 ], [ %vec.ind.next, %vector.body1054 ] ; 3 uses
  %i.uf = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %.reass = add nuw <4 x i64> %vec.ind, %invariant.op
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1055 ; 2 uses
  %i.ug = trunc <4 x i64> %i.uf to <4 x i32>
  %i.uh = trunc <4 x i64> %.reass to <4 x i32>
  %i.ui = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.ug, ptr %gep, align 4, !noalias !38221
  store <4 x i32> %i.uh, ptr %i.ui, align 4, !noalias !38221
  %index.next1056 = add nuw i64 %index1055, 8     ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 8)
  %i.uj = icmp eq i64 %index.next1056, %n.vec1053
  br i1 %i.uj, label %scalar.ph1050.preheader, label %vector.body1054, !llvm.loop !37798

.loopexit.i.i:                                    ; preds = %bb.et
  %lpad.loopexit102.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i"

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.ez
  %lpad.loopexit106.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i"

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke337.i.i, %.invoke.i.i, %bb.dg
  %.sroa.011.1.ph.ph.ph.i.i = phi ptr [ %i.tn, %.invoke337.i.i ], [ %.sroa.011.3.i.i, %bb.dg ], [ %i.tn, %.invoke.i.i ]
  %lpad.loopexit.split-lp107.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i"

._crit_edge160.i.i:                               ; preds = %bb.eu, %bb.da
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.da ], [ %i.acw, %bb.eu ] ; 4 uses
  %i.uk = shl nuw nsw i64 %.sroa.0.0.lcssa.i.i, 6
  %i.ul = lshr i64 %.sroa.0.0.lcssa.i.i, 1
  %i.um = mul i64 %i.ul, %.sroa.0.0.lcssa.i.i
  %.sroa.0.0.i.i159.i = call noundef i64 @llvm.umin.i64(i64 %i.um, i64 %i.uk) ; 3 uses
  %i.un = icmp samesign ugt i64 %.sroa.0.0.i.i159.i, 2047
  br i1 %i.un, label %.preheader.i.i, label %bb.dg

.preheader.i.i:                                   ; preds = %._crit_edge160.i.i, %.preheader.i.i
  %.sroa.021.0.i.i = phi i64 [ %i.uo, %.preheader.i.i ], [ 2048, %._crit_edge160.i.i ] ; 6 uses
  %.not84.i.i = icmp ugt i64 %.sroa.021.0.i.i, %.sroa.0.0.i.i159.i
  %i.uo = shl i64 %.sroa.021.0.i.i, 1
  br i1 %.not84.i.i, label %bb.db, label %.preheader.i.i

bb.db:                                            ; preds = %.preheader.i.i
  %i.up = shl i64 %.sroa.021.0.i.i, 4             ; 5 uses
  %i.uq = icmp ugt i64 %.sroa.021.0.i.i, 1152921504606846975
  %i.ur = icmp ugt i64 %i.up, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.uq, %i.ur
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.dc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.db
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38223
  %i.us = call noundef ptr @mi_malloc_aligned(i64 noundef %i.up, i64 noundef range(i64 1, 9) 4) #38, !noalias !38223 ; 6 uses
  %i.ut = icmp eq ptr %i.us, null
  br i1 %i.ut, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, %bb.db
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ 0, %bb.db ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.up, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc93.i.i unwind label %bb.dd, !noalias !38221

.noexc93.i.i:                                     ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.dc
  %lpad.thr_comm.split-lp63.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i"

bb.de:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %i.uu = add nsw i64 %i.up, -16                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.us, i8 0, i64 %i.uu, i1 false), !noalias !38224
  %i.uv = getelementptr i8, ptr %i.us, i64 %i.up  ; 2 uses
  %scevgep11.i.i.i.i = getelementptr i8, ptr %i.us, i64 %i.uu
  store i32 0, ptr %scevgep11.i.i.i.i, align 4, !noalias !38224
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.uv, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 4, !noalias !38224
  %.sroa.67.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.uv, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i.i.i.i, align 4, !noalias !38224
  %i.uw = icmp samesign ult i64 %.sroa.021.0.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.uw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.us, ptr noundef nonnull readonly align 4 dereferenceable(32768) %i.tn, i64 32768, i1 false), !alias.scope !38225, !noalias !38221
  call void @mi_free(ptr noundef nonnull align 4 %i.tn) #38, !noalias !38221
  br label %bb.dg

bb.df:                                            ; preds = %bb.ex
  unreachable

bb.dg:                                            ; preds = %bb.de, %._crit_edge160.i.i
  %.sroa.10.3.i.i = phi i64 [ %.sroa.021.0.i.i, %bb.de ], [ 2049, %._crit_edge160.i.i ]
  %.sroa.011.3.i.i = phi ptr [ %i.us, %bb.de ], [ %i.tn, %._crit_edge160.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tl) ]
  %i.ux = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i139.i, i64 noundef %i.rz, ptr noalias noundef nonnull align 4 %i.tk, i64 noundef %i.js, ptr noalias noundef nonnull align 4 %i.sj, i64 noundef %i.rz, ptr noalias noundef nonnull align 4 %i.tl, i64 noundef %i.tm, ptr noalias noundef nonnull align 4 %.sroa.011.3.i.i, i64 noundef %.sroa.10.3.i.i, i64 noundef %.sroa.0.0.lcssa.i.i, i64 noundef %i.js, i64 noundef 256, i64 noundef %.sroa.0.0.i.i159.i)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !38226 ; 5 uses

bb.dh:                                            ; preds = %bb.dg
  call void @mi_free(ptr noundef nonnull align 4 %.sroa.011.3.i.i) #38, !noalias !38221
  br i1 %.not.i155.i, label %.preheader.i.i.i, label %.lr.ph36.i.i.i

.lr.ph36.i.i.i:                                   ; preds = %bb.dh
  call void @mi_free(ptr noundef nonnull align 4 %i.tk) #38, !noalias !38221
  call void @llvm.experimental.noalias.scope.decl(metadata !38227)
  call void @llvm.experimental.noalias.scope.decl(metadata !38228)
  call void @llvm.experimental.noalias.scope.decl(metadata !38229)
  call void @llvm.experimental.noalias.scope.decl(metadata !38230)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.s, i64 1024 ; 4 uses
  %.not71.i.i.i = icmp eq i64 %i.ux, 0
  %i.uz = getelementptr inbounds nuw i8, ptr %i.t, i64 1024 ; 2 uses
  br i1 %.not71.i.i.i, label %.lr.ph36.split.i.i.i, label %.lr.ph36.split.us.i.i.i

.lr.ph36.split.us.i.i.i:                          ; preds = %.lr.ph36.i.i.i, %bb.dp
  %.sroa.010.034.us.i.i.i = phi i64 [ %i.va, %bb.dp ], [ 0, %.lr.ph36.i.i.i ] ; 6 uses
  %i.va = add nuw nsw i64 %.sroa.010.034.us.i.i.i, 1 ; 2 uses
  %i.vb = icmp eq i64 %.sroa.010.034.us.i.i.i, 0
  br i1 %i.vb, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %.lr.ph36.split.us.i.i.i
  %i.vc = add nsw i64 %.sroa.010.034.us.i.i.i, -1 ; 3 uses
  %i.vd = icmp ult i64 %i.vc, %i.rz
  br i1 %i.vd, label %bb.dj, label %.split31.us.i.invoke.i.i

bb.dj:                                            ; preds = %bb.di
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.vc
  br label %bb.dl

bb.dk:                                            ; preds = %.lr.ph36.split.us.i.i.i
  br i1 %.not.i30, label %.split31.us.i.invoke.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sroa.01.0.in.us.i.i.i = phi ptr [ %i.ve, %bb.dj ], [ %i.sj, %bb.dk ]
  %.sroa.01.0.us.i.i.i = load i32, ptr %.sroa.01.0.in.us.i.i.i, align 4, !alias.scope !38231, !noalias !38232, !noundef !45 ; 3 uses
  %i.vf = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i901.i, i64 %.sroa.010.034.us.i.i.i ; 3 uses
  %i.vg = zext i32 %.sroa.01.0.us.i.i.i to i64    ; 3 uses
  %i.vh = icmp samesign ugt i64 %i.rz, %i.vg
  br i1 %i.vh, label %bb.dm, label %.split31.us.i.invoke.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.vi = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139.i, i64 %i.vg ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 1024
  %i.vk = load i64, ptr %i.vj, align 8, !alias.scope !38233, !noalias !38234, !noundef !45
  %i.vl = icmp eq i64 %i.vk, 0
  br i1 %i.vl, label %.lr.ph.split.us.us.i.i.i, label %vector.ph1070

vector.ph1070:                                    ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !38235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.vf, i64 1040, i1 false), !alias.scope !38236, !noalias !38234
  %i.vm = load i64, ptr %i.uy, align 8, !alias.scope !38237, !noalias !38238, !noundef !45
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 1024
  %i.vo = load i64, ptr %i.vn, align 8, !alias.scope !38239, !noalias !38240, !noundef !45
  %i.vp = add i64 %i.vo, %i.vm
  store i64 %i.vp, ptr %i.uy, align 8, !alias.scope !38241, !noalias !38242
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %vector.ph1070
  %index1072 = phi i64 [ 0, %vector.ph1070 ], [ %index.next1077.1, %vector.body1071 ] ; 4 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index1072 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16 ; 2 uses
  %wide.load1073 = load <4 x i32>, ptr %i.vq, align 8, !noalias !38242
  %wide.load1074 = load <4 x i32>, ptr %i.vr, align 8, !noalias !38242
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %index1072 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %wide.load1075 = load <4 x i32>, ptr %i.vs, align 4, !alias.scope !38243, !noalias !38240
  %wide.load1076 = load <4 x i32>, ptr %i.vt, align 4, !alias.scope !38243, !noalias !38240
  %i.vu = add <4 x i32> %wide.load1075, %wide.load1073
  %i.vv = add <4 x i32> %wide.load1076, %wide.load1074
  store <4 x i32> %i.vu, ptr %i.vq, align 8, !noalias !38242
  store <4 x i32> %i.vv, ptr %i.vr, align 8, !noalias !38242
  %index.next1077 = or disjoint i64 %index1072, 8 ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index.next1077 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16 ; 2 uses
  %wide.load1073.1 = load <4 x i32>, ptr %i.vw, align 8, !noalias !38242
  %wide.load1074.1 = load <4 x i32>, ptr %i.vx, align 8, !noalias !38242
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %index.next1077 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %wide.load1075.1 = load <4 x i32>, ptr %i.vy, align 4, !alias.scope !38243, !noalias !38240
  %wide.load1076.1 = load <4 x i32>, ptr %i.vz, align 4, !alias.scope !38243, !noalias !38240
  %i.wa = add <4 x i32> %wide.load1075.1, %wide.load1073.1
  %i.wb = add <4 x i32> %wide.load1076.1, %wide.load1074.1
  store <4 x i32> %i.wa, ptr %i.vw, align 8, !noalias !38242
  store <4 x i32> %i.wb, ptr %i.vx, align 8, !noalias !38242
  %index.next1077.1 = add nuw nsw i64 %index1072, 16 ; 2 uses
  %i.wc = icmp eq i64 %index.next1077.1, 256
  br i1 %i.wc, label %.lr.ph.split.us37.preheader.i.i.i, label %vector.body1071, !llvm.loop !37833

.lr.ph.split.us37.preheader.i.i.i:                ; preds = %vector.body1071
  %i.wd = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.s)
          to label %.noexc97.i.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !38221

.noexc97.i.i:                                     ; preds = %.lr.ph.split.us37.preheader.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.epil, align 8, !noalias !38282
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i.epil, i64 2192 ; 2 uses
  %epil.iter1375.next = add i64 %epil.iter1375, 1 ; 2 uses
  %epil.iter1375.cmp.not = icmp eq i64 %epil.iter1375.next, %xtraiter1374
  br i1 %epil.iter1375.cmp.not, label %._crit_edge.thread.i.i.i180.i, label %.lr.ph.i.i.i183.i.epil, !llvm.loop !37900

._crit_edge.thread.i.i.i180.i:                    ; preds = %.lr.ph.i.i.i183.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afi, i8 0, i64 2184, i1 false), !noalias !38151
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i.epil, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182.i, align 8, !noalias !38282
  br label %._crit_edge.i.i.i178.i

.lr.ph.i.i.i183.i:                                ; preds = %.lr.ph.i.i.i183.i, %.lr.ph.i.i.i183.i.preheader.new
  %.sroa.0.08.i.i.i184.i = phi ptr [ %.sroa.10.0.i.i.i176.i, %.lr.ph.i.i.i183.i.preheader.new ], [ %i.afq, %.lr.ph.i.i.i183.i ] ; 17 uses
  %niter1381 = phi i64 [ 0, %.lr.ph.i.i.i183.i.preheader.new ], [ %niter1381.next.7, %.lr.ph.i.i.i183.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i184.i, i8 0, i64 2184, i1 false), !noalias !38151
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i, align 8, !noalias !38282
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afj, i8 0, i64 2184, i1 false), !noalias !38151
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.1, align 8, !noalias !38282
  %i.afk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 4384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afk, i8 0, i64 2184, i1 false), !noalias !38151
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.2, align 8, !noalias !38282
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 6576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afl, i8 0, i64 2184, i1 false), !noalias !38151
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.3, align 8, !noalias !38282
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 8768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afm, i8 0, i64 2184, i1 false), !noalias !38151
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.4, align 8, !noalias !38282
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 10960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afn, i8 0, i64 2184, i1 false), !noalias !38151
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.5, align 8, !noalias !38282
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 13152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afo, i8 0, i64 2184, i1 false), !noalias !38151
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.6, align 8, !noalias !38282
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 15344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afp, i8 0, i64 2184, i1 false), !noalias !38151
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.7, align 8, !noalias !38282
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 17536 ; 2 uses
  %niter1381.next.7 = add i64 %niter1381, 8       ; 2 uses
  %niter1381.ncmp.7 = icmp eq i64 %niter1381.next.7, %unroll_iter1380
  br i1 %niter1381.ncmp.7, label %.lr.ph.i.i.i183.i.epil.preheader, label %.lr.ph.i.i.i183.i

._crit_edge.i.i.i178.i:                           ; preds = %._crit_edge.thread.i.i.i180.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i"
  %.val70.i = load i64, ptr %i.fi, align 8, !alias.scope !38151, !noalias !38153, !noundef !45
  %i.afr = icmp eq i64 %.val70.i, 0
  br i1 %i.afr, label %bb.fh, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191.i": ; preds = %._crit_edge.i.i.i178.i
  %.val69.i = load ptr, ptr %i.fh, align 8, !alias.scope !38151, !noalias !38153, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val69.i) #38, !noalias !38151
  br label %bb.fh

bb.fh:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191.i", %._crit_edge.i.i.i178.i
  store ptr %.sroa.10.0.i.i.i176.i, ptr %i.fh, align 8, !alias.scope !38151, !noalias !38153
  store i64 %i.aen, ptr %i.fi, align 8, !alias.scope !38151, !noalias !38153
  call void @llvm.experimental.noalias.scope.decl(metadata !38283)
  call void @llvm.experimental.noalias.scope.decl(metadata !38284)
  call void @llvm.experimental.noalias.scope.decl(metadata !38285)
  call void @llvm.experimental.noalias.scope.decl(metadata !38286)
  br i1 %.not867.i, label %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i: ; preds = %bb.fh
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38287
  %i.afs = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aeo, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38287 ; 3 uses
  %i.aft = icmp eq ptr %i.afs, null
  br i1 %i.aft, label %.invoke1131.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38288
  %i.afu = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aeo, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38288 ; 2 uses
  %i.afv = icmp eq ptr %i.afu, null
  br i1 %i.afv, label %bb.fi, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i"

bb.fi:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.aeo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc.i389.i unwind label %.thread72.i388.i, !noalias !38289

.noexc.i389.i:                                    ; preds = %bb.fi
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i
  %i.afw = insertvalue { ptr, i64 } poison, ptr %i.afu, 0
  %i.afx = insertvalue { ptr, i64 } %i.afw, i64 %i.aen, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i

.thread72.i388.i:                                 ; preds = %bb.fi
  %i.afy = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i218.i"

_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i", %bb.fh
  %i.afz = phi ptr [ %i.afs, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i" ], [ inttoptr (i64 4 to ptr), %bb.fh ] ; 6 uses
  %.pn.i82.i198.i = phi { ptr, i64 } [ %i.afx, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i85.i196.i" ], [ { ptr inttoptr (i64 4 to ptr), i64 0 }, %bb.fh ] ; 2 uses
  %i.aga = extractvalue { ptr, i64 } %.pn.i82.i198.i, 0 ; 12 uses
  %i.agb = extractvalue { ptr, i64 } %.pn.i82.i198.i, 1 ; 18 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38290
  %i.agc = call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !38290 ; 11 uses
  %i.agd = icmp eq ptr %i.agc, null
  br i1 %i.agd, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc91.i387.i unwind label %.thread27.i386.i, !noalias !38289

.noexc91.i387.i:                                  ; preds = %bb.fj
  unreachable

.thread45.thread81.loopexit.i363.i:               ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i.i
  %lpad.loopexit.i364.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread45.thread81.loopexit.split-lp.loopexit.i274.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit42.us.i.i.i
  %lpad.loopexit90.i275.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i264.i: ; preds = %.lr.ph.split.us37.preheader.i.i263.i
  %lpad.loopexit98.i265.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i256.i: ; preds = %.split.us.i.invoke.i.i
  %lpad.loopexit.split-lp.i257.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

.thread27.i386.i:                                 ; preds = %bb.fj
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i212.i

bb.fk:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.agc, i8 0, i64 32784, i1 false), !noalias !38289
  br i1 %.not867.i, label %._crit_edge160.i242.i, label %.lr.ph.i199.i.preheader

.lr.ph.i199.i.preheader:                          ; preds = %bb.fk
  %min.iters.check1100 = icmp samesign ult i64 %i.aen, 8
  br i1 %min.iters.check1100, label %.lr.ph.i199.i.preheader1249, label %vector.ph1101

vector.ph1101:                                    ; preds = %.lr.ph.i199.i.preheader
  %n.vec1102 = and i64 %i.aen, 4503599627370488   ; 4 uses
  %i.agf = or disjoint i64 %n.vec1102, 1
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %vector.ph1101
  %index1104 = phi i64 [ 0, %vector.ph1101 ], [ %index.next1105, %vector.body1103 ] ; 2 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %index1104 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  store <4 x i32> splat (i32 1), ptr %i.agg, align 4, !noalias !38289
  store <4 x i32> splat (i32 1), ptr %i.agh, align 4, !noalias !38289
  %index.next1105 = add nuw i64 %index1104, 8     ; 2 uses
  %i.agi = icmp eq i64 %index.next1105, %n.vec1102
  br i1 %i.agi, label %middle.block1106, label %vector.body1103, !llvm.loop !37921

middle.block1106:                                 ; preds = %vector.body1103
  %cmp.n1107 = icmp eq i64 %i.aen, %n.vec1102
  br i1 %cmp.n1107, label %.preheader105.i202.i, label %.lr.ph.i199.i.preheader1249

.lr.ph.i199.i.preheader1249:                      ; preds = %.lr.ph.i199.i.preheader, %middle.block1106
  %.ph1250 = phi i64 [ 1, %.lr.ph.i199.i.preheader ], [ %i.agf, %middle.block1106 ]
  %.sroa.029.0152.i200.i.ph = phi i64 [ 0, %.lr.ph.i199.i.preheader ], [ %n.vec1102, %middle.block1106 ]
  br label %.lr.ph.i199.i

.preheader105.i202.i:                             ; preds = %.lr.ph.i199.i, %middle.block1106
  %i.agj = or disjoint i64 %i.ju, 1
  br label %.lr.ph154.i203.i

.preheader101.i227.i:                             ; preds = %bb.ha
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aga) ]
  br label %.lr.ph156.i228.i

.lr.ph154.i203.i:                                 ; preds = %bb.ha, %.preheader105.i202.i
  %i.agk = phi i64 [ %i.aqg, %bb.ha ], [ 1, %.preheader105.i202.i ] ; 4 uses
  %.sroa.031.0153.i204.i = phi i64 [ %i.agk, %bb.ha ], [ 0, %.preheader105.i202.i ] ; 4 uses
  %exitcond221.not.i205.i = icmp eq i64 %i.agk, %i.agj
  br i1 %exitcond221.not.i205.i, label %.invoke337.i384.i, label %bb.gz

.lr.ph156.i228.i:                                 ; preds = %bb.gx, %.preheader101.i227.i
  %indvars.iv.i229.i = phi i64 [ %i.aen, %.preheader101.i227.i ], [ %indvars.iv.next.i241.i, %bb.gx ] ; 2 uses
  %.sroa.0.0158.i230.i = phi i64 [ 0, %.preheader101.i227.i ], [ %i.apo, %bb.gx ] ; 8 uses
  %.sroa.08.0157.i231.i = phi i64 [ 0, %.preheader101.i227.i ], [ %i.app, %bb.gx ] ; 5 uses
  %i.agl = call i64 @llvm.umax.i64(i64 %indvars.iv.i229.i, i64 1)
  %umax226.i232.i = call i64 @llvm.umin.i64(i64 %i.agl, i64 64) ; 2 uses
  %i.agm = sub nuw nsw i64 %i.aen, %.sroa.08.0157.i231.i ; 2 uses
  %.sroa.0.0.i92.i233.i = call noundef i64 @llvm.umin.i64(i64 %i.agm, i64 64) ; 2 uses
  %reass.sub462.i = call i64 @llvm.usub.sat.i64(i64 %i.agb, i64 %.sroa.0.0158.i230.i) ; 2 uses
  %i.agn = add nuw nsw i64 %reass.sub462.i, 1
  %i.ago = add nsw i64 %umax226.i232.i, -1
  %i.agp = call i64 @llvm.umin.i64(i64 %reass.sub462.i, i64 %i.ago) ; 2 uses
  %min.iters.check1111 = icmp samesign ult i64 %i.agp, 8
  br i1 %min.iters.check1111, label %scalar.ph1110.preheader, label %vector.ph1112

scalar.ph1110.preheader:                          ; preds = %vector.body1116, %.lr.ph156.i228.i
  %.ph1241 = phi i64 [ 1, %.lr.ph156.i228.i ], [ %i.agu, %vector.body1116 ]
  %.sroa.033.0155.i235.i.ph = phi i64 [ 0, %.lr.ph156.i228.i ], [ %n.vec1113, %vector.body1116 ]
  br label %scalar.ph1110

vector.ph1112:                                    ; preds = %.lr.ph156.i228.i
  %i.agq = add nuw nsw i64 %i.agp, 1              ; 2 uses
  %i.agr = and i64 %i.agq, 7                      ; 2 uses
  %i.ags = icmp eq i64 %i.agr, 0
  %i.agt = select i1 %i.ags, i64 8, i64 %i.agr
  %n.vec1113 = sub nsw i64 %i.agq, %i.agt         ; 3 uses
  %i.agu = add i64 %n.vec1113, 1
  %broadcast.splatinsert1114 = insertelement <4 x i64> poison, i64 %.sroa.08.0157.i231.i, i64 0
  %broadcast.splat1115 = shufflevector <4 x i64> %broadcast.splatinsert1114, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op1517 = add nuw <4 x i64> splat (i64 4), %broadcast.splat1115
  %invariant.gep1519 = getelementptr [4 x i8], ptr %i.aga, i64 %.sroa.0.0158.i230.i
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1112
  %index1117 = phi i64 [ 0, %vector.ph1112 ], [ %index.next1120, %vector.body1116 ] ; 2 uses
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1112 ], [ %vec.ind.next1121, %vector.body1116 ] ; 3 uses
  %i.agv = add nuw nsw <4 x i64> %vec.ind1118, %broadcast.splat1115
  %.reass1518 = add nuw <4 x i64> %vec.ind1118, %invariant.op1517
  %gep1520 = getelementptr [4 x i8], ptr %invariant.gep1519, i64 %index1117 ; 2 uses
  %i.agw = trunc <4 x i64> %i.agv to <4 x i32>
  %i.agx = trunc <4 x i64> %.reass1518 to <4 x i32>
  %i.agy = getelementptr inbounds nuw i8, ptr %gep1520, i64 16
  store <4 x i32> %i.agw, ptr %gep1520, align 4, !noalias !38289
  store <4 x i32> %i.agx, ptr %i.agy, align 4, !noalias !38289
  %index.next1120 = add nuw i64 %index1117, 8     ; 2 uses
  %vec.ind.next1121 = add <4 x i64> %vec.ind1118, splat (i64 8)
  %i.agz = icmp eq i64 %index.next1120, %n.vec1113
  br i1 %i.agz, label %scalar.ph1110.preheader, label %vector.body1116, !llvm.loop !37922

.loopexit.i239.i:                                 ; preds = %bb.gw
  %lpad.loopexit102.i240.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

.loopexit.split-lp.loopexit.i207.i:               ; preds = %bb.gz
  %lpad.loopexit106.i208.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

.loopexit.split-lp.loopexit.split-lp.i247.i:      ; preds = %.invoke337.i384.i, %.invoke.i382.i, %bb.fp
  %.sroa.011.1.ph.ph.ph.i248.i = phi ptr [ %i.agc, %.invoke337.i384.i ], [ %.sroa.011.3.i246.i, %bb.fp ], [ %i.agc, %.invoke.i382.i ]
  %lpad.loopexit.split-lp107.i249.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

._crit_edge160.i242.i:                            ; preds = %bb.gx, %bb.fk
  %.sroa.0.0.lcssa.i243.i = phi i64 [ 0, %bb.fk ], [ %i.apo, %bb.gx ] ; 4 uses
  %i.aha = shl nuw nsw i64 %.sroa.0.0.lcssa.i243.i, 6
  %i.ahb = lshr i64 %.sroa.0.0.lcssa.i243.i, 1
  %i.ahc = mul i64 %i.ahb, %.sroa.0.0.lcssa.i243.i
  %.sroa.0.0.i.i244.i = call noundef i64 @llvm.umin.i64(i64 %i.ahc, i64 %i.aha) ; 3 uses
  %i.ahd = icmp samesign ugt i64 %.sroa.0.0.i.i244.i, 2047
  br i1 %i.ahd, label %.preheader.i370.i, label %bb.fp

.preheader.i370.i:                                ; preds = %._crit_edge160.i242.i, %.preheader.i370.i
  %.sroa.021.0.i371.i = phi i64 [ %i.ahe, %.preheader.i370.i ], [ 2048, %._crit_edge160.i242.i ] ; 6 uses
  %.not84.i372.i = icmp ugt i64 %.sroa.021.0.i371.i, %.sroa.0.0.i.i244.i
  %i.ahe = shl i64 %.sroa.021.0.i371.i, 1
  br i1 %.not84.i372.i, label %bb.fl, label %.preheader.i370.i

bb.fl:                                            ; preds = %.preheader.i370.i
  %i.ahf = shl i64 %.sroa.021.0.i371.i, 4         ; 5 uses
  %i.ahg = icmp ugt i64 %.sroa.021.0.i371.i, 1152921504606846975
  %i.ahh = icmp ugt i64 %i.ahf, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i373.i = or i1 %i.ahg, %i.ahh
  br i1 %or.cond.i.i.i.i.i.i.i373.i, label %bb.fm, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i: ; preds = %bb.fl
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38291
  %i.ahi = call noundef ptr @mi_malloc_aligned(i64 noundef %i.ahf, i64 noundef range(i64 1, 9) 4) #38, !noalias !38291 ; 6 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i, %bb.fl
  %.sroa.4.0.ph.i.i.i.i.i379.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i ], [ 0, %bb.fl ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i379.i, i64 %i.ahf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc93.i381.i unwind label %bb.fn, !noalias !38289

.noexc93.i381.i:                                  ; preds = %bb.fm
  unreachable

bb.fn:                                            ; preds = %bb.fm
  %lpad.thr_comm.split-lp63.i380.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i209.i"

bb.fo:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i374.i
  %i.ahk = add nsw i64 %i.ahf, -16                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ahi, i8 0, i64 %i.ahk, i1 false), !noalias !38292
  %i.ahl = getelementptr i8, ptr %i.ahi, i64 %i.ahf ; 2 uses
  %scevgep11.i.i.i375.i = getelementptr i8, ptr %i.ahi, i64 %i.ahk
  store i32 0, ptr %scevgep11.i.i.i375.i, align 4, !noalias !38292
  %.sroa.55.0..sroa_idx.i.i.i376.i = getelementptr i8, ptr %i.ahl, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i.i.i376.i, align 4, !noalias !38292
  %.sroa.67.0..sroa_idx.i.i.i377.i = getelementptr i8, ptr %i.ahl, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i.i.i377.i, align 4, !noalias !38292
  %i.ahm = icmp samesign ult i64 %.sroa.021.0.i371.i, 576460752303423488
  call void @llvm.assume(i1 %i.ahm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.ahi, ptr noundef nonnull readonly align 4 dereferenceable(32768) %i.agc, i64 32768, i1 false), !alias.scope !38293, !noalias !38289
  call void @mi_free(ptr noundef nonnull align 4 %i.agc) #38, !noalias !38289
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %._crit_edge160.i242.i
  %.sroa.10.3.i245.i = phi i64 [ %.sroa.021.0.i371.i, %bb.fo ], [ 2049, %._crit_edge160.i242.i ]
  %.sroa.011.3.i246.i = phi ptr [ %i.ahi, %bb.fo ], [ %i.agc, %._crit_edge160.i242.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aga) ]
  %i.ahn = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h74b2081842603b54E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i176.i, i64 noundef %i.aen, ptr noalias noundef nonnull align 4 %i.afz, i64 noundef %i.aen, ptr noalias noundef nonnull align 4 %i.aex, i64 noundef %i.aen, ptr noalias noundef nonnull align 4 %i.aga, i64 noundef %i.agb, ptr noalias noundef nonnull align 4 %.sroa.011.3.i246.i, i64 noundef %.sroa.10.3.i245.i, i64 noundef %.sroa.0.0.lcssa.i243.i, i64 noundef %i.aen, i64 noundef 256, i64 noundef %.sroa.0.0.i.i244.i)
          to label %bb.fq unwind label %.loopexit.split-lp.loopexit.split-lp.i247.i, !noalias !38294 ; 5 uses

bb.fq:                                            ; preds = %bb.fp
  call void @mi_free(ptr noundef nonnull align 4 %.sroa.011.3.i246.i) #38, !noalias !38289
  br i1 %.not867.i, label %.preheader.i.i368.i.thread, label %.lr.ph36.i.i251.i

.lr.ph36.i.i251.i:                                ; preds = %bb.fq
  call void @mi_free(ptr noundef nonnull align 4 %i.afz) #38, !noalias !38289
  call void @llvm.experimental.noalias.scope.decl(metadata !38295)
  call void @llvm.experimental.noalias.scope.decl(metadata !38296)
  call void @llvm.experimental.noalias.scope.decl(metadata !38297)
  call void @llvm.experimental.noalias.scope.decl(metadata !38298)
  %i.aho = getelementptr inbounds nuw i8, ptr %i.q, i64 2176 ; 4 uses
  %.not71.i.i253.i = icmp eq i64 %i.ahn, 0
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.r, i64 2176 ; 2 uses
  br i1 %.not71.i.i253.i, label %.lr.ph36.split.i.i356.i, label %.lr.ph36.split.us.i.i254.i

.lr.ph36.split.us.i.i254.i:                       ; preds = %.lr.ph36.i.i251.i, %._crit_edge.us.i.i280.i
  %.sroa.010.034.us.i.i255.i = phi i64 [ %i.ahq, %._crit_edge.us.i.i280.i ], [ 0, %.lr.ph36.i.i251.i ] ; 5 uses
  %i.ahq = add nuw nsw i64 %.sroa.010.034.us.i.i255.i, 1 ; 2 uses
  %i.ahr = icmp eq i64 %.sroa.010.034.us.i.i255.i, 0
  %i.ahs = getelementptr [4 x i8], ptr %i.aex, i64 %.sroa.010.034.us.i.i255.i ; 2 uses
  %i.aht = getelementptr i8, ptr %i.ahs, i64 -4
  %.sroa.01.0.in.us.i.i258.i = select i1 %i.ahr, ptr %i.aex, ptr %i.aht
  %.sroa.01.0.us.i.i259.i = load i32, ptr %.sroa.01.0.in.us.i.i258.i, align 4, !alias.scope !38299, !noalias !38300, !noundef !45 ; 3 uses
  %exitcond131.not.i.i260.i = icmp eq i64 %.sroa.010.034.us.i.i255.i, %i.ju
  br i1 %exitcond131.not.i.i260.i, label %.split.us.i.invoke.i.i, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph36.split.us.i.i254.i
  %i.ahu = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i89.i, i64 %.sroa.010.034.us.i.i255.i ; 3 uses
  %i.ahv = zext i32 %.sroa.01.0.us.i.i259.i to i64 ; 3 uses
  %i.ahw = icmp samesign ugt i64 %i.aen, %i.ahv
  br i1 %i.ahw, label %bb.fs, label %.split.us.i.invoke.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.ahx = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176.i, i64 %i.ahv ; 4 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahu, i64 2176
  %i.ahz = load i64, ptr %i.ahy, align 8, !alias.scope !38301, !noalias !38302, !noundef !45
  %i.aia = icmp eq i64 %i.ahz, 0
  br i1 %i.aia, label %.lr.ph.split.us.us.i.i352.i, label %vector.ph1136

vector.ph1136:                                    ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.ahu, i64 2192, i1 false), !alias.scope !38304, !noalias !38302
  %i.aib = load i64, ptr %i.aho, align 8, !alias.scope !38305, !noalias !38306, !noundef !45
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahx, i64 2176
  %i.aid = load i64, ptr %i.aic, align 8, !alias.scope !38307, !noalias !38308, !noundef !45
  %i.aie = add i64 %i.aid, %i.aib
  store i64 %i.aie, ptr %i.aho, align 8, !alias.scope !38309, !noalias !38310
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1136
  %index1138 = phi i64 [ 0, %vector.ph1136 ], [ %index.next1143.1, %vector.body1137 ] ; 4 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index1138 ; 3 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 16 ; 2 uses
  %wide.load1139 = load <4 x i32>, ptr %i.aif, align 8, !noalias !38310
  %wide.load1140 = load <4 x i32>, ptr %i.aig, align 8, !noalias !38310
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %index1138 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  %wide.load1141 = load <4 x i32>, ptr %i.aih, align 4, !alias.scope !38311, !noalias !38308
  %wide.load1142 = load <4 x i32>, ptr %i.aii, align 4, !alias.scope !38311, !noalias !38308
  %i.aij = add <4 x i32> %wide.load1141, %wide.load1139
  %i.aik = add <4 x i32> %wide.load1142, %wide.load1140
  store <4 x i32> %i.aij, ptr %i.aif, align 8, !noalias !38310
  store <4 x i32> %i.aik, ptr %i.aig, align 8, !noalias !38310
  %index.next1143 = or disjoint i64 %index1138, 8 ; 2 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index.next1143 ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 16 ; 2 uses
  %wide.load1139.1 = load <4 x i32>, ptr %i.ail, align 8, !noalias !38310
  %wide.load1140.1 = load <4 x i32>, ptr %i.aim, align 8, !noalias !38310
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %index.next1143 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 16
  %wide.load1141.1 = load <4 x i32>, ptr %i.ain, align 4, !alias.scope !38311, !noalias !38308
  %wide.load1142.1 = load <4 x i32>, ptr %i.aio, align 4, !alias.scope !38311, !noalias !38308
  %i.aip = add <4 x i32> %wide.load1141.1, %wide.load1139.1
  %i.aiq = add <4 x i32> %wide.load1142.1, %wide.load1140.1
  store <4 x i32> %i.aip, ptr %i.ail, align 8, !noalias !38310
  store <4 x i32> %i.aiq, ptr %i.aim, align 8, !noalias !38310
  %index.next1143.1 = add nuw nsw i64 %index1138, 16 ; 2 uses
  %i.air = icmp eq i64 %index.next1143.1, 544
  br i1 %i.air, label %.lr.ph.split.us37.preheader.i.i263.i, label %vector.body1137, !llvm.loop !37957

.lr.ph.split.us37.preheader.i.i263.i:             ; preds = %vector.body1137
  %i.ais = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.q)
          to label %.noexc97.i266.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i264.i, !noalias !38289

.noexc97.i266.i:                                  ; preds = %.lr.ph.split.us37.preheader.i.i263.i
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ahx, i64 2184
  %i.aiu = load float, ptr %i.ait, align 8, !alias.scope !38312, !noalias !38313, !noundef !45
  %i.aiv = fsub float %i.ais, %i.aiu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !38303
  br label %.lr.ph.split.us37.i.i267.i

.lr.ph.split.us37.i.i267.i:                       ; preds = %.noexc98.i276.i, %.noexc97.i266.i
  %.sroa.01.129.us38.i.i268.i = phi i32 [ %.sroa.01.2.us42.i.i278.i, %.noexc98.i276.i ], [ %.sroa.01.0.us.i.i259.i, %.noexc97.i266.i ]
  %.sroa.03.028.us39.i.i269.i = phi float [ %.sroa.03.1.us41.i.i277.i, %.noexc98.i276.i ], [ %i.aiv, %.noexc97.i266.i ] ; 2 uses
  %.sroa.012.027.us40.i.i270.i = phi i64 [ %i.aiw, %.noexc98.i276.i ], [ 0, %.noexc97.i266.i ] ; 3 uses
  %i.aiw = add nuw nsw i64 %.sroa.012.027.us40.i.i270.i, 1 ; 2 uses
  %exitcond127.not.i.i271.i = icmp eq i64 %.sroa.012.027.us40.i.i270.i, %i.agb
end_hunk_1
