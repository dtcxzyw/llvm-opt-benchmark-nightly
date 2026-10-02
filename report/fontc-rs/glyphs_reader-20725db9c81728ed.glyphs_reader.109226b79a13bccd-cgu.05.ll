Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.05?download=true
inline.NumInlined: 712
inline.NumDeleted: 275
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_:bb.a
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa) #29, !noalias !1323
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEBH_.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEBH_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEE9next_implKb0_EB10_.exit.i.i
  %i.ae = icmp eq i64 %i.v, 0
  br i1 %i.ae, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEB1f_.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEB1f_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEBH_.exit.i.i, %bb.b
  %i.af = shl i64 %i.b, 5                         ; 2 uses
  %i.ag = add i64 %i.af, 32                       ; 2 uses
  %i.ah = add i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1i_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEB1f_.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !1321, !nonnull !4, !noundef !4
  %i.an = sub nuw nsw i64 -32, %i.af
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !1321
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1i_.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalEB1i_.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEB1f_.exit.i, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjjENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjjENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #28
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjjENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjjENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtCs9NoVXegZYB5_8smol_str7SmolStrEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1353, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1355, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1355, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1356
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs1qcNTItuk7F_13glyphs_reader.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1357
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs1qcNTItuk7F_13glyphs_reader.exit.i.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs1qcNTItuk7F_13glyphs_reader.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %i.x = load i8, ptr %i.w, align 8, !range !14, !alias.scope !1361, !noalias !1355, !noundef !4
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.x, 25
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs1qcNTItuk7F_13glyphs_reader.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1364, !noalias !1355, !nonnull !4, !noundef !4
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !1365
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #29, !noalias !1355
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i: ; preds = %bb.f, %bb.e, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE9next_implKb0_ECs1qcNTItuk7F_13glyphs_reader.exit.i.i
  %i.ac = icmp eq i64 %i.v, 0
  br i1 %i.ac, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i, label %bb.d

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i.i, %bb.b
  %i.ad = shl i64 %i.b, 5                         ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !1353, !nonnull !4, !noundef !4
  %i.al = sub nuw nsw i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !1353
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.a, %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

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
  br i1 %i.k, label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #28
  br label %_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit

_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.a, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEjEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1368
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEjEE15into_allocationCs1qcNTItuk7F_13glyphs_reader.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 4
  %2 = mul i64 %i.c, 17
  %i.h = add i64 %2, 33
  %i.i = sub nuw nsw i64 -16, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEjEE15into_allocationCs1qcNTItuk7F_13glyphs_reader.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEjEE15into_allocationCs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrlEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1371
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrlEE15into_allocationCs1qcNTItuk7F_13glyphs_reader.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 5
  %2 = mul i64 %i.c, 33
  %i.h = add i64 %2, 49
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrlEE15into_allocationCs1qcNTItuk7F_13glyphs_reader.exit

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrlEE15into_allocationCs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
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

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnuEp6OutputNtNtNtCs8hFumjqO1Bi_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe10UnwindSafeNtNtBP_6marker4SendNtB2r_13RefUnwindSafeNtB35_4SyncEL_EIBJ_uE4callCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !6, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.a) #25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B23_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs1qcNTItuk7F_13glyphs_reader(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBF_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceB1w_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.a = load i8, ptr %0, align 8, !range !14, !alias.scope !1385, !noundef !4
  %switch.i.i.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1388, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1388
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29
          to label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.g) #26
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceB1w_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %i.a = load i8, ptr %0, align 8, !range !14, !alias.scope !1416, !noundef !4
  %switch.i.i.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1419, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1419
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #26
          to label %bb.j unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  %i.i = load i8, ptr %i.h, align 8, !range !17, !alias.scope !1422, !noundef !4 ; 4 uses
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %i.k = icmp samesign ugt i8 %i.i, 25
  %i.l = and i8 %i.i, 30
  %switch1.i.i.i.i.i = icmp eq i8 %i.l, 26
  %switch.i.i.i.i.i = and i1 %i.k, %switch1.i.i.i.i.i
  br i1 %switch.i.i.i.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %switch.i.i.i.i.i.i.i = icmp samesign ult i8 %i.i, 25
  br i1 %switch.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1428, !nonnull !4, !noundef !4
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1429
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #29
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0B1t_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit.i.i, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs1qcNTItuk7F_13glyphs_reader(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.a = load i8, ptr %0, align 8, !range !14, !alias.scope !1443, !noundef !4
  %switch.i.i.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1446, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1446
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs1qcNTItuk7F_13glyphs_reader.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs1qcNTItuk7F_13glyphs_reader.exit

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_0
begin_hunk_1_@_RNvYNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtBb_8RawTableTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE14reserve_rehashNCINvNtBd_3map11make_hashermBW_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTOhEE9call_onceCs1qcNTItuk7F_13glyphs_reader:bb.a
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %i.b = load i8, ptr %i.a, align 8, !range !14, !alias.scope !1514, !noundef !4
  %switch.i.i.i.i = icmp samesign ult i8 %i.b, 25
  br i1 %switch.i.i.i.i, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1517, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1517
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs1qcNTItuk7F_13glyphs_reader.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br label %_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs1qcNTItuk7F_13glyphs_reader.exit

_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTmNtCs9NoVXegZYB5_8smol_str7SmolStrEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0Es_0Cs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBT_15NormalizedSpaceEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EBV_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsf3pcBkf8rwa_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsf3pcBkf8rwa_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font14RawPartSettingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawLayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font14RawPartSettingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawLayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1I_15NormalizedSpaceEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRRNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRjECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRmECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtCs9NoVXegZYB5_8smol_str7SmolStrINtB2_10EquivalentBq_E10equivalentCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtCs9NoVXegZYB5_8smol_str7SmolStrINtB2_10EquivalentRBq_E10equivalentCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentNtCs9NoVXegZYB5_8smol_str7SmolStrE10equivalentCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(48), i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1qcNTItuk7F_13glyphs_reader(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringTINtNtCsf3Ta7LF998c_4core6option6OptionxEB1u_EENtNtB1z_3cmp9PartialEq2eqCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { inlinehint }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind }
attributes #29 = { noinline }
attributes #30 = { noinline noreturn }
attributes #31 = { noreturn }

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
!12 = !{!"branch_weights", i32 2146410443, i32 1073205}
!13 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!14 = !{i8 0, i8 26}
!15 = !{i8 -1, i8 26}
!16 = !{i64 -1, i64 -9223372036854775808}
!17 = !{i8 -1, i8 28}
!18 = !{i64 0, i64 -9223372036854775807}
!19 = !{i8 0, i8 28}
!20 = distinct !{!20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader"}
!21 = distinct !{!21, !20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!22 = distinct !{!22, !20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!23 = distinct !{!23, !20, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!24 = distinct !{!24, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader"}
!25 = distinct !{!25, !24, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!26 = distinct !{!26, !24, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!27 = distinct !{!27, !24, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!28 = distinct !{!28, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs1qcNTItuk7F_13glyphs_reader"}
!29 = distinct !{!29, !28, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!30 = distinct !{!30, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader"}
!31 = distinct !{!31, !30, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!32 = distinct !{!32, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs1qcNTItuk7F_13glyphs_reader"}
!33 = distinct !{!33, !32, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs1qcNTItuk7F_13glyphs_reader: argument 1"}
!34 = distinct !{!34, !32, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!35 = distinct !{!35, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!36 = distinct !{!36, !35, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!37 = !{!21}
!38 = !{!23, !22}
!39 = !{!21, !23, !22}
!40 = !{!25}
!41 = !{!25, !27, !26, !21, !23, !22}
!42 = !{!26, !22}
!43 = !{!25, !21}
!44 = !{!27, !26, !23, !22}
!45 = !{!29}
!46 = !{!31}
!47 = !{!31, !29}
!48 = !{!31, !29, !26, !22}
!49 = !{!33}
!50 = !{!34, !26, !22}
!51 = !{!34, !33, !26, !22}
!52 = !{!36}
!53 = distinct !{!53, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader"}
!54 = distinct !{!54, !53, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!55 = distinct !{!55, !53, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!56 = distinct !{!56, !53, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!57 = distinct !{!57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader"}
!58 = distinct !{!58, !57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!59 = distinct !{!59, !57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!60 = distinct !{!60, !57, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!61 = distinct !{!61, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs1qcNTItuk7F_13glyphs_reader"}
!62 = distinct !{!62, !61, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!63 = distinct !{!63, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader"}
!64 = distinct !{!64, !63, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!65 = distinct !{!65, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B20_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs1qcNTItuk7F_13glyphs_reader"}
!66 = distinct !{!66, !65, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B20_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs1qcNTItuk7F_13glyphs_reader: argument 1"}
!67 = distinct !{!67, !65, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBV_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B20_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Cs1qcNTItuk7F_13glyphs_reader: argument 0"}
!68 = distinct !{!68, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!69 = distinct !{!69, !68, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!70 = !{!54}
!71 = !{!56, !55}
!72 = !{!54, !56, !55}
!73 = !{!58}
!74 = !{!58, !60, !59, !54, !56, !55}
!75 = !{!59, !55}
!76 = !{!58, !54}
!77 = !{!60, !59, !56, !55}
!78 = !{!62}
!79 = !{!64}
!80 = !{!64, !62}
!81 = !{!64, !62, !59, !55}
!82 = !{!66}
!83 = !{!67, !59, !55}
!84 = !{!67, !66, !59, !55}
!85 = !{!69}
!86 = distinct !{!86, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1n_E0EB1r_"}
!87 = distinct !{!87, !86, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1n_E0EB1r_: argument 0"}
!88 = distinct !{!88, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!89 = distinct !{!89, !88, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!90 = distinct !{!90, !88, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!91 = distinct !{!91, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!92 = distinct !{!92, !91, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!93 = distinct !{!93, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1p_E0E0B1t_"}
!94 = distinct !{!94, !93, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1p_E0E0B1t_: argument 0"}
!95 = distinct !{!95, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE6removeB1q_"}
!96 = distinct !{!96, !95, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE6removeB1q_: argument 1"}
!97 = distinct !{!97, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE13erase_no_dropB1q_"}
!98 = distinct !{!98, !97, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE13erase_no_dropB1q_: argument 0"}
!99 = distinct !{!99, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase"}
!100 = distinct !{!100, !99, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!101 = distinct !{!101, !95, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE6removeB1q_: argument 0"}
!102 = distinct !{!102, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!103 = distinct !{!103, !102, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!104 = distinct !{!104, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!105 = distinct !{!105, !104, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!106 = !{!87}
!107 = !{!89}
!108 = !{!89, !87}
!109 = !{!90}
!110 = !{!92, !89, !90, !87}
!111 = !{!94, !89, !90, !87}
!112 = !{!96}
!113 = !{!98}
!114 = !{!100}
!115 = !{!103, !100, !98, !101, !96}
!116 = !{!105, !100, !98, !101, !96}
!117 = !{!100, !98, !96}
!118 = !{!101}
!119 = !{!100, !98, !101, !96}
!120 = distinct !{!120, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1n_E0EB1r_"}
!121 = distinct !{!121, !120, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1n_E0EB1r_: argument 0"}
!122 = distinct !{!122, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!123 = distinct !{!123, !122, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!124 = distinct !{!124, !122, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!125 = distinct !{!125, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!126 = distinct !{!126, !125, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!127 = distinct !{!127, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE4findNCINvNtBa_3map14equivalent_keyeBS_B1p_E0E0B1t_"}
!128 = distinct !{!128, !127, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE4findNCINvNtBa_3map14equivalent_keyeBS_B1p_E0E0B1t_: argument 0"}
!129 = distinct !{!129, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE6removeB1q_"}
!130 = distinct !{!130, !129, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE6removeB1q_: argument 1"}
!131 = distinct !{!131, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE13erase_no_dropB1q_"}
!132 = distinct !{!132, !131, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE13erase_no_dropB1q_: argument 0"}
!133 = distinct !{!133, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase"}
!134 = distinct !{!134, !133, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!135 = distinct !{!135, !129, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE6removeB1q_: argument 0"}
!136 = distinct !{!136, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!137 = distinct !{!137, !136, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!138 = distinct !{!138, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!139 = distinct !{!139, !138, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!140 = !{!121}
!141 = !{!123}
!142 = !{!123, !121}
!143 = !{!124}
!144 = !{!126, !123, !124, !121}
!145 = !{!128, !123, !124, !121}
!146 = !{!130}
!147 = !{!132}
!148 = !{!134}
!149 = !{!137, !134, !132, !135, !130}
!150 = !{!139, !134, !132, !135, !130}
!151 = !{!134, !132, !130}
!152 = !{!135}
!153 = !{!134, !132, !135, !130}
!154 = distinct !{!154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader"}
!155 = distinct !{!155, !154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!156 = distinct !{!156, !154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!157 = distinct !{!157, !154, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!158 = distinct !{!158, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader"}
!159 = distinct !{!159, !158, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!160 = distinct !{!160, !158, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 2"}
!161 = distinct !{!161, !158, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECs1qcNTItuk7F_13glyphs_reader: argument 1"}
!162 = distinct !{!162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs1qcNTItuk7F_13glyphs_reader"}
!163 = distinct !{!163, !162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs1qcNTItuk7F_13glyphs_reader: argument 0"}
!164 = distinct !{!164, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader"}
!165 = distinct !{!165, !164, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader: argument 0"}
!166 = distinct !{!166, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1t_"}
!167 = distinct !{!167, !166, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1t_: argument 1"}
!168 = distinct !{!168, !166, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8RawGlyphEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0B1t_: argument 0"}
!169 = distinct !{!169, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!170 = distinct !{!170, !169, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!171 = !{!155}
!172 = !{!157, !156}
!173 = !{!155, !157, !156}
!174 = !{!159}
!175 = !{!159, !161, !160, !155, !157, !156}
end_hunk_1
