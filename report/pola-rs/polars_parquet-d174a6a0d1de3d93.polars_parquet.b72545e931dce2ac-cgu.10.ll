Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  br label %bb.ex

bb.ex:                                            ; preds = %.loopexit.split-lp685.i.i, %.loopexit684.i.i
  %lpad.phi687.i.i = phi { ptr, i32 } [ %lpad.loopexit686.i.i, %.loopexit684.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp685.i.i ] ; 2 uses
  %i.afd = icmp eq i64 %i.adn, 0, !dbg !7739
  br i1 %i.afd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit476.i.i, label %bb.ey, !dbg !7739

bb.ey:                                            ; preds = %bb.ex
  %i.afe = shl nuw nsw i64 %i.adn, 2, !dbg !7743
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adm, i64 noundef range(i64 1, 0) %i.afe, i64 noundef 4) #19, !dbg !7746, !noalias !6536
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit476.i.i, !dbg !7751

bb.ez:                                            ; preds = %.invoke4773
  %i.aff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afg = icmp eq i64 %i.acv, 0, !dbg !7752
  br i1 %i.afg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit476.i.i, label %bb.fa, !dbg !7752

bb.fa:                                            ; preds = %bb.ez
  %i.afh = mul nuw nsw i64 %i.acv, 1040, !dbg !7756
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acu, i64 noundef range(i64 1, 0) %i.afh, i64 noundef 8) #19, !dbg !7759, !noalias !6536
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit476.i.i, !dbg !7764

bb.fb:                                            ; preds = %bb.fe, %.lr.ph1014.i.i
  %.sroa.047.31013.i.i = phi i64 [ %.sroa.047.01031.i.i, %.lr.ph1014.i.i ], [ %.sroa.047.4.lcssa.i.i, %bb.fe ] ; 3 uses
  %.sroa.0128.01012.i.i = phi i64 [ 0, %.lr.ph1014.i.i ], [ %i.afi, %bb.fe ] ; 8 uses
  %i.afi = add nuw nsw i64 %.sroa.0128.01012.i.i, 1, !dbg !7765 ; 2 uses
  %exitcond1389.not.i.i = icmp eq i64 %.sroa.0128.01012.i.i, %i.pu, !dbg !7769
  br i1 %exitcond1389.not.i.i, label %.invoke4767, label %.noexc249.i.i, !dbg !7769

.noexc249.i.i:                                    ; preds = %bb.fb
  %i.afj = getelementptr inbounds nuw [1040 x i8], ptr %i.pt, i64 %.sroa.0128.01012.i.i, !dbg !7771 ; 5 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 1024, !dbg !7772
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 1032, !dbg !7775 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.afj, i8 0, i64 1032, i1 false), !dbg !7772, !noalias !6536
  store float 3.402000e+38, ptr %i.afl, align 8, !dbg !7775, !alias.scope !7777, !noalias !6536
  %i.afm = add nuw nsw i64 %.sroa.0128.01012.i.i, %.sroa.051.11030.i.i, !dbg !7780 ; 2 uses
  %i.afn = icmp ult i64 %i.afm, %i.os, !dbg !7782
  br i1 %i.afn, label %bb.fc, label %bb.fd, !dbg !7782

bb.fc:                                            ; preds = %.noexc249.i.i
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.afm, !dbg !7782
  %i.afp = load i32, ptr %i.afo, align 4, !dbg !7782, !noalias !6536, !noundef !14 ; 2 uses
  %i.afq = zext i32 %i.afp to i64, !dbg !7782
  %.not1084.i.i = icmp eq i32 %i.afp, 0, !dbg !7783
  br i1 %.not1084.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i, !dbg !7791

.lr.ph.preheader.i.i:                             ; preds = %bb.fc
  %i.afr = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %i.fy, i64 %.sroa.047.31013.i.i), !dbg !7792
  br label %.lr.ph.i.i, !dbg !7792

bb.fd:                                            ; preds = %.noexc249.i.i
  %umax1388.le.i.i = call i64 @llvm.umax.i64(i64 %i.os, i64 %.sroa.051.11030.i.i)
  br label %.invoke4767, !dbg !7782

._crit_edge.i.i:                                  ; preds = %bb.ff, %bb.fc
  %.sroa.047.4.lcssa.i.i = phi i64 [ %.sroa.047.31013.i.i, %bb.fc ], [ %i.agi, %bb.ff ], !dbg !7794 ; 2 uses
  %i.afs = invoke noundef float @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.afj, ptr noalias noundef nonnull %8)
          to label %bb.fe unwind label %.thread626.loopexit.i.i, !dbg !7795, !noalias !6536

bb.fe:                                            ; preds = %._crit_edge.i.i
  store float %i.afs, ptr %i.afl, align 8, !dbg !7796, !alias.scope !7799, !noalias !6536
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.sroa.0128.01012.i.i, !dbg !7802
  %i.afu = trunc nuw nsw i64 %.sroa.0128.01012.i.i to i32, !dbg !7802 ; 2 uses
  store i32 %i.afu, ptr %i.aft, align 4, !dbg !7802, !noalias !6490
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.sroa.0128.01012.i.i, !dbg !7803
  store i32 %i.afu, ptr %i.afv, align 4, !dbg !7803, !noalias !6490
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.sroa.0128.01012.i.i, !dbg !7804
  store i32 1, ptr %i.afw, align 4, !dbg !7804, !noalias !6490
  %exitcond1391.not.i.i = icmp eq i64 %i.afi, %umax1399.i.i, !dbg !7805
  br i1 %exitcond1391.not.i.i, label %._crit_edge1015.i.i, label %bb.fb, !dbg !6683

.lr.ph.i.i:                                       ; preds = %bb.ff, %.lr.ph.preheader.i.i
  %i.afx = phi i64 [ %i.agb, %bb.ff ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.047.41011.i.i = phi i64 [ %i.agi, %bb.ff ], [ %.sroa.047.31013.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %exitcond1386.not.i.i = icmp eq i64 %i.afx, %i.afr, !dbg !7792
  br i1 %exitcond1386.not.i.i, label %.invoke4767, label %bb.ff, !dbg !7792

.invoke4767:                                      ; preds = %bb.fb, %.lr.ph.i.i, %bb.fd
  %i.afy = phi i64 [ %.sroa.047.41011.i.i, %.lr.ph.i.i ], [ %umax1388.le.i.i, %bb.fd ], [ %i.pu, %bb.fb ]
  %i.afz = phi i64 [ %i.fy, %.lr.ph.i.i ], [ %i.os, %bb.fd ], [ %i.pu, %bb.fb ]
  %i.aga = phi ptr [ @100, %.lr.ph.i.i ], [ @99, %bb.fd ], [ @98, %bb.fb ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.afy, i64 noundef %i.afz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aga) #20
          to label %.cont4768 unwind label %.thread626.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !7807, !noalias !6536

.cont4768:                                        ; preds = %.invoke4767
  unreachable

bb.ff:                                            ; preds = %.lr.ph.i.i
  %i.agb = add nuw nsw i64 %i.afx, 1, !dbg !7808  ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sroa.047.41011.i.i, !dbg !7792
  %i.agd = load i8, ptr %i.agc, align 1, !dbg !7812, !alias.scope !7814, !noalias !7511, !noundef !14
  %i.age = zext i8 %i.agd to i64, !dbg !7817
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %i.age, !dbg !7819 ; 2 uses
  %i.agg = load i32, ptr %i.agf, align 4, !dbg !7820, !alias.scope !7821, !noalias !6536, !noundef !14
  %i.agh = add i32 %i.agg, 1, !dbg !7824
  store i32 %i.agh, ptr %i.agf, align 4, !dbg !7826, !alias.scope !7821, !noalias !6536
  store i64 %i.agb, ptr %i.afk, align 8, !dbg !7827, !alias.scope !7830, !noalias !6536
  %i.agi = add nuw nsw i64 %.sroa.047.41011.i.i, 1, !dbg !7833 ; 2 uses
  %exitcond1387.not.i.i = icmp eq i64 %i.agb, %i.afq, !dbg !7783
  br i1 %exitcond1387.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !7791

bb.fg:                                            ; preds = %bb.fj, %bb.aq
  %.sroa.051.01008.i.i = phi i64 [ 0, %bb.aq ], [ %i.agn, %bb.fj ] ; 2 uses
  %.sroa.063.01007.i.i = phi i64 [ 0, %bb.aq ], [ %.sroa.063.1.i.i, %bb.fj ] ; 5 uses
  %i.agj = icmp ult i64 %.sroa.063.01007.i.i, %i.os, !dbg !7835
  br i1 %i.agj, label %bb.fh, label %.invoke.i.i, !dbg !7835

bb.fh:                                            ; preds = %bb.fg
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %.sroa.063.01007.i.i, !dbg !7837 ; 2 uses
  %i.agl = load i32, ptr %i.agk, align 4, !dbg !7838, !noalias !6536, !noundef !14
  %i.agm = add i32 %i.agl, 1, !dbg !7840
  store i32 %i.agm, ptr %i.agk, align 4, !dbg !7842, !noalias !6536
  %i.agn = add nuw i64 %.sroa.051.01008.i.i, 1, !dbg !7843 ; 3 uses
  %i.ago = icmp eq i64 %i.agn, %.sroa.0.0.lcssa, !dbg !7845 ; 2 uses
  br i1 %i.ago, label %bb.fk, label %bb.fi, !dbg !7845

bb.fi:                                            ; preds = %bb.fh
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.sroa.051.01008.i.i, !dbg !7846
  %i.agq = load i8, ptr %i.agp, align 1, !dbg !7846, !alias.scope !6479, !noalias !7847, !noundef !14
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.agn, !dbg !7848
  %i.ags = load i8, ptr %i.agr, align 1, !dbg !7848, !alias.scope !6479, !noalias !7847, !noundef !14
  %.not237.i.i = icmp eq i8 %i.agq, %i.ags, !dbg !7846
  br i1 %.not237.i.i, label %bb.fj, label %bb.fk, !dbg !7846

.invoke.i.i:                                      ; preds = %bb.fg
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.063.01007.i.i, i64 noundef %i.os, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #20
          to label %.cont.i.i unwind label %.thread626.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !7849, !noalias !6536

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.fj:                                            ; preds = %bb.fk, %bb.fi
  %.sroa.063.1.i.i = phi i64 [ %i.agt, %bb.fk ], [ %.sroa.063.01007.i.i, %bb.fi ], !dbg !6889
  br i1 %i.ago, label %.preheader678.split.i.i, label %bb.fg, !dbg !6661

bb.fk:                                            ; preds = %bb.fi, %bb.fh
  %i.agt = add nuw i64 %.sroa.063.01007.i.i, 1, !dbg !7850
  br label %bb.fj, !dbg !7852

.thread593.i.i:                                   ; preds = %bb.du, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i, %bb.ar
  %.pn229620.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.ar ], [ %.pn.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i ], [ %.pn.i.i, %bb.du ] ; 2 uses
  %.sroa.0494.4617.i.i = phi ptr [ %.sroa.0494.3.lcssa.i.i, %bb.ar ], [ %.sroa.0494.6.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i ], [ %.sroa.0494.6.i.i, %bb.du ] ; 2 uses
  %.sroa.14.4616.i.i = phi i64 [ %.sroa.14.3.lcssa.i.i, %bb.ar ], [ %.sroa.14.6.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i ], [ %.sroa.14.6.i.i, %bb.du ] ; 2 uses
  %.sroa.0504.3615.i.i = phi ptr [ %.sroa.0504.4.ph625.i.i, %bb.ar ], [ %i.sj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i ], [ %i.sj, %bb.du ] ; 2 uses
  %.sroa.12.3614.i.i = phi i64 [ %.sroa.12.4.ph624.i.i, %bb.ar ], [ %i.sk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i ], [ %i.sk, %bb.du ] ; 2 uses
  %.sroa.0522.0611.i.i = phi ptr [ %.sroa.0522.1.ph623.i.i, %bb.ar ], [ %i.sc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i ], [ %i.sc, %bb.du ] ; 2 uses
  %.sroa.11.0610.i.i = phi i64 [ %.sroa.11.1.ph622.i.i, %bb.ar ], [ %i.sd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i ], [ %i.sd, %bb.du ] ; 2 uses
  %.sroa.0529.0609.i.i = phi ptr [ %i.ri, %bb.ar ], [ %.sroa.0529.2.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i ], [ %.sroa.0529.2.i.i, %bb.du ] ; 2 uses
  %.sroa.11530.0608.i.i = phi i64 [ %i.rj, %bb.ar ], [ %.sroa.11530.2.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i ], [ %.sroa.11530.2.i.i, %bb.du ] ; 2 uses
  %i.agu = icmp eq i64 %.sroa.11530.0608.i.i, 0, !dbg !7853
  br i1 %i.agu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit476.i.i, label %bb.fl, !dbg !7853

bb.fl:                                            ; preds = %.thread593.i.i
  %i.agv = shl nuw nsw i64 %.sroa.11530.0608.i.i, 2, !dbg !7857
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0529.0609.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0529.0609.i.i, i64 noundef range(i64 1, 0) %i.agv, i64 noundef 4) #19, !dbg !7860, !noalias !6536
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit476.i.i, !dbg !7865

bb.fm:                                            ; preds = %bb.ai, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.thread563.i.i
  %.pn229.pn.pn.pn.pn.pn568.i.i = phi { ptr, i32 } [ %i.ox, %.thread563.i.i ], [ %.pn229.pn.pn.pn.pn.i.i, %bb.ai ], [ %.pn229.pn.pn.pn.pn.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  %i.agw = icmp eq i64 %i.os, 0, !dbg !7866
  br i1 %i.agw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit477.i.i, label %bb.fn, !dbg !7866

bb.fn:                                            ; preds = %bb.fm
  %i.agx = shl nuw nsw i64 %i.os, 2, !dbg !7870
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.or) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.or, i64 noundef range(i64 1, 0) %i.agx, i64 noundef 4) #19, !dbg !7873, !noalias !6536
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit477.i.i, !dbg !7878

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit477.i.i: ; preds = %bb.fn, %bb.fm, %.thread.i.i
  %.pn229.pn.pn.pn.pn.pn.pn562.i.i = phi { ptr, i32 } [ %i.oq, %.thread.i.i ], [ %.pn229.pn.pn.pn.pn.pn568.i.i, %bb.fn ], [ %.pn229.pn.pn.pn.pn.pn568.i.i, %bb.fm ] ; 2 uses
  %i.agy = icmp eq i64 %i.of, 0, !dbg !7879
  br i1 %i.agy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.fo, !dbg !7879

bb.fo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit477.i.i
  %i.agz = shl nuw nsw i64 %i.of, 2, !dbg !7883
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oe) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oe, i64 noundef range(i64 1, 0) %i.agz, i64 noundef 4) #19, !dbg !7886, !noalias !6536
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !7891

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit462.i.i, %bb.co
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ky, i64 noundef range(i64 1, 0) %i.kz, i64 noundef 1) #19, !dbg !7892, !noalias !5931
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !7901

bb.fp:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i, %.split460.i
  %.sroa.0.0462.i = phi i64 [ %spec.store.select.i, %.split460.i ], [ %i.axe, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ] ; 14 uses
  %.sroa.031.0461.i = phi i64 [ 0, %.split460.i ], [ %i.aha, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ]
  %i.aha = add nuw nsw i64 %.sroa.031.0461.i, 1, !dbg !7902 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7908), !dbg !7911
  call void @llvm.experimental.noalias.scope.decl(metadata !7913), !dbg !7911
  call void @llvm.experimental.noalias.scope.decl(metadata !7915), !dbg !7911
  call void @llvm.experimental.noalias.scope.decl(metadata !7917), !dbg !7911
  call void @llvm.experimental.noalias.scope.decl(metadata !7919), !dbg !7911
  call void @llvm.experimental.noalias.scope.decl(metadata !7921), !dbg !7911
  %i.ahb = icmp eq i64 %.sroa.0.0462.i, 0, !dbg !7923
  br i1 %i.ahb, label %.loopexit86.i, label %bb.fq, !dbg !7923

bb.fq:                                            ; preds = %bb.fp
  %i.ahc = add nsw i64 %.sroa.0.0462.i, 7, !dbg !7926
  %i.ahd = lshr i64 %i.ahc, 3, !dbg !7930         ; 9 uses
  %i.ahe = icmp eq i64 %.sroa.0.0462.i, 1, !dbg !7931
  br i1 %i.ahe, label %.preheader.i171.i.preheader, label %bb.fr, !dbg !7931

.preheader.i171.i.preheader:                      ; preds = %bb.fq
  br i1 %min.iters.check, label %.preheader.i171.i.preheader5462, label %vector.body4528, !dbg !7935

.preheader.i171.i.preheader5462:                  ; preds = %vector.body4528, %.preheader.i171.i.preheader
  %.sroa.065.0392.i.i.ph = phi i64 [ 0, %.preheader.i171.i.preheader ], [ %n.vec, %vector.body4528 ]
  br label %.preheader.i171.i, !dbg !7935

vector.body4528:                                  ; preds = %.preheader.i171.i.preheader, %vector.body4528
  %index4529 = phi i64 [ %index.next4530, %vector.body4528 ], [ 0, %.preheader.i171.i.preheader ], !dbg !7938 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ky, i64 %index4529, !dbg !7935 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16, !dbg !7935
  store <16 x i8> zeroinitializer, ptr %i.ahf, align 1, !dbg !7935, !alias.scope !7921, !noalias !7949
  store <16 x i8> zeroinitializer, ptr %i.ahg, align 1, !dbg !7935, !alias.scope !7921, !noalias !7949
  %index.next4530 = add nuw i64 %index4529, 32, !dbg !7938 ; 2 uses
  %i.ahh = icmp eq i64 %index.next4530, %n.vec, !dbg !7950
  br i1 %i.ahh, label %.preheader.i171.i.preheader5462, label %vector.body4528, !dbg !7950, !llvm.loop !7951

bb.fr:                                            ; preds = %bb.fq
  %i.ahi = shl nuw nsw i64 %.sroa.0.0462.i, 8, !dbg !7952 ; 2 uses
  %.not110.i.i = icmp samesign ugt i64 %i.ahi, %i.lp
  br i1 %.not110.i.i, label %.invoke1322.i, label %.preheader309.split.i.i, !dbg !7953, !prof !751

.preheader309.split.i.i:                          ; preds = %bb.fr
  %.idx.i166.i = shl nuw nsw i64 %.sroa.0.0462.i, 10, !dbg !7962
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lo, i8 0, i64 %.idx.i166.i, i1 false), !dbg !7971, !alias.scope !7915, !noalias !7974
  br label %bb.fs, !dbg !7975

bb.fs:                                            ; preds = %bb.hv, %.preheader309.split.i.i
  %.sroa.067.0348.i.i = phi i64 [ 0, %.preheader309.split.i.i ], [ %i.ahj, %bb.hv ] ; 4 uses
  %i.ahj = add nuw nsw i64 %.sroa.067.0348.i.i, 1, !dbg !7981 ; 2 uses
  %exitcond.not.i167.i = icmp eq i64 %.sroa.067.0348.i.i, %i.gm, !dbg !7987
  br i1 %exitcond.not.i167.i, label %.invoke1320.i, label %bb.ht, !dbg !7987

.loopexit307.i.i:                                 ; preds = %bb.hs
  %i.ahk = icmp eq i64 %i.ahl, 0, !dbg !7989
  br i1 %i.ahk, label %bb.ft, label %.split.i.i, !dbg !7989

bb.ft:                                            ; preds = %.loopexit307.i.i
  br i1 %i.mx, label %._crit_edge.i168.i, label %.lr.ph352.i.i, !dbg !7990

.split.i.i:                                       ; preds = %bb.hv, %.loopexit307.i.i
  %.sroa.04.0350.i.i = phi i64 [ %i.ahl, %.loopexit307.i.i ], [ 256, %bb.hv ]
  %i.ahl = add nsw i64 %.sroa.04.0350.i.i, -1, !dbg !7997 ; 4 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.gl, i64 %i.ahl, !dbg !8000
  %i.ahm = mul nuw nsw i64 %i.ahl, %.sroa.0.0462.i
  br label %bb.hn, !dbg !8002

.lr.ph352.i.i:                                    ; preds = %bb.ft, %.noexc174.i
  %.sroa.018.0351.i.i = phi ptr [ %i.ahn, %.noexc174.i ], [ %i.ls, %bb.ft ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !dbg !8007, !noalias !8009
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.cv)
          to label %.noexc174.i unwind label %.loopexit.split-lp.loopexit.i, !dbg !8010, !noalias !5931

.noexc174.i:                                      ; preds = %.lr.ph352.i.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %.sroa.018.0351.i.i, i64 32, !dbg !8013 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.018.0351.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.cv, i64 32, i1 false), !dbg !8017, !noalias !8018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !8019, !noalias !8009
  %i.aho = icmp eq ptr %i.ahn, %i.mw, !dbg !8020
  br i1 %i.aho, label %._crit_edge.i168.i, label %.lr.ph352.i.i, !dbg !7990

._crit_edge.i168.i:                               ; preds = %.noexc174.i, %bb.ft
  %i.ahp = mul i64 %i.ahd, %.sroa.0.0.lcssa, !dbg !8023 ; 4 uses
  %.not111.i.i = icmp ugt i64 %i.ahp, %i.mh
  br i1 %.not111.i.i, label %.invoke1322.i, label %bb.fu, !dbg !8024, !prof !751

bb.fu:                                            ; preds = %._crit_edge.i168.i
  %i.ahq = icmp samesign eq i64 %i.ahp, 0, !dbg !8035
  br i1 %i.ahq, label %._crit_edge356.i.i, label %.lr.ph355.preheader.i.i, !dbg !8045

.lr.ph355.preheader.i.i:                          ; preds = %bb.fu
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mg, i8 0, i64 %i.ahp, i1 false), !dbg !8046, !alias.scope !7919, !noalias !8048
  br label %._crit_edge356.i.i

._crit_edge356.i.i:                               ; preds = %.lr.ph355.preheader.i.i, %bb.fu
  br i1 %.not112.i.i, label %.invoke1322.i, label %.lr.ph377.i.i, !dbg !8049, !prof !751

.lr.ph377.i.i:                                    ; preds = %._crit_edge356.i.i
  %i.ahr = lshr i64 %.sroa.0.0462.i, 3            ; 3 uses
  %.not.i126.i.i = icmp samesign ugt i64 %i.ahr, %i.lt
  %.idx394.i.i = shl nuw nsw i64 %i.ahr, 5
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.idx394.i.i
  %i.aht = icmp eq i64 %i.ahr, 0
  %i.ahu = and i64 %.sroa.0.0462.i, 36028797018963960 ; 15 uses
  %i.ahv = and i64 %.sroa.0.0462.i, 7             ; 8 uses
  %.not.i.i169.i = icmp samesign ugt i64 %i.ahd, %i.lt
  %.idx395.i.i = shl i64 %i.ahd, 5                ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.idx395.i.i
  br i1 %.not.i126.i.i, label %.lr.ph377.split.us.i.i, label %.lr.ph377.split.preheader.i.i, !prof !168

.lr.ph377.split.preheader.i.i:                    ; preds = %.lr.ph377.i.i
  %i.ahx = icmp eq i64 %i.ahv, 0
  %14 = add i64 %.idx395.i.i, -32, !dbg !8057
  %15 = lshr exact i64 %14, 5, !dbg !8057
  %i.ahy = lshr exact i64 %i.ahu, 3               ; 3 uses
  %i.ahz = icmp samesign ult i64 %i.ahy, %i.lt
  %i.aia = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.ahy ; 2 uses
  %i.aib = trunc i64 %i.ahu to i8
  %i.aic = icmp eq i64 %i.ahv, 1
  %i.aid = lshr exact i64 %i.ahu, 3               ; 3 uses
  %i.aie = icmp samesign ult i64 %i.aid, %i.lt
  %i.aif = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.aid
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 4 ; 2 uses
  %i.aih = trunc i64 %i.ahu to i8
  %i.aii = or disjoint i8 %i.aih, 1
  %i.aij = icmp eq i64 %i.ahv, 2
  %i.aik = lshr exact i64 %i.ahu, 3               ; 3 uses
  %i.ail = icmp samesign ult i64 %i.aik, %i.lt
  %i.aim = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.aik
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 8 ; 2 uses
  %i.aio = trunc i64 %i.ahu to i8
  %i.aip = or disjoint i8 %i.aio, 2
  %i.aiq = icmp eq i64 %i.ahv, 3
  %i.air = lshr exact i64 %i.ahu, 3               ; 3 uses
  %i.ais = icmp samesign ult i64 %i.air, %i.lt
  %i.ait = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.air
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 12 ; 2 uses
  %i.aiv = trunc i64 %i.ahu to i8
  %i.aiw = or disjoint i8 %i.aiv, 3
  %i.aix = icmp eq i64 %i.ahv, 4
  %i.aiy = lshr exact i64 %i.ahu, 3               ; 3 uses
  %i.aiz = icmp samesign ult i64 %i.aiy, %i.lt
  %i.aja = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.aiy
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 16 ; 2 uses
  %i.ajc = trunc i64 %i.ahu to i8
  %i.ajd = or disjoint i8 %i.ajc, 4
  %i.aje = icmp eq i64 %i.ahv, 5
  %i.ajf = lshr exact i64 %i.ahu, 3               ; 3 uses
  %i.ajg = icmp samesign ult i64 %i.ajf, %i.lt
  %i.ajh = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.ajf
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 20 ; 2 uses
  %i.ajj = trunc i64 %i.ahu to i8
  %i.ajk = or disjoint i8 %i.ajj, 5
  %i.ajl = icmp eq i64 %i.ahv, 6
  %i.ajm = lshr exact i64 %i.ahu, 3               ; 3 uses
  %i.ajn = icmp samesign ult i64 %i.ajm, %i.lt
  %i.ajo = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.ajm
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 24 ; 2 uses
  %i.ajq = trunc i64 %i.ahu to i8
  %i.ajr = or disjoint i8 %i.ajq, 6
  br label %.lr.ph377.split.i.i, !dbg !8057

.lr.ph377.split.us.i.i:                           ; preds = %.lr.ph377.i.i
  %.not397.i.i = icmp eq i64 %i.kz, 0, !dbg !8057
  br i1 %.not397.i.i, label %.invoke1320.i, label %bb.fv, !dbg !8057

bb.fv:                                            ; preds = %.lr.ph377.split.us.i.i
  %i.ajs = load i8, ptr %i.fx, align 1, !dbg !8060, !alias.scope !8064, !noalias !8067, !noundef !14
  %i.ajt = zext i8 %i.ajs to i64, !dbg !8068
  %i.aju = mul nuw nsw i64 %.sroa.0.0462.i, %i.ajt, !dbg !8070
  %.not.i125.us.i.i = icmp samesign ugt i64 %i.aju, %i.lp, !dbg !8073
  br i1 %.not.i125.us.i.i, label %.split381.us.i.i, label %.invoke1324.i, !dbg !8073, !prof !168

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i: ; preds = %bb.gv
  %i.ajv = icmp eq ptr %i.ajx, %i.my, !dbg !8081
  br i1 %i.ajv, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i, label %.lr.ph377.split.i.i, !dbg !8094

.lr.ph377.split.i.i:                              ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i, %.lr.ph377.split.preheader.i.i
  %.sroa.0.0289375.i.i = phi ptr [ %i.ajx, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i ], [ %i.fx, %.lr.ph377.split.preheader.i.i ] ; 2 uses
  %.sroa.7.0374.i.i = phi i64 [ %i.ajy, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i ], [ 0, %.lr.ph377.split.preheader.i.i ] ; 8 uses
  %16 = mul i64 %i.ahd, %.sroa.7.0374.i.i, !dbg !8095
  %umax = call i64 @llvm.umax.i64(i64 %i.mh, i64 %16), !dbg !8095
  %i.ajw = mul i64 %i.ahd, %.sroa.7.0374.i.i, !dbg !8095
  %17 = sub i64 %umax, %i.ajw, !dbg !8095
  %umin = call i64 @llvm.umin.i64(i64 %15, i64 %17), !dbg !8095 ; 2 uses
  %18 = add nuw nsw i64 %umin, 1, !dbg !8095      ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.sroa.0.0289375.i.i, i64 1, !dbg !8095 ; 2 uses
  %i.ajy = add nuw i64 %.sroa.7.0374.i.i, 1, !dbg !8098
  %exitcond425.not.i.i = icmp eq i64 %.sroa.7.0374.i.i, %i.kz, !dbg !8057
  br i1 %exitcond425.not.i.i, label %.invoke1320.i, label %bb.fz, !dbg !8057

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i: ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i
  br i1 %i.nh, label %.lr.ph390.preheader.i.i, label %.invoke1320.i, !dbg !8101

.lr.ph390.preheader.i.i:                          ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i
  %i.ajz = load i8, ptr %i.ni, align 1, !dbg !8101, !alias.scope !7921, !noalias !7949, !noundef !14
  %i.aka = mul i64 %i.ahd, %i.ng, !dbg !8104
  br label %.lr.ph390.i.i, !dbg !8107

.lr.ph390.i.i:                                    ; preds = %bb.fy, %.lr.ph390.preheader.i.i
  %.sroa.0.1389.i.i = phi i64 [ %.sroa.0.2.i.i, %bb.fy ], [ 1, %.lr.ph390.preheader.i.i ] ; 2 uses
  %.sroa.061.0388.i.i = phi i8 [ %.sroa.061.1.i.i, %bb.fy ], [ %i.ajz, %.lr.ph390.preheader.i.i ] ; 4 uses
  %.sroa.059.0387.i.i = phi i64 [ %i.akc, %bb.fy ], [ %i.aka, %.lr.ph390.preheader.i.i ]
  %.sroa.052.0386.i.i = phi i64 [ %i.akb, %bb.fy ], [ %i.ng, %.lr.ph390.preheader.i.i ]
  %i.akb = add i64 %.sroa.052.0386.i.i, -1, !dbg !8110 ; 4 uses
  %i.akc = sub i64 %.sroa.059.0387.i.i, %i.ahd, !dbg !8111 ; 2 uses
  %i.akd = lshr i8 %.sroa.061.0388.i.i, 3, !dbg !8113
  %i.ake = zext nneg i8 %i.akd to i64, !dbg !8113
  %i.akf = add i64 %i.akc, %i.ake, !dbg !8114     ; 3 uses
  %i.akg = icmp ult i64 %i.akf, %i.mh, !dbg !8107
  br i1 %i.akg, label %bb.fw, label %.invoke1320.i, !dbg !8107

bb.fw:                                            ; preds = %.lr.ph390.i.i
  %i.akh = and i8 %.sroa.061.0388.i.i, 7, !dbg !8116
  %i.aki = shl nuw i8 1, %i.akh, !dbg !8117
  %i.akj = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.akf, !dbg !8107
  %i.akk = load i8, ptr %i.akj, align 1, !dbg !8107, !alias.scope !7919, !noalias !8048, !noundef !14
  %i.akl = and i8 %i.akk, %i.aki, !dbg !8107
  %i.akm = icmp eq i8 %i.akl, 0, !dbg !8107
  br i1 %i.akm, label %bb.fy, label %bb.fx, !dbg !8107

bb.fx:                                            ; preds = %bb.fw
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.akb, !dbg !8118
  %i.ako = load i8, ptr %i.akn, align 1, !dbg !8118, !alias.scope !7921, !noalias !7949, !noundef !14 ; 2 uses
  %.not115.i.i = icmp ne i8 %.sroa.061.0388.i.i, %i.ako, !dbg !8119
  %i.akp = zext i1 %.not115.i.i to i64, !dbg !8119
  %spec.select117.i.i = add i64 %.sroa.0.1389.i.i, %i.akp, !dbg !8119
  br label %bb.fy, !dbg !8119

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sroa.061.1.i.i = phi i8 [ %.sroa.061.0388.i.i, %bb.fw ], [ %i.ako, %bb.fx ], !dbg !8120 ; 2 uses
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.1389.i.i, %bb.fw ], [ %spec.select117.i.i, %bb.fx ], !dbg !8121 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.akb, !dbg !8122
  store i8 %.sroa.061.1.i.i, ptr %i.akq, align 1, !dbg !8122, !alias.scope !7921, !noalias !7949
  %.not114.i.i = icmp eq i64 %i.akb, 0, !dbg !8123
  br i1 %.not114.i.i, label %.loopexit86.i, label %.lr.ph390.i.i, !dbg !8123

bb.fz:                                            ; preds = %.lr.ph377.split.i.i
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.sroa.7.0374.i.i, !dbg !8124 ; 15 uses
  %i.aks = mul i64 %.sroa.7.0374.i.i, %i.ahd, !dbg !8125 ; 2 uses
  %i.akt = load i8, ptr %.sroa.0.0289375.i.i, align 1, !dbg !8060, !alias.scope !8064, !noalias !8067, !noundef !14
  %i.aku = zext i8 %i.akt to i64, !dbg !8068
  %i.akv = mul nuw nsw i64 %.sroa.0.0462.i, %i.aku, !dbg !8070 ; 4 uses
  %.not.i125.i.i = icmp samesign ugt i64 %i.akv, %i.lp, !dbg !8073
  br i1 %.not.i125.i.i, label %.split381.us.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !8073, !prof !168

.split381.us.i.i:                                 ; preds = %bb.fz, %bb.fv
  br label %.invoke1324.i, !dbg !8127

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.fz
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.akv, !dbg !8128
  %i.akx = sub nuw nsw i64 %i.lp, %i.akv, !dbg !8135 ; 2 uses
  br i1 %i.aht, label %._crit_edge363.i.i, label %.lr.ph362.i.i, !dbg !8136

.lr.ph362.i.i:                                    ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.hm
  %.sroa.049.0361.i.i = phi float [ %.sroa.049.4.7.i.i, %bb.hm ], [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  %.sroa.0160.0360.i.i = phi ptr [ %i.aky, %bb.hm ], [ %i.ls, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 10 uses
  %.sroa.7162.0359.i.i = phi i64 [ %i.akz, %bb.hm ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !8145, !noalias !8009
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cu, i8 0, i64 32, i1 false), !noalias !8009
  %i.aky = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i, i64 32, !dbg !8148 ; 2 uses
  %i.akz = add nuw nsw i64 %.sroa.7162.0359.i.i, 1, !dbg !8151
  %i.ala = shl nuw nsw i64 %.sroa.7162.0359.i.i, 3, !dbg !8154 ; 11 uses
  %.not.i145.i.i = icmp samesign ugt i64 %i.ala, %i.akx, !dbg !8155
  br i1 %.not.i145.i.i, label %.invoke1324.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i, !dbg !8155, !prof !168

._crit_edge363.i.i:                               ; preds = %bb.hm, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.sroa.049.0.lcssa.i.i = phi float [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.049.4.7.i.i, %bb.hm ], !dbg !8159 ; 3 uses
  %i.alb = add nuw nsw i64 %i.akv, %i.ahu, !dbg !8160 ; 3 uses
  %.not.i132.i.i = icmp samesign ugt i64 %i.alb, %i.lp, !dbg !8163
  br i1 %.not.i132.i.i, label %.invoke1324.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i, !dbg !8163, !prof !168

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i: ; preds = %._crit_edge363.i.i
  %i.alc = sub nuw nsw i64 %i.lp, %i.alb, !dbg !8166
  %.not.i137.i.i = icmp samesign ugt i64 %i.ahv, %i.alc, !dbg !8168
  br i1 %.not.i137.i.i, label %.invoke1324.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i, !dbg !8168, !prof !168

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.alb, !dbg !8171 ; 7 uses
  br i1 %i.ahx, label %._crit_edge368.i.i, label %.lr.ph367.i.i, !dbg !8173

.lr.ph367.i.i:                                    ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 4, !dbg !8180
  br i1 %i.ahz, label %bb.ga, label %.invoke1320.i, !dbg !8184

._crit_edge368.i.i:                               ; preds = %bb.gr, %bb.gs, %bb.gb, %bb.ge, %bb.gh, %bb.gk, %bb.gn, %bb.gq, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i
  %.sroa.049.1.lcssa.i.i = phi float [ %.sroa.049.0.lcssa.i.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i ], [ %.sroa.049.2.i.i, %bb.gb ], [ %.sroa.049.2.i.i.1, %bb.ge ], [ %.sroa.049.2.i.i.2, %bb.gh ], [ %.sroa.049.2.i.i.3, %bb.gk ], [ %.sroa.049.2.i.i.4, %bb.gn ], [ %.sroa.049.2.i.i.5, %bb.gq ], [ %i.aml, %bb.gs ], [ %.sroa.049.2.i.i.5, %bb.gr ], !dbg !8186 ; 2 uses
  %i.alf = icmp samesign ult i64 %.sroa.7.0374.i.i, 2000, !dbg !8187
  br i1 %i.alf, label %bb.gw, label %bb.gu, !dbg !8187

bb.ga:                                            ; preds = %.lr.ph367.i.i
  %i.alg = load float, ptr %i.ald, align 4, !dbg !8188, !alias.scope !7915, !noalias !7974, !noundef !14
  %i.alh = load float, ptr %i.aia, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018, !noundef !14
  %i.ali = fadd float %i.alg, %i.alh, !dbg !8190  ; 3 uses
  store float %i.ali, ptr %i.aia, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018
  %i.alj = fcmp olt float %i.ali, %.sroa.049.0.lcssa.i.i, !dbg !8191
  br i1 %i.alj, label %bb.gt, label %bb.gb, !dbg !8191

bb.gb:                                            ; preds = %bb.gt, %bb.ga
  %.sroa.049.2.i.i = phi float [ %i.ali, %bb.gt ], [ %.sroa.049.0.lcssa.i.i, %bb.ga ], !dbg !8186 ; 3 uses
  br i1 %i.aic, label %._crit_edge368.i.i, label %.lr.ph367.i.i.1, !dbg !8173

.lr.ph367.i.i.1:                                  ; preds = %bb.gb
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ald, i64 8, !dbg !8180
  br i1 %i.aie, label %bb.gc, label %.invoke1320.i, !dbg !8184

bb.gc:                                            ; preds = %.lr.ph367.i.i.1
  %i.all = load float, ptr %i.ale, align 4, !dbg !8188, !alias.scope !7915, !noalias !7974, !noundef !14
  %i.alm = load float, ptr %i.aig, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018, !noundef !14
  %i.aln = fadd float %i.all, %i.alm, !dbg !8190  ; 3 uses
  store float %i.aln, ptr %i.aig, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018
  %i.alo = fcmp olt float %i.aln, %.sroa.049.2.i.i, !dbg !8191
  br i1 %i.alo, label %bb.gd, label %bb.ge, !dbg !8191

bb.gd:                                            ; preds = %bb.gc
  store i8 %i.aii, ptr %i.akr, align 1, !dbg !8192, !alias.scope !7921, !noalias !7949
  br label %bb.ge, !dbg !8193

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.sroa.049.2.i.i.1 = phi float [ %i.aln, %bb.gd ], [ %.sroa.049.2.i.i, %bb.gc ], !dbg !8186 ; 3 uses
  br i1 %i.aij, label %._crit_edge368.i.i, label %.lr.ph367.i.i.2, !dbg !8173

.lr.ph367.i.i.2:                                  ; preds = %bb.ge
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ald, i64 12, !dbg !8180
  br i1 %i.ail, label %bb.gf, label %.invoke1320.i, !dbg !8184

bb.gf:                                            ; preds = %.lr.ph367.i.i.2
  %i.alq = load float, ptr %i.alk, align 4, !dbg !8188, !alias.scope !7915, !noalias !7974, !noundef !14
  %i.alr = load float, ptr %i.ain, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018, !noundef !14
  %i.als = fadd float %i.alq, %i.alr, !dbg !8190  ; 3 uses
  store float %i.als, ptr %i.ain, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018
  %i.alt = fcmp olt float %i.als, %.sroa.049.2.i.i.1, !dbg !8191
  br i1 %i.alt, label %bb.gg, label %bb.gh, !dbg !8191

bb.gg:                                            ; preds = %bb.gf
  store i8 %i.aip, ptr %i.akr, align 1, !dbg !8192, !alias.scope !7921, !noalias !7949
  br label %bb.gh, !dbg !8193

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.sroa.049.2.i.i.2 = phi float [ %i.als, %bb.gg ], [ %.sroa.049.2.i.i.1, %bb.gf ], !dbg !8186 ; 3 uses
  br i1 %i.aiq, label %._crit_edge368.i.i, label %.lr.ph367.i.i.3, !dbg !8173

.lr.ph367.i.i.3:                                  ; preds = %bb.gh
  %i.alu = getelementptr inbounds nuw i8, ptr %i.ald, i64 16, !dbg !8180
  br i1 %i.ais, label %bb.gi, label %.invoke1320.i, !dbg !8184

bb.gi:                                            ; preds = %.lr.ph367.i.i.3
  %i.alv = load float, ptr %i.alp, align 4, !dbg !8188, !alias.scope !7915, !noalias !7974, !noundef !14
  %i.alw = load float, ptr %i.aiu, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018, !noundef !14
  %i.alx = fadd float %i.alv, %i.alw, !dbg !8190  ; 3 uses
  store float %i.alx, ptr %i.aiu, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018
  %i.aly = fcmp olt float %i.alx, %.sroa.049.2.i.i.2, !dbg !8191
  br i1 %i.aly, label %bb.gj, label %bb.gk, !dbg !8191

bb.gj:                                            ; preds = %bb.gi
  store i8 %i.aiw, ptr %i.akr, align 1, !dbg !8192, !alias.scope !7921, !noalias !7949
  br label %bb.gk, !dbg !8193

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.sroa.049.2.i.i.3 = phi float [ %i.alx, %bb.gj ], [ %.sroa.049.2.i.i.2, %bb.gi ], !dbg !8186 ; 3 uses
  br i1 %i.aix, label %._crit_edge368.i.i, label %.lr.ph367.i.i.4, !dbg !8173

.lr.ph367.i.i.4:                                  ; preds = %bb.gk
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ald, i64 20, !dbg !8180
  br i1 %i.aiz, label %bb.gl, label %.invoke1320.i, !dbg !8184

bb.gl:                                            ; preds = %.lr.ph367.i.i.4
  %i.ama = load float, ptr %i.alu, align 4, !dbg !8188, !alias.scope !7915, !noalias !7974, !noundef !14
  %i.amb = load float, ptr %i.ajb, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018, !noundef !14
  %i.amc = fadd float %i.ama, %i.amb, !dbg !8190  ; 3 uses
  store float %i.amc, ptr %i.ajb, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018
  %i.amd = fcmp olt float %i.amc, %.sroa.049.2.i.i.3, !dbg !8191
  br i1 %i.amd, label %bb.gm, label %bb.gn, !dbg !8191

bb.gm:                                            ; preds = %bb.gl
  store i8 %i.ajd, ptr %i.akr, align 1, !dbg !8192, !alias.scope !7921, !noalias !7949
  br label %bb.gn, !dbg !8193

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.sroa.049.2.i.i.4 = phi float [ %i.amc, %bb.gm ], [ %.sroa.049.2.i.i.3, %bb.gl ], !dbg !8186 ; 3 uses
  br i1 %i.aje, label %._crit_edge368.i.i, label %.lr.ph367.i.i.5, !dbg !8173

.lr.ph367.i.i.5:                                  ; preds = %bb.gn
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ald, i64 24, !dbg !8180
  br i1 %i.ajg, label %bb.go, label %.invoke1320.i, !dbg !8184

bb.go:                                            ; preds = %.lr.ph367.i.i.5
  %i.amf = load float, ptr %i.alz, align 4, !dbg !8188, !alias.scope !7915, !noalias !7974, !noundef !14
  %i.amg = load float, ptr %i.aji, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018, !noundef !14
  %i.amh = fadd float %i.amf, %i.amg, !dbg !8190  ; 3 uses
  store float %i.amh, ptr %i.aji, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018
  %i.ami = fcmp olt float %i.amh, %.sroa.049.2.i.i.4, !dbg !8191
  br i1 %i.ami, label %bb.gp, label %bb.gq, !dbg !8191

bb.gp:                                            ; preds = %bb.go
  store i8 %i.ajk, ptr %i.akr, align 1, !dbg !8192, !alias.scope !7921, !noalias !7949
  br label %bb.gq, !dbg !8193

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.sroa.049.2.i.i.5 = phi float [ %i.amh, %bb.gp ], [ %.sroa.049.2.i.i.4, %bb.go ], !dbg !8186 ; 3 uses
  br i1 %i.ajl, label %._crit_edge368.i.i, label %.lr.ph367.i.i.6, !dbg !8173

.lr.ph367.i.i.6:                                  ; preds = %bb.gq
  br i1 %i.ajn, label %bb.gr, label %.invoke1320.i, !dbg !8184

bb.gr:                                            ; preds = %.lr.ph367.i.i.6
  %i.amj = load float, ptr %i.ame, align 4, !dbg !8188, !alias.scope !7915, !noalias !7974, !noundef !14
  %i.amk = load float, ptr %i.ajp, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018, !noundef !14
  %i.aml = fadd float %i.amj, %i.amk, !dbg !8190  ; 3 uses
  store float %i.aml, ptr %i.ajp, align 4, !dbg !8190, !alias.scope !7917, !noalias !8018
  %i.amm = fcmp olt float %i.aml, %.sroa.049.2.i.i.5, !dbg !8191
  br i1 %i.amm, label %bb.gs, label %._crit_edge368.i.i, !dbg !8191

bb.gs:                                            ; preds = %bb.gr
  store i8 %i.ajr, ptr %i.akr, align 1, !dbg !8192, !alias.scope !7921, !noalias !7949
  br label %._crit_edge368.i.i, !dbg !8193

bb.gt:                                            ; preds = %bb.ga
  store i8 %i.aib, ptr %i.akr, align 1, !dbg !8192, !alias.scope !7921, !noalias !7949
  br label %bb.gb, !dbg !8193

bb.gu:                                            ; preds = %bb.gw, %._crit_edge368.i.i
  %.sroa.029.0.i.i = phi float [ %i.atw, %bb.gw ], [ 2.810000e+01, %._crit_edge368.i.i ], !dbg !8194 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8195), !dbg !8198
  br i1 %.not.i.i169.i, label %.invoke1322.i, label %.lr.ph373.i.i.preheader, !dbg !8199, !prof !751

.lr.ph373.i.i.preheader:                          ; preds = %bb.gu
  %min.iters.check4533 = icmp samesign ult i64 %umin, 4, !dbg !8213
  br i1 %min.iters.check4533, label %.lr.ph373.i.i.preheader5454, label %vector.ph4534, !dbg !8213

vector.ph4534:                                    ; preds = %.lr.ph373.i.i.preheader
  %i.amn = and i64 %18, 3                         ; 2 uses
  %i.amo = icmp eq i64 %i.amn, 0
  %i.amp = select i1 %i.amo, i64 4, i64 %i.amn
  %n.vec4535 = sub nsw i64 %18, %i.amp            ; 3 uses
  %i.amq = shl i64 %n.vec4535, 5
  %i.amr = getelementptr i8, ptr %i.ls, i64 %i.amq
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert4536 = insertelement <4 x float> poison, float %.sroa.029.0.i.i, i64 0 ; 5 uses
  %broadcast.splat4537 = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep = getelementptr i8, ptr %i.mg, i64 %i.aks, !dbg !8213
  %i.ams = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <16 x i32> zeroinitializer
  %i.amt = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <16 x i32> zeroinitializer
  %i.amu = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <16 x i32> zeroinitializer
  %i.amv = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body4538, !dbg !8213

vector.body4538:                                  ; preds = %vector.body4538, %vector.ph4534
  %index4539 = phi i64 [ 0, %vector.ph4534 ], [ %index.next4544, %vector.body4538 ], !dbg !8221 ; 3 uses
  %i.amw = shl i64 %index4539, 5                  ; 4 uses
  %next.gep = getelementptr i8, ptr %i.ls, i64 %i.amw ; 9 uses
  %i.amx = getelementptr i8, ptr %i.ls, i64 %i.amw ; 8 uses
  %next.gep4540 = getelementptr i8, ptr %i.amx, i64 32
  %i.amy = getelementptr i8, ptr %i.ls, i64 %i.amw ; 8 uses
  %next.gep4541 = getelementptr i8, ptr %i.amy, i64 64
  %i.amz = getelementptr i8, ptr %i.ls, i64 %i.amw ; 8 uses
  %next.gep4542 = getelementptr i8, ptr %i.amz, i64 96
  %i.ana = getelementptr inbounds nuw i8, ptr %next.gep, i64 4, !dbg !8223
  %i.anb = getelementptr i8, ptr %i.amx, i64 36, !dbg !8223
  %i.anc = getelementptr i8, ptr %i.amy, i64 68, !dbg !8223
  %i.and = getelementptr i8, ptr %i.amz, i64 100, !dbg !8223
  %i.ane = load float, ptr %i.ana, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.anf = load float, ptr %i.anb, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.ang = load float, ptr %i.anc, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.anh = load float, ptr %i.and, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.ani = insertelement <4 x float> poison, float %i.ane, i64 0
  %i.anj = insertelement <4 x float> %i.ani, float %i.anf, i64 1
  %i.ank = insertelement <4 x float> %i.anj, float %i.ang, i64 2
  %i.anl = insertelement <4 x float> %i.ank, float %i.anh, i64 3
  %i.anm = fsub <4 x float> %i.anl, %broadcast.splat, !dbg !8225 ; 3 uses
  %i.ann = fcmp oge <4 x float> %i.anm, %broadcast.splat4537, !dbg !8229
  %i.ano = select <4 x i1> %i.ann, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer, !dbg !8233
  %i.anp = load float, ptr %next.gep, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.anq = load float, ptr %next.gep4540, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.anr = load float, ptr %next.gep4541, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.ans = load float, ptr %next.gep4542, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.ant = insertelement <4 x float> poison, float %i.anp, i64 0
  %i.anu = insertelement <4 x float> %i.ant, float %i.anq, i64 1
  %i.anv = insertelement <4 x float> %i.anu, float %i.anr, i64 2
  %i.anw = insertelement <4 x float> %i.anv, float %i.ans, i64 3
  %i.anx = fsub <4 x float> %i.anw, %broadcast.splat, !dbg !8237 ; 3 uses
  %i.any = fcmp oge <4 x float> %i.anx, %broadcast.splat4537, !dbg !8238
  %i.anz = zext <4 x i1> %i.any to <4 x i8>, !dbg !8239
  %i.aoa = or disjoint <4 x i8> %i.ano, %i.anz, !dbg !8240
  %i.aob = getelementptr inbounds nuw i8, ptr %next.gep, i64 8, !dbg !8223
  %i.aoc = getelementptr i8, ptr %i.amx, i64 40, !dbg !8223
  %i.aod = getelementptr i8, ptr %i.amy, i64 72, !dbg !8223
  %i.aoe = getelementptr i8, ptr %i.amz, i64 104, !dbg !8223
  %i.aof = load float, ptr %i.aob, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aog = load float, ptr %i.aoc, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aoh = load float, ptr %i.aod, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aoi = load float, ptr %i.aoe, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aoj = insertelement <4 x float> poison, float %i.aof, i64 0
  %i.aok = insertelement <4 x float> %i.aoj, float %i.aog, i64 1
  %i.aol = insertelement <4 x float> %i.aok, float %i.aoh, i64 2
  %i.aom = insertelement <4 x float> %i.aol, float %i.aoi, i64 3
  %i.aon = fsub <4 x float> %i.aom, %broadcast.splat, !dbg !8249 ; 3 uses
  %i.aoo = fcmp oge <4 x float> %i.aon, %broadcast.splat4537, !dbg !8250
  %i.aop = select <4 x i1> %i.aoo, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer, !dbg !8251
  %i.aoq = or disjoint <4 x i8> %i.aoa, %i.aop, !dbg !8252
  %i.aor = getelementptr inbounds nuw i8, ptr %next.gep, i64 12, !dbg !8223
  %i.aos = getelementptr i8, ptr %i.amx, i64 44, !dbg !8223
  %i.aot = getelementptr i8, ptr %i.amy, i64 76, !dbg !8223
  %i.aou = getelementptr i8, ptr %i.amz, i64 108, !dbg !8223
  %i.aov = load float, ptr %i.aor, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aow = load float, ptr %i.aos, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aox = load float, ptr %i.aot, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aoy = load float, ptr %i.aou, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aoz = insertelement <4 x float> poison, float %i.aov, i64 0
  %i.apa = insertelement <4 x float> %i.aoz, float %i.aow, i64 1
  %i.apb = insertelement <4 x float> %i.apa, float %i.aox, i64 2
  %i.apc = insertelement <4 x float> %i.apb, float %i.aoy, i64 3
  %i.apd = fsub <4 x float> %i.apc, %broadcast.splat, !dbg !8254 ; 3 uses
  %i.ape = fcmp oge <4 x float> %i.apd, %broadcast.splat4537, !dbg !8255
  %i.apf = select <4 x i1> %i.ape, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer, !dbg !8256
  %i.apg = or disjoint <4 x i8> %i.aoq, %i.apf, !dbg !8257
  %i.aph = getelementptr inbounds nuw i8, ptr %next.gep, i64 16, !dbg !8223
  %i.api = getelementptr i8, ptr %i.amx, i64 48, !dbg !8223
  %i.apj = getelementptr i8, ptr %i.amy, i64 80, !dbg !8223
  %i.apk = getelementptr i8, ptr %i.amz, i64 112, !dbg !8223
  %i.apl = load float, ptr %i.aph, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.apm = load float, ptr %i.api, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.apn = load float, ptr %i.apj, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.apo = load float, ptr %i.apk, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.app = insertelement <4 x float> poison, float %i.apl, i64 0
  %i.apq = insertelement <4 x float> %i.app, float %i.apm, i64 1
  %i.apr = insertelement <4 x float> %i.apq, float %i.apn, i64 2
  %i.aps = insertelement <4 x float> %i.apr, float %i.apo, i64 3
  %i.apt = fsub <4 x float> %i.aps, %broadcast.splat, !dbg !8259 ; 3 uses
  %i.apu = fcmp oge <4 x float> %i.apt, %broadcast.splat4537, !dbg !8260
  %i.apv = select <4 x i1> %i.apu, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer, !dbg !8261
  %i.apw = or disjoint <4 x i8> %i.apg, %i.apv, !dbg !8262
  %i.apx = getelementptr inbounds nuw i8, ptr %next.gep, i64 20, !dbg !8223
  %i.apy = getelementptr i8, ptr %i.amx, i64 52, !dbg !8223
  %i.apz = getelementptr i8, ptr %i.amy, i64 84, !dbg !8223
  %i.aqa = getelementptr i8, ptr %i.amz, i64 116, !dbg !8223
  %i.aqb = load float, ptr %i.apx, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aqc = load float, ptr %i.apy, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aqd = load float, ptr %i.apz, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aqe = load float, ptr %i.aqa, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aqf = insertelement <4 x float> poison, float %i.aqb, i64 0
  %i.aqg = insertelement <4 x float> %i.aqf, float %i.aqc, i64 1
  %i.aqh = insertelement <4 x float> %i.aqg, float %i.aqd, i64 2
  %i.aqi = insertelement <4 x float> %i.aqh, float %i.aqe, i64 3
  %i.aqj = fsub <4 x float> %i.aqi, %broadcast.splat, !dbg !8264 ; 3 uses
  %i.aqk = fcmp oge <4 x float> %i.aqj, %broadcast.splat4537, !dbg !8265
  %i.aql = select <4 x i1> %i.aqk, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer, !dbg !8266
  %i.aqm = or disjoint <4 x i8> %i.apw, %i.aql, !dbg !8267
  %i.aqn = getelementptr inbounds nuw i8, ptr %next.gep, i64 24, !dbg !8223
  %i.aqo = getelementptr i8, ptr %i.amx, i64 56, !dbg !8223
  %i.aqp = getelementptr i8, ptr %i.amy, i64 88, !dbg !8223
  %i.aqq = getelementptr i8, ptr %i.amz, i64 120, !dbg !8223
  %i.aqr = load float, ptr %i.aqn, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aqs = load float, ptr %i.aqo, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aqt = load float, ptr %i.aqp, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aqu = load float, ptr %i.aqq, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.aqv = insertelement <4 x float> poison, float %i.aqr, i64 0
  %i.aqw = insertelement <4 x float> %i.aqv, float %i.aqs, i64 1
  %i.aqx = insertelement <4 x float> %i.aqw, float %i.aqt, i64 2
  %i.aqy = insertelement <4 x float> %i.aqx, float %i.aqu, i64 3
  %i.aqz = fsub <4 x float> %i.aqy, %broadcast.splat, !dbg !8269 ; 3 uses
  %i.ara = fcmp oge <4 x float> %i.aqz, %broadcast.splat4537, !dbg !8270
  %i.arb = select <4 x i1> %i.ara, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer, !dbg !8271
  %i.arc = or disjoint <4 x i8> %i.aqm, %i.arb, !dbg !8272
  %i.ard = getelementptr inbounds nuw i8, ptr %next.gep, i64 28, !dbg !8223
  %i.are = getelementptr i8, ptr %i.amx, i64 60, !dbg !8223
  %i.arf = getelementptr i8, ptr %i.amy, i64 92, !dbg !8223
  %i.arg = getelementptr i8, ptr %i.amz, i64 124, !dbg !8223
  %i.arh = load float, ptr %i.ard, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.ari = load float, ptr %i.are, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.arj = load float, ptr %i.arf, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.ark = load float, ptr %i.arg, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.arl = insertelement <4 x float> poison, float %i.arh, i64 0
  %i.arm = insertelement <4 x float> %i.arl, float %i.ari, i64 1
  %i.arn = insertelement <4 x float> %i.arm, float %i.arj, i64 2
  %i.aro = insertelement <4 x float> %i.arn, float %i.ark, i64 3
  %i.arp = fsub <4 x float> %i.aro, %broadcast.splat, !dbg !8274 ; 3 uses
  %i.arq = fcmp oge <4 x float> %i.arp, %broadcast.splat4537, !dbg !8275
  %i.arr = select <4 x i1> %i.arq, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer, !dbg !8276
  %i.ars = add nuw <4 x i8> %i.arc, %i.arr, !dbg !8277
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index4539, !dbg !8213 ; 2 uses
  %wide.load4543 = load <4 x i8>, ptr %gep, align 1, !dbg !8213, !alias.scope !8279, !noalias !8280
  %i.art = or <4 x i8> %i.ars, %wide.load4543, !dbg !8213
  store <4 x i8> %i.art, ptr %gep, align 1, !dbg !8213, !alias.scope !8279, !noalias !8280
  %i.aru = shufflevector <4 x float> %i.anx, <4 x float> %i.anm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !8282
  %i.arv = shufflevector <4 x float> %i.aon, <4 x float> %i.apd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !8282
  %i.arw = shufflevector <8 x float> %i.aru, <8 x float> %i.arv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !8282
  %i.arx = fcmp olt <16 x float> %i.arw, %i.ams, !dbg !8282
  %i.ary = shufflevector <4 x float> %i.anx, <4 x float> %i.anm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !8282
  %i.arz = shufflevector <4 x float> %i.aon, <4 x float> %i.apd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !8282
  %i.asa = shufflevector <8 x float> %i.ary, <8 x float> %i.arz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !8282
  %i.asb = select <16 x i1> %i.arx, <16 x float> %i.asa, <16 x float> %i.amt, !dbg !8282
  %i.asc = shufflevector <4 x float> %i.apt, <4 x float> %i.aqj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !8282
  %i.asd = shufflevector <4 x float> %i.aqz, <4 x float> %i.arp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !8282
  %i.ase = shufflevector <8 x float> %i.asc, <8 x float> %i.asd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !8282
  %i.asf = fcmp olt <16 x float> %i.ase, %i.amu, !dbg !8282
  %i.asg = shufflevector <4 x float> %i.apt, <4 x float> %i.aqj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !8282
  %i.ash = shufflevector <4 x float> %i.aqz, <4 x float> %i.arp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !8282
  %i.asi = shufflevector <8 x float> %i.asg, <8 x float> %i.ash, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !8282
  %i.asj = select <16 x i1> %i.asf, <16 x float> %i.asi, <16 x float> %i.amv, !dbg !8282
  %interleaved.vec = shufflevector <16 x float> %i.asb, <16 x float> %i.asj, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>, !dbg !8282
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !dbg !8282, !alias.scope !7917, !noalias !8224
  %index.next4544 = add nuw i64 %index4539, 4, !dbg !8221 ; 2 uses
  %i.ask = icmp eq i64 %index.next4544, %n.vec4535, !dbg !8283
  br i1 %i.ask, label %.lr.ph373.i.i.preheader5454, label %vector.body4538, !dbg !8283, !llvm.loop !8285

.lr.ph373.i.i.preheader5454:                      ; preds = %vector.body4538, %.lr.ph373.i.i.preheader
  %.sroa.0179.0371.i.i.ph = phi ptr [ %i.ls, %.lr.ph373.i.i.preheader ], [ %i.amr, %vector.body4538 ]
  %.sroa.7181.0370.i.i.ph = phi i64 [ 0, %.lr.ph373.i.i.preheader ], [ %n.vec4535, %vector.body4538 ]
  %i.asl = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i, i64 0
  %i.asm = shufflevector <4 x float> %i.asl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.asn = insertelement <4 x float> poison, float %.sroa.029.0.i.i, i64 0
  %i.aso = shufflevector <4 x float> %i.asn, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph373.i.i, !dbg !8213

.lr.ph373.i.i:                                    ; preds = %.lr.ph373.i.i.preheader5454, %bb.gv
  %.sroa.0179.0371.i.i = phi ptr [ %i.ass, %bb.gv ], [ %.sroa.0179.0371.i.i.ph, %.lr.ph373.i.i.preheader5454 ] ; 4 uses
  %.sroa.7181.0370.i.i = phi i64 [ %i.asr, %bb.gv ], [ %.sroa.7181.0370.i.i.ph, %.lr.ph373.i.i.preheader5454 ] ; 2 uses
  %i.asp = add nuw nsw i64 %.sroa.7181.0370.i.i, %i.aks, !dbg !8286 ; 3 uses
  %i.asq = icmp ult i64 %i.asp, %i.mh, !dbg !8213
  br i1 %i.asq, label %bb.gv, label %.invoke1320.i, !dbg !8213

bb.gv:                                            ; preds = %.lr.ph373.i.i
  %.sroa.12216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0179.0371.i.i, i64 16, !dbg !8223 ; 2 uses
  %i.asr = add nuw nsw i64 %.sroa.7181.0370.i.i, 1, !dbg !8221
  %i.ass = getelementptr inbounds nuw i8, ptr %.sroa.0179.0371.i.i, i64 32, !dbg !8287 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.asp, !dbg !8213 ; 2 uses
  %i.asu = load i8, ptr %i.ast, align 1, !dbg !8213, !alias.scope !8279, !noalias !8280, !noundef !14
  %i.asv = load <4 x float>, ptr %.sroa.0179.0371.i.i, align 4, !dbg !8223, !alias.scope !7917, !noalias !8224
  %i.asw = fsub <4 x float> %i.asv, %i.asm, !dbg !8237 ; 3 uses
  %i.asx = fcmp oge <4 x float> %i.asw, %i.aso, !dbg !8238
  %i.asy = bitcast <4 x i1> %i.asx to i4, !dbg !8233
  %i.asz = zext i4 %i.asy to i8, !dbg !8233
  %i.ata = fcmp olt <4 x float> %i.asw, %i.aso, !dbg !8289
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.ccz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cda = icmp eq i64 %i.cap, 0, !dbg !10676
  br i1 %i.cda, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit479.i.i, label %bb.pk, !dbg !10676

bb.pk:                                            ; preds = %bb.pj
  %i.cdb = mul nuw nsw i64 %i.cap, 2832, !dbg !10680
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cao, i64 noundef range(i64 1, 0) %i.cdb, i64 noundef 8) #19, !dbg !10683, !noalias !9466
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit479.i.i, !dbg !10688

bb.pl:                                            ; preds = %bb.po, %.lr.ph1032.i.i
  %.sroa.047.31031.i.i = phi i64 [ %.sroa.047.01049.i.i, %.lr.ph1032.i.i ], [ %.sroa.047.4.lcssa.i.i239, %bb.po ] ; 3 uses
  %.sroa.0128.01030.i.i = phi i64 [ 0, %.lr.ph1032.i.i ], [ %i.cdc, %bb.po ] ; 8 uses
  %i.cdc = add nuw nsw i64 %.sroa.0128.01030.i.i, 1, !dbg !10689 ; 2 uses
  %exitcond1415.not.i.i = icmp eq i64 %.sroa.0128.01030.i.i, %i.bnn, !dbg !10693
  br i1 %exitcond1415.not.i.i, label %.invoke4775, label %.noexc249.i.i235, !dbg !10693

.noexc249.i.i235:                                 ; preds = %bb.pl
  %i.cdd = getelementptr inbounds nuw [2832 x i8], ptr %i.bnm, i64 %.sroa.0128.01030.i.i, !dbg !10695 ; 5 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 2816, !dbg !10696 ; 2 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cdd, i64 2824, !dbg !10699 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cdd, i8 0, i64 2824, i1 false), !dbg !10696, !noalias !9466
  store float 3.402000e+38, ptr %i.cdf, align 8, !dbg !10699, !alias.scope !10701, !noalias !9466
  %i.cdg = add nuw nsw i64 %.sroa.0128.01030.i.i, %.sroa.051.11048.i.i, !dbg !10704 ; 2 uses
  %i.cdh = icmp ult i64 %i.cdg, %i.bml, !dbg !10706
  br i1 %i.cdh, label %bb.pm, label %bb.pn, !dbg !10706

bb.pm:                                            ; preds = %.noexc249.i.i235
  %i.cdi = getelementptr inbounds nuw [4 x i8], ptr %i.bmk, i64 %i.cdg, !dbg !10706
  %i.cdj = load i32, ptr %i.cdi, align 4, !dbg !10706, !noalias !9466, !noundef !14 ; 2 uses
  %i.cdk = zext i32 %i.cdj to i64, !dbg !10706
  %.not1098.i.i = icmp eq i32 %i.cdj, 0, !dbg !10707
  br i1 %.not1098.i.i, label %._crit_edge.i.i238, label %.lr.ph.preheader.i.i236, !dbg !10715

.lr.ph.preheader.i.i236:                          ; preds = %bb.pm
  %i.cdl = call i64 @llvm.usub.sat.i64(i64 range(i64 0, 4611686018427387904) %i.bbs, i64 %.sroa.047.31031.i.i), !dbg !10716
  br label %.lr.ph.i.i237, !dbg !10716

bb.pn:                                            ; preds = %.noexc249.i.i235
  %umax1414.le.i.i = call i64 @llvm.umax.i64(i64 %i.bml, i64 %.sroa.051.11048.i.i)
  br label %.invoke4775, !dbg !10706

._crit_edge.i.i238:                               ; preds = %bb.pr, %bb.pm
  %.sroa.047.4.lcssa.i.i239 = phi i64 [ %.sroa.047.31031.i.i, %bb.pm ], [ %i.cee, %bb.pr ], !dbg !10718 ; 2 uses
  %i.cdm = invoke noundef float @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram16HistogramCommandECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.cdd, ptr noalias noundef nonnull %9)
          to label %bb.po unwind label %.thread629.loopexit.i.i, !dbg !10719, !noalias !9466

bb.po:                                            ; preds = %._crit_edge.i.i238
  store float %i.cdm, ptr %i.cdf, align 8, !dbg !10720, !alias.scope !10723, !noalias !9466
  %i.cdn = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.0128.01030.i.i, !dbg !10726
  %i.cdo = trunc nuw nsw i64 %.sroa.0128.01030.i.i to i32, !dbg !10726 ; 2 uses
  store i32 %i.cdo, ptr %i.cdn, align 4, !dbg !10726, !noalias !9427
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.sroa.0128.01030.i.i, !dbg !10727
  store i32 %i.cdo, ptr %i.cdp, align 4, !dbg !10727, !noalias !9427
  %i.cdq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.sroa.0128.01030.i.i, !dbg !10728
  store i32 1, ptr %i.cdq, align 4, !dbg !10728, !noalias !9427
  %exitcond1417.not.i.i = icmp eq i64 %i.cdc, %umax1425.i.i, !dbg !10729
  br i1 %exitcond1417.not.i.i, label %._crit_edge1033.i.i, label %bb.pl, !dbg !9613

.lr.ph.i.i237:                                    ; preds = %bb.pr, %.lr.ph.preheader.i.i236
  %.sroa.047.41029.i.i = phi i64 [ %i.cee, %bb.pr ], [ %.sroa.047.31031.i.i, %.lr.ph.preheader.i.i236 ] ; 3 uses
  %.sroa.0130.01028.i.i = phi i64 [ %i.cdr, %bb.pr ], [ 0, %.lr.ph.preheader.i.i236 ] ; 2 uses
  %i.cdr = add nuw nsw i64 %.sroa.0130.01028.i.i, 1, !dbg !10731 ; 2 uses
  %exitcond1412.not.i.i = icmp eq i64 %.sroa.0130.01028.i.i, %i.cdl, !dbg !10716
  br i1 %exitcond1412.not.i.i, label %.invoke4775, label %bb.pp, !dbg !10716

.invoke4775:                                      ; preds = %bb.pl, %.lr.ph.i.i237, %bb.pn
  %i.cds = phi i64 [ %.sroa.047.41029.i.i, %.lr.ph.i.i237 ], [ %umax1414.le.i.i, %bb.pn ], [ %i.bnn, %bb.pl ]
  %i.cdt = phi i64 [ %i.bbs, %.lr.ph.i.i237 ], [ %i.bml, %bb.pn ], [ %i.bnn, %bb.pl ]
  %i.cdu = phi ptr [ @100, %.lr.ph.i.i237 ], [ @99, %bb.pn ], [ @98, %bb.pl ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cds, i64 noundef %i.cdt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cdu) #20
          to label %.cont4776 unwind label %.thread629.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !10737, !noalias !9466

.cont4776:                                        ; preds = %.invoke4775
  unreachable

bb.pp:                                            ; preds = %.lr.ph.i.i237
  %i.cdv = getelementptr inbounds nuw [2 x i8], ptr %i.bbr, i64 %.sroa.047.41029.i.i, !dbg !10716
  %i.cdw = load i16, ptr %i.cdv, align 2, !dbg !10738, !alias.scope !10740, !noalias !10420, !noundef !14 ; 2 uses
  %i.cdx = zext i16 %i.cdw to i64, !dbg !10743    ; 2 uses
  %i.cdy = icmp ult i16 %i.cdw, 704, !dbg !10745
  br i1 %i.cdy, label %bb.pr, label %bb.pq, !dbg !10745

bb.pq:                                            ; preds = %bb.pp
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.cdx, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #18
          to label %.noexc477.i.i unwind label %.thread629.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !10745, !noalias !9466

.noexc477.i.i:                                    ; preds = %bb.pq
  unreachable, !dbg !10745

bb.pr:                                            ; preds = %bb.pp
  %i.cdz = getelementptr inbounds nuw [4 x i8], ptr %i.cdd, i64 %i.cdx, !dbg !10747 ; 2 uses
  %i.cea = load i32, ptr %i.cdz, align 4, !dbg !10748, !alias.scope !10749, !noalias !9466, !noundef !14
  %i.ceb = add i32 %i.cea, 1, !dbg !10752
  store i32 %i.ceb, ptr %i.cdz, align 4, !dbg !10754, !alias.scope !10749, !noalias !9466
  %i.cec = load i64, ptr %i.cde, align 8, !dbg !10755, !alias.scope !10757, !noalias !9466, !noundef !14
  %i.ced = add i64 %i.cec, 1, !dbg !10760
  store i64 %i.ced, ptr %i.cde, align 8, !dbg !10762, !alias.scope !10764, !noalias !9466
  %i.cee = add nuw nsw i64 %.sroa.047.41029.i.i, 1, !dbg !10767 ; 2 uses
  %exitcond1413.not.i.i = icmp eq i64 %i.cdr, %i.cdk, !dbg !10707
  br i1 %exitcond1413.not.i.i, label %._crit_edge.i.i238, label %.lr.ph.i.i237, !dbg !10715

bb.ps:                                            ; preds = %bb.pv, %bb.kz
  %.sroa.051.01026.i.i = phi i64 [ 0, %bb.kz ], [ %i.cej, %bb.pv ] ; 2 uses
  %.sroa.063.01025.i.i = phi i64 [ 0, %bb.kz ], [ %.sroa.063.1.i.i231, %bb.pv ] ; 5 uses
  %i.cef = icmp ult i64 %.sroa.063.01025.i.i, %i.bml, !dbg !10769
  br i1 %i.cef, label %bb.pt, label %.invoke.i.i225, !dbg !10769

bb.pt:                                            ; preds = %bb.ps
  %i.ceg = getelementptr inbounds nuw [4 x i8], ptr %i.bmk, i64 %.sroa.063.01025.i.i, !dbg !10771 ; 2 uses
  %i.ceh = load i32, ptr %i.ceg, align 4, !dbg !10772, !noalias !9466, !noundef !14
  %i.cei = add i32 %i.ceh, 1, !dbg !10774
  store i32 %i.cei, ptr %i.ceg, align 4, !dbg !10776, !noalias !9466
  %i.cej = add nuw i64 %.sroa.051.01026.i.i, 1, !dbg !10777 ; 3 uses
  %i.cek = icmp eq i64 %i.cej, %3, !dbg !10779    ; 2 uses
  br i1 %i.cek, label %bb.pw, label %bb.pu, !dbg !10779

bb.pu:                                            ; preds = %bb.pt
  %i.cel = getelementptr inbounds nuw i8, ptr %i.bir, i64 %.sroa.051.01026.i.i, !dbg !10780
  %i.cem = load i8, ptr %i.cel, align 1, !dbg !10780, !alias.scope !9417, !noalias !10781, !noundef !14
  %i.cen = getelementptr inbounds nuw i8, ptr %i.bir, i64 %i.cej, !dbg !10782
  %i.ceo = load i8, ptr %i.cen, align 1, !dbg !10782, !alias.scope !9417, !noalias !10781, !noundef !14
  %.not237.i.i230 = icmp eq i8 %i.cem, %i.ceo, !dbg !10780
  br i1 %.not237.i.i230, label %bb.pv, label %bb.pw, !dbg !10780

.invoke.i.i225:                                   ; preds = %bb.ps
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.063.01025.i.i, i64 noundef %i.bml, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #20
          to label %.cont.i.i229 unwind label %.thread629.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !10783, !noalias !9466

.cont.i.i229:                                     ; preds = %.invoke.i.i225
  unreachable

bb.pv:                                            ; preds = %bb.pw, %bb.pu
  %.sroa.063.1.i.i231 = phi i64 [ %i.cep, %bb.pw ], [ %.sroa.063.01025.i.i, %bb.pu ], !dbg !9804
  br i1 %i.cek, label %.preheader681.split.i.i, label %bb.ps, !dbg !9591

bb.pw:                                            ; preds = %bb.pu, %bb.pt
  %i.cep = add nuw i64 %.sroa.063.01025.i.i, 1, !dbg !10784
  br label %bb.pv, !dbg !10786

.thread596.i.i:                                   ; preds = %bb.oe, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266, %bb.la
  %.pn229623.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i256, %bb.la ], [ %.pn.i.i268, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266 ], [ %.pn.i.i268, %bb.oe ] ; 2 uses
  %.sroa.0497.4620.i.i = phi ptr [ %.sroa.0497.3.lcssa.i.i, %bb.la ], [ %.sroa.0497.6.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266 ], [ %.sroa.0497.6.i.i, %bb.oe ] ; 2 uses
  %.sroa.14.4619.i.i = phi i64 [ %.sroa.14.3.lcssa.i.i248, %bb.la ], [ %.sroa.14.6.i.i267, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266 ], [ %.sroa.14.6.i.i267, %bb.oe ] ; 2 uses
  %.sroa.0507.3618.i.i = phi ptr [ %.sroa.0507.4.ph628.i.i, %bb.la ], [ %i.bqc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266 ], [ %i.bqc, %bb.oe ] ; 2 uses
  %.sroa.12.3617.i.i = phi i64 [ %.sroa.12.4.ph627.i.i, %bb.la ], [ %i.bqd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266 ], [ %i.bqd, %bb.oe ] ; 2 uses
  %.sroa.0525.0614.i.i = phi ptr [ %.sroa.0525.1.ph626.i.i, %bb.la ], [ %i.bpv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266 ], [ %i.bpv, %bb.oe ] ; 2 uses
  %.sroa.11.0613.i.i = phi i64 [ %.sroa.11.1.ph625.i.i, %bb.la ], [ %i.bpw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266 ], [ %i.bpw, %bb.oe ] ; 2 uses
  %.sroa.0532.0612.i.i = phi ptr [ %i.bpb, %bb.la ], [ %.sroa.0532.2.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266 ], [ %.sroa.0532.2.i.i, %bb.oe ] ; 2 uses
  %.sroa.11533.0611.i.i = phi i64 [ %i.bpc, %bb.la ], [ %.sroa.11533.2.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i266 ], [ %.sroa.11533.2.i.i, %bb.oe ] ; 2 uses
  %i.ceq = icmp eq i64 %.sroa.11533.0611.i.i, 0, !dbg !10787
  br i1 %i.ceq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit479.i.i, label %bb.px, !dbg !10787

bb.px:                                            ; preds = %.thread596.i.i
  %i.cer = shl nuw nsw i64 %.sroa.11533.0611.i.i, 2, !dbg !10791
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0532.0612.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0532.0612.i.i, i64 noundef range(i64 1, 0) %i.cer, i64 noundef 4) #19, !dbg !10794, !noalias !9466
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit479.i.i, !dbg !10799

bb.py:                                            ; preds = %bb.kr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i.i212, %.thread566.i.i
  %.pn229.pn.pn.pn.pn.pn571.i.i = phi { ptr, i32 } [ %i.bmq, %.thread566.i.i ], [ %.pn229.pn.pn.pn.pn.i.i214, %bb.kr ], [ %.pn229.pn.pn.pn.pn.i.i214, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i.i212 ] ; 2 uses
  %i.ces = icmp eq i64 %i.bml, 0, !dbg !10800
  br i1 %i.ces, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i, label %bb.pz, !dbg !10800

bb.pz:                                            ; preds = %bb.py
  %i.cet = shl nuw nsw i64 %i.bml, 2, !dbg !10804
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bmk) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bmk, i64 noundef range(i64 1, 0) %i.cet, i64 noundef 4) #19, !dbg !10807, !noalias !9466
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i, !dbg !10812

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i: ; preds = %bb.pz, %bb.py, %.thread.i.i209
  %.pn229.pn.pn.pn.pn.pn.pn565.i.i = phi { ptr, i32 } [ %i.bmj, %.thread.i.i209 ], [ %.pn229.pn.pn.pn.pn.pn571.i.i, %bb.pz ], [ %.pn229.pn.pn.pn.pn.pn571.i.i, %bb.py ] ; 2 uses
  %i.ceu = icmp eq i64 %i.bly, 0, !dbg !10813
  br i1 %i.ceu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i79, label %bb.qa, !dbg !10813

bb.qa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i
  %i.cev = shl nuw nsw i64 %i.bly, 2, !dbg !10817
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.blx) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.blx, i64 noundef range(i64 1, 0) %i.cev, i64 noundef 4) #19, !dbg !10820, !noalias !9466
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i79, !dbg !10825

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAlloctECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit462.i.i305, %bb.mx
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bir, i64 noundef range(i64 1, 0) %i.bis, i64 noundef 1) #19, !dbg !10826, !noalias !8895
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAlloctECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !10835

bb.qb:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i, %.split492.i
  %.sroa.0.0494.i = phi i64 [ %spec.store.select.i52, %.split492.i ], [ %i.cva, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ] ; 14 uses
  %.sroa.031.0493.i = phi i64 [ 0, %.split492.i ], [ %i.cew, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ]
  %i.cew = add nuw nsw i64 %.sroa.031.0493.i, 1, !dbg !10836 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10842), !dbg !10845
  call void @llvm.experimental.noalias.scope.decl(metadata !10847), !dbg !10845
  call void @llvm.experimental.noalias.scope.decl(metadata !10849), !dbg !10845
  call void @llvm.experimental.noalias.scope.decl(metadata !10851), !dbg !10845
  call void @llvm.experimental.noalias.scope.decl(metadata !10853), !dbg !10845
  call void @llvm.experimental.noalias.scope.decl(metadata !10855), !dbg !10845
  %i.cex = icmp eq i64 %.sroa.0.0494.i, 0, !dbg !10857
  br i1 %i.cex, label %.loopexit87.i, label %bb.qc, !dbg !10857

bb.qc:                                            ; preds = %bb.qb
  %i.cey = add nsw i64 %.sroa.0.0494.i, 7, !dbg !10860
  %i.cez = lshr i64 %i.cey, 3, !dbg !10864        ; 9 uses
  %i.cfa = icmp eq i64 %.sroa.0.0494.i, 1, !dbg !10865
  br i1 %i.cfa, label %.preheader.i174.i.preheader, label %bb.qd, !dbg !10865

.preheader.i174.i.preheader:                      ; preds = %bb.qc
  br i1 %min.iters.check4610, label %.preheader.i174.i.preheader5227, label %vector.body4613, !dbg !10869

.preheader.i174.i.preheader5227:                  ; preds = %vector.body4613, %.preheader.i174.i.preheader
  %.sroa.065.0392.i.i333.ph = phi i64 [ 0, %.preheader.i174.i.preheader ], [ %n.vec4612, %vector.body4613 ]
  br label %.preheader.i174.i, !dbg !10869

vector.body4613:                                  ; preds = %.preheader.i174.i.preheader, %vector.body4613
  %index4614 = phi i64 [ %index.next4615, %vector.body4613 ], [ 0, %.preheader.i174.i.preheader ], !dbg !10872 ; 2 uses
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.bir, i64 %index4614, !dbg !10869 ; 2 uses
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cfb, i64 16, !dbg !10869
  store <16 x i8> zeroinitializer, ptr %i.cfb, align 1, !dbg !10869, !alias.scope !10855, !noalias !10883
  store <16 x i8> zeroinitializer, ptr %i.cfc, align 1, !dbg !10869, !alias.scope !10855, !noalias !10883
  %index.next4615 = add nuw i64 %index4614, 32, !dbg !10872 ; 2 uses
  %i.cfd = icmp eq i64 %index.next4615, %n.vec4612, !dbg !10884
  br i1 %i.cfd, label %.preheader.i174.i.preheader5227, label %vector.body4613, !dbg !10884, !llvm.loop !10885

bb.qd:                                            ; preds = %bb.qc
  %i.cfe = mul nuw nsw i64 %.sroa.0.0494.i, 704, !dbg !10886 ; 2 uses
  %.not110.i.i96 = icmp ugt i64 %i.cfe, %i.bji
  br i1 %.not110.i.i96, label %.invoke1415.i, label %.lr.ph.preheader.i169.i, !dbg !10887, !prof !751

.lr.ph.preheader.i169.i:                          ; preds = %bb.qd
  %.idx.i168.i = mul nuw nsw i64 %.sroa.0.0494.i, 2816, !dbg !10896
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bjh, i8 0, i64 %.idx.i168.i, i1 false), !dbg !10905, !alias.scope !10849, !noalias !10908
  br label %bb.qe, !dbg !10909

bb.qe:                                            ; preds = %bb.sh, %.lr.ph.preheader.i169.i
  %.sroa.067.0348.i.i97 = phi i64 [ 0, %.lr.ph.preheader.i169.i ], [ %i.cff, %bb.sh ] ; 4 uses
  %i.cff = add nuw nsw i64 %.sroa.067.0348.i.i97, 1, !dbg !10915 ; 2 uses
  %exitcond.not.i170.i = icmp eq i64 %.sroa.067.0348.i.i97, %i.bdz, !dbg !10921
  br i1 %exitcond.not.i170.i, label %.invoke1413.i, label %bb.sf, !dbg !10921

.loopexit307.i.i110:                              ; preds = %bb.se
  %i.cfg = icmp eq i64 %i.cfh, 0, !dbg !10923
  br i1 %i.cfg, label %bb.qf, label %.split.i.i99, !dbg !10923

bb.qf:                                            ; preds = %.loopexit307.i.i110
  br i1 %i.bkq, label %._crit_edge.i171.i, label %.lr.ph352.i.i111, !dbg !10924

.split.i.i99:                                     ; preds = %bb.sh, %.loopexit307.i.i110
  %.sroa.04.0350.i.i100 = phi i64 [ %i.cfh, %.loopexit307.i.i110 ], [ 704, %bb.sh ]
  %i.cfh = add nsw i64 %.sroa.04.0350.i.i100, -1, !dbg !10931 ; 4 uses
  %invariant.gep.i.i101 = getelementptr [4 x i8], ptr %i.bdy, i64 %i.cfh, !dbg !10934
  %i.cfi = mul i64 %i.cfh, %.sroa.0.0494.i
  br label %bb.rz, !dbg !10936

.lr.ph352.i.i111:                                 ; preds = %bb.qf, %.noexc177.i
  %.sroa.018.0351.i.i112 = phi ptr [ %i.cfj, %.noexc177.i ], [ %i.bjl, %bb.qf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !10941, !noalias !10943
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.ba)
          to label %.noexc177.i unwind label %.loopexit.split-lp.loopexit.i113, !dbg !10944, !noalias !8895

.noexc177.i:                                      ; preds = %.lr.ph352.i.i111
  %i.cfj = getelementptr inbounds nuw i8, ptr %.sroa.018.0351.i.i112, i64 32, !dbg !10947 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.018.0351.i.i112, ptr noundef nonnull align 4 dereferenceable(32) %i.ba, i64 32, i1 false), !dbg !10951, !noalias !10952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !10953, !noalias !10943
  %i.cfk = icmp eq ptr %i.cfj, %i.bkp, !dbg !10954
  br i1 %i.cfk, label %._crit_edge.i171.i, label %.lr.ph352.i.i111, !dbg !10924

._crit_edge.i171.i:                               ; preds = %.noexc177.i, %bb.qf
  %i.cfl = mul i64 %i.cez, %3, !dbg !10957        ; 4 uses
  %.not111.i.i114 = icmp ugt i64 %i.cfl, %i.bka
  br i1 %.not111.i.i114, label %.invoke1415.i, label %bb.qg, !dbg !10958, !prof !751

bb.qg:                                            ; preds = %._crit_edge.i171.i
  %i.cfm = icmp samesign eq i64 %i.cfl, 0, !dbg !10969
  br i1 %i.cfm, label %._crit_edge356.i.i116, label %.lr.ph355.preheader.i.i115, !dbg !10979

.lr.ph355.preheader.i.i115:                       ; preds = %bb.qg
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bjz, i8 0, i64 %i.cfl, i1 false), !dbg !10980, !alias.scope !10853, !noalias !10982
  br label %._crit_edge356.i.i116

._crit_edge356.i.i116:                            ; preds = %.lr.ph355.preheader.i.i115, %bb.qg
  br i1 %.not112.i.i95, label %.invoke1415.i, label %.lr.ph377.i.i117, !dbg !10983, !prof !751

.lr.ph377.i.i117:                                 ; preds = %._crit_edge356.i.i116
  %i.cfn = lshr i64 %.sroa.0.0494.i, 3            ; 3 uses
  %.not.i126.i.i118 = icmp samesign ugt i64 %i.cfn, %i.bjm
  %.idx395.i.i119 = shl nuw nsw i64 %i.cfn, 5
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.bjl, i64 %.idx395.i.i119
  %i.cfp = icmp eq i64 %i.cfn, 0
  %i.cfq = and i64 %.sroa.0.0494.i, 36028797018963960 ; 15 uses
  %i.cfr = and i64 %.sroa.0.0494.i, 7             ; 8 uses
  %.not.i.i172.i = icmp samesign ugt i64 %i.cez, %i.bjm
  %.idx396.i.i120 = shl i64 %i.cez, 5             ; 2 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.bjl, i64 %.idx396.i.i120
  br i1 %.not.i126.i.i118, label %.lr.ph377.split.us.i.i331, label %.lr.ph377.split.preheader.i.i121, !prof !168

.lr.ph377.split.preheader.i.i121:                 ; preds = %.lr.ph377.i.i117
  %i.cft = icmp eq i64 %i.cfr, 0
  %19 = add i64 %.idx396.i.i120, -32, !dbg !10991
  %20 = lshr exact i64 %19, 5, !dbg !10991
  %i.cfu = lshr exact i64 %i.cfq, 3               ; 3 uses
  %i.cfv = icmp samesign ult i64 %i.cfu, %i.bjm
  %i.cfw = getelementptr inbounds nuw [32 x i8], ptr %i.bjl, i64 %i.cfu ; 2 uses
  %i.cfx = trunc i64 %i.cfq to i8
  %i.cfy = icmp eq i64 %i.cfr, 1
  %i.cfz = lshr exact i64 %i.cfq, 3               ; 3 uses
  %i.cga = icmp samesign ult i64 %i.cfz, %i.bjm
  %i.cgb = getelementptr inbounds nuw [32 x i8], ptr %i.bjl, i64 %i.cfz
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cgb, i64 4 ; 2 uses
  %i.cgd = trunc i64 %i.cfq to i8
  %i.cge = or disjoint i8 %i.cgd, 1
  %i.cgf = icmp eq i64 %i.cfr, 2
  %i.cgg = lshr exact i64 %i.cfq, 3               ; 3 uses
  %i.cgh = icmp samesign ult i64 %i.cgg, %i.bjm
  %i.cgi = getelementptr inbounds nuw [32 x i8], ptr %i.bjl, i64 %i.cgg
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgi, i64 8 ; 2 uses
  %i.cgk = trunc i64 %i.cfq to i8
  %i.cgl = or disjoint i8 %i.cgk, 2
  %i.cgm = icmp eq i64 %i.cfr, 3
  %i.cgn = lshr exact i64 %i.cfq, 3               ; 3 uses
  %i.cgo = icmp samesign ult i64 %i.cgn, %i.bjm
  %i.cgp = getelementptr inbounds nuw [32 x i8], ptr %i.bjl, i64 %i.cgn
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgp, i64 12 ; 2 uses
  %i.cgr = trunc i64 %i.cfq to i8
  %i.cgs = or disjoint i8 %i.cgr, 3
  %i.cgt = icmp eq i64 %i.cfr, 4
  %i.cgu = lshr exact i64 %i.cfq, 3               ; 3 uses
  %i.cgv = icmp samesign ult i64 %i.cgu, %i.bjm
  %i.cgw = getelementptr inbounds nuw [32 x i8], ptr %i.bjl, i64 %i.cgu
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgw, i64 16 ; 2 uses
  %i.cgy = trunc i64 %i.cfq to i8
  %i.cgz = or disjoint i8 %i.cgy, 4
  %i.cha = icmp eq i64 %i.cfr, 5
  %i.chb = lshr exact i64 %i.cfq, 3               ; 3 uses
  %i.chc = icmp samesign ult i64 %i.chb, %i.bjm
  %i.chd = getelementptr inbounds nuw [32 x i8], ptr %i.bjl, i64 %i.chb
  %i.che = getelementptr inbounds nuw i8, ptr %i.chd, i64 20 ; 2 uses
  %i.chf = trunc i64 %i.cfq to i8
  %i.chg = or disjoint i8 %i.chf, 5
  %i.chh = icmp eq i64 %i.cfr, 6
  %i.chi = lshr exact i64 %i.cfq, 3               ; 3 uses
  %i.chj = icmp samesign ult i64 %i.chi, %i.bjm
  %i.chk = getelementptr inbounds nuw [32 x i8], ptr %i.bjl, i64 %i.chi
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chk, i64 24 ; 2 uses
  %i.chm = trunc i64 %i.cfq to i8
  %i.chn = or disjoint i8 %i.chm, 6
  br label %.lr.ph377.split.i.i122, !dbg !10991

.lr.ph377.split.us.i.i331:                        ; preds = %.lr.ph377.i.i117
  %.not398.i.i = icmp eq i64 %i.bis, 0, !dbg !10991
  br i1 %.not398.i.i, label %.invoke1413.i, label %bb.qh, !dbg !10991

bb.qh:                                            ; preds = %.lr.ph377.split.us.i.i331
  %i.cho = load i16, ptr %i.bbr, align 2, !dbg !10994, !alias.scope !10998, !noalias !11001, !noundef !14
  %i.chp = zext i16 %i.cho to i64, !dbg !11002
  %i.chq = mul nuw nsw i64 %.sroa.0.0494.i, %i.chp, !dbg !11004
  %.not.i125.us.i.i332 = icmp ugt i64 %i.chq, %i.bji, !dbg !11007
  br i1 %.not.i125.us.i.i332, label %.split381.us.i.i330, label %.invoke1417.i, !dbg !11007, !prof !168

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186: ; preds = %bb.rh
  %i.chr = icmp eq ptr %i.cht, %i.bkr, !dbg !11013
  br i1 %i.chr, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i187, label %.lr.ph377.split.i.i122, !dbg !11022

.lr.ph377.split.i.i122:                           ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186, %.lr.ph377.split.preheader.i.i121
  %.sroa.0.0289375.i.i123 = phi ptr [ %i.cht, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186 ], [ %i.bbr, %.lr.ph377.split.preheader.i.i121 ] ; 2 uses
  %.sroa.7.0374.i.i124 = phi i64 [ %i.chu, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186 ], [ 0, %.lr.ph377.split.preheader.i.i121 ] ; 8 uses
  %21 = mul i64 %i.cez, %.sroa.7.0374.i.i124, !dbg !11023
  %umax4618 = call i64 @llvm.umax.i64(i64 %i.bka, i64 %21), !dbg !11023
  %i.chs = mul i64 %i.cez, %.sroa.7.0374.i.i124, !dbg !11023
  %22 = sub i64 %umax4618, %i.chs, !dbg !11023
  %umin4619 = call i64 @llvm.umin.i64(i64 %20, i64 %22), !dbg !11023 ; 2 uses
  %23 = add nuw nsw i64 %umin4619, 1, !dbg !11023 ; 2 uses
  %i.cht = getelementptr inbounds nuw i8, ptr %.sroa.0.0289375.i.i123, i64 2, !dbg !11023 ; 2 uses
  %i.chu = add nuw i64 %.sroa.7.0374.i.i124, 1, !dbg !11026
  %exitcond430.not.i.i = icmp eq i64 %.sroa.7.0374.i.i124, %i.bis, !dbg !10991
  br i1 %exitcond430.not.i.i, label %.invoke1413.i, label %bb.ql, !dbg !10991

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i187: ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186
  br i1 %i.bla, label %.lr.ph390.preheader.i.i188, label %.invoke1413.i, !dbg !11029

.lr.ph390.preheader.i.i188:                       ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i187
  %i.chv = load i8, ptr %i.blb, align 1, !dbg !11029, !alias.scope !10855, !noalias !10883, !noundef !14
  %i.chw = mul i64 %i.cez, %i.bkz, !dbg !11032
  br label %.lr.ph390.i.i189, !dbg !11035

.lr.ph390.i.i189:                                 ; preds = %bb.qk, %.lr.ph390.preheader.i.i188
  %.sroa.0.1389.i.i190 = phi i64 [ %.sroa.0.2.i.i197, %bb.qk ], [ 1, %.lr.ph390.preheader.i.i188 ] ; 2 uses
  %.sroa.061.0388.i.i191 = phi i8 [ %.sroa.061.1.i.i196, %bb.qk ], [ %i.chv, %.lr.ph390.preheader.i.i188 ] ; 4 uses
  %.sroa.059.0387.i.i192 = phi i64 [ %i.chy, %bb.qk ], [ %i.chw, %.lr.ph390.preheader.i.i188 ]
  %.sroa.052.0386.i.i193 = phi i64 [ %i.chx, %bb.qk ], [ %i.bkz, %.lr.ph390.preheader.i.i188 ]
  %i.chx = add i64 %.sroa.052.0386.i.i193, -1, !dbg !11038 ; 4 uses
  %i.chy = sub i64 %.sroa.059.0387.i.i192, %i.cez, !dbg !11039 ; 2 uses
  %i.chz = lshr i8 %.sroa.061.0388.i.i191, 3, !dbg !11041
  %i.cia = zext nneg i8 %i.chz to i64, !dbg !11041
  %i.cib = add i64 %i.chy, %i.cia, !dbg !11042    ; 3 uses
  %i.cic = icmp ult i64 %i.cib, %i.bka, !dbg !11035
  br i1 %i.cic, label %bb.qi, label %.invoke1413.i, !dbg !11035

bb.qi:                                            ; preds = %.lr.ph390.i.i189
  %i.cid = and i8 %.sroa.061.0388.i.i191, 7, !dbg !11044
  %i.cie = shl nuw i8 1, %i.cid, !dbg !11045
  %i.cif = getelementptr inbounds nuw i8, ptr %i.bjz, i64 %i.cib, !dbg !11035
  %i.cig = load i8, ptr %i.cif, align 1, !dbg !11035, !alias.scope !10853, !noalias !10982, !noundef !14
  %i.cih = and i8 %i.cig, %i.cie, !dbg !11035
  %i.cii = icmp eq i8 %i.cih, 0, !dbg !11035
  br i1 %i.cii, label %bb.qk, label %bb.qj, !dbg !11035

bb.qj:                                            ; preds = %bb.qi
  %i.cij = getelementptr inbounds nuw i8, ptr %i.bir, i64 %i.chx, !dbg !11046
  %i.cik = load i8, ptr %i.cij, align 1, !dbg !11046, !alias.scope !10855, !noalias !10883, !noundef !14 ; 2 uses
  %.not115.i.i194 = icmp ne i8 %.sroa.061.0388.i.i191, %i.cik, !dbg !11047
  %i.cil = zext i1 %.not115.i.i194 to i64, !dbg !11047
  %spec.select117.i.i195 = add i64 %.sroa.0.1389.i.i190, %i.cil, !dbg !11047
  br label %bb.qk, !dbg !11047

bb.qk:                                            ; preds = %bb.qj, %bb.qi
  %.sroa.061.1.i.i196 = phi i8 [ %.sroa.061.0388.i.i191, %bb.qi ], [ %i.cik, %bb.qj ], !dbg !11048 ; 2 uses
  %.sroa.0.2.i.i197 = phi i64 [ %.sroa.0.1389.i.i190, %bb.qi ], [ %spec.select117.i.i195, %bb.qj ], !dbg !11049 ; 2 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %i.bir, i64 %i.chx, !dbg !11050
  store i8 %.sroa.061.1.i.i196, ptr %i.cim, align 1, !dbg !11050, !alias.scope !10855, !noalias !10883
  %.not114.i.i198 = icmp eq i64 %i.chx, 0, !dbg !11051
  br i1 %.not114.i.i198, label %.loopexit87.i, label %.lr.ph390.i.i189, !dbg !11051

bb.ql:                                            ; preds = %.lr.ph377.split.i.i122
  %i.cin = getelementptr inbounds nuw i8, ptr %i.bir, i64 %.sroa.7.0374.i.i124, !dbg !11052 ; 15 uses
  %i.cio = mul i64 %.sroa.7.0374.i.i124, %i.cez, !dbg !11053 ; 2 uses
  %i.cip = load i16, ptr %.sroa.0.0289375.i.i123, align 2, !dbg !10994, !alias.scope !10998, !noalias !11001, !noundef !14
  %i.ciq = zext i16 %i.cip to i64, !dbg !11002
  %i.cir = mul nuw nsw i64 %.sroa.0.0494.i, %i.ciq, !dbg !11004 ; 4 uses
  %.not.i125.i.i125 = icmp ugt i64 %i.cir, %i.bji, !dbg !11007
  br i1 %.not.i125.i.i125, label %.split381.us.i.i330, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126, !dbg !11007, !prof !168

.split381.us.i.i330:                              ; preds = %bb.ql, %bb.qh
  br label %.invoke1417.i, !dbg !11055

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126: ; preds = %bb.ql
  %i.cis = getelementptr inbounds nuw [4 x i8], ptr %i.bjh, i64 %i.cir, !dbg !11056
  %i.cit = sub nuw nsw i64 %i.bji, %i.cir, !dbg !11059 ; 2 uses
  br i1 %i.cfp, label %._crit_edge363.i.i145, label %.lr.ph362.i.i127, !dbg !11060

.lr.ph362.i.i127:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126, %bb.ry
  %.sroa.049.0361.i.i128 = phi float [ %.sroa.049.4.7.i.i144, %bb.ry ], [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126 ] ; 2 uses
  %.sroa.0160.0360.i.i129 = phi ptr [ %i.ciu, %bb.ry ], [ %i.bjl, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126 ] ; 10 uses
  %.sroa.7162.0359.i.i130 = phi i64 [ %i.civ, %bb.ry ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !11065, !noalias !10943
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.az, i8 0, i64 32, i1 false), !noalias !10943
  %i.ciu = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i129, i64 32, !dbg !11068 ; 2 uses
  %i.civ = add nuw nsw i64 %.sroa.7162.0359.i.i130, 1, !dbg !11070
  %i.ciw = shl nuw nsw i64 %.sroa.7162.0359.i.i130, 3, !dbg !11071 ; 11 uses
  %.not.i145.i.i131 = icmp samesign ugt i64 %i.ciw, %i.cit, !dbg !11072
  br i1 %.not.i145.i.i131, label %.invoke1417.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i132, !dbg !11072, !prof !168

._crit_edge363.i.i145:                            ; preds = %bb.ry, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126
  %.sroa.049.0.lcssa.i.i146 = phi float [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126 ], [ %.sroa.049.4.7.i.i144, %bb.ry ], !dbg !11076 ; 3 uses
  %i.cix = add nuw nsw i64 %i.cir, %i.cfq, !dbg !11077 ; 3 uses
  %.not.i132.i.i147 = icmp ugt i64 %i.cix, %i.bji, !dbg !11080
  br i1 %.not.i132.i.i147, label %.invoke1417.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i148, !dbg !11080, !prof !168

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i148: ; preds = %._crit_edge363.i.i145
  %i.ciy = sub nuw nsw i64 %i.bji, %i.cix, !dbg !11083
  %.not.i137.i.i149 = icmp samesign ugt i64 %i.cfr, %i.ciy, !dbg !11085
  br i1 %.not.i137.i.i149, label %.invoke1417.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150, !dbg !11085, !prof !168

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i148
  %i.ciz = getelementptr inbounds nuw [4 x i8], ptr %i.bjh, i64 %i.cix, !dbg !11088 ; 7 uses
  br i1 %i.cft, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151, !dbg !11090

.lr.ph367.i.i151:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150
  %i.cja = getelementptr inbounds nuw i8, ptr %i.ciz, i64 4, !dbg !11097
  br i1 %i.cfv, label %bb.qm, label %.invoke1413.i, !dbg !11101

._crit_edge368.i.i156:                            ; preds = %bb.rd, %bb.re, %bb.qn, %bb.qq, %bb.qt, %bb.qw, %bb.qz, %bb.rc, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150
  %.sroa.049.1.lcssa.i.i157 = phi float [ %.sroa.049.0.lcssa.i.i146, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150 ], [ %.sroa.049.2.i.i155, %bb.qn ], [ %.sroa.049.2.i.i155.1, %bb.qq ], [ %.sroa.049.2.i.i155.2, %bb.qt ], [ %.sroa.049.2.i.i155.3, %bb.qw ], [ %.sroa.049.2.i.i155.4, %bb.qz ], [ %.sroa.049.2.i.i155.5, %bb.rc ], [ %i.ckh, %bb.re ], [ %.sroa.049.2.i.i155.5, %bb.rd ], !dbg !11103 ; 2 uses
  %i.cjb = icmp samesign ult i64 %.sroa.7.0374.i.i124, 2000, !dbg !11104
  br i1 %i.cjb, label %bb.ri, label %bb.rg, !dbg !11104

bb.qm:                                            ; preds = %.lr.ph367.i.i151
  %i.cjc = load float, ptr %i.ciz, align 4, !dbg !11105, !alias.scope !10849, !noalias !10908, !noundef !14
  %i.cjd = load float, ptr %i.cfw, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952, !noundef !14
  %i.cje = fadd float %i.cjc, %i.cjd, !dbg !11107 ; 3 uses
  store float %i.cje, ptr %i.cfw, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952
  %i.cjf = fcmp olt float %i.cje, %.sroa.049.0.lcssa.i.i146, !dbg !11108
  br i1 %i.cjf, label %bb.rf, label %bb.qn, !dbg !11108

bb.qn:                                            ; preds = %bb.rf, %bb.qm
  %.sroa.049.2.i.i155 = phi float [ %i.cje, %bb.rf ], [ %.sroa.049.0.lcssa.i.i146, %bb.qm ], !dbg !11103 ; 3 uses
  br i1 %i.cfy, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.1, !dbg !11090

.lr.ph367.i.i151.1:                               ; preds = %bb.qn
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.ciz, i64 8, !dbg !11097
  br i1 %i.cga, label %bb.qo, label %.invoke1413.i, !dbg !11101

bb.qo:                                            ; preds = %.lr.ph367.i.i151.1
  %i.cjh = load float, ptr %i.cja, align 4, !dbg !11105, !alias.scope !10849, !noalias !10908, !noundef !14
  %i.cji = load float, ptr %i.cgc, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952, !noundef !14
  %i.cjj = fadd float %i.cjh, %i.cji, !dbg !11107 ; 3 uses
  store float %i.cjj, ptr %i.cgc, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952
  %i.cjk = fcmp olt float %i.cjj, %.sroa.049.2.i.i155, !dbg !11108
  br i1 %i.cjk, label %bb.qp, label %bb.qq, !dbg !11108

bb.qp:                                            ; preds = %bb.qo
  store i8 %i.cge, ptr %i.cin, align 1, !dbg !11109, !alias.scope !10855, !noalias !10883
  br label %bb.qq, !dbg !11110

bb.qq:                                            ; preds = %bb.qp, %bb.qo
  %.sroa.049.2.i.i155.1 = phi float [ %i.cjj, %bb.qp ], [ %.sroa.049.2.i.i155, %bb.qo ], !dbg !11103 ; 3 uses
  br i1 %i.cgf, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.2, !dbg !11090

.lr.ph367.i.i151.2:                               ; preds = %bb.qq
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.ciz, i64 12, !dbg !11097
  br i1 %i.cgh, label %bb.qr, label %.invoke1413.i, !dbg !11101

bb.qr:                                            ; preds = %.lr.ph367.i.i151.2
  %i.cjm = load float, ptr %i.cjg, align 4, !dbg !11105, !alias.scope !10849, !noalias !10908, !noundef !14
  %i.cjn = load float, ptr %i.cgj, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952, !noundef !14
  %i.cjo = fadd float %i.cjm, %i.cjn, !dbg !11107 ; 3 uses
  store float %i.cjo, ptr %i.cgj, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952
  %i.cjp = fcmp olt float %i.cjo, %.sroa.049.2.i.i155.1, !dbg !11108
  br i1 %i.cjp, label %bb.qs, label %bb.qt, !dbg !11108

bb.qs:                                            ; preds = %bb.qr
  store i8 %i.cgl, ptr %i.cin, align 1, !dbg !11109, !alias.scope !10855, !noalias !10883
  br label %bb.qt, !dbg !11110

bb.qt:                                            ; preds = %bb.qs, %bb.qr
  %.sroa.049.2.i.i155.2 = phi float [ %i.cjo, %bb.qs ], [ %.sroa.049.2.i.i155.1, %bb.qr ], !dbg !11103 ; 3 uses
  br i1 %i.cgm, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.3, !dbg !11090

.lr.ph367.i.i151.3:                               ; preds = %bb.qt
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.ciz, i64 16, !dbg !11097
  br i1 %i.cgo, label %bb.qu, label %.invoke1413.i, !dbg !11101

bb.qu:                                            ; preds = %.lr.ph367.i.i151.3
  %i.cjr = load float, ptr %i.cjl, align 4, !dbg !11105, !alias.scope !10849, !noalias !10908, !noundef !14
  %i.cjs = load float, ptr %i.cgq, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952, !noundef !14
  %i.cjt = fadd float %i.cjr, %i.cjs, !dbg !11107 ; 3 uses
  store float %i.cjt, ptr %i.cgq, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952
  %i.cju = fcmp olt float %i.cjt, %.sroa.049.2.i.i155.2, !dbg !11108
  br i1 %i.cju, label %bb.qv, label %bb.qw, !dbg !11108

bb.qv:                                            ; preds = %bb.qu
  store i8 %i.cgs, ptr %i.cin, align 1, !dbg !11109, !alias.scope !10855, !noalias !10883
  br label %bb.qw, !dbg !11110

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %.sroa.049.2.i.i155.3 = phi float [ %i.cjt, %bb.qv ], [ %.sroa.049.2.i.i155.2, %bb.qu ], !dbg !11103 ; 3 uses
  br i1 %i.cgt, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.4, !dbg !11090

.lr.ph367.i.i151.4:                               ; preds = %bb.qw
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.ciz, i64 20, !dbg !11097
  br i1 %i.cgv, label %bb.qx, label %.invoke1413.i, !dbg !11101

bb.qx:                                            ; preds = %.lr.ph367.i.i151.4
  %i.cjw = load float, ptr %i.cjq, align 4, !dbg !11105, !alias.scope !10849, !noalias !10908, !noundef !14
  %i.cjx = load float, ptr %i.cgx, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952, !noundef !14
  %i.cjy = fadd float %i.cjw, %i.cjx, !dbg !11107 ; 3 uses
  store float %i.cjy, ptr %i.cgx, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952
  %i.cjz = fcmp olt float %i.cjy, %.sroa.049.2.i.i155.3, !dbg !11108
  br i1 %i.cjz, label %bb.qy, label %bb.qz, !dbg !11108

bb.qy:                                            ; preds = %bb.qx
  store i8 %i.cgz, ptr %i.cin, align 1, !dbg !11109, !alias.scope !10855, !noalias !10883
  br label %bb.qz, !dbg !11110

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  %.sroa.049.2.i.i155.4 = phi float [ %i.cjy, %bb.qy ], [ %.sroa.049.2.i.i155.3, %bb.qx ], !dbg !11103 ; 3 uses
  br i1 %i.cha, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.5, !dbg !11090

.lr.ph367.i.i151.5:                               ; preds = %bb.qz
  %i.cka = getelementptr inbounds nuw i8, ptr %i.ciz, i64 24, !dbg !11097
  br i1 %i.chc, label %bb.ra, label %.invoke1413.i, !dbg !11101

bb.ra:                                            ; preds = %.lr.ph367.i.i151.5
  %i.ckb = load float, ptr %i.cjv, align 4, !dbg !11105, !alias.scope !10849, !noalias !10908, !noundef !14
  %i.ckc = load float, ptr %i.che, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952, !noundef !14
  %i.ckd = fadd float %i.ckb, %i.ckc, !dbg !11107 ; 3 uses
  store float %i.ckd, ptr %i.che, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952
  %i.cke = fcmp olt float %i.ckd, %.sroa.049.2.i.i155.4, !dbg !11108
  br i1 %i.cke, label %bb.rb, label %bb.rc, !dbg !11108

bb.rb:                                            ; preds = %bb.ra
  store i8 %i.chg, ptr %i.cin, align 1, !dbg !11109, !alias.scope !10855, !noalias !10883
  br label %bb.rc, !dbg !11110

bb.rc:                                            ; preds = %bb.rb, %bb.ra
  %.sroa.049.2.i.i155.5 = phi float [ %i.ckd, %bb.rb ], [ %.sroa.049.2.i.i155.4, %bb.ra ], !dbg !11103 ; 3 uses
  br i1 %i.chh, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.6, !dbg !11090

.lr.ph367.i.i151.6:                               ; preds = %bb.rc
  br i1 %i.chj, label %bb.rd, label %.invoke1413.i, !dbg !11101

bb.rd:                                            ; preds = %.lr.ph367.i.i151.6
  %i.ckf = load float, ptr %i.cka, align 4, !dbg !11105, !alias.scope !10849, !noalias !10908, !noundef !14
  %i.ckg = load float, ptr %i.chl, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952, !noundef !14
  %i.ckh = fadd float %i.ckf, %i.ckg, !dbg !11107 ; 3 uses
  store float %i.ckh, ptr %i.chl, align 4, !dbg !11107, !alias.scope !10851, !noalias !10952
  %i.cki = fcmp olt float %i.ckh, %.sroa.049.2.i.i155.5, !dbg !11108
  br i1 %i.cki, label %bb.re, label %._crit_edge368.i.i156, !dbg !11108

bb.re:                                            ; preds = %bb.rd
  store i8 %i.chn, ptr %i.cin, align 1, !dbg !11109, !alias.scope !10855, !noalias !10883
  br label %._crit_edge368.i.i156, !dbg !11110

bb.rf:                                            ; preds = %bb.qm
  store i8 %i.cfx, ptr %i.cin, align 1, !dbg !11109, !alias.scope !10855, !noalias !10883
  br label %bb.qn, !dbg !11110

bb.rg:                                            ; preds = %bb.ri, %._crit_edge368.i.i156
  %.sroa.029.0.i.i158 = phi float [ %i.crs, %bb.ri ], [ 1.350000e+01, %._crit_edge368.i.i156 ], !dbg !11111 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11112), !dbg !11115
  br i1 %.not.i.i172.i, label %.invoke1415.i, label %.lr.ph373.i.i159.preheader, !dbg !11116, !prof !751

.lr.ph373.i.i159.preheader:                       ; preds = %bb.rg
  %min.iters.check4621 = icmp samesign ult i64 %umin4619, 4, !dbg !11122
  br i1 %min.iters.check4621, label %.lr.ph373.i.i159.preheader5219, label %vector.ph4622, !dbg !11122

vector.ph4622:                                    ; preds = %.lr.ph373.i.i159.preheader
  %i.ckj = and i64 %23, 3                         ; 2 uses
  %i.ckk = icmp eq i64 %i.ckj, 0
  %i.ckl = select i1 %i.ckk, i64 4, i64 %i.ckj
  %n.vec4623 = sub nsw i64 %23, %i.ckl            ; 3 uses
  %i.ckm = shl i64 %n.vec4623, 5
  %i.ckn = getelementptr i8, ptr %i.bjl, i64 %i.ckm
  %broadcast.splatinsert4624 = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i157, i64 0
  %broadcast.splat4625 = shufflevector <4 x float> %broadcast.splatinsert4624, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert4626 = insertelement <4 x float> poison, float %.sroa.029.0.i.i158, i64 0 ; 5 uses
  %broadcast.splat4627 = shufflevector <4 x float> %broadcast.splatinsert4626, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep6111 = getelementptr i8, ptr %i.bjz, i64 %i.cio, !dbg !11122
  %i.cko = shufflevector <4 x float> %broadcast.splatinsert4626, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ckp = shufflevector <4 x float> %broadcast.splatinsert4626, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ckq = shufflevector <4 x float> %broadcast.splatinsert4626, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ckr = shufflevector <4 x float> %broadcast.splatinsert4626, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body4628, !dbg !11122

vector.body4628:                                  ; preds = %vector.body4628, %vector.ph4622
  %index4629 = phi i64 [ 0, %vector.ph4622 ], [ %index.next4636, %vector.body4628 ], !dbg !11123 ; 3 uses
  %i.cks = shl i64 %index4629, 5                  ; 4 uses
  %next.gep4630.a = getelementptr i8, ptr %i.bjl, i64 %i.cks ; 9 uses
  %i.ckt = getelementptr i8, ptr %i.bjl, i64 %i.cks ; 8 uses
  %next.gep4631 = getelementptr i8, ptr %i.ckt, i64 32
  %i.cku = getelementptr i8, ptr %i.bjl, i64 %i.cks ; 8 uses
  %next.gep4632 = getelementptr i8, ptr %i.cku, i64 64
  %i.ckv = getelementptr i8, ptr %i.bjl, i64 %i.cks ; 8 uses
  %next.gep4633 = getelementptr i8, ptr %i.ckv, i64 96
  %i.ckw = getelementptr inbounds nuw i8, ptr %next.gep4630.a, i64 4, !dbg !11125
  %i.ckx = getelementptr i8, ptr %i.ckt, i64 36, !dbg !11125
  %i.cky = getelementptr i8, ptr %i.cku, i64 68, !dbg !11125
  %i.ckz = getelementptr i8, ptr %i.ckv, i64 100, !dbg !11125
  %i.cla = load float, ptr %i.ckw, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.clb = load float, ptr %i.ckx, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.clc = load float, ptr %i.cky, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cld = load float, ptr %i.ckz, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cle = insertelement <4 x float> poison, float %i.cla, i64 0
  %i.clf = insertelement <4 x float> %i.cle, float %i.clb, i64 1
  %i.clg = insertelement <4 x float> %i.clf, float %i.clc, i64 2
  %i.clh = insertelement <4 x float> %i.clg, float %i.cld, i64 3
  %i.cli = fsub <4 x float> %i.clh, %broadcast.splat4625, !dbg !11127 ; 3 uses
  %i.clj = fcmp oge <4 x float> %i.cli, %broadcast.splat4627, !dbg !11129
  %i.clk = select <4 x i1> %i.clj, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer, !dbg !11131
  %i.cll = load float, ptr %next.gep4630.a, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.clm = load float, ptr %next.gep4631, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cln = load float, ptr %next.gep4632, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.clo = load float, ptr %next.gep4633, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.clp = insertelement <4 x float> poison, float %i.cll, i64 0
  %i.clq = insertelement <4 x float> %i.clp, float %i.clm, i64 1
  %i.clr = insertelement <4 x float> %i.clq, float %i.cln, i64 2
  %i.cls = insertelement <4 x float> %i.clr, float %i.clo, i64 3
  %i.clt = fsub <4 x float> %i.cls, %broadcast.splat4625, !dbg !11133 ; 3 uses
  %i.clu = fcmp oge <4 x float> %i.clt, %broadcast.splat4627, !dbg !11134
  %i.clv = zext <4 x i1> %i.clu to <4 x i8>, !dbg !11135
  %i.clw = or disjoint <4 x i8> %i.clk, %i.clv, !dbg !11136
  %i.clx = getelementptr inbounds nuw i8, ptr %next.gep4630.a, i64 8, !dbg !11125
  %i.cly = getelementptr i8, ptr %i.ckt, i64 40, !dbg !11125
  %i.clz = getelementptr i8, ptr %i.cku, i64 72, !dbg !11125
  %i.cma = getelementptr i8, ptr %i.ckv, i64 104, !dbg !11125
  %i.cmb = load float, ptr %i.clx, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cmc = load float, ptr %i.cly, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cmd = load float, ptr %i.clz, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cme = load float, ptr %i.cma, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cmf = insertelement <4 x float> poison, float %i.cmb, i64 0
  %i.cmg = insertelement <4 x float> %i.cmf, float %i.cmc, i64 1
  %i.cmh = insertelement <4 x float> %i.cmg, float %i.cmd, i64 2
  %i.cmi = insertelement <4 x float> %i.cmh, float %i.cme, i64 3
  %i.cmj = fsub <4 x float> %i.cmi, %broadcast.splat4625, !dbg !11139 ; 3 uses
  %i.cmk = fcmp oge <4 x float> %i.cmj, %broadcast.splat4627, !dbg !11140
  %i.cml = select <4 x i1> %i.cmk, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer, !dbg !11141
  %i.cmm = or disjoint <4 x i8> %i.clw, %i.cml, !dbg !11142
  %i.cmn = getelementptr inbounds nuw i8, ptr %next.gep4630.a, i64 12, !dbg !11125
  %i.cmo = getelementptr i8, ptr %i.ckt, i64 44, !dbg !11125
  %i.cmp = getelementptr i8, ptr %i.cku, i64 76, !dbg !11125
  %i.cmq = getelementptr i8, ptr %i.ckv, i64 108, !dbg !11125
  %i.cmr = load float, ptr %i.cmn, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cms = load float, ptr %i.cmo, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cmt = load float, ptr %i.cmp, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cmu = load float, ptr %i.cmq, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cmv = insertelement <4 x float> poison, float %i.cmr, i64 0
  %i.cmw = insertelement <4 x float> %i.cmv, float %i.cms, i64 1
  %i.cmx = insertelement <4 x float> %i.cmw, float %i.cmt, i64 2
  %i.cmy = insertelement <4 x float> %i.cmx, float %i.cmu, i64 3
  %i.cmz = fsub <4 x float> %i.cmy, %broadcast.splat4625, !dbg !11144 ; 3 uses
  %i.cna = fcmp oge <4 x float> %i.cmz, %broadcast.splat4627, !dbg !11145
  %i.cnb = select <4 x i1> %i.cna, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer, !dbg !11146
  %i.cnc = or disjoint <4 x i8> %i.cmm, %i.cnb, !dbg !11147
  %i.cnd = getelementptr inbounds nuw i8, ptr %next.gep4630.a, i64 16, !dbg !11125
  %i.cne = getelementptr i8, ptr %i.ckt, i64 48, !dbg !11125
  %i.cnf = getelementptr i8, ptr %i.cku, i64 80, !dbg !11125
  %i.cng = getelementptr i8, ptr %i.ckv, i64 112, !dbg !11125
  %i.cnh = load float, ptr %i.cnd, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cni = load float, ptr %i.cne, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cnj = load float, ptr %i.cnf, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cnk = load float, ptr %i.cng, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cnl = insertelement <4 x float> poison, float %i.cnh, i64 0
  %i.cnm = insertelement <4 x float> %i.cnl, float %i.cni, i64 1
  %i.cnn = insertelement <4 x float> %i.cnm, float %i.cnj, i64 2
  %i.cno = insertelement <4 x float> %i.cnn, float %i.cnk, i64 3
  %i.cnp = fsub <4 x float> %i.cno, %broadcast.splat4625, !dbg !11149 ; 3 uses
  %i.cnq = fcmp oge <4 x float> %i.cnp, %broadcast.splat4627, !dbg !11150
  %i.cnr = select <4 x i1> %i.cnq, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer, !dbg !11151
  %i.cns = or disjoint <4 x i8> %i.cnc, %i.cnr, !dbg !11152
  %i.cnt = getelementptr inbounds nuw i8, ptr %next.gep4630.a, i64 20, !dbg !11125
  %i.cnu = getelementptr i8, ptr %i.ckt, i64 52, !dbg !11125
  %i.cnv = getelementptr i8, ptr %i.cku, i64 84, !dbg !11125
  %i.cnw = getelementptr i8, ptr %i.ckv, i64 116, !dbg !11125
  %i.cnx = load float, ptr %i.cnt, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cny = load float, ptr %i.cnu, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cnz = load float, ptr %i.cnv, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.coa = load float, ptr %i.cnw, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cob = insertelement <4 x float> poison, float %i.cnx, i64 0
  %i.coc = insertelement <4 x float> %i.cob, float %i.cny, i64 1
  %i.cod = insertelement <4 x float> %i.coc, float %i.cnz, i64 2
  %i.coe = insertelement <4 x float> %i.cod, float %i.coa, i64 3
  %i.cof = fsub <4 x float> %i.coe, %broadcast.splat4625, !dbg !11154 ; 3 uses
  %i.cog = fcmp oge <4 x float> %i.cof, %broadcast.splat4627, !dbg !11155
  %i.coh = select <4 x i1> %i.cog, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer, !dbg !11156
  %i.coi = or disjoint <4 x i8> %i.cns, %i.coh, !dbg !11157
  %i.coj = getelementptr inbounds nuw i8, ptr %next.gep4630.a, i64 24, !dbg !11125
  %i.cok = getelementptr i8, ptr %i.ckt, i64 56, !dbg !11125
  %i.col = getelementptr i8, ptr %i.cku, i64 88, !dbg !11125
  %i.com = getelementptr i8, ptr %i.ckv, i64 120, !dbg !11125
  %i.con = load float, ptr %i.coj, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.coo = load float, ptr %i.cok, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cop = load float, ptr %i.col, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.coq = load float, ptr %i.com, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cor = insertelement <4 x float> poison, float %i.con, i64 0
  %i.cos = insertelement <4 x float> %i.cor, float %i.coo, i64 1
  %i.cot = insertelement <4 x float> %i.cos, float %i.cop, i64 2
  %i.cou = insertelement <4 x float> %i.cot, float %i.coq, i64 3
  %i.cov = fsub <4 x float> %i.cou, %broadcast.splat4625, !dbg !11159 ; 3 uses
  %i.cow = fcmp oge <4 x float> %i.cov, %broadcast.splat4627, !dbg !11160
  %i.cox = select <4 x i1> %i.cow, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer, !dbg !11161
  %i.coy = or disjoint <4 x i8> %i.coi, %i.cox, !dbg !11162
  %i.coz = getelementptr inbounds nuw i8, ptr %next.gep4630.a, i64 28, !dbg !11125
  %i.cpa = getelementptr i8, ptr %i.ckt, i64 60, !dbg !11125
  %i.cpb = getelementptr i8, ptr %i.cku, i64 92, !dbg !11125
  %i.cpc = getelementptr i8, ptr %i.ckv, i64 124, !dbg !11125
  %i.cpd = load float, ptr %i.coz, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cpe = load float, ptr %i.cpa, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cpf = load float, ptr %i.cpb, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cpg = load float, ptr %i.cpc, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cph = insertelement <4 x float> poison, float %i.cpd, i64 0
  %i.cpi = insertelement <4 x float> %i.cph, float %i.cpe, i64 1
  %i.cpj = insertelement <4 x float> %i.cpi, float %i.cpf, i64 2
  %i.cpk = insertelement <4 x float> %i.cpj, float %i.cpg, i64 3
  %i.cpl = fsub <4 x float> %i.cpk, %broadcast.splat4625, !dbg !11164 ; 3 uses
  %i.cpm = fcmp oge <4 x float> %i.cpl, %broadcast.splat4627, !dbg !11165
  %i.cpn = select <4 x i1> %i.cpm, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer, !dbg !11166
  %i.cpo = add nuw <4 x i8> %i.coy, %i.cpn, !dbg !11167
  %gep6112 = getelementptr i8, ptr %invariant.gep6111, i64 %index4629, !dbg !11122 ; 2 uses
  %wide.load4634 = load <4 x i8>, ptr %gep6112, align 1, !dbg !11122, !alias.scope !11169, !noalias !11170
  %i.cpp = or <4 x i8> %i.cpo, %wide.load4634, !dbg !11122
  store <4 x i8> %i.cpp, ptr %gep6112, align 1, !dbg !11122, !alias.scope !11169, !noalias !11170
  %i.cpq = shufflevector <4 x float> %i.clt, <4 x float> %i.cli, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !11172
  %i.cpr = shufflevector <4 x float> %i.cmj, <4 x float> %i.cmz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !11172
  %i.cps = shufflevector <8 x float> %i.cpq, <8 x float> %i.cpr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !11172
  %i.cpt = fcmp olt <16 x float> %i.cps, %i.cko, !dbg !11172
  %i.cpu = shufflevector <4 x float> %i.clt, <4 x float> %i.cli, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !11172
  %i.cpv = shufflevector <4 x float> %i.cmj, <4 x float> %i.cmz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !11172
  %i.cpw = shufflevector <8 x float> %i.cpu, <8 x float> %i.cpv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !11172
  %i.cpx = select <16 x i1> %i.cpt, <16 x float> %i.cpw, <16 x float> %i.ckp, !dbg !11172
  %i.cpy = shufflevector <4 x float> %i.cnp, <4 x float> %i.cof, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !11172
  %i.cpz = shufflevector <4 x float> %i.cov, <4 x float> %i.cpl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !11172
  %i.cqa = shufflevector <8 x float> %i.cpy, <8 x float> %i.cpz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !11172
  %i.cqb = fcmp olt <16 x float> %i.cqa, %i.ckq, !dbg !11172
  %i.cqc = shufflevector <4 x float> %i.cnp, <4 x float> %i.cof, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !11172
  %i.cqd = shufflevector <4 x float> %i.cov, <4 x float> %i.cpl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !11172
  %i.cqe = shufflevector <8 x float> %i.cqc, <8 x float> %i.cqd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !11172
  %i.cqf = select <16 x i1> %i.cqb, <16 x float> %i.cqe, <16 x float> %i.ckr, !dbg !11172
  %interleaved.vec4635 = shufflevector <16 x float> %i.cpx, <16 x float> %i.cqf, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>, !dbg !11172
  store <32 x float> %interleaved.vec4635, ptr %next.gep4630.a, align 4, !dbg !11172, !alias.scope !10851, !noalias !11126
  %index.next4636 = add nuw i64 %index4629, 4, !dbg !11123 ; 2 uses
  %i.cqg = icmp eq i64 %index.next4636, %n.vec4623, !dbg !11173
  br i1 %i.cqg, label %.lr.ph373.i.i159.preheader5219, label %vector.body4628, !dbg !11173, !llvm.loop !11175

.lr.ph373.i.i159.preheader5219:                   ; preds = %vector.body4628, %.lr.ph373.i.i159.preheader
  %.sroa.0179.0371.i.i160.ph = phi ptr [ %i.bjl, %.lr.ph373.i.i159.preheader ], [ %i.ckn, %vector.body4628 ]
  %.sroa.7181.0370.i.i161.ph = phi i64 [ 0, %.lr.ph373.i.i159.preheader ], [ %n.vec4623, %vector.body4628 ]
  %i.cqh = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i157, i64 0
  %i.cqi = shufflevector <4 x float> %i.cqh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cqj = insertelement <4 x float> poison, float %.sroa.029.0.i.i158, i64 0
  %i.cqk = shufflevector <4 x float> %i.cqj, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph373.i.i159, !dbg !11122

.lr.ph373.i.i159:                                 ; preds = %.lr.ph373.i.i159.preheader5219, %bb.rh
  %.sroa.0179.0371.i.i160 = phi ptr [ %i.cqo, %bb.rh ], [ %.sroa.0179.0371.i.i160.ph, %.lr.ph373.i.i159.preheader5219 ] ; 4 uses
  %.sroa.7181.0370.i.i161 = phi i64 [ %i.cqn, %bb.rh ], [ %.sroa.7181.0370.i.i161.ph, %.lr.ph373.i.i159.preheader5219 ] ; 2 uses
  %i.cql = add nuw nsw i64 %.sroa.7181.0370.i.i161, %i.cio, !dbg !11176 ; 3 uses
  %i.cqm = icmp ult i64 %i.cql, %i.bka, !dbg !11122
  br i1 %i.cqm, label %bb.rh, label %.invoke1413.i, !dbg !11122

bb.rh:                                            ; preds = %.lr.ph373.i.i159
  %.sroa.12216.0..sroa_idx.i.i170 = getelementptr inbounds nuw i8, ptr %.sroa.0179.0371.i.i160, i64 16, !dbg !11125 ; 2 uses
  %i.cqn = add nuw nsw i64 %.sroa.7181.0370.i.i161, 1, !dbg !11123
  %i.cqo = getelementptr inbounds nuw i8, ptr %.sroa.0179.0371.i.i160, i64 32, !dbg !11177 ; 2 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.bjz, i64 %i.cql, !dbg !11122 ; 2 uses
  %i.cqq = load i8, ptr %i.cqp, align 1, !dbg !11122, !alias.scope !11169, !noalias !11170, !noundef !14
  %i.cqr = load <4 x float>, ptr %.sroa.0179.0371.i.i160, align 4, !dbg !11125, !alias.scope !10851, !noalias !11126
  %i.cqs = fsub <4 x float> %i.cqr, %i.cqi, !dbg !11133 ; 3 uses
  %i.cqt = fcmp oge <4 x float> %i.cqs, %i.cqk, !dbg !11134
  %i.cqu = bitcast <4 x i1> %i.cqt to i4, !dbg !11131
  %i.cqv = zext i4 %i.cqu to i8, !dbg !11131
  %i.cqw = fcmp olt <4 x float> %i.cqs, %i.cqk, !dbg !11179
end_hunk_1
begin_hunk_2_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.dzg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dzh = icmp eq i64 %i.dww, 0, !dbg !13539
  br i1 %i.dzh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit479.i.i607, label %bb.zw, !dbg !13539

bb.zw:                                            ; preds = %bb.zv
  %i.dzi = mul nuw nsw i64 %i.dww, 2192, !dbg !13543
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dwv, i64 noundef range(i64 1, 0) %i.dzi, i64 noundef 8) #19, !dbg !13546, !noalias !12329
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit479.i.i607, !dbg !13551

bb.zx:                                            ; preds = %bb.aaa, %.lr.ph1032.i.i624
  %.sroa.047.31031.i.i639 = phi i64 [ %.sroa.047.01049.i.i631, %.lr.ph1032.i.i624 ], [ %.sroa.047.4.lcssa.i.i653, %bb.aaa ] ; 3 uses
  %.sroa.0128.01030.i.i640 = phi i64 [ 0, %.lr.ph1032.i.i624 ], [ %i.dzj, %bb.aaa ] ; 8 uses
  %i.dzj = add nuw nsw i64 %.sroa.0128.01030.i.i640, 1, !dbg !13552 ; 2 uses
  %exitcond1415.not.i.i641 = icmp eq i64 %.sroa.0128.01030.i.i640, %i.dju, !dbg !13556
  br i1 %exitcond1415.not.i.i641, label %.invoke4783, label %.noexc249.i.i642, !dbg !13556

.noexc249.i.i642:                                 ; preds = %bb.zx
  %i.dzk = getelementptr inbounds nuw [2192 x i8], ptr %i.djt, i64 %.sroa.0128.01030.i.i640, !dbg !13558 ; 5 uses
  %i.dzl = getelementptr inbounds nuw i8, ptr %i.dzk, i64 2176, !dbg !13559 ; 2 uses
  %i.dzm = getelementptr inbounds nuw i8, ptr %i.dzk, i64 2184, !dbg !13562 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dzk, i8 0, i64 2184, i1 false), !dbg !13559, !noalias !12329
  store float 3.402000e+38, ptr %i.dzm, align 8, !dbg !13562, !alias.scope !13564, !noalias !12329
  %i.dzn = add nuw nsw i64 %.sroa.0128.01030.i.i640, %.sroa.051.11048.i.i632, !dbg !13567 ; 2 uses
  %i.dzo = icmp ult i64 %i.dzn, %i.dis, !dbg !13569
  br i1 %i.dzo, label %bb.zy, label %bb.zz, !dbg !13569

bb.zy:                                            ; preds = %.noexc249.i.i642
  %i.dzp = getelementptr inbounds nuw [4 x i8], ptr %i.dir, i64 %i.dzn, !dbg !13569
  %i.dzq = load i32, ptr %i.dzp, align 4, !dbg !13569, !noalias !12329, !noundef !14 ; 2 uses
  %i.dzr = zext i32 %i.dzq to i64, !dbg !13569
  %.not1098.i.i644 = icmp eq i32 %i.dzq, 0, !dbg !13570
  br i1 %.not1098.i.i644, label %._crit_edge.i.i652, label %.lr.ph.preheader.i.i645, !dbg !13578

.lr.ph.preheader.i.i645:                          ; preds = %bb.zy
  %i.dzs = call i64 @llvm.usub.sat.i64(i64 range(i64 0, 4611686018427387904) %i.czq, i64 %.sroa.047.31031.i.i639), !dbg !13579
  br label %.lr.ph.i.i646, !dbg !13579

bb.zz:                                            ; preds = %.noexc249.i.i642
  %umax1414.le.i.i643 = call i64 @llvm.umax.i64(i64 %i.dis, i64 %.sroa.051.11048.i.i632)
  br label %.invoke4783, !dbg !13569

._crit_edge.i.i652:                               ; preds = %bb.aad, %bb.zy
  %.sroa.047.4.lcssa.i.i653 = phi i64 [ %.sroa.047.31031.i.i639, %bb.zy ], [ %i.eal, %bb.aad ], !dbg !13581 ; 2 uses
  %i.dzt = invoke noundef float @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.dzk, ptr noalias noundef nonnull %10)
          to label %bb.aaa unwind label %.thread629.loopexit.i.i654, !dbg !13582, !noalias !12329

bb.aaa:                                           ; preds = %._crit_edge.i.i652
  store float %i.dzt, ptr %i.dzm, align 8, !dbg !13583, !alias.scope !13586, !noalias !12329
  %i.dzu = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.sroa.0128.01030.i.i640, !dbg !13589
  %i.dzv = trunc nuw nsw i64 %.sroa.0128.01030.i.i640 to i32, !dbg !13589 ; 2 uses
  store i32 %i.dzv, ptr %i.dzu, align 4, !dbg !13589, !noalias !12290
  %i.dzw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.0128.01030.i.i640, !dbg !13590
  store i32 %i.dzv, ptr %i.dzw, align 4, !dbg !13590, !noalias !12290
  %i.dzx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.sroa.0128.01030.i.i640, !dbg !13591
  store i32 1, ptr %i.dzx, align 4, !dbg !13591, !noalias !12290
  %exitcond1417.not.i.i656 = icmp eq i64 %i.dzj, %umax1425.i.i637, !dbg !13592
  br i1 %exitcond1417.not.i.i656, label %._crit_edge1033.i.i657, label %bb.zx, !dbg !12476

.lr.ph.i.i646:                                    ; preds = %bb.aad, %.lr.ph.preheader.i.i645
  %.sroa.047.41029.i.i647 = phi i64 [ %i.eal, %bb.aad ], [ %.sroa.047.31031.i.i639, %.lr.ph.preheader.i.i645 ] ; 3 uses
  %.sroa.0130.01028.i.i648 = phi i64 [ %i.dzy, %bb.aad ], [ 0, %.lr.ph.preheader.i.i645 ] ; 2 uses
  %i.dzy = add nuw nsw i64 %.sroa.0130.01028.i.i648, 1, !dbg !13594 ; 2 uses
  %exitcond1412.not.i.i649 = icmp eq i64 %.sroa.0130.01028.i.i648, %i.dzs, !dbg !13579
  br i1 %exitcond1412.not.i.i649, label %.invoke4783, label %bb.aab, !dbg !13579

.invoke4783:                                      ; preds = %bb.zx, %.lr.ph.i.i646, %bb.zz
  %i.dzz = phi i64 [ %.sroa.047.41029.i.i647, %.lr.ph.i.i646 ], [ %umax1414.le.i.i643, %bb.zz ], [ %i.dju, %bb.zx ]
  %i.eaa = phi i64 [ %i.czq, %.lr.ph.i.i646 ], [ %i.dis, %bb.zz ], [ %i.dju, %bb.zx ]
  %i.eab = phi ptr [ @100, %.lr.ph.i.i646 ], [ @99, %bb.zz ], [ @98, %bb.zx ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dzz, i64 noundef %i.eaa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eab) #20
          to label %.cont4784 unwind label %.thread629.loopexit.split-lp.loopexit.split-lp.i.i597, !dbg !13600, !noalias !12329

.cont4784:                                        ; preds = %.invoke4783
  unreachable

bb.aab:                                           ; preds = %.lr.ph.i.i646
  %i.eac = getelementptr inbounds nuw [2 x i8], ptr %i.czp, i64 %.sroa.047.41029.i.i647, !dbg !13579
  %i.ead = load i16, ptr %i.eac, align 2, !dbg !13601, !alias.scope !13603, !noalias !13283, !noundef !14 ; 2 uses
  %i.eae = zext i16 %i.ead to i64, !dbg !13606    ; 2 uses
  %i.eaf = icmp ult i16 %i.ead, 544, !dbg !13608
  br i1 %i.eaf, label %bb.aad, label %bb.aac, !dbg !13608

bb.aac:                                           ; preds = %bb.aab
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.eae, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #18
          to label %.noexc477.i.i650 unwind label %.thread629.loopexit.split-lp.loopexit.split-lp.i.i597, !dbg !13608, !noalias !12329

.noexc477.i.i650:                                 ; preds = %bb.aac
  unreachable, !dbg !13608

bb.aad:                                           ; preds = %bb.aab
  %i.eag = getelementptr inbounds nuw [4 x i8], ptr %i.dzk, i64 %i.eae, !dbg !13610 ; 2 uses
  %i.eah = load i32, ptr %i.eag, align 4, !dbg !13611, !alias.scope !13612, !noalias !12329, !noundef !14
  %i.eai = add i32 %i.eah, 1, !dbg !13615
  store i32 %i.eai, ptr %i.eag, align 4, !dbg !13617, !alias.scope !13612, !noalias !12329
  %i.eaj = load i64, ptr %i.dzl, align 8, !dbg !13618, !alias.scope !13620, !noalias !12329, !noundef !14
  %i.eak = add i64 %i.eaj, 1, !dbg !13623
  store i64 %i.eak, ptr %i.dzl, align 8, !dbg !13625, !alias.scope !13627, !noalias !12329
  %i.eal = add nuw nsw i64 %.sroa.047.41029.i.i647, 1, !dbg !13630 ; 2 uses
  %exitcond1413.not.i.i651 = icmp eq i64 %i.dzy, %i.dzr, !dbg !13570
  br i1 %exitcond1413.not.i.i651, label %._crit_edge.i.i652, label %.lr.ph.i.i646, !dbg !13578

bb.aae:                                           ; preds = %bb.aah, %bb.vl
  %.sroa.051.01026.i.i594 = phi i64 [ 0, %bb.vl ], [ %i.eaq, %bb.aah ] ; 2 uses
  %.sroa.063.01025.i.i595 = phi i64 [ 0, %bb.vl ], [ %.sroa.063.1.i.i620, %bb.aah ] ; 5 uses
  %i.eam = icmp ult i64 %.sroa.063.01025.i.i595, %i.dis, !dbg !13632
  br i1 %i.eam, label %bb.aaf, label %.invoke.i.i596, !dbg !13632

bb.aaf:                                           ; preds = %bb.aae
  %i.ean = getelementptr inbounds nuw [4 x i8], ptr %i.dir, i64 %.sroa.063.01025.i.i595, !dbg !13634 ; 2 uses
  %i.eao = load i32, ptr %i.ean, align 4, !dbg !13635, !noalias !12329, !noundef !14
  %i.eap = add i32 %i.eao, 1, !dbg !13637
  store i32 %i.eap, ptr %i.ean, align 4, !dbg !13639, !noalias !12329
  %i.eaq = add nuw i64 %.sroa.051.01026.i.i594, 1, !dbg !13640 ; 3 uses
  %i.ear = icmp eq i64 %i.eaq, %.sroa.04.1, !dbg !13642 ; 2 uses
  br i1 %i.ear, label %bb.aai, label %bb.aag, !dbg !13642

bb.aag:                                           ; preds = %bb.aaf
  %i.eas = getelementptr inbounds nuw i8, ptr %i.dey, i64 %.sroa.051.01026.i.i594, !dbg !13643
  %i.eat = load i8, ptr %i.eas, align 1, !dbg !13643, !alias.scope !12280, !noalias !13644, !noundef !14
  %i.eau = getelementptr inbounds nuw i8, ptr %i.dey, i64 %i.eaq, !dbg !13645
  %i.eav = load i8, ptr %i.eau, align 1, !dbg !13645, !alias.scope !12280, !noalias !13644, !noundef !14
  %.not237.i.i619 = icmp eq i8 %i.eat, %i.eav, !dbg !13643
  br i1 %.not237.i.i619, label %bb.aah, label %bb.aai, !dbg !13643

.invoke.i.i596:                                   ; preds = %bb.aae
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.063.01025.i.i595, i64 noundef %i.dis, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #20
          to label %.cont.i.i618 unwind label %.thread629.loopexit.split-lp.loopexit.split-lp.i.i597, !dbg !13646, !noalias !12329

.cont.i.i618:                                     ; preds = %.invoke.i.i596
  unreachable

bb.aah:                                           ; preds = %bb.aai, %bb.aag
  %.sroa.063.1.i.i620 = phi i64 [ %i.eaw, %bb.aai ], [ %.sroa.063.01025.i.i595, %bb.aag ], !dbg !12667
  br i1 %i.ear, label %.preheader681.split.i.i621, label %bb.aae, !dbg !12454

bb.aai:                                           ; preds = %bb.aag, %bb.aaf
  %i.eaw = add nuw i64 %.sroa.063.01025.i.i595, 1, !dbg !13647
  br label %bb.aah, !dbg !13649

.thread596.i.i709:                                ; preds = %bb.yq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742, %bb.vm
  %.pn229623.i.i710 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i708, %bb.vm ], [ %.pn.i.i747, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742 ], [ %.pn.i.i747, %bb.yq ] ; 2 uses
  %.sroa.0497.4620.i.i711 = phi ptr [ %.sroa.0497.3.lcssa.i.i690, %bb.vm ], [ %.sroa.0497.6.i.i746, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742 ], [ %.sroa.0497.6.i.i746, %bb.yq ] ; 2 uses
  %.sroa.14.4619.i.i712 = phi i64 [ %.sroa.14.3.lcssa.i.i689, %bb.vm ], [ %.sroa.14.6.i.i745, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742 ], [ %.sroa.14.6.i.i745, %bb.yq ] ; 2 uses
  %.sroa.0507.3618.i.i713 = phi ptr [ %.sroa.0507.4.ph628.i.i707, %bb.vm ], [ %i.dmj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742 ], [ %i.dmj, %bb.yq ] ; 2 uses
  %.sroa.12.3617.i.i714 = phi i64 [ %.sroa.12.4.ph627.i.i706, %bb.vm ], [ %i.dmk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742 ], [ %i.dmk, %bb.yq ] ; 2 uses
  %.sroa.0525.0614.i.i715 = phi ptr [ %.sroa.0525.1.ph626.i.i705, %bb.vm ], [ %i.dmc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742 ], [ %i.dmc, %bb.yq ] ; 2 uses
  %.sroa.11.0613.i.i716 = phi i64 [ %.sroa.11.1.ph625.i.i704, %bb.vm ], [ %i.dmd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742 ], [ %i.dmd, %bb.yq ] ; 2 uses
  %.sroa.0532.0612.i.i717 = phi ptr [ %i.dli, %bb.vm ], [ %.sroa.0532.2.i.i744, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742 ], [ %.sroa.0532.2.i.i744, %bb.yq ] ; 2 uses
  %.sroa.11533.0611.i.i718 = phi i64 [ %i.dlj, %bb.vm ], [ %.sroa.11533.2.i.i743, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit465.i.i742 ], [ %.sroa.11533.2.i.i743, %bb.yq ] ; 2 uses
  %i.eax = icmp eq i64 %.sroa.11533.0611.i.i718, 0, !dbg !13650
  br i1 %i.eax, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit479.i.i607, label %bb.aaj, !dbg !13650

bb.aaj:                                           ; preds = %.thread596.i.i709
  %i.eay = shl nuw nsw i64 %.sroa.11533.0611.i.i718, 2, !dbg !13654
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0532.0612.i.i717) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0532.0612.i.i717, i64 noundef range(i64 1, 0) %i.eay, i64 noundef 4) #19, !dbg !13657, !noalias !12329
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit479.i.i607, !dbg !13662

bb.aak:                                           ; preds = %bb.vd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i.i574, %.thread566.i.i572
  %.pn229.pn.pn.pn.pn.pn571.i.i573 = phi { ptr, i32 } [ %i.dix, %.thread566.i.i572 ], [ %.pn229.pn.pn.pn.pn.i.i577, %bb.vd ], [ %.pn229.pn.pn.pn.pn.i.i577, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i.i574 ] ; 2 uses
  %i.eaz = icmp eq i64 %i.dis, 0, !dbg !13663
  br i1 %i.eaz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i568, label %bb.aal, !dbg !13663

bb.aal:                                           ; preds = %bb.aak
  %i.eba = shl nuw nsw i64 %i.dis, 2, !dbg !13667
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dir) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dir, i64 noundef range(i64 1, 0) %i.eba, i64 noundef 4) #19, !dbg !13670, !noalias !12329
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i568, !dbg !13675

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i568: ; preds = %bb.aal, %bb.aak, %.thread.i.i567
  %.pn229.pn.pn.pn.pn.pn.pn565.i.i569 = phi { ptr, i32 } [ %i.diq, %.thread.i.i567 ], [ %.pn229.pn.pn.pn.pn.pn571.i.i573, %bb.aal ], [ %.pn229.pn.pn.pn.pn.pn571.i.i573, %bb.aak ] ; 2 uses
  %i.ebb = icmp eq i64 %i.dif, 0, !dbg !13676
  br i1 %i.ebb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i401, label %bb.aam, !dbg !13676

bb.aam:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i568
  %i.ebc = shl nuw nsw i64 %i.dif, 2, !dbg !13680
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.die) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.die, i64 noundef range(i64 1, 0) %i.ebc, i64 noundef 4) #19, !dbg !13683, !noalias !12329
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i401, !dbg !13688

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAlloctECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit462.i.i820, %bb.xj
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dey, i64 noundef range(i64 1, 0) %i.dez, i64 noundef 1) #19, !dbg !13689, !noalias !11762
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAlloctECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !13698

bb.aan:                                           ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i, %.split492.i422
  %.sroa.0.0494.i426 = phi i64 [ %spec.store.select.i364, %.split492.i422 ], [ %i.erh, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ] ; 14 uses
  %.sroa.031.0493.i427 = phi i64 [ 0, %.split492.i422 ], [ %i.ebd, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ]
  %i.ebd = add nuw nsw i64 %.sroa.031.0493.i427, 1, !dbg !13699 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13705), !dbg !13708
  call void @llvm.experimental.noalias.scope.decl(metadata !13710), !dbg !13708
  call void @llvm.experimental.noalias.scope.decl(metadata !13712), !dbg !13708
  call void @llvm.experimental.noalias.scope.decl(metadata !13714), !dbg !13708
  call void @llvm.experimental.noalias.scope.decl(metadata !13716), !dbg !13708
  call void @llvm.experimental.noalias.scope.decl(metadata !13718), !dbg !13708
  %i.ebe = icmp eq i64 %.sroa.0.0494.i426, 0, !dbg !13720
  br i1 %i.ebe, label %.loopexit87.i546, label %bb.aao, !dbg !13720

bb.aao:                                           ; preds = %bb.aan
  %i.ebf = add nsw i64 %.sroa.0.0494.i426, 7, !dbg !13723
  %i.ebg = lshr i64 %i.ebf, 3, !dbg !13727        ; 9 uses
  %i.ebh = icmp eq i64 %.sroa.0.0494.i426, 1, !dbg !13728
  br i1 %i.ebh, label %.preheader.i174.i868.preheader, label %bb.aap, !dbg !13728

.preheader.i174.i868.preheader:                   ; preds = %bb.aao
  br i1 %min.iters.check4694, label %.preheader.i174.i868.preheader4977, label %vector.body4697, !dbg !13732

.preheader.i174.i868.preheader4977:               ; preds = %vector.body4697, %.preheader.i174.i868.preheader
  %.sroa.065.0392.i.i869.ph = phi i64 [ 0, %.preheader.i174.i868.preheader ], [ %n.vec4696, %vector.body4697 ]
  br label %.preheader.i174.i868, !dbg !13732

vector.body4697:                                  ; preds = %.preheader.i174.i868.preheader, %vector.body4697
  %index4698 = phi i64 [ %index.next4699, %vector.body4697 ], [ 0, %.preheader.i174.i868.preheader ], !dbg !13735 ; 2 uses
  %i.ebi = getelementptr inbounds nuw i8, ptr %i.dey, i64 %index4698, !dbg !13732 ; 2 uses
  %i.ebj = getelementptr inbounds nuw i8, ptr %i.ebi, i64 16, !dbg !13732
  store <16 x i8> zeroinitializer, ptr %i.ebi, align 1, !dbg !13732, !alias.scope !13718, !noalias !13746
  store <16 x i8> zeroinitializer, ptr %i.ebj, align 1, !dbg !13732, !alias.scope !13718, !noalias !13746
  %index.next4699 = add nuw i64 %index4698, 32, !dbg !13735 ; 2 uses
  %i.ebk = icmp eq i64 %index.next4699, %n.vec4696, !dbg !13747
  br i1 %i.ebk, label %.preheader.i174.i868.preheader4977, label %vector.body4697, !dbg !13747, !llvm.loop !13748

bb.aap:                                           ; preds = %bb.aao
  %i.ebl = mul nuw nsw i64 %.sroa.0.0494.i426, 544, !dbg !13749 ; 2 uses
  %.not110.i.i428 = icmp ugt i64 %i.ebl, %i.dfp
  br i1 %.not110.i.i428, label %.invoke1415.i860, label %.lr.ph.preheader.i169.i429, !dbg !13750, !prof !751

.lr.ph.preheader.i169.i429:                       ; preds = %bb.aap
  %.idx.i168.i430 = mul nuw nsw i64 %.sroa.0.0494.i426, 2176, !dbg !13759
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dfo, i8 0, i64 %.idx.i168.i430, i1 false), !dbg !13768, !alias.scope !13712, !noalias !13771
  br label %bb.aaq, !dbg !13772

bb.aaq:                                           ; preds = %bb.act, %.lr.ph.preheader.i169.i429
  %.sroa.067.0348.i.i431 = phi i64 [ 0, %.lr.ph.preheader.i169.i429 ], [ %i.ebm, %bb.act ] ; 4 uses
  %i.ebm = add nuw nsw i64 %.sroa.067.0348.i.i431, 1, !dbg !13778 ; 2 uses
  %exitcond.not.i170.i432 = icmp eq i64 %.sroa.067.0348.i.i431, %i.dag, !dbg !13784
  br i1 %exitcond.not.i170.i432, label %.invoke1413.i443, label %bb.acr, !dbg !13784

.loopexit307.i.i450:                              ; preds = %bb.acq
  %i.ebn = icmp eq i64 %i.ebo, 0, !dbg !13786
  br i1 %i.ebn, label %bb.aar, label %.split.i.i436, !dbg !13786

bb.aar:                                           ; preds = %.loopexit307.i.i450
  br i1 %i.dgx, label %._crit_edge.i171.i456, label %.lr.ph352.i.i451, !dbg !13787

.split.i.i436:                                    ; preds = %bb.act, %.loopexit307.i.i450
  %.sroa.04.0350.i.i437 = phi i64 [ %i.ebo, %.loopexit307.i.i450 ], [ 544, %bb.act ]
  %i.ebo = add nsw i64 %.sroa.04.0350.i.i437, -1, !dbg !13794 ; 4 uses
  %invariant.gep.i.i438 = getelementptr [4 x i8], ptr %i.daf, i64 %i.ebo, !dbg !13797
  %i.ebp = mul nuw i64 %i.ebo, %.sroa.0.0494.i426
  br label %bb.acl, !dbg !13799

.lr.ph352.i.i451:                                 ; preds = %bb.aar, %.noexc177.i455
  %.sroa.018.0351.i.i452 = phi ptr [ %i.ebq, %.noexc177.i455 ], [ %i.dfs, %bb.aar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13804, !noalias !13806
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.f)
          to label %.noexc177.i455 unwind label %.loopexit.split-lp.loopexit.i453, !dbg !13807, !noalias !11762

.noexc177.i455:                                   ; preds = %.lr.ph352.i.i451
  %i.ebq = getelementptr inbounds nuw i8, ptr %.sroa.018.0351.i.i452, i64 32, !dbg !13810 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.018.0351.i.i452, ptr noundef nonnull align 4 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !13814, !noalias !13815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13816, !noalias !13806
  %i.ebr = icmp eq ptr %i.ebq, %i.dgw, !dbg !13817
  br i1 %i.ebr, label %._crit_edge.i171.i456, label %.lr.ph352.i.i451, !dbg !13787

._crit_edge.i171.i456:                            ; preds = %.noexc177.i455, %bb.aar
  %i.ebs = mul i64 %i.ebg, %.sroa.04.1, !dbg !13820 ; 4 uses
  %.not111.i.i457 = icmp ugt i64 %i.ebs, %i.dgh
  br i1 %.not111.i.i457, label %.invoke1415.i860, label %bb.aas, !dbg !13821, !prof !751

bb.aas:                                           ; preds = %._crit_edge.i171.i456
  %i.ebt = icmp samesign eq i64 %i.ebs, 0, !dbg !13832
  br i1 %i.ebt, label %._crit_edge356.i.i459, label %.lr.ph355.preheader.i.i458, !dbg !13842

.lr.ph355.preheader.i.i458:                       ; preds = %bb.aas
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dgg, i8 0, i64 %i.ebs, i1 false), !dbg !13843, !alias.scope !13716, !noalias !13845
  br label %._crit_edge356.i.i459

._crit_edge356.i.i459:                            ; preds = %.lr.ph355.preheader.i.i458, %bb.aas
  br i1 %.not112.i.i425, label %.invoke1415.i860, label %.lr.ph377.i.i460, !dbg !13846, !prof !751

.lr.ph377.i.i460:                                 ; preds = %._crit_edge356.i.i459
  %i.ebu = lshr i64 %.sroa.0.0494.i426, 3         ; 3 uses
  %.not.i126.i.i461 = icmp samesign ugt i64 %i.ebu, %i.dft
  %.idx395.i.i462 = shl nuw nsw i64 %i.ebu, 5
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.dfs, i64 %.idx395.i.i462
  %i.ebw = icmp eq i64 %i.ebu, 0
  %i.ebx = and i64 %.sroa.0.0494.i426, 36028797018963960 ; 15 uses
  %i.eby = and i64 %.sroa.0.0494.i426, 7          ; 8 uses
  %.not.i.i172.i463 = icmp samesign ugt i64 %i.ebg, %i.dft
  %.idx396.i.i464 = shl i64 %i.ebg, 5             ; 2 uses
  %i.ebz = getelementptr inbounds nuw i8, ptr %i.dfs, i64 %.idx396.i.i464
  br i1 %.not.i126.i.i461, label %.lr.ph377.split.us.i.i865, label %.lr.ph377.split.preheader.i.i465, !prof !168

.lr.ph377.split.preheader.i.i465:                 ; preds = %.lr.ph377.i.i460
  %i.eca = icmp eq i64 %i.eby, 0
  %24 = add i64 %.idx396.i.i464, -32, !dbg !13854
  %25 = lshr exact i64 %24, 5, !dbg !13854
  %i.ecb = lshr exact i64 %i.ebx, 3               ; 3 uses
  %i.ecc = icmp samesign ult i64 %i.ecb, %i.dft
  %i.ecd = getelementptr inbounds nuw [32 x i8], ptr %i.dfs, i64 %i.ecb ; 2 uses
  %i.ece = trunc i64 %i.ebx to i8
  %i.ecf = icmp eq i64 %i.eby, 1
  %i.ecg = lshr exact i64 %i.ebx, 3               ; 3 uses
  %i.ech = icmp samesign ult i64 %i.ecg, %i.dft
  %i.eci = getelementptr inbounds nuw [32 x i8], ptr %i.dfs, i64 %i.ecg
  %i.ecj = getelementptr inbounds nuw i8, ptr %i.eci, i64 4 ; 2 uses
  %i.eck = trunc i64 %i.ebx to i8
  %i.ecl = or disjoint i8 %i.eck, 1
  %i.ecm = icmp eq i64 %i.eby, 2
  %i.ecn = lshr exact i64 %i.ebx, 3               ; 3 uses
  %i.eco = icmp samesign ult i64 %i.ecn, %i.dft
  %i.ecp = getelementptr inbounds nuw [32 x i8], ptr %i.dfs, i64 %i.ecn
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.ecp, i64 8 ; 2 uses
  %i.ecr = trunc i64 %i.ebx to i8
  %i.ecs = or disjoint i8 %i.ecr, 2
  %i.ect = icmp eq i64 %i.eby, 3
  %i.ecu = lshr exact i64 %i.ebx, 3               ; 3 uses
  %i.ecv = icmp samesign ult i64 %i.ecu, %i.dft
  %i.ecw = getelementptr inbounds nuw [32 x i8], ptr %i.dfs, i64 %i.ecu
  %i.ecx = getelementptr inbounds nuw i8, ptr %i.ecw, i64 12 ; 2 uses
  %i.ecy = trunc i64 %i.ebx to i8
  %i.ecz = or disjoint i8 %i.ecy, 3
  %i.eda = icmp eq i64 %i.eby, 4
  %i.edb = lshr exact i64 %i.ebx, 3               ; 3 uses
  %i.edc = icmp samesign ult i64 %i.edb, %i.dft
  %i.edd = getelementptr inbounds nuw [32 x i8], ptr %i.dfs, i64 %i.edb
  %i.ede = getelementptr inbounds nuw i8, ptr %i.edd, i64 16 ; 2 uses
  %i.edf = trunc i64 %i.ebx to i8
  %i.edg = or disjoint i8 %i.edf, 4
  %i.edh = icmp eq i64 %i.eby, 5
  %i.edi = lshr exact i64 %i.ebx, 3               ; 3 uses
  %i.edj = icmp samesign ult i64 %i.edi, %i.dft
  %i.edk = getelementptr inbounds nuw [32 x i8], ptr %i.dfs, i64 %i.edi
  %i.edl = getelementptr inbounds nuw i8, ptr %i.edk, i64 20 ; 2 uses
  %i.edm = trunc i64 %i.ebx to i8
  %i.edn = or disjoint i8 %i.edm, 5
  %i.edo = icmp eq i64 %i.eby, 6
  %i.edp = lshr exact i64 %i.ebx, 3               ; 3 uses
  %i.edq = icmp samesign ult i64 %i.edp, %i.dft
  %i.edr = getelementptr inbounds nuw [32 x i8], ptr %i.dfs, i64 %i.edp
  %i.eds = getelementptr inbounds nuw i8, ptr %i.edr, i64 24 ; 2 uses
  %i.edt = trunc i64 %i.ebx to i8
  %i.edu = or disjoint i8 %i.edt, 6
  br label %.lr.ph377.split.i.i467, !dbg !13854

.lr.ph377.split.us.i.i865:                        ; preds = %.lr.ph377.i.i460
  %.not398.i.i866 = icmp eq i64 %i.dez, 0, !dbg !13854
  br i1 %.not398.i.i866, label %.invoke1413.i443, label %bb.aat, !dbg !13854

bb.aat:                                           ; preds = %.lr.ph377.split.us.i.i865
  %i.edv = load i16, ptr %i.czp, align 2, !dbg !13857, !alias.scope !13861, !noalias !13864, !noundef !14
  %i.edw = zext i16 %i.edv to i64, !dbg !13865
  %i.edx = mul nuw nsw i64 %.sroa.0.0494.i426, %i.edw, !dbg !13867
  %.not.i125.us.i.i867 = icmp ugt i64 %i.edx, %i.dfp, !dbg !13870
  br i1 %.not.i125.us.i.i867, label %.split381.us.i.i864, label %.invoke1417.i862, !dbg !13870, !prof !168

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533: ; preds = %bb.abt
  %i.edy = icmp eq ptr %i.eea, %i.dgy, !dbg !13876
  br i1 %i.edy, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i534, label %.lr.ph377.split.i.i467, !dbg !13880

.lr.ph377.split.i.i467:                           ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533, %.lr.ph377.split.preheader.i.i465
  %.sroa.0.0289375.i.i468 = phi ptr [ %i.eea, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533 ], [ %i.czp, %.lr.ph377.split.preheader.i.i465 ] ; 2 uses
  %.sroa.7.0374.i.i469 = phi i64 [ %i.eeb, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533 ], [ 0, %.lr.ph377.split.preheader.i.i465 ] ; 8 uses
  %26 = mul i64 %i.ebg, %.sroa.7.0374.i.i469, !dbg !13881
  %umax4702 = call i64 @llvm.umax.i64(i64 %i.dgh, i64 %26), !dbg !13881
  %i.edz = mul i64 %i.ebg, %.sroa.7.0374.i.i469, !dbg !13881
  %27 = sub i64 %umax4702, %i.edz, !dbg !13881
  %umin4703 = call i64 @llvm.umin.i64(i64 %25, i64 %27), !dbg !13881 ; 2 uses
  %28 = add nuw nsw i64 %umin4703, 1, !dbg !13881 ; 2 uses
  %i.eea = getelementptr inbounds nuw i8, ptr %.sroa.0.0289375.i.i468, i64 2, !dbg !13881 ; 2 uses
  %i.eeb = add nuw i64 %.sroa.7.0374.i.i469, 1, !dbg !13883
  %exitcond430.not.i.i470 = icmp eq i64 %.sroa.7.0374.i.i469, %i.dez, !dbg !13854
  br i1 %exitcond430.not.i.i470, label %.invoke1413.i443, label %bb.aax, !dbg !13854

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i534: ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533
  br i1 %i.dhh, label %.lr.ph390.preheader.i.i535, label %.invoke1413.i443, !dbg !13884

.lr.ph390.preheader.i.i535:                       ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i534
  %i.eec = load i8, ptr %i.dhi, align 1, !dbg !13884, !alias.scope !13718, !noalias !13746, !noundef !14
  %i.eed = mul i64 %i.ebg, %i.dhg, !dbg !13887
  br label %.lr.ph390.i.i536, !dbg !13890

.lr.ph390.i.i536:                                 ; preds = %bb.aaw, %.lr.ph390.preheader.i.i535
  %.sroa.0.1389.i.i537 = phi i64 [ %.sroa.0.2.i.i544, %bb.aaw ], [ 1, %.lr.ph390.preheader.i.i535 ] ; 2 uses
  %.sroa.061.0388.i.i538 = phi i8 [ %.sroa.061.1.i.i543, %bb.aaw ], [ %i.eec, %.lr.ph390.preheader.i.i535 ] ; 4 uses
  %.sroa.059.0387.i.i539 = phi i64 [ %i.eef, %bb.aaw ], [ %i.eed, %.lr.ph390.preheader.i.i535 ]
  %.sroa.052.0386.i.i540 = phi i64 [ %i.eee, %bb.aaw ], [ %i.dhg, %.lr.ph390.preheader.i.i535 ]
  %i.eee = add i64 %.sroa.052.0386.i.i540, -1, !dbg !13893 ; 4 uses
  %i.eef = sub i64 %.sroa.059.0387.i.i539, %i.ebg, !dbg !13894 ; 2 uses
  %i.eeg = lshr i8 %.sroa.061.0388.i.i538, 3, !dbg !13896
  %i.eeh = zext nneg i8 %i.eeg to i64, !dbg !13896
  %i.eei = add i64 %i.eef, %i.eeh, !dbg !13897    ; 3 uses
  %i.eej = icmp ult i64 %i.eei, %i.dgh, !dbg !13890
  br i1 %i.eej, label %bb.aau, label %.invoke1413.i443, !dbg !13890

bb.aau:                                           ; preds = %.lr.ph390.i.i536
  %i.eek = and i8 %.sroa.061.0388.i.i538, 7, !dbg !13899
  %i.eel = shl nuw i8 1, %i.eek, !dbg !13900
  %i.eem = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.eei, !dbg !13890
  %i.een = load i8, ptr %i.eem, align 1, !dbg !13890, !alias.scope !13716, !noalias !13845, !noundef !14
  %i.eeo = and i8 %i.een, %i.eel, !dbg !13890
  %i.eep = icmp eq i8 %i.eeo, 0, !dbg !13890
  br i1 %i.eep, label %bb.aaw, label %bb.aav, !dbg !13890

bb.aav:                                           ; preds = %bb.aau
  %i.eeq = getelementptr inbounds nuw i8, ptr %i.dey, i64 %i.eee, !dbg !13901
  %i.eer = load i8, ptr %i.eeq, align 1, !dbg !13901, !alias.scope !13718, !noalias !13746, !noundef !14 ; 2 uses
  %.not115.i.i541 = icmp ne i8 %.sroa.061.0388.i.i538, %i.eer, !dbg !13902
  %i.ees = zext i1 %.not115.i.i541 to i64, !dbg !13902
  %spec.select117.i.i542 = add i64 %.sroa.0.1389.i.i537, %i.ees, !dbg !13902
  br label %bb.aaw, !dbg !13902

bb.aaw:                                           ; preds = %bb.aav, %bb.aau
  %.sroa.061.1.i.i543 = phi i8 [ %.sroa.061.0388.i.i538, %bb.aau ], [ %i.eer, %bb.aav ], !dbg !13903 ; 2 uses
  %.sroa.0.2.i.i544 = phi i64 [ %.sroa.0.1389.i.i537, %bb.aau ], [ %spec.select117.i.i542, %bb.aav ], !dbg !13904 ; 2 uses
  %i.eet = getelementptr inbounds nuw i8, ptr %i.dey, i64 %i.eee, !dbg !13905
  store i8 %.sroa.061.1.i.i543, ptr %i.eet, align 1, !dbg !13905, !alias.scope !13718, !noalias !13746
  %.not114.i.i545 = icmp eq i64 %i.eee, 0, !dbg !13906
  br i1 %.not114.i.i545, label %.loopexit87.i546, label %.lr.ph390.i.i536, !dbg !13906

bb.aax:                                           ; preds = %.lr.ph377.split.i.i467
  %i.eeu = getelementptr inbounds nuw i8, ptr %i.dey, i64 %.sroa.7.0374.i.i469, !dbg !13907 ; 15 uses
  %i.eev = mul i64 %.sroa.7.0374.i.i469, %i.ebg, !dbg !13908 ; 2 uses
  %i.eew = load i16, ptr %.sroa.0.0289375.i.i468, align 2, !dbg !13857, !alias.scope !13861, !noalias !13864, !noundef !14
  %i.eex = zext i16 %i.eew to i64, !dbg !13865
  %i.eey = mul nuw nsw i64 %.sroa.0.0494.i426, %i.eex, !dbg !13867 ; 4 uses
  %.not.i125.i.i471 = icmp ugt i64 %i.eey, %i.dfp, !dbg !13870
  br i1 %.not.i125.i.i471, label %.split381.us.i.i864, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472, !dbg !13870, !prof !168

.split381.us.i.i864:                              ; preds = %bb.aax, %bb.aat
  br label %.invoke1417.i862, !dbg !13910

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472: ; preds = %bb.aax
  %i.eez = getelementptr inbounds nuw [4 x i8], ptr %i.dfo, i64 %i.eey, !dbg !13911
  %i.efa = sub nuw nsw i64 %i.dfp, %i.eey, !dbg !13914 ; 2 uses
  br i1 %i.ebw, label %._crit_edge363.i.i492, label %.lr.ph362.i.i473, !dbg !13915

.lr.ph362.i.i473:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472, %bb.ack
  %.sroa.049.0361.i.i474 = phi float [ %.sroa.049.4.7.i.i491, %bb.ack ], [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472 ] ; 2 uses
  %.sroa.0160.0360.i.i475 = phi ptr [ %i.efb, %bb.ack ], [ %i.dfs, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472 ] ; 10 uses
  %.sroa.7162.0359.i.i476 = phi i64 [ %i.efc, %bb.ack ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13920, !noalias !13806
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !noalias !13806
  %i.efb = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i475, i64 32, !dbg !13923 ; 2 uses
  %i.efc = add nuw nsw i64 %.sroa.7162.0359.i.i476, 1, !dbg !13925
  %i.efd = shl nuw nsw i64 %.sroa.7162.0359.i.i476, 3, !dbg !13926 ; 11 uses
  %.not.i145.i.i477 = icmp samesign ugt i64 %i.efd, %i.efa, !dbg !13927
  br i1 %.not.i145.i.i477, label %.invoke1417.i862, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i478, !dbg !13927, !prof !168

._crit_edge363.i.i492:                            ; preds = %bb.ack, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472
  %.sroa.049.0.lcssa.i.i493 = phi float [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472 ], [ %.sroa.049.4.7.i.i491, %bb.ack ], !dbg !13931 ; 3 uses
  %i.efe = add nuw nsw i64 %i.eey, %i.ebx, !dbg !13932 ; 3 uses
  %.not.i132.i.i494 = icmp ugt i64 %i.efe, %i.dfp, !dbg !13935
  br i1 %.not.i132.i.i494, label %.invoke1417.i862, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i495, !dbg !13935, !prof !168

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i495: ; preds = %._crit_edge363.i.i492
  %i.eff = sub nuw nsw i64 %i.dfp, %i.efe, !dbg !13938
  %.not.i137.i.i496 = icmp samesign ugt i64 %i.eby, %i.eff, !dbg !13940
  br i1 %.not.i137.i.i496, label %.invoke1417.i862, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497, !dbg !13940, !prof !168

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i495
  %i.efg = getelementptr inbounds nuw [4 x i8], ptr %i.dfo, i64 %i.efe, !dbg !13943 ; 7 uses
  br i1 %i.eca, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498, !dbg !13945

.lr.ph367.i.i498:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497
  %i.efh = getelementptr inbounds nuw i8, ptr %i.efg, i64 4, !dbg !13952
  br i1 %i.ecc, label %bb.aay, label %.invoke1413.i443, !dbg !13956

._crit_edge368.i.i503:                            ; preds = %bb.abp, %bb.abq, %bb.aaz, %bb.abc, %bb.abf, %bb.abi, %bb.abl, %bb.abo, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497
  %.sroa.049.1.lcssa.i.i504 = phi float [ %.sroa.049.0.lcssa.i.i493, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497 ], [ %.sroa.049.2.i.i502, %bb.aaz ], [ %.sroa.049.2.i.i502.1, %bb.abc ], [ %.sroa.049.2.i.i502.2, %bb.abf ], [ %.sroa.049.2.i.i502.3, %bb.abi ], [ %.sroa.049.2.i.i502.4, %bb.abl ], [ %.sroa.049.2.i.i502.5, %bb.abo ], [ %i.ego, %bb.abq ], [ %.sroa.049.2.i.i502.5, %bb.abp ], !dbg !13958 ; 2 uses
  %i.efi = icmp samesign ult i64 %.sroa.7.0374.i.i469, 2000, !dbg !13959
  br i1 %i.efi, label %bb.abu, label %bb.abs, !dbg !13959

bb.aay:                                           ; preds = %.lr.ph367.i.i498
  %i.efj = load float, ptr %i.efg, align 4, !dbg !13960, !alias.scope !13712, !noalias !13771, !noundef !14
  %i.efk = load float, ptr %i.ecd, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815, !noundef !14
  %i.efl = fadd float %i.efj, %i.efk, !dbg !13962 ; 3 uses
  store float %i.efl, ptr %i.ecd, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815
  %i.efm = fcmp olt float %i.efl, %.sroa.049.0.lcssa.i.i493, !dbg !13963
  br i1 %i.efm, label %bb.abr, label %bb.aaz, !dbg !13963

bb.aaz:                                           ; preds = %bb.abr, %bb.aay
  %.sroa.049.2.i.i502 = phi float [ %i.efl, %bb.abr ], [ %.sroa.049.0.lcssa.i.i493, %bb.aay ], !dbg !13958 ; 3 uses
  br i1 %i.ecf, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.1, !dbg !13945

.lr.ph367.i.i498.1:                               ; preds = %bb.aaz
  %i.efn = getelementptr inbounds nuw i8, ptr %i.efg, i64 8, !dbg !13952
  br i1 %i.ech, label %bb.aba, label %.invoke1413.i443, !dbg !13956

bb.aba:                                           ; preds = %.lr.ph367.i.i498.1
  %i.efo = load float, ptr %i.efh, align 4, !dbg !13960, !alias.scope !13712, !noalias !13771, !noundef !14
  %i.efp = load float, ptr %i.ecj, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815, !noundef !14
  %i.efq = fadd float %i.efo, %i.efp, !dbg !13962 ; 3 uses
  store float %i.efq, ptr %i.ecj, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815
  %i.efr = fcmp olt float %i.efq, %.sroa.049.2.i.i502, !dbg !13963
  br i1 %i.efr, label %bb.abb, label %bb.abc, !dbg !13963

bb.abb:                                           ; preds = %bb.aba
  store i8 %i.ecl, ptr %i.eeu, align 1, !dbg !13964, !alias.scope !13718, !noalias !13746
  br label %bb.abc, !dbg !13965

bb.abc:                                           ; preds = %bb.abb, %bb.aba
  %.sroa.049.2.i.i502.1 = phi float [ %i.efq, %bb.abb ], [ %.sroa.049.2.i.i502, %bb.aba ], !dbg !13958 ; 3 uses
  br i1 %i.ecm, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.2, !dbg !13945

.lr.ph367.i.i498.2:                               ; preds = %bb.abc
  %i.efs = getelementptr inbounds nuw i8, ptr %i.efg, i64 12, !dbg !13952
  br i1 %i.eco, label %bb.abd, label %.invoke1413.i443, !dbg !13956

bb.abd:                                           ; preds = %.lr.ph367.i.i498.2
  %i.eft = load float, ptr %i.efn, align 4, !dbg !13960, !alias.scope !13712, !noalias !13771, !noundef !14
  %i.efu = load float, ptr %i.ecq, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815, !noundef !14
  %i.efv = fadd float %i.eft, %i.efu, !dbg !13962 ; 3 uses
  store float %i.efv, ptr %i.ecq, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815
  %i.efw = fcmp olt float %i.efv, %.sroa.049.2.i.i502.1, !dbg !13963
  br i1 %i.efw, label %bb.abe, label %bb.abf, !dbg !13963

bb.abe:                                           ; preds = %bb.abd
  store i8 %i.ecs, ptr %i.eeu, align 1, !dbg !13964, !alias.scope !13718, !noalias !13746
  br label %bb.abf, !dbg !13965

bb.abf:                                           ; preds = %bb.abe, %bb.abd
  %.sroa.049.2.i.i502.2 = phi float [ %i.efv, %bb.abe ], [ %.sroa.049.2.i.i502.1, %bb.abd ], !dbg !13958 ; 3 uses
  br i1 %i.ect, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.3, !dbg !13945

.lr.ph367.i.i498.3:                               ; preds = %bb.abf
  %i.efx = getelementptr inbounds nuw i8, ptr %i.efg, i64 16, !dbg !13952
  br i1 %i.ecv, label %bb.abg, label %.invoke1413.i443, !dbg !13956

bb.abg:                                           ; preds = %.lr.ph367.i.i498.3
  %i.efy = load float, ptr %i.efs, align 4, !dbg !13960, !alias.scope !13712, !noalias !13771, !noundef !14
  %i.efz = load float, ptr %i.ecx, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815, !noundef !14
  %i.ega = fadd float %i.efy, %i.efz, !dbg !13962 ; 3 uses
  store float %i.ega, ptr %i.ecx, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815
  %i.egb = fcmp olt float %i.ega, %.sroa.049.2.i.i502.2, !dbg !13963
  br i1 %i.egb, label %bb.abh, label %bb.abi, !dbg !13963

bb.abh:                                           ; preds = %bb.abg
  store i8 %i.ecz, ptr %i.eeu, align 1, !dbg !13964, !alias.scope !13718, !noalias !13746
  br label %bb.abi, !dbg !13965

bb.abi:                                           ; preds = %bb.abh, %bb.abg
  %.sroa.049.2.i.i502.3 = phi float [ %i.ega, %bb.abh ], [ %.sroa.049.2.i.i502.2, %bb.abg ], !dbg !13958 ; 3 uses
  br i1 %i.eda, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.4, !dbg !13945

.lr.ph367.i.i498.4:                               ; preds = %bb.abi
  %i.egc = getelementptr inbounds nuw i8, ptr %i.efg, i64 20, !dbg !13952
  br i1 %i.edc, label %bb.abj, label %.invoke1413.i443, !dbg !13956

bb.abj:                                           ; preds = %.lr.ph367.i.i498.4
  %i.egd = load float, ptr %i.efx, align 4, !dbg !13960, !alias.scope !13712, !noalias !13771, !noundef !14
  %i.ege = load float, ptr %i.ede, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815, !noundef !14
  %i.egf = fadd float %i.egd, %i.ege, !dbg !13962 ; 3 uses
  store float %i.egf, ptr %i.ede, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815
  %i.egg = fcmp olt float %i.egf, %.sroa.049.2.i.i502.3, !dbg !13963
  br i1 %i.egg, label %bb.abk, label %bb.abl, !dbg !13963

bb.abk:                                           ; preds = %bb.abj
  store i8 %i.edg, ptr %i.eeu, align 1, !dbg !13964, !alias.scope !13718, !noalias !13746
  br label %bb.abl, !dbg !13965

bb.abl:                                           ; preds = %bb.abk, %bb.abj
  %.sroa.049.2.i.i502.4 = phi float [ %i.egf, %bb.abk ], [ %.sroa.049.2.i.i502.3, %bb.abj ], !dbg !13958 ; 3 uses
  br i1 %i.edh, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.5, !dbg !13945

.lr.ph367.i.i498.5:                               ; preds = %bb.abl
  %i.egh = getelementptr inbounds nuw i8, ptr %i.efg, i64 24, !dbg !13952
  br i1 %i.edj, label %bb.abm, label %.invoke1413.i443, !dbg !13956

bb.abm:                                           ; preds = %.lr.ph367.i.i498.5
  %i.egi = load float, ptr %i.egc, align 4, !dbg !13960, !alias.scope !13712, !noalias !13771, !noundef !14
  %i.egj = load float, ptr %i.edl, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815, !noundef !14
  %i.egk = fadd float %i.egi, %i.egj, !dbg !13962 ; 3 uses
  store float %i.egk, ptr %i.edl, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815
  %i.egl = fcmp olt float %i.egk, %.sroa.049.2.i.i502.4, !dbg !13963
  br i1 %i.egl, label %bb.abn, label %bb.abo, !dbg !13963

bb.abn:                                           ; preds = %bb.abm
  store i8 %i.edn, ptr %i.eeu, align 1, !dbg !13964, !alias.scope !13718, !noalias !13746
  br label %bb.abo, !dbg !13965

bb.abo:                                           ; preds = %bb.abn, %bb.abm
  %.sroa.049.2.i.i502.5 = phi float [ %i.egk, %bb.abn ], [ %.sroa.049.2.i.i502.4, %bb.abm ], !dbg !13958 ; 3 uses
  br i1 %i.edo, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.6, !dbg !13945

.lr.ph367.i.i498.6:                               ; preds = %bb.abo
  br i1 %i.edq, label %bb.abp, label %.invoke1413.i443, !dbg !13956

bb.abp:                                           ; preds = %.lr.ph367.i.i498.6
  %i.egm = load float, ptr %i.egh, align 4, !dbg !13960, !alias.scope !13712, !noalias !13771, !noundef !14
  %i.egn = load float, ptr %i.eds, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815, !noundef !14
  %i.ego = fadd float %i.egm, %i.egn, !dbg !13962 ; 3 uses
  store float %i.ego, ptr %i.eds, align 4, !dbg !13962, !alias.scope !13714, !noalias !13815
  %i.egp = fcmp olt float %i.ego, %.sroa.049.2.i.i502.5, !dbg !13963
  br i1 %i.egp, label %bb.abq, label %._crit_edge368.i.i503, !dbg !13963

bb.abq:                                           ; preds = %bb.abp
  store i8 %i.edu, ptr %i.eeu, align 1, !dbg !13964, !alias.scope !13718, !noalias !13746
  br label %._crit_edge368.i.i503, !dbg !13965

bb.abr:                                           ; preds = %bb.aay
  store i8 %i.ece, ptr %i.eeu, align 1, !dbg !13964, !alias.scope !13718, !noalias !13746
  br label %bb.aaz, !dbg !13965

bb.abs:                                           ; preds = %bb.abu, %._crit_edge368.i.i503
  %.sroa.029.0.i.i505 = phi float [ %i.enz, %bb.abu ], [ 1.460000e+01, %._crit_edge368.i.i503 ], !dbg !13966 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13967), !dbg !13970
  br i1 %.not.i.i172.i463, label %.invoke1415.i860, label %.lr.ph373.i.i506.preheader, !dbg !13971, !prof !751

.lr.ph373.i.i506.preheader:                       ; preds = %bb.abs
  %min.iters.check4705 = icmp samesign ult i64 %umin4703, 4, !dbg !13977
  br i1 %min.iters.check4705, label %.lr.ph373.i.i506.preheader4969, label %vector.ph4706, !dbg !13977

vector.ph4706:                                    ; preds = %.lr.ph373.i.i506.preheader
  %i.egq = and i64 %28, 3                         ; 2 uses
  %i.egr = icmp eq i64 %i.egq, 0
  %i.egs = select i1 %i.egr, i64 4, i64 %i.egq
  %n.vec4707 = sub nsw i64 %28, %i.egs            ; 3 uses
  %i.egt = shl i64 %n.vec4707, 5
  %i.egu = getelementptr i8, ptr %i.dfs, i64 %i.egt
  %broadcast.splatinsert4708 = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i504, i64 0
  %broadcast.splat4709 = shufflevector <4 x float> %broadcast.splatinsert4708, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert4710 = insertelement <4 x float> poison, float %.sroa.029.0.i.i505, i64 0 ; 5 uses
  %broadcast.splat4711 = shufflevector <4 x float> %broadcast.splatinsert4710, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep6113 = getelementptr i8, ptr %i.dgg, i64 %i.eev, !dbg !13977
  %i.egv = shufflevector <4 x float> %broadcast.splatinsert4710, <4 x float> poison, <16 x i32> zeroinitializer
  %i.egw = shufflevector <4 x float> %broadcast.splatinsert4710, <4 x float> poison, <16 x i32> zeroinitializer
  %i.egx = shufflevector <4 x float> %broadcast.splatinsert4710, <4 x float> poison, <16 x i32> zeroinitializer
  %i.egy = shufflevector <4 x float> %broadcast.splatinsert4710, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body4712, !dbg !13977

vector.body4712:                                  ; preds = %vector.body4712, %vector.ph4706
  %index4713 = phi i64 [ 0, %vector.ph4706 ], [ %index.next4720, %vector.body4712 ], !dbg !13978 ; 3 uses
  %i.egz = shl i64 %index4713, 5                  ; 4 uses
  %next.gep4714 = getelementptr i8, ptr %i.dfs, i64 %i.egz ; 9 uses
  %i.eha = getelementptr i8, ptr %i.dfs, i64 %i.egz ; 8 uses
  %next.gep4715 = getelementptr i8, ptr %i.eha, i64 32
  %i.ehb = getelementptr i8, ptr %i.dfs, i64 %i.egz ; 8 uses
  %next.gep4716 = getelementptr i8, ptr %i.ehb, i64 64
  %i.ehc = getelementptr i8, ptr %i.dfs, i64 %i.egz ; 8 uses
  %next.gep4717 = getelementptr i8, ptr %i.ehc, i64 96
  %i.ehd = getelementptr inbounds nuw i8, ptr %next.gep4714, i64 4, !dbg !13980
  %i.ehe = getelementptr i8, ptr %i.eha, i64 36, !dbg !13980
  %i.ehf = getelementptr i8, ptr %i.ehb, i64 68, !dbg !13980
  %i.ehg = getelementptr i8, ptr %i.ehc, i64 100, !dbg !13980
  %i.ehh = load float, ptr %i.ehd, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ehi = load float, ptr %i.ehe, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ehj = load float, ptr %i.ehf, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ehk = load float, ptr %i.ehg, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ehl = insertelement <4 x float> poison, float %i.ehh, i64 0
  %i.ehm = insertelement <4 x float> %i.ehl, float %i.ehi, i64 1
  %i.ehn = insertelement <4 x float> %i.ehm, float %i.ehj, i64 2
  %i.eho = insertelement <4 x float> %i.ehn, float %i.ehk, i64 3
  %i.ehp = fsub <4 x float> %i.eho, %broadcast.splat4709, !dbg !13982 ; 3 uses
  %i.ehq = fcmp oge <4 x float> %i.ehp, %broadcast.splat4711, !dbg !13984
  %i.ehr = select <4 x i1> %i.ehq, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer, !dbg !13986
  %i.ehs = load float, ptr %next.gep4714, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eht = load float, ptr %next.gep4715, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ehu = load float, ptr %next.gep4716, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ehv = load float, ptr %next.gep4717, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ehw = insertelement <4 x float> poison, float %i.ehs, i64 0
  %i.ehx = insertelement <4 x float> %i.ehw, float %i.eht, i64 1
  %i.ehy = insertelement <4 x float> %i.ehx, float %i.ehu, i64 2
  %i.ehz = insertelement <4 x float> %i.ehy, float %i.ehv, i64 3
  %i.eia = fsub <4 x float> %i.ehz, %broadcast.splat4709, !dbg !13988 ; 3 uses
  %i.eib = fcmp oge <4 x float> %i.eia, %broadcast.splat4711, !dbg !13989
  %i.eic = zext <4 x i1> %i.eib to <4 x i8>, !dbg !13990
  %i.eid = or disjoint <4 x i8> %i.ehr, %i.eic, !dbg !13991
  %i.eie = getelementptr inbounds nuw i8, ptr %next.gep4714, i64 8, !dbg !13980
  %i.eif = getelementptr i8, ptr %i.eha, i64 40, !dbg !13980
  %i.eig = getelementptr i8, ptr %i.ehb, i64 72, !dbg !13980
  %i.eih = getelementptr i8, ptr %i.ehc, i64 104, !dbg !13980
  %i.eii = load float, ptr %i.eie, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eij = load float, ptr %i.eif, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eik = load float, ptr %i.eig, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eil = load float, ptr %i.eih, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eim = insertelement <4 x float> poison, float %i.eii, i64 0
  %i.ein = insertelement <4 x float> %i.eim, float %i.eij, i64 1
  %i.eio = insertelement <4 x float> %i.ein, float %i.eik, i64 2
  %i.eip = insertelement <4 x float> %i.eio, float %i.eil, i64 3
  %i.eiq = fsub <4 x float> %i.eip, %broadcast.splat4709, !dbg !13994 ; 3 uses
  %i.eir = fcmp oge <4 x float> %i.eiq, %broadcast.splat4711, !dbg !13995
  %i.eis = select <4 x i1> %i.eir, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer, !dbg !13996
  %i.eit = or disjoint <4 x i8> %i.eid, %i.eis, !dbg !13997
  %i.eiu = getelementptr inbounds nuw i8, ptr %next.gep4714, i64 12, !dbg !13980
  %i.eiv = getelementptr i8, ptr %i.eha, i64 44, !dbg !13980
  %i.eiw = getelementptr i8, ptr %i.ehb, i64 76, !dbg !13980
  %i.eix = getelementptr i8, ptr %i.ehc, i64 108, !dbg !13980
  %i.eiy = load float, ptr %i.eiu, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eiz = load float, ptr %i.eiv, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eja = load float, ptr %i.eiw, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ejb = load float, ptr %i.eix, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ejc = insertelement <4 x float> poison, float %i.eiy, i64 0
  %i.ejd = insertelement <4 x float> %i.ejc, float %i.eiz, i64 1
  %i.eje = insertelement <4 x float> %i.ejd, float %i.eja, i64 2
  %i.ejf = insertelement <4 x float> %i.eje, float %i.ejb, i64 3
  %i.ejg = fsub <4 x float> %i.ejf, %broadcast.splat4709, !dbg !13999 ; 3 uses
  %i.ejh = fcmp oge <4 x float> %i.ejg, %broadcast.splat4711, !dbg !14000
  %i.eji = select <4 x i1> %i.ejh, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer, !dbg !14001
  %i.ejj = or disjoint <4 x i8> %i.eit, %i.eji, !dbg !14002
  %i.ejk = getelementptr inbounds nuw i8, ptr %next.gep4714, i64 16, !dbg !13980
  %i.ejl = getelementptr i8, ptr %i.eha, i64 48, !dbg !13980
  %i.ejm = getelementptr i8, ptr %i.ehb, i64 80, !dbg !13980
  %i.ejn = getelementptr i8, ptr %i.ehc, i64 112, !dbg !13980
  %i.ejo = load float, ptr %i.ejk, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ejp = load float, ptr %i.ejl, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ejq = load float, ptr %i.ejm, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ejr = load float, ptr %i.ejn, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ejs = insertelement <4 x float> poison, float %i.ejo, i64 0
  %i.ejt = insertelement <4 x float> %i.ejs, float %i.ejp, i64 1
  %i.eju = insertelement <4 x float> %i.ejt, float %i.ejq, i64 2
  %i.ejv = insertelement <4 x float> %i.eju, float %i.ejr, i64 3
  %i.ejw = fsub <4 x float> %i.ejv, %broadcast.splat4709, !dbg !14004 ; 3 uses
  %i.ejx = fcmp oge <4 x float> %i.ejw, %broadcast.splat4711, !dbg !14005
  %i.ejy = select <4 x i1> %i.ejx, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer, !dbg !14006
  %i.ejz = or disjoint <4 x i8> %i.ejj, %i.ejy, !dbg !14007
  %i.eka = getelementptr inbounds nuw i8, ptr %next.gep4714, i64 20, !dbg !13980
  %i.ekb = getelementptr i8, ptr %i.eha, i64 52, !dbg !13980
  %i.ekc = getelementptr i8, ptr %i.ehb, i64 84, !dbg !13980
  %i.ekd = getelementptr i8, ptr %i.ehc, i64 116, !dbg !13980
  %i.eke = load float, ptr %i.eka, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ekf = load float, ptr %i.ekb, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ekg = load float, ptr %i.ekc, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ekh = load float, ptr %i.ekd, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eki = insertelement <4 x float> poison, float %i.eke, i64 0
  %i.ekj = insertelement <4 x float> %i.eki, float %i.ekf, i64 1
  %i.ekk = insertelement <4 x float> %i.ekj, float %i.ekg, i64 2
  %i.ekl = insertelement <4 x float> %i.ekk, float %i.ekh, i64 3
  %i.ekm = fsub <4 x float> %i.ekl, %broadcast.splat4709, !dbg !14009 ; 3 uses
  %i.ekn = fcmp oge <4 x float> %i.ekm, %broadcast.splat4711, !dbg !14010
  %i.eko = select <4 x i1> %i.ekn, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer, !dbg !14011
  %i.ekp = or disjoint <4 x i8> %i.ejz, %i.eko, !dbg !14012
  %i.ekq = getelementptr inbounds nuw i8, ptr %next.gep4714, i64 24, !dbg !13980
  %i.ekr = getelementptr i8, ptr %i.eha, i64 56, !dbg !13980
  %i.eks = getelementptr i8, ptr %i.ehb, i64 88, !dbg !13980
  %i.ekt = getelementptr i8, ptr %i.ehc, i64 120, !dbg !13980
  %i.eku = load float, ptr %i.ekq, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ekv = load float, ptr %i.ekr, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ekw = load float, ptr %i.eks, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ekx = load float, ptr %i.ekt, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eky = insertelement <4 x float> poison, float %i.eku, i64 0
  %i.ekz = insertelement <4 x float> %i.eky, float %i.ekv, i64 1
  %i.ela = insertelement <4 x float> %i.ekz, float %i.ekw, i64 2
  %i.elb = insertelement <4 x float> %i.ela, float %i.ekx, i64 3
  %i.elc = fsub <4 x float> %i.elb, %broadcast.splat4709, !dbg !14014 ; 3 uses
  %i.eld = fcmp oge <4 x float> %i.elc, %broadcast.splat4711, !dbg !14015
  %i.ele = select <4 x i1> %i.eld, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer, !dbg !14016
  %i.elf = or disjoint <4 x i8> %i.ekp, %i.ele, !dbg !14017
  %i.elg = getelementptr inbounds nuw i8, ptr %next.gep4714, i64 28, !dbg !13980
  %i.elh = getelementptr i8, ptr %i.eha, i64 60, !dbg !13980
  %i.eli = getelementptr i8, ptr %i.ehb, i64 92, !dbg !13980
  %i.elj = getelementptr i8, ptr %i.ehc, i64 124, !dbg !13980
  %i.elk = load float, ptr %i.elg, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.ell = load float, ptr %i.elh, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.elm = load float, ptr %i.eli, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.eln = load float, ptr %i.elj, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.elo = insertelement <4 x float> poison, float %i.elk, i64 0
  %i.elp = insertelement <4 x float> %i.elo, float %i.ell, i64 1
  %i.elq = insertelement <4 x float> %i.elp, float %i.elm, i64 2
  %i.elr = insertelement <4 x float> %i.elq, float %i.eln, i64 3
  %i.els = fsub <4 x float> %i.elr, %broadcast.splat4709, !dbg !14019 ; 3 uses
  %i.elt = fcmp oge <4 x float> %i.els, %broadcast.splat4711, !dbg !14020
  %i.elu = select <4 x i1> %i.elt, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer, !dbg !14021
  %i.elv = add nuw <4 x i8> %i.elf, %i.elu, !dbg !14022
  %gep6114 = getelementptr i8, ptr %invariant.gep6113, i64 %index4713, !dbg !13977 ; 2 uses
  %wide.load4718 = load <4 x i8>, ptr %gep6114, align 1, !dbg !13977, !alias.scope !14024, !noalias !14025
  %i.elw = or <4 x i8> %i.elv, %wide.load4718, !dbg !13977
  store <4 x i8> %i.elw, ptr %gep6114, align 1, !dbg !13977, !alias.scope !14024, !noalias !14025
  %i.elx = shufflevector <4 x float> %i.eia, <4 x float> %i.ehp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14027
  %i.ely = shufflevector <4 x float> %i.eiq, <4 x float> %i.ejg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14027
  %i.elz = shufflevector <8 x float> %i.elx, <8 x float> %i.ely, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !14027
  %i.ema = fcmp olt <16 x float> %i.elz, %i.egv, !dbg !14027
  %i.emb = shufflevector <4 x float> %i.eia, <4 x float> %i.ehp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14027
  %i.emc = shufflevector <4 x float> %i.eiq, <4 x float> %i.ejg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14027
  %i.emd = shufflevector <8 x float> %i.emb, <8 x float> %i.emc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !14027
  %i.eme = select <16 x i1> %i.ema, <16 x float> %i.emd, <16 x float> %i.egw, !dbg !14027
  %i.emf = shufflevector <4 x float> %i.ejw, <4 x float> %i.ekm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14027
  %i.emg = shufflevector <4 x float> %i.elc, <4 x float> %i.els, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14027
  %i.emh = shufflevector <8 x float> %i.emf, <8 x float> %i.emg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !14027
  %i.emi = fcmp olt <16 x float> %i.emh, %i.egx, !dbg !14027
  %i.emj = shufflevector <4 x float> %i.ejw, <4 x float> %i.ekm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14027
  %i.emk = shufflevector <4 x float> %i.elc, <4 x float> %i.els, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14027
  %i.eml = shufflevector <8 x float> %i.emj, <8 x float> %i.emk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !14027
  %i.emm = select <16 x i1> %i.emi, <16 x float> %i.eml, <16 x float> %i.egy, !dbg !14027
  %interleaved.vec4719 = shufflevector <16 x float> %i.eme, <16 x float> %i.emm, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>, !dbg !14027
  store <32 x float> %interleaved.vec4719, ptr %next.gep4714, align 4, !dbg !14027, !alias.scope !13714, !noalias !13981
  %index.next4720 = add nuw i64 %index4713, 4, !dbg !13978 ; 2 uses
  %i.emn = icmp eq i64 %index.next4720, %n.vec4707, !dbg !14028
  br i1 %i.emn, label %.lr.ph373.i.i506.preheader4969, label %vector.body4712, !dbg !14028, !llvm.loop !14030

.lr.ph373.i.i506.preheader4969:                   ; preds = %vector.body4712, %.lr.ph373.i.i506.preheader
  %.sroa.0179.0371.i.i507.ph = phi ptr [ %i.dfs, %.lr.ph373.i.i506.preheader ], [ %i.egu, %vector.body4712 ]
  %.sroa.7181.0370.i.i508.ph = phi i64 [ 0, %.lr.ph373.i.i506.preheader ], [ %n.vec4707, %vector.body4712 ]
  %i.emo = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i504, i64 0
  %i.emp = shufflevector <4 x float> %i.emo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.emq = insertelement <4 x float> poison, float %.sroa.029.0.i.i505, i64 0
  %i.emr = shufflevector <4 x float> %i.emq, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph373.i.i506, !dbg !13977

.lr.ph373.i.i506:                                 ; preds = %.lr.ph373.i.i506.preheader4969, %bb.abt
  %.sroa.0179.0371.i.i507 = phi ptr [ %i.emv, %bb.abt ], [ %.sroa.0179.0371.i.i507.ph, %.lr.ph373.i.i506.preheader4969 ] ; 4 uses
  %.sroa.7181.0370.i.i508 = phi i64 [ %i.emu, %bb.abt ], [ %.sroa.7181.0370.i.i508.ph, %.lr.ph373.i.i506.preheader4969 ] ; 2 uses
  %i.ems = add nuw nsw i64 %.sroa.7181.0370.i.i508, %i.eev, !dbg !14031 ; 3 uses
  %i.emt = icmp ult i64 %i.ems, %i.dgh, !dbg !13977
  br i1 %i.emt, label %bb.abt, label %.invoke1413.i443, !dbg !13977

bb.abt:                                           ; preds = %.lr.ph373.i.i506
  %.sroa.12216.0..sroa_idx.i.i517 = getelementptr inbounds nuw i8, ptr %.sroa.0179.0371.i.i507, i64 16, !dbg !13980 ; 2 uses
  %i.emu = add nuw nsw i64 %.sroa.7181.0370.i.i508, 1, !dbg !13978
  %i.emv = getelementptr inbounds nuw i8, ptr %.sroa.0179.0371.i.i507, i64 32, !dbg !14032 ; 2 uses
  %i.emw = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.ems, !dbg !13977 ; 2 uses
  %i.emx = load i8, ptr %i.emw, align 1, !dbg !13977, !alias.scope !14024, !noalias !14025, !noundef !14
  %i.emy = load <4 x float>, ptr %.sroa.0179.0371.i.i507, align 4, !dbg !13980, !alias.scope !13714, !noalias !13981
  %i.emz = fsub <4 x float> %i.emy, %i.emp, !dbg !13988 ; 3 uses
  %i.ena = fcmp oge <4 x float> %i.emz, %i.emr, !dbg !13989
  %i.enb = bitcast <4 x i1> %i.ena to i4, !dbg !13986
  %i.enc = zext i4 %i.enb to i8, !dbg !13986
  %i.end = fcmp olt <4 x float> %i.emz, %i.emr, !dbg !14034
end_hunk_2
begin_hunk_3_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram16HistogramCommandECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.az = load i32, ptr %i.ay, align 8, !dbg !27868, !alias.scope !27816, !noundef !14
  %i.ba = add i32 %i.az, %i.ax, !dbg !27870
  store i32 %i.ba, ptr %i.aw, align 8, !dbg !27873, !alias.scope !27816
  %i.bb = or disjoint i64 %.sroa.01.09.i, 2, !dbg !27855 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.av, !dbg !27861 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !27861, !alias.scope !27816, !noundef !14
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.av, !dbg !27868
  %i.bf = load i32, ptr %i.be, align 4, !dbg !27868, !alias.scope !27816, !noundef !14
  %i.bg = add i32 %i.bf, %i.bd, !dbg !27870
  store i32 %i.bg, ptr %i.bc, align 4, !dbg !27873, !alias.scope !27816
  %i.bh = or disjoint i64 %.sroa.01.09.i, 3, !dbg !27855 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bb, !dbg !27861 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !dbg !27861, !alias.scope !27816, !noundef !14
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bb, !dbg !27868
  %i.bl = load i32, ptr %i.bk, align 8, !dbg !27868, !alias.scope !27816, !noundef !14
  %i.bm = add i32 %i.bl, %i.bj, !dbg !27870
  store i32 %i.bm, ptr %i.bi, align 8, !dbg !27873, !alias.scope !27816
  %i.bn = add nuw nsw i64 %.sroa.01.09.i, 4, !dbg !27855 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bh, !dbg !27861 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !dbg !27861, !alias.scope !27816, !noundef !14
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh, !dbg !27868
  %i.br = load i32, ptr %i.bq, align 4, !dbg !27868, !alias.scope !27816, !noundef !14
  %i.bs = add i32 %i.br, %i.bp, !dbg !27870
  store i32 %i.bs, ptr %i.bo, align 4, !dbg !27873, !alias.scope !27816
  %exitcond.not.i.3 = icmp eq i64 %i.bn, 704, !dbg !27876
  br i1 %exitcond.not.i.3, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph435, !dbg !27844, !llvm.loop !27879

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vector.body437, %scalar.ph435
  %i.bt = load float, ptr %i.e, align 4, !dbg !27880, !noundef !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 2824, !dbg !27881
  store float %i.bt, ptr %i.bu, align 8, !dbg !27881, !alias.scope !27883
  %i.bv = icmp samesign ugt i64 %3, %i.y, !dbg !27886
  br i1 %i.bv, label %bb.h, label %bb.i, !dbg !27886

bb.h:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit
  %i.bw = icmp samesign ugt i64 %3, %i.x, !dbg !27887
  br i1 %i.bw, label %bb.j, label %bb.k, !dbg !27887

bb.i:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #18, !dbg !27886
  unreachable, !dbg !27886

bb.j:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y, !dbg !27886
  %i.by = load i32, ptr %i.bx, align 4, !dbg !27886, !noundef !14
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x, !dbg !27889 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !dbg !27890, !noundef !14
  %i.cb = add i32 %i.ca, %i.by, !dbg !27892
  store i32 %i.cb, ptr %i.bz, align 4, !dbg !27895
  br i1 %.not161, label %.preheader.preheader, label %.lr.ph141.preheader, !dbg !27896

.preheader.preheader:                             ; preds = %bb.aj, %bb.j
  br label %.preheader, !dbg !27902

.lr.ph141.preheader:                              ; preds = %bb.j
  br i1 %min.iters.check411, label %.lr.ph141.preheader446, label %vector.ph412, !dbg !27903

.lr.ph141.preheader446:                           ; preds = %pred.store.continue431, %.lr.ph141.preheader
  %.sroa.055.0140.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec413, %pred.store.continue431 ]
  br label %.lr.ph141, !dbg !27903

vector.ph412:                                     ; preds = %.lr.ph141.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body414, !dbg !27903

vector.body414:                                   ; preds = %pred.store.continue431, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next432, %pred.store.continue431 ], !dbg !27905 ; 9 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27903 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !27903
  %wide.load416 = load <4 x i32>, ptr %i.cc, align 4, !dbg !27903
  %wide.load417 = load <4 x i32>, ptr %i.cd, align 4, !dbg !27903
  %i.ce = icmp eq <4 x i32> %wide.load416, %broadcast.splat, !dbg !27903 ; 4 uses
  %i.cf = icmp eq <4 x i32> %wide.load417, %broadcast.splat, !dbg !27903 ; 4 uses
  %i.cg = extractelement <4 x i1> %i.ce, i64 0, !dbg !27903
  br i1 %i.cg, label %pred.store.if, label %pred.store.continue, !dbg !27903

pred.store.if:                                    ; preds = %vector.body414
  store i32 %i.v, ptr %i.cc, align 4, !dbg !27911
  br label %pred.store.continue, !dbg !27903

pred.store.continue:                              ; preds = %pred.store.if, %vector.body414
  %i.ch = extractelement <4 x i1> %i.ce, i64 1, !dbg !27903
  br i1 %i.ch, label %pred.store.if418, label %pred.store.continue419, !dbg !27903

pred.store.if418:                                 ; preds = %pred.store.continue
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27903
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4, !dbg !27903
  store i32 %i.v, ptr %i.cj, align 4, !dbg !27911
  br label %pred.store.continue419, !dbg !27903

pred.store.continue419:                           ; preds = %pred.store.if418, %pred.store.continue
  %i.ck = extractelement <4 x i1> %i.ce, i64 2, !dbg !27903
  br i1 %i.ck, label %pred.store.if420, label %pred.store.continue421, !dbg !27903

pred.store.if420:                                 ; preds = %pred.store.continue419
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27903
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !27903
  store i32 %i.v, ptr %i.cm, align 4, !dbg !27911
  br label %pred.store.continue421, !dbg !27903

pred.store.continue421:                           ; preds = %pred.store.if420, %pred.store.continue419
  %i.cn = extractelement <4 x i1> %i.ce, i64 3, !dbg !27903
  br i1 %i.cn, label %pred.store.if422, label %pred.store.continue423, !dbg !27903

pred.store.if422:                                 ; preds = %pred.store.continue421
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27903
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12, !dbg !27903
  store i32 %i.v, ptr %i.cp, align 4, !dbg !27911
  br label %pred.store.continue423, !dbg !27903

pred.store.continue423:                           ; preds = %pred.store.if422, %pred.store.continue421
  %i.cq = extractelement <4 x i1> %i.cf, i64 0, !dbg !27903
  br i1 %i.cq, label %pred.store.if424, label %pred.store.continue425, !dbg !27903

pred.store.if424:                                 ; preds = %pred.store.continue423
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27903
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !27903
  store i32 %i.v, ptr %i.cs, align 4, !dbg !27911
  br label %pred.store.continue425, !dbg !27903

pred.store.continue425:                           ; preds = %pred.store.if424, %pred.store.continue423
  %i.ct = extractelement <4 x i1> %i.cf, i64 1, !dbg !27903
  br i1 %i.ct, label %pred.store.if426, label %pred.store.continue427, !dbg !27903

pred.store.if426:                                 ; preds = %pred.store.continue425
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27903
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20, !dbg !27903
  store i32 %i.v, ptr %i.cv, align 4, !dbg !27911
  br label %pred.store.continue427, !dbg !27903

pred.store.continue427:                           ; preds = %pred.store.if426, %pred.store.continue425
  %i.cw = extractelement <4 x i1> %i.cf, i64 2, !dbg !27903
  br i1 %i.cw, label %pred.store.if428, label %pred.store.continue429, !dbg !27903

pred.store.if428:                                 ; preds = %pred.store.continue427
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27903
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !27903
  store i32 %i.v, ptr %i.cy, align 4, !dbg !27911
  br label %pred.store.continue429, !dbg !27903

pred.store.continue429:                           ; preds = %pred.store.if428, %pred.store.continue427
  %i.cz = extractelement <4 x i1> %i.cf, i64 3, !dbg !27903
  br i1 %i.cz, label %pred.store.if430, label %pred.store.continue431, !dbg !27903

pred.store.if430:                                 ; preds = %pred.store.continue429
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27903
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28, !dbg !27903
  store i32 %i.v, ptr %i.db, align 4, !dbg !27911
  br label %pred.store.continue431, !dbg !27903

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue429
  %index.next432 = add nuw i64 %index415, 8, !dbg !27905 ; 2 uses
  %i.dc = icmp eq i64 %index.next432, %n.vec413, !dbg !27896
  br i1 %i.dc, label %.lr.ph141.preheader446, label %vector.body414, !dbg !27896, !llvm.loop !27912

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #18, !dbg !27887
  unreachable, !dbg !27887

.lr.ph141:                                        ; preds = %.lr.ph141.preheader446, %bb.aj
  %.sroa.055.0140 = phi i64 [ %i.dd, %bb.aj ], [ %.sroa.055.0140.ph, %.lr.ph141.preheader446 ] ; 3 uses
  %i.dd = add nuw nsw i64 %.sroa.055.0140, 1, !dbg !27905 ; 2 uses
  %exitcond230.not = icmp eq i64 %.sroa.055.0140, %5, !dbg !27903
  br i1 %exitcond230.not, label %bb.ah, label %bb.ag, !dbg !27903

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.n ], [ %indvars.iv, %.preheader.preheader ] ; 2 uses
  %.sroa.014.0142 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond232.not = icmp eq i64 %.sroa.014.0142, %7, !dbg !27902
  br i1 %exitcond232.not, label %bb.m, label %bb.l, !dbg !27902

.loopexit79:                                      ; preds = %bb.n, %bb.af, %bb.o
  %i.de = add i64 %.sroa.0.0151, -1, !dbg !27913  ; 2 uses
  %i.df = load i64, ptr %i.b, align 8, !noundef !14 ; 2 uses
  %.not163 = icmp eq i64 %i.df, 0, !dbg !27916
  br i1 %.not163, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !27916

bb.l:                                             ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !27902
  %i.dh = load i32, ptr %i.dg, align 4, !dbg !27902, !noundef !14
  %i.di = icmp eq i32 %i.dh, %i.w, !dbg !27902
  %.neg = add nuw i64 %.sroa.014.0142, 1, !dbg !27918 ; 2 uses
  %.not162 = icmp eq i64 %.sroa.0.0151, %.neg, !dbg !27918 ; 2 uses
  br i1 %i.di, label %bb.o, label %bb.n, !dbg !27902

bb.m:                                             ; preds = %.preheader
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #18, !dbg !27902
  unreachable, !dbg !27902

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next235 = add i64 %indvars.iv234, -1, !dbg !27919
  br i1 %.not162, label %.loopexit79, label %.preheader, !dbg !27919

bb.o:                                             ; preds = %bb.l
  br i1 %.not162, label %.loopexit79, label %.lr.ph144, !dbg !27920

.lr.ph144:                                        ; preds = %bb.o
  %i.dj = add nuw nsw i64 %.sroa.014.0142, 1      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !27920 ; 2 uses
  %i.dk = add i64 %indvar, %.sroa.014.0142, !dbg !27920
  %i.dl = sub i64 %i.u, %i.dk, !dbg !27920
  %umax = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dj), !dbg !27920
  %15 = xor i64 %.sroa.014.0142, -1, !dbg !27920
  %i.dm = add nsw i64 %umax, %15, !dbg !27920
  %umin = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dm), !dbg !27920
  %i.dn = add i64 %umin, 1, !dbg !27920           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dn, 9, !dbg !27920
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !27920

vector.ph:                                        ; preds = %.lr.ph144
  %i.do = and i64 %i.dn, 7                        ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = select i1 %i.dp, i64 8, i64 %i.do
  %n.vec = sub i64 %i.dn, %i.dq                   ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dj
  br label %vector.body, !dbg !27920

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27926 ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index, !dbg !27932 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16, !dbg !27932
  %wide.load = load <4 x i32>, ptr %i.ds, align 4, !dbg !27932
  %wide.load407 = load <4 x i32>, ptr %i.dt, align 4, !dbg !27932
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index, !dbg !27934 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16, !dbg !27934
  store <4 x i32> %wide.load, ptr %i.du, align 4, !dbg !27934
  store <4 x i32> %wide.load407, ptr %i.dv, align 4, !dbg !27934
  %index.next = add nuw i64 %index, 8, !dbg !27926 ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec, !dbg !27920
  br i1 %i.dw, label %scalar.ph.preheader, label %vector.body, !dbg !27920, !llvm.loop !27935

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph144
  %.sroa.057.0143.ph = phi i64 [ 0, %.lr.ph144 ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !27932

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %.sroa.057.0143 = phi i64 [ %i.ev, %bb.af ], [ %.sroa.057.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dx = add nuw nsw i64 %i.dj, %.sroa.057.0143, !dbg !27936 ; 3 uses
  %i.dy = icmp samesign ult i64 %i.dx, %7, !dbg !27932
  br i1 %i.dy, label %bb.af, label %bb.ae, !dbg !27932

.lr.ph150.preheader:                              ; preds = %bb.ad, %.loopexit79
  %.sroa.027.0.lcssa = phi i64 [ 0, %.loopexit79 ], [ %.sroa.027.1, %bb.ad ], !dbg !27937
  store i64 %.sroa.027.0.lcssa, ptr %i.b, align 8, !dbg !27938
  br label %.lr.ph150, !dbg !27939

.lr.ph147:                                        ; preds = %.loopexit79, %bb.ad
  %.sroa.014.1146 = phi i64 [ %i.eu, %bb.ad ], [ 0, %.loopexit79 ] ; 3 uses
  %.sroa.027.0145 = phi i64 [ %.sroa.027.1, %bb.ad ], [ 0, %.loopexit79 ] ; 9 uses
  %exitcond239.not = icmp eq i64 %.sroa.014.1146, %9, !dbg !27942
  br i1 %exitcond239.not, label %bb.s, label %bb.r, !dbg !27942

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.p
  %.sroa.059.0148 = phi i64 [ %i.dz, %bb.p ], [ 0, %.lr.ph150.preheader ] ; 3 uses
  %exitcond241.not = icmp eq i64 %.sroa.059.0148, %7, !dbg !27939
  br i1 %exitcond241.not, label %bb.q, label %bb.p, !dbg !27939

bb.p:                                             ; preds = %.lr.ph150
  %i.dz = add nuw nsw i64 %.sroa.059.0148, 1, !dbg !27943 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.059.0148, !dbg !27939
  %i.eb = load i32, ptr %i.ea, align 4, !dbg !27939, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramCommandECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.v, i32 noundef %i.eb, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !27953
  %exitcond242.not = icmp eq i64 %i.dz, %indvars.iv, !dbg !27954
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph150, !dbg !27957

bb.q:                                             ; preds = %.lr.ph150
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #18, !dbg !27939
  unreachable, !dbg !27939

bb.r:                                             ; preds = %.lr.ph147
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.014.1146, !dbg !27942 ; 4 uses
  %.sroa.031.0.copyload = load i32, ptr %i.ec, align 4, !dbg !27942 ; 5 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 4, !dbg !27942
  %.sroa.434.0.copyload = load i32, ptr %.sroa.434.0..sroa_idx, align 4, !dbg !27942 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !27942
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !27942 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 12, !dbg !27942
  %.sroa.543.0.copyload = load float, ptr %.sroa.543.0..sroa_idx, align 4, !dbg !27942 ; 4 uses
  %i.ed = icmp eq i32 %.sroa.031.0.copyload, %i.v, !dbg !27958
  br i1 %i.ed, label %bb.ad, label %bb.t, !dbg !27958

bb.s:                                             ; preds = %.lr.ph147
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #18, !dbg !27942
  unreachable, !dbg !27942

bb.t:                                             ; preds = %bb.r
  %i.ee = icmp eq i32 %.sroa.434.0.copyload, %i.v, !dbg !27960
  %i.ef = icmp eq i32 %.sroa.031.0.copyload, %i.w
  %or.cond = or i1 %i.ef, %i.ee, !dbg !27960
  %i.eg = icmp eq i32 %.sroa.434.0.copyload, %i.w
  %or.cond1 = or i1 %i.eg, %or.cond, !dbg !27960
  br i1 %or.cond1, label %bb.ad, label %bb.u, !dbg !27960

bb.u:                                             ; preds = %bb.t
  %i.eh = load float, ptr %i.c, align 4, !dbg !27961, !noundef !14 ; 2 uses
  %i.ei = fcmp une float %i.eh, %.sroa.543.0.copyload, !dbg !27961
  br i1 %i.ei, label %.split, label %bb.v, !dbg !27961

.split:                                           ; preds = %bb.u
  %i.ej = fcmp ogt float %i.eh, %.sroa.543.0.copyload, !dbg !27964
  br i1 %i.ej, label %bb.x, label %bb.w, !dbg !27963

bb.v:                                             ; preds = %bb.u
  %i.ek = load i32, ptr %i.d, align 4, !dbg !27965, !noundef !14
  %i.el = load i32, ptr %8, align 4, !dbg !27966, !noundef !14
  %i.em = sub i32 %i.ek, %i.el, !dbg !27967
  %i.en = sub i32 %.sroa.434.0.copyload, %.sroa.031.0.copyload, !dbg !27970
  %i.eo = icmp ugt i32 %i.em, %i.en, !dbg !27965
  br i1 %i.eo, label %bb.x, label %bb.w, !dbg !27963

bb.w:                                             ; preds = %.split, %bb.v
  %i.ep = icmp ult i64 %.sroa.027.0145, %9, !dbg !27972
  br i1 %i.ep, label %bb.y, label %bb.z, !dbg !27972

bb.x:                                             ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !dbg !27973
  store i32 %.sroa.031.0.copyload, ptr %8, align 4, !dbg !27974
  store i32 %.sroa.434.0.copyload, ptr %i.d, align 4, !dbg !27974
  store i32 %.sroa.5.0.copyload, ptr %i.e, align 4, !dbg !27974
  store float %.sroa.543.0.copyload, ptr %i.c, align 4, !dbg !27974
  %i.eq = icmp ult i64 %.sroa.027.0145, %9, !dbg !27976
  br i1 %i.eq, label %bb.ab, label %bb.ac, !dbg !27976

bb.y:                                             ; preds = %bb.w
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !27972 ; 4 uses
  store i32 %.sroa.031.0.copyload, ptr %i.er, align 4, !dbg !27972
  %.sroa.434.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.er, i64 4, !dbg !27972
  store i32 %.sroa.434.0.copyload, ptr %.sroa.434.0..sroa_idx37, align 4, !dbg !27972
  %.sroa.5.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !27972
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx41, align 4, !dbg !27972
  %.sroa.543.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.er, i64 12, !dbg !27972
  store float %.sroa.543.0.copyload, ptr %.sroa.543.0..sroa_idx46, align 4, !dbg !27972
  br label %bb.aa, !dbg !27977

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #18, !dbg !27972
  unreachable, !dbg !27972

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.es = add nuw i64 %.sroa.027.0145, 1, !dbg !27978
  br label %bb.ad, !dbg !27981

bb.ab:                                            ; preds = %bb.x
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !27976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.et, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !27976
  br label %bb.aa, !dbg !27977

bb.ac:                                            ; preds = %bb.x
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #18, !dbg !27976
  unreachable, !dbg !27976

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.aa
  %.sroa.027.1 = phi i64 [ %.sroa.027.0145, %bb.r ], [ %.sroa.027.0145, %bb.t ], [ %i.es, %bb.aa ], !dbg !27918 ; 2 uses
  %i.eu = add nuw nsw i64 %.sroa.014.1146, 1, !dbg !27982 ; 2 uses
  %exitcond240.not = icmp eq i64 %i.eu, %i.df, !dbg !27916
  br i1 %exitcond240.not, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !27916

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dx, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #18, !dbg !27932
  unreachable, !dbg !27932

bb.af:                                            ; preds = %scalar.ph
  %i.ev = add nuw nsw i64 %.sroa.057.0143, 1, !dbg !27926 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dx, !dbg !27932
  %i.ex = load i32, ptr %i.ew, align 4, !dbg !27932, !noundef !14
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.057.0143, !dbg !27934
  store i32 %i.ex, ptr %gep, align 4, !dbg !27934
  %exitcond238.not = icmp eq i64 %i.ev, %indvars.iv234, !dbg !27984
  br i1 %exitcond238.not, label %.loopexit79, label %scalar.ph, !dbg !27920, !llvm.loop !27987

bb.ag:                                            ; preds = %.lr.ph141
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.055.0140, !dbg !27903 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !dbg !27903, !noundef !14
  %i.fa = icmp eq i32 %i.ez, %i.w, !dbg !27903
  br i1 %i.fa, label %bb.ai, label %bb.aj, !dbg !27903

bb.ah:                                            ; preds = %.lr.ph141
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #18, !dbg !27903
  unreachable, !dbg !27903

bb.ai:                                            ; preds = %bb.ag
  store i32 %i.v, ptr %i.ey, align 4, !dbg !27911
  br label %bb.aj, !dbg !27988

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %exitcond231.not = icmp eq i64 %i.dd, %11, !dbg !27989
  br i1 %exitcond231.not, label %.preheader.preheader, label %.lr.ph141, !dbg !27896, !llvm.loop !27992

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.al
  %.sroa.053.0137 = phi i64 [ %i.fb, %bb.al ], [ %i.l, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.053.0137, %7, !dbg !27993
  br i1 %exitcond.not, label %bb.am, label %bb.al, !dbg !27993

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.051.0138, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #18, !dbg !27806
  unreachable, !dbg !27806

bb.al:                                            ; preds = %.lr.ph.split
  %i.fb = add i64 %.sroa.053.0137, 1, !dbg !27994 ; 2 uses
  %i.fc = load i32, ptr %i.o, align 4, !dbg !27806, !noundef !14
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.053.0137, !dbg !27993
  %i.fe = load i32, ptr %i.fd, align 4, !dbg !27993, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramCommandECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.fc, i32 noundef %i.fe, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28000
end_hunk_3
begin_hunk_4_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.az = load i32, ptr %i.ay, align 8, !dbg !28097, !alias.scope !28045, !noundef !14
  %i.ba = add i32 %i.az, %i.ax, !dbg !28099
  store i32 %i.ba, ptr %i.aw, align 8, !dbg !28102, !alias.scope !28045
  %i.bb = or disjoint i64 %.sroa.01.09.i, 2, !dbg !28084 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.av, !dbg !28090 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !28090, !alias.scope !28045, !noundef !14
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.av, !dbg !28097
  %i.bf = load i32, ptr %i.be, align 4, !dbg !28097, !alias.scope !28045, !noundef !14
  %i.bg = add i32 %i.bf, %i.bd, !dbg !28099
  store i32 %i.bg, ptr %i.bc, align 4, !dbg !28102, !alias.scope !28045
  %i.bh = or disjoint i64 %.sroa.01.09.i, 3, !dbg !28084 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bb, !dbg !28090 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !dbg !28090, !alias.scope !28045, !noundef !14
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bb, !dbg !28097
  %i.bl = load i32, ptr %i.bk, align 8, !dbg !28097, !alias.scope !28045, !noundef !14
  %i.bm = add i32 %i.bl, %i.bj, !dbg !28099
  store i32 %i.bm, ptr %i.bi, align 8, !dbg !28102, !alias.scope !28045
  %i.bn = add nuw nsw i64 %.sroa.01.09.i, 4, !dbg !28084 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bh, !dbg !28090 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !dbg !28090, !alias.scope !28045, !noundef !14
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh, !dbg !28097
  %i.br = load i32, ptr %i.bq, align 4, !dbg !28097, !alias.scope !28045, !noundef !14
  %i.bs = add i32 %i.br, %i.bp, !dbg !28099
  store i32 %i.bs, ptr %i.bo, align 4, !dbg !28102, !alias.scope !28045
  %exitcond.not.i.3 = icmp eq i64 %i.bn, 256, !dbg !28105
  br i1 %exitcond.not.i.3, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph435, !dbg !28073, !llvm.loop !28108

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vector.body437, %scalar.ph435
  %i.bt = load float, ptr %i.e, align 4, !dbg !28109, !noundef !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032, !dbg !28110
  store float %i.bt, ptr %i.bu, align 8, !dbg !28110, !alias.scope !28112
  %i.bv = icmp samesign ugt i64 %3, %i.y, !dbg !28115
  br i1 %i.bv, label %bb.h, label %bb.i, !dbg !28115

bb.h:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit
  %i.bw = icmp samesign ugt i64 %3, %i.x, !dbg !28116
  br i1 %i.bw, label %bb.j, label %bb.k, !dbg !28116

bb.i:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #18, !dbg !28115
  unreachable, !dbg !28115

bb.j:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y, !dbg !28115
  %i.by = load i32, ptr %i.bx, align 4, !dbg !28115, !noundef !14
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x, !dbg !28118 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !dbg !28119, !noundef !14
  %i.cb = add i32 %i.ca, %i.by, !dbg !28121
  store i32 %i.cb, ptr %i.bz, align 4, !dbg !28124
  br i1 %.not161, label %.preheader.preheader, label %.lr.ph141.preheader, !dbg !28125

.preheader.preheader:                             ; preds = %bb.aj, %bb.j
  br label %.preheader, !dbg !28131

.lr.ph141.preheader:                              ; preds = %bb.j
  br i1 %min.iters.check411, label %.lr.ph141.preheader446, label %vector.ph412, !dbg !28132

.lr.ph141.preheader446:                           ; preds = %pred.store.continue431, %.lr.ph141.preheader
  %.sroa.055.0140.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec413, %pred.store.continue431 ]
  br label %.lr.ph141, !dbg !28132

vector.ph412:                                     ; preds = %.lr.ph141.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body414, !dbg !28132

vector.body414:                                   ; preds = %pred.store.continue431, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next432, %pred.store.continue431 ], !dbg !28134 ; 9 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28132 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !28132
  %wide.load416 = load <4 x i32>, ptr %i.cc, align 4, !dbg !28132
  %wide.load417 = load <4 x i32>, ptr %i.cd, align 4, !dbg !28132
  %i.ce = icmp eq <4 x i32> %wide.load416, %broadcast.splat, !dbg !28132 ; 4 uses
  %i.cf = icmp eq <4 x i32> %wide.load417, %broadcast.splat, !dbg !28132 ; 4 uses
  %i.cg = extractelement <4 x i1> %i.ce, i64 0, !dbg !28132
  br i1 %i.cg, label %pred.store.if, label %pred.store.continue, !dbg !28132

pred.store.if:                                    ; preds = %vector.body414
  store i32 %i.v, ptr %i.cc, align 4, !dbg !28140
  br label %pred.store.continue, !dbg !28132

pred.store.continue:                              ; preds = %pred.store.if, %vector.body414
  %i.ch = extractelement <4 x i1> %i.ce, i64 1, !dbg !28132
  br i1 %i.ch, label %pred.store.if418, label %pred.store.continue419, !dbg !28132

pred.store.if418:                                 ; preds = %pred.store.continue
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28132
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4, !dbg !28132
  store i32 %i.v, ptr %i.cj, align 4, !dbg !28140
  br label %pred.store.continue419, !dbg !28132

pred.store.continue419:                           ; preds = %pred.store.if418, %pred.store.continue
  %i.ck = extractelement <4 x i1> %i.ce, i64 2, !dbg !28132
  br i1 %i.ck, label %pred.store.if420, label %pred.store.continue421, !dbg !28132

pred.store.if420:                                 ; preds = %pred.store.continue419
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28132
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !28132
  store i32 %i.v, ptr %i.cm, align 4, !dbg !28140
  br label %pred.store.continue421, !dbg !28132

pred.store.continue421:                           ; preds = %pred.store.if420, %pred.store.continue419
  %i.cn = extractelement <4 x i1> %i.ce, i64 3, !dbg !28132
  br i1 %i.cn, label %pred.store.if422, label %pred.store.continue423, !dbg !28132

pred.store.if422:                                 ; preds = %pred.store.continue421
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28132
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12, !dbg !28132
  store i32 %i.v, ptr %i.cp, align 4, !dbg !28140
  br label %pred.store.continue423, !dbg !28132

pred.store.continue423:                           ; preds = %pred.store.if422, %pred.store.continue421
  %i.cq = extractelement <4 x i1> %i.cf, i64 0, !dbg !28132
  br i1 %i.cq, label %pred.store.if424, label %pred.store.continue425, !dbg !28132

pred.store.if424:                                 ; preds = %pred.store.continue423
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28132
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !28132
  store i32 %i.v, ptr %i.cs, align 4, !dbg !28140
  br label %pred.store.continue425, !dbg !28132

pred.store.continue425:                           ; preds = %pred.store.if424, %pred.store.continue423
  %i.ct = extractelement <4 x i1> %i.cf, i64 1, !dbg !28132
  br i1 %i.ct, label %pred.store.if426, label %pred.store.continue427, !dbg !28132

pred.store.if426:                                 ; preds = %pred.store.continue425
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28132
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20, !dbg !28132
  store i32 %i.v, ptr %i.cv, align 4, !dbg !28140
  br label %pred.store.continue427, !dbg !28132

pred.store.continue427:                           ; preds = %pred.store.if426, %pred.store.continue425
  %i.cw = extractelement <4 x i1> %i.cf, i64 2, !dbg !28132
  br i1 %i.cw, label %pred.store.if428, label %pred.store.continue429, !dbg !28132

pred.store.if428:                                 ; preds = %pred.store.continue427
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28132
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !28132
  store i32 %i.v, ptr %i.cy, align 4, !dbg !28140
  br label %pred.store.continue429, !dbg !28132

pred.store.continue429:                           ; preds = %pred.store.if428, %pred.store.continue427
  %i.cz = extractelement <4 x i1> %i.cf, i64 3, !dbg !28132
  br i1 %i.cz, label %pred.store.if430, label %pred.store.continue431, !dbg !28132

pred.store.if430:                                 ; preds = %pred.store.continue429
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28132
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28, !dbg !28132
  store i32 %i.v, ptr %i.db, align 4, !dbg !28140
  br label %pred.store.continue431, !dbg !28132

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue429
  %index.next432 = add nuw i64 %index415, 8, !dbg !28134 ; 2 uses
  %i.dc = icmp eq i64 %index.next432, %n.vec413, !dbg !28125
  br i1 %i.dc, label %.lr.ph141.preheader446, label %vector.body414, !dbg !28125, !llvm.loop !28141

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #18, !dbg !28116
  unreachable, !dbg !28116

.lr.ph141:                                        ; preds = %.lr.ph141.preheader446, %bb.aj
  %.sroa.055.0140 = phi i64 [ %i.dd, %bb.aj ], [ %.sroa.055.0140.ph, %.lr.ph141.preheader446 ] ; 3 uses
  %i.dd = add nuw nsw i64 %.sroa.055.0140, 1, !dbg !28134 ; 2 uses
  %exitcond230.not = icmp eq i64 %.sroa.055.0140, %5, !dbg !28132
  br i1 %exitcond230.not, label %bb.ah, label %bb.ag, !dbg !28132

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.n ], [ %indvars.iv, %.preheader.preheader ] ; 2 uses
  %.sroa.014.0142 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond232.not = icmp eq i64 %.sroa.014.0142, %7, !dbg !28131
  br i1 %exitcond232.not, label %bb.m, label %bb.l, !dbg !28131

.loopexit79:                                      ; preds = %bb.n, %bb.af, %bb.o
  %i.de = add i64 %.sroa.0.0151, -1, !dbg !28142  ; 2 uses
  %i.df = load i64, ptr %i.b, align 8, !noundef !14 ; 2 uses
  %.not163 = icmp eq i64 %i.df, 0, !dbg !28145
  br i1 %.not163, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28145

bb.l:                                             ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !28131
  %i.dh = load i32, ptr %i.dg, align 4, !dbg !28131, !noundef !14
  %i.di = icmp eq i32 %i.dh, %i.w, !dbg !28131
  %.neg = add nuw i64 %.sroa.014.0142, 1, !dbg !28147 ; 2 uses
  %.not162 = icmp eq i64 %.sroa.0.0151, %.neg, !dbg !28147 ; 2 uses
  br i1 %i.di, label %bb.o, label %bb.n, !dbg !28131

bb.m:                                             ; preds = %.preheader
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #18, !dbg !28131
  unreachable, !dbg !28131

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next235 = add i64 %indvars.iv234, -1, !dbg !28148
  br i1 %.not162, label %.loopexit79, label %.preheader, !dbg !28148

bb.o:                                             ; preds = %bb.l
  br i1 %.not162, label %.loopexit79, label %.lr.ph144, !dbg !28149

.lr.ph144:                                        ; preds = %bb.o
  %i.dj = add nuw nsw i64 %.sroa.014.0142, 1      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !28149 ; 2 uses
  %i.dk = add i64 %indvar, %.sroa.014.0142, !dbg !28149
  %i.dl = sub i64 %i.u, %i.dk, !dbg !28149
  %umax = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dj), !dbg !28149
  %15 = xor i64 %.sroa.014.0142, -1, !dbg !28149
  %i.dm = add nsw i64 %umax, %15, !dbg !28149
  %umin = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dm), !dbg !28149
  %i.dn = add i64 %umin, 1, !dbg !28149           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dn, 9, !dbg !28149
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !28149

vector.ph:                                        ; preds = %.lr.ph144
  %i.do = and i64 %i.dn, 7                        ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = select i1 %i.dp, i64 8, i64 %i.do
  %n.vec = sub i64 %i.dn, %i.dq                   ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dj
  br label %vector.body, !dbg !28149

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28155 ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index, !dbg !28161 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16, !dbg !28161
  %wide.load = load <4 x i32>, ptr %i.ds, align 4, !dbg !28161
  %wide.load407 = load <4 x i32>, ptr %i.dt, align 4, !dbg !28161
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index, !dbg !28163 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16, !dbg !28163
  store <4 x i32> %wide.load, ptr %i.du, align 4, !dbg !28163
  store <4 x i32> %wide.load407, ptr %i.dv, align 4, !dbg !28163
  %index.next = add nuw i64 %index, 8, !dbg !28155 ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec, !dbg !28149
  br i1 %i.dw, label %scalar.ph.preheader, label %vector.body, !dbg !28149, !llvm.loop !28164

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph144
  %.sroa.057.0143.ph = phi i64 [ 0, %.lr.ph144 ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !28161

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %.sroa.057.0143 = phi i64 [ %i.ev, %bb.af ], [ %.sroa.057.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dx = add nuw nsw i64 %i.dj, %.sroa.057.0143, !dbg !28165 ; 3 uses
  %i.dy = icmp samesign ult i64 %i.dx, %7, !dbg !28161
  br i1 %i.dy, label %bb.af, label %bb.ae, !dbg !28161

.lr.ph150.preheader:                              ; preds = %bb.ad, %.loopexit79
  %.sroa.027.0.lcssa = phi i64 [ 0, %.loopexit79 ], [ %.sroa.027.1, %bb.ad ], !dbg !28166
  store i64 %.sroa.027.0.lcssa, ptr %i.b, align 8, !dbg !28167
  br label %.lr.ph150, !dbg !28168

.lr.ph147:                                        ; preds = %.loopexit79, %bb.ad
  %.sroa.014.1146 = phi i64 [ %i.eu, %bb.ad ], [ 0, %.loopexit79 ] ; 3 uses
  %.sroa.027.0145 = phi i64 [ %.sroa.027.1, %bb.ad ], [ 0, %.loopexit79 ] ; 9 uses
  %exitcond239.not = icmp eq i64 %.sroa.014.1146, %9, !dbg !28171
  br i1 %exitcond239.not, label %bb.s, label %bb.r, !dbg !28171

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.p
  %.sroa.059.0148 = phi i64 [ %i.dz, %bb.p ], [ 0, %.lr.ph150.preheader ] ; 3 uses
  %exitcond241.not = icmp eq i64 %.sroa.059.0148, %7, !dbg !28168
  br i1 %exitcond241.not, label %bb.q, label %bb.p, !dbg !28168

bb.p:                                             ; preds = %.lr.ph150
  %i.dz = add nuw nsw i64 %.sroa.059.0148, 1, !dbg !28172 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.059.0148, !dbg !28168
  %i.eb = load i32, ptr %i.ea, align 4, !dbg !28168, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.v, i32 noundef %i.eb, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28182
  %exitcond242.not = icmp eq i64 %i.dz, %indvars.iv, !dbg !28183
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph150, !dbg !28186

bb.q:                                             ; preds = %.lr.ph150
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #18, !dbg !28168
  unreachable, !dbg !28168

bb.r:                                             ; preds = %.lr.ph147
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.014.1146, !dbg !28171 ; 4 uses
  %.sroa.031.0.copyload = load i32, ptr %i.ec, align 4, !dbg !28171 ; 5 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 4, !dbg !28171
  %.sroa.434.0.copyload = load i32, ptr %.sroa.434.0..sroa_idx, align 4, !dbg !28171 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !28171
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !28171 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 12, !dbg !28171
  %.sroa.543.0.copyload = load float, ptr %.sroa.543.0..sroa_idx, align 4, !dbg !28171 ; 4 uses
  %i.ed = icmp eq i32 %.sroa.031.0.copyload, %i.v, !dbg !28187
  br i1 %i.ed, label %bb.ad, label %bb.t, !dbg !28187

bb.s:                                             ; preds = %.lr.ph147
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #18, !dbg !28171
  unreachable, !dbg !28171

bb.t:                                             ; preds = %bb.r
  %i.ee = icmp eq i32 %.sroa.434.0.copyload, %i.v, !dbg !28189
  %i.ef = icmp eq i32 %.sroa.031.0.copyload, %i.w
  %or.cond = or i1 %i.ef, %i.ee, !dbg !28189
  %i.eg = icmp eq i32 %.sroa.434.0.copyload, %i.w
  %or.cond1 = or i1 %i.eg, %or.cond, !dbg !28189
  br i1 %or.cond1, label %bb.ad, label %bb.u, !dbg !28189

bb.u:                                             ; preds = %bb.t
  %i.eh = load float, ptr %i.c, align 4, !dbg !28190, !noundef !14 ; 2 uses
  %i.ei = fcmp une float %i.eh, %.sroa.543.0.copyload, !dbg !28190
  br i1 %i.ei, label %.split, label %bb.v, !dbg !28190

.split:                                           ; preds = %bb.u
  %i.ej = fcmp ogt float %i.eh, %.sroa.543.0.copyload, !dbg !28193
  br i1 %i.ej, label %bb.x, label %bb.w, !dbg !28192

bb.v:                                             ; preds = %bb.u
  %i.ek = load i32, ptr %i.d, align 4, !dbg !28194, !noundef !14
  %i.el = load i32, ptr %8, align 4, !dbg !28195, !noundef !14
  %i.em = sub i32 %i.ek, %i.el, !dbg !28196
  %i.en = sub i32 %.sroa.434.0.copyload, %.sroa.031.0.copyload, !dbg !28199
  %i.eo = icmp ugt i32 %i.em, %i.en, !dbg !28194
  br i1 %i.eo, label %bb.x, label %bb.w, !dbg !28192

bb.w:                                             ; preds = %.split, %bb.v
  %i.ep = icmp ult i64 %.sroa.027.0145, %9, !dbg !28201
  br i1 %i.ep, label %bb.y, label %bb.z, !dbg !28201

bb.x:                                             ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !dbg !28202
  store i32 %.sroa.031.0.copyload, ptr %8, align 4, !dbg !28203
  store i32 %.sroa.434.0.copyload, ptr %i.d, align 4, !dbg !28203
  store i32 %.sroa.5.0.copyload, ptr %i.e, align 4, !dbg !28203
  store float %.sroa.543.0.copyload, ptr %i.c, align 4, !dbg !28203
  %i.eq = icmp ult i64 %.sroa.027.0145, %9, !dbg !28205
  br i1 %i.eq, label %bb.ab, label %bb.ac, !dbg !28205

bb.y:                                             ; preds = %bb.w
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28201 ; 4 uses
  store i32 %.sroa.031.0.copyload, ptr %i.er, align 4, !dbg !28201
  %.sroa.434.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.er, i64 4, !dbg !28201
  store i32 %.sroa.434.0.copyload, ptr %.sroa.434.0..sroa_idx37, align 4, !dbg !28201
  %.sroa.5.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !28201
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx41, align 4, !dbg !28201
  %.sroa.543.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.er, i64 12, !dbg !28201
  store float %.sroa.543.0.copyload, ptr %.sroa.543.0..sroa_idx46, align 4, !dbg !28201
  br label %bb.aa, !dbg !28206

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #18, !dbg !28201
  unreachable, !dbg !28201

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.es = add nuw i64 %.sroa.027.0145, 1, !dbg !28207
  br label %bb.ad, !dbg !28210

bb.ab:                                            ; preds = %bb.x
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.et, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !28205
  br label %bb.aa, !dbg !28206

bb.ac:                                            ; preds = %bb.x
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #18, !dbg !28205
  unreachable, !dbg !28205

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.aa
  %.sroa.027.1 = phi i64 [ %.sroa.027.0145, %bb.r ], [ %.sroa.027.0145, %bb.t ], [ %i.es, %bb.aa ], !dbg !28147 ; 2 uses
  %i.eu = add nuw nsw i64 %.sroa.014.1146, 1, !dbg !28211 ; 2 uses
  %exitcond240.not = icmp eq i64 %i.eu, %i.df, !dbg !28145
  br i1 %exitcond240.not, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28145

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dx, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #18, !dbg !28161
  unreachable, !dbg !28161

bb.af:                                            ; preds = %scalar.ph
  %i.ev = add nuw nsw i64 %.sroa.057.0143, 1, !dbg !28155 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dx, !dbg !28161
  %i.ex = load i32, ptr %i.ew, align 4, !dbg !28161, !noundef !14
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.057.0143, !dbg !28163
  store i32 %i.ex, ptr %gep, align 4, !dbg !28163
  %exitcond238.not = icmp eq i64 %i.ev, %indvars.iv234, !dbg !28213
  br i1 %exitcond238.not, label %.loopexit79, label %scalar.ph, !dbg !28149, !llvm.loop !28216

bb.ag:                                            ; preds = %.lr.ph141
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.055.0140, !dbg !28132 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !dbg !28132, !noundef !14
  %i.fa = icmp eq i32 %i.ez, %i.w, !dbg !28132
  br i1 %i.fa, label %bb.ai, label %bb.aj, !dbg !28132

bb.ah:                                            ; preds = %.lr.ph141
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #18, !dbg !28132
  unreachable, !dbg !28132

bb.ai:                                            ; preds = %bb.ag
  store i32 %i.v, ptr %i.ey, align 4, !dbg !28140
  br label %bb.aj, !dbg !28217

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %exitcond231.not = icmp eq i64 %i.dd, %11, !dbg !28218
  br i1 %exitcond231.not, label %.preheader.preheader, label %.lr.ph141, !dbg !28125, !llvm.loop !28221

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.al
  %.sroa.053.0137 = phi i64 [ %i.fb, %bb.al ], [ %i.l, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.053.0137, %7, !dbg !28222
  br i1 %exitcond.not, label %bb.am, label %bb.al, !dbg !28222

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.051.0138, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #18, !dbg !28035
  unreachable, !dbg !28035

bb.al:                                            ; preds = %.lr.ph.split
  %i.fb = add i64 %.sroa.053.0137, 1, !dbg !28223 ; 2 uses
  %i.fc = load i32, ptr %i.o, align 4, !dbg !28035, !noundef !14
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.053.0137, !dbg !28222
  %i.fe = load i32, ptr %i.fd, align 4, !dbg !28222, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.fc, i32 noundef %i.fe, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28229
end_hunk_4
begin_hunk_5_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.az = load i32, ptr %i.ay, align 8, !dbg !28326, !alias.scope !28274, !noundef !14
  %i.ba = add i32 %i.az, %i.ax, !dbg !28328
  store i32 %i.ba, ptr %i.aw, align 8, !dbg !28331, !alias.scope !28274
  %i.bb = or disjoint i64 %.sroa.01.09.i, 2, !dbg !28313 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.av, !dbg !28319 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !28319, !alias.scope !28274, !noundef !14
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.av, !dbg !28326
  %i.bf = load i32, ptr %i.be, align 4, !dbg !28326, !alias.scope !28274, !noundef !14
  %i.bg = add i32 %i.bf, %i.bd, !dbg !28328
  store i32 %i.bg, ptr %i.bc, align 4, !dbg !28331, !alias.scope !28274
  %i.bh = or disjoint i64 %.sroa.01.09.i, 3, !dbg !28313 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bb, !dbg !28319 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !dbg !28319, !alias.scope !28274, !noundef !14
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bb, !dbg !28326
  %i.bl = load i32, ptr %i.bk, align 8, !dbg !28326, !alias.scope !28274, !noundef !14
  %i.bm = add i32 %i.bl, %i.bj, !dbg !28328
  store i32 %i.bm, ptr %i.bi, align 8, !dbg !28331, !alias.scope !28274
  %i.bn = add nuw nsw i64 %.sroa.01.09.i, 4, !dbg !28313 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bh, !dbg !28319 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !dbg !28319, !alias.scope !28274, !noundef !14
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh, !dbg !28326
  %i.br = load i32, ptr %i.bq, align 4, !dbg !28326, !alias.scope !28274, !noundef !14
  %i.bs = add i32 %i.br, %i.bp, !dbg !28328
  store i32 %i.bs, ptr %i.bo, align 4, !dbg !28331, !alias.scope !28274
  %exitcond.not.i.3 = icmp eq i64 %i.bn, 544, !dbg !28334
  br i1 %exitcond.not.i.3, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph435, !dbg !28302, !llvm.loop !28337

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vector.body437, %scalar.ph435
  %i.bt = load float, ptr %i.e, align 4, !dbg !28338, !noundef !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 2184, !dbg !28339
  store float %i.bt, ptr %i.bu, align 8, !dbg !28339, !alias.scope !28341
  %i.bv = icmp samesign ugt i64 %3, %i.y, !dbg !28344
  br i1 %i.bv, label %bb.h, label %bb.i, !dbg !28344

bb.h:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit
  %i.bw = icmp samesign ugt i64 %3, %i.x, !dbg !28345
  br i1 %i.bw, label %bb.j, label %bb.k, !dbg !28345

bb.i:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #18, !dbg !28344
  unreachable, !dbg !28344

bb.j:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y, !dbg !28344
  %i.by = load i32, ptr %i.bx, align 4, !dbg !28344, !noundef !14
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x, !dbg !28347 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !dbg !28348, !noundef !14
  %i.cb = add i32 %i.ca, %i.by, !dbg !28350
  store i32 %i.cb, ptr %i.bz, align 4, !dbg !28353
  br i1 %.not161, label %.preheader.preheader, label %.lr.ph141.preheader, !dbg !28354

.preheader.preheader:                             ; preds = %bb.aj, %bb.j
  br label %.preheader, !dbg !28360

.lr.ph141.preheader:                              ; preds = %bb.j
  br i1 %min.iters.check411, label %.lr.ph141.preheader446, label %vector.ph412, !dbg !28361

.lr.ph141.preheader446:                           ; preds = %pred.store.continue431, %.lr.ph141.preheader
  %.sroa.055.0140.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec413, %pred.store.continue431 ]
  br label %.lr.ph141, !dbg !28361

vector.ph412:                                     ; preds = %.lr.ph141.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body414, !dbg !28361

vector.body414:                                   ; preds = %pred.store.continue431, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next432, %pred.store.continue431 ], !dbg !28363 ; 9 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28361 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !28361
  %wide.load416 = load <4 x i32>, ptr %i.cc, align 4, !dbg !28361
  %wide.load417 = load <4 x i32>, ptr %i.cd, align 4, !dbg !28361
  %i.ce = icmp eq <4 x i32> %wide.load416, %broadcast.splat, !dbg !28361 ; 4 uses
  %i.cf = icmp eq <4 x i32> %wide.load417, %broadcast.splat, !dbg !28361 ; 4 uses
  %i.cg = extractelement <4 x i1> %i.ce, i64 0, !dbg !28361
  br i1 %i.cg, label %pred.store.if, label %pred.store.continue, !dbg !28361

pred.store.if:                                    ; preds = %vector.body414
  store i32 %i.v, ptr %i.cc, align 4, !dbg !28369
  br label %pred.store.continue, !dbg !28361

pred.store.continue:                              ; preds = %pred.store.if, %vector.body414
  %i.ch = extractelement <4 x i1> %i.ce, i64 1, !dbg !28361
  br i1 %i.ch, label %pred.store.if418, label %pred.store.continue419, !dbg !28361

pred.store.if418:                                 ; preds = %pred.store.continue
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28361
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4, !dbg !28361
  store i32 %i.v, ptr %i.cj, align 4, !dbg !28369
  br label %pred.store.continue419, !dbg !28361

pred.store.continue419:                           ; preds = %pred.store.if418, %pred.store.continue
  %i.ck = extractelement <4 x i1> %i.ce, i64 2, !dbg !28361
  br i1 %i.ck, label %pred.store.if420, label %pred.store.continue421, !dbg !28361

pred.store.if420:                                 ; preds = %pred.store.continue419
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28361
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !28361
  store i32 %i.v, ptr %i.cm, align 4, !dbg !28369
  br label %pred.store.continue421, !dbg !28361

pred.store.continue421:                           ; preds = %pred.store.if420, %pred.store.continue419
  %i.cn = extractelement <4 x i1> %i.ce, i64 3, !dbg !28361
  br i1 %i.cn, label %pred.store.if422, label %pred.store.continue423, !dbg !28361

pred.store.if422:                                 ; preds = %pred.store.continue421
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28361
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12, !dbg !28361
  store i32 %i.v, ptr %i.cp, align 4, !dbg !28369
  br label %pred.store.continue423, !dbg !28361

pred.store.continue423:                           ; preds = %pred.store.if422, %pred.store.continue421
  %i.cq = extractelement <4 x i1> %i.cf, i64 0, !dbg !28361
  br i1 %i.cq, label %pred.store.if424, label %pred.store.continue425, !dbg !28361

pred.store.if424:                                 ; preds = %pred.store.continue423
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28361
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !28361
  store i32 %i.v, ptr %i.cs, align 4, !dbg !28369
  br label %pred.store.continue425, !dbg !28361

pred.store.continue425:                           ; preds = %pred.store.if424, %pred.store.continue423
  %i.ct = extractelement <4 x i1> %i.cf, i64 1, !dbg !28361
  br i1 %i.ct, label %pred.store.if426, label %pred.store.continue427, !dbg !28361

pred.store.if426:                                 ; preds = %pred.store.continue425
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28361
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20, !dbg !28361
  store i32 %i.v, ptr %i.cv, align 4, !dbg !28369
  br label %pred.store.continue427, !dbg !28361

pred.store.continue427:                           ; preds = %pred.store.if426, %pred.store.continue425
  %i.cw = extractelement <4 x i1> %i.cf, i64 2, !dbg !28361
  br i1 %i.cw, label %pred.store.if428, label %pred.store.continue429, !dbg !28361

pred.store.if428:                                 ; preds = %pred.store.continue427
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28361
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !28361
  store i32 %i.v, ptr %i.cy, align 4, !dbg !28369
  br label %pred.store.continue429, !dbg !28361

pred.store.continue429:                           ; preds = %pred.store.if428, %pred.store.continue427
  %i.cz = extractelement <4 x i1> %i.cf, i64 3, !dbg !28361
  br i1 %i.cz, label %pred.store.if430, label %pred.store.continue431, !dbg !28361

pred.store.if430:                                 ; preds = %pred.store.continue429
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28361
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28, !dbg !28361
  store i32 %i.v, ptr %i.db, align 4, !dbg !28369
  br label %pred.store.continue431, !dbg !28361

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue429
  %index.next432 = add nuw i64 %index415, 8, !dbg !28363 ; 2 uses
  %i.dc = icmp eq i64 %index.next432, %n.vec413, !dbg !28354
  br i1 %i.dc, label %.lr.ph141.preheader446, label %vector.body414, !dbg !28354, !llvm.loop !28370

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #18, !dbg !28345
  unreachable, !dbg !28345

.lr.ph141:                                        ; preds = %.lr.ph141.preheader446, %bb.aj
  %.sroa.055.0140 = phi i64 [ %i.dd, %bb.aj ], [ %.sroa.055.0140.ph, %.lr.ph141.preheader446 ] ; 3 uses
  %i.dd = add nuw nsw i64 %.sroa.055.0140, 1, !dbg !28363 ; 2 uses
  %exitcond230.not = icmp eq i64 %.sroa.055.0140, %5, !dbg !28361
  br i1 %exitcond230.not, label %bb.ah, label %bb.ag, !dbg !28361

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.n ], [ %indvars.iv, %.preheader.preheader ] ; 2 uses
  %.sroa.014.0142 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond232.not = icmp eq i64 %.sroa.014.0142, %7, !dbg !28360
  br i1 %exitcond232.not, label %bb.m, label %bb.l, !dbg !28360

.loopexit79:                                      ; preds = %bb.n, %bb.af, %bb.o
  %i.de = add i64 %.sroa.0.0151, -1, !dbg !28371  ; 2 uses
  %i.df = load i64, ptr %i.b, align 8, !noundef !14 ; 2 uses
  %.not163 = icmp eq i64 %i.df, 0, !dbg !28374
  br i1 %.not163, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28374

bb.l:                                             ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !28360
  %i.dh = load i32, ptr %i.dg, align 4, !dbg !28360, !noundef !14
  %i.di = icmp eq i32 %i.dh, %i.w, !dbg !28360
  %.neg = add nuw i64 %.sroa.014.0142, 1, !dbg !28376 ; 2 uses
  %.not162 = icmp eq i64 %.sroa.0.0151, %.neg, !dbg !28376 ; 2 uses
  br i1 %i.di, label %bb.o, label %bb.n, !dbg !28360

bb.m:                                             ; preds = %.preheader
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #18, !dbg !28360
  unreachable, !dbg !28360

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next235 = add i64 %indvars.iv234, -1, !dbg !28377
  br i1 %.not162, label %.loopexit79, label %.preheader, !dbg !28377

bb.o:                                             ; preds = %bb.l
  br i1 %.not162, label %.loopexit79, label %.lr.ph144, !dbg !28378

.lr.ph144:                                        ; preds = %bb.o
  %i.dj = add nuw nsw i64 %.sroa.014.0142, 1      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !28378 ; 2 uses
  %i.dk = add i64 %indvar, %.sroa.014.0142, !dbg !28378
  %i.dl = sub i64 %i.u, %i.dk, !dbg !28378
  %umax = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dj), !dbg !28378
  %15 = xor i64 %.sroa.014.0142, -1, !dbg !28378
  %i.dm = add nsw i64 %umax, %15, !dbg !28378
  %umin = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dm), !dbg !28378
  %i.dn = add i64 %umin, 1, !dbg !28378           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dn, 9, !dbg !28378
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !28378

vector.ph:                                        ; preds = %.lr.ph144
  %i.do = and i64 %i.dn, 7                        ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = select i1 %i.dp, i64 8, i64 %i.do
  %n.vec = sub i64 %i.dn, %i.dq                   ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dj
  br label %vector.body, !dbg !28378

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28384 ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index, !dbg !28390 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16, !dbg !28390
  %wide.load = load <4 x i32>, ptr %i.ds, align 4, !dbg !28390
  %wide.load407 = load <4 x i32>, ptr %i.dt, align 4, !dbg !28390
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index, !dbg !28392 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16, !dbg !28392
  store <4 x i32> %wide.load, ptr %i.du, align 4, !dbg !28392
  store <4 x i32> %wide.load407, ptr %i.dv, align 4, !dbg !28392
  %index.next = add nuw i64 %index, 8, !dbg !28384 ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec, !dbg !28378
  br i1 %i.dw, label %scalar.ph.preheader, label %vector.body, !dbg !28378, !llvm.loop !28393

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph144
  %.sroa.057.0143.ph = phi i64 [ 0, %.lr.ph144 ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !28390

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %.sroa.057.0143 = phi i64 [ %i.ev, %bb.af ], [ %.sroa.057.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dx = add nuw nsw i64 %i.dj, %.sroa.057.0143, !dbg !28394 ; 3 uses
  %i.dy = icmp samesign ult i64 %i.dx, %7, !dbg !28390
  br i1 %i.dy, label %bb.af, label %bb.ae, !dbg !28390

.lr.ph150.preheader:                              ; preds = %bb.ad, %.loopexit79
  %.sroa.027.0.lcssa = phi i64 [ 0, %.loopexit79 ], [ %.sroa.027.1, %bb.ad ], !dbg !28395
  store i64 %.sroa.027.0.lcssa, ptr %i.b, align 8, !dbg !28396
  br label %.lr.ph150, !dbg !28397

.lr.ph147:                                        ; preds = %.loopexit79, %bb.ad
  %.sroa.014.1146 = phi i64 [ %i.eu, %bb.ad ], [ 0, %.loopexit79 ] ; 3 uses
  %.sroa.027.0145 = phi i64 [ %.sroa.027.1, %bb.ad ], [ 0, %.loopexit79 ] ; 9 uses
  %exitcond239.not = icmp eq i64 %.sroa.014.1146, %9, !dbg !28400
  br i1 %exitcond239.not, label %bb.s, label %bb.r, !dbg !28400

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.p
  %.sroa.059.0148 = phi i64 [ %i.dz, %bb.p ], [ 0, %.lr.ph150.preheader ] ; 3 uses
  %exitcond241.not = icmp eq i64 %.sroa.059.0148, %7, !dbg !28397
  br i1 %exitcond241.not, label %bb.q, label %bb.p, !dbg !28397

bb.p:                                             ; preds = %.lr.ph150
  %i.dz = add nuw nsw i64 %.sroa.059.0148, 1, !dbg !28401 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.059.0148, !dbg !28397
  %i.eb = load i32, ptr %i.ea, align 4, !dbg !28397, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.v, i32 noundef %i.eb, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28411
  %exitcond242.not = icmp eq i64 %i.dz, %indvars.iv, !dbg !28412
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph150, !dbg !28415

bb.q:                                             ; preds = %.lr.ph150
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #18, !dbg !28397
  unreachable, !dbg !28397

bb.r:                                             ; preds = %.lr.ph147
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.014.1146, !dbg !28400 ; 4 uses
  %.sroa.031.0.copyload = load i32, ptr %i.ec, align 4, !dbg !28400 ; 5 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 4, !dbg !28400
  %.sroa.434.0.copyload = load i32, ptr %.sroa.434.0..sroa_idx, align 4, !dbg !28400 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8, !dbg !28400
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !28400 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 12, !dbg !28400
  %.sroa.543.0.copyload = load float, ptr %.sroa.543.0..sroa_idx, align 4, !dbg !28400 ; 4 uses
  %i.ed = icmp eq i32 %.sroa.031.0.copyload, %i.v, !dbg !28416
  br i1 %i.ed, label %bb.ad, label %bb.t, !dbg !28416

bb.s:                                             ; preds = %.lr.ph147
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #18, !dbg !28400
  unreachable, !dbg !28400

bb.t:                                             ; preds = %bb.r
  %i.ee = icmp eq i32 %.sroa.434.0.copyload, %i.v, !dbg !28418
  %i.ef = icmp eq i32 %.sroa.031.0.copyload, %i.w
  %or.cond = or i1 %i.ef, %i.ee, !dbg !28418
  %i.eg = icmp eq i32 %.sroa.434.0.copyload, %i.w
  %or.cond1 = or i1 %i.eg, %or.cond, !dbg !28418
  br i1 %or.cond1, label %bb.ad, label %bb.u, !dbg !28418

bb.u:                                             ; preds = %bb.t
  %i.eh = load float, ptr %i.c, align 4, !dbg !28419, !noundef !14 ; 2 uses
  %i.ei = fcmp une float %i.eh, %.sroa.543.0.copyload, !dbg !28419
  br i1 %i.ei, label %.split, label %bb.v, !dbg !28419

.split:                                           ; preds = %bb.u
  %i.ej = fcmp ogt float %i.eh, %.sroa.543.0.copyload, !dbg !28422
  br i1 %i.ej, label %bb.x, label %bb.w, !dbg !28421

bb.v:                                             ; preds = %bb.u
  %i.ek = load i32, ptr %i.d, align 4, !dbg !28423, !noundef !14
  %i.el = load i32, ptr %8, align 4, !dbg !28424, !noundef !14
  %i.em = sub i32 %i.ek, %i.el, !dbg !28425
  %i.en = sub i32 %.sroa.434.0.copyload, %.sroa.031.0.copyload, !dbg !28428
  %i.eo = icmp ugt i32 %i.em, %i.en, !dbg !28423
  br i1 %i.eo, label %bb.x, label %bb.w, !dbg !28421

bb.w:                                             ; preds = %.split, %bb.v
  %i.ep = icmp ult i64 %.sroa.027.0145, %9, !dbg !28430
  br i1 %i.ep, label %bb.y, label %bb.z, !dbg !28430

bb.x:                                             ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !dbg !28431
  store i32 %.sroa.031.0.copyload, ptr %8, align 4, !dbg !28432
  store i32 %.sroa.434.0.copyload, ptr %i.d, align 4, !dbg !28432
  store i32 %.sroa.5.0.copyload, ptr %i.e, align 4, !dbg !28432
  store float %.sroa.543.0.copyload, ptr %i.c, align 4, !dbg !28432
  %i.eq = icmp ult i64 %.sroa.027.0145, %9, !dbg !28434
  br i1 %i.eq, label %bb.ab, label %bb.ac, !dbg !28434

bb.y:                                             ; preds = %bb.w
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28430 ; 4 uses
  store i32 %.sroa.031.0.copyload, ptr %i.er, align 4, !dbg !28430
  %.sroa.434.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.er, i64 4, !dbg !28430
  store i32 %.sroa.434.0.copyload, ptr %.sroa.434.0..sroa_idx37, align 4, !dbg !28430
  %.sroa.5.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !28430
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx41, align 4, !dbg !28430
  %.sroa.543.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.er, i64 12, !dbg !28430
  store float %.sroa.543.0.copyload, ptr %.sroa.543.0..sroa_idx46, align 4, !dbg !28430
  br label %bb.aa, !dbg !28435

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #18, !dbg !28430
  unreachable, !dbg !28430

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.es = add nuw i64 %.sroa.027.0145, 1, !dbg !28436
  br label %bb.ad, !dbg !28439

bb.ab:                                            ; preds = %bb.x
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.et, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !28434
  br label %bb.aa, !dbg !28435

bb.ac:                                            ; preds = %bb.x
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #18, !dbg !28434
  unreachable, !dbg !28434

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.aa
  %.sroa.027.1 = phi i64 [ %.sroa.027.0145, %bb.r ], [ %.sroa.027.0145, %bb.t ], [ %i.es, %bb.aa ], !dbg !28376 ; 2 uses
  %i.eu = add nuw nsw i64 %.sroa.014.1146, 1, !dbg !28440 ; 2 uses
  %exitcond240.not = icmp eq i64 %i.eu, %i.df, !dbg !28374
  br i1 %exitcond240.not, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28374

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dx, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #18, !dbg !28390
  unreachable, !dbg !28390

bb.af:                                            ; preds = %scalar.ph
  %i.ev = add nuw nsw i64 %.sroa.057.0143, 1, !dbg !28384 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dx, !dbg !28390
  %i.ex = load i32, ptr %i.ew, align 4, !dbg !28390, !noundef !14
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.057.0143, !dbg !28392
  store i32 %i.ex, ptr %gep, align 4, !dbg !28392
  %exitcond238.not = icmp eq i64 %i.ev, %indvars.iv234, !dbg !28442
  br i1 %exitcond238.not, label %.loopexit79, label %scalar.ph, !dbg !28378, !llvm.loop !28445

bb.ag:                                            ; preds = %.lr.ph141
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.055.0140, !dbg !28361 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !dbg !28361, !noundef !14
  %i.fa = icmp eq i32 %i.ez, %i.w, !dbg !28361
  br i1 %i.fa, label %bb.ai, label %bb.aj, !dbg !28361

bb.ah:                                            ; preds = %.lr.ph141
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #18, !dbg !28361
  unreachable, !dbg !28361

bb.ai:                                            ; preds = %bb.ag
  store i32 %i.v, ptr %i.ey, align 4, !dbg !28369
  br label %bb.aj, !dbg !28446

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %exitcond231.not = icmp eq i64 %i.dd, %11, !dbg !28447
  br i1 %exitcond231.not, label %.preheader.preheader, label %.lr.ph141, !dbg !28354, !llvm.loop !28450

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.al
  %.sroa.053.0137 = phi i64 [ %i.fb, %bb.al ], [ %i.l, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.053.0137, %7, !dbg !28451
  br i1 %exitcond.not, label %bb.am, label %bb.al, !dbg !28451

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.051.0138, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #18, !dbg !28264
  unreachable, !dbg !28264

bb.al:                                            ; preds = %.lr.ph.split
  %i.fb = add i64 %.sroa.053.0137, 1, !dbg !28452 ; 2 uses
  %i.fc = load i32, ptr %i.o, align 4, !dbg !28264, !noundef !14
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.053.0137, !dbg !28451
  %i.fe = load i32, ptr %i.fd, align 4, !dbg !28451, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.fc, i32 noundef %i.fe, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28458
end_hunk_5
begin_hunk_6_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.jb = trunc nuw i64 %i.ja to i1, !dbg !33269
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !33270
  %i.jd = load i64, ptr %i.jc, align 8, !dbg !33270, !range !5800, !noalias !33268, !noundef !14 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !33270 ; 2 uses
  br i1 %i.jb, label %bb.ck, label %bb.cl, !dbg !33269, !prof !168

bb.ck:                                            ; preds = %bb.cj
  %i.jf = load i64, ptr %i.je, align 8, !dbg !33271, !noalias !33268
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.jd, i64 %i.jf) #20, !dbg !33272, !noalias !33268
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.jg = load ptr, ptr %i.je, align 8, !dbg !33273, !noalias !33268, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33274, !noalias !33268
  store i64 %i.jd, ptr %i.d, align 8, !dbg !33275, !alias.scope !33259, !noalias !33162
  %i.jh = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !33275
  store ptr %i.jg, ptr %i.jh, align 8, !dbg !33275, !alias.scope !33259, !noalias !33162
  %i.ji = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !33275
  store i64 %.sroa.04.1.i108, ptr %i.ji, align 8, !dbg !33275, !alias.scope !33259, !noalias !33162
  %i.jj = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !33276, !noalias !33162 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !33279, !noalias !33162
  %i.jk = extractvalue { ptr, i64 } %i.jj, 0, !dbg !33280 ; 4 uses
  %i.jl = extractvalue { ptr, i64 } %i.jj, 1, !dbg !33280 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jk) ]
  %.not23.i110 = icmp ugt i64 %.val52.i105, %i.jl
  br i1 %.not23.i110, label %bb.cm, label %bb.cn, !dbg !33281, !prof !751

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val52.i105, i64 noundef %i.jl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #20
          to label %bb.cr unwind label %bb.cs, !dbg !33293, !noalias !33162

bb.cn:                                            ; preds = %bb.cl
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implmECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.jk, i64 noundef %.val52.i105, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val51.i104, i64 noundef %.val52.i105, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302)
          to label %bb.co unwind label %bb.cs, !dbg !33294, !noalias !33162

bb.co:                                            ; preds = %bb.cn
  store ptr %i.jk, ptr %i.ia, align 8, !dbg !33300, !alias.scope !33119, !noalias !33143
  store i64 %i.jl, ptr %i.ib, align 8, !dbg !33300, !alias.scope !33119, !noalias !33143
  br i1 %i.ip, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i111, label %bb.cp, !dbg !33304

bb.cp:                                            ; preds = %bb.co
  %i.jm = shl nuw nsw i64 %.val52.i105, 2, !dbg !33309
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val51.i104, i64 noundef range(i64 1, 0) %i.jm, i64 noundef 4) #19, !dbg !33312, !noalias !33162
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i111, !dbg !33317

bb.cq:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #18, !dbg !33251, !noalias !33162
  unreachable, !dbg !33251

bb.cr:                                            ; preds = %bb.cm, %bb.ce
  unreachable

bb.cs:                                            ; preds = %bb.cn, %bb.cm
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = icmp eq i64 %i.jl, 0, !dbg !33318
  br i1 %i.jo, label %common.resume, label %bb.ct, !dbg !33318

bb.ct:                                            ; preds = %bb.cs
  %i.jp = shl nuw nsw i64 %i.jl, 2, !dbg !33322
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jk, i64 noundef range(i64 1, 0) %i.jp, i64 noundef 4) #19, !dbg !33325, !noalias !33162
  br label %common.resume, !dbg !33330

bb.cu:                                            ; preds = %bb.ce
  %lpad.thr_comm.split-lp.i113 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = icmp eq i64 %i.io, 0, !dbg !33216
  br i1 %i.jq, label %common.resume, label %bb.cv, !dbg !33216

bb.cv:                                            ; preds = %bb.cu, %.thread71.i98
  %lpad.thr_comm.split-lp73.i100 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp72.i99, %.thread71.i98 ], [ %lpad.thr_comm.split-lp.i113, %bb.cu ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.in, i64 noundef range(i64 1, 0) %i.io, i64 noundef 1) #19, !dbg !33331, !noalias !33162
  br label %common.resume, !dbg !33336

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.is, i64 2184, !dbg !33337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.is, i8 0, i64 2184, i1 false), !dbg !33340, !noalias !33162
  store float 3.402000e+38, ptr %i.jr, align 8, !dbg !33337, !alias.scope !33342, !noalias !33162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !dbg !33345
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !33345
  store i64 64, ptr %.sroa.5139.0..sroa_idx, align 8, !dbg !33345
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !33345
  store i64 512, ptr %.sroa.6140.0..sroa_idx, align 8, !dbg !33345
  %.sroa.7141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !33345
  store i64 0, ptr %.sroa.7141.0..sroa_idx, align 8, !dbg !33345
  %.sroa.8142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !33345 ; 2 uses
  store i64 512, ptr %.sroa.8142.0..sroa_idx, align 8, !dbg !33345
  %.sroa.9143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !33345 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9143.0..sroa_idx, i8 0, i64 32, i1 false), !dbg !33345
  %.sroa.10144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 80, !dbg !33345
  store float 1.000000e+02, ptr %.sroa.10144.0..sroa_idx, align 8, !dbg !33345
  br i1 %.not, label %._crit_edge246, label %.lr.ph245, !dbg !33346

.lr.ph245:                                        ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.jt = getelementptr inbounds nuw i8, ptr %14, i64 176 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %14, i64 184 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %14, i64 240 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.jx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  br label %bb.cw, !dbg !33346

._crit_edge246:                                   ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %i.jy = load i64, ptr %i.u, align 8, !dbg !33352, !range !5797, !noundef !14
  %i.jz = trunc nuw i64 %i.jy to i1, !dbg !33353
  %i.ka = getelementptr inbounds nuw i8, ptr %14, i64 176, !dbg !32419
  %.val39 = load ptr, ptr %i.ka, align 8, !dbg !32419, !nonnull !14, !noundef !14 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %14, i64 184, !dbg !32419
  %.val40 = load i64, ptr %i.kb, align 8, !dbg !32419, !noundef !14 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 240, !dbg !32419 ; 2 uses
  br i1 %i.jz, label %bb.cx, label %bb.cy, !dbg !33353

bb.cw:                                            ; preds = %.lr.ph245, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.0.0244 = phi i64 [ %3, %.lr.ph245 ], [ %i.mt, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ] ; 2 uses
  %.sroa.05.0243 = phi i8 [ %5, %.lr.ph245 ], [ %.sroa.05.2, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ] ; 2 uses
  %.sroa.07.0242 = phi i8 [ %6, %.lr.ph245 ], [ %.sroa.07.2, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ] ; 2 uses
  %.sroa.019.0241 = phi i64 [ 0, %.lr.ph245 ], [ %i.kd, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ] ; 3 uses
  %i.kd = add nuw nsw i64 %.sroa.019.0241, 1, !dbg !33354 ; 2 uses
  %exitcond332.not = icmp eq i64 %.sroa.019.0241, %12, !dbg !33360
  br i1 %exitcond332.not, label %bb.dm, label %bb.dh, !dbg !33360

bb.cx:                                            ; preds = %._crit_edge246
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1c_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(200) %.sroa.5.0..sroa_idx, ptr noalias noundef nonnull %0, ptr noalias noundef align 8 dereferenceable(48) %14, ptr noalias noundef nonnull align 8 %.val39, i64 noundef %.val40, ptr noalias noundef align 8 dereferenceable(8) %i.kc, i1 noundef zeroext true), !dbg !33362
  br label %bb.cz, !dbg !33362

bb.cy:                                            ; preds = %._crit_edge246
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noalias noundef align 8 dereferenceable(48) %14, ptr noalias noundef nonnull align 8 %.val39, i64 noundef %.val40, ptr noalias noundef align 8 dereferenceable(8) %i.kc, i1 noundef zeroext true), !dbg !33364
  br label %bb.cz, !dbg !33364

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.val43 = load ptr, ptr %i.fv, align 8, !dbg !33366, !nonnull !14, !noundef !14
  %.val44 = load i64, ptr %i.gw, align 8, !dbg !33366, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(88) %i.t, ptr noalias noundef align 8 dereferenceable(48) %i.fu, ptr noalias noundef nonnull align 8 %.val43, i64 noundef %.val44, ptr noalias noundef align 8 dereferenceable(8) %i.fw, i1 noundef zeroext true), !dbg !33367
  %.val47 = load ptr, ptr %i.hu, align 8, !dbg !33368, !nonnull !14, !noundef !14
  %.val48 = load i64, ptr %i.iv, align 8, !dbg !33368, !noundef !14
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(88) %i.s, ptr noalias noundef align 8 dereferenceable(48) %i.ht, ptr noalias noundef nonnull align 8 %.val47, i64 noundef %.val48, ptr noalias noundef align 8 dereferenceable(8) %i.hv, i1 noundef zeroext true), !dbg !33369
  %i.ke = icmp ugt i64 %8, 1, !dbg !33370
  br i1 %i.ke, label %bb.da, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17MapStaticContextsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33370

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17MapStaticContextsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.loopexit.i, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !33371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !33372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !33373
  ret void, !dbg !33374

bb.da:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !33375), !dbg !33378
  call void @llvm.experimental.noalias.scope.decl(metadata !33379), !dbg !33378
  %i.kf = getelementptr inbounds nuw i8, ptr %14, i64 32, !dbg !33381
  %i.kg = load i64, ptr %i.kf, align 8, !dbg !33381, !alias.scope !33379, !noalias !33375, !noundef !14 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 224, !dbg !33384
  %i.ki = shl i64 %i.kg, 6, !dbg !33384           ; 3 uses
  store i64 %i.ki, ptr %i.kh, align 8, !dbg !33384, !alias.scope !33379, !noalias !33375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33385, !noalias !33389
  call void @llvm.experimental.noalias.scope.decl(metadata !33390), !dbg !33393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33395, !noalias !33399
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ki, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !33395, !noalias !33399
  %i.kj = load i64, ptr %i.a, align 8, !dbg !33395, !range !5797, !noalias !33399, !noundef !14
  %i.kk = trunc nuw i64 %i.kj to i1, !dbg !33400
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !33401
  %i.km = load i64, ptr %i.kl, align 8, !dbg !33401, !range !5800, !noalias !33399, !noundef !14 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !33401 ; 2 uses
  br i1 %i.kk, label %bb.db, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !33400, !prof !168

bb.db:                                            ; preds = %bb.da
  %i.ko = load i64, ptr %i.kn, align 8, !dbg !33402, !noalias !33399
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.km, i64 %i.ko) #20, !dbg !33403, !noalias !33399
  unreachable

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.da
  %i.kp = load ptr, ptr %i.kn, align 8, !dbg !33404, !noalias !33399, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33405, !noalias !33399
  store i64 %i.km, ptr %i.b, align 8, !dbg !33406, !alias.scope !33390, !noalias !33389
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !33406
  store ptr %i.kp, ptr %i.kq, align 8, !dbg !33406, !alias.scope !33390, !noalias !33389
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !33406
  store i64 %i.ki, ptr %i.kr, align 8, !dbg !33406, !alias.scope !33390, !noalias !33389
  %i.ks = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !33407, !noalias !33389 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33410, !noalias !33389
  %i.kt = extractvalue { ptr, i64 } %i.ks, 0, !dbg !33411 ; 5 uses
  %i.ku = extractvalue { ptr, i64 } %i.ks, 1, !dbg !33411 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 144, !dbg !33412 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !dbg !33412, !alias.scope !33379, !noalias !33375, !nonnull !14, !align !791, !noundef !14
  %i.kx = getelementptr inbounds nuw i8, ptr %14, i64 152, !dbg !33412 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !dbg !33412, !alias.scope !33379, !noalias !33375, !noundef !14 ; 2 uses
  store ptr %i.kt, ptr %i.kv, align 8, !dbg !33416, !alias.scope !33379, !noalias !33375
  store i64 %i.ku, ptr %i.kx, align 8, !dbg !33416, !alias.scope !33379, !noalias !33375
  %i.kz = icmp eq i64 %i.ky, 0, !dbg !33418
  br i1 %i.kz, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116, label %bb.dc, !dbg !33418

bb.dc:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.la = shl nuw nsw i64 %i.ky, 2, !dbg !33423
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.kw, i64 noundef range(i64 1, 0) %i.la, i64 noundef 4) #19, !dbg !33426, !noalias !33389
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116, !dbg !33431

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116: ; preds = %bb.dc, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  %.not.i117 = icmp eq i64 %i.kg, 0, !dbg !33432
  br i1 %.not.i117, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17MapStaticContextsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i, !dbg !33441

.loopexit.i:                                      ; preds = %bb.df
  %exitcond9.not.i = icmp eq i64 %18, %i.kg, !dbg !33432
  br i1 %exitcond9.not.i, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock17MapStaticContextsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i, !dbg !33441

.lr.ph.i:                                         ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116, %.loopexit.i
  %.sroa.03.04.i = phi i64 [ %18, %.loopexit.i ], [ 0, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i116 ] ; 5 uses
  %15 = shl i64 %.sroa.03.04.i, 6, !dbg !33442
  %umax = call i64 @llvm.umax.i64(i64 %i.ku, i64 %15), !dbg !33442
  %16 = shl i64 %.sroa.03.04.i, 6, !dbg !33442
  %17 = sub i64 %umax, %16, !dbg !33442
  %.fr = freeze i64 %17, !dbg !33442
  %umin = call i64 @llvm.umin.i64(i64 %.fr, i64 %10), !dbg !33442 ; 2 uses
  %18 = add nuw i64 %.sroa.03.04.i, 1, !dbg !33442 ; 2 uses
  %19 = mul i64 %.sroa.03.04.i, %8, !dbg !33448
  %20 = trunc i64 %19 to i32, !dbg !33452         ; 2 uses
  %21 = shl i64 %.sroa.03.04.i, 6                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 8, !dbg !33453
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !33453

vector.ph:                                        ; preds = %.lr.ph.i
  %umin542 = call i64 @llvm.umin.i64(i64 %umin, i64 63), !dbg !33442
  %i.lb = add nuw nsw i64 %umin542, 1, !dbg !33442 ; 2 uses
  %i.lc = and i64 %i.lb, 7                        ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 0
  %i.le = select i1 %i.ld, i64 8, i64 %i.lc
  %n.vec = sub nsw i64 %i.lb, %i.le               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kt) ]
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %20, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.kt, i64 %21, !dbg !33453
  br label %vector.body, !dbg !33453

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !33460 ; 3 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index, !dbg !33466 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16, !dbg !33466
  %wide.load = load <4 x i32>, ptr %i.lf, align 4, !dbg !33466, !alias.scope !33375, !noalias !33379
  %wide.load543 = load <4 x i32>, ptr %i.lg, align 4, !dbg !33466, !alias.scope !33375, !noalias !33379
  %i.lh = add <4 x i32> %wide.load, %broadcast.splat, !dbg !33468
  %i.li = add <4 x i32> %wide.load543, %broadcast.splat, !dbg !33468
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index, !dbg !33471 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %gep, i64 16, !dbg !33471
  store <4 x i32> %i.lh, ptr %gep, align 4, !dbg !33471, !noalias !33389
  store <4 x i32> %i.li, ptr %i.lj, align 4, !dbg !33471, !noalias !33389
  %index.next = add nuw i64 %index, 8, !dbg !33460 ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec, !dbg !33453
  br i1 %i.lk, label %scalar.ph.preheader, label %vector.body, !dbg !33453, !llvm.loop !33472

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.05.03.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !33466

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.df
  %.sroa.05.03.i = phi i64 [ %i.ll, %bb.df ], [ %.sroa.05.03.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ll = add nuw nsw i64 %.sroa.05.03.i, 1, !dbg !33460 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.05.03.i, %10, !dbg !33466
  br i1 %exitcond.not.i, label %bb.de, label %bb.dd, !dbg !33466

bb.dd:                                            ; preds = %scalar.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kt) ]
  %i.lm = add nuw nsw i64 %.sroa.05.03.i, %21, !dbg !33473 ; 3 uses
  %i.ln = icmp ult i64 %i.lm, %i.ku, !dbg !33471
  br i1 %i.ln, label %bb.df, label %bb.dg, !dbg !33471

bb.de:                                            ; preds = %scalar.ph
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 2305843009213693952) %10, i64 noundef range(i64 0, 2305843009213693952) %10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #18, !dbg !33466, !noalias !33389
  unreachable, !dbg !33466

bb.df:                                            ; preds = %bb.dd
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %.sroa.05.03.i, !dbg !33466
  %i.lp = load i32, ptr %i.lo, align 4, !dbg !33466, !alias.scope !33375, !noalias !33379, !noundef !14
  %i.lq = add i32 %i.lp, %20, !dbg !33468
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.lm, !dbg !33471
  store i32 %i.lq, ptr %i.lr, align 4, !dbg !33471, !noalias !33389
  %exitcond8.not.i = icmp eq i64 %i.ll, 64, !dbg !33476
  br i1 %exitcond8.not.i, label %.loopexit.i, label %scalar.ph, !dbg !33453, !llvm.loop !33479

bb.dg:                                            ; preds = %bb.dd
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.lm, i64 noundef %i.ku, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #18, !dbg !33471, !noalias !33389
  unreachable, !dbg !33471

bb.dh:                                            ; preds = %bb.cw
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.sroa.019.0241, !dbg !33360 ; 4 uses
  %i.lt = load i32, ptr %i.ls, align 4, !dbg !33360, !noundef !14 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 4, !dbg !33360
  %i.lv = load i32, ptr %i.lu, align 4, !dbg !33360, !noundef !14
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 12, !dbg !33360
  %i.lx = load i16, ptr %i.lw, align 4, !dbg !33360, !noundef !14 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 14, !dbg !33360
  %i.lz = load i16, ptr %i.ly, align 2, !dbg !33360, !noundef !14
  %.val41 = load ptr, ptr %i.fv, align 8, !dbg !33480, !nonnull !14, !noundef !14 ; 2 uses
  %.val42 = load i64, ptr %i.gw, align 8, !dbg !33480, !noundef !14 ; 3 uses
  %i.ma = zext i16 %i.lx to i64, !dbg !33483      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33484), !dbg !33487
  call void @llvm.experimental.noalias.scope.decl(metadata !33488), !dbg !33487
  %i.mb = load i64, ptr %i.js, align 8, !dbg !33490, !alias.scope !33484, !noalias !33493, !noundef !14 ; 3 uses
  %i.mc = icmp ult i64 %i.mb, %.val42, !dbg !33496
  br i1 %i.mc, label %bb.di, label %bb.dk, !dbg !33496

bb.di:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !33497), !dbg !33500
  %i.md = icmp ult i16 %i.lx, 704, !dbg !33501
  br i1 %i.md, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.dj, !dbg !33501

bb.dj:                                            ; preds = %bb.di
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.ma, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #18, !dbg !33501, !noalias !33503
  unreachable, !dbg !33501

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.di
  %i.me = getelementptr inbounds nuw [2832 x i8], ptr %.val41, i64 %i.mb, !dbg !33504 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.ma, !dbg !33505 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !dbg !33506, !alias.scope !33507, !noalias !33508, !noundef !14
  %i.mh = add i32 %i.mg, 1, !dbg !33509
  store i32 %i.mh, ptr %i.mf, align 4, !dbg !33511, !alias.scope !33507, !noalias !33508
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 2816, !dbg !33512 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !dbg !33512, !alias.scope !33514, !noalias !33508, !noundef !14
  %i.mk = add i64 %i.mj, 1, !dbg !33517
  store i64 %i.mk, ptr %i.mi, align 8, !dbg !33519, !alias.scope !33521, !noalias !33508
  %i.ml = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !33524, !alias.scope !33484, !noalias !33493, !noundef !14
  %i.mm = add i64 %i.ml, 1, !dbg !33525           ; 2 uses
  store i64 %i.mm, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !33528, !alias.scope !33484, !noalias !33493
  %i.mn = load i64, ptr %.sroa.8135.0..sroa_idx, align 8, !dbg !33529, !alias.scope !33484, !noalias !33493, !noundef !14
  %i.mo = icmp eq i64 %i.mm, %i.mn, !dbg !33530
  br i1 %i.mo, label %bb.dl, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33530

bb.dk:                                            ; preds = %bb.dh
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.mb, i64 noundef range(i64 0, 3256840408493919) %.val42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #18, !dbg !33496, !noalias !33531
  unreachable, !dbg !33496

bb.dl:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fu, ptr noalias noundef nonnull align 8 %.val41, i64 noundef range(i64 0, 3256840408493919) %.val42, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fw, i1 noundef zeroext false), !dbg !33532
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33532

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.dl
  %i.mp = icmp eq i32 %i.lt, 0, !dbg !33533
  br i1 %i.mp, label %._crit_edge237, label %.lr.ph236.preheader, !dbg !33533

.lr.ph236.preheader:                              ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %i.mq = zext i32 %i.lt to i64, !dbg !33534
  br label %.lr.ph236, !dbg !33535

bb.dm:                                            ; preds = %bb.cw
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %12, i64 noundef %12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #18, !dbg !33360
  unreachable, !dbg !33360

._crit_edge237:                                   ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.07.1.lcssa = phi i8 [ %.sroa.07.0242, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.05.1234, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ]
  %.sroa.05.1.lcssa = phi i8 [ %.sroa.05.0243, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.nz, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ]
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.0244, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.pk, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ]
  %i.mr = and i32 %i.lv, 33554431, !dbg !33536    ; 2 uses
  %i.ms = zext nneg i32 %i.mr to i64, !dbg !33539
  %i.mt = add i64 %.sroa.0.1.lcssa, %i.ms, !dbg !33540 ; 3 uses
  %i.mu = icmp eq i32 %i.mr, 0, !dbg !33542
  br i1 %i.mu, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.dn, !dbg !33542

.lr.ph236:                                        ; preds = %.lr.ph236.preheader, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.0.1235 = phi i64 [ %i.pk, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.0.0244, %.lr.ph236.preheader ] ; 2 uses
  %.sroa.05.1234 = phi i8 [ %i.nz, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.05.0243, %.lr.ph236.preheader ] ; 6 uses
  %.sroa.07.1233 = phi i8 [ %.sroa.05.1234, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %.sroa.07.0242, %.lr.ph236.preheader ] ; 2 uses
  %.sroa.015.0232 = phi i64 [ %i.pl, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.mq, %.lr.ph236.preheader ]
  %i.mv = and i64 %.sroa.0.1235, %4, !dbg !33543  ; 3 uses
  %i.mw = icmp samesign ult i64 %i.mv, %2, !dbg !33535
  br i1 %i.mw, label %bb.dx, label %bb.dy, !dbg !33535

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.dw, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.dq, %._crit_edge237
  %.sroa.07.2 = phi i8 [ %.sroa.07.1.lcssa, %._crit_edge237 ], [ %i.nb, %bb.dq ], [ %i.nb, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.nb, %bb.dw ]
  %.sroa.05.2 = phi i8 [ %.sroa.05.1.lcssa, %._crit_edge237 ], [ %i.ng, %bb.dq ], [ %i.ng, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.ng, %bb.dw ]
  %exitcond333.not = icmp eq i64 %i.kd, %13, !dbg !33544
  br i1 %exitcond333.not, label %._crit_edge246, label %bb.cw, !dbg !33346

bb.dn:                                            ; preds = %._crit_edge237
  %i.mx = add i64 %i.mt, 4294967294, !dbg !33547
  %i.my = and i64 %i.mx, %4, !dbg !33550          ; 3 uses
  %i.mz = icmp samesign ult i64 %i.my, %2, !dbg !33551
  br i1 %i.mz, label %bb.do, label %bb.dp, !dbg !33551

bb.do:                                            ; preds = %bb.dn
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 %i.my, !dbg !33551
  %i.nb = load i8, ptr %i.na, align 1, !dbg !33551, !noundef !14 ; 3 uses
  %i.nc = add i64 %i.mt, 4294967295, !dbg !33552
  %i.nd = and i64 %i.nc, %4, !dbg !33554          ; 3 uses
  %i.ne = icmp samesign ult i64 %i.nd, %2, !dbg !33555
  br i1 %i.ne, label %bb.dq, label %bb.dr, !dbg !33555

bb.dp:                                            ; preds = %bb.dn
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.my, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #18, !dbg !33551
  unreachable, !dbg !33551

bb.dq:                                            ; preds = %bb.do
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 %i.nd, !dbg !33555
  %i.ng = load i8, ptr %i.nf, align 1, !dbg !33555, !noundef !14 ; 3 uses
  %i.nh = icmp ugt i16 %i.lx, 127, !dbg !33556
  br i1 %i.nh, label %bb.ds, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33556

bb.dr:                                            ; preds = %bb.do
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.nd, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #18, !dbg !33555
  unreachable, !dbg !33555

bb.ds:                                            ; preds = %bb.dq
  %.val45 = load ptr, ptr %i.hu, align 8, !dbg !33557, !nonnull !14, !noundef !14 ; 2 uses
  %.val46 = load i64, ptr %i.iv, align 8, !dbg !33557, !noundef !14 ; 3 uses
  %i.ni = and i16 %i.lz, 1023, !dbg !33558        ; 2 uses
  %i.nj = zext nneg i16 %i.ni to i64, !dbg !33558 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33559), !dbg !33562
  call void @llvm.experimental.noalias.scope.decl(metadata !33563), !dbg !33562
  %i.nk = load i64, ptr %i.jx, align 8, !dbg !33565, !alias.scope !33559, !noalias !33568, !noundef !14 ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %.val46, !dbg !33571
  br i1 %i.nl, label %bb.dt, label %bb.dv, !dbg !33571

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !33572), !dbg !33575
  %i.nm = icmp samesign ult i16 %i.ni, 544, !dbg !33576
  br i1 %i.nm, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.du, !dbg !33576

bb.du:                                            ; preds = %bb.dt
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 1024) %i.nj, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #18, !dbg !33576, !noalias !33578
  unreachable, !dbg !33576

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.dt
  %i.nn = getelementptr inbounds nuw [2192 x i8], ptr %.val45, i64 %i.nk, !dbg !33579 ; 2 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nj, !dbg !33580 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !dbg !33581, !alias.scope !33582, !noalias !33583, !noundef !14
  %i.nq = add i32 %i.np, 1, !dbg !33584
  store i32 %i.nq, ptr %i.no, align 4, !dbg !33586, !alias.scope !33582, !noalias !33583
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 2176, !dbg !33587 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !dbg !33587, !alias.scope !33589, !noalias !33583, !noundef !14
  %i.nt = add i64 %i.ns, 1, !dbg !33592
  store i64 %i.nt, ptr %i.nr, align 8, !dbg !33594, !alias.scope !33596, !noalias !33583
  %i.nu = load i64, ptr %.sroa.9143.0..sroa_idx, align 8, !dbg !33599, !alias.scope !33559, !noalias !33568, !noundef !14
  %i.nv = add i64 %i.nu, 1, !dbg !33600           ; 2 uses
  store i64 %i.nv, ptr %.sroa.9143.0..sroa_idx, align 8, !dbg !33603, !alias.scope !33559, !noalias !33568
  %i.nw = load i64, ptr %.sroa.8142.0..sroa_idx, align 8, !dbg !33604, !alias.scope !33559, !noalias !33568, !noundef !14
  %i.nx = icmp eq i64 %i.nv, %i.nw, !dbg !33605
  br i1 %i.nx, label %bb.dw, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33605

bb.dv:                                            ; preds = %bb.ds
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.nk, i64 noundef range(i64 0, 4207742717543238) %.val46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #18, !dbg !33571, !noalias !33606
  unreachable, !dbg !33571

bb.dw:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock24BlockSplitterFinishBlockNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ht, ptr noalias noundef nonnull align 8 %.val45, i64 noundef range(i64 0, 4207742717543238) %.val46, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hv, i1 noundef zeroext false), !dbg !33607
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock22BlockSplitterAddSymbolNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33607

bb.dx:                                            ; preds = %.lr.ph236
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 %i.mv, !dbg !33535
  %i.nz = load i8, ptr %i.ny, align 1, !dbg !33535, !noundef !14 ; 4 uses
  %i.oa = load i64, ptr %i.u, align 8, !dbg !33608, !range !5797, !noundef !14
  %i.ob = trunc nuw i64 %i.oa to i1, !dbg !33610
  br i1 %i.ob, label %bb.dz, label %bb.ee, !dbg !33610

bb.dy:                                            ; preds = %.lr.ph236
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.mv, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #18, !dbg !33535
  unreachable, !dbg !33535

bb.dz:                                            ; preds = %bb.dx
  switch i8 %7, label %default.unreachable [
    i8 0, label %bb.ea
    i8 1, label %bb.eb
    i8 2, label %bb.ec
    i8 3, label %bb.ed
  ], !dbg !33611

default.unreachable:                              ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.dz
  %i.oc = and i8 %.sroa.05.1234, 63, !dbg !33614
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram7Context.exit, !dbg !33615

bb.eb:                                            ; preds = %bb.dz
  %i.od = lshr i8 %.sroa.05.1234, 2, !dbg !33616
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram7Context.exit, !dbg !33617
end_hunk_6
