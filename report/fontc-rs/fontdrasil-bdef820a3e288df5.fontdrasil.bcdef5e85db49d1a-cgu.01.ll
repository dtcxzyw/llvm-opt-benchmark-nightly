Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontdrasil-bdef820a3e288df5.fontdrasil.bcdef5e85db49d1a-cgu.01?download=true
inline.NumInlined: 280
inline.NumDeleted: 109
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringBP_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil:bb.a

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringBV_EE9next_implKb0_ECsgdm2QMcbaeA_10fontdrasil.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.022.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.023.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.021.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 3 uses
  %i.v = add i64 %.sroa.107.020.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i.i unwind label %bb.e, !noalias !513

bb.e:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringBV_EE9next_implKb0_ECsgdm2QMcbaeA_10fontdrasil.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.body.i.i.i unwind label %bb.f, !noalias !513

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !513
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i.i: ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringBV_EE9next_implKb0_ECsgdm2QMcbaeA_10fontdrasil.exit.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i unwind label %bb.g, !noalias !513

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.x, %bb.e ]
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #21
          to label %common.resume.i.i.i unwind label %bb.j, !noalias !513

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsgdm2QMcbaeA_10fontdrasil.exit.i.i unwind label %bb.h, !noalias !513

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume.i.i.i unwind label %bb.i, !noalias !513

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !513
  unreachable

common.resume.i.i.i:                              ; preds = %bb.h, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.j:                                             ; preds = %.body.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !513
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsgdm2QMcbaeA_10fontdrasil.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgdm2QMcbaeA_10fontdrasil.exit.i.i.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab), !noalias !513
  %i.af = icmp eq i64 %i.v, 0
  br i1 %i.af, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringB1a_EECsgdm2QMcbaeA_10fontdrasil.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringB1a_EECsgdm2QMcbaeA_10fontdrasil.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsgdm2QMcbaeA_10fontdrasil.exit.i.i, %bb.b
  %i.ag = mul i64 %i.b, 48                        ; 2 uses
  %i.ah = add i64 %i.ag, 48                       ; 2 uses
  %i.ai = add i64 %i.b, 17
  %i.aj = add i64 %i.ai, %i.ah                    ; 4 uses
  %i.ak = icmp uge i64 %i.aj, %i.ah
  %i.al = icmp ult i64 %i.aj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ak)
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringB1a_EECsgdm2QMcbaeA_10fontdrasil.exit.i
  %i.an = load ptr, ptr %0, align 8, !alias.scope !511, !nonnull !4, !noundef !4
  %i.ao = sub i64 -48, %i.ag
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !noalias !511
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgCecv3eZDcN_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgCecv3eZDcN_5alloc6string6StringB1a_EECsgdm2QMcbaeA_10fontdrasil.exit.i, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReRScEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReRScENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 5                        ; 2 uses
  %i.d = add i64 %i.c, 32                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReRScENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -32, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #20
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReRScENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReRScENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRemEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRemENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRemENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #20
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRemENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRemENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmReEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmReENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmReENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #20
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmReENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmReENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceEuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !518
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceEuEE15into_allocationBU_.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

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
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceEuEE15into_allocationBU_.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceEuEE15into_allocationBU_.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
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
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !521
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEE15into_allocationB1v_.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

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
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEE15into_allocationB1v_.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEE15into_allocationB1v_.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
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
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceB10_(ptr noundef nonnull %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0BX_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1V_15NormalizedSpaceEEEEB1X_.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1V_15NormalizedSpaceEEEEB1X_.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0BX_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2v_15NormalizedSpaceEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtB1G_4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceB2x_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2s_15NormalizedSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0Es_0B2u_.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = shl i64 %.val1, 3
  %i.e = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val1, 17
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2s_15NormalizedSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0Es_0B2u_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  %i.m = sub nuw nsw i64 -16, %i.f
  %i.n = getelementptr inbounds i8, ptr %.val, i64 %i.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #20
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2s_15NormalizedSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0Es_0B2u_.exit

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2s_15NormalizedSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0Es_0B2u_.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_15NormalizedSpaceEEB1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1I_15NormalizedSpaceEEB1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsbZq13ASDQ8l_10font_types3tag3TagECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRReECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRmECsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsgdm2QMcbaeA_10fontdrasil(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { inlinehint }
attributes #24 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!7 = !{!"branch_weights", i32 2002, i32 2000}
!8 = !{i64 8}
!9 = !{!"branch_weights", i32 1, i32 1999}
!10 = !{!"branch_weights", i32 0, i32 1}
!11 = !{i64 0, i64 -9223372036854775807}
!12 = distinct !{!12, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!13 = distinct !{!13, !12, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!14 = distinct !{!14, !12, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 2"}
!15 = distinct !{!15, !12, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 1"}
!16 = distinct !{!16, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!17 = distinct !{!17, !16, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!18 = distinct !{!18, !16, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 2"}
!19 = distinct !{!19, !16, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 1"}
!20 = distinct !{!20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!21 = distinct !{!21, !20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!22 = distinct !{!22, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!23 = distinct !{!23, !22, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!24 = distinct !{!24, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsgdm2QMcbaeA_10fontdrasil"}
!25 = distinct !{!25, !24, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!26 = distinct !{!26, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil"}
!27 = distinct !{!27, !26, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!28 = distinct !{!28, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBV_15NormalizedSpaceEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BX_"}
!29 = distinct !{!29, !28, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBV_15NormalizedSpaceEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BX_: argument 0"}
!30 = distinct !{!30, !28, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBV_15NormalizedSpaceEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BX_: argument 1"}
!31 = distinct !{!31, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!32 = distinct !{!32, !31, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!33 = !{!13}
!34 = !{!15, !14}
!35 = !{!13, !15, !14}
!36 = !{!17}
!37 = !{!17, !19, !18, !13, !15, !14}
!38 = !{!23, !21}
!39 = !{!21}
!40 = !{!18, !14}
!41 = !{!17, !13}
!42 = !{!19, !18, !15, !14}
!43 = !{!25}
!44 = !{!27}
!45 = !{!27, !25}
!46 = !{!27, !25, !18, !14}
!47 = !{!29}
!48 = !{!30}
!49 = !{!30, !18, !14}
!50 = !{!29, !18, !14}
!51 = !{!29, !30, !18, !14}
!52 = !{!32}
!53 = distinct !{!53, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!54 = distinct !{!54, !53, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!55 = distinct !{!55, !53, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 2"}
!56 = distinct !{!56, !53, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 1"}
!57 = distinct !{!57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!58 = distinct !{!58, !57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!59 = distinct !{!59, !57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 2"}
!60 = distinct !{!60, !57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 1"}
!61 = distinct !{!61, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!62 = distinct !{!62, !61, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!63 = distinct !{!63, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!64 = distinct !{!64, !63, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!65 = distinct !{!65, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsgdm2QMcbaeA_10fontdrasil"}
!66 = distinct !{!66, !65, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!67 = distinct !{!67, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil"}
!68 = distinct !{!68, !67, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!69 = distinct !{!69, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BX_"}
!70 = distinct !{!70, !69, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BX_: argument 0"}
!71 = distinct !{!71, !69, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0BX_: argument 1"}
!72 = distinct !{!72, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!73 = distinct !{!73, !72, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!74 = !{!54}
!75 = !{!56, !55}
!76 = !{!54, !56, !55}
!77 = !{!58}
!78 = !{!58, !60, !59, !54, !56, !55}
!79 = !{!64, !62}
!80 = !{!62}
!81 = !{!59, !55}
!82 = !{!58, !54}
!83 = !{!60, !59, !56, !55}
!84 = !{!66}
!85 = !{!68}
!86 = !{!68, !66}
!87 = !{!68, !66, !59, !55}
!88 = !{!70}
!89 = !{!71}
!90 = !{!71, !59, !55}
!91 = !{!70, !59, !55}
!92 = !{!70, !71, !59, !55}
!93 = !{!73}
!94 = distinct !{!94, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!95 = distinct !{!95, !94, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!96 = distinct !{!96, !94, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 2"}
!97 = distinct !{!97, !94, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 1"}
!98 = distinct !{!98, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!99 = distinct !{!99, !98, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!100 = distinct !{!100, !98, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 2"}
!101 = distinct !{!101, !98, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 1"}
!102 = distinct !{!102, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!103 = distinct !{!103, !102, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!104 = distinct !{!104, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!105 = distinct !{!105, !104, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!106 = distinct !{!106, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsgdm2QMcbaeA_10fontdrasil"}
!107 = distinct !{!107, !106, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!108 = distinct !{!108, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil"}
!109 = distinct !{!109, !108, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!110 = distinct !{!110, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Csgdm2QMcbaeA_10fontdrasil"}
!111 = distinct !{!111, !110, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Csgdm2QMcbaeA_10fontdrasil: argument 0"}
!112 = distinct !{!112, !110, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Csgdm2QMcbaeA_10fontdrasil: argument 1"}
!113 = distinct !{!113, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!114 = distinct !{!114, !113, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!115 = !{!95}
!116 = !{!97, !96}
!117 = !{!95, !97, !96}
!118 = !{!99}
!119 = !{!99, !101, !100, !95, !97, !96}
!120 = !{!105, !103}
!121 = !{!103}
!122 = !{!100, !96}
!123 = !{!99, !95}
!124 = !{!101, !100, !97, !96}
!125 = !{!107}
!126 = !{!109}
!127 = !{!109, !107}
!128 = !{!109, !107, !100, !96}
!129 = !{!111}
!130 = !{!112}
!131 = !{!112, !100, !96}
!132 = !{!111, !100, !96}
!133 = !{!111, !112, !100, !96}
!134 = !{!114}
!135 = distinct !{!135, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!136 = distinct !{!136, !135, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!137 = distinct !{!137, !135, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 2"}
!138 = distinct !{!138, !135, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 1"}
!139 = distinct !{!139, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!140 = distinct !{!140, !139, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!141 = distinct !{!141, !139, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 2"}
!142 = distinct !{!142, !139, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 1"}
!143 = distinct !{!143, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!144 = distinct !{!144, !143, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!145 = distinct !{!145, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!146 = distinct !{!146, !145, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!147 = distinct !{!147, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsgdm2QMcbaeA_10fontdrasil"}
!148 = distinct !{!148, !147, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!149 = distinct !{!149, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil"}
!150 = distinct !{!150, !149, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgdm2QMcbaeA_10fontdrasil: argument 0"}
!151 = distinct !{!151, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2s_15NormalizedSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2u_"}
!152 = distinct !{!152, !151, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2s_15NormalizedSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2u_: argument 0"}
!153 = distinct !{!153, !151, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB2s_15NormalizedSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0B2u_: argument 1"}
!154 = distinct !{!154, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!155 = distinct !{!155, !154, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!156 = !{!136}
!157 = !{!138, !137}
!158 = !{!136, !138, !137}
!159 = !{!140}
!160 = !{!140, !142, !141, !136, !138, !137}
!161 = !{!146, !144}
!162 = !{!144}
!163 = !{!141, !137}
!164 = !{!140, !136}
!165 = !{!142, !141, !138, !137}
!166 = !{!148}
!167 = !{!150}
!168 = !{!150, !148}
!169 = !{!150, !148, !141, !137}
!170 = !{!152}
!171 = !{!153}
!172 = !{!153, !141, !137}
!173 = !{!152, !141, !137}
!174 = !{!152, !153, !141, !137}
!175 = !{!155}
!176 = distinct !{!176, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
!177 = distinct !{!177, !176, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 0"}
!178 = distinct !{!178, !176, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 2"}
!179 = distinct !{!179, !176, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil: argument 1"}
!180 = distinct !{!180, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsgdm2QMcbaeA_10fontdrasil"}
end_hunk_0
