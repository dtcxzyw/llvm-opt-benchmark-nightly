inline.NumInlined: 1858
inline.NumDeleted: 966
begin_hunk_0_@_ZN6Assimp7OpenGEX15OpenGEXImporter19handleObjectRefNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc16
  %5 = add i64 %i.aw, -8
  %6 = sub i64 %5, %i.ax                          ; 2 uses
  %i.bi = lshr i64 %6, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %7 = add i64 %i.aw, -8
  %i.bk = sub i64 %7, %i.ax
  %i.bl = and i64 %i.bk, -8
  %8 = add i64 %i.bl, 8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 %8
  %scevgep38 = getelementptr i8, ptr %i.av, i64 %8
  %bound0 = icmp ult ptr %i.bg, %scevgep38
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
begin_hunk_1_@_ZN6Assimp7OpenGEX15OpenGEXImporter21handleMaterialRefNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc15
  %5 = add i64 %i.al, -8
  %6 = sub i64 %5, %i.am                          ; 2 uses
  %i.ax = lshr i64 %6, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %7 = add i64 %i.al, -8
  %i.az = sub i64 %7, %i.am
  %i.ba = and i64 %i.az, -8
  %8 = add i64 %i.ba, 8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %8
  %scevgep40 = getelementptr i8, ptr %i.ak, i64 %8
  %bound0 = icmp ult ptr %i.av, %scevgep40
  %bound1 = icmp ult ptr %i.ak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_1
begin_hunk_2_@_ZN6Assimp7OpenGEX15OpenGEXImporter14handleMeshNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %5 = add i64 %i.m, -8
  %6 = sub i64 %5, %i.n                           ; 2 uses
  %i.ac = lshr i64 %6, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %7 = add i64 %i.m, -8
  %i.ae = sub i64 %7, %i.n
  %i.af = and i64 %i.ae, -8
  %8 = add i64 %i.af, 8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %8
  %scevgep52 = getelementptr i8, ptr %i.l, i64 %8
  %bound0 = icmp ult ptr %i.aa, %scevgep52
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_2
