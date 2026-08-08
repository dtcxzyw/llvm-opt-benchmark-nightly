inline.NumInlined: 250
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB5_12BenchContext13compute_stats:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !210
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleEINtB4_18SpecFromIterNestedB12_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterB13_EE9from_iterB19_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am), !noalias !210
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !210, !nonnull !4, !noundef !4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !210, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !213
  store ptr %i.a, ptr %i.h, align 8, !noalias !213
  %i.bl = icmp samesign ult i64 %i.bk, 2
  br i1 %i.bl, label %_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sampleNtB4_16SampleCollection14sorted_samples.exit, label %bb.c, !prof !113

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2c_8adapters3map8map_foldRBQ_ooNCNvMs_BS_NtBS_16SampleCollection14total_duration0NCINvXsG_NtB2a_5accumoNtB4t_3Sum3sumINtB2W_3MapBF_B3w_EE0E0EBW_.exit.thread
  %i.bm = icmp samesign ult i64 %i.bk, 21
  br i1 %i.bm, label %bb.e, label %bb.d, !prof !113

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleNCINvMB6_SBT_20sort_unstable_by_keyNtNtNtB10_4time13fine_duration12FineDurationNCNvMs_BW_NtBW_16SampleCollection14sorted_samples0E0EB10_(ptr noalias noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sampleNtB4_16SampleCollection14sorted_samples.exit unwind label %bb.f, !noalias !210

bb.e:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleNCINvMB8_SB1m_20sort_unstable_by_keyNtNtNtB1t_4time13fine_duration12FineDurationNCNvMs_B1p_NtB1p_16SampleCollection14sorted_samples0E0EB1t_(ptr noalias noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 1152921504606846976) %i.bk, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sampleNtB4_16SampleCollection14sorted_samples.exit unwind label %bb.f, !noalias !210

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #22
          to label %common.resume unwind label %bb.g, !noalias !210

bb.g:                                             ; preds = %bb.f
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !210
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.bk, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.pn, %bb.bk ], [ %i.bn, %bb.f ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sampleNtB4_16SampleCollection14sorted_samples.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2c_8adapters3map8map_foldRBQ_ooNCNvMs_BS_NtBS_16SampleCollection14total_duration0NCINvXsG_NtB2a_5accumoNtB4t_3Sum3sumINtB2W_3MapBF_B3w_EE0E0EBW_.exit.thread, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !210
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !noundef !4 ; 8 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.thread.thread, label %bb.h

bb.h:                                             ; preds = %_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sampleNtB4_16SampleCollection14sorted_samples.exit
  %i.bu = and i64 %i.bs, 1
  %.not486 = icmp eq i64 %i.bu, 0                 ; 2 uses
  %i.bv = lshr i64 %i.bs, 1                       ; 2 uses
  br i1 %.not486, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bw = add nsw i64 %i.bv, -1                   ; 4 uses
  %i.bx = icmp ugt i64 %i.bw, %i.bs
  br i1 %i.bx, label %.invoke, label %bb.j, !prof !78

bb.j:                                             ; preds = %bb.i
  %i.by = sub nuw nsw i64 %i.bs, %i.bw            ; 2 uses
  %i.bz = icmp samesign ugt i64 %i.by, 1
  br i1 %i.bz, label %bb.k, label %.invoke, !prof !113

.invoke:                                          ; preds = %bb.j, %bb.i
  %i.ca = phi i64 [ %i.bw, %bb.i ], [ 0, %bb.j ]
  %i.cb = phi i64 [ %i.bs, %bb.i ], [ 2, %bb.j ]
  %i.cc = phi i64 [ %i.bs, %bb.i ], [ %i.by, %bb.j ]
  %i.cd = phi ptr [ @2, %bb.i ], [ @1, %bb.j ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ca, i64 noundef %i.cb, i64 noundef %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i.i216
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i197
  %lpad.loopexit323 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i.i.i178
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i159
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i139
  %lpad.loopexit331 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.r, %bb.t
  %lpad.loopexit336 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.l, %bb.n, %bb.o, %bb.p, %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit228.thread, %bb.bi, %bb.x, %bb.ae, %bb.al, %bb.as, %bb.ay, %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit323, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit326, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit328, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit331, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit333, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit336, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #22
          to label %common.resume unwind label %bb.bn

.thread.thread:                                   ; preds = %_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sampleNtB4_16SampleCollection14sorted_samples.exit
  store ptr %i.bq, ptr %i.z, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store i64 0, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %1, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %1, ptr %i.x, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.cf, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.bw, %bb.j ], [ %i.bv, %bb.h ]
  %.sroa.4.0.i.ph = phi i64 [ 2, %bb.j ], [ 1, %bb.h ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.sink ; 3 uses
  store ptr %i.cg, ptr %i.z, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store i64 %.sroa.4.0.i.ph, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %1, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %1, ptr %i.x, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.ci, align 8
  %i.cj = icmp eq i32 %i.ag, 0
  br i1 %i.cj, label %bb.l, label %.preheader.preheader

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  unreachable

.preheader.preheader:                             ; preds = %bb.k
  %i.ck = zext i32 %i.ag to i128                  ; 2 uses
  %i.cl = load ptr, ptr %i.bq, align 8, !nonnull !4, !align !36, !noundef !4
  %i.cm = load i128, ptr %i.cl, align 16, !noundef !4
  %i.cn = udiv i128 %i.cm, %i.ck
  %i.co = getelementptr [8 x i8], ptr %i.bq, i64 %i.bs
  %i.cp = getelementptr i8, ptr %i.co, i64 -8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !4, !align !36, !noundef !4
  %i.cr = load i128, ptr %i.cq, align 16, !noundef !4
  %i.cs = udiv i128 %i.cr, %i.ck
  %.val.i128 = load ptr, ptr %i.cg, align 8, !nonnull !4, !align !36, !noundef !4
  %i.ct = load i128, ptr %.val.i128, align 16, !noundef !4 ; 2 uses
  br i1 %.not486, label %.preheader.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2d_8adapters3map8map_foldRBQ_ooNCNvMs4_NtBX_5benchNtB3F_12BenchContext13compute_statss2_0NCINvXsG_NtB2b_5accumoNtB4C_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBX_.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.val.i128.1 = load ptr, ptr %i.cu, align 8, !nonnull !4, !align !36, !noundef !4
  %i.cv = load i128, ptr %.val.i128.1, align 16, !noundef !4
  %i.cw = add i128 %i.cv, %i.ct
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2d_8adapters3map8map_foldRBQ_ooNCNvMs4_NtBX_5benchNtB3F_12BenchContext13compute_statss2_0NCINvXsG_NtB2b_5accumoNtB4C_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBX_.exit

bb.n:                                             ; preds = %.thread.thread, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2d_8adapters3map8map_foldRBQ_ooNCNvMs4_NtBX_5benchNtB3F_12BenchContext13compute_statss2_0NCINvXsG_NtB2b_5accumoNtB4C_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBX_.exit
  %.sroa.06.0416 = phi i128 [ %i.cs, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2d_8adapters3map8map_foldRBQ_ooNCNvMs4_NtBX_5benchNtB3F_12BenchContext13compute_statss2_0NCINvXsG_NtB2b_5accumoNtB4C_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBX_.exit ], [ 0, %.thread.thread ]
  %.sroa.02.0230415 = phi i128 [ %i.cn, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2d_8adapters3map8map_foldRBQ_ooNCNvMs4_NtBX_5benchNtB3F_12BenchContext13compute_statss2_0NCINvXsG_NtB2b_5accumoNtB4C_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBX_.exit ], [ 0, %.thread.thread ]
  %.sroa.4.0.i407414 = phi double [ %i.db, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2d_8adapters3map8map_foldRBQ_ooNCNvMs4_NtBX_5benchNtB3F_12BenchContext13compute_statss2_0NCINvXsG_NtB2b_5accumoNtB4C_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBX_.exit ], [ 1.000000e+00, %.thread.thread ]
  %i.cx = phi ptr [ %i.ch, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2d_8adapters3map8map_foldRBQ_ooNCNvMs4_NtBX_5benchNtB3F_12BenchContext13compute_statss2_0NCINvXsG_NtB2b_5accumoNtB4C_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBX_.exit ], [ %i.ce, %.thread.thread ] ; 2 uses
  %.sroa.010.0 = phi i128 [ %i.da, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2d_8adapters3map8map_foldRBQ_ooNCNvMs4_NtBX_5benchNtB3F_12BenchContext13compute_statss2_0NCINvXsG_NtB2b_5accumoNtB4C_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBX_.exit ], [ 0, %.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.z, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RINvMsm_NtCs4NRVxsYgnAr_4core5arrayANtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter11any_counter16KnownCounterKindj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionINtNtBE_5stats8StatsSetyEEENCINvMB2f_B2c_10wrap_mut_1By_NCNvMs4_NtBE_5benchNtB4h_12BenchContext13compute_statss3_0E0EBE_(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.p, i32 noundef 50462976, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtB2d_8adapters3map8map_foldRBQ_ooNCNvMs4_NtBX_5benchNtB3F_12BenchContext13compute_statss2_0NCINvXsG_NtB2b_5accumoNtB4C_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBX_.exit: ; preds = %.preheader.1, %.preheader.preheader
  %.lcssa = phi i128 [ %i.ct, %.preheader.preheader ], [ %i.cw, %.preheader.1 ]
  %i.cy = zext i32 %i.ag to i128
  %2 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.4.0.i.ph, i1 true)
  %i.cz = zext nneg i64 %2 to i128
  %3 = lshr i128 %.lcssa, %i.cz
  %i.da = udiv i128 %3, %i.cy
  %i.db = uitofp nneg i64 %.sroa.4.0.i.ph to double
  br label %bb.n

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull align 8 dereferenceable(160) %i.p, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.y, ptr %i.v, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 7 uses
  store ptr %1, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.v, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXsX_NtCs4NRVxsYgnAr_4core5arrayAINtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5alloc10AllocTallyoEj4_NtNtB7_7default7Default7defaultBC_(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.n)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.t, ptr noundef nonnull align 16 dereferenceable(128) %i.n, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapmNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5alloc15ThreadAllocInfoE4iterB18_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.r

bb.r:                                             ; preds = %bb.bm, %bb.q
  %.sroa.014.0 = phi i128 [ 0, %bb.q ], [ %i.pq, %bb.bm ] ; 2 uses
  %.sroa.012.0 = phi i128 [ 0, %bb.q ], [ %i.ps, %bb.bm ] ; 2 uses
  %i.dd = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4ItermNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5alloc15ThreadAllocInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBP_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.de = extractvalue { ptr, ptr } %i.dd, 0
  %.not101 = icmp eq ptr %i.de, null
  br i1 %.not101, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = extractvalue { ptr, ptr } %i.dd, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  %i.dj = load i64, ptr %i.di, align 8, !noundef !4
  invoke void @_RNvMs6_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5allocINtB5_10AllocOpMapINtB5_10AllocTallyyEE12add_to_total(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.df, ptr noalias noundef nonnull align 16 dereferenceable(128) %i.t)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dk = uitofp i32 %i.ag to double              ; 2 uses
  store double %i.dk, ptr %i.r, align 8
  %i.dl = load i64, ptr %i.br, align 8, !noundef !4
  %.not102 = icmp eq i64 %i.dl, 0
  br i1 %.not102, label %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit151.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !4, !align !36, !noundef !4
  %.val122 = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %.val123 = load ptr, ptr %i.dc, align 8         ; 5 uses
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = load ptr, ptr %.val122, align 8, !noalias !216, !nonnull !4, !align !6, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !nonnull !4, !noundef !4
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.do, %i.ds                    ; 2 uses
  %i.du = icmp ugt i64 %i.dt, 68719476735
  br i1 %i.du, label %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dv = lshr i64 %i.dt, 4
  %i.dw = trunc nuw i64 %i.dv to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val123) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !216
  store i32 %i.dw, ptr %i.g, align 4, !noalias !216
  %i.dx = getelementptr inbounds nuw i8, ptr %.val123, i64 48
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !219, !noalias !222, !noundef !4
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread239, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.val123, i64 56
  %i.eb = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRmECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ea, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc131:                                        ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %.val123, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.ed = lshr i64 %i.eb, 57
  %i.ee = trunc nuw nsw i64 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %.val123, i64 32
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !230, !noalias !231, !noundef !4 ; 2 uses
  %i.eh = load ptr, ptr %i.ec, align 8, !alias.scope !230, !noalias !231, !nonnull !4, !noundef !4 ; 2 uses
  %i.ei = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %i.ej = shufflevector <16 x i8> %i.ei, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.noexc131
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc131 ], [ %i.fa, %bb.aa ]
  %.pn.i.i.i.i = phi i64 [ %i.eb, %.noexc131 ], [ %i.fb, %bb.aa ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.eg ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ek, align 1, !noalias !233 ; 2 uses
  %i.el = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.ej
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.em, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %bb.z
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.ez, %bb.z ], [ %i.em, %bb.y ] ; 3 uses
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = add i64 %.sroa.01.0.i.i.i.i, %i.eo
  %i.eq = and i64 %i.ep, %i.eg
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds [112 x i8], ptr %i.eh, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -112
  %i.eu = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownmINtB2_10EquivalentmE10equivalentCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.et)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc132:                                        ; preds = %.lr.ph.i.i.i
  br i1 %i.eu, label %bb.ab, label %bb.z, !prof !113

._crit_edge.i.i.i:                                ; preds = %bb.z, %bb.y
  %i.ev = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ew = bitcast <16 x i1> %i.ev to i16
  %i.ex = icmp eq i16 %i.ew, 0
  br i1 %i.ex, label %bb.aa, label %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread239, !prof !78

bb.z:                                             ; preds = %.noexc132
  %i.ey = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ez = and i16 %i.ey, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ez, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  %i.fa = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.fb = add i64 %.sroa.01.0.i.i.i.i, %i.fa
  br label %bb.y

_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread239: ; preds = %._crit_edge.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !216
  br label %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread

bb.ab:                                            ; preds = %.noexc132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !216
  %i.fc = getelementptr inbounds i8, ptr %i.es, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8, !noundef !4
  %i.fe = sitofp i64 %i.fd to double
  %i.ff = getelementptr inbounds i8, ptr %i.es, i64 -8
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !4
  %i.fh = sitofp i64 %i.fg to double
  br label %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread

_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread: ; preds = %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread239, %bb.v, %bb.ab
  %.pn.ph = phi double [ 0.000000e+00, %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread239 ], [ 0.000000e+00, %bb.v ], [ %i.fe, %bb.ab ] ; 4 uses
  %.sroa.031.0.ph = phi double [ 0.000000e+00, %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread239 ], [ 0.000000e+00, %bb.v ], [ %i.fh, %bb.ab ] ; 4 uses
  %.pr = load i64, ptr %i.br, align 8             ; 2 uses
  %.not104 = icmp eq i64 %.pr, 0
  br i1 %.not104, label %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit151.thread, label %bb.ac

bb.ac:                                            ; preds = %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit.thread
  %i.fi = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4
  %i.fj = getelementptr [8 x i8], ptr %i.fi, i64 %.pr
  %i.fk = getelementptr i8, ptr %i.fj, i64 -8
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !4, !align !36, !noundef !4
  %.val120 = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %.val121 = load ptr, ptr %i.dc, align 8         ; 5 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = load ptr, ptr %.val120, align 8, !noalias !236, !nonnull !4, !align !6, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !4, !noundef !4
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.fm, %i.fq                    ; 2 uses
  %i.fs = icmp ugt i64 %i.fr, 68719476735
  br i1 %i.fs, label %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit151.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ft = lshr i64 %i.fr, 4
  %i.fu = trunc nuw i64 %i.ft to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val121) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !236
  store i32 %i.fu, ptr %i.f, align 4, !noalias !236
  %i.fv = getelementptr inbounds nuw i8, ptr %.val121, i64 48
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !239, !noalias !242, !noundef !4
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %_RNCNvMs4_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5benchNtB7_12BenchContext13compute_statss4_0B9_.exit151.thread251, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fy = getelementptr inbounds nuw i8, ptr %.val121, i64 56
  %i.fz = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRmECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fy, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f)
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

end_hunk_0
begin_hunk_1_@_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5alloc15ThreadAllocInfoEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortRReNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB1P_9EntryTree12sort_by_attrs0_00E0EB1T_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i1 noundef zeroext, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecoE11extend_withCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i128 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRReNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2m_9EntryTree12sort_by_attrs0_00E0EB2q_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownmINtB2_10EquivalentmE10equivalentCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvMs2_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime6configNtB5_11SortingAttr19cmp_bench_arg_names(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2_9EntryTree11cmp_by_attr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i128(i128, i128) #10

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCs2AWtUsOyxgP_3std7process2id() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NvMs_NtNtCscdodAO9FK5_5alloc3ffi5c_strNtBa_7CString3newReNtB5_11SpecNewImpl13spec_new_impl(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i8 @instrument_hooks_set_executed_benchmark(ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCs4NRVxsYgnAr_4core5arrayANtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter11any_counter16KnownCounterKindj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionINtNtBE_5stats8StatsSetyEEENCINvMB2f_B2c_10wrap_mut_1By_NCNvMs4_NtBE_5benchNtB4h_12BenchContext13compute_statss3_0E0EBE_(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160), i32 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsX_NtCs4NRVxsYgnAr_4core5arrayAINtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5alloc10AllocTallyoEj4_NtNtB7_7default7Default7defaultBC_(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 16 captures(none) dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapmNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5alloc15ThreadAllocInfoE4iterB18_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4ItermNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5alloc15ThreadAllocInfoENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBP_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCs4NRVxsYgnAr_4core5arrayANtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5alloc7AllocOpj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtBC_5stats8StatsSetINtBA_10AllocTallydEEENCINvMB1O_B1L_10wrap_mut_1By_NCNvMs4_NtBC_5benchNtB3M_12BenchContext13compute_statssd_0E0EBC_(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 16 captures(address) dereferenceable(256), i32 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCs4NRVxsYgnAr_4core5arrayAINtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats8StatsSetINtNtBD_5alloc10AllocTallydEEj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitIB1D_IBz_dEEENCINvMB2j_B2g_10wrap_mut_1By_NvMs5_NtBD_5benchBy_9transposeE0EBD_(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 16 captures(address) dereferenceable(256), ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5allocINtB5_10AllocOpMapINtB5_10AllocTallyyEE12add_to_total(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef align 16 dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime7counter10collectionNtB4_10CounterSet13to_collection(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleEINtB4_18SpecFromIterNestedB12_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterB13_EE9from_iterB19_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_NtNtCs2AWtUsOyxgP_3std4sync7barrierNtB5_7Barrier4wait(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry7genericNtB2_17GenericBenchEntry12display_name(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipINtNtNtB1G_3str4iter5SplitB10_EEE9from_iterCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehReECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecoEINtB4_18SpecFromIterNestedoINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleENCNvNtNtB2Q_5divan8codspeed24collect_walltime_results0EE9from_iterB2Q_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs7wswy55wmNq_8codspeed5utils28running_with_codspeed_runner() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs7wswy55wmNq_8codspeed5utils15is_perf_enabled() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7wswy55wmNq_8codspeed16walltime_resultsNtB2_17WalltimeBenchmark28collect_raw_walltime_results(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i128 noundef range(i128 0, 2), i128) unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #16

; Function Attrs: nounwind
declare { i64, i32 } @llvm.x86.rdtscp() #16

; Function Attrs: nounwind
declare i64 @llvm.x86.rdtsc() #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 -1, i64 -9223372036854775808}
!4 = !{}
!5 = !{i64 1, i64 0}
!6 = !{i64 8}
!7 = !{!8, !10}
!8 = distinct !{!8, !9, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTree16sort_unstable_byNCNvMBz_Bx_12sort_by_attrs_0E0BD_: argument 0"}
!9 = distinct !{!9, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTree16sort_unstable_byNCNvMBz_Bx_12sort_by_attrs_0E0BD_"}
!10 = distinct !{!10, !9, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTree16sort_unstable_byNCNvMBz_Bx_12sort_by_attrs_0E0BD_: argument 1"}
!11 = !{i8 0, i8 3}
!12 = !{!13, !15, !8, !10}
!13 = distinct !{!13, !14, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB4_9EntryTree12sort_by_attrs_0B8_: argument 0"}
!14 = distinct !{!14, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB4_9EntryTree12sort_by_attrs_0B8_"}
!15 = distinct !{!15, !14, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB4_9EntryTree12sort_by_attrs_0B8_: argument 1"}
!16 = !{!13, !15}
!17 = !{i8 0, i8 2}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTree16sort_unstable_byNCNvMBz_Bx_12sort_by_attrs_0E0BD_: argument 0"}
!20 = distinct !{!20, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTree16sort_unstable_byNCNvMBz_Bx_12sort_by_attrs_0E0BD_"}
!21 = distinct !{!21, !20, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTree16sort_unstable_byNCNvMBz_Bx_12sort_by_attrs_0E0BD_: argument 1"}
!22 = !{!23, !25, !19, !21}
!23 = distinct !{!23, !24, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB4_9EntryTree12sort_by_attrs_0B8_: argument 0"}
!24 = distinct !{!24, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB4_9EntryTree12sort_by_attrs_0B8_"}
!25 = distinct !{!25, !24, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB4_9EntryTree12sort_by_attrs_0B8_: argument 1"}
!26 = !{!23, !25}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTree16sort_unstable_byNCNvMBz_Bx_12sort_by_attrs_0E0BD_: argument 0"}
!29 = distinct !{!29, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTree16sort_unstable_byNCNvMBz_Bx_12sort_by_attrs_0E0BD_"}
!30 = distinct !{!30, !29, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4tree9EntryTree16sort_unstable_byNCNvMBz_Bx_12sort_by_attrs_0E0BD_: argument 1"}
!31 = !{!32, !34, !28, !30}
!32 = distinct !{!32, !33, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB4_9EntryTree12sort_by_attrs_0B8_: argument 0"}
!33 = distinct !{!33, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB4_9EntryTree12sort_by_attrs_0B8_"}
!34 = distinct !{!34, !33, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB4_9EntryTree12sort_by_attrs_0B8_: argument 1"}
!35 = !{!32, !34}
!36 = !{i64 16}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!39 = distinct !{!39, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB1Z_9EntryTree12sort_by_attrs0_00E0EB23_: argument 0"}
!44 = distinct !{!44, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB1Z_9EntryTree12sort_by_attrs0_00E0EB23_"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB1Z_9EntryTree12sort_by_attrs0_00E0EB23_: argument 1"}
!47 = !{!43, !46}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRReNCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB27_9EntryTree12sort_by_attrs0_00E0EB2b_: argument 0"}
!50 = distinct !{!50, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRReNCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB27_9EntryTree12sort_by_attrs0_00E0EB2b_"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRReNCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB27_9EntryTree12sort_by_attrs0_00E0EB2b_: argument 1"}
!53 = !{!"branch_weights", i32 4001, i32 4000000}
!54 = !{!49, !52}
!55 = !{!56, !49}
!56 = distinct !{!56, !57, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!57 = distinct !{!57, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!58 = !{!59, !49}
!59 = distinct !{!59, !60, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!60 = distinct !{!60, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!61 = !{!62, !49}
!62 = distinct !{!62, !63, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!63 = distinct !{!63, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!64 = !{!65, !49}
!65 = distinct !{!65, !66, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!66 = distinct !{!66, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!67 = !{!68, !49}
!68 = distinct !{!68, !69, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!69 = distinct !{!69, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!70 = !{!71, !52}
!71 = distinct !{!71, !72, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!72 = distinct !{!72, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!73 = !{!71, !49}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = distinct !{!77, !76, !75}
!78 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!79 = !{!80, !82}
!80 = distinct !{!80, !81, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!81 = distinct !{!81, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!82 = distinct !{!82, !81, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 1"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRReNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2t_9EntryTree12sort_by_attrs0_00E0E0EB2x_: argument 0"}
!85 = distinct !{!85, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRReNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2t_9EntryTree12sort_by_attrs0_00E0E0EB2x_"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionRReNCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5entry4treeNtB2t_9EntryTree12sort_by_attrs0_00E0E0EB2x_: argument 1"}
!88 = !{!84, !87}
!89 = !{!90, !84}
!90 = distinct !{!90, !91, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!91 = distinct !{!91, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!92 = !{!93, !84}
!93 = distinct !{!93, !94, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!94 = distinct !{!94, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!95 = !{!96, !84}
!96 = distinct !{!96, !97, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!97 = distinct !{!97, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!98 = !{!99, !84}
!99 = distinct !{!99, !100, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!100 = distinct !{!100, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!101 = !{!102, !84}
!102 = distinct !{!102, !103, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!103 = distinct !{!103, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!104 = !{!105, !87}
!105 = distinct !{!105, !106, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime: argument 0"}
!106 = distinct !{!106, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateRReE13partition_oneCs4wrugdhLTku_30codspeed_divan_compat_walltime"}
!107 = !{!105, !84}
!108 = distinct !{!108, !75, !76}
!109 = distinct !{!109, !76, !75}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer13TimedOverheadE15get_or_try_initNCINvB2_11get_or_initNCNvMBV_NtBV_5Timer15bench_overheads0E0zEBZ_: argument 0"}
!112 = distinct !{!112, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timer13TimedOverheadE15get_or_try_initNCINvB2_11get_or_initNCNvMBV_NtBV_5Timer15bench_overheads0E0zEBZ_"}
!113 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start: argument 0"}
!116 = distinct !{!116, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start"}
!117 = !{i64 928090893274136}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp3end: argument 0"}
!120 = distinct !{!120, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp3end"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start: argument 0"}
!123 = distinct !{!123, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp3end: argument 0"}
!126 = distinct !{!126, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp3end"}
!127 = !{i64 9074479919545614}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time13fine_duration12FineDurationE15get_or_try_initNCINvB2_11get_or_initNCNvMNtBX_5timerNtB2Z_5Timer20sample_loop_overhead0E0zEBZ_: argument 0"}
!130 = distinct !{!130, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time13fine_duration12FineDurationE15get_or_try_initNCINvB2_11get_or_initNCNvMNtBX_5timerNtB2Z_5Timer20sample_loop_overhead0E0zEBZ_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start: argument 0"}
!133 = distinct !{!133, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp3end: argument 0"}
!136 = distinct !{!136, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp3end"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_RINvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB3_5Timer16measure_min_timeNCINvB2_27measure_alloc_info_overheadNCNvB2_28measure_tally_alloc_overhead0E0EB7_: argument 0"}
!139 = distinct !{!139, !"_RINvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB3_5Timer16measure_min_timeNCINvB2_27measure_alloc_info_overheadNCNvB2_28measure_tally_alloc_overhead0E0EB7_"}
!140 = !{!141, !138}
!141 = distinct !{!141, !142, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time13fine_duration12FineDurationE15get_or_try_initNCINvB2_11get_or_initNCNvMNtBX_5timerNtB2Z_5Timer20sample_loop_overhead0E0zEBZ_: argument 0"}
!142 = distinct !{!142, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time13fine_duration12FineDurationE15get_or_try_initNCINvB2_11get_or_initNCNvMNtBX_5timerNtB2Z_5Timer20sample_loop_overhead0E0zEBZ_"}
!143 = !{!144, !138}
!144 = distinct !{!144, !145, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start: argument 0"}
!145 = distinct !{!145, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start"}
!146 = !{!144}
!147 = !{!148, !138}
!148 = distinct !{!148, !149, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB4_5Timer28measure_tally_alloc_overhead0B8_: argument 0"}
!149 = distinct !{!149, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB4_5Timer28measure_tally_alloc_overhead0B8_"}
!150 = !{!148}
!151 = !{!152, !138}
!152 = distinct !{!152, !153, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp3end: argument 0"}
!153 = distinct !{!153, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp3end"}
!154 = !{!152}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_RINvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB3_5Timer27measure_alloc_info_overheadNCNvB2_28measure_tally_alloc_overhead0EB7_: argument 0"}
!157 = distinct !{!157, !"_RINvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB3_5Timer27measure_alloc_info_overheadNCNvB2_28measure_tally_alloc_overhead0EB7_"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_RINvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB3_5Timer16measure_min_timeNCINvB2_27measure_alloc_info_overheadNCNvB2_30measure_tally_dealloc_overhead0E0EB7_: argument 0"}
!160 = distinct !{!160, !"_RINvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB3_5Timer16measure_min_timeNCINvB2_27measure_alloc_info_overheadNCNvB2_30measure_tally_dealloc_overhead0E0EB7_"}
!161 = !{!162, !159}
!162 = distinct !{!162, !163, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time13fine_duration12FineDurationE15get_or_try_initNCINvB2_11get_or_initNCNvMNtBX_5timerNtB2Z_5Timer20sample_loop_overhead0E0zEBZ_: argument 0"}
!163 = distinct !{!163, !"_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time13fine_duration12FineDurationE15get_or_try_initNCINvB2_11get_or_initNCNvMNtBX_5timerNtB2Z_5Timer20sample_loop_overhead0E0zEBZ_"}
!164 = !{!165, !159}
!165 = distinct !{!165, !166, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start: argument 0"}
!166 = distinct !{!166, !"_RNvMs_NtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time9timestampNtB4_17UntaggedTimestamp5start"}
!167 = !{!165}
!168 = !{!169, !159}
!169 = distinct !{!169, !170, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB4_5Timer30measure_tally_dealloc_overhead0B8_: argument 0"}
!170 = distinct !{!170, !"_RNCNvMNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime4time5timerNtB4_5Timer30measure_tally_dealloc_overhead0B8_"}
!171 = !{!169}
!172 = !{!173, !159}
end_hunk_1
