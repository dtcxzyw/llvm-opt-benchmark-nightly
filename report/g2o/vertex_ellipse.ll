inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN5Eigen8internal33selfadjoint_matrix_vector_productIflLi0ELi1ELb0ELb0ELi0EE3runElPKflS4_Pff:bb.a
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit
  %i.bs = phi <2 x float> [ %i.br, %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit ], [ %i.cs, %.lr.ph ] ; 2 uses
  %i.bt = icmp sgt i64 %i.as, 3
  br i1 %i.bt, label %.lr.ph213.preheader, label %.preheader200

.lr.ph213.preheader:                              ; preds = %._crit_edge
  %i.bu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ar
  %i.bv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ar
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ar
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ar
  br label %.lr.ph213

.lr.ph:                                           ; preds = %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit, %.lr.ph
  %.0144203 = phi i64 [ %i.ct, %.lr.ph ], [ %i.aj, %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit ] ; 5 uses
  %i.by = phi <2 x float> [ %i.cs, %.lr.ph ], [ %i.br, %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.0144203 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !19
  %i.cb = fmul float %i.ab, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.0144203 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !19
  %i.ce = fmul float %i.ag, %i.cd
  %i.cf = fadd float %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0144203 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !19
  %i.ci = fadd float %i.ch, %i.cf
  store float %i.ci, ptr %i.cg, align 4, !tbaa !19
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0144203
  %i.ck = load float, ptr %i.bz, align 4, !tbaa !19
  %i.cl = load float, ptr %i.cj, align 4, !tbaa !19
  %i.cm = load float, ptr %i.cc, align 4, !tbaa !19
  %i.cn = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.cm, i64 1
  %i.cr = fmul <2 x float> %i.co, %i.cq
  %i.cs = fadd <2 x float> %i.by, %i.cr           ; 2 uses
  %i.ct = add nuw nsw i64 %.0144203, 1            ; 2 uses
  %i.cu = icmp slt i64 %i.ct, %i.ar
  br i1 %i.cu, label %.lr.ph, label %._crit_edge, !llvm.loop !127

.preheader200:                                    ; preds = %.lr.ph213, %._crit_edge
  %.0199.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.dk, %.lr.ph213 ] ; 2 uses
  %.0196.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.di, %.lr.ph213 ] ; 2 uses
  %i.cv = icmp slt i64 %i.av, %0
  br i1 %i.cv, label %.lr.ph219, label %._crit_edge220

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %.0139211 = phi i64 [ %i.dm, %.lr.ph213 ], [ %i.ar, %.lr.ph213.preheader ]
  %.0140210 = phi ptr [ %i.dl, %.lr.ph213 ], [ %i.bu, %.lr.ph213.preheader ] ; 3 uses
  %.0141209 = phi ptr [ %i.db, %.lr.ph213 ], [ %i.bv, %.lr.ph213.preheader ] ; 2 uses
  %.0142208 = phi ptr [ %i.cz, %.lr.ph213 ], [ %i.bw, %.lr.ph213.preheader ] ; 2 uses
  %.0143207 = phi ptr [ %i.cx, %.lr.ph213 ], [ %i.bx, %.lr.ph213.preheader ] ; 2 uses
  %.0196206 = phi <4 x float> [ %i.di, %.lr.ph213 ], [ zeroinitializer, %.lr.ph213.preheader ]
  %.0199205 = phi <4 x float> [ %i.dk, %.lr.ph213 ], [ zeroinitializer, %.lr.ph213.preheader ]
  %i.cw = load <4 x float>, ptr %.0143207, align 1, !tbaa !47 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0143207, i64 16
  %i.cy = load <4 x float>, ptr %.0142208, align 1, !tbaa !47 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0142208, i64 16
  %i.da = load <4 x float>, ptr %.0141209, align 1, !tbaa !47 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0141209, i64 16
  %i.dc = load <4 x float>, ptr %.0140210, align 16, !tbaa !47
  %i.dd = fmul <4 x float> %i.ai, %i.cy
  %i.de = fadd <4 x float> %i.dd, %i.dc
  %i.df = fmul <4 x float> %i.ad, %i.cw
  %i.dg = fadd <4 x float> %i.df, %i.de
  %i.dh = fmul <4 x float> %i.cw, %i.da
  %i.di = fadd <4 x float> %.0196206, %i.dh       ; 2 uses
  %i.dj = fmul <4 x float> %i.cy, %i.da
  %i.dk = fadd <4 x float> %.0199205, %i.dj       ; 2 uses
  store <4 x float> %i.dg, ptr %.0140210, align 16, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %.0140210, i64 16
  %i.dm = add nsw i64 %.0139211, 4                ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.av
  br i1 %i.dn, label %.lr.ph213, label %.preheader200, !llvm.loop !128

._crit_edge220:                                   ; preds = %.lr.ph219, %.preheader200
  %i.do = phi <2 x float> [ %i.bs, %.preheader200 ], [ %i.eu, %.lr.ph219 ]
  %i.dp = shufflevector <4 x float> %.0196.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dq = fadd <4 x float> %.0196.lcssa, %i.dp    ; 2 uses
  %i.dr = shufflevector <4 x float> %.0199.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ds = fadd <4 x float> %.0199.lcssa, %i.dr    ; 2 uses
  %i.dt = shufflevector <4 x float> %i.dq, <4 x float> %i.ds, <2 x i32> <i32 0, i32 4>
  %i.du = shufflevector <4 x float> %i.dq, <4 x float> %i.ds, <2 x i32> <i32 1, i32 5>
  %i.dv = fadd <2 x float> %i.dt, %i.du
  %i.dw = fadd <2 x float> %i.dv, %i.do
  %i.dx = load <2 x float>, ptr %i.az, align 4, !tbaa !19
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> %i.dw, <2 x float> %i.dx)
  store <2 x float> %i.dy, ptr %i.az, align 4, !tbaa !19
  %i.dz = icmp samesign ult i64 %i.aj, %i.b
  br i1 %i.dz, label %.lr.ph225, label %.preheader, !llvm.loop !129

.lr.ph219:                                        ; preds = %.preheader200, %.lr.ph219
  %.0138218 = phi i64 [ %i.ev, %.lr.ph219 ], [ %i.av, %.preheader200 ] ; 5 uses
  %i.ea = phi <2 x float> [ %i.eu, %.lr.ph219 ], [ %i.bs, %.preheader200 ]
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.0138218 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !19
  %i.ed = fmul float %i.ab, %i.ec
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.0138218 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !19
  %i.eg = fmul float %i.ag, %i.ef
  %i.eh = fadd float %i.ed, %i.eg
  %i.ei = getelementptr inbounds [4 x i8], ptr %4, i64 %.0138218 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !19
  %i.ek = fadd float %i.ej, %i.eh
  store float %i.ek, ptr %i.ei, align 4, !tbaa !19
  %i.el = getelementptr inbounds [4 x i8], ptr %3, i64 %.0138218
  %i.em = load float, ptr %i.eb, align 4, !tbaa !19
  %i.en = load float, ptr %i.el, align 4, !tbaa !19
  %i.eo = load float, ptr %i.ee, align 4, !tbaa !19
  %i.ep = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = insertelement <2 x float> poison, float %i.em, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.eo, i64 1
  %i.et = fmul <2 x float> %i.eq, %i.es
  %i.eu = fadd <2 x float> %i.ea, %i.et           ; 2 uses
  %i.ev = add nsw i64 %.0138218, 1                ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %0
  br i1 %i.ew, label %.lr.ph219, label %._crit_edge220, !llvm.loop !130

._crit_edge234:                                   ; preds = %._crit_edge230.thread, %.preheader
  ret void

.lr.ph229.preheader:                              ; preds = %.lr.ph233.preheader, %._crit_edge230
  %i.ex = phi i64 [ %i.fp, %._crit_edge230 ], [ %i.s, %.lr.ph233.preheader ] ; 6 uses
  %i.ey = phi ptr [ %i.fm, %._crit_edge230 ], [ %i.p, %.lr.ph233.preheader ] ; 2 uses
  %i.ez = phi float [ %i.fi, %._crit_edge230 ], [ %i.l, %.lr.ph233.preheader ]
  %i.fa = phi i64 [ %i.fe, %._crit_edge230 ], [ %i.h, %.lr.ph233.preheader ]
  %i.fb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fa
  br label %.lr.ph229

._crit_edge230.thread:                            ; preds = %._crit_edge230, %.lr.ph233.preheader
  %.lcssa256 = phi ptr [ %i.p, %.lr.ph233.preheader ], [ %i.fm, %._crit_edge230 ]
  %.lcssa255 = phi float [ %i.r, %.lr.ph233.preheader ], [ %i.fo, %._crit_edge230 ]
  %i.fc = tail call float @llvm.fmuladd.f32(float %5, float 0.000000e+00, float %.lcssa255)
  store float %i.fc, ptr %.lcssa256, align 4, !tbaa !19
  br label %._crit_edge234

._crit_edge230:                                   ; preds = %.lr.ph229
  %.pre = load float, ptr %i.ey, align 4, !tbaa !19
  %i.fd = tail call float @llvm.fmuladd.f32(float %5, float %i.gb, float %.pre)
  store float %i.fd, ptr %i.ey, align 4, !tbaa !19
  %i.fe = mul nsw i64 %i.ex, %2                   ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fe
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ex
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !19
  %i.fi = fmul float %5, %i.fh                    ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ex
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !19
  %i.fl = fmul float %i.fk, %i.fi
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ex ; 4 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !19
  %i.fo = fadd float %i.fn, %i.fl                 ; 2 uses
  store float %i.fo, ptr %i.fm, align 4, !tbaa !19
  %i.fp = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %i.fq = icmp slt i64 %i.fp, %0
  br i1 %i.fq, label %.lr.ph229.preheader, label %._crit_edge230.thread

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.0227 = phi i64 [ %i.gc, %.lr.ph229 ], [ %i.ex, %.lr.ph229.preheader ] ; 4 uses
  %.0136226 = phi float [ %i.gb, %.lr.ph229 ], [ 0.000000e+00, %.lr.ph229.preheader ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.0227 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !19
  %i.ft = fmul float %i.ez, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0227 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !19
  %i.fw = fadd float %i.fv, %i.ft
  store float %i.fw, ptr %i.fu, align 4, !tbaa !19
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0227
  %i.fy = load float, ptr %i.fr, align 4, !tbaa !19
  %i.fz = load float, ptr %i.fx, align 4, !tbaa !19
  %i.ga = fmul float %i.fy, %i.fz
  %i.gb = fadd float %.0136226, %i.ga             ; 2 uses
  %i.gc = add nuw nsw i64 %.0227, 1               ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %0
  br i1 %i.gd, label %.lr.ph229, label %._crit_edge230, !llvm.loop !131
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal33selfadjoint_rank2_update_selectorIflNS_5BlockINS2_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEENS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELi1EE3runEPflRKS6_RKS8_RKf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 5 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = and i64 %i.d, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.f, 0
  %i.g = shl i64 %i.b, 2
  %i.h = shl i64 %1, 2
  %i.i = getelementptr i8, ptr %0, i64 %i.g
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit
  %.062 = phi i64 [ 0, %.lr.ph ], [ %i.fw, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit ] ; 8 uses
  %i.j = xor i64 %.062, -1
  %i.k = add nsw i64 %i.b, %i.j
  %i.l = mul i64 %i.h, %.062
  %scevgep67.a = getelementptr i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.m = load float, ptr %4, align 4, !tbaa !19   ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !73     ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.062
  %i.p = load float, ptr %i.o, align 4, !tbaa !19
  %i.q = fmul float %i.m, %i.p                    ; 9 uses
  %i.r = sub nsw i64 %i.b, %.062                  ; 9 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !81, !noalias !132 ; 2 uses
  %i.t = sub i64 %i.s, %i.r                       ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !104, !noalias !132 ; 5 uses
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %i.t ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.062
  %i.x = load float, ptr %i.w, align 4, !tbaa !19
  %i.y = fmul float %i.m, %i.x                    ; 9 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !135 ; 2 uses
  %i.aa = sub i64 %i.z, %i.r                      ; 3 uses
  %i.ab = getelementptr [4 x i8], ptr %i.n, i64 %i.aa ; 10 uses
  %i.ac = mul i64 %.062, %1
  %i.ad = getelementptr [4 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %.062 ; 14 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = and i64 %i.ah, 3
  %i.aj = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.r)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ %i.r, %bb.b ] ; 15 uses
  %i.ak = sub nsw i64 %i.r, %.0.i.i.i.i.i.i.i     ; 2 uses
  %i.al = sdiv i64 %i.ak, 4                       ; 3 uses
  %i.am = shl nsw i64 %i.al, 2
  %i.an = add nsw i64 %i.am, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.ao = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check95 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check95, label %.lr.ph.i.i.i.i.i.i.i.preheader115, label %vector.memcheck82

vector.memcheck82:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ap = shl i64 %.0.i.i.i.i.i.i.i, 2
  %scevgep84.a = getelementptr i8, ptr %i.ae, i64 %i.ap ; 2 uses
  %i.aq = add i64 %.0.i.i.i.i.i.i.i, %i.t
  %i.ar = shl i64 %i.aq, 2
  %scevgep85 = getelementptr i8, ptr %i.u, i64 %i.ar
  %i.as = add i64 %.0.i.i.i.i.i.i.i, %i.aa
  %i.at = shl i64 %i.as, 2
  %scevgep86 = getelementptr i8, ptr %i.n, i64 %i.at
  %bound087 = icmp ult ptr %i.ae, %scevgep85
  %bound188 = icmp ult ptr %i.v, %scevgep84.a
  %found.conflict89 = and i1 %bound087, %bound188
  %bound090 = icmp ult ptr %i.ae, %scevgep86
  %bound191 = icmp ult ptr %i.ab, %scevgep84.a
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %found.conflict89, %found.conflict92
  br i1 %conflict.rdx93, label %.lr.ph.i.i.i.i.i.i.i.preheader115, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck82
  %n.vec97 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert98.a = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat99.a = shufflevector <4 x float> %broadcast.splatinsert98.a, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert100 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat101 = shufflevector <4 x float> %broadcast.splatinsert100, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph96
  %index103 = phi i64 [ 0, %vector.ph96 ], [ %index.next110, %vector.body102 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index103 ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index103 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load104.a = load <4 x float>, ptr %i.av, align 4, !tbaa !19, !alias.scope !138
  %wide.load105.a = load <4 x float>, ptr %i.aw, align 4, !tbaa !19, !alias.scope !138
  %i.ax = fmul <4 x float> %broadcast.splat99.a, %wide.load104.a
  %i.ay = fmul <4 x float> %broadcast.splat99.a, %wide.load105.a
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index103 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load106.a = load <4 x float>, ptr %i.az, align 4, !tbaa !19, !alias.scope !141
  %wide.load107.a = load <4 x float>, ptr %i.ba, align 4, !tbaa !19, !alias.scope !141
  %i.bb = fmul <4 x float> %broadcast.splat101, %wide.load106.a
  %i.bc = fmul <4 x float> %broadcast.splat101, %wide.load107.a
  %i.bd = fadd <4 x float> %i.ax, %i.bb
  %i.be = fadd <4 x float> %i.ay, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.au, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  %wide.load109 = load <4 x float>, ptr %i.bf, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  %i.bg = fadd <4 x float> %wide.load108, %i.bd
  %i.bh = fadd <4 x float> %wide.load109, %i.be
  store <4 x float> %i.bg, ptr %i.au, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  store <4 x float> %i.bh, ptr %i.bf, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  %index.next110 = add nuw i64 %index103, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next110, %n.vec97
  br i1 %i.bi, label %middle.block111, label %vector.body102, !llvm.loop !146

middle.block111:                                  ; preds = %vector.body102
  %cmp.n112 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec97
  br i1 %cmp.n112, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader115

.lr.ph.i.i.i.i.i.i.i.preheader115:                ; preds = %vector.memcheck82, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block111
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck82 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec97, %middle.block111 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader115
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.05.i.i.i.i.i.i.i.ph
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !19
  %i.bm = fmul float %i.q, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.05.i.i.i.i.i.i.i.ph
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !19
  %i.bp = fmul float %i.y, %i.bo
  %i.bq = fadd float %i.bm, %i.bp
  %i.br = load float, ptr %i.bj, align 4, !tbaa !19
  %i.bs = fadd float %i.br, %i.bq
  store float %i.bs, ptr %i.bj, align 4, !tbaa !19
  %i.bt = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader115
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader115 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bu = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.bu, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.05.i.i.i.i.i.i.i
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !19
  %i.by = fmul float %i.q, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.05.i.i.i.i.i.i.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !19
  %i.cb = fmul float %i.y, %i.ca
  %i.cc = fadd float %i.by, %i.cb
  %i.cd = load float, ptr %i.bv, align 4, !tbaa !19
  %i.ce = fadd float %i.cd, %i.cc
  store float %i.ce, ptr %i.bv, align 4, !tbaa !19
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cf
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !19
  %i.cj = fmul float %i.q, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.cf
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !19
  %i.cm = fmul float %i.y, %i.cl
  %i.cn = fadd float %i.cj, %i.cm
  %i.co = load float, ptr %i.cg, align 4, !tbaa !19
  %i.cp = fadd float %i.co, %i.cn
  store float %i.cp, ptr %i.cg, align 4, !tbaa !19
  %i.cq = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cq, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !147

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block111, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cr = icmp sgt i64 %i.ak, 3
  br i1 %i.cr, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.cs = insertelement <1 x float> poison, float %i.q, i64 0
  %i.ct = shufflevector <1 x float> %i.cs, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cu = insertelement <1 x float> poison, float %i.y, i64 0
  %i.cv = shufflevector <1 x float> %i.cu, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.cw = icmp slt i64 %i.an, %i.r
  br i1 %i.cw, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cx = shl nsw i64 %i.al, 2
  %i.cy = add i64 %.0.i.i.i.i.i.i.i, %i.cx
  %i.cz = sub i64 %i.r, %i.cy                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cz, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader114, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.da = shl i64 %i.al, 4                        ; 2 uses
  %i.db = shl i64 %.0.i.i.i.i.i.i.i, 2            ; 2 uses
  %i.dc = add i64 %i.da, %i.db                    ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.ae, i64 %i.dc ; 2 uses
  %i.dd = shl i64 %i.t, 2
  %i.de = getelementptr i8, ptr %i.u, i64 %i.dc
  %scevgep68.a = getelementptr i8, ptr %i.de, i64 %i.dd
  %i.df = shl i64 %i.s, 2
  %scevgep69.a = getelementptr i8, ptr %i.u, i64 %i.df
  %i.dg = shl i64 %i.aa, 2
  %i.dh = getelementptr i8, ptr %i.n, i64 %i.da
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.db
  %scevgep70.a = getelementptr i8, ptr %i.di, i64 %i.dg
  %i.dj = shl i64 %i.z, 2
  %scevgep71 = getelementptr i8, ptr %i.n, i64 %i.dj
  %bound0 = icmp ult ptr %scevgep66, %scevgep69.a
  %bound1 = icmp ult ptr %scevgep68.a, %scevgep67.a
  %found.conflict = and i1 %bound0, %bound1
  %bound072 = icmp ult ptr %scevgep66, %scevgep71
  %bound173 = icmp ult ptr %scevgep70.a, %scevgep67.a
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx = or i1 %found.conflict, %found.conflict74
  br i1 %conflict.rdx, label %.lr.ph.i17.i.i.i.i.i.i.preheader114, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cz, -8                      ; 3 uses
  %i.dk = add i64 %i.an, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert75 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat76 = shufflevector <4 x float> %broadcast.splatinsert75, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = add i64 %i.an, %index                   ; 3 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <4 x float>, ptr %i.dn, align 4, !tbaa !19, !alias.scope !148
  %wide.load77.a = load <4 x float>, ptr %i.do, align 4, !tbaa !19, !alias.scope !148
  %i.dp = fmul <4 x float> %broadcast.splat, %wide.load
  %i.dq = fmul <4 x float> %broadcast.splat, %wide.load77.a
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.dl ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load78.a = load <4 x float>, ptr %i.dr, align 4, !tbaa !19, !alias.scope !151
  %wide.load79.a = load <4 x float>, ptr %i.ds, align 4, !tbaa !19, !alias.scope !151
  %i.dt = fmul <4 x float> %broadcast.splat76, %wide.load78.a
  %i.du = fmul <4 x float> %broadcast.splat76, %wide.load79.a
  %i.dv = fadd <4 x float> %i.dp, %i.dt
  %i.dw = fadd <4 x float> %i.dq, %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %wide.load80.a = load <4 x float>, ptr %i.dm, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  %wide.load81 = load <4 x float>, ptr %i.dx, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  %i.dy = fadd <4 x float> %wide.load80.a, %i.dv
  %i.dz = fadd <4 x float> %wide.load81, %i.dw
  store <4 x float> %i.dy, ptr %i.dm, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  store <4 x float> %i.dz, ptr %i.dx, align 4, !tbaa !19, !alias.scope !153, !noalias !155
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader114

.lr.ph.i17.i.i.i.i.i.i.preheader114:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dk, %middle.block ] ; 7 uses
  %i.eb = sub i64 %i.r, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter116 = and i64 %i.eb, 1
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader114
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !19
  %i.ef = fmul float %i.q, %i.ee
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !19
  %i.ei = fmul float %i.y, %i.eh
  %i.ej = fadd float %i.ef, %i.ei
  %i.ek = load float, ptr %i.ec, align 4, !tbaa !19
  %i.el = fadd float %i.ek, %i.ej
  store float %i.el, ptr %i.ec, align 4, !tbaa !19
  %i.em = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader114
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader114 ], [ %i.em, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.en = icmp eq i64 %i.k, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.en, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.fj, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.05.i18.i.i.i.i.i.i
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !19
  %i.er = fmul float %i.q, %i.eq
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.05.i18.i.i.i.i.i.i
  %i.et = load float, ptr %i.es, align 4, !tbaa !19
  %i.eu = fmul float %i.y, %i.et
  %i.ev = fadd float %i.er, %i.eu
  %i.ew = load float, ptr %i.eo, align 4, !tbaa !19
  %i.ex = fadd float %i.ew, %i.ev
  store float %i.ex, ptr %i.eo, align 4, !tbaa !19
  %i.ey = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 3 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ey
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !19
  %i.fc = fmul float %i.q, %i.fb
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ey
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !19
  %i.ff = fmul float %i.y, %i.fe
  %i.fg = fadd float %i.fc, %i.ff
  %i.fh = load float, ptr %i.ez, align 4, !tbaa !19
  %i.fi = fadd float %i.fh, %i.fg
  store float %i.fi, ptr %i.ez, align 4, !tbaa !19
  %i.fj = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.fj, %i.r
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !157

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.021.i.i.i.i.i.i
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !tbaa !47
  %i.fn = fmul <4 x float> %i.ct, %i.fm
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.021.i.i.i.i.i.i
  %i.fp = load <4 x float>, ptr %i.fo, align 1, !tbaa !47
  %i.fq = fmul <4 x float> %i.cv, %i.fp
  %i.fr = fadd <4 x float> %i.fn, %i.fq
  %i.fs = load <4 x float>, ptr %i.fk, align 16, !tbaa !47
  %i.ft = fadd <4 x float> %i.fs, %i.fr
  store <4 x float> %i.ft, ptr %i.fk, align 16, !tbaa !47
  %i.fu = add nsw i64 %.021.i.i.i.i.i.i, 4        ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.an
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !158

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  %i.fw = add nuw nsw i64 %.062, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.fw, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEENS1_IfLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToIS2_NS1_IfLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::Block.439", align 8  ; 9 uses
  %5 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::Block.439", align 8  ; 9 uses
  %7 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.439", align 8  ; 9 uses
  %9 = alloca %"class.Eigen::Block.161", align 8  ; 10 uses
  %10 = alloca %"class.Eigen::Block.439", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !161, !align !162
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 8, !tbaa !19
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph108:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.c

.preheader:                                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.af = icmp eq i64 %i.b, 1
  br i1 %i.af, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %.loopexit

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader: ; preds = %bb.b, %.preheader
  %i.ag = sub i64 2, %i.b
  %smax = call i64 @llvm.smax.i64(i64 %i.ag, i64 1)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58

bb.c:                                             ; preds = %.lr.ph108, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.052.in106 = phi i64 [ %i.b, %.lr.ph108 ], [ %.052107, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 5 uses
  %.052107 = add nsw i64 %.052.in106, -1          ; 7 uses
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.ai = add i64 %i.ah, %.052107                 ; 7 uses
  %i.aj = sub i64 2, %i.ai                        ; 4 uses
  %i.ak = load i8, ptr %i.h, align 8, !tbaa !42, !range !163, !noundef !161
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ai
  %.idx.i.i.i.i = shl nsw i64 %i.ai, 3
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %.idx.i.i.i.i ; 2 uses
  %i.ao = add nsw i64 %i.ah, %.052.in106          ; 5 uses
  %i.ap = sub nsw i64 2, %i.ao                    ; 2 uses
  %.idx.i.i.i.i.i = shl nsw i64 %.052107, 3       ; 3 uses
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.an, ptr %3, align 8, !tbaa !125, !alias.scope !164
  store i64 %i.aj, ptr %i.u, align 8, !tbaa !81, !alias.scope !164
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !81, !alias.scope !164
  store ptr %1, ptr %i.w, align 8, !tbaa !38, !alias.scope !164
  store i64 %i.ai, ptr %i.x, align 8, !tbaa !81, !alias.scope !164
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !81, !alias.scope !164
  store i64 2, ptr %i.z, align 8, !tbaa !167, !alias.scope !164
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !160, !noalias !176, !nonnull !161, !align !162 ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ao
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %.idx.i.i.i.i.i
  store ptr %i.as, ptr %4, align 8, !tbaa !177, !alias.scope !176
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !81, !alias.scope !176
  store ptr %i.aq, ptr %i.ab, align 8, !tbaa !38, !alias.scope !176
  store i64 %i.ao, ptr %i.ac, align 8, !tbaa !81, !alias.scope !176
  store i64 %.052107, ptr %i.ad, align 8, !tbaa !81, !alias.scope !176
  store i64 2, ptr %i.ae, align 8, !tbaa !179, !alias.scope !176
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !181, !nonnull !161, !align !182
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %.052107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.au, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.an, ptr %5, align 8, !tbaa !125, !alias.scope !183
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !81, !alias.scope !183
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !81, !alias.scope !183
  store ptr %1, ptr %i.k, align 8, !tbaa !38, !alias.scope !183
  store i64 %i.ai, ptr %i.l, align 8, !tbaa !81, !alias.scope !183
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !81, !alias.scope !183
  store i64 2, ptr %i.n, align 8, !tbaa !167, !alias.scope !183
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.av = load ptr, ptr %0, align 8, !tbaa !160, !noalias !192, !nonnull !161, !align !162 ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx.i.i.i.i.i
  store ptr %i.ax, ptr %6, align 8, !tbaa !177, !alias.scope !192
  store i64 %i.ap, ptr %i.o, align 8, !tbaa !81, !alias.scope !192
  store ptr %i.av, ptr %i.p, align 8, !tbaa !38, !alias.scope !192
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !81, !alias.scope !192
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1161", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1169", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1176", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.163", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 2
  %i.l = add i64 %i.k, -4                         ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph187, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph187 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047186 = phi i64 [ %i.d, %.lr.ph187 ], [ %i.hh, %.loopexit ] ; 15 uses
  %i.m = shl i64 %indvar, 2
  %i.n = sub i64 %i.l, %i.m
  %i.o = shl i64 %indvar, 2
  %i.p = sub i64 %i.l, %i.o
  %i.q = load i64, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.r = xor i64 %.047186, -1                     ; 2 uses
  %i.s = add i64 %i.c, %i.r                       ; 10 uses
  %.not193 = icmp eq i64 %i.s, 0
  br i1 %.not193, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047186, 1             ; 4 uses
  %i.t = add i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.u = load ptr, ptr %2, align 8, !tbaa !378
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.047186
  %i.w = load float, ptr %i.v, align 4, !tbaa !19
  %i.x = fneg float %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !125, !noalias !483 ; 2 uses
  %.idx.i.i.i.i = shl nsw i64 %.047186, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7115.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !81, !noalias !486
  %i.ac = sub nsw i64 %i.ab, %i.s                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.neg
  %.idx.i.i.i.i50 = shl nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.af = load ptr, ptr %0, align 8, !tbaa !459, !noalias !489
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !462, !noalias !489 ; 5 uses
  %i.ah = mul nsw i64 %i.ag, %.047186
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = sub nsw i64 %i.ag, %i.s                 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3                        ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.s) ; 3 uses
  %i.ar = sub nsw i64 %i.s, %i.aq                 ; 3 uses
  %i.as = sdiv i64 %i.ar, 4                       ; 3 uses
  %i.at = shl nuw nsw i64 %i.as, 2                ; 3 uses
  %i.au = or disjoint i64 %i.at, %i.aq            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = phi i64 [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ]
  %i.aw = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ay = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183 = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.az = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.az, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bd = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 3
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ak, i64 %i.bf
  %i.bg = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 %i.bg)
  %i.bh = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, -1
  %i.bi = add nsw i64 %smax.i.i.i.i.i, %i.bh
  %i.bj = shl i64 %i.bi, 2
  %i.bk = and i64 %i.bj, -16
  %i.bl = add i64 %i.bk, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bl, i1 false), !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = icmp samesign ult i64 %i.ba, %i.s
  br i1 %i.bm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = shl i64 %i.bc, 4
  %i.bo = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %i.bp = getelementptr i8, ptr %i.ak, i64 %i.bn
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.bq = sub nsw i64 %i.bd, %i.bb
  %i.br = shl nuw i64 %i.bq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.br, i1 false), !tbaa !19
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ak, ptr %3, align 8
  store i64 %i.s, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.ai, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.aj, ptr %.sroa.15180.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.ae, ptr %4, align 8
  store i64 %i.t, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.s, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 2, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !492
  store float %i.x, ptr %i.i, align 8, !tbaa !102, !alias.scope !492
  store ptr %i.aa, ptr %i.j, align 8
  store i64 %i.t, ptr %.sroa.8166.32..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.10168.32..sroa_idx, align 8
  store i64 %i.q, ptr %.sroa.11169.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12170.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7115, i64 64, i1 false)
  store i64 0, ptr %.sroa.13171.32..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.14172.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.15173.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16174.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.18176.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bs = icmp sgt i64 %i.d, %.047186
  br i1 %i.bs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar198 = phi i64 [ %indvar.next199, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %.0185 = phi i64 [ %i.gx, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bt = shl i64 %indvar198, 2
  %i.bu = sub i64 %i.l, %i.bt
  %i.bv = shl i64 %indvar198, 2                   ; 2 uses
  %i.bw = shl i64 %indvar198, 2
  %i.bx = sub i64 %i.l, %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !459   ; 8 uses
  %i.bz = load i64, ptr %i.g, align 8, !tbaa !462 ; 7 uses
  %i.ca = mul nsw i64 %i.bz, %.047186
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.0185 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !19 ; 10 uses
  %i.ce = mul nsw i64 %i.bz, %.0185
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.0185
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !19
  %i.ci = fmul float %i.cd, %i.ch
  store float %i.ci, ptr %i.cc, align 4, !tbaa !19
  %i.cj = xor i64 %.0185, -1
  %i.ck = add i64 %i.c, %i.cj                     ; 10 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cm = sub nsw i64 %i.bz, %i.ck                ; 4 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cf, i64 %i.cm ; 10 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cm ; 11 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cr = lshr exact i64 %i.cp, 2
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = and i64 %i.cs, 3                        ; 2 uses
  %i.cu = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.ck) ; 3 uses
  %i.cv = sub nsw i64 %i.ck, %i.cu                ; 3 uses
  %i.cw = sdiv i64 %i.cv, 4
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = or disjoint i64 %i.cx, %i.cu            ; 2 uses
  %.not184 = icmp eq i64 %i.ct, 0
  br i1 %.not184, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 3 uses
  %i.da = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i196 = phi i64 [ %i.cu, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 10 uses
  %min.iters.check213 = icmp ult i64 %.0.i.i.i.i.i.i.i196, 12
  br i1 %min.iters.check213, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.db = mul i64 %i.n, %i.bz
  %i.dc = shl i64 %.0.i.i.i.i.i.i.i196, 2         ; 2 uses
  %i.dd = shl i64 %i.cm, 2                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.by, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep207 = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dg = mul i64 %i.bz, %i.bu
  %i.dh = getelementptr i8, ptr %i.by, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dc
  %scevgep208 = getelementptr i8, ptr %i.di, i64 %i.dd
  %bound0209 = icmp ult ptr %i.co, %scevgep208
  %bound1210 = icmp ult ptr %i.cn, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck206
  %n.vec215 = and i64 %.0.i.i.i.i.i.i.i196, -8    ; 3 uses
  %broadcast.splatinsert216 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat217 = shufflevector <4 x float> %broadcast.splatinsert216, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next224, %vector.body218 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index219 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index219 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load220 = load <4 x float>, ptr %i.dk, align 4, !tbaa !19, !alias.scope !495
  %wide.load221 = load <4 x float>, ptr %i.dl, align 4, !tbaa !19, !alias.scope !495
  %i.dm = fmul <4 x float> %broadcast.splat217, %wide.load220
  %i.dn = fmul <4 x float> %broadcast.splat217, %wide.load221
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load222 = load <4 x float>, ptr %i.dj, align 4, !tbaa !19, !alias.scope !498, !noalias !495
  %wide.load223 = load <4 x float>, ptr %i.do, align 4, !tbaa !19, !alias.scope !498, !noalias !495
  %i.dp = fadd <4 x float> %i.dm, %wide.load222
  %i.dq = fadd <4 x float> %i.dn, %wide.load223
  store <4 x float> %i.dp, ptr %i.dj, align 4, !tbaa !19, !alias.scope !498, !noalias !495
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !19, !alias.scope !498, !noalias !495
  %index.next224 = add nuw i64 %index219, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next224, %n.vec215
  br i1 %i.dr, label %middle.block225, label %vector.body218, !llvm.loop !500

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %.0.i.i.i.i.i.i.i196, %n.vec215
  br i1 %cmp.n226, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader229

.lr.ph.i.i.i.i.i.i.i.preheader229:                ; preds = %vector.memcheck206, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block225
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck206 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec215, %middle.block225 ] ; 5 uses
  %.neg233 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i196, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader229
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i.ph
  %i.du = load float, ptr %i.dt, align 4, !tbaa !19
  %i.dv = fmul float %i.cd, %i.du
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !19
  %i.dx = fadd float %i.dv, %i.dw
  store float %i.dx, ptr %i.ds, align 4, !tbaa !19
  %i.dy = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader229
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader229 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dz = icmp eq i64 %.0.i.i.i.i.i.i.i196, %.neg233
  br i1 %i.dz, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !19
  %i.ed = fmul float %i.cd, %i.ec
  %i.ee = load float, ptr %i.ea, align 4, !tbaa !19
  %i.ef = fadd float %i.ed, %i.ee
  store float %i.ef, ptr %i.ea, align 4, !tbaa !19
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.eg
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !19
  %i.ek = fmul float %i.cd, %i.ej
  %i.el = load float, ptr %i.eh, align 4, !tbaa !19
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.eh, align 4, !tbaa !19
  %i.en = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.en, %.0.i.i.i.i.i.i.i196
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !501

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block225, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eo = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.cz, %middle.block225 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ep = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.da, %middle.block225 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i.i.i.i197 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %middle.block225 ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eq = icmp sgt i64 %i.ep, 3
  br i1 %i.eq, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.er = insertelement <1 x float> poison, float %i.cd, i64 0
  %i.es = shufflevector <1 x float> %i.er, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.et = icmp samesign ult i64 %i.eo, %i.ck
  br i1 %i.et, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = sub nuw i64 %i.ck, %i.eo                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eu, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ev = mul i64 %i.p, %i.bz                     ; 2 uses
  %i.ew = shl i64 %i.eo, 2                        ; 2 uses
  %i.ex = shl i64 %i.cm, 2                        ; 4 uses
  %i.ey = getelementptr i8, ptr %i.by, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ev
  %scevgep200 = getelementptr i8, ptr %i.fb, i64 %i.ex
  %i.fc = mul i64 %i.bz, %i.bx                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.by, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ew
  %scevgep201 = getelementptr i8, ptr %i.fe, i64 %i.ex
  %i.ff = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fc
  %scevgep202 = getelementptr i8, ptr %i.fg, i64 %i.ex
  %bound0 = icmp ult ptr %scevgep, %scevgep202
  %bound1 = icmp ult ptr %scevgep201, %scevgep200
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 9223372036854775800     ; 3 uses
  %i.fh = add i64 %i.eo, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add i64 %i.eo, %index                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.fi ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <4 x float>, ptr %i.fk, align 4, !tbaa !19, !alias.scope !502
  %wide.load203 = load <4 x float>, ptr %i.fl, align 4, !tbaa !19, !alias.scope !502
  %i.fm = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fn = fmul <4 x float> %broadcast.splat, %wide.load203
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load204 = load <4 x float>, ptr %i.fj, align 4, !tbaa !19, !alias.scope !505, !noalias !502
  %wide.load205 = load <4 x float>, ptr %i.fo, align 4, !tbaa !19, !alias.scope !505, !noalias !502
  %i.fp = fadd <4 x float> %i.fm, %wide.load204
  %i.fq = fadd <4 x float> %i.fn, %wide.load205
  store <4 x float> %i.fp, ptr %i.fj, align 4, !tbaa !19, !alias.scope !505, !noalias !502
  store <4 x float> %i.fq, ptr %i.fo, align 4, !tbaa !19, !alias.scope !505, !noalias !502
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader228

.lr.ph.i17.i.i.i.i.i.i.preheader228:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ] ; 6 uses
  %i.fs = sub i64 %i.ck, %.05.i18.i.i.i.i.i.i.ph
  %.neg234 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter230 = and i64 %i.fs, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !19
  %i.fw = fmul float %i.cd, %i.fv
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !19
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %i.ft, align 4, !tbaa !19
  %i.fz = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader228 ], [ %i.fz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ga = icmp eq i64 %indvar198, %.neg234
  br i1 %i.ga, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !19
  %i.ge = fmul float %i.cd, %i.gd
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !19
  %i.gg = fadd float %i.ge, %i.gf
  store float %i.gg, ptr %i.gb, align 4, !tbaa !19
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !19
  %i.gl = fmul float %i.cd, %i.gk
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !19
  %i.gn = fadd float %i.gl, %i.gm
  store float %i.gn, ptr %i.gi, align 4, !tbaa !19
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.go, %i.ck
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !508

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i197, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i
  %i.gr = load <4 x float>, ptr %i.gq, align 1, !tbaa !47
  %i.gs = fmul <4 x float> %i.es, %i.gr
  %i.gt = load <4 x float>, ptr %i.gp, align 16, !tbaa !47
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  store <4 x float> %i.gu, ptr %i.gp, align 16, !tbaa !47
  %i.gv = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.eo
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !509

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gx = add nsw i64 %.0185, -1                  ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, %.047186
  %indvar.next199 = add i64 %indvar198, 1
  br i1 %i.gy, label %.lr.ph, label %.loopexit, !llvm.loop !510

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gz = load ptr, ptr %2, align 8, !tbaa !378
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.047186
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !19
  %i.hc = load ptr, ptr %0, align 8, !tbaa !459
  %i.hd = load i64, ptr %i.g, align 8, !tbaa !462
  %i.he = mul nsw i64 %i.hd, %.047186
  %i.hf = getelementptr [4 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %.047186
  store float %i.hb, ptr %i.hg, align 4, !tbaa !19
  %i.hh = add nsw i64 %.047186, -1
  %i.hi = icmp sgt i64 %.047186, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %bb.b, label %._crit_edge, !llvm.loop !511
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1161", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1169", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1176", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.163", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 2
  %i.l = add i64 %i.k, -4                         ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph187, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph187 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047186 = phi i64 [ %i.d, %.lr.ph187 ], [ %i.hh, %.loopexit ] ; 15 uses
  %i.m = shl i64 %indvar, 2
  %i.n = sub i64 %i.l, %i.m
  %i.o = shl i64 %indvar, 2
  %i.p = sub i64 %i.l, %i.o
  %i.q = load i64, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.r = xor i64 %.047186, -1                     ; 2 uses
  %i.s = add i64 %i.c, %i.r                       ; 10 uses
  %.not193 = icmp eq i64 %i.s, 0
  br i1 %.not193, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047186, 1             ; 4 uses
  %i.t = add i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.u = load ptr, ptr %2, align 8, !tbaa !378
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.047186
  %i.w = load float, ptr %i.v, align 4, !tbaa !19
  %i.x = fneg float %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !125, !noalias !512 ; 2 uses
  %.idx.i.i.i.i = shl nsw i64 %.047186, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7115.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !81, !noalias !515
  %i.ac = sub nsw i64 %i.ab, %i.s                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.neg
  %.idx.i.i.i.i50 = shl nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.af = load ptr, ptr %0, align 8, !tbaa !459, !noalias !518
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !462, !noalias !518 ; 5 uses
  %i.ah = mul nsw i64 %i.ag, %.047186
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = sub nsw i64 %i.ag, %i.s                 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3                        ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.s) ; 3 uses
  %i.ar = sub nsw i64 %i.s, %i.aq                 ; 3 uses
  %i.as = sdiv i64 %i.ar, 4                       ; 3 uses
  %i.at = shl nuw nsw i64 %i.as, 2                ; 3 uses
  %i.au = or disjoint i64 %i.at, %i.aq            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = phi i64 [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ]
  %i.aw = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ay = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183 = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.az = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.az, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bd = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 3
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ak, i64 %i.bf
  %i.bg = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 %i.bg)
  %i.bh = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, -1
  %i.bi = add nsw i64 %smax.i.i.i.i.i, %i.bh
  %i.bj = shl i64 %i.bi, 2
  %i.bk = and i64 %i.bj, -16
  %i.bl = add i64 %i.bk, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bl, i1 false), !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = icmp samesign ult i64 %i.ba, %i.s
  br i1 %i.bm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = shl i64 %i.bc, 4
  %i.bo = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %i.bp = getelementptr i8, ptr %i.ak, i64 %i.bn
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.bq = sub nsw i64 %i.bd, %i.bb
  %i.br = shl nuw i64 %i.bq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.br, i1 false), !tbaa !19
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ak, ptr %3, align 8
  store i64 %i.s, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.ai, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.aj, ptr %.sroa.15180.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.ae, ptr %4, align 8
  store i64 %i.t, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.s, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 2, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !521
  store float %i.x, ptr %i.i, align 8, !tbaa !102, !alias.scope !521
  store ptr %i.aa, ptr %i.j, align 8
  store i64 %i.t, ptr %.sroa.8166.32..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.10168.32..sroa_idx, align 8
  store i64 %i.q, ptr %.sroa.11169.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12170.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7115, i64 64, i1 false)
  store i64 0, ptr %.sroa.13171.32..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.14172.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.15173.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16174.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.18176.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bs = icmp sgt i64 %i.d, %.047186
  br i1 %i.bs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar198 = phi i64 [ %indvar.next199, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %.0185 = phi i64 [ %i.gx, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bt = shl i64 %indvar198, 2
  %i.bu = sub i64 %i.l, %i.bt
  %i.bv = shl i64 %indvar198, 2                   ; 2 uses
  %i.bw = shl i64 %indvar198, 2
  %i.bx = sub i64 %i.l, %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !459   ; 8 uses
  %i.bz = load i64, ptr %i.g, align 8, !tbaa !462 ; 7 uses
  %i.ca = mul nsw i64 %i.bz, %.047186
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.0185 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !19 ; 10 uses
  %i.ce = mul nsw i64 %i.bz, %.0185
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.0185
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !19
  %i.ci = fmul float %i.cd, %i.ch
  store float %i.ci, ptr %i.cc, align 4, !tbaa !19
  %i.cj = xor i64 %.0185, -1
  %i.ck = add i64 %i.c, %i.cj                     ; 10 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cm = sub nsw i64 %i.bz, %i.ck                ; 4 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cf, i64 %i.cm ; 10 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cm ; 11 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cr = lshr exact i64 %i.cp, 2
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = and i64 %i.cs, 3                        ; 2 uses
  %i.cu = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.ck) ; 3 uses
  %i.cv = sub nsw i64 %i.ck, %i.cu                ; 3 uses
  %i.cw = sdiv i64 %i.cv, 4
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = or disjoint i64 %i.cx, %i.cu            ; 2 uses
  %.not184 = icmp eq i64 %i.ct, 0
  br i1 %.not184, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 3 uses
  %i.da = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i196 = phi i64 [ %i.cu, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 10 uses
  %min.iters.check213 = icmp ult i64 %.0.i.i.i.i.i.i.i196, 12
  br i1 %min.iters.check213, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.db = mul i64 %i.n, %i.bz
  %i.dc = shl i64 %.0.i.i.i.i.i.i.i196, 2         ; 2 uses
  %i.dd = shl i64 %i.cm, 2                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.by, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep207 = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dg = mul i64 %i.bz, %i.bu
  %i.dh = getelementptr i8, ptr %i.by, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dc
  %scevgep208 = getelementptr i8, ptr %i.di, i64 %i.dd
  %bound0209 = icmp ult ptr %i.co, %scevgep208
  %bound1210 = icmp ult ptr %i.cn, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck206
  %n.vec215 = and i64 %.0.i.i.i.i.i.i.i196, -8    ; 3 uses
  %broadcast.splatinsert216 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat217 = shufflevector <4 x float> %broadcast.splatinsert216, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next224, %vector.body218 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index219 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index219 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load220 = load <4 x float>, ptr %i.dk, align 4, !tbaa !19, !alias.scope !524
  %wide.load221 = load <4 x float>, ptr %i.dl, align 4, !tbaa !19, !alias.scope !524
  %i.dm = fmul <4 x float> %broadcast.splat217, %wide.load220
  %i.dn = fmul <4 x float> %broadcast.splat217, %wide.load221
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load222 = load <4 x float>, ptr %i.dj, align 4, !tbaa !19, !alias.scope !527, !noalias !524
  %wide.load223 = load <4 x float>, ptr %i.do, align 4, !tbaa !19, !alias.scope !527, !noalias !524
  %i.dp = fadd <4 x float> %i.dm, %wide.load222
  %i.dq = fadd <4 x float> %i.dn, %wide.load223
  store <4 x float> %i.dp, ptr %i.dj, align 4, !tbaa !19, !alias.scope !527, !noalias !524
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !19, !alias.scope !527, !noalias !524
  %index.next224 = add nuw i64 %index219, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next224, %n.vec215
  br i1 %i.dr, label %middle.block225, label %vector.body218, !llvm.loop !529

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %.0.i.i.i.i.i.i.i196, %n.vec215
  br i1 %cmp.n226, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader229

.lr.ph.i.i.i.i.i.i.i.preheader229:                ; preds = %vector.memcheck206, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block225
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck206 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec215, %middle.block225 ] ; 5 uses
  %.neg233 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i196, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader229
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i.ph
  %i.du = load float, ptr %i.dt, align 4, !tbaa !19
  %i.dv = fmul float %i.cd, %i.du
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !19
  %i.dx = fadd float %i.dv, %i.dw
  store float %i.dx, ptr %i.ds, align 4, !tbaa !19
  %i.dy = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader229
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader229 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dz = icmp eq i64 %.0.i.i.i.i.i.i.i196, %.neg233
  br i1 %i.dz, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !19
  %i.ed = fmul float %i.cd, %i.ec
  %i.ee = load float, ptr %i.ea, align 4, !tbaa !19
  %i.ef = fadd float %i.ed, %i.ee
  store float %i.ef, ptr %i.ea, align 4, !tbaa !19
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.eg
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !19
  %i.ek = fmul float %i.cd, %i.ej
  %i.el = load float, ptr %i.eh, align 4, !tbaa !19
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.eh, align 4, !tbaa !19
  %i.en = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.en, %.0.i.i.i.i.i.i.i196
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !530

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block225, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eo = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.cz, %middle.block225 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ep = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.da, %middle.block225 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i.i.i.i197 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %middle.block225 ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eq = icmp sgt i64 %i.ep, 3
  br i1 %i.eq, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.er = insertelement <1 x float> poison, float %i.cd, i64 0
  %i.es = shufflevector <1 x float> %i.er, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.et = icmp samesign ult i64 %i.eo, %i.ck
  br i1 %i.et, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = sub nuw i64 %i.ck, %i.eo                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eu, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ev = mul i64 %i.p, %i.bz                     ; 2 uses
  %i.ew = shl i64 %i.eo, 2                        ; 2 uses
  %i.ex = shl i64 %i.cm, 2                        ; 4 uses
  %i.ey = getelementptr i8, ptr %i.by, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ev
  %scevgep200 = getelementptr i8, ptr %i.fb, i64 %i.ex
  %i.fc = mul i64 %i.bz, %i.bx                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.by, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ew
  %scevgep201 = getelementptr i8, ptr %i.fe, i64 %i.ex
  %i.ff = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fc
  %scevgep202 = getelementptr i8, ptr %i.fg, i64 %i.ex
  %bound0 = icmp ult ptr %scevgep, %scevgep202
  %bound1 = icmp ult ptr %scevgep201, %scevgep200
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 9223372036854775800     ; 3 uses
  %i.fh = add i64 %i.eo, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add i64 %i.eo, %index                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.fi ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <4 x float>, ptr %i.fk, align 4, !tbaa !19, !alias.scope !531
  %wide.load203 = load <4 x float>, ptr %i.fl, align 4, !tbaa !19, !alias.scope !531
  %i.fm = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fn = fmul <4 x float> %broadcast.splat, %wide.load203
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load204 = load <4 x float>, ptr %i.fj, align 4, !tbaa !19, !alias.scope !534, !noalias !531
  %wide.load205 = load <4 x float>, ptr %i.fo, align 4, !tbaa !19, !alias.scope !534, !noalias !531
  %i.fp = fadd <4 x float> %i.fm, %wide.load204
  %i.fq = fadd <4 x float> %i.fn, %wide.load205
  store <4 x float> %i.fp, ptr %i.fj, align 4, !tbaa !19, !alias.scope !534, !noalias !531
  store <4 x float> %i.fq, ptr %i.fo, align 4, !tbaa !19, !alias.scope !534, !noalias !531
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !536

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader228

.lr.ph.i17.i.i.i.i.i.i.preheader228:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ] ; 6 uses
  %i.fs = sub i64 %i.ck, %.05.i18.i.i.i.i.i.i.ph
  %.neg234 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter230 = and i64 %i.fs, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !19
  %i.fw = fmul float %i.cd, %i.fv
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !19
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %i.ft, align 4, !tbaa !19
  %i.fz = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader228 ], [ %i.fz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ga = icmp eq i64 %indvar198, %.neg234
  br i1 %i.ga, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !19
  %i.ge = fmul float %i.cd, %i.gd
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !19
  %i.gg = fadd float %i.ge, %i.gf
  store float %i.gg, ptr %i.gb, align 4, !tbaa !19
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !19
  %i.gl = fmul float %i.cd, %i.gk
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !19
  %i.gn = fadd float %i.gl, %i.gm
  store float %i.gn, ptr %i.gi, align 4, !tbaa !19
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.go, %i.ck
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !537

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i197, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i
  %i.gr = load <4 x float>, ptr %i.gq, align 1, !tbaa !47
  %i.gs = fmul <4 x float> %i.es, %i.gr
  %i.gt = load <4 x float>, ptr %i.gp, align 16, !tbaa !47
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  store <4 x float> %i.gu, ptr %i.gp, align 16, !tbaa !47
  %i.gv = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.eo
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !509

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gx = add nsw i64 %.0185, -1                  ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, %.047186
  %indvar.next199 = add i64 %indvar198, 1
  br i1 %i.gy, label %.lr.ph, label %.loopexit, !llvm.loop !538

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gz = load ptr, ptr %2, align 8, !tbaa !378
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.047186
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !19
  %i.hc = load ptr, ptr %0, align 8, !tbaa !459
  %i.hd = load i64, ptr %i.g, align 8, !tbaa !462
  %i.he = mul nsw i64 %i.hd, %.047186
  %i.hf = getelementptr [4 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %.047186
  store float %i.hb, ptr %i.hg, align 4, !tbaa !19
  %i.hh = add nsw i64 %.047186, -1
  %i.hi = icmp sgt i64 %.047186, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %bb.b, label %._crit_edge, !llvm.loop !539
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %.sroa.065.0.copyload = load ptr, ptr %0, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.667.0.copyload = load i64, ptr %.sroa.667.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.055.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.758.0.copyload = load i64, ptr %.sroa.758.0..sroa_idx, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.e = load float, ptr %3, align 4, !tbaa !19
  %i.f = fmul float %i.d, %i.e
  store float %i.f, ptr %i.a, align 4, !tbaa !19
  %i.g = icmp ugt i64 %.sroa.758.0.copyload, 4611686018427387903
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit: ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.055.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.i = shl nuw i64 %.sroa.758.0.copyload, 2     ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.758.0.copyload, 32769
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.055.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.758.0.copyload, 32768 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !540
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %.sroa.667.0.copyload, i64 noundef %.sroa.566.0.copyload, ptr noundef %.sroa.065.0.copyload, i64 noundef 2, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.s, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.k:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25: ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %.sroa.speculated132 = tail call i64 @llvm.smin.i64(i64 %1, i64 %0) ; 4 uses
  %i.a = icmp sgt i64 %.sroa.speculated132, 0
  br i1 %i.a, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.b

._crit_edge147:                                   ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph146, %bb.k
  %indvars.iv = phi i64 [ %.sroa.speculated132, %.lr.ph146 ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.052144 = phi i64 [ 0, %.lr.ph146 ], [ %i.dv, %bb.k ] ; 6 uses
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 8) ; 2 uses
  %i.d = add i64 %smin, -2
  %i.e = add i64 %smin, -3
  %i.f = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.g = call i64 @llvm.umin.i64(i64 %i.f, i64 8)
  %i.h = sub nsw i64 %.sroa.speculated132, %.052144 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.h, i64 8) ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.j = add i64 %.sroa.speculated, %.052144      ; 3 uses
  %i.k = sub i64 %1, %i.j                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.k

.lr.ph:                                           ; preds = %bb.b, %bb.i
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll:bb.a
  %i.dp = mul nsw i64 %i.cq, %.083
  %i.dq = getelementptr [4 x i8], ptr %i.cr, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !19
  %i.ds = getelementptr inbounds [4 x i8], ptr %1, i64 %.582
  store float %i.dr, ptr %i.ds, align 4, !tbaa !19
  %i.dt = add nuw nsw i64 %.083, 1
  %i.du = mul nsw i64 %i.cq, %i.dt
  %i.dv = getelementptr [4 x i8], ptr %i.cr, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !19
  %i.dx = getelementptr [4 x i8], ptr %1, i64 %.582
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  store float %i.dw, ptr %i.dy, align 4, !tbaa !19
  %i.dz = add nuw nsw i64 %.083, 2
  %i.ea = mul nsw i64 %i.cq, %i.dz
  %i.eb = getelementptr [4 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !19
  %i.ed = getelementptr [4 x i8], ptr %1, i64 %.582
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  store float %i.ec, ptr %i.ee, align 4, !tbaa !19
  %i.ef = add nuw nsw i64 %.083, 3
  %i.eg = mul nsw i64 %i.cq, %i.ef
  %i.eh = getelementptr [4 x i8], ptr %i.cr, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !19
  %i.ej = add nsw i64 %.582, 4                    ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %1, i64 %.582
  %i.el = getelementptr i8, ptr %i.ek, i64 12
  store float %i.ei, ptr %i.el, align 4, !tbaa !19
  %i.em = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %i.em, %3
  br i1 %exitcond97.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !755

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(40) %11) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.Eigen::Matrix.1502", align 16 ; 24 uses
  %13 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %14 = alloca %"struct.Eigen::internal::gemm_pack_lhs.1520", align 1 ; 5 uses
  %15 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %16 = alloca %"class.Eigen::internal::const_blas_data_mapper.1402", align 8 ; 6 uses
  %17 = alloca %"class.Eigen::internal::const_blas_data_mapper.1402", align 8 ; 6 uses
  %18 = alloca %"class.Eigen::internal::blas_data_mapper.1404", align 8 ; 6 uses
  %19 = alloca %"class.Eigen::internal::const_blas_data_mapper.1402", align 8 ; 6 uses
  %20 = alloca %"class.Eigen::internal::blas_data_mapper.1404", align 8 ; 6 uses
  %21 = alloca %"struct.Eigen::internal::gemm_pack_lhs.1520", align 1 ; 4 uses
  %22 = alloca %"class.Eigen::internal::const_blas_data_mapper.1402", align 8 ; 6 uses
  %23 = alloca %"class.Eigen::internal::blas_data_mapper.1404", align 8 ; 6 uses
  %.sroa.speculated261 = tail call i64 @llvm.smin.i64(i64 %2, i64 %0) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !469  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !466  ; 3 uses
  %.sroa.speculated217 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 3 uses
  %.sroa.speculated224 = tail call i64 @llvm.smin.i64(i64 %.sroa.speculated217, i64 %i.b)
  %.sroa.speculated211 = tail call i64 @llvm.smin.i64(i64 %.sroa.speculated224, i64 16) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated217, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 4611686018427387903
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit150

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit150: ; preds = %bb.a
  %i.i = load ptr, ptr %11, align 8, !tbaa !470   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit150
  %i.j = shl nuw i64 %i.e, 2                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 32769
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit150, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit150 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit150 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 32768        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 4611686018427387903
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc179 unwind label %bb.o

.noexc179:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !471  ; 2 uses
  %.not139 = icmp eq ptr %i.w, null
  br i1 %.not139, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.x = shl nuw i64 %i.f, 2                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 32769
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #29 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc182 unwind label %bb.p

.noexc182:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 4 uses
  %i.ag = icmp samesign ugt i64 %i.f, 32768       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %12, i8 0, i64 1024, i1 false), !tbaa !19
  store float 1.000000e+00, ptr %12, align 16, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 68
  store float 1.000000e+00, ptr %i.ah, align 4, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 136
  store float 1.000000e+00, ptr %i.ai, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 204
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 272
  store float 1.000000e+00, ptr %i.ak, align 16, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 340
  store float 1.000000e+00, ptr %i.al, align 4, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 408
  store float 1.000000e+00, ptr %i.am, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 476
  store float 1.000000e+00, ptr %i.an, align 4, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 544
  store float 1.000000e+00, ptr %i.ao, align 16, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 612
  store float 1.000000e+00, ptr %i.ap, align 4, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 680
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 748
  store float 1.000000e+00, ptr %i.ar, align 4, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 816
  store float 1.000000e+00, ptr %i.as, align 16, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 884
  store float 1.000000e+00, ptr %i.at, align 4, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 952
  store float 1.000000e+00, ptr %i.au, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 1020
  store float 1.000000e+00, ptr %i.av, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.aw = icmp sgt i64 %.sroa.speculated261, 0
  br i1 %i.aw, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.be = shl i64 %.sroa.speculated261, 2
  %i.bf = add i64 %i.be, 4
  %i.bg = mul i64 %i.b, -4
  %i.bh = shl i64 %4, 2                           ; 2 uses
  %i.bi = add i64 %i.bh, 4                        ; 4 uses
  %i.bj = mul i64 %.sroa.speculated211, %i.bi
  %i.bk = icmp sgt i64 %i.b, 0
  %smin302 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b)
  %smin303 = tail call i64 @llvm.smin.i64(i64 %smin302, i64 %0) ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.d)
  %smin319 = tail call i64 @llvm.smin.i64(i64 %smin, i64 %0)
  br label %bb.q

._crit_edge294:                                   ; preds = %._crit_edge288, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %i.ag, label %bb.m, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.m:                                             ; preds = %._crit_edge294
  call void @free(ptr noundef %i.ae) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %._crit_edge294, %bb.m
  br i1 %i.s, label %bb.n, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit184

bb.n:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit
  call void @free(ptr noundef %i.q) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit184

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit184: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit, %bb.n
  ret void

bb.o:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188

bb.p:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit188

bb.q:                                             ; preds = %.lr.ph293, %._crit_edge288
  %indvar = phi i64 [ 0, %.lr.ph293 ], [ %indvar.next, %._crit_edge288 ] ; 2 uses
  %.0120291 = phi i64 [ %.sroa.speculated261, %.lr.ph293 ], [ %i.du, %._crit_edge288 ] ; 5 uses
  %smin304 = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0120291) ; 11 uses
  %i.bn = mul i64 %i.bg, %indvar
  %i.bo = add i64 %i.bf, %i.bn
  %i.bp = sub i64 %.0120291, %smin304             ; 4 uses
  %i.bq = mul i64 %i.bh, %i.bp
  %i.br = add i64 %i.bo, %i.bq
  %i.bs = shl i64 %smin304, 2
  %i.bt = sub i64 %i.br, %i.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.bu = getelementptr [4 x i8], ptr %5, i64 %i.bp
  store ptr %i.bu, ptr %16, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIflNS0_22const_blas_data_mapperIflLi0EEELi4ELi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull %i.af, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %smin304, i64 noundef %1, i64 noundef 0, i64 noundef 0)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br i1 %i.bk, label %.lr.ph285.preheader, label %.preheader

.lr.ph285.preheader:                              ; preds = %bb.r
  %i.bv = getelementptr i8, ptr %3, i64 %i.bt
  br label %.lr.ph285

.preheader:                                       ; preds = %bb.ad, %bb.r
  %i.bw = icmp slt i64 %.0120291, %0
  br i1 %i.bw, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %.preheader
  %i.bx = mul nsw i64 %i.bp, %4
  %invariant.gep289 = getelementptr [4 x i8], ptr %3, i64 %i.bx
  br label %bb.ae

bb.s:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.aj

.lr.ph285:                                        ; preds = %.lr.ph285.preheader, %bb.ad
  %indvars.iv = phi i64 [ %smin304, %.lr.ph285.preheader ], [ %indvars.iv.next, %bb.ad ] ; 3 uses
  %indvar295 = phi i64 [ 0, %.lr.ph285.preheader ], [ %indvar.next296, %bb.ad ] ; 3 uses
  %.0119283 = phi i64 [ 0, %.lr.ph285.preheader ], [ %i.ds, %bb.ad ] ; 5 uses
  %smin320.a = call i64 @llvm.smin.i64(i64 %smin303, i64 %indvars.iv)
  %smin321 = call i64 @llvm.smin.i64(i64 %smin320.a, i64 16) ; 3 uses
  %i.bz = mul i64 %.sroa.speculated211, %indvar295
  %i.ca = sub i64 %smin304, %i.bz
  %smin300 = call i64 @llvm.smin.i64(i64 %smin303, i64 %i.ca)
  %smin301 = call i64 @llvm.smin.i64(i64 %smin300, i64 16)
  %i.cb = shl i64 %smin301, 2
  %i.cc = add i64 %i.cb, -4                       ; 3 uses
  %i.cd = sub nsw i64 %smin304, %.0119283         ; 2 uses
  %.sroa.speculated194 = call i64 @llvm.smin.i64(i64 %.sroa.speculated211, i64 %i.cd) ; 14 uses
  %i.ce = sub nsw i64 %i.cd, %.sroa.speculated194 ; 3 uses
  %i.cf = add nsw i64 %.0119283, %i.bp            ; 3 uses
  %i.cg = icmp sgt i64 %.sroa.speculated194, 0
  br i1 %i.cg, label %.lr.ph282, label %._crit_edge

.lr.ph282:                                        ; preds = %.lr.ph285
  %smin320 = call i64 @llvm.smin.i64(i64 %smin319, i64 %indvars.iv)
  %i.ch = mul i64 %i.bj, %indvar295
  %i.ci = getelementptr i8, ptr %i.bv, i64 %i.ch  ; 3 uses
  %xtraiter = and i64 %smin321, 1
  %i.cj = icmp eq i64 %smin320, 1
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph282.new

.lr.ph282.new:                                    ; preds = %.lr.ph282
  %unroll_iter = and i64 %smin321, -2
  br label %bb.t

.loopexit:                                        ; preds = %.lr.ph, %bb.t
  %i.ck = add nuw nsw i64 %.0118281, 2            ; 3 uses
  %i.cl = icmp slt i64 %i.ck, %.sroa.speculated194
  br i1 %i.cl, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit
  %i.cm = shl i64 %i.cr, 2
  %i.cn = sub i64 %i.cc, %i.cm
  %i.co = mul i64 %i.bi, %i.cr
  %scevgep297.1 = getelementptr i8, ptr %i.ci, i64 %i.co
  %i.cp = mul nuw nsw i64 %i.cr, 68
  %i.cq = getelementptr i8, ptr %12, i64 %i.cp
  %scevgep.1 = getelementptr i8, ptr %i.cq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.1, ptr align 4 %scevgep297.1, i64 %i.cn, i1 false), !tbaa !19
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph.1, %.loopexit
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.t, !llvm.loop !756

bb.t:                                             ; preds = %.loopexit.1, %.lr.ph282.new
  %.0118281 = phi i64 [ 0, %.lr.ph282.new ], [ %i.ck, %.loopexit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph282.new ], [ %niter.next.1, %.loopexit.1 ]
  %i.cr = or disjoint i64 %.0118281, 1            ; 4 uses
  %i.cs = icmp slt i64 %i.cr, %.sroa.speculated194
  br i1 %i.cs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.t
  %i.ct = shl i64 %.0118281, 2
  %i.cu = sub i64 %i.cc, %i.ct
  %i.cv = mul i64 %i.bi, %.0118281
  %scevgep297 = getelementptr i8, ptr %i.ci, i64 %i.cv
  %i.cw = mul nuw nsw i64 %.0118281, 68
  %i.cx = getelementptr i8, ptr %12, i64 %i.cw
  %scevgep = getelementptr i8, ptr %i.cx, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep297, i64 %i.cu, i1 false), !tbaa !19
  br label %.loopexit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.loopexit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph282
  %.0118281.epil.init = phi i64 [ 0, %.lr.ph282 ], [ %i.ck, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod322 = trunc i64 %smin321 to i1
  call void @llvm.assume(i1 %lcmp.mod322)
  %i.cy = add nuw nsw i64 %.0118281.epil.init, 1
  %i.cz = icmp slt i64 %i.cy, %.sroa.speculated194
  br i1 %i.cz, label %.lr.ph.epil, label %._crit_edge

.lr.ph.epil:                                      ; preds = %.epil.preheader
  %i.da = shl i64 %.0118281.epil.init, 2
  %i.db = sub i64 %i.cc, %i.da
  %i.dc = mul i64 %i.bi, %.0118281.epil.init
  %scevgep297.epil = getelementptr i8, ptr %i.ci, i64 %i.dc
  %i.dd = mul nuw nsw i64 %.0118281.epil.init, 68
  %i.de = getelementptr i8, ptr %12, i64 %i.dd
  %scevgep.epil = getelementptr i8, ptr %i.de, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep.epil, ptr align 4 %scevgep297.epil, i64 %i.db, i1 false), !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.epil.preheader, %.lr.ph285
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %12, ptr %17, align 8, !tbaa !572
  store i64 16, ptr %i.ay, align 8, !tbaa !574
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.df = getelementptr [4 x i8], ptr %7, i64 %i.cf
  store ptr %i.df, ptr %18, align 8
  store i64 %9, ptr %i.az, align 8
  %i.dg = load float, ptr %10, align 4, !tbaa !19
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated194, i64 noundef %.sroa.speculated194, i64 noundef %1, float noundef %i.dg, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.dh = icmp sgt i64 %i.ce, 0
  br i1 %i.dh, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.di = add nsw i64 %.sroa.speculated194, %i.cf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.dj = mul nsw i64 %i.cf, %4
  %i.dk = getelementptr [4 x i8], ptr %3, i64 %i.di
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %i.dj
  store ptr %i.dl, ptr %19, align 8
  store i64 %4, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 noundef %.sroa.speculated194, i64 noundef %i.ce, i64 noundef 0, i64 noundef 0)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.dm = getelementptr [4 x i8], ptr %7, i64 %i.di
  store ptr %i.dm, ptr %20, align 8
  store i64 %9, ptr %i.bb, align 8
  %i.dn = load float, ptr %10, align 4, !tbaa !19
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.ce, i64 noundef %.sroa.speculated194, i64 noundef %1, float noundef %i.dn, i64 noundef %.sroa.speculated194, i64 noundef %smin304, i64 noundef 0, i64 noundef %.0119283)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ad

bb.z:                                             ; preds = %._crit_edge
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.aj

bb.aa:                                            ; preds = %bb.u
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.aj

bb.ab:                                            ; preds = %bb.w
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.aj

bb.ac:                                            ; preds = %bb.x
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.aj

bb.ad:                                            ; preds = %bb.y, %bb.v
  %i.ds = add nsw i64 %.0119283, %.sroa.speculated211 ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %smin304
  %indvar.next296 = add i64 %indvar295, 1
  %indvars.iv.next = sub i64 %indvars.iv, %.sroa.speculated211
  br i1 %i.dt, label %.lr.ph285, label %.preheader, !llvm.loop !757

._crit_edge288:                                   ; preds = %bb.ag, %.preheader
  %i.du = sub nsw i64 %.0120291, %i.b             ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dv, label %bb.q, label %._crit_edge294, !llvm.loop !758

bb.ae:                                            ; preds = %.lr.ph287, %bb.ag
  %.0286 = phi i64 [ %.0120291, %.lr.ph287 ], [ %i.dw, %bb.ag ] ; 4 uses
  %i.dw = add nsw i64 %.0286, %.sroa.speculated217 ; 3 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.dw)
  %i.dx = sub nsw i64 %.sroa.speculated, %.0286   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %gep290 = getelementptr [4 x i8], ptr %invariant.gep289, i64 %.0286
  store ptr %gep290, ptr %22, align 8
  store i64 %4, ptr %i.bc, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 noundef %smin304, i64 noundef %i.dx, i64 noundef 0, i64 noundef 0)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.dy = getelementptr [4 x i8], ptr %7, i64 %.0286
  store ptr %i.dy, ptr %23, align 8
  store i64 %9, ptr %i.bd, align 8
  %i.dz = load float, ptr %10, align 4, !tbaa !19
  invoke void @_ZN5Eigen8internal11gebp_kernelIfflNS0_16blas_data_mapperIflLi0ELi0ELi1EEELi8ELi4ELb0ELb0EEclERKS3_PKfS8_lllfllll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %i.dx, i64 noundef %smin304, i64 noundef %1, float noundef %i.dz, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.ea = icmp slt i64 %i.dw, %0
  br i1 %i.ea, label %bb.ae, label %._crit_edge288, !llvm.loop !759

bb.ah:                                            ; preds = %bb.ae
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.z, %bb.aa, %bb.ac, %bb.ab, %bb.s
  %.pn143.pn = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.dq, %bb.ab ], [ %i.eb, %bb.ah ], [ %i.do, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dr, %bb.ac ], [ %i.ec, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
end_hunk_2
