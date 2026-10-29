Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.14?download=true
inline.NumInlined: 8054
inline.NumDeleted: 3226
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1b_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEEB2c_4nextCs14kWLkQVSKO_14deltalake_core:.peel.begin
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !46, !invariant.load !28, !noalias !14729
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #51, !noalias !14729
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit8:                                       ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit8
  %.val.i.i.lcssa = phi ptr [ %.val.i.i, %.loopexit8 ], [ %.val.i.i.peel, %.loopexit.split-lp ]
  %.val4.i.i.lcssa = phi ptr [ %.val4.i.i, %.loopexit8 ], [ %.val4.i.i.peel, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit8 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4.i.i.lcssa, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !44, !invariant.load !28, !noalias !14729 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4.i.i.lcssa, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !46, !invariant.load !28, !noalias !14729
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.lcssa, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #51, !noalias !14729
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.c, align 8, !alias.scope !14726
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.b) #52
          to label %common.resume.i unwind label %bb.o, !noalias !14729

bb.o:                                             ; preds = %.body.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !14729
  unreachable

common.resume.i:                                  ; preds = %.body.i13.i, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ay, %.body.i13.i ], [ %lpad.phi, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  %.lcssa = phi i64 [ %i.h, %bb.a ], [ %i.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.7.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx29.i, i64 88, i1 false), !noalias !14725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14734
  store i64 %.lcssa, ptr %0, align 16, !alias.scope !14724
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEB1Z_EB2j_4nextCs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.h, %bb.k, %bb.l
  store ptr null, ptr %i.c, align 8, !alias.scope !14726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14734
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !14735, !noundef !28
  %.not.i7.i = icmp eq ptr %i.aj, null
  br i1 %.not.i7.i, label %.loopexit9, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ak = load ptr, ptr %i.e, align 8, !alias.scope !14736, !nonnull !28, !noundef !28
  %i.al = load ptr, ptr %i.f, align 8, !alias.scope !14736, !nonnull !28, !noundef !28 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ak
  br i1 %i.am, label %.loopexit9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, !llvm.loop !14720

.loopexit9:                                       ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.peel
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14738)
  call void @llvm.experimental.noalias.scope.decl(metadata !14739)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14740
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !14741, !noundef !28
  %.not.i8.i = icmp eq ptr %i.ao, null
  br i1 %.not.i8.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit9
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an), !noalias !14742
  %i.ap = load i64, ptr %i.a, align 16, !range !47, !noalias !14740, !noundef !28
  %.not3.i9.i = icmp eq i64 %i.ap, -9223372036854775742
  br i1 %.not3.i9.i, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.loopexit9
  store i64 -9223372036854775742, ptr %0, align 16, !alias.scope !14742
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EB2k_NvYB16_B1G_4nextECs14kWLkQVSKO_14deltalake_core.exit15.i

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i14.i, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !14741
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EB2k_NvYB16_B1G_4nextECs14kWLkQVSKO_14deltalake_core.exit15.i

bb.t:                                             ; preds = %bb.q
  %.val.i10.i = load ptr, ptr %i.an, align 8, !alias.scope !14741, !noundef !28 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val4.i11.i = load ptr, ptr %i.aq, align 8, !alias.scope !14741 ; 6 uses
  %i.ar = icmp eq ptr %.val.i10.i, null
  br i1 %i.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i14.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i11.i) ]
  %i.as = load ptr, ptr %.val4.i11.i, align 8, !invariant.load !28, !noalias !14742 ; 2 uses
  %.not.i.i.i12.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i12.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.as(ptr noundef nonnull %.val.i10.i)
          to label %bb.w unwind label %bb.y, !noalias !14742

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %.val4.i11.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !44, !invariant.load !28, !noalias !14742 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i14.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4.i11.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !46, !invariant.load !28, !noalias !14742
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #51, !noalias !14742
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i14.i

bb.y:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %.val4.i11.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !44, !invariant.load !28, !noalias !14742 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.body.i13.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %.val4.i11.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !46, !invariant.load !28, !noalias !14742
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i, i64 noundef range(i64 1, 0) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #51, !noalias !14742
  br label %.body.i13.i

.body.i13.i:                                      ; preds = %bb.z, %bb.y
  store ptr null, ptr %i.an, align 8, !alias.scope !14741
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.a) #52
          to label %common.resume.i unwind label %bb.aa, !noalias !14742

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i14.i: ; preds = %bb.x, %bb.w, %bb.t
  store ptr null, ptr %i.an, align 8, !alias.scope !14741
  br label %bb.s

bb.aa:                                            ; preds = %.body.i13.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !14742
  unreachable

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EB2k_NvYB16_B1G_4nextECs14kWLkQVSKO_14deltalake_core.exit15.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14740
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEB1Z_EB2j_4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEB1Z_EB2j_4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.loopexit, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EB2k_NvYB16_B1G_4nextECs14kWLkQVSKO_14deltalake_core.exit15.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1b_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEEB2c_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14751)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14752
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !14751, !noundef !28
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.c), !noalias !14753
  %.pre.i = load i64, ptr %i.b, align 8, !noalias !14752
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre73.i = load i64, ptr %.phi.trans.insert.i, align 8, !range !29, !noalias !14752
  %.phi.trans.insert74.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre75.i = load i64, ptr %.phi.trans.insert74.i, align 8, !noalias !14752
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre75.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %.pre73.i, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14752
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !14751, !noundef !28
  %.not54.i = icmp eq ptr %i.i, null
  br i1 %.not54.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.h), !noalias !14754
  %.pre76.i = load i64, ptr %i.a, align 8, !noalias !14752
  %.phi.trans.insert77.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre78.i = load i64, ptr %.phi.trans.insert77.i, align 8, !range !29, !noalias !14752
  %.phi.trans.insert79.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre80.i = load i64, ptr %.phi.trans.insert79.i, align 8, !noalias !14752
  %i.j = call i64 @llvm.uadd.sat.i64(i64 %i.g, i64 %.pre76.i)
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i: ; preds = %bb.c, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.k = phi i64 [ %.pre80.i, %bb.c ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.fr2 = phi i64 [ %.pre78.i, %bb.c ], [ 1, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.l = phi i64 [ %i.j, %bb.c ], [ %i.g, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14752
  %i.m = load ptr, ptr %1, align 8, !alias.scope !14751, !noundef !28
  %.not55.i = icmp eq ptr %i.m, null
  br i1 %.not55.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !14751, !nonnull !28, !noundef !28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val62.i = load ptr, ptr %i.o, align 8, !alias.scope !14751, !nonnull !28, !noundef !28
  %i.p = icmp eq ptr %.val62.i, %.val.i
  %i.q = trunc nuw i64 %i.f to i1
  %i.r = trunc nuw i64 %.fr2 to i1
  %op.rdx = select i1 %i.p, i1 %i.q, i1 false
  %op.rdx1 = select i1 %op.rdx, i1 %i.r, i1 false
  br i1 %op.rdx1, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECs14kWLkQVSKO_14deltalake_core.exit63.i
  %i.s = and i64 %.fr2, %i.f
  %or.cond56.not.i = icmp eq i64 %i.s, 0
  br i1 %or.cond56.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.l, ptr %0, align 8, !alias.scope !14750
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEB1Z_EB2j_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.t = add i64 %i.k, %i.e                       ; 2 uses
  %i.u = icmp uge i64 %i.t, %i.e
  %.57.i = zext i1 %i.u to i64
  store i64 %i.l, ptr %0, align 8, !alias.scope !14750
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.57.i, ptr %i.v, align 8, !alias.scope !14750
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEB1Z_EB2j_9size_hintCs14kWLkQVSKO_14deltalake_core.exit

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1i_5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EEB1Z_EB2j_9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.g
  %.sink82.i = phi i64 [ 16, %bb.g ], [ 8, %bb.f ]
  %.sink.i = phi i64 [ %i.t, %bb.g ], [ 0, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sink82.i
  store i64 %.sink.i, ptr %i.w, align 8, !alias.scope !14750
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs9a_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !36, !noundef !28 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !range !36, !noundef !28 ; 2 uses
  %.not = icmp eq i64 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.c [
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call i8 @llvm.scmp.i8.i64(i64 %i.a, i64 %i.b)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i8 [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ %i.i, %bb.e ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs9e_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !95, !noundef !28
  %i.b = icmp eq i64 %i.a, 69                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !95, !noundef !28
  %i.d = icmp eq i64 %i.c, 69                     ; 2 uses
  %or.cond = or i1 %i.b, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.neg = sext i1 %i.d to i8
  %i.e = zext i1 %i.b to i8
  %i.f = add nsw i8 %.neg, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs9o_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CaseStatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1232) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1232) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !95, !noundef !28
  %.not = icmp eq i64 %i.a, 69
  %i.b = load i64, ptr %1, align 8, !range !95, !noundef !28
  %.not16 = icmp eq i64 %i.b, 69                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not16, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.t

bb.c:                                             ; preds = %bb.a
  br i1 %.not16, label %bb.d, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.t
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.j = load i64, ptr %i.i, align 8, !noundef !28 ; 3 uses
  %.sroa.0.0.i25 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 13101380734168716) %i.j, i64 range(i64 0, 13101380734168716) %i.f) ; 2 uses
  %exitcond.not55 = icmp eq i64 %.sroa.0.0.i25, 0
  br i1 %exitcond.not55, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph58

bb.e:                                             ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit
  %exitcond.not = icmp eq i64 %i.k, %.sroa.0.0.i25
  br i1 %exitcond.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.d, %bb.e
  %.sroa.01.0.i56 = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.k = add nuw i64 %.sroa.01.0.i56, 1           ; 2 uses
  %i.l = getelementptr inbounds nuw [704 x i8], ptr %i.d, i64 %.sroa.01.0.i56 ; 8 uses
  %i.m = getelementptr inbounds nuw [704 x i8], ptr %i.h, i64 %.sroa.01.0.i56 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14773)
  %i.n = load i64, ptr %i.l, align 8, !range !95, !alias.scope !14774, !noundef !28
  %.not.i.i = icmp eq i64 %i.n, 69
  %i.o = load i64, ptr %i.m, align 8, !range !95, !alias.scope !14775, !noundef !28
  %.not12.i.i = icmp eq i64 %i.o, 69              ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph58
  br i1 %.not12.i.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.i

bb.g:                                             ; preds = %.lr.ph58
  br i1 %.not12.i.i, label %bb.h, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  %i.q = load i8, ptr %i.p, align 8, !range !137, !alias.scope !14774, !noundef !28
  %.not14.i.i = icmp eq i8 %i.q, 103
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 616
  %i.s = load i8, ptr %i.r, align 8, !range !137, !alias.scope !14775, !noundef !28
  %.not15.i.i = icmp eq i8 %i.s, 103              ; 2 uses
  br i1 %.not14.i.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.t = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %i.m) #55, !inline_history !18 ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.h, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.h
  br i1 %.not15.i.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.l

bb.k:                                             ; preds = %bb.h
  br i1 %.not15.i.i, label %bb.l, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2V_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14777)
  %i.x = load i64, ptr %i.v, align 8, !range !30, !alias.scope !14776, !noundef !28
  %i.y = icmp ne i64 %i.x, -9223372036854775808   ; 2 uses
  %i.z = zext i1 %i.y to i8
  %i.aa = load i64, ptr %i.w, align 8, !range !30, !alias.scope !14777, !noundef !28
  %i.ab = icmp ne i64 %i.aa, -9223372036854775808 ; 3 uses
  %.neg.i = sext i1 %i.ab to i8
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.r, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ac = add nsw i8 %.neg.i, %i.z
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 344
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !14776, !nonnull !28, !noundef !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 352
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !14776, !noundef !28 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !14777, !nonnull !28, !noundef !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !14777, !noundef !28 ; 2 uses
  %.sroa.0.0.i2.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 3431314001806093) %i.ak, i64 range(i64 0, 3431314001806093) %i.ag) ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %.sroa.0.0.i2.i, 0
  br i1 %exitcond.not.i49, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %i.al = add nuw i64 %.sroa.01.0.i.i50, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.sroa.0.0.i2.i
end_hunk_0
