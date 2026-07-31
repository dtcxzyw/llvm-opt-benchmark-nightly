inline.NumInlined: 7873
inline.NumDeleted: 3418
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.bj = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30, !noalias !129 ; 3 uses
  store ptr %2, ptr %i.bj, align 8, !tbaa !132, !noalias !129
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false), !noalias !129
  store ptr %i.bj, ptr %5, align 8, !tbaa !105, !alias.scope !129
  %.not62 = icmp eq ptr %3, null
  br i1 %.not62, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12NeighborInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.n       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !115 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !116
  %.not.i11 = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = ptrtoint ptr %3 to i64
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !117
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !115
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25

bb.l:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !107 ; 7 uses
  %i.bu = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %.invoke, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i12

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i12: ; preds = %bb.l
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i13 = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i13, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i14)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #30
          to label %.noexc24 unwind label %bb.n   ; 8 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = ptrtoint ptr %3 to i64
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i15 = icmp eq ptr %i.bt, %i.bo
  br i1 %.not10.i.i.i.i.i.i15, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20, label %.lr.ph.i.i.i.i.i.i16.preheader

.lr.ph.i.i.i.i.i.i16.preheader:                   ; preds = %.noexc24
  %i.ch = ptrtoaddr ptr %i.ce to i64
  %i.ci = sub i64 %i.bu, %i.bv
  %i.cj = add i64 %i.ci, -8                       ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check75 = icmp ult i64 %i.cj, 72
  %i.cm = sub i64 %i.bv, %i.ch
  %diff.check73 = icmp ugt i64 %i.cm, -32
  %or.cond108 = or i1 %min.iters.check75, %diff.check73
  br i1 %or.cond108, label %.lr.ph.i.i.i.i.i.i16.preheader110, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph.i.i.i.i.i.i16.preheader
  %n.vec78 = and i64 %i.cl, 4611686018427387900   ; 3 uses
  %i.cn = shl i64 %n.vec78, 3                     ; 2 uses
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.cn  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bt, i64 %i.cn
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph76
  %index80 = phi i64 [ 0, %vector.ph76 ], [ %index.next85, %vector.body79 ] ; 2 uses
  %i.cq = shl i64 %index80, 3                     ; 2 uses
  %next.gep81 = getelementptr i8, ptr %i.ce, i64 %i.cq ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.bt, i64 %i.cq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.cr = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load83 = load <2 x i64>, ptr %next.gep82, align 8, !tbaa !117, !alias.scope !136, !noalias !133
  %wide.load84 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !117, !alias.scope !136, !noalias !133
  %i.cs = getelementptr i8, ptr %next.gep81, i64 16
  store <2 x i64> %wide.load83, ptr %next.gep81, align 8, !tbaa !117, !alias.scope !133, !noalias !136
  store <2 x i64> %wide.load84, ptr %i.cs, align 8, !tbaa !117, !alias.scope !133, !noalias !136
  %index.next85 = add nuw i64 %index80, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.ct, label %middle.block86, label %vector.body79, !llvm.loop !138

middle.block86:                                   ; preds = %vector.body79
  %cmp.n87 = icmp eq i64 %i.cl, %n.vec78
  br i1 %cmp.n87, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20, label %.lr.ph.i.i.i.i.i.i16.preheader110

.lr.ph.i.i.i.i.i.i16.preheader110:                ; preds = %.lr.ph.i.i.i.i.i.i16.preheader, %middle.block86
  %.012.i.i.i.i.i.i17.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i16.preheader ], [ %i.co, %middle.block86 ]
  %.0911.i.i.i.i.i.i18.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i16.preheader ], [ %i.cp, %middle.block86 ]
  br label %.lr.ph.i.i.i.i.i.i16

.lr.ph.i.i.i.i.i.i16:                             ; preds = %.lr.ph.i.i.i.i.i.i16.preheader110, %.lr.ph.i.i.i.i.i.i16
  %.012.i.i.i.i.i.i17 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i16 ], [ %.012.i.i.i.i.i.i17.ph, %.lr.ph.i.i.i.i.i.i16.preheader110 ] ; 2 uses
  %.0911.i.i.i.i.i.i18 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i16 ], [ %.0911.i.i.i.i.i.i18.ph, %.lr.ph.i.i.i.i.i.i16.preheader110 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.cu = load i64, ptr %.0911.i.i.i.i.i.i18, align 8, !tbaa !117, !alias.scope !136, !noalias !133
  store i64 %i.cu, ptr %.012.i.i.i.i.i.i17, align 8, !tbaa !117, !alias.scope !133, !noalias !136
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i18, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i17, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i19 = icmp eq ptr %i.cv, %i.bo
  br i1 %.not.i.i.i.i.i.i19, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20, label %.lr.ph.i.i.i.i.i.i16, !llvm.loop !139

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20: ; preds = %.lr.ph.i.i.i.i.i.i16, %middle.block86, %.noexc24
  %.0.lcssa.i.i.i.i.i.i21 = phi ptr [ %i.ce, %.noexc24 ], [ %i.co, %middle.block86 ], [ %i.cw, %.lr.ph.i.i.i.i.i.i16 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i21, i64 8
  %.not.i23.i.i22 = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i22, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i23, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i23

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i23: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20
  store ptr %i.ce, ptr %i.bm, align 8, !tbaa !107
  store ptr %i.cx, ptr %i.bn, align 8, !tbaa !115
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cy, ptr %i.bp, align 8, !tbaa !116
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25

bb.n:                                             ; preds = %.invoke, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i12, %bb.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.cz

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i23, %bb.k, %.critedge
  invoke void @_ZNK6duckdb12optional_ptrINS_15QueryGraphEdges9QueryEdgeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.n

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25
  %i.da = load ptr, ptr %4, align 8, !tbaa !113   ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !104 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.dc, %i.de
  br i1 %.not.i.i, label %bb.p, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.o
  %i.df = load i64, ptr %5, align 8, !tbaa !105
  store i64 %i.df, ptr %i.dc, align 8, !tbaa !105
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !104
  br label %_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !102 ; 10 uses
  %i.di = ptrtoint ptr %i.dc to i64               ; 3 uses
  %i.dj = ptrtoint ptr %i.dh to i64               ; 3 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775800
  br i1 %i.dl, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.l, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dm = ashr exact i64 %i.dk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #30
          to label %.noexc28 unwind label %bb.n   ; 10 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk
  %i.du = load i64, ptr %5, align 8, !tbaa !105
  store i64 %i.du, ptr %i.dt, align 8, !tbaa !105
  store ptr null, ptr %5, align 8, !tbaa !105
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dh, %i.dc
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc28
  %i.dv = sub i64 %i.di, %i.dj
  %i.dw = add i64 %i.dv, -8                       ; 2 uses
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.dw, 136
  br i1 %min.iters.check93, label %.lr.ph.i.i.i.i.i.i.i.preheader109, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dz = add i64 %i.di, -8
  %i.ea = sub i64 %i.dz, %i.dj
  %i.eb = and i64 %i.ea, -8
  %i.ec = add i64 %i.eb, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ds, i64 %i.ec
  %scevgep91 = getelementptr i8, ptr %i.dh, i64 %i.ec
  %bound0 = icmp ult ptr %i.ds, %scevgep91
  %bound1 = icmp ult ptr %i.dh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader109, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck90
  %n.vec96 = and i64 %i.dy, 4611686018427387900   ; 3 uses
  %i.ed = shl i64 %n.vec96, 3                     ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ds, i64 %i.ed  ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dh, i64 %i.ed
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph94
  %index98 = phi i64 [ 0, %vector.ph94 ], [ %index.next103, %vector.body97 ] ; 2 uses
  %i.eg = shl i64 %index98, 3                     ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.ds, i64 %i.eg ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.dh, i64 %i.eg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.eh = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load101 = load <2 x i64>, ptr %next.gep100, align 8, !tbaa !105, !alias.scope !146, !noalias !141
  %wide.load102 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !105, !alias.scope !146, !noalias !141
  %i.ei = getelementptr i8, ptr %next.gep99, i64 16
  store <2 x i64> %wide.load101, ptr %next.gep99, align 8, !tbaa !105, !alias.scope !149, !noalias !146
  store <2 x i64> %wide.load102, ptr %i.ei, align 8, !tbaa !105, !alias.scope !149, !noalias !146
  %i.ej = getelementptr i8, ptr %next.gep100, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep100, align 8, !tbaa !105, !alias.scope !146, !noalias !141
  store <2 x ptr> splat (ptr null), ptr %i.ej, align 8, !tbaa !105, !alias.scope !146, !noalias !141
  %index.next103 = add nuw i64 %index98, 4        ; 2 uses
  %i.ek = icmp eq i64 %index.next103, %n.vec96
  br i1 %i.ek, label %middle.block104, label %vector.body97, !llvm.loop !151

middle.block104:                                  ; preds = %vector.body97
  %cmp.n105 = icmp eq i64 %i.dy, %n.vec96
  br i1 %cmp.n105, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader109

.lr.ph.i.i.i.i.i.i.i.preheader109:                ; preds = %vector.memcheck90, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block104
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ds, %vector.memcheck90 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ee, %middle.block104 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dh, %vector.memcheck90 ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ef, %middle.block104 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader109, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader109 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader109 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.el = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !105, !alias.scope !144, !noalias !141
  store i64 %i.el, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !105, !alias.scope !141, !noalias !144
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !105, !alias.scope !144, !noalias !141
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.em, %i.dc
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !152

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block104, %.noexc28
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ds, %.noexc28 ], [ %i.ee, %middle.block104 ], [ %i.en, %.lr.ph.i.i.i.i.i.i.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dh) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  store ptr %i.ds, ptr %i.da, align 8, !tbaa !102
  store ptr %i.eo, ptr %i.db, align 8, !tbaa !104
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.ep, ptr %i.dd, align 8, !tbaa !140
  %.pr = load ptr, ptr %5, align 8, !tbaa !105    ; 3 uses
  %.not.i29 = icmp eq ptr %.pr, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !107 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPv(ptr noundef nonnull %i.er) #27
  br label %_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i: ; preds = %bb.s, %bb.r
  call void @_ZdlPv(ptr noundef nonnull %.pr) #27
  br label %_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %bb.d, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12NeighborInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.b, align 8, !tbaa !19
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_12NeighborInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_12NeighborInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_12NeighborInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12NeighborInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
end_hunk_0
begin_hunk_1_@_ZNK6duckdb10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS1_ELb1EEptEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb15RelationManager12GetRelationsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.137") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !756
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !756
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !475
  store ptr %i.e, ptr %i.c, align 8, !tbaa !475
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15RelationManager28AddAggregateOrWindowRelationERNS_15LogicalOperatorENS_12optional_ptrIS1_Lb1EEERKNS_13RelationStatsENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i8 zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::RelationStats", align 16 ; 12 uses
  %6 = alloca %"class.duckdb::unique_ptr.511", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::vector.376", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #30, !noalias !757 ; 13 uses
  invoke void @_ZN6duckdb13RelationStatsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.b unwind label %bb.d, !noalias !757

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !377, !noalias !757
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !377, !noalias !757
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load <2 x ptr>, ptr %5, align 16, !tbaa !523, !noalias !757
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !523, !noalias !757
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !511, !noalias !757
  store ptr %i.g, ptr %i.e, align 8, !tbaa !511, !noalias !757
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %i.i, i64 17, i1 false), !noalias !757
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.l = load <2 x ptr>, ptr %i.k, align 16, !tbaa !524, !noalias !757
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !524, !noalias !757
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !514, !noalias !757
  store ptr %i.o, ptr %i.m, align 8, !tbaa !514, !noalias !757
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !11, !noalias !757
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !25, !noalias !757 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.w = load i64, ptr %i.v, align 16, !tbaa !14, !noalias !757 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !noalias !757
  br label %_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.s, ptr %i.p, align 8, !tbaa !25, !noalias !757
  %i.z = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !757
  store i64 %i.z, ptr %i.r, align 8, !tbaa !17, !noalias !757
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !tbaa !14, !noalias !757
  br label %_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit32, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %.pn.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.a) #27, !noalias !757
  br label %common.resume

_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ab = phi i64 [ %i.w, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !14, !noalias !757
  store ptr %i.a, ptr %6, align 8, !tbaa !754, !alias.scope !757
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !443
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !444
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.al = load ptr, ptr %1, align 8, !tbaa !352
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.a to i64                ; 2 uses
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.376") align 8 %7, ptr noundef nonnull align 8 dereferenceable(97) %1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ap = load ptr, ptr %7, align 8, !tbaa !760   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !760 ; 2 uses
  %.not47 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, %bb.e
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !443 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !475
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i64 %i.ao, ptr %i.av, align 8, !tbaa !754
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ay, ptr %i.ae, align 8, !tbaa !443
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %i.ad, align 8, !tbaa !444 ; 10 uses
  %i.ba = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #30
          to label %.noexc19 unwind label %bb.v   ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i64 %i.ao, ptr %i.bl, align 8, !tbaa !754
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.av
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc19
  %i.bm = sub i64 %i.ba, %i.bb
  %i.bn = add i64 %i.bm, -8                       ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader102, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bq = add i64 %i.ba, -8
  %i.br = sub i64 %i.bq, %i.bb
  %i.bs = and i64 %i.br, -8
  %i.bt = add i64 %i.bs, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bt
  %scevgep98 = getelementptr i8, ptr %i.az, i64 %i.bt
  %bound0 = icmp ult ptr %i.bk, %scevgep98
  %bound1 = icmp ult ptr %i.az, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bk, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.az, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.bx ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.az, i64 %i.bx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.by = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep99, align 8, !tbaa !754, !alias.scope !766, !noalias !761
  %wide.load100 = load <2 x i64>, ptr %i.by, align 8, !tbaa !754, !alias.scope !766, !noalias !761
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !754, !alias.scope !769, !noalias !766
  store <2 x i64> %wide.load100, ptr %i.bz, align 8, !tbaa !754, !alias.scope !769, !noalias !766
  %i.ca = getelementptr i8, ptr %next.gep99, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep99, align 8, !tbaa !754, !alias.scope !766, !noalias !761
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !754, !alias.scope !766, !noalias !761
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader102

.lr.ph.i.i.i.i.i.i.i.preheader102:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader102, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader102 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader102 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.cc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !764, !noalias !761
  store i64 %i.cc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !761, !noalias !764
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !764, !noalias !761
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.av
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !772

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.noexc19 ], [ %i.bv, %middle.block ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.az) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bk, ptr %i.ad, align 8, !tbaa !444
  store ptr %i.cf, ptr %i.ae, align 8, !tbaa !443
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.cg, ptr %i.aw, align 8, !tbaa !475
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.j:                                             ; preds = %_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit32

bb.k:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit
  %.sroa.035.048 = phi ptr [ %i.ap, %.lr.ph ], [ %i.ds, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit ] ; 2 uses
  %i.ci = load i64, ptr %i.as, align 8, !tbaa !773
  %.not.not.i.i = icmp eq i64 %i.ci, 0
  %i.cj = load i64, ptr %.sroa.035.048, align 8   ; 9 uses
  br i1 %.not.not.i.i, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k, %bb.l
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.l ], [ %i.au, %bb.k ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i21 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i21, label %.loopexit40.loopexit, label %bb.l

bb.l:                                             ; preds = %.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !19
  %i.cm = icmp eq i64 %i.cj, %i.cl
  br i1 %i.cm, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, label %.preheader, !llvm.loop !774

bb.m:                                             ; preds = %bb.k
  %i.cn = load i64, ptr %i.at, align 8, !tbaa !264 ; 4 uses
  %i.co = urem i64 %i.cj, %i.cn                   ; 5 uses
  %i.cp = load ptr, ptr %0, align 8, !tbaa !262
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78 ; 4 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i20, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !19
  %i.cv = icmp eq i64 %i.cj, %i.cu
  br i1 %i.cv, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.cw = icmp eq i64 %i.cj, %i.cz
  br i1 %i.cw, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !775

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %bb.o
  %.020.i.i.i.i = phi ptr [ %i.cx, %bb.o ], [ %i.cs, %bb.n ]
  %i.cx = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not18.i.i.i.i, label %.loopexit40, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !19 ; 2 uses
  %i.da = urem i64 %i.cz, %i.cn
  %.not19.i.i.i.i = icmp eq i64 %i.da, %i.co
  br i1 %.not19.i.i.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !775

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.p
  br label %.loopexit40, !llvm.loop !775

.loopexit40.loopexit:                             ; preds = %.preheader
  %.pre = load i64, ptr %i.at, align 8, !tbaa !264 ; 2 uses
  %.pre55 = load ptr, ptr %0, align 8, !tbaa !262
  %.pre56 = urem i64 %i.cj, %.pre                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre55, i64 %.pre56
  %.pre57 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !78
  br label %.loopexit40

.loopexit40:                                      ; preds = %.lr.ph.i.i.i.i, %.loopexit40.loopexit, %..loopexit_crit_edge21.i.i.i.i
  %i.db = phi ptr [ %i.cr, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre57, %.loopexit40.loopexit ], [ %i.cr, %.lr.ph.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.co, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre56, %.loopexit40.loopexit ], [ %i.co, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.dc = phi i64 [ %i.cn, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre, %.loopexit40.loopexit ], [ %i.cn, %.lr.ph.i.i.i.i ]
  %.not.i.i.i.i22 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i22, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %.loopexit40
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !33 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !19
  %i.dg = icmp eq i64 %i.cj, %i.df
  br i1 %i.dg, label %.loopexit, label %.lr.ph.i.i.i.i23

bb.r:                                             ; preds = %bb.s
  %i.dh = icmp eq i64 %i.cj, %i.dk
  br i1 %i.dh, label %.loopexit, label %.lr.ph.i.i.i.i23, !llvm.loop !775

.lr.ph.i.i.i.i23:                                 ; preds = %bb.q, %bb.r
  %.020.i.i.i.i24 = phi ptr [ %i.di, %bb.r ], [ %i.dd, %bb.q ]
  %i.di = load ptr, ptr %.020.i.i.i.i24, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i25 = icmp eq ptr %i.di, null
  br i1 %.not18.i.i.i.i25, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !19 ; 2 uses
  %i.dl = urem i64 %i.dk, %i.dc
  %.not19.i.i.i.i26 = icmp eq i64 %i.dl, %.pre-phi
  br i1 %.not19.i.i.i.i26, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i27, !llvm.loop !775

..loopexit_crit_edge21.i.i.i.i27:                 ; preds = %bb.s
  br label %.loopexit.i.i, !llvm.loop !775

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i23, %bb.m, %..loopexit_crit_edge21.i.i.i.i27, %.loopexit40
  %.pre-phi85 = phi i64 [ %i.co, %bb.m ], [ %.pre-phi, %.loopexit40 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i27 ], [ %.pre-phi, %.lr.ph.i.i.i.i23 ]
  %i.dm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc28 unwind label %bb.t   ; 5 uses

.noexc28:                                         ; preds = %.loopexit.i.i
  store ptr null, ptr %i.dm, align 8, !tbaa !33
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.cj, ptr %i.dn, align 8, !tbaa !776
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 0, ptr %i.do, align 8, !tbaa !778
  %i.dp = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.pre-phi85, i64 noundef %i.cj, ptr noundef nonnull %i.dm, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc28
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dm) #27
end_hunk_1
begin_hunk_2_@_ZN6duckdb15RelationManager11AddRelationERNS_15LogicalOperatorENS_12optional_ptrIS1_Lb1EEERKNS_13RelationStatsE:bb.a
  %.not.i.i.i.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i39, label %.loopexit.i.i45, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !33 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !19
  %i.dn = icmp eq i64 %i.de, %i.dm
  br i1 %i.dn, label %.loopexit88, label %.lr.ph.i.i.i.i40

bb.z:                                             ; preds = %bb.aa
  %i.do = icmp eq i64 %i.de, %i.dr
  br i1 %i.do, label %.loopexit88, label %.lr.ph.i.i.i.i40, !llvm.loop !775

.lr.ph.i.i.i.i40:                                 ; preds = %bb.y, %bb.z
  %.020.i.i.i.i41 = phi ptr [ %i.dp, %bb.z ], [ %i.dk, %bb.y ]
  %i.dp = load ptr, ptr %.020.i.i.i.i41, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i42 = icmp eq ptr %i.dp, null
  br i1 %.not18.i.i.i.i42, label %.loopexit.i.i45, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !19 ; 2 uses
  %i.ds = urem i64 %i.dr, %i.df
  %.not19.i.i.i.i43 = icmp eq i64 %i.ds, %i.dg
  br i1 %.not19.i.i.i.i43, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i44, !llvm.loop !775

..loopexit_crit_edge21.i.i.i.i44:                 ; preds = %bb.aa
  br label %.loopexit.i.i45, !llvm.loop !775

.loopexit.i.i45:                                  ; preds = %.lr.ph.i.i.i.i40, %..loopexit_crit_edge21.i.i.i.i44, %bb.x
  %i.dt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc49 unwind label %bb.ab  ; 5 uses

.noexc49:                                         ; preds = %.loopexit.i.i45
  store ptr null, ptr %i.dt, align 8, !tbaa !33
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %i.de, ptr %i.du, align 8, !tbaa !776
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 0, ptr %i.dv, align 8, !tbaa !778
  %i.dw = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.dg, i64 noundef %i.de, ptr noundef nonnull %i.dt, i64 noundef 1)
          to label %.loopexit88 unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i46

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i46: ; preds = %.noexc49
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #27
  br label %.body50

.loopexit88:                                      ; preds = %bb.z, %.noexc49, %bb.y
  %.pn.i.i47 = phi ptr [ %i.dw, %.noexc49 ], [ %i.dk, %bb.y ], [ %i.dp, %bb.z ]
  %.1.i.i48 = getelementptr inbounds nuw i8, ptr %.pn.i.i47, i64 16
  store i64 %i.ak, ptr %.1.i.i48, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.079.0102, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.da
  br i1 %.not, label %._crit_edge.loopexit, label %bb.x

bb.ab:                                            ; preds = %.loopexit.i.i45
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i46, %bb.ab
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.dz, %bb.ab ], [ %i.dx, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i46 ] ; 2 uses
  %i.ea = load ptr, ptr %8, align 8, !tbaa !439   ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54, label %bb.ac

bb.ac:                                            ; preds = %.body50
  call void @_ZdlPv(ptr noundef nonnull %i.ea) #27
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54: ; preds = %bb.ac, %.body50, %bb.w
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.w ], [ %eh.lpad-body51, %.body50 ], [ %eh.lpad-body51, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body67

_ZNSt6vectorImSaImEE2atEm.exit:                   ; preds = %.thread157, %bb.s
  %i.eb = phi ptr [ %i.az, %bb.s ], [ %i.bg, %.thread157 ]
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !19 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !264 ; 2 uses
  %i.ef = urem i64 %i.ec, %i.ee                   ; 3 uses
  %i.eg = load ptr, ptr %0, align 8, !tbaa !262
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i56, label %.loopexit.i.i62, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE2atEm.exit
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !33 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.em = icmp eq i64 %i.ec, %i.el
  br i1 %i.em, label %.loopexit89, label %.lr.ph.i.i.i.i57

bb.ae:                                            ; preds = %bb.af
  %i.en = icmp eq i64 %i.ec, %i.eq
  br i1 %i.en, label %.loopexit89, label %.lr.ph.i.i.i.i57, !llvm.loop !775

.lr.ph.i.i.i.i57:                                 ; preds = %bb.ad, %bb.ae
  %.020.i.i.i.i58 = phi ptr [ %i.eo, %bb.ae ], [ %i.ej, %bb.ad ]
  %i.eo = load ptr, ptr %.020.i.i.i.i58, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i59 = icmp eq ptr %i.eo, null
  br i1 %.not18.i.i.i.i59, label %.loopexit.i.i62, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i57
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !19 ; 2 uses
  %i.er = urem i64 %i.eq, %i.ee
  %.not19.i.i.i.i60 = icmp eq i64 %i.er, %i.ef
  br i1 %.not19.i.i.i.i60, label %bb.ae, label %..loopexit_crit_edge21.i.i.i.i61, !llvm.loop !775

..loopexit_crit_edge21.i.i.i.i61:                 ; preds = %bb.af
  br label %.loopexit.i.i62, !llvm.loop !775

.loopexit.i.i62:                                  ; preds = %.lr.ph.i.i.i.i57, %..loopexit_crit_edge21.i.i.i.i61, %_ZNSt6vectorImSaImEE2atEm.exit
  %i.es = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc66 unwind label %bb.ag  ; 5 uses

.noexc66:                                         ; preds = %.loopexit.i.i62
  store ptr null, ptr %i.es, align 8, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.ec, ptr %i.et, align 8, !tbaa !776
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i64 0, ptr %i.eu, align 8, !tbaa !778
  %i.ev = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ef, i64 noundef %i.ec, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %.loopexit89 unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i63

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i63: ; preds = %.noexc66
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.es) #27
  br label %.body67

.loopexit89:                                      ; preds = %bb.ae, %.noexc66, %bb.ad
  %.pn.i.i64 = phi ptr [ %i.ev, %.noexc66 ], [ %i.ej, %bb.ad ], [ %i.eo, %bb.ae ]
  %.1.i.i65 = getelementptr inbounds nuw i8, ptr %.pn.i.i64, i64 16
  store i64 %i.ak, ptr %.1.i.i65, align 8, !tbaa !19
  br label %bb.ah

bb.ag:                                            ; preds = %.loopexit.i.i62
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body67

bb.ah:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %.loopexit89, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %i.ey = load ptr, ptr %i.ae, align 8, !tbaa !443 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !475
  %.not.i.i70 = icmp eq ptr %i.ey, %i.fa
  br i1 %.not.i.i70, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fb = load i64, ptr %5, align 8, !tbaa !754
  store i64 %i.fb, ptr %i.ey, align 8, !tbaa !754
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ae, align 8, !tbaa !443
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fd = load ptr, ptr %i.ad, align 8, !tbaa !444 ; 10 uses
  %i.fe = ptrtoint ptr %i.ey to i64               ; 3 uses
  %i.ff = ptrtoint ptr %i.fd to i64               ; 3 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775800
  br i1 %i.fh, label %bb.ak, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc72 unwind label %bb.an

.noexc72:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.fi = ashr exact i64 %i.fg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 1152921504606846975)
  %i.fm = select i1 %i.fk, i64 1152921504606846975, i64 %i.fl ; 3 uses
  %.not.i.i.i.i71 = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i71)
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #30
          to label %.noexc73 unwind label %bb.an  ; 10 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg
  %i.fq = load i64, ptr %5, align 8, !tbaa !754
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !754
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fd, %i.ey
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc73
  %i.fr = sub i64 %i.fe, %i.ff
  %i.fs = add i64 %i.fr, -8                       ; 2 uses
  %i.ft = lshr i64 %i.fs, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fs, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader189, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.fv = add i64 %i.fe, -8
  %i.fw = sub i64 %i.fv, %i.ff
  %i.fx = and i64 %i.fw, -8
  %i.fy = add i64 %i.fx, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fo, i64 %i.fy
  %scevgep185 = getelementptr i8, ptr %i.fd, i64 %i.fy
  %bound0 = icmp ult ptr %i.fo, %scevgep185
  %bound1 = icmp ult ptr %i.fd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader189, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fu, 4611686018427387900     ; 3 uses
  %i.fz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fo, i64 %i.fz  ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fd, i64 %i.fz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fo, i64 %i.gc ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.fd, i64 %i.gc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.gd = getelementptr i8, ptr %next.gep186, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep186, align 8, !tbaa !754, !alias.scope !800, !noalias !795
  %wide.load187 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !754, !alias.scope !800, !noalias !795
  %i.ge = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !754, !alias.scope !803, !noalias !800
  store <2 x i64> %wide.load187, ptr %i.ge, align 8, !tbaa !754, !alias.scope !803, !noalias !800
  %i.gf = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep186, align 8, !tbaa !754, !alias.scope !800, !noalias !795
  store <2 x ptr> splat (ptr null), ptr %i.gf, align 8, !tbaa !754, !alias.scope !800, !noalias !795
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !805

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader189

.lr.ph.i.i.i.i.i.i.i.preheader189:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fo, %vector.memcheck ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ga, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fd, %vector.memcheck ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader189, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader189 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader189 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.gh = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !798, !noalias !795
  store i64 %i.gh, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !795, !noalias !798
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !798, !noalias !795
  %i.gi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gi, %i.ey
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !806

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc73
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fo, %.noexc73 ], [ %i.ga, %middle.block ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fd) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.fo, ptr %i.ad, align 8, !tbaa !444
  store ptr %i.gk, ptr %i.ae, align 8, !tbaa !443
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.gl, ptr %i.ez, align 8, !tbaa !475
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ai
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !402
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !416
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 1, ptr %i.gp, align 8, !tbaa !431
  %i.gq = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i74, label %_ZNSt10unique_ptrIN6duckdb18SingleJoinRelationESt14default_deleteIS1_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.gq) #27
  br label %_ZNSt10unique_ptrIN6duckdb18SingleJoinRelationESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18SingleJoinRelationESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.am, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.an:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ak
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %bb.ag, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i63, %bb.an, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54, %.body
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %.body ], [ %i.gr, %bb.an ], [ %.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54 ], [ %i.ex, %bb.ag ], [ %i.ew, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i63 ] ; 2 uses
  %i.gs = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorImSaImEED2Ev.exit78, label %bb.ao

bb.ao:                                            ; preds = %.body67
  call void @_ZdlPv(ptr noundef nonnull %i.gs) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit78

_ZNSt6vectorImSaImEED2Ev.exit78:                  ; preds = %bb.ao, %.body67, %bb.h
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %.pn33.pn, %.body67 ], [ %.pn33.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZNSt10unique_ptrIN6duckdb18SingleJoinRelationESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume
}

declare void @_ZN6duckdb11LogicalJoin18GetTableReferencesERNS_15LogicalOperatorERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb27ExpressionContainsColumnRefERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.1012", align 8 ; 12 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.std::function.558", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1, !tbaa !513
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8
  store i64 %i.b, ptr %2, align 8, !tbaa !807
  store ptr @"_ZNSt17_Function_handlerIFvRKN6duckdb24BoundColumnRefExpressionEEZNS0_27ExpressionContainsColumnRefERKNS0_10ExpressionEE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.d, align 8, !tbaa !809
  store ptr @"_ZNSt17_Function_handlerIFvRKN6duckdb24BoundColumnRefExpressionEEZNS0_27ExpressionContainsColumnRefERKNS0_10ExpressionEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.c, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = ptrtoint ptr %2 to i64
  store i64 %i.i, ptr %1, align 8, !tbaa !811
  store ptr @_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNS0_18ExpressionIterator15VisitExpressionINS0_24BoundColumnRefExpressionEEEvS3_RKSt8functionIFvRKT_EEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.g, align 8, !tbaa !813
  store ptr @_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNS0_18ExpressionIterator15VisitExpressionINS0_24BoundColumnRefExpressionEEEvS3_RKSt8functionIFvRKT_EEEUlS3_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.f, align 8, !tbaa !154
  invoke void @_ZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS_10ExpressionENS_15ExpressionClassERKSt8functionIFvS3_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 noundef zeroext 28, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !154  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !154  ; 2 uses
  %.not.i3.i = icmp eq ptr %i.o, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %.not.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.k

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

end_hunk_2
begin_hunk_3_@_ZN6duckdb15RelationManager20ExtractJoinRelationsERNS_18JoinOrderOptimizerERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS3_ELb1ESaIS7_EEENS_12optional_ptrIS3_Lb1EEE:bb.a
_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EED2Ev.exit1006: ; preds = %.loopexit.split-lp1064, %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  resume { ptr, i32 } %.pn285

bb.pr:                                            ; preds = %bb.oi
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24RelationStatisticsHelper36CombineStatsOfNonReorderableOperatorERNS_15LogicalOperatorERKNS_6vectorINS_13RelationStatsELb1ESaIS4_EEE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::RelationStats") align 8 initializes((0, 24), (32, 41), (48, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.duckdb::vector", align 8    ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !502
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !433
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !14
  store i8 0, ptr %i.g, align 8, !tbaa !17
  store i64 0, ptr %i.b, align 8, !tbaa !402
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %2, align 8, !tbaa !503    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !503  ; 2 uses
  %.not87 = icmp eq ptr %i.i, %i.k
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.at, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !442
  switch i8 %i.q, label %.loopexit81 [
    i8 52, label %bb.h
    i8 75, label %bb.n
    i8 77, label %bb.p
    i8 76, label %bb.t
  ]

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.as, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.at, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %.sroa.068.088 = phi ptr [ %i.i, %.lr.ph ], [ %i.av, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.au, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.068.088, i64 40
  %i.v = load i8, ptr %i.u, align 8, !tbaa !433, !range !434, !noundef !362
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.068.088, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = select i1 %i.w, i64 %i.y, i64 0          ; 3 uses
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !402
  %i.ab = tail call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 %i.z)
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !402
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.z, ptr %i.s, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !18
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %i.r to i64
  %i.ae = ptrtoint ptr %i.t to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc unwind label %.loopexit.split-lp83

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #30
          to label %.noexc33 unwind label %.loopexit82 ; 5 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  store i64 %i.z, ptr %i.ao, align 8, !tbaa !19
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.t, i64 %i.af, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.an, ptr %3, align 8, !tbaa !7
  store ptr %i.aq, ptr %i.l, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.ar, ptr %i.m, align 8, !tbaa !55
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.c
  %i.as = phi ptr [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.r, %bb.c ]
  %i.at = phi ptr [ %i.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.au = phi ptr [ %i.an, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.t, %bb.c ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.068.088, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit82:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp83:                             ; preds = %bb.e
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !783
  switch i8 %i.ax, label %.loopexit81 [
    i8 10, label %bb.j
    i8 9, label %bb.j
    i8 6, label %bb.l
    i8 5, label %bb.l
    i8 8, label %bb.l
    i8 7, label %bb.l
  ]

bb.i:                                             ; preds = %bb.l, %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  br label %.loopexit81.sink.split

bb.l:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !19
  br label %.loopexit81.sink.split

bb.n:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !919, !range !434, !noundef !362
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %.loopexit81

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.b, align 8, !tbaa !402
  %i.bg = load ptr, ptr %3, align 8, !tbaa !68    ; 8 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %.not7192 = icmp eq ptr %i.bg, %i.n
  br i1 %.not7192, label %.loopexit81, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %bb.o
  %i.bi = sub i64 %i.o, %i.bh
  %i.bj = add i64 %i.bi, -8                       ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 136
  br i1 %min.iters.check, label %.lr.ph95.preheader142, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph95.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = add i64 %i.o, -8
  %i.bn = sub i64 %i.bm, %i.bh
  %i.bo = and i64 %i.bn, -8
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bo
  %scevgep139 = getelementptr i8, ptr %i.bp, i64 8
  %bound0 = icmp ult ptr %i.b, %scevgep139
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph95.preheader142, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bq = shl i64 %n.vec, 3
  %i.br = getelementptr i8, ptr %i.bg, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi140 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bv, %vector.body ]
  %i.bs = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !19, !alias.scope !921
  %wide.load141 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !19, !alias.scope !921
  %i.bu = add <2 x i64> %vec.phi, %wide.load      ; 2 uses
  %i.bv = add <2 x i64> %vec.phi140, %wide.load141 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !924

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !402, !alias.scope !925, !noalias !921
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit81, label %.lr.ph95.preheader142

.lr.ph95.preheader142:                            ; preds = %vector.memcheck, %.lr.ph95.preheader, %middle.block
  %.sroa.063.093.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph95.preheader ], [ %i.br, %middle.block ]
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph95.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader142, %.lr.ph95
  %.sroa.063.093 = phi ptr [ %i.cb, %.lr.ph95 ], [ %.sroa.063.093.ph, %.lr.ph95.preheader142 ] ; 2 uses
  %i.by = phi i64 [ %i.ca, %.lr.ph95 ], [ %.ph, %.lr.ph95.preheader142 ]
  %i.bz = load i64, ptr %.sroa.063.093, align 8, !tbaa !19
  %i.ca = add i64 %i.by, %i.bz                    ; 2 uses
  store i64 %i.ca, ptr %i.b, align 8, !tbaa !402
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.063.093, i64 8 ; 2 uses
  %.not71 = icmp eq ptr %i.cb, %i.n
  br i1 %.not71, label %.loopexit81, label %.lr.ph95, !llvm.loop !927

bb.p:                                             ; preds = %._crit_edge
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !19
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !19
  %i.cg = call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cf)
  br label %.loopexit81.sink.split

bb.s:                                             ; preds = %bb.t, %bb.q, %bb.p
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.t:                                             ; preds = %._crit_edge
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !19
  br label %.loopexit81.sink.split

.loopexit81.sink.split:                           ; preds = %bb.r, %bb.u, %bb.m, %bb.k
  %.sink = phi i64 [ %i.ba, %bb.k ], [ %i.bc, %bb.m ], [ %i.cj, %bb.u ], [ %i.cg, %bb.r ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !402
  br label %.loopexit81

.loopexit81:                                      ; preds = %.lr.ph95, %middle.block, %.loopexit81.sink.split, %bb.o, %bb.n, %bb.h, %._crit_edge
  store i8 1, ptr %i.d, align 8, !tbaa !433
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ck, ptr %4, align 8, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ck, align 8, !tbaa !17
  %.not21.i = icmp eq ptr %4, %i.f
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, !prof !51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %.loopexit81
  %i.cm = load ptr, ptr %i.f, align 8, !tbaa !25
  store i64 0, ptr %i.h, align 8, !tbaa !14
  store i8 0, ptr %i.cm, align 1, !tbaa !17
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %.loopexit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.cn = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ck, %.loopexit81 ]
  store i64 0, ptr %i.cl, align 8, !tbaa !14
  store i8 0, ptr %i.cn, align 1, !tbaa !17
  %i.co = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ck
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.co) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.cq = load ptr, ptr %2, align 8, !tbaa !503   ; 2 uses
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !503 ; 2 uses
  %.not72105 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not72105, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.w

._crit_edge108:                                   ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge108
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge108, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.w:                                             ; preds = %.lr.ph107, %.loopexit
  %.sroa.059.0106 = phi ptr [ %i.cq, %.lr.ph107 ], [ %i.fj, %.loopexit ] ; 8 uses
  %i.cx = load i64, ptr %i.h, align 8, !tbaa !14  ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = add i64 %i.cx, -4611686018427387891
  %i.da = icmp ult i64 %i.cz, 13
  br i1 %i.da, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
          to label %.cont unwind label %.loopexit.split-lp77

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.x
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull @.str.20, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge unwind label %.loopexit76 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dc = sub i64 4611686018427387903, %.pre
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

.loopexit76:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit78 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp77:                             ; preds = %.invoke
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge, %bb.w
  %i.dd = phi i64 [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ 4611686018427387903, %bb.w ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.059.0106, i64 80
  %i.df = load i64, ptr %i.de, align 8, !tbaa !14 ; 2 uses
  %i.dg = icmp ult i64 %i.dd, %i.df
  br i1 %i.dg, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.059.0106, i64 72
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !25
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %i.di, i64 noundef %i.df)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit76 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.059.0106, i64 40
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !433, !range !434, !noundef !362
  %i.dm = trunc nuw i8 %i.dl to i1
end_hunk_3
begin_hunk_4_@_ZN6duckdb17QueryGraphManager13GenerateJoinsERNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_15JoinRelationSetE:bb.a
.noexc:                                           ; preds = %bb.an
  unreachable

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE2atEm.exit: ; preds = %bb.am
  %i.df = load i64, ptr %i.de, align 8, !tbaa !117
  store i64 %i.df, ptr %15, align 8, !tbaa !117
  br label %bb.ao

bb.ao:                                            ; preds = %bb.bb, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE2atEm.exit
  %.0100 = phi i64 [ 0, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE2atEm.exit ], [ %i.ex, %bb.bb ] ; 7 uses
  %i.dg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.ap unwind label %.loopexit536

bb.ap:                                            ; preds = %bb.ao
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_12NeighborInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %bb.aq unwind label %.loopexit536

bb.aq:                                            ; preds = %bb.ap
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !253 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !115
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !107
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = icmp ult i64 %.0100, %i.dq
  br i1 %i.dr, label %bb.as, label %.loopexit541

bb.ar:                                            ; preds = %bb.an, %bb.al, %bb.ak
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.loopexit536:                                     ; preds = %bb.ao, %bb.as, %bb.ap, %bb.at, %bb.av
  %lpad.loopexit538 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.loopexit.split-lp537:                            ; preds = %.invoke, %bb.ax, %bb.ay
  %lpad.loopexit.split-lp539 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.as:                                            ; preds = %bb.aq
  %i.dt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.at unwind label %.loopexit536

bb.at:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_12NeighborInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %bb.au unwind label %.loopexit536

bb.au:                                            ; preds = %bb.at
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !253 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !115
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !107 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %.not.i.i161 = icmp ult i64 %.0100, %i.ed
  br i1 %.not.i.i161, label %bb.av, label %.invoke

.invoke:                                          ; preds = %bb.au, %bb.az
  %i.ee = phi i64 [ %i.eu, %bb.az ], [ %i.ed, %bb.au ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %.0100, i64 noundef %i.ee) #29
          to label %.cont unwind label %.loopexit.split-lp537

.cont:                                            ; preds = %.invoke
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0100 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %bb.aw unwind label %.loopexit536

bb.aw:                                            ; preds = %bb.av
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !563
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !562
  %i.ej = icmp eq i8 %i.ei, 3
  br i1 %i.ej, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ek = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.ay unwind label %.loopexit.split-lp537

bb.ay:                                            ; preds = %bb.ax
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_12NeighborInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %bb.az unwind label %.loopexit.split-lp537

bb.az:                                            ; preds = %bb.ay
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !253 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !115
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !107 ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3                 ; 2 uses
  %.not.i.i167 = icmp ult i64 %.0100, %i.eu
  br i1 %.not.i.i167, label %bb.ba, label %.invoke

bb.ba:                                            ; preds = %bb.az
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.0100
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !117
  store i64 %i.ew, ptr %15, align 8, !tbaa !117
  br label %.loopexit541

bb.bb:                                            ; preds = %bb.aw
  %i.ex = add nuw i64 %.0100, 1
  br label %bb.ao, !llvm.loop !1256

.loopexit541:                                     ; preds = %bb.aq, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bc unwind label %bb.bp

bb.bc:                                            ; preds = %.loopexit541
  %i.ey = load ptr, ptr %15, align 8, !tbaa !563
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.ez = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #30
          to label %.noexc172 unwind label %bb.bp ; 3 uses

.noexc172:                                        ; preds = %bb.bc
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !1165, !noalias !1257
  invoke void @_ZN6duckdb21LogicalComparisonJoinC1ENS_8JoinTypeENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(280) %i.ez, i8 noundef zeroext %i.fb, i8 noundef zeroext 52)
          to label %bb.be unwind label %bb.bd, !noalias !1257

bb.bd:                                            ; preds = %.noexc172
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ez) #27, !noalias !1257
  br label %.body

bb.be:                                            ; preds = %.noexc172
  store ptr %i.ez, ptr %16, align 8, !tbaa !1260, !alias.scope !1257
  %i.fd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bf unwind label %bb.bq     ; 3 uses

bb.bf:                                            ; preds = %bb.be
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 24 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !468 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 32 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !471
  %.not.i.i173 = icmp eq ptr %i.fh, %i.fj
  br i1 %.not.i.i173, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fk = load i64, ptr %i.ff, align 8, !tbaa !377
  store i64 %i.fk, ptr %i.fh, align 8, !tbaa !377
  store ptr null, ptr %i.ff, align 8, !tbaa !377
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fl, ptr %i.fg, align 8, !tbaa !468
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.bh:                                            ; preds = %bb.bf
  %i.fm = load ptr, ptr %i.fe, align 8, !tbaa !469 ; 10 uses
  %i.fn = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fo = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %.invoke829, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bh
  %i.fr = ashr exact i64 %i.fp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = call i64 @llvm.umin.i64(i64 %i.fs, i64 1152921504606846975)
  %i.fv = select i1 %i.ft, i64 1152921504606846975, i64 %i.fu ; 3 uses
  %.not.i.i.i.i174 = icmp ne i64 %i.fv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i174)
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #30
          to label %.noexc176 unwind label %bb.bq ; 10 uses

.noexc176:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fp
  %i.fz = load i64, ptr %i.ff, align 8, !tbaa !377
  store i64 %i.fz, ptr %i.fy, align 8, !tbaa !377
  store ptr null, ptr %i.ff, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fm, %i.fh
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc176
  %i.ga = sub i64 %i.fn, %i.fo
  %i.gb = add i64 %i.ga, -8                       ; 2 uses
  %i.gc = lshr i64 %i.gb, 3
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gb, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1021, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ge = add i64 %i.fn, -8
  %i.gf = sub i64 %i.ge, %i.fo
  %i.gg = and i64 %i.gf, -8
  %i.gh = add i64 %i.gg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fx, i64 %i.gh
  %scevgep902 = getelementptr i8, ptr %i.fm, i64 %i.gh
  %bound0 = icmp ult ptr %i.fx, %scevgep902
  %bound1 = icmp ult ptr %i.fm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1021, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gd, 4611686018427387900     ; 3 uses
  %i.gi = shl i64 %n.vec, 3                       ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fx, i64 %i.gi  ; 2 uses
  %i.gk = getelementptr i8, ptr %i.fm, i64 %i.gi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fx, i64 %i.gl ; 2 uses
  %next.gep903 = getelementptr i8, ptr %i.fm, i64 %i.gl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.gm = getelementptr i8, ptr %next.gep903, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep903, align 8, !tbaa !377, !alias.scope !1267, !noalias !1262
  %wide.load904 = load <2 x i64>, ptr %i.gm, align 8, !tbaa !377, !alias.scope !1267, !noalias !1262
  %i.gn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !377, !alias.scope !1270, !noalias !1267
  store <2 x i64> %wide.load904, ptr %i.gn, align 8, !tbaa !377, !alias.scope !1270, !noalias !1267
  %i.go = getelementptr i8, ptr %next.gep903, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep903, align 8, !tbaa !377, !alias.scope !1267, !noalias !1262
  store <2 x ptr> splat (ptr null), ptr %i.go, align 8, !tbaa !377, !alias.scope !1267, !noalias !1262
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !1272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1021

.lr.ph.i.i.i.i.i.i.i.preheader1021:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fx, %vector.memcheck ], [ %i.fx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fm, %vector.memcheck ], [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1021, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1021 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1021 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.gq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1265, !noalias !1262
  store i64 %i.gq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1262, !noalias !1265
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1265, !noalias !1262
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fh
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1273

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc176
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fx, %.noexc176 ], [ %i.gj, %middle.block ], [ %i.gs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fm) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.fx, ptr %i.fe, align 8, !tbaa !469
  store ptr %i.gt, ptr %i.fg, align 8, !tbaa !468
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fv
  store ptr %i.gu, ptr %i.fi, align 8, !tbaa !471
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.bg
  %i.gv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bj unwind label %bb.bq     ; 3 uses

bb.bj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 24 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !468 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 32 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !471
  %.not.i.i177 = icmp eq ptr %i.gz, %i.hb
  br i1 %.not.i.i177, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hc = load i64, ptr %i.gx, align 8, !tbaa !377
  store i64 %i.hc, ptr %i.gz, align 8, !tbaa !377
  store ptr null, ptr %i.gx, align 8, !tbaa !377
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.hd, ptr %i.gy, align 8, !tbaa !468
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192

bb.bl:                                            ; preds = %bb.bj
  %i.he = load ptr, ptr %i.gw, align 8, !tbaa !469 ; 10 uses
  %i.hf = ptrtoint ptr %i.gz to i64               ; 3 uses
  %i.hg = ptrtoint ptr %i.he to i64               ; 3 uses
  %i.hh = sub i64 %i.hf, %i.hg                    ; 3 uses
  %i.hi = icmp eq i64 %i.hh, 9223372036854775800
  br i1 %i.hi, label %.invoke829, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i178

.invoke829:                                       ; preds = %bb.bl, %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.cont830 unwind label %bb.bq

.cont830:                                         ; preds = %.invoke829
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i178: ; preds = %bb.bl
  %i.hj = ashr exact i64 %i.hh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i179 = call i64 @llvm.umax.i64(i64 %i.hj, i64 1)
  %i.hk = add nsw i64 %.sroa.speculated.i.i.i.i179, %i.hj ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.hj
  %i.hm = call i64 @llvm.umin.i64(i64 %i.hk, i64 1152921504606846975)
  %i.hn = select i1 %i.hl, i64 1152921504606846975, i64 %i.hm ; 3 uses
  %.not.i.i.i.i180 = icmp ne i64 %i.hn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180)
  %i.ho = shl nuw nsw i64 %i.hn, 3
  %i.hp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #30
          to label %.noexc191 unwind label %bb.bq ; 10 uses

.noexc191:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i178
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hh
  %i.hr = load i64, ptr %i.gx, align 8, !tbaa !377
  store i64 %i.hr, ptr %i.hq, align 8, !tbaa !377
  store ptr null, ptr %i.gx, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i.i181 = icmp eq ptr %i.he, %i.gz
  br i1 %.not10.i.i.i.i.i.i.i181, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186, label %.lr.ph.i.i.i.i.i.i.i182.preheader

.lr.ph.i.i.i.i.i.i.i182.preheader:                ; preds = %.noexc191
  %i.hs = sub i64 %i.hf, %i.hg
  %i.ht = add i64 %i.hs, -8                       ; 2 uses
  %i.hu = lshr i64 %i.ht, 3
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check913 = icmp ult i64 %i.ht, 136
  br i1 %min.iters.check913, label %.lr.ph.i.i.i.i.i.i.i182.preheader1019, label %vector.memcheck906

vector.memcheck906:                               ; preds = %.lr.ph.i.i.i.i.i.i.i182.preheader
  %i.hw = add i64 %i.hf, -8
  %i.hx = sub i64 %i.hw, %i.hg
  %i.hy = and i64 %i.hx, -8
  %i.hz = add i64 %i.hy, 8                        ; 2 uses
  %scevgep907 = getelementptr i8, ptr %i.hp, i64 %i.hz
  %scevgep908 = getelementptr i8, ptr %i.he, i64 %i.hz
  %bound0909 = icmp ult ptr %i.hp, %scevgep908
  %bound1910 = icmp ult ptr %i.he, %scevgep907
  %found.conflict911 = and i1 %bound0909, %bound1910
  br i1 %found.conflict911, label %.lr.ph.i.i.i.i.i.i.i182.preheader1019, label %vector.ph914

vector.ph914:                                     ; preds = %vector.memcheck906
  %n.vec916 = and i64 %i.hv, 4611686018427387900  ; 3 uses
  %i.ia = shl i64 %n.vec916, 3                    ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hp, i64 %i.ia  ; 2 uses
  %i.ic = getelementptr i8, ptr %i.he, i64 %i.ia
  br label %vector.body917

vector.body917:                                   ; preds = %vector.body917, %vector.ph914
  %index918 = phi i64 [ 0, %vector.ph914 ], [ %index.next923, %vector.body917 ] ; 2 uses
  %i.id = shl i64 %index918, 3                    ; 2 uses
  %next.gep919 = getelementptr i8, ptr %i.hp, i64 %i.id ; 2 uses
  %next.gep920 = getelementptr i8, ptr %i.he, i64 %i.id ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.ie = getelementptr i8, ptr %next.gep920, i64 16
  %wide.load921 = load <2 x i64>, ptr %next.gep920, align 8, !tbaa !377, !alias.scope !1279, !noalias !1274
  %wide.load922 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !377, !alias.scope !1279, !noalias !1274
  %i.if = getelementptr i8, ptr %next.gep919, i64 16
  store <2 x i64> %wide.load921, ptr %next.gep919, align 8, !tbaa !377, !alias.scope !1282, !noalias !1279
  store <2 x i64> %wide.load922, ptr %i.if, align 8, !tbaa !377, !alias.scope !1282, !noalias !1279
  %i.ig = getelementptr i8, ptr %next.gep920, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep920, align 8, !tbaa !377, !alias.scope !1279, !noalias !1274
  store <2 x ptr> splat (ptr null), ptr %i.ig, align 8, !tbaa !377, !alias.scope !1279, !noalias !1274
  %index.next923 = add nuw i64 %index918, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next923, %n.vec916
  br i1 %i.ih, label %middle.block924, label %vector.body917, !llvm.loop !1284

middle.block924:                                  ; preds = %vector.body917
  %cmp.n925 = icmp eq i64 %i.hv, %n.vec916
  br i1 %cmp.n925, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186, label %.lr.ph.i.i.i.i.i.i.i182.preheader1019

.lr.ph.i.i.i.i.i.i.i182.preheader1019:            ; preds = %vector.memcheck906, %.lr.ph.i.i.i.i.i.i.i182.preheader, %middle.block924
  %.012.i.i.i.i.i.i.i183.ph = phi ptr [ %i.hp, %vector.memcheck906 ], [ %i.hp, %.lr.ph.i.i.i.i.i.i.i182.preheader ], [ %i.ib, %middle.block924 ]
  %.0911.i.i.i.i.i.i.i184.ph = phi ptr [ %i.he, %vector.memcheck906 ], [ %i.he, %.lr.ph.i.i.i.i.i.i.i182.preheader ], [ %i.ic, %middle.block924 ]
  br label %.lr.ph.i.i.i.i.i.i.i182

.lr.ph.i.i.i.i.i.i.i182:                          ; preds = %.lr.ph.i.i.i.i.i.i.i182.preheader1019, %.lr.ph.i.i.i.i.i.i.i182
  %.012.i.i.i.i.i.i.i183 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i.i.i182 ], [ %.012.i.i.i.i.i.i.i183.ph, %.lr.ph.i.i.i.i.i.i.i182.preheader1019 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i184 = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i.i.i182 ], [ %.0911.i.i.i.i.i.i.i184.ph, %.lr.ph.i.i.i.i.i.i.i182.preheader1019 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.ii = load i64, ptr %.0911.i.i.i.i.i.i.i184, align 8, !tbaa !377, !alias.scope !1277, !noalias !1274
  store i64 %i.ii, ptr %.012.i.i.i.i.i.i.i183, align 8, !tbaa !377, !alias.scope !1274, !noalias !1277
  store ptr null, ptr %.0911.i.i.i.i.i.i.i184, align 8, !tbaa !377, !alias.scope !1277, !noalias !1274
  %i.ij = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i184, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i183, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i185 = icmp eq ptr %i.ij, %i.gz
  br i1 %.not.i.i.i.i.i.i.i185, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186, label %.lr.ph.i.i.i.i.i.i.i182, !llvm.loop !1285

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186: ; preds = %.lr.ph.i.i.i.i.i.i.i182, %middle.block924, %.noexc191
  %.0.lcssa.i.i.i.i.i.i.i187 = phi ptr [ %i.hp, %.noexc191 ], [ %i.ib, %middle.block924 ], [ %i.ik, %.lr.ph.i.i.i.i.i.i.i182 ]
  %i.il = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i187, i64 8
  %.not.i23.i.i.i188 = icmp eq ptr %i.he, null
  br i1 %.not.i23.i.i.i188, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i189, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186
  call void @_ZdlPv(ptr noundef nonnull %i.he) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i189

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i189: ; preds = %bb.bm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186
  store ptr %i.hp, ptr %i.gw, align 8, !tbaa !469
  store ptr %i.il, ptr %i.gy, align 8, !tbaa !468
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hn
  store ptr %i.im, ptr %i.ha, align 8, !tbaa !471
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i189, %bb.bk
  %i.in = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_12NeighborInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.io)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !253 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !597 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !597 ; 2 uses
  %.not524592 = icmp eq ptr %i.ir, %i.it
  br i1 %.not524592, label %._crit_edge, label %.lr.ph594

.lr.ph594:                                        ; preds = %bb.bo
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.iw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  br label %bb.bs

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit258, %bb.bo
  %i.ja = load ptr, ptr %16, align 8, !tbaa !1260
  store ptr null, ptr %16, align 8, !tbaa !1260
  %i.jb = load ptr, ptr %7, align 8, !tbaa !377   ; 3 uses
  store ptr %i.ja, ptr %7, align 8, !tbaa !377
  %.not.i.i.i.i.i195 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i.i195, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit200

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit200: ; preds = %._crit_edge
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !352
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.jb) #28, !inline_history !394
  %.pr510 = load ptr, ptr %16, align 8, !tbaa !1260 ; 3 uses
  %.not.i201 = icmp eq ptr %.pr510, null
  br i1 %.not.i201, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit200
  %i.jf = load ptr, ptr %.pr510, align 8, !tbaa !352
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(280) %.pr510) #28, !inline_history !1286
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit200, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.dk

bb.bp:                                            ; preds = %bb.bc, %.loopexit541
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bq:                                            ; preds = %.invoke829, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i178, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %bb.be
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.br:                                            ; preds = %bb.bn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bs:                                            ; preds = %.lr.ph594, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit258
  %.sroa.0496.0593 = phi ptr [ %i.ir, %.lr.ph594 ], [ %i.qj, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit258 ] ; 2 uses
  %i.jl = load ptr, ptr %.sroa.0496.0593, align 8, !tbaa !563 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !1166 ; 3 uses
  %i.jo = load ptr, ptr %i.iv, align 8, !tbaa !349
  %i.jp = load ptr, ptr %i.iu, align 8, !tbaa !348 ; 2 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = ashr exact i64 %i.js, 3                 ; 2 uses
  %.not.i.i202 = icmp ult i64 %i.jn, %i.jt
  br i1 %.not.i.i202, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.jn, i64 noundef %i.jt) #29
          to label %.noexc203 unwind label %bb.cg

.noexc203:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.jv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FilterInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ju)
          to label %bb.bv unwind label %bb.ch     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !350
  store i64 %i.jw, ptr %17, align 8, !tbaa !350
  store ptr null, ptr %i.jv, align 8, !tbaa !350
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.bw unwind label %bb.ci

bb.bw:                                            ; preds = %bb.bv
  %i.jx = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jl, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jy)
          to label %bb.bx unwind label %bb.ci

bb.bx:                                            ; preds = %bb.bw
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !36 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !59 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !59 ; 3 uses
  %i.ke = icmp ule i64 %i.kb, %i.kd
  %.not18.i = icmp ne i64 %i.kd, 0
  %or.cond.i = and i1 %i.ke, %.not18.i
end_hunk_4
begin_hunk_5_@_ZN6duckdb17QueryGraphManager13GenerateJoinsERNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_15JoinRelationSetE:bb.a
_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i459: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i458, %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit456
  %i.afk = load ptr, ptr %29, align 8, !tbaa !350 ; 3 uses
  %.not.i1.i460 = icmp eq ptr %i.afk, null
  br i1 %.not.i1.i460, label %_ZN6duckdb13JoinConditionD2Ev.exit462, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i461

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i461: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i459
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !352
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.afn = load ptr, ptr %i.afm, align 8
  call void %i.afn(ptr noundef nonnull align 8 dereferenceable(88) %i.afk) #28, !inline_history !1295
  br label %_ZN6duckdb13JoinConditionD2Ev.exit462

_ZN6duckdb13JoinConditionD2Ev.exit462:            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i459, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i461
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.gx

bb.gx:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit384, %_ZN6duckdb13JoinConditionD2Ev.exit462
  %i.afo = load ptr, ptr %22, align 8, !tbaa !350 ; 2 uses
  %.not.i463 = icmp eq ptr %i.afo, null
  br i1 %.not.i463, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split.sink.split

bb.gy:                                            ; preds = %bb.fw, %.body396, %bb.gw, %bb.fs
  %.pn125.pn.pn.pn = phi { ptr, i32 } [ %i.zq, %bb.fs ], [ %.pn125.pn, %.body396 ], [ %i.aff, %bb.gw ], [ %i.zy, %bb.fw ]
  %i.afp = load ptr, ptr %i.ss, align 8, !tbaa !350 ; 3 uses
  %.not.i.i466 = icmp eq ptr %i.afp, null
  br i1 %.not.i.i466, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i467

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i467: ; preds = %bb.gy
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !352
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8
  call void %i.afs(ptr noundef nonnull align 8 dereferenceable(88) %i.afp) #28, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i467, %bb.gy
  %i.aft = load ptr, ptr %29, align 8, !tbaa !350 ; 3 uses
  %.not.i1.i469 = icmp eq ptr %i.aft, null
  br i1 %.not.i1.i469, label %_ZN6duckdb13JoinConditionD2Ev.exit471, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i470

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i470: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !352
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8
  call void %i.afw(ptr noundef nonnull align 8 dereferenceable(88) %i.aft) #28, !inline_history !1295
  br label %_ZN6duckdb13JoinConditionD2Ev.exit471

_ZN6duckdb13JoinConditionD2Ev.exit471:            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i470
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.gz

bb.gz:                                            ; preds = %bb.fb, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit390, %_ZN6duckdb13JoinConditionD2Ev.exit471, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit320
  %.pn125.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ux, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit320 ], [ %.pn125.pn.pn.pn, %_ZN6duckdb13JoinConditionD2Ev.exit471 ], [ %i.yo, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit390 ], [ %i.wp, %bb.fb ] ; 2 uses
  %i.afx = load ptr, ptr %22, align 8, !tbaa !350 ; 3 uses
  %.not.i472 = icmp eq ptr %i.afx, null
  br i1 %.not.i472, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473: ; preds = %bb.gz
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !352
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  %i.aga = load ptr, ptr %i.afz, align 8
  call void %i.aga(ptr noundef nonnull align 8 dereferenceable(88) %i.afx) #28, !inline_history !497
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473, %bb.gz, %bb.eo
  %.pn125.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.uw, %bb.eo ], [ %.pn125.pn.pn.pn.pn.pn, %bb.gz ], [ %.pn125.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.ha

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split.sink.split: ; preds = %bb.gx, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit311
  %.sink850 = phi ptr [ %i.ut, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit311 ], [ %i.afo, %bb.gx ] ; 2 uses
  %i.agb = load ptr, ptr %.sink850, align 8, !tbaa !352
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.agd = load ptr, ptr %i.agc, align 8
  call void %i.agd(ptr noundef nonnull align 8 dereferenceable(88) %.sink850) #28
  br label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split: ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split.sink.split, %bb.gx, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit311
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread: ; preds = %bb.eh, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split, %bb.ee, %bb.eb, %bb.ec
  %i.age = getelementptr inbounds nuw i8, ptr %.sroa.0484.0596, i64 8 ; 2 uses
  %.not526 = icmp eq ptr %i.age, %i.sr
  br i1 %.not526, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit285, label %bb.dy

bb.ha:                                            ; preds = %bb.em, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474, %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ae, %_ZN6duckdb20GenerateJoinRelationD2Ev.exit278, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p, %bb.n, %bb.m
  %.pn136.pn = phi { ptr, i32 } [ %.pn136508, %bb.p ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ai, %bb.m ], [ %i.aj, %bb.n ], [ %i.uv, %bb.en ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ck, %bb.ae ], [ %i.sg, %bb.du ], [ %.pn121.pn.pn, %_ZN6duckdb20GenerateJoinRelationD2Ev.exit278 ], [ %i.uu, %bb.em ], [ %.pn125.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474 ]
  %i.agf = load ptr, ptr %7, align 8, !tbaa !377  ; 3 uses
  %.not.i475 = icmp eq ptr %i.agf, null
  br i1 %.not.i475, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit477, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i476

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i476: ; preds = %bb.ha
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !352
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8
  call void %i.agi(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.agf) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit477

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit477: ; preds = %bb.ha, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i476
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn136.pn

bb.hb:                                            ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL10PushFilterENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEENS0_INS_10ExpressionES2_IS5_ELb1EEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.961", align 8 ; 10 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !442
  %.not = icmp eq i8 %i.c, 2
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %i.d = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #30, !noalias !1327 ; 3 uses
  invoke void @_ZN6duckdb13LogicalFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !1327

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.be, %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #27, !noalias !1327
  br label %common.resume

_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.d, ptr %3, align 8, !tbaa !1330, !alias.scope !1327
  %i.f = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h       ; 3 uses

bb.d:                                             ; preds = %_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !468  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !471
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.e, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.d
  %i.l = load i64, ptr %1, align 8, !tbaa !377
  store i64 %i.l, ptr %i.i, align 8, !tbaa !377
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !468
  %i.n = load ptr, ptr %3, align 8, !tbaa !1330
  store ptr %i.n, ptr %1, align 8, !tbaa !377
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !469  ; 10 uses
  %i.p = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #30
          to label %.noexc2 unwind label %bb.h    ; 10 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = load i64, ptr %1, align 8, !tbaa !377
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !377
  store ptr null, ptr %1, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc2
  %i.ac = sub i64 %i.p, %i.q
  %i.ad = add i64 %i.ac, -8                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ag = add i64 %i.p, -8
  %i.ah = sub i64 %i.ag, %i.q
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.aj
  %scevgep33 = getelementptr i8, ptr %i.o, i64 %i.aj
  %bound0 = icmp ult ptr %i.z, %scevgep33
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.z, i64 %i.ak   ; 2 uses
  %i.am = getelementptr i8, ptr %i.o, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.an ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.o, i64 %i.an ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.ao = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep34, align 8, !tbaa !377, !alias.scope !1337, !noalias !1332
  %wide.load35 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !377, !alias.scope !1337, !noalias !1332
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !377, !alias.scope !1340, !noalias !1337
  store <2 x i64> %wide.load35, ptr %i.ap, align 8, !tbaa !377, !alias.scope !1340, !noalias !1337
  %i.aq = getelementptr i8, ptr %next.gep34, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep34, align 8, !tbaa !377, !alias.scope !1337, !noalias !1332
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !377, !alias.scope !1337, !noalias !1332
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader60

.lr.ph.i.i.i.i.i.i.i.preheader60:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader60, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader60 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader60 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.as = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1335, !noalias !1332
  store i64 %i.as, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1332, !noalias !1335
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1335, !noalias !1332
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1343

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc2
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.z, %.noexc2 ], [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.g
  store ptr %i.z, ptr %i.g, align 8, !tbaa !469
  store ptr %i.av, ptr %i.h, align 8, !tbaa !468
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.aw, ptr %i.j, align 8, !tbaa !471
  %.pr = load ptr, ptr %1, align 8, !tbaa !377    ; 3 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !1330
  store ptr null, ptr %3, align 8, !tbaa !1330
  store ptr %i.ax, ptr %1, align 8, !tbaa !377
  %.not.i.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ay = load ptr, ptr %.pr, align 8, !tbaa !352
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.pr) #28, !inline_history !394
  %.pr19 = load ptr, ptr %3, align 8, !tbaa !1330 ; 3 uses
  %.not.i3 = icmp eq ptr %.pr19, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.bb = load ptr, ptr %.pr19, align 8, !tbaa !352
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %.pr19) #28, !inline_history !1344
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f, %_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !1330  ; 3 uses
  %.not.i4 = icmp eq ptr %i.bf, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i5

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i5: ; preds = %bb.h
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !352
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.bf) #28, !inline_history !1344
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6

_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.bj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.bk = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalFilterEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.bj) ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !373 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !902
  %.not.i.i7 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i.i7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load i64, ptr %2, align 8, !tbaa !350
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !350
  store ptr null, ptr %2, align 8, !tbaa !350
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !373
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.k:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !372 ; 10 uses
  %i.bt = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i8 = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.i8, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i.i9 = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #30 ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  %i.cf = load i64, ptr %2, align 8, !tbaa !350
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !350
  store ptr null, ptr %2, align 8, !tbaa !350
  %.not10.i.i.i.i.i.i.i10 = icmp eq ptr %i.bs, %i.bn
  br i1 %.not10.i.i.i.i.i.i.i10, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i11.preheader

.lr.ph.i.i.i.i.i.i.i11.preheader:                 ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cg = sub i64 %i.bt, %i.bu
  %i.ch = add i64 %i.cg, -8                       ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check44 = icmp ult i64 %i.ch, 136
  br i1 %min.iters.check44, label %.lr.ph.i.i.i.i.i.i.i11.preheader59, label %vector.memcheck37

vector.memcheck37:                                ; preds = %.lr.ph.i.i.i.i.i.i.i11.preheader
  %i.ck = add i64 %i.bt, -8
  %i.cl = sub i64 %i.ck, %i.bu
  %i.cm = and i64 %i.cl, -8
  %i.cn = add i64 %i.cm, 8                        ; 2 uses
  %scevgep38 = getelementptr i8, ptr %i.cd, i64 %i.cn
  %scevgep39 = getelementptr i8, ptr %i.bs, i64 %i.cn
  %bound040 = icmp ult ptr %i.cd, %scevgep39
  %bound141 = icmp ult ptr %i.bs, %scevgep38
  %found.conflict42 = and i1 %bound040, %bound141
  br i1 %found.conflict42, label %.lr.ph.i.i.i.i.i.i.i11.preheader59, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck37
  %n.vec47 = and i64 %i.cj, 4611686018427387900   ; 3 uses
  %i.co = shl i64 %n.vec47, 3                     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cd, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bs, i64 %i.co
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.cr = shl i64 %index49, 3                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.cd, i64 %i.cr ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bs, i64 %i.cr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.cs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load52 = load <2 x i64>, ptr %next.gep51, align 8, !tbaa !350, !alias.scope !1350, !noalias !1345
  %wide.load53 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !350, !alias.scope !1350, !noalias !1345
  %i.ct = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %wide.load52, ptr %next.gep50, align 8, !tbaa !350, !alias.scope !1353, !noalias !1350
  store <2 x i64> %wide.load53, ptr %i.ct, align 8, !tbaa !350, !alias.scope !1353, !noalias !1350
  %i.cu = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !350, !alias.scope !1350, !noalias !1345
  store <2 x ptr> splat (ptr null), ptr %i.cu, align 8, !tbaa !350, !alias.scope !1350, !noalias !1345
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.cv = icmp eq i64 %index.next54, %n.vec47
  br i1 %i.cv, label %middle.block55, label %vector.body48, !llvm.loop !1355

middle.block55:                                   ; preds = %vector.body48
  %cmp.n56 = icmp eq i64 %i.cj, %n.vec47
  br i1 %cmp.n56, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i11.preheader59

.lr.ph.i.i.i.i.i.i.i11.preheader59:               ; preds = %vector.memcheck37, %.lr.ph.i.i.i.i.i.i.i11.preheader, %middle.block55
  %.012.i.i.i.i.i.i.i12.ph = phi ptr [ %i.cd, %vector.memcheck37 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i11.preheader ], [ %i.cp, %middle.block55 ]
  %.0911.i.i.i.i.i.i.i13.ph = phi ptr [ %i.bs, %vector.memcheck37 ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i11.preheader ], [ %i.cq, %middle.block55 ]
  br label %.lr.ph.i.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i.i11:                           ; preds = %.lr.ph.i.i.i.i.i.i.i11.preheader59, %.lr.ph.i.i.i.i.i.i.i11
  %.012.i.i.i.i.i.i.i12 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i11 ], [ %.012.i.i.i.i.i.i.i12.ph, %.lr.ph.i.i.i.i.i.i.i11.preheader59 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i13 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i11 ], [ %.0911.i.i.i.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i.i.i11.preheader59 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i.i13, align 8, !tbaa !350, !alias.scope !1348, !noalias !1345
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i.i12, align 8, !tbaa !350, !alias.scope !1345, !noalias !1348
  store ptr null, ptr %.0911.i.i.i.i.i.i.i13, align 8, !tbaa !350, !alias.scope !1348, !noalias !1345
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i13, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i12, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.cx, %i.bn
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i11, !llvm.loop !1356

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i11, %middle.block55, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i15 = phi ptr [ %i.cd, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cp, %middle.block55 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i11 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i15, i64 8
  %.not.i23.i.i.i16 = icmp eq ptr %i.bs, null
  br i1 %.not.i23.i.i.i16, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cd, ptr %i.bl, align 8, !tbaa !372
  store ptr %i.cz, ptr %i.bm, align 8, !tbaa !373
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.da, ptr %i.bo, align 8, !tbaa !902
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.db = load i64, ptr %1, align 8, !tbaa !377
  store i64 %i.db, ptr %0, align 8, !tbaa !377
  store ptr null, ptr %1, align 8, !tbaa !377
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !469    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !468  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !377 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !352
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.d) #28, !inline_history !1357
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !500

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !469
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN6duckdb19LogicalCrossProduct6CreateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.327") align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1260   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

end_hunk_5
