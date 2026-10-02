Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.04?download=true
inline.NumInlined: 865
inline.NumDeleted: 363
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep:bb.a
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [56 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -48
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !1545 ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -40
  %.val5.i.i = load i64, ptr %i.x, align 8, !noalias !1545, !noundef !5 ; 4 uses
  %i.y = icmp eq i64 %.val5.i.i, 0
  br i1 %i.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECsbNLsQi0JuJ4_5tgrep.exit.i.i, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEE9next_implKb0_ECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.z = shl i64 %.val5.i.i, 2
  %i.aa = icmp slt i64 %.val5.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 16                       ; 2 uses
  %i.ad = add nsw i64 %.val5.i.i, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECsbNLsQi0JuJ4_5tgrep.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i
  %i.ai = sub nuw nsw i64 -16, %i.ab
  %i.aj = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ai
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #25, !noalias !1545
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECsbNLsQi0JuJ4_5tgrep.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.e, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEE9next_implKb0_ECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.ak = icmp eq i64 %i.v, 0
  br i1 %i.ak, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.b
  %i.al = mul i64 %i.b, 56
  %i.am = icmp slt i64 %i.b, 329406144173384850
  tail call void @llvm.assume(i1 %i.am)
  %i.an = and i64 %i.al, -16                      ; 2 uses
  %i.ao = add i64 %i.an, 64                       ; 2 uses
  %i.ap = add nsw i64 %i.b, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !1543, !nonnull !5, !noundef !5
  %i.av = sub i64 -64, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #25, !noalias !1543
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEEECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #25
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1556, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB1i_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1558, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1558, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1559
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCsgCecv3eZDcN_5alloc6string6StringEE9next_implKb0_ECsbNLsQi0JuJ4_5tgrep.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1560
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCsgCecv3eZDcN_5alloc6string6StringEE9next_implKb0_ECsbNLsQi0JuJ4_5tgrep.exit.i.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCsgCecv3eZDcN_5alloc6string6StringEE9next_implKb0_ECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.e, !noalias !1558

bb.e:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCsgCecv3eZDcN_5alloc6string6StringEE9next_implKb0_ECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i unwind label %bb.f, !noalias !1558

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !1558
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCsgCecv3eZDcN_5alloc6string6StringEE9next_implKb0_ECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1558
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB1i_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1556, !nonnull !5, !noundef !5
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #25, !noalias !1556
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB1i_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB1i_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1563
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufbEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %2 = icmp slt i64 %i.c, 576460752303423487
  tail call void @llvm.assume(i1 %2)
  %i.g = shl i64 %i.c, 5                          ; 2 uses
  %3 = add i64 %i.g, 32                           ; 2 uses
  %4 = add nsw i64 %i.c, 17
  %i.h = add i64 %4, %3                           ; 3 uses
  %5 = icmp uge i64 %i.h, %3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufbEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufbEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1566
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufuEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 24                         ; 2 uses
  %2 = add i64 %i.g, 24
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %4 = add i64 %i.h, 32                           ; 2 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %5 = icmp uge i64 %i.j, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.k = sub i64 -32, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufuEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufuEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1569
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 104                        ; 2 uses
  %2 = add i64 %i.g, 104
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %4 = add i64 %i.h, 112                          ; 2 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %5 = icmp uge i64 %i.j, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.k = sub i64 -112, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1572
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 40                         ; 2 uses
  %2 = add i64 %i.g, 40
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %4 = add i64 %i.h, 48                           ; 2 uses
  %i.i = add i64 %i.c, 17
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %5 = icmp uge i64 %i.j, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.k = sub i64 -48, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEE15into_allocationCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufbEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_bNtNtNtBZ_4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtBW_4hash6random11RandomStateE0Es_0CsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufbEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtNtBW_4hash6random11RandomStateE0Es_0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufjEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_jNtNtNtBZ_4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtBW_4hash6random11RandomStateE0Es_0CsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtBW_4hash6random11RandomStateE0Es_0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtB1C_3ops8function6FnOnceTOhEE9call_onceCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetjEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtB1G_4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTyyEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTyyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringTyyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BX_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceB1z_(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1582, !nonnull !5, !noundef !5
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1582
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1w_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1w_.exit

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTReINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1w_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtBU_4hash6random11RandomStateE0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECskrXG8MCksKX_11fancy_regex(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXCsgkkDPjMtGWv_3lruINtB3_6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtCs9tUge3wv4pz_9hashbrown6hasher13DefaultHasherECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 16 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjNtNtNtCs22empcGmRho_14regex_automata4meta5regex5RegexEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCs22empcGmRho_14regex_automata4meta5regex5RegexEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRRNtNtB9_4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRRRNtNtB9_4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRTReyEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRjECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCs5Xr050g3D4S_3std4path4PathINtB2_10EquivalentNtBs_7PathBufE10equivalentCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCs5Xr050g3D4S_3std4path7PathBufINtB2_10EquivalentBq_E10equivalentCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsgCecv3eZDcN_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentNtNtCsgCecv3eZDcN_5alloc6string6StringE10equivalentCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentReE10equivalentCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([17 x i8]) align 1 captures(none) dereferenceable(17), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyeECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyeECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyeECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbNLsQi0JuJ4_5tgrep(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr15memrchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE9drop_slowCs22empcGmRho_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { inlinehint }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { nounwind }
attributes #26 = { noinline noreturn }
attributes #27 = { noinline }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 8}
!8 = !{!"branch_weights", i32 1, i32 1999}
!9 = !{!"branch_weights", i32 0, i32 1}
!10 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!13 = !{!"branch_weights", i32 2002, i32 2000}
!14 = !{i32 -1, i32 1000000000}
!15 = !{i64 0, i64 -9223372036854775807}
!16 = distinct !{!16, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep"}
!17 = distinct !{!17, !16, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 0"}
!18 = distinct !{!18, !16, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 2"}
!19 = distinct !{!19, !16, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 1"}
!20 = distinct !{!20, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep"}
!21 = distinct !{!21, !20, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 0"}
!22 = distinct !{!22, !20, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 2"}
!23 = distinct !{!23, !20, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 1"}
!24 = distinct !{!24, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9tUge3wv4pz_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0EECsbNLsQi0JuJ4_5tgrep"}
!25 = distinct !{!25, !24, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9tUge3wv4pz_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0EECsbNLsQi0JuJ4_5tgrep: argument 0"}
!26 = distinct !{!26, !"_RNvXs1_NtCs9tUge3wv4pz_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!27 = distinct !{!27, !26, !"_RNvXs1_NtCs9tUge3wv4pz_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!28 = distinct !{!28, !"_RNCINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0CsbNLsQi0JuJ4_5tgrep"}
!29 = distinct !{!29, !28, !"_RNCINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0CsbNLsQi0JuJ4_5tgrep: argument 0"}
!30 = distinct !{!30, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtB1o_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B3n_"}
!31 = distinct !{!31, !30, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtB1o_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B3n_: argument 1"}
!32 = distinct !{!32, !30, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtB1o_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B3n_: argument 0"}
!33 = distinct !{!33, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!34 = distinct !{!34, !33, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 1"}
!35 = distinct !{!35, !"_RNCINvNtCs9tUge3wv4pz_9hashbrown3map11make_hasherINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBO_8LruEntryB1d_INtNtB1h_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtB6_6hasher18DefaultHashBuilderE0B3g_"}
!36 = distinct !{!36, !35, !"_RNCINvNtCs9tUge3wv4pz_9hashbrown3map11make_hasherINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBO_8LruEntryB1d_INtNtB1h_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtB6_6hasher18DefaultHashBuilderE0B3g_: argument 0"}
!37 = distinct !{!37, !33, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!38 = distinct !{!38, !"_RINvNtCs9tUge3wv4pz_9hashbrown3map9make_hashINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB4_6hasher18DefaultHashBuilderECsbNLsQi0JuJ4_5tgrep"}
!39 = distinct !{!39, !38, !"_RINvNtCs9tUge3wv4pz_9hashbrown3map9make_hashINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB4_6hasher18DefaultHashBuilderECsbNLsQi0JuJ4_5tgrep: argument 0"}
!40 = distinct !{!40, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!41 = distinct !{!41, !40, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!42 = distinct !{!42, !40, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 1"}
!43 = distinct !{!43, !"_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish"}
!44 = distinct !{!44, !43, !"_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish: argument 0"}
!45 = distinct !{!45, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!46 = distinct !{!46, !45, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!47 = distinct !{!47, !"_RNvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!48 = distinct !{!48, !47, !"_RNvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!49 = distinct !{!49, !47, !"_RNvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 1"}
!50 = distinct !{!50, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtB1o_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B3n_"}
!51 = distinct !{!51, !50, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtB1o_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B3n_: argument 1"}
!52 = distinct !{!52, !50, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtB1o_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B3n_: argument 0"}
!53 = distinct !{!53, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!54 = distinct !{!54, !53, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 1"}
!55 = distinct !{!55, !"_RNCINvNtCs9tUge3wv4pz_9hashbrown3map11make_hasherINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBO_8LruEntryB1d_INtNtB1h_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtB6_6hasher18DefaultHashBuilderE0B3g_"}
!56 = distinct !{!56, !55, !"_RNCINvNtCs9tUge3wv4pz_9hashbrown3map11make_hasherINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBO_8LruEntryB1d_INtNtB1h_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtB6_6hasher18DefaultHashBuilderE0B3g_: argument 0"}
!57 = distinct !{!57, !53, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!58 = distinct !{!58, !"_RINvNtCs9tUge3wv4pz_9hashbrown3map9make_hashINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB4_6hasher18DefaultHashBuilderECsbNLsQi0JuJ4_5tgrep"}
!59 = distinct !{!59, !58, !"_RINvNtCs9tUge3wv4pz_9hashbrown3map9make_hashINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB4_6hasher18DefaultHashBuilderECsbNLsQi0JuJ4_5tgrep: argument 0"}
!60 = distinct !{!60, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!61 = distinct !{!61, !60, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!62 = distinct !{!62, !60, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 1"}
!63 = distinct !{!63, !"_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish"}
!64 = distinct !{!64, !63, !"_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish: argument 0"}
!65 = distinct !{!65, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!66 = distinct !{!66, !65, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!67 = !{!17}
!68 = !{!19, !18}
!69 = !{!21}
!70 = !{!21, !23, !22, !17, !19, !18}
!71 = !{!22, !18}
!72 = !{!21, !17}
!73 = !{!23, !22, !19, !18}
!74 = !{!25}
!75 = !{!27}
!76 = !{!27, !25}
!77 = !{!29}
!78 = !{!29, !27, !25}
!79 = !{!29, !27, !25, !22, !18}
!80 = !{!31}
!81 = !{!32, !22, !18}
!82 = !{!34}
!83 = !{!37, !36, !32, !31, !22, !18}
!84 = !{!39, !36, !32, !31, !22, !18}
!85 = !{!41}
!86 = !{!42, !39, !36, !32, !31, !22, !18}
!87 = !{!44}
!88 = !{!44, !32, !31, !22, !18}
!89 = !{!46}
!90 = !{!48}
!91 = !{!48, !49, !19}
!92 = !{!49, !19}
!93 = !{!51}
!94 = !{!52, !49, !19}
!95 = !{!54}
!96 = !{!57, !56, !52, !51, !49, !19}
!97 = !{!59, !56, !52, !51, !49, !19}
!98 = !{!61}
!99 = !{!62, !59, !56, !52, !51, !49, !19}
!100 = !{!64}
!101 = !{!64, !52, !51, !49, !19}
!102 = !{!66}
!103 = !{!17, !19, !18}
!104 = distinct !{!104, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep"}
!105 = distinct !{!105, !104, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 0"}
!106 = distinct !{!106, !104, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 2"}
!107 = distinct !{!107, !104, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 1"}
!108 = distinct !{!108, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep"}
!109 = distinct !{!109, !108, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 0"}
!110 = distinct !{!110, !108, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 2"}
!111 = distinct !{!111, !108, !"_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalECsbNLsQi0JuJ4_5tgrep: argument 1"}
!112 = distinct !{!112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9tUge3wv4pz_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0EECsbNLsQi0JuJ4_5tgrep"}
!113 = distinct !{!113, !112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9tUge3wv4pz_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0EECsbNLsQi0JuJ4_5tgrep: argument 0"}
!114 = distinct !{!114, !"_RNvXs1_NtCs9tUge3wv4pz_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!115 = distinct !{!115, !114, !"_RNvXs1_NtCs9tUge3wv4pz_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!116 = distinct !{!116, !"_RNCINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0CsbNLsQi0JuJ4_5tgrep"}
!117 = distinct !{!117, !116, !"_RNCINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalE0CsbNLsQi0JuJ4_5tgrep: argument 0"}
!118 = distinct !{!118, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B35_"}
!119 = distinct !{!119, !118, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B35_: argument 1"}
!120 = distinct !{!120, !118, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B35_: argument 0"}
!121 = distinct !{!121, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!122 = distinct !{!122, !121, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 1"}
!123 = distinct !{!123, !"_RNCINvNtCs9tUge3wv4pz_9hashbrown3map11make_hasherINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBO_8LruEntryB1d_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEENtNtB6_6hasher18DefaultHashBuilderE0B2Y_"}
!124 = distinct !{!124, !123, !"_RNCINvNtCs9tUge3wv4pz_9hashbrown3map11make_hasherINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBO_8LruEntryB1d_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEENtNtB6_6hasher18DefaultHashBuilderE0B2Y_: argument 0"}
!125 = distinct !{!125, !121, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!126 = distinct !{!126, !"_RINvNtCs9tUge3wv4pz_9hashbrown3map9make_hashINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB4_6hasher18DefaultHashBuilderECsbNLsQi0JuJ4_5tgrep"}
!127 = distinct !{!127, !126, !"_RINvNtCs9tUge3wv4pz_9hashbrown3map9make_hashINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB4_6hasher18DefaultHashBuilderECsbNLsQi0JuJ4_5tgrep: argument 0"}
!128 = distinct !{!128, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!129 = distinct !{!129, !128, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!130 = distinct !{!130, !128, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 1"}
!131 = distinct !{!131, !"_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish"}
!132 = distinct !{!132, !131, !"_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish: argument 0"}
!133 = distinct !{!133, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!134 = distinct !{!134, !133, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!135 = distinct !{!135, !"_RNvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!136 = distinct !{!136, !135, !"_RNvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!137 = distinct !{!137, !135, !"_RNvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 1"}
!138 = distinct !{!138, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B35_"}
!139 = distinct !{!139, !138, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B35_: argument 1"}
!140 = distinct !{!140, !138, !"_RNCINvMs6_NtCs9tUge3wv4pz_9hashbrown3rawINtB8_8RawTableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1X_NtNtBa_6hasher18DefaultHashBuilderE0E0B35_: argument 0"}
!141 = distinct !{!141, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!142 = distinct !{!142, !141, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 1"}
!143 = distinct !{!143, !"_RNCINvNtCs9tUge3wv4pz_9hashbrown3map11make_hasherINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBO_8LruEntryB1d_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEENtNtB6_6hasher18DefaultHashBuilderE0B2Y_"}
!144 = distinct !{!144, !143, !"_RNCINvNtCs9tUge3wv4pz_9hashbrown3map11make_hasherINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtBO_8LruEntryB1d_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEENtNtB6_6hasher18DefaultHashBuilderE0B2Y_: argument 0"}
!145 = distinct !{!145, !141, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!146 = distinct !{!146, !"_RINvNtCs9tUge3wv4pz_9hashbrown3map9make_hashINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB4_6hasher18DefaultHashBuilderECsbNLsQi0JuJ4_5tgrep"}
!147 = distinct !{!147, !146, !"_RINvNtCs9tUge3wv4pz_9hashbrown3map9make_hashINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB4_6hasher18DefaultHashBuilderECsbNLsQi0JuJ4_5tgrep: argument 0"}
!148 = distinct !{!148, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher"}
!149 = distinct !{!149, !148, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 0"}
!150 = distinct !{!150, !148, !"_RNvXNtCs9tUge3wv4pz_9hashbrown6hasherNtB2_18DefaultHashBuilderNtNtCsf3Ta7LF998c_4core4hash11BuildHasher12build_hasher: argument 1"}
!151 = distinct !{!151, !"_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish"}
!152 = distinct !{!152, !151, !"_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher6finish: argument 0"}
!153 = distinct !{!153, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!154 = distinct !{!154, !153, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!155 = !{!105}
!156 = !{!107, !106}
!157 = !{!109}
!158 = !{!109, !111, !110, !105, !107, !106}
!159 = !{!110, !106}
!160 = !{!109, !105}
!161 = !{!111, !110, !107, !106}
!162 = !{!113}
!163 = !{!115}
!164 = !{!115, !113}
!165 = !{!117}
!166 = !{!117, !115, !113}
!167 = !{!117, !115, !113, !110, !106}
!168 = !{!119}
!169 = !{!120, !110, !106}
!170 = !{!122}
!171 = !{!125, !124, !120, !119, !110, !106}
!172 = !{!127, !124, !120, !119, !110, !106}
!173 = !{!129}
!174 = !{!130, !127, !124, !120, !119, !110, !106}
!175 = !{!132}
!176 = !{!132, !120, !119, !110, !106}
end_hunk_0
