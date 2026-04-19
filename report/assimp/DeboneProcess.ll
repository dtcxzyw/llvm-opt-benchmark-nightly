inline.NumInlined: 781
inline.NumDeleted: 427
begin_hunk_0_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi.a = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi484 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i32> %vec.ind, splat (i32 2)
  %i.al = lshr i32 %index, 6
  %i.am = lshr i32 %index, 6
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.an
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ao
  %i.ar = and <2 x i32> %vec.ind, splat (i32 63)
  %i.as = and <2 x i32> %step.add, splat (i32 63)
  %i.at = zext nneg <2 x i32> %i.ar to <2 x i64>
  %i.au = zext nneg <2 x i32> %i.as to <2 x i64>
end_hunk_0
begin_hunk_1_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  %i.ba = and <2 x i32> %i.az, splat (i32 1)
  %i.bb = trunc <2 x i64> %i.ay to <2 x i32>
  %i.bc = and <2 x i32> %i.bb, splat (i32 1)
  %i.bd = add <2 x i32> %i.ba, %vec.phi.a         ; 2 uses
  %i.be = add <2 x i32> %i.bc, %vec.phi484        ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i32> %vec.ind, splat (i32 4)
  %i.bf = icmp eq i32 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !7

end_hunk_1
begin_hunk_2_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br i1 %cmp.n, label %._crit_edge258, label %.lr.ph257.preheader546

.lr.ph257.preheader546:                           ; preds = %.lr.ph257.preheader, %middle.block
  %.052256.ph = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.bg, %middle.block ]
  %.056255.ph = phi i32 [ 0, %.lr.ph257.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph257

._crit_edge258:                                   ; preds = %.lr.ph257, %middle.block
end_hunk_2
begin_hunk_3_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br i1 %i.bh, label %.critedge, label %bb.h

.lr.ph257:                                        ; preds = %.lr.ph257.preheader546, %.lr.ph257
  %.052256 = phi i32 [ %spec.select, %.lr.ph257 ], [ %.052256.ph, %.lr.ph257.preheader546 ]
  %.056255 = phi i32 [ %i.bq, %.lr.ph257 ], [ %.056255.ph, %.lr.ph257.preheader546 ] ; 3 uses
  %i.bi = lshr i32 %.056255, 6
  %.zext180 = zext nneg i32 %i.bi to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext180
  %i.bk = and i32 %.056255, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = load i64, ptr %i.bj, align 8
  %i.bn = lshr i64 %i.bm, %i.bl
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 1
  %spec.select = add nuw nsw i32 %i.bp, %.052256  ; 2 uses
  %i.bq = add nuw i32 %.056255, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %i.ab
  br i1 %exitcond.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !10

end_hunk_3
begin_hunk_4_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br label %._crit_edge275

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit, %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit
  %.sroa.26.0.lcssa.a = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit ], [ %.sroa.26.2.a, %._crit_edge275.loopexit ] ; 2 uses
  %.sroa.14.0.lcssa = phi i64 [ 0, %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit ], [ %i.cq, %._crit_edge275.loopexit ]
  %.sroa.0143.0.lcssa = phi ptr [ null, %_ZNSt6vectorIS_ISt4pairIjP6aiNodeESaIS3_EESaIS5_EE6resizeEm.exit ], [ %.sroa.0143.2, %._crit_edge275.loopexit ] ; 6 uses
  %i.cr = ptrtoint ptr %.sroa.0143.0.lcssa to i64 ; 2 uses
  %i.cs = sub i64 %.sroa.14.0.lcssa, %i.cr        ; 4 uses
  %i.ct = lshr exact i64 %i.cs, 3
  %i.cu = trunc i64 %i.ct to i32                  ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a

bb.n:                                             ; preds = %.lr.ph274, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit
  %indvars.iv318 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next319, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit ] ; 6 uses
  %.sroa.0143.0272 = phi ptr [ null, %.lr.ph274 ], [ %.sroa.0143.2, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit ] ; 8 uses
  %.sroa.14.0271 = phi ptr [ null, %.lr.ph274 ], [ %.sroa.14.2, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit ] ; 7 uses
  %.sroa.26.0270 = phi ptr [ null, %.lr.ph274 ], [ %.sroa.26.2.a, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit ] ; 6 uses
  %i.cz = load ptr, ptr %i.cm, align 8
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv318
  %i.db = load ptr, ptr %i.da, align 8            ; 7 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
          to label %bb.p unwind label %.loopexit187

.loopexit187:                                     ; preds = %bb.o, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i111
  %.sroa.26.0270.lcssa = phi ptr [ %.sroa.26.0270, %bb.o ], [ %.sroa.14.0271, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i111 ]
  %lpad.loopexit189 = landingpad { ptr, i32 }
          cleanup
  %.pre323 = load ptr, ptr %2, align 8
end_hunk_6
begin_hunk_7_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  %i.dm = phi ptr [ %i.fl, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %.pre, %.lr.ph265.preheader ] ; 4 uses
  %i.dn = phi i64 [ %i.ft, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ 0, %.lr.ph265.preheader ] ; 2 uses
  %.051263 = phi i32 [ %i.fs, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ 0, %.lr.ph265.preheader ]
  %.sroa.0143.1262 = phi ptr [ %.sroa.0143.5, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %.sroa.0143.0272, %.lr.ph265.preheader ] ; 8 uses
  %.sroa.14.1261 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %.sroa.14.0271, %.lr.ph265.preheader ] ; 6 uses
  %.sroa.26.1260 = phi ptr [ %.sroa.26.5.a, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %.sroa.26.0270, %.lr.ph265.preheader ] ; 5 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
_ZN6aiNode8FindNodeERK8aiString.exit:             ; preds = %.lr.ph265, %bb.q
  %i.du = phi ptr [ %i.dt, %bb.q ], [ null, %.lr.ph265 ] ; 2 uses
  %i.dv = ptrtoint ptr %.sroa.14.1261 to i64
  %i.dw = ptrtoint ptr %.sroa.0143.1262 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 6 uses
  %i.dy = ashr exact i64 %i.dx, 3                 ; 4 uses
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  %i.em = icmp eq i64 %i.el, 9223372036854775792
  br i1 %i.em, label %bb.t, label %_ZNKSt6vectorISt4pairIjP6aiNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc91 unwind label %.loopexit.split-lp

end_hunk_9
begin_hunk_10_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br label %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.r
  %.not.i93 = icmp eq ptr %.sroa.14.1261, %.sroa.26.1260
  br i1 %.not.i93, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
end_hunk_10
begin_hunk_11_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.fa = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.fa, label %3, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

3:                                                ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc96 unwind label %.loopexit.split-lp

.noexc96:                                         ; preds = %3
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %.sroa.speculated.i.i.i94 = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
end_hunk_11
begin_hunk_12_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br i1 %i.fj, label %bb.x, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.x:                                             ; preds = %.noexc97
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr align 8 %.sroa.0143.1262, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.x, %.noexc97
  %.not.i17.i.i = icmp eq ptr %.sroa.0143.1262, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.1262, i64 noundef %i.dx) #22
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
end_hunk_12
begin_hunk_13_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.v
  %.sroa.26.5.a = phi ptr [ %i.fk, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.26.1260, %bb.v ] ; 4 uses
  %.pn = phi ptr [ %i.fh, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.14.1261, %bb.v ]
  %.sroa.0143.5 = phi ptr [ %i.fg, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0143.1262, %bb.v ] ; 4 uses
  %.sroa.14.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %2, align 8               ; 5 uses
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.dn
end_hunk_13
begin_hunk_14_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br label %.thread355

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIjP6aiNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.26.1260.lcssa284 = phi ptr [ %.sroa.26.1260, %_ZNKSt6vectorISt4pairIjP6aiNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.14.1261, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread355

.loopexit.split-lp:                               ; preds = %bb.t, %3
  %.sroa.26.1260287 = phi ptr [ %.sroa.26.1260, %bb.t ], [ %.sroa.14.1261, %3 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread355
end_hunk_14
begin_hunk_15_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a

.thread355:                                       ; preds = %bb.ae, %bb.af, %bb.z, %.loopexit.split-lp, %.loopexit
  %i.gh = phi ptr [ %i.fl, %bb.ae ], [ %i.fl, %bb.af ], [ %i.dm, %bb.z ], [ %i.dm, %.loopexit ], [ %i.dm, %.loopexit.split-lp ]
  %.sroa.26.1213 = phi ptr [ %.sroa.26.5.a, %bb.ae ], [ %.sroa.26.5.a, %bb.af ], [ %.sroa.26.1260, %bb.z ], [ %.sroa.26.1260.lcssa284, %.loopexit ], [ %.sroa.26.1260287, %.loopexit.split-lp ]
  %.sroa.0143.1201 = phi ptr [ %.sroa.0143.5, %bb.ae ], [ %.sroa.0143.5, %bb.af ], [ %.sroa.0143.1262, %bb.z ], [ %.sroa.0143.1262, %.loopexit ], [ %.sroa.0143.1262, %.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.ae ], [ %i.gf, %bb.af ], [ %i.ga, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
end_hunk_15
begin_hunk_16_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  %i.gj = load ptr, ptr %i.br, align 8
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv318 ; 4 uses
  %i.gl = ptrtoint ptr %.sroa.14.0271 to i64
  %i.gm = ptrtoint ptr %.sroa.0143.0272 to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 6 uses
  %i.go = ashr exact i64 %i.gn, 3                 ; 4 uses
  %i.gp = trunc i64 %i.go to i32                  ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br label %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJjS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJjS2_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE17_M_realloc_insertIJjS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.aj
  %.not.i110 = icmp eq ptr %.sroa.14.0271, %.sroa.26.0270
  br i1 %.not.i110, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt4pairIjP6aiNodeESaIS3_EE12emplace_backIJjS2_EEERS3_DpOT_.exit
end_hunk_17
begin_hunk_18_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br i1 %i.hy, label %bb.aq, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114

bb.aq:                                            ; preds = %.noexc117
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr align 8 %.sroa.0143.0272, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114: ; preds = %bb.aq, %.noexc117
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.not.i17.i.i115 = icmp eq ptr %.sroa.0143.0272, null
  br i1 %.not.i17.i.i115, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.0272, i64 noundef %i.gn) #22
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ar, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i114
end_hunk_18
begin_hunk_19_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br label %bb.at

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.an, %bb.ai
  %.sroa.26.2.a = phi ptr [ %.sroa.26.5.a, %bb.ai ], [ %i.ia, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.26.0270, %bb.an ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.3, %bb.ai ], [ %i.hz, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hp, %bb.an ] ; 2 uses
  %.sroa.0143.2 = phi ptr [ %.sroa.0143.5, %bb.ai ], [ %i.hw, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0143.0272, %bb.an ] ; 2 uses
  %i.ib = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i118 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit, label %bb.as
end_hunk_19
begin_hunk_20_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a

bb.at:                                            ; preds = %.loopexit192, %.loopexit.split-lp193, %.loopexit187, %.loopexit.split-lp188
  %i.ij = phi ptr [ %i.gi, %.loopexit.split-lp188 ], [ %i.gi, %.loopexit.split-lp193 ], [ %.pre323, %.loopexit187 ], [ %i.gi, %.loopexit192 ] ; 2 uses
  %.sroa.26.3 = phi ptr [ %.sroa.14.0271, %.loopexit.split-lp188 ], [ %.sroa.26.0270, %.loopexit.split-lp193 ], [ %.sroa.26.0270.lcssa, %.loopexit187 ], [ %.sroa.26.0270, %.loopexit192 ] ; 2 uses
  %.pn68 = phi { ptr, i32 } [ %lpad.loopexit.split-lp190, %.loopexit.split-lp188 ], [ %lpad.loopexit.split-lp195, %.loopexit.split-lp193 ], [ %lpad.loopexit189, %.loopexit187 ], [ %lpad.loopexit194, %.loopexit192 ] ; 2 uses
  %.not.i.i.i119 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120, label %bb.au
end_hunk_20
begin_hunk_21_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
bb.au:                                            ; preds = %.thread355, %bb.at
  %.pn68364 = phi { ptr, i32 } [ %.pn.pn, %.thread355 ], [ %.pn68, %bb.at ]
  %.sroa.0143.3362 = phi ptr [ %.sroa.0143.1201, %.thread355 ], [ %.sroa.0143.0272, %bb.at ]
  %.sroa.26.3360 = phi ptr [ %.sroa.26.1213, %.thread355 ], [ %.sroa.26.3, %bb.at ]
  %i.ik = phi ptr [ %i.gh, %.thread355 ], [ %i.ij, %bb.at ] ; 2 uses
  %i.il = load ptr, ptr %i.cp, align 8
  %i.im = ptrtoint ptr %i.il to i64
end_hunk_21
begin_hunk_22_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120: ; preds = %bb.at, %bb.au
  %.pn68365 = phi { ptr, i32 } [ %.pn68, %bb.at ], [ %.pn68364, %bb.au ]
  %.sroa.0143.3363 = phi ptr [ %.sroa.0143.0272, %bb.at ], [ %.sroa.0143.3362, %bb.au ]
  %.sroa.26.3361 = phi ptr [ %.sroa.26.3, %bb.at ], [ %.sroa.26.3360, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.be

end_hunk_22
begin_hunk_23_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br i1 %i.it, label %bb.ay, label %bb.az, !prof !23

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.is, ptr align 8 %.sroa.0143.0.lcssa, i64 %i.cs, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.az:                                            ; preds = %bb.ax
end_hunk_23
begin_hunk_24_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br i1 %i.iu, label %bb.ba, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ba:                                            ; preds = %bb.az
  %i.iv = load ptr, ptr %.sroa.0143.0.lcssa, align 8
  store ptr %i.iv, ptr %i.is, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

end_hunk_24
begin_hunk_25_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %.not.i.i.i121 = icmp eq ptr %.sroa.0143.0.lcssa, null
  br i1 %.not.i.i.i121, label %.critedge, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iy = ptrtoint ptr %.sroa.26.0.lcssa.a to i64
  %i.iz = sub i64 %i.iy, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.0.lcssa, i64 noundef %i.iz) #22
  br label %.critedge

bb.bd:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %bb.aw
end_hunk_25
begin_hunk_26_@_ZN6Assimp13DeboneProcess7ExecuteEP7aiScene:bb.a
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120
  %.sroa.26.4.a = phi ptr [ %.sroa.26.3361, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120 ], [ %.sroa.26.0.lcssa.a, %bb.bd ]
  %.sroa.0143.4 = phi ptr [ %.sroa.0143.3363, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120 ], [ %.sroa.0143.0.lcssa, %bb.bd ] ; 3 uses
  %.pn68.pn = phi { ptr, i32 } [ %.pn68365, %_ZNSt6vectorISt4pairIP6aiMeshPK6aiBoneESaIS6_EED2Ev.exit120 ], [ %i.ja, %bb.bd ] ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %.sroa.0143.4, null
  br i1 %.not.i.i.i122, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit126, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jb = ptrtoint ptr %.sroa.26.4.a to i64
  %i.jc = ptrtoint ptr %.sroa.0143.4 to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0143.4, i64 noundef %i.jd) #22
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit126

.critedge:                                        ; preds = %bb.bc, %bb.bb, %bb.g, %._crit_edge, %._crit_edge258
end_hunk_26
begin_hunk_27_@_ZN6Assimp13DeboneProcess12ConsiderMeshEPK6aiMesh:bb.a
  br label %.preheader164.lr.ph

.preheader164.lr.ph:                              ; preds = %bb.b, %.noexc84
  %.sroa.17.0 = phi i64 [ 0, %bb.b ], [ %i.s, %.noexc84 ] ; 2 uses
  %.sroa.0123.0 = phi ptr [ null, %bb.b ], [ %i.q, %.noexc84 ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.preheader164

end_hunk_27
begin_hunk_28_@_ZNK6Assimp13DeboneProcess9SplitMeshEPK6aiMeshRSt6vectorISt4pairIPS1_PK6aiBoneESaISA_EE:bb.a
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc143, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.sroa.17.0 = phi i64 [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.p, %.noexc143 ] ; 2 uses
  %.sroa.0286.0 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ], [ %i.n, %.noexc143 ] ; 9 uses
  br i1 %.not.i.i, label %._crit_edge346, label %.preheader338.lr.ph

.preheader338.lr.ph:                              ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
end_hunk_28
begin_hunk_29_@_ZNK6Assimp13DeboneProcess9SplitMeshEPK6aiMeshRSt6vectorISt4pairIPS1_PK6aiBoneESaISA_EE:bb.a
  br i1 %i.bu, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !30

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit151:         ; preds = %.noexc150, %._crit_edge346
  %.sroa.18.0 = phi i64 [ 0, %._crit_edge346 ], [ %i.al, %.noexc150 ] ; 2 uses
  %.sroa.0269.0 = phi ptr [ null, %._crit_edge346 ], [ %i.aj, %.noexc150 ] ; 10 uses
  %i.bv = zext i32 %i.ae to i64                   ; 2 uses
  %.not.i.i.i.i158 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i158, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit165, label %bb.l
end_hunk_29
begin_hunk_30_@_ZNK6Assimp13DeboneProcess9SplitMeshEPK6aiMeshRSt6vectorISt4pairIPS1_PK6aiBoneESaISA_EE:bb.a
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit165

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit165:         ; preds = %.noexc164, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit151
  %.sroa.14.0 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit151 ], [ %i.bz, %.noexc164 ] ; 2 uses
  %.sroa.0261.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit151 ], [ %i.bx, %.noexc164 ] ; 9 uses
  br i1 %.not.i.i.i.i144, label %._crit_edge362.thread, label %.lr.ph356

.lr.ph356:                                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit165
end_hunk_30
begin_hunk_31_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
end_hunk_31
begin_hunk_32_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.031, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.031, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

end_hunk_32
