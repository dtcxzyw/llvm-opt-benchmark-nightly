Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dynafu_tsdf?download=true
inline.NumInlined: 1368
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv:bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.b) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl16small_any_policyIbED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.g)
          to label %_ZN7cvflann3anyD2Ev.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

_ZN7cvflann3anyD2Ev.exit.i.i.i:                   ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN7cvflann3anyD2Ev.exit.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !30
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZN7cvflann3anyD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !348

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6dynafu14RaycastInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(204) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv6dynafu14RaycastInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load <12 x float>, ptr %i.a, align 4, !tbaa !33, !noalias !91 ; 4 uses
  %i.f = load float, ptr %i.d, align 8, !tbaa !33, !noalias !359
  %i.g = load <2 x float>, ptr %i.c, align 8
  %i.h = load float, ptr %i.b, align 8, !tbaa !33, !noalias !359 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.k = load <2 x float>, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.m = load <2 x float>, ptr %i.i, align 4, !tbaa !33, !noalias !360 ; 2 uses
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !33, !noalias !360 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.p = load float, ptr %i.o, align 4, !tbaa !33, !noalias !360
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !33, !noalias !360
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !33, !noalias !360
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !33, !noalias !360
  %i.w = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54   ; 2 uses
  %i.z = icmp slt i32 %i.w, %i.y
  br i1 %i.z, label %.lr.ph439, label %._crit_edge440

.lr.ph439:                                        ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !361, !nonnull !91, !align !92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !164
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph439.split.preheader, label %._crit_edge440

.lr.ph439.split.preheader:                        ; preds = %.lr.ph439
  %i.ap = sext i32 %i.w to i64
  %i.aq = shufflevector <12 x float> %i.e, <12 x float> poison, <3 x i32> <i32 11, i32 3, i32 7>
  %i.ar = shufflevector <12 x float> %i.e, <12 x float> poison, <3 x i32> <i32 10, i32 2, i32 6>
  %i.as = shufflevector <12 x float> %i.e, <12 x float> poison, <3 x i32> <i32 9, i32 1, i32 5>
  %i.at = shufflevector <12 x float> %i.e, <12 x float> poison, <3 x i32> <i32 8, i32 0, i32 4>
  %i.au = insertelement <2 x float> %i.k, float %i.p, i64 1
  %i.av = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.aw = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.ax = insertelement <2 x float> %i.g, float %i.f, i64 1 ; 2 uses
  br label %.lr.ph439.split

._crit_edge440:                                   ; preds = %._crit_edge436, %.lr.ph439, %bb.a
  ret void

.lr.ph439.split:                                  ; preds = %.lr.ph439.split.preheader, %._crit_edge436
  %i.ay = phi i32 [ %i.y, %.lr.ph439.split.preheader ], [ %i.bt, %._crit_edge436 ]
  %i.az = phi ptr [ %i.al, %.lr.ph439.split.preheader ], [ %i.bu, %._crit_edge436 ] ; 4 uses
  %indvars.iv443 = phi i64 [ %i.ap, %.lr.ph439.split.preheader ], [ %indvars.iv.next444, %._crit_edge436 ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !93
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !77
  %i.be = mul i64 %i.bd, %indvars.iv443
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !362, !nonnull !91, !align !92 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !77
  %i.bl = mul i64 %i.bk, %indvars.iv443
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !164
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph435, label %._crit_edge436

.lr.ph435:                                        ; preds = %.lr.ph439.split
  %i.bq = trunc nsw i64 %indvars.iv443 to i32
  %i.br = sitofp i32 %i.bq to float
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 1
  br label %bb.b

._crit_edge436.loopexit:                          ; preds = %bb.p
  %.pre = load i32, ptr %i.x, align 4, !tbaa !54
  br label %._crit_edge436

._crit_edge436:                                   ; preds = %._crit_edge436.loopexit, %.lr.ph439.split
  %i.bt = phi i32 [ %.pre, %._crit_edge436.loopexit ], [ %i.ay, %.lr.ph439.split ] ; 2 uses
  %i.bu = phi ptr [ %i.vs, %._crit_edge436.loopexit ], [ %i.az, %.lr.ph439.split ]
  %indvars.iv.next444 = add nsw i64 %indvars.iv443, 1 ; 2 uses
  %i.bv = sext i32 %i.bt to i64
  %i.bw = icmp slt i64 %indvars.iv.next444, %i.bv
  br i1 %i.bw, label %.lr.ph439.split, label %._crit_edge440, !llvm.loop !356

bb.b:                                             ; preds = %.lr.ph435, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph435 ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  %i.by = uitofp nneg i32 %i.bx to float
  %i.bz = load <2 x float>, ptr %i.ad, align 4, !tbaa !33
  %i.ca = insertelement <2 x float> %i.bs, float %i.by, i64 0
  %i.cb = fsub <2 x float> %i.ca, %i.bz
  %i.cc = load <2 x float>, ptr %i.ac, align 4, !tbaa !33
  %i.cd = fmul <2 x float> %i.cc, %i.cb           ; 2 uses
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.at, <3 x float> %i.ce, <3 x float> zeroinitializer)
  %i.cg = shufflevector <2 x float> %i.cd, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ch = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.as, <3 x float> %i.cg, <3 x float> %i.cf)
  %i.ci = fadd <3 x float> %i.ar, %i.ch
  %i.cj = fpext <3 x float> %i.ci to <3 x double> ; 4 uses
  %i.ck = extractelement <3 x double> %i.cj, i64 1 ; 2 uses
  %2 = fmul double %i.ck, %i.ck
  %i.cl = extractelement <3 x double> %i.cj, i64 2 ; 2 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double %2)
  %i.cn = extractelement <3 x double> %i.cj, i64 0 ; 2 uses
  %i.co = tail call noundef double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.cm) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.co)
  %i.cp = fcmp une double %i.co, 0.000000e+00
  %i.cq = fdiv double 1.000000e+00, %sqrt.i.i
  %i.cr = select i1 %i.cp, double %i.cq, double 0.000000e+00
  %i.cs = insertelement <3 x double> poison, double %i.cr, i64 0
  %i.ct = shufflevector <3 x double> %i.cs, <3 x double> poison, <3 x i32> zeroinitializer
  %i.cu = fmul <3 x double> %i.ct, %i.cj
  %i.cv = fptrunc <3 x double> %i.cu to <3 x float> ; 3 uses
  %i.cw = extractelement <3 x float> %i.cv, i64 1
  %i.cx = fdiv float 1.000000e+00, %i.cw          ; 2 uses
  %i.cy = load float, ptr %i.ae, align 8, !tbaa !187
  %i.cz = fsub float %i.cy, %i.h
  %i.da = fmul float %i.cz, %i.cx                 ; 4 uses
  %i.db = load float, ptr %i.ag, align 4, !tbaa !187
  %i.dc = fsub float %i.db, %i.h
  %i.dd = fmul float %i.dc, %i.cx                 ; 4 uses
  %i.de = fcmp olt float %i.da, %i.dd
  %.sroa.speculated304 = select i1 %i.de, float %i.da, float %i.dd
  %i.df = fcmp olt float %i.dd, %i.da
  %.sroa.speculated301 = select i1 %i.df, float %i.da, float %i.dd
  %i.dg = shufflevector <3 x float> %i.cv, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.dh = fdiv <2 x float> splat (float 1.000000e+00), %i.dg ; 2 uses
  %i.di = load <2 x float>, ptr %i.af, align 4, !tbaa !33
  %i.dj = fsub <2 x float> %i.di, %i.ax
  %i.dk = fmul <2 x float> %i.dj, %i.dh           ; 4 uses
  %i.dl = load <2 x float>, ptr %i.ah, align 8, !tbaa !33
  %i.dm = fsub <2 x float> %i.dl, %i.ax
  %i.dn = fmul <2 x float> %i.dm, %i.dh           ; 4 uses
  %i.do = fcmp olt <2 x float> %i.dn, %i.dk
  %i.dp = select <2 x i1> %i.do, <2 x float> %i.dk, <2 x float> %i.dn ; 2 uses
  %i.dq = fcmp olt <2 x float> %i.dk, %i.dn
  %i.dr = select <2 x i1> %i.dq, <2 x float> %i.dk, <2 x float> %i.dn ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %.sroa.speculated304, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fcmp olt <2 x float> %i.dt, %i.dr
  %i.dv = select <2 x i1> %i.du, <2 x float> %i.dr, <2 x float> %i.dt ; 2 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 0 ; 2 uses
  %i.dx = extractelement <2 x float> %i.dv, i64 1 ; 2 uses
  %i.dy = fcmp olt float %i.dw, %i.dx
  %i.dz = select i1 %i.dy, float %i.dx, float %i.dw ; 2 uses
  %i.ea = fcmp olt float %i.dz, 0.000000e+00
  %.sroa.speculated = select i1 %i.ea, float 0.000000e+00, float %i.dz
  %i.eb = insertelement <2 x float> poison, float %.sroa.speculated301, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = fcmp olt <2 x float> %i.dp, %i.ec
  %i.ee = select <2 x i1> %i.ed, <2 x float> %i.dp, <2 x float> %i.ec ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.eg = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.eh = fcmp olt float %i.eg, %i.ef
  %i.ei = select i1 %i.eh, float %i.eg, float %i.ef
  %i.ej = load float, ptr %i.ai, align 8, !tbaa !100 ; 6 uses
  %i.ek = fadd float %i.ej, %.sroa.speculated     ; 5 uses
  %i.el = fsub float %i.ei, %i.ej                 ; 2 uses
  %i.em = fcmp olt float %i.ek, %i.el
  br i1 %i.em, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.en = load ptr, ptr %i.aj, align 8, !tbaa !102, !nonnull !91, !align !92 ; 19 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !27
  %i.eq = insertelement <3 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <3 x float> %i.eq, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.es = fmul <3 x float> %i.aq, %i.er           ; 3 uses
  %i.et = fmul <3 x float> %i.er, %i.cv           ; 5 uses
  %i.eu = extractelement <3 x float> %i.et, i64 1
  %i.ev = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = shufflevector <3 x float> %i.et, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ey = fmul <2 x float> %i.ew, %i.ex           ; 3 uses
  %i.ez = extractelement <3 x float> %i.et, i64 0
  %i.fa = fmul float %i.ej, %i.ez                 ; 2 uses
  %i.fb = fmul float %i.ek, %i.eu
  %i.fc = extractelement <3 x float> %i.es, i64 1
  %i.fd = fadd float %i.fc, %i.fb                 ; 3 uses
  %.sroa.0.0.vec.insert.i193 = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fe = getelementptr inbounds nuw i8, ptr %i.en, i64 116
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !28 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.en, i64 120
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !28 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 124
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !28 ; 5 uses
  %i.fk = tail call float @llvm.floor.f32(float %i.fd)
  %i.fl = fptosi float %i.fk to i32               ; 2 uses
  %i.fm = mul nsw i32 %i.ff, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 192
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !93 ; 36 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.en, i64 132
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !28 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.en, i64 136
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !28 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.en, i64 140
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !28 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !28 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.en, i64 148
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !28 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.en, i64 152
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !28 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.en, i64 156
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !28 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.en, i64 160
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !28 ; 4 uses
  %i.gf = sitofp i32 %i.fl to float
  %i.gg = fsub float %i.fd, %i.gf
  %i.gh = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = shufflevector <3 x float> %i.et, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.gk = fmul <2 x float> %i.gi, %i.gj
  %i.gl = shufflevector <3 x float> %i.es, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.gm = fadd <2 x float> %i.gl, %i.gk           ; 4 uses
  %i.gn = shufflevector <2 x float> %.sroa.0.0.vec.insert.i193, <2 x float> %i.gm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.go = extractelement <2 x float> %i.gm, i64 0
  %i.gp = tail call float @llvm.floor.f32(float %i.go)
  %i.gq = extractelement <2 x float> %i.gm, i64 1 ; 3 uses
  %i.gr = tail call float @llvm.floor.f32(float %i.gq)
  %i.gs = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gt = insertelement <2 x float> %i.gs, float %i.gr, i64 1
  %i.gu = fptosi <2 x float> %i.gt to <2 x i32>   ; 3 uses
  %i.gv = extractelement <2 x i32> %i.gu, i64 0
  %i.gw = mul nsw i32 %i.fh, %i.gv
  %i.gx = add nsw i32 %i.gw, %i.fm
  %i.gy = extractelement <2 x i32> %i.gu, i64 1
  %i.gz = mul nsw i32 %i.fj, %i.gy
  %i.ha = add nsw i32 %i.gx, %i.gz                ; 8 uses
  %i.hb = add nsw i32 %i.ha, %i.fq
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [92 x i8], ptr %i.fo, i64 %i.hc
  %i.he = load float, ptr %i.hd, align 4, !tbaa !188
  %i.hf = add nsw i32 %i.ha, %i.fs
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [92 x i8], ptr %i.fo, i64 %i.hg
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !188
  %i.hj = add nsw i32 %i.fu, %i.ha
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [92 x i8], ptr %i.fo, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !188
  %i.hn = add nsw i32 %i.fw, %i.ha
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [92 x i8], ptr %i.fo, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !188
  %i.hr = add nsw i32 %i.fy, %i.ha
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [92 x i8], ptr %i.fo, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !188
  %i.hv = add nsw i32 %i.ga, %i.ha
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [92 x i8], ptr %i.fo, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !188
  %i.hz = add nsw i32 %i.gc, %i.ha
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [92 x i8], ptr %i.fo, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !188
  %i.id = add nsw i32 %i.ge, %i.ha
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [92 x i8], ptr %i.fo, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !188
  %i.ih = sitofp <2 x i32> %i.gu to <2 x float>
  %i.ii = fsub <2 x float> %i.gm, %i.ih           ; 2 uses
  %i.ij = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ik = insertelement <2 x float> %i.ij, float %i.hi, i64 1
  %i.il = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.im = insertelement <2 x float> %i.il, float %i.he, i64 1 ; 2 uses
  %i.in = fsub <2 x float> %i.ik, %i.im
  %i.io = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ip = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.in, <2 x float> %i.im) ; 2 uses
  %i.iq = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %i.hq, i64 1
  %i.is = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.it = insertelement <2 x float> %i.is, float %i.hm, i64 1 ; 2 uses
  %i.iu = fsub <2 x float> %i.ir, %i.it
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.iu, <2 x float> %i.it)
  %i.iw = fsub <2 x float> %i.iv, %i.ip
  %i.ix = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.iw, <2 x float> %i.ip) ; 2 uses
  %i.iz = extractelement <2 x float> %i.iy, i64 0
  %i.ja = extractelement <2 x float> %i.iy, i64 1 ; 2 uses
  %i.jb = fsub float %i.iz, %i.ja
  %i.jc = tail call noundef float @llvm.fmuladd.f32(float %i.gg, float %i.jb, float %i.ja) ; 3 uses
  %i.jd = fsub float %i.el, %i.ek
  %i.je = fdiv float %i.jd, %i.ej
  %i.jf = tail call noundef float @llvm.floor.f32(float %i.je)
  %i.jg = fptosi float %i.jf to i32               ; 3 uses
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ji = getelementptr inbounds nuw i8, ptr %i.en, i64 172
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !50
  %i.jk = icmp slt i32 %i.jj, 2
  %i.jl = getelementptr inbounds nuw i8, ptr %i.en, i64 168
  %i.jm = getelementptr inbounds nuw i8, ptr %i.en, i64 176
  %i.jn = getelementptr inbounds nuw i8, ptr %i.en, i64 180
  %i.jo = getelementptr inbounds nuw i8, ptr %i.en, i64 296 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
end_hunk_0
begin_hunk_1_@_ZNK2cv6dynafu14RaycastInvokerclERKNS_5RangeE:bb.a
  %i.th = fsub <2 x float> %i.su, %i.so
  %i.ti = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sf, <2 x float> %i.th, <2 x float> %i.so) ; 2 uses
  %i.tj = fsub <2 x float> %i.tg, %i.ta
  %i.tk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sf, <2 x float> %i.tj, <2 x float> %i.ta)
  %i.tl = fsub <2 x float> %i.tk, %i.ti
  %i.tm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.si, <2 x float> %i.tl, <2 x float> %i.ti) ; 2 uses
  %i.tn = extractelement <2 x float> %i.tm, i64 0
  %i.to = extractelement <2 x float> %i.tm, i64 1 ; 2 uses
  %i.tp = fsub float %i.tn, %i.to
  %i.tq = fdiv float %i.to, %i.tp
  %i.tr = fsub float %.0150.lcssa, %i.tq
  %i.ts = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.tr, float %i.ek) ; 2 uses
  %i.tt = tail call float @llvm.fabs.f32(float %i.ts)
  %or.cond418 = fcmp ueq float %i.tt, +inf
  br i1 %or.cond418, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.tu = insertelement <3 x float> poison, float %i.ts, i64 0
  %i.tv = shufflevector <3 x float> %i.tu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.tw = fmul <3 x float> %i.et, %i.tv
  %i.tx = fadd <3 x float> %i.es, %i.tw           ; 3 uses
  %i.ty = shufflevector <3 x float> %i.tx, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.tz = extractelement <3 x float> %i.tx, i64 0
  %i.ua = tail call { <2 x float>, float } @_ZNK2cv6dynafu13TSDFVolumeCPU14getNormalVoxelENS_7Point3_IfEE(ptr noundef nonnull align 8 dereferenceable(376) %i.en, <2 x float> %i.ty, float %i.tz)
  %.fr = freeze { <2 x float>, float } %i.ua      ; 2 uses
  %.fca.0.extract17 = extractvalue { <2 x float>, float } %.fr, 0 ; 4 uses
  %.fca.1.extract18 = extractvalue { <2 x float>, float } %.fr, 1 ; 3 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.fca.0.extract17, i64 0 ; 2 uses
  %i.ub = fcmp uno float %.sroa.01.0.vec.extract.i, 0.000000e+00
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.fca.0.extract17, i64 1 ; 2 uses
  %spec.select.i = fcmp uno float %.sroa.01.4.vec.extract.i, %.fca.1.extract18
  %i.uc = or i1 %i.ub, %spec.select.i
  br i1 %i.uc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ud = shufflevector <2 x float> %.fca.0.extract17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ue = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ud, <2 x float> zeroinitializer)
  %i.uf = shufflevector <2 x float> %.fca.0.extract17, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ug = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.uf, <2 x float> %i.ue)
  %i.uh = insertelement <2 x float> poison, float %.fca.1.extract18, i64 0
  %i.ui = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.ui, <2 x float> %i.ug)
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.r, float %.sroa.01.0.vec.extract.i, float 0.000000e+00)
  %i.ul = tail call float @llvm.fmuladd.f32(float %i.t, float %.sroa.01.4.vec.extract.i, float %i.uk)
  %i.um = tail call float @llvm.fmuladd.f32(float %i.v, float %.fca.1.extract18, float %i.ul)
  %i.un = load ptr, ptr %i.aj, align 8, !tbaa !102, !nonnull !91, !align !92
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load float, ptr %i.uo, align 8, !tbaa !26
  %i.uq = insertelement <3 x float> poison, float %i.up, i64 0
  %i.ur = shufflevector <3 x float> %i.uq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.us = fmul <3 x float> %i.tx, %i.ur           ; 6 uses
  %i.ut = load <8 x float>, ptr %i.i, align 4, !tbaa !33 ; 4 uses
  %i.uu = shufflevector <3 x float> %i.us, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.uv = shufflevector <8 x float> %i.ut, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.uw = fmul <2 x float> %i.uu, %i.uv
  %i.ux = shufflevector <8 x float> %i.ut, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.uy = shufflevector <3 x float> %i.us, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ux, <2 x float> %i.uy, <2 x float> %i.uw)
  %i.va = shufflevector <8 x float> %i.ut, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.vb = shufflevector <3 x float> %i.us, <3 x float> poison, <2 x i32> zeroinitializer
  %i.vc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.va, <2 x float> %i.vb, <2 x float> %i.uz)
  %i.vd = shufflevector <8 x float> %i.ut, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ve = fadd <2 x float> %i.vd, %i.vc
  %i.vf = load float, ptr %i.q, align 4, !tbaa !33
  %i.vg = load float, ptr %i.s, align 8, !tbaa !33
  %i.vh = extractelement <3 x float> %i.us, i64 2
  %i.vi = fmul float %i.vh, %i.vg
  %i.vj = extractelement <3 x float> %i.us, i64 1
  %i.vk = tail call float @llvm.fmuladd.f32(float %i.vf, float %i.vj, float %i.vi)
  %i.vl = load float, ptr %i.u, align 4, !tbaa !33
  %i.vm = extractelement <3 x float> %i.us, i64 0
  %i.vn = tail call float @llvm.fmuladd.f32(float %i.vl, float %i.vm, float %i.vk)
  %i.vo = load float, ptr %i.ak, align 8, !tbaa !33
  %i.vp = fadd float %i.vo, %i.vn
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.m, %bb.o, %bb.n, %bb.b
  %.sroa.0380.2 = phi <2 x float> [ splat (float +qnan), %bb.b ], [ splat (float +qnan), %._crit_edge ], [ %i.uj, %bb.o ], [ splat (float +qnan), %bb.m ], [ splat (float +qnan), %bb.n ]
  %.sroa.7383.2 = phi float [ +qnan, %bb.b ], [ +qnan, %._crit_edge ], [ %i.um, %bb.o ], [ +qnan, %bb.m ], [ +qnan, %bb.n ]
  %.sroa.0384.2 = phi <2 x float> [ splat (float +qnan), %bb.b ], [ splat (float +qnan), %._crit_edge ], [ %i.ve, %bb.o ], [ splat (float +qnan), %bb.m ], [ splat (float +qnan), %bb.n ]
  %.sroa.7387.2 = phi float [ +qnan, %bb.b ], [ +qnan, %._crit_edge ], [ %i.vp, %bb.o ], [ +qnan, %bb.m ], [ +qnan, %bb.n ]
  %i.vq = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv ; 3 uses
  store <2 x float> %.sroa.0384.2, ptr %i.vq, align 4
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  store float %.sroa.7387.2, ptr %.sroa.5235.0..sroa_idx, align 4
  %.sroa.6236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vq, i64 12
  store float 0.000000e+00, ptr %.sroa.6236.0..sroa_idx, align 4
  %i.vr = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %indvars.iv ; 3 uses
  store <2 x float> %.sroa.0380.2, ptr %i.vr, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  store float %.sroa.7383.2, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vr, i64 12
  store float 0.000000e+00, ptr %.sroa.6229.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.vs = load ptr, ptr %i.aa, align 8, !tbaa !361, !nonnull !91, !align !92 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 12
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !164
  %i.vv = sext i32 %i.vu to i64
  %i.vw = icmp slt i64 %indvars.iv.next, %i.vv
  br i1 %i.vw, label %bb.b, label %._crit_edge436.loopexit, !llvm.loop !358
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { <2 x float>, float } @_ZNK2cv6dynafu13TSDFVolumeCPU14getNormalVoxelENS_7Point3_IfEE(ptr noundef nonnull align 8 dereferenceable(376) %0, <2 x float> %1, float %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %3 = alloca %"class.cv::Vec", align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93   ; 16 uses
  %.sroa.048.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 4 uses
  %i.i = fcmp olt float %.sroa.048.0.vec.extract, 1.000000e+00
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35
  %i.l = add nsw i32 %i.k, -2
  %i.m = sitofp i32 %i.l to float
  %i.n = fcmp oge float %.sroa.048.0.vec.extract, %i.m
  %.sroa.048.4.vec.extract60 = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.o = fcmp olt float %.sroa.048.4.vec.extract60, 1.000000e+00
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !36
  %i.r = add nsw i32 %i.q, -2
  %i.s = sitofp i32 %i.r to float
  %i.t = fcmp oge float %.sroa.048.4.vec.extract60, %i.s
  %i.u = fcmp olt float %2, 1.000000e+00
  %or.cond5 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond5, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !37
  %i.x = add nsw i32 %i.w, -2
  %i.y = sitofp i32 %i.x to float
  %i.z = fcmp ult float %2, %i.y
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call float @llvm.floor.f32(float %.sroa.048.0.vec.extract)
  %i.ab = fptosi float %i.aa to i32               ; 2 uses
  %i.ac = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %2, i64 1 ; 2 uses
  %i.ae = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ad)
  %i.af = sitofp i32 %i.ab to float
  %i.ag = fsub float %.sroa.048.0.vec.extract, %i.af
  %i.ah = fptosi <2 x float> %i.ae to <2 x i32>   ; 3 uses
  %i.ai = sitofp <2 x i32> %i.ah to <2 x float>
  %i.aj = fsub <2 x float> %i.ad, %i.ai           ; 2 uses
  %i.ak = mul nsw i32 %i.b, %i.ab
  %i.al = extractelement <2 x i32> %i.ah, i64 0
  %i.am = mul nsw i32 %i.d, %i.al
  %i.an = add nsw i32 %i.am, %i.ak
  %i.ao = extractelement <2 x i32> %i.ah, i64 1
  %i.ap = mul nsw i32 %i.f, %i.ao
  %i.aq = add nsw i32 %i.an, %i.ap                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, i8 0, i64 12, i1 false), !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !28
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 8, !tbaa !28
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !28
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 8, !tbaa !28
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %.pre83 = load i32, ptr %.phi.trans.insert82, align 4, !tbaa !28
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre85 = load i32, ptr %.phi.trans.insert84, align 8, !tbaa !28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.at = add nsw i32 %i.aq, %i.as                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.av = load i32, ptr %i.au, align 8, !tbaa !28
  %i.aw = add nsw i32 %i.aq, %i.av                ; 2 uses
  %i.ax = add nsw i32 %i.aq, %.pre                ; 2 uses
  %i.ay = add nsw i32 %i.aq, %.pre77              ; 2 uses
  %i.az = add nsw i32 %i.aq, %.pre79              ; 2 uses
  %i.ba = add nsw i32 %i.aq, %.pre81              ; 2 uses
  %i.bb = add nsw i32 %i.aq, %.pre83              ; 2 uses
  %i.bc = add nsw i32 %i.aq, %.pre85              ; 2 uses
  %i.bd = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !33, !noalias !366
  %i.bh = fpext float %i.bg to double             ; 3 uses
  %i.bi = load <2 x float>, ptr %3, align 8, !tbaa !33, !noalias !366
  %i.bj = fpext <2 x float> %i.bi to <2 x double> ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.bj, %i.bj
  %4 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bk = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double %4)
  %i.bm = tail call noundef double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bl) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.bm)
  %i.bn = fcmp une double %i.bm, 0.000000e+00
  %i.bo = fdiv double 1.000000e+00, %sqrt.i.i
  %i.bp = select i1 %i.bn, double %i.bo, double 0.000000e+00 ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.br, %i.bj
  %i.bt = fptrunc <2 x double> %i.bs to <2 x float>
  %i.bu = fmul double %i.bp, %i.bh
  %i.bv = fptrunc double %i.bu to float
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !28 ; 16 uses
  %i.by = add nsw i32 %i.at, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !188
  %i.cc = sub nsw i32 %i.at, %i.bx
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !188
  %i.cg = add nsw i32 %i.aw, %i.bx
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !188
  %i.ck = sub nsw i32 %i.aw, %i.bx
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !188
  %i.co = add nsw i32 %i.ax, %i.bx
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !188
  %i.cs = sub nsw i32 %i.ax, %i.bx
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !188
  %i.cw = add nsw i32 %i.ay, %i.bx
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !188
  %i.da = sub nsw i32 %i.ay, %i.bx
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !188
  %i.de = add nsw i32 %i.az, %i.bx
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !188
  %i.di = sub nsw i32 %i.az, %i.bx
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !188
  %i.dm = add nsw i32 %i.ba, %i.bx
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !188
  %i.dq = sub nsw i32 %i.ba, %i.bx
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !188
  %i.du = add nsw i32 %i.bb, %i.bx
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !188
  %i.dy = sub nsw i32 %i.bb, %i.bx
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !188
  %i.ec = add nsw i32 %i.bc, %i.bx
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !188
  %i.eg = sub nsw i32 %i.bc, %i.bx
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [92 x i8], ptr %i.h, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !188
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.el = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.em = insertelement <4 x float> %i.el, float %i.cr, i64 1
  %i.en = insertelement <4 x float> %i.em, float %i.dh, i64 2
  %i.eo = insertelement <4 x float> %i.en, float %i.dx, i64 3
  %i.ep = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.cv, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.dl, i64 2
  %i.es = insertelement <4 x float> %i.er, float %i.eb, i64 3
  %i.et = fsub <4 x float> %i.eo, %i.es           ; 2 uses
  %i.eu = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %i.cz, i64 1
  %i.ew = insertelement <4 x float> %i.ev, float %i.dp, i64 2
  %i.ex = insertelement <4 x float> %i.ew, float %i.ef, i64 3
  %i.ey = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.dd, i64 1
  %i.fa = insertelement <4 x float> %i.ez, float %i.dt, i64 2
  %i.fb = insertelement <4 x float> %i.fa, float %i.ej, i64 3
  %i.fc = fsub <4 x float> %i.ex, %i.fb
  %i.fd = fsub <4 x float> %i.fc, %i.et
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.fd, <4 x float> %i.et) ; 2 uses
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.fg = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.fh = fsub <2 x float> %i.ff, %i.fg
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.fh, <2 x float> %i.fg) ; 2 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 0
  %i.fk = extractelement <2 x float> %i.fi, i64 1 ; 2 uses
  %i.fl = fsub float %i.fj, %i.fk
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.fl, float %i.fk)
  store float %i.fm, ptr %i.ek, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !365

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f
  %.sroa.066.0 = phi <2 x float> [ %i.bt, %bb.f ], [ splat (float +qnan), %bb.d ], [ splat (float +qnan), %bb.c ], [ splat (float +qnan), %bb.b ], [ splat (float +qnan), %bb.a ]
  %.sroa.5.0 = phi float [ %i.bv, %bb.f ], [ +qnan, %bb.d ], [ +qnan, %bb.c ], [ +qnan, %bb.b ], [ +qnan, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.066.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.5.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #23

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6dynafu25FetchPointsNormalsInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv6dynafu25FetchPointsNormalsInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.11", align 8    ; 15 uses
  %3 = alloca %"class.std::vector.11", align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !189, !nonnull !91, !align !92 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph95.split, label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge91, %.lr.ph95, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge96
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.l) #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

.lr.ph95.split:                                   ; preds = %.lr.ph95, %._crit_edge91
  %i.m = phi i32 [ %i.af, %._crit_edge91 ], [ %i.c, %.lr.ph95 ] ; 2 uses
  %i.n = phi ptr [ %i.ag, %._crit_edge91 ], [ %i.g, %.lr.ph95 ] ; 3 uses
  %i.o = phi ptr [ %i.ah, %._crit_edge91 ], [ %i.g, %.lr.ph95 ] ; 5 uses
  %i.p = phi ptr [ %i.ai, %._crit_edge91 ], [ %i.g, %.lr.ph95 ] ; 4 uses
  %.092 = phi i32 [ %i.aj, %._crit_edge91 ], [ %i.a, %.lr.ph95 ] ; 6 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28
  %i.t = mul nsw i32 %i.s, %.092
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [92 x i8], ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !36
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %.lr.ph95.split
  %i.z = sitofp i32 %.092 to float
  %i.aa = fadd nnan float %i.z, 5.000000e-01
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !37
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph90.split.preheader, label %._crit_edge91

end_hunk_1
