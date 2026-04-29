inline.NumInlined: 1740
inline.NumDeleted: 961
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadBB3DEP7aiScene:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader845, label %vector.ph823

vector.ph823:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec825 = and i64 %i.ke, 4611686018427387900  ; 4 uses
  %i.kg = shl i64 %n.vec825, 3
  %i.kh = getelementptr i8, ptr %i.jx, i64 %i.kg  ; 2 uses
  %14 = shl i64 %n.vec825, 3
  %i.ki = getelementptr i8, ptr %i.jm, i64 %14
  br label %vector.body826

vector.body826:                                   ; preds = %vector.body826, %vector.ph823
  %index827 = phi i64 [ 0, %vector.ph823 ], [ %index.next834, %vector.body826 ] ; 3 uses
  %offset.idx828 = shl i64 %index827, 3
  %next.gep829 = getelementptr i8, ptr %i.jx, i64 %offset.idx828 ; 2 uses
  %offset.idx830 = shl i64 %index827, 3
  %next.gep831 = getelementptr i8, ptr %i.jm, i64 %offset.idx830 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.kj = getelementptr i8, ptr %next.gep831, i64 16
end_hunk_0
begin_hunk_1_@_ZN6Assimp11B3DImporter8ReadBB3DEP7aiScene:bb.a
  br i1 %or.cond839, label %.lr.ph.i.i.i.i.i.1.preheader844, label %vector.ph803

vector.ph803:                                     ; preds = %.lr.ph.i.i.i.i.i.1.preheader
  %n.vec805 = and i64 %i.lx, 4611686018427387900  ; 4 uses
  %i.lz = shl i64 %n.vec805, 3
  %i.ma = getelementptr i8, ptr %i.lq, i64 %i.lz  ; 2 uses
  %15 = shl i64 %n.vec805, 3
  %i.mb = getelementptr i8, ptr %i.lf, i64 %15
  br label %vector.body806

vector.body806:                                   ; preds = %vector.body806, %vector.ph803
  %index807 = phi i64 [ 0, %vector.ph803 ], [ %index.next814, %vector.body806 ] ; 3 uses
  %offset.idx808 = shl i64 %index807, 3
  %next.gep809 = getelementptr i8, ptr %i.lq, i64 %offset.idx808 ; 2 uses
  %offset.idx810 = shl i64 %index807, 3
  %next.gep811 = getelementptr i8, ptr %i.lf, i64 %offset.idx810 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.mc = getelementptr i8, ptr %next.gep811, i64 16
end_hunk_1
begin_hunk_2_@_ZN6Assimp11B3DImporter8ReadBB3DEP7aiScene:bb.a
  br i1 %or.cond840, label %.lr.ph.i.i.i.i.i.2.preheader843, label %vector.ph783

vector.ph783:                                     ; preds = %.lr.ph.i.i.i.i.i.2.preheader
  %n.vec785 = and i64 %i.nq, 4611686018427387900  ; 4 uses
  %i.ns = shl i64 %n.vec785, 3
  %i.nt = getelementptr i8, ptr %i.nj, i64 %i.ns  ; 2 uses
  %16 = shl i64 %n.vec785, 3
  %i.nu = getelementptr i8, ptr %i.my, i64 %16
  br label %vector.body786

vector.body786:                                   ; preds = %vector.body786, %vector.ph783
  %index787 = phi i64 [ 0, %vector.ph783 ], [ %index.next794, %vector.body786 ] ; 3 uses
  %offset.idx788 = shl i64 %index787, 3
  %next.gep789 = getelementptr i8, ptr %i.nj, i64 %offset.idx788 ; 2 uses
  %offset.idx790 = shl i64 %index787, 3
  %next.gep791 = getelementptr i8, ptr %i.my, i64 %offset.idx790 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.nv = getelementptr i8, ptr %next.gep791, i64 16
end_hunk_2
begin_hunk_3_@_ZN6Assimp11B3DImporter8ReadBB3DEP7aiScene:bb.a
  br i1 %or.cond841, label %.lr.ph.i.i.i.i.i.3.preheader842, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.3.preheader
  %n.vec = and i64 %i.pj, 4611686018427387900     ; 4 uses
  %i.pl = shl i64 %n.vec, 3
  %i.pm = getelementptr i8, ptr %i.pc, i64 %i.pl  ; 2 uses
  %17 = shl i64 %n.vec, 3
  %i.pn = getelementptr i8, ptr %i.or, i64 %17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.pc, i64 %offset.idx ; 2 uses
  %offset.idx775 = shl i64 %index, 3
  %next.gep776 = getelementptr i8, ptr %i.or, i64 %offset.idx775 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.po = getelementptr i8, ptr %next.gep776, i64 16
end_hunk_3
begin_hunk_4_@_ZN6Assimp11B3DImporter8ReadBRUSEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader212, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fm, 4611686018427387900     ; 4 uses
  %i.fq = shl i64 %n.vec, 3
  %i.fr = getelementptr i8, ptr %i.fh, i64 %i.fq  ; 2 uses
  %23 = shl i64 %n.vec, 3
  %i.fs = getelementptr i8, ptr %i.ew, i64 %23
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.fh, i64 %offset.idx ; 2 uses
  %offset.idx208 = shl i64 %index, 3
  %next.gep209 = getelementptr i8, ptr %i.ew, i64 %offset.idx208 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.ft = getelementptr i8, ptr %next.gep209, i64 16
end_hunk_4
begin_hunk_5_@_ZN6Assimp11B3DImporter8ReadTRISEi:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dn, 4611686018427387900     ; 4 uses
  %i.ds = shl i64 %n.vec, 3
  %i.dt = getelementptr i8, ptr %i.di, i64 %i.ds  ; 2 uses
  %15 = shl i64 %n.vec, 3
  %i.du = getelementptr i8, ptr %i.cx, i64 %15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.di, i64 %offset.idx ; 2 uses
  %offset.idx117 = shl i64 %index, 3
  %next.gep118 = getelementptr i8, ptr %i.cx, i64 %offset.idx117 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.dv = getelementptr i8, ptr %next.gep118, i64 16
end_hunk_5
begin_hunk_6_@_ZN6Assimp11B3DImporter8ReadANIMEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 4 uses
  %i.bx = shl i64 %n.vec, 3
  %i.by = getelementptr i8, ptr %i.bn, i64 %i.bx  ; 2 uses
  %8 = shl i64 %n.vec, 3
  %i.bz = getelementptr i8, ptr %i.bc, i64 %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bn, i64 %offset.idx ; 2 uses
  %offset.idx30 = shl i64 %index, 3
  %next.gep31 = getelementptr i8, ptr %i.bc, i64 %offset.idx30 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.ca = getelementptr i8, ptr %next.gep31, i64 16
end_hunk_6
begin_hunk_7_@_ZN6Assimp11B3DImporter8ReadNODEEP6aiNode:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader518, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.li, 4611686018427387900     ; 4 uses
  %i.ln = shl i64 %n.vec, 3
  %i.lo = getelementptr i8, ptr %i.ld, i64 %i.ln  ; 2 uses
  %5 = shl i64 %n.vec, 3
  %i.lp = getelementptr i8, ptr %i.ks, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ld, i64 %offset.idx ; 2 uses
  %offset.idx511 = shl i64 %index, 3
  %next.gep512 = getelementptr i8, ptr %i.ks, i64 %offset.idx511 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.lq = getelementptr i8, ptr %next.gep512, i64 16
end_hunk_7
begin_hunk_8_@_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 4 uses
  %i.ab = shl i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %3 = shl i64 %n.vec, 3
  %i.ad = getelementptr i8, ptr %i.d, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %offset.idx ; 2 uses
  %offset.idx36 = shl i64 %index, 3
  %next.gep37 = getelementptr i8, ptr %i.d, i64 %offset.idx36 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.ae = getelementptr i8, ptr %next.gep37, i64 16
end_hunk_8
begin_hunk_9_@_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  br i1 %found.conflict45, label %.lr.ph.i.i.i17.preheader64, label %vector.ph48

vector.ph48:                                      ; preds = %vector.memcheck40
  %n.vec50 = and i64 %i.ap, 4611686018427387900   ; 4 uses
  %i.av = shl i64 %n.vec50, 3
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %4 = shl i64 %n.vec50, 3
  %i.ax = getelementptr i8, ptr %1, i64 %4
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph48
  %index52 = phi i64 [ 0, %vector.ph48 ], [ %index.next59, %vector.body51 ] ; 3 uses
  %offset.idx53 = shl i64 %index52, 3
  %next.gep54 = getelementptr i8, ptr %i.al, i64 %offset.idx53 ; 2 uses
  %offset.idx55 = shl i64 %index52, 3
  %next.gep56 = getelementptr i8, ptr %1, i64 %offset.idx55 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.ay = getelementptr i8, ptr %next.gep56, i64 16
end_hunk_9
