inline.NumInlined: 1609
inline.NumDeleted: 800
begin_hunk_0_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEES7_lET_SC_SC_SC_T1_SD_T0_SD_:bb.a
  br i1 %lcmp.mod88.not, label %.lr.ph.i.i.i.i.i44.prol.loopexit, label %.lr.ph.i.i.i.i.i44.prol

.lr.ph.i.i.i.i.i44.prol:                          ; preds = %.lr.ph.i.i.i.i.i44.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ca = add nsw i64 %i.bt, -1
  br label %.lr.ph.i.i.i.i.i44.prol.loopexit

.lr.ph.i.i.i.i.i44.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i44.prol, %.lr.ph.i.i.i.i.i44.preheader
  %.012.i.i.i.i.i45.unr = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i44.prol ]
  %.0811.i.i.i.i.i46.unr = phi ptr [ %5, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i44.prol ]
  %.0910.i.i.i.i.i47.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.by, %.lr.ph.i.i.i.i.i44.prol ]
  %.lcssa80.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i44.prol ]
  %i.cb = icmp eq i64 %i.bs, 32
  br i1 %i.cb, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit48, label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %.lr.ph.i.i.i.i.i44.prol.loopexit, %.lr.ph.i.i.i.i.i44
  %.012.i.i.i.i.i45 = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i44 ], [ %.012.i.i.i.i.i45.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i46 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i44 ], [ %.0811.i.i.i.i.i46.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i47 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i44 ], [ %.0910.i.i.i.i.i47.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i46, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i47, i64 16, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 64 ; 2 uses
  %i.ck = add nsw i64 %.012.i.i.i.i.i45, -2
  %i.cl = icmp sgt i64 %.012.i.i.i.i.i45, 2
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i44, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit48, !llvm.loop !132

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit48: ; preds = %.lr.ph.i.i.i.i.i44.prol.loopexit, %.lr.ph.i.i.i.i.i44, %bb.f
  %.08.lcssa.i.i.i.i.i43 = phi ptr [ %5, %bb.f ], [ %.lcssa80.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ], [ %i.cj, %.lr.ph.i.i.i.i.i44 ] ; 4 uses
  %i.cm = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.cn = sub i64 %i.cm, %i.bq                    ; 3 uses
  %i.co = ashr exact i64 %i.cn, 5                 ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i50.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i50.preheader:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit48
  %i.cq = and i64 %i.cn, 32
  %lcmp.mod90.not = icmp eq i64 %i.cq, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.i50.prol.loopexit, label %.lr.ph.i.i.i.i.i50.prol

.lr.ph.i.i.i.i.i50.prol:                          ; preds = %.lr.ph.i.i.i.i.i50.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = add nsw i64 %i.co, -1
  br label %.lr.ph.i.i.i.i.i50.prol.loopexit

.lr.ph.i.i.i.i.i50.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i50.prol, %.lr.ph.i.i.i.i.i50.preheader
  %.012.i.i.i.i.i51.unr = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i50.prol ]
  %.0811.i.i.i.i.i52.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i50.prol ]
  %.0910.i.i.i.i.i53.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i50.prol ]
  %i.cw = icmp eq i64 %i.cn, 32
  br i1 %i.cw, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %.lr.ph.i.i.i.i.i50.prol.loopexit, %.lr.ph.i.i.i.i.i50
  %.012.i.i.i.i.i51 = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i50 ], [ %.012.i.i.i.i.i51.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i52 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i50 ], [ %.0811.i.i.i.i.i52.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i53 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i50 ], [ %.0910.i.i.i.i.i53.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i52, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i53, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 64
  %i.df = add nsw i64 %.012.i.i.i.i.i51, -2
  %i.dg = icmp sgt i64 %.012.i.i.i.i.i51, 2
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i50, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, !llvm.loop !132

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i50.prol.loopexit, %.lr.ph.i.i.i.i.i50, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit48
  %i.dh = ptrtoint ptr %.08.lcssa.i.i.i.i.i43 to i64
  %i.di = ptrtoint ptr %5 to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = ashr exact i64 %i.dj, 5                 ; 3 uses
  %i.dl = icmp sgt i64 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %i.dm = and i64 %i.dj, 32
  %lcmp.mod92.not = icmp eq i64 %i.dm, 0
  br i1 %lcmp.mod92.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol

.lr.ph.i.i.i.i.i55.prol:                          ; preds = %.lr.ph.i.i.i.i.i55.preheader
  %i.dn = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i43, i64 -32 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %2, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 16, i1 false)
  %i.dp = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i43, i64 -16
  %i.dq = getelementptr inbounds i8, ptr %2, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false)
  %i.dr = add nsw i64 %i.dk, -1
  br label %.lr.ph.i.i.i.i.i55.prol.loopexit

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.010.i.i.i.i.i56.unr = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.dr, %.lr.ph.i.i.i.i.i55.prol ]
  %.069.i.i.i.i.i57.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.do, %.lr.ph.i.i.i.i.i55.prol ]
  %.078.i.i.i.i.i58.unr = phi ptr [ %.08.lcssa.i.i.i.i.i43, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.i55.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.do, %.lr.ph.i.i.i.i.i55.prol ]
  %i.ds = icmp eq i64 %i.dj, 32
  br i1 %i.ds, label %_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.loopexit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.010.i.i.i.i.i56 = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i55 ], [ %.010.i.i.i.i.i56.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i57 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i55 ], [ %.069.i.i.i.i.i57.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i58 = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i55 ], [ %.078.i.i.i.i.i58.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 4 uses
  %i.dt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -32
  %i.du = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i64 16, i1 false)
  %i.dv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -16
  %i.dw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false)
  %i.dx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -64 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -64 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %i.dx, i64 16, i1 false)
  %i.dz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -48
  %i.ea = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false)
  %i.eb = add nsw i64 %.010.i.i.i.i.i56, -2
  %i.ec = icmp sgt i64 %.010.i.i.i.i.i56, 2
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i55, label %_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.loopexit, !llvm.loop !73

_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i55, %.lr.ph.i.i.i.i.i55.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ], [ %i.dy, %.lr.ph.i.i.i.i.i55 ]
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit: ; preds = %_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.loopexit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.loopexit ], [ %i.cm, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES5_ESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ]
  %i.ed = sub i64 %.pre-phi, %i.cm
  %i.ee = getelementptr inbounds i8, ptr %2, i64 %i.ed
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ef = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EES6_ESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.g, %_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, %_ZSt4moveIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit
  %.sroa.032.0 = phi ptr [ %i.bp, %_ZSt4moveIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ], [ %i.ef, %bb.g ], [ %i.ee, %_ZSt13move_backwardIPSt4pairISt4spanIKhLm18446744073709551615EES3_EN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ], [ %0, %bb.b ], [ %2, %bb.e ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt15__inplace_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEENS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = sdiv exact i64 %i.e, 24                  ; 4 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.c                       ; 3 uses
  %i.i = sdiv exact i64 %i.h, 24                  ; 4 uses
  %i.j = icmp slt i64 %i.i, %i.f
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.f) ; 3 uses
  %i.k = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.k, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_EC2ESH_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.p, %select.unfold.i.i ], [ %.sroa.speculated, %bb.b ] ; 5 uses
  %i.l = mul nuw nsw i64 %.010.i.i, 24            ; 3 uses
  %i.m = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 13 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.n = icmp eq i64 %.010.i.i, 1
  %i.o = add nuw nsw i64 %.010.i.i, 1
  %i.p = lshr i64 %i.o, 1
  br i1 %i.n, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_EC2ESH_l.exit, label %.lr.ph.i.i, !llvm.loop !141

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  store i64 %i.t, ptr %i.r, align 8
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEEvT_SI_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.u = add nsw i64 %i.l, -48                    ; 2 uses
  %i.v = udiv i64 %i.u, 24
  %i.w = and i64 %i.v, 1
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01317.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  store i64 %i.z, ptr %i.x, align 8
  store ptr null, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.013.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.lcssa95.unr = phi i64 [ poison, %.lr.ph.i.i.preheader.i ], [ %i.z, %.lr.ph.i.i.i.prol ]
  %.lcssa90.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.aa, %.lr.ph.i.i.i.prol ]
  %.01321.i.i.i.unr = phi ptr [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ], [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.020.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.preheader.i ], [ %i.aa, %.lr.ph.i.i.i.prol ]
  %i.ab = icmp ult i64 %i.u, 24
  br i1 %i.ab, label %_ZSt29__uninitialized_construct_bufIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEEvT_SI_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01321.i.i.i = phi ptr [ %.013.i.i.i.1, %.lr.ph.i.i.i ], [ %.01321.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.020.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01321.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.i.i, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %i.ac, align 8
  store ptr null, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 24
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01321.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 8
  store ptr null, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 48 ; 2 uses
  %.013.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %.013.i.i.i.1, %i.q
  br i1 %.not.i.i.i.1, label %_ZSt29__uninitialized_construct_bufIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEEvT_SI_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !142

_ZSt29__uninitialized_construct_bufIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEEvT_SI_T0_.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c
  %.in.i = phi i64 [ %i.t, %bb.c ], [ %.lcssa95.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ai, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.lcssa90.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %3 = inttoptr i64 %.in.i to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa.i.i.i, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16
  store ptr null, ptr %4, align 8
  store ptr %3, ptr %i.s, align 8
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_EC2ESH_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_EC2ESH_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEEvT_SI_T0_.exit.i
  %.sroa.10.0 = phi ptr [ null, %bb.b ], [ %i.m, %_ZSt29__uninitialized_construct_bufIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEEvT_SI_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 11 uses
  %.sroa.4.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEEvT_SI_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %i.ak = icmp eq i64 %.sroa.4.0, %.sroa.speculated
  br i1 %i.ak, label %bb.d, label %bb.g, !prof !71

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_EC2ESH_l.exit
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = icmp sgt i64 %i.e, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESD_ET0_T_SJ_SI_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.e
  %i.am = udiv exact i64 %i.e, 24
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.aw, %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i.i ], [ %.sroa.10.0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8
  store ptr null, ptr %i.an, align 8
  %i.aq = load ptr, ptr %i.ao, align 8            ; 3 uses
  store ptr %i.ap, ptr %i.ao, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8v8_crdtp16DomainDispatcherEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8v8_crdtp16DomainDispatcherEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.aq) #20, !inline_history !143
  br label %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i.i

_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8v8_crdtp16DomainDispatcherEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aw = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ax = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESD_ET0_T_SJ_SI_.exit.i, !llvm.loop !144

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESD_ET0_T_SJ_SI_.exit.i: ; preds = %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i.i, %bb.e
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.10.0, %bb.e ], [ %i.av, %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i.i ]
  tail call void @_ZSt21__move_merge_adaptiveIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEESH_NSC_5__ops15_Iter_comp_iterINS5_13FirstLessThanIS9_EEEEEvT_SN_T0_SO_T1_T2_(ptr noundef %.sroa.10.0, ptr noundef %.08.lcssa.i.i.i.i.i.i, ptr %1, ptr %2, ptr %0)
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_T2_.exit

bb.f:                                             ; preds = %bb.d
  %i.ay = icmp sgt i64 %i.h, 0
  br i1 %i.ay, label %.lr.ph.preheader.i.i.i.i.i24.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESD_ET0_T_SJ_SI_.exit32.i

.lr.ph.preheader.i.i.i.i.i24.i:                   ; preds = %bb.f
  %i.az = udiv exact i64 %i.h, 24
  br label %.lr.ph.i.i.i.i.i25.i

.lr.ph.i.i.i.i.i25.i:                             ; preds = %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i31.i, %.lr.ph.preheader.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.bj, %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i31.i ], [ %i.az, %.lr.ph.preheader.i.i.i.i.i24.i ] ; 2 uses
  %.0811.i.i.i.i.i27.i = phi ptr [ %i.bi, %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i31.i ], [ %.sroa.10.0, %.lr.ph.preheader.i.i.i.i.i24.i ] ; 3 uses
  %.0910.i.i.i.i.i28.i = phi ptr [ %i.bh, %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i31.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i24.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i27.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i28.i, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28.i, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27.i, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8
  store ptr null, ptr %i.ba, align 8
  %i.bd = load ptr, ptr %i.bb, align 8            ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8
  %.not.i.i.i.i.i.i.i.i.i.i29.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i29.i, label %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i31.i, label %_ZNKSt14default_deleteIN8v8_crdtp16DomainDispatcherEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i30.i

_ZNKSt14default_deleteIN8v8_crdtp16DomainDispatcherEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i30.i: ; preds = %.lr.ph.i.i.i.i.i25.i
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.bd) #20, !inline_history !143
  br label %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i31.i

_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i31.i: ; preds = %_ZNKSt14default_deleteIN8v8_crdtp16DomainDispatcherEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i30.i, %.lr.ph.i.i.i.i.i25.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28.i, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27.i, i64 24 ; 2 uses
  %i.bj = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.bk = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i25.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESD_ET0_T_SJ_SI_.exit32.i, !llvm.loop !144

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESD_ET0_T_SJ_SI_.exit32.i: ; preds = %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i31.i, %bb.f
  %.08.lcssa.i.i.i.i.i23.i = phi ptr [ %.sroa.10.0, %bb.f ], [ %i.bi, %_ZNSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS5_EEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i31.i ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESD_SH_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_T0_SO_T1_T2_(ptr %0, ptr %1, ptr noundef %.sroa.10.0, ptr noundef %.08.lcssa.i.i.i.i.i23.i, ptr %2)
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_T2_.exit

bb.g:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_EC2ESH_l.exit
  %i.bl = icmp eq ptr %.sroa.10.0, null
  br i1 %i.bl, label %bb.h, label %bb.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %i.f, i64 noundef %i.i)
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_T2_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_SO_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.f, i64 noundef %i.i, ptr noundef nonnull %.sroa.10.0, i64 noundef %.sroa.4.0)
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_T2_.exit

_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_T2_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESD_ET0_T_SJ_SI_.exit32.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESD_ET0_T_SJ_SI_.exit.i, %bb.h, %bb.i
  %.idx.i = mul nuw nsw i64 %.sroa.4.0, 24        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.10.0, i64 %.idx.i
  %.not4.i.i.i = icmp eq i64 %.sroa.4.0, 0
  br i1 %.not4.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_ED2Ev.exit, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_T2_.exit, %_ZSt8_DestroyISt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyISt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEEvPT_.exit.i.i.i ], [ %.sroa.10.0, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_T2_.exit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8v8_crdtp16DomainDispatcherEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8v8_crdtp16DomainDispatcherEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i20
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.bo) #20, !inline_history !145
  br label %_ZSt8_DestroyISt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8v8_crdtp16DomainDispatcherEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i20
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bs, %i.bm
  br i1 %.not.i.i.i21, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_ED2Ev.exit, label %.lr.ph.i.i.i20, !llvm.loop !59

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_ED2Ev.exit: ; preds = %_ZSt8_DestroyISt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS6_EEEEvPT_.exit.i.i.i, %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_T2_.exit
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0, i64 noundef %.idx.i) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterINS7_13FirstLessThanISB_EEEEEvT_SN_SN_T0_SO_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %5 = alloca %"class.std::span", align 8         ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond88 = or i1 %i.a, %i.b
  br i1 %or.cond88, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8593 = phi i64 [ %4, %.lr.ph ], [ %i.ar, %tailrecurse ] ; 4 uses
  %.tr8492 = phi i64 [ %3, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 4 uses
  %.tr8290 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 10 uses
  %.tr89 = phi ptr [ %0, %.lr.ph ], [ %i.ap, %tailrecurse ] ; 10 uses
  %i.d = add nsw i64 %.tr8593, %.tr8492
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.sroa.01.0.copyload.i.i = load ptr, ptr %.tr8290, align 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.tr8290, i64 8
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.tr89, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.f = tail call noundef zeroext i1 @_ZN8v8_crdtp12SpanLessThanESt4spanIKhLm18446744073709551615EES2_(ptr %.sroa.01.0.copyload.i.i, i64 %.sroa.22.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #20
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %.tr89, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.tr89, ptr noundef nonnull align 8 dereferenceable(24) %.tr8290, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.tr8290, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.g = getelementptr inbounds nuw i8, ptr %.tr89, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.tr8290, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.h, align 8
  store ptr %i.j, ptr %i.g, align 8
  store ptr %i.i, ptr %i.h, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %.tr8492, %.tr8593
  %i.l = ptrtoint ptr %.tr8290 to i64             ; 4 uses
  br i1 %i.k, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.m = sdiv i64 %.tr8492, 2                     ; 2 uses
  %i.n = getelementptr inbounds [24 x i8], ptr %.tr89, i64 %i.m ; 3 uses
  %i.o = sub i64 %i.c, %i.l                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEESC_NS0_5__ops14_Iter_comp_valINS7_13FirstLessThanISB_EEEEET_SN_SN_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.q = udiv exact i64 %i.o, 24
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairISt4spanIKhLm18446744073709551615EESt10unique_ptrIN8v8_crdtp16DomainDispatcherESt14default_deleteIS8_EEESt6vectorISC_SaISC_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
end_hunk_0
