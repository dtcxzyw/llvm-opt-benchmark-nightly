Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Maps?download=true
inline.NumInlined: 2144
inline.NumDeleted: 479
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEvEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISG_ESO_:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEvEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISG_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !41
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEvEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISG_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEvEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISG_E.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 72) #30
  %i.v = load i64, ptr %i.m, align 8, !tbaa !55
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.m, align 8, !tbaa !55
  %.not = icmp eq ptr %i.n, %2
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !713

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEvEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISG_E.exit, %.critedge, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFSt10shared_ptrIN7openvdb5v13_04math7MapBaseEEvEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE5clearEv.exit
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math13mat3_internal5pivotIdEEviiRNS1_4Mat3IT_EERNS1_4Vec3IS5_EES7_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = mul nsw i32 %0, 3                        ; 3 uses
  %i.b = add nsw i32 %i.a, %1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !19 ; 4 uses
  %i.f = sext i32 %1 to i64                       ; 13 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %3, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !19
  %i.i = sext i32 %0 to i64                       ; 6 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %3, i64 %i.i ; 3 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !19
  %i.l = fsub double %i.h, %i.k                   ; 3 uses
  %i.m = tail call noundef double @llvm.fabs.f64(double %i.l)
  %i.n = fmul double %i.m, f0x3D06849B86A12B9C
  %i.o = tail call noundef double @llvm.fabs.f64(double %i.e)
  %i.p = fcmp ogt double %i.n, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = fdiv double %i.e, %i.l
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.r = fmul double %i.l, 5.000000e-01
  %i.s = fdiv double %i.r, %i.e                   ; 5 uses
  %i.t = fcmp olt double %i.s, 0.000000e+00
  %i.u = tail call double @llvm.fmuladd.f64(double %i.s, double %i.s, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.u) ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = fsub double %sqrt, %i.s
  %i.w = fdiv double -1.000000e+00, %i.v
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = fadd double %i.s, %sqrt
  %i.y = fdiv double 1.000000e+00, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0135 = phi double [ %i.q, %bb.b ], [ %i.w, %bb.d ], [ %i.y, %bb.e ] ; 4 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %.0135, double %.0135, double 1.000000e+00)
  %sqrt143 = tail call double @llvm.sqrt.f64(double %i.z)
  %i.aa = fdiv double 1.000000e+00, %sqrt143      ; 15 uses
  %i.ab = fmul double %.0135, %i.aa               ; 14 uses
  %i.ac = fmul double %i.e, %.0135                ; 2 uses
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !19
  %i.ad = load double, ptr %i.j, align 8, !tbaa !19
  %i.ae = fsub double %i.ad, %i.ac
  store double %i.ae, ptr %i.j, align 8, !tbaa !19
  %i.af = load double, ptr %i.g, align 8, !tbaa !19
  %i.ag = fadd double %i.ac, %i.af
  store double %i.ag, ptr %i.g, align 8, !tbaa !19
  %i.ah = icmp sgt i32 %0, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %.preheader145

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %0 to i64      ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.i ; 4 uses
  %invariant.gep169 = getelementptr [8 x i8], ptr %2, i64 %i.f ; 4 uses
  %min.iters.check = icmp ult i32 %0, 23
  br i1 %min.iters.check, label %.lr.ph.preheader208, label %vector.memcheck

.lr.ph.preheader208:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ai = mul nuw nsw i64 %wide.trip.count, 24    ; 2 uses
  %i.aj = shl nuw nsw i64 %i.i, 3
  %i.ak = getelementptr i8, ptr %2, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.al, i64 -16
  %i.an = shl nsw i64 %i.f, 3
  %i.ao = getelementptr i8, ptr %2, i64 %i.ai
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.an
  %i.aq = getelementptr i8, ptr %i.ap, i64 -16
  %bound0 = icmp ult ptr %invariant.gep, %i.aq
  %bound1 = icmp ult ptr %invariant.gep169, %i.am
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader208, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ab, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert180 = insertelement <2 x double> poison, double %i.aa, i64 0
  %broadcast.splat181 = shufflevector <2 x double> %broadcast.splatinsert180, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = mul nuw nsw i64 %index, 3               ; 2 uses
  %i.as = mul nuw i64 %index, 3
  %i.at = add nuw i64 %i.as, 3                    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ar ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.at ; 2 uses
  %i.aw = load double, ptr %i.au, align 8, !tbaa !19, !alias.scope !725, !noalias !726
  %i.ax = load double, ptr %i.av, align 8, !tbaa !19, !alias.scope !725, !noalias !726
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1 ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %invariant.gep169, i64 %i.ar ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %invariant.gep169, i64 %i.at ; 3 uses
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !19, !alias.scope !726
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !19, !alias.scope !726
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1
  %i.bg = fneg <2 x double> %i.bf
  %i.bh = fmul <2 x double> %broadcast.splat, %i.bg
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat181, <2 x double> %i.az, <2 x double> %i.bh) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  store double %i.bj, ptr %i.au, align 8, !tbaa !19, !alias.scope !725, !noalias !726
  %i.bk = extractelement <2 x double> %i.bi, i64 1
  store double %i.bk, ptr %i.av, align 8, !tbaa !19, !alias.scope !725, !noalias !726
  %i.bl = load double, ptr %i.ba, align 8, !tbaa !19, !alias.scope !726
  %i.bm = load double, ptr %i.bb, align 8, !tbaa !19, !alias.scope !726
  %i.bn = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1
  %i.bp = fmul <2 x double> %broadcast.splat181, %i.bo
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.az, <2 x double> %i.bp) ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  store double %i.br, ptr %i.ba, align 8, !tbaa !19, !alias.scope !726
  %i.bs = extractelement <2 x double> %i.bq, i64 1
  store double %i.bs, ptr %i.bb, align 8, !tbaa !19, !alias.scope !726
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %.lr.ph.preheader208, label %vector.body, !llvm.loop !717

.preheader145:                                    ; preds = %.lr.ph, %bb.f
  %.0133147 = add nsw i32 %0, 1                   ; 2 uses
  %i.bu = icmp slt i32 %.0133147, %1
  br i1 %i.bu, label %.lr.ph149.preheader, label %.preheader144

.lr.ph149.preheader:                              ; preds = %.preheader145
  %i.bv = sext i32 %.0133147 to i64
  %i.bw = sext i32 %i.a to i64
  %invariant.gep171 = getelementptr [8 x i8], ptr %2, i64 %i.bw
  %invariant.gep173 = getelementptr [8 x i8], ptr %2, i64 %i.f
  br label %.lr.ph149

.lr.ph:                                           ; preds = %.lr.ph.preheader208, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader208 ] ; 2 uses
  %i.bx = mul nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bx ; 2 uses
  %i.by = load double, ptr %gep, align 8, !tbaa !19 ; 2 uses
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %i.bx ; 3 uses
  %i.bz = load double, ptr %gep170, align 8, !tbaa !19
  %i.ca = fneg double %i.bz
  %i.cb = fmul double %i.ab, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.by, double %i.cb)
  store double %i.cc, ptr %gep, align 8, !tbaa !19
  %i.cd = load double, ptr %gep170, align 8, !tbaa !19
  %i.ce = fmul double %i.aa, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.by, double %i.ce)
  store double %i.cf, ptr %gep170, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader145, label %.lr.ph, !llvm.loop !718

.preheader144:                                    ; preds = %.lr.ph149, %.preheader145
  %i.cg = icmp slt i32 %1, 2
  br i1 %i.cg, label %.lr.ph151, label %.preheader

.lr.ph151:                                        ; preds = %.preheader144
  %i.ch = mul nsw i32 %1, 3
  %i.ci = sext i32 %i.a to i64                    ; 2 uses
  %i.cj = sext i32 %i.ch to i64                   ; 2 uses
  %invariant.gep175 = getelementptr [8 x i8], ptr %2, i64 %i.ci ; 2 uses
  %invariant.gep177 = getelementptr [8 x i8], ptr %2, i64 %i.cj ; 2 uses
  %i.ck = sub nsw i64 2, %i.f                     ; 3 uses
  %min.iters.check190 = icmp ult i64 %i.ck, 6
  br i1 %min.iters.check190, label %scalar.ph189.preheader, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph151
  %i.cl = shl nsw i64 %i.f, 3                     ; 2 uses
  %i.cm = shl nsw i64 %i.ci, 3                    ; 2 uses
  %i.cn = getelementptr i8, ptr %2, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %i.cq = getelementptr i8, ptr %2, i64 %i.cm
  %i.cr = getelementptr i8, ptr %i.cq, i64 24
  %i.cs = shl nsw i64 %i.cj, 3                    ; 2 uses
  %i.ct = getelementptr i8, ptr %2, i64 %i.cl
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cs
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %i.cw = getelementptr i8, ptr %2, i64 %i.cs
  %i.cx = getelementptr i8, ptr %i.cw, i64 24
  %bound0192 = icmp ult ptr %i.cp, %i.cx
  %bound1193 = icmp ult ptr %i.cv, %i.cr
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %scalar.ph189.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck191
  %n.vec196 = and i64 %i.ck, -2                   ; 3 uses
  %i.cy = add nsw i64 %n.vec196, %i.f
  %broadcast.splatinsert197 = insertelement <2 x double> poison, double %i.ab, i64 0
  %broadcast.splat198 = shufflevector <2 x double> %broadcast.splatinsert197, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert199 = insertelement <2 x double> poison, double %i.aa, i64 0
  %broadcast.splat200 = shufflevector <2 x double> %broadcast.splatinsert199, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add i64 %i.f, 1
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph195
  %index202 = phi i64 [ 0, %vector.ph195 ], [ %index.next205, %vector.body201 ] ; 2 uses
  %.reass = add i64 %index202, %invariant.op      ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %invariant.gep175, i64 %.reass ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cz, align 8, !tbaa !19, !alias.scope !729, !noalias !730 ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %invariant.gep177, i64 %.reass ; 2 uses
  %wide.load203 = load <2 x double>, ptr %i.da, align 8, !tbaa !19, !alias.scope !730 ; 2 uses
  %i.db = fneg <2 x double> %wide.load203
  %i.dc = fmul <2 x double> %broadcast.splat198, %i.db
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat200, <2 x double> %wide.load, <2 x double> %i.dc)
  store <2 x double> %i.dd, ptr %i.cz, align 8, !tbaa !19, !alias.scope !729, !noalias !730
  %i.de = fmul <2 x double> %broadcast.splat200, %wide.load203
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat198, <2 x double> %wide.load, <2 x double> %i.de)
  store <2 x double> %i.df, ptr %i.da, align 8, !tbaa !19, !alias.scope !730
  %index.next205 = add nuw i64 %index202, 2       ; 2 uses
  %i.dg = icmp eq i64 %index.next205, %n.vec196
  br i1 %i.dg, label %middle.block206, label %vector.body201, !llvm.loop !722

middle.block206:                                  ; preds = %vector.body201
  %cmp.n = icmp eq i64 %i.ck, %n.vec196
  br i1 %cmp.n, label %.preheader, label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %vector.memcheck191, %.lr.ph151, %middle.block206
  %indvars.iv158.ph = phi i64 [ %i.f, %vector.memcheck191 ], [ %i.f, %.lr.ph151 ], [ %i.cy, %middle.block206 ]
  br label %scalar.ph189

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.lr.ph149
  %indvars.iv154 = phi i64 [ %i.bv, %.lr.ph149.preheader ], [ %indvars.iv.next155, %.lr.ph149 ] ; 3 uses
  %gep172 = getelementptr [8 x i8], ptr %invariant.gep171, i64 %indvars.iv154 ; 2 uses
  %i.dh = load double, ptr %gep172, align 8, !tbaa !19 ; 2 uses
  %.idx = mul i64 %indvars.iv154, 24
  %gep174 = getelementptr i8, ptr %invariant.gep173, i64 %.idx ; 3 uses
  %i.di = load double, ptr %gep174, align 8, !tbaa !19
  %i.dj = fneg double %i.di
  %i.dk = fmul double %i.ab, %i.dj
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.dh, double %i.dk)
  store double %i.dl, ptr %gep172, align 8, !tbaa !19
  %i.dm = load double, ptr %gep174, align 8, !tbaa !19
  %i.dn = fmul double %i.aa, %i.dm
  %i.do = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.dh, double %i.dn)
  store double %i.do, ptr %gep174, align 8, !tbaa !19
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next155 to i32
  %exitcond157.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond157.not, label %.preheader144, label %.lr.ph149, !llvm.loop !723

.preheader:                                       ; preds = %scalar.ph189, %middle.block206, %.preheader144
  %i.dp = getelementptr inbounds [8 x i8], ptr %4, i64 %i.i ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !19 ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.f ; 3 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = fneg double %i.ds
  %i.du = fmul double %i.ab, %i.dt
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.dq, double %i.du)
  store double %i.dv, ptr %i.dp, align 8, !tbaa !19
  %i.dw = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dx = fmul double %i.aa, %i.dw
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.dq, double %i.dx)
  store double %i.dy, ptr %i.dr, align 8, !tbaa !19
  %i.dz = getelementptr [8 x i8], ptr %4, i64 %i.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 24     ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !19 ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %4, i64 %i.f
  %i.ed = getelementptr i8, ptr %i.ec, i64 24     ; 3 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !19
  %i.ef = fneg double %i.ee
  %i.eg = fmul double %i.ab, %i.ef
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.eb, double %i.eg)
  store double %i.eh, ptr %i.ea, align 8, !tbaa !19
  %i.ei = load double, ptr %i.ed, align 8, !tbaa !19
  %i.ej = fmul double %i.aa, %i.ei
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.eb, double %i.ej)
  store double %i.ek, ptr %i.ed, align 8, !tbaa !19
  %i.el = getelementptr [8 x i8], ptr %4, i64 %i.i
  %i.em = getelementptr i8, ptr %i.el, i64 48     ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !19 ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %4, i64 %i.f
  %i.ep = getelementptr i8, ptr %i.eo, i64 48     ; 3 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !19
  %i.er = fneg double %i.eq
  %i.es = fmul double %i.ab, %i.er
  %i.et = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.en, double %i.es)
  store double %i.et, ptr %i.em, align 8, !tbaa !19
  %i.eu = load double, ptr %i.ep, align 8, !tbaa !19
  %i.ev = fmul double %i.aa, %i.eu
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.en, double %i.ev)
  store double %i.ew, ptr %i.ep, align 8, !tbaa !19
  ret void

scalar.ph189:                                     ; preds = %scalar.ph189.preheader, %scalar.ph189
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %scalar.ph189 ], [ %indvars.iv158.ph, %scalar.ph189.preheader ]
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, 1 ; 4 uses
  %gep176 = getelementptr [8 x i8], ptr %invariant.gep175, i64 %indvars.iv.next159 ; 2 uses
  %i.ex = load double, ptr %gep176, align 8, !tbaa !19 ; 2 uses
  %gep178 = getelementptr [8 x i8], ptr %invariant.gep177, i64 %indvars.iv.next159 ; 3 uses
  %i.ey = load double, ptr %gep178, align 8, !tbaa !19
  %i.ez = fneg double %i.ey
  %i.fa = fmul double %i.ab, %i.ez
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ex, double %i.fa)
  store double %i.fb, ptr %gep176, align 8, !tbaa !19
  %i.fc = load double, ptr %gep178, align 8, !tbaa !19
  %i.fd = fmul double %i.aa, %i.fc
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ex, double %i.fd)
  store double %i.fe, ptr %gep178, align 8, !tbaa !19
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, 2
  br i1 %exitcond161.not, label %.preheader, label %scalar.ph189, !llvm.loop !724
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11CompoundMapINS1_10UnitaryMapENS1_8ScaleMapEE18updateAffineMatrixEv(ptr noundef nonnull align 8 dereferenceable(888) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.17", align 8 ; 7 uses
  %2 = alloca %"class.std::shared_ptr.17", align 8 ; 7 uses
  %3 = alloca %"class.openvdb::v13_0::math::AffineMap", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZNK7openvdb5v13_04math10UnitaryMap12getAffineMapEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.17") align 8 %1, ptr noundef nonnull align 8 dereferenceable(384) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  invoke void @_ZNK7openvdb5v13_04math8ScaleMap12getAffineMapEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.17") align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = load ptr, ptr %2, align 8, !tbaa !94     ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math9AffineMapE, i64 16), ptr %3, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.n = load <2 x double>, ptr %i.f, align 8, !tbaa !19 ; 4 uses
  %i.o = load <2 x double>, ptr %i.g, align 8, !tbaa !19 ; 4 uses
  %i.p = load <2 x double>, ptr %i.h, align 8, !tbaa !19 ; 4 uses
  %i.q = load <2 x double>, ptr %i.i, align 8, !tbaa !19 ; 4 uses
  %i.r = load <2 x double>, ptr %i.d, align 8
  %i.s = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.t = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.u = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.v = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = fmul <2 x double> %i.v, %i.o
  %i.x = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.n, <2 x double> %i.w)
  %i.z = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.p, <2 x double> %i.y)
  %i.ab = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.q, <2 x double> %i.aa)
  store <2 x double> %i.ac, ptr %i.d, align 8, !tbaa !19
  %i.ad = load <2 x double>, ptr %i.j, align 8, !tbaa !19 ; 4 uses
  %i.ae = load <2 x double>, ptr %i.k, align 8, !tbaa !19 ; 4 uses
  %i.af = fmul <2 x double> %i.v, %i.ae
  %i.ag = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ad, <2 x double> %i.af)
  %i.ah = load <2 x double>, ptr %i.l, align 8, !tbaa !19 ; 4 uses
  %i.ai = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.ah, <2 x double> %i.ag)
  %i.aj = load <2 x double>, ptr %i.m, align 8, !tbaa !19 ; 4 uses
  %i.ak = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.aj, <2 x double> %i.ai)
  store <2 x double> %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !19
  %i.al = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.am = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.an = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.ao = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i, align 8
  %i.ap = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = fmul <2 x double> %i.ap, %i.o
  %i.ar = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.n, <2 x double> %i.aq)
  %i.at = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.p, <2 x double> %i.as)
  %i.av = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.q, <2 x double> %i.au)
  store <2 x double> %i.aw, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !19
  %i.ax = fmul <2 x double> %i.ap, %i.ae
  %i.ay = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ad, <2 x double> %i.ax)
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.ah, <2 x double> %i.ay)
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.aj, <2 x double> %i.az)
  store <2 x double> %i.ba, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !19
  %i.bb = load <2 x double>, ptr %.sroa.11.0..sroa_idx.i, align 8
  %i.bc = load <2 x double>, ptr %.sroa.12.0..sroa_idx.i, align 8
  %i.bd = load <2 x double>, ptr %.sroa.13.0..sroa_idx.i, align 8
  %i.be = load <2 x double>, ptr %.sroa.14.0..sroa_idx.i, align 8
  %i.bf = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul <2 x double> %i.bf, %i.o
  %i.bh = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.n, <2 x double> %i.bg)
  %i.bj = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.p, <2 x double> %i.bi)
  %i.bl = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.q, <2 x double> %i.bk)
  store <2 x double> %i.bm, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !19
  %i.bn = fmul <2 x double> %i.bf, %i.ae
  %i.bo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.ad, <2 x double> %i.bn)
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.ah, <2 x double> %i.bo)
  %i.bq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.aj, <2 x double> %i.bp)
  store <2 x double> %i.bq, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !19
  %i.br = load <2 x double>, ptr %.sroa.15.0..sroa_idx.i, align 8
  %i.bs = load <2 x double>, ptr %.sroa.16.0..sroa_idx.i, align 8
  %i.bt = load <2 x double>, ptr %.sroa.17.0..sroa_idx.i, align 8
  %i.bu = load <2 x double>, ptr %.sroa.18.0..sroa_idx.i, align 8
  %i.bv = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = fmul <2 x double> %i.bv, %i.o
  %i.bx = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.n, <2 x double> %i.bw)
  %i.bz = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.p, <2 x double> %i.by)
  %i.cb = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.q, <2 x double> %i.ca)
  store <2 x double> %i.cc, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !19
  %i.cd = fmul <2 x double> %i.bv, %i.ae
  %i.ce = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ad, <2 x double> %i.cd)
  %i.cf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ah, <2 x double> %i.ce)
  %i.cg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.aj, <2 x double> %i.cf)
  store <2 x double> %i.cg, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !19
  invoke void @_ZN7openvdb5v13_04math9AffineMap18updateAccelerationEv(ptr noundef nonnull align 8 dereferenceable(376) %3)
          to label %_ZN7openvdb5v13_04math9AffineMapC2ERKS2_S4_.exit unwind label %bb.o

_ZN7openvdb5v13_04math9AffineMapC2ERKS2_S4_.exit: ; preds = %.noexc
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ch, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cj, ptr noundef nonnull align 8 dereferenceable(128) %i.ci, i64 128, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i64 72, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !72
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 848
  store double %i.cn, ptr %i.co, align 8, !tbaa !72
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !73, !range !74, !noundef !75
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i8 %i.cs, ptr %i.ct, align 8, !tbaa !73
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 369
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !76, !range !74, !noundef !75
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 881
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !26 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math9AffineMapC2ERKS2_S4_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.cz, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !31
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #26, !inline_history !7
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !28
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #26, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_04math9AffineMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_0
