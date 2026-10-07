Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mesh_boolean?download=true
inline.NumInlined: 2199
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_S5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKSP_IFiiiEERNS3_15PlainObjectBaseIT3_EERNSZ_IT4_EERNSZ_IT5_EE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %18, align 8, !tbaa !86
  call void @free(ptr noundef %i.l) #12
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  %i.m = load i64, ptr %i.a, align 8, !tbaa !31
  %i.n = load i64, ptr %i.c, align 8, !tbaa !31
  %i.o = add nsw i64 %i.n, %i.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %i.o, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader unwind label %bb.c

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit
  %i.p = load i64, ptr %i.f, align 8, !tbaa !84   ; 15 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.preheader63.lr.ph, label %.preheader62

.preheader63.lr.ph:                               ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader
  %i.r = load ptr, ptr %0, align 8, !tbaa !87     ; 5 uses
  %i.s = load ptr, ptr %18, align 8, !tbaa !86    ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !88   ; 6 uses
  %.idx = shl i64 %i.p, 4                         ; 7 uses
  %.idx80 = shl i64 %i.u, 4                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 64
  br i1 %min.iters.check, label %.preheader63.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader63.lr.ph
  %i.v = ptrtoaddr ptr %i.s to i64                ; 7 uses
  %i.w = ptrtoaddr ptr %i.r to i64                ; 7 uses
  %i.x = shl i64 %i.u, 3                          ; 3 uses
  %i.y = add i64 %i.x, -1
  %diff.check = icmp ult i64 %i.y, 31
  %i.z = add i64 %.idx80, -1
  %diff.check83 = icmp ult i64 %i.z, 31
  %conflict.rdx = or i1 %diff.check, %diff.check83
  %i.aa = add i64 %.idx, %i.w
  %i.ab = sub i64 %i.v, %i.aa
  %diff.check84 = icmp ugt i64 %i.ab, -32
  %conflict.rdx85 = or i1 %conflict.rdx, %diff.check84
  %i.ac = shl i64 %i.p, 3                         ; 3 uses
  %i.ad = add i64 %i.ac, %i.w
  %i.ae = sub i64 %i.v, %i.ad
  %diff.check86 = icmp ugt i64 %i.ae, -32
  %conflict.rdx87 = or i1 %conflict.rdx85, %diff.check86
  %i.af = sub i64 %i.w, %i.v
  %diff.check88 = icmp ugt i64 %i.af, -32
  %conflict.rdx89 = or i1 %conflict.rdx87, %diff.check88
  %i.ag = add i64 %.idx, %i.w
  %i.ah = add i64 %i.x, %i.v
  %i.ai = sub i64 %i.ah, %i.ag
  %diff.check90 = icmp ugt i64 %i.ai, -32
  %conflict.rdx91 = or i1 %conflict.rdx89, %diff.check90
  %i.aj = add i64 %i.x, %i.v
  %i.ak = sub i64 %i.aj, %i.w                     ; 2 uses
  %i.al = sub i64 %i.ac, %i.ak
  %diff.check92 = icmp ugt i64 %i.al, -32
  %conflict.rdx93 = or i1 %conflict.rdx91, %diff.check92
  %i.am = add i64 %i.ak, -1
  %diff.check94 = icmp ult i64 %i.am, 31
  %conflict.rdx95 = or i1 %conflict.rdx93, %diff.check94
  %i.an = add i64 %.idx80, %i.v
  %i.ao = sub i64 %i.an, %i.w                     ; 2 uses
  %i.ap = sub i64 %.idx, %i.ao
  %diff.check96 = icmp ugt i64 %i.ap, -32
  %conflict.rdx97 = or i1 %conflict.rdx95, %diff.check96
  %i.aq = sub i64 %i.ac, %i.ao
  %diff.check98 = icmp ugt i64 %i.aq, -32
  %conflict.rdx99 = or i1 %conflict.rdx97, %diff.check98
  %i.ar = add i64 %.idx80, %i.v
  %i.as = sub i64 %i.w, %i.ar
  %diff.check100 = icmp ugt i64 %i.as, -32
  %conflict.rdx101 = or i1 %conflict.rdx99, %diff.check100
  br i1 %conflict.rdx101, label %.preheader63.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr [8 x i8], ptr %i.r, i64 %index ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.av = getelementptr i8, ptr %i.at, i64 16
  %wide.load = load <2 x double>, ptr %i.at, align 8, !tbaa !90
  %wide.load102 = load <2 x double>, ptr %i.av, align 8, !tbaa !90
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  store <2 x double> %wide.load, ptr %i.au, align 8, !tbaa !90
  store <2 x double> %wide.load102, ptr %i.aw, align 8, !tbaa !90
  %i.ax = getelementptr [8 x i8], ptr %i.at, i64 %i.p ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %wide.load103 = load <2 x double>, ptr %i.ax, align 8, !tbaa !90
  %wide.load104 = load <2 x double>, ptr %i.ay, align 8, !tbaa !90
  %i.az = getelementptr [8 x i8], ptr %i.au, i64 %i.u ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store <2 x double> %wide.load103, ptr %i.az, align 8, !tbaa !90
  store <2 x double> %wide.load104, ptr %i.ba, align 8, !tbaa !90
  %i.bb = getelementptr i8, ptr %i.at, i64 %.idx  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %wide.load105 = load <2 x double>, ptr %i.bb, align 8, !tbaa !90
  %wide.load106 = load <2 x double>, ptr %i.bc, align 8, !tbaa !90
  %i.bd = getelementptr i8, ptr %i.au, i64 %.idx80 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store <2 x double> %wide.load105, ptr %i.bd, align 8, !tbaa !90
  store <2 x double> %wide.load106, ptr %i.be, align 8, !tbaa !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.preheader62, label %.preheader63.preheader

.preheader63.preheader:                           ; preds = %vector.memcheck, %.preheader63.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader63.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader63.prol.loopexit, label %.preheader63.prol

.preheader63.prol:                                ; preds = %.preheader63.preheader
  %i.bg = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.ph ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv.ph ; 3 uses
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !90
  store double %i.bi, ptr %i.bh, align 8, !tbaa !90
  %i.bj = getelementptr [8 x i8], ptr %i.bg, i64 %i.p
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !90
  %i.bl = getelementptr [8 x i8], ptr %i.bh, i64 %i.u
  store double %i.bk, ptr %i.bl, align 8, !tbaa !90
  %i.bm = getelementptr i8, ptr %i.bg, i64 %.idx
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !90
  %i.bo = getelementptr i8, ptr %i.bh, i64 %.idx80
  store double %i.bn, ptr %i.bo, align 8, !tbaa !90
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.preheader63.prol.loopexit

.preheader63.prol.loopexit:                       ; preds = %.preheader63.prol, %.preheader63.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader63.preheader ], [ %indvars.iv.next.prol, %.preheader63.prol ]
  %i.bp = icmp eq i64 %i.p, %.neg
  br i1 %i.bp, label %.preheader62, label %.preheader63

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader63:                                     ; preds = %.preheader63.prol.loopexit, %.preheader63
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader63 ], [ %indvars.iv.unr, %.preheader63.prol.loopexit ] ; 4 uses
  %i.br = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.bt = load double, ptr %i.br, align 8, !tbaa !90
  store double %i.bt, ptr %i.bs, align 8, !tbaa !90
  %i.bu = getelementptr [8 x i8], ptr %i.br, i64 %i.p
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !90
  %i.bw = getelementptr [8 x i8], ptr %i.bs, i64 %i.u
  store double %i.bv, ptr %i.bw, align 8, !tbaa !90
  %i.bx = getelementptr i8, ptr %i.br, i64 %.idx
  %i.by = load double, ptr %i.bx, align 8, !tbaa !90
  %i.bz = getelementptr i8, ptr %i.bs, i64 %.idx80
  store double %i.by, ptr %i.bz, align 8, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv.next ; 3 uses
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !90
  store double %i.cc, ptr %i.cb, align 8, !tbaa !90
  %i.cd = getelementptr [8 x i8], ptr %i.ca, i64 %i.p
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !90
  %i.cf = getelementptr [8 x i8], ptr %i.cb, i64 %i.u
  store double %i.ce, ptr %i.cf, align 8, !tbaa !90
  %i.cg = getelementptr i8, ptr %i.ca, i64 %.idx
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !90
  %i.ci = getelementptr i8, ptr %i.cb, i64 %.idx80
  store double %i.ch, ptr %i.ci, align 8, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.p
  br i1 %exitcond.not.1, label %.preheader62, label %.preheader63, !llvm.loop !203

.preheader62:                                     ; preds = %.preheader63.prol.loopexit, %.preheader63, %middle.block, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2IliEERKT_RKT0_.exit.preheader
  %i.cj = load i64, ptr %i.h, align 8, !tbaa !84  ; 13 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader62
  %i.cl = load ptr, ptr %2, align 8, !tbaa !87    ; 5 uses
  %i.cm = load ptr, ptr %18, align 8, !tbaa !86   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !88 ; 6 uses
  %i.cp = getelementptr [8 x i8], ptr %i.cm, i64 %i.p ; 4 uses
  %.idx81 = shl i64 %i.cj, 4                      ; 7 uses
  %.idx82 = shl i64 %i.co, 4                      ; 8 uses
  %min.iters.check130 = icmp ult i64 %i.cj, 80
  br i1 %min.iters.check130, label %.preheader.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %.preheader.lr.ph
  %i.cq = ptrtoaddr ptr %i.cm to i64              ; 8 uses
  %i.cr = ptrtoaddr ptr %i.cl to i64              ; 9 uses
  %i.cs = shl i64 %i.co, 3                        ; 4 uses
  %i.ct = add i64 %i.cs, -1
  %diff.check108 = icmp ult i64 %i.ct, 31
  %i.cu = add i64 %.idx82, -1
  %diff.check109 = icmp ult i64 %i.cu, 31
  %conflict.rdx110 = or i1 %diff.check108, %diff.check109
  %i.cv = add i64 %.idx81, %i.cr
  %i.cw = shl i64 %i.p, 3                         ; 8 uses
  %i.cx = add i64 %i.cw, %i.cq
  %i.cy = sub i64 %i.cx, %i.cv
  %diff.check111 = icmp ugt i64 %i.cy, -32
  %conflict.rdx112 = or i1 %conflict.rdx110, %diff.check111
  %i.cz = shl i64 %i.cj, 3                        ; 3 uses
  %i.da = add i64 %i.cz, %i.cr
  %i.db = add i64 %i.cw, %i.cq
  %i.dc = sub i64 %i.db, %i.da
  %diff.check113 = icmp ugt i64 %i.dc, -32
  %conflict.rdx114 = or i1 %conflict.rdx112, %diff.check113
  %i.dd = add i64 %i.cw, %i.cq                    ; 2 uses
  %i.de = sub i64 %i.cr, %i.dd
  %diff.check115 = icmp ugt i64 %i.de, -32
  %conflict.rdx116 = or i1 %conflict.rdx114, %diff.check115
  %i.df = add i64 %.idx81, %i.cr
  %i.dg = add i64 %i.dd, %i.cs
  %i.dh = sub i64 %i.dg, %i.df
  %diff.check117 = icmp ugt i64 %i.dh, -32
  %conflict.rdx118 = or i1 %conflict.rdx116, %diff.check117
  %22 = add i64 %i.cw, %i.cq
  %23 = add i64 %22, %i.cs
  %i.di = add i64 %i.cz, %i.cr
  %i.dj = sub i64 %i.di, %23
  %diff.check119 = icmp ugt i64 %i.dj, -32
  %conflict.rdx120 = or i1 %conflict.rdx118, %diff.check119
  %i.dk = add i64 %i.cw, %i.cq
  %i.dl = add i64 %i.dk, %i.cs
  %i.dm = sub i64 %i.cr, %i.dl
  %diff.check121 = icmp ugt i64 %i.dm, -32
  %conflict.rdx122 = or i1 %conflict.rdx120, %diff.check121
  %i.dn = add i64 %.idx82, %i.cq
  %i.do = add i64 %i.dn, %i.cw
  %i.dp = add i64 %.idx81, %i.cr
  %i.dq = sub i64 %i.dp, %i.do
  %diff.check123 = icmp ugt i64 %i.dq, -32
  %conflict.rdx124 = or i1 %conflict.rdx122, %diff.check123
  %i.dr = add i64 %.idx82, %i.cq
  %i.ds = add i64 %i.dr, %i.cw
  %i.dt = add i64 %i.cz, %i.cr
  %i.du = sub i64 %i.dt, %i.ds
  %diff.check125 = icmp ugt i64 %i.du, -32
  %conflict.rdx126 = or i1 %conflict.rdx124, %diff.check125
  %i.dv = add i64 %.idx82, %i.cq
  %i.dw = add i64 %i.dv, %i.cw
  %i.dx = sub i64 %i.cr, %i.dw
  %diff.check127 = icmp ugt i64 %i.dx, -32
  %conflict.rdx128 = or i1 %conflict.rdx126, %diff.check127
  br i1 %conflict.rdx128, label %.preheader.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %vector.memcheck107
  %n.vec132 = and i64 %i.cj, 9223372036854775804  ; 3 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next141, %vector.body133 ] ; 3 uses
  %i.dy = getelementptr [8 x i8], ptr %i.cl, i64 %index134 ; 4 uses
  %i.dz = getelementptr [8 x i8], ptr %i.cp, i64 %index134 ; 4 uses
  %i.ea = getelementptr i8, ptr %i.dy, i64 16
  %wide.load135 = load <2 x double>, ptr %i.dy, align 8, !tbaa !90
  %wide.load136 = load <2 x double>, ptr %i.ea, align 8, !tbaa !90
  %i.eb = getelementptr i8, ptr %i.dz, i64 16
  store <2 x double> %wide.load135, ptr %i.dz, align 8, !tbaa !90
  store <2 x double> %wide.load136, ptr %i.eb, align 8, !tbaa !90
  %i.ec = getelementptr [8 x i8], ptr %i.dy, i64 %i.cj ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %wide.load137 = load <2 x double>, ptr %i.ec, align 8, !tbaa !90
  %wide.load138 = load <2 x double>, ptr %i.ed, align 8, !tbaa !90
  %i.ee = getelementptr [8 x i8], ptr %i.dz, i64 %i.co ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  store <2 x double> %wide.load137, ptr %i.ee, align 8, !tbaa !90
  store <2 x double> %wide.load138, ptr %i.ef, align 8, !tbaa !90
  %i.eg = getelementptr i8, ptr %i.dy, i64 %.idx81 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %wide.load139 = load <2 x double>, ptr %i.eg, align 8, !tbaa !90
  %wide.load140 = load <2 x double>, ptr %i.eh, align 8, !tbaa !90
  %i.ei = getelementptr i8, ptr %i.dz, i64 %.idx82 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  store <2 x double> %wide.load139, ptr %i.ei, align 8, !tbaa !90
  store <2 x double> %wide.load140, ptr %i.ej, align 8, !tbaa !90
  %index.next141 = add nuw i64 %index134, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next141, %n.vec132
  br i1 %i.ek, label %middle.block142, label %vector.body133, !llvm.loop !204

middle.block142:                                  ; preds = %vector.body133
  %cmp.n143 = icmp eq i64 %i.cj, %n.vec132
  br i1 %cmp.n143, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck107, %.preheader.lr.ph, %middle.block142
  %indvars.iv74.ph = phi i64 [ 0, %vector.memcheck107 ], [ 0, %.preheader.lr.ph ], [ %n.vec132, %middle.block142 ] ; 5 uses
  %.neg147 = or disjoint i64 %indvars.iv74.ph, 1
  %xtraiter145 = and i64 %i.cj, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.el = getelementptr [8 x i8], ptr %i.cl, i64 %indvars.iv74.ph ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.cp, i64 %indvars.iv74.ph ; 3 uses
  %i.en = load double, ptr %i.el, align 8, !tbaa !90
  store double %i.en, ptr %i.em, align 8, !tbaa !90
  %i.eo = getelementptr [8 x i8], ptr %i.el, i64 %i.cj
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !90
  %i.eq = getelementptr [8 x i8], ptr %i.em, i64 %i.co
  store double %i.ep, ptr %i.eq, align 8, !tbaa !90
  %i.er = getelementptr i8, ptr %i.el, i64 %.idx81
  %i.es = load double, ptr %i.er, align 8, !tbaa !90
  %i.et = getelementptr i8, ptr %i.em, i64 %.idx82
  store double %i.es, ptr %i.et, align 8, !tbaa !90
  %indvars.iv.next75.prol = or disjoint i64 %indvars.iv74.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.preheader.preheader ], [ %indvars.iv.next75.prol, %.preheader.prol ]
  %i.eu = icmp eq i64 %i.cj, %.neg147
  br i1 %i.eu, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.1, %.preheader ], [ %indvars.iv74.unr, %.preheader.prol.loopexit ] ; 4 uses
  %i.ev = getelementptr [8 x i8], ptr %i.cl, i64 %indvars.iv74 ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %i.cp, i64 %indvars.iv74 ; 3 uses
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !90
  store double %i.ex, ptr %i.ew, align 8, !tbaa !90
  %i.ey = getelementptr [8 x i8], ptr %i.ev, i64 %i.cj
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !90
  %i.fa = getelementptr [8 x i8], ptr %i.ew, i64 %i.co
  store double %i.ez, ptr %i.fa, align 8, !tbaa !90
  %i.fb = getelementptr i8, ptr %i.ev, i64 %.idx81
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !90
  %i.fd = getelementptr i8, ptr %i.ew, i64 %.idx82
  store double %i.fc, ptr %i.fd, align 8, !tbaa !90
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %i.cl, i64 %indvars.iv.next75 ; 3 uses
  %i.ff = getelementptr [8 x i8], ptr %i.cp, i64 %indvars.iv.next75 ; 3 uses
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !90
  store double %i.fg, ptr %i.ff, align 8, !tbaa !90
  %i.fh = getelementptr [8 x i8], ptr %i.fe, i64 %i.cj
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !90
  %i.fj = getelementptr [8 x i8], ptr %i.ff, i64 %i.co
  store double %i.fi, ptr %i.fj, align 8, !tbaa !90
  %i.fk = getelementptr i8, ptr %i.fe, i64 %.idx81
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !90
  %i.fm = getelementptr i8, ptr %i.ff, i64 %.idx82
  store double %i.fl, ptr %i.fm, align 8, !tbaa !90
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %exitcond77.not.1 = icmp eq i64 %indvars.iv.next75.1, %i.cj
  br i1 %exitcond77.not.1, label %._crit_edge, label %.preheader, !llvm.loop !205

._crit_edge:                                      ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block142, %.preheader62
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.fo = load ptr, ptr %19, align 8, !tbaa !52, !noalias !210 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !53, !noalias !210 ; 2 uses
  store ptr %i.fo, ptr %20, align 8, !tbaa !56, !alias.scope !210
  %i.fr = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.fn, ptr %i.fr, align 8, !tbaa !57, !alias.scope !210
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 3, ptr %i.fs, align 8, !tbaa !57, !alias.scope !210
  %i.ft = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %19, ptr %i.ft, align 8, !tbaa !59, !alias.scope !210
  %i.fu = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %20, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i8 0, i64 16, i1 false)
  store i64 %i.fq, ptr %i.fv, align 8, !tbaa !62, !alias.scope !210
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.fw = load ptr, ptr %1, align 8, !tbaa !63
  store ptr %i.fw, ptr %13, align 8, !tbaa !65
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.fn, ptr %i.fx, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  store ptr %i.fo, ptr %14, align 8, !tbaa !69
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.fq, ptr %i.fy, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  store ptr %14, ptr %15, align 8, !tbaa !71
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %13, ptr %i.fz, align 8, !tbaa !73
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %16, ptr %i.ga, align 8, !tbaa !75
  %i.gb = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %20, ptr %i.gb, align 8, !tbaa !77
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELin1ELin1ELb0EEEEENS3_INS5_IiLin1ELin1ELi0ELin1ELin1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  %i.gc = load i64, ptr %i.c, align 8, !tbaa !31  ; 3 uses
  %i.gd = icmp sgt i64 %i.gc, 0
  br i1 %i.gd, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ge = load i64, ptr %i.f, align 8, !tbaa !84
  %i.gf = trunc i64 %i.ge to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.gh = load ptr, ptr %19, align 8, !tbaa !52, !noalias !211
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gg ; 2 uses
  %i.gj = load i64, ptr %i.fp, align 8, !tbaa !53, !noalias !211 ; 2 uses
  store ptr %i.gi, ptr %21, align 8, !tbaa !56, !alias.scope !211
  %i.gk = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.gc, ptr %i.gk, align 8, !tbaa !57, !alias.scope !211
  %i.gl = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 3, ptr %i.gl, align 8, !tbaa !57, !alias.scope !211
  %i.gm = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %19, ptr %i.gm, align 8, !tbaa !59, !alias.scope !211
  %i.gn = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i64 %i.gg, ptr %i.gn, align 8, !tbaa !57, !alias.scope !211
  %i.go = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i64 0, ptr %i.go, align 8, !tbaa !57, !alias.scope !211
  %i.gp = getelementptr inbounds nuw i8, ptr %21, i64 48
  store i64 %i.gj, ptr %i.gp, align 8, !tbaa !62, !alias.scope !211
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gr = load ptr, ptr %3, align 8, !tbaa !63
  store ptr %i.gr, ptr %i.gq, align 8, !tbaa !65
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.gc, ptr %i.gs, align 8, !tbaa !66
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %i.gf, ptr %i.gt, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
end_hunk_0
