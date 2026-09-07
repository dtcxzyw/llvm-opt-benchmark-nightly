Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB13_4LazyNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast12FmtTableDataE3getNvNvXNtB1P_7fmt_tblNtB2T_8FMT_DATANtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0B1T_:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_EEEB1f_.exit.i87.i.i.i: ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3501
  br label %.body88.i.i.i

bb.w:                                             ; preds = %bb.cb, %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast7fmt_tbl17get_strings_table.exit.i.i.i
  %.sroa.16.0303.i.i.i = phi i64 [ 0, %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast7fmt_tbl17get_strings_table.exit.i.i.i ], [ %spec.select.i.i.i, %bb.cb ] ; 4 uses
  %.sroa.018.0302.i.i.i = phi i64 [ -1, %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast7fmt_tbl17get_strings_table.exit.i.i.i ], [ %.sroa.018.3.i.i.i, %bb.cb ] ; 3 uses
  %.sroa.019.0301.i.i.i = phi i64 [ 0, %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast7fmt_tbl17get_strings_table.exit.i.i.i ], [ %i.bs, %bb.cb ]
  %.sroa.048.0300.i.i.i = phi i64 [ 0, %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast7fmt_tbl17get_strings_table.exit.i.i.i ], [ %i.ax, %bb.cb ]
  %i.ax = add nuw nsw i64 %.sroa.048.0300.i.i.i, 1 ; 2 uses
  %i.ay = icmp ult i64 %.sroa.16.0303.i.i.i, 8955
  br i1 %i.ay, label %bb.ak, label %.invoke.i.i.i

.body88.i.i.i:                                    ; preds = %bb.bx, %bb.bw, %bb.aw, %.body98.i.i.i, %.loopexit.split-lp.i.i.i, %.loopexit230.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_EEEB1f_.exit.i87.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body99.i.i.i, %.body98.i.i.i ], [ %i.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_EEEB1f_.exit.i87.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.aw ], [ %lpad.thr_comm.i.i.i, %bb.bx ], [ %lpad.thr_comm.i.i.i, %bb.bw ], [ %lpad.loopexit.i.i.i, %.loopexit230.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.sroa.037.3.i.i.i = phi i1 [ false, %.body98.i.i.i ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_EEEB1f_.exit.i87.i.i.i ], [ true, %bb.aw ], [ true, %bb.bx ], [ true, %bb.bw ], [ true, %.loopexit230.i.i.i ], [ %i.bb, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.sroa.036.2.i.i.i = phi i1 [ false, %.body98.i.i.i ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_EEEB1f_.exit.i87.i.i.i ], [ true, %bb.aw ], [ true, %bb.bx ], [ true, %bb.bw ], [ true, %.loopexit230.i.i.i ], [ true, %.loopexit.split-lp.i.i.i ]
  %i.az = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.az, label %bb.p, label %bb.x

bb.x:                                             ; preds = %.body88.i.i.i
  %i.ba = shl nuw i64 %.sroa.0.0.copyload.i.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %bb.p

.loopexit230.i.i.i:                               ; preds = %bb.ca, %bb.bv
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body88.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.av, %.invoke.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.thread398.i.i.i
  %i.bb = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.thread398.i.i.i ], [ true, %.invoke.i.i.i ], [ true, %bb.av ]
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body88.i.i.i

bb.y:                                             ; preds = %bb.t, %bb.r
  %.sroa.410.0.copyload.i.i.i.i = phi ptr [ %i.au, %bb.t ], [ %i.hw, %bb.r ] ; 3 uses
  %i.bc = icmp ult i64 %i.hy, 1152921504606846976
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.hy, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i90.i.i.i [
    i64 4936, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.i.i.i
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.thread398.i.i.i
  ]

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i90.i.i.i: ; preds = %bb.y
  %i.bd = shl nuw nsw i64 %i.hy, 3
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i.i.i.i, i64 noundef %i.bd, i64 noundef 8) #41, !noalias !3502
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.thread398.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.i.i.i: ; preds = %bb.y
  %.sroa.0137.0.copyload.i.i.i = load i64, ptr %i.c, align 8 ; 4 uses
  %.sroa.4138.0.copyload.i.i.i = load ptr, ptr %i.n, align 8 ; 5 uses
  %.sroa.6139.0.copyload.i.i.i = load i64, ptr %i.o, align 8 ; 9 uses
  %i.be = icmp ugt i64 %.sroa.0137.0.copyload.i.i.i, %.sroa.6139.0.copyload.i.i.i
  br i1 %i.be, label %bb.z, label %bb.af

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4138.0.copyload.i.i.i) ]
  %i.bf = icmp eq i64 %.sroa.6139.0.copyload.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread.i.i.i, label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread.i.i.i: ; preds = %bb.z
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4138.0.copyload.i.i.i, i64 noundef %.sroa.0137.0.copyload.i.i.i, i64 noundef range(i64 1, 9) 1) #41, !noalias !3503
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread402.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.bg = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.4138.0.copyload.i.i.i, i64 noundef %.sroa.0137.0.copyload.i.i.i, i64 noundef range(i64 1, 9) 1, i64 noundef range(i64 1, 0) %.sroa.6139.0.copyload.i.i.i) #41, !noalias !3503 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.6139.0.copyload.i.i.i) #46
          to label %bb.ac unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i, !noalias !3504

bb.ac:                                            ; preds = %bb.ab
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i: ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4138.0.copyload.i.i.i, i64 noundef %.sroa.0137.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !3504
  br label %.body98.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.thread398.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i90.i.i.i, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.thread.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10866) #46
          to label %bb.ad unwind label %.loopexit.split-lp.i.i.i

bb.ad:                                            ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread402.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.thread398.i.i.i, %bb.e
  unreachable

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread402.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i.i.i

.body98.i.i.i:                                    ; preds = %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i
  %eh.lpad-body99.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.ae ], [ %i.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i.i.i.i, i64 noundef 39488, i64 noundef 8) #41
  br label %.body88.i.i.i

bb.af:                                            ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.i.i.i
  %.sroa.410.0.copyload.i95.i.i.i = phi ptr [ %i.bg, %bb.aa ], [ %.sroa.4138.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAINtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast10FastStringKj14_Ej1348_EIBY_SB1x_EEEB1E_.exit.i.i.i ] ; 3 uses
  %i.bk = icmp sgt i64 %.sroa.6139.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %.sroa.6139.0.copyload.i.i.i, 4936
  br i1 %i.bl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not65.i.i.i = icmp eq ptr %.sroa.410.0.copyload.i95.i.i.i, null
  %i.bm = inttoptr i64 %.sroa.6139.0.copyload.i.i.i to ptr
  br i1 %.not65.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bn = icmp eq i64 %.sroa.6139.0.copyload.i.i.i, 0
  br i1 %i.bn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread402.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i101.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i101.i.i.i: ; preds = %bb.ah
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i95.i.i.i, i64 noundef %.sroa.6139.0.copyload.i.i.i, i64 noundef 1) #41, !noalias !3505
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread402.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.sroa.033.0204.i.i.i = phi ptr [ %.sroa.410.0.copyload.i95.i.i.i, %bb.af ], [ %i.bm, %bb.ag ] ; 2 uses
  %.not67.i.i.i = icmp eq ptr %.sroa.033.0204.i.i.i, null
  br i1 %.not67.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread402.i.i.i, label %bb.ai, !prof !33

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.i.i.i
  %i.bo = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.bo, label %_RNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB5_4LazyNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast12FmtTableDataE3getNvNvXNtBQ_7fmt_tblNtB1U_8FMT_DATANtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0BU_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = shl nuw i64 %.sroa.0.0.copyload.i.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RNCINvMNtCs8iezizh0UHa_11lazy_static4lazyINtB5_4LazyNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4fast12FmtTableDataE3getNvNvXNtBQ_7fmt_tblNtB1U_8FMT_DATANtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref23___static_ref_initializeE0BU_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread402.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i101.i.i.i, %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAhj1348_EIBY_ShEEECsf8MNnN4IDbl_8iced_x86.exit.thread.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10867) #46
          to label %bb.ad unwind label %bb.ae

bb.ak:                                            ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr @10871, i64 %.sroa.16.0303.i.i.i
  %i.br = load i8, ptr %i.bq, align 1, !noundef !21 ; 2 uses
  %i.bs = zext i8 %i.br to i64                    ; 4 uses
  %i.bt = add nuw nsw i64 %.sroa.16.0303.i.i.i, 1 ; 3 uses
  %i.bu = and i64 %i.bs, 2
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.al, label %bb.am

.invoke.i.i.i:                                    ; preds = %bb.as, %bb.ap, %bb.ao, %.preheader.i.i.i, %.preheader229.i.i.i, %bb.w, %bb.at, %bb.aq
  %i.bw = phi i64 [ 8955, %bb.at ], [ 8955, %bb.aq ], [ -1, %bb.ao ], [ %.sroa.16.2.i.i.i, %.preheader229.i.i.i ], [ %i.co, %bb.ap ], [ %.sroa.16.2.i.i.i, %.preheader.i.i.i ], [ %.sroa.16.0303.i.i.i, %bb.w ], [ %i.df, %bb.as ]
  %i.bx = phi i64 [ 8955, %bb.at ], [ 8955, %bb.aq ], [ 0, %bb.ao ], [ 8955, %.preheader229.i.i.i ], [ 1761, %bb.ap ], [ 8955, %.preheader.i.i.i ], [ 8955, %bb.w ], [ 1761, %bb.as ]
  %i.by = phi ptr [ @26, %bb.at ], [ @26, %bb.aq ], [ @10870, %bb.ao ], [ @26, %.preheader229.i.i.i ], [ @10868, %bb.ap ], [ @26, %.preheader.i.i.i ], [ @26, %bb.w ], [ @10869, %bb.as ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by) #46
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.bz = and i64 %i.bs, 1
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ca = and i64 %.sroa.019.0301.i.i.i, 1
  %i.cb = and i64 %i.bs, 1                        ; 2 uses
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.028.1.i.i.i = phi i64 [ %i.cb, %bb.am ], [ %i.bz, %bb.al ]
  %.sroa.021.1.i.i.i = phi i64 [ %i.bt, %bb.am ], [ -1, %bb.al ] ; 2 uses
  %.sroa.16.2.i.i.i = phi i64 [ %.sroa.018.0302.i.i.i, %bb.am ], [ %i.bt, %bb.al ] ; 7 uses
  %.not69.i.i.i = icmp eq i64 %.sroa.028.1.i.i.i, 0
  %i.cd = icmp ult i64 %.sroa.16.2.i.i.i, 8955    ; 2 uses
  br i1 %.not69.i.i.i, label %.preheader.i.i.i, label %.preheader229.i.i.i

.preheader229.i.i.i:                              ; preds = %bb.an
  br i1 %i.cd, label %.lr.ph.i.i.i, label %.invoke.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.an
  br i1 %i.cd, label %.lr.ph294.i.i.i, label %.invoke.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ce = load i64, ptr %i.j, align 8, !noundef !21 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 1152921504606846976
  call void @llvm.assume(i1 %i.cf)
  %.not68.i.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not68.i.i.i, label %.invoke.i.i.i, label %bb.by

.lr.ph294.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.aq
  %.sroa.16.3293.i.i.i = phi i64 [ %i.ci, %bb.aq ], [ %.sroa.16.2.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.043.0292.i.i.i = phi i32 [ %i.ct, %bb.aq ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %.sroa.045.0291.i.i.i = phi i32 [ %i.cu, %bb.aq ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr @10871, i64 %.sroa.16.3293.i.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !21 ; 2 uses
  %i.ci = add nuw nsw i64 %.sroa.16.3293.i.i.i, 1 ; 3 uses
  %i.cj = zext i8 %i.ch to i32                    ; 2 uses
  %i.ck = icmp sgt i8 %i.ch, -1
  br i1 %i.ck, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph294.i.i.i
  %i.cl = and i32 %.sroa.045.0291.i.i.i, 31
  %i.cm = shl i32 %i.cj, %i.cl
  %i.cn = or i32 %i.cm, %.sroa.043.0292.i.i.i     ; 2 uses
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = icmp ult i32 %i.cn, 1761
  br i1 %i.cp, label %bb.ar, label %.invoke.i.i.i

bb.aq:                                            ; preds = %.lr.ph294.i.i.i
  %i.cq = and i32 %i.cj, 127
  %i.cr = and i32 %.sroa.045.0291.i.i.i, 31
  %i.cs = shl i32 %i.cq, %i.cr
  %i.ct = or i32 %i.cs, %.sroa.043.0292.i.i.i
  %i.cu = add nuw nsw i32 %.sroa.045.0291.i.i.i, 7
  %exitcond358.not.i.i.i = icmp eq i64 %i.ci, 8955
  br i1 %exitcond358.not.i.i.i, label %.invoke.i.i.i, label %.lr.ph294.i.i.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload.i.i.i, i64 %i.co
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !21, !noundef !21
  br label %bb.bu

.lr.ph.i.i.i:                                     ; preds = %.preheader229.i.i.i, %bb.at
  %.sroa.16.4287.i.i.i = phi i64 [ %i.cz, %bb.at ], [ %.sroa.16.2.i.i.i, %.preheader229.i.i.i ] ; 2 uses
  %.sroa.038.0286.i.i.i = phi i32 [ %i.dk, %bb.at ], [ 0, %.preheader229.i.i.i ] ; 2 uses
  %.sroa.040.0285.i.i.i = phi i32 [ %i.dl, %bb.at ], [ 0, %.preheader229.i.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr @10871, i64 %.sroa.16.4287.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !21 ; 2 uses
  %i.cz = add nuw nsw i64 %.sroa.16.4287.i.i.i, 1 ; 3 uses
  %i.da = zext i8 %i.cy to i32                    ; 2 uses
  %i.db = icmp sgt i8 %i.cy, -1
  br i1 %i.db, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.dc = and i32 %.sroa.040.0285.i.i.i, 31
  %i.dd = shl i32 %i.da, %i.dc
  %i.de = or i32 %i.dd, %.sroa.038.0286.i.i.i     ; 2 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = icmp ult i32 %i.de, 1761
  br i1 %i.dg, label %bb.au, label %.invoke.i.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i
  %i.dh = and i32 %i.da, 127
  %i.di = and i32 %.sroa.040.0285.i.i.i, 31
  %i.dj = shl i32 %i.dh, %i.di
  %i.dk = or i32 %i.dj, %.sroa.038.0286.i.i.i
  %i.dl = add nuw nsw i32 %.sroa.040.0285.i.i.i, 7
  %exitcond.not.i.i.i = icmp eq i64 %i.cz, 8955
  br i1 %exitcond.not.i.i.i, label %.invoke.i.i.i, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload.i.i.i, i64 %i.df
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !21, !noundef !21 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.do = load i8, ptr %i.dn, align 1, !noundef !21 ; 20 uses
  %i.dp = zext i8 %i.do to i64                    ; 2 uses
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 4 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !3506
  %i.dr = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dq, i64 noundef range(i64 1, 9) 1) #41, !noalias !3506 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.dq) #46
          to label %bb.ad unwind label %.loopexit.split-lp.i.i.i

bb.aw:                                            ; preds = %.invoke461.i.i.i
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body88.i.i.i

bb.ax:                                            ; preds = %bb.au
  store i64 %i.dq, ptr %i.b, align 8
  store ptr %i.dr, ptr %i.an, align 8
  %i.dt = trunc i64 %i.dq to i8
  store i8 %i.dt, ptr %i.dr, align 1
  store i64 1, ptr %i.ao, align 8, !alias.scope !3507
  %i.du = icmp eq i8 %i.do, 0                     ; 2 uses
  br i1 %i.du, label %bb.ay, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #44
          to label %._RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i_crit_edge.i.i.i unwind label %bb.bw

._RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i_crit_edge.i.i.i: ; preds = %bb.ay
  %.pre.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !3508
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i: ; preds = %._RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i_crit_edge.i.i.i, %bb.ax
  %i.dv = phi ptr [ %.pre.i.i.i, %._RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i_crit_edge.i.i.i ], [ %i.dr, %bb.ax ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 118, ptr %i.dw, align 1
  store i64 2, ptr %i.ao, align 8, !alias.scope !3508
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3509)
  %i.dy = load i64, ptr %i.b, align 8, !range !22, !alias.scope !3510, !noalias !3511, !noundef !21
  %i.dz = add nsw i64 %i.dy, -2
  %i.ea = icmp ult i64 %i.dz, 19
  br i1 %i.ea, label %bb.az, label %bb.ba, !prof !26

bb.az:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 2, i64 noundef 19, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge.i.i.i unwind label %bb.bw

._crit_edge.i.i.i:                                ; preds = %bb.az
  %.pre360.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !3509, !noalias !3511
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i
  %i.eb = phi i64 [ %.pre360.i.i.i, %._crit_edge.i.i.i ], [ 2, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i ] ; 21 uses
  %i.ec = load ptr, ptr %i.an, align 8, !alias.scope !3509, !noalias !3511, !nonnull !21, !noundef !21 ; 20 uses
  %umin.i.i.i = call i64 @llvm.umin.i64(i64 %i.dp, i64 18)
  %i.ed = sub nuw nsw i64 19, %umin.i.i.i         ; 2 uses
  br i1 %i.du, label %.loopexit.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.val8.i.i.i.i.i.i.i.i.i = load i8, ptr %i.dx, align 1, !noalias !3512, !noundef !21
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb
  store i8 %.val8.i.i.i.i.i.i.i.i.i, ptr %i.ee, align 1, !noalias !3513
  %i.ef = add i64 %i.eb, 1                        ; 2 uses
  %i.eg = icmp eq i8 %i.do, 1
  br i1 %i.eg, label %.loopexit.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %.val8.i.i.i.i.i.i.1.i.i.i = load i8, ptr %i.eh, align 1, !noalias !3512, !noundef !21
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ef
  store i8 %.val8.i.i.i.i.i.i.1.i.i.i, ptr %i.ei, align 1, !noalias !3513
  %i.ej = add i64 %i.eb, 2                        ; 2 uses
  %i.ek = icmp eq i8 %i.do, 2
  br i1 %i.ek, label %.loopexit.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %.val8.i.i.i.i.i.i.2.i.i.i = load i8, ptr %i.el, align 1, !noalias !3512, !noundef !21
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ej
  store i8 %.val8.i.i.i.i.i.i.2.i.i.i, ptr %i.em, align 1, !noalias !3513
  %i.en = add i64 %i.eb, 3                        ; 2 uses
  %i.eo = icmp eq i8 %i.do, 3
  br i1 %i.eo, label %.loopexit.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %.val8.i.i.i.i.i.i.3.i.i.i = load i8, ptr %i.ep, align 1, !noalias !3512, !noundef !21
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.en
  store i8 %.val8.i.i.i.i.i.i.3.i.i.i, ptr %i.eq, align 1, !noalias !3513
  %i.er = add i64 %i.eb, 4                        ; 2 uses
  %i.es = icmp eq i8 %i.do, 4
  br i1 %i.es, label %.loopexit.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.et = getelementptr inbounds nuw i8, ptr %i.dn, i64 5
  %.val8.i.i.i.i.i.i.4.i.i.i = load i8, ptr %i.et, align 1, !noalias !3512, !noundef !21
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.er
  store i8 %.val8.i.i.i.i.i.i.4.i.i.i, ptr %i.eu, align 1, !noalias !3513
  %i.ev = add i64 %i.eb, 5                        ; 2 uses
  %i.ew = icmp eq i8 %i.do, 5
  br i1 %i.ew, label %.loopexit.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dn, i64 6
  %.val8.i.i.i.i.i.i.5.i.i.i = load i8, ptr %i.ex, align 1, !noalias !3512, !noundef !21
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ev
  store i8 %.val8.i.i.i.i.i.i.5.i.i.i, ptr %i.ey, align 1, !noalias !3513
  %i.ez = add i64 %i.eb, 6                        ; 2 uses
  %i.fa = icmp eq i8 %i.do, 6
  br i1 %i.fa, label %.loopexit.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dn, i64 7
  %.val8.i.i.i.i.i.i.6.i.i.i = load i8, ptr %i.fb, align 1, !noalias !3512, !noundef !21
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ez
  store i8 %.val8.i.i.i.i.i.i.6.i.i.i, ptr %i.fc, align 1, !noalias !3513
  %i.fd = add i64 %i.eb, 7                        ; 2 uses
  %i.fe = icmp eq i8 %i.do, 7
  br i1 %i.fe, label %.loopexit.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.val8.i.i.i.i.i.i.7.i.i.i = load i8, ptr %i.ff, align 1, !noalias !3512, !noundef !21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.fd
  store i8 %.val8.i.i.i.i.i.i.7.i.i.i, ptr %i.fg, align 1, !noalias !3513
  %i.fh = add i64 %i.eb, 8                        ; 2 uses
  %i.fi = icmp eq i8 %i.do, 8
  br i1 %i.fi, label %.loopexit.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  %.val8.i.i.i.i.i.i.8.i.i.i = load i8, ptr %i.fj, align 1, !noalias !3512, !noundef !21
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.fh
  store i8 %.val8.i.i.i.i.i.i.8.i.i.i, ptr %i.fk, align 1, !noalias !3513
  %i.fl = add i64 %i.eb, 9                        ; 2 uses
  %i.fm = icmp eq i8 %i.do, 9
  br i1 %i.fm, label %.loopexit.i.i.i.i.i, label %bb.bk
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl4read:bb.a
  %i.kx = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %.sroa.4.0..sroa_idx.i660 = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.fo, i64 96
  %.sroa.42274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.52275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %.sroa.62276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.kz = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %.sroa.42254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.52255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %.sroa.62256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %.sroa.50.0..sroa_idx1801 = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.sroa.77.0..sroa_idx1912 = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %.sroa.50.0..sroa_idx1797 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.77.0..sroa_idx1908 = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %.sroa.50.0..sroa_idx1799 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.77.0..sroa_idx1910 = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %.sroa.50.0..sroa_idx1793 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.77.0..sroa_idx1904 = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %.sroa.50.0..sroa_idx1791 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.sroa.77.0..sroa_idx1902 = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %.sroa.50.0..sroa_idx1777 = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.sroa.77.0..sroa_idx1888 = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  br label %bb.l

bb.e:                                             ; preds = %bb.aas
  %.sroa.0.0.copyload = load i64, ptr %i.gh, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx15058 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx15058, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 11 uses
  %i.la = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.la, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.lb = shl nuw i64 %.sroa.0.0.copyload, 4      ; 2 uses
  %i.lc = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.lc, label %.thread2319, label %bb.g

.thread2319:                                      ; preds = %bb.f
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, 9) 8) #41, !noalias !14337
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ld = shl nuw i64 %.sroa.7.0.copyload, 4      ; 2 uses
  %i.le = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.lb, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 1, 0) %i.ld) #41, !noalias !14337 ; 2 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.i, label %._crit_edge.i

bb.h:                                             ; preds = %bb.i
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2r_4SyncEL_EEEB1z_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.gh) #42
          to label %.body369 unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ld) #46
          to label %bb.j unwind label %bb.h, !noalias !14338

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !14338
  unreachable

bb.l:                                             ; preds = %.preheader, %bb.aas
  %.sroa.0.05722 = phi i64 [ -1, %.preheader ], [ %.sroa.0.1, %bb.aas ] ; 4 uses
  %.sroa.0114.05721 = phi i64 [ 0, %.preheader ], [ %i.li, %bb.aas ] ; 2 uses
  %.sroa.156.05720 = phi i64 [ 0, %.preheader ], [ %spec.select, %bb.aas ] ; 5 uses
  %i.li = add nuw nsw i64 %.sroa.0114.05721, 1    ; 2 uses
  %i.lj = icmp ult i64 %.sroa.156.05720, 13463
  br i1 %i.lj, label %bb.v, label %._crit_edge.i385.invoke

.body369:                                         ; preds = %.loopexit, %.split8625, %.split, %bb.do, %bb.dx, %bb.ef, %bb.ep, %bb.ex, %bb.fe, %bb.fl, %bb.fz, %bb.gf, %bb.gj, %bb.gw, %bb.hm, %bb.ic, %bb.iq, %bb.iu, %bb.jz, %bb.la, %bb.oi, %bb.ou, %bb.pb, %bb.pi, %bb.pv, %bb.qq, %bb.rz, %bb.sq, %bb.td, %bb.ua, %bb.vc, %bb.vw, %bb.wl, %bb.wy, %bb.xm, %bb.xx, %bb.yk, %bb.yt, %bb.yx, %bb.zf, %bb.zq, %bb.aak, %bb.aaq, %bb.uz, %bb.uy, %bb.rw, %bb.rv, %bb.qn, %bb.qm, %bb.yq, %.thread.i1351, %bb.wv, %bb.vt, %bb.ps, %bb.pf, %bb.oy, %bb.or, %bb.ki, %.body.i, %.thread.i767, %bb.in, %.thread.i673, %bb.gt, %bb.fi, %bb.em, %bb.ec, %bb.dl, %bb.dk, %bb.df, %bb.de, %bb.bw, %bb.bv, %bb.bl, %bb.bn, %bb.bo, %bb.bk, %bb.bh, %bb.bg, %bb.bb, %bb.ba, %bb.at, %bb.as, %bb.ox, %bb.yp, %.body5.i1361, %.body5.i777, %bb.pe, %bb.kh, %bb.oq, %.body5.i684, %bb.fh, %bb.ds, %bb.eb, %bb.el, %bb.vs, %bb.pr, %.body7.i, %bb.aaf, %bb.aah, %.body5.i1390, %.thread.i1380, %bb.xj, %.body5.i1338, %.thread.i1328, %bb.wi, %.body5.i990, %.thread.i980, %bb.of, %.body9.i942, %bb.nj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928, %bb.nm, %bb.nq, %.body9.i861, %bb.lt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i847, %bb.lw, %bb.lz, %.body9.i, %bb.jt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i, %bb.jw, %.body5.i754, %.thread.i744, %bb.hz, %.body5.i722, %.thread.i712, %bb.hj, %.body5.i, %.thread.i, %bb.fw, %bb.zt, %bb.zs, %bb.zn, %bb.zm, %bb.zi, %bb.zh, %bb.zc, %bb.zb, %.body291, %.body293, %.body329, %.body331, %.thread2558, %.body, %.thread2648, %.thread2497, %bb.aat, %.thread2361, %bb.am, %bb.al, %bb.q, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i371, %bb.h, %bb.n, %.body249
  %.pn246 = phi { ptr, i32 } [ %i.lr, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i371 ], [ %.pn2442368, %bb.aat ], [ %.pn244, %.body249 ], [ %i.lg, %bb.h ], [ %i.ln, %bb.n ], [ %i.lr, %bb.q ], [ %i.ot, %bb.al ], [ %i.ot, %bb.am ], [ %.pn2442368, %.thread2361 ], [ %i.bhc, %bb.xm ], [ %i.blc, %bb.zi ], [ %i.blt, %bb.zn ], [ %i.bjw, %bb.yk ], [ %i.bkx, %bb.zc ], [ %lpad.thr_comm.split-lp2689, %.body291 ], [ %lpad.thr_comm.split-lp2681, %.body293 ], [ %i.bfs, %bb.wl ], [ %i.ato, %bb.rv ], [ %.pn209.pn.ph, %.thread2648 ], [ %i.awt, %bb.td ], [ %lpad.thr_comm.split-lp, %.body331 ], [ %.pn.i862, %.body9.i861 ], [ %.pn228.pn.ph, %.thread2497 ], [ %.pn.i943, %.body9.i942 ], [ %i.agb, %bb.jz ], [ %i.adu, %bb.ic ], [ %i.yr, %bb.ex ], [ %i.acs, %bb.hm ], [ %i.aag, %bb.fz ], [ %i.bmq, %bb.aak ], [ %i.yl, %.body ], [ %.pn220.pn.pn.ph, %.thread2558 ], [ %lpad.thr_comm.split-lp2615, %.body329 ], [ %i.azr, %bb.ua ], [ %i.bif, %bb.xx ], [ %i.bkx, %bb.zb ], [ %i.blc, %bb.zh ], [ %i.blt, %bb.zm ], [ %i.bma, %bb.zs ], [ %i.bma, %bb.zt ], [ %i.zz, %bb.fw ], [ %i.aab, %.body5.i ], [ %i.zz, %.thread.i ], [ %i.acl, %bb.hj ], [ %i.acn, %.body5.i722 ], [ %i.acl, %.thread.i712 ], [ %i.adn, %bb.hz ], [ %i.adp, %.body5.i754 ], [ %i.adn, %.thread.i744 ], [ %.pn.i, %.body9.i ], [ %.pn.pn.pn57.i, %bb.jw ], [ %.pn.pn.pn57.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i ], [ %.pn.pn.pn57.i, %bb.jt ], [ %i.bco, %bb.uy ], [ %i.ahy, %bb.lz ], [ %.pn.pn.pn59.i, %bb.lw ], [ %.pn.pn.pn59.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i847 ], [ %.pn.pn.pn59.i, %bb.lt ], [ %i.bcs, %bb.vc ], [ %i.akw, %bb.nq ], [ %.pn.pn.pn59.i918, %bb.nm ], [ %.pn.pn.pn59.i918, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928 ], [ %.pn.pn.pn59.i918, %bb.nj ], [ %i.bcp, %bb.uz ], [ %i.alq, %bb.of ], [ %i.als, %.body5.i990 ], [ %i.alq, %.thread.i980 ], [ %i.alx, %bb.oi ], [ %i.aov, %bb.pv ], [ %i.aqn, %bb.qm ], [ %i.bfl, %bb.wi ], [ %i.bfn, %.body5.i1338 ], [ %i.bfl, %.thread.i1328 ], [ %i.bgv, %bb.xj ], [ %i.bgx, %.body5.i1390 ], [ %i.bgv, %.thread.i1380 ], [ %i.bmk, %.body7.i ], [ %.pn.pn38.i, %bb.aah ], [ %.pn.pn38.i, %bb.aaf ], [ %i.ats, %bb.rz ], [ %i.bmv, %bb.aaq ], [ %i.bkc, %bb.yq ], [ %i.bfv, %.thread.i1351 ], [ %i.bfx, %.body5.i1361 ], [ %i.bem, %bb.vt ], [ %i.auw, %bb.sq ], [ %i.aos, %bb.ps ], [ %i.ant, %bb.pi ], [ %i.anm, %bb.pf ], [ %i.anf, %bb.oy ], [ %i.ams, %bb.or ], [ %i.agl, %bb.ki ], [ %.pn.pn.pn.i, %.body.i ], [ %i.aeb, %.thread.i767 ], [ %i.aed, %.body5.i777 ], [ %eh.lpad-body.i, %.thread.i673 ], [ %i.aax, %.body5.i684 ], [ %i.yz, %bb.fi ], [ %i.xr, %bb.em ], [ %i.xh, %bb.ec ], [ %i.anl, %bb.pb ], [ %i.anb, %bb.ou ], [ %i.ahf, %bb.la ], [ %i.ael, %bb.iu ], [ %i.abc, %bb.gw ], [ %i.aao, %bb.gj ], [ %i.yy, %bb.fe ], [ %i.xl, %bb.ef ], [ %i.xd, %bb.dx ], [ %i.wr, %bb.do ], [ %i.wn, %bb.dl ], [ %i.wn, %bb.dk ], [ %i.wi, %bb.df ], [ %i.wi, %bb.de ], [ %i.rf, %bb.bw ], [ %i.rf, %bb.bv ], [ %i.qm, %bb.bl ], [ %i.qo, %bb.bn ], [ %i.qo, %bb.bo ], [ %i.qm, %bb.bk ], [ %i.qi, %bb.bh ], [ %i.qi, %bb.bg ], [ %i.pt, %bb.bb ], [ %i.pt, %bb.ba ], [ %i.pc, %bb.at ], [ %i.pc, %bb.as ], [ %i.aal, %bb.gf ], [ %i.bkl, %bb.yx ], [ %i.bki, %bb.yt ], [ %i.aei, %bb.iq ], [ %i.anf, %bb.ox ], [ %i.zg, %bb.fl ], [ %i.xv, %bb.ep ], [ %i.bkc, %bb.yp ], [ %i.blz, %bb.zq ], [ %i.bfv, %bb.wv ], [ %i.blb, %bb.zf ], [ %i.aeb, %bb.in ], [ %i.anm, %bb.pe ], [ %i.agl, %bb.kh ], [ %i.ams, %bb.oq ], [ %eh.lpad-body.i, %bb.gt ], [ %i.yz, %bb.fh ], [ %i.bgc, %bb.wy ], [ %i.wv, %bb.ds ], [ %i.xh, %bb.eb ], [ %i.xr, %bb.el ], [ %i.bel, %bb.vs ], [ %i.aor, %bb.pr ], [ %i.bep, %bb.vw ], [ %i.aqo, %bb.qn ], [ %i.aqr, %bb.qq ], [ %i.atp, %bb.rw ], [ %.pn2662, %.split ], [ %lpad.thr_comm.split-lp8627, %.loopexit ], [ %.pn2322457, %.split8625 ] ; 2 uses
  %.sroa.0113.2 = phi i1 [ false, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i371 ], [ true, %bb.aat ], [ true, %.body249 ], [ false, %bb.h ], [ %i.lm, %bb.n ], [ false, %bb.q ], [ true, %bb.al ], [ true, %bb.am ], [ true, %.thread2361 ], [ true, %bb.xm ], [ true, %bb.zi ], [ true, %bb.zn ], [ true, %bb.yk ], [ true, %bb.zc ], [ true, %.body291 ], [ true, %.body293 ], [ true, %bb.wl ], [ true, %bb.rv ], [ true, %.thread2648 ], [ true, %bb.td ], [ true, %.body331 ], [ true, %.body9.i861 ], [ true, %.thread2497 ], [ true, %.body9.i942 ], [ true, %bb.jz ], [ true, %bb.ic ], [ true, %bb.ex ], [ true, %bb.hm ], [ true, %bb.fz ], [ true, %bb.aak ], [ true, %.body ], [ true, %.thread2558 ], [ true, %.body329 ], [ true, %bb.ua ], [ true, %bb.xx ], [ true, %bb.zb ], [ true, %bb.zh ], [ true, %bb.zm ], [ true, %bb.zs ], [ true, %bb.zt ], [ true, %bb.fw ], [ true, %.body5.i ], [ true, %.thread.i ], [ true, %bb.hj ], [ true, %.body5.i722 ], [ true, %.thread.i712 ], [ true, %bb.hz ], [ true, %.body5.i754 ], [ true, %.thread.i744 ], [ true, %.body9.i ], [ true, %bb.jw ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i ], [ true, %bb.jt ], [ true, %bb.uy ], [ true, %bb.lz ], [ true, %bb.lw ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i847 ], [ true, %bb.lt ], [ true, %bb.vc ], [ true, %bb.nq ], [ true, %bb.nm ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928 ], [ true, %bb.nj ], [ true, %bb.uz ], [ true, %bb.of ], [ true, %.body5.i990 ], [ true, %.thread.i980 ], [ true, %bb.oi ], [ true, %bb.pv ], [ true, %bb.qm ], [ true, %bb.wi ], [ true, %.body5.i1338 ], [ true, %.thread.i1328 ], [ true, %bb.xj ], [ true, %.body5.i1390 ], [ true, %.thread.i1380 ], [ true, %.body7.i ], [ true, %bb.aah ], [ true, %bb.aaf ], [ true, %bb.rz ], [ true, %bb.aaq ], [ true, %bb.yq ], [ true, %.thread.i1351 ], [ true, %.body5.i1361 ], [ true, %bb.vt ], [ true, %bb.sq ], [ true, %bb.ps ], [ true, %bb.pi ], [ true, %bb.pf ], [ true, %bb.oy ], [ true, %bb.or ], [ true, %bb.ki ], [ true, %.body.i ], [ true, %.thread.i767 ], [ true, %.body5.i777 ], [ true, %.thread.i673 ], [ true, %.body5.i684 ], [ true, %bb.fi ], [ true, %bb.em ], [ true, %bb.ec ], [ true, %bb.pb ], [ true, %bb.ou ], [ true, %bb.la ], [ true, %bb.iu ], [ true, %bb.gw ], [ true, %bb.gj ], [ true, %bb.fe ], [ true, %bb.ef ], [ true, %bb.dx ], [ true, %bb.do ], [ true, %bb.dl ], [ true, %bb.dk ], [ true, %bb.df ], [ true, %bb.de ], [ true, %bb.bw ], [ true, %bb.bv ], [ true, %bb.bl ], [ true, %bb.bn ], [ true, %bb.bo ], [ true, %bb.bk ], [ true, %bb.bh ], [ true, %bb.bg ], [ true, %bb.bb ], [ true, %bb.ba ], [ true, %bb.at ], [ true, %bb.as ], [ true, %bb.gf ], [ true, %bb.yx ], [ true, %bb.yt ], [ true, %bb.iq ], [ true, %bb.ox ], [ true, %bb.fl ], [ true, %bb.ep ], [ true, %bb.yp ], [ true, %bb.zq ], [ true, %bb.wv ], [ true, %bb.zf ], [ true, %bb.in ], [ true, %bb.pe ], [ true, %bb.kh ], [ true, %bb.oq ], [ true, %bb.gt ], [ true, %bb.fh ], [ true, %bb.wy ], [ true, %bb.ds ], [ true, %bb.eb ], [ true, %bb.el ], [ true, %bb.vs ], [ true, %bb.pr ], [ true, %bb.vw ], [ true, %bb.qn ], [ true, %bb.qq ], [ true, %bb.rw ], [ true, %.split ], [ true, %.loopexit ], [ true, %.split8625 ]
  %.val364 = load i64, ptr %i.gg, align 8         ; 2 uses
  %i.lk = icmp eq i64 %.val364, 0
  br i1 %i.lk, label %bb.c, label %bb.m

bb.m:                                             ; preds = %.body369
  %.val365 = load ptr, ptr %i.go, align 8, !nonnull !21, !noundef !21
  %i.ll = shl nuw i64 %.val364, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val365, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %bb.c

bb.n:                                             ; preds = %.invoke11185, %.invoke, %._crit_edge.i385.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread
  %i.lm = phi i1 [ true, %._crit_edge.i385.invoke ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread ], [ true, %.invoke ], [ true, %.invoke11185 ]
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.body369

._crit_edge.i:                                    ; preds = %bb.e, %bb.g
  %.sroa.410.0.copyload.i = phi ptr [ %i.le, %bb.g ], [ %.sroa.5.0.copyload, %bb.e ] ; 3 uses
  %i.lo = icmp ult i64 %.sroa.7.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.lo)
  %i.lp = icmp eq i64 %.sroa.7.0.copyload, 4936
  br i1 %i.lp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %.not = icmp eq ptr %.sroa.410.0.copyload.i, null
  %i.lq = inttoptr i64 %.sroa.7.0.copyload to ptr
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread2319
  %.sroa.02194.02325 = phi ptr [ inttoptr (i64 8 to ptr), %.thread2319 ], [ %.sroa.410.0.copyload.i, %bb.o ] ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2c_4SyncEL_EEB1k_(ptr noalias nofree noundef nonnull align 8 %.sroa.02194.02325, i64 noundef %.sroa.7.0.copyload)
          to label %bb.r unwind label %bb.q, !noalias !14339

bb.q:                                             ; preds = %bb.p
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ls = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.ls, label %.body369, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i371

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i371: ; preds = %bb.q
  %i.lt = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02194.02325, i64 noundef %i.lt, i64 noundef 8) #41, !noalias !14339
  br label %.body369

bb.r:                                             ; preds = %bb.p
  %i.lu = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.lu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.r
  %i.lv = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02194.02325, i64 noundef %i.lv, i64 noundef 8) #41, !noalias !14339
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit: ; preds = %._crit_edge.i, %bb.o
  %.sroa.071.02318 = phi ptr [ %.sroa.410.0.copyload.i, %._crit_edge.i ], [ %i.lq, %bb.o ] ; 2 uses
  %.not205 = icmp eq ptr %.sroa.071.02318, null
  br i1 %.not205, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread, label %bb.s, !prof !33

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit
  %.val = load i64, ptr %i.gg, align 8            ; 2 uses
  %i.lw = icmp eq i64 %.val, 0
  br i1 %i.lw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit374, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val363 = load ptr, ptr %i.go, align 8, !nonnull !21, !noundef !21
  %i.lx = shl nuw i64 %.val, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val363, i64 noundef %i.lx, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit374

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread: ; preds = %bb.r, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10796) #46
          to label %bb.u unwind label %bb.n

bb.u:                                             ; preds = %bb.tr, %bb.tq, %bb.rh, %bb.rg, %bb.mw, %bb.mv, %bb.mp, %bb.mo, %bb.je, %bb.jd, %bb.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info9InstrInfoNtNtB4_6marker4SendNtB2C_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit374: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh)
  ret ptr %.sroa.071.02318

bb.v:                                             ; preds = %bb.l
  %i.ly = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.05720
  %i.lz = load i8, ptr %i.ly, align 1, !noalias !14340, !noundef !21 ; 2 uses
  %i.ma = add nuw nsw i64 %.sroa.156.05720, 1     ; 2 uses
  %i.mb = and i8 %i.lz, 127                       ; 2 uses
  %i.mc = icmp eq i8 %i.mb, 0
  br i1 %i.mc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.y
  %.sroa.156.1 = phi i64 [ %i.mj, %bb.y ], [ %i.ma, %bb.v ] ; 3 uses
  %.sroa.02.0 = phi i64 [ %i.ma, %bb.y ], [ -1, %bb.v ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.05722, %bb.y ], [ %.sroa.156.05720, %bb.v ]
  %i.md = phi i8 [ %i.mk, %bb.y ], [ %i.mb, %bb.v ]
  %i.me = icmp sgt i8 %i.lz, -1
  %i.mf = icmp samesign ult i64 %.sroa.156.1, 13463 ; 2 uses
  br i1 %i.me, label %bb.z, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.mg = icmp ult i64 %.sroa.0.05722, 13463
  br i1 %i.mg, label %bb.y, label %._crit_edge.i385.invoke

bb.y:                                             ; preds = %bb.x
  %i.mh = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.0.05722
  %i.mi = load i8, ptr %i.mh, align 1, !noalias !14341, !noundef !21
  %i.mj = add nuw nsw i64 %.sroa.0.05722, 1
  %i.mk = and i8 %i.mi, 127                       ; 2 uses
  %i.ml = icmp samesign ult i8 %i.mk, 43
  call void @llvm.assume(i1 %i.ml)
  br label %bb.w

bb.z:                                             ; preds = %bb.w
  br i1 %i.mf, label %.lr.ph.i, label %._crit_edge.i385.invoke

.lr.ph.i:                                         ; preds = %bb.z, %bb.aa
  %.sroa.0.013.i = phi i32 [ %i.mv, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.sroa.02.012.i = phi i32 [ %i.mw, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.mm = phi i64 [ %i.mp, %bb.aa ], [ %.sroa.156.1, %bb.z ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr @10842, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !noalias !14342, !noundef !21 ; 2 uses
  %i.mp = add nuw nsw i64 %i.mm, 1                ; 4 uses
  %i.mq = zext i8 %i.mo to i32                    ; 2 uses
  %i.mr = icmp sgt i8 %i.mo, -1
  br i1 %i.mr, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ms = and i32 %i.mq, 127
  %i.mt = and i32 %.sroa.02.012.i, 31
  %i.mu = shl i32 %i.ms, %i.mt
  %i.mv = or i32 %i.mu, %.sroa.0.013.i
  %i.mw = add nuw nsw i32 %.sroa.02.012.i, 7
  %exitcond.not.i = icmp eq i64 %i.mp, 13463
  br i1 %exitcond.not.i, label %._crit_edge.i385.invoke, label %.lr.ph.i

bb.ab:                                            ; preds = %bb.w
  br i1 %i.mf, label %.lr.ph.i381, label %._crit_edge.i385.invoke

.lr.ph.i381:                                      ; preds = %bb.ab, %bb.ac
  %.sroa.0.013.i382 = phi i32 [ %i.nh, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.02.012.i383 = phi i32 [ %i.ni, %bb.ac ], [ 0, %bb.ab ] ; 3 uses
  %i.mx = phi i64 [ %i.na, %bb.ac ], [ %.sroa.156.1, %bb.ab ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr @10842, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !noalias !14343, !noundef !21 ; 2 uses
  %i.na = add nuw nsw i64 %i.mx, 1                ; 3 uses
  %i.nb = zext i8 %i.mz to i32                    ; 2 uses
  %i.nc = icmp sgt i8 %i.mz, -1
  br i1 %i.nc, label %bb.ah, label %bb.ac

._crit_edge.i385.invoke:                          ; preds = %bb.l, %bb.ab, %bb.z, %bb.x, %bb.ac, %bb.aa
  %i.nd = phi i64 [ 13463, %bb.ac ], [ 13463, %bb.aa ], [ -1, %bb.x ], [ 13463, %bb.z ], [ 13463, %bb.ab ], [ %.sroa.156.05720, %bb.l ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.nd, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i385.cont unwind label %bb.n

._crit_edge.i385.cont:                            ; preds = %._crit_edge.i385.invoke
  unreachable

bb.ac:                                            ; preds = %.lr.ph.i381
  %i.ne = and i32 %i.nb, 127
  %i.nf = and i32 %.sroa.02.012.i383, 31
  %i.ng = shl i32 %i.ne, %i.nf
  %i.nh = or i32 %i.ng, %.sroa.0.013.i382
  %i.ni = add nuw nsw i32 %.sroa.02.012.i383, 7
  %exitcond.not.i384 = icmp eq i64 %i.na, 13463
  br i1 %exitcond.not.i384, label %._crit_edge.i385.invoke, label %.lr.ph.i381

bb.ad:                                            ; preds = %.lr.ph.i
  %i.nj = and i32 %.sroa.02.012.i, 31
  %i.nk = shl i32 %i.mq, %i.nj
  %i.nl = or i32 %i.nk, %.sroa.0.013.i
  %i.nm = zext i32 %i.nl to i64                   ; 3 uses
  %i.nn = load i64, ptr %i.gn, align 8, !noundef !21 ; 4 uses
  %i.no = icmp ugt i64 %i.nn, %i.nm
  br i1 %i.no, label %bb.ae, label %.invoke11185

bb.ae:                                            ; preds = %bb.ad
  %i.np = load ptr, ptr %i.go, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.np, i64 %i.nm ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !nonnull !21, !noundef !21
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !noundef !21 ; 8 uses
  %.not.i = icmp slt i64 %i.nt, 0
  br i1 %.not.i, label %.invoke, label %bb.af, !prof !37

bb.af:                                            ; preds = %bb.ae
  %i.nu = icmp eq i64 %i.nt, 0
  br i1 %i.nu, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit389.thread2332, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.af
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14344
  %i.nv = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.nt, i64 noundef range(i64 1, 9) 1) #41, !noalias !14344 ; 3 uses
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nv, ptr nonnull align 1 %i.nr, i64 %i.nt, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit389.thread2332

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit389.thread2332: ; preds = %bb.af, %bb.ag, %bb.an
  %i.nx = phi ptr [ %i.of, %bb.an ], [ %i.np, %bb.ag ], [ %i.np, %bb.af ] ; 11 uses
  %i.ny = phi i64 [ %i.od, %bb.an ], [ %i.nn, %bb.ag ], [ %i.nn, %bb.af ] ; 17 uses
  %.sroa.77.0 = phi i64 [ %.pre-phi, %bb.an ], [ %i.nt, %bb.ag ], [ 0, %bb.af ] ; 93 uses
  %.sroa.50.0 = phi ptr [ %.sroa.50.0.copyload, %bb.an ], [ %i.nv, %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.af ] ; 168 uses
  %.sroa.01732.0 = phi i64 [ %.sroa.01732.0.copyload, %bb.an ], [ %i.nt, %bb.ag ], [ 0, %bb.af ] ; 112 uses
  %.sroa.156.2 = phi i64 [ %i.na, %bb.an ], [ %i.mp, %bb.ag ], [ %i.mp, %bb.af ] ; 145 uses
  switch i8 %i.md, label %bb.ao [
    i8 0, label %bb.ap
    i8 1, label %bb.aq
    i8 2, label %bb.au
    i8 3, label %bb.av
    i8 4, label %bb.ax
    i8 5, label %bb.ay
    i8 6, label %bb.az
    i8 7, label %bb.bc
    i8 8, label %bb.be
    i8 9, label %bb.bf
    i8 10, label %bb.bi
    i8 11, label %bb.bp
    i8 12, label %bb.br
    i8 13, label %bb.bs
    i8 14, label %bb.bt
    i8 15, label %bb.bu
    i8 16, label %bb.bx
    i8 17, label %bb.by
    i8 18, label %bb.ca
    i8 19, label %bb.cb
    i8 20, label %bb.cd
    i8 21, label %bb.ce
    i8 22, label %bb.cg
    i8 23, label %bb.ch
    i8 24, label %bb.cj
    i8 25, label %bb.ck
    i8 26, label %bb.cm
    i8 27, label %bb.co
    i8 28, label %bb.cq
    i8 29, label %bb.cs
    i8 30, label %bb.cu
    i8 31, label %bb.cw
    i8 32, label %bb.cx
    i8 33, label %bb.cy
    i8 34, label %bb.cz
    i8 35, label %bb.da
    i8 36, label %bb.db
    i8 37, label %bb.dc
    i8 38, label %bb.dd
    i8 39, label %bb.dg
    i8 40, label %bb.dh
    i8 41, label %bb.di
    i8 42, label %bb.dj
  ], !prof !14345

bb.ah:                                            ; preds = %.lr.ph.i381
  %i.nz = and i32 %.sroa.02.012.i383, 31
  %i.oa = shl i32 %i.nb, %i.nz
  %i.ob = or i32 %i.oa, %.sroa.0.013.i382
  %i.oc = zext i32 %i.ob to i64                   ; 3 uses
  %i.od = load i64, ptr %i.gn, align 8, !noundef !21 ; 3 uses
  %i.oe = icmp ugt i64 %i.od, %i.oc
  br i1 %i.oe, label %bb.ai, label %.invoke11185

bb.ai:                                            ; preds = %bb.ah
  %i.of = load ptr, ptr %i.go, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %i.oc ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !nonnull !21, !noundef !21
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oj = load i64, ptr %i.oi, align 8, !noundef !21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf)
  %i.ok = add i64 %i.oj, 1                        ; 7 uses
  %.not.i390 = icmp slt i64 %i.ok, 0
  br i1 %.not.i390, label %.invoke, label %bb.aj, !prof !37

bb.aj:                                            ; preds = %bb.ai
  %i.ol = icmp eq i64 %i.ok, 0
  br i1 %i.ol, label %bb.ak, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i391

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i391: ; preds = %bb.aj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14346
  %i.om = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ok, i64 noundef range(i64 1, 9) 1) #41, !noalias !14346 ; 5 uses
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %.invoke, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i

.invoke11185:                                     ; preds = %bb.ah, %bb.ad
  %i.oo = phi i64 [ %i.nm, %bb.ad ], [ %i.oc, %bb.ah ]
  %i.op = phi i64 [ %i.nn, %bb.ad ], [ %i.od, %bb.ah ]
  %i.oq = phi ptr [ @10797, %bb.ad ], [ @10798, %bb.ah ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.oo, i64 noundef %i.op, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oq) #46
          to label %.cont11186 unwind label %bb.n

.cont11186:                                       ; preds = %.invoke11185
  unreachable

.invoke:                                          ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i391, %bb.ai, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i, %bb.ae
  %i.or = phi i64 [ 0, %bb.ae ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i391 ], [ 0, %bb.ai ]
  %i.os = phi i64 [ %i.nt, %bb.ae ], [ %i.nt, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ %i.ok, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i391 ], [ %i.ok, %bb.ai ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.or, i64 %i.os) #46
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj
  store i64 0, ptr %i.gf, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4117.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gf, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.thread8619 unwind label %bb.al

bb.al:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i, %bb.ak
  %i.ot = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14347)
  %.val.i395 = load i64, ptr %i.gf, align 8, !alias.scope !14347 ; 2 uses
  %i.ou = icmp eq i64 %.val.i395, 0
  br i1 %i.ou, label %.body369, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val1.i = load ptr, ptr %.sroa.4117.0..sroa_idx, align 8, !alias.scope !14347, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i395, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14347
  br label %.body369

.thread8619:                                      ; preds = %bb.ak
  %.pre = load ptr, ptr %.sroa.4117.0..sroa_idx, align 8, !alias.scope !14348 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl4read:bb.a
          to label %.body369 unwind label %bb.dt, !noalias !14383

bb.dt:                                            ; preds = %bb.ds
  %i.ww = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !14385
  unreachable

bb.du:                                            ; preds = %bb.au
  %i.wx = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.wy = load i8, ptr %i.wx, align 1, !noalias !14386, !noundef !21
  %i.wz = add nuw nsw i64 %.sroa.156.2, 1
  %i.xa = zext i8 %i.wy to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.gc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.xa)
          to label %bb.dv unwind label %.loopexit.thread

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  store i64 %.sroa.01732.0, ptr %i.ga, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1791, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1902, align 8
  invoke fastcc void @_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ga, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.gc, i32 noundef 0)
          to label %_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo20with_mnemonic_suffix.exit unwind label %.loopexit

_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo20with_mnemonic_suffix.exit: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14387
  %i.xb = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14387 ; 3 uses
  %i.xc = icmp eq ptr %i.xb, null
  br i1 %i.xc, label %bb.dw, label %bb.dy, !prof !26

bb.dw:                                            ; preds = %_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo20with_mnemonic_suffix.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc595 unwind label %bb.dx

.noexc595:                                        ; preds = %bb.dw
  unreachable

bb.dx:                                            ; preds = %bb.dw
  %i.xd = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info15SimpleInstrInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.gb) #42
  br label %.body369

bb.dy:                                            ; preds = %_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo20with_mnemonic_suffix.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.xb, ptr noundef nonnull align 8 dereferenceable(104) %i.gb, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  br label %bb.dq

bb.dz:                                            ; preds = %.lr.ph.i406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  store i64 %.sroa.01732.0, ptr %i.fy, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1793, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1904, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !14388
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fy)
          to label %bb.ea unwind label %bb.eb, !noalias !14389

bb.ea:                                            ; preds = %bb.dz
  %i.xe = and i32 %.sroa.02.012.i408, 31
  %i.xf = shl i32 %i.pk, %i.xe
  %i.xg = or i32 %i.xf, %.sroa.0.013.i407
  invoke fastcc void @_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.fz, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.fy, i32 noundef %i.xg)
          to label %bb.ed unwind label %.loopexit

bb.eb:                                            ; preds = %bb.dz
  %i.xh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xi = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.xi, label %.body369, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14390
  br label %.body369

bb.ed:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !14388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14391
  %i.xj = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14391 ; 3 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %bb.ee, label %bb.eg, !prof !26

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc604 unwind label %bb.ef

.noexc604:                                        ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %bb.ee
  %i.xl = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info15SimpleInstrInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fz) #42
  br label %.body369

bb.eg:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.xj, ptr noundef nonnull align 8 dereferenceable(104) %i.fz, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  br label %bb.dq

bb.eh:                                            ; preds = %bb.ax
  %i.xm = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.xn = load i8, ptr %i.xm, align 1, !noalias !14392, !noundef !21
  %i.xo = add nuw nsw i64 %.sroa.156.2, 1
  %i.xp = zext i8 %i.xn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.xp)
          to label %bb.ei unwind label %.loopexit.thread

bb.ei:                                            ; preds = %bb.eh
  %i.xq = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.xq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14393
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608: ; preds = %bb.ej, %bb.ei
  %.sroa.01732.0.copyload1743 = load i64, ptr %i.fx, align 8 ; 3 uses
  %.sroa.50.0.copyload1798 = load ptr, ptr %.sroa.50.0..sroa_idx1797, align 8 ; 2 uses
  %.sroa.77.0.copyload1909 = load i64, ptr %.sroa.77.0..sroa_idx1908, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  store i64 %.sroa.01732.0.copyload1743, ptr %i.fv, align 8
  store ptr %.sroa.50.0.copyload1798, ptr %.sroa.50.0..sroa_idx1799, align 8
  store i64 %.sroa.77.0.copyload1909, ptr %.sroa.77.0..sroa_idx1910, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !14394
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fv)
          to label %bb.ek unwind label %bb.el, !noalias !14395

bb.ek:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608
  invoke fastcc void @_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo3new(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.fw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.fv, i32 noundef 0)
          to label %bb.en unwind label %.loopexit

bb.el:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit608
  %i.xr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xs = icmp eq i64 %.sroa.01732.0.copyload1743, 0
  br i1 %i.xs, label %.body369, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0.copyload1798, i64 noundef %.sroa.01732.0.copyload1743, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14396
  br label %.body369

bb.en:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !14394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14397
  %i.xt = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14397 ; 3 uses
  %i.xu = icmp eq ptr %i.xt, null
  br i1 %i.xu, label %bb.eo, label %bb.eq, !prof !26

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc617 unwind label %bb.ep

.noexc617:                                        ; preds = %bb.eo
  unreachable

bb.ep:                                            ; preds = %bb.eo
  %i.xv = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info15SimpleInstrInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fw) #42
  br label %.body369

bb.eq:                                            ; preds = %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.xt, ptr noundef nonnull align 8 dereferenceable(104) %i.fw, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw)
  br label %bb.dq

bb.er:                                            ; preds = %bb.ay
  %i.xw = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.xx = load i8, ptr %i.xw, align 1, !noalias !14398, !noundef !21
  %i.xy = zext i8 %i.xx to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.xy)
          to label %bb.es unwind label %.loopexit.thread

bb.es:                                            ; preds = %bb.er
  %.not2730 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2730, label %._crit_edge.i625, label %.lr.ph.i621.preheader

.lr.ph.i621.preheader:                            ; preds = %bb.es
  %i.xz = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i621

.lr.ph.i621:                                      ; preds = %.lr.ph.i621.preheader, %bb.et
  %.sroa.0.013.i622 = phi i32 [ %i.yj, %bb.et ], [ 0, %.lr.ph.i621.preheader ] ; 2 uses
  %.sroa.02.012.i623 = phi i32 [ %i.yk, %bb.et ], [ 0, %.lr.ph.i621.preheader ] ; 3 uses
  %i.ya = phi i64 [ %i.yd, %bb.et ], [ %i.xz, %.lr.ph.i621.preheader ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr @10842, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !noalias !14399, !noundef !21 ; 2 uses
  %i.yd = add nuw nsw i64 %i.ya, 1                ; 3 uses
  %i.ye = zext i8 %i.yc to i32                    ; 2 uses
  %i.yf = icmp sgt i8 %i.yc, -1
  br i1 %i.yf, label %bb.eu, label %bb.et

._crit_edge.i625:                                 ; preds = %bb.es, %bb.et
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc626 unwind label %bb.ez

.noexc626:                                        ; preds = %._crit_edge.i625
  unreachable

bb.et:                                            ; preds = %.lr.ph.i621
  %i.yg = and i32 %i.ye, 127
  %i.yh = and i32 %.sroa.02.012.i623, 31
  %i.yi = shl i32 %i.yg, %i.yh
  %i.yj = or i32 %i.yi, %.sroa.0.013.i622
  %i.yk = add i32 %.sroa.02.012.i623, 7
  %exitcond.not.i624 = icmp eq i64 %i.yd, 13463
  br i1 %exitcond.not.i624, label %._crit_edge.i625, label %.lr.ph.i621

.body:                                            ; preds = %bb.eu
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %.body369

bb.eu:                                            ; preds = %.lr.ph.i621
  %i.ym = and i32 %.sroa.02.012.i623, 31
  %i.yn = shl i32 %i.ye, %i.ym
  %i.yo = or i32 %i.yn, %.sroa.0.013.i622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  store i64 %.sroa.01732.0, ptr %i.ft, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1801, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1912, align 8
  invoke fastcc void @_RNvMs0_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_15SimpleInstrInfo3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.fu, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ft, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.fs, i32 noundef %i.yo)
          to label %bb.ev unwind label %.body

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14400
  %i.yp = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14400 ; 3 uses
  %i.yq = icmp eq ptr %i.yp, null
  br i1 %i.yq, label %bb.ew, label %bb.ey, !prof !26

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc628 unwind label %bb.ex

.noexc628:                                        ; preds = %bb.ew
  unreachable

bb.ex:                                            ; preds = %bb.ew
  %i.yr = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info15SimpleInstrInfoEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fu) #42
  br label %.body369

bb.ey:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.yp, ptr noundef nonnull align 8 dereferenceable(104) %i.fu, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  br label %bb.dq

bb.ez:                                            ; preds = %._crit_edge.i625
  %i.ys = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i630 = load i64, ptr %i.fs, align 8       ; 2 uses
  %i.yt = icmp eq i64 %.val.i630, 0
  br i1 %i.yt, label %.thread2361, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.yu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.val1.i631 = load ptr, ptr %i.yu, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i631, i64 noundef %.val.i630, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14401
  br label %.thread2361

bb.fb:                                            ; preds = %bb.aav
  %i.yv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.fc:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62256.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !noalias !14402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !14355
  store i64 %.sroa.01732.0, ptr %i.fr, align 8, !noalias !14402
  store ptr %.sroa.50.0, ptr %.sroa.42254.0..sroa_idx, align 8, !noalias !14402
  store i64 %.sroa.77.0, ptr %.sroa.52255.0..sroa_idx, align 8, !noalias !14402
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14403
  %i.yw = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14403 ; 3 uses
  %i.yx = icmp eq ptr %i.yw, null
  br i1 %i.yx, label %bb.fd, label %bb.ff, !prof !26

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc633 unwind label %bb.fe

.noexc633:                                        ; preds = %bb.fd
  unreachable

bb.fe:                                            ; preds = %bb.fd
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_AamAadEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fr) #42
  br label %.body369

bb.ff:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yw, ptr noundef nonnull align 8 dereferenceable(48) %i.fr, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  br label %bb.dq

bb.fg:                                            ; preds = %.lr.ph.i422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq)
  call void @llvm.experimental.noalias.scope.decl(metadata !14404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !14405
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ch, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.fj unwind label %bb.fh, !noalias !14405

bb.fh:                                            ; preds = %bb.fg
  %i.yz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.za = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.za, label %.body369, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14406
  br label %.body369

bb.fj:                                            ; preds = %bb.fg
  %i.zb = and i32 %.sroa.02.012.i424, 31
  %i.zc = shl i32 %i.qa, %i.zb
  %i.zd = or i32 %i.zc, %.sroa.0.013.i423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !noalias !14407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !14405
  store i64 %.sroa.01732.0, ptr %i.fq, align 8, !noalias !14407
  store ptr %.sroa.50.0, ptr %.sroa.42274.0..sroa_idx, align 8, !noalias !14407
  store i64 %.sroa.77.0, ptr %.sroa.52275.0..sroa_idx, align 8, !noalias !14407
  store i32 %i.zd, ptr %i.kz, align 8, !alias.scope !14404, !noalias !14407
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14408
  %i.ze = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14408 ; 3 uses
  %i.zf = icmp eq ptr %i.ze, null
  br i1 %i.zf, label %bb.fk, label %bb.fm, !prof !26

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc640 unwind label %bb.fl

.noexc640:                                        ; preds = %bb.fk
  unreachable

bb.fl:                                            ; preds = %bb.fk
  %i.zg = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_asEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fq) #42
  br label %.body369

bb.fm:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ze, ptr noundef nonnull align 8 dereferenceable(56) %i.fq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  br label %bb.dq

bb.fn:                                            ; preds = %bb.be
  %i.zh = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.zi = load i8, ptr %i.zh, align 1, !noalias !14409, !noundef !21
  %i.zj = zext i8 %i.zi to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.zj)
          to label %bb.fo unwind label %.loopexit.thread

bb.fo:                                            ; preds = %bb.fn
  %.not2729 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2729, label %._crit_edge.i648, label %.lr.ph.i644.preheader

.lr.ph.i644.preheader:                            ; preds = %bb.fo
  %i.zk = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i644

.lr.ph.i644:                                      ; preds = %.lr.ph.i644.preheader, %bb.fp
  %.sroa.0.013.i645 = phi i32 [ %i.zu, %bb.fp ], [ 0, %.lr.ph.i644.preheader ] ; 2 uses
  %.sroa.02.012.i646 = phi i32 [ %i.zv, %bb.fp ], [ 0, %.lr.ph.i644.preheader ] ; 3 uses
  %i.zl = phi i64 [ %i.zo, %bb.fp ], [ %i.zk, %.lr.ph.i644.preheader ] ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr @10842, i64 %i.zl
  %i.zn = load i8, ptr %i.zm, align 1, !noalias !14410, !noundef !21 ; 2 uses
  %i.zo = add nuw nsw i64 %i.zl, 1                ; 3 uses
  %i.zp = zext i8 %i.zn to i32                    ; 2 uses
  %i.zq = icmp sgt i8 %i.zn, -1
  br i1 %i.zq, label %bb.fq, label %bb.fp

._crit_edge.i648:                                 ; preds = %bb.fo, %bb.fp
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc649 unwind label %bb.gb

.noexc649:                                        ; preds = %._crit_edge.i648
  unreachable

bb.fp:                                            ; preds = %.lr.ph.i644
  %i.zr = and i32 %i.zp, 127
  %i.zs = and i32 %.sroa.02.012.i646, 31
  %i.zt = shl i32 %i.zr, %i.zs
  %i.zu = or i32 %i.zt, %.sroa.0.013.i645
  %i.zv = add i32 %.sroa.02.012.i646, 7
  %exitcond.not.i647 = icmp eq i64 %i.zo, 13463
  br i1 %exitcond.not.i647, label %._crit_edge.i648, label %.lr.ph.i644

bb.fq:                                            ; preds = %.lr.ph.i644
  %i.zw = and i32 %.sroa.02.012.i646, 31
  %i.zx = shl i32 %i.zp, %i.zw
  %i.zy = or i32 %i.zx, %.sroa.0.013.i645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  %.sroa.02007.0.copyload = load i64, ptr %i.fp, align 8 ; 5 uses
  %.sroa.52008.0.copyload = load ptr, ptr %.sroa.52008.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72009.0.copyload = load i64, ptr %.sroa.72009.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !14412
  call void @llvm.experimental.noalias.scope.decl(metadata !14413)
  call void @llvm.experimental.noalias.scope.decl(metadata !14414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !14415
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.ft unwind label %bb.fr, !noalias !14415

bb.fr:                                            ; preds = %bb.fq
  %i.zz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaa = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.aaa, label %.thread.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14416
  br label %.thread.i

bb.ft:                                            ; preds = %bb.fq
  store i64 %.sroa.01732.0, ptr %i.cg, align 8, !alias.scope !14417, !noalias !14418
  store ptr %.sroa.50.0, ptr %.sroa.52005.0..sroa_idx, align 8, !alias.scope !14417, !noalias !14418
  store i64 %.sroa.77.0, ptr %.sroa.72006.0..sroa_idx, align 8, !alias.scope !14417, !noalias !14418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kw, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !noalias !14419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !14415
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52008.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !14420
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52008.0.copyload, i64 noundef %.sroa.72009.0.copyload)
          to label %bb.fx unwind label %bb.fu, !noalias !14420

bb.fu:                                            ; preds = %bb.ft
  %i.aab = landingpad { ptr, i32 }
          cleanup
  %i.aac = icmp eq i64 %.sroa.02007.0.copyload, 0
  br i1 %i.aac, label %.body5.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52008.0.copyload, i64 noundef %.sroa.02007.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14421
  br label %.body5.i

.body5.i:                                         ; preds = %bb.fv, %bb.fu
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cg) #42, !noalias !14412
  br label %.body369

.thread.i:                                        ; preds = %bb.fs, %bb.fr
  %i.aad = icmp eq i64 %.sroa.02007.0.copyload, 0
  br i1 %i.aad, label %.body369, label %bb.fw

bb.fw:                                            ; preds = %.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52008.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52008.0.copyload, i64 noundef %.sroa.02007.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14422
  br label %.body369

bb.fx:                                            ; preds = %bb.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !14423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !14420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fo, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false), !noalias !14423
  store i64 %.sroa.02007.0.copyload, ptr %i.kx, align 8, !alias.scope !14411, !noalias !14423
  store ptr %.sroa.52008.0.copyload, ptr %.sroa.4.0..sroa_idx.i660, align 8, !alias.scope !14411, !noalias !14423
  store i64 %.sroa.72009.0.copyload, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !14411, !noalias !14423
  store i32 %i.zy, ptr %i.ky, align 8, !alias.scope !14411, !noalias !14423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !14412
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14424
  %i.aae = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14424 ; 3 uses
  %i.aaf = icmp eq ptr %i.aae, null
  br i1 %i.aaf, label %bb.fy, label %bb.ga, !prof !26

bb.fy:                                            ; preds = %bb.fx
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc664 unwind label %bb.fz

.noexc664:                                        ; preds = %bb.fy
  unreachable

bb.fz:                                            ; preds = %bb.fy
  %i.aag = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_bndEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fo) #42
  br label %.body369

bb.ga:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aae, ptr noundef nonnull align 8 dereferenceable(104) %i.fo, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  br label %bb.dq

bb.gb:                                            ; preds = %._crit_edge.i648
  %i.aah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14425)
  %.val.i666 = load i64, ptr %i.fp, align 8, !alias.scope !14425 ; 2 uses
  %i.aai = icmp eq i64 %.val.i666, 0
  br i1 %i.aai, label %.thread2361, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %.val1.i667 = load ptr, ptr %.sroa.52008.0..sroa_idx, align 8, !alias.scope !14425, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i667, i64 noundef %.val.i666, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14425
  br label %.thread2361

bb.gd:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62260.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !noalias !14426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !14358
  store i64 %.sroa.01732.0, ptr %i.ct, align 8, !noalias !14426
  store ptr %.sroa.50.0, ptr %.sroa.42258.0..sroa_idx, align 8, !noalias !14426
  store i64 %.sroa.77.0, ptr %.sroa.52259.0..sroa_idx, align 8, !noalias !14426
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14427
  %i.aaj = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14427 ; 3 uses
  %i.aak = icmp eq ptr %i.aaj, null
  br i1 %i.aak, label %bb.ge, label %bb.gg, !prof !26

bb.ge:                                            ; preds = %bb.gd
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc669 unwind label %bb.gf

.noexc669:                                        ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %bb.ge
  %i.aal = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_ST_STiEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ct) #42
  br label %.body369

bb.gg:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aaj, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.dq

bb.gh:                                            ; preds = %switch.lookup.i
  %switch.idx.cast.i = trunc nuw nsw i16 %switch.tableidx.i to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !14428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !14362
  store i64 %.sroa.01732.0, ptr %i.fn, align 8, !alias.scope !14360, !noalias !14428
  store ptr %.sroa.50.0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14360, !noalias !14428
  store i64 %.sroa.77.0, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !14360, !noalias !14428
  store i8 %switch.offset.i, ptr %i.kv, align 8, !alias.scope !14360, !noalias !14428
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14429
  %i.aam = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14429 ; 3 uses
  %i.aan = icmp eq ptr %i.aam, null
  br i1 %i.aan, label %bb.gi, label %bb.gk, !prof !26

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc671 unwind label %bb.gj

.noexc671:                                        ; preds = %bb.gi
  unreachable

bb.gj:                                            ; preds = %bb.gi
  %i.aao = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info27SimpleInstrInfo_DeclareDataEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fn) #42
  br label %.body369

bb.gk:                                            ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aam, ptr noundef nonnull align 8 dereferenceable(56) %i.fn, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  br label %bb.dq

bb.gl:                                            ; preds = %.lr.ph.i444
  %i.aap = and i32 %.sroa.02.012.i446, 31
  %i.aaq = shl i32 %i.qv, %i.aap
  %i.aar = or i32 %i.aaq, %.sroa.0.013.i445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  store i64 %.sroa.01732.0, ptr %i.fl, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1807, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1918, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !14431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !14431
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fl)
          to label %bb.gn unwind label %bb.gm, !noalias !14430

bb.gm:                                            ; preds = %bb.gl
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i673

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.experimental.noalias.scope.decl(metadata !14432)
  call void @llvm.experimental.noalias.scope.decl(metadata !14433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !14434
  %i.aat = load ptr, ptr %i.kp, align 8, !alias.scope !14433, !noalias !14435, !nonnull !21, !noundef !21 ; 2 uses
  %i.aau = load i64, ptr %i.kq, align 8, !alias.scope !14433, !noalias !14435, !noundef !21
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aat, i64 noundef %i.aau)
          to label %bb.gq unwind label %bb.go, !noalias !14436

bb.go:                                            ; preds = %bb.gn
  %i.aav = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14437)
  %.val.i.i.i678 = load i64, ptr %i.cc, align 8, !alias.scope !14438, !noalias !14435 ; 2 uses
  %i.aaw = icmp eq i64 %.val.i.i.i678, 0
  br i1 %i.aaw, label %.thread.i673, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aat, i64 noundef %.val.i.i.i678, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14439
  br label %.thread.i673

bb.gq:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !alias.scope !14440, !noalias !14431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !noalias !14441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !14434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !14431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !14442
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.gu unwind label %bb.gr, !noalias !14443

bb.gr:                                            ; preds = %bb.gq
  %i.aax = landingpad { ptr, i32 }
          cleanup
  %i.aay = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.aay, label %.body5.i684, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14444
  br label %.body5.i684

.body5.i684:                                      ; preds = %bb.gs, %bb.gr
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cd) #42, !noalias !14430
  br label %.body369

.thread.i673:                                     ; preds = %bb.gp, %bb.go, %bb.gm
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aas, %bb.gm ], [ %i.aav, %bb.gp ], [ %i.aav, %bb.go ] ; 2 uses
  %i.aaz = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.aaz, label %.body369, label %bb.gt

bb.gt:                                            ; preds = %.thread.i673
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14445
  br label %.body369

bb.gu:                                            ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i685, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !noalias !14446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !14442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fm, ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i64 48, i1 false), !noalias !14446
  store i64 %.sroa.01732.0, ptr %i.ks, align 8, !alias.scope !14430, !noalias !14446
  store ptr %.sroa.50.0, ptr %.sroa.4.0..sroa_idx.i686, align 8, !alias.scope !14430, !noalias !14446
  store i64 %.sroa.77.0, ptr %.sroa.514.0..sroa_idx.i687, align 8, !alias.scope !14430, !noalias !14446
  store i32 %i.aar, ptr %i.kt, align 8, !alias.scope !14430, !noalias !14446
  store i32 0, ptr %i.ku, align 4, !alias.scope !14430, !noalias !14446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !14431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14447
  %i.aba = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14447 ; 3 uses
  %i.abb = icmp eq ptr %i.aba, null
  br i1 %i.abb, label %bb.gv, label %bb.gx, !prof !26

bb.gv:                                            ; preds = %bb.gu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc691 unwind label %bb.gw

.noexc691:                                        ; preds = %bb.gv
  unreachable

bb.gw:                                            ; preds = %bb.gv
  %i.abc = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_erEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fm) #42
  br label %.body369

bb.gx:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aba, ptr noundef nonnull align 8 dereferenceable(104) %i.fm, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  br label %bb.dq

bb.gy:                                            ; preds = %bb.br
  %i.abd = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.abe = load i8, ptr %i.abd, align 1, !noalias !14448, !noundef !21
  %i.abf = zext i8 %i.abe to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.abf)
          to label %bb.gz unwind label %.loopexit.thread

bb.gz:                                            ; preds = %bb.gy
  %.not2728 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2728, label %._crit_edge.i708.invoke, label %.lr.ph.i695.preheader

.lr.ph.i695.preheader:                            ; preds = %bb.gz
  %i.abg = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i695

.lr.ph.i695:                                      ; preds = %.lr.ph.i695.preheader, %bb.ha
  %.sroa.0.013.i696 = phi i32 [ %i.abq, %bb.ha ], [ 0, %.lr.ph.i695.preheader ] ; 2 uses
  %.sroa.02.012.i697 = phi i32 [ %i.abr, %bb.ha ], [ 0, %.lr.ph.i695.preheader ] ; 3 uses
  %i.abh = phi i64 [ %i.abk, %bb.ha ], [ %i.abg, %.lr.ph.i695.preheader ] ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr @10842, i64 %i.abh
  %i.abj = load i8, ptr %i.abi, align 1, !noalias !14449, !noundef !21 ; 2 uses
  %i.abk = add nuw nsw i64 %i.abh, 1              ; 4 uses
  %i.abl = zext i8 %i.abj to i32                  ; 2 uses
  %i.abm = icmp sgt i8 %i.abj, -1
  br i1 %i.abm, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %.lr.ph.i695
  %i.abn = and i32 %i.abl, 127
  %i.abo = and i32 %.sroa.02.012.i697, 31
  %i.abp = shl i32 %i.abn, %i.abo
  %i.abq = or i32 %i.abp, %.sroa.0.013.i696
  %i.abr = add i32 %.sroa.02.012.i697, 7
  %exitcond.not.i698 = icmp eq i64 %i.abk, 13463
  br i1 %exitcond.not.i698, label %._crit_edge.i708.invoke, label %.lr.ph.i695

bb.hb:                                            ; preds = %.lr.ph.i695
  %i.abs = and i32 %.sroa.02.012.i697, 31
  %i.abt = shl i32 %i.abl, %i.abs
  %i.abu = or i32 %i.abt, %.sroa.0.013.i696
  %i.abv = icmp ult i64 %i.abh, 13462
  br i1 %i.abv, label %.lr.ph.i704, label %._crit_edge.i708.invoke

.lr.ph.i704:                                      ; preds = %bb.hb, %bb.hc
  %.sroa.0.013.i705 = phi i32 [ %i.acg, %bb.hc ], [ 0, %bb.hb ] ; 2 uses
  %.sroa.02.012.i706 = phi i32 [ %i.ach, %bb.hc ], [ 0, %bb.hb ] ; 3 uses
  %i.abw = phi i64 [ %i.abz, %bb.hc ], [ %i.abk, %bb.hb ] ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr @10842, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !noalias !14450, !noundef !21 ; 2 uses
  %i.abz = add nuw nsw i64 %i.abw, 1              ; 3 uses
  %i.aca = zext i8 %i.aby to i32                  ; 2 uses
  %i.acb = icmp sgt i8 %i.aby, -1
  br i1 %i.acb, label %bb.hd, label %bb.hc

._crit_edge.i708.invoke:                          ; preds = %bb.hb, %bb.gz, %bb.ha, %bb.hc
  %i.acc = phi i64 [ 13463, %bb.ha ], [ 13463, %bb.hc ], [ %i.abk, %bb.hb ], [ 13463, %bb.gz ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.acc, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i708.cont unwind label %bb.ho

._crit_edge.i708.cont:                            ; preds = %._crit_edge.i708.invoke
  unreachable

bb.hc:                                            ; preds = %.lr.ph.i704
  %i.acd = and i32 %i.aca, 127
  %i.ace = and i32 %.sroa.02.012.i706, 31
  %i.acf = shl i32 %i.acd, %i.ace
  %i.acg = or i32 %i.acf, %.sroa.0.013.i705
  %i.ach = add i32 %.sroa.02.012.i706, 7
  %exitcond.not.i707 = icmp eq i64 %i.abz, 13463
  br i1 %exitcond.not.i707, label %._crit_edge.i708.invoke, label %.lr.ph.i704

bb.hd:                                            ; preds = %.lr.ph.i704
  %i.aci = and i32 %.sroa.02.012.i706, 31
  %i.acj = shl i32 %i.aca, %i.aci
  %i.ack = or i32 %i.acj, %.sroa.0.013.i705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  %.sroa.02016.0.copyload = load i64, ptr %i.fk, align 8 ; 5 uses
  %.sroa.52017.0.copyload = load ptr, ptr %.sroa.52017.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72018.0.copyload = load i64, ptr %.sroa.72018.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !14452
  call void @llvm.experimental.noalias.scope.decl(metadata !14453)
  call void @llvm.experimental.noalias.scope.decl(metadata !14454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !14455
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.hg unwind label %bb.he, !noalias !14455

bb.he:                                            ; preds = %bb.hd
  %i.acl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acm = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.acm, label %.thread.i712, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14456
  br label %.thread.i712

bb.hg:                                            ; preds = %bb.hd
  store i64 %.sroa.01732.0, ptr %i.bz, align 8, !alias.scope !14457, !noalias !14458
  store ptr %.sroa.50.0, ptr %.sroa.52014.0..sroa_idx, align 8, !alias.scope !14457, !noalias !14458
  store i64 %.sroa.77.0, ptr %.sroa.72015.0..sroa_idx, align 8, !alias.scope !14457, !noalias !14458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kl, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !noalias !14459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !14455
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52017.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !14460
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52017.0.copyload, i64 noundef %.sroa.72018.0.copyload)
          to label %bb.hk unwind label %bb.hh, !noalias !14460

bb.hh:                                            ; preds = %bb.hg
  %i.acn = landingpad { ptr, i32 }
          cleanup
  %i.aco = icmp eq i64 %.sroa.02016.0.copyload, 0
  br i1 %i.aco, label %.body5.i722, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52017.0.copyload, i64 noundef %.sroa.02016.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14461
  br label %.body5.i722

.body5.i722:                                      ; preds = %bb.hi, %bb.hh
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bz) #42, !noalias !14452
  br label %.body369

.thread.i712:                                     ; preds = %bb.hf, %bb.he
  %i.acp = icmp eq i64 %.sroa.02016.0.copyload, 0
  br i1 %i.acp, label %.body369, label %bb.hj

bb.hj:                                            ; preds = %.thread.i712
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52017.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52017.0.copyload, i64 noundef %.sroa.02016.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14462
  br label %.body369

bb.hk:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i723, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !noalias !14463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !14460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fj, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false), !noalias !14463
  store i64 %.sroa.02016.0.copyload, ptr %i.km, align 8, !alias.scope !14451, !noalias !14463
  store ptr %.sroa.52017.0.copyload, ptr %.sroa.4.0..sroa_idx.i724, align 8, !alias.scope !14451, !noalias !14463
  store i64 %.sroa.72018.0.copyload, ptr %.sroa.514.0..sroa_idx.i725, align 8, !alias.scope !14451, !noalias !14463
  store i32 %i.abu, ptr %i.kn, align 8, !alias.scope !14451, !noalias !14463
  store i32 %i.ack, ptr %i.ko, align 4, !alias.scope !14451, !noalias !14463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !14452
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14464
  %i.acq = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14464 ; 3 uses
  %i.acr = icmp eq ptr %i.acq, null
  br i1 %i.acr, label %bb.hl, label %bb.hn, !prof !26

bb.hl:                                            ; preds = %bb.hk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc729 unwind label %bb.hm

.noexc729:                                        ; preds = %bb.hl
  unreachable

bb.hm:                                            ; preds = %bb.hl
  %i.acs = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_erEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fj) #42
  br label %.body369

bb.hn:                                            ; preds = %bb.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.acq, ptr noundef nonnull align 8 dereferenceable(104) %i.fj, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  br label %bb.dq

bb.ho:                                            ; preds = %._crit_edge.i708.invoke
  %i.act = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14465)
  %.val.i731 = load i64, ptr %i.fk, align 8, !alias.scope !14465 ; 2 uses
  %i.acu = icmp eq i64 %.val.i731, 0
  br i1 %i.acu, label %.thread2361, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %.val1.i732 = load ptr, ptr %.sroa.52017.0..sroa_idx, align 8, !alias.scope !14465, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i732, i64 noundef %.val.i731, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14465
  br label %.thread2361

bb.hq:                                            ; preds = %bb.bs
  %i.acv = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.acw = load i8, ptr %i.acv, align 1, !noalias !14466, !noundef !21
  %i.acx = zext i8 %i.acw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.acx)
          to label %bb.hr unwind label %.loopexit.thread

bb.hr:                                            ; preds = %bb.hq
  %.not2727 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2727, label %._crit_edge.i740, label %.lr.ph.i736.preheader

.lr.ph.i736.preheader:                            ; preds = %bb.hr
  %i.acy = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i736

.lr.ph.i736:                                      ; preds = %.lr.ph.i736.preheader, %bb.hs
  %.sroa.0.013.i737 = phi i32 [ %i.adi, %bb.hs ], [ 0, %.lr.ph.i736.preheader ] ; 2 uses
  %.sroa.02.012.i738 = phi i32 [ %i.adj, %bb.hs ], [ 0, %.lr.ph.i736.preheader ] ; 3 uses
  %i.acz = phi i64 [ %i.adc, %bb.hs ], [ %i.acy, %.lr.ph.i736.preheader ] ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr @10842, i64 %i.acz
  %i.adb = load i8, ptr %i.ada, align 1, !noalias !14467, !noundef !21 ; 2 uses
  %i.adc = add nuw nsw i64 %i.acz, 1              ; 3 uses
  %i.add = zext i8 %i.adb to i32                  ; 2 uses
  %i.ade = icmp sgt i8 %i.adb, -1
  br i1 %i.ade, label %bb.ht, label %bb.hs

._crit_edge.i740:                                 ; preds = %bb.hr, %bb.hs
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc741 unwind label %bb.ie

.noexc741:                                        ; preds = %._crit_edge.i740
  unreachable

bb.hs:                                            ; preds = %.lr.ph.i736
  %i.adf = and i32 %i.add, 127
  %i.adg = and i32 %.sroa.02.012.i738, 31
  %i.adh = shl i32 %i.adf, %i.adg
  %i.adi = or i32 %i.adh, %.sroa.0.013.i737
  %i.adj = add i32 %.sroa.02.012.i738, 7
  %exitcond.not.i739 = icmp eq i64 %i.adc, 13463
  br i1 %exitcond.not.i739, label %._crit_edge.i740, label %.lr.ph.i736

bb.ht:                                            ; preds = %.lr.ph.i736
  %i.adk = and i32 %.sroa.02.012.i738, 31
  %i.adl = shl i32 %i.add, %i.adk
  %i.adm = or i32 %i.adl, %.sroa.0.013.i737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  %.sroa.02022.0.copyload = load i64, ptr %i.fi, align 8 ; 5 uses
  %.sroa.52023.0.copyload = load ptr, ptr %.sroa.52023.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72024.0.copyload = load i64, ptr %.sroa.72024.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !14469
  call void @llvm.experimental.noalias.scope.decl(metadata !14470)
  call void @llvm.experimental.noalias.scope.decl(metadata !14471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !14472
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.hw unwind label %bb.hu, !noalias !14472

bb.hu:                                            ; preds = %bb.ht
  %i.adn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ado = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.ado, label %.thread.i744, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14473
  br label %.thread.i744

bb.hw:                                            ; preds = %bb.ht
  store i64 %.sroa.01732.0, ptr %i.bw, align 8, !alias.scope !14474, !noalias !14475
  store ptr %.sroa.50.0, ptr %.sroa.52020.0..sroa_idx, align 8, !alias.scope !14474, !noalias !14475
  store i64 %.sroa.77.0, ptr %.sroa.72021.0..sroa_idx, align 8, !alias.scope !14474, !noalias !14475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ki, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !14476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !14472
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52023.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !14477
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52023.0.copyload, i64 noundef %.sroa.72024.0.copyload)
          to label %bb.ia unwind label %bb.hx, !noalias !14477

bb.hx:                                            ; preds = %bb.hw
  %i.adp = landingpad { ptr, i32 }
          cleanup
  %i.adq = icmp eq i64 %.sroa.02022.0.copyload, 0
  br i1 %i.adq, label %.body5.i754, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52023.0.copyload, i64 noundef %.sroa.02022.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14478
  br label %.body5.i754

.body5.i754:                                      ; preds = %bb.hy, %bb.hx
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bw) #42, !noalias !14469
  br label %.body369

.thread.i744:                                     ; preds = %bb.hv, %bb.hu
  %i.adr = icmp eq i64 %.sroa.02022.0.copyload, 0
  br i1 %i.adr, label %.body369, label %bb.hz

bb.hz:                                            ; preds = %.thread.i744
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52023.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52023.0.copyload, i64 noundef %.sroa.02022.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14479
  br label %.body369

bb.ia:                                            ; preds = %bb.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i755, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !noalias !14480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !14477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fh, ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i64 48, i1 false), !noalias !14480
  store i64 %.sroa.02022.0.copyload, ptr %i.kj, align 8, !alias.scope !14468, !noalias !14480
  store ptr %.sroa.52023.0.copyload, ptr %.sroa.4.0..sroa_idx.i756, align 8, !alias.scope !14468, !noalias !14480
  store i64 %.sroa.72024.0.copyload, ptr %.sroa.514.0..sroa_idx.i757, align 8, !alias.scope !14468, !noalias !14480
  store i32 %i.adm, ptr %i.kk, align 8, !alias.scope !14468, !noalias !14480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !14469
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14481
  %i.ads = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14481 ; 3 uses
  %i.adt = icmp eq ptr %i.ads, null
  br i1 %i.adt, label %bb.ib, label %bb.id, !prof !26

bb.ib:                                            ; preds = %bb.ia
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc761 unwind label %bb.ic

.noexc761:                                        ; preds = %bb.ib
  unreachable

bb.ic:                                            ; preds = %bb.ib
  %i.adu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_farEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.fh) #42
  br label %.body369

bb.id:                                            ; preds = %bb.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ads, ptr noundef nonnull align 8 dereferenceable(104) %i.fh, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  br label %bb.dq

bb.ie:                                            ; preds = %._crit_edge.i740
  %i.adv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14482)
  %.val.i763 = load i64, ptr %i.fi, align 8, !alias.scope !14482 ; 2 uses
  %i.adw = icmp eq i64 %.val.i763, 0
  br i1 %i.adw, label %.thread2361, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %.val1.i764 = load ptr, ptr %.sroa.52023.0..sroa_idx, align 8, !alias.scope !14482, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i764, i64 noundef %.val.i763, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14482
  br label %.thread2361

bb.ig:                                            ; preds = %bb.bt
  %i.adx = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.ady = load i8, ptr %i.adx, align 1, !noalias !14483, !noundef !21
  %i.adz = add nuw nsw i64 %.sroa.156.2, 1
  %i.aea = zext i8 %i.ady to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.aea)
          to label %bb.ih unwind label %.loopexit.thread

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  call void @llvm.experimental.noalias.scope.decl(metadata !14484)
  call void @llvm.experimental.noalias.scope.decl(metadata !14485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !14486
  call void @llvm.experimental.noalias.scope.decl(metadata !14487)
  call void @llvm.experimental.noalias.scope.decl(metadata !14488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !14489
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.ik unwind label %bb.ii, !noalias !14489

bb.ii:                                            ; preds = %bb.ih
  %i.aeb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aec = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.aec, label %.thread.i767, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14490
  br label %.thread.i767

bb.ik:                                            ; preds = %bb.ih
  store i64 %.sroa.01732.0, ptr %i.bt, align 8, !alias.scope !14491, !noalias !14492
  store ptr %.sroa.50.0, ptr %.sroa.52026.0..sroa_idx, align 8, !alias.scope !14491, !noalias !14492
  store i64 %.sroa.77.0, ptr %.sroa.72027.0..sroa_idx, align 8, !alias.scope !14491, !noalias !14492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !14493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !14489
  %.sroa.0.0.copyload.i772 = load i64, ptr %i.fg, align 8, !alias.scope !14485, !noalias !14494 ; 3 uses
  %.sroa.5.0.copyload.i774 = load ptr, ptr %.sroa.5.0..sroa_idx.i773, align 8, !alias.scope !14485, !noalias !14494, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.6.0.copyload.i776 = load i64, ptr %.sroa.6.0..sroa_idx.i775, align 8, !alias.scope !14485, !noalias !14494 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !14495
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i774, i64 noundef %.sroa.6.0.copyload.i776)
          to label %bb.io unwind label %bb.il, !noalias !14495

bb.il:                                            ; preds = %bb.ik
  %i.aed = landingpad { ptr, i32 }
          cleanup
  %i.aee = icmp eq i64 %.sroa.0.0.copyload.i772, 0
  br i1 %i.aee, label %.body5.i777, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i774, i64 noundef %.sroa.0.0.copyload.i772, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14496
  br label %.body5.i777

.body5.i777:                                      ; preds = %bb.im, %bb.il
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bt) #42, !noalias !14486
  br label %.body369

.thread.i767:                                     ; preds = %bb.ij, %bb.ii
  call void @llvm.experimental.noalias.scope.decl(metadata !14497)
  %.val.i.i768 = load i64, ptr %i.fg, align 8, !alias.scope !14498, !noalias !14494 ; 2 uses
  %i.aef = icmp eq i64 %.val.i.i768, 0
  br i1 %i.aef, label %.body369, label %bb.in

bb.in:                                            ; preds = %.thread.i767
  %.val1.i.i769 = load ptr, ptr %.sroa.5.0..sroa_idx.i773, align 8, !alias.scope !14498, !noalias !14494, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i769, i64 noundef %.val.i.i768, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14499
  br label %.body369

bb.io:                                            ; preds = %bb.ik
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i778, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !14500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !14495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ff, ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i64 48, i1 false), !noalias !14500
  store i64 %.sroa.0.0.copyload.i772, ptr %i.kh, align 8, !alias.scope !14484, !noalias !14500
  store ptr %.sroa.5.0.copyload.i774, ptr %.sroa.4.0..sroa_idx.i779, align 8, !alias.scope !14484, !noalias !14500
  store i64 %.sroa.6.0.copyload.i776, ptr %.sroa.514.0..sroa_idx.i780, align 8, !alias.scope !14484, !noalias !14500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !14486
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14501
  %i.aeg = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14501 ; 3 uses
  %i.aeh = icmp eq ptr %i.aeg, null
  br i1 %i.aeh, label %bb.ip, label %bb.ir, !prof !26

bb.ip:                                            ; preds = %bb.io
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #46
          to label %.noexc784 unwind label %bb.iq

.noexc784:                                        ; preds = %bb.ip
  unreachable

bb.iq:                                            ; preds = %bb.ip
  %i.aei = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info20SimpleInstrInfo_imulEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ff) #42
  br label %.body369

bb.ir:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aeg, ptr noundef nonnull align 8 dereferenceable(96) %i.ff, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  br label %bb.dq

bb.is:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62264.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !noalias !14502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !14366
  store i64 %.sroa.01732.0, ptr %i.fe, align 8, !noalias !14502
  store ptr %.sroa.50.0, ptr %.sroa.42262.0..sroa_idx, align 8, !noalias !14502
  store i64 %.sroa.77.0, ptr %.sroa.52263.0..sroa_idx, align 8, !noalias !14502
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14503
  %i.aej = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14503 ; 3 uses
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %bb.it, label %bb.iv, !prof !26

bb.it:                                            ; preds = %bb.is
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc786 unwind label %bb.iu

.noexc786:                                        ; preds = %bb.it
  unreachable

bb.iu:                                            ; preds = %bb.it
  %i.ael = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info24SimpleInstrInfo_maskmovqEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fe) #42
  br label %.body369

bb.iv:                                            ; preds = %bb.is
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aej, ptr noundef nonnull align 8 dereferenceable(48) %i.fe, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  br label %bb.dq

bb.iw:                                            ; preds = %bb.bx
  %i.aem = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.aen = load i8, ptr %i.aem, align 1, !noalias !14504, !noundef !21
  %i.aeo = zext i8 %i.aen to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.aeo)
          to label %bb.ix unwind label %.loopexit.thread

bb.ix:                                            ; preds = %bb.iw
  %.not2726 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2726, label %._crit_edge.i794, label %.lr.ph.i790.preheader

.lr.ph.i790.preheader:                            ; preds = %bb.ix
  %i.aep = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i790

.lr.ph.i790:                                      ; preds = %.lr.ph.i790.preheader, %bb.iy
  %.sroa.0.013.i791 = phi i32 [ %i.aez, %bb.iy ], [ 0, %.lr.ph.i790.preheader ] ; 2 uses
  %.sroa.02.012.i792 = phi i32 [ %i.afa, %bb.iy ], [ 0, %.lr.ph.i790.preheader ] ; 3 uses
  %i.aeq = phi i64 [ %i.aet, %bb.iy ], [ %i.aep, %.lr.ph.i790.preheader ] ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr @10842, i64 %i.aeq
  %i.aes = load i8, ptr %i.aer, align 1, !noalias !14505, !noundef !21 ; 2 uses
  %i.aet = add nuw nsw i64 %i.aeq, 1              ; 3 uses
  %i.aeu = zext i8 %i.aes to i32                  ; 2 uses
  %i.aev = icmp sgt i8 %i.aes, -1
  br i1 %i.aev, label %bb.ja, label %bb.iy

._crit_edge.i794:                                 ; preds = %bb.ix, %bb.iy
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc795 unwind label %bb.iz

.noexc795:                                        ; preds = %._crit_edge.i794
  unreachable

bb.iy:                                            ; preds = %.lr.ph.i790
  %i.aew = and i32 %i.aeu, 127
  %i.aex = and i32 %.sroa.02.012.i792, 31
  %i.aey = shl i32 %i.aew, %i.aex
  %i.aez = or i32 %i.aey, %.sroa.0.013.i791
  %i.afa = add i32 %.sroa.02.012.i792, 7
  %exitcond.not.i793 = icmp eq i64 %i.aet, 13463
  br i1 %exitcond.not.i793, label %._crit_edge.i794, label %.lr.ph.i790

bb.iz:                                            ; preds = %._crit_edge.i794, %bb.je, %bb.jd
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.ja:                                            ; preds = %.lr.ph.i790
  %i.afc = and i32 %.sroa.02.012.i792, 31
  %i.afd = shl i32 %i.aeu, %i.afc
  %i.afe = or i32 %i.afd, %.sroa.0.013.i791
  %i.aff = zext i32 %i.afe to i64                 ; 3 uses
  %i.afg = icmp ugt i64 %i.ny, %i.aff
  br i1 %i.afg, label %bb.jb, label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.afh = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.aff ; 2 uses
  %i.afi = load ptr, ptr %i.afh, align 8, !nonnull !21, !noundef !21
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.afk = load i64, ptr %i.afj, align 8, !noundef !21 ; 13 uses
  %.not.i797 = icmp slt i64 %i.afk, 0
  br i1 %.not.i797, label %bb.je, label %bb.jc, !prof !37

bb.jc:                                            ; preds = %bb.jb
  %i.afl = icmp eq i64 %i.afk, 0                  ; 3 uses
  br i1 %i.afl, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit800.thread2393, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798: ; preds = %bb.jc
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14506
  %i.afm = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.afk, i64 noundef range(i64 1, 9) 1) #41, !noalias !14506 ; 3 uses
  %i.afn = icmp eq ptr %i.afm, null
  br i1 %i.afn, label %bb.je, label %bb.jf

bb.jd:                                            ; preds = %bb.ja
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aff, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10810) #46
          to label %bb.u unwind label %bb.iz

bb.je:                                            ; preds = %bb.jb, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798
  %.sroa.42210.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798 ], [ 0, %bb.jb ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42210.0.ph, i64 %i.afk) #46
          to label %bb.u unwind label %bb.iz

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit800.thread2393: ; preds = %bb.jc, %bb.jf
  %i.afo = phi ptr [ %i.afm, %bb.jf ], [ inttoptr (i64 1 to ptr), %bb.jc ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.fc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afo, i64 noundef %i.afk, i32 noundef %i.aeo)
          to label %bb.jg unwind label %bb.kb

bb.jf:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i798
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afm, ptr nonnull align 1 %i.afi, i64 %i.afk, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit800.thread2393

bb.jg:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit800.thread2393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  %.sroa.02037.0.copyload = load i64, ptr %i.fd, align 8 ; 6 uses
  %.sroa.52038.0.copyload = load ptr, ptr %.sroa.52038.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72039.0.copyload = load i64, ptr %.sroa.72039.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14507)
  call void @llvm.experimental.noalias.scope.decl(metadata !14508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !14509
  call void @llvm.experimental.noalias.scope.decl(metadata !14510)
  call void @llvm.experimental.noalias.scope.decl(metadata !14511)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !14512
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.jj unwind label %bb.jh, !noalias !14512

bb.jh:                                            ; preds = %bb.jg
  %i.afp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afq = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.afq, label %.thread.i802, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14513
  br label %.thread.i802

bb.jj:                                            ; preds = %bb.jg
  store i64 %.sroa.01732.0, ptr %i.bq, align 8, !alias.scope !14514, !noalias !14515
  store ptr %.sroa.50.0, ptr %.sroa.52035.0..sroa_idx, align 8, !alias.scope !14514, !noalias !14515
  store i64 %.sroa.77.0, ptr %.sroa.72036.0..sroa_idx, align 8, !alias.scope !14514, !noalias !14515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !14516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !14512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !14509
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52038.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14517)
  call void @llvm.experimental.noalias.scope.decl(metadata !14518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !14519
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52038.0.copyload, i64 noundef %.sroa.72039.0.copyload)
          to label %bb.jm unwind label %bb.jk, !noalias !14519

bb.jk:                                            ; preds = %bb.jj
  %i.afr = landingpad { ptr, i32 }
          cleanup
  %i.afs = icmp eq i64 %.sroa.02037.0.copyload, 0
  br i1 %i.afs, label %.body9.thread.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52038.0.copyload, i64 noundef %.sroa.02037.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14520
  br label %.body9.thread.i

.body9.thread.i:                                  ; preds = %bb.jl, %bb.jk
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bq) #42, !noalias !14509
  br label %.thread.i802

.body9.i:                                         ; preds = %.body19.i, %bb.jo, %bb.jn
  %.pn.i = phi { ptr, i32 } [ %i.afu, %.body19.i ], [ %i.aft, %bb.jn ], [ %i.aft, %bb.jo ] ; 2 uses
  %.sroa.0.2.i = phi i1 [ false, %.body19.i ], [ true, %bb.jn ], [ true, %bb.jo ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bp) #42, !noalias !14509
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bq) #42, !noalias !14509
  br i1 %.sroa.0.2.i, label %.thread.i802, label %.body369

bb.jm:                                            ; preds = %bb.jj
  store i64 %.sroa.02037.0.copyload, ptr %i.bp, align 8, !alias.scope !14521, !noalias !14509
  store ptr %.sroa.52038.0.copyload, ptr %.sroa.5.0..sroa_idx29.i, align 8, !alias.scope !14521, !noalias !14509
  store i64 %.sroa.72039.0.copyload, ptr %.sroa.6.0..sroa_idx31.i, align 8, !alias.scope !14521, !noalias !14509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !14522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !14519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !14509
  call void @llvm.experimental.noalias.scope.decl(metadata !14523)
  call void @llvm.experimental.noalias.scope.decl(metadata !14524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !14525
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afo, i64 noundef %i.afk)
          to label %bb.jp unwind label %bb.jn, !noalias !14525

bb.jn:                                            ; preds = %bb.jm
  %i.aft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.afl, label %.body9.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afo, i64 noundef %i.afk, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14526
  br label %.body9.i

bb.jp:                                            ; preds = %bb.jm
  store i64 %i.afk, ptr %i.bo, align 8, !alias.scope !14527, !noalias !14509
  store ptr %i.afo, ptr %.sroa.535.0..sroa_idx36.i, align 8, !alias.scope !14527, !noalias !14509
  store i64 %i.afk, ptr %.sroa.638.0..sroa_idx39.i, align 8, !alias.scope !14527, !noalias !14509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !noalias !14528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !14525
  %.sroa.041.0.copyload.i = load i64, ptr %i.fc, align 8, !alias.scope !14508, !noalias !14529 ; 3 uses
  %.sroa.543.0.copyload.i = load ptr, ptr %.sroa.543.0..sroa_idx.i, align 8, !alias.scope !14508, !noalias !14529, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.646.0.copyload.i = load i64, ptr %.sroa.646.0..sroa_idx.i, align 8, !alias.scope !14508, !noalias !14529 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !14530
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.543.0.copyload.i, i64 noundef %.sroa.646.0.copyload.i)
          to label %bb.jx unwind label %bb.jq, !noalias !14530

bb.jq:                                            ; preds = %bb.jp
  %i.afu = landingpad { ptr, i32 }
          cleanup
  %i.afv = icmp eq i64 %.sroa.041.0.copyload.i, 0
  br i1 %i.afv, label %.body19.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.543.0.copyload.i, i64 noundef %.sroa.041.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14531
  br label %.body19.i

.body19.i:                                        ; preds = %bb.jr, %bb.jq
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bo) #42, !noalias !14509
  br label %.body9.i

.thread.i802:                                     ; preds = %.body9.i, %.body9.thread.i, %bb.ji, %bb.jh
  %.sroa.01.061.i = phi i1 [ false, %.body9.i ], [ true, %bb.jh ], [ true, %bb.ji ], [ true, %.body9.thread.i ]
  %.sroa.02.059.i = phi i1 [ true, %.body9.i ], [ false, %bb.jh ], [ false, %bb.ji ], [ true, %.body9.thread.i ] ; 2 uses
  %.pn.pn.pn57.i = phi { ptr, i32 } [ %.pn.i, %.body9.i ], [ %i.afp, %bb.jh ], [ %i.afp, %bb.ji ], [ %i.afr, %.body9.thread.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14532)
  %.val.i.i803 = load i64, ptr %i.fc, align 8, !alias.scope !14533, !noalias !14529 ; 2 uses
  %i.afw = icmp eq i64 %.val.i.i803, 0
  br i1 %i.afw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i805, label %bb.js

bb.js:                                            ; preds = %.thread.i802
  %.val1.i.i804 = load ptr, ptr %.sroa.543.0..sroa_idx.i, align 8, !alias.scope !14533, !noalias !14529, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i804, i64 noundef %.val.i.i803, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14534
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i805

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i805: ; preds = %bb.js, %.thread.i802
  br i1 %.sroa.01.061.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i805
  %.old = icmp eq i64 %.sroa.02037.0.copyload, 0
  %or.cond2732 = select i1 %.sroa.02.059.i, i1 true, i1 %.old
  br i1 %or.cond2732, label %.body369, label %bb.jw

end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl4read:bb.a
bb.mx:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit912.thread2445
  %i.ako = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akp = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.akp, label %.thread.i915, label %bb.my

bb.my:                                            ; preds = %bb.mx
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14619
  br label %.thread.i915

bb.mz:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit912.thread2445
  store i64 %.sroa.01732.0, ptr %i.at, align 8, !alias.scope !14620, !noalias !14621
  store ptr %.sroa.50.0, ptr %.sroa.52067.0..sroa_idx, align 8, !alias.scope !14620, !noalias !14621
  store i64 %.sroa.77.0, ptr %.sroa.72068.0..sroa_idx, align 8, !alias.scope !14620, !noalias !14621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !14622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !14618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !14615
  call void @llvm.experimental.noalias.scope.decl(metadata !14623)
  call void @llvm.experimental.noalias.scope.decl(metadata !14624)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !14625
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aio, i64 noundef %i.aik)
          to label %bb.nc unwind label %bb.na, !noalias !14625

bb.na:                                            ; preds = %bb.mz
  %i.akq = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ail, label %.body9.thread.i934, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aio, i64 noundef %i.aik, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14626
  br label %.body9.thread.i934

.body9.thread.i934:                               ; preds = %bb.nb, %bb.na
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.at) #42, !noalias !14615
  br label %.thread.i915

.body9.i942:                                      ; preds = %.body19.i952, %bb.ne, %bb.nd
  %.pn.i943 = phi { ptr, i32 } [ %i.aks, %.body19.i952 ], [ %i.akr, %bb.nd ], [ %i.akr, %bb.ne ] ; 2 uses
  %.sroa.0.2.i944 = phi i1 [ false, %.body19.i952 ], [ true, %bb.nd ], [ true, %bb.ne ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.as) #42, !noalias !14615
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.at) #42, !noalias !14615
  br i1 %.sroa.0.2.i944, label %.thread.i915, label %.body369

bb.nc:                                            ; preds = %bb.mz
  store i64 %i.aik, ptr %i.as, align 8, !alias.scope !14627, !noalias !14615
  store ptr %i.aio, ptr %.sroa.5.0..sroa_idx29.i935, align 8, !alias.scope !14627, !noalias !14615
  store i64 %i.aik, ptr %.sroa.6.0..sroa_idx31.i936, align 8, !alias.scope !14627, !noalias !14615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !14628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !14625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !14615
  call void @llvm.experimental.noalias.scope.decl(metadata !14629)
  call void @llvm.experimental.noalias.scope.decl(metadata !14630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !14631
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajo, i64 noundef %i.ajk)
          to label %bb.nf unwind label %bb.nd, !noalias !14631

bb.nd:                                            ; preds = %bb.nc
  %i.akr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ajl, label %.body9.i942, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajo, i64 noundef %i.ajk, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14632
  br label %.body9.i942

bb.nf:                                            ; preds = %bb.nc
  store i64 %i.ajk, ptr %i.ar, align 8, !alias.scope !14633, !noalias !14615
  store ptr %i.ajo, ptr %.sroa.535.0..sroa_idx36.i945, align 8, !alias.scope !14633, !noalias !14615
  store i64 %i.ajk, ptr %.sroa.638.0..sroa_idx39.i946, align 8, !alias.scope !14633, !noalias !14615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !14634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !14631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !14635
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akn, i64 noundef %i.akj)
          to label %bb.no unwind label %bb.ng, !noalias !14635

bb.ng:                                            ; preds = %bb.nf
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br i1 %i.akk, label %.body19.i952, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akn, i64 noundef %i.akj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14636
  br label %.body19.i952

.body19.i952:                                     ; preds = %bb.nh, %bb.ng
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ar) #42, !noalias !14615
  br label %.body9.i942

.thread.i915:                                     ; preds = %.body9.i942, %.body9.thread.i934, %bb.my, %bb.mx
  %.sroa.01.063.i916 = phi i1 [ false, %.body9.i942 ], [ true, %bb.mx ], [ true, %bb.my ], [ true, %.body9.thread.i934 ]
  %.sroa.02.061.i917 = phi i1 [ true, %.body9.i942 ], [ %i.ail, %bb.mx ], [ %i.ail, %bb.my ], [ true, %.body9.thread.i934 ] ; 2 uses
  %.pn.pn.pn59.i918 = phi { ptr, i32 } [ %.pn.i943, %.body9.i942 ], [ %i.ako, %bb.mx ], [ %i.ako, %bb.my ], [ %i.akq, %.body9.thread.i934 ] ; 3 uses
  br i1 %i.akk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921, label %bb.ni

bb.ni:                                            ; preds = %.thread.i915
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akn, i64 noundef %i.akj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14637
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921: ; preds = %bb.ni, %.thread.i915
  br i1 %.sroa.01.063.i916, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921
  br i1 %.sroa.02.061.i917, label %.body369, label %bb.nm

bb.nk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i921
  %i.akt = icmp eq i64 %i.ajk, 0
  br i1 %i.akt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajo, i64 noundef %i.ajk, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14638
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928: ; preds = %bb.nl, %bb.nk
  br i1 %.sroa.02.061.i917, label %.body369, label %bb.nm

bb.nm:                                            ; preds = %bb.nj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i928
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aio, i64 noundef %i.aik, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14639
  br label %.body369

bb.nn:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i910
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akl, ptr nonnull align 1 %i.akh, i64 %i.akj, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit912.thread2445

bb.no:                                            ; preds = %bb.nf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i953, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !14640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !14635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.i913, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false), !noalias !14615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.48..sroa_idx.i954, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false), !noalias !14615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.96..sroa_idx.i955, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false), !noalias !14615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !14615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !14615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !14615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ev, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.052.i913, i64 144, i1 false), !noalias !14640
  store i64 %i.akj, ptr %.sroa.653.0..sroa_idx.i956, align 8, !alias.scope !14614, !noalias !14640
  store ptr %i.akn, ptr %.sroa.7.0..sroa_idx.i957, align 8, !alias.scope !14614, !noalias !14640
  store i64 %i.akj, ptr %.sroa.8.0..sroa_idx.i958, align 8, !alias.scope !14614, !noalias !14640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.052.i913)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14641
  %i.aku = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14641 ; 3 uses
  %i.akv = icmp eq ptr %i.aku, null
  br i1 %i.akv, label %bb.np, label %bb.nr, !prof !26

bb.np:                                            ; preds = %bb.no
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #46
          to label %.noexc962 unwind label %bb.nq

.noexc962:                                        ; preds = %bb.np
  unreachable

bb.nq:                                            ; preds = %bb.np
  %i.akw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringj4_EBG_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(192) %i.ev) #45
  br label %.body369

bb.nr:                                            ; preds = %bb.no
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.aku, ptr noundef nonnull align 8 dereferenceable(192) %i.ev, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  br label %bb.dq

bb.ns:                                            ; preds = %._crit_edge.i906, %bb.mw, %bb.mv
  %i.akx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ajl, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajo, i64 noundef %i.ajk, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14642
  br label %bb.nu

bb.nu:                                            ; preds = %bb.mk, %bb.ns, %bb.nt
  %.pn237.ph = phi { ptr, i32 } [ %i.ajb, %bb.mk ], [ %i.akx, %bb.ns ], [ %i.akx, %bb.nt ] ; 2 uses
  br i1 %i.ail, label %.thread2361, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aio, i64 noundef %i.aik, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14643
  br label %.thread2361

bb.nw:                                            ; preds = %bb.cd
  %i.aky = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.akz = load i8, ptr %i.aky, align 1, !noalias !14644, !noundef !21
  %i.ala = zext i8 %i.akz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.eu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.ala)
          to label %bb.nx unwind label %.loopexit.thread

bb.nx:                                            ; preds = %bb.nw
  %.not2725 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2725, label %._crit_edge.i976, label %.lr.ph.i972.preheader

.lr.ph.i972.preheader:                            ; preds = %bb.nx
  %i.alb = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i972

.lr.ph.i972:                                      ; preds = %.lr.ph.i972.preheader, %bb.ny
  %.sroa.0.013.i973 = phi i32 [ %i.all, %bb.ny ], [ 0, %.lr.ph.i972.preheader ] ; 2 uses
  %.sroa.02.012.i974 = phi i32 [ %i.alm, %bb.ny ], [ 0, %.lr.ph.i972.preheader ] ; 3 uses
  %i.alc = phi i64 [ %i.alf, %bb.ny ], [ %i.alb, %.lr.ph.i972.preheader ] ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr @10842, i64 %i.alc
  %i.ale = load i8, ptr %i.ald, align 1, !noalias !14645, !noundef !21 ; 2 uses
  %i.alf = add nuw nsw i64 %i.alc, 1              ; 3 uses
  %i.alg = zext i8 %i.ale to i32                  ; 2 uses
  %i.alh = icmp sgt i8 %i.ale, -1
  br i1 %i.alh, label %bb.nz, label %bb.ny

._crit_edge.i976:                                 ; preds = %bb.nx, %bb.ny
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc977 unwind label %bb.ok

.noexc977:                                        ; preds = %._crit_edge.i976
  unreachable

bb.ny:                                            ; preds = %.lr.ph.i972
  %i.ali = and i32 %i.alg, 127
  %i.alj = and i32 %.sroa.02.012.i974, 31
  %i.alk = shl i32 %i.ali, %i.alj
  %i.all = or i32 %i.alk, %.sroa.0.013.i973
  %i.alm = add i32 %.sroa.02.012.i974, 7
  %exitcond.not.i975 = icmp eq i64 %i.alf, 13463
  br i1 %exitcond.not.i975, label %._crit_edge.i976, label %.lr.ph.i972

bb.nz:                                            ; preds = %.lr.ph.i972
  %i.aln = and i32 %.sroa.02.012.i974, 31
  %i.alo = shl i32 %i.alg, %i.aln
  %i.alp = or i32 %i.alo, %.sroa.0.013.i973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  %.sroa.02080.0.copyload = load i64, ptr %i.eu, align 8 ; 5 uses
  %.sroa.52081.0.copyload = load ptr, ptr %.sroa.52081.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72082.0.copyload = load i64, ptr %.sroa.72082.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14646)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !14647
  call void @llvm.experimental.noalias.scope.decl(metadata !14648)
  call void @llvm.experimental.noalias.scope.decl(metadata !14649)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !14650
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.oc unwind label %bb.oa, !noalias !14650

bb.oa:                                            ; preds = %bb.nz
  %i.alq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alr = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.alr, label %.thread.i980, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14651
  br label %.thread.i980

bb.oc:                                            ; preds = %bb.nz
  store i64 %.sroa.01732.0, ptr %i.am, align 8, !alias.scope !14652, !noalias !14653
  store ptr %.sroa.50.0, ptr %.sroa.52078.0..sroa_idx, align 8, !alias.scope !14652, !noalias !14653
  store i64 %.sroa.77.0, ptr %.sroa.72079.0..sroa_idx, align 8, !alias.scope !14652, !noalias !14653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !14654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !14650
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52081.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !14655
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52081.0.copyload, i64 noundef %.sroa.72082.0.copyload)
          to label %bb.og unwind label %bb.od, !noalias !14655

bb.od:                                            ; preds = %bb.oc
  %i.als = landingpad { ptr, i32 }
          cleanup
  %i.alt = icmp eq i64 %.sroa.02080.0.copyload, 0
  br i1 %i.alt, label %.body5.i990, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52081.0.copyload, i64 noundef %.sroa.02080.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14656
  br label %.body5.i990

.body5.i990:                                      ; preds = %bb.oe, %bb.od
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.am) #42, !noalias !14647
  br label %.body369

.thread.i980:                                     ; preds = %bb.ob, %bb.oa
  %i.alu = icmp eq i64 %.sroa.02080.0.copyload, 0
  br i1 %i.alu, label %.body369, label %bb.of

bb.of:                                            ; preds = %.thread.i980
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52081.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52081.0.copyload, i64 noundef %.sroa.02080.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14657
  br label %.body369

bb.og:                                            ; preds = %bb.oc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i991, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !14658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !14655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.et, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false), !noalias !14658
  store i64 %.sroa.02080.0.copyload, ptr %i.jh, align 8, !alias.scope !14646, !noalias !14658
  store ptr %.sroa.52081.0.copyload, ptr %.sroa.4.0..sroa_idx.i992, align 8, !alias.scope !14646, !noalias !14658
  store i64 %.sroa.72082.0.copyload, ptr %.sroa.514.0..sroa_idx.i993, align 8, !alias.scope !14646, !noalias !14658
  store i32 %i.alp, ptr %i.ji, align 8, !alias.scope !14646, !noalias !14658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !14647
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14659
  %i.alv = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14659 ; 3 uses
  %i.alw = icmp eq ptr %i.alv, null
  br i1 %i.alw, label %bb.oh, label %bb.oj, !prof !26

bb.oh:                                            ; preds = %bb.og
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc997 unwind label %bb.oi

.noexc997:                                        ; preds = %bb.oh
  unreachable

bb.oi:                                            ; preds = %bb.oh
  %i.alx = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info23SimpleInstrInfo_OpSize3EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.et) #42
  br label %.body369

bb.oj:                                            ; preds = %bb.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.alv, ptr noundef nonnull align 8 dereferenceable(104) %i.et, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %bb.dq

bb.ok:                                            ; preds = %._crit_edge.i976
  %i.aly = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14660)
  %.val.i999 = load i64, ptr %i.eu, align 8, !alias.scope !14660 ; 2 uses
  %i.alz = icmp eq i64 %.val.i999, 0
  br i1 %i.alz, label %.thread2361, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %.val1.i1000 = load ptr, ptr %.sroa.52081.0..sroa_idx, align 8, !alias.scope !14660, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1000, i64 noundef %.val.i999, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14660
  br label %.thread2361

bb.om:                                            ; preds = %.lr.ph.i488
  %i.ama = and i32 %.sroa.02.012.i490, 31
  %i.amb = shl i32 %i.sn, %i.ama
  %i.amc = or i32 %i.amb, %.sroa.0.013.i489
  %i.amd = icmp ult i64 %i.sj, 13462
  br i1 %i.amd, label %bb.on, label %.invoke13432

bb.on:                                            ; preds = %bb.om
  %i.ame = getelementptr inbounds nuw i8, ptr @10842, i64 %i.sm
  %i.amf = load i8, ptr %i.ame, align 1, !noalias !14661, !noundef !21
  %.not8616 = icmp eq i64 %i.sj, 13461
  br i1 %.not8616, label %.invoke13432, label %.lr.ph.i1006.preheader

.lr.ph.i1006.preheader:                           ; preds = %bb.on
  %i.amg = add nuw nsw i64 %i.sj, 2
  br label %.lr.ph.i1006

.lr.ph.i1006:                                     ; preds = %.lr.ph.i1006.preheader, %bb.oo
  %.sroa.0.013.i1007 = phi i32 [ %i.amq, %bb.oo ], [ 0, %.lr.ph.i1006.preheader ] ; 2 uses
  %.sroa.02.012.i1008 = phi i32 [ %i.amr, %bb.oo ], [ 0, %.lr.ph.i1006.preheader ] ; 3 uses
  %i.amh = phi i64 [ %i.amk, %bb.oo ], [ %i.amg, %.lr.ph.i1006.preheader ] ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr @10842, i64 %i.amh
  %i.amj = load i8, ptr %i.ami, align 1, !noalias !14662, !noundef !21 ; 2 uses
  %i.amk = add nuw nsw i64 %i.amh, 1              ; 3 uses
  %i.aml = zext i8 %i.amj to i32                  ; 2 uses
  %i.amm = icmp sgt i8 %i.amj, -1
  br i1 %i.amm, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %.lr.ph.i1006
  %i.amn = and i32 %i.aml, 127
  %i.amo = and i32 %.sroa.02.012.i1008, 31
  %i.amp = shl i32 %i.amn, %i.amo
  %i.amq = or i32 %i.amp, %.sroa.0.013.i1007
  %i.amr = add i32 %.sroa.02.012.i1008, 7
  %exitcond.not.i1009 = icmp eq i64 %i.amk, 13463
  br i1 %exitcond.not.i1009, label %.invoke13432, label %.lr.ph.i1006

bb.op:                                            ; preds = %.lr.ph.i1006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.experimental.noalias.scope.decl(metadata !14663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !14664
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.os unwind label %bb.oq, !noalias !14664

bb.oq:                                            ; preds = %bb.op
  %i.ams = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amt = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.amt, label %.body369, label %bb.or

bb.or:                                            ; preds = %bb.oq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14665
  br label %.body369

bb.os:                                            ; preds = %bb.op
  %i.amu = icmp ne i8 %i.amf, 0
  %i.amv = and i32 %.sroa.02.012.i1008, 31
  %i.amw = shl i32 %i.aml, %i.amv
  %i.amx = or i32 %i.amw, %.sroa.0.013.i1007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62280.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !14666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !14664
  store i64 %.sroa.01732.0, ptr %i.es, align 8, !noalias !14666
  store ptr %.sroa.50.0, ptr %.sroa.42278.0..sroa_idx, align 8, !noalias !14666
  store i64 %.sroa.77.0, ptr %.sroa.52279.0..sroa_idx, align 8, !noalias !14666
  store i32 %i.amc, ptr %i.jd, align 8, !alias.scope !14663, !noalias !14666
  store i32 %i.amx, ptr %i.je, align 4, !alias.scope !14663, !noalias !14666
  %i.amy = zext i1 %i.amu to i8
  store i8 %i.amy, ptr %i.jf, align 8, !alias.scope !14663, !noalias !14666
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14667
  %i.amz = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14667 ; 3 uses
  %i.ana = icmp eq ptr %i.amz, null
  br i1 %i.ana, label %bb.ot, label %bb.ov, !prof !26

bb.ot:                                            ; preds = %bb.os
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc1019 unwind label %bb.ou

.noexc1019:                                       ; preds = %bb.ot
  unreachable

bb.ou:                                            ; preds = %bb.ot
  %i.anb = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_osEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.es) #42
  br label %.body369

bb.ov:                                            ; preds = %bb.os
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.amz, ptr noundef nonnull align 8 dereferenceable(64) %i.es, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  br label %bb.dq

bb.ow:                                            ; preds = %bb.cg
  %i.anc = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.and = load i8, ptr %i.anc, align 1, !noalias !14668, !noundef !21
  %i.ane = add nuw nsw i64 %.sroa.156.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.experimental.noalias.scope.decl(metadata !14669)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !14670
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.oz unwind label %bb.ox, !noalias !14670

bb.ox:                                            ; preds = %bb.ow
  %i.anf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ang = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.ang, label %.body369, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14671
  br label %.body369

bb.oz:                                            ; preds = %bb.ow
  %i.anh = icmp ne i8 %i.and, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !14672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !14670
  store i64 %.sroa.01732.0, ptr %i.cs, align 8, !noalias !14672
  store ptr %.sroa.50.0, ptr %.sroa.42282.0..sroa_idx, align 8, !noalias !14672
  store i64 %.sroa.77.0, ptr %.sroa.52283.0..sroa_idx, align 8, !noalias !14672
  %i.ani = zext i1 %i.anh to i8
  store i8 %i.ani, ptr %i.jc, align 8, !alias.scope !14669, !noalias !14672
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14673
  %i.anj = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14673 ; 3 uses
  %i.ank = icmp eq ptr %i.anj, null
  br i1 %i.ank, label %bb.pa, label %bb.pc, !prof !26

bb.pa:                                            ; preds = %bb.oz
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1027 unwind label %bb.pb

.noexc1027:                                       ; preds = %bb.pa
  unreachable

bb.pb:                                            ; preds = %bb.pa
  %i.anl = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_STi_STEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cs) #42
  br label %.body369

bb.pc:                                            ; preds = %bb.oz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.anj, ptr noundef nonnull align 8 dereferenceable(56) %i.cs, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.dq

bb.pd:                                            ; preds = %.lr.ph.i499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.experimental.noalias.scope.decl(metadata !14674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !14675
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.pg unwind label %bb.pe, !noalias !14675

bb.pe:                                            ; preds = %bb.pd
  %i.anm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ann = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.ann, label %.body369, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14676
  br label %.body369

bb.pg:                                            ; preds = %bb.pd
  %i.ano = and i32 %.sroa.02.012.i501, 31
  %i.anp = shl i32 %i.ta, %i.ano
  %i.anq = or i32 %i.anp, %.sroa.0.013.i500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62288.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !14677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !14675
  store i64 %.sroa.01732.0, ptr %i.cu, align 8, !noalias !14677
  store ptr %.sroa.50.0, ptr %.sroa.42286.0..sroa_idx, align 8, !noalias !14677
  store i64 %.sroa.77.0, ptr %.sroa.52287.0..sroa_idx, align 8, !noalias !14677
  store i32 %i.anq, ptr %i.jb, align 8, !alias.scope !14674, !noalias !14677
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14678
  %i.anr = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14678 ; 3 uses
  %i.ans = icmp eq ptr %i.anr, null
  br i1 %i.ans, label %bb.ph, label %bb.pj, !prof !26

bb.ph:                                            ; preds = %bb.pg
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1035 unwind label %bb.pi

.noexc1035:                                       ; preds = %bb.ph
  unreachable

bb.pi:                                            ; preds = %bb.ph
  %i.ant = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_saeEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cu) #42
  br label %.body369

bb.pj:                                            ; preds = %bb.pg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.anr, ptr noundef nonnull align 8 dereferenceable(56) %i.cu, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.dq

bb.pk:                                            ; preds = %bb.cj
  %i.anu = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.anv = load i8, ptr %i.anu, align 1, !noalias !14679, !noundef !21
  %i.anw = zext i8 %i.anv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.er, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.anw)
          to label %bb.pl unwind label %.loopexit.thread

bb.pl:                                            ; preds = %bb.pk
  %.not2724 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2724, label %._crit_edge.i1043, label %.lr.ph.i1039.preheader

.lr.ph.i1039.preheader:                           ; preds = %bb.pl
  %i.anx = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1039

.lr.ph.i1039:                                     ; preds = %.lr.ph.i1039.preheader, %bb.pm
  %.sroa.0.013.i1040 = phi i32 [ %i.aoh, %bb.pm ], [ 0, %.lr.ph.i1039.preheader ] ; 2 uses
  %.sroa.02.012.i1041 = phi i32 [ %i.aoi, %bb.pm ], [ 0, %.lr.ph.i1039.preheader ] ; 3 uses
  %i.any = phi i64 [ %i.aob, %bb.pm ], [ %i.anx, %.lr.ph.i1039.preheader ] ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr @10842, i64 %i.any
  %i.aoa = load i8, ptr %i.anz, align 1, !noalias !14680, !noundef !21 ; 2 uses
  %i.aob = add nuw nsw i64 %i.any, 1              ; 3 uses
  %i.aoc = zext i8 %i.aoa to i32                  ; 2 uses
  %i.aod = icmp sgt i8 %i.aoa, -1
  br i1 %i.aod, label %bb.pn, label %bb.pm

._crit_edge.i1043:                                ; preds = %bb.pl, %bb.pm
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1044 unwind label %.thread2463

.noexc1044:                                       ; preds = %._crit_edge.i1043
  unreachable

bb.pm:                                            ; preds = %.lr.ph.i1039
  %i.aoe = and i32 %i.aoc, 127
  %i.aof = and i32 %.sroa.02.012.i1041, 31
  %i.aog = shl i32 %i.aoe, %i.aof
  %i.aoh = or i32 %i.aog, %.sroa.0.013.i1040
  %i.aoi = add i32 %.sroa.02.012.i1041, 7
  %exitcond.not.i1042 = icmp eq i64 %i.aob, 13463
  br i1 %exitcond.not.i1042, label %._crit_edge.i1043, label %.lr.ph.i1039

.thread2463:                                      ; preds = %._crit_edge.i1043, %bb.po
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %.thread2453

bb.pn:                                            ; preds = %.lr.ph.i1039
  %i.aok = and i32 %.sroa.02.012.i1041, 31
  %i.aol = shl i32 %i.aoc, %i.aok
  %i.aom = or i32 %i.aol, %.sroa.0.013.i1040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aon = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.aoo = icmp eq ptr %i.aon, null
  br i1 %i.aoo, label %bb.po, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1047, !prof !26

bb.po:                                            ; preds = %bb.pn
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc1046 unwind label %.thread2463

.noexc1046:                                       ; preds = %bb.po
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1047: ; preds = %bb.pn
  store i64 %.sroa.01732.0, ptr %i.aon, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aon, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52087.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aon, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52087.0..sroa_idx, align 8
  store i64 1, ptr %i.ep, align 8
  store ptr %i.aon, ptr %i.iv, align 8
  store i64 1, ptr %i.iw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aop = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 3 uses
  %i.aoq = icmp eq ptr %i.aop, null
  br i1 %i.aoq, label %bb.pp, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1049, !prof !26

bb.pp:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1047
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc1048 unwind label %bb.px

.noexc1048:                                       ; preds = %bb.pp
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1049: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aop, ptr noundef nonnull align 8 dereferenceable(24) %i.er, i64 24, i1 false)
  store i64 1, ptr %i.eo, align 8
  store ptr %i.aop, ptr %i.ix, align 8
  store i64 1, ptr %i.iy, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !14682
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ep)
          to label %bb.pq unwind label %bb.ps, !noalias !14683

bb.pq:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !14682
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eo)
          to label %bb.pt unwind label %bb.pr, !noalias !14684

bb.pr:                                            ; preds = %bb.pq
  %i.aor = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #42, !noalias !14682
  br label %.body369

bb.ps:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1049
  %i.aos = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.eo) #42, !noalias !14684
  br label %.body369

bb.pt:                                            ; preds = %bb.pq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !14685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !14685
  store i32 %i.aom, ptr %i.ja, align 8, !alias.scope !14681, !noalias !14685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !14682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14686
  %i.aot = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14686 ; 3 uses
  %i.aou = icmp eq ptr %i.aot, null
  br i1 %i.aou, label %bb.pu, label %bb.pw, !prof !26

bb.pu:                                            ; preds = %bb.pt
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1052 unwind label %bb.pv

.noexc1052:                                       ; preds = %bb.pu
  unreachable

bb.pv:                                            ; preds = %bb.pu
  %i.aov = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.eq) #42
  br label %.body369

bb.pw:                                            ; preds = %bb.pt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aot, ptr noundef nonnull align 8 dereferenceable(56) %i.eq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  br label %bb.dq

bb.px:                                            ; preds = %bb.pp
  %i.aow = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ep) #42
  br label %.thread2453

.thread2453:                                      ; preds = %bb.px, %.thread2463
  %.sroa.0112.152458 = phi i1 [ true, %.thread2463 ], [ false, %bb.px ] ; 2 uses
  %.pn2322457 = phi { ptr, i32 } [ %i.aoj, %.thread2463 ], [ %i.aow, %bb.px ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14687)
  %.val.i1054 = load i64, ptr %i.er, align 8, !alias.scope !14687 ; 2 uses
  %i.aox = icmp eq i64 %.val.i1054, 0
  br i1 %i.aox, label %.body249, label %.split8625

.split8625:                                       ; preds = %.thread2453
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.val1.i1055 = load ptr, ptr %i.aoy, align 8, !alias.scope !14687, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1055, i64 noundef %.val.i1054, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14687
  br i1 %.sroa.0112.152458, label %.thread2361, label %.body369

bb.py:                                            ; preds = %.lr.ph.i510
  %i.aoz = and i32 %.sroa.02.012.i512, 31
  %i.apa = shl i32 %i.tn, %i.aoz
  %i.apb = or i32 %i.apa, %.sroa.0.013.i511
  %i.apc = zext i32 %i.apb to i64                 ; 3 uses
  %i.apd = icmp ugt i64 %i.ny, %i.apc
  br i1 %i.apd, label %bb.pz, label %.invoke13436

bb.pz:                                            ; preds = %bb.py
  %i.ape = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.apc ; 2 uses
  %i.apf = load ptr, ptr %i.ape, align 8, !nonnull !21, !noundef !21
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ape, i64 8
  %i.aph = load i64, ptr %i.apg, align 8, !noundef !21 ; 10 uses
  %.not.i1057 = icmp slt i64 %i.aph, 0
  br i1 %.not.i1057, label %.invoke13434, label %bb.qa, !prof !37

bb.qa:                                            ; preds = %bb.pz
  %i.api = icmp eq i64 %i.aph, 0                  ; 2 uses
  br i1 %i.api, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058: ; preds = %bb.qa
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14688
  %i.apj = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aph, i64 noundef range(i64 1, 9) 1) #41, !noalias !14688 ; 3 uses
  %i.apk = icmp eq ptr %i.apj, null
  br i1 %i.apk, label %.invoke13434, label %bb.qc

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474: ; preds = %bb.qa, %bb.qc
  %i.apl = phi ptr [ %i.apj, %bb.qc ], [ inttoptr (i64 1 to ptr), %bb.qa ] ; 3 uses
  %i.apm = icmp ult i64 %i.tj, 13462
  br i1 %i.apm, label %bb.qd, label %bb.qb

bb.qb:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1061 unwind label %.thread2480.loopexit.split-lp

.noexc1061:                                       ; preds = %bb.qb
  unreachable

bb.qc:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apj, ptr nonnull align 1 %i.apf, i64 %i.aph, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474

.thread2497:                                      ; preds = %bb.qv, %bb.qu
  br i1 %.sroa.098.1.ph, label %.thread2480, label %.body369

.thread2480.loopexit:                             ; preds = %bb.qd
  %lpad.loopexit2775 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2480

.thread2480.loopexit.split-lp:                    ; preds = %bb.qb
  %lpad.loopexit.split-lp2776 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2480

bb.qd:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1060.thread2474
end_hunk_3
begin_hunk_4_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl4read:bb.a
  br i1 %i.azc, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %.lr.ph.i1217
  %i.azd = and i32 %i.azb, 127
  %i.aze = and i32 %.sroa.02.012.i1219, 31
  %i.azf = shl i32 %i.azd, %i.aze
  %i.azg = or i32 %i.azf, %.sroa.0.013.i1218
  %i.azh = add i32 %.sroa.02.012.i1219, 7
  %exitcond.not.i1220 = icmp eq i64 %i.aza, 13463
  br i1 %exitcond.not.i1220, label %._crit_edge.i1212.invoke, label %.lr.ph.i1217

bb.tw:                                            ; preds = %.lr.ph.i1217
  %i.azi = and i32 %.sroa.02.012.i1219, 31
  %i.azj = shl i32 %i.azb, %i.azi
  %i.azk = or i32 %i.azj, %.sroa.0.013.i1218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.azl = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.azm = icmp eq ptr %i.azl, null
  br i1 %i.azm, label %bb.tx, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225, !prof !26

bb.tx:                                            ; preds = %bb.tw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1224 unwind label %bb.uc

.noexc1224:                                       ; preds = %bb.tx
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225: ; preds = %bb.tw
  store i64 %.sroa.01732.0, ptr %i.azl, align 8
  %.sroa.42131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42131.0..sroa_idx, align 8
  %.sroa.52132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52132.0..sroa_idx, align 8
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azl, i64 24
  store i64 %i.axc, ptr %i.azn, align 8
  %.sroa.42134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 32
  store ptr %i.axg, ptr %.sroa.42134.0..sroa_idx, align 8
  %.sroa.52135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 40
  store i64 %i.axc, ptr %.sroa.52135.0..sroa_idx, align 8
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azl, i64 48
  store i64 %i.ayc, ptr %i.azo, align 8
  %.sroa.42137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 56
  store ptr %i.ayg, ptr %.sroa.42137.0..sroa_idx, align 8
  %.sroa.52138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 64
  store i64 %i.ayc, ptr %.sroa.52138.0..sroa_idx, align 8
  store i64 3, ptr %i.dx, align 8
  store ptr %i.azl, ptr %i.hx, align 8
  store i64 3, ptr %i.hy, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dy, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dx)
          to label %bb.ty unwind label %.body329

bb.ty:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225
  store i32 %i.azk, ptr %i.hz, align 8, !alias.scope !14732, !noalias !14733
  store i32 %i.ayv, ptr %i.ia, align 4, !alias.scope !14732, !noalias !14733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14734
  %i.azp = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14734 ; 3 uses
  %i.azq = icmp eq ptr %i.azp, null
  br i1 %i.azq, label %bb.tz, label %bb.ub, !prof !26

bb.tz:                                            ; preds = %bb.ty
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1228 unwind label %bb.ua

.noexc1228:                                       ; preds = %bb.tz
  unreachable

bb.ua:                                            ; preds = %bb.tz
  %i.azr = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dy) #42
  br label %.body369

bb.ub:                                            ; preds = %bb.ty
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.azp, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.dq

bb.uc:                                            ; preds = %._crit_edge.i1212.invoke, %bb.tx
  %lpad.thr_comm2614 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ayd, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayg, i64 noundef %i.ayc, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14735
  br label %bb.ue

bb.ue:                                            ; preds = %bb.tm, %bb.uc, %bb.ud
  %.pn215.ph = phi { ptr, i32 } [ %i.axt, %bb.tm ], [ %lpad.thr_comm2614, %bb.uc ], [ %lpad.thr_comm2614, %bb.ud ] ; 2 uses
  br i1 %i.axd, label %.thread2361, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.axg, i64 noundef %i.axc, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14736
  br label %.thread2361

bb.ug:                                            ; preds = %.lr.ph.i555
  %i.azs = and i32 %.sroa.02.012.i557, 31
  %i.azt = shl i32 %i.vv, %i.azs
  %i.azu = or i32 %i.azt, %.sroa.0.013.i556
  %i.azv = zext i32 %i.azu to i64                 ; 3 uses
  %i.azw = icmp ugt i64 %i.ny, %i.azv
  br i1 %i.azw, label %bb.uh, label %.invoke13436

bb.uh:                                            ; preds = %bb.ug
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.azv ; 2 uses
  %i.azy = load ptr, ptr %i.azx, align 8, !nonnull !21, !noundef !21
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azx, i64 8
  %i.baa = load i64, ptr %i.azz, align 8, !noundef !21 ; 10 uses
  %.not.i1236 = icmp slt i64 %i.baa, 0
  br i1 %.not.i1236, label %.invoke13434, label %bb.ui, !prof !37

bb.ui:                                            ; preds = %bb.uh
  %i.bab = icmp eq i64 %i.baa, 0                  ; 2 uses
  br i1 %i.bab, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237: ; preds = %bb.ui
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14737
  %i.bac = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.baa, i64 noundef range(i64 1, 9) 1) #41, !noalias !14737 ; 3 uses
  %i.bad = icmp eq ptr %i.bac, null
  br i1 %i.bad, label %.invoke13434, label %bb.uk

.invoke13436:                                     ; preds = %bb.ug, %bb.th, %bb.ss, %bb.qx, %bb.py, %bb.mf
  %i.bae = phi i64 [ %i.awx, %bb.th ], [ %i.ava, %bb.ss ], [ %i.ara, %bb.qx ], [ %i.apc, %bb.py ], [ %i.aif, %bb.mf ], [ %i.azv, %bb.ug ]
  %i.baf = phi ptr [ @10828, %bb.th ], [ @10827, %bb.ss ], [ @10824, %bb.qx ], [ @10823, %bb.py ], [ @10814, %bb.mf ], [ @10830, %bb.ug ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bae, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.baf) #46
          to label %.cont13437 unwind label %.body249.thread

.cont13437:                                       ; preds = %.invoke13436
  unreachable

.invoke13434:                                     ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237, %bb.uh, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190, %bb.ti, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159, %bb.st, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092, %bb.qy, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058, %bb.pz, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884, %bb.mg
  %i.bag = phi i64 [ 0, %bb.ti ], [ 0, %bb.st ], [ 0, %bb.qy ], [ 0, %bb.pz ], [ 0, %bb.mg ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237 ], [ 0, %bb.uh ]
  %i.bah = phi i64 [ %i.axc, %bb.ti ], [ %i.avf, %bb.st ], [ %i.arf, %bb.qy ], [ %i.aph, %bb.pz ], [ %i.aik, %bb.mg ], [ %i.aik, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884 ], [ %i.aph, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058 ], [ %i.arf, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092 ], [ %i.avf, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159 ], [ %i.axc, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190 ], [ %i.baa, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237 ], [ %i.baa, %bb.uh ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bag, i64 %i.bah) #46
          to label %.cont13435 unwind label %.body249.thread

.cont13435:                                       ; preds = %.invoke13434
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625: ; preds = %bb.ui, %bb.uk
  %i.bai = phi ptr [ %i.bac, %bb.uk ], [ inttoptr (i64 1 to ptr), %bb.ui ] ; 3 uses
  %i.baj = icmp ult i64 %i.vr, 13462
  br i1 %i.baj, label %bb.ul, label %bb.uj

bb.uj:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1240 unwind label %.thread2631.loopexit.split-lp

.noexc1240:                                       ; preds = %bb.uj
  unreachable

bb.uk:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bac, ptr nonnull align 1 %i.azy, i64 %i.baa, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625

.thread2648:                                      ; preds = %bb.vh, %bb.vg
  br i1 %.sroa.085.1.ph, label %.thread2631, label %.body369

.thread2631.loopexit:                             ; preds = %bb.ul
  %lpad.loopexit2753 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2631

.thread2631.loopexit.split-lp:                    ; preds = %bb.uj
  %lpad.loopexit.split-lp2754 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2631

bb.ul:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625
  %i.bak = getelementptr inbounds nuw i8, ptr @10842, i64 %i.vu
  %i.bal = load i8, ptr %i.bak, align 1, !noalias !14738, !noundef !21
  %i.bam = add nuw nsw i64 %i.vr, 2
  %i.ban = zext i8 %i.bal to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.ban)
          to label %bb.um unwind label %.thread2631.loopexit

bb.um:                                            ; preds = %bb.ul
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bai, i64 noundef %i.baa, i32 noundef %i.ban)
          to label %bb.uo unwind label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.bao = landingpad { ptr, i32 }
          cleanup
  br label %bb.vg

bb.uo:                                            ; preds = %bb.um
  %.not8613 = icmp eq i64 %i.vr, 13461
  br i1 %.not8613, label %._crit_edge.i1248.invoke, label %.lr.ph.i1244

.lr.ph.i1244:                                     ; preds = %bb.uo, %bb.up
  %.sroa.0.013.i1245 = phi i32 [ %i.bay, %bb.up ], [ 0, %bb.uo ] ; 2 uses
  %.sroa.02.012.i1246 = phi i32 [ %i.baz, %bb.up ], [ 0, %bb.uo ] ; 3 uses
  %i.bap = phi i64 [ %i.bas, %bb.up ], [ %i.bam, %bb.uo ] ; 3 uses
  %i.baq = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bap
  %i.bar = load i8, ptr %i.baq, align 1, !noalias !14739, !noundef !21 ; 2 uses
  %i.bas = add nuw nsw i64 %i.bap, 1              ; 4 uses
  %i.bat = zext i8 %i.bar to i32                  ; 2 uses
  %i.bau = icmp sgt i8 %i.bar, -1
  br i1 %i.bau, label %bb.uq, label %bb.up

._crit_edge.i1248.invoke:                         ; preds = %bb.uo, %bb.us, %bb.uq, %bb.up, %bb.ur, %bb.ut
  %0 = phi i64 [ 13463, %bb.ut ], [ 13463, %bb.ur ], [ 13463, %bb.up ], [ 13463, %bb.uo ], [ 13463, %bb.us ], [ %i.bas, %bb.uq ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1248.cont unwind label %.thread2652

._crit_edge.i1248.cont:                           ; preds = %._crit_edge.i1248.invoke
  unreachable

bb.up:                                            ; preds = %.lr.ph.i1244
  %i.bav = and i32 %i.bat, 127
  %i.baw = and i32 %.sroa.02.012.i1246, 31
  %i.bax = shl i32 %i.bav, %i.baw
  %i.bay = or i32 %i.bax, %.sroa.0.013.i1245
  %i.baz = add i32 %.sroa.02.012.i1246, 7
  %exitcond.not.i1247 = icmp eq i64 %i.bas, 13463
  br i1 %exitcond.not.i1247, label %._crit_edge.i1248.invoke, label %.lr.ph.i1244

.thread2652:                                      ; preds = %._crit_edge.i1248.invoke, %bb.uv
  %i.bba = landingpad { ptr, i32 }
          cleanup
  br label %.thread2642

bb.uq:                                            ; preds = %.lr.ph.i1244
  %i.bbb = and i32 %.sroa.02.012.i1246, 31
  %i.bbc = shl i32 %i.bat, %i.bbb
  %i.bbd = or i32 %i.bbc, %.sroa.0.013.i1245
  %i.bbe = icmp ult i64 %i.bap, 13462
  br i1 %i.bbe, label %.lr.ph.i1253, label %._crit_edge.i1248.invoke

.lr.ph.i1253:                                     ; preds = %bb.uq, %bb.ur
  %.sroa.0.013.i1254 = phi i32 [ %i.bbo, %bb.ur ], [ 0, %bb.uq ] ; 2 uses
  %.sroa.02.012.i1255 = phi i32 [ %i.bbp, %bb.ur ], [ 0, %bb.uq ] ; 3 uses
  %i.bbf = phi i64 [ %i.bbi, %bb.ur ], [ %i.bas, %bb.uq ] ; 3 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bbf
  %i.bbh = load i8, ptr %i.bbg, align 1, !noalias !14740, !noundef !21 ; 2 uses
  %i.bbi = add nuw nsw i64 %i.bbf, 1              ; 3 uses
  %i.bbj = zext i8 %i.bbh to i32                  ; 2 uses
  %i.bbk = icmp sgt i8 %i.bbh, -1
  br i1 %i.bbk, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %.lr.ph.i1253
  %i.bbl = and i32 %i.bbj, 127
  %i.bbm = and i32 %.sroa.02.012.i1255, 31
  %i.bbn = shl i32 %i.bbl, %i.bbm
  %i.bbo = or i32 %i.bbn, %.sroa.0.013.i1254
  %i.bbp = add i32 %.sroa.02.012.i1255, 7
  %exitcond.not.i1256 = icmp eq i64 %i.bbi, 13463
  br i1 %exitcond.not.i1256, label %._crit_edge.i1248.invoke, label %.lr.ph.i1253

bb.us:                                            ; preds = %.lr.ph.i1253
  %i.bbq = and i32 %.sroa.02.012.i1255, 31
  %i.bbr = shl i32 %i.bbj, %i.bbq
  %i.bbs = or i32 %i.bbr, %.sroa.0.013.i1254
  %i.bbt = icmp ult i64 %i.bbf, 13462
  br i1 %i.bbt, label %.lr.ph.i1262, label %._crit_edge.i1248.invoke

.lr.ph.i1262:                                     ; preds = %bb.us, %bb.ut
  %.sroa.0.013.i1263 = phi i32 [ %i.bcd, %bb.ut ], [ 0, %bb.us ] ; 2 uses
  %.sroa.02.012.i1264 = phi i32 [ %i.bce, %bb.ut ], [ 0, %bb.us ] ; 3 uses
  %i.bbu = phi i64 [ %i.bbx, %bb.ut ], [ %i.bbi, %bb.us ] ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bbu
  %i.bbw = load i8, ptr %i.bbv, align 1, !noalias !14741, !noundef !21 ; 2 uses
  %i.bbx = add nuw nsw i64 %i.bbu, 1              ; 3 uses
  %i.bby = zext i8 %i.bbw to i32                  ; 2 uses
  %i.bbz = icmp sgt i8 %i.bbw, -1
  br i1 %i.bbz, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %.lr.ph.i1262
  %i.bca = and i32 %i.bby, 127
  %i.bcb = and i32 %.sroa.02.012.i1264, 31
  %i.bcc = shl i32 %i.bca, %i.bcb
  %i.bcd = or i32 %i.bcc, %.sroa.0.013.i1263
  %i.bce = add i32 %.sroa.02.012.i1264, 7
  %exitcond.not.i1265 = icmp eq i64 %i.bbx, 13463
  br i1 %exitcond.not.i1265, label %._crit_edge.i1248.invoke, label %.lr.ph.i1262

bb.uu:                                            ; preds = %.lr.ph.i1262
  %i.bcf = and i32 %.sroa.02.012.i1264, 31
  %i.bcg = shl i32 %i.bby, %i.bcf
  %i.bch = or i32 %i.bcg, %.sroa.0.013.i1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bci = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.bcj = icmp eq ptr %i.bci, null
  br i1 %i.bcj, label %bb.uv, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270, !prof !26

bb.uv:                                            ; preds = %bb.uu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1269 unwind label %.thread2652

.noexc1269:                                       ; preds = %bb.uv
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270: ; preds = %bb.uu
  store i64 %.sroa.01732.0, ptr %i.bci, align 8
  %.sroa.42143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bci, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42143.0..sroa_idx, align 8
  %.sroa.52144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bci, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52144.0..sroa_idx, align 8
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bci, i64 24
  store i64 %i.baa, ptr %i.bck, align 8
  %.sroa.42146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bci, i64 32
  store ptr %i.bai, ptr %.sroa.42146.0..sroa_idx, align 8
  %.sroa.52147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bci, i64 40
  store i64 %i.baa, ptr %.sroa.52147.0..sroa_idx, align 8
  store i64 2, ptr %i.dt, align 8
  store ptr %i.bci, ptr %i.hp, align 8
  store i64 2, ptr %i.hq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bcl = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 4 uses
  %i.bcm = icmp eq ptr %i.bcl, null
  br i1 %i.bcm, label %bb.uw, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272, !prof !26

bb.uw:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1271 unwind label %bb.ve

.noexc1271:                                       ; preds = %bb.uw
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bcl, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bcn, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  store i64 2, ptr %i.ds, align 8
  store ptr %i.bcl, ptr %i.hr, align 8
  store i64 2, ptr %i.hs, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14742)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14743
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dt)
          to label %bb.ux unwind label %bb.uz, !noalias !14744

bb.ux:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14743
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ds)
          to label %bb.va unwind label %bb.uy, !noalias !14745

bb.uy:                                            ; preds = %bb.ux
  %i.bco = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #42, !noalias !14743
  br label %.body369

bb.uz:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272
  %i.bcp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ds) #42, !noalias !14745
  br label %.body369

bb.va:                                            ; preds = %bb.ux
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !14746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !14746
  store i32 %i.bbs, ptr %i.hu, align 8, !alias.scope !14742, !noalias !14746
  store i32 %i.bbd, ptr %i.hv, align 4, !alias.scope !14742, !noalias !14746
  store i32 %i.bch, ptr %i.hw, align 8, !alias.scope !14742, !noalias !14746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14747
  %i.bcq = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14747 ; 3 uses
  %i.bcr = icmp eq ptr %i.bcq, null
  br i1 %i.bcr, label %bb.vb, label %bb.vd, !prof !26

bb.vb:                                            ; preds = %bb.va
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc1276 unwind label %bb.vc

.noexc1276:                                       ; preds = %bb.vb
  unreachable

bb.vc:                                            ; preds = %bb.vb
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info23SimpleInstrInfo_os_loopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.du) #42
  br label %.body369

bb.vd:                                            ; preds = %bb.va
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bcq, ptr noundef nonnull align 8 dereferenceable(64) %i.du, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  br label %bb.dq

bb.ve:                                            ; preds = %bb.uw
  %i.bct = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dt) #42
  br label %.thread2642

.thread2642:                                      ; preds = %bb.ve, %.thread2652
  %.sroa.085.22647 = phi i1 [ true, %.thread2652 ], [ false, %bb.ve ] ; 2 uses
  %.pn2092646 = phi { ptr, i32 } [ %i.bba, %.thread2652 ], [ %i.bct, %bb.ve ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14748)
  %.val.i1278 = load i64, ptr %i.dv, align 8, !alias.scope !14748 ; 2 uses
  %i.bcu = icmp eq i64 %.val.i1278, 0
  br i1 %i.bcu, label %bb.vg, label %bb.vf

bb.vf:                                            ; preds = %.thread2642
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.val1.i1279 = load ptr, ptr %i.bcv, align 8, !alias.scope !14748, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1279, i64 noundef %.val.i1278, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14748
  br label %bb.vg

bb.vg:                                            ; preds = %bb.un, %.thread2642, %bb.vf
  %.pn209.pn.ph = phi { ptr, i32 } [ %i.bao, %bb.un ], [ %.pn2092646, %.thread2642 ], [ %.pn2092646, %bb.vf ] ; 2 uses
  %.sroa.085.1.ph = phi i1 [ true, %bb.un ], [ %.sroa.085.22647, %.thread2642 ], [ %.sroa.085.22647, %bb.vf ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14749)
  %.val.i1281 = load i64, ptr %i.dw, align 8, !alias.scope !14749 ; 2 uses
  %i.bcw = icmp eq i64 %.val.i1281, 0
  br i1 %i.bcw, label %.thread2648, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.val1.i1282 = load ptr, ptr %i.bcx, align 8, !alias.scope !14749, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1282, i64 noundef %.val.i1281, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14749
  br label %.thread2648

.thread2631:                                      ; preds = %.thread2631.loopexit, %.thread2631.loopexit.split-lp, %.thread2648
  %.pn209.pn.pn2634 = phi { ptr, i32 } [ %.pn209.pn.ph, %.thread2648 ], [ %lpad.loopexit2753, %.thread2631.loopexit ], [ %lpad.loopexit.split-lp2754, %.thread2631.loopexit.split-lp ] ; 2 uses
  br i1 %i.bab, label %.thread2361, label %bb.vi

bb.vi:                                            ; preds = %.thread2631
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bai, i64 noundef %i.baa, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14750
  br label %.thread2361

bb.vj:                                            ; preds = %bb.cw
  %i.bcy = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bcz = load i8, ptr %i.bcy, align 1, !noalias !14751, !noundef !21
  %i.bda = zext i8 %i.bcz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bda)
          to label %bb.vk unwind label %.loopexit.thread

bb.vk:                                            ; preds = %bb.vj
  %.not2723 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2723, label %._crit_edge.i1293.invoke, label %.lr.ph.i1289.preheader

.lr.ph.i1289.preheader:                           ; preds = %bb.vk
  %i.bdb = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1289

.lr.ph.i1289:                                     ; preds = %.lr.ph.i1289.preheader, %bb.vl
  %.sroa.0.013.i1290 = phi i32 [ %i.bdm, %bb.vl ], [ 0, %.lr.ph.i1289.preheader ] ; 2 uses
  %.sroa.02.012.i1291 = phi i32 [ %i.bdn, %bb.vl ], [ 0, %.lr.ph.i1289.preheader ] ; 3 uses
  %i.bdc = phi i64 [ %i.bdf, %bb.vl ], [ %i.bdb, %.lr.ph.i1289.preheader ] ; 3 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bdc
  %i.bde = load i8, ptr %i.bdd, align 1, !noalias !14752, !noundef !21 ; 2 uses
  %i.bdf = add nuw nsw i64 %i.bdc, 1              ; 4 uses
  %i.bdg = zext i8 %i.bde to i32                  ; 2 uses
  %i.bdh = icmp sgt i8 %i.bde, -1
  br i1 %i.bdh, label %bb.vm, label %bb.vl

._crit_edge.i1293.invoke:                         ; preds = %bb.vk, %bb.vm, %bb.vl, %bb.vn
  %i.bdi = phi i64 [ 13463, %bb.vn ], [ 13463, %bb.vl ], [ 13463, %bb.vk ], [ %i.bdf, %bb.vm ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdi, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1293.cont unwind label %.thread2668

._crit_edge.i1293.cont:                           ; preds = %._crit_edge.i1293.invoke
  unreachable

bb.vl:                                            ; preds = %.lr.ph.i1289
  %i.bdj = and i32 %i.bdg, 127
  %i.bdk = and i32 %.sroa.02.012.i1291, 31
  %i.bdl = shl i32 %i.bdj, %i.bdk
  %i.bdm = or i32 %i.bdl, %.sroa.0.013.i1290
  %i.bdn = add i32 %.sroa.02.012.i1291, 7
  %exitcond.not.i1292 = icmp eq i64 %i.bdf, 13463
  br i1 %exitcond.not.i1292, label %._crit_edge.i1293.invoke, label %.lr.ph.i1289

.thread2668:                                      ; preds = %._crit_edge.i1293.invoke, %bb.vp
  %i.bdo = landingpad { ptr, i32 }
          cleanup
  br label %.thread2658

bb.vm:                                            ; preds = %.lr.ph.i1289
  %i.bdp = and i32 %.sroa.02.012.i1291, 31
  %i.bdq = shl i32 %i.bdg, %i.bdp
  %i.bdr = or i32 %i.bdq, %.sroa.0.013.i1290
  %i.bds = icmp ult i64 %i.bdc, 13462
  br i1 %i.bds, label %.lr.ph.i1298, label %._crit_edge.i1293.invoke

.lr.ph.i1298:                                     ; preds = %bb.vm, %bb.vn
  %.sroa.0.013.i1299 = phi i32 [ %i.bec, %bb.vn ], [ 0, %bb.vm ] ; 2 uses
  %.sroa.02.012.i1300 = phi i32 [ %i.bed, %bb.vn ], [ 0, %bb.vm ] ; 3 uses
  %i.bdt = phi i64 [ %i.bdw, %bb.vn ], [ %i.bdf, %bb.vm ] ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bdt
  %i.bdv = load i8, ptr %i.bdu, align 1, !noalias !14753, !noundef !21 ; 2 uses
  %i.bdw = add nuw nsw i64 %i.bdt, 1              ; 3 uses
  %i.bdx = zext i8 %i.bdv to i32                  ; 2 uses
  %i.bdy = icmp sgt i8 %i.bdv, -1
  br i1 %i.bdy, label %bb.vo, label %bb.vn

bb.vn:                                            ; preds = %.lr.ph.i1298
  %i.bdz = and i32 %i.bdx, 127
  %i.bea = and i32 %.sroa.02.012.i1300, 31
  %i.beb = shl i32 %i.bdz, %i.bea
  %i.bec = or i32 %i.beb, %.sroa.0.013.i1299
  %i.bed = add i32 %.sroa.02.012.i1300, 7
  %exitcond.not.i1301 = icmp eq i64 %i.bdw, 13463
  br i1 %exitcond.not.i1301, label %._crit_edge.i1293.invoke, label %.lr.ph.i1298

bb.vo:                                            ; preds = %.lr.ph.i1298
  %i.bee = and i32 %.sroa.02.012.i1300, 31
  %i.bef = shl i32 %i.bdx, %i.bee
  %i.beg = or i32 %i.bef, %.sroa.0.013.i1299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.beh = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.bei = icmp eq ptr %i.beh, null
  br i1 %i.bei, label %bb.vp, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1306, !prof !26

bb.vp:                                            ; preds = %bb.vo
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc1305 unwind label %.thread2668

.noexc1305:                                       ; preds = %bb.vp
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1306: ; preds = %bb.vo
  store i64 %.sroa.01732.0, ptr %i.beh, align 8
  %.sroa.42149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.beh, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42149.0..sroa_idx, align 8
  %.sroa.52150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.beh, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52150.0..sroa_idx, align 8
  store i64 1, ptr %i.dp, align 8
  store ptr %i.beh, ptr %i.hh, align 8
  store i64 1, ptr %i.hi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bej = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 3 uses
  %i.bek = icmp eq ptr %i.bej, null
  br i1 %i.bek, label %bb.vq, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1308, !prof !26

bb.vq:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1306
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.noexc1307 unwind label %bb.vy

.noexc1307:                                       ; preds = %bb.vq
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1308: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bej, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false)
  store i64 1, ptr %i.do, align 8
  store ptr %i.bej, ptr %i.hj, align 8
  store i64 1, ptr %i.hk, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14754)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !14755
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dp)
          to label %bb.vr unwind label %bb.vt, !noalias !14756

bb.vr:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14755
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.do)
          to label %bb.vu unwind label %bb.vs, !noalias !14757

bb.vs:                                            ; preds = %bb.vr
  %i.bel = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #42, !noalias !14755
  br label %.body369

bb.vt:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1308
  %i.bem = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.do) #42, !noalias !14757
  br label %.body369

bb.vu:                                            ; preds = %bb.vr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !14758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !14758
  store i32 %i.bdr, ptr %i.hm, align 8, !alias.scope !14754, !noalias !14758
  store i32 -1, ptr %i.hn, align 4, !alias.scope !14754, !noalias !14758
  store i32 %i.beg, ptr %i.ho, align 8, !alias.scope !14754, !noalias !14758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !14755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14759
  %i.ben = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14759 ; 3 uses
  %i.beo = icmp eq ptr %i.ben, null
  br i1 %i.beo, label %bb.vv, label %bb.vx, !prof !26

bb.vv:                                            ; preds = %bb.vu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc1313 unwind label %bb.vw

.noexc1313:                                       ; preds = %bb.vv
  unreachable

bb.vw:                                            ; preds = %bb.vv
  %i.bep = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info23SimpleInstrInfo_os_loopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dq) #42
  br label %.body369

bb.vx:                                            ; preds = %bb.vu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ben, ptr noundef nonnull align 8 dereferenceable(64) %i.dq, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  br label %bb.dq

bb.vy:                                            ; preds = %bb.vq
  %i.beq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dp) #42
  br label %.thread2658

.thread2658:                                      ; preds = %bb.vy, %.thread2668
  %.sroa.0112.342663 = phi i1 [ true, %.thread2668 ], [ false, %bb.vy ] ; 2 uses
  %.pn2662 = phi { ptr, i32 } [ %i.bdo, %.thread2668 ], [ %i.beq, %bb.vy ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14760)
  %.val.i1315 = load i64, ptr %i.dr, align 8, !alias.scope !14760 ; 2 uses
  %i.ber = icmp eq i64 %.val.i1315, 0
  br i1 %i.ber, label %.body249, label %.split

.split:                                           ; preds = %.thread2658
  %i.bes = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.val1.i1316 = load ptr, ptr %i.bes, align 8, !alias.scope !14760, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1316, i64 noundef %.val.i1315, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14760
  br i1 %.sroa.0112.342663, label %.thread2361, label %.body369

bb.vz:                                            ; preds = %bb.cx
  %i.bet = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.beu = load i8, ptr %i.bet, align 1, !noalias !14761, !noundef !21
  %i.bev = zext i8 %i.beu to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bev)
          to label %bb.wa unwind label %.loopexit.thread

bb.wa:                                            ; preds = %bb.vz
  %.not2722 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2722, label %._crit_edge.i1324, label %.lr.ph.i1320.preheader

.lr.ph.i1320.preheader:                           ; preds = %bb.wa
  %i.bew = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1320

.lr.ph.i1320:                                     ; preds = %.lr.ph.i1320.preheader, %bb.wb
  %.sroa.0.013.i1321 = phi i32 [ %i.bfg, %bb.wb ], [ 0, %.lr.ph.i1320.preheader ] ; 2 uses
  %.sroa.02.012.i1322 = phi i32 [ %i.bfh, %bb.wb ], [ 0, %.lr.ph.i1320.preheader ] ; 3 uses
  %i.bex = phi i64 [ %i.bfa, %bb.wb ], [ %i.bew, %.lr.ph.i1320.preheader ] ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bex
  %i.bez = load i8, ptr %i.bey, align 1, !noalias !14762, !noundef !21 ; 2 uses
  %i.bfa = add nuw nsw i64 %i.bex, 1              ; 3 uses
  %i.bfb = zext i8 %i.bez to i32                  ; 2 uses
  %i.bfc = icmp sgt i8 %i.bez, -1
  br i1 %i.bfc, label %bb.wc, label %bb.wb

._crit_edge.i1324:                                ; preds = %bb.wa, %bb.wb
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1325 unwind label %bb.wn

.noexc1325:                                       ; preds = %._crit_edge.i1324
  unreachable

bb.wb:                                            ; preds = %.lr.ph.i1320
  %i.bfd = and i32 %i.bfb, 127
  %i.bfe = and i32 %.sroa.02.012.i1322, 31
  %i.bff = shl i32 %i.bfd, %i.bfe
  %i.bfg = or i32 %i.bff, %.sroa.0.013.i1321
  %i.bfh = add i32 %.sroa.02.012.i1322, 7
  %exitcond.not.i1323 = icmp eq i64 %i.bfa, 13463
  br i1 %exitcond.not.i1323, label %._crit_edge.i1324, label %.lr.ph.i1320

bb.wc:                                            ; preds = %.lr.ph.i1320
  %i.bfi = and i32 %.sroa.02.012.i1322, 31
  %i.bfj = shl i32 %i.bfb, %i.bfi
  %i.bfk = or i32 %i.bfj, %.sroa.0.013.i1321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %.sroa.02154.0.copyload = load i64, ptr %i.dn, align 8 ; 5 uses
  %.sroa.52155.0.copyload = load ptr, ptr %.sroa.52155.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72156.0.copyload = load i64, ptr %.sroa.72156.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !14764
  call void @llvm.experimental.noalias.scope.decl(metadata !14765)
  call void @llvm.experimental.noalias.scope.decl(metadata !14766)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !14767
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.wf unwind label %bb.wd, !noalias !14767

bb.wd:                                            ; preds = %bb.wc
  %i.bfl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfm = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.bfm, label %.thread.i1328, label %bb.we

bb.we:                                            ; preds = %bb.wd
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14768
  br label %.thread.i1328

bb.wf:                                            ; preds = %bb.wc
  store i64 %.sroa.01732.0, ptr %i.w, align 8, !alias.scope !14769, !noalias !14770
  store ptr %.sroa.50.0, ptr %.sroa.52152.0..sroa_idx, align 8, !alias.scope !14769, !noalias !14770
  store i64 %.sroa.77.0, ptr %.sroa.72153.0..sroa_idx, align 8, !alias.scope !14769, !noalias !14770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !14771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14767
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52155.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !14772
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52155.0.copyload, i64 noundef %.sroa.72156.0.copyload)
          to label %bb.wj unwind label %bb.wg, !noalias !14772

bb.wg:                                            ; preds = %bb.wf
  %i.bfn = landingpad { ptr, i32 }
          cleanup
  %i.bfo = icmp eq i64 %.sroa.02154.0.copyload, 0
  br i1 %i.bfo, label %.body5.i1338, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52155.0.copyload, i64 noundef %.sroa.02154.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14773
  br label %.body5.i1338

.body5.i1338:                                     ; preds = %bb.wh, %bb.wg
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w) #42, !noalias !14764
  br label %.body369

.thread.i1328:                                    ; preds = %bb.we, %bb.wd
  %i.bfp = icmp eq i64 %.sroa.02154.0.copyload, 0
  br i1 %i.bfp, label %.body369, label %bb.wi

bb.wi:                                            ; preds = %.thread.i1328
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52155.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52155.0.copyload, i64 noundef %.sroa.02154.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14774
  br label %.body369

bb.wj:                                            ; preds = %bb.wf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i1339, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !14775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dm, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !14775
  store i64 %.sroa.02154.0.copyload, ptr %i.hf, align 8, !alias.scope !14763, !noalias !14775
  store ptr %.sroa.52155.0.copyload, ptr %.sroa.4.0..sroa_idx.i1340, align 8, !alias.scope !14763, !noalias !14775
  store i64 %.sroa.72156.0.copyload, ptr %.sroa.514.0..sroa_idx.i1341, align 8, !alias.scope !14763, !noalias !14775
  store i32 %i.bfk, ptr %i.hg, align 8, !alias.scope !14763, !noalias !14775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14764
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14776
  %i.bfq = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14776 ; 3 uses
  %i.bfr = icmp eq ptr %i.bfq, null
  br i1 %i.bfr, label %bb.wk, label %bb.wm, !prof !26

bb.wk:                                            ; preds = %bb.wj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc1345 unwind label %bb.wl

.noexc1345:                                       ; preds = %bb.wk
  unreachable

bb.wl:                                            ; preds = %bb.wk
  %i.bfs = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_os_memEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.dm) #42
  br label %.body369

bb.wm:                                            ; preds = %bb.wj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bfq, ptr noundef nonnull align 8 dereferenceable(104) %i.dm, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.dq

bb.wn:                                            ; preds = %._crit_edge.i1324
  %i.bft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14777)
  %.val.i1347 = load i64, ptr %i.dn, align 8, !alias.scope !14777 ; 2 uses
  %i.bfu = icmp eq i64 %.val.i1347, 0
  br i1 %i.bfu, label %.thread2361, label %bb.wo

bb.wo:                                            ; preds = %bb.wn
  %.val1.i1348 = load ptr, ptr %.sroa.52155.0..sroa_idx, align 8, !alias.scope !14777, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1348, i64 noundef %.val.i1347, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14777
  br label %.thread2361

bb.wp:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.experimental.noalias.scope.decl(metadata !14778)
  call void @llvm.experimental.noalias.scope.decl(metadata !14779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !14780
  call void @llvm.experimental.noalias.scope.decl(metadata !14781)
  call void @llvm.experimental.noalias.scope.decl(metadata !14782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14783
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.ws unwind label %bb.wq, !noalias !14783

bb.wq:                                            ; preds = %bb.wp
  %i.bfv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfw = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.bfw, label %.thread.i1351, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14784
  br label %.thread.i1351

bb.ws:                                            ; preds = %bb.wp
  store i64 %.sroa.01732.0, ptr %i.t, align 8, !alias.scope !14785, !noalias !14786
  store ptr %.sroa.50.0, ptr %.sroa.52158.0..sroa_idx, align 8, !alias.scope !14785, !noalias !14786
  store i64 %.sroa.77.0, ptr %.sroa.72159.0..sroa_idx, align 8, !alias.scope !14785, !noalias !14786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !14787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14783
  %.sroa.0.0.copyload.i1356 = load i64, ptr %i.dl, align 8, !alias.scope !14779, !noalias !14788 ; 3 uses
  %.sroa.5.0.copyload.i1358 = load ptr, ptr %.sroa.5.0..sroa_idx.i1357, align 8, !alias.scope !14779, !noalias !14788, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.6.0.copyload.i1360 = load i64, ptr %.sroa.6.0..sroa_idx.i1359, align 8, !alias.scope !14779, !noalias !14788 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !14789
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i1358, i64 noundef %.sroa.6.0.copyload.i1360)
          to label %bb.ww unwind label %bb.wt, !noalias !14789

bb.wt:                                            ; preds = %bb.ws
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  %i.bfy = icmp eq i64 %.sroa.0.0.copyload.i1356, 0
  br i1 %i.bfy, label %.body5.i1361, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i1358, i64 noundef %.sroa.0.0.copyload.i1356, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14790
  br label %.body5.i1361

.body5.i1361:                                     ; preds = %bb.wu, %bb.wt
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.t) #42, !noalias !14780
  br label %.body369

.thread.i1351:                                    ; preds = %bb.wr, %bb.wq
  call void @llvm.experimental.noalias.scope.decl(metadata !14791)
  %.val.i.i1352 = load i64, ptr %i.dl, align 8, !alias.scope !14792, !noalias !14788 ; 2 uses
  %i.bfz = icmp eq i64 %.val.i.i1352, 0
  br i1 %i.bfz, label %.body369, label %bb.wv

bb.wv:                                            ; preds = %.thread.i1351
  %.val1.i.i1353 = load ptr, ptr %.sroa.5.0..sroa_idx.i1357, align 8, !alias.scope !14792, !noalias !14788, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1353, i64 noundef %.val.i.i1352, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14793
  br label %.body369

bb.ww:                                            ; preds = %bb.ws
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i1362, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !14794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !14789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !14794
  store i64 %.sroa.0.0.copyload.i1356, ptr %i.hd, align 8, !alias.scope !14778, !noalias !14794
  store ptr %.sroa.5.0.copyload.i1358, ptr %.sroa.4.0..sroa_idx.i1363, align 8, !alias.scope !14778, !noalias !14794
  store i64 %.sroa.6.0.copyload.i1360, ptr %.sroa.514.0..sroa_idx.i1364, align 8, !alias.scope !14778, !noalias !14794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14780
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14795
  %i.bga = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14795 ; 3 uses
  %i.bgb = icmp eq ptr %i.bga, null
  br i1 %i.bgb, label %bb.wx, label %bb.wz, !prof !26

bb.wx:                                            ; preds = %bb.ww
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #46
          to label %.noexc1368 unwind label %bb.wy

.noexc1368:                                       ; preds = %bb.wx
  unreachable

bb.wy:                                            ; preds = %bb.wx
  %i.bgc = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info21SimpleInstrInfo_Reg16EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.dk) #42
  br label %.body369

bb.wz:                                            ; preds = %bb.ww
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bga, ptr noundef nonnull align 8 dereferenceable(96) %i.dk, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.dq

bb.xa:                                            ; preds = %bb.cz
  %i.bgd = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bge = load i8, ptr %i.bgd, align 1, !noalias !14796, !noundef !21
  %i.bgf = zext i8 %i.bge to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bgf)
          to label %bb.xb unwind label %.loopexit.thread

bb.xb:                                            ; preds = %bb.xa
  %.not2721 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2721, label %._crit_edge.i1376, label %.lr.ph.i1372.preheader

.lr.ph.i1372.preheader:                           ; preds = %bb.xb
  %i.bgg = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1372

.lr.ph.i1372:                                     ; preds = %.lr.ph.i1372.preheader, %bb.xc
  %.sroa.0.013.i1373 = phi i32 [ %i.bgq, %bb.xc ], [ 0, %.lr.ph.i1372.preheader ] ; 2 uses
  %.sroa.02.012.i1374 = phi i32 [ %i.bgr, %bb.xc ], [ 0, %.lr.ph.i1372.preheader ] ; 3 uses
  %i.bgh = phi i64 [ %i.bgk, %bb.xc ], [ %i.bgg, %.lr.ph.i1372.preheader ] ; 2 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bgh
  %i.bgj = load i8, ptr %i.bgi, align 1, !noalias !14797, !noundef !21 ; 2 uses
  %i.bgk = add nuw nsw i64 %i.bgh, 1              ; 3 uses
  %i.bgl = zext i8 %i.bgj to i32                  ; 2 uses
  %i.bgm = icmp sgt i8 %i.bgj, -1
  br i1 %i.bgm, label %bb.xd, label %bb.xc

._crit_edge.i1376:                                ; preds = %bb.xb, %bb.xc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 13463, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1377 unwind label %bb.xo

.noexc1377:                                       ; preds = %._crit_edge.i1376
  unreachable

bb.xc:                                            ; preds = %.lr.ph.i1372
  %i.bgn = and i32 %i.bgl, 127
  %i.bgo = and i32 %.sroa.02.012.i1374, 31
  %i.bgp = shl i32 %i.bgn, %i.bgo
  %i.bgq = or i32 %i.bgp, %.sroa.0.013.i1373
  %i.bgr = add i32 %.sroa.02.012.i1374, 7
  %exitcond.not.i1375 = icmp eq i64 %i.bgk, 13463
  br i1 %exitcond.not.i1375, label %._crit_edge.i1376, label %.lr.ph.i1372

bb.xd:                                            ; preds = %.lr.ph.i1372
  %i.bgs = and i32 %.sroa.02.012.i1374, 31
  %i.bgt = shl i32 %i.bgl, %i.bgs
  %i.bgu = or i32 %i.bgt, %.sroa.0.013.i1373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  %.sroa.02163.0.copyload = load i64, ptr %i.dj, align 8 ; 5 uses
  %.sroa.52164.0.copyload = load ptr, ptr %.sroa.52164.0..sroa_idx, align 8 ; 6 uses
  %.sroa.72165.0.copyload = load i64, ptr %.sroa.72165.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14798)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !14799
  call void @llvm.experimental.noalias.scope.decl(metadata !14800)
  call void @llvm.experimental.noalias.scope.decl(metadata !14801)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14802
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.xg unwind label %bb.xe, !noalias !14802

bb.xe:                                            ; preds = %bb.xd
  %i.bgv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgw = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.bgw, label %.thread.i1380, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14803
  br label %.thread.i1380

bb.xg:                                            ; preds = %bb.xd
  store i64 %.sroa.01732.0, ptr %i.q, align 8, !alias.scope !14804, !noalias !14805
  store ptr %.sroa.50.0, ptr %.sroa.52161.0..sroa_idx, align 8, !alias.scope !14804, !noalias !14805
  store i64 %.sroa.77.0, ptr %.sroa.72162.0..sroa_idx, align 8, !alias.scope !14804, !noalias !14805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !14806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14802
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52164.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14807
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52164.0.copyload, i64 noundef %.sroa.72165.0.copyload)
          to label %bb.xk unwind label %bb.xh, !noalias !14807

bb.xh:                                            ; preds = %bb.xg
  %i.bgx = landingpad { ptr, i32 }
          cleanup
  %i.bgy = icmp eq i64 %.sroa.02163.0.copyload, 0
  br i1 %i.bgy, label %.body5.i1390, label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52164.0.copyload, i64 noundef %.sroa.02163.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14808
  br label %.body5.i1390

.body5.i1390:                                     ; preds = %bb.xi, %bb.xh
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q) #42, !noalias !14799
  br label %.body369

.thread.i1380:                                    ; preds = %bb.xf, %bb.xe
  %i.bgz = icmp eq i64 %.sroa.02163.0.copyload, 0
  br i1 %i.bgz, label %.body369, label %bb.xj

bb.xj:                                            ; preds = %.thread.i1380
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52164.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52164.0.copyload, i64 noundef %.sroa.02163.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14809
  br label %.body369

bb.xk:                                            ; preds = %bb.xg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i1391, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !14810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !14807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.di, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !14810
  store i64 %.sroa.02163.0.copyload, ptr %i.ha, align 8, !alias.scope !14798, !noalias !14810
  store ptr %.sroa.52164.0.copyload, ptr %.sroa.4.0..sroa_idx.i1392, align 8, !alias.scope !14798, !noalias !14810
  store i64 %.sroa.72165.0.copyload, ptr %.sroa.514.0..sroa_idx.i1393, align 8, !alias.scope !14798, !noalias !14810
  store i32 %i.bgu, ptr %i.hb, align 8, !alias.scope !14798, !noalias !14810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14799
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14811
  %i.bha = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14811 ; 3 uses
  %i.bhb = icmp eq ptr %i.bha, null
  br i1 %i.bhb, label %bb.xl, label %bb.xn, !prof !26

bb.xl:                                            ; preds = %bb.xk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc1397 unwind label %bb.xm

.noexc1397:                                       ; preds = %bb.xl
  unreachable

bb.xm:                                            ; preds = %bb.xl
  %i.bhc = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info23SimpleInstrInfo_os_mem2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.di) #42
  br label %.body369

bb.xn:                                            ; preds = %bb.xk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bha, ptr noundef nonnull align 8 dereferenceable(104) %i.di, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %bb.dq

bb.xo:                                            ; preds = %._crit_edge.i1376
  %i.bhd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14812)
  %.val.i1399 = load i64, ptr %i.dj, align 8, !alias.scope !14812 ; 2 uses
  %i.bhe = icmp eq i64 %.val.i1399, 0
  br i1 %i.bhe, label %.thread2361, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %.val1.i1400 = load ptr, ptr %.sroa.52164.0..sroa_idx, align 8, !alias.scope !14812, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1400, i64 noundef %.val.i1399, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14812
  br label %.thread2361

bb.xq:                                            ; preds = %bb.da
  %i.bhf = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bhg = load i8, ptr %i.bhf, align 1, !noalias !14813, !noundef !21
  %i.bhh = zext i8 %i.bhg to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bhh)
          to label %bb.xr unwind label %.loopexit.thread

bb.xr:                                            ; preds = %bb.xq
  %.not2720 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2720, label %._crit_edge.i1408.invoke, label %.lr.ph.i1404.preheader

.lr.ph.i1404.preheader:                           ; preds = %bb.xr
  %i.bhi = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1404

.lr.ph.i1404:                                     ; preds = %.lr.ph.i1404.preheader, %bb.xs
  %.sroa.0.013.i1405 = phi i32 [ %i.bht, %bb.xs ], [ 0, %.lr.ph.i1404.preheader ] ; 2 uses
  %.sroa.02.012.i1406 = phi i32 [ %i.bhu, %bb.xs ], [ 0, %.lr.ph.i1404.preheader ] ; 3 uses
  %i.bhj = phi i64 [ %i.bhm, %bb.xs ], [ %i.bhi, %.lr.ph.i1404.preheader ] ; 4 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bhj
  %i.bhl = load i8, ptr %i.bhk, align 1, !noalias !14814, !noundef !21 ; 2 uses
  %i.bhm = add nuw nsw i64 %i.bhj, 1              ; 4 uses
  %i.bhn = zext i8 %i.bhl to i32                  ; 2 uses
  %i.bho = icmp sgt i8 %i.bhl, -1
  br i1 %i.bho, label %bb.xt, label %bb.xs

._crit_edge.i1408.invoke:                         ; preds = %bb.xt, %bb.xr, %bb.xs
  %i.bhp = phi i64 [ 13463, %bb.xs ], [ 13463, %bb.xr ], [ %i.bhm, %bb.xt ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bhp, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1408.cont unwind label %bb.xz

._crit_edge.i1408.cont:                           ; preds = %._crit_edge.i1408.invoke
  unreachable

bb.xs:                                            ; preds = %.lr.ph.i1404
  %i.bhq = and i32 %i.bhn, 127
  %i.bhr = and i32 %.sroa.02.012.i1406, 31
  %i.bhs = shl i32 %i.bhq, %i.bhr
  %i.bht = or i32 %i.bhs, %.sroa.0.013.i1405
  %i.bhu = add i32 %.sroa.02.012.i1406, 7
  %exitcond.not.i1407 = icmp eq i64 %i.bhm, 13463
  br i1 %exitcond.not.i1407, label %._crit_edge.i1408.invoke, label %.lr.ph.i1404

.body293:                                         ; preds = %bb.xu
  %lpad.thr_comm.split-lp2681 = landingpad { ptr, i32 }
          cleanup
  br label %.body369

bb.xt:                                            ; preds = %.lr.ph.i1404
  %i.bhv = icmp ult i64 %i.bhj, 13462
  br i1 %i.bhv, label %bb.xu, label %._crit_edge.i1408.invoke

bb.xu:                                            ; preds = %bb.xt
  %i.bhw = and i32 %.sroa.02.012.i1406, 31
  %i.bhx = shl i32 %i.bhn, %i.bhw
  %i.bhy = or i32 %i.bhx, %.sroa.0.013.i1405
  %i.bhz = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bhm
  %i.bia = load i8, ptr %i.bhz, align 1, !noalias !14815, !noundef !21
  %i.bib = add nuw nsw i64 %i.bhj, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  store i64 %.sroa.01732.0, ptr %i.dg, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1853, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1964, align 8
  %i.bic = icmp ne i8 %i.bia, 0
  invoke fastcc void @_RNvMsq_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_19SimpleInstrInfo_os23new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.dh, i32 noundef %i.bhy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dg, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.df, i1 noundef zeroext %i.bic, i32 noundef 0)
          to label %bb.xv unwind label %.body293

bb.xv:                                            ; preds = %bb.xu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14816
  %i.bid = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14816 ; 3 uses
  %i.bie = icmp eq ptr %i.bid, null
  br i1 %i.bie, label %bb.xw, label %bb.xy, !prof !26

bb.xw:                                            ; preds = %bb.xv
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #46
          to label %.noexc1413 unwind label %bb.xx

.noexc1413:                                       ; preds = %bb.xw
  unreachable

bb.xx:                                            ; preds = %bb.xw
  %i.bif = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_os2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.dh) #42
  br label %.body369

bb.xy:                                            ; preds = %bb.xv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bid, ptr noundef nonnull align 8 dereferenceable(112) %i.dh, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %bb.dq

bb.xz:                                            ; preds = %._crit_edge.i1408.invoke
  %lpad.thr_comm2680 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i1415 = load i64, ptr %i.df, align 8      ; 2 uses
  %i.big = icmp eq i64 %.val.i1415, 0
  br i1 %i.big, label %.thread2361, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.bih = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.val1.i1416 = load ptr, ptr %i.bih, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1416, i64 noundef %.val.i1415, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14817
  br label %.thread2361

bb.yb:                                            ; preds = %bb.db
  %i.bii = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bij = load i8, ptr %i.bii, align 1, !noalias !14818, !noundef !21
  %i.bik = zext i8 %i.bij to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bik)
          to label %bb.yc unwind label %.loopexit.thread

bb.yc:                                            ; preds = %bb.yb
  %.not2719 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2719, label %._crit_edge.i1424.invoke, label %.lr.ph.i1420.preheader

.lr.ph.i1420.preheader:                           ; preds = %bb.yc
  %i.bil = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1420

.lr.ph.i1420:                                     ; preds = %.lr.ph.i1420.preheader, %bb.yd
  %.sroa.0.013.i1421 = phi i32 [ %i.biw, %bb.yd ], [ 0, %.lr.ph.i1420.preheader ] ; 2 uses
  %.sroa.02.012.i1422 = phi i32 [ %i.bix, %bb.yd ], [ 0, %.lr.ph.i1420.preheader ] ; 3 uses
  %i.bim = phi i64 [ %i.bip, %bb.yd ], [ %i.bil, %.lr.ph.i1420.preheader ] ; 5 uses
  %i.bin = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bim
  %i.bio = load i8, ptr %i.bin, align 1, !noalias !14819, !noundef !21 ; 2 uses
  %i.bip = add nuw nsw i64 %i.bim, 1              ; 4 uses
  %i.biq = zext i8 %i.bio to i32                  ; 2 uses
  %i.bir = icmp sgt i8 %i.bio, -1
  br i1 %i.bir, label %bb.ye, label %bb.yd

._crit_edge.i1424.invoke:                         ; preds = %bb.yf, %bb.ye, %bb.yc, %bb.yd, %bb.yg
  %i.bis = phi i64 [ 13463, %bb.yd ], [ 13463, %bb.yg ], [ 13463, %bb.yf ], [ 13463, %bb.yc ], [ %i.bip, %bb.ye ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bis, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1424.cont unwind label %bb.ym

._crit_edge.i1424.cont:                           ; preds = %._crit_edge.i1424.invoke
  unreachable

bb.yd:                                            ; preds = %.lr.ph.i1420
  %i.bit = and i32 %i.biq, 127
  %i.biu = and i32 %.sroa.02.012.i1422, 31
  %i.biv = shl i32 %i.bit, %i.biu
  %i.biw = or i32 %i.biv, %.sroa.0.013.i1421
  %i.bix = add i32 %.sroa.02.012.i1422, 7
  %exitcond.not.i1423 = icmp eq i64 %i.bip, 13463
  br i1 %exitcond.not.i1423, label %._crit_edge.i1424.invoke, label %.lr.ph.i1420

.body291:                                         ; preds = %bb.yh
  %lpad.thr_comm.split-lp2689 = landingpad { ptr, i32 }
          cleanup
  br label %.body369

bb.ye:                                            ; preds = %.lr.ph.i1420
  %i.biy = and i32 %.sroa.02.012.i1422, 31
  %i.biz = shl i32 %i.biq, %i.biy
  %i.bja = or i32 %i.biz, %.sroa.0.013.i1421
  %i.bjb = icmp ult i64 %i.bim, 13462
  br i1 %i.bjb, label %bb.yf, label %._crit_edge.i1424.invoke

bb.yf:                                            ; preds = %bb.ye
  %i.bjc = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bip
  %i.bjd = load i8, ptr %i.bjc, align 1, !noalias !14820, !noundef !21
  %.not5723 = icmp eq i64 %i.bim, 13461
  br i1 %.not5723, label %._crit_edge.i1424.invoke, label %.lr.ph.i1431.preheader

.lr.ph.i1431.preheader:                           ; preds = %bb.yf
  %i.bje = add nuw nsw i64 %i.bim, 2
  br label %.lr.ph.i1431

.lr.ph.i1431:                                     ; preds = %.lr.ph.i1431.preheader, %bb.yg
  %.sroa.0.013.i1432 = phi i32 [ %i.bjo, %bb.yg ], [ 0, %.lr.ph.i1431.preheader ] ; 2 uses
  %.sroa.02.012.i1433 = phi i32 [ %i.bjp, %bb.yg ], [ 0, %.lr.ph.i1431.preheader ] ; 3 uses
  %i.bjf = phi i64 [ %i.bji, %bb.yg ], [ %i.bje, %.lr.ph.i1431.preheader ] ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bjf
  %i.bjh = load i8, ptr %i.bjg, align 1, !noalias !14821, !noundef !21 ; 2 uses
  %i.bji = add nuw nsw i64 %i.bjf, 1              ; 3 uses
  %i.bjj = zext i8 %i.bjh to i32                  ; 2 uses
  %i.bjk = icmp sgt i8 %i.bjh, -1
  br i1 %i.bjk, label %bb.yh, label %bb.yg

bb.yg:                                            ; preds = %.lr.ph.i1431
  %i.bjl = and i32 %i.bjj, 127
  %i.bjm = and i32 %.sroa.02.012.i1433, 31
  %i.bjn = shl i32 %i.bjl, %i.bjm
  %i.bjo = or i32 %i.bjn, %.sroa.0.013.i1432
  %i.bjp = add i32 %.sroa.02.012.i1433, 7
  %exitcond.not.i1434 = icmp eq i64 %i.bji, 13463
  br i1 %exitcond.not.i1434, label %._crit_edge.i1424.invoke, label %.lr.ph.i1431

bb.yh:                                            ; preds = %.lr.ph.i1431
  %i.bjq = and i32 %.sroa.02.012.i1433, 31
  %i.bjr = shl i32 %i.bjj, %i.bjq
  %i.bjs = or i32 %i.bjr, %.sroa.0.013.i1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  store i64 %.sroa.01732.0, ptr %i.dd, align 8
  store ptr %.sroa.50.0, ptr %.sroa.50.0..sroa_idx1855, align 8
  store i64 %.sroa.77.0, ptr %.sroa.77.0..sroa_idx1966, align 8
  %i.bjt = icmp ne i8 %i.bjd, 0
  invoke fastcc void @_RNvMsq_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_19SimpleInstrInfo_os23new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.de, i32 noundef %i.bja, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dc, i1 noundef zeroext %i.bjt, i32 noundef %i.bjs)
          to label %bb.yi unwind label %.body291

bb.yi:                                            ; preds = %bb.yh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14822
  %i.bju = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14822 ; 3 uses
  %i.bjv = icmp eq ptr %i.bju, null
  br i1 %i.bjv, label %bb.yj, label %bb.yl, !prof !26

bb.yj:                                            ; preds = %bb.yi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #46
          to label %.noexc1438 unwind label %bb.yk

.noexc1438:                                       ; preds = %bb.yj
  unreachable

bb.yk:                                            ; preds = %bb.yj
  %i.bjw = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info19SimpleInstrInfo_os2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.de) #42
  br label %.body369

bb.yl:                                            ; preds = %bb.yi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bju, ptr noundef nonnull align 8 dereferenceable(112) %i.de, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.dq

bb.ym:                                            ; preds = %._crit_edge.i1424.invoke
  %lpad.thr_comm2688 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i1440 = load i64, ptr %i.dc, align 8      ; 2 uses
  %i.bjx = icmp eq i64 %.val.i1440, 0
  br i1 %i.bjx, label %.thread2361, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.val1.i1441 = load ptr, ptr %i.bjy, align 8, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1441, i64 noundef %.val.i1440, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14823
  br label %.thread2361

bb.yo:                                            ; preds = %bb.dc
  %i.bjz = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bka = load i8, ptr %i.bjz, align 1, !noalias !14824, !noundef !21
  %i.bkb = add nuw nsw i64 %.sroa.156.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.experimental.noalias.scope.decl(metadata !14825)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14826
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.yr unwind label %bb.yp, !noalias !14826

bb.yp:                                            ; preds = %bb.yo
  %i.bkc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bkd = icmp eq i64 %.sroa.01732.0, 0
  br i1 %i.bkd, label %.body369, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.50.0, i64 noundef %.sroa.01732.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14827
  br label %.body369

bb.yr:                                            ; preds = %bb.yo
  %i.bke = icmp ne i8 %i.bka, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62292.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !14828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14826
  store i64 %.sroa.01732.0, ptr %i.cr, align 8, !noalias !14828
  store ptr %.sroa.50.0, ptr %.sroa.42290.0..sroa_idx, align 8, !noalias !14828
  store i64 %.sroa.77.0, ptr %.sroa.52291.0..sroa_idx, align 8, !noalias !14828
  %i.bkf = zext i1 %i.bke to i8
  store i8 %i.bkf, ptr %i.gy, align 8, !alias.scope !14825, !noalias !14828
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14829
  %i.bkg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14829 ; 3 uses
  %i.bkh = icmp eq ptr %i.bkg, null
  br i1 %i.bkh, label %bb.ys, label %bb.yu, !prof !26

bb.ys:                                            ; preds = %bb.yr
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1449 unwind label %bb.yt

.noexc1449:                                       ; preds = %bb.ys
  unreachable

bb.yt:                                            ; preds = %bb.ys
  %i.bki = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info21SimpleInstrInfo_STIG1EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cr) #42
  br label %.body369

bb.yu:                                            ; preds = %bb.yr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bkg, ptr noundef nonnull align 8 dereferenceable(56) %i.cr, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.dq

bb.yv:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62268.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !14830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !14378
  store i64 %.sroa.01732.0, ptr %i.db, align 8, !noalias !14830
  store ptr %.sroa.50.0, ptr %.sroa.42266.0..sroa_idx, align 8, !noalias !14830
  store i64 %.sroa.77.0, ptr %.sroa.52267.0..sroa_idx, align 8, !noalias !14830
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14831
  %i.bkj = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14831 ; 3 uses
  %i.bkk = icmp eq ptr %i.bkj, null
  br i1 %i.bkk, label %bb.yw, label %bb.yy, !prof !26

bb.yw:                                            ; preds = %bb.yv
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1451 unwind label %bb.yx

.noexc1451:                                       ; preds = %bb.yw
  unreachable

bb.yx:                                            ; preds = %bb.yw
  %i.bkl = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info24SimpleInstrInfo_pblendvbEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.db) #42
  br label %.body369

bb.yy:                                            ; preds = %bb.yv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bkj, ptr noundef nonnull align 8 dereferenceable(48) %i.db, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.dq

bb.yz:                                            ; preds = %bb.dg
  %i.bkm = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bkn = load i8, ptr %i.bkm, align 1, !noalias !14832, !noundef !21 ; 2 uses
  %i.bko = add nuw nsw i64 %.sroa.156.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %i.bkp = icmp ult i8 %i.bkn, 32
  call void @llvm.assume(i1 %i.bkp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.m, align 8
  %i.bkq = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768) acquire, align 8, !noalias !14833
  %i.bkr = icmp eq i32 %i.bkq, 0
  br i1 %i.bkr, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i, label %bb.za, !prof !34

bb.za:                                            ; preds = %bb.yz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14833
  store ptr %i.m, ptr %i.l, align 8, !noalias !14833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14833
  store ptr %i.l, ptr %i.k, align 8, !noalias !14833
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768), i1 noundef zeroext false, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
          to label %.noexc1453 unwind label %bb.zh

.noexc1453:                                       ; preds = %bb.za
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14833
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i: ; preds = %.noexc1453, %bb.yz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bks = zext nneg i8 %i.bkn to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.bks
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.bku = load ptr, ptr %i.bkt, align 8, !nonnull !21, !noundef !21
  %i.bkv = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.bkw = load i64, ptr %i.bkv, align 8, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !14834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14835
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0)
          to label %bb.zd unwind label %bb.zb, !noalias !14835

bb.zb:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i
  %i.bkx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bky = icmp eq i64 %.sroa.01732.0, 0
end_hunk_4
begin_hunk_5_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl4read:bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %.sroa.4.0..sroa_idx.i714 = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %.sroa.514.0..sroa_idx.i715 = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %.sroa.51874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.71875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.iv = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %.sroa.42164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.52165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %.sroa.62166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %.sroa.42196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.sroa.52197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %.sroa.62198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %.sroa.42160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.52161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %.sroa.62162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  br label %bb.l

bb.e:                                             ; preds = %bb.yg
  %.sroa.0.0.copyload = load i64, ptr %i.ey, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx13807 = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx13807, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 11 uses
  %i.iy = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.iy, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.iz = shl nuw i64 %.sroa.0.0.copyload, 4      ; 2 uses
  %i.ja = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.ja, label %.thread2269, label %bb.g

.thread2269:                                      ; preds = %bb.f
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.iz, i64 noundef range(i64 1, 9) 8) #41, !noalias !15704
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.jb = shl nuw i64 %.sroa.7.0.copyload, 4      ; 2 uses
  %i.jc = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.iz, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 1, 0) %i.jb) #41, !noalias !15704 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.i, label %._crit_edge.i

bb.h:                                             ; preds = %bb.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2s_4SyncEL_EEEB1z_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ey) #42
          to label %.body382 unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.jb) #46
          to label %bb.j unwind label %bb.h, !noalias !15705

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !15705
  unreachable

bb.l:                                             ; preds = %.preheader, %bb.yg
  %.sroa.0.05356 = phi i64 [ -1, %.preheader ], [ %.sroa.0.1, %bb.yg ] ; 4 uses
  %.sroa.084.05355 = phi i64 [ 0, %.preheader ], [ %i.jg, %bb.yg ] ; 2 uses
  %.sroa.138.05354 = phi i64 [ 0, %.preheader ], [ %spec.select, %bb.yg ] ; 5 uses
  %i.jg = add nuw nsw i64 %.sroa.084.05355, 1     ; 2 uses
  %i.jh = icmp ult i64 %.sroa.138.05354, 10832
  br i1 %i.jh, label %bb.v, label %._crit_edge.i398.invoke

.body382:                                         ; preds = %.loopexit, %.split, %bb.ef, %bb.eq, %bb.eu, %bb.fg, %bb.fs, %bb.fz, %bb.gg, %bb.gk, %bb.gw, %bb.hl, %bb.hs, %bb.hw, %bb.id, %bb.ii, %bb.it, %bb.jo, %bb.jz, %bb.km, %bb.lj, %bb.ls, %bb.md, %bb.my, %bb.nn, %bb.ok, %bb.ow, %bb.pd, %bb.pp, %bb.qb, %bb.qk, %bb.qo, %bb.qs, %bb.rd, %bb.un, %bb.ur, %bb.uz, %bb.vj, %bb.vv, %bb.wj, %bb.wq, %bb.wx, %bb.xe, %bb.xi, %bb.xm, %bb.xt, %bb.ye, %bb.oh, %bb.og, %.thread.i1375, %bb.yb, %bb.xq, %bb.xb, %bb.wu, %bb.wn, %.thread.i1319, %bb.wg, %.thread.i1247, %bb.uk, %bb.qx, %.body.i, %bb.qh, %.thread.i1120, %bb.py, %.thread.i1100, %bb.pm, %bb.pa, %bb.ot, %bb.ia, %.thread.i740, %bb.gt, %bb.gd, %bb.fw, %.thread.i702, %bb.fp, %.thread.i, %bb.fd, %bb.en, %bb.ej, %bb.ea, %bb.dz, %bb.dx, %bb.dw, %bb.dl, %bb.dk, %bb.db, %bb.da, %bb.cy, %bb.cx, %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bf, %bb.bh, %bb.be, %bb.ax, %bb.aw, %bb.as, %bb.ar, %bb.os, %bb.qg, %bb.oz, %bb.hz, %bb.xp, %bb.gc, %bb.xa, %bb.wt, %.body5.i1385, %bb.wm, %bb.qw, %bb.fv, %.body5.i1130, %.body5.i1110, %.body5.i1257, %.body5.i1329, %.body5.i750, %.body5.i712, %.body5.i, %bb.em, %bb.ru, %bb.ry, %.body9.i, %bb.tp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i, %bb.ts, %bb.tv, %.body5.i781, %.thread.i771, %bb.hi, %bb.vy, %bb.vx, %bb.vs, %bb.vr, %bb.vm, %bb.vl, %bb.vg, %bb.vf, %bb.vc, %bb.vb, %bb.uw, %bb.uv, %.body336, %.body336.thread, %.body261, %.body286, %.body288, %.body263, %.body266, %.body273, %.body276, %.thread2522, %bb.yh, %.thread2309, %bb.am, %bb.al, %bb.q, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i384, %bb.h, %bb.n, %.body
  %.pn233 = phi { ptr, i32 } [ %i.jp, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i384 ], [ %.pn2312312, %bb.yh ], [ %.pn2062545, %.body ], [ %i.je, %bb.h ], [ %i.jl, %bb.n ], [ %i.jp, %bb.q ], [ %i.mr, %bb.al ], [ %i.mr, %bb.am ], [ %.pn2312312, %.thread2309 ], [ %i.bdb, %bb.vm ], [ %i.bed, %bb.vs ], [ %i.bcj, %bb.vc ], [ %i.bcw, %bb.vg ], [ %i.axo, %bb.ry ], [ %i.bce, %bb.uw ], [ %i.awx, %.body336.thread ], [ %i.arm, %bb.nn ], [ %.pn211.pn.ph, %.thread2522 ], [ %lpad.thr_comm.split-lp2489, %.body261 ], [ %i.anv, %bb.md ], [ %lpad.thr_comm.split-lp2435, %.body288 ], [ %i.ajh, %bb.km ], [ %lpad.thr_comm.split-lp2381, %.body266 ], [ %i.aee, %bb.it ], [ %lpad.thr_comm.split-lp, %.body276 ], [ %.pn.i, %.body9.i ], [ %lpad.thr_comm.split-lp2362, %.body273 ], [ %i.agn, %bb.jo ], [ %lpad.thr_comm.split-lp2416, %.body263 ], [ %i.amf, %bb.lj ], [ %lpad.thr_comm.split-lp2470, %.body286 ], [ %i.aqe, %bb.my ], [ %i.awt, %.body336 ], [ %i.bce, %bb.uv ], [ %i.bcj, %bb.vb ], [ %i.bcw, %bb.vf ], [ %i.bdb, %bb.vl ], [ %i.bed, %bb.vr ], [ %i.bei, %bb.vx ], [ %i.bei, %bb.vy ], [ %i.abq, %bb.hi ], [ %i.abs, %.body5.i781 ], [ %i.abq, %.thread.i771 ], [ %i.abx, %bb.hl ], [ %i.bbc, %bb.tv ], [ %.pn.pn.pn59.i, %bb.ts ], [ %.pn.pn.pn59.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i ], [ %.pn.pn.pn59.i, %bb.tp ], [ %i.atg, %bb.og ], [ %i.bgr, %bb.ye ], [ %i.bgk, %.thread.i1375 ], [ %i.bgm, %.body5.i1385 ], [ %i.bgd, %bb.xq ], [ %i.bfm, %bb.xb ], [ %i.bfe, %bb.wu ], [ %i.bez, %bb.wn ], [ %i.beo, %.thread.i1319 ], [ %i.beq, %.body5.i1329 ], [ %i.bbi, %.thread.i1247 ], [ %i.bbk, %.body5.i1257 ], [ %i.awo, %bb.rd ], [ %i.awg, %bb.qx ], [ %eh.lpad-body.i, %.body.i ], [ %i.avo, %bb.qh ], [ %i.auw, %.thread.i1120 ], [ %i.auy, %.body5.i1130 ], [ %i.auk, %.thread.i1100 ], [ %i.aum, %.body5.i1110 ], [ %i.aty, %bb.pa ], [ %i.atq, %bb.ot ], [ %i.ach, %bb.ia ], [ %i.aak, %.thread.i740 ], [ %i.aam, %.body5.i750 ], [ %i.zw, %bb.gd ], [ %i.zl, %bb.fw ], [ %i.zd, %.thread.i702 ], [ %i.zf, %.body5.i712 ], [ %i.yr, %.thread.i ], [ %i.yt, %.body5.i ], [ %i.yc, %bb.en ], [ %i.bfz, %bb.xm ], [ %i.bfl, %bb.wx ], [ %i.bfd, %bb.wq ], [ %i.bev, %bb.wj ], [ %i.beh, %bb.vv ], [ %i.avy, %bb.qs ], [ %i.avd, %bb.qb ], [ %i.aur, %bb.pp ], [ %i.auf, %bb.pd ], [ %i.atx, %bb.ow ], [ %i.amn, %bb.ls ], [ %i.acg, %bb.hw ], [ %i.aaf, %bb.gk ], [ %i.zs, %bb.fz ], [ %i.zk, %bb.fs ], [ %i.yy, %bb.fg ], [ %i.ym, %bb.eu ], [ %i.ya, %bb.ej ], [ %i.xw, %bb.ef ], [ %i.xr, %bb.ea ], [ %i.xr, %bb.dz ], [ %i.xp, %bb.dx ], [ %i.xp, %bb.dw ], [ %i.wk, %bb.dl ], [ %i.wk, %bb.dk ], [ %i.vh, %bb.db ], [ %i.vh, %bb.da ], [ %i.vf, %bb.cy ], [ %i.vf, %bb.cx ], [ %i.oo, %bb.bq ], [ %i.oo, %bb.bp ], [ %i.om, %bb.bn ], [ %i.om, %bb.bm ], [ %i.of, %bb.bf ], [ %i.oj, %bb.bh ], [ %i.of, %bb.be ], [ %i.no, %bb.ax ], [ %i.no, %bb.aw ], [ %i.na, %bb.as ], [ %i.na, %bb.ar ], [ %i.aac, %bb.gg ], [ %i.bbs, %bb.ur ], [ %i.bbp, %bb.un ], [ %i.atq, %bb.os ], [ %i.bft, %bb.xe ], [ %i.avo, %bb.qg ], [ %i.aty, %bb.oz ], [ %i.ach, %bb.hz ], [ %i.avv, %bb.qo ], [ %i.bgd, %bb.xp ], [ %i.bfw, %bb.xi ], [ %i.yj, %bb.eq ], [ %i.avs, %bb.qk ], [ %i.zw, %bb.gc ], [ %i.bfm, %bb.xa ], [ %i.bfe, %bb.wt ], [ %i.bci, %bb.uz ], [ %i.bda, %bb.vj ], [ %i.acd, %bb.hs ], [ %i.bgk, %bb.yb ], [ %i.aar, %bb.gw ], [ %i.bez, %bb.wm ], [ %i.awg, %bb.qw ], [ %i.ahk, %bb.jz ], [ %i.zl, %bb.fv ], [ %i.aco, %bb.id ], [ %i.acw, %bb.ii ], [ %i.auw, %bb.py ], [ %i.auk, %bb.pm ], [ %i.bbi, %bb.uk ], [ %i.beo, %bb.wg ], [ %i.aak, %bb.gt ], [ %i.zd, %bb.fp ], [ %i.yr, %bb.fd ], [ %i.bgj, %bb.xt ], [ %i.yc, %bb.em ], [ %i.axh, %bb.ru ], [ %i.ath, %bb.oh ], [ %i.atk, %bb.ok ], [ %.pn2062545, %.split ], [ %lpad.thr_comm.split-lp8032, %.loopexit ] ; 2 uses
  %.sroa.083.2 = phi i1 [ false, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i384 ], [ true, %bb.yh ], [ true, %.body ], [ false, %bb.h ], [ %i.jk, %bb.n ], [ false, %bb.q ], [ true, %bb.al ], [ true, %bb.am ], [ true, %.thread2309 ], [ true, %bb.vm ], [ true, %bb.vs ], [ true, %bb.vc ], [ true, %bb.vg ], [ true, %bb.ry ], [ true, %bb.uw ], [ true, %.body336.thread ], [ true, %bb.nn ], [ true, %.thread2522 ], [ true, %.body261 ], [ true, %bb.md ], [ true, %.body288 ], [ true, %bb.km ], [ true, %.body266 ], [ true, %bb.it ], [ true, %.body276 ], [ true, %.body9.i ], [ true, %.body273 ], [ true, %bb.jo ], [ true, %.body263 ], [ true, %bb.lj ], [ true, %.body286 ], [ true, %bb.my ], [ true, %.body336 ], [ true, %bb.uv ], [ true, %bb.vb ], [ true, %bb.vf ], [ true, %bb.vl ], [ true, %bb.vr ], [ true, %bb.vx ], [ true, %bb.vy ], [ true, %bb.hi ], [ true, %.body5.i781 ], [ true, %.thread.i771 ], [ true, %bb.hl ], [ true, %bb.tv ], [ true, %bb.ts ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i ], [ true, %bb.tp ], [ true, %bb.og ], [ true, %bb.ye ], [ true, %.thread.i1375 ], [ true, %.body5.i1385 ], [ true, %bb.xq ], [ true, %bb.xb ], [ true, %bb.wu ], [ true, %bb.wn ], [ true, %.thread.i1319 ], [ true, %.body5.i1329 ], [ true, %.thread.i1247 ], [ true, %.body5.i1257 ], [ true, %bb.rd ], [ true, %bb.qx ], [ true, %.body.i ], [ true, %bb.qh ], [ true, %.thread.i1120 ], [ true, %.body5.i1130 ], [ true, %.thread.i1100 ], [ true, %.body5.i1110 ], [ true, %bb.pa ], [ true, %bb.ot ], [ true, %bb.ia ], [ true, %.thread.i740 ], [ true, %.body5.i750 ], [ true, %bb.gd ], [ true, %bb.fw ], [ true, %.thread.i702 ], [ true, %.body5.i712 ], [ true, %.thread.i ], [ true, %.body5.i ], [ true, %bb.en ], [ true, %bb.xm ], [ true, %bb.wx ], [ true, %bb.wq ], [ true, %bb.wj ], [ true, %bb.vv ], [ true, %bb.qs ], [ true, %bb.qb ], [ true, %bb.pp ], [ true, %bb.pd ], [ true, %bb.ow ], [ true, %bb.ls ], [ true, %bb.hw ], [ true, %bb.gk ], [ true, %bb.fz ], [ true, %bb.fs ], [ true, %bb.fg ], [ true, %bb.eu ], [ true, %bb.ej ], [ true, %bb.ef ], [ true, %bb.ea ], [ true, %bb.dz ], [ true, %bb.dx ], [ true, %bb.dw ], [ true, %bb.dl ], [ true, %bb.dk ], [ true, %bb.db ], [ true, %bb.da ], [ true, %bb.cy ], [ true, %bb.cx ], [ true, %bb.bq ], [ true, %bb.bp ], [ true, %bb.bn ], [ true, %bb.bm ], [ true, %bb.bf ], [ true, %bb.bh ], [ true, %bb.be ], [ true, %bb.ax ], [ true, %bb.aw ], [ true, %bb.as ], [ true, %bb.ar ], [ true, %bb.gg ], [ true, %bb.ur ], [ true, %bb.un ], [ true, %bb.os ], [ true, %bb.xe ], [ true, %bb.qg ], [ true, %bb.oz ], [ true, %bb.hz ], [ true, %bb.qo ], [ true, %bb.xp ], [ true, %bb.xi ], [ true, %bb.eq ], [ true, %bb.qk ], [ true, %bb.gc ], [ true, %bb.xa ], [ true, %bb.wt ], [ true, %bb.uz ], [ true, %bb.vj ], [ true, %bb.hs ], [ true, %bb.yb ], [ true, %bb.gw ], [ true, %bb.wm ], [ true, %bb.qw ], [ true, %bb.jz ], [ true, %bb.fv ], [ true, %bb.id ], [ true, %bb.ii ], [ true, %bb.py ], [ true, %bb.pm ], [ true, %bb.uk ], [ true, %bb.wg ], [ true, %bb.gt ], [ true, %bb.fp ], [ true, %bb.fd ], [ true, %bb.xt ], [ true, %bb.em ], [ true, %bb.ru ], [ true, %bb.oh ], [ true, %bb.ok ], [ true, %.split ], [ true, %.loopexit ]
  %.val377 = load i64, ptr %i.ex, align 8         ; 2 uses
  %i.ji = icmp eq i64 %.val377, 0
  br i1 %i.ji, label %bb.c, label %bb.m

bb.m:                                             ; preds = %.body382
  %.val378 = load ptr, ptr %i.ff, align 8, !nonnull !21, !noundef !21
  %i.jj = shl nuw i64 %.val377, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val378, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %bb.c

bb.n:                                             ; preds = %.invoke10359, %.invoke, %._crit_edge.i398.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread
  %i.jk = phi i1 [ true, %._crit_edge.i398.invoke ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread ], [ true, %.invoke ], [ true, %.invoke10359 ]
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body382

._crit_edge.i:                                    ; preds = %bb.e, %bb.g
  %.sroa.410.0.copyload.i = phi ptr [ %i.jc, %bb.g ], [ %.sroa.5.0.copyload, %bb.e ] ; 3 uses
  %i.jm = icmp ult i64 %.sroa.7.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.jm)
  %i.jn = icmp eq i64 %.sroa.7.0.copyload, 4936
  br i1 %i.jn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %.not = icmp eq ptr %.sroa.410.0.copyload.i, null
  %i.jo = inttoptr i64 %.sroa.7.0.copyload to ptr
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread2269
  %.sroa.02088.02275 = phi ptr [ inttoptr (i64 8 to ptr), %.thread2269 ], [ %.sroa.410.0.copyload.i, %bb.o ] ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1k_(ptr noalias nofree noundef nonnull align 8 %.sroa.02088.02275, i64 noundef %.sroa.7.0.copyload)
          to label %bb.r unwind label %bb.q, !noalias !15706

bb.q:                                             ; preds = %bb.p
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.jq, label %.body382, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i384

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i384: ; preds = %bb.q
  %i.jr = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02088.02275, i64 noundef %i.jr, i64 noundef 8) #41, !noalias !15706
  br label %.body382

bb.r:                                             ; preds = %bb.p
  %i.js = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.js, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.r
  %i.jt = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02088.02275, i64 noundef %i.jt, i64 noundef 8) #41, !noalias !15706
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit: ; preds = %._crit_edge.i, %bb.o
  %.sroa.054.02268 = phi ptr [ %.sroa.410.0.copyload.i, %._crit_edge.i ], [ %i.jo, %bb.o ] ; 2 uses
  %.not196 = icmp eq ptr %.sroa.054.02268, null
  br i1 %.not196, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread, label %bb.s, !prof !33

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit
  %.val = load i64, ptr %i.ex, align 8            ; 2 uses
  %i.ju = icmp eq i64 %.val, 0
  br i1 %i.ju, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit387, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val376 = load ptr, ptr %i.ff, align 8, !nonnull !21, !noundef !21
  %i.jv = shl nuw i64 %.val, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val376, i64 noundef %i.jv, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit387

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread: ; preds = %bb.r, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10901) #46
          to label %bb.u unwind label %bb.n

bb.u:                                             ; preds = %bb.sz, %bb.sy, %bb.sr, %bb.sq, %bb.mr, %bb.mq, %bb.la, %bb.kz, %bb.jh, %bb.jg, %bb.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit387: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  ret ptr %.sroa.054.02268

bb.v:                                             ; preds = %bb.l
  %i.jw = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.05354
  %i.jx = load i8, ptr %i.jw, align 1, !noalias !15707, !noundef !21 ; 2 uses
  %i.jy = add nuw nsw i64 %.sroa.138.05354, 1     ; 2 uses
  %i.jz = and i8 %i.jx, 127                       ; 2 uses
  %i.ka = icmp eq i8 %i.jz, 0
  br i1 %i.ka, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.y
  %.sroa.138.1 = phi i64 [ %i.kh, %bb.y ], [ %i.jy, %bb.v ] ; 3 uses
  %.sroa.02.0 = phi i64 [ %i.jy, %bb.y ], [ -1, %bb.v ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.05356, %bb.y ], [ %.sroa.138.05354, %bb.v ]
  %i.kb = phi i8 [ %i.ki, %bb.y ], [ %i.jz, %bb.v ]
  %i.kc = icmp sgt i8 %i.jx, -1
  %i.kd = icmp samesign ult i64 %.sroa.138.1, 10832 ; 2 uses
  br i1 %i.kc, label %bb.z, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.ke = icmp ult i64 %.sroa.0.05356, 10832
  br i1 %i.ke, label %bb.y, label %._crit_edge.i398.invoke

bb.y:                                             ; preds = %bb.x
  %i.kf = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.0.05356
  %i.kg = load i8, ptr %i.kf, align 1, !noalias !15708, !noundef !21
  %i.kh = add nuw nsw i64 %.sroa.0.05356, 1
  %i.ki = and i8 %i.kg, 127                       ; 2 uses
  %i.kj = icmp samesign ult i8 %i.ki, 49
  call void @llvm.assume(i1 %i.kj)
  br label %bb.w

bb.z:                                             ; preds = %bb.w
  br i1 %i.kd, label %.lr.ph.i, label %._crit_edge.i398.invoke

.lr.ph.i:                                         ; preds = %bb.z, %bb.aa
  %.sroa.0.013.i = phi i32 [ %i.kt, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.sroa.02.012.i = phi i32 [ %i.ku, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.kk = phi i64 [ %i.kn, %bb.aa ], [ %.sroa.138.1, %bb.z ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr @10956, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !noalias !15709, !noundef !21 ; 2 uses
  %i.kn = add nuw nsw i64 %i.kk, 1                ; 4 uses
  %i.ko = zext i8 %i.km to i32                    ; 2 uses
  %i.kp = icmp sgt i8 %i.km, -1
  br i1 %i.kp, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.kq = and i32 %i.ko, 127
  %i.kr = and i32 %.sroa.02.012.i, 31
  %i.ks = shl i32 %i.kq, %i.kr
  %i.kt = or i32 %i.ks, %.sroa.0.013.i
  %i.ku = add nuw nsw i32 %.sroa.02.012.i, 7
  %exitcond.not.i = icmp eq i64 %i.kn, 10832
  br i1 %exitcond.not.i, label %._crit_edge.i398.invoke, label %.lr.ph.i

bb.ab:                                            ; preds = %bb.w
  br i1 %i.kd, label %.lr.ph.i394, label %._crit_edge.i398.invoke

.lr.ph.i394:                                      ; preds = %bb.ab, %bb.ac
  %.sroa.0.013.i395 = phi i32 [ %i.lf, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.02.012.i396 = phi i32 [ %i.lg, %bb.ac ], [ 0, %bb.ab ] ; 3 uses
  %i.kv = phi i64 [ %i.ky, %bb.ac ], [ %.sroa.138.1, %bb.ab ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr @10956, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !noalias !15710, !noundef !21 ; 2 uses
  %i.ky = add nuw nsw i64 %i.kv, 1                ; 3 uses
  %i.kz = zext i8 %i.kx to i32                    ; 2 uses
  %i.la = icmp sgt i8 %i.kx, -1
  br i1 %i.la, label %bb.ah, label %bb.ac

._crit_edge.i398.invoke:                          ; preds = %bb.l, %bb.ab, %bb.z, %bb.x, %bb.ac, %bb.aa
  %i.lb = phi i64 [ 10832, %bb.ac ], [ 10832, %bb.aa ], [ -1, %bb.x ], [ 10832, %bb.z ], [ 10832, %bb.ab ], [ %.sroa.138.05354, %bb.l ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.lb, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i398.cont unwind label %bb.n

._crit_edge.i398.cont:                            ; preds = %._crit_edge.i398.invoke
  unreachable

bb.ac:                                            ; preds = %.lr.ph.i394
  %i.lc = and i32 %i.kz, 127
  %i.ld = and i32 %.sroa.02.012.i396, 31
  %i.le = shl i32 %i.lc, %i.ld
  %i.lf = or i32 %i.le, %.sroa.0.013.i395
  %i.lg = add nuw nsw i32 %.sroa.02.012.i396, 7
  %exitcond.not.i397 = icmp eq i64 %i.ky, 10832
  br i1 %exitcond.not.i397, label %._crit_edge.i398.invoke, label %.lr.ph.i394

bb.ad:                                            ; preds = %.lr.ph.i
  %i.lh = and i32 %.sroa.02.012.i, 31
  %i.li = shl i32 %i.ko, %i.lh
  %i.lj = or i32 %i.li, %.sroa.0.013.i
  %i.lk = zext i32 %i.lj to i64                   ; 3 uses
  %i.ll = load i64, ptr %i.fe, align 8, !noundef !21 ; 4 uses
  %i.lm = icmp ugt i64 %i.ll, %i.lk
  br i1 %i.lm, label %bb.ae, label %.invoke10359

bb.ae:                                            ; preds = %bb.ad
  %i.ln = load ptr, ptr %i.ff, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.lk ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !nonnull !21, !noundef !21
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !noundef !21 ; 8 uses
  %.not.i = icmp slt i64 %i.lr, 0
  br i1 %.not.i, label %.invoke, label %bb.af, !prof !37

bb.af:                                            ; preds = %bb.ae
  %i.ls = icmp eq i64 %i.lr, 0
  br i1 %i.ls, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit402.thread2282, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.af
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15711
  %i.lt = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lr, i64 noundef range(i64 1, 9) 1) #41, !noalias !15711 ; 3 uses
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lt, ptr nonnull align 1 %i.lp, i64 %i.lr, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit402.thread2282

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit402.thread2282: ; preds = %bb.af, %bb.ag, %bb.an
  %i.lv = phi ptr [ %i.md, %bb.an ], [ %i.ln, %bb.ag ], [ %i.ln, %bb.af ] ; 14 uses
  %i.lw = phi i64 [ %i.mb, %bb.an ], [ %i.ll, %bb.ag ], [ %i.ll, %bb.af ] ; 20 uses
  %.sroa.69.0 = phi i64 [ %.pre-phi, %bb.an ], [ %i.lr, %bb.ag ], [ 0, %bb.af ] ; 97 uses
  %.sroa.53.0 = phi ptr [ %.sroa.53.0.copyload, %bb.an ], [ %i.lt, %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.af ] ; 179 uses
  %.sroa.01598.0 = phi i64 [ %.sroa.01598.0.copyload, %bb.an ], [ %i.lr, %bb.ag ], [ 0, %bb.af ] ; 152 uses
  %.sroa.138.2 = phi i64 [ %i.ky, %bb.an ], [ %i.kn, %bb.ag ], [ %i.kn, %bb.af ] ; 149 uses
  switch i8 %i.kb, label %bb.ao [
    i8 0, label %bb.ap
    i8 1, label %bb.aq
    i8 2, label %bb.at
    i8 3, label %bb.av
    i8 4, label %bb.ay
    i8 5, label %bb.az
    i8 6, label %bb.ba
    i8 7, label %bb.bc
    i8 8, label %bb.bd
    i8 9, label %bb.bj
    i8 10, label %bb.bk
    i8 11, label %bb.bl
    i8 12, label %bb.bo
    i8 13, label %bb.br
    i8 14, label %bb.bt
    i8 15, label %bb.bv
    i8 16, label %bb.bx
    i8 17, label %bb.bz
    i8 18, label %bb.cb
    i8 19, label %bb.cd
    i8 20, label %bb.cf
    i8 21, label %bb.ch
    i8 22, label %bb.cj
    i8 23, label %bb.cl
    i8 24, label %bb.cn
    i8 25, label %bb.cp
    i8 26, label %bb.cr
    i8 27, label %bb.ct
    i8 28, label %bb.cu
    i8 29, label %bb.cv
    i8 30, label %bb.cw
    i8 31, label %bb.cz
    i8 32, label %bb.dc
    i8 33, label %bb.de
    i8 34, label %bb.df
    i8 35, label %bb.dg
    i8 36, label %bb.di
    i8 37, label %bb.dj
    i8 38, label %bb.dm
    i8 39, label %bb.dn
    i8 40, label %bb.do
    i8 41, label %bb.dp
    i8 42, label %bb.dq
    i8 43, label %bb.dr
    i8 44, label %bb.dt
    i8 45, label %bb.dv
    i8 46, label %bb.dy
    i8 47, label %bb.eb
    i8 48, label %bb.ec
  ], !prof !15712

bb.ah:                                            ; preds = %.lr.ph.i394
  %i.lx = and i32 %.sroa.02.012.i396, 31
  %i.ly = shl i32 %i.kz, %i.lx
  %i.lz = or i32 %i.ly, %.sroa.0.013.i395
  %i.ma = zext i32 %i.lz to i64                   ; 3 uses
  %i.mb = load i64, ptr %i.fe, align 8, !noundef !21 ; 3 uses
  %i.mc = icmp ugt i64 %i.mb, %i.ma
  br i1 %i.mc, label %bb.ai, label %.invoke10359

bb.ai:                                            ; preds = %bb.ah
  %i.md = load ptr, ptr %i.ff, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %i.md, i64 %i.ma ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !nonnull !21, !noundef !21
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !noundef !21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  %i.mi = add i64 %i.mh, 1                        ; 7 uses
  %.not.i403 = icmp slt i64 %i.mi, 0
  br i1 %.not.i403, label %.invoke, label %bb.aj, !prof !37

bb.aj:                                            ; preds = %bb.ai
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %bb.ak, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i404

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i404: ; preds = %bb.aj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15713
  %i.mk = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.mi, i64 noundef range(i64 1, 9) 1) #41, !noalias !15713 ; 5 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %.invoke, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i

.invoke10359:                                     ; preds = %bb.ah, %bb.ad
  %i.mm = phi i64 [ %i.lk, %bb.ad ], [ %i.ma, %bb.ah ]
  %i.mn = phi i64 [ %i.ll, %bb.ad ], [ %i.mb, %bb.ah ]
  %i.mo = phi ptr [ @10902, %bb.ad ], [ @10903, %bb.ah ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.mm, i64 noundef %i.mn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mo) #46
          to label %.cont10360 unwind label %bb.n

.cont10360:                                       ; preds = %.invoke10359
  unreachable

.invoke:                                          ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i404, %bb.ai, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i, %bb.ae
  %i.mp = phi i64 [ 0, %bb.ae ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i404 ], [ 0, %bb.ai ]
  %i.mq = phi i64 [ %i.lr, %bb.ae ], [ %i.lr, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ %i.mi, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i404 ], [ %i.mi, %bb.ai ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.mp, i64 %i.mq) #46
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj
  store i64 0, ptr %i.ew, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.487.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ew, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.thread8026 unwind label %bb.al

bb.al:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i, %bb.ak
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15714)
  %.val.i408 = load i64, ptr %i.ew, align 8, !alias.scope !15714 ; 2 uses
  %i.ms = icmp eq i64 %.val.i408, 0
  br i1 %i.ms, label %.body382, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_5
begin_hunk_6_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl4read:bb.a
          cleanup                                 ; 2 uses
  %i.zx = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.zx, label %.body382, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15823
  br label %.body382

bb.ge:                                            ; preds = %bb.gb
  %i.zy = icmp ne i8 %i.zu, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62206.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !15824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !15822
  store i64 %.sroa.01598.0, ptr %i.cf, align 8, !noalias !15824
  store ptr %.sroa.53.0, ptr %.sroa.42204.0..sroa_idx, align 8, !noalias !15824
  store i64 %.sroa.69.0, ptr %.sroa.52205.0..sroa_idx, align 8, !noalias !15824
  %i.zz = zext i1 %i.zy to i8
  store i8 %i.zz, ptr %i.iq, align 8, !alias.scope !15821, !noalias !15824
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15825
  %i.aaa = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15825 ; 3 uses
  %i.aab = icmp eq ptr %i.aaa, null
  br i1 %i.aab, label %bb.gf, label %bb.gh, !prof !26

bb.gf:                                            ; preds = %bb.ge
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc735 unwind label %bb.gg

.noexc735:                                        ; preds = %bb.gf
  unreachable

bb.gg:                                            ; preds = %bb.gf
  %i.aac = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info21SimpleInstrInfo_STIG1EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cf) #42
  br label %.body382

bb.gh:                                            ; preds = %bb.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aaa, ptr noundef nonnull align 8 dereferenceable(56) %i.cf, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.eh

bb.gi:                                            ; preds = %_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString3new.exit.i
  %switch.idx.cast.i = trunc nuw nsw i16 %switch.tableidx.i to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.en, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i64 48, i1 false), !noalias !15826
  store i8 %switch.offset.i, ptr %i.ip, align 8, !alias.scope !15725, !noalias !15826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !15726
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15827
  %i.aad = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15827 ; 3 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %bb.gj, label %bb.gl, !prof !26

bb.gj:                                            ; preds = %bb.gi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc737 unwind label %bb.gk

.noexc737:                                        ; preds = %bb.gj
  unreachable

bb.gk:                                            ; preds = %bb.gj
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info27SimpleInstrInfo_DeclareDataEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.en) #42
  br label %.body382

bb.gl:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aad, ptr noundef nonnull align 8 dereferenceable(56) %i.en, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  br label %bb.eh

bb.gm:                                            ; preds = %bb.bj
  %i.aag = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
  %i.aah = load i8, ptr %i.aag, align 1, !noalias !15828, !noundef !21
  %i.aai = add nuw nsw i64 %.sroa.138.2, 1
  %i.aaj = zext i8 %i.aah to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0, i32 noundef %i.aaj)
          to label %bb.gn unwind label %.loopexit.thread

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  call void @llvm.experimental.noalias.scope.decl(metadata !15829)
  call void @llvm.experimental.noalias.scope.decl(metadata !15830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !15831
  call void @llvm.experimental.noalias.scope.decl(metadata !15832)
  call void @llvm.experimental.noalias.scope.decl(metadata !15833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !15834
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.gq unwind label %bb.go, !noalias !15834

bb.go:                                            ; preds = %bb.gn
  %i.aak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aal = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.aal, label %.thread.i740, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15835
  br label %.thread.i740

bb.gq:                                            ; preds = %bb.gn
  store i64 %.sroa.01598.0, ptr %i.ba, align 8, !alias.scope !15836, !noalias !15837
  store ptr %.sroa.53.0, ptr %.sroa.51886.0..sroa_idx, align 8, !alias.scope !15836, !noalias !15837
  store i64 %.sroa.69.0, ptr %.sroa.71887.0..sroa_idx, align 8, !alias.scope !15836, !noalias !15837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !15838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !15834
  %.sroa.0.0.copyload.i745 = load i64, ptr %i.em, align 8, !alias.scope !15830, !noalias !15839 ; 3 uses
  %.sroa.5.0.copyload.i747 = load ptr, ptr %.sroa.5.0..sroa_idx.i746, align 8, !alias.scope !15830, !noalias !15839, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.6.0.copyload.i749 = load i64, ptr %.sroa.6.0..sroa_idx.i748, align 8, !alias.scope !15830, !noalias !15839 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !15840
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i747, i64 noundef %.sroa.6.0.copyload.i749)
          to label %bb.gu unwind label %bb.gr, !noalias !15840

bb.gr:                                            ; preds = %bb.gq
  %i.aam = landingpad { ptr, i32 }
          cleanup
  %i.aan = icmp eq i64 %.sroa.0.0.copyload.i745, 0
  br i1 %i.aan, label %.body5.i750, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i747, i64 noundef %.sroa.0.0.copyload.i745, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15841
  br label %.body5.i750

.body5.i750:                                      ; preds = %bb.gs, %bb.gr
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ba) #42, !noalias !15831
  br label %.body382

.thread.i740:                                     ; preds = %bb.gp, %bb.go
  call void @llvm.experimental.noalias.scope.decl(metadata !15842)
  %.val.i.i741 = load i64, ptr %i.em, align 8, !alias.scope !15843, !noalias !15839 ; 2 uses
  %i.aao = icmp eq i64 %.val.i.i741, 0
  br i1 %i.aao, label %.body382, label %bb.gt

bb.gt:                                            ; preds = %.thread.i740
  %.val1.i.i742 = load ptr, ptr %.sroa.5.0..sroa_idx.i746, align 8, !alias.scope !15843, !noalias !15839, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i742, i64 noundef %.val.i.i741, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15844
  br label %.body382

bb.gu:                                            ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i751, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !15845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !15840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.el, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !15845
  store i64 %.sroa.0.0.copyload.i745, ptr %i.in, align 8, !alias.scope !15829, !noalias !15845
  store ptr %.sroa.5.0.copyload.i747, ptr %.sroa.4.0..sroa_idx.i752, align 8, !alias.scope !15829, !noalias !15845
  store i64 %.sroa.6.0.copyload.i749, ptr %.sroa.514.0..sroa_idx.i753, align 8, !alias.scope !15829, !noalias !15845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !15831
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15846
  %i.aap = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15846 ; 3 uses
  %i.aaq = icmp eq ptr %i.aap, null
  br i1 %i.aaq, label %bb.gv, label %bb.gx, !prof !26

bb.gv:                                            ; preds = %bb.gu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #46
          to label %.noexc757 unwind label %bb.gw

.noexc757:                                        ; preds = %bb.gv
  unreachable

bb.gw:                                            ; preds = %bb.gv
  %i.aar = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_DXEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.el) #42
  br label %.body382

bb.gx:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aap, ptr noundef nonnull align 8 dereferenceable(96) %i.el, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  br label %bb.eh

bb.gy:                                            ; preds = %bb.bk
  %i.aas = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
  %i.aat = load i8, ptr %i.aas, align 1, !noalias !15847, !noundef !21
  %i.aau = add nuw nsw i64 %.sroa.138.2, 1        ; 2 uses
  %i.aav = zext i8 %i.aat to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0, i32 noundef %i.aav)
          to label %bb.gz unwind label %.loopexit.thread

bb.gz:                                            ; preds = %bb.gy
  %.not2628 = icmp eq i64 %.sroa.138.2, 10831
  br i1 %.not2628, label %._crit_edge.i767.invoke, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aaw = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aau
  %i.aax = load i8, ptr %i.aaw, align 1, !noalias !15848, !noundef !21 ; 2 uses
  %i.aay = icmp samesign ult i64 %.sroa.138.2, 10830
  br i1 %i.aay, label %.lr.ph.i763.preheader, label %._crit_edge.i767.invoke

.lr.ph.i763.preheader:                            ; preds = %bb.ha
  %i.aaz = add nuw nsw i64 %.sroa.138.2, 2
  br label %.lr.ph.i763

.lr.ph.i763:                                      ; preds = %.lr.ph.i763.preheader, %bb.hb
  %.sroa.0.013.i764 = phi i32 [ %i.abk, %bb.hb ], [ 0, %.lr.ph.i763.preheader ] ; 2 uses
  %.sroa.02.012.i765 = phi i32 [ %i.abl, %bb.hb ], [ 0, %.lr.ph.i763.preheader ] ; 3 uses
  %i.aba = phi i64 [ %i.abd, %bb.hb ], [ %i.aaz, %.lr.ph.i763.preheader ] ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aba
  %i.abc = load i8, ptr %i.abb, align 1, !noalias !15849, !noundef !21 ; 2 uses
  %i.abd = add nuw nsw i64 %i.aba, 1              ; 3 uses
  %i.abe = zext i8 %i.abc to i32                  ; 2 uses
  %i.abf = icmp sgt i8 %i.abc, -1
  br i1 %i.abf, label %bb.hc, label %bb.hb

._crit_edge.i767.invoke:                          ; preds = %bb.ha, %bb.gz, %bb.hb
  %i.abg = phi i64 [ 10832, %bb.hb ], [ 10832, %bb.ha ], [ %i.aau, %bb.gz ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.abg, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i767.cont unwind label %bb.hn

._crit_edge.i767.cont:                            ; preds = %._crit_edge.i767.invoke
  unreachable

bb.hb:                                            ; preds = %.lr.ph.i763
  %i.abh = and i32 %i.abe, 127
  %i.abi = and i32 %.sroa.02.012.i765, 31
  %i.abj = shl i32 %i.abh, %i.abi
  %i.abk = or i32 %i.abj, %.sroa.0.013.i764
  %i.abl = add nuw nsw i32 %.sroa.02.012.i765, 7
  %exitcond.not.i766 = icmp eq i64 %i.abd, 10832
  br i1 %exitcond.not.i766, label %._crit_edge.i767.invoke, label %.lr.ph.i763

bb.hc:                                            ; preds = %.lr.ph.i763
  %i.abm = and i32 %.sroa.02.012.i765, 31
  %i.abn = shl i32 %i.abe, %i.abm
  %i.abo = or i32 %i.abn, %.sroa.0.013.i764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  %i.abp = icmp ult i8 %i.aax, 4
  call void @llvm.assume(i1 %i.abp)
  %.sroa.01891.0.copyload = load i64, ptr %i.ek, align 8 ; 5 uses
  %.sroa.51892.0.copyload = load ptr, ptr %.sroa.51892.0..sroa_idx, align 8 ; 6 uses
  %.sroa.71893.0.copyload = load i64, ptr %.sroa.71893.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15850)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !15851
  call void @llvm.experimental.noalias.scope.decl(metadata !15852)
  call void @llvm.experimental.noalias.scope.decl(metadata !15853)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !15854
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.hf unwind label %bb.hd, !noalias !15854

bb.hd:                                            ; preds = %bb.hc
  %i.abq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abr = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.abr, label %.thread.i771, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15855
  br label %.thread.i771

bb.hf:                                            ; preds = %bb.hc
  store i64 %.sroa.01598.0, ptr %i.ax, align 8, !alias.scope !15856, !noalias !15857
  store ptr %.sroa.53.0, ptr %.sroa.51889.0..sroa_idx, align 8, !alias.scope !15856, !noalias !15857
  store i64 %.sroa.69.0, ptr %.sroa.71890.0..sroa_idx, align 8, !alias.scope !15856, !noalias !15857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !15858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !15854
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51892.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !15859
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.51892.0.copyload, i64 noundef %.sroa.71893.0.copyload)
          to label %bb.hj unwind label %bb.hg, !noalias !15859

bb.hg:                                            ; preds = %bb.hf
  %i.abs = landingpad { ptr, i32 }
          cleanup
  %i.abt = icmp eq i64 %.sroa.01891.0.copyload, 0
  br i1 %i.abt, label %.body5.i781, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.51892.0.copyload, i64 noundef %.sroa.01891.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15860
  br label %.body5.i781

.body5.i781:                                      ; preds = %bb.hh, %bb.hg
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ax) #42, !noalias !15851
  br label %.body382

.thread.i771:                                     ; preds = %bb.he, %bb.hd
  %i.abu = icmp eq i64 %.sroa.01891.0.copyload, 0
  br i1 %i.abu, label %.body382, label %bb.hi

bb.hi:                                            ; preds = %.thread.i771
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51892.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.51892.0.copyload, i64 noundef %.sroa.01891.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15861
  br label %.body382

bb.hj:                                            ; preds = %bb.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i782, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !15862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !15859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ej, ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i64 48, i1 false), !noalias !15862
  store i64 %.sroa.01891.0.copyload, ptr %i.ij, align 8, !alias.scope !15850, !noalias !15862
  store ptr %.sroa.51892.0.copyload, ptr %.sroa.4.0..sroa_idx.i783, align 8, !alias.scope !15850, !noalias !15862
  store i64 %.sroa.71893.0.copyload, ptr %.sroa.514.0..sroa_idx.i784, align 8, !alias.scope !15850, !noalias !15862
  store i8 %i.aax, ptr %i.ik, align 4, !alias.scope !15850, !noalias !15862
  store i32 %i.abo, ptr %i.il, align 8, !alias.scope !15850, !noalias !15862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !15851
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15863
  %i.abv = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15863 ; 3 uses
  %i.abw = icmp eq ptr %i.abv, null
  br i1 %i.abw, label %bb.hk, label %bb.hm, !prof !26

bb.hk:                                            ; preds = %bb.hj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc788 unwind label %bb.hl

.noexc788:                                        ; preds = %bb.hk
  unreachable

bb.hl:                                            ; preds = %bb.hk
  %i.abx = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info21SimpleInstrInfo_fwordEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ej) #42
  br label %.body382

bb.hm:                                            ; preds = %bb.hj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.abv, ptr noundef nonnull align 8 dereferenceable(104) %i.ej, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  br label %bb.eh

bb.hn:                                            ; preds = %._crit_edge.i767.invoke
  %i.aby = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15864)
  %.val.i790 = load i64, ptr %i.ek, align 8, !alias.scope !15864 ; 2 uses
  %i.abz = icmp eq i64 %.val.i790, 0
  br i1 %i.abz, label %.thread2309, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.val1.i791 = load ptr, ptr %.sroa.51892.0..sroa_idx, align 8, !alias.scope !15864, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i791, i64 noundef %.val.i790, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15864
  br label %.thread2309

bb.hp:                                            ; preds = %bb.yj
  %i.aca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.hq:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62170.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !noalias !15865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !15733
  store i64 %.sroa.01598.0, ptr %i.ei, align 8, !noalias !15865
  store ptr %.sroa.53.0, ptr %.sroa.42168.0..sroa_idx, align 8, !noalias !15865
  store i64 %.sroa.69.0, ptr %.sroa.52169.0..sroa_idx, align 8, !noalias !15865
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15866
  %i.acb = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15866 ; 3 uses
  %i.acc = icmp eq ptr %i.acb, null
  br i1 %i.acc, label %bb.hr, label %bb.ht, !prof !26

bb.hr:                                            ; preds = %bb.hq
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc793 unwind label %bb.hs

.noexc793:                                        ; preds = %bb.hr
  unreachable

bb.hs:                                            ; preds = %bb.hr
  %i.acd = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info20SimpleInstrInfo_Int3EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ei) #42
  br label %.body382

bb.ht:                                            ; preds = %bb.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.acb, ptr noundef nonnull align 8 dereferenceable(48) %i.ei, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %bb.eh

bb.hu:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62174.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !noalias !15867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !15735
  store i64 %.sroa.01598.0, ptr %i.eh, align 8, !noalias !15867
  store ptr %.sroa.53.0, ptr %.sroa.42172.0..sroa_idx, align 8, !noalias !15867
  store i64 %.sroa.69.0, ptr %.sroa.52173.0..sroa_idx, align 8, !noalias !15867
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15868
  %i.ace = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15868 ; 3 uses
  %i.acf = icmp eq ptr %i.ace, null
  br i1 %i.acf, label %bb.hv, label %bb.hx, !prof !26

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc795 unwind label %bb.hw

.noexc795:                                        ; preds = %bb.hv
  unreachable

bb.hw:                                            ; preds = %bb.hv
  %i.acg = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info20SimpleInstrInfo_imulEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eh) #42
  br label %.body382

bb.hx:                                            ; preds = %bb.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ace, ptr noundef nonnull align 8 dereferenceable(48) %i.eh, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %bb.eh

bb.hy:                                            ; preds = %.lr.ph.i467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.experimental.noalias.scope.decl(metadata !15869)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !15870
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
end_hunk_6
begin_hunk_7_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl4read:bb.a
  %i.aqi = zext i32 %i.aqh to i64                 ; 3 uses
  %i.aqj = icmp ugt i64 %i.lw, %i.aqi
  br i1 %i.aqj, label %bb.nf, label %.invoke12400

bb.nf:                                            ; preds = %bb.ne
  %i.aqk = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.aqi ; 2 uses
  %i.aql = load ptr, ptr %i.aqk, align 8, !nonnull !21, !noundef !21
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  %i.aqn = load i64, ptr %i.aqm, align 8, !noundef !21 ; 9 uses
  %.not.i1027 = icmp slt i64 %i.aqn, 0
  br i1 %.not.i1027, label %.invoke12398, label %bb.ng, !prof !37

bb.ng:                                            ; preds = %bb.nf
  %i.aqo = icmp eq i64 %i.aqn, 0                  ; 2 uses
  br i1 %i.aqo, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1028

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1028: ; preds = %bb.ng
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15931
  %i.aqp = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aqn, i64 noundef range(i64 1, 9) 1) #41, !noalias !15931 ; 3 uses
  %i.aqq = icmp eq ptr %i.aqp, null
  br i1 %i.aqq, label %.invoke12398, label %bb.ni

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480: ; preds = %bb.ng, %bb.ni
  %i.aqr = phi ptr [ %i.aqp, %bb.ni ], [ inttoptr (i64 1 to ptr), %bb.ng ] ; 2 uses
  %i.aqs = icmp ult i64 %i.th, 10831
  br i1 %i.aqs, label %.lr.ph.i1033, label %._crit_edge.i1037

.lr.ph.i1033:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480, %bb.nh
  %.sroa.0.013.i1034 = phi i32 [ %i.arc, %bb.nh ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480 ] ; 2 uses
  %.sroa.02.012.i1035 = phi i32 [ %i.ard, %bb.nh ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480 ] ; 3 uses
  %i.aqt = phi i64 [ %i.aqw, %bb.nh ], [ %i.tk, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480 ] ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1, !noalias !15932, !noundef !21 ; 2 uses
  %i.aqw = add nuw nsw i64 %i.aqt, 1              ; 3 uses
  %i.aqx = zext i8 %i.aqv to i32                  ; 2 uses
  %i.aqy = icmp sgt i8 %i.aqv, -1
  br i1 %i.aqy, label %bb.nj, label %bb.nh

._crit_edge.i1037:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480, %bb.nh
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 10832, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1038 unwind label %bb.np

.noexc1038:                                       ; preds = %._crit_edge.i1037
  unreachable

bb.nh:                                            ; preds = %.lr.ph.i1033
  %i.aqz = and i32 %i.aqx, 127
  %i.ara = and i32 %.sroa.02.012.i1035, 31
  %i.arb = shl i32 %i.aqz, %i.ara
  %i.arc = or i32 %i.arb, %.sroa.0.013.i1034
  %i.ard = add i32 %.sroa.02.012.i1035, 7
  %exitcond.not.i1036 = icmp eq i64 %i.aqw, 10832
  br i1 %exitcond.not.i1036, label %._crit_edge.i1037, label %.lr.ph.i1033

bb.ni:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1028
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqp, ptr nonnull align 1 %i.aql, i64 %i.aqn, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1030.thread2480

.body261:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1041
  %lpad.thr_comm.split-lp2489 = landingpad { ptr, i32 }
          cleanup
  br label %.body382

bb.nj:                                            ; preds = %.lr.ph.i1033
  %i.are = and i32 %.sroa.02.012.i1035, 31
  %i.arf = shl i32 %i.aqx, %i.are
  %i.arg = or i32 %i.arf, %.sroa.0.013.i1034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.arh = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.ari = icmp eq ptr %i.arh, null
  br i1 %i.ari, label %bb.nk, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1041, !prof !26

bb.nk:                                            ; preds = %bb.nj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1040 unwind label %bb.np

.noexc1040:                                       ; preds = %bb.nk
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1041: ; preds = %bb.nj
  store i64 %.sroa.01598.0, ptr %i.arh, align 8
  %.sroa.41987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arh, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41987.0..sroa_idx, align 8
  %.sroa.51988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arh, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51988.0..sroa_idx, align 8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 24
  store i64 %i.aqn, ptr %i.arj, align 8
  %.sroa.41990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arh, i64 32
  store ptr %i.aqr, ptr %.sroa.41990.0..sroa_idx, align 8
  %.sroa.51991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arh, i64 40
  store i64 %i.aqn, ptr %.sroa.51991.0..sroa_idx, align 8
  store i64 2, ptr %i.dm, align 8
  store ptr %i.arh, ptr %i.gw, align 8
  store i64 2, ptr %i.gx, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dm)
          to label %bb.nl unwind label %.body261

bb.nl:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1041
  store i32 %i.arg, ptr %i.gy, align 8, !alias.scope !15933, !noalias !15934
  store i32 0, ptr %i.gz, align 4, !alias.scope !15933, !noalias !15934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15935
  %i.ark = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15935 ; 3 uses
  %i.arl = icmp eq ptr %i.ark, null
  br i1 %i.arl, label %bb.nm, label %bb.no, !prof !26

bb.nm:                                            ; preds = %bb.nl
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1044 unwind label %bb.nn

.noexc1044:                                       ; preds = %bb.nm
  unreachable

bb.nn:                                            ; preds = %bb.nm
  %i.arm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dn) #42
  br label %.body382

bb.no:                                            ; preds = %bb.nl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ark, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.eh

bb.np:                                            ; preds = %._crit_edge.i1037, %bb.nk
  %lpad.thr_comm2488 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aqo, label %.thread2309, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqr, i64 noundef %i.aqn, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15936
  br label %.thread2309

bb.nr:                                            ; preds = %.lr.ph.i566
  %i.arn = and i32 %.sroa.02.012.i568, 31
  %i.aro = shl i32 %i.tx, %i.arn
  %i.arp = or i32 %i.aro, %.sroa.0.013.i567
  %i.arq = zext i32 %i.arp to i64                 ; 3 uses
  %i.arr = icmp ugt i64 %i.lw, %i.arq
  br i1 %i.arr, label %bb.ns, label %.invoke12400

bb.ns:                                            ; preds = %bb.nr
  %i.ars = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.arq ; 2 uses
  %i.art = load ptr, ptr %i.ars, align 8, !nonnull !21, !noundef !21
  %i.aru = getelementptr inbounds nuw i8, ptr %i.ars, i64 8
  %i.arv = load i64, ptr %i.aru, align 8, !noundef !21 ; 10 uses
  %.not.i1049 = icmp slt i64 %i.arv, 0
  br i1 %.not.i1049, label %.invoke12398, label %bb.nt, !prof !37

bb.nt:                                            ; preds = %bb.ns
  %i.arw = icmp eq i64 %i.arv, 0                  ; 2 uses
  br i1 %i.arw, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1050

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1050: ; preds = %bb.nt
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15937
  %i.arx = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.arv, i64 noundef range(i64 1, 9) 1) #41, !noalias !15937 ; 3 uses
  %i.ary = icmp eq ptr %i.arx, null
  br i1 %i.ary, label %.invoke12398, label %bb.nu

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499: ; preds = %bb.nt, %bb.nu
  %i.arz = phi ptr [ %i.arx, %bb.nu ], [ inttoptr (i64 1 to ptr), %bb.nt ] ; 3 uses
  %i.asa = icmp ult i64 %i.tt, 10831
  br i1 %i.asa, label %bb.nv, label %._crit_edge.i1061.invoke

bb.nu:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1050
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.arx, ptr nonnull align 1 %i.art, i64 %i.arv, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499

.thread2522:                                      ; preds = %bb.op, %bb.oo
  br i1 %.sroa.070.1.ph, label %.thread2505, label %.body382

.thread2505.loopexit:                             ; preds = %bb.nx
  %lpad.loopexit2644 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2505

.thread2505.loopexit.split-lp:                    ; preds = %._crit_edge.i1061.invoke
  %lpad.loopexit.split-lp2645 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2505

bb.nv:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499
  %i.asb = getelementptr inbounds nuw i8, ptr @10956, i64 %i.tw
  %i.asc = load i8, ptr %i.asb, align 1, !noalias !15938, !noundef !21
  %i.asd = zext i8 %i.asc to i32                  ; 2 uses
  %.not8023 = icmp eq i64 %i.tt, 10830
  br i1 %.not8023, label %._crit_edge.i1061.invoke, label %.lr.ph.i1057.preheader

.lr.ph.i1057.preheader:                           ; preds = %bb.nv
  %i.ase = add nuw nsw i64 %i.tt, 2
  br label %.lr.ph.i1057

.lr.ph.i1057:                                     ; preds = %.lr.ph.i1057.preheader, %bb.nw
  %.sroa.0.013.i1058 = phi i32 [ %i.aso, %bb.nw ], [ 0, %.lr.ph.i1057.preheader ] ; 2 uses
  %.sroa.02.012.i1059 = phi i32 [ %i.asp, %bb.nw ], [ 0, %.lr.ph.i1057.preheader ] ; 3 uses
  %i.asf = phi i64 [ %i.asi, %bb.nw ], [ %i.ase, %.lr.ph.i1057.preheader ] ; 4 uses
  %i.asg = getelementptr inbounds nuw i8, ptr @10956, i64 %i.asf
  %i.ash = load i8, ptr %i.asg, align 1, !noalias !15939, !noundef !21 ; 2 uses
  %i.asi = add nuw nsw i64 %i.asf, 1              ; 4 uses
  %i.asj = zext i8 %i.ash to i32                  ; 2 uses
  %i.ask = icmp sgt i8 %i.ash, -1
  br i1 %i.ask, label %bb.nx, label %bb.nw

._crit_edge.i1061.invoke:                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1052.thread2499, %bb.nv, %bb.nw
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 10832, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1061.cont unwind label %.thread2505.loopexit.split-lp

._crit_edge.i1061.cont:                           ; preds = %._crit_edge.i1061.invoke
  unreachable

bb.nw:                                            ; preds = %.lr.ph.i1057
  %i.asl = and i32 %i.asj, 127
  %i.asm = and i32 %.sroa.02.012.i1059, 31
  %i.asn = shl i32 %i.asl, %i.asm
  %i.aso = or i32 %i.asn, %.sroa.0.013.i1058
  %i.asp = add i32 %.sroa.02.012.i1059, 7
  %exitcond.not.i1060 = icmp eq i64 %i.asi, 10832
  br i1 %exitcond.not.i1060, label %._crit_edge.i1061.invoke, label %.lr.ph.i1057

bb.nx:                                            ; preds = %.lr.ph.i1057
  %i.asq = and i32 %.sroa.02.012.i1059, 31
  %i.asr = shl i32 %i.asj, %i.asq
  %i.ass = or i32 %i.asr, %.sroa.0.013.i1058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0, i32 noundef %i.asd)
          to label %bb.ny unwind label %.thread2505.loopexit

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.arz, i64 noundef %i.arv, i32 noundef %i.asd)
          to label %bb.oa unwind label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.ast = landingpad { ptr, i32 }
          cleanup
  br label %bb.oo

bb.oa:                                            ; preds = %bb.ny
  %i.asu = icmp ult i64 %i.asf, 10831
  br i1 %i.asu, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.asi, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1064 unwind label %.thread2526

.noexc1064:                                       ; preds = %bb.ob
  unreachable

.thread2526:                                      ; preds = %bb.ob, %bb.od
  %i.asv = landingpad { ptr, i32 }
          cleanup
  br label %.thread2516

bb.oc:                                            ; preds = %bb.oa
  %i.asw = getelementptr inbounds nuw i8, ptr @10956, i64 %i.asi
  %i.asx = load i8, ptr %i.asw, align 1, !noalias !15940, !noundef !21 ; 2 uses
  %i.asy = add nuw nsw i64 %i.asf, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  %i.asz = icmp ult i8 %i.asx, 4
  call void @llvm.assume(i1 %i.asz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.ata = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.atb = icmp eq ptr %i.ata, null
  br i1 %i.atb, label %bb.od, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1067, !prof !26

bb.od:                                            ; preds = %bb.oc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1066 unwind label %.thread2526

.noexc1066:                                       ; preds = %bb.od
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1067: ; preds = %bb.oc
  store i64 %.sroa.01598.0, ptr %i.ata, align 8
  %.sroa.41995.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ata, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41995.0..sroa_idx, align 8
  %.sroa.51996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ata, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51996.0..sroa_idx, align 8
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ata, i64 24
  store i64 %i.arv, ptr %i.atc, align 8
  %.sroa.41998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ata, i64 32
  store ptr %i.arz, ptr %.sroa.41998.0..sroa_idx, align 8
  %.sroa.51999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ata, i64 40
  store i64 %i.arv, ptr %.sroa.51999.0..sroa_idx, align 8
  store i64 2, ptr %i.di, align 8
  store ptr %i.ata, ptr %i.gp, align 8
  store i64 2, ptr %i.gq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.atd = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 4 uses
  %i.ate = icmp eq ptr %i.atd, null
  br i1 %i.ate, label %bb.oe, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1069, !prof !26

bb.oe:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1067
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1068 unwind label %bb.om

.noexc1068:                                       ; preds = %bb.oe
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1069: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atd, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false)
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atf, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  store i64 2, ptr %i.dh, align 8
  store ptr %i.atd, ptr %i.gr, align 8
  store i64 2, ptr %i.gs, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !15941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !15942
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.di)
          to label %bb.of unwind label %bb.oh, !noalias !15943

bb.of:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !15942
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dh)
          to label %bb.oi unwind label %bb.og, !noalias !15944

bb.og:                                            ; preds = %bb.of
  %i.atg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #42, !noalias !15942
  br label %.body382

bb.oh:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1069
  %i.ath = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.dh) #42, !noalias !15944
  br label %.body382

bb.oi:                                            ; preds = %bb.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !15945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !15945
  store i32 %i.ass, ptr %i.gu, align 8, !alias.scope !15941, !noalias !15945
  store i8 %i.asx, ptr %i.gv, align 4, !alias.scope !15941, !noalias !15945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !15942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !15942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15946
  %i.ati = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15946 ; 3 uses
  %i.atj = icmp eq ptr %i.ati, null
  br i1 %i.atj, label %bb.oj, label %bb.ol, !prof !26

bb.oj:                                            ; preds = %bb.oi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1072 unwind label %bb.ok

.noexc1072:                                       ; preds = %bb.oj
  unreachable

bb.ok:                                            ; preds = %bb.oj
  %i.atk = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info25SimpleInstrInfo_OpSize_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dj) #42
  br label %.body382

bb.ol:                                            ; preds = %bb.oi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ati, ptr noundef nonnull align 8 dereferenceable(56) %i.dj, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.eh

bb.om:                                            ; preds = %bb.oe
  %i.atl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.di) #42
  br label %.thread2516

.thread2516:                                      ; preds = %bb.om, %.thread2526
  %.sroa.070.22521 = phi i1 [ true, %.thread2526 ], [ false, %bb.om ] ; 2 uses
  %.pn2112520 = phi { ptr, i32 } [ %i.asv, %.thread2526 ], [ %i.atl, %bb.om ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15947)
  %.val.i1074 = load i64, ptr %i.dk, align 8, !alias.scope !15947 ; 2 uses
  %i.atm = icmp eq i64 %.val.i1074, 0
  br i1 %i.atm, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %.thread2516
  %i.atn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.val1.i1075 = load ptr, ptr %i.atn, align 8, !alias.scope !15947, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1075, i64 noundef %.val.i1074, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15947
  br label %bb.oo

bb.oo:                                            ; preds = %bb.nz, %.thread2516, %bb.on
  %.pn211.pn.ph = phi { ptr, i32 } [ %i.ast, %bb.nz ], [ %.pn2112520, %.thread2516 ], [ %.pn2112520, %bb.on ] ; 2 uses
  %.sroa.070.1.ph = phi i1 [ true, %bb.nz ], [ %.sroa.070.22521, %.thread2516 ], [ %.sroa.070.22521, %bb.on ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15948)
  %.val.i1077 = load i64, ptr %i.dl, align 8, !alias.scope !15948 ; 2 uses
  %i.ato = icmp eq i64 %.val.i1077, 0
  br i1 %i.ato, label %.thread2522, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.atp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.val1.i1078 = load ptr, ptr %i.atp, align 8, !alias.scope !15948, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1078, i64 noundef %.val.i1077, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15948
  br label %.thread2522

.thread2505:                                      ; preds = %.thread2505.loopexit, %.thread2505.loopexit.split-lp, %.thread2522
  %.pn211.pn.pn2508 = phi { ptr, i32 } [ %.pn211.pn.ph, %.thread2522 ], [ %lpad.loopexit2644, %.thread2505.loopexit ], [ %lpad.loopexit.split-lp2645, %.thread2505.loopexit.split-lp ] ; 2 uses
  br i1 %i.arw, label %.thread2309, label %bb.oq

bb.oq:                                            ; preds = %.thread2505
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.arz, i64 noundef %i.arv, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15949
  br label %.thread2309

bb.or:                                            ; preds = %.lr.ph.i575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.experimental.noalias.scope.decl(metadata !15950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !15951
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.ou unwind label %bb.os, !noalias !15951

bb.os:                                            ; preds = %bb.or
  %i.atq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atr = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.atr, label %.body382, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15952
  br label %.body382

bb.ou:                                            ; preds = %bb.or
  %i.ats = and i32 %.sroa.02.012.i577, 31
  %i.att = shl i32 %i.uj, %i.ats
  %i.atu = or i32 %i.att, %.sroa.0.013.i576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !15953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !15951
  store i64 %.sroa.01598.0, ptr %i.dg, align 8, !noalias !15953
  store ptr %.sroa.53.0, ptr %.sroa.42212.0..sroa_idx, align 8, !noalias !15953
  store i64 %.sroa.69.0, ptr %.sroa.52213.0..sroa_idx, align 8, !noalias !15953
  store i32 %i.atu, ptr %i.go, align 8, !alias.scope !15950, !noalias !15953
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15954
  %i.atv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15954 ; 3 uses
  %i.atw = icmp eq ptr %i.atv, null
  br i1 %i.atw, label %bb.ov, label %bb.ox, !prof !26

bb.ov:                                            ; preds = %bb.ou
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1089 unwind label %bb.ow

end_hunk_7
begin_hunk_8_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl4read:bb.a
  %i.bbv = add nuw nsw i64 %.sroa.138.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  %i.bbw = icmp ult i8 %i.bbu, 32
  call void @llvm.assume(i1 %i.bbw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.v, align 8
  %i.bbx = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768) acquire, align 8, !noalias !16094
  %i.bby = icmp eq i32 %i.bbx, 0
  br i1 %i.bby, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i, label %bb.uu, !prof !34

bb.uu:                                            ; preds = %bb.ut
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16094
  store ptr %i.v, ptr %i.u, align 8, !noalias !16094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16094
  store ptr %i.u, ptr %i.t, align 8, !noalias !16094
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768), i1 noundef zeroext false, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
          to label %.noexc1268 unwind label %bb.vb

.noexc1268:                                       ; preds = %bb.uu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16094
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i: ; preds = %.noexc1268, %bb.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bbz = zext nneg i8 %i.bbu to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.bbz
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.bcb = load ptr, ptr %i.bca, align 8, !nonnull !21, !noundef !21
  %i.bcc = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.bcd = load i64, ptr %i.bcc, align 8, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !16095)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16096
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.ux unwind label %bb.uv, !noalias !16096

bb.uv:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i
  %i.bce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcf = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bcf, label %.body382, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16097
  br label %.body382

bb.ux:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62226.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !16098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16096
  store i64 %.sroa.01598.0, ptr %i.co, align 8, !noalias !16098
  store ptr %.sroa.53.0, ptr %.sroa.42224.0..sroa_idx, align 8, !noalias !16098
  store i64 %.sroa.69.0, ptr %.sroa.52225.0..sroa_idx, align 8, !noalias !16098
  store ptr %i.bcb, ptr %i.fu, align 8, !alias.scope !16095, !noalias !16098
  store i64 %i.bcd, ptr %i.fv, align 8, !alias.scope !16095, !noalias !16098
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16099
  %i.bcg = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16099 ; 3 uses
  %i.bch = icmp eq ptr %i.bcg, null
  br i1 %i.bch, label %bb.uy, label %bb.va, !prof !26

bb.uy:                                            ; preds = %bb.ux
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc1274 unwind label %bb.uz

.noexc1274:                                       ; preds = %bb.uy
  unreachable

bb.uz:                                            ; preds = %bb.uy
  %i.bci = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info25SimpleInstrInfo_pclmulqdqEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.co) #42
  br label %.body382

bb.va:                                            ; preds = %bb.ux
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bcg, ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.eh

bb.vb:                                            ; preds = %bb.uu
  %i.bcj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bck = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bck, label %.body382, label %bb.vc

bb.vc:                                            ; preds = %bb.vb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16100
  br label %.body382

bb.vd:                                            ; preds = %bb.dn
  %i.bcl = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
  %i.bcm = load i8, ptr %i.bcl, align 1, !noalias !16101, !noundef !21 ; 2 uses
  %i.bcn = add nuw nsw i64 %.sroa.138.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.bco = icmp ult i8 %i.bcm, 32
  call void @llvm.assume(i1 %i.bco)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.r, align 8
  %i.bcp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768) acquire, align 8, !noalias !16102
  %i.bcq = icmp eq i32 %i.bcp, 0
  br i1 %i.bcq, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279, label %bb.ve, !prof !34

bb.ve:                                            ; preds = %bb.vd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16102
  store ptr %i.r, ptr %i.q, align 8, !noalias !16102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16102
  store ptr %i.q, ptr %i.p, align 8, !noalias !16102
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768), i1 noundef zeroext false, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
          to label %.noexc1282 unwind label %bb.vl

.noexc1282:                                       ; preds = %bb.ve
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16102
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279: ; preds = %.noexc1282, %bb.vd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bcr = zext nneg i8 %i.bcm to i64
  %switch.gep12402 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.bcr
  %switch.load12403 = load ptr, ptr %switch.gep12402, align 8 ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %switch.load12403, i64 8
  %i.bct = load ptr, ptr %i.bcs, align 8, !nonnull !21, !noundef !21
  %i.bcu = getelementptr inbounds nuw i8, ptr %switch.load12403, i64 16
  %i.bcv = load i64, ptr %i.bcu, align 8, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !16103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16104
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.vh unwind label %bb.vf, !noalias !16104

bb.vf:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279
  %i.bcw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcx = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bcx, label %.body382, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16105
  br label %.body382

bb.vh:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62230.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !16106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16104
  store i64 %.sroa.01598.0, ptr %i.cn, align 8, !noalias !16106
  store ptr %.sroa.53.0, ptr %.sroa.42228.0..sroa_idx, align 8, !noalias !16106
  store i64 %.sroa.69.0, ptr %.sroa.52229.0..sroa_idx, align 8, !noalias !16106
  store ptr %i.bct, ptr %i.fr, align 8, !alias.scope !16103, !noalias !16106
  store i64 %i.bcv, ptr %i.fs, align 8, !alias.scope !16103, !noalias !16106
  store i32 0, ptr %i.ft, align 8, !alias.scope !16103, !noalias !16106
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16107
  %i.bcy = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16107 ; 3 uses
  %i.bcz = icmp eq ptr %i.bcy, null
  br i1 %i.bcz, label %bb.vi, label %bb.vk, !prof !26

bb.vi:                                            ; preds = %bb.vh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1289 unwind label %bb.vj

.noexc1289:                                       ; preds = %bb.vi
  unreachable

bb.vj:                                            ; preds = %bb.vi
  %i.bda = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info20SimpleInstrInfo_popsEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cn) #42
  br label %.body382

bb.vk:                                            ; preds = %bb.vh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bcy, ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.eh

bb.vl:                                            ; preds = %bb.ve
  %i.bdb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdc = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bdc, label %.body382, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16108
  br label %.body382

bb.vn:                                            ; preds = %bb.do
  %i.bdd = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
  %i.bde = load i8, ptr %i.bdd, align 1, !noalias !16109, !noundef !21 ; 2 uses
  %.not2625 = icmp eq i64 %.sroa.138.2, 10831
  br i1 %.not2625, label %._crit_edge.i1300.invoke, label %.lr.ph.i1296.preheader

.lr.ph.i1296.preheader:                           ; preds = %bb.vn
  %i.bdf = add nuw nsw i64 %.sroa.138.2, 1
  br label %.lr.ph.i1296

.lr.ph.i1296:                                     ; preds = %.lr.ph.i1296.preheader, %bb.vo
  %.sroa.0.013.i1297 = phi i32 [ %i.bdq, %bb.vo ], [ 0, %.lr.ph.i1296.preheader ] ; 2 uses
  %.sroa.02.012.i1298 = phi i32 [ %i.bdr, %bb.vo ], [ 0, %.lr.ph.i1296.preheader ] ; 3 uses
  %i.bdg = phi i64 [ %i.bdj, %bb.vo ], [ %i.bdf, %.lr.ph.i1296.preheader ] ; 2 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr @10956, i64 %i.bdg
  %i.bdi = load i8, ptr %i.bdh, align 1, !noalias !16110, !noundef !21 ; 2 uses
  %i.bdj = add nuw nsw i64 %i.bdg, 1              ; 3 uses
  %i.bdk = zext i8 %i.bdi to i32                  ; 2 uses
  %i.bdl = icmp sgt i8 %i.bdi, -1
  br i1 %i.bdl, label %bb.vp, label %bb.vo

._crit_edge.i1300.invoke:                         ; preds = %bb.dt, %bb.dr, %bb.dg, %bb.dc, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.ba, %bb.ay, %bb.az, %bb.bc, %bb.bj, %bb.bk, %bb.ct, %bb.cu, %bb.cv, %bb.de, %bb.df, %bb.di, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.eb, %bb.at, %bb.vn, %bb.qu, %bb.qe, %bb.qd, %bb.ju, %bb.du, %bb.ds, %bb.vo, %bb.dh, %bb.dd, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.jv, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bb, %bb.au
  %i.bdm = phi i64 [ 10832, %bb.dh ], [ 10832, %bb.ds ], [ 10832, %bb.au ], [ 10832, %bb.bw ], [ 10832, %bb.dd ], [ 10832, %bb.vo ], [ 10832, %bb.bb ], [ 10832, %bb.jv ], [ 10832, %bb.ca ], [ 10832, %bb.cc ], [ 10832, %bb.ce ], [ 10832, %bb.cg ], [ 10832, %bb.cs ], [ 10832, %bb.du ], [ 10832, %bb.ci ], [ 10832, %bb.cq ], [ 10832, %bb.bs ], [ 10832, %bb.ck ], [ 10832, %bb.cm ], [ 10832, %bb.co ], [ 10832, %bb.bu ], [ 10832, %bb.by ], [ %.sroa.138.2, %bb.bk ], [ %.sroa.138.2, %bb.ct ], [ %.sroa.138.2, %bb.cu ], [ %.sroa.138.2, %bb.cv ], [ %.sroa.138.2, %bb.de ], [ %.sroa.138.2, %bb.df ], [ %.sroa.138.2, %bb.di ], [ %.sroa.138.2, %bb.dm ], [ %.sroa.138.2, %bb.dn ], [ %.sroa.138.2, %bb.do ], [ %.sroa.138.2, %bb.dp ], [ %.sroa.138.2, %bb.dq ], [ %.sroa.138.2, %bb.eb ], [ 10832, %bb.vn ], [ 10832, %bb.ju ], [ %.sroa.138.2, %bb.at ], [ %.sroa.138.2, %bb.ay ], [ %.sroa.138.2, %bb.az ], [ %.sroa.138.2, %bb.ba ], [ %.sroa.138.2, %bb.bc ], [ %.sroa.138.2, %bb.bj ], [ %.sroa.138.2, %bb.br ], [ %.sroa.138.2, %bb.bt ], [ %.sroa.138.2, %bb.bv ], [ %.sroa.138.2, %bb.bx ], [ %.sroa.138.2, %bb.bz ], [ %.sroa.138.2, %bb.cb ], [ %.sroa.138.2, %bb.cd ], [ %.sroa.138.2, %bb.cf ], [ %.sroa.138.2, %bb.ch ], [ %.sroa.138.2, %bb.cj ], [ %.sroa.138.2, %bb.cl ], [ %.sroa.138.2, %bb.cn ], [ %.sroa.138.2, %bb.cp ], [ %.sroa.138.2, %bb.cr ], [ %.sroa.138.2, %bb.dc ], [ %.sroa.138.2, %bb.dg ], [ %.sroa.138.2, %bb.dr ], [ %.sroa.138.2, %bb.dt ], [ %i.avg, %bb.qd ], [ %i.avj, %bb.qe ], [ 10832, %bb.qu ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdm, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1300.cont unwind label %.body.thread

._crit_edge.i1300.cont:                           ; preds = %._crit_edge.i1300.invoke
  unreachable

bb.vo:                                            ; preds = %.lr.ph.i1296
  %i.bdn = and i32 %i.bdk, 127
  %i.bdo = and i32 %.sroa.02.012.i1298, 31
  %i.bdp = shl i32 %i.bdn, %i.bdo
  %i.bdq = or i32 %i.bdp, %.sroa.0.013.i1297
  %i.bdr = add i32 %.sroa.02.012.i1298, 7
  %exitcond.not.i1299 = icmp eq i64 %i.bdj, 10832
  br i1 %exitcond.not.i1299, label %._crit_edge.i1300.invoke, label %.lr.ph.i1296

bb.vp:                                            ; preds = %.lr.ph.i1296
  %i.bds = and i32 %.sroa.02.012.i1298, 31
  %i.bdt = shl i32 %i.bdk, %i.bds
  %i.bdu = or i32 %i.bdt, %.sroa.0.013.i1297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.bdv = icmp ult i8 %i.bde, 32
  call void @llvm.assume(i1 %i.bdv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.n, align 8
  %i.bdw = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768) acquire, align 8, !noalias !16111
  %i.bdx = icmp eq i32 %i.bdw, 0
  br i1 %i.bdx, label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303, label %bb.vq, !prof !34

bb.vq:                                            ; preds = %bb.vp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16111
  store ptr %i.n, ptr %i.m, align 8, !noalias !16111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16111
  store ptr %i.m, ptr %i.l, align 8, !noalias !16111
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB6_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 768), i1 noundef zeroext false, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11256)
          to label %.noexc1306 unwind label %bb.vx

.noexc1306:                                       ; preds = %bb.vq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16111
  br label %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303

_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303: ; preds = %.noexc1306, %bb.vp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bdy = zext nneg i8 %i.bde to i64
  %switch.gep12404 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read.716, i64 %i.bdy
  %switch.load12405 = load ptr, ptr %switch.gep12404, align 8 ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %switch.load12405, i64 8
  %i.bea = load ptr, ptr %i.bdz, align 8, !nonnull !21, !noundef !21
  %i.beb = getelementptr inbounds nuw i8, ptr %switch.load12405, i64 16
  %i.bec = load i64, ptr %i.beb, align 8, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !16112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16113
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.vt unwind label %bb.vr, !noalias !16113

bb.vr:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303
  %i.bed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bee = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bee, label %.body382, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16114
  br label %.body382

bb.vt:                                            ; preds = %_RNvXNtNtCsf8MNnN4IDbl_8iced_x869formatter10pseudo_opsNtB2_10PSEUDO_OPSNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref.exit.i1303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62234.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !16115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16113
  store i64 %.sroa.01598.0, ptr %i.cm, align 8, !noalias !16115
  store ptr %.sroa.53.0, ptr %.sroa.42232.0..sroa_idx, align 8, !noalias !16115
  store i64 %.sroa.69.0, ptr %.sroa.52233.0..sroa_idx, align 8, !noalias !16115
  store ptr %i.bea, ptr %i.fo, align 8, !alias.scope !16112, !noalias !16115
  store i64 %i.bec, ptr %i.fp, align 8, !alias.scope !16112, !noalias !16115
  store i32 %i.bdu, ptr %i.fq, align 8, !alias.scope !16112, !noalias !16115
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16116
  %i.bef = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16116 ; 3 uses
  %i.beg = icmp eq ptr %i.bef, null
  br i1 %i.beg, label %bb.vu, label %bb.vw, !prof !26

bb.vu:                                            ; preds = %bb.vt
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1313 unwind label %bb.vv

.noexc1313:                                       ; preds = %bb.vu
  unreachable

bb.vv:                                            ; preds = %bb.vu
  %i.beh = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info20SimpleInstrInfo_popsEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cm) #42
  br label %.body382

bb.vw:                                            ; preds = %bb.vt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bef, ptr noundef nonnull align 8 dereferenceable(72) %i.cm, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.eh

bb.vx:                                            ; preds = %bb.vq
  %i.bei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bej = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bej, label %.body382, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16117
  br label %.body382

bb.vz:                                            ; preds = %bb.dp
  %i.bek = getelementptr inbounds nuw i8, ptr @10956, i64 %.sroa.138.2
  %i.bel = load i8, ptr %i.bek, align 1, !noalias !16118, !noundef !21
  %i.bem = add nuw nsw i64 %.sroa.138.2, 1
  %i.ben = zext i8 %i.bel to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0, i32 noundef %i.ben)
          to label %bb.wa unwind label %.loopexit.thread

bb.wa:                                            ; preds = %bb.vz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.experimental.noalias.scope.decl(metadata !16119)
  call void @llvm.experimental.noalias.scope.decl(metadata !16120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16121
  call void @llvm.experimental.noalias.scope.decl(metadata !16122)
  call void @llvm.experimental.noalias.scope.decl(metadata !16123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16124
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.53.0, i64 noundef %.sroa.69.0)
          to label %bb.wd unwind label %bb.wb, !noalias !16124

bb.wb:                                            ; preds = %bb.wa
  %i.beo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bep = icmp eq i64 %.sroa.01598.0, 0
  br i1 %i.bep, label %.thread.i1319, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0, i64 noundef %.sroa.01598.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16125
  br label %.thread.i1319

bb.wd:                                            ; preds = %bb.wa
  store i64 %.sroa.01598.0, ptr %i.j, align 8, !alias.scope !16126, !noalias !16127
  store ptr %.sroa.53.0, ptr %.sroa.52077.0..sroa_idx, align 8, !alias.scope !16126, !noalias !16127
  store i64 %.sroa.69.0, ptr %.sroa.72078.0..sroa_idx, align 8, !alias.scope !16126, !noalias !16127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !16128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16124
  %.sroa.0.0.copyload.i1324 = load i64, ptr %i.cc, align 8, !alias.scope !16120, !noalias !16129 ; 3 uses
  %.sroa.5.0.copyload.i1326 = load ptr, ptr %.sroa.5.0..sroa_idx.i1325, align 8, !alias.scope !16120, !noalias !16129, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.6.0.copyload.i1328 = load i64, ptr %.sroa.6.0..sroa_idx.i1327, align 8, !alias.scope !16120, !noalias !16129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16130
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i1326, i64 noundef %.sroa.6.0.copyload.i1328)
          to label %bb.wh unwind label %bb.we, !noalias !16130

bb.we:                                            ; preds = %bb.wd
  %i.beq = landingpad { ptr, i32 }
          cleanup
  %i.ber = icmp eq i64 %.sroa.0.0.copyload.i1324, 0
  br i1 %i.ber, label %.body5.i1329, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i1326, i64 noundef %.sroa.0.0.copyload.i1324, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16131
  br label %.body5.i1329

.body5.i1329:                                     ; preds = %bb.wf, %bb.we
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j) #42, !noalias !16121
  br label %.body382

.thread.i1319:                                    ; preds = %bb.wc, %bb.wb
  call void @llvm.experimental.noalias.scope.decl(metadata !16132)
  %.val.i.i1320 = load i64, ptr %i.cc, align 8, !alias.scope !16133, !noalias !16129 ; 2 uses
  %i.bes = icmp eq i64 %.val.i.i1320, 0
  br i1 %i.bes, label %.body382, label %bb.wg

bb.wg:                                            ; preds = %.thread.i1319
  %.val1.i.i1321 = load ptr, ptr %.sroa.5.0..sroa_idx.i1325, align 8, !alias.scope !16133, !noalias !16129, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1321, i64 noundef %.val.i.i1320, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !16134
  br label %.body382

bb.wh:                                            ; preds = %bb.wd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i1330, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !16135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cb, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !16135
  store i64 %.sroa.0.0.copyload.i1324, ptr %i.fn, align 8, !alias.scope !16119, !noalias !16135
  store ptr %.sroa.5.0.copyload.i1326, ptr %.sroa.4.0..sroa_idx.i1331, align 8, !alias.scope !16119, !noalias !16135
  store i64 %.sroa.6.0.copyload.i1328, ptr %.sroa.514.0..sroa_idx.i1332, align 8, !alias.scope !16119, !noalias !16135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16121
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16136
  %i.bet = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !16136 ; 3 uses
  %i.beu = icmp eq ptr %i.bet, null
  br i1 %i.beu, label %bb.wi, label %bb.wk, !prof !26

bb.wi:                                            ; preds = %bb.wh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #46
          to label %.noexc1336 unwind label %bb.wj
end_hunk_8
begin_hunk_9_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm7fmt_tbl4read:bb.a
  %.sroa.42403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.52404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.62405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.il = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.im = getelementptr inbounds nuw i8, ptr %i.bn, i64 52
  %.sroa.42367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.52368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %.sroa.62369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.sroa.42399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.52400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %.sroa.62401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.in = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %.sroa.42363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.52364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.sroa.62365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %.sroa.42395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.52396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.62397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %.sroa.42359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.52360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.sroa.62361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  br label %bb.l

bb.e:                                             ; preds = %bb.yq
  %.sroa.0.0.copyload = load i64, ptr %i.ed, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx15838 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx15838, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 11 uses
  %i.iq = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.iq, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ir = shl nuw i64 %.sroa.0.0.copyload, 4      ; 2 uses
  %i.is = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.is, label %.thread2520, label %bb.g

.thread2520:                                      ; preds = %bb.f
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.ir, i64 noundef range(i64 1, 9) 8) #41, !noalias !16981
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.it = shl nuw i64 %.sroa.7.0.copyload, 4      ; 2 uses
  %i.iu = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.ir, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 1, 0) %i.it) #41, !noalias !16981 ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.i, label %._crit_edge.i

bb.h:                                             ; preds = %bb.i
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2s_4SyncEL_EEEB1z_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ed) #42
          to label %.body385 unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.it) #46
          to label %bb.j unwind label %bb.h, !noalias !16982

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !16982
  unreachable

bb.l:                                             ; preds = %.preheader, %bb.yq
  %.sroa.0.06166 = phi i64 [ -1, %.preheader ], [ %.sroa.0.1, %bb.yq ] ; 4 uses
  %.sroa.089.06165 = phi i64 [ 0, %.preheader ], [ %i.iy, %bb.yq ] ; 2 uses
  %.sroa.166.06164 = phi i64 [ 0, %.preheader ], [ %spec.select, %bb.yq ] ; 5 uses
  %i.iy = add nuw nsw i64 %.sroa.089.06165, 1     ; 2 uses
  %i.iz = icmp ult i64 %.sroa.166.06164, 11840
  br i1 %i.iz, label %bb.v, label %._crit_edge.i401.invoke

.body385:                                         ; preds = %bb.ew, %bb.fh, %bb.fl, %bb.fs, %bb.fw, %bb.gd, %bb.gk, %bb.gr, %bb.hb, %bb.hf, %bb.hj, %bb.hq, %bb.hz, %bb.ig, %bb.in, %bb.iu, %bb.iy, %bb.jh, %bb.jo, %bb.jv, %bb.jz, %bb.kg, %bb.kr, %bb.oa, %bb.oj, %bb.os, %bb.pa, %bb.pi, %bb.pn, %bb.py, %bb.qt, %bb.re, %bb.rr, %bb.so, %bb.tb, %bb.tq, %bb.up, %bb.vh, %bb.vp, %bb.vw, %bb.wd, %bb.wm, %bb.wt, %bb.xb, %bb.xj, %bb.xt, %bb.yc, %bb.yg, %bb.yk, %bb.yo, %.body5.i, %.thread.i1064, %bb.nx, %.body9.i1026, %bb.nb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012, %bb.ne, %bb.ni, %.body9.i, %bb.lk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i, %bb.ln, %bb.lq, %bb.er, %bb.es, %bb.eo, %bb.ep, %bb.el, %bb.em, %bb.ck, %bb.cl, %bb.ce, %bb.cf, %bb.br, %bb.bs, %bb.bl, %bb.bm, %bb.bo, %bb.bb, %bb.bc, %bb.aw, %bb.ax, %bb.ar, %bb.as, %bb.xw, %bb.xv, %bb.xq, %bb.xp, %bb.xm, %bb.xl, %bb.xg, %bb.xf, %.body347, %.body304, %.body306, %.body313, %.body316, %.body230, %.body232, %bb.yr, %.thread2560, %bb.xz, %bb.xy, %bb.wy, %bb.wx, %bb.wq, %bb.wp, %bb.wj, %bb.wi, %bb.wa, %bb.vz, %bb.vt, %bb.vs, %bb.pf, %bb.pe, %bb.ox, %bb.ow, %bb.op, %bb.oo, %bb.og, %bb.of, %.body.i, %bb.kl, %bb.kk, %bb.kd, %bb.kc, %bb.js, %bb.jr, %bb.jl, %bb.jk, %bb.je, %bb.jd, %bb.ir, %bb.iq, %bb.ik, %bb.ij, %bb.id, %bb.ic, %bb.hw, %bb.hv, %bb.hn, %bb.hm, %bb.gy, %bb.gx, %bb.go, %bb.gn, %bb.gh, %bb.gg, %bb.ga, %bb.fz, %bb.fp, %bb.fo, %bb.fe, %bb.fd, %bb.fa, %bb.et, %bb.am, %bb.al, %bb.q, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i387, %bb.h, %bb.n
  %.pn220 = phi { ptr, i32 } [ %i.jh, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i387 ], [ %i.bqg, %bb.yo ], [ %lpad.thr_comm.split-lp, %bb.et ], [ %i.iw, %bb.h ], [ %i.jd, %bb.n ], [ %i.jh, %bb.q ], [ %i.mj, %bb.al ], [ %i.mj, %bb.am ], [ %.pn2182563, %bb.yr ], [ %i.adc, %bb.fe ], [ %i.bpm, %bb.xt ], [ %i.adn, %bb.fp ], [ %i.asc, %bb.pi ], [ %i.ahb, %bb.hw ], [ %i.age, %bb.hn ], [ %i.aqu, %bb.op ], [ %i.apx, %bb.og ], [ %i.aeo, %bb.go ], [ %i.ahj, %bb.id ], [ %i.akt, %bb.kk ], [ %i.ake, %bb.kd ], [ %i.aga, %bb.hf ], [ %i.aeg, %bb.gh ], [ %i.bpt, %bb.xz ], [ %i.bou, %bb.xj ], [ %i.bpx, %bb.yc ], [ %i.bqa, %bb.yg ], [ %i.ajk, %bb.jl ], [ %i.aju, %bb.js ], [ %i.ady, %bb.ga ], [ %i.adj, %bb.fh ], [ %i.adu, %bb.fs ], [ %i.aka, %bb.jv ], [ %i.axc, %bb.re ], [ %i.ask, %bb.pn ], [ %i.blw, %bb.vt ], [ %i.aiz, %bb.je ], [ %i.afq, %bb.gy ], [ %i.ahr, %bb.ik ], [ %i.ahz, %bb.ir ], [ %i.arj, %bb.ox ], [ %i.bdj, %bb.tb ], [ %i.bnb, %bb.wj ], [ %i.bqd, %bb.yk ], [ %i.aig, %bb.iu ], [ %i.bnn, %bb.wq ], [ %i.ary, %bb.pf ], [ %i.boe, %bb.xb ], [ %i.boa, %bb.wy ], [ %i.afx, %bb.hb ], [ %i.bme, %bb.wa ], [ %i.bpn, %bb.xw ], [ %i.ms, %bb.ar ], [ %i.ng, %bb.aw ], [ %i.nu, %bb.bb ], [ %i.pl, %bb.bo ], [ %i.pm, %bb.br ], [ %i.rw, %bb.ce ], [ %i.sb, %bb.ck ], [ %i.aco, %bb.el ], [ %i.acq, %bb.eo ], [ %i.acw, %bb.ew ], [ %i.ada, %bb.fa ], [ %i.adm, %bb.fl ], [ %i.adx, %bb.fw ], [ %i.aef, %bb.gd ], [ %i.aen, %bb.gk ], [ %i.aev, %bb.gr ], [ %i.agd, %bb.hj ], [ %i.agl, %bb.hq ], [ %i.ahi, %bb.hz ], [ %i.ahq, %bb.ig ], [ %i.ahy, %bb.in ], [ %i.aij, %bb.iy ], [ %i.ajg, %bb.jh ], [ %i.ajq, %bb.jo ], [ %i.akd, %bb.jz ], [ %i.akl, %bb.kg ], [ %i.alb, %bb.kr ], [ %i.aqe, %bb.oj ], [ %i.arb, %bb.os ], [ %i.arp, %bb.pa ], [ %i.blv, %bb.vp ], [ %i.bmd, %bb.vw ], [ %i.bml, %bb.wd ], [ %i.bni, %bb.wm ], [ %i.bnr, %bb.wt ], [ %i.adc, %bb.fd ], [ %i.adn, %bb.fo ], [ %i.ady, %bb.fz ], [ %i.aeg, %bb.gg ], [ %i.aeo, %bb.gn ], [ %i.afq, %bb.gx ], [ %i.age, %bb.hm ], [ %i.ahb, %bb.hv ], [ %i.ahj, %bb.ic ], [ %i.ahr, %bb.ij ], [ %i.ahz, %bb.iq ], [ %i.aiz, %bb.jd ], [ %i.ajk, %bb.jk ], [ %i.aju, %bb.jr ], [ %i.ake, %bb.kc ], [ %eh.lpad-body.i, %.body.i ], [ %i.akt, %bb.kl ], [ %i.apx, %bb.of ], [ %i.aqu, %bb.oo ], [ %i.arj, %bb.ow ], [ %i.ary, %bb.pe ], [ %i.blw, %bb.vs ], [ %i.bme, %bb.vz ], [ %i.bnb, %bb.wi ], [ %i.bnn, %bb.wp ], [ %i.boa, %bb.wx ], [ %i.bpt, %bb.xy ], [ %.pn2182563, %.thread2560 ], [ %i.bov, %bb.xm ], [ %i.bpi, %bb.xq ], [ %i.blj, %bb.vh ], [ %i.boq, %bb.xg ], [ %lpad.thr_comm.split-lp3042, %.body347 ], [ %i.bfv, %bb.tq ], [ %lpad.thr_comm.split-lp2988, %.body306 ], [ %i.ayz, %bb.rr ], [ %lpad.thr_comm.split-lp2934, %.body316 ], [ %i.atu, %bb.py ], [ %lpad.thr_comm.split-lp2880, %.body232 ], [ %.pn.i1027, %.body9.i1026 ], [ %i.acs, %bb.er ], [ %.pn.i, %.body9.i ], [ %lpad.thr_comm.split-lp2915, %.body230 ], [ %i.awf, %bb.qt ], [ %lpad.thr_comm.split-lp2969, %.body313 ], [ %i.bbx, %bb.so ], [ %lpad.thr_comm.split-lp3023, %.body304 ], [ %i.bji, %bb.up ], [ %i.boq, %bb.xf ], [ %i.bov, %bb.xl ], [ %i.bpi, %bb.xp ], [ %i.bpn, %bb.xv ], [ %i.ms, %bb.as ], [ %i.ng, %bb.ax ], [ %i.nu, %bb.bc ], [ %i.ph, %bb.bl ], [ %i.ph, %bb.bm ], [ %i.pm, %bb.bs ], [ %i.rw, %bb.cf ], [ %i.sb, %bb.cl ], [ %i.aco, %bb.em ], [ %i.acq, %bb.ep ], [ %i.acs, %bb.es ], [ %i.alu, %bb.lq ], [ %.pn.pn.pn59.i, %bb.ln ], [ %.pn.pn.pn59.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i ], [ %.pn.pn.pn59.i, %bb.lk ], [ %i.apu, %bb.oa ], [ %i.aot, %bb.ni ], [ %.pn.pn.pn59.i1002, %bb.ne ], [ %.pn.pn.pn59.i1002, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012 ], [ %.pn.pn.pn59.i1002, %bb.nb ], [ %i.apn, %.thread.i1064 ], [ %i.apn, %bb.nx ], [ %i.app, %.body5.i ] ; 2 uses
  %.sroa.088.2 = phi i1 [ false, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i387 ], [ true, %bb.yo ], [ true, %bb.et ], [ false, %bb.h ], [ %i.jc, %bb.n ], [ false, %bb.q ], [ true, %bb.al ], [ true, %bb.am ], [ true, %bb.yr ], [ true, %bb.fe ], [ true, %bb.xt ], [ true, %bb.fp ], [ true, %bb.pi ], [ true, %bb.hw ], [ true, %bb.hn ], [ true, %bb.op ], [ true, %bb.og ], [ true, %bb.go ], [ true, %bb.id ], [ true, %bb.kk ], [ true, %bb.kd ], [ true, %bb.hf ], [ true, %bb.gh ], [ true, %bb.xz ], [ true, %bb.xj ], [ true, %bb.yc ], [ true, %bb.yg ], [ true, %bb.jl ], [ true, %bb.js ], [ true, %bb.ga ], [ true, %bb.fh ], [ true, %bb.fs ], [ true, %bb.jv ], [ true, %bb.re ], [ true, %bb.pn ], [ true, %bb.vt ], [ true, %bb.je ], [ true, %bb.gy ], [ true, %bb.ik ], [ true, %bb.ir ], [ true, %bb.ox ], [ true, %bb.tb ], [ true, %bb.wj ], [ true, %bb.yk ], [ true, %bb.iu ], [ true, %bb.wq ], [ true, %bb.pf ], [ true, %bb.xb ], [ true, %bb.wy ], [ true, %bb.hb ], [ true, %bb.wa ], [ true, %bb.xw ], [ true, %bb.ar ], [ true, %bb.aw ], [ true, %bb.bb ], [ true, %bb.bo ], [ true, %bb.br ], [ true, %bb.ce ], [ true, %bb.ck ], [ true, %bb.el ], [ true, %bb.eo ], [ true, %bb.ew ], [ true, %bb.fa ], [ true, %bb.fl ], [ true, %bb.fw ], [ true, %bb.gd ], [ true, %bb.gk ], [ true, %bb.gr ], [ true, %bb.hj ], [ true, %bb.hq ], [ true, %bb.hz ], [ true, %bb.ig ], [ true, %bb.in ], [ true, %bb.iy ], [ true, %bb.jh ], [ true, %bb.jo ], [ true, %bb.jz ], [ true, %bb.kg ], [ true, %bb.kr ], [ true, %bb.oj ], [ true, %bb.os ], [ true, %bb.pa ], [ true, %bb.vp ], [ true, %bb.vw ], [ true, %bb.wd ], [ true, %bb.wm ], [ true, %bb.wt ], [ true, %bb.fd ], [ true, %bb.fo ], [ true, %bb.fz ], [ true, %bb.gg ], [ true, %bb.gn ], [ true, %bb.gx ], [ true, %bb.hm ], [ true, %bb.hv ], [ true, %bb.ic ], [ true, %bb.ij ], [ true, %bb.iq ], [ true, %bb.jd ], [ true, %bb.jk ], [ true, %bb.jr ], [ true, %bb.kc ], [ true, %.body.i ], [ true, %bb.kl ], [ true, %bb.of ], [ true, %bb.oo ], [ true, %bb.ow ], [ true, %bb.pe ], [ true, %bb.vs ], [ true, %bb.vz ], [ true, %bb.wi ], [ true, %bb.wp ], [ true, %bb.wx ], [ true, %bb.xy ], [ true, %.thread2560 ], [ true, %bb.xm ], [ true, %bb.xq ], [ true, %bb.vh ], [ true, %bb.xg ], [ true, %.body347 ], [ true, %bb.tq ], [ true, %.body306 ], [ true, %bb.rr ], [ true, %.body316 ], [ true, %bb.py ], [ true, %.body232 ], [ true, %.body9.i1026 ], [ true, %bb.er ], [ true, %.body9.i ], [ true, %.body230 ], [ true, %bb.qt ], [ true, %.body313 ], [ true, %bb.so ], [ true, %.body304 ], [ true, %bb.up ], [ true, %bb.xf ], [ true, %bb.xl ], [ true, %bb.xp ], [ true, %bb.xv ], [ true, %bb.as ], [ true, %bb.ax ], [ true, %bb.bc ], [ true, %bb.bl ], [ true, %bb.bm ], [ true, %bb.bs ], [ true, %bb.cf ], [ true, %bb.cl ], [ true, %bb.em ], [ true, %bb.ep ], [ true, %bb.es ], [ true, %bb.lq ], [ true, %bb.ln ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i ], [ true, %bb.lk ], [ true, %bb.oa ], [ true, %bb.ni ], [ true, %bb.ne ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012 ], [ true, %bb.nb ], [ true, %.thread.i1064 ], [ true, %bb.nx ], [ true, %.body5.i ]
  %.val380 = load i64, ptr %i.ec, align 8         ; 2 uses
  %i.ja = icmp eq i64 %.val380, 0
  br i1 %i.ja, label %bb.c, label %bb.m

bb.m:                                             ; preds = %.body385
  %.val381 = load ptr, ptr %i.ek, align 8, !nonnull !21, !noundef !21
  %i.jb = shl nuw i64 %.val380, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val381, i64 noundef %i.jb, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %bb.c

bb.n:                                             ; preds = %.invoke11900, %.invoke, %._crit_edge.i401.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread
  %i.jc = phi i1 [ true, %._crit_edge.i401.invoke ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread ], [ true, %.invoke ], [ true, %.invoke11900 ]
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body385

._crit_edge.i:                                    ; preds = %bb.e, %bb.g
  %.sroa.410.0.copyload.i = phi ptr [ %i.iu, %bb.g ], [ %.sroa.5.0.copyload, %bb.e ] ; 3 uses
  %i.je = icmp ult i64 %.sroa.7.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.je)
  %i.jf = icmp eq i64 %.sroa.7.0.copyload, 4936
  br i1 %i.jf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %.not = icmp eq ptr %.sroa.410.0.copyload.i, null
  %i.jg = inttoptr i64 %.sroa.7.0.copyload to ptr
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread2520
  %.sroa.02291.02526 = phi ptr [ inttoptr (i64 8 to ptr), %.thread2520 ], [ %.sroa.410.0.copyload.i, %bb.o ] ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2d_4SyncEL_EEB1k_(ptr noalias nofree noundef nonnull align 8 %.sroa.02291.02526, i64 noundef %.sroa.7.0.copyload)
          to label %bb.r unwind label %bb.q, !noalias !16983

bb.q:                                             ; preds = %bb.p
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.ji, label %.body385, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i387

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i387: ; preds = %bb.q
  %i.jj = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02291.02526, i64 noundef %i.jj, i64 noundef 8) #41, !noalias !16983
  br label %.body385

bb.r:                                             ; preds = %bb.p
  %i.jk = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.jk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.r
  %i.jl = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02291.02526, i64 noundef %i.jl, i64 noundef 8) #41, !noalias !16983
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit: ; preds = %._crit_edge.i, %bb.o
  %.sroa.068.02519 = phi ptr [ %.sroa.410.0.copyload.i, %._crit_edge.i ], [ %i.jg, %bb.o ] ; 2 uses
  %.not194 = icmp eq ptr %.sroa.068.02519, null
  br i1 %.not194, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread, label %bb.s, !prof !33

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit
  %.val = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.jm = icmp eq i64 %.val, 0
  br i1 %i.jm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit390, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val379 = load ptr, ptr %i.ek, align 8, !nonnull !21, !noundef !21
  %i.jn = shl nuw i64 %.val, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val379, i64 noundef %i.jn, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit390

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread: ; preds = %bb.r, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10990) #46
          to label %bb.u unwind label %bb.n

bb.u:                                             ; preds = %bb.ue, %bb.ud, %bb.sf, %bb.se, %bb.qm, %bb.ql, %bb.mo, %bb.mn, %bb.mh, %bb.mg, %bb.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info9InstrInfoNtNtB4_6marker4SendNtB2D_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit390: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  ret ptr %.sroa.068.02519

bb.v:                                             ; preds = %bb.l
  %i.jo = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.06164
  %i.jp = load i8, ptr %i.jo, align 1, !noalias !16984, !noundef !21 ; 2 uses
  %i.jq = add nuw nsw i64 %.sroa.166.06164, 1     ; 2 uses
  %i.jr = and i8 %i.jp, 127                       ; 2 uses
  %i.js = icmp eq i8 %i.jr, 0
  br i1 %i.js, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.y
  %.sroa.166.1 = phi i64 [ %i.jz, %bb.y ], [ %i.jq, %bb.v ] ; 3 uses
  %.sroa.02.0 = phi i64 [ %i.jq, %bb.y ], [ -1, %bb.v ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.06166, %bb.y ], [ %.sroa.166.06164, %bb.v ]
  %i.jt = phi i8 [ %i.ka, %bb.y ], [ %i.jr, %bb.v ]
  %i.ju = icmp sgt i8 %i.jp, -1
  %i.jv = icmp samesign ult i64 %.sroa.166.1, 11840 ; 2 uses
  br i1 %i.ju, label %bb.z, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.jw = icmp ult i64 %.sroa.0.06166, 11840
  br i1 %i.jw, label %bb.y, label %._crit_edge.i401.invoke

bb.y:                                             ; preds = %bb.x
  %i.jx = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.0.06166
  %i.jy = load i8, ptr %i.jx, align 1, !noalias !16985, !noundef !21
  %i.jz = add nuw nsw i64 %.sroa.0.06166, 1
  %i.ka = and i8 %i.jy, 127                       ; 2 uses
  %i.kb = icmp samesign ult i8 %i.ka, 53
  call void @llvm.assume(i1 %i.kb)
  br label %bb.w

bb.z:                                             ; preds = %bb.w
  br i1 %i.jv, label %.lr.ph.i, label %._crit_edge.i401.invoke

.lr.ph.i:                                         ; preds = %bb.z, %bb.aa
  %.sroa.0.013.i = phi i32 [ %i.kl, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.sroa.02.012.i = phi i32 [ %i.km, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.kc = phi i64 [ %i.kf, %bb.aa ], [ %.sroa.166.1, %bb.z ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr @11046, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !noalias !16986, !noundef !21 ; 2 uses
  %i.kf = add nuw nsw i64 %i.kc, 1                ; 4 uses
  %i.kg = zext i8 %i.ke to i32                    ; 2 uses
  %i.kh = icmp sgt i8 %i.ke, -1
  br i1 %i.kh, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.ki = and i32 %i.kg, 127
  %i.kj = and i32 %.sroa.02.012.i, 31
  %i.kk = shl i32 %i.ki, %i.kj
  %i.kl = or i32 %i.kk, %.sroa.0.013.i
  %i.km = add nuw nsw i32 %.sroa.02.012.i, 7
  %exitcond.not.i = icmp eq i64 %i.kf, 11840
  br i1 %exitcond.not.i, label %._crit_edge.i401.invoke, label %.lr.ph.i

bb.ab:                                            ; preds = %bb.w
  br i1 %i.jv, label %.lr.ph.i397, label %._crit_edge.i401.invoke

.lr.ph.i397:                                      ; preds = %bb.ab, %bb.ac
  %.sroa.0.013.i398 = phi i32 [ %i.kx, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.02.012.i399 = phi i32 [ %i.ky, %bb.ac ], [ 0, %bb.ab ] ; 3 uses
  %i.kn = phi i64 [ %i.kq, %bb.ac ], [ %.sroa.166.1, %bb.ab ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr @11046, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !noalias !16987, !noundef !21 ; 2 uses
  %i.kq = add nuw nsw i64 %i.kn, 1                ; 3 uses
  %i.kr = zext i8 %i.kp to i32                    ; 2 uses
  %i.ks = icmp sgt i8 %i.kp, -1
  br i1 %i.ks, label %bb.ah, label %bb.ac

._crit_edge.i401.invoke:                          ; preds = %bb.l, %bb.ab, %bb.z, %bb.x, %bb.ac, %bb.aa
  %i.kt = phi i64 [ 11840, %bb.ac ], [ 11840, %bb.aa ], [ -1, %bb.x ], [ 11840, %bb.z ], [ 11840, %bb.ab ], [ %.sroa.166.06164, %bb.l ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.kt, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i401.cont unwind label %bb.n

._crit_edge.i401.cont:                            ; preds = %._crit_edge.i401.invoke
  unreachable

bb.ac:                                            ; preds = %.lr.ph.i397
  %i.ku = and i32 %i.kr, 127
  %i.kv = and i32 %.sroa.02.012.i399, 31
  %i.kw = shl i32 %i.ku, %i.kv
  %i.kx = or i32 %i.kw, %.sroa.0.013.i398
  %i.ky = add nuw nsw i32 %.sroa.02.012.i399, 7
  %exitcond.not.i400 = icmp eq i64 %i.kq, 11840
  br i1 %exitcond.not.i400, label %._crit_edge.i401.invoke, label %.lr.ph.i397

bb.ad:                                            ; preds = %.lr.ph.i
  %i.kz = and i32 %.sroa.02.012.i, 31
  %i.la = shl i32 %i.kg, %i.kz
  %i.lb = or i32 %i.la, %.sroa.0.013.i
  %i.lc = zext i32 %i.lb to i64                   ; 3 uses
  %i.ld = load i64, ptr %i.ej, align 8, !noundef !21 ; 4 uses
  %i.le = icmp ugt i64 %i.ld, %i.lc
  br i1 %i.le, label %bb.ae, label %.invoke11900

bb.ae:                                            ; preds = %bb.ad
  %i.lf = load ptr, ptr %i.ek, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %i.lc ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !nonnull !21, !noundef !21
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !noundef !21 ; 8 uses
  %.not.i = icmp slt i64 %i.lj, 0
  br i1 %.not.i, label %.invoke, label %bb.af, !prof !37

bb.af:                                            ; preds = %bb.ae
  %i.lk = icmp eq i64 %i.lj, 0
  br i1 %i.lk, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit405.thread2533, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.af
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16988
  %i.ll = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lj, i64 noundef range(i64 1, 9) 1) #41, !noalias !16988 ; 3 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ll, ptr nonnull align 1 %i.lh, i64 %i.lj, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit405.thread2533

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit405.thread2533: ; preds = %bb.af, %bb.ag, %bb.an
  %i.ln = phi ptr [ %i.lv, %bb.an ], [ %i.lf, %bb.ag ], [ %i.lf, %bb.af ] ; 13 uses
  %i.lo = phi i64 [ %i.lt, %bb.an ], [ %i.ld, %bb.ag ], [ %i.ld, %bb.af ] ; 19 uses
  %.sroa.63.0 = phi i64 [ %.pre-phi, %bb.an ], [ %i.lj, %bb.ag ], [ 0, %bb.af ] ; 97 uses
  %.sroa.57.0 = phi ptr [ %.sroa.57.0.copyload, %bb.an ], [ %i.ll, %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.af ] ; 186 uses
  %.sroa.01780.0 = phi i64 [ %.sroa.01780.0.copyload, %bb.an ], [ %i.lj, %bb.ag ], [ 0, %bb.af ] ; 142 uses
  %.sroa.166.2 = phi i64 [ %i.kq, %bb.an ], [ %i.kf, %bb.ag ], [ %i.kf, %bb.af ] ; 151 uses
  switch i8 %i.jt, label %bb.ao [
    i8 0, label %bb.ap
    i8 1, label %bb.aq
    i8 2, label %bb.at
    i8 3, label %bb.av
    i8 4, label %bb.ay
    i8 5, label %bb.ba
    i8 6, label %bb.bd
    i8 7, label %bb.bf
    i8 8, label %bb.bh
    i8 9, label %bb.bj
    i8 10, label %bb.bk
    i8 11, label %bb.bq
    i8 12, label %bb.bt
    i8 13, label %bb.bv
    i8 14, label %bb.bx
    i8 15, label %bb.bz
    i8 16, label %bb.cb
    i8 17, label %bb.cd
    i8 18, label %bb.cg
    i8 19, label %bb.ch
    i8 20, label %bb.ci
    i8 21, label %bb.cj
    i8 22, label %bb.cm
    i8 23, label %bb.co
    i8 24, label %bb.cq
    i8 25, label %bb.cr
    i8 26, label %bb.ct
    i8 27, label %bb.cu
    i8 28, label %bb.cw
    i8 29, label %bb.cy
    i8 30, label %bb.da
    i8 31, label %bb.dc
    i8 32, label %bb.de
    i8 33, label %bb.dg
    i8 34, label %bb.di
    i8 35, label %bb.dk
    i8 36, label %bb.dm
    i8 37, label %bb.do
    i8 38, label %bb.dq
    i8 39, label %bb.ds
    i8 40, label %bb.du
    i8 41, label %bb.dw
    i8 42, label %bb.dy
    i8 43, label %bb.ea
    i8 44, label %bb.ec
    i8 45, label %bb.ee
    i8 46, label %bb.ef
    i8 47, label %bb.eh
    i8 48, label %bb.ei
    i8 49, label %bb.ej
    i8 50, label %bb.ek
    i8 51, label %bb.en
    i8 52, label %bb.eq
  ], !prof !16989

bb.ah:                                            ; preds = %.lr.ph.i397
  %i.lp = and i32 %.sroa.02.012.i399, 31
  %i.lq = shl i32 %i.kr, %i.lp
  %i.lr = or i32 %i.lq, %.sroa.0.013.i398
  %i.ls = zext i32 %i.lr to i64                   ; 3 uses
  %i.lt = load i64, ptr %i.ej, align 8, !noundef !21 ; 3 uses
  %i.lu = icmp ugt i64 %i.lt, %i.ls
  br i1 %i.lu, label %bb.ai, label %.invoke11900

bb.ai:                                            ; preds = %bb.ah
  %i.lv = load ptr, ptr %i.ek, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.ls ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !nonnull !21, !noundef !21
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !noundef !21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  %i.ma = add i64 %i.lz, 1                        ; 7 uses
  %.not.i406 = icmp slt i64 %i.ma, 0
  br i1 %.not.i406, label %.invoke, label %bb.aj, !prof !37

bb.aj:                                            ; preds = %bb.ai
  %i.mb = icmp eq i64 %i.ma, 0
  br i1 %i.mb, label %bb.ak, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i407

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i407: ; preds = %bb.aj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !16990
  %i.mc = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ma, i64 noundef range(i64 1, 9) 1) #41, !noalias !16990 ; 5 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %.invoke, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i

.invoke11900:                                     ; preds = %bb.ah, %bb.ad
  %i.me = phi i64 [ %i.lc, %bb.ad ], [ %i.ls, %bb.ah ]
  %i.mf = phi i64 [ %i.ld, %bb.ad ], [ %i.lt, %bb.ah ]
  %i.mg = phi ptr [ @10991, %bb.ad ], [ @10992, %bb.ah ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.me, i64 noundef %i.mf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mg) #46
          to label %.cont11901 unwind label %bb.n

.cont11901:                                       ; preds = %.invoke11900
  unreachable

.invoke:                                          ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i407, %bb.ai, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i, %bb.ae
  %i.mh = phi i64 [ 0, %bb.ae ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i407 ], [ 0, %bb.ai ]
  %i.mi = phi i64 [ %i.lj, %bb.ae ], [ %i.lj, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ %i.ma, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i407 ], [ %i.ma, %bb.ai ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.mh, i64 %i.mi) #46
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj
  store i64 0, ptr %i.eb, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.492.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.thread9233 unwind label %bb.al

bb.al:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i, %bb.ak
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16991)
  %.val.i411 = load i64, ptr %i.eb, align 8, !alias.scope !16991 ; 2 uses
end_hunk_9
begin_hunk_10_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm7fmt_tbl4read:bb.a
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17072
  %i.adv = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17072 ; 3 uses
  %i.adw = icmp eq ptr %i.adv, null
  br i1 %i.adw, label %bb.fv, label %bb.fx, !prof !26

bb.fv:                                            ; preds = %bb.fu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc799 unwind label %bb.fw

.noexc799:                                        ; preds = %bb.fv
  unreachable

bb.fw:                                            ; preds = %bb.fv
  %i.adx = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_StringEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dw) #42
  br label %.body385

bb.fx:                                            ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.adv, ptr noundef nonnull align 8 dereferenceable(48) %i.dw, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  br label %bb.ey

bb.fy:                                            ; preds = %.lr.ph.i447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.experimental.noalias.scope.decl(metadata !17073)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !17074
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.gb unwind label %bb.fz, !noalias !17074

bb.fz:                                            ; preds = %bb.fy
  %i.ady = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adz = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.adz, label %.body385, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17075
  br label %.body385

bb.gb:                                            ; preds = %bb.fy
  %i.aea = and i32 %.sroa.02.012.i449, 31
  %i.aeb = shl i32 %i.ob, %i.aea
  %i.aec = or i32 %i.aeb, %.sroa.0.013.i448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62405.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !17076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !17074
  store i64 %.sroa.01780.0, ptr %i.bn, align 8, !noalias !17076
  store ptr %.sroa.57.0, ptr %.sroa.42403.0..sroa_idx, align 8, !noalias !17076
  store i64 %.sroa.63.0, ptr %.sroa.52404.0..sroa_idx, align 8, !noalias !17076
  store i32 %i.aec, ptr %i.il, align 8, !alias.scope !17073, !noalias !17076
  store i8 0, ptr %i.im, align 4, !alias.scope !17073, !noalias !17076
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17077
  %i.aed = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17077 ; 3 uses
  %i.aee = icmp eq ptr %i.aed, null
  br i1 %i.aee, label %bb.gc, label %bb.ge, !prof !26

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc807 unwind label %bb.gd

.noexc807:                                        ; preds = %bb.gc
  unreachable

bb.gd:                                            ; preds = %bb.gc
  %i.aef = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info21SimpleInstrInfo_STIG2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bn) #42
  br label %.body385

bb.ge:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aed, ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.ey

bb.gf:                                            ; preds = %.lr.ph.i456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.experimental.noalias.scope.decl(metadata !17078)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !17079
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.gi unwind label %bb.gg, !noalias !17079

bb.gg:                                            ; preds = %bb.gf
  %i.aeg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeh = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.aeh, label %.body385, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17080
  br label %.body385

bb.gi:                                            ; preds = %bb.gf
  %i.aei = and i32 %.sroa.02.012.i458, 31
  %i.aej = shl i32 %i.on, %i.aei
  %i.aek = or i32 %i.aej, %.sroa.0.013.i457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62409.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !17081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !17079
  store i64 %.sroa.01780.0, ptr %i.dv, align 8, !noalias !17081
  store ptr %.sroa.57.0, ptr %.sroa.42407.0..sroa_idx, align 8, !noalias !17081
  store i64 %.sroa.63.0, ptr %.sroa.52408.0..sroa_idx, align 8, !noalias !17081
  store i32 %i.aek, ptr %i.ik, align 8, !alias.scope !17078, !noalias !17081
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17082
  %i.ael = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17082 ; 3 uses
  %i.aem = icmp eq ptr %i.ael, null
  br i1 %i.aem, label %bb.gj, label %bb.gl, !prof !26

bb.gj:                                            ; preds = %bb.gi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc815 unwind label %bb.gk

.noexc815:                                        ; preds = %bb.gj
  unreachable

bb.gk:                                            ; preds = %bb.gj
  %i.aen = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info20SimpleInstrInfo_bcstEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dv) #42
  br label %.body385

bb.gl:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ael, ptr noundef nonnull align 8 dereferenceable(56) %i.dv, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.ey

bb.gm:                                            ; preds = %.lr.ph.i465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.experimental.noalias.scope.decl(metadata !17083)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !17084
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.gp unwind label %bb.gn, !noalias !17084

bb.gn:                                            ; preds = %bb.gm
  %i.aeo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aep = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.aep, label %.body385, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17085
  br label %.body385

bb.gp:                                            ; preds = %bb.gm
  %i.aeq = and i32 %.sroa.02.012.i467, 31
  %i.aer = shl i32 %i.oz, %i.aeq
  %i.aes = or i32 %i.aer, %.sroa.0.013.i466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !17086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !17084
  store i64 %.sroa.01780.0, ptr %i.du, align 8, !noalias !17086
  store ptr %.sroa.57.0, ptr %.sroa.42411.0..sroa_idx, align 8, !noalias !17086
  store i64 %.sroa.63.0, ptr %.sroa.52412.0..sroa_idx, align 8, !noalias !17086
  store i32 %i.aes, ptr %i.ij, align 8, !alias.scope !17083, !noalias !17086
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17087
  %i.aet = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17087 ; 3 uses
  %i.aeu = icmp eq ptr %i.aet, null
  br i1 %i.aeu, label %bb.gq, label %bb.gs, !prof !26

bb.gq:                                            ; preds = %bb.gp
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc823 unwind label %bb.gr

.noexc823:                                        ; preds = %bb.gq
  unreachable

bb.gr:                                            ; preds = %bb.gq
  %i.aev = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info19SimpleInstrInfo_bndEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.du) #42
  br label %.body385

bb.gs:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aet, ptr noundef nonnull align 8 dereferenceable(56) %i.du, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %bb.ey

bb.gt:                                            ; preds = %bb.bj
  %i.aew = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.aex = load i8, ptr %i.aew, align 1, !noalias !17088, !noundef !21 ; 2 uses
  %i.aey = add nuw nsw i64 %.sroa.166.2, 1        ; 2 uses
  %.not3055 = icmp eq i64 %.sroa.166.2, 11839
  br i1 %.not3055, label %.invoke14251, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aez = getelementptr inbounds nuw i8, ptr @11046, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !noalias !17089, !noundef !21 ; 2 uses
  %i.afb = icmp samesign ult i64 %.sroa.166.2, 11838
  br i1 %i.afb, label %.lr.ph.i829.preheader, label %.invoke14251

.lr.ph.i829.preheader:                            ; preds = %bb.gu
  %i.afc = add nuw nsw i64 %.sroa.166.2, 2
  br label %.lr.ph.i829

.lr.ph.i829:                                      ; preds = %.lr.ph.i829.preheader, %bb.gv
  %.sroa.0.013.i830 = phi i32 [ %i.afm, %bb.gv ], [ 0, %.lr.ph.i829.preheader ] ; 2 uses
  %.sroa.02.012.i831 = phi i32 [ %i.afn, %bb.gv ], [ 0, %.lr.ph.i829.preheader ] ; 3 uses
  %i.afd = phi i64 [ %i.afg, %bb.gv ], [ %i.afc, %.lr.ph.i829.preheader ] ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr @11046, i64 %i.afd
  %i.aff = load i8, ptr %i.afe, align 1, !noalias !17090, !noundef !21 ; 2 uses
  %i.afg = add nuw nsw i64 %i.afd, 1              ; 3 uses
  %i.afh = zext i8 %i.aff to i32                  ; 2 uses
  %i.afi = icmp sgt i8 %i.aff, -1
  br i1 %i.afi, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph.i829
  %i.afj = and i32 %i.afh, 127
  %i.afk = and i32 %.sroa.02.012.i831, 31
  %i.afl = shl i32 %i.afj, %i.afk
  %i.afm = or i32 %i.afl, %.sroa.0.013.i830
  %i.afn = add nuw nsw i32 %.sroa.02.012.i831, 7
  %exitcond.not.i832 = icmp eq i64 %i.afg, 11840
  br i1 %exitcond.not.i832, label %.invoke14251, label %.lr.ph.i829

bb.gw:                                            ; preds = %.lr.ph.i829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.afo = icmp ult i8 %i.aex, 7
  call void @llvm.assume(i1 %i.afo)
  %i.afp = icmp ult i8 %i.afa, 7
  call void @llvm.assume(i1 %i.afp)
  call void @llvm.experimental.noalias.scope.decl(metadata !17091)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !17092
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.gz unwind label %bb.gx, !noalias !17092

bb.gx:                                            ; preds = %bb.gw
  %i.afq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afr = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.afr, label %.body385, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17093
  br label %.body385

bb.gz:                                            ; preds = %bb.gw
  %i.afs = and i32 %.sroa.02.012.i831, 31
  %i.aft = shl i32 %i.afh, %i.afs
  %i.afu = or i32 %i.aft, %.sroa.0.013.i830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !17094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !17092
  store i64 %.sroa.01780.0, ptr %i.br, align 8, !noalias !17094
  store ptr %.sroa.57.0, ptr %.sroa.42415.0..sroa_idx, align 8, !noalias !17094
  store i64 %.sroa.63.0, ptr %.sroa.52416.0..sroa_idx, align 8, !noalias !17094
  store i8 %i.aex, ptr %i.ig, align 4, !alias.scope !17091, !noalias !17094
  store i8 %i.afa, ptr %i.ih, align 1, !alias.scope !17091, !noalias !17094
  store i32 %i.afu, ptr %i.ii, align 8, !alias.scope !17091, !noalias !17094
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17095
  %i.afv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17095 ; 3 uses
  %i.afw = icmp eq ptr %i.afv, null
  br i1 %i.afw, label %bb.ha, label %bb.hc, !prof !26

bb.ha:                                            ; preds = %bb.gz
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc842 unwind label %bb.hb

.noexc842:                                        ; preds = %bb.ha
  unreachable

bb.hb:                                            ; preds = %bb.ha
  %i.afx = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_SignExtEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.br) #42
  br label %.body385

bb.hc:                                            ; preds = %bb.gz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.afv, ptr noundef nonnull align 8 dereferenceable(56) %i.br, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.ey

bb.hd:                                            ; preds = %_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString3new.exit.i
  %switch.idx.cast.i = trunc nuw nsw i16 %switch.tableidx.i to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i64 48, i1 false), !noalias !17096
  store i8 %switch.offset.i, ptr %i.if, align 8, !alias.scope !17007, !noalias !17096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !17008
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17097
  %i.afy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17097 ; 3 uses
  %i.afz = icmp eq ptr %i.afy, null
  br i1 %i.afz, label %bb.he, label %bb.hg, !prof !26

bb.he:                                            ; preds = %bb.hd
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc844 unwind label %bb.hf

.noexc844:                                        ; preds = %bb.he
  unreachable

bb.hf:                                            ; preds = %bb.he
  %i.aga = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info27SimpleInstrInfo_DeclareDataEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dt) #42
  br label %.body385

bb.hg:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.afy, ptr noundef nonnull align 8 dereferenceable(56) %i.dt, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.ey

bb.hh:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62373.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !17098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !17015
  store i64 %.sroa.01780.0, ptr %i.bm, align 8, !noalias !17098
  store ptr %.sroa.57.0, ptr %.sroa.42371.0..sroa_idx, align 8, !noalias !17098
  store i64 %.sroa.63.0, ptr %.sroa.52372.0..sroa_idx, align 8, !noalias !17098
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17099
  %i.agb = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17099 ; 3 uses
  %i.agc = icmp eq ptr %i.agb, null
  br i1 %i.agc, label %bb.hi, label %bb.hk, !prof !26

bb.hi:                                            ; preds = %bb.hh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc846 unwind label %bb.hj

.noexc846:                                        ; preds = %bb.hi
  unreachable

bb.hj:                                            ; preds = %bb.hi
  %i.agd = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info20SimpleInstrInfo_XLATEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bm) #42
  br label %.body385

bb.hk:                                            ; preds = %bb.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.agb, ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.ey

bb.hl:                                            ; preds = %.lr.ph.i488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.experimental.noalias.scope.decl(metadata !17100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !17101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.ho unwind label %bb.hm, !noalias !17101

bb.hm:                                            ; preds = %bb.hl
  %i.age = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agf = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.agf, label %.body385, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17102
  br label %.body385

bb.ho:                                            ; preds = %bb.hl
  %i.agg = and i32 %.sroa.02.012.i490, 31
  %i.agh = shl i32 %i.pt, %i.agg
  %i.agi = or i32 %i.agh, %.sroa.0.013.i489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !17103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !17101
  store i64 %.sroa.01780.0, ptr %i.ds, align 8, !noalias !17103
  store ptr %.sroa.57.0, ptr %.sroa.42419.0..sroa_idx, align 8, !noalias !17103
  store i64 %.sroa.63.0, ptr %.sroa.52420.0..sroa_idx, align 8, !noalias !17103
  store i32 %i.agi, ptr %i.ic, align 8, !alias.scope !17100, !noalias !17103
  store i32 0, ptr %i.id, align 4, !alias.scope !17100, !noalias !17103
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17104
  %i.agj = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17104 ; 3 uses
  %i.agk = icmp eq ptr %i.agj, null
  br i1 %i.agk, label %bb.hp, label %bb.hr, !prof !26

bb.hp:                                            ; preds = %bb.ho
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc854 unwind label %bb.hq

.noexc854:                                        ; preds = %bb.hp
  unreachable

bb.hq:                                            ; preds = %bb.hp
  %i.agl = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info18SimpleInstrInfo_erEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ds) #42
  br label %.body385

bb.hr:                                            ; preds = %bb.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.agj, ptr noundef nonnull align 8 dereferenceable(56) %i.ds, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br label %bb.ey

bb.hs:                                            ; preds = %.lr.ph.i497
  %i.agm = and i32 %.sroa.02.012.i499, 31
  %i.agn = shl i32 %i.qf, %i.agm
  %i.ago = or i32 %i.agn, %.sroa.0.013.i498
  %i.agp = icmp ult i64 %i.qb, 11839
  br i1 %i.agp, label %.lr.ph.i858, label %.invoke14251

.lr.ph.i858:                                      ; preds = %bb.hs, %bb.ht
  %.sroa.0.013.i859 = phi i32 [ %i.agz, %bb.ht ], [ 0, %bb.hs ] ; 2 uses
  %.sroa.02.012.i860 = phi i32 [ %i.aha, %bb.ht ], [ 0, %bb.hs ] ; 3 uses
  %i.agq = phi i64 [ %i.agt, %bb.ht ], [ %i.qe, %bb.hs ] ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr @11046, i64 %i.agq
  %i.ags = load i8, ptr %i.agr, align 1, !noalias !17105, !noundef !21 ; 2 uses
  %i.agt = add nuw nsw i64 %i.agq, 1              ; 3 uses
  %i.agu = zext i8 %i.ags to i32                  ; 2 uses
  %i.agv = icmp sgt i8 %i.ags, -1
  br i1 %i.agv, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph.i858
  %i.agw = and i32 %i.agu, 127
end_hunk_10
begin_hunk_11_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm7fmt_tbl4read:bb.a
  br label %bb.ey

bb.ib:                                            ; preds = %.lr.ph.i506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.experimental.noalias.scope.decl(metadata !17111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !17112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.ie unwind label %bb.ic, !noalias !17112

bb.ic:                                            ; preds = %bb.ib
  %i.ahj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahk = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ahk, label %.body385, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17113
  br label %.body385

bb.ie:                                            ; preds = %bb.ib
  %i.ahl = and i32 %.sroa.02.012.i508, 31
  %i.ahm = shl i32 %i.qr, %i.ahl
  %i.ahn = or i32 %i.ahm, %.sroa.0.013.i507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62429.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !17114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !17112
  store i64 %.sroa.01780.0, ptr %i.dq, align 8, !noalias !17114
  store ptr %.sroa.57.0, ptr %.sroa.42427.0..sroa_idx, align 8, !noalias !17114
  store i64 %.sroa.63.0, ptr %.sroa.52428.0..sroa_idx, align 8, !noalias !17114
  store i32 %i.ahn, ptr %i.hz, align 8, !alias.scope !17111, !noalias !17114
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17115
  %i.aho = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17115 ; 3 uses
  %i.ahp = icmp eq ptr %i.aho, null
  br i1 %i.ahp, label %bb.if, label %bb.ih, !prof !26

bb.if:                                            ; preds = %bb.ie
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc879 unwind label %bb.ig

.noexc879:                                        ; preds = %bb.if
  unreachable

bb.ig:                                            ; preds = %bb.if
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info19SimpleInstrInfo_farEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dq) #42
  br label %.body385

bb.ih:                                            ; preds = %bb.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aho, ptr noundef nonnull align 8 dereferenceable(56) %i.dq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %bb.ey

bb.ii:                                            ; preds = %.lr.ph.i515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.experimental.noalias.scope.decl(metadata !17116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !17117
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.il unwind label %bb.ij, !noalias !17117

bb.ij:                                            ; preds = %bb.ii
  %i.ahr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahs = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ahs, label %.body385, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17118
  br label %.body385

bb.il:                                            ; preds = %bb.ii
  %i.aht = and i32 %.sroa.02.012.i517, 31
  %i.ahu = shl i32 %i.rd, %i.aht
  %i.ahv = or i32 %i.ahu, %.sroa.0.013.i516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !17119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !17117
  store i64 %.sroa.01780.0, ptr %i.dp, align 8, !noalias !17119
  store ptr %.sroa.57.0, ptr %.sroa.42431.0..sroa_idx, align 8, !noalias !17119
  store i64 %.sroa.63.0, ptr %.sroa.52432.0..sroa_idx, align 8, !noalias !17119
  store i32 %i.ahv, ptr %i.hy, align 8, !alias.scope !17116, !noalias !17119
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17120
  %i.ahw = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17120 ; 3 uses
  %i.ahx = icmp eq ptr %i.ahw, null
  br i1 %i.ahx, label %bb.im, label %bb.io, !prof !26

bb.im:                                            ; preds = %bb.il
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc887 unwind label %bb.in

.noexc887:                                        ; preds = %bb.im
  unreachable

bb.in:                                            ; preds = %bb.im
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_far_memEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dp) #42
  br label %.body385

bb.io:                                            ; preds = %bb.il
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahw, ptr noundef nonnull align 8 dereferenceable(56) %i.dp, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %bb.ey

bb.ip:                                            ; preds = %.lr.ph.i524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.experimental.noalias.scope.decl(metadata !17121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !17122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.is unwind label %bb.iq, !noalias !17122

bb.iq:                                            ; preds = %bb.ip
  %i.ahz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aia = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.aia, label %.body385, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17123
  br label %.body385

bb.is:                                            ; preds = %bb.ip
  %i.aib = and i32 %.sroa.02.012.i526, 31
  %i.aic = shl i32 %i.rp, %i.aib
  %i.aid = or i32 %i.aic, %.sroa.0.013.i525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62437.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !17124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !17122
  store i64 %.sroa.01780.0, ptr %i.do, align 8, !noalias !17124
  store ptr %.sroa.57.0, ptr %.sroa.42435.0..sroa_idx, align 8, !noalias !17124
  store i64 %.sroa.63.0, ptr %.sroa.52436.0..sroa_idx, align 8, !noalias !17124
  store i32 %i.aid, ptr %i.hx, align 8, !alias.scope !17121, !noalias !17124
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17125
  %i.aie = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17125 ; 3 uses
  %i.aif = icmp eq ptr %i.aie, null
  br i1 %i.aif, label %bb.it, label %bb.iv, !prof !26

bb.it:                                            ; preds = %bb.is
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc895 unwind label %bb.iu

.noexc895:                                        ; preds = %bb.it
  unreachable

bb.iu:                                            ; preds = %bb.it
  %i.aig = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_invlpgaEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.do) #42
  br label %.body385

bb.iv:                                            ; preds = %bb.is
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aie, ptr noundef nonnull align 8 dereferenceable(56) %i.do, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  br label %bb.ey

bb.iw:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62377.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !17126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !17022
  store i64 %.sroa.01780.0, ptr %i.dn, align 8, !noalias !17126
  store ptr %.sroa.57.0, ptr %.sroa.42375.0..sroa_idx, align 8, !noalias !17126
  store i64 %.sroa.63.0, ptr %.sroa.52376.0..sroa_idx, align 8, !noalias !17126
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17127
  %i.aih = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17127 ; 3 uses
  %i.aii = icmp eq ptr %i.aih, null
  br i1 %i.aii, label %bb.ix, label %bb.iz, !prof !26

bb.ix:                                            ; preds = %bb.iw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc897 unwind label %bb.iy

.noexc897:                                        ; preds = %bb.ix
  unreachable

bb.iy:                                            ; preds = %bb.ix
  %i.aij = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info24SimpleInstrInfo_maskmovqEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dn) #42
  br label %.body385

bb.iz:                                            ; preds = %bb.iw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aih, ptr noundef nonnull align 8 dereferenceable(48) %i.dn, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.ey

bb.ja:                                            ; preds = %bb.cg
  %i.aik = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.ail = load i8, ptr %i.aik, align 1, !noalias !17128, !noundef !21 ; 3 uses
  %.not3054 = icmp eq i64 %.sroa.166.2, 11839
  br i1 %.not3054, label %.invoke14251, label %.lr.ph.i901.preheader

.lr.ph.i901.preheader:                            ; preds = %bb.ja
  %i.aim = add nuw nsw i64 %.sroa.166.2, 1
  br label %.lr.ph.i901

.lr.ph.i901:                                      ; preds = %.lr.ph.i901.preheader, %bb.jb
  %.sroa.0.013.i902 = phi i32 [ %i.aiw, %bb.jb ], [ 0, %.lr.ph.i901.preheader ] ; 2 uses
  %.sroa.02.012.i903 = phi i32 [ %i.aix, %bb.jb ], [ 0, %.lr.ph.i901.preheader ] ; 3 uses
  %i.ain = phi i64 [ %i.aiq, %bb.jb ], [ %i.aim, %.lr.ph.i901.preheader ] ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr @11046, i64 %i.ain
  %i.aip = load i8, ptr %i.aio, align 1, !noalias !17129, !noundef !21 ; 2 uses
  %i.aiq = add nuw nsw i64 %i.ain, 1              ; 3 uses
  %i.air = zext i8 %i.aip to i32                  ; 2 uses
  %i.ais = icmp sgt i8 %i.aip, -1
  br i1 %i.ais, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph.i901
  %i.ait = and i32 %i.air, 127
  %i.aiu = and i32 %.sroa.02.012.i903, 31
  %i.aiv = shl i32 %i.ait, %i.aiu
  %i.aiw = or i32 %i.aiv, %.sroa.0.013.i902
  %i.aix = add i32 %.sroa.02.012.i903, 7
  %exitcond.not.i904 = icmp eq i64 %i.aiq, 11840
  br i1 %exitcond.not.i904, label %.invoke14251, label %.lr.ph.i901

bb.jc:                                            ; preds = %.lr.ph.i901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.aiy = icmp ult i8 %i.ail, 7
  call void @llvm.assume(i1 %i.aiy)
  call void @llvm.experimental.noalias.scope.decl(metadata !17130)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !17131
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.jf unwind label %bb.jd, !noalias !17131

bb.jd:                                            ; preds = %bb.jc
  %i.aiz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aja = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.aja, label %.body385, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17132
  br label %.body385

bb.jf:                                            ; preds = %bb.jc
  %i.ajb = and i32 %.sroa.02.012.i903, 31
  %i.ajc = shl i32 %i.air, %i.ajb
  %i.ajd = or i32 %i.ajc, %.sroa.0.013.i902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62441.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !17133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !17131
  store i64 %.sroa.01780.0, ptr %i.bs, align 8, !noalias !17133
  store ptr %.sroa.57.0, ptr %.sroa.42439.0..sroa_idx, align 8, !noalias !17133
  store i64 %.sroa.63.0, ptr %.sroa.52440.0..sroa_idx, align 8, !noalias !17133
  store i8 %i.ail, ptr %i.hu, align 4, !alias.scope !17130, !noalias !17133
  store i8 %i.ail, ptr %i.hv, align 1, !alias.scope !17130, !noalias !17133
  store i32 %i.ajd, ptr %i.hw, align 8, !alias.scope !17130, !noalias !17133
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17134
  %i.aje = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17134 ; 3 uses
  %i.ajf = icmp eq ptr %i.aje, null
  br i1 %i.ajf, label %bb.jg, label %bb.ji, !prof !26

bb.jg:                                            ; preds = %bb.jf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc914 unwind label %bb.jh

.noexc914:                                        ; preds = %bb.jg
  unreachable

bb.jh:                                            ; preds = %bb.jg
  %i.ajg = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_SignExtEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bs) #42
  br label %.body385

bb.ji:                                            ; preds = %bb.jf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aje, ptr noundef nonnull align 8 dereferenceable(56) %i.bs, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.ey

bb.jj:                                            ; preds = %bb.ch
  %i.ajh = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.aji = load i8, ptr %i.ajh, align 1, !noalias !17135, !noundef !21
  %i.ajj = add nuw nsw i64 %.sroa.166.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !17136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !17137
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.jm unwind label %bb.jk, !noalias !17137

bb.jk:                                            ; preds = %bb.jj
  %i.ajk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajl = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ajl, label %.body385, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17138
  br label %.body385

bb.jm:                                            ; preds = %bb.jj
  %i.ajm = icmp ne i8 %i.aji, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62445.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !17139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17137
  store i64 %.sroa.01780.0, ptr %i.bp, align 8, !noalias !17139
  store ptr %.sroa.57.0, ptr %.sroa.42443.0..sroa_idx, align 8, !noalias !17139
  store i64 %.sroa.63.0, ptr %.sroa.52444.0..sroa_idx, align 8, !noalias !17139
  %i.ajn = zext i1 %i.ajm to i8
  store i8 %i.ajn, ptr %i.ht, align 8, !alias.scope !17136, !noalias !17139
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17140
  %i.ajo = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17140 ; 3 uses
  %i.ajp = icmp eq ptr %i.ajo, null
  br i1 %i.ajp, label %bb.jn, label %bb.jp, !prof !26

bb.jn:                                            ; preds = %bb.jm
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc922 unwind label %bb.jo

.noexc922:                                        ; preds = %bb.jn
  unreachable

bb.jo:                                            ; preds = %bb.jn
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info21SimpleInstrInfo_STIG1EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bp) #42
  br label %.body385

bb.jp:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajo, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.ey

bb.jq:                                            ; preds = %bb.ci
  %i.ajr = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.ajs = load i8, ptr %i.ajr, align 1, !noalias !17141, !noundef !21
  %i.ajt = add nuw nsw i64 %.sroa.166.2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.experimental.noalias.scope.decl(metadata !17142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !17143
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.jt unwind label %bb.jr, !noalias !17143

bb.jr:                                            ; preds = %bb.jq
  %i.aju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajv = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.ajv, label %.body385, label %bb.js

bb.js:                                            ; preds = %bb.jr
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17144
  br label %.body385

bb.jt:                                            ; preds = %bb.jq
  %i.ajw = icmp ne i8 %i.ajs, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62449.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !17145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !17143
  store i64 %.sroa.01780.0, ptr %i.bo, align 8, !noalias !17145
  store ptr %.sroa.57.0, ptr %.sroa.42447.0..sroa_idx, align 8, !noalias !17145
  store i64 %.sroa.63.0, ptr %.sroa.52448.0..sroa_idx, align 8, !noalias !17145
  store i32 0, ptr %i.hr, align 8, !alias.scope !17142, !noalias !17145
  %i.ajx = zext i1 %i.ajw to i8
  store i8 %i.ajx, ptr %i.hs, align 4, !alias.scope !17142, !noalias !17145
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17146
  %i.ajy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17146 ; 3 uses
  %i.ajz = icmp eq ptr %i.ajy, null
  br i1 %i.ajz, label %bb.ju, label %bb.jw, !prof !26

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc930 unwind label %bb.jv

.noexc930:                                        ; preds = %bb.ju
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.aka = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info21SimpleInstrInfo_STIG2EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bo) #42
  br label %.body385

bb.jw:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajy, ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.ey

bb.jx:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62381.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !17147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !17024
  store i64 %.sroa.01780.0, ptr %i.dm, align 8, !noalias !17147
  store ptr %.sroa.57.0, ptr %.sroa.42379.0..sroa_idx, align 8, !noalias !17147
  store i64 %.sroa.63.0, ptr %.sroa.52380.0..sroa_idx, align 8, !noalias !17147
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17148
  %i.akb = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17148 ; 3 uses
  %i.akc = icmp eq ptr %i.akb, null
  br i1 %i.akc, label %bb.jy, label %bb.ka, !prof !26

bb.jy:                                            ; preds = %bb.jx
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc932 unwind label %bb.jz

.noexc932:                                        ; preds = %bb.jy
  unreachable

bb.jz:                                            ; preds = %bb.jy
  %i.akd = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_movabsEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm) #42
  br label %.body385

bb.ka:                                            ; preds = %bb.jx
end_hunk_11
begin_hunk_12_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm7fmt_tbl4read:bb.a
bb.mp:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit996.thread2858
  %i.aol = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aom = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.aom, label %.thread.i999, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17214
  br label %.thread.i999

bb.mr:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit996.thread2858
  store i64 %.sroa.01780.0, ptr %i.ab, align 8, !alias.scope !17215, !noalias !17216
  store ptr %.sroa.57.0, ptr %.sroa.52113.0..sroa_idx, align 8, !alias.scope !17215, !noalias !17216
  store i64 %.sroa.63.0, ptr %.sroa.72114.0..sroa_idx, align 8, !alias.scope !17215, !noalias !17216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !17217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !17213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !17210
  call void @llvm.experimental.noalias.scope.decl(metadata !17218)
  call void @llvm.experimental.noalias.scope.decl(metadata !17219)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !17220
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aml, i64 noundef %i.amh)
          to label %bb.mu unwind label %bb.ms, !noalias !17220

bb.ms:                                            ; preds = %bb.mr
  %i.aon = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ami, label %.body9.thread.i1018, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aml, i64 noundef %i.amh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17221
  br label %.body9.thread.i1018

.body9.thread.i1018:                              ; preds = %bb.mt, %bb.ms
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #42, !noalias !17210
  br label %.thread.i999

.body9.i1026:                                     ; preds = %.body19.i1036, %bb.mw, %bb.mv
  %.pn.i1027 = phi { ptr, i32 } [ %i.aop, %.body19.i1036 ], [ %i.aoo, %bb.mv ], [ %i.aoo, %bb.mw ] ; 2 uses
  %.sroa.0.2.i1028 = phi i1 [ false, %.body19.i1036 ], [ true, %bb.mv ], [ true, %bb.mw ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aa) #42, !noalias !17210
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #42, !noalias !17210
  br i1 %.sroa.0.2.i1028, label %.thread.i999, label %.body385

bb.mu:                                            ; preds = %bb.mr
  store i64 %i.amh, ptr %i.aa, align 8, !alias.scope !17222, !noalias !17210
  store ptr %i.aml, ptr %.sroa.5.0..sroa_idx29.i1019, align 8, !alias.scope !17222, !noalias !17210
  store i64 %i.amh, ptr %.sroa.6.0..sroa_idx31.i1020, align 8, !alias.scope !17222, !noalias !17210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !17223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !17220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !17210
  call void @llvm.experimental.noalias.scope.decl(metadata !17224)
  call void @llvm.experimental.noalias.scope.decl(metadata !17225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !17226
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.anl, i64 noundef %i.anh)
          to label %bb.mx unwind label %bb.mv, !noalias !17226

bb.mv:                                            ; preds = %bb.mu
  %i.aoo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ani, label %.body9.i1026, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anl, i64 noundef %i.anh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17227
  br label %.body9.i1026

bb.mx:                                            ; preds = %bb.mu
  store i64 %i.anh, ptr %i.z, align 8, !alias.scope !17228, !noalias !17210
  store ptr %i.anl, ptr %.sroa.535.0..sroa_idx36.i1029, align 8, !alias.scope !17228, !noalias !17210
  store i64 %i.anh, ptr %.sroa.638.0..sroa_idx39.i1030, align 8, !alias.scope !17228, !noalias !17210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !17229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !17230
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aok, i64 noundef %i.aog)
          to label %bb.ng unwind label %bb.my, !noalias !17230

bb.my:                                            ; preds = %bb.mx
  %i.aop = landingpad { ptr, i32 }
          cleanup
  br i1 %i.aoh, label %.body19.i1036, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aok, i64 noundef %i.aog, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17231
  br label %.body19.i1036

.body19.i1036:                                    ; preds = %bb.mz, %bb.my
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.z) #42, !noalias !17210
  br label %.body9.i1026

.thread.i999:                                     ; preds = %.body9.i1026, %.body9.thread.i1018, %bb.mq, %bb.mp
  %.sroa.01.063.i1000 = phi i1 [ false, %.body9.i1026 ], [ true, %bb.mp ], [ true, %bb.mq ], [ true, %.body9.thread.i1018 ]
  %.sroa.02.061.i1001 = phi i1 [ true, %.body9.i1026 ], [ %i.ami, %bb.mp ], [ %i.ami, %bb.mq ], [ true, %.body9.thread.i1018 ] ; 2 uses
  %.pn.pn.pn59.i1002 = phi { ptr, i32 } [ %.pn.i1027, %.body9.i1026 ], [ %i.aol, %bb.mp ], [ %i.aol, %bb.mq ], [ %i.aon, %.body9.thread.i1018 ] ; 3 uses
  br i1 %i.aoh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005, label %bb.na

bb.na:                                            ; preds = %.thread.i999
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aok, i64 noundef %i.aog, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17232
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005: ; preds = %bb.na, %.thread.i999
  br i1 %.sroa.01.063.i1000, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005
  br i1 %.sroa.02.061.i1001, label %.body385, label %bb.ne

bb.nc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i1005
  %i.aoq = icmp eq i64 %i.anh, 0
  br i1 %i.aoq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anl, i64 noundef %i.anh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17233
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012: ; preds = %bb.nd, %bb.nc
  br i1 %.sroa.02.061.i1001, label %.body385, label %bb.ne

bb.ne:                                            ; preds = %bb.nb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit24.i1012
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aml, i64 noundef %i.amh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17234
  br label %.body385

bb.nf:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i994
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aoi, ptr nonnull align 1 %i.aoe, i64 %i.aog, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit996.thread2858

bb.ng:                                            ; preds = %bb.mx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i1037, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !17235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !17230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.i997, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false), !noalias !17210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.48..sroa_idx.i1038, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !17210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.052.96..sroa_idx.i1039, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !17210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !17210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !17210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !17210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.dg, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.052.i997, i64 144, i1 false), !noalias !17235
  store i64 %i.aog, ptr %.sroa.653.0..sroa_idx.i1040, align 8, !alias.scope !17209, !noalias !17235
  store ptr %i.aok, ptr %.sroa.7.0..sroa_idx.i1041, align 8, !alias.scope !17209, !noalias !17235
  store i64 %i.aog, ptr %.sroa.8.0..sroa_idx.i1042, align 8, !alias.scope !17209, !noalias !17235
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.052.i997)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17236
  %i.aor = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17236 ; 3 uses
  %i.aos = icmp eq ptr %i.aor, null
  br i1 %i.aos, label %bb.nh, label %bb.nj, !prof !26

bb.nh:                                            ; preds = %bb.ng
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #46
          to label %.noexc1046 unwind label %bb.ni

.noexc1046:                                       ; preds = %bb.nh
  unreachable

bb.ni:                                            ; preds = %bb.nh
  %i.aot = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringj4_EBG_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(192) %i.dg) #45
  br label %.body385

bb.nj:                                            ; preds = %bb.ng
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.aor, ptr noundef nonnull align 8 dereferenceable(192) %i.dg, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %bb.ey

bb.nk:                                            ; preds = %._crit_edge.i990, %bb.mo, %bb.mn
  %i.aou = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ani, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anl, i64 noundef %i.anh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17237
  br label %bb.nm

bb.nm:                                            ; preds = %bb.mc, %bb.nk, %bb.nl
  %.pn214.ph = phi { ptr, i32 } [ %i.amy, %bb.mc ], [ %i.aou, %bb.nk ], [ %i.aou, %bb.nl ] ; 2 uses
  br i1 %i.ami, label %.thread2560, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aml, i64 noundef %i.amh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17238
  br label %.thread2560

bb.no:                                            ; preds = %bb.ct
  %i.aov = getelementptr inbounds nuw i8, ptr @11046, i64 %.sroa.166.2
  %i.aow = load i8, ptr %i.aov, align 1, !noalias !17239, !noundef !21
  %i.aox = zext i8 %i.aow to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.df, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0, i32 noundef %i.aox)
          to label %bb.np unwind label %.thread2812.loopexit

bb.np:                                            ; preds = %bb.no
  %.not3053 = icmp eq i64 %.sroa.166.2, 11839
  br i1 %.not3053, label %._crit_edge.i1060, label %.lr.ph.i1056.preheader

.lr.ph.i1056.preheader:                           ; preds = %bb.np
  %i.aoy = add nuw nsw i64 %.sroa.166.2, 1
  br label %.lr.ph.i1056

.lr.ph.i1056:                                     ; preds = %.lr.ph.i1056.preheader, %bb.nq
  %.sroa.0.013.i1057 = phi i32 [ %i.api, %bb.nq ], [ 0, %.lr.ph.i1056.preheader ] ; 2 uses
  %.sroa.02.012.i1058 = phi i32 [ %i.apj, %bb.nq ], [ 0, %.lr.ph.i1056.preheader ] ; 3 uses
  %i.aoz = phi i64 [ %i.apc, %bb.nq ], [ %i.aoy, %.lr.ph.i1056.preheader ] ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr @11046, i64 %i.aoz
  %i.apb = load i8, ptr %i.apa, align 1, !noalias !17240, !noundef !21 ; 2 uses
  %i.apc = add nuw nsw i64 %i.aoz, 1              ; 3 uses
  %i.apd = zext i8 %i.apb to i32                  ; 2 uses
  %i.ape = icmp sgt i8 %i.apb, -1
  br i1 %i.ape, label %bb.nr, label %bb.nq

._crit_edge.i1060:                                ; preds = %bb.np, %bb.nq
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 11840, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1061 unwind label %bb.oc

.noexc1061:                                       ; preds = %._crit_edge.i1060
  unreachable

bb.nq:                                            ; preds = %.lr.ph.i1056
  %i.apf = and i32 %i.apd, 127
  %i.apg = and i32 %.sroa.02.012.i1058, 31
  %i.aph = shl i32 %i.apf, %i.apg
  %i.api = or i32 %i.aph, %.sroa.0.013.i1057
  %i.apj = add i32 %.sroa.02.012.i1058, 7
  %exitcond.not.i1059 = icmp eq i64 %i.apc, 11840
  br i1 %exitcond.not.i1059, label %._crit_edge.i1060, label %.lr.ph.i1056

bb.nr:                                            ; preds = %.lr.ph.i1056
  %i.apk = and i32 %.sroa.02.012.i1058, 31
  %i.apl = shl i32 %i.apd, %i.apk
  %i.apm = or i32 %i.apl, %.sroa.0.013.i1057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  %.sroa.02127.0.copyload = load i64, ptr %i.df, align 8 ; 3 uses
  %.sroa.52129.0.copyload = load ptr, ptr %.sroa.52129.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !17242
  call void @llvm.experimental.noalias.scope.decl(metadata !17243)
  call void @llvm.experimental.noalias.scope.decl(metadata !17244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !17245
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.52129.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %bb.nu unwind label %bb.ns, !noalias !17245

bb.ns:                                            ; preds = %bb.nr
  %i.apn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apo = icmp eq i64 %.sroa.02127.0.copyload, 0
  br i1 %i.apo, label %.thread.i1064, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52129.0.copyload, i64 noundef %.sroa.02127.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17246
  br label %.thread.i1064

bb.nu:                                            ; preds = %bb.nr
  store i64 %.sroa.02127.0.copyload, ptr %i.u, align 8, !alias.scope !17247, !noalias !17248
  store ptr %.sroa.52129.0.copyload, ptr %.sroa.52129.0..sroa_idx2130, align 8, !alias.scope !17247, !noalias !17248
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx2132, align 8, !alias.scope !17247, !noalias !17248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !17249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !17245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !17250
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.ny unwind label %bb.nv, !noalias !17250

bb.nv:                                            ; preds = %bb.nu
  %i.app = landingpad { ptr, i32 }
          cleanup
  %i.apq = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.apq, label %.body5.i, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17251
  br label %.body5.i

.body5.i:                                         ; preds = %bb.nw, %bb.nv
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u) #42, !noalias !17242
  br label %.body385

.thread.i1064:                                    ; preds = %bb.nt, %bb.ns
  %i.apr = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.apr, label %.body385, label %bb.nx

bb.nx:                                            ; preds = %.thread.i1064
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17252
  br label %.body385

bb.ny:                                            ; preds = %bb.nu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !17253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17250
  store i64 %.sroa.01780.0, ptr %i.de, align 8, !alias.scope !17241, !noalias !17253
  store ptr %.sroa.57.0, ptr %.sroa.4.0..sroa_idx.i1073, align 8, !alias.scope !17241, !noalias !17253
  store i64 %.sroa.63.0, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !17241, !noalias !17253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hd, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !17253
  store i32 %i.apm, ptr %i.he, align 8, !alias.scope !17241, !noalias !17253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !17242
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17254
  %i.aps = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17254 ; 3 uses
  %i.apt = icmp eq ptr %i.aps, null
  br i1 %i.apt, label %bb.nz, label %bb.ob, !prof !26

bb.nz:                                            ; preds = %bb.ny
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #46
          to label %.noexc1077 unwind label %bb.oa

.noexc1077:                                       ; preds = %bb.nz
  unreachable

bb.oa:                                            ; preds = %bb.nz
  %i.apu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info23SimpleInstrInfo_OpSize3EBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.de) #42
  br label %.body385

bb.ob:                                            ; preds = %bb.ny
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aps, ptr noundef nonnull align 8 dereferenceable(104) %i.de, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %bb.ey

bb.oc:                                            ; preds = %._crit_edge.i1060
  %i.apv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17255)
  %.val.i1079 = load i64, ptr %i.df, align 8, !alias.scope !17255 ; 2 uses
  %i.apw = icmp eq i64 %.val.i1079, 0
  br i1 %i.apw, label %.thread2560, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %.val1.i1080 = load ptr, ptr %.sroa.52129.0..sroa_idx, align 8, !alias.scope !17255, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1080, i64 noundef %.val.i1079, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17255
  br label %.thread2560

bb.oe:                                            ; preds = %.lr.ph.i582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.experimental.noalias.scope.decl(metadata !17256)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !17257
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.57.0, i64 noundef %.sroa.63.0)
          to label %bb.oh unwind label %bb.of, !noalias !17257

bb.of:                                            ; preds = %bb.oe
  %i.apx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apy = icmp eq i64 %.sroa.01780.0, 0
  br i1 %i.apy, label %.body385, label %bb.og

bb.og:                                            ; preds = %bb.of
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.57.0, i64 noundef %.sroa.01780.0, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17258
  br label %.body385

bb.oh:                                            ; preds = %bb.oe
  %i.apz = and i32 %.sroa.02.012.i584, 31
  %i.aqa = shl i32 %i.tu, %i.apz
  %i.aqb = or i32 %i.aqa, %.sroa.0.013.i583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.62457.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !17259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17257
  store i64 %.sroa.01780.0, ptr %i.dd, align 8, !noalias !17259
  store ptr %.sroa.57.0, ptr %.sroa.42455.0..sroa_idx, align 8, !noalias !17259
  store i64 %.sroa.63.0, ptr %.sroa.52456.0..sroa_idx, align 8, !noalias !17259
  store i32 %i.aqb, ptr %i.ha, align 8, !alias.scope !17256, !noalias !17259
  store i32 0, ptr %i.hb, align 4, !alias.scope !17256, !noalias !17259
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17260
  %i.aqc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17260 ; 3 uses
  %i.aqd = icmp eq ptr %i.aqc, null
  br i1 %i.aqd, label %bb.oi, label %bb.ok, !prof !26

bb.oi:                                            ; preds = %bb.oh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #46
          to label %.noexc1088 unwind label %bb.oj

.noexc1088:                                       ; preds = %bb.oi
  unreachable

bb.oj:                                            ; preds = %bb.oi
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info18SimpleInstrInfo_osEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dd) #42
  br label %.body385

bb.ok:                                            ; preds = %bb.oh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqc, ptr noundef nonnull align 8 dereferenceable(56) %i.dd, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %bb.ey

bb.ol:                                            ; preds = %.lr.ph.i591
  %i.aqf = and i32 %.sroa.02.012.i593, 31
  %i.aqg = shl i32 %i.ug, %i.aqf
  %i.aqh = or i32 %i.aqg, %.sroa.0.013.i592
  %i.aqi = icmp ult i64 %i.uc, 11839
  br i1 %i.aqi, label %.lr.ph.i1092, label %.invoke14251

.lr.ph.i1092:                                     ; preds = %bb.ol, %bb.om
  %.sroa.0.013.i1093 = phi i32 [ %i.aqs, %bb.om ], [ 0, %bb.ol ] ; 2 uses
  %.sroa.02.012.i1094 = phi i32 [ %i.aqt, %bb.om ], [ 0, %bb.ol ] ; 3 uses
  %i.aqj = phi i64 [ %i.aqm, %bb.om ], [ %i.uf, %bb.ol ] ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr @11046, i64 %i.aqj
  %i.aql = load i8, ptr %i.aqk, align 1, !noalias !17261, !noundef !21 ; 2 uses
  %i.aqm = add nuw nsw i64 %i.aqj, 1              ; 3 uses
  %i.aqn = zext i8 %i.aql to i32                  ; 2 uses
  %i.aqo = icmp sgt i8 %i.aql, -1
  br i1 %i.aqo, label %bb.on, label %bb.om

bb.om:                                            ; preds = %.lr.ph.i1092
  %i.aqp = and i32 %i.aqn, 127
  %i.aqq = and i32 %.sroa.02.012.i1094, 31
  %i.aqr = shl i32 %i.aqp, %i.aqq
  %i.aqs = or i32 %i.aqr, %.sroa.0.013.i1093
  %i.aqt = add i32 %.sroa.02.012.i1094, 7
end_hunk_12
begin_hunk_13_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %.sroa.41753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.51754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.61755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %.sroa.41717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.51718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.61719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.41713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.51714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.61715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.41749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.51750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.61751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %.sroa.41745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.51746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.61747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %.sroa.41709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.51710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.sroa.61711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  br label %bb.l

bb.e:                                             ; preds = %bb.ri
  %.sroa.0.0.copyload = load i64, ptr %i.cl, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx11687 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx11687, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 11 uses
  %i.fu = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.fu, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.fv = shl nuw i64 %.sroa.0.0.copyload, 4      ; 2 uses
  %i.fw = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.fw, label %.thread1830, label %bb.g

.thread1830:                                      ; preds = %bb.f
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.fv, i64 noundef range(i64 1, 9) 8) #41, !noalias !17950
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.fx = shl nuw i64 %.sroa.7.0.copyload, 4      ; 2 uses
  %i.fy = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.fv, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 1, 0) %i.fx) #41, !noalias !17950 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.i, label %._crit_edge.i

bb.h:                                             ; preds = %bb.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2t_4SyncEL_EEEB1z_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.cl) #42
          to label %.body295 unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fx) #46
          to label %bb.j unwind label %bb.h, !noalias !17951

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !17951
  unreachable

bb.l:                                             ; preds = %.preheader, %bb.ri
  %.sroa.0.04554 = phi i64 [ -1, %.preheader ], [ %.sroa.0.1, %bb.ri ] ; 4 uses
  %.sroa.065.04553 = phi i64 [ 0, %.preheader ], [ %i.gc, %bb.ri ] ; 2 uses
  %.sroa.120.04552 = phi i64 [ 0, %.preheader ], [ %spec.select, %bb.ri ] ; 5 uses
  %i.gc = add nuw nsw i64 %.sroa.065.04553, 1     ; 2 uses
  %i.gd = icmp ult i64 %.sroa.120.04552, 10870
  br i1 %i.gd, label %bb.v, label %._crit_edge.i311.invoke

.body295:                                         ; preds = %bb.eb, %bb.em, %bb.et, %bb.ex, %bb.fb, %bb.fi, %bb.fp, %bb.fw, %bb.ga, %bb.gh, %bb.go, %bb.gs, %bb.gw, %bb.hd, %bb.hh, %bb.ho, %bb.hs, %bb.id, %bb.ik, %bb.it, %bb.ja, %bb.jf, %bb.jq, %bb.km, %bb.kx, %bb.lk, %bb.mh, %bb.mu, %bb.nj, %bb.oi, %bb.pa, %bb.pi, %bb.pq, %bb.qa, %bb.qj, %bb.qn, %bb.qr, %bb.qy, %bb.rg, %bb.ds, %bb.dt, %bb.dp, %bb.dq, %bb.cf, %bb.cg, %bb.ca, %bb.cb, %bb.bv, %bb.bw, %bb.bs, %bb.bt, %bb.bk, %bb.bl, %bb.bn, %bb.bb, %bb.bc, %bb.ay, %bb.az, %bb.ar, %bb.as, %bb.qd, %bb.qc, %bb.px, %bb.pw, %bb.pt, %bb.ps, %bb.pn, %bb.pm, %.body268, %.body240, %.body242, %.body249, %.body252, %.body178, %.body180, %bb.rj, %.thread1870, %bb.rd, %bb.rc, %bb.qv, %bb.qu, %bb.qg, %bb.qf, %bb.ix, %bb.iw, %bb.iq, %bb.ip, %bb.ih, %bb.ig, %.body.i, %bb.hx, %bb.hw, %bb.hl, %bb.hk, %bb.ha, %bb.gz, %bb.gl, %bb.gk, %bb.ge, %bb.gd, %bb.ft, %bb.fs, %bb.fm, %bb.fl, %bb.ff, %bb.fe, %bb.eq, %bb.ep, %bb.ej, %bb.ei, %bb.ef, %bb.dy, %bb.am, %bb.al, %bb.q, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i297, %bb.h, %bb.n
  %.pn168 = phi { ptr, i32 } [ %i.gl, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i297 ], [ %i.ayq, %bb.rg ], [ %lpad.thr_comm.split-lp, %bb.dy ], [ %i.ga, %bb.h ], [ %i.gh, %bb.n ], [ %i.gl, %bb.q ], [ %i.jn, %bb.al ], [ %i.jn, %bb.am ], [ %.pn1661873, %bb.rj ], [ %i.wj, %bb.ej ], [ %i.aye, %bb.qy ], [ %i.wr, %bb.eq ], [ %i.ace, %bb.ja ], [ %i.abp, %bb.iq ], [ %i.aas, %bb.ih ], [ %i.aym, %bb.rd ], [ %i.axx, %bb.qv ], [ %i.xv, %bb.ft ], [ %i.xn, %bb.fm ], [ %i.aaj, %bb.hw ], [ %i.axm, %bb.qg ], [ %i.xf, %bb.ff ], [ %i.yz, %bb.go ], [ %i.awo, %bb.pq ], [ %i.axq, %bb.qj ], [ %i.axt, %bb.qn ], [ %i.yj, %bb.ge ], [ %i.yt, %bb.gl ], [ %i.zy, %bb.ho ], [ %i.abx, %bb.ix ], [ %i.ahb, %bb.kx ], [ %i.acm, %bb.jf ], [ %i.zg, %bb.ha ], [ %i.zr, %bb.hl ], [ %i.anm, %bb.mu ], [ %i.zn, %bb.hd ], [ %i.wy, %bb.et ], [ %i.xb, %bb.ex ], [ %i.zc, %bb.gs ], [ %i.avy, %bb.pi ], [ %i.yc, %bb.fw ], [ %i.axh, %bb.qd ], [ %i.jw, %bb.ar ], [ %i.kw, %bb.ay ], [ %i.ky, %bb.bb ], [ %i.mo, %bb.bn ], [ %i.mr, %bb.bs ], [ %i.mt, %bb.bv ], [ %i.nh, %bb.ca ], [ %i.nv, %bb.cf ], [ %i.uz, %bb.dp ], [ %i.wd, %bb.eb ], [ %i.wh, %bb.ef ], [ %i.wq, %bb.em ], [ %i.xe, %bb.fb ], [ %i.xm, %bb.fi ], [ %i.xu, %bb.fp ], [ %i.yf, %bb.ga ], [ %i.yp, %bb.gh ], [ %i.zf, %bb.gw ], [ %i.zq, %bb.hh ], [ %i.aab, %bb.hs ], [ %i.aar, %bb.id ], [ %i.aaz, %bb.ik ], [ %i.abw, %bb.it ], [ %i.axg, %bb.qa ], [ %i.axw, %bb.qr ], [ %i.wj, %bb.ei ], [ %i.wr, %bb.ep ], [ %i.xf, %bb.fe ], [ %i.xn, %bb.fl ], [ %i.xv, %bb.fs ], [ %i.yj, %bb.gd ], [ %i.yt, %bb.gk ], [ %i.zg, %bb.gz ], [ %i.zr, %bb.hk ], [ %eh.lpad-body.i, %.body.i ], [ %i.aaj, %bb.hx ], [ %i.aas, %bb.ig ], [ %i.abp, %bb.ip ], [ %i.abx, %bb.iw ], [ %i.axm, %bb.qf ], [ %i.axx, %bb.qu ], [ %i.aym, %bb.rc ], [ %.pn1661873, %.thread1870 ], [ %i.awp, %bb.pt ], [ %i.axc, %bb.px ], [ %i.avm, %bb.pa ], [ %i.awk, %bb.pn ], [ %lpad.thr_comm.split-lp2241, %.body268 ], [ %i.apy, %bb.nj ], [ %lpad.thr_comm.split-lp2187, %.body242 ], [ %i.aiy, %bb.lk ], [ %lpad.thr_comm.split-lp2133, %.body252 ], [ %i.adu, %bb.jq ], [ %lpad.thr_comm.split-lp2079, %.body180 ], [ %lpad.thr_comm.split-lp2114, %.body178 ], [ %i.age, %bb.km ], [ %lpad.thr_comm.split-lp2168, %.body249 ], [ %i.ama, %bb.mh ], [ %lpad.thr_comm.split-lp2222, %.body240 ], [ %i.atl, %bb.oi ], [ %i.awk, %bb.pm ], [ %i.awp, %bb.ps ], [ %i.axc, %bb.pw ], [ %i.axh, %bb.qc ], [ %i.jw, %bb.as ], [ %i.kw, %bb.az ], [ %i.ky, %bb.bc ], [ %i.mk, %bb.bk ], [ %i.mk, %bb.bl ], [ %i.mr, %bb.bt ], [ %i.mt, %bb.bw ], [ %i.nh, %bb.cb ], [ %i.nv, %bb.cg ], [ %i.uz, %bb.dq ], [ %i.vb, %bb.dt ], [ %i.vb, %bb.ds ] ; 2 uses
  %.sroa.064.2 = phi i1 [ false, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i297 ], [ true, %bb.rg ], [ true, %bb.dy ], [ false, %bb.h ], [ %i.gg, %bb.n ], [ false, %bb.q ], [ true, %bb.al ], [ true, %bb.am ], [ true, %bb.rj ], [ true, %bb.ej ], [ true, %bb.qy ], [ true, %bb.eq ], [ true, %bb.ja ], [ true, %bb.iq ], [ true, %bb.ih ], [ true, %bb.rd ], [ true, %bb.qv ], [ true, %bb.ft ], [ true, %bb.fm ], [ true, %bb.hw ], [ true, %bb.qg ], [ true, %bb.ff ], [ true, %bb.go ], [ true, %bb.pq ], [ true, %bb.qj ], [ true, %bb.qn ], [ true, %bb.ge ], [ true, %bb.gl ], [ true, %bb.ho ], [ true, %bb.ix ], [ true, %bb.kx ], [ true, %bb.jf ], [ true, %bb.ha ], [ true, %bb.hl ], [ true, %bb.mu ], [ true, %bb.hd ], [ true, %bb.et ], [ true, %bb.ex ], [ true, %bb.gs ], [ true, %bb.pi ], [ true, %bb.fw ], [ true, %bb.qd ], [ true, %bb.ar ], [ true, %bb.ay ], [ true, %bb.bb ], [ true, %bb.bn ], [ true, %bb.bs ], [ true, %bb.bv ], [ true, %bb.ca ], [ true, %bb.cf ], [ true, %bb.dp ], [ true, %bb.eb ], [ true, %bb.ef ], [ true, %bb.em ], [ true, %bb.fb ], [ true, %bb.fi ], [ true, %bb.fp ], [ true, %bb.ga ], [ true, %bb.gh ], [ true, %bb.gw ], [ true, %bb.hh ], [ true, %bb.hs ], [ true, %bb.id ], [ true, %bb.ik ], [ true, %bb.it ], [ true, %bb.qa ], [ true, %bb.qr ], [ true, %bb.ei ], [ true, %bb.ep ], [ true, %bb.fe ], [ true, %bb.fl ], [ true, %bb.fs ], [ true, %bb.gd ], [ true, %bb.gk ], [ true, %bb.gz ], [ true, %bb.hk ], [ true, %.body.i ], [ true, %bb.hx ], [ true, %bb.ig ], [ true, %bb.ip ], [ true, %bb.iw ], [ true, %bb.qf ], [ true, %bb.qu ], [ true, %bb.rc ], [ true, %.thread1870 ], [ true, %bb.pt ], [ true, %bb.px ], [ true, %bb.pa ], [ true, %bb.pn ], [ true, %.body268 ], [ true, %bb.nj ], [ true, %.body242 ], [ true, %bb.lk ], [ true, %.body252 ], [ true, %bb.jq ], [ true, %.body180 ], [ true, %.body178 ], [ true, %bb.km ], [ true, %.body249 ], [ true, %bb.mh ], [ true, %.body240 ], [ true, %bb.oi ], [ true, %bb.pm ], [ true, %bb.ps ], [ true, %bb.pw ], [ true, %bb.qc ], [ true, %bb.as ], [ true, %bb.az ], [ true, %bb.bc ], [ true, %bb.bk ], [ true, %bb.bl ], [ true, %bb.bt ], [ true, %bb.bw ], [ true, %bb.cb ], [ true, %bb.cg ], [ true, %bb.dq ], [ true, %bb.dt ], [ true, %bb.ds ]
  %.val290 = load i64, ptr %i.ck, align 8         ; 2 uses
  %i.ge = icmp eq i64 %.val290, 0
  br i1 %i.ge, label %bb.c, label %bb.m

bb.m:                                             ; preds = %.body295
  %.val291 = load ptr, ptr %i.cs, align 8, !nonnull !21, !noundef !21
  %i.gf = shl nuw i64 %.val290, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val291, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %bb.c

bb.n:                                             ; preds = %.invoke8810, %.invoke, %._crit_edge.i311.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread
  %i.gg = phi i1 [ true, %._crit_edge.i311.invoke ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread ], [ true, %.invoke ], [ true, %.invoke8810 ]
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body295

._crit_edge.i:                                    ; preds = %bb.e, %bb.g
  %.sroa.410.0.copyload.i = phi ptr [ %i.fy, %bb.g ], [ %.sroa.5.0.copyload, %bb.e ] ; 3 uses
  %i.gi = icmp ult i64 %.sroa.7.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp eq i64 %.sroa.7.0.copyload, 4936
  br i1 %i.gj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %.not = icmp eq ptr %.sroa.410.0.copyload.i, null
  %i.gk = inttoptr i64 %.sroa.7.0.copyload to ptr
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread1830
  %.sroa.01654.01836 = phi ptr [ inttoptr (i64 8 to ptr), %.thread1830 ], [ %.sroa.410.0.copyload.i, %bb.o ] ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2e_4SyncEL_EEB1k_(ptr noalias nofree noundef nonnull align 8 %.sroa.01654.01836, i64 noundef %.sroa.7.0.copyload)
          to label %bb.r unwind label %bb.q, !noalias !17952

bb.q:                                             ; preds = %bb.p
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.gm, label %.body295, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i297

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i297: ; preds = %bb.q
  %i.gn = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01654.01836, i64 noundef %i.gn, i64 noundef 8) #41, !noalias !17952
  br label %.body295

bb.r:                                             ; preds = %bb.p
  %i.go = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.go, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.r
  %i.gp = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01654.01836, i64 noundef %i.gp, i64 noundef 8) #41, !noalias !17952
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit: ; preds = %._crit_edge.i, %bb.o
  %.sroa.049.01829 = phi ptr [ %.sroa.410.0.copyload.i, %._crit_edge.i ], [ %i.gk, %bb.o ] ; 2 uses
  %.not149 = icmp eq ptr %.sroa.049.01829, null
  br i1 %.not149, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread, label %bb.s, !prof !33

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit
  %.val = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.gq = icmp eq i64 %.val, 0
  br i1 %i.gq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit300, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val289 = load ptr, ptr %i.cs, align 8, !nonnull !21, !noundef !21
  %i.gr = shl nuw i64 %.val, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val289, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 8) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit300

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread: ; preds = %bb.r, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11056) #46
          to label %bb.u unwind label %bb.n

bb.u:                                             ; preds = %bb.nx, %bb.nw, %bb.ly, %bb.lx, %bb.kf, %bb.ke, %bb.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxAIBY_DNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info9InstrInfoNtNtB4_6marker4SendNtB2E_4SyncEL_Ej1348_EIBY_SB1x_EEEB1K_.exit.thread
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsf8MNnN4IDbl_8iced_x86.exit300: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  ret ptr %.sroa.049.01829

bb.v:                                             ; preds = %bb.l
  %i.gs = getelementptr inbounds nuw i8, ptr @11098, i64 %.sroa.120.04552
  %i.gt = load i8, ptr %i.gs, align 1, !noalias !17953, !noundef !21 ; 2 uses
  %i.gu = add nuw nsw i64 %.sroa.120.04552, 1     ; 2 uses
  %i.gv = and i8 %i.gt, 127                       ; 2 uses
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.y
  %.sroa.120.1 = phi i64 [ %i.hd, %bb.y ], [ %i.gu, %bb.v ] ; 3 uses
  %.sroa.02.0 = phi i64 [ %i.gu, %bb.y ], [ -1, %bb.v ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.04554, %bb.y ], [ %.sroa.120.04552, %bb.v ]
  %i.gx = phi i8 [ %i.he, %bb.y ], [ %i.gv, %bb.v ]
  %i.gy = icmp sgt i8 %i.gt, -1
  %i.gz = icmp samesign ult i64 %.sroa.120.1, 10870 ; 2 uses
  br i1 %i.gy, label %bb.z, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.ha = icmp ult i64 %.sroa.0.04554, 10870
  br i1 %i.ha, label %bb.y, label %._crit_edge.i311.invoke

bb.y:                                             ; preds = %bb.x
  %i.hb = getelementptr inbounds nuw i8, ptr @11098, i64 %.sroa.0.04554
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !17954, !noundef !21
  %i.hd = add nuw nsw i64 %.sroa.0.04554, 1
  %i.he = and i8 %i.hc, 127                       ; 2 uses
  %i.hf = icmp samesign ult i8 %i.he, 40
  call void @llvm.assume(i1 %i.hf)
  br label %bb.w

bb.z:                                             ; preds = %bb.w
  br i1 %i.gz, label %.lr.ph.i, label %._crit_edge.i311.invoke

.lr.ph.i:                                         ; preds = %bb.z, %bb.aa
  %.sroa.0.013.i = phi i32 [ %i.hp, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.sroa.02.012.i = phi i32 [ %i.hq, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.hg = phi i64 [ %i.hj, %bb.aa ], [ %.sroa.120.1, %bb.z ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr @11098, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !noalias !17955, !noundef !21 ; 2 uses
  %i.hj = add nuw nsw i64 %i.hg, 1                ; 4 uses
  %i.hk = zext i8 %i.hi to i32                    ; 2 uses
  %i.hl = icmp sgt i8 %i.hi, -1
  br i1 %i.hl, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.hm = and i32 %i.hk, 127
  %i.hn = and i32 %.sroa.02.012.i, 31
  %i.ho = shl i32 %i.hm, %i.hn
  %i.hp = or i32 %i.ho, %.sroa.0.013.i
  %i.hq = add nuw nsw i32 %.sroa.02.012.i, 7
  %exitcond.not.i = icmp eq i64 %i.hj, 10870
  br i1 %exitcond.not.i, label %._crit_edge.i311.invoke, label %.lr.ph.i

bb.ab:                                            ; preds = %bb.w
  br i1 %i.gz, label %.lr.ph.i307, label %._crit_edge.i311.invoke

.lr.ph.i307:                                      ; preds = %bb.ab, %bb.ac
  %.sroa.0.013.i308 = phi i32 [ %i.ib, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.02.012.i309 = phi i32 [ %i.ic, %bb.ac ], [ 0, %bb.ab ] ; 3 uses
  %i.hr = phi i64 [ %i.hu, %bb.ac ], [ %.sroa.120.1, %bb.ab ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr @11098, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !noalias !17956, !noundef !21 ; 2 uses
  %i.hu = add nuw nsw i64 %i.hr, 1                ; 3 uses
  %i.hv = zext i8 %i.ht to i32                    ; 2 uses
  %i.hw = icmp sgt i8 %i.ht, -1
  br i1 %i.hw, label %bb.ah, label %bb.ac

._crit_edge.i311.invoke:                          ; preds = %bb.l, %bb.ab, %bb.z, %bb.x, %bb.ac, %bb.aa
  %i.hx = phi i64 [ 10870, %bb.ac ], [ 10870, %bb.aa ], [ -1, %bb.x ], [ 10870, %bb.z ], [ 10870, %bb.ab ], [ %.sroa.120.04552, %bb.l ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hx, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i311.cont unwind label %bb.n

._crit_edge.i311.cont:                            ; preds = %._crit_edge.i311.invoke
  unreachable

bb.ac:                                            ; preds = %.lr.ph.i307
  %i.hy = and i32 %i.hv, 127
  %i.hz = and i32 %.sroa.02.012.i309, 31
  %i.ia = shl i32 %i.hy, %i.hz
  %i.ib = or i32 %i.ia, %.sroa.0.013.i308
  %i.ic = add nuw nsw i32 %.sroa.02.012.i309, 7
  %exitcond.not.i310 = icmp eq i64 %i.hu, 10870
  br i1 %exitcond.not.i310, label %._crit_edge.i311.invoke, label %.lr.ph.i307

bb.ad:                                            ; preds = %.lr.ph.i
  %i.id = and i32 %.sroa.02.012.i, 31
  %i.ie = shl i32 %i.hk, %i.id
  %i.if = or i32 %i.ie, %.sroa.0.013.i
  %i.ig = zext i32 %i.if to i64                   ; 3 uses
  %i.ih = load i64, ptr %i.cr, align 8, !noundef !21 ; 4 uses
  %i.ii = icmp ugt i64 %i.ih, %i.ig
  br i1 %i.ii, label %bb.ae, label %.invoke8810

bb.ae:                                            ; preds = %bb.ad
  %i.ij = load ptr, ptr %i.cs, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %i.ig ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !nonnull !21, !noundef !21
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = load i64, ptr %i.im, align 8, !noundef !21 ; 8 uses
  %.not.i = icmp slt i64 %i.in, 0
  br i1 %.not.i, label %.invoke, label %bb.af, !prof !37

bb.af:                                            ; preds = %bb.ae
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit315.thread1843, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.af
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17957
  %i.ip = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.in, i64 noundef range(i64 1, 9) 1) #41, !noalias !17957 ; 3 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr nonnull align 1 %i.il, i64 %i.in, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit315.thread1843

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit315.thread1843: ; preds = %bb.af, %bb.ag, %bb.an
  %i.ir = phi ptr [ %i.iz, %bb.an ], [ %i.ij, %bb.ag ], [ %i.ij, %bb.af ] ; 10 uses
  %i.is = phi i64 [ %i.ix, %bb.an ], [ %i.ih, %bb.ag ], [ %i.ih, %bb.af ] ; 14 uses
  %.sroa.46.0 = phi i64 [ %.pre-phi, %bb.an ], [ %i.in, %bb.ag ], [ 0, %bb.af ] ; 67 uses
  %.sroa.44.0 = phi ptr [ %.sroa.44.0.copyload, %bb.an ], [ %i.ip, %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.af ] ; 129 uses
  %.sroa.01285.0 = phi i64 [ %.sroa.01285.0.copyload, %bb.an ], [ %i.in, %bb.ag ], [ 0, %bb.af ] ; 101 uses
  %.sroa.120.2 = phi i64 [ %i.hu, %bb.an ], [ %i.hj, %bb.ag ], [ %i.hj, %bb.af ] ; 102 uses
  switch i8 %i.gx, label %bb.ao [
    i8 0, label %bb.ap
    i8 1, label %bb.aq
    i8 2, label %bb.at
    i8 3, label %bb.av
    i8 4, label %bb.ax
    i8 5, label %bb.ba
    i8 6, label %bb.bd
    i8 7, label %bb.bf
    i8 8, label %bb.bh
    i8 9, label %bb.bj
    i8 10, label %bb.bp
    i8 11, label %bb.bq
    i8 12, label %bb.br
    i8 13, label %bb.bu
    i8 14, label %bb.bx
    i8 15, label %bb.bz
    i8 16, label %bb.cc
    i8 17, label %bb.ce
    i8 18, label %bb.ch
    i8 19, label %bb.cj
    i8 20, label %bb.cl
    i8 21, label %bb.cn
    i8 22, label %bb.cp
    i8 23, label %bb.cr
    i8 24, label %bb.ct
    i8 25, label %bb.cv
    i8 26, label %bb.cx
    i8 27, label %bb.cz
    i8 28, label %bb.db
    i8 29, label %bb.dd
    i8 30, label %bb.df
    i8 31, label %bb.dh
    i8 32, label %bb.dj
    i8 33, label %bb.dl
    i8 34, label %bb.dm
    i8 35, label %bb.dn
    i8 36, label %bb.do
    i8 37, label %bb.dr
    i8 38, label %bb.du
    i8 39, label %bb.dw
  ], !prof !17958

bb.ah:                                            ; preds = %.lr.ph.i307
  %i.it = and i32 %.sroa.02.012.i309, 31
  %i.iu = shl i32 %i.hv, %i.it
  %i.iv = or i32 %i.iu, %.sroa.0.013.i308
  %i.iw = zext i32 %i.iv to i64                   ; 3 uses
  %i.ix = load i64, ptr %i.cr, align 8, !noundef !21 ; 3 uses
  %i.iy = icmp ugt i64 %i.ix, %i.iw
  br i1 %i.iy, label %bb.ai, label %.invoke8810

bb.ai:                                            ; preds = %bb.ah
  %i.iz = load ptr, ptr %i.cs, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.iw ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !nonnull !21, !noundef !21
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !noundef !21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.je = add i64 %i.jd, 1                        ; 7 uses
  %.not.i316 = icmp slt i64 %i.je, 0
  br i1 %.not.i316, label %.invoke, label %bb.aj, !prof !37

bb.aj:                                            ; preds = %bb.ai
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %bb.ak, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i317

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i317: ; preds = %bb.aj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17959
  %i.jg = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.je, i64 noundef range(i64 1, 9) 1) #41, !noalias !17959 ; 5 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %.invoke, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.i

.invoke8810:                                      ; preds = %bb.ah, %bb.ad
  %i.ji = phi i64 [ %i.ig, %bb.ad ], [ %i.iw, %bb.ah ]
  %i.jj = phi i64 [ %i.ih, %bb.ad ], [ %i.ix, %bb.ah ]
  %i.jk = phi ptr [ @11057, %bb.ad ], [ @11058, %bb.ah ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ji, i64 noundef %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk) #46
          to label %.cont8811 unwind label %bb.n

.cont8811:                                        ; preds = %.invoke8810
  unreachable

.invoke:                                          ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i317, %bb.ai, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i, %bb.ae
  %i.jl = phi i64 [ 0, %bb.ae ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i317 ], [ 0, %bb.ai ]
  %i.jm = phi i64 [ %i.in, %bb.ae ], [ %i.in, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ %i.je, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i317 ], [ %i.je, %bb.ai ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.jl, i64 %i.jm) #46
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj
  store i64 0, ptr %i.cj, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cj, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.thread6848 unwind label %bb.al

bb.al:                                            ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i, %bb.ak
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17960)
  %.val.i321 = load i64, ptr %i.cj, align 8, !alias.scope !17960 ; 2 uses
  %i.jo = icmp eq i64 %.val.i321, 0
  br i1 %i.jo, label %.body295, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val1.i = load ptr, ptr %.sroa.468.0..sroa_idx, align 8, !alias.scope !17960, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i321, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17960
  br label %.body295

.thread6848:                                      ; preds = %bb.ak
  %.pre = load ptr, ptr %.sroa.468.0..sroa_idx, align 8, !alias.scope !17961 ; 2 uses
  %.pre6632 = load i64, ptr %i.cj, align 8, !alias.scope !17962
  store i8 118, ptr %.pre, align 1, !noalias !17961
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !17961
end_hunk_13
