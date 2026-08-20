inline.NumInlined: 1490
inline.NumDeleted: 467
begin_hunk_0_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.eq = getelementptr i8, ptr %next.gep1212, i64 16
  %wide.load1213 = load <2 x i64>, ptr %next.gep1212, align 4, !alias.scope !137, !noalias !134
  %wide.load1214 = load <2 x i64>, ptr %i.eq, align 4, !alias.scope !137, !noalias !134
  %i.er = getelementptr i8, ptr %next.gep1211, i64 16
  store <2 x i64> %wide.load1213, ptr %next.gep1211, align 4, !alias.scope !134, !noalias !137
  store <2 x i64> %wide.load1214, ptr %i.er, align 4, !alias.scope !134, !noalias !137
  %index.next1215 = add nuw i64 %index1210, 4     ; 2 uses
  %i.es = icmp eq i64 %index.next1215, %n.vec1208
  br i1 %i.es, label %middle.block1216, label %vector.body1209, !llvm.loop !139

middle.block1216:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %i.ek, %n.vec1208
  br i1 %cmp.n1217, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i.preheader1468

.lr.ph.i.i.i.i.i.i109.i.preheader1468:            ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader, %middle.block1216
  %.012.i.i.i.i.i.i110.i.ph = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.en, %middle.block1216 ]
  %.0911.i.i.i.i.i.i111.i.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.eo, %middle.block1216 ]
  br label %.lr.ph.i.i.i.i.i.i109.i

.lr.ph.i.i.i.i.i.i109.i:                          ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader1468, %.lr.ph.i.i.i.i.i.i109.i
  %.012.i.i.i.i.i.i110.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i109.i ], [ %.012.i.i.i.i.i.i110.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1468 ] ; 2 uses
  %.0911.i.i.i.i.i.i111.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i109.i ], [ %.0911.i.i.i.i.i.i111.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1468 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.et = load i64, ptr %.0911.i.i.i.i.i.i111.i, align 4, !alias.scope !137, !noalias !134
  store i64 %i.et, ptr %.012.i.i.i.i.i.i110.i, align 4, !alias.scope !134, !noalias !137
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i111.i, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i110.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i112.i = icmp eq ptr %i.eu, %i.bt
  br i1 %.not.i.i.i.i.i.i112.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i, !llvm.loop !140

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i: ; preds = %.lr.ph.i.i.i.i.i.i109.i, %middle.block1216, %.noexc118
  %.0.lcssa.i.i.i.i.i.i114.i = phi ptr [ %i.ee, %.noexc118 ], [ %i.en, %middle.block1216 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i109.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i114.i, i64 8 ; 2 uses
  %.not.i23.i.i.i115.i = icmp eq ptr %i.dt, null
  br i1 %.not.i23.i.i.i115.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dw) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i: ; preds = %bb.o, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  store ptr %i.ee, ptr %5, align 8, !tbaa !51
  store ptr %i.ew, ptr %i.br, align 8, !tbaa !55
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ex, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.p:                                             ; preds = %bb.k
  %i.ey = load ptr, ptr %i.bs, align 8, !tbaa !54
  %.not.i.i118.i = icmp eq ptr %i.bt, %i.ey
  br i1 %.not.i.i118.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store <2 x float> %i.bx, ptr %i.bt, align 4
  %i.ez = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  store ptr %i.fa, ptr %i.br, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.fb = load ptr, ptr %5, align 8, !tbaa !51    ; 7 uses
  %i.fc = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64               ; 3 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 4 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i: ; preds = %bb.r
  %i.fg = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i120.i = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i.i120.i, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.umin.i64(i64 %i.fh, i64 1152921504606846975)
  %i.fk = select i1 %i.fi, i64 1152921504606846975, i64 %i.fj ; 3 uses
  %.not.i.i.i.i121.i = icmp ne i64 %i.fk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i121.i)
  %i.fl = shl nuw nsw i64 %i.fk, 3
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #23
          to label %.noexc120 unwind label %.loopexit324 ; 8 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe
  store <2 x float> %i.bx, ptr %i.fn, align 4
  %.not10.i.i.i.i.i.i122.i = icmp eq ptr %i.fb, %i.bt
  br i1 %.not10.i.i.i.i.i.i122.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader

.lr.ph.i.i.i.i.i.i123.i.preheader:                ; preds = %.noexc120
  %i.fo = ptrtoaddr ptr %i.fm to i64
  %i.fp = add i64 %i.fc, -8
  %i.fq = sub i64 %i.fp, %i.fd                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check1223 = icmp ult i64 %i.fq, 24
  %i.ft = sub i64 %i.fd, %i.fo
  %diff.check1221 = icmp ugt i64 %i.ft, -32
  %or.cond1266 = or i1 %min.iters.check1223, %diff.check1221
  br i1 %or.cond1266, label %.lr.ph.i.i.i.i.i.i123.i.preheader1469, label %vector.ph1224

vector.ph1224:                                    ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader
  %n.vec1225 = and i64 %i.fs, 4611686018427387900 ; 3 uses
  %i.fu = shl i64 %n.vec1225, 3                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fm, i64 %i.fu  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fb, i64 %i.fu
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1232, %vector.body1226 ] ; 2 uses
  %i.fx = shl i64 %index1227, 3                   ; 2 uses
  %next.gep1228 = getelementptr i8, ptr %i.fm, i64 %i.fx ; 2 uses
  %next.gep1229 = getelementptr i8, ptr %i.fb, i64 %i.fx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.fy = getelementptr i8, ptr %next.gep1229, i64 16
  %wide.load1230 = load <2 x i64>, ptr %next.gep1229, align 4, !alias.scope !144, !noalias !141
  %wide.load1231 = load <2 x i64>, ptr %i.fy, align 4, !alias.scope !144, !noalias !141
  %i.fz = getelementptr i8, ptr %next.gep1228, i64 16
  store <2 x i64> %wide.load1230, ptr %next.gep1228, align 4, !alias.scope !141, !noalias !144
  store <2 x i64> %wide.load1231, ptr %i.fz, align 4, !alias.scope !141, !noalias !144
  %index.next1232 = add nuw i64 %index1227, 4     ; 2 uses
  %i.ga = icmp eq i64 %index.next1232, %n.vec1225
  br i1 %i.ga, label %middle.block1233, label %vector.body1226, !llvm.loop !146

middle.block1233:                                 ; preds = %vector.body1226
  %cmp.n1234 = icmp eq i64 %i.fs, %n.vec1225
  br i1 %cmp.n1234, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader1469

.lr.ph.i.i.i.i.i.i123.i.preheader1469:            ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader, %middle.block1233
  %.012.i.i.i.i.i.i124.i.ph = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fv, %middle.block1233 ]
  %.0911.i.i.i.i.i.i125.i.ph = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fw, %middle.block1233 ]
  br label %.lr.ph.i.i.i.i.i.i123.i

.lr.ph.i.i.i.i.i.i123.i:                          ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader1469, %.lr.ph.i.i.i.i.i.i123.i
  %.012.i.i.i.i.i.i124.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i123.i ], [ %.012.i.i.i.i.i.i124.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1469 ] ; 2 uses
  %.0911.i.i.i.i.i.i125.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i123.i ], [ %.0911.i.i.i.i.i.i125.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1469 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.gb = load i64, ptr %.0911.i.i.i.i.i.i125.i, align 4, !alias.scope !144, !noalias !141
  store i64 %i.gb, ptr %.012.i.i.i.i.i.i124.i, align 4, !alias.scope !141, !noalias !144
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i125.i, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i124.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i126.i = icmp eq ptr %i.gc, %i.bt
  br i1 %.not.i.i.i.i.i.i126.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i, !llvm.loop !147

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i: ; preds = %.lr.ph.i.i.i.i.i.i123.i, %middle.block1233, %.noexc120
  %.0.lcssa.i.i.i.i.i.i128.i = phi ptr [ %i.fm, %.noexc120 ], [ %i.fv, %middle.block1233 ], [ %i.gd, %.lr.ph.i.i.i.i.i.i123.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i128.i, i64 8 ; 2 uses
  %.not.i23.i.i.i129.i = icmp eq ptr %i.fb, null
  br i1 %.not.i23.i.i.i129.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fe) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i: ; preds = %bb.s, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  store ptr %i.fm, ptr %5, align 8, !tbaa !51
  store ptr %i.ge, ptr %i.br, align 8, !tbaa !55
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.gf, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, %bb.q, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, %bb.m, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.h
  %i.gg = phi ptr [ %i.ge, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i ], [ %i.fa, %bb.q ], [ %i.ew, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i ], [ %i.ds, %bb.m ], [ %i.dk, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.cg, %bb.h ] ; 2 uses
  %i.gh = add i32 %.095166.i, 1                   ; 2 uses
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = icmp ugt i64 %i.bq, %i.gi
  br i1 %i.gj, label %bb.f, label %.lr.ph172.i.preheader, !llvm.loop !148

.lr.ph172.i.preheader:                            ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i
  %i.gk = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %i.gl = icmp samesign ugt i64 %i.bq, 1
  br i1 %i.gl, label %.lr.ph170.preheader.i, label %._crit_edge173.i

._crit_edge173.i.loopexit:                        ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !55
  br label %._crit_edge173.i

._crit_edge173.i:                                 ; preds = %._crit_edge173.i.loopexit, %.lr.ph172.i.preheader
  %i.gm = phi ptr [ %.pre, %._crit_edge173.i.loopexit ], [ %i.gg, %.lr.ph172.i.preheader ]
  %i.gn = phi ptr [ %i.hi, %._crit_edge173.i.loopexit ], [ %i.gk, %.lr.ph172.i.preheader ] ; 9 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.bp  ; 2 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 -8     ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !99
  %i.gr = load float, ptr %i.gn, align 4, !tbaa !99
  %i.gs = fsub float %i.gq, %i.gr                 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.gu = ptrtoint ptr %i.gm to i64
  %i.gv = ptrtoint ptr %i.gn to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 3                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 1
  br i1 %i.gy, label %.lr.ph176.i, label %.loopexit.i

.lr.ph176.i:                                      ; preds = %._crit_edge173.i
  %i.gz = fmul float %i.gs, 2.000000e-03
  br label %bb.t

.lr.ph170.preheader.i:                            ; preds = %.lr.ph172.i.preheader, %._crit_edge.i
  %i.ha = phi i64 [ %8, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ]
  %indvars.iv.next.i496 = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ] ; 4 uses
  %i.hb = phi ptr [ %i.hj, %._crit_edge.i ], [ %i.gk, %.lr.ph172.i.preheader ] ; 3 uses
  %i.hc = phi ptr [ %i.hi, %._crit_edge.i ], [ %i.gk, %.lr.ph172.i.preheader ] ; 2 uses
  %indvars.iv.i495 = phi i64 [ %indvars.iv.next.i496, %._crit_edge.i ], [ 0, %.lr.ph172.i.preheader ]
  %7 = trunc nuw i64 %indvars.iv.i495 to i32
  %indvars.i = trunc i64 %indvars.iv.next.i496 to i32
  %i.hd = load float, ptr %i.hb, align 4, !tbaa !99
  br label %.lr.ph170.i

._crit_edge.i:                                    ; preds = %.lr.ph170.i
  %i.he = zext i32 %.193.i to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.he ; 2 uses
  %i.hg = load i64, ptr %i.hb, align 4
  %i.hh = load i64, ptr %i.hf, align 4
  store i64 %i.hh, ptr %i.hb, align 4
  store i64 %i.hg, ptr %i.hf, align 4
  %i.hi = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next.i496
  %indvars.iv.next.i = add i64 %indvars.iv.next.i496, 1 ; 2 uses
  %8 = and i64 %indvars.iv.next.i, 4294967295     ; 2 uses
  %i.hk = icmp samesign ugt i64 %i.bq, %8
  br i1 %i.hk, label %.lr.ph170.preheader.i, label %._crit_edge173.i.loopexit

.lr.ph170.i:                                      ; preds = %.lr.ph170.i, %.lr.ph170.preheader.i
  %i.hl = phi i64 [ %i.hq, %.lr.ph170.i ], [ %i.ha, %.lr.ph170.preheader.i ]
  %.090169.i = phi i32 [ %i.hp, %.lr.ph170.i ], [ %indvars.i, %.lr.ph170.preheader.i ] ; 2 uses
  %.091168.i = phi float [ %.1.i, %.lr.ph170.i ], [ %i.hd, %.lr.ph170.preheader.i ] ; 2 uses
  %.092167.i = phi i32 [ %.193.i, %.lr.ph170.i ], [ %7, %.lr.ph170.preheader.i ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !99 ; 2 uses
  %i.ho = fcmp olt float %i.hn, %.091168.i        ; 2 uses
  %.193.i = select i1 %i.ho, i32 %.090169.i, i32 %.092167.i ; 2 uses
  %.1.i = select i1 %i.ho, float %i.hn, float %.091168.i
  %i.hp = add i32 %.090169.i, 1                   ; 2 uses
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = icmp ugt i64 %i.bq, %i.hq
  br i1 %i.hr, label %.lr.ph170.i, label %._crit_edge.i, !llvm.loop !149

._crit_edge177.i:                                 ; preds = %bb.v
  br i1 %switch114, label %.loopexit.i, label %bb.w

bb.t:                                             ; preds = %bb.v, %.lr.ph176.i
  %i.hs = phi i64 [ 1, %.lr.ph176.i ], [ %12, %bb.v ]
  %.089174.i = phi i32 [ 1, %.lr.ph176.i ], [ %11, %bb.v ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.hs ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !99
  %9 = add i32 %.089174.i, -1
  %10 = zext i32 %9 to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %10
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !99 ; 2 uses
  %i.hx = fsub float %i.hu, %i.hw
  %i.hy = fcmp olt float %i.hx, %i.gz
  br i1 %i.hy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.gs, float 2.000000e-03, float %i.hw)
  store float %i.hz, ptr %i.ht, align 4, !tbaa !99
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %11 = add i32 %.089174.i, 1                     ; 2 uses
  %12 = zext i32 %11 to i64                       ; 2 uses
  %i.ia = icmp ugt i64 %i.gx, %12
  br i1 %i.ia, label %bb.t, label %._crit_edge177.i, !llvm.loop !150

bb.w:                                             ; preds = %._crit_edge177.i
  %i.ib = getelementptr i8, ptr %i.go, i64 -4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !102
  %i.id = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !102
  %i.if = fsub float %i.ic, %i.ie                 ; 2 uses
  %i.ig = fmul float %i.if, 2.000000e-03
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.ih = phi i64 [ 1, %bb.w ], [ %16, %bb.z ]
  %.0179.i = phi i32 [ 1, %bb.w ], [ %15, %bb.z ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !102
  %13 = add i32 %.0179.i, -1
  %14 = zext i32 %13 to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %14
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load float, ptr %i.im, align 4, !tbaa !102 ; 2 uses
  %i.io = fsub float %i.ik, %i.in
  %i.ip = fcmp olt float %i.io, %i.ig
  br i1 %i.ip, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.if, float 2.000000e-03, float %i.in)
  store float %i.iq, ptr %i.ij, align 4, !tbaa !102
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %15 = add i32 %.0179.i, 1                       ; 2 uses
  %16 = zext i32 %15 to i64                       ; 2 uses
  %i.ir = icmp ugt i64 %i.gx, %16
  br i1 %i.ir, label %bb.x, label %.loopexit.i, !llvm.loop !151

.loopexit.i:                                      ; preds = %bb.z, %._crit_edge177.i, %._crit_edge173.i
  br i1 %switch, label %bb.aa, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

bb.aa:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.is = load i64, ptr %i.gp, align 4            ; 2 uses
  %i.it = trunc i64 %i.is to i32
  %i.iu = bitcast i32 %i.it to float
  %i.iv = fadd float %i.iu, -1.000000e+00
  store float %i.iv, ptr %4, align 4, !tbaa !99
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ix = lshr i64 %i.is, 32
  %i.iy = trunc nuw i64 %i.ix to i32
  %i.iz = bitcast i32 %i.iy to float              ; 2 uses
  %i.ja = fadd float %i.iz, -1.000000e+00
  %i.jb = select i1 %switch114, float %i.iz, float %i.ja
  store float %i.jb, ptr %i.iw, align 4, !tbaa !102
  %i.jc = invoke ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %i.gn, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %.noexc121 unwind label %.loopexit.split-lp325 ; 0 uses

.noexc121:                                        ; preds = %bb.aa
  %i.jd = load ptr, ptr %5, align 8, !tbaa !51    ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load float, ptr %i.je, align 4
  %.sroa_idx135.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.jg = load float, ptr %.sroa_idx135.i, align 4 ; 2 uses
  %i.jh = fadd float %i.jf, 1.000000e+00          ; 2 uses
  %i.ji = fadd float %i.jg, 1.000000e+00
  %i.jj = select i1 %switch114, float %i.jg, float %i.ji ; 2 uses
  %i.jk = load ptr, ptr %i.gt, align 8, !tbaa !55 ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.jk, %i.jm
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc121
  store float %i.jh, ptr %i.jk, align 4
  %.sroa_idx132.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  store float %i.jj, ptr %.sroa_idx132.i, align 4
  %i.jn = load ptr, ptr %i.gt, align 8, !tbaa !55
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.jo, ptr %i.gt, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

bb.ac:                                            ; preds = %.noexc121
  %i.jp = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.jq = ptrtoint ptr %i.jd to i64               ; 3 uses
  %i.jr = sub i64 %i.jp, %i.jq                    ; 4 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775800
  br i1 %i.js, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.jt = ashr exact i64 %i.jr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = call i64 @llvm.umin.i64(i64 %i.ju, i64 1152921504606846975)
  %i.jx = select i1 %i.jv, i64 1152921504606846975, i64 %i.jw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.jx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.jy = shl nuw nsw i64 %i.jx, 3
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #23
          to label %.noexc123 unwind label %.loopexit.split-lp325 ; 8 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jr ; 2 uses
  store float %i.jh, ptr %i.ka, align 4
  %.sroa_idx134.i = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store float %i.jj, ptr %.sroa_idx134.i, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.jd, %i.jk
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc123
  %i.kb = ptrtoaddr ptr %i.jz to i64
  %i.kc = add i64 %i.jp, -8
  %i.kd = sub i64 %i.kc, %i.jq                    ; 2 uses
  %i.ke = lshr i64 %i.kd, 3
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check1240 = icmp ult i64 %i.kd, 72
  %i.kg = sub i64 %i.jq, %i.kb
  %diff.check1238 = icmp ugt i64 %i.kg, -32
  %or.cond1267 = or i1 %min.iters.check1240, %diff.check1238
  br i1 %or.cond1267, label %.lr.ph.i.i.i.i.i.i.preheader1464, label %vector.ph1241

vector.ph1241:                                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec1242 = and i64 %i.kf, 4611686018427387900 ; 3 uses
  %i.kh = shl i64 %n.vec1242, 3                   ; 2 uses
  %i.ki = getelementptr i8, ptr %i.jz, i64 %i.kh  ; 2 uses
  %i.kj = getelementptr i8, ptr %i.jd, i64 %i.kh
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1241
  %index1244 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1249, %vector.body1243 ] ; 2 uses
  %i.kk = shl i64 %index1244, 3                   ; 2 uses
  %next.gep1245 = getelementptr i8, ptr %i.jz, i64 %i.kk ; 2 uses
  %next.gep1246 = getelementptr i8, ptr %i.jd, i64 %i.kk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.kl = getelementptr i8, ptr %next.gep1246, i64 16
  %wide.load1247 = load <2 x i64>, ptr %next.gep1246, align 4, !alias.scope !155, !noalias !152
  %wide.load1248 = load <2 x i64>, ptr %i.kl, align 4, !alias.scope !155, !noalias !152
  %i.km = getelementptr i8, ptr %next.gep1245, i64 16
  store <2 x i64> %wide.load1247, ptr %next.gep1245, align 4, !alias.scope !152, !noalias !155
  store <2 x i64> %wide.load1248, ptr %i.km, align 4, !alias.scope !152, !noalias !155
  %index.next1249 = add nuw i64 %index1244, 4     ; 2 uses
  %i.kn = icmp eq i64 %index.next1249, %n.vec1242
  br i1 %i.kn, label %middle.block1250, label %vector.body1243, !llvm.loop !157

middle.block1250:                                 ; preds = %vector.body1243
  %cmp.n1251 = icmp eq i64 %i.kf, %n.vec1242
  br i1 %cmp.n1251, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader1464

.lr.ph.i.i.i.i.i.i.preheader1464:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block1250
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ki, %middle.block1250 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kj, %middle.block1250 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader1464, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1464 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.kp, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1464 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ko = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !155, !noalias !152
  store i64 %i.ko, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !152, !noalias !155
  %i.kp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kp, %i.jk
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !158

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block1250, %.noexc123
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.jz, %.noexc123 ], [ %i.ki, %middle.block1250 ], [ %i.kq, %.lr.ph.i.i.i.i.i.i ]
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jr) #24
  store ptr %i.jz, ptr %5, align 8, !tbaa !51
  store ptr %i.kr, ptr %i.gt, align 8, !tbaa !55
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jx
  store ptr %i.ks, ptr %i.jl, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i, %.loopexit.i
  %i.kt = load i32, ptr %i.bi, align 8, !tbaa !63
  %i.ku = icmp eq i32 %i.kt, 2
  %narrow = or i1 %i.ku, %switch114
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.kv = load ptr, ptr %0, align 8, !tbaa !26
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = invoke noundef zeroext i1 %i.kx(ptr noundef nonnull align 8 dereferenceable(60) %0)
          to label %bb.ad unwind label %bb.an

.loopexit324:                                     ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp325:                            ; preds = %.invoke, %bb.aa, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit
  br i1 %i.ky, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !62
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !56
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = ashr exact i64 %i.lf, 2
  %i.lh = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.li = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = ashr exact i64 %i.ll, 3
  %i.ln = icmp eq i64 %i.lg, %i.lm
  br i1 %i.ln, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.lo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.kz)
          to label %bb.ag unwind label %bb.an     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %switch, label %bb.ah, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !125
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -4
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib:bb.a
  store ptr %i.rh, ptr %i.ng, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i

_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i, %bb.bn
  %i.ri = phi ptr [ %i.rh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i ], [ %i.nh, %bb.bn ] ; 4 uses
  %i.rj = phi ptr [ %i.rg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i ], [ %i.qr, %bb.bn ] ; 4 uses
  br i1 %narrow, label %.preheader.i135, label %.preheader301.i

.preheader301.i:                                  ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i
  %i.rk = add nsw i64 %i.nc, -3
  %i.rl = add nsw i64 %i.nc, -2                   ; 4 uses
  br label %bb.cd

.preheader.i135:                                  ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i
  %i.rm = icmp samesign ugt i64 %i.nc, 2
  br i1 %i.rm, label %.lr.ph383.i, label %._crit_edge384.i

._crit_edge384.i:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i, %.preheader.i135
  %i.rn = phi ptr [ %i.ri, %.preheader.i135 ], [ %i.tz, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ] ; 2 uses
  %i.ro = phi ptr [ %i.rj, %.preheader.i135 ], [ %i.ua, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ] ; 3 uses
  %i.rp = add nsw i64 %i.nc, -2                   ; 2 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.rp
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !60
  %i.rs = load ptr, ptr %6, align 8, !tbaa !56    ; 5 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.rp
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !60
  %i.rv = fneg float %i.ru
  %i.rw = call float @llvm.fmuladd.f32(float %i.rr, float 3.000000e+00, float %i.rv)
  %i.rx = fmul float %i.rw, 5.000000e-01          ; 2 uses
  %.not.i.i180.i = icmp eq ptr %i.ro, %i.rn
  br i1 %.not.i.i180.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge384.i
  store float %i.rx, ptr %i.ro, align 4, !tbaa !60
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  store ptr %i.ry, ptr %i.mu, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i

bb.bt:                                            ; preds = %._crit_edge384.i
  %i.rz = ptrtoint ptr %i.rn to i64
  %i.sa = ptrtoint ptr %i.rs to i64
  %i.sb = sub i64 %i.rz, %i.sa                    ; 6 uses
  %i.sc = icmp eq i64 %i.sb, 9223372036854775804
  br i1 %i.sc, label %bb.bu, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.noexc187.i unwind label %bb.cc

.noexc187.i:                                      ; preds = %bb.bu
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i: ; preds = %bb.bt
  %i.sd = ashr exact i64 %i.sb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i182.i = call i64 @llvm.umax.i64(i64 %i.sd, i64 1)
  %i.se = add nsw i64 %.sroa.speculated.i.i.i.i182.i, %i.sd ; 2 uses
  %i.sf = icmp ult i64 %i.se, %i.sd
  %i.sg = call i64 @llvm.umin.i64(i64 %i.se, i64 2305843009213693951)
  %i.sh = select i1 %i.sf, i64 2305843009213693951, i64 %i.sg ; 3 uses
  %.not.i.i.i.i183.i = icmp ne i64 %i.sh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i183.i)
  %i.si = shl nuw nsw i64 %i.sh, 2
  %i.sj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.si) #23
          to label %.noexc188.i unwind label %bb.cc ; 5 uses

.noexc188.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i
  %i.sk = getelementptr inbounds i8, ptr %i.sj, i64 %i.sb ; 2 uses
  store float %i.rx, ptr %i.sk, align 4, !tbaa !60
  %i.sl = icmp sgt i64 %i.sb, 0
  br i1 %i.sl, label %bb.bv, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i

bb.bv:                                            ; preds = %.noexc188.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sj, ptr nonnull align 4 %i.rs, i64 %i.sb, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i: ; preds = %bb.bv, %.noexc188.i
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef %i.sb) #24
  store ptr %i.sj, ptr %6, align 8, !tbaa !56
  store ptr %i.sm, ptr %i.mu, align 8, !tbaa !62
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.sh
  store ptr %i.sn, ptr %i.ng, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i

bb.bw:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i171.i, %bb.bp
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph383.i:                                      ; preds = %.preheader.i135, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i
  %i.sp = phi ptr [ %i.tz, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ %i.ri, %.preheader.i135 ] ; 3 uses
  %i.sq = phi ptr [ %i.ua, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ %i.rj, %.preheader.i135 ] ; 3 uses
  %i.sr = phi i64 [ %i.uc, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ 1, %.preheader.i135 ]
  %.0125382.i = phi i32 [ %i.ub, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ 1, %.preheader.i135 ] ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.sr
  %i.st = load float, ptr %i.ss, align 4, !tbaa !60 ; 3 uses
  %i.su = add i32 %.0125382.i, -1
  %i.sv = zext i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.sv
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !60 ; 3 uses
  %i.sy = fadd float %i.st, %i.sx                 ; 3 uses
  %i.sz = call float @llvm.fabs.f32(float %i.sy)
  %i.ta = fcmp olt float %i.sz, 1.000000e-03
  %i.tb = fcmp olt float %i.sy, 0.000000e+00
  %i.tc = select i1 %i.tb, float -1.000000e-03, float 1.000000e-03
  %.sink485.i = select i1 %i.ta, float %i.tc, float %i.sy
  %i.td = fmul float %i.st, 2.000000e+00
  %i.te = fmul float %i.td, %i.sx
  %i.tf = fdiv float %i.te, %.sink485.i
  %i.tg = fmul float %i.st, %i.sx
  %i.th = fcmp ugt float %i.tg, 0.000000e+00
  %.0283.i = select i1 %i.th, float %i.tf, float 0.000000e+00 ; 2 uses
  %.not.i190.i = icmp eq ptr %i.sq, %i.sp
  br i1 %.not.i190.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph383.i
  store float %.0283.i, ptr %i.sq, align 4, !tbaa !60
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sq, i64 4 ; 2 uses
  store ptr %i.ti, ptr %i.mu, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i

bb.by:                                            ; preds = %.lr.ph383.i
  %i.tj = load ptr, ptr %6, align 8, !tbaa !56    ; 4 uses
  %i.tk = ptrtoint ptr %i.sp to i64
  %i.tl = ptrtoint ptr %i.tj to i64
  %i.tm = sub i64 %i.tk, %i.tl                    ; 6 uses
  %i.tn = icmp eq i64 %i.tm, 9223372036854775804
  br i1 %i.tn, label %bb.bz, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.noexc197.i unwind label %.loopexit.split-lp.i

.noexc197.i:                                      ; preds = %bb.bz
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i: ; preds = %bb.by
  %i.to = ashr exact i64 %i.tm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i192.i = call i64 @llvm.umax.i64(i64 %i.to, i64 1)
  %i.tp = add nsw i64 %.sroa.speculated.i.i.i192.i, %i.to ; 2 uses
  %i.tq = icmp ult i64 %i.tp, %i.to
  %i.tr = call i64 @llvm.umin.i64(i64 %i.tp, i64 2305843009213693951)
  %i.ts = select i1 %i.tq, i64 2305843009213693951, i64 %i.tr ; 3 uses
  %.not.i.i.i193.i = icmp ne i64 %i.ts, 0
  call void @llvm.assume(i1 %.not.i.i.i193.i)
  %i.tt = shl nuw nsw i64 %i.ts, 2
  %i.tu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tt) #23
          to label %.noexc198.i unwind label %.loopexit.i136 ; 4 uses

.noexc198.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i
  %i.tv = getelementptr inbounds i8, ptr %i.tu, i64 %i.tm ; 2 uses
  store float %.0283.i, ptr %i.tv, align 4, !tbaa !60
  %i.tw = icmp sgt i64 %i.tm, 0
  br i1 %i.tw, label %bb.ca, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i

bb.ca:                                            ; preds = %.noexc198.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.tu, ptr align 4 %i.tj, i64 %i.tm, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i: ; preds = %bb.ca, %.noexc198.i
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 4 ; 2 uses
  %.not.i17.i.i195.i = icmp eq ptr %i.tj, null
  br i1 %.not.i17.i.i195.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef %i.tm) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i: ; preds = %bb.cb, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i
  store ptr %i.tu, ptr %6, align 8, !tbaa !56
  store ptr %i.tx, ptr %i.mu, align 8, !tbaa !62
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.ts ; 2 uses
  store ptr %i.ty, ptr %i.ng, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i, %bb.bx
  %i.tz = phi ptr [ %i.ty, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i ], [ %i.sp, %bb.bx ] ; 2 uses
  %i.ua = phi ptr [ %i.tx, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i ], [ %i.ti, %bb.bx ] ; 2 uses
  %i.ub = add i32 %.0125382.i, 1                  ; 2 uses
  %i.uc = zext i32 %i.ub to i64                   ; 2 uses
  %i.ud = icmp ugt i64 %i.nd, %i.uc
  br i1 %i.ud, label %.lr.ph383.i, label %._crit_edge384.i, !llvm.loop !160

.loopexit.i136:                                   ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp.i:                             ; preds = %bb.bz
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i, %bb.bs
  %i.ue = phi ptr [ %i.sj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i ], [ %i.rs, %bb.bs ] ; 3 uses
  %i.uf = load float, ptr %.sroa.0259.0.lcssa.i, align 4, !tbaa !60
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !60
  %i.ui = fneg float %i.uh
  %i.uj = call float @llvm.fmuladd.f32(float %i.uf, float 3.000000e+00, float %i.ui)
  %i.uk = fmul float %i.uj, 5.000000e-01
  store float %i.uk, ptr %i.ue, align 4, !tbaa !60
  br label %bb.cn

bb.cc:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i, %bb.bu
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cd:                                            ; preds = %._crit_edge378.i, %.preheader301.i
  %.0124.i = phi i32 [ %i.vz, %._crit_edge378.i ], [ 0, %.preheader301.i ] ; 13 uses
  %i.um = zext i32 %.0124.i to i64                ; 5 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.um
  %i.uo = load float, ptr %i.un, align 4, !tbaa !60 ; 3 uses
  %i.up = icmp ugt i64 %i.rl, %i.um
  br i1 %i.up, label %.lr.ph365.preheader.i, label %.critedge.i

.lr.ph365.preheader.i:                            ; preds = %bb.cd
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.um
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !60
  %i.uq = add i32 %.0124.i, 1                     ; 2 uses
  %i.ur = zext i32 %i.uq to i64                   ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.ur
  %i.ut = load float, ptr %i.us, align 4, !tbaa !60 ; 2 uses
  %i.uu = fsub float %i.ut, %.pre.i
  %i.uv = call float @llvm.fabs.f32(float %i.uu)
  %i.uw = fcmp olt float %i.uv, f0x358637BD
  br i1 %i.uw, label %.lr.ph, label %.critedge.i

.lr.ph365.i:                                      ; preds = %.lr.ph
  %i.ux = add i32 %i.vg, 1                        ; 2 uses
  %i.uy = zext i32 %i.ux to i64                   ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.uy
  %i.va = load float, ptr %i.uz, align 4, !tbaa !60 ; 2 uses
  %i.vb = fsub float %i.va, %i.ve
  %i.vc = call float @llvm.fabs.f32(float %i.vb)
  %i.vd = fcmp olt float %i.vc, f0x358637BD
  br i1 %i.vd, label %.lr.ph, label %.critedge.i, !llvm.loop !161

.lr.ph:                                           ; preds = %.lr.ph365.preheader.i, %.lr.ph365.i
  %i.ve = phi float [ %i.va, %.lr.ph365.i ], [ %i.ut, %.lr.ph365.preheader.i ]
  %i.vf = phi i64 [ %i.uy, %.lr.ph365.i ], [ %i.ur, %.lr.ph365.preheader.i ] ; 4 uses
  %i.vg = phi i32 [ %i.ux, %.lr.ph365.i ], [ %i.uq, %.lr.ph365.preheader.i ] ; 3 uses
  %.0122363.i497 = phi float [ %i.vj, %.lr.ph365.i ], [ %i.uo, %.lr.ph365.preheader.i ]
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.vf
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !60
  %i.vj = fadd float %.0122363.i497, %i.vi        ; 3 uses
  %i.vk = icmp ugt i64 %i.rl, %i.vf
  br i1 %i.vk, label %.lr.ph365.i, label %..critedge.i.loopexit_crit_edge, !llvm.loop !161

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !161

.critedge.i:                                      ; preds = %.lr.ph365.i, %.lr.ph365.preheader.i, %..critedge.i.loopexit_crit_edge, %bb.cd
  %.0123.lcssa.i = phi i32 [ %.0124.i, %bb.cd ], [ %.0124.i, %.lr.ph365.preheader.i ], [ %i.vg, %..critedge.i.loopexit_crit_edge ], [ %i.vg, %.lr.ph365.i ] ; 5 uses
  %.0122.lcssa.i = phi float [ %i.uo, %bb.cd ], [ %i.uo, %.lr.ph365.preheader.i ], [ %i.vj, %..critedge.i.loopexit_crit_edge ], [ %i.vj, %.lr.ph365.i ] ; 2 uses
  %.lcssa312.i = phi i64 [ %i.um, %bb.cd ], [ %i.um, %.lr.ph365.preheader.i ], [ %i.vf, %..critedge.i.loopexit_crit_edge ], [ %i.vf, %.lr.ph365.i ]
  %.not375.i = icmp ugt i32 %.0124.i, %.0123.lcssa.i
  br i1 %.not375.i, label %._crit_edge378.i, label %.lr.ph377.i.preheader

.lr.ph377.i.preheader:                            ; preds = %.critedge.i
  %i.vl = add i32 %.0123.lcssa.i, 1
  %i.vm = add i32 %.0124.i, 1
  %i.vn = call i32 @llvm.umax.i32(i32 %i.vl, i32 %i.vm)
  %i.vo = sub i32 %i.vn, %.0124.i                 ; 3 uses
  %min.iters.check1255 = icmp ult i32 %i.vo, 20
  br i1 %min.iters.check1255, label %.lr.ph377.i.preheader1437, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph377.i.preheader
  %i.vp = add i32 %.0123.lcssa.i, 1
  %i.vq = add i32 %.0124.i, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.vp, i32 %i.vq)
  %i.vr = add i32 %umax, -1
  %i.vs = icmp ult i32 %i.vr, %.0124.i
  br i1 %i.vs, label %.lr.ph377.i.preheader1437, label %vector.ph1256

vector.ph1256:                                    ; preds = %vector.scevcheck
  %n.vec1257 = and i32 %i.vo, -8                  ; 3 uses
  %i.vt = add i32 %.0124.i, %n.vec1257
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.0122.lcssa.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1256
  %index1259 = phi i32 [ 0, %vector.ph1256 ], [ %index.next1260, %vector.body1258 ] ; 2 uses
  %i.vu = add i32 %.0124.i, %index1259
  %i.vv = zext i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.vv ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  store <4 x float> %broadcast.splat, ptr %i.vw, align 4, !tbaa !60
  store <4 x float> %broadcast.splat, ptr %i.vx, align 4, !tbaa !60
  %index.next1260 = add nuw i32 %index1259, 8     ; 2 uses
  %i.vy = icmp eq i32 %index.next1260, %n.vec1257
  br i1 %i.vy, label %middle.block1261, label %vector.body1258, !llvm.loop !162

middle.block1261:                                 ; preds = %vector.body1258
  %cmp.n1262 = icmp eq i32 %i.vo, %n.vec1257
  br i1 %cmp.n1262, label %._crit_edge378.i, label %.lr.ph377.i.preheader1437

.lr.ph377.i.preheader1437:                        ; preds = %vector.scevcheck, %.lr.ph377.i.preheader, %middle.block1261
  %.0121376.i.ph = phi i32 [ %.0124.i, %vector.scevcheck ], [ %.0124.i, %.lr.ph377.i.preheader ], [ %i.vt, %middle.block1261 ]
  br label %.lr.ph377.i

._crit_edge378.i:                                 ; preds = %.lr.ph377.i, %middle.block1261, %.critedge.i
  %.not141.i = icmp ugt i64 %i.rk, %.lcssa312.i
  %i.vz = add nuw i32 %.0123.lcssa.i, 1
  br i1 %.not141.i, label %bb.cd, label %.preheader297.i

.preheader297.i:                                  ; preds = %._crit_edge378.i
  %i.wa = icmp ugt i64 %i.nd, 1
  br i1 %i.wa, label %.lr.ph380.i, label %._crit_edge381.i

.lr.ph377.i:                                      ; preds = %.lr.ph377.i.preheader1437, %.lr.ph377.i
  %.0121376.i = phi i32 [ %i.wd, %.lr.ph377.i ], [ %.0121376.i.ph, %.lr.ph377.i.preheader1437 ] ; 2 uses
  %i.wb = zext i32 %.0121376.i to i64
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.wb
  store float %.0122.lcssa.i, ptr %i.wc, align 4, !tbaa !60
  %i.wd = add i32 %.0121376.i, 1                  ; 2 uses
  %.not.i132 = icmp ugt i32 %i.wd, %.0123.lcssa.i
  br i1 %.not.i132, label %._crit_edge378.i, label %.lr.ph377.i, !llvm.loop !163

._crit_edge381.i:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i, %.preheader297.i
  %i.we = phi ptr [ %i.ri, %.preheader297.i ], [ %i.yn, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ] ; 2 uses
  %i.wf = phi ptr [ %i.rj, %.preheader297.i ], [ %i.yo, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ] ; 3 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.rl
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !60
  %i.wi = load ptr, ptr %6, align 8, !tbaa !56    ; 5 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.rl
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !60
  %i.wl = fneg float %i.wk
  %i.wm = call float @llvm.fmuladd.f32(float %i.wh, float 3.000000e+00, float %i.wl)
  %i.wn = fmul float %i.wm, 5.000000e-01          ; 3 uses
  %i.wo = fcmp ogt float %i.wn, f0x3C23D70A       ; 2 uses
  %.not.i200.i = icmp eq ptr %i.wf, %i.we
  br i1 %.not.i200.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge381.i
  %.sroa.speculated232.i = select i1 %i.wo, float %i.wn, float f0x3C23D70A
  store float %.sroa.speculated232.i, ptr %i.wf, align 4, !tbaa !60
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  store ptr %i.wp, ptr %i.mu, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i

bb.cf:                                            ; preds = %._crit_edge381.i
  %i.wq = ptrtoint ptr %i.we to i64
  %i.wr = ptrtoint ptr %i.wi to i64
  %i.ws = sub i64 %i.wq, %i.wr                    ; 6 uses
  %i.wt = icmp eq i64 %i.ws, 9223372036854775804
  br i1 %i.wt, label %bb.cg, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.noexc207.i unwind label %.thread455.i

.noexc207.i:                                      ; preds = %bb.cg
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i: ; preds = %bb.cf
  %i.wu = ashr exact i64 %i.ws, 2                 ; 3 uses
  %.sroa.speculated.i.i.i202.i = call i64 @llvm.umax.i64(i64 %i.wu, i64 1)
  %i.wv = add nsw i64 %.sroa.speculated.i.i.i202.i, %i.wu ; 2 uses
  %i.ww = icmp ult i64 %i.wv, %i.wu
  %i.wx = call i64 @llvm.umin.i64(i64 %i.wv, i64 2305843009213693951)
  %i.wy = select i1 %i.ww, i64 2305843009213693951, i64 %i.wx ; 3 uses
  %.not.i.i.i203.i = icmp ne i64 %i.wy, 0
  call void @llvm.assume(i1 %.not.i.i.i203.i)
  %i.wz = shl nuw nsw i64 %i.wy, 2
  %i.xa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wz) #23
          to label %.noexc208.i unwind label %.thread455.i ; 5 uses

.noexc208.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i
  %i.xb = getelementptr inbounds i8, ptr %i.xa, i64 %i.ws ; 2 uses
  %.sroa.speculated229.i = select i1 %i.wo, float %i.wn, float f0x3C23D70A
  store float %.sroa.speculated229.i, ptr %i.xb, align 4, !tbaa !60
  %i.xc = icmp sgt i64 %i.ws, 0
  br i1 %i.xc, label %bb.ch, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i

bb.ch:                                            ; preds = %.noexc208.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.xa, ptr nonnull align 4 %i.wi, i64 %i.ws, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i: ; preds = %bb.ch, %.noexc208.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.wi, i64 noundef %i.ws) #24
  store ptr %i.xa, ptr %6, align 8, !tbaa !56
  store ptr %i.xd, ptr %i.mu, align 8, !tbaa !62
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %i.wy
  store ptr %i.xe, ptr %i.ng, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i

.lr.ph380.i:                                      ; preds = %.preheader297.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i
  %i.xf = phi ptr [ %i.yn, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ %i.ri, %.preheader297.i ] ; 3 uses
  %i.xg = phi ptr [ %i.yo, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ %i.rj, %.preheader297.i ] ; 3 uses
  %i.xh = phi i64 [ %i.yq, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ 1, %.preheader297.i ] ; 2 uses
  %.0120379.i = phi i32 [ %i.yp, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ 1, %.preheader297.i ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.xh
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !60 ; 2 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.xh
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !60
  %i.xm = add i32 %.0120379.i, -1
  %i.xn = zext i32 %i.xm to i64                   ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.xn
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !60 ; 2 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.xn
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !60
  %i.xs = fmul float %i.xp, %i.xr
  %i.xt = call float @llvm.fmuladd.f32(float %i.xj, float %i.xl, float %i.xs)
  %i.xu = fadd float %i.xj, %i.xp
  %i.xv = fdiv float %i.xt, %i.xu                 ; 2 uses
  %.not.i210.i = icmp eq ptr %i.xg, %i.xf
  br i1 %.not.i210.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph380.i
  store float %i.xv, ptr %i.xg, align 4, !tbaa !60
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xg, i64 4 ; 2 uses
  store ptr %i.xw, ptr %i.mu, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i

bb.cj:                                            ; preds = %.lr.ph380.i
  %i.xx = load ptr, ptr %6, align 8, !tbaa !56    ; 4 uses
  %i.xy = ptrtoint ptr %i.xf to i64
  %i.xz = ptrtoint ptr %i.xx to i64
  %i.ya = sub i64 %i.xy, %i.xz                    ; 6 uses
  %i.yb = icmp eq i64 %i.ya, 9223372036854775804
  br i1 %i.yb, label %bb.ck, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.noexc217.i unwind label %.thread285.loopexit.split-lp.i

.noexc217.i:                                      ; preds = %bb.ck
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i: ; preds = %bb.cj
  %i.yc = ashr exact i64 %i.ya, 2                 ; 3 uses
  %.sroa.speculated.i.i.i212.i = call i64 @llvm.umax.i64(i64 %i.yc, i64 1)
  %i.yd = add nsw i64 %.sroa.speculated.i.i.i212.i, %i.yc ; 2 uses
  %i.ye = icmp ult i64 %i.yd, %i.yc
  %i.yf = call i64 @llvm.umin.i64(i64 %i.yd, i64 2305843009213693951)
  %i.yg = select i1 %i.ye, i64 2305843009213693951, i64 %i.yf ; 3 uses
  %.not.i.i.i213.i = icmp ne i64 %i.yg, 0
  call void @llvm.assume(i1 %.not.i.i.i213.i)
  %i.yh = shl nuw nsw i64 %i.yg, 2
  %i.yi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yh) #23
          to label %.noexc218.i unwind label %.thread285.loopexit.i ; 4 uses

.noexc218.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i
  %i.yj = getelementptr inbounds i8, ptr %i.yi, i64 %i.ya ; 2 uses
  store float %i.xv, ptr %i.yj, align 4, !tbaa !60
  %i.yk = icmp sgt i64 %i.ya, 0
  br i1 %i.yk, label %bb.cl, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i

bb.cl:                                            ; preds = %.noexc218.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yi, ptr align 4 %i.xx, i64 %i.ya, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i: ; preds = %bb.cl, %.noexc218.i
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 4 ; 2 uses
  %.not.i17.i.i215.i = icmp eq ptr %i.xx, null
  br i1 %.not.i17.i.i215.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i
  call void @_ZdlPvm(ptr noundef nonnull %i.xx, i64 noundef %i.ya) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i: ; preds = %bb.cm, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i
  store ptr %i.yi, ptr %6, align 8, !tbaa !56
  store ptr %i.yl, ptr %i.mu, align 8, !tbaa !62
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %i.yg ; 2 uses
  store ptr %i.ym, ptr %i.ng, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i, %bb.ci
  %i.yn = phi ptr [ %i.ym, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i ], [ %i.xf, %bb.ci ] ; 2 uses
  %i.yo = phi ptr [ %i.yl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i ], [ %i.xw, %bb.ci ] ; 2 uses
  %i.yp = add i32 %.0120379.i, 1                  ; 2 uses
  %i.yq = zext i32 %i.yp to i64                   ; 2 uses
  %i.yr = icmp ugt i64 %i.nd, %i.yq
  br i1 %i.yr, label %.lr.ph380.i, label %._crit_edge381.i, !llvm.loop !164

.thread285.loopexit.i:                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i
  %lpad.loopexit298.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

.thread285.loopexit.split-lp.i:                   ; preds = %bb.ck
  %lpad.loopexit.split-lp299.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i, %bb.ce
  %i.ys = phi ptr [ %i.xa, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i ], [ %i.wi, %bb.ce ] ; 3 uses
  %i.yt = load float, ptr %.sroa.0259.0.lcssa.i, align 4, !tbaa !60
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !60
  %i.yw = fneg float %i.yv
  %i.yx = call float @llvm.fmuladd.f32(float %i.yt, float 3.000000e+00, float %i.yw)
  %i.yy = fmul float %i.yx, 5.000000e-01          ; 2 uses
  %i.yz = fcmp ogt float %i.yy, f0x3C23D70A
  %.sroa.speculated.i = select i1 %i.yz, float %i.yy, float f0x3C23D70A
  store float %.sroa.speculated.i, ptr %i.ys, align 4, !tbaa !60
  br label %bb.cn

.thread455.i:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i, %bb.cg
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

bb.cn:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i
  %i.zb = phi ptr [ %i.ys, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i ], [ %i.ue, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i ] ; 6 uses
  br i1 %.not389.i, label %._crit_edge388.i, label %.lr.ph387.i

._crit_edge388.i:                                 ; preds = %.thread.i, %bb.cn
  br i1 %switch, label %bb.cq, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i

.lr.ph387.i:                                      ; preds = %bb.cn, %.thread.i
  %indvars.iv.i133 = phi i64 [ %indvars.iv.next.i134, %.thread.i ], [ 0, %bb.cn ] ; 3 uses
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %indvars.iv.i133 ; 2 uses
  %18 = load float, ptr %17, align 4, !tbaa !60   ; 4 uses
  %i.zc = call float @llvm.fabs.f32(float %18)
  %indvars.iv.next.i134 = add i64 %indvars.iv.i133, 1 ; 2 uses
  %i.zd = and i64 %indvars.iv.next.i134, 4294967295 ; 2 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.zd ; 2 uses
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !60 ; 3 uses
  %i.zg = call float @llvm.fabs.f32(float %i.zf)
  %i.zh = fcmp ogt float %i.zc, %i.zg
  %.0118.i = select i1 %i.zh, float 8.000000e-01, float 2.000000e-01
  %i.zi = fsub float %i.zf, %18
  %i.zj = call float @llvm.fmuladd.f32(float %.0118.i, float %i.zi, float %18) ; 2 uses
  %i.zk = fcmp une float %i.zj, 0.000000e+00
  br i1 %i.zk, label %bb.co, label %.thread.i

bb.co:                                            ; preds = %.lr.ph387.i
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %indvars.iv.i133
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !60
  %i.zn = fmul float %i.zm, 1.500000e+00
  %i.zo = fdiv float %i.zn, %i.zj                 ; 3 uses
  %i.zp = fcmp olt float %i.zo, 1.000000e+00
  br i1 %i.zp, label %bb.cp, label %.thread.i

bb.cp:                                            ; preds = %bb.co
  %i.zq = fmul float %18, %i.zo
  store float %i.zq, ptr %17, align 4, !tbaa !60
  %i.zr = fmul float %i.zf, %i.zo
  store float %i.zr, ptr %i.ze, align 4, !tbaa !60
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cp, %bb.co, %.lr.ph387.i
  %i.zs = icmp ugt i64 %i.nd, %i.zd
  br i1 %i.zs, label %.lr.ph387.i, label %._crit_edge388.i, !llvm.loop !165

bb.cq:                                            ; preds = %._crit_edge388.i
  %i.zt = getelementptr [4 x i8], ptr %i.zb, i64 %i.nc
  %i.zu = getelementptr i8, ptr %i.zt, i64 -8
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !60
  store float %i.zv, ptr %i.zb, align 4, !tbaa !60
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !60
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.nd
  store float %i.zx, ptr %i.zy, align 4, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i:     ; preds = %bb.cq, %._crit_edge388.i, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i166.i, %bb.bh
  %.not.i.i.i221.i = icmp eq ptr %.sroa.0.0.lcssa.i, null
  br i1 %.not.i.i.i221.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i
  %i.zz = ptrtoint ptr %.sroa.18.0.lcssa.i to i64
  %i.aaa = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa.i, i64 noundef %i.aab) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.cr, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i
  %.not.i.i.i222.i = icmp eq ptr %.sroa.0259.0.lcssa.i, null
  br i1 %.not.i.i.i222.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.aac = ptrtoint ptr %.sroa.30.0.lcssa.i to i64
  %i.aad = ptrtoint ptr %.sroa.0259.0.lcssa.i to i64
  %i.aae = sub i64 %i.aac, %i.aad
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.0.lcssa.i, i64 noundef %i.aae) #24
  br label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155

bb.ct:                                            ; preds = %bb.cc, %.loopexit.split-lp.i, %.loopexit.i136, %bb.bw, %bb.bl, %.loopexit.split-lp308.i, %.loopexit307.i, %.loopexit.split-lp303.i, %.loopexit302.i
  %.sroa.0.0336.i = phi ptr [ %.sroa.0.0.lcssa.i, %.loopexit.i136 ], [ %.sroa.0.0353.i, %.loopexit.split-lp303.i ], [ %.sroa.0.0.lcssa.i, %bb.bl ], [ %.sroa.0.0.lcssa.i, %bb.bw ], [ %.sroa.0.0353.i, %.loopexit.split-lp308.i ], [ %.sroa.0.0.lcssa.i, %bb.cc ], [ %.sroa.0.0353.i, %.loopexit302.i ], [ %.sroa.0.0353.i, %.loopexit307.i ], [ %.sroa.0.0.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.18.0328.i = phi ptr [ %.sroa.18.0.lcssa.i, %.loopexit.i136 ], [ %.sroa.18.0355.i, %.loopexit.split-lp303.i ], [ %.sroa.18.0.lcssa.i, %bb.bl ], [ %.sroa.18.0.lcssa.i, %bb.bw ], [ %.sroa.18.0355.i, %.loopexit.split-lp308.i ], [ %.sroa.18.0.lcssa.i, %bb.cc ], [ %.sroa.18.0355.i, %.loopexit302.i ], [ %.sroa.18.0355.i, %.loopexit307.i ], [ %.sroa.18.0.lcssa.i, %.loopexit.split-lp.i ]
  %.sroa.30.1.i = phi ptr [ %.sroa.30.0.lcssa.i, %.loopexit.i136 ], [ %.sroa.30.0352.i, %.loopexit.split-lp303.i ], [ %.sroa.30.0.lcssa.i, %bb.bl ], [ %.sroa.30.0.lcssa.i, %bb.bw ], [ %.sroa.30.2.i, %.loopexit.split-lp308.i ], [ %.sroa.30.0.lcssa.i, %bb.cc ], [ %.sroa.30.0352.i, %.loopexit302.i ], [ %.sroa.30.2.i, %.loopexit307.i ], [ %.sroa.30.0.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0259.1.i = phi ptr [ %.sroa.0259.0.lcssa.i, %.loopexit.i136 ], [ %.sroa.0259.0356.i, %.loopexit.split-lp303.i ], [ %.sroa.0259.0.lcssa.i, %bb.bl ], [ %.sroa.0259.0.lcssa.i, %bb.bw ], [ %.sroa.0259.2.i, %.loopexit.split-lp308.i ], [ %.sroa.0259.0.lcssa.i, %bb.cc ], [ %.sroa.0259.0356.i, %.loopexit302.i ], [ %.sroa.0259.2.i, %.loopexit307.i ], [ %.sroa.0259.0.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn143.pn.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i136 ], [ %lpad.loopexit.split-lp305.i, %.loopexit.split-lp303.i ], [ %i.qq, %bb.bl ], [ %i.so, %bb.bw ], [ %lpad.loopexit.split-lp310.i, %.loopexit.split-lp308.i ], [ %i.ul, %bb.cc ], [ %lpad.loopexit304.i, %.loopexit302.i ], [ %lpad.loopexit309.i, %.loopexit307.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i224.i = icmp eq ptr %.sroa.0.0336.i, null
  br i1 %.not.i.i.i224.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit225.i, label %.thread285.i

.thread285.i:                                     ; preds = %bb.ct, %.thread455.i, %.thread285.loopexit.split-lp.i, %.thread285.loopexit.i
  %.sroa.0.0339.i = phi ptr [ %.sroa.0.0336.i, %bb.ct ], [ %.sroa.0.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.0.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.0.0.lcssa.i, %.thread455.i ] ; 2 uses
  %.sroa.18.0327.i = phi ptr [ %.sroa.18.0328.i, %bb.ct ], [ %.sroa.18.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.18.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.18.0.lcssa.i, %.thread455.i ]
  %.pn143.pn294.i = phi { ptr, i32 } [ %.pn143.pn.i, %bb.ct ], [ %lpad.loopexit.split-lp299.i, %.thread285.loopexit.split-lp.i ], [ %lpad.loopexit298.i, %.thread285.loopexit.i ], [ %i.za, %.thread455.i ]
  %.sroa.0259.1292.i = phi ptr [ %.sroa.0259.1.i, %bb.ct ], [ %.sroa.0259.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.0259.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.0259.0.lcssa.i, %.thread455.i ]
  %.sroa.30.1290.i = phi ptr [ %.sroa.30.1.i, %bb.ct ], [ %.sroa.30.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.30.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.30.0.lcssa.i, %.thread455.i ]
  %i.aaf = ptrtoint ptr %.sroa.18.0327.i to i64
  %i.aag = ptrtoint ptr %.sroa.0.0339.i to i64
  %i.aah = sub i64 %i.aaf, %i.aag
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0339.i, i64 noundef %i.aah) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit225.i

_ZNSt6vectorIfSaIfEED2Ev.exit225.i:               ; preds = %.thread285.i, %bb.ct
  %.pn143.pn295.i = phi { ptr, i32 } [ %.pn143.pn.i, %bb.ct ], [ %.pn143.pn294.i, %.thread285.i ] ; 2 uses
  %.sroa.0259.1293.i = phi ptr [ %.sroa.0259.1.i, %bb.ct ], [ %.sroa.0259.1292.i, %.thread285.i ] ; 3 uses
  %.sroa.30.1291.i = phi ptr [ %.sroa.30.1.i, %bb.ct ], [ %.sroa.30.1290.i, %.thread285.i ]
  %.not.i.i.i226.i = icmp eq ptr %.sroa.0259.1293.i, null
  br i1 %.not.i.i.i226.i, label %.body, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit225.i
  %i.aai = ptrtoint ptr %.sroa.30.1291.i to i64
  %i.aaj = ptrtoint ptr %.sroa.0259.1293.i to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.1293.i, i64 noundef %i.aak) #24
  br label %.body

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155: ; preds = %bb.cs, %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.ag, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.aal = load ptr, ptr %5, align 8, !tbaa !51   ; 2 uses
  %i.aam = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #23
          to label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 unwind label %.loopexit.split-lp ; 4 uses

_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142:     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155
  %i.aan = load float, ptr %i.aal, align 4, !tbaa !60
  store float %i.aan, ptr %i.aam, align 4, !tbaa !60
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 4 ; 4 uses
  %i.aap = load ptr, ptr %i.gt, align 8, !tbaa !55
  %i.aaq = ptrtoint ptr %i.aap to i64
  %i.aar = ptrtoint ptr %i.aal to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = ashr exact i64 %i.aas, 3
  %i.aau = add nsw i64 %i.aat, -1                 ; 2 uses
  %.not.i143 = icmp eq i64 %i.aau, 0
  br i1 %.not.i143, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitHueSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_.exit, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i
  %.sroa.0261.3 = phi ptr [ %.sroa.0261.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ %i.aam, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 25 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ %i.aao, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 8 uses
  %.sroa.25.3 = phi ptr [ %.sroa.25.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ %i.aao, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 21 uses
  %.sroa.0244.2 = phi ptr [ %.sroa.0244.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 21 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 12 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 11 uses
  %.sroa.0229.2 = phi ptr [ %.sroa.0229.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 17 uses
  %.sroa.13235.0 = phi ptr [ %.sroa.13235.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 12 uses
  %.sroa.23239.2 = phi ptr [ %.sroa.23239.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 7 uses
  %.sroa.0216.2 = phi ptr [ %.sroa.0216.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 13 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 11 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 4 uses
  %i.aav = phi i64 [ %i.aaz, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ 0, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 6 uses
  %.0167.i = phi i32 [ %i.aay, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ 0, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ]
  %i.aaw = load ptr, ptr %5, align 8, !tbaa !51   ; 2 uses
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aaw, i64 %i.aav ; 3 uses
  %i.aay = add i32 %.0167.i, 1                    ; 2 uses
  %i.aaz = zext i32 %i.aay to i64                 ; 6 uses
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aaw, i64 %i.aaz ; 5 uses
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !99 ; 2 uses
  %i.abc = load float, ptr %i.aax, align 4, !tbaa !99 ; 4 uses
  %i.abd = fsub float %i.abb, %i.abc              ; 6 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !102
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aax, i64 4 ; 4 uses
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !102 ; 3 uses
  %i.abi = fsub float %i.abf, %i.abh
  %i.abj = fdiv float %i.abi, %i.abd              ; 5 uses
  %i.abk = load ptr, ptr %6, align 8, !tbaa !56   ; 6 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.aav
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !60 ; 5 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %i.aaz
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !60 ; 4 uses
  %i.abp = fadd float %i.abm, %i.abo
  %i.abq = call float @llvm.fmuladd.f32(float %i.abj, float -2.000000e+00, float %i.abp)
  %i.abr = call float @llvm.fabs.f32(float %i.abq)
  %i.abs = fcmp ugt float %i.abr, f0x3727C5AC
  br i1 %i.abs, label %bb.dk, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i144
  %.not.i71.i = icmp eq ptr %.sroa.13.0, %.sroa.23.2
  br i1 %.not.i71.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store float %i.abh, ptr %.sroa.13.0, align 4, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i

bb.cx:                                            ; preds = %bb.cv
  %i.abt = ptrtoint ptr %.sroa.13.0 to i64
  %i.abu = ptrtoint ptr %.sroa.0216.2 to i64
  %i.abv = sub i64 %i.abt, %i.abu                 ; 6 uses
  %i.abw = icmp eq i64 %i.abv, 9223372036854775804
  br i1 %i.abw, label %.invoke1268, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i72.i

.invoke1268:                                      ; preds = %bb.dr, %bb.cx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.cont1269 unwind label %.loopexit.split-lp

.cont1269:                                        ; preds = %.invoke1268
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i72.i: ; preds = %bb.cx
  %i.abx = ashr exact i64 %i.abv, 2               ; 3 uses
  %.sroa.speculated.i.i.i73.i = call i64 @llvm.umax.i64(i64 %i.abx, i64 1)
  %i.aby = add nsw i64 %.sroa.speculated.i.i.i73.i, %i.abx ; 2 uses
  %i.abz = icmp ult i64 %i.aby, %i.abx
  %i.aca = call i64 @llvm.umin.i64(i64 %i.aby, i64 2305843009213693951)
  %i.acb = select i1 %i.abz, i64 2305843009213693951, i64 %i.aca ; 3 uses
  %.not.i.i.i74.i = icmp ne i64 %i.acb, 0
  call void @llvm.assume(i1 %.not.i.i.i74.i)
  %i.acc = shl nuw nsw i64 %i.acb, 2
  %i.acd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acc) #23
          to label %.noexc165.a unwind label %.loopexit ; 4 uses

.noexc165.a:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i72.i
  %i.ace = getelementptr inbounds i8, ptr %i.acd, i64 %i.abv ; 2 uses
  %i.acf = load float, ptr %i.abg, align 4, !tbaa !60
  store float %i.acf, ptr %i.ace, align 4, !tbaa !60
  %i.acg = icmp sgt i64 %i.abv, 0
  br i1 %i.acg, label %bb.cy, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i

bb.cy:                                            ; preds = %.noexc165.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acd, ptr align 4 %.sroa.0216.2, i64 %i.abv, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i: ; preds = %bb.cy, %.noexc165.a
  %.not.i17.i.i76.i = icmp eq ptr %.sroa.0216.2, null
  br i1 %.not.i17.i.i76.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.2, i64 noundef %i.abv) #24
  %.pre168.i.pre = load ptr, ptr %6, align 8, !tbaa !56
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i: ; preds = %bb.cz, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i
  %.pre168.i = phi ptr [ %.pre168.i.pre, %bb.cz ], [ %i.abk, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i ]
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %i.acb
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i, %bb.cw
  %.sroa.0216.3 = phi ptr [ %i.acd, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %.sroa.0216.2, %bb.cw ] ; 6 uses
  %.pn310.a = phi ptr [ %i.ace, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %.sroa.13.0, %bb.cw ]
  %.sroa.23.3 = phi ptr [ %i.ach, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %.sroa.23.2, %bb.cw ] ; 6 uses
  %i.aci = phi ptr [ %.pre168.i, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %i.abk, %bb.cw ] ; 3 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn310.a, i64 4 ; 2 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.aav ; 2 uses
  %.not.i79.i = icmp eq ptr %.sroa.13235.0, %.sroa.23239.2
  br i1 %.not.i79.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i
end_hunk_1
