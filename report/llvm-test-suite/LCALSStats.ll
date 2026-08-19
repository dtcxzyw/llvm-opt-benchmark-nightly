inline.NumInlined: 1543
inline.NumDeleted: 476
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb:bb.a
.lr.ph.i.i.i.i.i.i.i.i.i153.prol:                 ; preds = %.noexc158, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol
  %.07.i.i.i.i.i.i.i.i.i154.prol = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol ], [ %i.es, %.noexc158 ] ; 2 uses
  %prol.iter371.a = phi i64 [ %prol.iter371.next.a, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol ], [ 0, %.noexc158 ]
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i154.prol, align 16, !tbaa !67
  %i.ex = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154.prol, i64 16 ; 2 uses
  %prol.iter371.next.a = add i64 %prol.iter371.a, 1 ; 2 uses
  %prol.iter371.cmp.not.a = icmp eq i64 %prol.iter371.next.a, %xtraiter369.a
  br i1 %prol.iter371.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i153.prol, !llvm.loop !164

.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i153.prol, %.noexc158
  %.07.i.i.i.i.i.i.i.i.i154.unr = phi ptr [ %i.es, %.noexc158 ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol ]
  %i.ey = icmp ult i64 %i.eu, 112
  br i1 %i.ey, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159, label %.lr.ph.i.i.i.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i.i.i.i153:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i153
  %.07.i.i.i.i.i.i.i.i.i154 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i153 ], [ %.07.i.i.i.i.i.i.i.i.i154.unr, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit ] ; 9 uses
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i154, align 16, !tbaa !67
  %i.ez = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 16
  store x86_fp80 0.000000e+00, ptr %i.ez, align 16, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 32
  store x86_fp80 0.000000e+00, ptr %i.fa, align 16, !tbaa !67
  %i.fb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 48
  store x86_fp80 0.000000e+00, ptr %i.fb, align 16, !tbaa !67
  %i.fc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 64
  store x86_fp80 0.000000e+00, ptr %i.fc, align 16, !tbaa !67
  %i.fd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 80
  store x86_fp80 0.000000e+00, ptr %i.fd, align 16, !tbaa !67
  %i.fe = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 96
  store x86_fp80 0.000000e+00, ptr %i.fe, align 16, !tbaa !67
  %i.ff = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 112
  store x86_fp80 0.000000e+00, ptr %i.ff, align 16, !tbaa !67
  %i.fg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i155.7 = icmp eq ptr %i.fg, %i.et
  br i1 %.not.i.i.i.i.i.i.i.i.i155.7, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159, label %.lr.ph.i.i.i.i.i.i.i.i.i153, !llvm.loop !163

_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i153, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit
  %.pre295 = load i32, ptr %i.du, align 16, !tbaa !121 ; 2 uses
  %.not.i.i.i.i160 = icmp eq i32 %.pre295, 0
  br i1 %.not.i.i.i.i160, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159
  %i.fh = zext i32 %.pre295 to i64
  %i.fi = shl nuw nsw i64 %i.fh, 4                ; 3 uses
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #20
          to label %.noexc166 unwind label %bb.p  ; 7 uses

.noexc166:                                        ; preds = %bb.l
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi
  %i.fl = add nsw i64 %i.fi, -16                  ; 2 uses
  %i.fm = lshr exact i64 %i.fl, 4
  %i.fn = add nuw nsw i64 %i.fm, 1
  %xtraiter372 = and i64 %i.fn, 7                 ; 2 uses
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod373.not, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol

.lr.ph.i.i.i.i.i.i.i.i.i161.prol:                 ; preds = %.noexc166, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol
  %.07.i.i.i.i.i.i.i.i.i162.prol = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol ], [ %i.fj, %.noexc166 ] ; 2 uses
  %prol.iter374 = phi i64 [ %prol.iter374.next, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol ], [ 0, %.noexc166 ]
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i162.prol, align 16, !tbaa !67
  %i.fo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162.prol, i64 16 ; 2 uses
  %prol.iter374.next = add i64 %prol.iter374, 1   ; 2 uses
  %prol.iter374.cmp.not = icmp eq i64 %prol.iter374.next, %xtraiter372
  br i1 %prol.iter374.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol, !llvm.loop !165

.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161.prol, %.noexc166
  %.07.i.i.i.i.i.i.i.i.i162.unr = phi ptr [ %i.fj, %.noexc166 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol ]
  %i.fp = icmp ult i64 %i.fl, 112
  br i1 %i.fp, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167, label %.lr.ph.i.i.i.i.i.i.i.i.i161

.lr.ph.i.i.i.i.i.i.i.i.i161:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i161
  %.07.i.i.i.i.i.i.i.i.i162 = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i.i.i.i161 ], [ %.07.i.i.i.i.i.i.i.i.i162.unr, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit ] ; 9 uses
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i162, align 16, !tbaa !67
  %i.fq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 16
  store x86_fp80 0.000000e+00, ptr %i.fq, align 16, !tbaa !67
  %i.fr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 32
  store x86_fp80 0.000000e+00, ptr %i.fr, align 16, !tbaa !67
  %i.fs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 48
  store x86_fp80 0.000000e+00, ptr %i.fs, align 16, !tbaa !67
  %i.ft = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 64
  store x86_fp80 0.000000e+00, ptr %i.ft, align 16, !tbaa !67
  %i.fu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 80
  store x86_fp80 0.000000e+00, ptr %i.fu, align 16, !tbaa !67
  %i.fv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 96
  store x86_fp80 0.000000e+00, ptr %i.fv, align 16, !tbaa !67
  %i.fw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 112
  store x86_fp80 0.000000e+00, ptr %i.fw, align 16, !tbaa !67
  %i.fx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i163.7 = icmp eq ptr %i.fx, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i.i163.7, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167, label %.lr.ph.i.i.i.i.i.i.i.i.i161, !llvm.loop !163

_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit
  %.pre296 = load i32, ptr %i.du, align 16, !tbaa !121 ; 4 uses
  %.not.i.i.i.i168 = icmp eq i32 %.pre296, 0
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167
  %i.fy = zext i32 %.pre296 to i64
  %i.fz = shl nuw nsw i64 %i.fy, 4                ; 3 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #20
          to label %.noexc174 unwind label %bb.q  ; 5 uses

.noexc174:                                        ; preds = %bb.m
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fz
  %i.gc = add nsw i64 %i.fz, -16                  ; 2 uses
  %i.gd = lshr exact i64 %i.gc, 4
  %i.ge = add nuw nsw i64 %i.gd, 1
  %xtraiter375 = and i64 %i.ge, 7                 ; 2 uses
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol

.lr.ph.i.i.i.i.i.i.i.i.i169.prol:                 ; preds = %.noexc174, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol
  %.07.i.i.i.i.i.i.i.i.i170.prol = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol ], [ %i.ga, %.noexc174 ] ; 2 uses
  %prol.iter377 = phi i64 [ %prol.iter377.next, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol ], [ 0, %.noexc174 ]
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i170.prol, align 16, !tbaa !67
  %i.gf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170.prol, i64 16 ; 2 uses
  %prol.iter377.next = add i64 %prol.iter377, 1   ; 2 uses
  %prol.iter377.cmp.not = icmp eq i64 %prol.iter377.next, %xtraiter375
  br i1 %prol.iter377.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol, !llvm.loop !166

.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i169.prol, %.noexc174
  %.07.i.i.i.i.i.i.i.i.i170.unr = phi ptr [ %i.ga, %.noexc174 ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol ]
  %i.gg = icmp ult i64 %i.gc, 112
  br i1 %i.gg, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %.lr.ph.i.i.i.i.i.i.i.i.i169

.lr.ph.i.i.i.i.i.i.i.i.i169:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i169
  %.07.i.i.i.i.i.i.i.i.i170 = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %.07.i.i.i.i.i.i.i.i.i170.unr, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 9 uses
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i170, align 16, !tbaa !67
  %i.gh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170, i64 16
  store x86_fp80 0.000000e+00, ptr %i.gh, align 16, !tbaa !67
  %i.gi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170, i64 32
  store x86_fp80 0.000000e+00, ptr %i.gi, align 16, !tbaa !67
  %i.gj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170, i64 48
  store x86_fp80 0.000000e+00, ptr %i.gj, align 16, !tbaa !67
  %i.gk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170, i64 64
  store x86_fp80 0.000000e+00, ptr %i.gk, align 16, !tbaa !67
  %i.gl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170, i64 80
  store x86_fp80 0.000000e+00, ptr %i.gl, align 16, !tbaa !67
  %i.gm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170, i64 96
  store x86_fp80 0.000000e+00, ptr %i.gm, align 16, !tbaa !67
  %i.gn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170, i64 112
  store x86_fp80 0.000000e+00, ptr %i.gn, align 16, !tbaa !67
  %i.go = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i171.7 = icmp eq ptr %i.go, %i.gb
  br i1 %.not.i.i.i.i.i.i.i.i.i171.7, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %.lr.ph.i.i.i.i.i.i.i.i.i169, !llvm.loop !163

_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i169, %bb.i, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167
  %.sroa.0197.0346 = phi ptr [ %i.fj, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  %i.gp = phi i32 [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ 0, %bb.i ], [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %.pre296, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %.pre296, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ]
  %.sroa.0214.0326332345 = phi ptr [ %i.eb, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ %i.eb, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ %i.eb, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  %.sroa.0221.0319325334344 = phi ptr [ %i.dy, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ %i.dy, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ %i.dy, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ %i.dy, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  %.sroa.0205.0336343 = phi ptr [ %i.es, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ %i.es, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  %.sroa.0191.0 = phi ptr [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.ga, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.ga, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  br i1 %.not267, label %.preheader, label %.lr.ph263

.preheader.loopexit:                              ; preds = %.loopexit
  %.pre297 = load i32, ptr %i.du, align 16, !tbaa !121
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175
  %i.gq = phi i32 [ %.pre297, %.preheader.loopexit ], [ %i.gp, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175 ]
  %.not273 = icmp eq i32 %i.gq, 0
  br i1 %.not273, label %._crit_edge266, label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dt, i64 456
  %i.gs = zext i32 %0 to i64                      ; 4 uses
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !141
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.gs
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !61
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dt, i64 480
  %i.gx = load ptr, ptr %i.gw, align 16, !tbaa !64
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %i.gx, i64 %i.gs
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !66
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dt, i64 168
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dt, i64 504
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dt, i64 528
  br label %bb.z

bb.n:                                             ; preds = %bb.j
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit190

bb.o:                                             ; preds = %bb.k
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit186

bb.p:                                             ; preds = %bb.l
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit

bb.q:                                             ; preds = %bb.m
  %i.hg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.fj) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit

.lr.ph263:                                        ; preds = %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, %.loopexit
  %indvars.iv286 = phi i64 [ %6, %.loopexit ], [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175 ]
  %.0122262 = phi i32 [ %5, %.loopexit ], [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175 ]
  %i.hh = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %indvars.iv286 ; 7 uses
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !36, !range !58, !noundef !59
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %.preheader232, label %.loopexit

.preheader232:                                    ; preds = %.lr.ph263
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 208
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 216
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !60 ; 2 uses
  %i.hn = load ptr, ptr %i.hk, align 8, !tbaa !61 ; 3 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 2
  %.not272 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not272, label %.loopexit, label %.lr.ph261

.lr.ph261:                                        ; preds = %.preheader232
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !62
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hh, i64 232
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph261, %bb.t
  %indvars.iv283.a = phi i64 [ 0, %.lr.ph261 ], [ %4, %bb.t ] ; 9 uses
  %.0121260 = phi i32 [ 0, %.lr.ph261 ], [ %3, %bb.t ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv283.a
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !63
  %.not = icmp eq i64 %i.hy, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0221.0319325334344, i64 %indvars.iv283.a ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !4
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !4
  %i.ic = load double, ptr %i.hu, align 8, !tbaa !167
  %i.id = fpext double %i.ic to x86_fp80          ; 3 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0214.0326332345, i64 %indvars.iv283.a ; 2 uses
  %i.if = load x86_fp80, ptr %i.ie, align 16, !tbaa !67
  %i.ig = fadd x86_fp80 %i.if, %i.id
  store x86_fp80 %i.ig, ptr %i.ie, align 16, !tbaa !67
  %i.ih = load ptr, ptr %i.hv, align 8, !tbaa !66
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %indvars.iv283.a ; 3 uses
  %i.ij = load x86_fp80, ptr %i.ii, align 16, !tbaa !67
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0205.0336343, i64 %indvars.iv283.a ; 2 uses
  %i.il = load x86_fp80, ptr %i.ik, align 16, !tbaa !67
  %i.im = fadd x86_fp80 %i.ij, %i.il
  store x86_fp80 %i.im, ptr %i.ik, align 16, !tbaa !67
  %i.in = load x86_fp80, ptr %i.ii, align 16, !tbaa !67
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0197.0346, i64 %indvars.iv283.a ; 2 uses
  %i.ip = load x86_fp80, ptr %i.io, align 16, !tbaa !67
  %i.iq = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.id, x86_fp80 %i.in, x86_fp80 %i.ip)
  store x86_fp80 %i.iq, ptr %i.io, align 16, !tbaa !67
  %i.ir = load x86_fp80, ptr %i.ii, align 16, !tbaa !67
  %i.is = fmul x86_fp80 %i.ir, %i.id
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv283.a
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iv = load ptr, ptr %i.hw, align 8, !tbaa !61
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv283.a
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  %i.iy = mul nsw i32 %i.ix, %i.iu
  %i.iz = sitofp i32 %i.iy to x86_fp80
  %i.ja = fdiv x86_fp80 %i.is, %i.iz
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0191.0, i64 %indvars.iv283.a ; 2 uses
  %i.jc = load x86_fp80, ptr %i.jb, align 16, !tbaa !67
  %i.jd = fadd x86_fp80 %i.jc, %i.ja
  store x86_fp80 %i.jd, ptr %i.jb, align 16, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %3 = add i32 %.0121260, 1                       ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.je = icmp ugt i64 %i.hr, %4
  br i1 %i.je, label %bb.r, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.t, %.preheader232, %.lr.ph263
  %5 = add i32 %.0122262, 1                       ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.jf = icmp ugt i64 %i.g, %6
  br i1 %i.jf, label %.lr.ph263, label %.preheader.loopexit, !llvm.loop !169

._crit_edge266:                                   ; preds = %bb.ab, %.preheader
  %.not.i.i.i176 = icmp eq ptr %.sroa.0191.0, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIeSaIeEED2Ev.exit177, label %bb.u

bb.u:                                             ; preds = %._crit_edge266
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0191.0) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit177

_ZNSt6vectorIeSaIeEED2Ev.exit177:                 ; preds = %._crit_edge266, %bb.u
  %.not.i.i.i178 = icmp eq ptr %.sroa.0197.0346, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIeSaIeEED2Ev.exit179, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit177
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0197.0346) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit179

_ZNSt6vectorIeSaIeEED2Ev.exit179:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit177, %bb.v
  %.not.i.i.i180 = icmp eq ptr %.sroa.0205.0336343, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIeSaIeEED2Ev.exit181, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit179
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0205.0336343) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit181

_ZNSt6vectorIeSaIeEED2Ev.exit181:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit179, %bb.w
  %.not.i.i.i182 = icmp eq ptr %.sroa.0214.0326332345, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIeSaIeEED2Ev.exit183, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit181
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0214.0326332345) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit183

_ZNSt6vectorIeSaIeEED2Ev.exit183:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit181, %bb.x
  %.not.i.i.i184 = icmp eq ptr %.sroa.0221.0319325334344, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit183
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0221.0319325334344) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.z:                                             ; preds = %.lr.ph265, %bb.ab
  %indvars.iv290 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next291, %bb.ab ] ; 11 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0221.0319325334344, i64 %indvars.iv290
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4  ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv290
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !4
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0205.0336343, i64 %indvars.iv290
  %i.jk = load x86_fp80, ptr %i.jj, align 16, !tbaa !67
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %indvars.iv290
  store x86_fp80 %i.jk, ptr %i.jl, align 16, !tbaa !67
  %i.jm = icmp sgt i32 %i.jh, 0
  br i1 %i.jm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jn = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %indvars.iv290
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !66
  %i.jq = load x86_fp80, ptr %i.jp, align 16, !tbaa !67
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0214.0326332345, i64 %indvars.iv290
  %i.js = load x86_fp80, ptr %i.jr, align 16, !tbaa !67
  %i.jt = fmul x86_fp80 %i.jq, %i.js
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0197.0346, i64 %indvars.iv290
  %i.jv = load x86_fp80, ptr %i.ju, align 16, !tbaa !67
  %i.jw = fdiv x86_fp80 %i.jt, %i.jv
  %i.jx = load ptr, ptr %i.hb, align 8, !tbaa !64
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %i.gs
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !66
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jz, i64 %indvars.iv290
  store x86_fp80 %i.jw, ptr %i.ka, align 16, !tbaa !67
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0191.0, i64 %indvars.iv290
  %i.kc = load x86_fp80, ptr %i.kb, align 16, !tbaa !67
  %i.kd = fdiv x86_fp80 1.000000e+00, %i.kc
  %i.ke = load ptr, ptr %i.hc, align 16, !tbaa !64
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.ke, i64 %i.gs
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !66
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %indvars.iv290
  store x86_fp80 %i.kd, ptr %i.kh, align 16, !tbaa !67
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.ki = load i32, ptr %i.du, align 16, !tbaa !121
  %i.kj = zext i32 %i.ki to i64
  %i.kk = icmp samesign ult i64 %indvars.iv.next291, %i.kj
  br i1 %i.kk, label %bb.z, label %._crit_edge266, !llvm.loop !170

_ZNSt6vectorIeSaIeEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  %.pn = phi { ptr, i32 } [ %i.hf, %bb.p ], [ %i.hg, %bb.q ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.es) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit186

_ZNSt6vectorIeSaIeEED2Ev.exit186:                 ; preds = %bb.o, %_ZNSt6vectorIeSaIeEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %i.he, %bb.o ], [ %.pn, %_ZNSt6vectorIeSaIeEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.eb) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit190

_ZNSt6vectorIiSaIiEED2Ev.exit190:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit186, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hd, %bb.n ], [ %.pn.pn, %_ZNSt6vectorIeSaIeEED2Ev.exit186 ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.dy) #22
  resume { ptr, i32 } %.pn.pn.pn

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.y, %_ZNSt6vectorIeSaIeEED2Ev.exit183, %._crit_edge257
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #9

; Function Attrs: mustprogress uwtable
define dso_local void @_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::basic_ofstream", align 8 ; 26 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::basic_ofstream", align 8 ; 26 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::basic_ofstream", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = load ptr, ptr %0, align 8, !tbaa !145
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.cv, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call fastcc void @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %10)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.f = load ptr, ptr %0, align 8, !tbaa !145
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5                   ; 4 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %.not441 = icmp eq i32 %i.k, 0                  ; 2 uses
  br i1 %.not441, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 600 ; 5 uses
  %wide.trip.count = and i64 %i.j, 4294967295
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !78   ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.cs, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !117  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i, label %bb.f, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !145
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !78   ; 4 uses
  %i.w = load ptr, ptr %i.t, align 8              ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !78   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.y) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !147
  %i.ac = call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.d
  %i.ad = sub i64 %i.y, %i.v
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.ae, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ae, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
end_hunk_0
