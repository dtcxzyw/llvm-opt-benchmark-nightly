inline.NumInlined: 1543
inline.NumDeleted: 476
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 96
  store x86_fp80 0.000000e+00, ptr %i.fe, align 16, !tbaa !67
  %i.ff = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 112
  store x86_fp80 0.000000e+00, ptr %i.ff, align 16, !tbaa !67
  %i.fg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i155.7 = icmp eq ptr %i.fg, %i.et
  br i1 %.not.i.i.i.i.i.i.i.i.i155.7, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159, label %.lr.ph.i.i.i.i.i.i.i.i.i153, !llvm.loop !163

_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i153, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit
  %.pre291 = load i32, ptr %i.du, align 16, !tbaa !121 ; 2 uses
  %.not.i.i.i.i160 = icmp eq i32 %.pre291, 0
  br i1 %.not.i.i.i.i160, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159
  %i.fh = zext i32 %.pre291 to i64
  %i.fi = shl nuw nsw i64 %i.fh, 4                ; 3 uses
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #20
          to label %.noexc166 unwind label %bb.p  ; 7 uses

.noexc166:                                        ; preds = %bb.l
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi
  %i.fl = add nsw i64 %i.fi, -16                  ; 2 uses
  %i.fm = lshr exact i64 %i.fl, 4
  %i.fn = add nuw nsw i64 %i.fm, 1
  %xtraiter369 = and i64 %i.fn, 7                 ; 2 uses
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod370.not, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol

.lr.ph.i.i.i.i.i.i.i.i.i161.prol:                 ; preds = %.noexc166, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol
  %.07.i.i.i.i.i.i.i.i.i162.prol = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol ], [ %i.fj, %.noexc166 ] ; 2 uses
  %prol.iter371 = phi i64 [ %prol.iter371.next, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol ], [ 0, %.noexc166 ]
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i162.prol, align 16, !tbaa !67
  %i.fo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162.prol, i64 16 ; 2 uses
  %prol.iter371.next = add i64 %prol.iter371, 1   ; 2 uses
  %prol.iter371.cmp.not = icmp eq i64 %prol.iter371.next, %xtraiter369
  br i1 %prol.iter371.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol, !llvm.loop !165

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
  %.pre292 = load i32, ptr %i.du, align 16, !tbaa !121 ; 4 uses
  %.not.i.i.i.i168 = icmp eq i32 %.pre292, 0
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167
  %i.fy = zext i32 %.pre292 to i64
  %i.fz = shl nuw nsw i64 %i.fy, 4                ; 3 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #20
          to label %.noexc174 unwind label %bb.q  ; 5 uses

.noexc174:                                        ; preds = %bb.m
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fz
  %i.gc = add nsw i64 %i.fz, -16                  ; 2 uses
  %i.gd = lshr exact i64 %i.gc, 4
  %i.ge = add nuw nsw i64 %i.gd, 1
  %xtraiter372 = and i64 %i.ge, 7                 ; 2 uses
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod373.not, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol

.lr.ph.i.i.i.i.i.i.i.i.i169.prol:                 ; preds = %.noexc174, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol
  %.07.i.i.i.i.i.i.i.i.i170.prol = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol ], [ %i.ga, %.noexc174 ] ; 2 uses
  %prol.iter374 = phi i64 [ %prol.iter374.next, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol ], [ 0, %.noexc174 ]
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i170.prol, align 16, !tbaa !67
  %i.gf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i170.prol, i64 16 ; 2 uses
  %prol.iter374.next = add i64 %prol.iter374, 1   ; 2 uses
  %prol.iter374.cmp.not = icmp eq i64 %prol.iter374.next, %xtraiter372
  br i1 %prol.iter374.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol, !llvm.loop !166

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
  %.sroa.0197.0343 = phi ptr [ %i.fj, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  %i.gp = phi i32 [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ 0, %bb.i ], [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %.pre292, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %.pre292, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ]
  %.sroa.0214.0323329342 = phi ptr [ %i.eb, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ %i.eb, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ %i.eb, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  %.sroa.0221.0316322331341 = phi ptr [ %i.dy, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ %i.dy, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ %i.dy, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ %i.dy, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  %.sroa.0205.0333340 = phi ptr [ %i.es, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ %i.es, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  %.sroa.0191.0 = phi ptr [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167 ], [ null, %bb.i ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159 ], [ null, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.ga, %.lr.ph.i.i.i.i.i.i.i.i.i169 ], [ %i.ga, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit ] ; 4 uses
  br i1 %.not267, label %.preheader, label %.lr.ph263

.preheader.loopexit:                              ; preds = %.loopexit
  %.pre293 = load i32, ptr %i.du, align 16, !tbaa !121
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175
  %i.gq = phi i32 [ %.pre293, %.preheader.loopexit ], [ %i.gp, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175 ]
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
  %indvars.iv283.a = phi i64 [ %indvars.iv.next284.a, %.loopexit ], [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %indvars.iv283.a ; 7 uses
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
  %i.hx = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next284, %bb.t ] ; 10 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !63
  %.not = icmp eq i64 %i.hz, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0221.0316322331341, i64 %i.hx ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = add nsw i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !4
  %i.id = load double, ptr %i.hu, align 8, !tbaa !167
  %i.ie = fpext double %i.id to x86_fp80          ; 3 uses
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0214.0323329342, i64 %i.hx ; 2 uses
  %i.ig = load x86_fp80, ptr %i.if, align 16, !tbaa !67
  %i.ih = fadd x86_fp80 %i.ig, %i.ie
  store x86_fp80 %i.ih, ptr %i.if, align 16, !tbaa !67
  %i.ii = load ptr, ptr %i.hv, align 8, !tbaa !66
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.hx ; 3 uses
  %i.ik = load x86_fp80, ptr %i.ij, align 16, !tbaa !67
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0205.0333340, i64 %i.hx ; 2 uses
  %i.im = load x86_fp80, ptr %i.il, align 16, !tbaa !67
  %i.in = fadd x86_fp80 %i.ik, %i.im
  store x86_fp80 %i.in, ptr %i.il, align 16, !tbaa !67
  %i.io = load x86_fp80, ptr %i.ij, align 16, !tbaa !67
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0197.0343, i64 %i.hx ; 2 uses
  %i.iq = load x86_fp80, ptr %i.ip, align 16, !tbaa !67
  %i.ir = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.ie, x86_fp80 %i.io, x86_fp80 %i.iq)
  store x86_fp80 %i.ir, ptr %i.ip, align 16, !tbaa !67
  %i.is = load x86_fp80, ptr %i.ij, align 16, !tbaa !67
  %i.it = fmul x86_fp80 %i.is, %i.ie
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hx
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !4
  %i.iw = load ptr, ptr %i.hw, align 8, !tbaa !61
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.hx
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4
  %i.iz = mul nsw i32 %i.iy, %i.iv
  %i.ja = sitofp i32 %i.iz to x86_fp80
  %i.jb = fdiv x86_fp80 %i.it, %i.ja
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0191.0, i64 %i.hx ; 2 uses
  %i.jd = load x86_fp80, ptr %i.jc, align 16, !tbaa !67
  %i.je = fadd x86_fp80 %i.jd, %i.jb
  store x86_fp80 %i.je, ptr %i.jc, align 16, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next284 = add i64 %i.hx, 1          ; 2 uses
  %3 = and i64 %indvars.iv.next284, 4294967295
  %i.jf = icmp ugt i64 %i.hr, %3
  br i1 %i.jf, label %bb.r, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.t, %.preheader232, %.lr.ph263
  %indvars.iv.next284.a = add i64 %indvars.iv283.a, 1 ; 2 uses
  %i.jg = and i64 %indvars.iv.next284.a, 4294967295
  %i.jh = icmp ugt i64 %i.g, %i.jg
  br i1 %i.jh, label %.lr.ph263, label %.preheader.loopexit, !llvm.loop !169

._crit_edge266:                                   ; preds = %bb.ab, %.preheader
  %.not.i.i.i176 = icmp eq ptr %.sroa.0191.0, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIeSaIeEED2Ev.exit177, label %bb.u

bb.u:                                             ; preds = %._crit_edge266
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0191.0) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit177

_ZNSt6vectorIeSaIeEED2Ev.exit177:                 ; preds = %._crit_edge266, %bb.u
  %.not.i.i.i178 = icmp eq ptr %.sroa.0197.0343, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIeSaIeEED2Ev.exit179, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit177
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0197.0343) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit179

_ZNSt6vectorIeSaIeEED2Ev.exit179:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit177, %bb.v
  %.not.i.i.i180 = icmp eq ptr %.sroa.0205.0333340, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIeSaIeEED2Ev.exit181, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit179
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0205.0333340) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit181

_ZNSt6vectorIeSaIeEED2Ev.exit181:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit179, %bb.w
  %.not.i.i.i182 = icmp eq ptr %.sroa.0214.0323329342, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIeSaIeEED2Ev.exit183, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit181
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0214.0323329342) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit183

_ZNSt6vectorIeSaIeEED2Ev.exit183:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit181, %bb.x
  %.not.i.i.i184 = icmp eq ptr %.sroa.0221.0316322331341, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit183
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0221.0316322331341) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.z:                                             ; preds = %.lr.ph265, %bb.ab
  %indvars.iv286 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next287, %bb.ab ] ; 11 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0221.0316322331341, i64 %indvars.iv286
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !4  ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv286
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !4
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0205.0333340, i64 %indvars.iv286
  %i.jm = load x86_fp80, ptr %i.jl, align 16, !tbaa !67
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %indvars.iv286
  store x86_fp80 %i.jm, ptr %i.jn, align 16, !tbaa !67
  %i.jo = icmp sgt i32 %i.jj, 0
  br i1 %i.jo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jp = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %indvars.iv286
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !66
  %i.js = load x86_fp80, ptr %i.jr, align 16, !tbaa !67
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0214.0323329342, i64 %indvars.iv286
  %i.ju = load x86_fp80, ptr %i.jt, align 16, !tbaa !67
  %i.jv = fmul x86_fp80 %i.js, %i.ju
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0197.0343, i64 %indvars.iv286
  %i.jx = load x86_fp80, ptr %i.jw, align 16, !tbaa !67
  %i.jy = fdiv x86_fp80 %i.jv, %i.jx
  %i.jz = load ptr, ptr %i.hb, align 8, !tbaa !64
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %i.gs
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !66
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.kb, i64 %indvars.iv286
  store x86_fp80 %i.jy, ptr %i.kc, align 16, !tbaa !67
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0191.0, i64 %indvars.iv286
  %i.ke = load x86_fp80, ptr %i.kd, align 16, !tbaa !67
  %i.kf = fdiv x86_fp80 1.000000e+00, %i.ke
  %i.kg = load ptr, ptr %i.hc, align 16, !tbaa !64
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.gs
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !66
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.ki, i64 %indvars.iv286
  store x86_fp80 %i.kf, ptr %i.kj, align 16, !tbaa !67
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.kk = load i32, ptr %i.du, align 16, !tbaa !121
  %i.kl = zext i32 %i.kk to i64
  %i.km = icmp samesign ult i64 %indvars.iv.next287, %i.kl
  br i1 %i.km, label %bb.z, label %._crit_edge266, !llvm.loop !170

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
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.d, !llvm.loop !172

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.af = icmp eq ptr %.19.i.i.i.i, %i.n
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.v) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !147
  %i.al = call i32 @memcmp(ptr noundef %i.w, ptr noundef %i.ak, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
  %i.am = sub i64 %i.v, %i.ah
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.al, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.an = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.an, ptr %i.n, ptr %.19.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.n, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !130
  %i.aq = trunc nuw i64 %indvars.iv to i32
  invoke void @_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb(i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !173

bb.h:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.as = load ptr, ptr %1, align 8, !tbaa !147, !noalias !174
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.at, ptr %12, align 8, !tbaa !75, !alias.scope !177
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 0, ptr %i.au, align 8, !tbaa !78, !alias.scope !177
  store i8 0, ptr %i.at, align 8, !tbaa !34, !alias.scope !177
  %i.av = add i64 %i.p, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.av)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !78, !alias.scope !177
  %i.ax = sub i64 4611686018427387903, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.p
  br i1 %i.ay, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.j
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.as, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !78, !alias.scope !177
  %i.bb = icmp eq i64 %i.ba, 4611686018427387903
  br i1 %i.bb, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.cont.i.i unwind label %bb.k

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %12, align 8, !tbaa !147, !alias.scope !177 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.at
  br i1 %i.bf, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !78, !noalias !180
  %i.bh = add i64 %i.bg, -4611686018427387894
  %i.bi = icmp ult i64 %i.bh, 10
  br i1 %i.bi, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.16, i64 noundef 10)
          to label %.noexc46 unwind label %bb.s   ; 6 uses

.noexc46:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.bk, ptr %11, align 8, !tbaa !75, !alias.scope !180
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !147 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.m:                                             ; preds = %.noexc46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !78 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc46
  store ptr %i.bl, ptr %11, align 8, !tbaa !147, !alias.scope !180
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !34
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !34, !alias.scope !180
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !78
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %i.bt = phi i64 [ %i.bp, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !78, !alias.scope !180
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !147
  store i64 0, ptr %i.bu, align 8, !tbaa !78
  store i8 0, ptr %i.bm, align 8, !tbaa !34
  %i.bw = load ptr, ptr %12, align 8, !tbaa !147  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.at
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.bw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.by = load ptr, ptr %11, align 8, !tbaa !147
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %13, ptr noundef %i.by, i32 noundef 48)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = load ptr, ptr %13, align 8, !tbaa !8
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %13, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !183
  %i.cf = and i32 %i.ce, 5
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %_ZNSolsEPFRSoS_E.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.ch = load ptr, ptr %11, align 8, !tbaa !147
  %i.ci = load i64, ptr %i.bv, align 8, !tbaa !78
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ch, i64 noundef %i.ci)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.u ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr i8, ptr %i.ck, i64 -24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 240
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 67
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cp)
          to label %.noexc235 unwind label %bb.u

.noexc235:                                        ; preds = %bb.r
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef signext i8 %i.cw(ptr noundef nonnull align 8 dereferenceable(570) %i.cp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.u, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc235, %bb.q
  %.0.i.i.i = phi i8 [ %i.ct, %bb.q ], [ %i.cx, %.noexc235 ]
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i8 noundef signext %.0.i.i.i)
          to label %.noexc237 unwind label %bb.u

.noexc237:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.u ; 0 uses

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.l
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %12, align 8, !tbaa !147  ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.at
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.k
  %.sink = phi ptr [ %i.be, %bb.k ], [ %i.db, %bb.s ]
  %.pn.ph = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.da, %bb.s ]
  call void @_ZdlPv(ptr noundef %.sink) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.da, %bb.s ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.u:                                             ; preds = %.invoke, %.noexc247, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i242, %.noexc245, %bb.w, %.noexc237, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc235, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55, %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.p, %_ZNSolsEPFRSoS_E.exit59
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body71

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc237, %bb.o
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.dg = load ptr, ptr %11, align 8, !tbaa !147
  %i.dh = load i64, ptr %i.bv, align 8, !tbaa !78
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.dg, i64 noundef %i.dh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit57 unwind label %bb.u ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !8
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 240
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i239 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i239, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i240

.invoke:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit57
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.cont unwind label %bb.u

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i240: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit57
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !28
  %.not.i1.i.i241 = icmp eq i8 %i.dq, 0
  br i1 %.not.i1.i.i241, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i240
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 67
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i242

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i240
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.do)
          to label %.noexc245 unwind label %bb.u

.noexc245:                                        ; preds = %bb.w
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef signext i8 %i.dv(ptr noundef nonnull align 8 dereferenceable(570) %i.do, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i242 unwind label %bb.u, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i242: ; preds = %.noexc245, %bb.v
  %.0.i.i.i243 = phi i8 [ %i.ds, %bb.v ], [ %i.dw, %.noexc245 ]
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i8 noundef signext %.0.i.i.i243)
          to label %.noexc247 unwind label %bb.u

.noexc247:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i242
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %_ZNSolsEPFRSoS_E.exit59 unwind label %bb.u ; 0 uses

_ZNSolsEPFRSoS_E.exit59:                          ; preds = %.noexc247
  invoke fastcc void @_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.preheader270 unwind label %bb.u

.preheader270:                                    ; preds = %_ZNSolsEPFRSoS_E.exit59
  %.pre446.pre = load ptr, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, align 8 ; 6 uses
  %.pre448.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 24), align 8 ; 4 uses
  br i1 %.not441, label %._crit_edge440, label %.lr.ph437

.lr.ph437:                                        ; preds = %.preheader270
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 29
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 19
  %i.eh = getelementptr i8, ptr %.pre446.pre, i64 -24
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 248
  %wide.trip.count447 = and i64 %i.j, 4294967295
  br label %bb.x

.preheader:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i
  %.not517 = icmp eq i32 %i.k, 1
  br i1 %.not517, label %._crit_edge440, label %.lr.ph439

.lr.ph439:                                        ; preds = %.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 19
  %i.es = getelementptr i8, ptr %.pre446.pre, i64 -24
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 248
  %wide.trip.count452 = and i64 %i.j, 4294967295
  br label %bb.bh

bb.x:                                             ; preds = %.lr.ph437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i
  %indvars.iv444 = phi i64 [ 0, %.lr.ph437 ], [ %indvars.iv.next445, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i ] ; 2 uses
  %i.ev = load ptr, ptr %0, align 8, !tbaa !145
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %indvars.iv444 ; 4 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !147, !noalias !185
  %.val43 = load i64, ptr %i.o, align 8, !tbaa !78, !noalias !185 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.dz, ptr %6, align 8, !tbaa !75, !alias.scope !188
  store i64 0, ptr %i.ea, align 8, !tbaa !78, !alias.scope !188
  store i8 0, ptr %i.dz, align 8, !tbaa !34, !alias.scope !188
  %i.ex = add i64 %.val43, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ex)
          to label %bb.y unwind label %.loopexit271

bb.y:                                             ; preds = %bb.x
  %i.ey = load i64, ptr %i.ea, align 8, !tbaa !78, !alias.scope !188
  %i.ez = sub i64 4611686018427387903, %i.ey
  %i.fa = icmp ult i64 %i.ez, %.val43
  br i1 %i.fa, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.y
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %.val, i64 noundef %.val43)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %.loopexit271 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.fc = load i64, ptr %i.ea, align 8, !tbaa !78, !alias.scope !188
  %i.fd = icmp eq i64 %i.fc, 4611686018427387903
  br i1 %i.fd, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.cont.i.i.i unwind label %.loopexit.split-lp272

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.fe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i unwind label %.loopexit271 ; 0 uses

.loopexit271:                                     ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  %lpad.loopexit273 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp272:                            ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp274 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp272, %.loopexit271
  %lpad.phi275 = phi { ptr, i32 } [ %lpad.loopexit273, %.loopexit271 ], [ %lpad.loopexit.split-lp274, %.loopexit.split-lp272 ] ; 2 uses
  %i.ff = load ptr, ptr %6, align 8, !tbaa !147, !alias.scope !188 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.dz
  br i1 %i.fg, label %.body71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.ff) #22
  br label %.body71

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !78 ; 2 uses
  %i.fj = load i64, ptr %i.ea, align 8, !tbaa !78
  %i.fk = sub i64 4611686018427387903, %i.fj
  %i.fl = icmp ult i64 %i.fk, %i.fi
  br i1 %i.fl, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc.i unwind label %.loopexit.split-lp277

.noexc.i:                                         ; preds = %bb.aa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
  %i.fm = load ptr, ptr %i.ew, align 8, !tbaa !147
  %i.fn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.fm, i64 noundef %i.fi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i unwind label %.loopexit276 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %i.eb, ptr %7, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.eb, ptr noundef nonnull align 1 dereferenceable(13) @.str.64, i64 13, i1 false)
  store i64 13, ptr %i.ec, align 8, !tbaa !78
  store i8 0, ptr %i.ed, align 1, !tbaa !34
  %i.fo = load i64, ptr %i.ea, align 8, !tbaa !78
  %i.fp = add i64 %i.fo, -4611686018427387891
  %i.fq = icmp ult i64 %i.fp, 13
  br i1 %i.fq, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc57.i unwind label %.loopexit.split-lp282

.noexc57.i:                                       ; preds = %bb.ab
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.fr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.eb, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i unwind label %.loopexit281 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i
  %i.fs = load ptr, ptr %7, align 8, !tbaa !147   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.eb
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i
  call void @_ZdlPv(ptr noundef %i.fs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.fu = load ptr, ptr %6, align 8, !tbaa !147
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef %i.fu, i32 noundef 48)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fv = load ptr, ptr %8, align 8, !tbaa !8
  %i.fw = getelementptr i8, ptr %i.fv, i64 -24
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds i8, ptr %8, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !183
  %i.gb = and i32 %i.ga, 5
  %.not.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i, label %_ZNSolsEPFRSoS_E.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit286 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.ad
  %i.gd = load ptr, ptr %6, align 8, !tbaa !147
  %i.ge = load i64, ptr %i.ea, align 8, !tbaa !78
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.gd, i64 noundef %i.ge)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %.loopexit286 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !8
  %i.gh = getelementptr i8, ptr %i.gg, i64 -24
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds i8, ptr %i.gf, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 240
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i60, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !28
  %.not.i1.i.i.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i1.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 67
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gl)
          to label %.noexc110.i unwind label %.loopexit286

.noexc110.i:                                      ; preds = %bb.af
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = invoke noundef signext i8 %i.gs(ptr noundef nonnull align 8 dereferenceable(570) %i.gl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit286, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc110.i, %bb.ae
  %.0.i.i.i.i = phi i8 [ %i.gp, %bb.ae ], [ %i.gt, %.noexc110.i ]
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc112.i unwind label %.loopexit286

.noexc112.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gu)
          to label %_ZNSolsEPFRSoS_E.exit.i unwind label %.loopexit286 ; 0 uses

.loopexit276:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %lpad.loopexit278 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp277:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp279 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit281:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i
  %lpad.loopexit283 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp282:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp284 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp282, %.loopexit281
  %lpad.phi285 = phi { ptr, i32 } [ %lpad.loopexit283, %.loopexit281 ], [ %lpad.loopexit.split-lp284, %.loopexit.split-lp282 ]
  %i.gw = load ptr, ptr %7, align 8, !tbaa !147   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.eb
end_hunk_0
begin_hunk_1_@_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_:bb.a
  %i.md = load i8, ptr %i.ly, align 8, !tbaa !36, !range !58, !noundef !59
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.av, label %_ZNSolsEPFRSoS_E.exit93.i

bb.av:                                            ; preds = %bb.au
  %i.mf = load ptr, ptr %i.lz, align 8, !tbaa !147
  %i.mg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.mf, i64 noundef %i.mb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i unwind label %.loopexit.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i: ; preds = %bb.av
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ly, i64 208 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 216 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !60
  %i.mk = load ptr, ptr %i.mh, align 8, !tbaa !61
  %.not13.i = icmp eq ptr %i.mj, %i.mk
  br i1 %.not13.i, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  br label %bb.az

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i: ; preds = %_ZNSolsEe.exit.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i
  %i.mm = load ptr, ptr %8, align 8, !tbaa !8
  %i.mn = getelementptr i8, ptr %i.mm, i64 -24
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds i8, ptr %8, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 240
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i147.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i147.i, label %bb.aw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i

bb.aw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc152.i unwind label %.loopexit.split-lp.i

.noexc152.i:                                      ; preds = %bb.aw
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  %i.mt = load i8, ptr %i.ms, align 8, !tbaa !28
  %.not.i1.i.i149.i = icmp eq i8 %i.mt, 0
  br i1 %.not.i1.i.i149.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 67
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mr)
          to label %.noexc153.i unwind label %.loopexit.i

.noexc153.i:                                      ; preds = %bb.ay
  %i.mw = load ptr, ptr %i.mr, align 8, !tbaa !8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = invoke noundef signext i8 %i.my(ptr noundef nonnull align 8 dereferenceable(570) %i.mr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i unwind label %.loopexit.i, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i: ; preds = %.noexc153.i, %bb.ax
  %.0.i.i.i151.i = phi i8 [ %i.mv, %bb.ax ], [ %i.mz, %.noexc153.i ]
  %i.na = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext %.0.i.i.i151.i)
          to label %.noexc155.i unwind label %.loopexit.i

.noexc155.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i
  %i.nb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.na)
          to label %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i unwind label %.loopexit.i ; 0 uses

.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i:    ; preds = %.noexc155.i
  %.pre.i66 = load ptr, ptr %i.jy, align 8, !tbaa !146
  %.pre14.i = load ptr, ptr %i.hu, align 8, !tbaa !145
  br label %_ZNSolsEPFRSoS_E.exit93.i

.loopexit.i:                                      ; preds = %.noexc155.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i, %.noexc153.i, %bb.ay, %bb.av
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp.i:                             ; preds = %bb.aw
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.az:                                            ; preds = %_ZNSolsEe.exit.i, %.lr.ph7.i
  %i.nc = phi i64 [ 0, %.lr.ph7.i ], [ %i.nq, %_ZNSolsEe.exit.i ]
  %.0316.i = phi i32 [ 0, %.lr.ph7.i ], [ %i.np, %_ZNSolsEe.exit.i ]
  %i.nd = load ptr, ptr %9, align 8, !tbaa !147
  %i.ne = load i64, ptr %i.ef, align 8, !tbaa !78
  %i.nf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.nd, i64 noundef %i.ne)
          to label %bb.ba unwind label %bb.bb     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !8
  %i.nh = getelementptr i8, ptr %i.ng, i64 -24
  %i.ni = load i64, ptr %i.nh, align 8
  %i.nj = getelementptr inbounds i8, ptr %i.nf, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store i64 8, ptr %i.nk, align 8, !tbaa !195
  %i.nl = load ptr, ptr %i.ml, align 8, !tbaa !66
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nl, i64 %i.nc
  %i.nn = load x86_fp80, ptr %i.nm, align 16, !tbaa !67
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.nf, x86_fp80 noundef %i.nn)
          to label %_ZNSolsEe.exit.i unwind label %bb.bb ; 0 uses

_ZNSolsEe.exit.i:                                 ; preds = %bb.ba
  %i.np = add i32 %.0316.i, 1                     ; 2 uses
  %i.nq = zext i32 %i.np to i64                   ; 2 uses
  %i.nr = load ptr, ptr %i.mi, align 8, !tbaa !60
  %i.ns = load ptr, ptr %i.mh, align 8, !tbaa !61
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = ashr exact i64 %i.nv, 2
  %i.nx = icmp ugt i64 %i.nw, %i.nq
  br i1 %i.nx, label %bb.az, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i, !llvm.loop !196

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNSolsEPFRSoS_E.exit93.i:                        ; preds = %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i, %bb.au, %bb.at
  %i.nz = phi ptr [ %.pre14.i, %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i ], [ %i.ky, %bb.au ], [ %i.ky, %bb.at ] ; 2 uses
  %i.oa = phi ptr [ %.pre.i66, %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i ], [ %i.kz, %bb.au ], [ %i.kz, %bb.at ] ; 2 uses
  %i.ob = add i32 %.0398.i, 1                     ; 2 uses
  %i.oc = zext i32 %i.ob to i64                   ; 2 uses
  %i.od = ptrtoint ptr %i.oa to i64
  %i.oe = ptrtoint ptr %i.nz to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = ashr exact i64 %i.of, 5
  %i.oh = icmp ugt i64 %i.og, %i.oc
  br i1 %i.oh, label %bb.aq, label %_ZNSolsEPFRSoS_E.exit85._crit_edge.i, !llvm.loop !197

bb.bc:                                            ; preds = %_ZNSolsEPFRSoS_E.exit85._crit_edge.i
  %i.oi = load ptr, ptr %9, align 8, !tbaa !147   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.ee
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.oi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  store ptr %.pre446.pre, ptr %8, align 8, !tbaa !8
  %i.ok = load i64, ptr %i.eh, align 8
  %i.ol = getelementptr inbounds i8, ptr %8, i64 %i.ok
  store ptr %.pre448.pre, ptr %i.ol, align 8, !tbaa !8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ei) #21
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ej) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.om = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.dz
  br i1 %i.on, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i
  call void @_ZdlPv(ptr noundef %i.om) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i

bb.bd:                                            ; preds = %.loopexit291, %.loopexit.split-lp292, %bb.bb, %.loopexit.split-lp.i, %.loopexit.i, %bb.ap, %bb.am
  %.pn48.i = phi { ptr, i32 } [ %i.jh, %bb.am ], [ %i.kw, %bb.ap ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.ny, %bb.bb ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit293, %.loopexit291 ], [ %lpad.loopexit.split-lp294, %.loopexit.split-lp292 ]
  %i.oo = load ptr, ptr %9, align 8, !tbaa !147   ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.ee
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i: ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef %i.oo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.be

bb.be:                                            ; preds = %.loopexit286, %.loopexit.split-lp287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i
  %.pn48.pn.pn.i = phi { ptr, i32 } [ %.pn48.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i ], [ %lpad.loopexit288, %.loopexit286 ], [ %lpad.loopexit.split-lp289, %.loopexit.split-lp287 ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %8) #21
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ah
  %.pn48.pn.pn.pn.i = phi { ptr, i32 } [ %.pn48.pn.pn.i, %bb.be ], [ %i.gy, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit276, %.loopexit.split-lp277, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i
  %.pn48.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn48.pn.pn.pn.i, %bb.bf ], [ %lpad.phi285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %lpad.loopexit278, %.loopexit276 ], [ %lpad.loopexit.split-lp279, %.loopexit.split-lp277 ]
  %i.oq = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.dz
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.oq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next445, %wide.trip.count447
  br i1 %exitcond444.not, label %.preheader, label %bb.x, !llvm.loop !198

._crit_edge440.loopexit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179
  %.pre = load ptr, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, align 8
  %.pre447 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 24), align 8
  br label %._crit_edge440

._crit_edge440:                                   ; preds = %.preheader270, %._crit_edge440.loopexit, %.preheader
  %i.os = phi ptr [ %.pre447, %._crit_edge440.loopexit ], [ %.pre448.pre, %.preheader ], [ %.pre448.pre, %.preheader270 ]
  %i.ot = phi ptr [ %.pre, %._crit_edge440.loopexit ], [ %.pre446.pre, %.preheader ], [ %.pre446.pre, %.preheader270 ] ; 2 uses
  store ptr %i.ot, ptr %13, align 8, !tbaa !8
  %i.ou = getelementptr i8, ptr %i.ot, i64 -24
  %i.ov = load i64, ptr %i.ou, align 8
  %i.ow = getelementptr inbounds i8, ptr %13, i64 %i.ov
  store ptr %i.os, ptr %i.ow, align 8, !tbaa !8
  %i.ox = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ox) #21
  %i.oy = getelementptr inbounds nuw i8, ptr %13, i64 248
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.oy) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.oz = load ptr, ptr %11, align 8, !tbaa !147  ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.bk
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %._crit_edge440
  call void @_ZdlPv(ptr noundef %i.oz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %._crit_edge440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cu

bb.bh:                                            ; preds = %.lr.ph439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179
  %indvars.iv449 = phi i64 [ 1, %.lr.ph439 ], [ %indvars.iv.next450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179 ] ; 2 uses
  %i.pb = load ptr, ptr %0, align 8, !tbaa !145
  %i.pc = getelementptr inbounds nuw [32 x i8], ptr %i.pb, i64 %indvars.iv449 ; 4 uses
  %.val44 = load ptr, ptr %1, align 8, !tbaa !147, !noalias !199
  %.val45 = load i64, ptr %i.o, align 8, !tbaa !78, !noalias !199 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.ek, ptr %2, align 8, !tbaa !75, !alias.scope !202
  store i64 0, ptr %i.el, align 8, !tbaa !78, !alias.scope !202
  store i8 0, ptr %i.ek, align 8, !tbaa !34, !alias.scope !202
  %i.pd = add i64 %.val45, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.pd)
          to label %bb.bi unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.pe = load i64, ptr %i.el, align 8, !tbaa !78, !alias.scope !202
  %i.pf = sub i64 4611686018427387903, %i.pe
  %i.pg = icmp ult i64 %i.pf, %.val45
  br i1 %i.pg, label %.invoke.i.i.i221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80: ; preds = %bb.bi
  %i.ph = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %.val44, i64 noundef %.val45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80
  %i.pi = load i64, ptr %i.el, align 8, !tbaa !78, !alias.scope !202
  %i.pj = icmp eq i64 %i.pi, 4611686018427387903
  br i1 %i.pj, label %.invoke.i.i.i221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82

.invoke.i.i.i221:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81, %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.cont.i.i.i222 unwind label %.loopexit.split-lp

.cont.i.i.i222:                                   ; preds = %.invoke.i.i.i221
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81
  %i.pk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %.invoke.i.i.i221
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.pl = load ptr, ptr %2, align 8, !tbaa !147, !alias.scope !202 ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.ek
  br i1 %i.pm, label %.body71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.pl) #22
  br label %.body71

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 3 uses
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !78 ; 2 uses
  %i.pp = load i64, ptr %i.el, align 8, !tbaa !78
  %i.pq = sub i64 4611686018427387903, %i.pp
  %i.pr = icmp ult i64 %i.pq, %i.po
  br i1 %i.pr, label %bb.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i84

bb.bk:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc.i220 unwind label %.loopexit.split-lp251

.noexc.i220:                                      ; preds = %bb.bk
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i84: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83
  %i.ps = load ptr, ptr %i.pc, align 8, !tbaa !147
  %i.pt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ps, i64 noundef %i.po)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i89 unwind label %.loopexit250 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.em, ptr %3, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.em, ptr noundef nonnull align 1 dereferenceable(12) @.str.67, i64 12, i1 false)
  store i64 12, ptr %i.en, align 8, !tbaa !78
  store i8 0, ptr %i.eo, align 4, !tbaa !34
  %i.pu = load i64, ptr %i.el, align 8, !tbaa !78
  %i.pv = add i64 %i.pu, -4611686018427387892
  %i.pw = icmp ult i64 %i.pv, 12
  br i1 %i.pw, label %bb.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i90

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i89
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc57.i219 unwind label %.loopexit.split-lp256

.noexc57.i219:                                    ; preds = %bb.bl
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i89
  %i.px = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.em, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i94 unwind label %.loopexit255 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i90
  %i.py = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.em
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i94
  call void @_ZdlPv(ptr noundef %i.py) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.qa = load ptr, ptr %2, align 8, !tbaa !147
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef %i.qa, i32 noundef 48)
          to label %bb.bm unwind label %bb.br

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96
  %i.qb = load ptr, ptr %4, align 8, !tbaa !8
  %i.qc = getelementptr i8, ptr %i.qb, i64 -24
  %i.qd = load i64, ptr %i.qc, align 8
  %i.qe = getelementptr inbounds i8, ptr %4, i64 %i.qd
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !183
  %i.qh = and i32 %i.qg, 5
  %.not.i98 = icmp eq i32 %i.qh, 0
  br i1 %.not.i98, label %_ZNSolsEPFRSoS_E.exit.i108, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i100 unwind label %.loopexit260 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i100: ; preds = %bb.bn
  %i.qj = load ptr, ptr %2, align 8, !tbaa !147
  %i.qk = load i64, ptr %i.el, align 8, !tbaa !78
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.qj, i64 noundef %i.qk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i101 unwind label %.loopexit260 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i101: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i100
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !8
  %i.qn = getelementptr i8, ptr %i.qm, i64 -24
  %i.qo = load i64, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds i8, ptr %i.ql, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 240
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.qr, null
  br i1 %.not.i.i.i.i102, label %.invoke.i215, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i103

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i103: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i101
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 56
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !28
  %.not.i1.i.i.i104 = icmp eq i8 %i.qt, 0
  br i1 %.not.i1.i.i.i104, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i103
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 67
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i105

bb.bp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i103
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qr)
          to label %.noexc110.i217 unwind label %.loopexit260

.noexc110.i217:                                   ; preds = %bb.bp
  %i.qw = load ptr, ptr %i.qr, align 8, !tbaa !8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 48
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = invoke noundef signext i8 %i.qy(ptr noundef nonnull align 8 dereferenceable(570) %i.qr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i105 unwind label %.loopexit260, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i105: ; preds = %.noexc110.i217, %bb.bo
  %.0.i.i.i.i106 = phi i8 [ %i.qv, %bb.bo ], [ %i.qz, %.noexc110.i217 ]
  %i.ra = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ql, i8 noundef signext %.0.i.i.i.i106)
          to label %.noexc112.i107 unwind label %.loopexit260

.noexc112.i107:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i105
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ra)
          to label %_ZNSolsEPFRSoS_E.exit.i108 unwind label %.loopexit260 ; 0 uses

.loopexit250:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i84
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp251:                            ; preds = %bb.bk
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit255:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i90
  %lpad.loopexit257 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp256:                            ; preds = %bb.bl
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp256, %.loopexit255
  %lpad.phi259 = phi { ptr, i32 } [ %lpad.loopexit257, %.loopexit255 ], [ %lpad.loopexit.split-lp258, %.loopexit.split-lp256 ]
  %i.rc = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.em
end_hunk_1
begin_hunk_2_@_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_:bb.a
  %i.wj = load i8, ptr %i.we, align 8, !tbaa !36, !range !58, !noundef !59
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %bb.cf, label %_ZNSolsEPFRSoS_E.exit93.i174

bb.cf:                                            ; preds = %bb.ce
  %i.wl = load ptr, ptr %i.wf, align 8, !tbaa !147
  %i.wm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.wl, i64 noundef %i.wh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i183 unwind label %.loopexit.i181 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i183: ; preds = %bb.cf
  %i.wn = getelementptr inbounds nuw i8, ptr %i.we, i64 208 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.we, i64 216 ; 2 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !60
  %i.wq = load ptr, ptr %i.wn, align 8, !tbaa !61
  %.not13.i184 = icmp eq ptr %i.wp, %i.wq
  br i1 %.not13.i184, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188, label %.lr.ph7.i185

.lr.ph7.i185:                                     ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i183
  %i.wr = getelementptr inbounds nuw i8, ptr %i.we, i64 184
  br label %bb.cj

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188: ; preds = %_ZNSolsEe.exit.i187, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i183
  %i.ws = load ptr, ptr %4, align 8, !tbaa !8
  %i.wt = getelementptr i8, ptr %i.ws, i64 -24
  %i.wu = load i64, ptr %i.wt, align 8
  %i.wv = getelementptr inbounds i8, ptr %4, i64 %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 240
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i147.i189 = icmp eq ptr %i.wx, null
  br i1 %.not.i.i.i147.i189, label %bb.cg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i190

bb.cg:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc152.i201 unwind label %.loopexit.split-lp.i199

.noexc152.i201:                                   ; preds = %bb.cg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i190: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 56
  %i.wz = load i8, ptr %i.wy, align 8, !tbaa !28
  %.not.i1.i.i149.i191 = icmp eq i8 %i.wz, 0
  br i1 %.not.i1.i.i149.i191, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i190
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 67
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192

bb.ci:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i190
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.wx)
          to label %.noexc153.i198 unwind label %.loopexit.i181

.noexc153.i198:                                   ; preds = %bb.ci
  %i.xc = load ptr, ptr %i.wx, align 8, !tbaa !8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 48
  %i.xe = load ptr, ptr %i.xd, align 8
  %i.xf = invoke noundef signext i8 %i.xe(ptr noundef nonnull align 8 dereferenceable(570) %i.wx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192 unwind label %.loopexit.i181, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192: ; preds = %.noexc153.i198, %bb.ch
  %.0.i.i.i151.i193 = phi i8 [ %i.xb, %bb.ch ], [ %i.xf, %.noexc153.i198 ]
  %i.xg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i151.i193)
          to label %.noexc155.i194 unwind label %.loopexit.i181

.noexc155.i194:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192
  %i.xh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xg)
          to label %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195 unwind label %.loopexit.i181 ; 0 uses

.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195: ; preds = %.noexc155.i194
  %.pre.i196 = load ptr, ptr %i.ue, align 8, !tbaa !146
  %.pre14.i197 = load ptr, ptr %i.sa, align 8, !tbaa !145
  br label %_ZNSolsEPFRSoS_E.exit93.i174

.loopexit.i181:                                   ; preds = %.noexc155.i194, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192, %.noexc153.i198, %bb.ci, %bb.cf
  %lpad.loopexit.i182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp.i199:                          ; preds = %bb.cg
  %lpad.loopexit.split-lp.i200 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cj:                                            ; preds = %_ZNSolsEe.exit.i187, %.lr.ph7.i185
  %i.xi = phi i64 [ 0, %.lr.ph7.i185 ], [ %i.xw, %_ZNSolsEe.exit.i187 ]
  %.0316.i186 = phi i32 [ 0, %.lr.ph7.i185 ], [ %i.xv, %_ZNSolsEe.exit.i187 ]
  %i.xj = load ptr, ptr %5, align 8, !tbaa !147
  %i.xk = load i64, ptr %i.eq, align 8, !tbaa !78
  %i.xl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.xj, i64 noundef %i.xk)
          to label %bb.ck unwind label %bb.cl     ; 3 uses

bb.ck:                                            ; preds = %bb.cj
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !8
  %i.xn = getelementptr i8, ptr %i.xm, i64 -24
  %i.xo = load i64, ptr %i.xn, align 8
  %i.xp = getelementptr inbounds i8, ptr %i.xl, i64 %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  store i64 6, ptr %i.xq, align 8, !tbaa !195
  %i.xr = load ptr, ptr %i.wr, align 8, !tbaa !66
  %i.xs = getelementptr inbounds nuw [16 x i8], ptr %i.xr, i64 %i.xi
  %i.xt = load x86_fp80, ptr %i.xs, align 16, !tbaa !67
  %i.xu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.xl, x86_fp80 noundef %i.xt)
          to label %_ZNSolsEe.exit.i187 unwind label %bb.cl ; 0 uses

_ZNSolsEe.exit.i187:                              ; preds = %bb.ck
  %i.xv = add i32 %.0316.i186, 1                  ; 2 uses
  %i.xw = zext i32 %i.xv to i64                   ; 2 uses
  %i.xx = load ptr, ptr %i.wo, align 8, !tbaa !60
  %i.xy = load ptr, ptr %i.wn, align 8, !tbaa !61
  %i.xz = ptrtoint ptr %i.xx to i64
  %i.ya = ptrtoint ptr %i.xy to i64
  %i.yb = sub i64 %i.xz, %i.ya
  %i.yc = ashr exact i64 %i.yb, 2
  %i.yd = icmp ugt i64 %i.yc, %i.xw
  br i1 %i.yd, label %bb.cj, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188, !llvm.loop !209

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_ZNSolsEPFRSoS_E.exit93.i174:                     ; preds = %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195, %bb.ce, %bb.cd
  %i.yf = phi ptr [ %.pre14.i197, %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195 ], [ %i.ve, %bb.ce ], [ %i.ve, %bb.cd ] ; 2 uses
  %i.yg = phi ptr [ %.pre.i196, %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195 ], [ %i.vf, %bb.ce ], [ %i.vf, %bb.cd ] ; 2 uses
  %i.yh = add i32 %.0398.i151, 1                  ; 2 uses
  %i.yi = zext i32 %i.yh to i64                   ; 2 uses
  %i.yj = ptrtoint ptr %i.yg to i64
  %i.yk = ptrtoint ptr %i.yf to i64
  %i.yl = sub i64 %i.yj, %i.yk
  %i.ym = ashr exact i64 %i.yl, 5
  %i.yn = icmp ugt i64 %i.ym, %i.yi
  br i1 %i.yn, label %bb.ca, label %_ZNSolsEPFRSoS_E.exit85._crit_edge.i175, !llvm.loop !210

bb.cm:                                            ; preds = %_ZNSolsEPFRSoS_E.exit85._crit_edge.i175
  %i.yo = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.yp = icmp eq ptr %i.yo, %i.ep
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i176: ; preds = %bb.cm
  call void @_ZdlPv(ptr noundef %i.yo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  store ptr %.pre446.pre, ptr %4, align 8, !tbaa !8
  %i.yq = load i64, ptr %i.es, align 8
  %i.yr = getelementptr inbounds i8, ptr %4, i64 %i.yq
  store ptr %.pre448.pre, ptr %i.yr, align 8, !tbaa !8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.et) #21
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.eu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ys = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.ek
  br i1 %i.yt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177
  call void @_ZdlPv(ptr noundef %i.ys) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179

bb.cn:                                            ; preds = %.loopexit265, %.loopexit.split-lp266, %bb.cl, %.loopexit.split-lp.i199, %.loopexit.i181, %bb.bz, %bb.bw
  %.pn48.i118 = phi { ptr, i32 } [ %i.tn, %bb.bw ], [ %i.vc, %bb.bz ], [ %lpad.loopexit.split-lp.i200, %.loopexit.split-lp.i199 ], [ %i.ye, %bb.cl ], [ %lpad.loopexit.i182, %.loopexit.i181 ], [ %lpad.loopexit267, %.loopexit265 ], [ %lpad.loopexit.split-lp268, %.loopexit.split-lp266 ]
  %i.yu = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.ep
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i119: ; preds = %bb.cn
  call void @_ZdlPv(ptr noundef %i.yu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.co

bb.co:                                            ; preds = %.loopexit260, %.loopexit.split-lp261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120
  %.pn48.pn.pn.i99 = phi { ptr, i32 } [ %.pn48.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120 ], [ %lpad.loopexit262, %.loopexit260 ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp261 ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #21
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.br
  %.pn48.pn.pn.pn.i97 = phi { ptr, i32 } [ %.pn48.pn.pn.i99, %bb.co ], [ %i.re, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit250, %.loopexit.split-lp251, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i92
  %.pn48.pn.pn.pn.pn.i85 = phi { ptr, i32 } [ %.pn48.pn.pn.pn.i97, %bb.cp ], [ %lpad.phi259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i92 ], [ %lpad.loopexit252, %.loopexit250 ], [ %lpad.loopexit.split-lp253, %.loopexit.split-lp251 ]
  %i.yw = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.yx = icmp eq ptr %i.yw, %i.ek
  br i1 %i.yx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i86: ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef %i.yw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next450, %wide.trip.count452
  br i1 %exitcond445.not, label %._crit_edge440.loopexit, label %bb.bh, !llvm.loop !211

.body71:                                          ; preds = %bb.bj, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.u
  %.pn37 = phi { ptr, i32 } [ %i.de, %bb.u ], [ %.pn48.pn.pn.pn.pn.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87 ], [ %lpad.phi275, %bb.z ], [ %.pn48.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i ], [ %lpad.phi275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76 ], [ %lpad.phi, %bb.bj ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %13) #21
  br label %bb.cr

bb.cr:                                            ; preds = %.body71, %bb.t
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.body71 ], [ %i.dd, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.yy = load ptr, ptr %11, align 8, !tbaa !147  ; 2 uses
  %i.yz = icmp eq ptr %i.yy, %i.bk
  br i1 %i.yz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.yy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %.body
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn37.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %.pn37.pn, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cw

bb.cs:                                            ; preds = %._crit_edge
  invoke fastcc void @_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.zb = load ptr, ptr %10, align 8, !tbaa !147  ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.zd = icmp eq ptr %i.zb, %i.zc
  br i1 %i.zd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef %i.zb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.cv

bb.cv:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  ret void

bb.cw:                                            ; preds = %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.h
  %.pn41 = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.za, %bb.ct ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ]
  %i.ze = load ptr, ptr %10, align 8, !tbaa !147  ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.zg = icmp eq ptr %i.ze, %i.zf
  br i1 %i.zg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.cw
  call void @_ZdlPv(ptr noundef %i.ze) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  resume { ptr, i32 } %.pn41
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable align 8 %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::basic_ifstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull @.str.70, i32 noundef 8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.a, align 8, !tbaa !34
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 2)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = invoke { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, i64 } %i.d, 0
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %2, align 8, !tbaa !8
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !212
  %i.m = load ptr, ptr %0, align 8, !tbaa !147
  %i.n = load i64, ptr %i.b, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !78
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.l, i32 -1, ptr null, i32 -1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = load ptr, ptr %0, align 8, !tbaa !147
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.q, %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !147
  %i.v = load i64, ptr %i.p, align 8, !tbaa !78
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t, i64 noundef %i.n, ptr noundef %i.u, i64 noundef %i.v)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.x) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !147   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.aa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ac)
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.h, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit

bb.h:                                             ; preds = %.noexc4
  %i.ae = load ptr, ptr %2, align 8, !tbaa !8
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !183
  %i.ak = or i32 %i.aj, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ah, i32 noundef %i.ak)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %bb.e, %bb.d, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc4, %bb.h
  %i.an = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !8
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.ap = getelementptr i8, ptr %i.an, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.aq
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ac) #21
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8 ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !8
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !213
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ay) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

.body:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.al, %bb.i ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i ]
end_hunk_2
