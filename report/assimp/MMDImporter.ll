inline.NumInlined: 1132
inline.NumDeleted: 755
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11MMDImporter20CreateDataFromImportEPKN3pmx8PmxModelEP7aiScene:bb.a
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.cm = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1120 ; 2 uses
  store i32 %i.cl, ptr %i.cn, align 8
  %i.co = zext i32 %i.cl to i64
  %i.cp = shl nuw nsw i64 %i.co, 2
  %i.cq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 1128
  store ptr %i.cq, ptr %i.cr, align 8
  %i.cs = load i32, ptr %i.cn, align 8
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.ct = load i32, ptr %i.ck, align 8            ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = zext i32 %i.ct to i64
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #25
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.cx, ptr %i.cy, align 8
  %.not150 = icmp eq i32 %i.ct, 0
  br i1 %.not150, label %._crit_edge139, label %.lr.ph138

.lr.ph138:                                        ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  br label %bb.p

bb.n:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 1144) #23
  br label %bb.as

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.k, %.critedge.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %5, align 8               ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ad
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.o
  %i.de = load i64, ptr %i.ad, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.dg = load ptr, ptr %4, align 8               ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.r
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.di = load i64, ptr %i.r, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.as

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ] ; 3 uses
  %i.dk = phi ptr [ %i.dp, %.lr.ph ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1128
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv
  %i.do = trunc nuw i64 %indvars.iv to i32
  store i32 %i.do, ptr %i.dn, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1120
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next, %i.ds
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge139:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8            ; 3 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i32 %i.dv, 0
  %i.dy = shl nsw i64 %i.dw, 3
  %i.dz = select i1 %i.dx, i64 -1, i64 %i.dy
  %i.ea = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #25 ; 6 uses
  %i.eb = icmp sgt i32 %i.dv, 0
  br i1 %i.eb, label %.lr.ph142, label %._crit_edge145

.lr.ph142:                                        ; preds = %._crit_edge139
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph138, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %indvars.iv154 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next155, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 7 uses
  %.088136 = phi i32 [ 0, %.lr.ph138 ], [ %i.fc, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.ed = load ptr, ptr %i.cz, align 8
  %i.ee = getelementptr inbounds nuw [192 x i8], ptr %i.ed, i64 %indvars.iv154
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 184
  %i.eg = load i32, ptr %i.ef, align 8            ; 2 uses
  %i.eh = call noundef ptr @_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef %.088136, i32 noundef %i.eg)
  %i.ei = load ptr, ptr %i.cy, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv154
  store ptr %i.eh, ptr %i.ej, align 8
  %i.ek = load ptr, ptr %i.cz, align 8
  %i.el = getelementptr inbounds nuw [192 x i8], ptr %i.ek, i64 %indvars.iv154 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8            ; 4 uses
  %i.eo = icmp ugt i64 %i.en, 1023
  br i1 %i.eo, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = load ptr, ptr %i.cy, align 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv154
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 236
  %i.et = trunc nuw nsw i64 %i.en to i32
  store i32 %i.et, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 240 ; 2 uses
  %i.ev = load ptr, ptr %i.el, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eu, ptr align 1 %i.ev, i64 %i.en, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.en
  store i8 0, ptr %i.ew, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.p, %bb.q
  %i.ex = load ptr, ptr %i.cy, align 8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv154
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 232
  %i.fb = trunc nuw i64 %indvars.iv154 to i32
  store i32 %i.fb, ptr %i.fa, align 8
  %i.fc = add i32 %i.eg, %.088136
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.fd = load i32, ptr %i.cu, align 8
  %i.fe = zext i32 %i.fd to i64
  %i.ff = icmp samesign ult i64 %indvars.iv.next155, %i.fe
  br i1 %i.ff, label %bb.p, label %._crit_edge139, !llvm.loop !20

.preheader:                                       ; preds = %bb.t
  %i.fg = icmp sgt i32 %i.fm, 0
  br i1 %i.fg, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %.preheader
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  br label %bb.w

bb.r:                                             ; preds = %.lr.ph142, %bb.t
  %indvars.iv157 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next158, %bb.t ] ; 3 uses
  %i.fi = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #25
          to label %bb.s unwind label %bb.u       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.fj = load ptr, ptr %i.ec, align 8
  %i.fk = getelementptr inbounds nuw [176 x i8], ptr %i.fj, i64 %indvars.iv157
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv157
  store ptr %i.fi, ptr %i.fl, align 8
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.fm = load i32, ptr %i.du, align 8            ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next158, %i.fn
  br i1 %i.fo, label %bb.r, label %.preheader, !llvm.loop !21

bb.u:                                             ; preds = %bb.r
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit125

bb.v:                                             ; preds = %bb.s
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 1144) #23
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit125

._crit_edge145:                                   ; preds = %bb.ab, %._crit_edge139, %.preheader
  %i.fr = load i32, ptr %i.ck, align 8            ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 %i.fr, ptr %i.fs, align 8
  %i.ft = zext i32 %i.fr to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fu) #25
          to label %bb.ac unwind label %bb.ad

bb.w:                                             ; preds = %.lr.ph144, %bb.ab
  %indvars.iv160 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next161, %bb.ab ] ; 4 uses
  %i.fw = load ptr, ptr %i.fh, align 8
  %i.fx = getelementptr inbounds nuw [176 x i8], ptr %i.fw, i64 %indvars.iv160 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 76 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4            ; 2 uses
  %i.ga = icmp slt i32 %i.fz, 0
  br i1 %i.ga, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.gb = load ptr, ptr %i.n, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv160
  invoke void @_ZN6aiNode11addChildrenEjPPS_(ptr noundef nonnull align 8 dereferenceable(1144) %i.gb, i32 noundef 1, ptr noundef nonnull %i.gc)
          to label %bb.ab unwind label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit125

bb.z:                                             ; preds = %bb.w
  %i.ge = zext nneg i32 %i.fz to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv160 ; 2 uses
  invoke void @_ZN6aiNode11addChildrenEjPPS_(ptr noundef nonnull align 8 dereferenceable(1144) %i.gg, i32 noundef 1, ptr noundef nonnull %i.gh)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.gj = load float, ptr %i.gi, align 8
  %i.gk = load i32, ptr %i.fy, align 4
  %i.gl = sext i32 %i.gk to i64
  %i.gm = load ptr, ptr %i.fh, align 8
  %i.gn = getelementptr inbounds nuw [176 x i8], ptr %i.gm, i64 %i.gl ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gp = load float, ptr %i.go, align 8
  %i.gq = fsub float %i.gj, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fx, i64 68
  %9 = load float, ptr %i.gr, align 4
  %10 = getelementptr inbounds nuw i8, ptr %i.gn, i64 68
  %11 = load float, ptr %10, align 4
  %12 = fsub float %9, %11
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  %13 = load float, ptr %i.gs, align 8
  %14 = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %15 = load float, ptr %14, align 8
  %16 = fsub float %13, %15
  %i.gt = load ptr, ptr %i.gh, align 8            ; 10 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1028
  store float 1.000000e+00, ptr %i.gu, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 1048
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 1072
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gv, i8 0, i64 12, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 1040
  store float %i.gq, ptr %i.gw, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 1056
  store float %12, ptr %i.gx, align 4
  store float %16, ptr %.sroa.8.0..sroa_idx.i, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.gy = load i32, ptr %i.du, align 8
  %i.gz = sext i32 %i.gy to i64
  %i.ha = icmp slt i64 %indvars.iv.next161, %i.gz
  br i1 %i.ha, label %bb.w, label %._crit_edge145, !llvm.loop !22

bb.ac:                                            ; preds = %._crit_edge145
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.fv, ptr %i.hb, align 8
  %.not151 = icmp eq i32 %i.fr, 0
  br i1 %.not151, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.ac
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 200
  br label %bb.ae

._crit_edge149:                                   ; preds = %bb.af, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #22
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21MakeLeftHandedProcessE, i64 16), ptr %6, align 8
  invoke void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %2)
          to label %bb.ah unwind label %bb.al

bb.ad:                                            ; preds = %._crit_edge145
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit125

bb.ae:                                            ; preds = %.lr.ph148, %bb.af
  %indvars.iv163 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next164, %bb.af ] ; 3 uses
  %i.he = load ptr, ptr %i.hc, align 8
  %i.hf = getelementptr inbounds nuw [192 x i8], ptr %i.he, i64 %indvars.iv163
  %i.hg = invoke noundef ptr @_ZN6Assimp11MMDImporter14CreateMaterialEPKN3pmx11PmxMaterialEPKNS1_8PmxModelE(ptr nonnull align 8 poison, ptr noundef nonnull %i.hf, ptr noundef nonnull %1)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hh = load ptr, ptr %i.hb, align 8
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv163
  store ptr %i.hg, ptr %i.hi, align 8
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.hj = load i32, ptr %i.fs, align 8
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp samesign ult i64 %indvars.iv.next164, %i.hk
  br i1 %i.hl, label %bb.ae, label %._crit_edge149, !llvm.loop !23

bb.ag:                                            ; preds = %bb.ae
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit125

bb.ah:                                            ; preds = %._crit_edge149
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN6Assimp14FlipUVsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6Assimp14FlipUVsProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %2)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #22
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp23FlipWindingOrderProcessE, i64 16), ptr %8, align 8
  invoke void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %2)
          to label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit unwind label %bb.ao

_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6Assimp14FlipUVsProcessD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit
  ret void

bb.al:                                            ; preds = %._crit_edge149
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %bb.ai
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn94 = phi { ptr, i32 } [ %i.hq, %bb.ao ], [ %i.hp, %bb.an ]
  call void @_ZN6Assimp14FlipUVsProcessD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %bb.ap ], [ %i.ho, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.al
  %.pn94.pn.pn = phi { ptr, i32 } [ %.pn94.pn, %bb.aq ], [ %i.hn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit125

_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit125: ; preds = %bb.u, %bb.v, %bb.ar, %bb.ag, %bb.ad, %bb.y
  %.pn98.pn = phi { ptr, i32 } [ %i.hd, %bb.ad ], [ %i.gd, %bb.y ], [ %i.hm, %bb.ag ], [ %.pn94.pn.pn, %bb.ar ], [ %i.fq, %bb.v ], [ %i.fp, %bb.u ]
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #23
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.n, %bb.e
  %.pn98.pn.pn = phi { ptr, i32 } [ %.pn98.pn, %_ZNSt10unique_ptrIA_P6aiNodeSt14default_deleteIS2_EED2Ev.exit125 ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.da, %bb.n ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  resume { ptr, i32 } %.pn98.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3pmx8PmxModelD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIA_N3pmx11PmxSoftBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b)
  br label %_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.f, 176                   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN3pmx8PmxJointD2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.i = phi ptr [ %i.j, %_ZN3pmx8PmxJointD2Ev.exit.i.i ], [ %i.h, %.preheader.preheader.i.i ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -176 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -144
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -128 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.preheader.i.i
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.preheader.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.q = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 -160 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN3pmx8PmxJointD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZN3pmx8PmxJointD2Ev.exit.i.i

_ZN3pmx8PmxJointD2Ev.exit.i.i:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.v = icmp eq ptr %i.j, %i.d
  br i1 %i.v, label %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZN3pmx8PmxJointD2Ev.exit.i.i, %bb.c
  %i.w = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.e, i64 noundef %i.w) #23
  br label %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N3pmx11PmxSoftBodyESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc504, %bb.ci
  %.sroa.06.0.i501 = phi ptr [ %i.aes, %.noexc504 ], [ %.19.i.i.i.i495, %bb.ci ] ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 40 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.xz, i64 36 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 48 ; 4 uses
  %i.aew = load ptr, ptr %i.aev, align 8          ; 6 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 56 ; 2 uses
  %i.aey = load ptr, ptr %i.aex, align 8
  %.not.i506 = icmp eq ptr %i.aew, %i.aey
  br i1 %.not.i506, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aez = load float, ptr %i.aeu, align 4
  %i.afa = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.afa, ptr %i.aew, align 4
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  store float %i.aez, ptr %i.afb, align 4
  %i.afc = load ptr, ptr %i.aev, align 8
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 8
  store ptr %i.afd, ptr %i.aev, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.cl:                                            ; preds = %bb.cj
  %i.afe = load ptr, ptr %i.aet, align 8          ; 7 uses
  %i.aff = ptrtoint ptr %i.aew to i64             ; 2 uses
  %i.afg = ptrtoint ptr %i.afe to i64             ; 3 uses
  %i.afh = sub i64 %i.aff, %i.afg                 ; 4 uses
  %i.afi = icmp eq i64 %i.afh, 9223372036854775800
  br i1 %i.afi, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507: ; preds = %bb.cl
  %i.afj = ashr exact i64 %i.afh, 3               ; 3 uses
  %.sroa.speculated.i.i.i508 = call i64 @llvm.umax.i64(i64 %i.afj, i64 1)
  %i.afk = add nsw i64 %.sroa.speculated.i.i.i508, %i.afj ; 2 uses
  %i.afl = icmp ult i64 %i.afk, %i.afj
  %i.afm = call i64 @llvm.umin.i64(i64 %i.afk, i64 1152921504606846975)
  %i.afn = select i1 %i.afl, i64 1152921504606846975, i64 %i.afm ; 3 uses
  %.not.i.i.i509 = icmp ne i64 %i.afn, 0
  call void @llvm.assume(i1 %.not.i.i.i509)
  %i.afo = shl nuw nsw i64 %i.afn, 3
  %i.afp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afo) #25
          to label %.noexc520 unwind label %.loopexit575 ; 8 uses

.noexc520:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 %i.afh ; 2 uses
  %i.afr = load float, ptr %i.aeu, align 4
  %i.afs = trunc nuw nsw i64 %indvars.iv705 to i32
  store i32 %i.afs, ptr %i.afq, align 4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 4
  store float %i.afr, ptr %i.aft, align 4
  %.not10.i.i.i.i.i510 = icmp eq ptr %i.afe, %i.aew
  br i1 %.not10.i.i.i.i.i510, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511.preheader

.lr.ph.i.i.i.i.i511.preheader:                    ; preds = %.noexc520
  %i.afu = ptrtoaddr ptr %i.afp to i64
  %i.afv = sub i64 %i.aff, %i.afg
  %i.afw = add i64 %i.afv, -8                     ; 2 uses
  %i.afx = lshr i64 %i.afw, 3
  %i.afy = add nuw nsw i64 %i.afx, 1              ; 2 uses
  %min.iters.check1015 = icmp ult i64 %i.afw, 24
  %i.afz = sub i64 %i.afg, %i.afu
  %diff.check1013 = icmp ugt i64 %i.afz, -32
  %or.cond1095 = or i1 %min.iters.check1015, %diff.check1013
  br i1 %or.cond1095, label %.lr.ph.i.i.i.i.i511.preheader1105, label %vector.ph1016

vector.ph1016:                                    ; preds = %.lr.ph.i.i.i.i.i511.preheader
  %n.vec1018 = and i64 %i.afy, 4611686018427387900 ; 3 uses
  %i.aga = shl i64 %n.vec1018, 3                  ; 2 uses
  %i.agb = getelementptr i8, ptr %i.afp, i64 %i.aga ; 2 uses
  %i.agc = getelementptr i8, ptr %i.afe, i64 %i.aga
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1016
  %index1020 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1025, %vector.body1019 ] ; 2 uses
  %i.agd = shl i64 %index1020, 3                  ; 2 uses
  %next.gep1021 = getelementptr i8, ptr %i.afp, i64 %i.agd ; 2 uses
  %next.gep1022 = getelementptr i8, ptr %i.afe, i64 %i.agd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.age = getelementptr i8, ptr %next.gep1022, i64 16
  %wide.load1023 = load <2 x i64>, ptr %next.gep1022, align 4, !alias.scope !117, !noalias !114
  %wide.load1024 = load <2 x i64>, ptr %i.age, align 4, !alias.scope !117, !noalias !114
  %i.agf = getelementptr i8, ptr %next.gep1021, i64 16
  store <2 x i64> %wide.load1023, ptr %next.gep1021, align 4, !alias.scope !114, !noalias !117
  store <2 x i64> %wide.load1024, ptr %i.agf, align 4, !alias.scope !114, !noalias !117
  %index.next1025 = add nuw i64 %index1020, 4     ; 2 uses
  %i.agg = icmp eq i64 %index.next1025, %n.vec1018
  br i1 %i.agg, label %middle.block1026, label %vector.body1019, !llvm.loop !119

middle.block1026:                                 ; preds = %vector.body1019
  %cmp.n1027 = icmp eq i64 %i.afy, %n.vec1018
  br i1 %cmp.n1027, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511.preheader1105

.lr.ph.i.i.i.i.i511.preheader1105:                ; preds = %.lr.ph.i.i.i.i.i511.preheader, %middle.block1026
  %.012.i.i.i.i.i512.ph = phi ptr [ %i.afp, %.lr.ph.i.i.i.i.i511.preheader ], [ %i.agb, %middle.block1026 ]
  %.0911.i.i.i.i.i513.ph = phi ptr [ %i.afe, %.lr.ph.i.i.i.i.i511.preheader ], [ %i.agc, %middle.block1026 ]
  br label %.lr.ph.i.i.i.i.i511

.lr.ph.i.i.i.i.i511:                              ; preds = %.lr.ph.i.i.i.i.i511.preheader1105, %.lr.ph.i.i.i.i.i511
  %.012.i.i.i.i.i512 = phi ptr [ %i.agj, %.lr.ph.i.i.i.i.i511 ], [ %.012.i.i.i.i.i512.ph, %.lr.ph.i.i.i.i.i511.preheader1105 ] ; 2 uses
  %.0911.i.i.i.i.i513 = phi ptr [ %i.agi, %.lr.ph.i.i.i.i.i511 ], [ %.0911.i.i.i.i.i513.ph, %.lr.ph.i.i.i.i.i511.preheader1105 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.agh = load i64, ptr %.0911.i.i.i.i.i513, align 4, !alias.scope !117, !noalias !114
  store i64 %i.agh, ptr %.012.i.i.i.i.i512, align 4, !alias.scope !114, !noalias !117
  %i.agi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i513, i64 8 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i512, i64 8 ; 2 uses
  %.not.i.i.i.i.i514 = icmp eq ptr %i.agi, %i.aew
  br i1 %.not.i.i.i.i.i514, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511, !llvm.loop !120

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515: ; preds = %.lr.ph.i.i.i.i.i511, %middle.block1026, %.noexc520
  %.0.lcssa.i.i.i.i.i516 = phi ptr [ %i.afp, %.noexc520 ], [ %i.agb, %middle.block1026 ], [ %i.agj, %.lr.ph.i.i.i.i.i511 ]
  %i.agk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i516, i64 8
  %.not.i34.i.i517 = icmp eq ptr %i.afe, null
  br i1 %.not.i34.i.i517, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515
  call void @_ZdlPvm(ptr noundef nonnull %i.afe, i64 noundef %i.afh) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518: ; preds = %bb.cm, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515
  store ptr %i.afp, ptr %i.aet, align 8
  store ptr %i.agk, ptr %i.aev, align 8
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %i.afn
  store ptr %i.agl, ptr %i.aex, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit575:                                     ; preds = %.critedge.i409, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414, %.critedge.i440, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445, %.critedge.i471, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476, %.critedge.i502, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp:                               ; preds = %.invoke836
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518, %bb.ck, %bb.bk, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i332, %bb.ax, %bb.x, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i208, %bb.j, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %.thread571
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %exitcond709.not = icmp eq i64 %indvars.iv.next706, %i.bu
  br i1 %exitcond709.not, label %._crit_edge654, label %bb.c, !llvm.loop !121

bb.cn:                                            ; preds = %._crit_edge654
  %i.agm = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i32 %i.cy, ptr %i.agm, align 8
  store ptr %i.dd, ptr %i.e, align 8
  %i.agn = icmp sgt i32 %i.cy, 0
  br i1 %i.agn, label %.lr.ph660, label %._crit_edge661

.lr.ph660:                                        ; preds = %bb.cn
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.cq

._crit_edge661:                                   ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, %bb.cn
  %i.agp = load ptr, ptr %i.cm, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %i.agp)
          to label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit unwind label %bb.co

bb.co:                                            ; preds = %._crit_edge661
  %i.agq = landingpad { ptr, i32 }
          catch ptr null
  %i.agr = extractvalue { ptr, i32 } %i.agq, 0
  call void @__clang_call_terminate(ptr %i.agr) #26
  unreachable

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit: ; preds = %._crit_edge661
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  ret ptr %i.a

bb.cp:                                            ; preds = %._crit_edge654
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cq:                                            ; preds = %.lr.ph660, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread
  %i.agt = phi i32 [ %i.cy, %.lr.ph660 ], [ %i.aja, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 4 uses
  %indvars.iv713 = phi i64 [ 0, %.lr.ph660 ], [ %indvars.iv.next714, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 5 uses
  %i.agu = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #25
          to label %bb.cr unwind label %bb.cw     ; 16 uses

bb.cr:                                            ; preds = %bb.cq
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.agu, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.agv, align 4
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 1060 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 1076 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agx, align 4
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agu, i64 1080 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agu, i64 1096 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agz, align 4
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 1100 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agu, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aha, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahb, align 4
  %i.ahc = load ptr, ptr %i.ago, align 8
  %i.ahd = getelementptr inbounds nuw [176 x i8], ptr %i.ahc, i64 %indvars.iv713 ; 5 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahf = load i64, ptr %i.ahe, align 8          ; 4 uses
  %i.ahg = icmp ugt i64 %i.ahf, 1023
  br i1 %i.ahg, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ahh = trunc nuw nsw i64 %i.ahf to i32
  store i32 %i.ahh, ptr %i.agu, align 4
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agu, i64 4 ; 2 uses
  %i.ahj = load ptr, ptr %i.ahd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ahi, ptr align 1 %i.ahj, i64 %i.ahf, i1 false)
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahf
  store i8 0, ptr %i.ahk, align 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahd, i64 64
  %i.ahm = load float, ptr %i.ahl, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahd, i64 68
  %31 = load float, ptr %i.ahn, align 4
  %32 = getelementptr inbounds nuw i8, ptr %i.ahd, i64 72
  %33 = load float, ptr %32, align 8
  %i.aho = fneg float %i.ahm
  %34 = fneg float %31
  %35 = fneg float %33
  store float 1.000000e+00, ptr %i.agv, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agx, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agz, align 4
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agu, i64 1104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ahp, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %i.ahb, align 4
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agu, i64 1068
  store float %i.aho, ptr %i.ahq, align 4
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agu, i64 1084
  store float %34, ptr %i.ahr, align 4
  store float %35, ptr %i.aha, align 4
  %i.ahs = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ahs, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ct, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ahs, %bb.ct ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %bb.ct ] ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ahu = load i32, ptr %i.aht, align 4
  %i.ahv = sext i32 %i.ahu to i64
  %i.ahw = icmp sgt i64 %indvars.iv713, %i.ahv    ; 3 uses
  %.19.i.i.i = select i1 %i.ahw, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ahw, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i522 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i522, label %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ahx = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.ahx, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ahw, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ahy = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ahz = sext i32 %i.ahy to i64
  %i.aia = icmp slt i64 %indvars.iv713, %i.ahz
  br i1 %i.aia, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.aib = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.aid = load ptr, ptr %i.aic, align 8
  %i.aie = load ptr, ptr %i.aib, align 8
  %i.aif = ptrtoint ptr %i.aid to i64
  %i.aig = ptrtoint ptr %i.aie to i64
  %i.aih = sub i64 %i.aif, %i.aig
  %i.aii = ashr exact i64 %i.aih, 3               ; 2 uses
  %i.aij = trunc i64 %i.aii to i32                ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.agu, i64 1028 ; 2 uses
  store i32 %i.aij, ptr %i.aik, align 4
  %i.ail = and i64 %i.aii, 4294967295             ; 2 uses
  %i.aim = shl nuw nsw i64 %i.ail, 3              ; 2 uses
  %i.ain = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aim) #25
          to label %bb.cv unwind label %bb.cx     ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.aio = icmp eq i64 %i.ail, 0
  br i1 %i.aio, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.cv
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ain, i8 0, i64 %i.aim, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cv
  %i.aip = getelementptr inbounds nuw i8, ptr %i.agu, i64 1048 ; 2 uses
  store ptr %i.ain, ptr %i.aip, align 8
  %.not = icmp eq i32 %i.aij, 0
  br i1 %.not, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.lr.ph657

bb.cw:                                            ; preds = %bb.cq
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cu
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.lr.ph657:                                        ; preds = %.loopexit, %.lr.ph657
  %indvars.iv710 = phi i64 [ %indvars.iv.next711, %.lr.ph657 ], [ 0, %.loopexit ] ; 3 uses
  %i.ais = load ptr, ptr %i.aib, align 8
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %indvars.iv710
  %i.aiu = load ptr, ptr %i.aip, align 8
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.aiu, i64 %indvars.iv710
  %i.aiw = load i64, ptr %i.ait, align 4
  store i64 %i.aiw, ptr %i.aiv, align 4
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %i.aix = load i32, ptr %i.aik, align 4
  %i.aiy = zext i32 %i.aix to i64
  %i.aiz = icmp samesign ult i64 %indvars.iv.next711, %i.aiy
  br i1 %i.aiz, label %.lr.ph657, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit, !llvm.loop !122

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit: ; preds = %.lr.ph657
  %.pre = load i32, ptr %i.cx, align 8
  br label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit, %.loopexit, %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.ct, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.aja = phi i32 [ %.pre, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit ], [ %i.agt, %.loopexit ], [ %i.agt, %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %i.agt, %bb.ct ], [ %i.agt, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv713
  store ptr %i.agu, ptr %i.ajb, align 8
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %i.ajc = sext i32 %i.aja to i64
  %i.ajd = icmp slt i64 %indvars.iv.next714, %i.ajc
  br i1 %i.ajd, label %bb.cq, label %._crit_edge661, !llvm.loop !123

bb.cy:                                            ; preds = %.loopexit575, %.loopexit.split-lp, %.loopexit581, %.loopexit.split-lp582, %.loopexit586, %.loopexit.split-lp587, %.loopexit591, %.loopexit.split-lp592, %.loopexit576, %.loopexit.split-lp577, %bb.cw, %bb.cx, %bb.cp
  %.pn147.pn = phi { ptr, i32 } [ %i.ags, %bb.cp ], [ %lpad.loopexit.split-lp584, %.loopexit.split-lp582 ], [ %lpad.loopexit.split-lp579, %.loopexit.split-lp577 ], [ %i.air, %bb.cx ], [ %lpad.loopexit.split-lp594, %.loopexit.split-lp592 ], [ %lpad.loopexit.split-lp589, %.loopexit.split-lp587 ], [ %i.aiq, %bb.cw ], [ %lpad.loopexit578, %.loopexit576 ], [ %lpad.loopexit593, %.loopexit591 ], [ %lpad.loopexit588, %.loopexit586 ], [ %lpad.loopexit583, %.loopexit581 ], [ %lpad.loopexit, %.loopexit575 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  resume { ptr, i32 } %.pn147.pn
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp11MMDImporter14CreateMaterialEPKN3pmx11PmxMaterialEPKNS1_8PmxModelE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %4 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %5 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %6 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %7 = alloca %struct.aiString, align 4           ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 11 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.i, i8 0, i64 1024, i1 false)
  %i.j = and i64 %i.g, 4294966272
  %.not.i = icmp eq i64 %i.j, 0
  %spec.select.i = select i1 %.not.i, i32 %i.h, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %3, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = zext i32 %spec.select.i to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 1 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  store i8 0, ptr %i.m, align 1
  %i.n = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load float, ptr %i.p, align 8
  %i.r = load <2 x float>, ptr %i.o, align 8
  store <2 x float> %i.r, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.q, ptr %i.s, align 8
  %i.t = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %4, i32 noundef 12, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load float, ptr %i.v, align 8
  %i.x = load <2 x float>, ptr %i.u, align 8
  store <2 x float> %i.x, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.w, ptr %i.y, align 8
  %i.z = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load float, ptr %i.ab, align 8
  %i.ad = load <2 x float>, ptr %i.aa, align 8
  store <2 x float> %i.ad, ptr %6, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ac, ptr %i.ae, align 8
  %i.af = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %6, i32 noundef 12, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ah = load float, ptr %i.ag, align 4
  store float %i.ah, ptr %i.a, align 4
  %i.ai = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ak = load float, ptr %i.aj, align 4
  store float %i.ak, ptr %i.b, align 4
  %i.al = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = load ptr, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.aw, i8 0, i64 1024, i1 false)
  %i.ax = and i64 %i.au, 4294966272
  %.not.i25 = icmp eq i64 %i.ax, 0
  %spec.select.i26 = select i1 %.not.i25, i32 %i.av, i32 1023 ; 2 uses
  store i32 %spec.select.i26, ptr %7, align 4
  %i.ay = load ptr, ptr %i.as, align 8
  %i.az = zext i32 %spec.select.i26 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 1 %i.ay, i64 %i.az, i1 false)
end_hunk_1
