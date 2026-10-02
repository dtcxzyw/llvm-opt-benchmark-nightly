Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/ufo2fontir-46da0edc7bce67f1.ufo2fontir.1df759023741b243-cgu.03?download=true
inline.NumInlined: 837
inline.NumDeleted: 308
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjNtCs9NoVXegZYB5_8smol_str7SmolStrEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir:bb.a
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTjNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTjNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  %i.x = load i8, ptr %i.w, align 8, !range !12, !alias.scope !1608, !noalias !1602, !noundef !4
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.x, 25
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTjNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1611, !noalias !1602, !nonnull !4, !noundef !4
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !1612
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #20, !noalias !1602
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %bb.f, %bb.e, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTjNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i
  %i.ac = icmp eq i64 %i.v, 0
  br i1 %i.ac, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %bb.b
  %i.ad = shl i64 %i.b, 5                         ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !1600, !nonnull !4, !noundef !4
  %i.al = sub nuw nsw i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !1600
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtCs9NoVXegZYB5_8smol_str7SmolStrEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1631, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1633, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1633, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1634
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1635
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  %i.x = load i8, ptr %i.w, align 8, !range !12, !alias.scope !1639, !noalias !1633, !noundef !4
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.x, 25
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1642, !noalias !1633, !nonnull !4, !noundef !4
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !1643
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #20, !noalias !1633
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %bb.f, %bb.e, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs2zvA5OmMqFb_10ufo2fontir.exit.i.i
  %i.ac = icmp eq i64 %i.v, 0
  br i1 %i.ac, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %bb.b
  %i.ad = shl i64 %i.b, 5                         ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !1631, !nonnull !4, !noundef !4
  %i.al = sub nuw nsw i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !1631
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs2zvA5OmMqFb_10ufo2fontir.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 2
  %i.d = icmp slt i64 %.val1, 4611686018427387900
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
  br i1 %i.k, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #24
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1u_15NormalizedSpaceEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1646
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1u_15NormalizedSpaceEEE15into_allocationCs2zvA5OmMqFb_10ufo2fontir.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 48                         ; 2 uses
  %2 = add i64 %i.g, 48                           ; 2 uses
  %3 = add i64 %i.c, 17
  %i.h = add i64 %3, %2                           ; 3 uses
  %4 = icmp uge i64 %i.h, %2
  tail call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %5)
  %6 = sub i64 -48, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %6
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1u_15NormalizedSpaceEEE15into_allocationCs2zvA5OmMqFb_10ufo2fontir.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1u_15NormalizedSpaceEEE15into_allocationCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.i, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.l = getelementptr i8, ptr %i.a, i64 %i.c
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.k, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
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
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1649
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuEE15into_allocationCs2zvA5OmMqFb_10ufo2fontir.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

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
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuEE15into_allocationCs2zvA5OmMqFb_10ufo2fontir.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuEE15into_allocationCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
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
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBZ_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1G_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1662, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1663
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1666, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1667
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs2zvA5OmMqFb_10ufo2fontir.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #20
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs2zvA5OmMqFb_10ufo2fontir.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB24_11DesignSpaceEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1u_NtNtNtBZ_4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1L_11DesignSpaceEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1A_15NormalizedSpaceEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1h_15NormalizedSpaceEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB1G_4path7PathBufEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtB1G_4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB1n_4path7PathBufEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBV_EE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BV_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  %i.a = load i8, ptr %0, align 8, !range !12, !alias.scope !1704, !noundef !4
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1707, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1707
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %i.h = load i8, ptr %i.g, align 8, !range !12, !alias.scope !1711, !noundef !4
  %switch.i.i.i1.i.i = icmp samesign ult i8 %i.h, 25
  br i1 %switch.i.i.i1.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit3.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1714, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1715
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit3.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit3.i.i unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %i.n = load i8, ptr %i.m, align 8, !range !12, !alias.scope !1719, !noundef !4
  %switch.i.i.i4.i.i = icmp samesign ult i8 %i.n, 25
  br i1 %switch.i.i.i4.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1722, !nonnull !4, !noundef !4
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !1723
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs2zvA5OmMqFb_10ufo2fontir.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #20
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs2zvA5OmMqFb_10ufo2fontir.exit

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit3.i.i: ; preds = %bb.f, %bb.e, %bb.d
  resume { ptr, i32 } %i.f

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %bb.g, %bb.h
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1O_4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBZ_6coords8LocationNtB3v_11DesignSpaceEEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1F_NtNtNtB1O_4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1v_4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_6coords8LocationNtB3c_11DesignSpaceEEEEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1F_NtNtNtB1J_4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

end_hunk_0
begin_hunk_1_@llvm.ctlz.i64
; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsf3pcBkf8rwa_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsf3pcBkf8rwa_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBI_11DesignSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshMXdXt2UU3C_5norad8fontinfo10NameRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshMXdXt2UU3C_5norad8fontinfo15GaspRangeRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshMXdXt2UU3C_5norad8fontinfo18WoffMetadataCreditENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshMXdXt2UU3C_5norad8fontinfo22WoffMetadataTextRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshMXdXt2UU3C_5norad8fontinfo27WoffMetadataExtensionRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshMXdXt2UU3C_5norad9guideline9GuidelineENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIBw_dEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBP_11DesignSpaceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshMXdXt2UU3C_5norad8fontinfo10NameRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshMXdXt2UU3C_5norad8fontinfo15GaspRangeRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshMXdXt2UU3C_5norad8fontinfo18WoffMetadataCreditENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshMXdXt2UU3C_5norad8fontinfo22WoffMetadataTextRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshMXdXt2UU3C_5norad8fontinfo27WoffMetadataExtensionRecordENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshMXdXt2UU3C_5norad9guideline9GuidelineENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtNtB7_3vec3VecdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path7PathBufECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsbZq13ASDQ8l_10font_types3tag3TagECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRRNtNtCsgCecv3eZDcN_5alloc6string6StringECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRReECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRjECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRmECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB2_10EquivalentBq_E10equivalentCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB5_10GlyphOrder6insert(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2zvA5OmMqFb_10ufo2fontir(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorE9drop_slowCsaGmGRvprAGn_5plist(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBI_11DesignSpaceEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noinline }
attributes #21 = { inlinehint }
attributes #22 = { cold }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{i64 8}
!7 = !{!"branch_weights", i32 1, i32 1999}
!8 = !{!"branch_weights", i32 0, i32 1}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 4292820, i32 2143190828}
!11 = !{!"branch_weights", i32 2002, i32 2000}
!12 = !{i8 0, i8 26}
!13 = !{i64 0, i64 3}
!14 = !{i64 0, i64 8}
!15 = !{i64 -1, i64 -9223372036854775808}
!16 = !{i8 -1, i8 28}
!17 = !{i64 0, i64 -9223372036854775807}
!18 = distinct !{!18, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!19 = distinct !{!19, !18, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!20 = distinct !{!20, !18, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!21 = distinct !{!21, !18, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!22 = distinct !{!22, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!23 = distinct !{!23, !22, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!24 = distinct !{!24, !22, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!25 = distinct !{!25, !22, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!26 = distinct !{!26, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir"}
!27 = distinct !{!27, !26, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!28 = distinct !{!28, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!29 = distinct !{!29, !28, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!30 = distinct !{!30, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir"}
!31 = distinct !{!31, !30, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!32 = distinct !{!32, !30, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBW_2ir15KerningInstanceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!33 = distinct !{!33, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!34 = distinct !{!34, !33, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!35 = !{!19}
!36 = !{!21, !20}
!37 = !{!19, !21, !20}
!38 = !{!23}
!39 = !{!23, !25, !24, !19, !21, !20}
!40 = !{!24, !20}
!41 = !{!23, !19}
!42 = !{!25, !24, !21, !20}
!43 = !{!27}
!44 = !{!29}
!45 = !{!29, !27}
!46 = !{!29, !27, !24, !20}
!47 = !{!31}
!48 = !{!32, !24, !20}
!49 = !{!32, !31, !24, !20}
!50 = !{!34}
!51 = distinct !{!51, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!52 = distinct !{!52, !51, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!53 = distinct !{!53, !51, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!54 = distinct !{!54, !51, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!55 = distinct !{!55, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!56 = distinct !{!56, !55, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!57 = distinct !{!57, !55, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!58 = distinct !{!58, !55, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!59 = distinct !{!59, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir"}
!60 = distinct !{!60, !59, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!61 = distinct !{!61, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!62 = distinct !{!62, !61, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!63 = distinct !{!63, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB21_11DesignSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtNtBW_4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir"}
!64 = distinct !{!64, !63, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB21_11DesignSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtNtBW_4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!65 = distinct !{!65, !63, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB21_11DesignSpaceEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_NtNtNtBW_4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!66 = distinct !{!66, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!67 = distinct !{!67, !66, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!68 = !{!52}
!69 = !{!54, !53}
!70 = !{!52, !54, !53}
!71 = !{!56}
!72 = !{!56, !58, !57, !52, !54, !53}
!73 = !{!57, !53}
!74 = !{!56, !52}
!75 = !{!58, !57, !54, !53}
!76 = !{!60}
!77 = !{!62}
!78 = !{!62, !60}
!79 = !{!62, !60, !57, !53}
!80 = !{!64}
!81 = !{!65, !57, !53}
!82 = !{!65, !64, !57, !53}
!83 = !{!67}
!84 = distinct !{!84, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!85 = distinct !{!85, !84, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!86 = distinct !{!86, !84, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!87 = distinct !{!87, !84, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!88 = distinct !{!88, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!89 = distinct !{!89, !88, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!90 = distinct !{!90, !88, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!91 = distinct !{!91, !88, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!92 = distinct !{!92, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir"}
!93 = distinct !{!93, !92, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!94 = distinct !{!94, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!95 = distinct !{!95, !94, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!96 = distinct !{!96, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagRNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir"}
!97 = distinct !{!97, !96, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagRNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!98 = distinct !{!98, !96, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TagRNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!99 = distinct !{!99, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!100 = distinct !{!100, !99, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!101 = !{!85}
!102 = !{!87, !86}
!103 = !{!85, !87, !86}
!104 = !{!89}
!105 = !{!89, !91, !90, !85, !87, !86}
!106 = !{!90, !86}
!107 = !{!89, !85}
!108 = !{!91, !90, !87, !86}
!109 = !{!93}
!110 = !{!95}
!111 = !{!95, !93}
!112 = !{!95, !93, !90, !86}
!113 = !{!97}
!114 = !{!98, !90, !86}
!115 = !{!98, !97, !90, !86}
!116 = !{!100}
!117 = distinct !{!117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!118 = distinct !{!118, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!119 = distinct !{!119, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!120 = distinct !{!120, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!121 = distinct !{!121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!122 = distinct !{!122, !121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!123 = distinct !{!123, !121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!124 = distinct !{!124, !121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!125 = distinct !{!125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir"}
!126 = distinct !{!126, !125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!127 = distinct !{!127, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!128 = distinct !{!128, !127, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!129 = distinct !{!129, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1x_15NormalizedSpaceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir"}
!130 = distinct !{!130, !129, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1x_15NormalizedSpaceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!131 = distinct !{!131, !129, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1x_15NormalizedSpaceEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!132 = distinct !{!132, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!133 = distinct !{!133, !132, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!134 = !{!118}
!135 = !{!120, !119}
!136 = !{!118, !120, !119}
!137 = !{!122}
!138 = !{!122, !124, !123, !118, !120, !119}
!139 = !{!123, !119}
!140 = !{!122, !118}
!141 = !{!124, !123, !120, !119}
!142 = !{!126}
!143 = !{!128}
!144 = !{!128, !126}
!145 = !{!128, !126, !123, !119}
!146 = !{!130}
!147 = !{!131, !123, !119}
!148 = !{!131, !130, !123, !119}
!149 = !{!133}
!150 = distinct !{!150, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!151 = distinct !{!151, !150, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!152 = distinct !{!152, !150, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!153 = distinct !{!153, !150, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!154 = distinct !{!154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir"}
!155 = distinct !{!155, !154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!156 = distinct !{!156, !154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 2"}
!157 = distinct !{!157, !154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!158 = distinct !{!158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir"}
!159 = distinct !{!159, !158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!160 = distinct !{!160, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir"}
!161 = distinct !{!161, !160, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!162 = distinct !{!162, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB1D_4path7PathBufEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir"}
!163 = distinct !{!163, !162, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB1D_4path7PathBufEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 1"}
!164 = distinct !{!164, !162, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB1D_4path7PathBufEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtB1D_4hash6random11RandomStateE0E0Cs2zvA5OmMqFb_10ufo2fontir: argument 0"}
!165 = distinct !{!165, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!166 = distinct !{!166, !165, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!167 = !{!151}
!168 = !{!153, !152}
!169 = !{!151, !153, !152}
!170 = !{!155}
!171 = !{!155, !157, !156, !151, !153, !152}
!172 = !{!156, !152}
!173 = !{!155, !151}
!174 = !{!157, !156, !153, !152}
!175 = !{!159}
!176 = !{!161}
!177 = !{!161, !159}
!178 = !{!161, !159, !156, !152}
end_hunk_1
