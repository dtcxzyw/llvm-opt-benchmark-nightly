inline.NumInlined: 790
inline.NumDeleted: 5
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @absorb_inner_32(ptr noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #5 {
.preheader:
  %2 = getelementptr i8, ptr %0, i64 16
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val637 = load i64, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val636 = load i64, ptr %i.b, align 1
  %i.c = getelementptr i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@absorb_inner_32:.preheader
  %i.t = getelementptr i8, ptr %0, i64 184
  %.val618 = load i64, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %0, i64 192
  %i.v = load i64, ptr %i.u, align 1
  %i.w = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.x = load <2 x i64>, ptr %0, align 1
  %i.y = load <2 x i64>, ptr %1, align 8, !tbaa !15
  %i.z = xor <2 x i64> %i.x, %i.y                 ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 16        ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ac = load <2 x i64>, ptr %2, align 1
  store <2 x i64> %i.z, ptr %1, align 8, !tbaa !15
  %3 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !15
  %4 = xor <2 x i64> %i.ac, %3
  store <2 x i64> %4, ptr %i.aa, align 8, !tbaa !15
  %5 = getelementptr i8, ptr %1, i64 32           ; 4 uses
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = xor i64 %.val637, %6
  store i64 %7, ptr %5, align 8, !tbaa !15
  %i.ad = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.af = xor i64 %.val636, %i.ae
end_hunk_1
begin_hunk_2_@absorb_inner_32:.preheader
  %i.ch = xor i64 %.val618, %i.cg
  %i.ci = getelementptr i8, ptr %1, i64 192       ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.ck = xor i64 %i.v, %i.cj
  %.promoted = load i64, ptr %i.w, align 8, !tbaa !15
  %.promoted657 = load i64, ptr %i.aa, align 8, !tbaa !15
  %.promoted658 = load i64, ptr %i.ab, align 8, !tbaa !15
  %.promoted659 = load i64, ptr %5, align 8, !tbaa !15
  %8 = extractelement <2 x i64> %i.z, i64 0
  br label %bb.b

bb.a:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@absorb_inner_32:.preheader
  %i.dg = phi i64 [ %i.bj, %.preheader ], [ %i.if, %bb.b ] ; 2 uses
  %i.dh = phi i64 [ %i.au, %.preheader ], [ %i.hq, %bb.b ] ; 2 uses
  %i.di = phi i64 [ %i.af, %.preheader ], [ %i.hb, %bb.b ] ; 2 uses
  %i.dj = phi i64 [ %8, %.preheader ], [ %i.jk, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.dk = xor i64 %i.di, %i.dj
  %i.dl = xor i64 %i.dk, %i.dh
end_hunk_3
begin_hunk_4_@absorb_inner_32:.preheader
  %i.es = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 1)
  %i.et = xor i64 %i.es, %i.dr                    ; 5 uses
  %i.eu = xor i64 %i.et, %i.cn                    ; 3 uses
  store i64 %i.eu, ptr %i.aa, align 8, !tbaa !15
  %i.ev = xor i64 %i.et, %i.da                    ; 2 uses
  %i.ew = xor i64 %i.et, %i.cz                    ; 2 uses
  %i.ex = xor i64 %i.et, %i.cy                    ; 2 uses
end_hunk_4
begin_hunk_5_@absorb_inner_32:.preheader
  %i.gx = and i64 %i.gk, %i.gw
  %i.gy = xor i64 %i.fy, %i.gx                    ; 2 uses
  store i64 %i.gp, ptr %i.w, align 8, !tbaa !15
  store i64 %i.gs, ptr %i.aa, align 8, !tbaa !15
  store i64 %i.gv, ptr %i.ab, align 8, !tbaa !15
  store i64 %i.gy, ptr %5, align 8, !tbaa !15
  %i.gz = xor i64 %i.gj, -1
  %i.ha = and i64 %i.fo, %i.gz
  %i.hb = xor i64 %i.ha, %i.ft                    ; 2 uses
end_hunk_5
begin_hunk_6_@_Py_LibHacl_Hacl_Hash_SHA3_is_shake:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32(i32 %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
.preheader:
  %3 = getelementptr i8, ptr %1, i64 16
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val637 = load i64, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %1, i64 40
  %.val636 = load i64, ptr %i.b, align 1
  %i.c = getelementptr i8, ptr %1, i64 48
end_hunk_6
begin_hunk_7_@_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32:.preheader
  %i.t = getelementptr i8, ptr %1, i64 184
  %.val618 = load i64, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 1
  %i.w = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.x = load <2 x i64>, ptr %1, align 1
  %i.y = load <2 x i64>, ptr %2, align 8, !tbaa !15
  %i.z = xor <2 x i64> %i.x, %i.y                 ; 2 uses
  %i.aa = getelementptr i8, ptr %2, i64 16        ; 5 uses
  %i.ab = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ac = load <2 x i64>, ptr %3, align 1
  store <2 x i64> %i.z, ptr %2, align 8, !tbaa !15
  %4 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !15
  %5 = xor <2 x i64> %i.ac, %4
  store <2 x i64> %5, ptr %i.aa, align 8, !tbaa !15
  %6 = getelementptr i8, ptr %2, i64 32           ; 4 uses
  %7 = load i64, ptr %6, align 8, !tbaa !15
  %8 = xor i64 %.val637, %7
  store i64 %8, ptr %6, align 8, !tbaa !15
  %i.ad = getelementptr i8, ptr %2, i64 40        ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.af = xor i64 %.val636, %i.ae
end_hunk_7
begin_hunk_8_@_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32:.preheader
  %i.ch = xor i64 %.val618, %i.cg
  %i.ci = getelementptr i8, ptr %2, i64 192       ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.ck = xor i64 %i.v, %i.cj
  %.promoted = load i64, ptr %i.w, align 8, !tbaa !15
  %.promoted657 = load i64, ptr %i.aa, align 8, !tbaa !15
  %.promoted658 = load i64, ptr %i.ab, align 8, !tbaa !15
  %.promoted659 = load i64, ptr %6, align 8, !tbaa !15
  %9 = extractelement <2 x i64> %i.z, i64 0
  br label %bb.b

bb.a:                                             ; preds = %bb.b
end_hunk_8
begin_hunk_9_@_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32:.preheader
  %i.dg = phi i64 [ %i.bj, %.preheader ], [ %i.if, %bb.b ] ; 2 uses
  %i.dh = phi i64 [ %i.au, %.preheader ], [ %i.hq, %bb.b ] ; 2 uses
  %i.di = phi i64 [ %i.af, %.preheader ], [ %i.hb, %bb.b ] ; 2 uses
  %i.dj = phi i64 [ %9, %.preheader ], [ %i.jk, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.dk = xor i64 %i.di, %i.dj
  %i.dl = xor i64 %i.dk, %i.dh
end_hunk_9
begin_hunk_10_@_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32:.preheader
  %i.es = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 1)
  %i.et = xor i64 %i.es, %i.dr                    ; 5 uses
  %i.eu = xor i64 %i.et, %i.cn                    ; 3 uses
  store i64 %i.eu, ptr %i.aa, align 8, !tbaa !15
  %i.ev = xor i64 %i.et, %i.da                    ; 2 uses
  %i.ew = xor i64 %i.et, %i.cz                    ; 2 uses
  %i.ex = xor i64 %i.et, %i.cy                    ; 2 uses
end_hunk_10
begin_hunk_11_@_Py_LibHacl_Hacl_Hash_SHA3_absorb_inner_32:.preheader
  %i.gx = and i64 %i.gk, %i.gw
  %i.gy = xor i64 %i.fy, %i.gx                    ; 2 uses
  store i64 %i.gp, ptr %i.w, align 8, !tbaa !15
  store i64 %i.gs, ptr %i.aa, align 8, !tbaa !15
  store i64 %i.gv, ptr %i.ab, align 8, !tbaa !15
  store i64 %i.gy, ptr %6, align 8, !tbaa !15
  %i.gz = xor i64 %i.gj, -1
  %i.ha = and i64 %i.fo, %i.gz
  %i.hb = xor i64 %i.ha, %i.ft                    ; 2 uses
end_hunk_11
