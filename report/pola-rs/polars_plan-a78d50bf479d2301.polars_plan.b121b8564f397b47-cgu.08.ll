Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.08?download=true
inline.NumInlined: 7193
inline.NumDeleted: 1889
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporal8datetime:bb.a
          to label %.noexc80 unwind label %bb.bz, !dbg !142622

.noexc80:                                         ; preds = %bb.bs
  unreachable, !dbg !142622

bb.bt:                                            ; preds = %bb.bx, %bb.br
  ret void, !dbg !142623

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB4_12DatetimeArgs10as_literal.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ge, ptr noundef nonnull align 16 dereferenceable(144) %i.ab, i64 144, i1 false), !dbg !142624
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 144, !dbg !142625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gg, ptr noundef nonnull align 16 dereferenceable(144) %i.aa, i64 144, i1 false), !dbg !142626
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 288, !dbg !142625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gh, ptr noundef nonnull align 16 dereferenceable(144) %i.z, i64 144, i1 false), !dbg !142627
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 432, !dbg !142625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gi, ptr noundef nonnull align 16 dereferenceable(144) %i.y, i64 144, i1 false), !dbg !142628
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 576, !dbg !142625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gj, ptr noundef nonnull align 16 dereferenceable(144) %i.x, i64 144, i1 false), !dbg !142629
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 720, !dbg !142625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gk, ptr noundef nonnull align 16 dereferenceable(144) %i.w, i64 144, i1 false), !dbg !142630
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 864, !dbg !142625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gl, ptr noundef nonnull align 16 dereferenceable(144) %i.v, i64 144, i1 false), !dbg !142631
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 1008, !dbg !142625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gm, ptr noundef nonnull align 16 dereferenceable(144) %i.t, i64 144, i1 false), !dbg !142632
  %.sroa.57.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.57, i64 6, !dbg !142633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.57.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !142633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !142634
  store i64 1, ptr %i.s, align 16, !dbg !142634
  %i.gn = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !142634
  store i64 1, ptr %i.gn, align 8, !dbg !142634
  %i.go = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !142634 ; 2 uses
  store i8 7, ptr %i.go, align 16, !dbg !142634
  %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !142634
  store i8 44, ptr %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !142634
  %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 25, !dbg !142634
  store i8 %i.gb, ptr %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 1, !dbg !142634
  %.sroa.01.sroa.4.sroa.6.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 26, !dbg !142634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.01.sroa.4.sroa.6.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.57, i64 30, i1 false), !dbg !142634
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 128, !dbg !142634
  store i64 8, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !142634
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 136, !dbg !142634
  store ptr %i.ge, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !142634
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 144, !dbg !142634
  store i64 8, ptr %.sroa.6.0..sroa_idx, align 16, !dbg !142634
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !dbg !142635, !noalias !142446
  %i.gp = call noundef align 16 dereferenceable_or_null(160) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 160, i64 noundef range(i64 1, 17) 16) #51, !dbg !142636, !noalias !142446 ; 3 uses
  %i.gq = icmp eq ptr %i.gp, null, !dbg !142637
  br i1 %i.gq, label %bb.bu, label %bb.bx, !dbg !142638, !prof !2303

bb.bu:                                            ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 160) #50
          to label %.noexc81 unwind label %bb.bv, !dbg !142639

.noexc81:                                         ; preds = %bb.bu
  unreachable, !dbg !142639

bb.bv:                                            ; preds = %bb.bu
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.go)
          to label %.critedge46 unwind label %bb.bw, !dbg !142640

bb.bw:                                            ; preds = %bb.bv
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !142641
  unreachable, !dbg !142641

bb.bx:                                            ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.gp, ptr noundef nonnull align 16 dereferenceable(160) %i.s, i64 160, i1 false), !dbg !142642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !142643
  %.sroa.096.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !142644
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %.sroa.096.sroa.4.0..sroa_idx, i8 0, i64 15, i1 false), !dbg !142645
  store ptr %i.gp, ptr %0, align 16, !dbg !142644
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !142644
  store i64 7308613718931431780, ptr %i.gt, align 8, !dbg !142644
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !142644
  store i8 -56, ptr %.sroa.497.0..sroa_idx, align 1, !dbg !142644
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !142644
  store i64 -9223372036854775807, ptr %i.gu, align 16, !dbg !142644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !142646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !142647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !142648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !142649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !142650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !142651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !142652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !142653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !142598
  br label %bb.bt, !dbg !142598

bb.by:                                            ; preds = %bb.cd, %bb.cb, %.critedge45, %.critedge43, %.critedge42, %.critedge41, %.critedge40, %.critedge39, %bb.cc, %.critedge37, %.critedge36, %.critedge35, %.critedge34, %.critedge33, %.critedge32, %.critedge31, %.critedge, %bb.bz
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !142654
  unreachable, !dbg !142654

bb.bz:                                            ; preds = %bb.bs
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.t) #53
          to label %bb.ca unwind label %bb.by, !dbg !142646

bb.ca:                                            ; preds = %bb.bz
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 23, !dbg !142655
  %i.gy = load i8, ptr %i.gx, align 1, !dbg !142655, !range !2425, !alias.scope !142450, !noundef !2277
  %cond.i = icmp eq i8 %i.gy, -40, !dbg !142655
  br i1 %cond.i, label %bb.cb, label %.critedge, !dbg !142655, !prof !2788

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.critedge unwind label %bb.by, !dbg !142656

.critedge:                                        ; preds = %bb.cb, %bb.ca
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.v) #53
          to label %.critedge31 unwind label %bb.by, !dbg !142648

.critedge31:                                      ; preds = %.critedge
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.w) #53
          to label %.critedge32 unwind label %bb.by, !dbg !142649

.critedge32:                                      ; preds = %.critedge31
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.x) #53
          to label %.critedge33 unwind label %bb.by, !dbg !142650

.critedge33:                                      ; preds = %.critedge32
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.y) #53
          to label %.critedge34 unwind label %bb.by, !dbg !142651

.critedge34:                                      ; preds = %.critedge33
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.z) #53
          to label %.critedge35 unwind label %bb.by, !dbg !142652

.critedge35:                                      ; preds = %.critedge34
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.aa) #53
          to label %.critedge36 unwind label %bb.by, !dbg !142653

.critedge36:                                      ; preds = %.critedge35
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ab) #53
          to label %.critedge46 unwind label %bb.by, !dbg !142598

.critedge37:                                      ; preds = %bb.k, %bb.r, %bb.y, %bb.af, %bb.am, %bb.at, %bb.ba, %bb.bq
  %eh.lpad-body79 = phi { ptr, i32 } [ %i.fs, %bb.bq ], [ %i.bj, %bb.k ], [ %i.bt, %bb.r ], [ %i.ds, %bb.ba ], [ %i.dh, %bb.at ], [ %i.cx, %bb.am ], [ %i.cn, %bb.af ], [ %i.cd, %bb.y ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %1) #53
          to label %bb.cc unwind label %bb.by, !dbg !142598

bb.cc:                                            ; preds = %.critedge37
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !142598
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.gz) #53
          to label %.critedge39 unwind label %bb.by, !dbg !142598

.critedge39:                                      ; preds = %bb.cc
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !142598
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.ha) #53
          to label %.critedge40 unwind label %bb.by, !dbg !142598

.critedge40:                                      ; preds = %.critedge39
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !142598
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.hb) #53
          to label %.critedge41 unwind label %bb.by, !dbg !142598

.critedge41:                                      ; preds = %.critedge40
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 576, !dbg !142598
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.hc) #53
          to label %.critedge42 unwind label %bb.by, !dbg !142598

.critedge42:                                      ; preds = %.critedge41
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 720, !dbg !142598
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.hd) #53
          to label %.critedge43 unwind label %bb.by, !dbg !142598

.critedge43:                                      ; preds = %.critedge42
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 864, !dbg !142598
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.he) #53
          to label %.critedge44 unwind label %bb.by, !dbg !142598

.critedge44:                                      ; preds = %.critedge43
  %i.hf = load i8, ptr %i.ad, align 1, !dbg !142657, !range !2425, !alias.scope !142451, !noundef !2277
  %cond.i86 = icmp eq i8 %i.hf, -40, !dbg !142657
  br i1 %cond.i86, label %bb.cd, label %.critedge45, !dbg !142657, !prof !2788

bb.cd:                                            ; preds = %.critedge44
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 1152, !dbg !142598
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hg)
          to label %.critedge45 unwind label %bb.by, !dbg !142658

.critedge46:                                      ; preds = %bb.bv, %.critedge36, %.critedge45
  %.pn.pn100 = phi { ptr, i32 } [ %eh.lpad-body79, %.critedge45 ], [ %i.gr, %bb.bv ], [ %i.gw, %.critedge36 ]
  resume { ptr, i32 } %.pn.pn100, !dbg !142654

.critedge45:                                      ; preds = %bb.cd, %.critedge44
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 1008, !dbg !142598
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.hh) #53
          to label %.critedge46 unwind label %bb.by, !dbg !142598
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporal8duration(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(1168) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !142659 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 90 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [144 x i8], align 16              ; 9 uses
  %i.f = alloca [72 x i8], align 8                ; 10 uses
  %i.g = alloca [144 x i8], align 16              ; 13 uses
  %i.h = alloca [144 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !142727
  %2 = getelementptr inbounds nuw i8, ptr %1, <8 x i64> <i64 0, i64 144, i64 288, i64 432, i64 576, i64 720, i64 864, i64 1008>, !dbg !142728
  %3 = getelementptr inbounds nuw i8, ptr %1, <8 x i64> <i64 0, i64 144, i64 288, i64 432, i64 576, i64 720, i64 864, i64 1008>, !dbg !142728
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !142728 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !142729 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !142730 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 576, !dbg !142731 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 720, !dbg !142732 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 864, !dbg !142733 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1008, !dbg !142734 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !142735 ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !142736 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !142737
  %i.s = load i64, ptr %i.r, align 16, !dbg !142737, !range !2795, !noalias !142720, !noundef !2277 ; 2 uses
  %i.t = icmp ne i64 %i.s, -9223372036854775795, !dbg !142737
  tail call void @llvm.assume(i1 %i.t), !dbg !142737
  %i.u = icmp eq i64 %i.s, -9223372036854775804, !dbg !142738
  br i1 %i.u, label %bb.b, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.i, !dbg !142738

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142739, !noalias !142720
  invoke void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue12to_any_value(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1)
          to label %.noexc unwind label %bb.q, !dbg !142740

.noexc:                                           ; preds = %bb.b
  %i.v = load i8, ptr %i.a, align 16, !dbg !142741, !range !2474, !noalias !142720, !noundef !2277
  switch i8 %i.v, label %.thread.i.i.i [
    i8 12, label %.split.i.i
    i8 6, label %.split3.i.i
    i8 7, label %.split4.i.i
    i8 35, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.i
  ], !dbg !142742

.split3.i.i:                                      ; preds = %.noexc
  %i.w = load i64, ptr %i.q, align 8, !dbg !142736, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc9 unwind label %bb.q, !dbg !142743

.noexc9:                                          ; preds = %.split3.i.i
  %i.x = icmp slt i64 %i.w, 0, !dbg !142744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.x, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.i, !dbg !142746

.split4.i.i:                                      ; preds = %.noexc
  %i.y = load i128, ptr %i.p, align 16, !dbg !142735, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc10 unwind label %bb.q, !dbg !142743

.noexc10:                                         ; preds = %.split4.i.i
  %i.z = icmp ugt i128 %i.y, 9223372036854775807, !dbg !142747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.z, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.i, !dbg !142746

.split.i.i:                                       ; preds = %.noexc
  %i.aa = load i128, ptr %i.p, align 16, !dbg !142748, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc11 unwind label %bb.q, !dbg !142743

.noexc11:                                         ; preds = %.split.i.i
  %i.ab = add i128 %i.aa, -9223372036854775808, !dbg !142749
  %spec.select.i.i.i = icmp ult i128 %i.ab, -18446744073709551616, !dbg !142749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %spec.select.i.i.i, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.i, !dbg !142746

.thread.i.i.i:                                    ; preds = %.noexc
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.i unwind label %bb.q, !dbg !142743

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.i: ; preds = %.thread.i.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.i, !dbg !142750

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.i: ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.i, %.noexc11, %.noexc10, %.noexc9, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !142737
  %i.ad = load i64, ptr %i.ac, align 16, !dbg !142737, !range !2795, !noalias !142720, !noundef !2277 ; 2 uses
  %i.ae = icmp ne i64 %i.ad, -9223372036854775795, !dbg !142737
  call void @llvm.assume(i1 %i.ae), !dbg !142737
  %i.af = icmp eq i64 %i.ad, -9223372036854775804, !dbg !142738
  br i1 %i.af, label %bb.c, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.1.i, !dbg !142738

bb.c:                                             ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142739, !noalias !142720
  invoke void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue12to_any_value(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.i)
          to label %.noexc13 unwind label %bb.q, !dbg !142740

.noexc13:                                         ; preds = %bb.c
  %i.ag = load i8, ptr %i.a, align 16, !dbg !142741, !range !2474, !noalias !142720, !noundef !2277
  switch i8 %i.ag, label %.thread.i.i.1.i [
    i8 12, label %.split.i.1.i
    i8 6, label %.split3.i.1.i
    i8 7, label %.split4.i.1.i
    i8 35, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.1.i
  ], !dbg !142742

.split4.i.1.i:                                    ; preds = %.noexc13
  %i.ah = load i128, ptr %i.p, align 16, !dbg !142735, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc14 unwind label %bb.q, !dbg !142743

.noexc14:                                         ; preds = %.split4.i.1.i
  %i.ai = icmp ugt i128 %i.ah, 9223372036854775807, !dbg !142747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.ai, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.1.i, !dbg !142746

.split3.i.1.i:                                    ; preds = %.noexc13
  %i.aj = load i64, ptr %i.q, align 8, !dbg !142736, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc15 unwind label %bb.q, !dbg !142743

.noexc15:                                         ; preds = %.split3.i.1.i
  %i.ak = icmp slt i64 %i.aj, 0, !dbg !142744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.ak, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.1.i, !dbg !142746

.split.i.1.i:                                     ; preds = %.noexc13
  %i.al = load i128, ptr %i.p, align 16, !dbg !142748, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc16 unwind label %bb.q, !dbg !142743

.noexc16:                                         ; preds = %.split.i.1.i
  %i.am = add i128 %i.al, -9223372036854775808, !dbg !142749
  %spec.select.i.i.1.i = icmp ult i128 %i.am, -18446744073709551616, !dbg !142749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %spec.select.i.i.1.i, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.1.i, !dbg !142746

.thread.i.i.1.i:                                  ; preds = %.noexc13
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.1.i unwind label %bb.q, !dbg !142743

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.1.i: ; preds = %.thread.i.i.1.i, %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.1.i, !dbg !142750

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.1.i: ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.1.i, %.noexc16, %.noexc15, %.noexc14, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !142737
  %i.ao = load i64, ptr %i.an, align 16, !dbg !142737, !range !2795, !noalias !142720, !noundef !2277 ; 2 uses
  %i.ap = icmp ne i64 %i.ao, -9223372036854775795, !dbg !142737
  call void @llvm.assume(i1 %i.ap), !dbg !142737
  %i.aq = icmp eq i64 %i.ao, -9223372036854775804, !dbg !142738
  br i1 %i.aq, label %bb.d, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.2.i, !dbg !142738

bb.d:                                             ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142739, !noalias !142720
  invoke void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue12to_any_value(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.j)
          to label %.noexc18 unwind label %bb.q, !dbg !142740

.noexc18:                                         ; preds = %bb.d
  %i.ar = load i8, ptr %i.a, align 16, !dbg !142741, !range !2474, !noalias !142720, !noundef !2277
  switch i8 %i.ar, label %.thread.i.i.2.i [
    i8 12, label %.split.i.2.i
    i8 6, label %.split3.i.2.i
    i8 7, label %.split4.i.2.i
    i8 35, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.2.i
  ], !dbg !142742

.split4.i.2.i:                                    ; preds = %.noexc18
  %i.as = load i128, ptr %i.p, align 16, !dbg !142735, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc19 unwind label %bb.q, !dbg !142743

.noexc19:                                         ; preds = %.split4.i.2.i
  %i.at = icmp ugt i128 %i.as, 9223372036854775807, !dbg !142747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.at, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.2.i, !dbg !142746

.split3.i.2.i:                                    ; preds = %.noexc18
  %i.au = load i64, ptr %i.q, align 8, !dbg !142736, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc20 unwind label %bb.q, !dbg !142743

.noexc20:                                         ; preds = %.split3.i.2.i
  %i.av = icmp slt i64 %i.au, 0, !dbg !142744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.av, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.2.i, !dbg !142746

.split.i.2.i:                                     ; preds = %.noexc18
  %i.aw = load i128, ptr %i.p, align 16, !dbg !142748, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc21 unwind label %bb.q, !dbg !142743

.noexc21:                                         ; preds = %.split.i.2.i
  %i.ax = add i128 %i.aw, -9223372036854775808, !dbg !142749
  %spec.select.i.i.2.i = icmp ult i128 %i.ax, -18446744073709551616, !dbg !142749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %spec.select.i.i.2.i, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.2.i, !dbg !142746

.thread.i.i.2.i:                                  ; preds = %.noexc18
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.2.i unwind label %bb.q, !dbg !142743

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.2.i: ; preds = %.thread.i.i.2.i, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.2.i, !dbg !142750

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.2.i: ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.2.i, %.noexc21, %.noexc20, %.noexc19, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.1.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 544, !dbg !142737
  %i.az = load i64, ptr %i.ay, align 16, !dbg !142737, !range !2795, !noalias !142720, !noundef !2277 ; 2 uses
  %i.ba = icmp ne i64 %i.az, -9223372036854775795, !dbg !142737
  call void @llvm.assume(i1 %i.ba), !dbg !142737
  %i.bb = icmp eq i64 %i.az, -9223372036854775804, !dbg !142738
  br i1 %i.bb, label %bb.e, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.3.i, !dbg !142738

bb.e:                                             ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142739, !noalias !142720
  invoke void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue12to_any_value(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.k)
          to label %.noexc23 unwind label %bb.q, !dbg !142740

.noexc23:                                         ; preds = %bb.e
  %i.bc = load i8, ptr %i.a, align 16, !dbg !142741, !range !2474, !noalias !142720, !noundef !2277
  switch i8 %i.bc, label %.thread.i.i.3.i [
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporal8duration:bb.a
.noexc31:                                         ; preds = %.split.i.4.i
  %i.bt = add i128 %i.bs, -9223372036854775808, !dbg !142749
  %spec.select.i.i.4.i = icmp ult i128 %i.bt, -18446744073709551616, !dbg !142749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %spec.select.i.i.4.i, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.4.i, !dbg !142746

.thread.i.i.4.i:                                  ; preds = %.noexc28
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.4.i unwind label %bb.q, !dbg !142743

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.4.i: ; preds = %.thread.i.i.4.i, %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.4.i, !dbg !142750

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.4.i: ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.4.i, %.noexc31, %.noexc30, %.noexc29, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.3.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 832, !dbg !142737
  %i.bv = load i64, ptr %i.bu, align 16, !dbg !142737, !range !2795, !noalias !142720, !noundef !2277 ; 2 uses
  %i.bw = icmp ne i64 %i.bv, -9223372036854775795, !dbg !142737
  call void @llvm.assume(i1 %i.bw), !dbg !142737
  %i.bx = icmp eq i64 %i.bv, -9223372036854775804, !dbg !142738
  br i1 %i.bx, label %bb.g, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.5.i, !dbg !142738

bb.g:                                             ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142739, !noalias !142720
  invoke void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue12to_any_value(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.m)
          to label %.noexc33 unwind label %bb.q, !dbg !142740

.noexc33:                                         ; preds = %bb.g
  %i.by = load i8, ptr %i.a, align 16, !dbg !142741, !range !2474, !noalias !142720, !noundef !2277
  switch i8 %i.by, label %.thread.i.i.5.i [
    i8 12, label %.split.i.5.i
    i8 6, label %.split3.i.5.i
    i8 7, label %.split4.i.5.i
    i8 35, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.5.i
  ], !dbg !142742

.split4.i.5.i:                                    ; preds = %.noexc33
  %i.bz = load i128, ptr %i.p, align 16, !dbg !142735, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc34 unwind label %bb.q, !dbg !142743

.noexc34:                                         ; preds = %.split4.i.5.i
  %i.ca = icmp ugt i128 %i.bz, 9223372036854775807, !dbg !142747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.ca, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.5.i, !dbg !142746

.split3.i.5.i:                                    ; preds = %.noexc33
  %i.cb = load i64, ptr %i.q, align 8, !dbg !142736, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc35 unwind label %bb.q, !dbg !142743

.noexc35:                                         ; preds = %.split3.i.5.i
  %i.cc = icmp slt i64 %i.cb, 0, !dbg !142744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.cc, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.5.i, !dbg !142746

.split.i.5.i:                                     ; preds = %.noexc33
  %i.cd = load i128, ptr %i.p, align 16, !dbg !142748, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc36 unwind label %bb.q, !dbg !142743

.noexc36:                                         ; preds = %.split.i.5.i
  %i.ce = add i128 %i.cd, -9223372036854775808, !dbg !142749
  %spec.select.i.i.5.i = icmp ult i128 %i.ce, -18446744073709551616, !dbg !142749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %spec.select.i.i.5.i, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.5.i, !dbg !142746

.thread.i.i.5.i:                                  ; preds = %.noexc33
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.5.i unwind label %bb.q, !dbg !142743

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.5.i: ; preds = %.thread.i.i.5.i, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.5.i, !dbg !142750

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.5.i: ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.5.i, %.noexc36, %.noexc35, %.noexc34, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.4.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 976, !dbg !142737
  %i.cg = load i64, ptr %i.cf, align 16, !dbg !142737, !range !2795, !noalias !142720, !noundef !2277 ; 2 uses
  %i.ch = icmp ne i64 %i.cg, -9223372036854775795, !dbg !142737
  call void @llvm.assume(i1 %i.ch), !dbg !142737
  %i.ci = icmp eq i64 %i.cg, -9223372036854775804, !dbg !142738
  br i1 %i.ci, label %bb.h, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i, !dbg !142738

bb.h:                                             ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142739, !noalias !142720
  invoke void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue12to_any_value(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.n)
          to label %.noexc38 unwind label %bb.q, !dbg !142740

.noexc38:                                         ; preds = %bb.h
  %i.cj = load i8, ptr %i.a, align 16, !dbg !142741, !range !2474, !noalias !142720, !noundef !2277
  switch i8 %i.cj, label %.thread.i.i.6.i [
    i8 12, label %.split.i.6.i
    i8 6, label %.split3.i.6.i
    i8 7, label %.split4.i.6.i
    i8 35, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.6.i
  ], !dbg !142742

.split4.i.6.i:                                    ; preds = %.noexc38
  %i.ck = load i128, ptr %i.p, align 16, !dbg !142735, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc39 unwind label %bb.q, !dbg !142743

.noexc39:                                         ; preds = %.split4.i.6.i
  %i.cl = icmp ugt i128 %i.ck, 9223372036854775807, !dbg !142747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.cl, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i, !dbg !142746

.split3.i.6.i:                                    ; preds = %.noexc38
  %i.cm = load i64, ptr %i.q, align 8, !dbg !142736, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc40 unwind label %bb.q, !dbg !142743

.noexc40:                                         ; preds = %.split3.i.6.i
  %i.cn = icmp slt i64 %i.cm, 0, !dbg !142744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.cn, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i, !dbg !142746

.split.i.6.i:                                     ; preds = %.noexc38
  %i.co = load i128, ptr %i.p, align 16, !dbg !142748, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc41 unwind label %bb.q, !dbg !142743

.noexc41:                                         ; preds = %.split.i.6.i
  %i.cp = add i128 %i.co, -9223372036854775808, !dbg !142749
  %spec.select.i.i.6.i = icmp ult i128 %i.cp, -18446744073709551616, !dbg !142749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %spec.select.i.i.6.i, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i, !dbg !142746

.thread.i.i.6.i:                                  ; preds = %.noexc38
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.6.i unwind label %bb.q, !dbg !142743

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.6.i: ; preds = %.thread.i.i.6.i, %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i, !dbg !142750

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i: ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.6.i, %.noexc41, %.noexc40, %.noexc39, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.5.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1120, !dbg !142737
  %i.cr = load i64, ptr %i.cq, align 16, !dbg !142737, !range !2795, !noalias !142720, !noundef !2277 ; 2 uses
  %i.cs = icmp ne i64 %i.cr, -9223372036854775795, !dbg !142737
  call void @llvm.assume(i1 %i.cs), !dbg !142737
  %i.ct = icmp eq i64 %i.cr, -9223372036854775804, !dbg !142738
  br i1 %i.ct, label %bb.i, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !142738

bb.i:                                             ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142739, !noalias !142720
  invoke void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue12to_any_value(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.o)
          to label %.noexc43 unwind label %bb.q, !dbg !142740

.noexc43:                                         ; preds = %bb.i
  %i.cu = load i8, ptr %i.a, align 16, !dbg !142741, !range !2474, !noalias !142720, !noundef !2277
  switch i8 %i.cu, label %.thread.i.i.7.i [
    i8 12, label %.split.i.7.i
    i8 6, label %.split3.i.7.i
    i8 7, label %.split4.i.7.i
    i8 35, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.7.i
  ], !dbg !142742

.split4.i.7.i:                                    ; preds = %.noexc43
  %i.cv = load i128, ptr %i.p, align 16, !dbg !142735, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc44 unwind label %bb.q, !dbg !142743

.noexc44:                                         ; preds = %.split4.i.7.i
  %i.cw = icmp ugt i128 %i.cv, 9223372036854775807, !dbg !142747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.cw, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !142746

.split3.i.7.i:                                    ; preds = %.noexc43
  %i.cx = load i64, ptr %i.q, align 8, !dbg !142736, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc45 unwind label %bb.q, !dbg !142743

.noexc45:                                         ; preds = %.split3.i.7.i
  %i.cy = icmp slt i64 %i.cx, 0, !dbg !142744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %i.cy, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !142746

.split.i.7.i:                                     ; preds = %.noexc43
  %i.cz = load i128, ptr %i.p, align 16, !dbg !142748, !noalias !142720, !noundef !2277
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc46 unwind label %bb.q, !dbg !142743

.noexc46:                                         ; preds = %.split.i.7.i
  %i.da = add i128 %i.cz, -9223372036854775808, !dbg !142749
  %spec.select.i.i.7.i = icmp ult i128 %i.da, -18446744073709551616, !dbg !142749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br i1 %spec.select.i.i.7.i, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !142746

.thread.i.i.7.i:                                  ; preds = %.noexc43
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.7.i unwind label %bb.q, !dbg !142743

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.7.i: ; preds = %.thread.i.i.7.i, %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142745, !noalias !142720
  br label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !142750

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i: ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.7.i, %.noexc46, %.noexc45, %.noexc44, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !142751, !noalias !142721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !142751, !noalias !142721
  store <8 x ptr> %3, ptr %i.c, align 8, !dbg !142751, !noalias !142721
  invoke void @_RINvNtCs2mZqlW55729_12polars_utils5array7try_mapRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprnKj8_NCNvMs1_NtNtBP_9functions8temporalNtB1J_12DurationArgs10as_literal0EBR_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
          to label %.noexc48 unwind label %bb.q, !dbg !142751

.noexc48:                                         ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !142751, !noalias !142721
  %i.db = load i128, ptr %i.g, align 16, !dbg !142751, !range !2712, !noalias !142721, !noundef !2277
  %i.dc = trunc nuw i128 %i.db to i1, !dbg !142752
  br i1 %i.dc, label %bb.j, label %bb.k, !dbg !142752

bb.j:                                             ; preds = %.noexc48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !142753
  %.sroa.01.0.copyload.i = load i128, ptr %i.dd, align 16, !dbg !142753, !noalias !142721
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !142753
  %.sroa.4.0.copyload.i = load i128, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !142753, !noalias !142721
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !142753
  %.sroa.5.0.copyload.i = load i128, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !142753, !noalias !142721
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !142753
  %.sroa.6.0.copyload.i = load i128, ptr %.sroa.6.0..sroa_idx.i, align 16, !dbg !142753, !noalias !142721
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80, !dbg !142753
  %.sroa.7.0.copyload.i = load i128, ptr %.sroa.7.0..sroa_idx.i, align 16, !dbg !142753, !noalias !142721
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96, !dbg !142753
  %.sroa.8.0.copyload.i = load i128, ptr %.sroa.8.0..sroa_idx.i, align 16, !dbg !142753, !noalias !142721
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112, !dbg !142753
  %.sroa.9.0.copyload.i = load i128, ptr %.sroa.9.0..sroa_idx.i, align 16, !dbg !142753, !noalias !142721
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !142753
  %.sroa.10.0.copyload.i = load i128, ptr %.sroa.10.0..sroa_idx.i, align 16, !dbg !142753, !noalias !142721
  %i.de = mul i128 %.sroa.01.0.copyload.i, 604800000000000, !dbg !142754
  %i.df = mul i128 %.sroa.4.0.copyload.i, 86400000000000, !dbg !142755
  %i.dg = add i128 %i.df, %i.de, !dbg !142754
  %i.dh = mul i128 %.sroa.5.0.copyload.i, 3600000000000, !dbg !142756
  %i.di = add i128 %i.dg, %i.dh, !dbg !142754
  %i.dj = mul i128 %.sroa.6.0.copyload.i, 60000000000, !dbg !142757
  %i.dk = add i128 %i.di, %i.dj, !dbg !142754
  %i.dl = mul i128 %.sroa.7.0.copyload.i, 1000000000, !dbg !142758
  %i.dm = add i128 %i.dk, %i.dl, !dbg !142754
  %i.dn = mul i128 %.sroa.8.0.copyload.i, 1000000, !dbg !142759
  %i.do = add i128 %i.dm, %i.dn, !dbg !142754
  %i.dp = mul i128 %.sroa.9.0.copyload.i, 1000, !dbg !142760
  %i.dq = add i128 %i.do, %i.dp, !dbg !142754
  %i.dr = add i128 %i.dq, %.sroa.10.0.copyload.i, !dbg !142754 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 1152, !dbg !142761
  %i.dt = load i8, ptr %i.ds, align 16, !dbg !142761, !range !2509, !noalias !142721, !noundef !2277 ; 2 uses
  %extract.t.i = trunc i128 %i.dr to i64, !dbg !142762
  switch i8 %i.dt, label %default.unreachable [
    i8 1, label %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit.i.i
    i8 2, label %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit9.i.i
    i8 0, label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i
  ], !dbg !142762

default.unreachable:                              ; preds = %bb.l, %bb.j
  unreachable

_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit.i.i: ; preds = %bb.j
  %i.du = sdiv i128 %i.dr, 1000, !dbg !142763
  %extract.t45.i = trunc i128 %i.du to i64, !dbg !142764
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !142764

_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit9.i.i: ; preds = %bb.j
  %i.dv = sdiv i128 %i.dr, 1000000, !dbg !142765
  %extract.t44.i = trunc i128 %i.dv to i64, !dbg !142766
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !142766

_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit9.i.i, %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit.i.i, %bb.j
  %.sroa.0.0.i.off0.i = phi i64 [ %extract.t.i, %bb.j ], [ %extract.t44.i, %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit9.i.i ], [ %extract.t45.i, %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !142767, !noalias !142721
  br label %bb.p, !dbg !142768

bb.k:                                             ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !142767, !noalias !142721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !142769, !noalias !142721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !142769, !noalias !142721
  store <8 x ptr> %2, ptr %i.b, align 8, !dbg !142769, !noalias !142721
  invoke void @_RINvNtCs2mZqlW55729_12polars_utils5array7try_mapRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprdKj8_NCNvMs1_NtNtBP_9functions8temporalNtB1J_12DurationArgs10as_literals_0EBR_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
          to label %.noexc49 unwind label %bb.q, !dbg !142769

.noexc49:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !142769, !noalias !142721
  %i.dw = load i64, ptr %i.f, align 8, !dbg !142769, !range !2301, !noalias !142721, !noundef !2277
  %i.dx = trunc nuw i64 %i.dw to i1, !dbg !142770
  br i1 %i.dx, label %bb.l, label %bb.o, !dbg !142770

bb.l:                                             ; preds = %.noexc49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !142771
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !142771
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !142771
  %.sroa.98.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !142771
  %.sroa.109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64, !dbg !142771
  %i.dz = load <2 x double>, ptr %i.dy, align 8, !dbg !142771, !noalias !142721
  %i.ea = fmul <2 x double> %i.dz, <double 7.000000e+00, double 1.000000e+00>, !dbg !142772
  %i.eb = load <2 x double>, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !142771, !noalias !142721
  %i.ec = load <2 x double>, ptr %.sroa.76.0..sroa_idx.i, align 8, !dbg !142771, !noalias !142721
  %.sroa.109.0.copyload.i = load double, ptr %.sroa.109.0..sroa_idx.i, align 8, !dbg !142771, !noalias !142721
  %i.ed = load <2 x double>, ptr %.sroa.98.0..sroa_idx.i, align 8, !dbg !142771, !noalias !142721
  %i.ee = fmul <2 x double> %i.eb, <double 3.600000e+03, double 6.000000e+01>, !dbg !142773
  %i.ef = shufflevector <2 x double> %i.ea, <2 x double> %i.ed, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison>, !dbg !142772
  %i.eg = shufflevector <2 x double> %i.ec, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !142772
  %i.eh = shufflevector <8 x double> %i.ef, <8 x double> %i.eg, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 6, i32 poison>, !dbg !142772
  %i.ei = shufflevector <2 x double> %i.ee, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !142772
  %i.ej = shufflevector <8 x double> %i.eh, <8 x double> %i.ei, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 poison>, !dbg !142772
  %i.ek = fmul <8 x double> %i.ej, <double 8.640000e+13, double 8.640000e+13, double 1.000000e+09, double 1.000000e+09, double 1.000000e+09, double 1.000000e+06, double 1.000000e+03, double poison>, !dbg !142772 ; 7 uses
  %i.el = extractelement <8 x double> %i.ek, i64 0, !dbg !142772
  %i.em = extractelement <8 x double> %i.ek, i64 1, !dbg !142772
  %i.en = fadd double %i.el, %i.em, !dbg !142772
  %i.eo = extractelement <8 x double> %i.ek, i64 2, !dbg !142772
  %i.ep = fadd double %i.en, %i.eo, !dbg !142772
  %i.eq = extractelement <8 x double> %i.ek, i64 3, !dbg !142772
  %i.er = fadd double %i.ep, %i.eq, !dbg !142772
  %i.es = extractelement <8 x double> %i.ek, i64 4, !dbg !142772
  %i.et = fadd double %i.es, %i.er, !dbg !142772
  %i.eu = extractelement <8 x double> %i.ek, i64 5, !dbg !142772
  %i.ev = fadd double %i.eu, %i.et, !dbg !142772
  %i.ew = extractelement <8 x double> %i.ek, i64 6, !dbg !142772
  %i.ex = fadd double %i.ew, %i.ev, !dbg !142772
  %i.ey = fadd double %.sroa.109.0.copyload.i, %i.ex, !dbg !142772 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 1152, !dbg !142774
  %i.fa = load i8, ptr %i.ez, align 16, !dbg !142774, !range !2509, !noalias !142721, !noundef !2277 ; 2 uses
  switch i8 %i.fa, label %default.unreachable [
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 0, label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i
  ], !dbg !142775

bb.m:                                             ; preds = %bb.l
  %i.fb = fdiv double %i.ey, 1.000000e+03, !dbg !142776
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !142777

bb.n:                                             ; preds = %bb.l
  %i.fc = fdiv double %i.ey, 1.000000e+06, !dbg !142778
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !142779

_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.0.0.i31.i = phi double [ %i.ey, %bb.l ], [ %i.fc, %bb.n ], [ %i.fb, %bb.m ], !dbg !142780
  %i.fd = call i64 @llvm.fptosi.sat.i64.f64(double %.sroa.0.0.i31.i), !dbg !142781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !142782, !noalias !142721
  br label %bb.p, !dbg !142783

bb.o:                                             ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !142782, !noalias !142721
  br label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, !dbg !142784

bb.p:                                             ; preds = %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i
  %i.fe = phi i8 [ %i.dt, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i ], [ %i.fa, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i ], !dbg !142785 ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.i.off0.i, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i ], [ %i.fd, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i ], !dbg !142786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !142787, !noalias !142721
  store i8 20, ptr %i.e, align 16, !dbg !142787, !noalias !142721
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !142787
  store i8 %i.fe, ptr %.sroa.418.0..sroa_idx.i, align 1, !dbg !142787, !noalias !142721
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !142787
  store i8 19, ptr %.sroa.620.0..sroa_idx.i, align 16, !dbg !142787, !noalias !142721
  %.sroa.620.sroa.4.0..sroa.620.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 49, !dbg !142787
  store i8 %i.fe, ptr %.sroa.620.sroa.4.0..sroa.620.0..sroa_idx.sroa_idx.i, align 1, !dbg !142787, !noalias !142721
  %.sroa.620.sroa.6.0..sroa.620.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !142787
  store i64 %.sroa.0.0.i, ptr %.sroa.620.sroa.6.0..sroa.620.0..sroa_idx.sroa_idx.i, align 8, !dbg !142787, !noalias !142721
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !142787
  store i64 -9223372036854775804, ptr %i.ff, align 16, !dbg !142787, !noalias !142721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !142788, !noalias !142721
  %.sroa.040.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !142789
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.040.sroa.4.0..sroa_idx.i, i8 0, i64 15, i1 false), !dbg !142790, !noalias !142721
  store i64 7957695015158969700, ptr %i.d, align 8, !dbg !142789, !noalias !142721
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !142789
  store i8 -56, ptr %.sroa.441.0..sroa_idx.i, align 1, !dbg !142789, !noalias !142721
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr5aliasNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEB5_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.h, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit unwind label %bb.q, !dbg !142791

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.k, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, %.thread.i.i.7.i, %.split.i.7.i, %.split3.i.7.i, %.split4.i.7.i, %bb.i, %.thread.i.i.6.i, %.split.i.6.i, %.split3.i.6.i, %.split4.i.6.i, %bb.h, %.thread.i.i.5.i, %.split.i.5.i, %.split3.i.5.i, %.split4.i.5.i, %bb.g, %.thread.i.i.4.i, %.split.i.4.i, %.split3.i.4.i, %.split4.i.4.i, %bb.f, %.thread.i.i.3.i, %.split.i.3.i, %.split3.i.3.i, %.split4.i.3.i, %bb.e, %.thread.i.i.2.i, %.split.i.2.i, %.split3.i.2.i, %.split4.i.2.i, %bb.d, %.thread.i.i.1.i, %.split.i.1.i, %.split3.i.1.i, %.split4.i.1.i, %bb.c, %.thread.i.i.i, %.split.i.i, %.split4.i.i, %.split3.i.i, %bb.b
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %1) #53
          to label %bb.v unwind label %bb.u, !dbg !142792

_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !142793, !noalias !142721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !142793, !noalias !142721
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %.pre = load i64, ptr %.phi.trans.insert, align 16, !dbg !142727, !range !2619
  %i.fh = icmp eq i64 %.pre, -9223372036854775780, !dbg !142727
  br i1 %i.fh, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %bb.r, !dbg !142794

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.h, i64 144, i1 false), !dbg !142795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !142796
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporal12DurationArgsEBO_(ptr noalias noundef align 16 dereferenceable(1168) %1), !dbg !142792
  br label %bb.t, !dbg !142792

_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread: ; preds = %.noexc9, %.noexc10, %.noexc11, %.noexc14, %.noexc15, %.noexc16, %.noexc19, %.noexc20, %.noexc21, %.noexc24, %.noexc25, %.noexc26, %.noexc29, %.noexc30, %.noexc31, %.noexc34, %.noexc35, %.noexc36, %.noexc39, %.noexc40, %.noexc41, %.noexc44, %.noexc45, %.noexc46, %bb.o, %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !142796
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !dbg !142797
  %i.fi = call noundef align 16 dereferenceable_or_null(1152) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 1152, i64 noundef range(i64 1, 17) 16) #51, !dbg !142798 ; 10 uses
  %i.fj = icmp eq ptr %i.fi, null, !dbg !142799
  br i1 %i.fj, label %bb.s, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !142800, !prof !2303

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 1152) #50
          to label %.noexc51 unwind label %bb.q, !dbg !142801

.noexc51:                                         ; preds = %bb.s
  unreachable, !dbg !142801

bb.t:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, %bb.r
  ret void, !dbg !142802

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fi, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !142803
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 144, !dbg !142804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fk, ptr noundef nonnull align 16 dereferenceable(144) %i.i, i64 144, i1 false), !dbg !142805
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 288, !dbg !142804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fl, ptr noundef nonnull align 16 dereferenceable(144) %i.j, i64 144, i1 false), !dbg !142806
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 432, !dbg !142804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fm, ptr noundef nonnull align 16 dereferenceable(144) %i.k, i64 144, i1 false), !dbg !142807
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 576, !dbg !142804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fn, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false), !dbg !142808
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 720, !dbg !142804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fo, ptr noundef nonnull align 16 dereferenceable(144) %i.m, i64 144, i1 false), !dbg !142809
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 864, !dbg !142804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fp, ptr noundef nonnull align 16 dereferenceable(144) %i.n, i64 144, i1 false), !dbg !142810
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 1008, !dbg !142804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fq, ptr noundef nonnull align 16 dereferenceable(144) %i.o, i64 144, i1 false), !dbg !142811
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 1152, !dbg !142812
  %i.fs = load i8, ptr %i.fr, align 16, !dbg !142812, !range !2509, !noundef !2277
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !142813
  store i64 8, ptr %i.ft, align 16, !dbg !142813
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !142813
  store ptr %i.fi, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !142813
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !142813
  store i64 8, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !142813
  store i8 7, ptr %0, align 16, !dbg !142813
  %.sroa.42.sroa.3.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !142813
  store i8 15, ptr %.sroa.42.sroa.3.0..sroa.42.0..sroa_idx.sroa_idx, align 8, !dbg !142813
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !142813
  store i8 %i.fs, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 1, !dbg !142813
  br label %bb.t, !dbg !142792

bb.u:                                             ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.q
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !142814
  unreachable, !dbg !142814

bb.v:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.i) #53
          to label %bb.w unwind label %bb.u, !dbg !142792

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.j) #53
          to label %bb.x unwind label %bb.u, !dbg !142792

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.k) #53
          to label %bb.y unwind label %bb.u, !dbg !142792

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.l) #53
          to label %bb.z unwind label %bb.u, !dbg !142792

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.m) #53
          to label %bb.aa unwind label %bb.u, !dbg !142792

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.n) #53
          to label %bb.ab unwind label %bb.u, !dbg !142792

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.o) #53
          to label %bb.ac unwind label %bb.u, !dbg !142792

bb.ac:                                            ; preds = %bb.ab
  resume { ptr, i32 } %i.fg, !dbg !142814
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion11materialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 16 captures(address, read_provenance) %1) unnamed_addr #1 !dbg !142815 {
end_hunk_1
begin_hunk_2_@_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a

bb.ap:                                            ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !163695, !noalias !163578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !163696
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !163697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !163698
  invoke fastcc void @_RNvXsf_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprINtB5_9LazySerdeINtNtNtB5_9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtB14_3agg12AnonymousAggEL_EEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneB9_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noundef nonnull align 8 %i.dt)
          to label %bb.ar unwind label %bb.aq, !dbg !163698

bb.aq:                                            ; preds = %bb.ap
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.by) #53
          to label %.body14 unwind label %bb.am, !dbg !163694

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !163699
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !163699
  store ptr %i.by, ptr %i.dv, align 16, !dbg !163699
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !163699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dw, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !dbg !163699
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !163699
  store i64 -9223372036854775795, ptr %i.dx, align 16, !dbg !163699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !163694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !163694
  br label %bb.ad, !dbg !163609

bb.as:                                            ; preds = %.body17, %bb.at
  %.pn = phi { ptr, i32 } [ %eh.lpad-body18, %.body17 ], [ %i.dy, %bb.at ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #53
          to label %bb.an unwind label %bb.am, !dbg !163700

bb.at:                                            ; preds = %bb.v
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.au:                                            ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !163701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !163594
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !163702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.j, ptr noundef nonnull align 8 dereferenceable(6) %i.ea, i64 6, i1 false), !dbg !163702
  %.val11 = load ptr, ptr %i.dz, align 16, !dbg !163703 ; 4 uses
  %i.eb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE13new_uninit_inCsfcROwRM8ZtH_11polars_plan()
          to label %.noexc16 unwind label %bb.ay, !dbg !163704 ; 3 uses

.noexc16:                                         ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !163595), !dbg !163705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !163706
  %i.ec = getelementptr inbounds nuw i8, ptr %.val11, i64 23, !dbg !163706
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !163706, !range !2341, !alias.scope !163596, !noalias !163597, !noundef !2277
  %i.ee = icmp eq i8 %i.ed, -40, !dbg !163707
  br i1 %i.ee, label %bb.av, label %bb.aw, !dbg !163707

bb.av:                                            ; preds = %.noexc16
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val11) #55
          to label %bb.az unwind label %bb.ax, !dbg !163708

bb.aw:                                            ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val11, i64 24, i1 false), !dbg !163709
  br label %bb.az, !dbg !163710

bb.ax:                                            ; preds = %bb.av
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eb, i64 noundef 24, i64 noundef 8) #51, !dbg !163711
  br label %.body17, !dbg !163712

bb.ay:                                            ; preds = %bb.au
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body17, !dbg !163700

.body17:                                          ; preds = %bb.ax, %bb.ay
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.eg, %bb.ay ], [ %i.ef, %bb.ax ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9LazySerdeINtNtNtBJ_9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB1A_19AnonymousColumnsUdfEL_EEEEBN_(ptr noalias noundef align 8 dereferenceable(72) %i.k) #53
          to label %bb.as unwind label %bb.am, !dbg !163700

bb.az:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !163713, !noalias !163595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !163714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !163715
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !163715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eh, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !163715
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !163715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ei, ptr noundef nonnull align 2 dereferenceable(6) %i.j, i64 6, i1 false), !dbg !163715
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !163715
  store ptr %i.eb, ptr %i.ej, align 16, !dbg !163715
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !163715
  store i64 -9223372036854775794, ptr %i.ek, align 16, !dbg !163715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !163700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !163700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !163700
  br label %bb.ad, !dbg !163609

bb.ba:                                            ; preds = %bb.y
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #53
          to label %bb.an unwind label %bb.am, !dbg !163716

bb.bb:                                            ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !163717
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !163718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.en, ptr noundef nonnull align 8 dereferenceable(6) %i.em, i64 6, i1 false), !dbg !163717
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !163718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !163718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.h, i64 112, i1 false), !dbg !163718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !163716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !163716
  br label %bb.ad, !dbg !163609

bb.bc:                                            ; preds = %bb.z, %bb.bd
  %.sroa.5.sroa.0.0 = phi i64 [ undef, %bb.z ], [ %i.ew, %bb.bd ], !dbg !163585
  %.sroa.0.0 = phi i64 [ undef, %bb.z ], [ %.val.i, %bb.bd ], !dbg !163585
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !163719
  %i.eq = load i8, ptr %i.ep, align 8, !dbg !163719, !range !2509, !noundef !2277
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !163720
  store i64 %i.cn, ptr %i.er, align 16, !dbg !163720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !163720
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !163720
  store i64 %.sroa.0.0, ptr %i.es, align 8, !dbg !163720
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !163720
  store i32 %i.cp, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !163720
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !163720
  store i64 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !163720
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !163720
  store i8 %i.eq, ptr %i.et, align 8, !dbg !163720
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !163720
  store i64 -9223372036854775790, ptr %i.eu, align 16, !dbg !163720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !163721
  br label %bb.ad, !dbg !163609

bb.bd:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !163670
  call void @llvm.experimental.noalias.scope.decl(metadata !163601), !dbg !163722
  %.val.i = load i64, ptr %i.ev, align 8, !dbg !163723, !alias.scope !163602, !noalias !163601, !noundef !2277
  %.sroa.623.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !163724
  %i.ew = load i64, ptr %.sroa.623.8..sroa_idx, align 4, !dbg !163724, !alias.scope !163603
  br label %bb.bc, !dbg !163725
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB5_7AlpIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 !dbg !163726 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163762 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !163762 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !dbg !163762, !noundef !2277 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0, !dbg !163762
  br i1 %i.e, label %bb.d, label %bb.b, !dbg !163762

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.d, -1, !dbg !163763           ; 2 uses
  store i32 %i.f, ptr %i.c, align 8, !dbg !163763
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !163764
  %i.h = load i32, ptr %i.g, align 4, !dbg !163764, !range !3649, !noundef !2277
  %i.i = icmp eq i32 %i.h, 1, !dbg !163765
  %i.j = load ptr, ptr %i.b, align 8, !dbg !163765
  %.sroa.03.0 = select i1 %i.i, ptr %i.b, ptr %i.j, !dbg !163765
  %i.k = zext i32 %i.f to i64, !dbg !163766
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.03.0, i64 %i.k, !dbg !163767
  %i.m = load i64, ptr %i.l, align 8, !dbg !163768, !noundef !2277 ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !dbg !163769, !nonnull !2277, !align !2398, !noundef !2277 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16, !dbg !163770
  %.val4 = load i64, ptr %i.o, align 8, !dbg !163770, !noundef !2277
  %i.p = icmp ult i64 %i.m, %.val4, !dbg !163771
  br i1 %i.p, label %_RNCNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB7_7AlpIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next0Bb_.exit, label %bb.c, !dbg !163771, !prof !2424

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #54, !dbg !163772, !noalias !163759
  unreachable, !dbg !163772

_RNCNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB7_7AlpIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next0Bb_.exit: ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 8, !dbg !163770
  %.val = load ptr, ptr %i.q, align 8, !dbg !163770, !nonnull !2277, !noundef !2277
  %i.r = getelementptr inbounds nuw [368 x i8], ptr %.val, i64 %i.m, !dbg !163773 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !163774, !noalias !163759
  call void @_RNvMNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputsNtB4_2IR6inputs(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull align 16 %i.r), !dbg !163775, !noalias !163759
  call void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecNtNtB8_5arena4NodeEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBW_E6extendNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6inputs6InputsEB2r_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !163776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !163777, !noalias !163759
  br label %bb.d, !dbg !163778

bb.d:                                             ; preds = %bb.a, %_RNCNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB7_7AlpIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next0Bb_.exit
  %.sroa.3.0 = phi ptr [ %i.r, %_RNCNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB7_7AlpIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next0Bb_.exit ], [ null, %bb.a ], !dbg !163779
  %.sroa.0.0 = phi i64 [ %i.m, %_RNCNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB7_7AlpIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next0Bb_.exit ], [ undef, %bb.a ], !dbg !163779
  %i.s = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !163780
  %i.t = insertvalue { i64, ptr } %i.s, ptr %.sroa.3.0, 1, !dbg !163780
  ret { i64, ptr } %i.t, !dbg !163780
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6CanvasINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_8TreeViewE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !163781 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [56 x i8], align 8                ; 16 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [8 x i8], align 8                 ; 2 uses
  %i.s = alloca [80 x i8], align 8                ; 28 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !165165 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !165165, !noundef !2277
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !165166
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !165166 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !dbg !165166, !nonnull !2277, !noundef !2277 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !165167 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !165167, !noundef !2277 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0, !dbg !165168
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit, label %.preheader344.preheader, !dbg !165169

.preheader344.preheader:                          ; preds = %bb.a
  %xtraiter = and i64 %i.z, 3, !dbg !165170       ; 3 uses
  %i.ab = icmp ult i64 %i.z, 4, !dbg !165170
  br i1 %i.ab, label %.preheader344.epil.preheader, label %.preheader344.preheader.new, !dbg !165170

.preheader344.preheader.new:                      ; preds = %.preheader344.preheader
  %unroll_iter = and i64 %i.z, -4, !dbg !165170
  br label %.preheader344, !dbg !165170

.preheader344:                                    ; preds = %.preheader344, %.preheader344.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader344.preheader.new ], [ %i.ao, %.preheader344 ], !dbg !165171 ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader344.preheader.new ], [ %i.an, %.preheader344 ], !dbg !165172
  %niter = phi i64 [ 0, %.preheader344.preheader.new ], [ %niter.next.3, %.preheader344 ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.04.0.i, !dbg !165173
  %i.ad = getelementptr i8, ptr %i.ac, i64 8, !dbg !165174
  %.val.i = load i64, ptr %i.ad, align 8, !dbg !165174, !noundef !2277
  %i.ae = add i64 %.val.i, %.sroa.02.0.i, !dbg !165175
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.04.0.i, !dbg !165173
  %i.ag = getelementptr i8, ptr %i.af, i64 32, !dbg !165174
  %.val.i.1 = load i64, ptr %i.ag, align 8, !dbg !165174, !noundef !2277
  %i.ah = add i64 %.val.i.1, %i.ae, !dbg !165175
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.04.0.i, !dbg !165173
  %i.aj = getelementptr i8, ptr %i.ai, i64 56, !dbg !165174
  %.val.i.2 = load i64, ptr %i.aj, align 8, !dbg !165174, !noundef !2277
  %i.ak = add i64 %.val.i.2, %i.ah, !dbg !165175
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.04.0.i, !dbg !165173
  %i.am = getelementptr i8, ptr %i.al, i64 80, !dbg !165174
  %.val.i.3 = load i64, ptr %i.am, align 8, !dbg !165174, !noundef !2277
  %i.an = add i64 %.val.i.3, %i.ak, !dbg !165175  ; 3 uses
  %i.ao = add nuw i64 %.sroa.04.0.i, 4, !dbg !165176 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4, !dbg !165170 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !165170
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit.loopexit.unr-lcssa, label %.preheader344, !dbg !165170

.body229:                                         ; preds = %bb.d, %bb.b, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ap, %bb.b ], [ %i.ch, %bb.d ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format8TreeViewEBO_(ptr noalias noundef align 8 dereferenceable(88) %1) #53
          to label %bb.eb unwind label %bb.bp, !dbg !165177

bb.b:                                             ; preds = %bb.c, %.loopexit343, %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body229

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit.loopexit.unr-lcssa: ; preds = %.preheader344
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !165170
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit, label %.preheader344.epil.preheader, !dbg !165170

.preheader344.epil.preheader:                     ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit.loopexit.unr-lcssa, %.preheader344.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader344.preheader ], [ %i.ao, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader344.preheader ], [ %i.an, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2201 = icmp ne i64 %xtraiter, 0, !dbg !165170
  tail call void @llvm.assume(i1 %lcmp.mod2201), !dbg !165170
  br label %.preheader344.epil, !dbg !165170

.preheader344.epil:                               ; preds = %.preheader344.epil, %.preheader344.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.at, %.preheader344.epil ], [ %.sroa.04.0.i.epil.init, %.preheader344.epil.preheader ], !dbg !165171 ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.as, %.preheader344.epil ], [ %.sroa.02.0.i.epil.init, %.preheader344.epil.preheader ], !dbg !165172
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader344.epil ], [ 0, %.preheader344.epil.preheader ]
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.04.0.i.epil, !dbg !165173
  %i.ar = getelementptr i8, ptr %i.aq, i64 8, !dbg !165174
  %.val.i.epil = load i64, ptr %i.ar, align 8, !dbg !165174, !noundef !2277
  %i.as = add i64 %.val.i.epil, %.sroa.02.0.i.epil, !dbg !165175 ; 2 uses
  %i.at = add nuw i64 %.sroa.04.0.i.epil, 1, !dbg !165176
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !165170 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !165170
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit, label %.preheader344.epil, !dbg !165170, !llvm.loop !163808

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit.loopexit.unr-lcssa, %.preheader344.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.an, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit.loopexit.unr-lcssa ], [ %i.as, %.preheader344.epil ], !dbg !165172
  %i.au = add i64 %i.u, 3, !dbg !165165
  %i.av = add i64 %i.au, %.sroa.0.0.i, !dbg !165165 ; 18 uses
  %2 = insertelement <2 x ptr> poison, ptr %i.v, i64 0, !dbg !165178
  %3 = insertelement <2 x ptr> %2, ptr %1, i64 1, !dbg !165178
  %4 = getelementptr inbounds nuw i8, <2 x ptr> %3, <2 x i64> <i64 0, i64 48>, !dbg !165178
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !165178 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !165178, !nonnull !2277, !noundef !2277 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !165179 ; 5 uses
  %i.az = load i64, ptr %i.ay, align 8, !dbg !165179, !noundef !2277 ; 4 uses
  %i.ba = icmp eq i64 %i.az, 0, !dbg !165180
  br i1 %i.ba, label %.loopexit343, label %.preheader.preheader, !dbg !165181

.preheader.preheader:                             ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit
  %xtraiter2202 = and i64 %i.az, 3, !dbg !165182  ; 3 uses
  %i.bb = icmp ult i64 %i.az, 4, !dbg !165182
  br i1 %i.bb, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !165182

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter2207 = and i64 %i.az, -4, !dbg !165182
  br label %.preheader, !dbg !165182

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i113 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bo, %.preheader ], !dbg !165183 ; 5 uses
  %.sroa.02.0.i114 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bn, %.preheader ], !dbg !165184
  %niter2208 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter2208.next.3, %.preheader ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.sroa.04.0.i113, !dbg !165185
  %i.bd = getelementptr i8, ptr %i.bc, i64 8, !dbg !165186
  %.val.i115 = load i64, ptr %i.bd, align 8, !dbg !165186, !noundef !2277
  %i.be = add i64 %.val.i115, %.sroa.02.0.i114, !dbg !165187
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.sroa.04.0.i113, !dbg !165185
  %i.bg = getelementptr i8, ptr %i.bf, i64 32, !dbg !165186
  %.val.i115.1 = load i64, ptr %i.bg, align 8, !dbg !165186, !noundef !2277
  %i.bh = add i64 %.val.i115.1, %i.be, !dbg !165187
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.sroa.04.0.i113, !dbg !165185
  %i.bj = getelementptr i8, ptr %i.bi, i64 56, !dbg !165186
  %.val.i115.2 = load i64, ptr %i.bj, align 8, !dbg !165186, !noundef !2277
  %i.bk = add i64 %.val.i115.2, %i.bh, !dbg !165187
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.sroa.04.0.i113, !dbg !165185
  %i.bm = getelementptr i8, ptr %i.bl, i64 80, !dbg !165186
  %.val.i115.3 = load i64, ptr %i.bm, align 8, !dbg !165186, !noundef !2277
  %i.bn = add i64 %.val.i115.3, %i.bk, !dbg !165187 ; 3 uses
  %i.bo = add nuw i64 %.sroa.04.0.i113, 4, !dbg !165188 ; 2 uses
  %niter2208.next.3 = add nuw i64 %niter2208, 4, !dbg !165182 ; 2 uses
  %niter2208.ncmp.3 = icmp eq i64 %niter2208.next.3, %unroll_iter2207, !dbg !165182
  br i1 %niter2208.ncmp.3, label %.loopexit343.loopexit.unr-lcssa, label %.preheader, !dbg !165182

.loopexit343.loopexit.unr-lcssa:                  ; preds = %.preheader
  %lcmp.mod2204.not = icmp eq i64 %xtraiter2202, 0, !dbg !165182
  br i1 %lcmp.mod2204.not, label %.loopexit343, label %.preheader.epil.preheader, !dbg !165182

.preheader.epil.preheader:                        ; preds = %.loopexit343.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i113.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bo, %.loopexit343.loopexit.unr-lcssa ]
  %.sroa.02.0.i114.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bn, %.loopexit343.loopexit.unr-lcssa ]
  %lcmp.mod2206 = icmp ne i64 %xtraiter2202, 0, !dbg !165182
  tail call void @llvm.assume(i1 %lcmp.mod2206), !dbg !165182
  br label %.preheader.epil, !dbg !165182

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i113.epil = phi i64 [ %i.bs, %.preheader.epil ], [ %.sroa.04.0.i113.epil.init, %.preheader.epil.preheader ], !dbg !165183 ; 2 uses
  %.sroa.02.0.i114.epil = phi i64 [ %i.br, %.preheader.epil ], [ %.sroa.02.0.i114.epil.init, %.preheader.epil.preheader ], !dbg !165184
  %epil.iter2203 = phi i64 [ %epil.iter2203.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.sroa.04.0.i113.epil, !dbg !165185
  %i.bq = getelementptr i8, ptr %i.bp, i64 8, !dbg !165186
  %.val.i115.epil = load i64, ptr %i.bq, align 8, !dbg !165186, !noundef !2277
  %i.br = add i64 %.val.i115.epil, %.sroa.02.0.i114.epil, !dbg !165187 ; 2 uses
  %i.bs = add nuw i64 %.sroa.04.0.i113.epil, 1, !dbg !165188
  %epil.iter2203.next = add i64 %epil.iter2203, 1, !dbg !165182 ; 2 uses
  %epil.iter2203.cmp.not = icmp eq i64 %epil.iter2203.next, %xtraiter2202, !dbg !165182
  br i1 %epil.iter2203.cmp.not, label %.loopexit343, label %.preheader.epil, !dbg !165182, !llvm.loop !163836

.loopexit343:                                     ; preds = %.loopexit343.loopexit.unr-lcssa, %.preheader.epil, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit
  %.sroa.0.0.i116 = phi i64 [ 0, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format14TreeViewColumnENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB28_8adapters3map8map_foldRBQ_jjNCNvXs5_BS_NtBS_6CanvasINtNtBb_7convert4FromNtBS_8TreeViewE4from0NCINvXsK_NtB26_5accumjNtB4E_3Sum3sumINtB2S_3MapBF_B3s_EE0E0EBY_.exit ], [ %i.bn, %.loopexit343.loopexit.unr-lcssa ], [ %i.br, %.preheader.epil ], !dbg !165184
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !165189
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !165189, !noundef !2277
  %i.bv = mul i64 %i.bu, 3, !dbg !165190
  %i.bw = add i64 %i.bv, %.sroa.0.0.i116, !dbg !165191 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !165192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164787), !dbg !165193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164788), !dbg !165193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !165194, !noalias !164789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165195, !noalias !164791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165196, !noalias !164791
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.av, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc225 unwind label %bb.b, !dbg !165196

.noexc225:                                        ; preds = %.loopexit343
  %i.bx = load i64, ptr %i.a, align 8, !dbg !165196, !range !2301, !noalias !164791, !noundef !2277
  %i.by = trunc nuw i64 %i.bx to i1, !dbg !165197
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !165198
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !165198, !range !2302, !noalias !164791, !noundef !2277 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !165198 ; 2 uses
  br i1 %i.by, label %bb.c, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i224, !dbg !165197, !prof !2303

bb.c:                                             ; preds = %.noexc225
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !165199, !noalias !164791
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ca, i64 %i.cc) #50
          to label %.noexc226 unwind label %bb.b, !dbg !165200

.noexc226:                                        ; preds = %bb.c
  unreachable, !dbg !165200

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i224: ; preds = %.noexc225
  %i.cd = load ptr, ptr %i.cb, align 8, !dbg !165201, !noalias !164791, !nonnull !2277, !noundef !2277
  %i.ce = icmp ule i64 %i.av, %i.ca, !dbg !165202
  tail call void @llvm.assume(i1 %i.ce), !dbg !165203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165204, !noalias !164791
  store i64 %i.ca, ptr %i.b, align 8, !dbg !165205, !noalias !164791
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !165205
  store ptr %i.cd, ptr %i.cf, align 8, !dbg !165205, !noalias !164791
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !165205
  store i64 0, ptr %i.cg, align 8, !dbg !165205, !noalias !164791
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeccE11extend_withCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.av, i32 noundef range(i32 0, 1114112) 32)
          to label %.noexc unwind label %bb.d, !dbg !165206, !noalias !164791

bb.d:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i224
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeccEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.b) #53
          to label %.body229 unwind label %bb.e, !dbg !165207, !noalias !164791

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !165208, !noalias !164791
  unreachable, !dbg !165208

.noexc:                                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !165209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165207, !noalias !164791
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtB5_3VeccENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(80) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.bw)
          to label %bb.f unwind label %bb.b, !dbg !165210

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !165211, !noalias !164789
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !165212 ; 2 uses
  store i64 %i.av, ptr %i.cj, align 8, !dbg !165212, !alias.scope !164787, !noalias !164788
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !165212 ; 2 uses
  store i64 %i.bw, ptr %i.ck, align 8, !dbg !165212, !alias.scope !164787, !noalias !164788
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !165212
  %.sroa.5.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %i.s, i64 44, !dbg !165212
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !165212
  store <4 x i32> <i32 32, i32 9474, i32 9472, i32 9581>, ptr %i.cl, align 8, !dbg !165212, !alias.scope !164789
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56, !dbg !165212 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 60, !dbg !165212
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 68, !dbg !165212
  store <4 x i32> <i32 9582, i32 9584, i32 9583, i32 9516>, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !165212, !alias.scope !164789
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !165212 ; 2 uses
  store i32 9524, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !165212, !alias.scope !164789
  %i.cm = load i64, ptr %i.t, align 8, !dbg !165213, !noundef !2277 ; 2 uses
  %i.cn = add i64 %i.cm, 2, !dbg !165213          ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !164793), !dbg !165214
  %i.co = icmp ult i64 %i.cn, %i.av, !dbg !165215 ; 2 uses
  %i.cp = icmp ugt i64 %i.bw, 1
  %or.cond.i = select i1 %i.co, i1 %i.cp, i1 false, !dbg !165215
  br i1 %or.cond.i, label %bb.g, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit, !dbg !165215

bb.g:                                             ; preds = %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !165216
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !165216, !alias.scope !164793, !noundef !2277 ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 1, !dbg !165217
  br i1 %i.cs, label %bb.h, label %.invoke, !dbg !165217

bb.h:                                             ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !165218
  %i.cu = load ptr, ptr %i.ct, align 8, !dbg !165218, !alias.scope !164793, !nonnull !2277, !noundef !2277 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40, !dbg !165219
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !165219, !noalias !164793, !noundef !2277 ; 2 uses
  %i.cx = icmp ult i64 %i.cn, %i.cw, !dbg !165220
  br i1 %i.cx, label %bb.i, label %.invoke, !dbg !165220

bb.i:                                             ; preds = %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 32, !dbg !165221
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !165221, !noalias !164793, !nonnull !2277, !noundef !2277
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cn, !dbg !165222
  store i32 9484, ptr %i.da, align 4, !dbg !165223, !noalias !164793
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit, !dbg !165224

.body:                                            ; preds = %.loopexit329, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.dz, %bb.dl, %bb.di, %bb.dd, %bb.bm, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_5chain5ChainINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoItercENtNtNtB4_3str4iter5CharsEEECsfcROwRM8ZtH_11polars_plan.exit, %bb.cy, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_5chain5ChainINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoItercENtNtNtB4_3str4iter5CharsEEECsfcROwRM8ZtH_11polars_plan.exit ], [ %i.hx, %bb.x ], [ %i.abk, %bb.di ], [ %i.aal, %bb.cy ], [ %i.abo, %bb.dl ], [ %i.oq, %bb.bm ], [ %i.aax, %bb.dd ], [ %i.ael, %bb.dz ], [ %lpad.loopexit, %.loopexit329 ], [ %lpad.loopexit334, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit337, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit339, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp340, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format6CanvasEBO_(ptr noalias noundef align 8 dereferenceable(80) %i.s) #53
          to label %.body229 unwind label %bb.bp, !dbg !165225

.loopexit329:                                     ; preds = %bb.u, %bb.bn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.bs
  %lpad.loopexit334 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.cv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit.i
  %lpad.loopexit337 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit.i219, %bb.dg
  %lpad.loopexit339 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke1995, %.invoke, %bb.dh
  %lpad.loopexit.split-lp340 = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RNvXs5_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6CanvasINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_8TreeViewE4from:bb.a
  %.not25.i = icmp eq i64 %i.av, %i.cn, !dbg !165229
  br i1 %.not25.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit, label %.lr.ph20.i, !dbg !165230

.lr.ph20.i:                                       ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit
  %i.dd = icmp ugt i64 %i.bw, 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !164801
  %.fr.i = freeze i64 %i.df                       ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !164801, !nonnull !2277 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  br i1 %i.dd, label %.lr.ph20.split.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit

.lr.ph20.split.i:                                 ; preds = %.lr.ph20.i
  %i.dk = icmp ugt i64 %.fr.i, 1
  br i1 %i.dk, label %.lr.ph20.split.split.us.i, label %.lr.ph20.split.split.i

.lr.ph20.split.split.us.i:                        ; preds = %.lr.ph20.split.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i
  %.sroa.03.019.us21.i = phi i64 [ %i.dr, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i ], [ 0, %.lr.ph20.split.i ] ; 2 uses
  %i.dl = add i64 %.sroa.03.019.us21.i, %i.db, !dbg !165231 ; 4 uses
  %i.dm = icmp ult i64 %i.dl, %i.av, !dbg !165232
  br i1 %i.dm, label %bb.j, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i, !dbg !165232

bb.j:                                             ; preds = %.lr.ph20.split.split.us.i
  %i.dn = load i64, ptr %i.di, align 8, !dbg !165233, !noalias !164802, !noundef !2277 ; 2 uses
  %i.do = icmp ult i64 %i.dl, %i.dn, !dbg !165234
  br i1 %i.do, label %bb.k, label %.invoke, !dbg !165234

bb.k:                                             ; preds = %bb.j
  %i.dp = load ptr, ptr %i.dj, align 8, !dbg !165235, !noalias !164802, !nonnull !2277, !noundef !2277
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dl, !dbg !165236
  store i32 9472, ptr %i.dq, align 4, !dbg !165237, !noalias !164802
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i, !dbg !165238

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i: ; preds = %bb.k, %.lr.ph20.split.split.us.i
  %i.dr = add nuw i64 %.sroa.03.019.us21.i, 1, !dbg !165239 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %i.dr, %i.dc, !dbg !165230
  br i1 %exitcond39.not.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit, label %.lr.ph20.split.split.us.i, !dbg !165230

.lr.ph20.split.split.i:                           ; preds = %.lr.ph20.split.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i
  %.sroa.03.019.i = phi i64 [ %i.du, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i ], [ 0, %.lr.ph20.split.i ] ; 2 uses
  %i.ds = add i64 %.sroa.03.019.i, %i.db, !dbg !165231
  %i.dt = icmp ult i64 %i.ds, %i.av, !dbg !165232
  br i1 %i.dt, label %.invoke, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i, !dbg !165232

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i: ; preds = %.lr.ph20.split.split.i
  %i.du = add nuw i64 %.sroa.03.019.i, 1, !dbg !165239 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.du, %i.dc, !dbg !165230
  br i1 %exitcond38.not.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit, label %.lr.ph20.split.split.i, !dbg !165230

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit: ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit7.us22.i, %.lr.ph20.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit
  %i.dv = add i64 %i.bw, -1, !dbg !165240         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !164803), !dbg !165241
  %.not25.i122 = icmp eq i64 %i.dv, 0, !dbg !165242
  br i1 %.not25.i122, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit125, label %.lr.ph.i, !dbg !165243

.lr.ph.i:                                         ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !164803 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !164803, !nonnull !2277
  br i1 %i.co, label %.lr.ph.split.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit125

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i
  %.sroa.0.018.i = phi i64 [ %i.ek, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ea = add i64 %.sroa.0.018.i, 2, !dbg !165244 ; 4 uses
  %i.eb = icmp ult i64 %i.ea, %i.bw
  br i1 %i.eb, label %bb.l, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i, !dbg !165245

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.ec = icmp ult i64 %i.ea, %i.dx, !dbg !165246
  br i1 %i.ec, label %bb.m, label %.invoke, !dbg !165246

bb.m:                                             ; preds = %bb.l
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.ea, !dbg !165247 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16, !dbg !165248
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !165248, !noalias !164804, !noundef !2277 ; 2 uses
  %i.eg = icmp ult i64 %i.cn, %i.ef, !dbg !165249
  br i1 %i.eg, label %bb.n, label %.invoke, !dbg !165249

bb.n:                                             ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8, !dbg !165250
  %i.ei = load ptr, ptr %i.eh, align 8, !dbg !165250, !noalias !164804, !nonnull !2277, !noundef !2277
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cn, !dbg !165251
  store i32 9474, ptr %i.ej, align 4, !dbg !165252, !noalias !164804
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i, !dbg !165253

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i: ; preds = %bb.n, %.lr.ph.split.i
  %i.ek = add nuw i64 %.sroa.0.018.i, 1, !dbg !165254 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ek, %i.dv, !dbg !165243
  br i1 %exitcond.not.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit125, label %.lr.ph.split.i, !dbg !165243

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit125: ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i, %.lr.ph.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit
  %i.el = load ptr, ptr %i.aw, align 8, !dbg !165255, !nonnull !2277, !noundef !2277 ; 2 uses
  %i.em = load i64, ptr %i.ay, align 8, !dbg !165256, !noundef !2277 ; 2 uses
  %.idx = mul nuw nsw i64 %i.em, 24, !dbg !165257
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx, !dbg !165257
  %i.eo = icmp eq i64 %i.em, 0, !dbg !165258
  br i1 %i.eo, label %._crit_edge, label %.lr.ph, !dbg !165259

.lr.ph:                                           ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit125
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.05.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 6 uses
  %.sroa.05.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.o, !dbg !165259

bb.o:                                             ; preds = %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit223
  %.sroa.0233.0845 = phi ptr [ %i.el, %.lr.ph ], [ %i.fc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit223 ] ; 3 uses
  %.sroa.7235.0844 = phi i64 [ 0, %.lr.ph ], [ %i.fd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit223 ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0233.0845, i64 24, !dbg !165260 ; 2 uses
  %i.fd = add nuw nsw i64 %.sroa.7235.0844, 1, !dbg !165261
  store i64 %.sroa.7235.0844, ptr %i.r, align 8, !dbg !165262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !165117
  %i.fe = load i64, ptr %i.t, align 8, !dbg !165263, !noundef !2277
  %i.ff = icmp eq i64 %.sroa.7235.0844, 0, !dbg !165264
  br i1 %i.ff, label %bb.dg, label %bb.df, !dbg !165264

._crit_edge:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit223, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit125
  %i.fg = load ptr, ptr %i.w, align 8, !dbg !165265, !nonnull !2277, !noundef !2277 ; 2 uses
  %i.fh = load i64, ptr %i.y, align 8, !dbg !165266, !noundef !2277 ; 2 uses
  %.idx873 = mul nuw nsw i64 %i.fh, 24, !dbg !165267
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx873, !dbg !165267
  %i.fj = icmp eq i64 %i.fh, 0, !dbg !165268
  br i1 %i.fj, label %._crit_edge854, label %.lr.ph853, !dbg !165269

.lr.ph853:                                        ; preds = %._crit_edge
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not875 = icmp eq i64 %i.bw, 0
  br label %bb.p, !dbg !165269

bb.p:                                             ; preds = %.lr.ph853, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.0242.0851 = phi ptr [ %i.fg, %.lr.ph853 ], [ %i.fo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit ] ; 3 uses
  %.sroa.7244.0850 = phi i64 [ 0, %.lr.ph853 ], [ %i.fp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0242.0851, i64 24, !dbg !165270 ; 2 uses
  %i.fp = add nuw nsw i64 %.sroa.7244.0850, 1, !dbg !165271
  store i64 %.sroa.7244.0850, ptr %i.l, align 8, !dbg !165272
  %i.fq = icmp eq i64 %.sroa.7244.0850, 0, !dbg !165273
  br i1 %i.fq, label %bb.cv, label %bb.cu, !dbg !165273

._crit_edge854:                                   ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit, %._crit_edge
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !165274 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !dbg !165274, !nonnull !2277, !noundef !2277 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !165275 ; 3 uses
  %i.fu = load i64, ptr %i.ft, align 8, !dbg !165275, !noundef !2277 ; 2 uses
  %.idx876 = mul nuw nsw i64 %i.fu, 24, !dbg !165276
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.idx876, !dbg !165276
  %i.fw = icmp eq i64 %i.fu, 0, !dbg !165277
  br i1 %i.fw, label %._crit_edge872, label %.lr.ph862, !dbg !165278

.lr.ph862:                                        ; preds = %._crit_edge854
  %i.fx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  br label %bb.q, !dbg !165278

.loopexit333:                                     ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas19draw_label_centered.exit, %bb.q
  %i.fz = icmp eq ptr %i.ga, %i.fv, !dbg !165277
  br i1 %i.fz, label %._crit_edge863, label %bb.q, !dbg !165278

bb.q:                                             ; preds = %.lr.ph862, %.loopexit333
  %.sroa.0250.0860 = phi ptr [ %i.fs, %.lr.ph862 ], [ %i.ga, %.loopexit333 ] ; 3 uses
  %.sroa.7252.0859 = phi i64 [ 0, %.lr.ph862 ], [ %i.gb, %.loopexit333 ] ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0250.0860, i64 24, !dbg !165279 ; 2 uses
  %i.gb = add nuw nsw i64 %.sroa.7252.0859, 1, !dbg !165280
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0250.0860, i64 8, !dbg !165281
  %i.gd = load ptr, ptr %i.gc, align 8, !dbg !165281, !nonnull !2277, !noundef !2277 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0250.0860, i64 16, !dbg !165282
  %i.gf = load i64, ptr %i.ge, align 8, !dbg !165282, !noundef !2277 ; 2 uses
  %.idx877 = mul nuw nsw i64 %i.gf, 48, !dbg !165283
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.idx877, !dbg !165283
  %i.gh = icmp eq i64 %i.gf, 0, !dbg !165284
  br i1 %i.gh, label %.loopexit333, label %.lr.ph858, !dbg !165285

._crit_edge863:                                   ; preds = %.loopexit333
  %.pre1380 = load ptr, ptr %i.fr, align 8, !dbg !165286 ; 2 uses
  %.pre1381 = load i64, ptr %i.ft, align 8, !dbg !165287 ; 2 uses
  %.idx878 = mul nuw nsw i64 %.pre1381, 24, !dbg !165288
  %i.gi = getelementptr inbounds nuw i8, ptr %.pre1380, i64 %.idx878, !dbg !165288
  %i.gj = icmp eq i64 %.pre1381, 0, !dbg !165289
  br i1 %i.gj, label %._crit_edge872, label %.lr.ph871, !dbg !165290

.lr.ph871:                                        ; preds = %._crit_edge863
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.r, !dbg !165290

.loopexit:                                        ; preds = %bb.t, %bb.r
  %i.go = icmp eq ptr %i.gp, %i.gi, !dbg !165289
  br i1 %i.go, label %._crit_edge872, label %bb.r, !dbg !165290

bb.r:                                             ; preds = %.lr.ph871, %.loopexit
  %.sroa.0256.0869 = phi ptr [ %.pre1380, %.lr.ph871 ], [ %i.gp, %.loopexit ] ; 3 uses
  %.sroa.7258.0868 = phi i64 [ 0, %.lr.ph871 ], [ %i.gq, %.loopexit ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0256.0869, i64 24, !dbg !165291 ; 2 uses
  %i.gq = add nuw nsw i64 %.sroa.7258.0868, 1, !dbg !165292
  store i64 %.sroa.7258.0868, ptr %i.h, align 8, !dbg !165293
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0256.0869, i64 8, !dbg !165294
  %i.gs = load ptr, ptr %i.gr, align 8, !dbg !165294, !nonnull !2277, !noundef !2277 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0256.0869, i64 16, !dbg !165295
  %i.gu = load i64, ptr %i.gt, align 8, !dbg !165295, !noundef !2277 ; 2 uses
  %.idx879 = mul nuw nsw i64 %i.gu, 48, !dbg !165296
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx879, !dbg !165296
  %i.gw = icmp eq i64 %i.gu, 0, !dbg !165297
  br i1 %i.gw, label %.loopexit, label %.lr.ph867, !dbg !165298

._crit_edge872:                                   ; preds = %.loopexit, %._crit_edge854, %._crit_edge863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 80, i1 false), !dbg !165299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !165225
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format8TreeViewEBO_(ptr noalias noundef align 8 dereferenceable(88) %1), !dbg !165177
  ret void, !dbg !165300

.lr.ph867:                                        ; preds = %bb.r, %bb.t
  %.sroa.7261.0865 = phi i64 [ %i.gy, %bb.t ], [ 0, %bb.r ] ; 7 uses
  %.sroa.0259.0864 = phi ptr [ %i.gx, %bb.t ], [ %i.gs, %bb.r ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0259.0864, i64 48, !dbg !165301 ; 2 uses
  %i.gy = add nuw nsw i64 %.sroa.7261.0865, 1, !dbg !165302
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0259.0864, i64 16, !dbg !165303
  %i.ha = load i64, ptr %i.gz, align 8, !dbg !165303, !noundef !2277 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 576460752303423488, !dbg !165304
  call void @llvm.assume(i1 %i.hb), !dbg !165305
  %i.hc = icmp eq i64 %i.ha, 0, !dbg !165306
  br i1 %i.hc, label %bb.t, label %bb.s, !dbg !165306

bb.s:                                             ; preds = %.lr.ph867
  %i.hd = load i64, ptr %i.ay, align 8, !dbg !165307, !noundef !2277 ; 2 uses
  %i.he = icmp ult i64 %i.hd, 384307168202282326, !dbg !165308
  call void @llvm.assume(i1 %i.he), !dbg !165309
  %i.hf = add nsw i64 %i.hd, -1, !dbg !165310
  %i.hg = load i64, ptr %i.h, align 8, !dbg !165311, !noundef !2277
  %i.hh = icmp ult i64 %i.hg, %i.hf, !dbg !165311
  br i1 %i.hh, label %bb.u, label %bb.t, !dbg !165311

bb.t:                                             ; preds = %bb.s, %.lr.ph867, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format5PointEEB1l_.exit
  %i.hi = icmp eq ptr %i.gx, %i.gv, !dbg !165297
  br i1 %i.hi, label %.loopexit, label %.lr.ph867, !dbg !165298

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !165312
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0259.0864, i64 32, !dbg !165313
  %i.hk = load ptr, ptr %i.hj, align 8, !dbg !165313, !nonnull !2277, !noundef !2277 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0259.0864, i64 40, !dbg !165314
  %i.hm = load i64, ptr %i.hl, align 8, !dbg !165314, !noundef !2277
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hm, !dbg !165315
  store ptr %i.hk, ptr %i.f, align 8, !dbg !165316
  store ptr %i.hn, ptr %5, align 8, !dbg !165316
  store ptr %1, ptr %6, align 8, !dbg !165316
  store <2 x ptr> %4, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !165316
  store ptr %i.h, ptr %.sroa.658.0..sroa_idx, align 8, !dbg !165316
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format5PointEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2I_5slice4iter4IterjENCNvXs5_B15_NtB15_6CanvasINtNtB2I_7convert4FromNtB15_8TreeViewE4froms0_0EE9from_iterB1b_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.v unwind label %.loopexit329, !dbg !165317

bb.v:                                             ; preds = %bb.u
  %i.ho = load i64, ptr %i.ay, align 8, !dbg !165318, !noundef !2277 ; 2 uses
  %i.hp = load i64, ptr %i.h, align 8, !dbg !165319, !noundef !2277 ; 6 uses
  %i.hq = icmp ult i64 %i.hp, %i.ho, !dbg !165319
  br i1 %i.hq, label %bb.w, label %.invoke1999, !dbg !165319

bb.w:                                             ; preds = %bb.v
  %i.hr = load ptr, ptr %i.aw, align 8, !dbg !165320, !nonnull !2277, !noundef !2277
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.hr, i64 %i.hp, !dbg !165321 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8, !dbg !165322
  %i.hu = load i64, ptr %i.ht, align 8, !dbg !165322, !noundef !2277 ; 3 uses
  %i.hv = load i64, ptr %i.ft, align 8, !dbg !165323, !noundef !2277 ; 2 uses
  %i.hw = icmp ult i64 %i.hp, %i.hv, !dbg !165324
  br i1 %i.hw, label %bb.y, label %.invoke1999, !dbg !165324

bb.x:                                             ; preds = %.invoke1999, %.invoke1997
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format5PointEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #53
          to label %.body unwind label %bb.bp, !dbg !165325

bb.y:                                             ; preds = %bb.w
  %i.hy = load ptr, ptr %i.fr, align 8, !dbg !165326, !nonnull !2277, !noundef !2277
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %i.hp, !dbg !165327 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16, !dbg !165328
  %i.ib = load i64, ptr %i.ia, align 8, !dbg !165328, !noundef !2277 ; 2 uses
  %i.ic = icmp ult i64 %.sroa.7261.0865, %i.ib, !dbg !165329
  br i1 %i.ic, label %bb.z, label %.invoke1999, !dbg !165329

bb.z:                                             ; preds = %bb.y
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 8, !dbg !165330
  %i.ie = load ptr, ptr %i.id, align 8, !dbg !165330, !nonnull !2277, !noundef !2277
  %i.if = getelementptr inbounds nuw [48 x i8], ptr %i.ie, i64 %.sroa.7261.0865, !dbg !165331
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16, !dbg !165332
  %i.ih = load i64, ptr %i.ig, align 8, !dbg !165332, !noundef !2277 ; 3 uses
  %i.ii = icmp ult i64 %i.ih, 576460752303423488, !dbg !165333
  call void @llvm.assume(i1 %i.ii), !dbg !165334
  %i.ij = load i64, ptr %i.y, align 8, !dbg !165335, !noundef !2277 ; 2 uses
  %i.ik = icmp ult i64 %.sroa.7261.0865, %i.ij, !dbg !165336
  br i1 %i.ik, label %bb.aa, label %.invoke1999, !dbg !165336

.invoke1999:                                      ; preds = %bb.v, %bb.z, %bb.y, %bb.w
  %i.il = phi i64 [ %.sroa.7261.0865, %bb.y ], [ %i.hp, %bb.w ], [ %.sroa.7261.0865, %bb.z ], [ %i.hp, %bb.v ]
  %i.im = phi i64 [ %i.ib, %bb.y ], [ %i.hv, %bb.w ], [ %i.ij, %bb.z ], [ %i.ho, %bb.v ]
  %i.in = phi ptr [ @1057, %bb.y ], [ @1056, %bb.w ], [ @1058, %bb.z ], [ @1055, %bb.v ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.il, i64 noundef %i.im, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.in) #50
          to label %.cont2000 unwind label %bb.x, !dbg !165337

.cont2000:                                        ; preds = %.invoke1999
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.io = and i64 %i.ih, 1, !dbg !165338
  %i.ip = icmp eq i64 %i.io, 0, !dbg !165339
  %i.iq = trunc i64 %i.hu to i1
  %or.cond = and i1 %i.ip, %i.iq, !dbg !165339    ; 2 uses
  %.sroa.059.0 = zext i1 %or.cond to i64, !dbg !165339
  %i.ir = add i64 %i.hu, -2, !dbg !165322
  %i.is = sub i64 %i.ir, %i.ih, !dbg !165322
  %i.it = load ptr, ptr %i.w, align 8, !dbg !165340, !nonnull !2277, !noundef !2277
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %.sroa.7261.0865, !dbg !165341 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !dbg !165342, !noundef !2277
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16, !dbg !165343
  %i.ix = load i64, ptr %i.iw, align 8, !dbg !165343, !noundef !2277
  %i.iy = load i64, ptr %i.hs, align 8, !dbg !165344, !noundef !2277
  %i.iz = lshr i64 %i.is, 1, !dbg !165345         ; 2 uses
  %i.ja = load ptr, ptr %i.gk, align 8, !dbg !165346, !nonnull !2277, !noundef !2277 ; 2 uses
  %i.jb = load i64, ptr %i.gl, align 8, !dbg !165347, !noundef !2277 ; 3 uses
  %i.jc = add nuw i64 %i.iz, %.sroa.059.0, !dbg !165348 ; 2 uses
  %i.jd = add nuw i64 %i.jc, 1, !dbg !165348      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !165008), !dbg !165349
  call void @llvm.experimental.noalias.scope.decl(metadata !165009), !dbg !165349
  %.idx.i = shl nuw nsw i64 %i.jb, 4, !dbg !165350
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx.i, !dbg !165350
  %i.jf = icmp eq i64 %i.jb, 0, !dbg !165351
  br i1 %i.jf, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas16draw_connections.exit, label %.lr.ph.i136, !dbg !165352

.lr.ph.i136:                                      ; preds = %bb.aa
  %.sroa.059.0.neg880 = sext i1 %or.cond to i64, !dbg !165339
  %.neg327 = sub i64 %i.hu, %i.iz, !dbg !165344
  %i.jg = add i64 %.neg327, %.sroa.059.0.neg880, !dbg !165344
  %i.jh = add i64 %i.jg, %i.iy, !dbg !165344
  %i.ji = add i64 %i.iv, -1, !dbg !165342
  %i.jj = add i64 %i.ji, %i.ix, !dbg !165342
  %i.jk = load i32, ptr %.sroa.12.0..sroa_idx, align 8, !range !3491, !alias.scope !165008, !noalias !165009
  %i.jl = load i64, ptr %i.cj, align 8, !alias.scope !165008, !noalias !165009 ; 5 uses
  %i.jm = load i64, ptr %i.ck, align 8, !alias.scope !165008, !noalias !165009
  %.fr26.i.i = freeze i64 %i.jm                   ; 9 uses
  %i.jn = load i64, ptr %i.gm, align 8, !alias.scope !165008, !noalias !165009
  %.fr.i.i = freeze i64 %i.jn                     ; 20 uses
  %i.jo = load ptr, ptr %i.gn, align 8, !alias.scope !165008, !noalias !165009, !nonnull !2277 ; 11 uses
  %i.jp = load i32, ptr %.sroa.11.0..sroa_idx, align 4, !range !3491, !alias.scope !165008, !noalias !165009 ; 3 uses
  %i.jq = load i32, ptr %.sroa.5.0..sroa_idx232, align 4, !range !3491, !alias.scope !165008, !noalias !165009 ; 3 uses
  %i.jr = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !range !3491, !alias.scope !165008, !noalias !165009
  %i.js = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !range !3491, !alias.scope !165008, !noalias !165009
  %i.jt = add nsw i64 %i.jb, -1
  %i.ju = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !range !3491, !alias.scope !165008, !noalias !165009
  br label %bb.ab, !dbg !165352

bb.ab:                                            ; preds = %bb.ad, %.lr.ph.i136
  %.sroa.0.0205.i = phi i1 [ true, %.lr.ph.i136 ], [ %.sroa.0.1.i, %bb.ad ] ; 4 uses
  %.sroa.01.0204.i = phi i64 [ %i.jj, %.lr.ph.i136 ], [ %.sroa.01.1.i, %bb.ad ] ; 24 uses
  %.sroa.017.0203.i = phi i64 [ %i.jh, %.lr.ph.i136 ], [ %.sroa.017.1.i, %bb.ad ] ; 11 uses
  %.sroa.0.064202.i = phi ptr [ %i.ja, %.lr.ph.i136 ], [ %i.jv, %bb.ad ] ; 3 uses
  %.sroa.7.0201.i = phi i64 [ 0, %.lr.ph.i136 ], [ %i.jw, %bb.ad ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.064202.i, i64 16, !dbg !165353 ; 2 uses
  %i.jw = add nuw nsw i64 %.sroa.7.0201.i, 1, !dbg !165354
  %i.jx = load i64, ptr %.sroa.0.064202.i, align 8, !dbg !165355, !alias.scope !165009, !noalias !165008, !noundef !2277 ; 17 uses
  %.not36.i = icmp ult i64 %i.jx, %.sroa.01.0204.i, !dbg !165355
  br i1 %.not36.i, label %bb.ad, label %bb.ac, !dbg !165355

bb.ac:                                            ; preds = %bb.ab
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0.064202.i, i64 8, !dbg !165356
  %i.jz = load i64, ptr %i.jy, align 8, !dbg !165356, !alias.scope !165009, !noalias !165008, !noundef !2277 ; 8 uses
  %i.ka = add i64 %.sroa.017.0203.i, -1, !dbg !165357 ; 9 uses
  %.not37.i = icmp ult i64 %i.jz, %i.ka, !dbg !165356
  br i1 %.not37.i, label %bb.ad, label %bb.ae, !dbg !165356

bb.ad:                                            ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit63.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit.i, %bb.ac, %bb.ab
  %.sroa.017.1.i = phi i64 [ %.sroa.017.0203.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit.i ], [ %.sroa.017.2.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit63.i ], [ %.sroa.017.0203.i, %bb.ac ], [ %.sroa.017.0203.i, %bb.ab ], !dbg !165358
  %.sroa.01.1.i = phi i64 [ %i.lj, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit.i ], [ %i.op, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit63.i ], [ %.sroa.01.0204.i, %bb.ac ], [ %.sroa.01.0204.i, %bb.ab ], !dbg !165358
  %.sroa.0.1.i = phi i1 [ %.sroa.0.0205.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit.i ], [ false, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit63.i ], [ %.sroa.0.0205.i, %bb.ac ], [ %.sroa.0.0205.i, %bb.ab ], !dbg !165359
  %i.kb = icmp eq ptr %i.jv, %i.je, !dbg !165351
  br i1 %i.kb, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas16draw_connections.exit, label %bb.ab, !dbg !165352

bb.ae:                                            ; preds = %bb.ac
  %i.kc = icmp ult i64 %i.jx, %i.jl, !dbg !165360 ; 3 uses
  %i.kd = icmp ult i64 %i.jz, %.fr26.i.i
  %or.cond.i.i = and i1 %i.kc, %i.kd, !dbg !165360
  br i1 %or.cond.i.i, label %bb.af, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i137, !dbg !165360

bb.af:                                            ; preds = %bb.ae
  %i.ke = icmp ult i64 %i.jz, %.fr.i.i, !dbg !165361
  br i1 %i.ke, label %bb.ag, label %.invoke1997, !dbg !165361

bb.ag:                                            ; preds = %bb.af
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %i.jz, !dbg !165362 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16, !dbg !165363
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !165363, !noalias !165010, !noundef !2277 ; 2 uses
  %i.ki = icmp ult i64 %i.jx, %i.kh, !dbg !165364
  br i1 %i.ki, label %bb.ah, label %.invoke1997, !dbg !165364

bb.ah:                                            ; preds = %bb.ag
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8, !dbg !165365
  %i.kk = load ptr, ptr %i.kj, align 8, !dbg !165365, !noalias !165010, !nonnull !2277, !noundef !2277
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.jx, !dbg !165366
  store i32 %i.jk, ptr %i.kl, align 4, !dbg !165367, !noalias !165010
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i137, !dbg !165368

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i137: ; preds = %bb.ah, %bb.ae
  %i.km = icmp eq i64 %i.jx, %.sroa.01.0204.i, !dbg !165369
  br i1 %i.km, label %bb.aj, label %bb.ai, !dbg !165369

bb.ai:                                            ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i137
  br i1 %.sroa.0.0205.i, label %bb.at, label %bb.aq, !dbg !165370

bb.aj:                                            ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i137
  %i.kn = icmp ult i64 %.sroa.01.0204.i, %i.jl, !dbg !165371 ; 2 uses
  %i.ko = icmp ult i64 %i.ka, %.fr26.i.i
  %or.cond.i38.i = and i1 %i.kn, %i.ko, !dbg !165371
  br i1 %or.cond.i38.i, label %bb.ak, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit39.i, !dbg !165371

bb.ak:                                            ; preds = %bb.aj
  %i.kp = icmp ult i64 %i.ka, %.fr.i.i, !dbg !165372
  br i1 %i.kp, label %bb.al, label %.invoke1997, !dbg !165372

bb.al:                                            ; preds = %bb.ak
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %i.ka, !dbg !165373 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16, !dbg !165374
  %i.ks = load i64, ptr %i.kr, align 8, !dbg !165374, !noalias !165011, !noundef !2277 ; 2 uses
  %i.kt = icmp ult i64 %.sroa.01.0204.i, %i.ks, !dbg !165375
  br i1 %i.kt, label %bb.am, label %.invoke1997, !dbg !165375

bb.am:                                            ; preds = %bb.al
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 8, !dbg !165376
  %i.kv = load ptr, ptr %i.ku, align 8, !dbg !165376, !noalias !165011, !nonnull !2277, !noundef !2277
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %.sroa.01.0204.i, !dbg !165377
  store i32 %i.jp, ptr %i.kw, align 4, !dbg !165378, !noalias !165011
  br label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit39.i, !dbg !165379

_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit39.i: ; preds = %bb.am, %bb.aj
  %i.kx = sub i64 %i.jz, %.sroa.017.0203.i, !dbg !165380
  %.not25.i.i = icmp ne i64 %i.jz, %.sroa.017.0203.i, !dbg !165381
  %brmerge.not.i = and i1 %i.kn, %.not25.i.i, !dbg !165382
  br i1 %brmerge.not.i, label %.lr.ph.split.i.i, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas9draw_line.exit.i, !dbg !165382

.lr.ph.split.i.i:                                 ; preds = %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit39.i, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i
  %.sroa.0.018.i.i = phi i64 [ %i.li, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i ], [ 0, %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit39.i ] ; 2 uses
  %i.ky = add i64 %.sroa.0.018.i.i, %.sroa.017.0203.i, !dbg !165383 ; 4 uses
  %i.kz = icmp ult i64 %i.ky, %.fr26.i.i
  br i1 %i.kz, label %bb.an, label %_RNvMs4_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB5_6Canvas11draw_symbol.exit.i.i, !dbg !165384

bb.an:                                            ; preds = %.lr.ph.split.i.i
  %i.la = icmp ult i64 %i.ky, %.fr.i.i, !dbg !165385
  br i1 %i.la, label %bb.ao, label %.invoke1997, !dbg !165385

end_hunk_3
