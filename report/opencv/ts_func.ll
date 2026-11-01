Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_func?download=true
inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 703
loop-unroll.NumUnrolled: 777
begin_hunk_0_@_ZN6cvtest8convert_IN2cv6hfloatEjEEvPKT_PT0_mdd:bb.a
  %broadcast.splatinsert = insertelement <4 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <4 x double> poison, double %4, i64 0
  %broadcast.splat55 = shufflevector <4 x double> %broadcast.splatinsert54, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i16>, ptr %i.at, align 2, !tbaa !77 ; 2 uses
  %i.au = zext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.av = shl nuw nsw <4 x i32> %i.au, splat (i32 13) ; 2 uses
  %i.aw = and <4 x i32> %i.av, splat (i32 268427264) ; 2 uses
  %i.ax = add nuw nsw <4 x i32> %i.aw, splat (i32 939524096)
  %i.ay = and <4 x i32> %i.au, splat (i32 31744)  ; 2 uses
  %i.az = icmp eq <4 x i32> %i.ay, splat (i32 31744)
  %i.ba = icmp eq <4 x i32> %i.ay, zeroinitializer
  %i.bb = add nuw nsw <4 x i32> %i.aw, splat (i32 947912704)
  %i.bc = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bd = fadd <4 x float> %i.bc, splat (float f0xB8800000)
  %i.be = bitcast <4 x float> %i.bd to <4 x i32>
  %i.bf = or <4 x i32> %i.av, splat (i32 1879048192)
  %predphi = select <4 x i1> %i.az, <4 x i32> %i.bf, <4 x i32> %i.ax
  %predphi56 = select <4 x i1> %i.ba, <4 x i32> %i.be, <4 x i32> %predphi
  %i.bg = sext <4 x i16> %wide.load to <4 x i32>
  %i.bh = and <4 x i32> %i.bg, splat (i32 -2147483648)
  %i.bi = or <4 x i32> %predphi56, %i.bh
  %i.bj = bitcast <4 x i32> %i.bi to <4 x float>
  %i.bk = fpext <4 x float> %i.bj to <4 x double>
  %i.bl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> %broadcast.splat, <4 x double> %broadcast.splat55) ; 2 uses
  %i.bm = fcmp olt <4 x double> %i.bl, zeroinitializer
  %i.bn = select <4 x i1> %i.bm, <4 x double> zeroinitializer, <4 x double> %i.bl
  %i.bo = tail call <4 x double> @llvm.round.v4f64(<4 x double> %i.bn)
  %i.bp = fptoui <4 x double> %i.bo to <4 x i32>
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x i32> %i.bp, ptr %i.bq, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !3740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader88

.lr.ph.preheader88:                               ; preds = %.lr.ph.preheader, %middle.block
  %.235.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader31:                                     ; preds = %bb.d
  br i1 %.not41, label %.loopexit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %.preheader31
  %min.iters.check58 = icmp ult i64 %2, 4
  br i1 %min.iters.check58, label %.lr.ph37.preheader86, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph37.preheader
  %n.vec60 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert61 = insertelement <4 x double> poison, double %3, i64 0
  %broadcast.splat62 = shufflevector <4 x double> %broadcast.splatinsert61, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph59
  %index64 = phi i64 [ 0, %vector.ph59 ], [ %index.next68, %vector.body63 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index64
  %wide.load65 = load <4 x i16>, ptr %i.bs, align 2, !tbaa !77 ; 2 uses
  %i.bt = zext <4 x i16> %wide.load65 to <4 x i32> ; 2 uses
  %i.bu = shl nuw nsw <4 x i32> %i.bt, splat (i32 13) ; 2 uses
  %i.bv = and <4 x i32> %i.bu, splat (i32 268427264) ; 2 uses
  %i.bw = add nuw nsw <4 x i32> %i.bv, splat (i32 939524096)
  %i.bx = and <4 x i32> %i.bt, splat (i32 31744)  ; 2 uses
  %i.by = icmp eq <4 x i32> %i.bx, splat (i32 31744)
  %i.bz = icmp eq <4 x i32> %i.bx, zeroinitializer
  %i.ca = add nuw nsw <4 x i32> %i.bv, splat (i32 947912704)
  %i.cb = bitcast <4 x i32> %i.ca to <4 x float>
  %i.cc = fadd <4 x float> %i.cb, splat (float f0xB8800000)
  %i.cd = bitcast <4 x float> %i.cc to <4 x i32>
  %i.ce = or <4 x i32> %i.bu, splat (i32 1879048192)
  %predphi66 = select <4 x i1> %i.by, <4 x i32> %i.ce, <4 x i32> %i.bw
  %predphi67 = select <4 x i1> %i.bz, <4 x i32> %i.cd, <4 x i32> %predphi66
  %i.cf = sext <4 x i16> %wide.load65 to <4 x i32>
  %i.cg = and <4 x i32> %i.cf, splat (i32 -2147483648)
  %i.ch = or <4 x i32> %predphi67, %i.cg
  %i.ci = bitcast <4 x i32> %i.ch to <4 x float>
  %i.cj = fpext <4 x float> %i.ci to <4 x double>
  %i.ck = fmul <4 x double> %broadcast.splat62, %i.cj ; 2 uses
  %i.cl = fcmp olt <4 x double> %i.ck, zeroinitializer
  %i.cm = select <4 x i1> %i.cl, <4 x double> zeroinitializer, <4 x double> %i.ck
  %i.cn = tail call <4 x double> @llvm.round.v4f64(<4 x double> %i.cm)
  %i.co = fptoui <4 x double> %i.cn to <4 x i32>
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index64
  store <4 x i32> %i.co, ptr %i.cp, align 4, !tbaa !27
  %index.next68 = add nuw i64 %index64, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next68, %n.vec60
  br i1 %i.cq, label %middle.block69, label %vector.body63, !llvm.loop !3741

middle.block69:                                   ; preds = %vector.body63
  %cmp.n70 = icmp eq i64 %2, %n.vec60
  br i1 %cmp.n70, label %.loopexit, label %.lr.ph37.preheader86

.lr.ph37.preheader86:                             ; preds = %.lr.ph37.preheader, %middle.block69
  %.136.ph = phi i64 [ 0, %.lr.ph37.preheader ], [ %n.vec60, %middle.block69 ]
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader86, %_ZNK2cv6hfloatcvfEv.exit
  %.136 = phi i64 [ %i.dn, %_ZNK2cv6hfloatcvfEv.exit ], [ %.136.ph, %.lr.ph37.preheader86 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.136
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !77 ; 2 uses
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = shl nuw nsw i32 %i.ct, 13               ; 2 uses
  %i.cv = and i32 %i.cu, 268427264                ; 2 uses
  %i.cw = add nuw nsw i32 %i.cv, 939524096
  %i.cx = and i32 %i.ct, 31744
  switch i32 %i.cx, label %_ZNK2cv6hfloatcvfEv.exit [
    i32 31744, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph37
  %i.cy = or i32 %i.cu, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit

bb.f:                                             ; preds = %.lr.ph37
  %i.cz = add nuw nsw i32 %i.cv, 947912704
  %i.da = bitcast i32 %i.cz to float
  %i.db = fadd float %i.da, f0xB8800000
  %i.dc = bitcast float %i.db to i32
  br label %_ZNK2cv6hfloatcvfEv.exit

_ZNK2cv6hfloatcvfEv.exit:                         ; preds = %.lr.ph37, %bb.e, %bb.f
  %i.dd = phi i32 [ %i.cy, %bb.e ], [ %i.dc, %bb.f ], [ %i.cw, %.lr.ph37 ]
  %.signext.i = sext i16 %i.cs to i32
  %i.de = and i32 %.signext.i, -2147483648
  %i.df = or i32 %i.dd, %i.de
  %i.dg = bitcast i32 %i.df to float
  %i.dh = fpext float %i.dg to double
  %i.di = fmul double %3, %i.dh                   ; 2 uses
  %i.dj = fcmp olt double %i.di, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.dj, double 0.000000e+00, double %i.di
  %i.dk = tail call double @llvm.round.f64(double %.sroa.speculated.i)
  %i.dl = fptoui double %i.dk to i32
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.136
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !27
  %i.dn = add nuw i64 %.136, 1                    ; 2 uses
  %exitcond44.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond44.not, label %.loopexit, label %.lr.ph37, !llvm.loop !3742

.lr.ph:                                           ; preds = %.lr.ph.preheader88, %_ZNK2cv6hfloatcvfEv.exit29
  %.235 = phi i64 [ %i.ek, %_ZNK2cv6hfloatcvfEv.exit29 ], [ %.235.ph, %.lr.ph.preheader88 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.235
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !77 ; 2 uses
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = shl nuw nsw i32 %i.dq, 13               ; 2 uses
  %i.ds = and i32 %i.dr, 268427264                ; 2 uses
  %i.dt = add nuw nsw i32 %i.ds, 939524096
  %i.du = and i32 %i.dq, 31744
  switch i32 %i.du, label %_ZNK2cv6hfloatcvfEv.exit29 [
    i32 31744, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.dv = or i32 %i.dr, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit29

bb.h:                                             ; preds = %.lr.ph
  %i.dw = add nuw nsw i32 %i.ds, 947912704
  %i.dx = bitcast i32 %i.dw to float
  %i.dy = fadd float %i.dx, f0xB8800000
  %i.dz = bitcast float %i.dy to i32
  br label %_ZNK2cv6hfloatcvfEv.exit29

_ZNK2cv6hfloatcvfEv.exit29:                       ; preds = %.lr.ph, %bb.g, %bb.h
  %i.ea = phi i32 [ %i.dv, %bb.g ], [ %i.dz, %bb.h ], [ %i.dt, %.lr.ph ]
  %.signext.i28 = sext i16 %i.dp to i32
  %i.eb = and i32 %.signext.i28, -2147483648
  %i.ec = or i32 %i.ea, %i.eb
  %i.ed = bitcast i32 %i.ec to float
  %i.ee = fpext float %i.ed to double
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ee, double %3, double %4) ; 2 uses
  %i.eg = fcmp olt double %i.ef, 0.000000e+00
  %.sroa.speculated.i30 = select i1 %i.eg, double 0.000000e+00, double %i.ef
  %i.eh = tail call double @llvm.round.f64(double %.sroa.speculated.i30)
  %i.ei = fptoui double %i.eh to i32
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.235
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !27
  %i.ek = add nuw i64 %.235, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3743

.loopexit:                                        ; preds = %_ZNK2cv6hfloatcvfEv.exit29, %_ZNK2cv6hfloatcvfEv.exit, %_ZN2cvL13saturate_castIjEET_NS_6hfloatE.exit, %middle.block, %middle.block69, %middle.block82, %.preheader33, %.preheader31, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6cvtest8convert_IN2cv6hfloatEmEEvPKT_PT0_mdd(ptr noundef %0, ptr noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #24 comdat {
bb.a:
  %i.a = fcmp oeq double %3, 1.000000e+00
  %i.b = fcmp oeq double %4, 0.000000e+00         ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  %.not41 = icmp eq i64 %2, 0                     ; 3 uses
  br i1 %or.cond, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  br i1 %.not41, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %.preheader, %_ZN2cvL13saturate_castImEET_NS_6hfloatE.exit
  %.038 = phi i64 [ %i.v, %_ZN2cvL13saturate_castImEET_NS_6hfloatE.exit ], [ 0, %.preheader ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.038
  %.sroa.0.0.copyload = load i16, ptr %i.c, align 2, !tbaa !67 ; 2 uses
  %i.d = zext i16 %.sroa.0.0.copyload to i32      ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 13                 ; 2 uses
  %i.f = and i32 %i.e, 268427264                  ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 939524096
  %i.h = and i32 %i.d, 31744
  switch i32 %i.h, label %_ZN2cvL13saturate_castImEET_NS_6hfloatE.exit [
    i32 31744, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph39
  %i.i = or i32 %i.e, 1879048192
  br label %_ZN2cvL13saturate_castImEET_NS_6hfloatE.exit

bb.c:                                             ; preds = %.lr.ph39
  %i.j = add nuw nsw i32 %i.f, 947912704
  %i.k = bitcast i32 %i.j to float
  %i.l = fadd float %i.k, f0xB8800000
  %i.m = bitcast float %i.l to i32
  br label %_ZN2cvL13saturate_castImEET_NS_6hfloatE.exit

_ZN2cvL13saturate_castImEET_NS_6hfloatE.exit:     ; preds = %.lr.ph39, %bb.b, %bb.c
  %i.n = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.c ], [ %i.g, %.lr.ph39 ]
  %.signext.i.i = sext i16 %.sroa.0.0.copyload to i32
  %i.o = and i32 %.signext.i.i, -2147483648
  %i.p = or i32 %i.n, %i.o
  %i.q = bitcast i32 %i.p to float                ; 2 uses
  %i.r = fcmp olt float %i.q, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.r, float 0.000000e+00, float %i.q
  %i.s = tail call float @llvm.round.f32(float %.sroa.speculated.i.i)
  %i.t = fptosi float %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.038
  store i64 %i.t, ptr %i.u, align 8, !tbaa !28
  %i.v = add nuw i64 %.038, 1                     ; 2 uses
  %exitcond45.not = icmp eq i64 %i.v, %2
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph39, !llvm.loop !3744

bb.d:                                             ; preds = %bb.a
  br i1 %i.b, label %.preheader31, label %.preheader33.a

.preheader33.a:                                   ; preds = %bb.d
  br i1 %.not41, label %.loopexit, label %.lr.ph

.preheader31:                                     ; preds = %bb.d
  br i1 %.not41, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader31, %_ZNK2cv6hfloatcvfEv.exit
  %.136 = phi i64 [ %i.as, %_ZNK2cv6hfloatcvfEv.exit ], [ 0, %.preheader31 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.136
  %i.x = load i16, ptr %i.w, align 2, !tbaa !77   ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 13                 ; 2 uses
  %i.aa = and i32 %i.z, 268427264                 ; 2 uses
  %i.ab = add nuw nsw i32 %i.aa, 939524096
  %i.ac = and i32 %i.y, 31744
  switch i32 %i.ac, label %_ZNK2cv6hfloatcvfEv.exit [
    i32 31744, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph37
  %i.ad = or i32 %i.z, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit

bb.f:                                             ; preds = %.lr.ph37
  %i.ae = add nuw nsw i32 %i.aa, 947912704
  %i.af = bitcast i32 %i.ae to float
  %i.ag = fadd float %i.af, f0xB8800000
  %i.ah = bitcast float %i.ag to i32
  br label %_ZNK2cv6hfloatcvfEv.exit

_ZNK2cv6hfloatcvfEv.exit:                         ; preds = %.lr.ph37, %bb.e, %bb.f
  %i.ai = phi i32 [ %i.ad, %bb.e ], [ %i.ah, %bb.f ], [ %i.ab, %.lr.ph37 ]
  %.signext.i = sext i16 %i.x to i32
  %i.aj = and i32 %.signext.i, -2147483648
  %i.ak = or i32 %i.ai, %i.aj
  %i.al = bitcast i32 %i.ak to float
  %i.am = fpext float %i.al to double
  %i.an = fmul double %3, %i.am                   ; 2 uses
  %i.ao = fcmp olt double %i.an, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ao, double 0.000000e+00, double %i.an
  %i.ap = tail call double @llvm.round.f64(double %.sroa.speculated.i)
  %i.aq = fptosi double %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.136
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !28
  %i.as = add nuw i64 %.136, 1                    ; 2 uses
  %exitcond44.not = icmp eq i64 %i.as, %2
  br i1 %exitcond44.not, label %.loopexit, label %.lr.ph37, !llvm.loop !3745

.lr.ph:                                           ; preds = %.preheader33.a, %_ZNK2cv6hfloatcvfEv.exit29
  %.235 = phi i64 [ %i.bp, %_ZNK2cv6hfloatcvfEv.exit29 ], [ 0, %.preheader33.a ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.235
  %i.au = load i16, ptr %i.at, align 2, !tbaa !77 ; 2 uses
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = shl nuw nsw i32 %i.av, 13               ; 2 uses
  %i.ax = and i32 %i.aw, 268427264                ; 2 uses
  %i.ay = add nuw nsw i32 %i.ax, 939524096
  %i.az = and i32 %i.av, 31744
  switch i32 %i.az, label %_ZNK2cv6hfloatcvfEv.exit29 [
    i32 31744, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.ba = or i32 %i.aw, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit29

bb.h:                                             ; preds = %.lr.ph
  %i.bb = add nuw nsw i32 %i.ax, 947912704
  %i.bc = bitcast i32 %i.bb to float
  %i.bd = fadd float %i.bc, f0xB8800000
  %i.be = bitcast float %i.bd to i32
  br label %_ZNK2cv6hfloatcvfEv.exit29

_ZNK2cv6hfloatcvfEv.exit29:                       ; preds = %.lr.ph, %bb.g, %bb.h
  %i.bf = phi i32 [ %i.ba, %bb.g ], [ %i.be, %bb.h ], [ %i.ay, %.lr.ph ]
  %.signext.i28 = sext i16 %i.au to i32
  %i.bg = and i32 %.signext.i28, -2147483648
  %i.bh = or i32 %i.bf, %i.bg
  %i.bi = bitcast i32 %i.bh to float
  %i.bj = fpext float %i.bi to double
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %3, double %4) ; 2 uses
  %i.bl = fcmp olt double %i.bk, 0.000000e+00
  %.sroa.speculated.i30 = select i1 %i.bl, double 0.000000e+00, double %i.bk
  %i.bm = tail call double @llvm.round.f64(double %.sroa.speculated.i30)
  %i.bn = fptosi double %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.235
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !28
  %i.bp = add nuw i64 %.235, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3746

.loopexit:                                        ; preds = %_ZNK2cv6hfloatcvfEv.exit29, %_ZNK2cv6hfloatcvfEv.exit, %_ZN2cvL13saturate_castImEET_NS_6hfloatE.exit, %.preheader33.a, %.preheader31, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6cvtest8convert_IN2cv6hfloatElEEvPKT_PT0_mdd(ptr noundef %0, ptr noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #24 comdat {
bb.a:
  %i.a = fcmp oeq double %3, 1.000000e+00
  %i.b = fcmp oeq double %4, 0.000000e+00         ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  %.not40 = icmp eq i64 %2, 0                     ; 3 uses
  br i1 %or.cond, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  br i1 %.not40, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader, %_ZN2cvL13saturate_castIlEET_NS_6hfloatE.exit
  %.037 = phi i64 [ %i.u, %_ZN2cvL13saturate_castIlEET_NS_6hfloatE.exit ], [ 0, %.preheader ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.037
  %.sroa.0.0.copyload = load i16, ptr %i.c, align 2, !tbaa !67 ; 2 uses
  %i.d = zext i16 %.sroa.0.0.copyload to i32      ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 13                 ; 2 uses
  %i.f = and i32 %i.e, 268427264                  ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 939524096
  %i.h = and i32 %i.d, 31744
  switch i32 %i.h, label %_ZN2cvL13saturate_castIlEET_NS_6hfloatE.exit [
    i32 31744, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph38
  %i.i = or i32 %i.e, 1879048192
  br label %_ZN2cvL13saturate_castIlEET_NS_6hfloatE.exit

bb.c:                                             ; preds = %.lr.ph38
  %i.j = add nuw nsw i32 %i.f, 947912704
  %i.k = bitcast i32 %i.j to float
  %i.l = fadd float %i.k, f0xB8800000
  %i.m = bitcast float %i.l to i32
  br label %_ZN2cvL13saturate_castIlEET_NS_6hfloatE.exit

_ZN2cvL13saturate_castIlEET_NS_6hfloatE.exit:     ; preds = %.lr.ph38, %bb.b, %bb.c
  %i.n = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.c ], [ %i.g, %.lr.ph38 ]
  %.signext.i.i = sext i16 %.sroa.0.0.copyload to i32
  %i.o = and i32 %.signext.i.i, -2147483648
  %i.p = or i32 %i.n, %i.o
  %i.q = bitcast i32 %i.p to float
  %i.r = tail call float @llvm.round.f32(float %i.q)
  %i.s = fptosi float %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.037
  store i64 %i.s, ptr %i.t, align 8, !tbaa !28
  %i.u = add nuw i64 %.037, 1                     ; 2 uses
  %exitcond44.not = icmp eq i64 %i.u, %2
  br i1 %exitcond44.not, label %.loopexit, label %.lr.ph38, !llvm.loop !3747

bb.d:                                             ; preds = %bb.a
  br i1 %i.b, label %.preheader30, label %.preheader32

.preheader32:                                     ; preds = %bb.d
  br i1 %.not40, label %.loopexit, label %.lr.ph

.preheader30:                                     ; preds = %bb.d
  br i1 %.not40, label %.loopexit, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader30, %_ZNK2cv6hfloatcvfEv.exit
  %.135 = phi i64 [ %i.aq, %_ZNK2cv6hfloatcvfEv.exit ], [ 0, %.preheader30 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.135
  %i.w = load i16, ptr %i.v, align 2, !tbaa !77   ; 2 uses
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = shl nuw nsw i32 %i.x, 13                 ; 2 uses
  %i.z = and i32 %i.y, 268427264                  ; 2 uses
  %i.aa = add nuw nsw i32 %i.z, 939524096
  %i.ab = and i32 %i.x, 31744
  switch i32 %i.ab, label %_ZNK2cv6hfloatcvfEv.exit [
    i32 31744, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph36
  %i.ac = or i32 %i.y, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit

bb.f:                                             ; preds = %.lr.ph36
  %i.ad = add nuw nsw i32 %i.z, 947912704
  %i.ae = bitcast i32 %i.ad to float
  %i.af = fadd float %i.ae, f0xB8800000
  %i.ag = bitcast float %i.af to i32
  br label %_ZNK2cv6hfloatcvfEv.exit

_ZNK2cv6hfloatcvfEv.exit:                         ; preds = %.lr.ph36, %bb.e, %bb.f
  %i.ah = phi i32 [ %i.ac, %bb.e ], [ %i.ag, %bb.f ], [ %i.aa, %.lr.ph36 ]
  %.signext.i = sext i16 %i.w to i32
  %i.ai = and i32 %.signext.i, -2147483648
  %i.aj = or i32 %i.ah, %i.ai
  %i.ak = bitcast i32 %i.aj to float
  %i.al = fpext float %i.ak to double
  %i.am = fmul double %3, %i.al
  %i.an = tail call double @llvm.round.f64(double %i.am)
  %i.ao = fptosi double %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.135
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !28
  %i.aq = add nuw i64 %.135, 1                    ; 2 uses
  %exitcond43.not = icmp eq i64 %i.aq, %2
  br i1 %exitcond43.not, label %.loopexit, label %.lr.ph36, !llvm.loop !3748

.lr.ph:                                           ; preds = %.preheader32, %_ZNK2cv6hfloatcvfEv.exit29
  %.234 = phi i64 [ %i.bm, %_ZNK2cv6hfloatcvfEv.exit29 ], [ 0, %.preheader32 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.234
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !77 ; 2 uses
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = shl nuw nsw i32 %i.at, 13               ; 2 uses
  %i.av = and i32 %i.au, 268427264                ; 2 uses
  %i.aw = add nuw nsw i32 %i.av, 939524096
  %i.ax = and i32 %i.at, 31744
  switch i32 %i.ax, label %_ZNK2cv6hfloatcvfEv.exit29 [
    i32 31744, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.ay = or i32 %i.au, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit29

bb.h:                                             ; preds = %.lr.ph
  %i.az = add nuw nsw i32 %i.av, 947912704
  %i.ba = bitcast i32 %i.az to float
  %i.bb = fadd float %i.ba, f0xB8800000
  %i.bc = bitcast float %i.bb to i32
  br label %_ZNK2cv6hfloatcvfEv.exit29

_ZNK2cv6hfloatcvfEv.exit29:                       ; preds = %.lr.ph, %bb.g, %bb.h
  %i.bd = phi i32 [ %i.ay, %bb.g ], [ %i.bc, %bb.h ], [ %i.aw, %.lr.ph ]
  %.signext.i28 = sext i16 %i.as to i32
  %i.be = and i32 %.signext.i28, -2147483648
  %i.bf = or i32 %i.bd, %i.be
  %i.bg = bitcast i32 %i.bf to float
  %i.bh = fpext float %i.bg to double
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %3, double %4)
  %i.bj = tail call double @llvm.round.f64(double %i.bi)
  %i.bk = fptosi double %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.234
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !28
  %i.bm = add nuw i64 %.234, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3749

.loopexit:                                        ; preds = %_ZNK2cv6hfloatcvfEv.exit29, %_ZNK2cv6hfloatcvfEv.exit, %_ZN2cvL13saturate_castIlEET_NS_6hfloatE.exit, %.preheader32, %.preheader30, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6cvtest8convert_IN2cv6hfloatES2_EEvPKT_PT0_mdd(ptr noundef %0, ptr noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #24 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = fcmp oeq double %3, 1.000000e+00
  %i.d = fcmp oeq double %4, 0.000000e+00         ; 2 uses
  %or.cond = and i1 %i.c, %i.d
  %.not44 = icmp eq i64 %2, 0                     ; 3 uses
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not44, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check89 = icmp ult i64 %2, 4
  %i.e = sub i64 %i.a, %i.b
  %diff.check91 = icmp ugt i64 %i.e, -32
  %or.cond108 = or i1 %min.iters.check89, %diff.check91
  br i1 %or.cond108, label %.lr.ph42.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check92 = icmp ult i64 %2, 16
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph93

vector.ph93:                                      ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %2, 12
  %n.vec94 = and i64 %2, -16                      ; 4 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.ph93, %vector.body95
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next99, %vector.body95 ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load97 = load <8 x i16>, ptr %i.g, align 2, !tbaa !67
  %wide.load98 = load <8 x i16>, ptr %i.h, align 2, !tbaa !67
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <8 x i16> %wide.load97, ptr %i.i, align 2, !tbaa !67
  store <8 x i16> %wide.load98, ptr %i.j, align 2, !tbaa !67
  %index.next99 = add nuw i64 %index96, 16        ; 2 uses
  %i.k = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.k, label %middle.block100, label %vector.body95, !llvm.loop !3750

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %2, %n.vec94
  br i1 %cmp.n101, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block100
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph42.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec94, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %2, -4                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index103
  %wide.load104 = load <4 x i16>, ptr %i.l, align 2, !tbaa !67
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index103
  store <4 x i16> %wide.load104, ptr %i.m, align 2, !tbaa !67
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %i.n = icmp eq i64 %index.next105, %n.vec102
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3751

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %2, %n.vec102
  br i1 %cmp.n106, label %.loopexit, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.041.ph = phi i64 [ 0, %iter.check ], [ %n.vec94, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader, %.lr.ph42.prol
  %.041.prol = phi i64 [ %i.q, %.lr.ph42.prol ], [ %.041.ph, %.lr.ph42.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph42.prol ], [ 0, %.lr.ph42.preheader ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.041.prol
  %.sroa.03.0.copyload.prol = load i16, ptr %i.o, align 2, !tbaa !67
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.041.prol
  store i16 %.sroa.03.0.copyload.prol, ptr %i.p, align 2, !tbaa !67
  %i.q = add nuw i64 %.041.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph42.prol.loopexit, label %.lr.ph42.prol, !llvm.loop !3752

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader
  %.041.unr = phi i64 [ %.041.ph, %.lr.ph42.preheader ], [ %i.q, %.lr.ph42.prol ]
  %i.r = sub i64 %.041.ph, %2
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %.041 = phi i64 [ %i.ae, %.lr.ph42 ], [ %.041.unr, %.lr.ph42.prol.loopexit ] ; 6 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.041
  %.sroa.03.0.copyload = load i16, ptr %i.t, align 2, !tbaa !67
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.041
  store i16 %.sroa.03.0.copyload, ptr %i.u, align 2, !tbaa !67
  %i.v = add nuw i64 %.041, 1                     ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  %.sroa.03.0.copyload.1 = load i16, ptr %i.w, align 2, !tbaa !67
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  store i16 %.sroa.03.0.copyload.1, ptr %i.x, align 2, !tbaa !67
  %i.y = add nuw i64 %.041, 2                     ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.y
  %.sroa.03.0.copyload.2 = load i16, ptr %i.z, align 2, !tbaa !67
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  store i16 %.sroa.03.0.copyload.2, ptr %i.aa, align 2, !tbaa !67
  %i.ab = add nuw i64 %.041, 3                    ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ab
  %.sroa.03.0.copyload.3 = load i16, ptr %i.ac, align 2, !tbaa !67
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ab
  store i16 %.sroa.03.0.copyload.3, ptr %i.ad, align 2, !tbaa !67
  %i.ae = add nuw i64 %.041, 4                    ; 2 uses
  %exitcond48.not.3 = icmp eq i64 %i.ae, %2
  br i1 %exitcond48.not.3, label %.loopexit, label %.lr.ph42, !llvm.loop !3753

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %.preheader34, label %.preheader36

.preheader36:                                     ; preds = %bb.b
  br i1 %.not44, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader36
  %min.iters.check = icmp ult i64 %2, 8
  %i.af = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.af, -16
  %or.cond109 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond109, label %.lr.ph.preheader113, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <8 x double> %broadcast.splatinsert, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert60 = insertelement <8 x double> poison, double %4, i64 0
  %broadcast.splat61 = shufflevector <8 x double> %broadcast.splatinsert60, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ag, align 2, !tbaa !77 ; 2 uses
  %i.ah = zext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.ai = shl nuw nsw <8 x i32> %i.ah, splat (i32 13) ; 2 uses
  %i.aj = and <8 x i32> %i.ai, splat (i32 268427264) ; 2 uses
  %i.ak = add nuw nsw <8 x i32> %i.aj, splat (i32 939524096)
  %i.al = and <8 x i32> %i.ah, splat (i32 31744)  ; 2 uses
  %i.am = icmp eq <8 x i32> %i.al, splat (i32 31744)
  %i.an = icmp eq <8 x i32> %i.al, zeroinitializer
  %i.ao = add nuw nsw <8 x i32> %i.aj, splat (i32 947912704)
  %i.ap = bitcast <8 x i32> %i.ao to <8 x float>
  %i.aq = fadd <8 x float> %i.ap, splat (float f0xB8800000)
  %i.ar = bitcast <8 x float> %i.aq to <8 x i32>
  %i.as = or <8 x i32> %i.ai, splat (i32 1879048192)
  %predphi = select <8 x i1> %i.am, <8 x i32> %i.as, <8 x i32> %i.ak
  %predphi62 = select <8 x i1> %i.an, <8 x i32> %i.ar, <8 x i32> %predphi
  %i.at = sext <8 x i16> %wide.load to <8 x i32>
  %i.au = and <8 x i32> %i.at, splat (i32 -2147483648)
  %i.av = or <8 x i32> %predphi62, %i.au
  %i.aw = bitcast <8 x i32> %i.av to <8 x float>
  %i.ax = fpext <8 x float> %i.aw to <8 x double>
  %i.ay = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ax, <8 x double> %broadcast.splat, <8 x double> %broadcast.splat61)
  %i.az = fptrunc <8 x double> %i.ay to <8 x float> ; 2 uses
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.az) ; 2 uses
  %i.bb = bitcast <8 x float> %i.ba to <8 x i32>  ; 5 uses
  %i.bc = icmp samesign ult <8 x i32> %i.bb, splat (i32 1199570944)
  %i.bd = add nsw <8 x i32> %i.bb, splat (i32 -947912704)
  %i.be = icmp ult <8 x i32> %i.bd, splat (i32 251658240)
  %i.bf = add nuw nsw <8 x i32> %i.bb, splat (i32 134221823)
  %i.bg = lshr <8 x i32> %i.bb, splat (i32 13)
  %i.bh = and <8 x i32> %i.bg, splat (i32 1)
  %i.bi = add nuw nsw <8 x i32> %i.bf, %i.bh
  %i.bj = lshr <8 x i32> %i.bi, splat (i32 13)
  %i.bk = trunc <8 x i32> %i.bj to <8 x i16>
  %i.bl = fadd <8 x float> %i.ba, splat (float 5.000000e-01)
  %i.bm = bitcast <8 x float> %i.bl to <8 x i32>
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  %i.bo = icmp samesign ugt <8 x i32> %i.bb, splat (i32 2139095040)
  %i.bp = select <8 x i1> %i.bo, <8 x i16> splat (i16 32256), <8 x i16> splat (i16 31744)
  %predphi63 = select <8 x i1> %i.bc, <8 x i16> %i.bn, <8 x i16> %i.bp
  %predphi64 = select <8 x i1> %i.be, <8 x i16> %i.bk, <8 x i16> %predphi63
  %i.bq = bitcast <8 x float> %i.az to <8 x i32>
  %i.br = lshr <8 x i32> %i.bq, splat (i32 16)
  %i.bs = trunc nuw <8 x i32> %i.br to <8 x i16>
  %i.bt = and <8 x i16> %i.bs, splat (i16 -32768)
  %i.bu = or <8 x i16> %predphi64, %i.bt
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.bu, ptr %i.bv, align 2, !tbaa !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !3754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader113

.lr.ph.preheader113:                              ; preds = %.lr.ph.preheader, %middle.block
  %.238.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader34:                                     ; preds = %bb.b
  br i1 %.not44, label %.loopexit, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.preheader34
  %min.iters.check68 = icmp ult i64 %2, 8
  %i.bx = sub i64 %i.a, %i.b
  %diff.check70 = icmp ugt i64 %i.bx, -16
  %or.cond110 = or i1 %min.iters.check68, %diff.check70
  br i1 %or.cond110, label %.lr.ph40.preheader111, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph40.preheader
  %n.vec72 = and i64 %2, -8                       ; 3 uses
  %broadcast.splatinsert73 = insertelement <8 x double> poison, double %3, i64 0
  %broadcast.splat74 = shufflevector <8 x double> %broadcast.splatinsert73, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next82, %vector.body75 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index76
  %wide.load77 = load <8 x i16>, ptr %i.by, align 2, !tbaa !77 ; 2 uses
  %i.bz = zext <8 x i16> %wide.load77 to <8 x i32> ; 2 uses
  %i.ca = shl nuw nsw <8 x i32> %i.bz, splat (i32 13) ; 2 uses
  %i.cb = and <8 x i32> %i.ca, splat (i32 268427264) ; 2 uses
  %i.cc = add nuw nsw <8 x i32> %i.cb, splat (i32 939524096)
  %i.cd = and <8 x i32> %i.bz, splat (i32 31744)  ; 2 uses
  %i.ce = icmp eq <8 x i32> %i.cd, splat (i32 31744)
  %i.cf = icmp eq <8 x i32> %i.cd, zeroinitializer
  %i.cg = add nuw nsw <8 x i32> %i.cb, splat (i32 947912704)
  %i.ch = bitcast <8 x i32> %i.cg to <8 x float>
  %i.ci = fadd <8 x float> %i.ch, splat (float f0xB8800000)
  %i.cj = bitcast <8 x float> %i.ci to <8 x i32>
  %i.ck = or <8 x i32> %i.ca, splat (i32 1879048192)
  %predphi78 = select <8 x i1> %i.ce, <8 x i32> %i.ck, <8 x i32> %i.cc
  %predphi79 = select <8 x i1> %i.cf, <8 x i32> %i.cj, <8 x i32> %predphi78
  %i.cl = sext <8 x i16> %wide.load77 to <8 x i32>
  %i.cm = and <8 x i32> %i.cl, splat (i32 -2147483648)
  %i.cn = or <8 x i32> %predphi79, %i.cm
  %i.co = bitcast <8 x i32> %i.cn to <8 x float>
  %i.cp = fpext <8 x float> %i.co to <8 x double>
  %i.cq = fmul <8 x double> %broadcast.splat74, %i.cp
  %i.cr = fptrunc <8 x double> %i.cq to <8 x float> ; 2 uses
  %i.cs = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cr) ; 2 uses
  %i.ct = bitcast <8 x float> %i.cs to <8 x i32>  ; 5 uses
  %i.cu = icmp samesign ult <8 x i32> %i.ct, splat (i32 1199570944)
  %i.cv = add nsw <8 x i32> %i.ct, splat (i32 -947912704)
  %i.cw = icmp ult <8 x i32> %i.cv, splat (i32 251658240)
  %i.cx = add nuw nsw <8 x i32> %i.ct, splat (i32 134221823)
  %i.cy = lshr <8 x i32> %i.ct, splat (i32 13)
  %i.cz = and <8 x i32> %i.cy, splat (i32 1)
  %i.da = add nuw nsw <8 x i32> %i.cx, %i.cz
  %i.db = lshr <8 x i32> %i.da, splat (i32 13)
  %i.dc = trunc <8 x i32> %i.db to <8 x i16>
  %i.dd = fadd <8 x float> %i.cs, splat (float 5.000000e-01)
  %i.de = bitcast <8 x float> %i.dd to <8 x i32>
  %i.df = trunc <8 x i32> %i.de to <8 x i16>
  %i.dg = icmp samesign ugt <8 x i32> %i.ct, splat (i32 2139095040)
  %i.dh = select <8 x i1> %i.dg, <8 x i16> splat (i16 32256), <8 x i16> splat (i16 31744)
  %predphi80 = select <8 x i1> %i.cu, <8 x i16> %i.df, <8 x i16> %i.dh
  %predphi81 = select <8 x i1> %i.cw, <8 x i16> %i.dc, <8 x i16> %predphi80
  %i.di = bitcast <8 x float> %i.cr to <8 x i32>
  %i.dj = lshr <8 x i32> %i.di, splat (i32 16)
  %i.dk = trunc nuw <8 x i32> %i.dj to <8 x i16>
  %i.dl = and <8 x i16> %i.dk, splat (i16 -32768)
  %i.dm = or <8 x i16> %predphi81, %i.dl
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index76
  store <8 x i16> %i.dm, ptr %i.dn, align 2, !tbaa !67
  %index.next82 = add nuw i64 %index76, 8         ; 2 uses
  %i.do = icmp eq i64 %index.next82, %n.vec72
  br i1 %i.do, label %middle.block83, label %vector.body75, !llvm.loop !3755

middle.block83:                                   ; preds = %vector.body75
  %cmp.n84 = icmp eq i64 %2, %n.vec72
  br i1 %cmp.n84, label %.loopexit, label %.lr.ph40.preheader111

.lr.ph40.preheader111:                            ; preds = %.lr.ph40.preheader, %middle.block83
  %.139.ph = phi i64 [ 0, %.lr.ph40.preheader ], [ %n.vec72, %middle.block83 ]
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader111, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit
  %.139 = phi i64 [ %i.fe, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit ], [ %.139.ph, %.lr.ph40.preheader111 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.139
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !77 ; 2 uses
  %i.dr = zext i16 %i.dq to i32                   ; 2 uses
  %i.ds = shl nuw nsw i32 %i.dr, 13               ; 2 uses
  %i.dt = and i32 %i.ds, 268427264                ; 2 uses
  %i.du = add nuw nsw i32 %i.dt, 939524096
  %i.dv = and i32 %i.dr, 31744
  switch i32 %i.dv, label %_ZNK2cv6hfloatcvfEv.exit [
    i32 31744, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph40
  %i.dw = or i32 %i.ds, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit

bb.d:                                             ; preds = %.lr.ph40
  %i.dx = add nuw nsw i32 %i.dt, 947912704
  %i.dy = bitcast i32 %i.dx to float
  %i.dz = fadd float %i.dy, f0xB8800000
  %i.ea = bitcast float %i.dz to i32
  br label %_ZNK2cv6hfloatcvfEv.exit

_ZNK2cv6hfloatcvfEv.exit:                         ; preds = %.lr.ph40, %bb.c, %bb.d
  %i.eb = phi i32 [ %i.dw, %bb.c ], [ %i.ea, %bb.d ], [ %i.du, %.lr.ph40 ]
  %.signext.i = sext i16 %i.dq to i32
  %i.ec = and i32 %.signext.i, -2147483648
  %i.ed = or i32 %i.eb, %i.ec
  %i.ee = bitcast i32 %i.ed to float
  %i.ef = fpext float %i.ee to double
  %i.eg = fmul double %3, %i.ef
  %i.eh = fptrunc double %i.eg to float           ; 2 uses
  %i.ei = tail call float @llvm.fabs.f32(float %i.eh) ; 2 uses
  %i.ej = bitcast float %i.ei to i32              ; 5 uses
  %i.ek = icmp samesign ugt i32 %i.ej, 1199570943
  br i1 %i.ek, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit
  %i.el = icmp samesign ugt i32 %i.ej, 2139095040
  %i.em = select i1 %i.el, i16 32256, i16 31744
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit

bb.f:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit
  %i.en = icmp samesign ult i32 %i.ej, 947912704
  br i1 %i.en, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.eo = fadd float %i.ei, 5.000000e-01
  %i.ep = bitcast float %i.eo to i32
  %i.eq = trunc i32 %i.ep to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit

bb.h:                                             ; preds = %bb.f
  %i.er = add nuw nsw i32 %i.ej, 134221823
  %i.es = lshr i32 %i.ej, 13
  %i.et = and i32 %i.es, 1
  %i.eu = add nuw nsw i32 %i.er, %i.et
  %i.ev = lshr i32 %i.eu, 13
  %i.ew = trunc i32 %i.ev to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit

_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit:     ; preds = %bb.e, %bb.g, %bb.h
  %i.ex = phi i16 [ %i.eq, %bb.g ], [ %i.ew, %bb.h ], [ %i.em, %bb.e ]
  %i.ey = bitcast float %i.eh to i32
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = trunc nuw i32 %i.ez to i16
  %i.fb = and i16 %i.fa, -32768
  %i.fc = or i16 %i.ex, %i.fb
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.139
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !67
  %i.fe = add nuw i64 %.139, 1                    ; 2 uses
  %exitcond47.not = icmp eq i64 %i.fe, %2
  br i1 %exitcond47.not, label %.loopexit, label %.lr.ph40, !llvm.loop !3756

.lr.ph:                                           ; preds = %.lr.ph.preheader113, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit33
  %.238 = phi i64 [ %i.gu, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit33 ], [ %.238.ph, %.lr.ph.preheader113 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.238
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !77 ; 2 uses
  %i.fh = zext i16 %i.fg to i32                   ; 2 uses
  %i.fi = shl nuw nsw i32 %i.fh, 13               ; 2 uses
  %i.fj = and i32 %i.fi, 268427264                ; 2 uses
  %i.fk = add nuw nsw i32 %i.fj, 939524096
  %i.fl = and i32 %i.fh, 31744
  switch i32 %i.fl, label %_ZNK2cv6hfloatcvfEv.exit32 [
    i32 31744, label %bb.i
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.fm = or i32 %i.fi, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit32

bb.j:                                             ; preds = %.lr.ph
  %i.fn = add nuw nsw i32 %i.fj, 947912704
  %i.fo = bitcast i32 %i.fn to float
  %i.fp = fadd float %i.fo, f0xB8800000
  %i.fq = bitcast float %i.fp to i32
  br label %_ZNK2cv6hfloatcvfEv.exit32

_ZNK2cv6hfloatcvfEv.exit32:                       ; preds = %.lr.ph, %bb.i, %bb.j
  %i.fr = phi i32 [ %i.fm, %bb.i ], [ %i.fq, %bb.j ], [ %i.fk, %.lr.ph ]
  %.signext.i31 = sext i16 %i.fg to i32
  %i.fs = and i32 %.signext.i31, -2147483648
  %i.ft = or i32 %i.fr, %i.fs
  %i.fu = bitcast i32 %i.ft to float
  %i.fv = fpext float %i.fu to double
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double %3, double %4)
  %i.fx = fptrunc double %i.fw to float           ; 2 uses
  %i.fy = tail call float @llvm.fabs.f32(float %i.fx) ; 2 uses
  %i.fz = bitcast float %i.fy to i32              ; 5 uses
  %i.ga = icmp samesign ugt i32 %i.fz, 1199570943
  br i1 %i.ga, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit32
  %i.gb = icmp samesign ugt i32 %i.fz, 2139095040
  %i.gc = select i1 %i.gb, i16 32256, i16 31744
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit33

bb.l:                                             ; preds = %_ZNK2cv6hfloatcvfEv.exit32
  %i.gd = icmp samesign ult i32 %i.fz, 947912704
  br i1 %i.gd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ge = fadd float %i.fy, 5.000000e-01
  %i.gf = bitcast float %i.ge to i32
  %i.gg = trunc i32 %i.gf to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit33

bb.n:                                             ; preds = %bb.l
  %i.gh = add nuw nsw i32 %i.fz, 134221823
  %i.gi = lshr i32 %i.fz, 13
  %i.gj = and i32 %i.gi, 1
  %i.gk = add nuw nsw i32 %i.gh, %i.gj
  %i.gl = lshr i32 %i.gk, 13
  %i.gm = trunc i32 %i.gl to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit33

_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit33:   ; preds = %bb.k, %bb.m, %bb.n
  %i.gn = phi i16 [ %i.gg, %bb.m ], [ %i.gm, %bb.n ], [ %i.gc, %bb.k ]
  %i.go = bitcast float %i.fx to i32
  %i.gp = lshr i32 %i.go, 16
  %i.gq = trunc nuw i32 %i.gp to i16
  %i.gr = and i16 %i.gq, -32768
  %i.gs = or i16 %i.gn, %i.gr
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.238
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !67
  %i.gu = add nuw i64 %.238, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.gu, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3757

.loopexit:                                        ; preds = %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit33, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit, %.lr.ph42.prol.loopexit, %.lr.ph42, %middle.block, %middle.block83, %middle.block100, %vec.epilog.middle.block, %.preheader36, %.preheader34, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6cvtest8convert_IN2cv6hfloatENS1_6bfloatEEEvPKT_PT0_mdd(ptr noundef %0, ptr noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #24 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = fcmp oeq double %3, 1.000000e+00
  %i.d = fcmp oeq double %4, 0.000000e+00         ; 2 uses
  %or.cond = and i1 %i.c, %i.d
  %.not43 = icmp eq i64 %2, 0                     ; 3 uses
  br i1 %or.cond, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  br i1 %.not43, label %.loopexit, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %.preheader
  %min.iters.check81 = icmp ult i64 %2, 8
  %i.e = sub i64 %i.a, %i.b
  %diff.check83 = icmp ugt i64 %i.e, -16
  %or.cond95 = or i1 %min.iters.check81, %diff.check83
  br i1 %or.cond95, label %.lr.ph41.preheader98, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph41.preheader
  %n.vec85 = and i64 %2, -8                       ; 3 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next91, %vector.body86 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index87
  %wide.load88 = load <8 x i16>, ptr %i.f, align 2, !tbaa !67 ; 2 uses
  %i.g = zext <8 x i16> %wide.load88 to <8 x i32> ; 2 uses
  %i.h = shl nuw nsw <8 x i32> %i.g, splat (i32 13) ; 2 uses
  %i.i = and <8 x i32> %i.h, splat (i32 268427264) ; 2 uses
  %i.j = add nuw nsw <8 x i32> %i.i, splat (i32 939524096)
  %i.k = and <8 x i32> %i.g, splat (i32 31744)    ; 2 uses
  %i.l = icmp eq <8 x i32> %i.k, splat (i32 31744)
  %i.m = icmp eq <8 x i32> %i.k, zeroinitializer
  %i.n = add nuw nsw <8 x i32> %i.i, splat (i32 947912704)
  %i.o = bitcast <8 x i32> %i.n to <8 x float>
  %i.p = fadd <8 x float> %i.o, splat (float f0xB8800000)
  %i.q = bitcast <8 x float> %i.p to <8 x i32>
  %i.r = or <8 x i32> %i.h, splat (i32 1879048192)
  %predphi89 = select <8 x i1> %i.l, <8 x i32> %i.r, <8 x i32> %i.j
  %predphi90 = select <8 x i1> %i.m, <8 x i32> %i.q, <8 x i32> %predphi89
  %i.s = sext <8 x i16> %wide.load88 to <8 x i32>
  %i.t = and <8 x i32> %i.s, splat (i32 -2147483648)
  %i.u = or <8 x i32> %predphi90, %i.t            ; 2 uses
  %i.v = bitcast <8 x i32> %i.u to <8 x float>
  %i.w = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.v)
  %i.x = bitcast <8 x float> %i.w to <8 x i32>
  %i.y = icmp samesign ult <8 x i32> %i.x, splat (i32 2139062272)
  %i.z = select <8 x i1> %i.y, <8 x i32> splat (i32 32768), <8 x i32> zeroinitializer
  %i.aa = add <8 x i32> %i.z, %i.u
  %i.ab = lshr <8 x i32> %i.aa, splat (i32 16)
  %i.ac = trunc nuw <8 x i32> %i.ab to <8 x i16>
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index87
  store <8 x i16> %i.ac, ptr %i.ad, align 2, !tbaa !67
  %index.next91 = add nuw i64 %index87, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next91, %n.vec85
  br i1 %i.ae, label %middle.block92, label %vector.body86, !llvm.loop !3758

middle.block92:                                   ; preds = %vector.body86
  %cmp.n93 = icmp eq i64 %2, %n.vec85
  br i1 %cmp.n93, label %.loopexit, label %.lr.ph41.preheader98

.lr.ph41.preheader98:                             ; preds = %.lr.ph41.preheader, %middle.block92
  %.040.ph = phi i64 [ 0, %.lr.ph41.preheader ], [ %n.vec85, %middle.block92 ]
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader98, %_ZN2cvL13saturate_castINS_6bfloatEEET_NS_6hfloatE.exit
  %.040 = phi i64 [ %i.bc, %_ZN2cvL13saturate_castINS_6bfloatEEET_NS_6hfloatE.exit ], [ %.040.ph, %.lr.ph41.preheader98 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.040
  %.sroa.03.0.copyload = load i16, ptr %i.af, align 2, !tbaa !67 ; 2 uses
  %i.ag = zext i16 %.sroa.03.0.copyload to i32    ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ag, 13               ; 2 uses
  %i.ai = and i32 %i.ah, 268427264                ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 939524096
  %i.ak = and i32 %i.ag, 31744
  switch i32 %i.ak, label %_ZN2cvL13saturate_castINS_6bfloatEEET_NS_6hfloatE.exit [
    i32 31744, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph41
  %i.al = or i32 %i.ah, 1879048192
  br label %_ZN2cvL13saturate_castINS_6bfloatEEET_NS_6hfloatE.exit

bb.c:                                             ; preds = %.lr.ph41
  %i.am = add nuw nsw i32 %i.ai, 947912704
  %i.an = bitcast i32 %i.am to float
  %i.ao = fadd float %i.an, f0xB8800000
  %i.ap = bitcast float %i.ao to i32
  br label %_ZN2cvL13saturate_castINS_6bfloatEEET_NS_6hfloatE.exit

_ZN2cvL13saturate_castINS_6bfloatEEET_NS_6hfloatE.exit: ; preds = %.lr.ph41, %bb.b, %bb.c
  %i.aq = phi i32 [ %i.al, %bb.b ], [ %i.ap, %bb.c ], [ %i.aj, %.lr.ph41 ]
  %.signext.i.i = sext i16 %.sroa.03.0.copyload to i32
  %i.ar = and i32 %.signext.i.i, -2147483648
  %i.as = or i32 %i.aq, %i.ar                     ; 2 uses
  %i.at = bitcast i32 %i.as to float
  %i.au = tail call float @llvm.fabs.f32(float %i.at)
  %i.av = bitcast float %i.au to i32
  %i.aw = icmp samesign ult i32 %i.av, 2139062272
  %i.ax = select i1 %i.aw, i32 32768, i32 0
  %i.ay = add i32 %i.ax, %i.as
  %i.az = lshr i32 %i.ay, 16
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.040
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !67
  %i.bc = add nuw i64 %.040, 1                    ; 2 uses
  %exitcond47.not = icmp eq i64 %i.bc, %2
  br i1 %exitcond47.not, label %.loopexit, label %.lr.ph41, !llvm.loop !3759

bb.d:                                             ; preds = %bb.a
  br i1 %i.d, label %.preheader33, label %.preheader35

.preheader35:                                     ; preds = %bb.d
  br i1 %.not43, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader35
  %min.iters.check = icmp ult i64 %2, 8
  %i.bd = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bd, -16
  %or.cond96 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond96, label %.lr.ph.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <8 x double> %broadcast.splatinsert, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <8 x double> poison, double %4, i64 0
  %broadcast.splat57 = shufflevector <8 x double> %broadcast.splatinsert56, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.be, align 2, !tbaa !77 ; 2 uses
  %i.bf = zext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.bg = shl nuw nsw <8 x i32> %i.bf, splat (i32 13) ; 2 uses
  %i.bh = and <8 x i32> %i.bg, splat (i32 268427264) ; 2 uses
  %i.bi = add nuw nsw <8 x i32> %i.bh, splat (i32 939524096)
  %i.bj = and <8 x i32> %i.bf, splat (i32 31744)  ; 2 uses
  %i.bk = icmp eq <8 x i32> %i.bj, splat (i32 31744)
  %i.bl = icmp eq <8 x i32> %i.bj, zeroinitializer
  %i.bm = add nuw nsw <8 x i32> %i.bh, splat (i32 947912704)
  %i.bn = bitcast <8 x i32> %i.bm to <8 x float>
  %i.bo = fadd <8 x float> %i.bn, splat (float f0xB8800000)
  %i.bp = bitcast <8 x float> %i.bo to <8 x i32>
  %i.bq = or <8 x i32> %i.bg, splat (i32 1879048192)
  %predphi = select <8 x i1> %i.bk, <8 x i32> %i.bq, <8 x i32> %i.bi
  %predphi58 = select <8 x i1> %i.bl, <8 x i32> %i.bp, <8 x i32> %predphi
  %i.br = sext <8 x i16> %wide.load to <8 x i32>
  %i.bs = and <8 x i32> %i.br, splat (i32 -2147483648)
  %i.bt = or <8 x i32> %predphi58, %i.bs
  %i.bu = bitcast <8 x i32> %i.bt to <8 x float>
  %i.bv = fpext <8 x float> %i.bu to <8 x double>
  %i.bw = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.bv, <8 x double> %broadcast.splat, <8 x double> %broadcast.splat57)
  %i.bx = fptrunc <8 x double> %i.bw to <8 x float> ; 2 uses
  %i.by = bitcast <8 x float> %i.bx to <8 x i32>
  %i.bz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bx)
  %i.ca = bitcast <8 x float> %i.bz to <8 x i32>
  %i.cb = icmp samesign ult <8 x i32> %i.ca, splat (i32 2139062272)
  %i.cc = select <8 x i1> %i.cb, <8 x i32> splat (i32 32768), <8 x i32> zeroinitializer
  %i.cd = add <8 x i32> %i.cc, %i.by
  %i.ce = lshr <8 x i32> %i.cd, splat (i32 16)
  %i.cf = trunc nuw <8 x i32> %i.ce to <8 x i16>
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.cf, ptr %i.cg, align 2, !tbaa !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !3760

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader101

.lr.ph.preheader101:                              ; preds = %.lr.ph.preheader, %middle.block
  %.237.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader33:                                     ; preds = %bb.d
  br i1 %.not43, label %.loopexit, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.preheader33
  %min.iters.check62 = icmp ult i64 %2, 8
  %i.ci = sub i64 %i.a, %i.b
  %diff.check64 = icmp ugt i64 %i.ci, -16
  %or.cond97 = or i1 %min.iters.check62, %diff.check64
  br i1 %or.cond97, label %.lr.ph39.preheader99, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph39.preheader
  %n.vec66 = and i64 %2, -8                       ; 3 uses
  %broadcast.splatinsert67 = insertelement <8 x double> poison, double %3, i64 0
  %broadcast.splat68 = shufflevector <8 x double> %broadcast.splatinsert67, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph65
  %index70 = phi i64 [ 0, %vector.ph65 ], [ %index.next74, %vector.body69 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index70
  %wide.load71 = load <8 x i16>, ptr %i.cj, align 2, !tbaa !77 ; 2 uses
  %i.ck = zext <8 x i16> %wide.load71 to <8 x i32> ; 2 uses
  %i.cl = shl nuw nsw <8 x i32> %i.ck, splat (i32 13) ; 2 uses
  %i.cm = and <8 x i32> %i.cl, splat (i32 268427264) ; 2 uses
  %i.cn = add nuw nsw <8 x i32> %i.cm, splat (i32 939524096)
  %i.co = and <8 x i32> %i.ck, splat (i32 31744)  ; 2 uses
  %i.cp = icmp eq <8 x i32> %i.co, splat (i32 31744)
  %i.cq = icmp eq <8 x i32> %i.co, zeroinitializer
  %i.cr = add nuw nsw <8 x i32> %i.cm, splat (i32 947912704)
  %i.cs = bitcast <8 x i32> %i.cr to <8 x float>
  %i.ct = fadd <8 x float> %i.cs, splat (float f0xB8800000)
  %i.cu = bitcast <8 x float> %i.ct to <8 x i32>
  %i.cv = or <8 x i32> %i.cl, splat (i32 1879048192)
  %predphi72 = select <8 x i1> %i.cp, <8 x i32> %i.cv, <8 x i32> %i.cn
  %predphi73 = select <8 x i1> %i.cq, <8 x i32> %i.cu, <8 x i32> %predphi72
  %i.cw = sext <8 x i16> %wide.load71 to <8 x i32>
  %i.cx = and <8 x i32> %i.cw, splat (i32 -2147483648)
  %i.cy = or <8 x i32> %predphi73, %i.cx
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>
  %i.da = fpext <8 x float> %i.cz to <8 x double>
  %i.db = fmul <8 x double> %broadcast.splat68, %i.da
  %i.dc = fptrunc <8 x double> %i.db to <8 x float> ; 2 uses
  %i.dd = bitcast <8 x float> %i.dc to <8 x i32>
  %i.de = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dc)
  %i.df = bitcast <8 x float> %i.de to <8 x i32>
  %i.dg = icmp samesign ult <8 x i32> %i.df, splat (i32 2139062272)
  %i.dh = select <8 x i1> %i.dg, <8 x i32> splat (i32 32768), <8 x i32> zeroinitializer
  %i.di = add <8 x i32> %i.dh, %i.dd
  %i.dj = lshr <8 x i32> %i.di, splat (i32 16)
  %i.dk = trunc nuw <8 x i32> %i.dj to <8 x i16>
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index70
  store <8 x i16> %i.dk, ptr %i.dl, align 2, !tbaa !67
  %index.next74 = add nuw i64 %index70, 8         ; 2 uses
  %i.dm = icmp eq i64 %index.next74, %n.vec66
  br i1 %i.dm, label %middle.block75, label %vector.body69, !llvm.loop !3761

middle.block75:                                   ; preds = %vector.body69
  %cmp.n76 = icmp eq i64 %2, %n.vec66
  br i1 %cmp.n76, label %.loopexit, label %.lr.ph39.preheader99

.lr.ph39.preheader99:                             ; preds = %.lr.ph39.preheader, %middle.block75
  %.138.ph = phi i64 [ 0, %.lr.ph39.preheader ], [ %n.vec66, %middle.block75 ]
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader99, %_ZNK2cv6hfloatcvfEv.exit
  %.138 = phi i64 [ %i.ep, %_ZNK2cv6hfloatcvfEv.exit ], [ %.138.ph, %.lr.ph39.preheader99 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.138
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !77 ; 2 uses
  %i.dp = zext i16 %i.do to i32                   ; 2 uses
  %i.dq = shl nuw nsw i32 %i.dp, 13               ; 2 uses
  %i.dr = and i32 %i.dq, 268427264                ; 2 uses
  %i.ds = add nuw nsw i32 %i.dr, 939524096
  %i.dt = and i32 %i.dp, 31744
  switch i32 %i.dt, label %_ZNK2cv6hfloatcvfEv.exit [
    i32 31744, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph39
  %i.du = or i32 %i.dq, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit

bb.f:                                             ; preds = %.lr.ph39
  %i.dv = add nuw nsw i32 %i.dr, 947912704
  %i.dw = bitcast i32 %i.dv to float
  %i.dx = fadd float %i.dw, f0xB8800000
  %i.dy = bitcast float %i.dx to i32
  br label %_ZNK2cv6hfloatcvfEv.exit

_ZNK2cv6hfloatcvfEv.exit:                         ; preds = %.lr.ph39, %bb.e, %bb.f
  %i.dz = phi i32 [ %i.du, %bb.e ], [ %i.dy, %bb.f ], [ %i.ds, %.lr.ph39 ]
  %.signext.i = sext i16 %i.do to i32
  %i.ea = and i32 %.signext.i, -2147483648
  %i.eb = or i32 %i.dz, %i.ea
  %i.ec = bitcast i32 %i.eb to float
  %i.ed = fpext float %i.ec to double
  %i.ee = fmul double %3, %i.ed
  %i.ef = fptrunc double %i.ee to float           ; 2 uses
  %i.eg = bitcast float %i.ef to i32
  %i.eh = tail call float @llvm.fabs.f32(float %i.ef)
  %i.ei = bitcast float %i.eh to i32
  %i.ej = icmp samesign ult i32 %i.ei, 2139062272
  %i.ek = select i1 %i.ej, i32 32768, i32 0
  %i.el = add i32 %i.ek, %i.eg
  %i.em = lshr i32 %i.el, 16
  %i.en = trunc nuw i32 %i.em to i16
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.138
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !67
  %i.ep = add nuw i64 %.138, 1                    ; 2 uses
  %exitcond46.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond46.not, label %.loopexit, label %.lr.ph39, !llvm.loop !3762

.lr.ph:                                           ; preds = %.lr.ph.preheader101, %_ZNK2cv6hfloatcvfEv.exit32
  %.237 = phi i64 [ %i.fs, %_ZNK2cv6hfloatcvfEv.exit32 ], [ %.237.ph, %.lr.ph.preheader101 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.237
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !77 ; 2 uses
  %i.es = zext i16 %i.er to i32                   ; 2 uses
  %i.et = shl nuw nsw i32 %i.es, 13               ; 2 uses
  %i.eu = and i32 %i.et, 268427264                ; 2 uses
  %i.ev = add nuw nsw i32 %i.eu, 939524096
  %i.ew = and i32 %i.es, 31744
  switch i32 %i.ew, label %_ZNK2cv6hfloatcvfEv.exit32 [
    i32 31744, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.ex = or i32 %i.et, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit32

bb.h:                                             ; preds = %.lr.ph
  %i.ey = add nuw nsw i32 %i.eu, 947912704
  %i.ez = bitcast i32 %i.ey to float
  %i.fa = fadd float %i.ez, f0xB8800000
  %i.fb = bitcast float %i.fa to i32
  br label %_ZNK2cv6hfloatcvfEv.exit32

_ZNK2cv6hfloatcvfEv.exit32:                       ; preds = %.lr.ph, %bb.g, %bb.h
  %i.fc = phi i32 [ %i.ex, %bb.g ], [ %i.fb, %bb.h ], [ %i.ev, %.lr.ph ]
  %.signext.i31 = sext i16 %i.er to i32
  %i.fd = and i32 %.signext.i31, -2147483648
  %i.fe = or i32 %i.fc, %i.fd
  %i.ff = bitcast i32 %i.fe to float
  %i.fg = fpext float %i.ff to double
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double %3, double %4)
  %i.fi = fptrunc double %i.fh to float           ; 2 uses
  %i.fj = bitcast float %i.fi to i32
  %i.fk = tail call float @llvm.fabs.f32(float %i.fi)
  %i.fl = bitcast float %i.fk to i32
  %i.fm = icmp samesign ult i32 %i.fl, 2139062272
  %i.fn = select i1 %i.fm, i32 32768, i32 0
  %i.fo = add i32 %i.fn, %i.fj
  %i.fp = lshr i32 %i.fo, 16
  %i.fq = trunc nuw i32 %i.fp to i16
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.237
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !67
  %i.fs = add nuw i64 %.237, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fs, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3763

.loopexit:                                        ; preds = %_ZNK2cv6hfloatcvfEv.exit32, %_ZNK2cv6hfloatcvfEv.exit, %_ZN2cvL13saturate_castINS_6bfloatEEET_NS_6hfloatE.exit, %middle.block, %middle.block75, %middle.block92, %.preheader35, %.preheader33, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6cvtest8convert_IN2cv6bfloatENS1_6hfloatEEEvPKT_PT0_mdd(ptr noundef %0, ptr noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #24 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = fcmp oeq double %3, 1.000000e+00
  %i.d = fcmp oeq double %4, 0.000000e+00         ; 2 uses
  %or.cond = and i1 %i.c, %i.d
  %.not42 = icmp eq i64 %2, 0                     ; 3 uses
  br i1 %or.cond, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  br i1 %.not42, label %.loopexit, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.preheader
  %min.iters.check86 = icmp ult i64 %2, 8
  %i.e = sub i64 %i.a, %i.b
  %diff.check88 = icmp ugt i64 %i.e, -16
  %or.cond100 = or i1 %min.iters.check86, %diff.check88
  br i1 %or.cond100, label %.lr.ph40.preheader103, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph40.preheader
  %n.vec90 = and i64 %2, -8                       ; 3 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body91 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index92
  %wide.load93 = load <8 x i16>, ptr %i.f, align 2, !tbaa !67 ; 2 uses
  %i.g = zext <8 x i16> %wide.load93 to <8 x i32>
  %i.h = shl nuw <8 x i32> %i.g, splat (i32 16)
  %i.i = bitcast <8 x i32> %i.h to <8 x float>
  %i.j = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.i) ; 2 uses
  %i.k = bitcast <8 x float> %i.j to <8 x i32>    ; 5 uses
  %i.l = icmp samesign ult <8 x i32> %i.k, splat (i32 1199570944)
  %i.m = add nsw <8 x i32> %i.k, splat (i32 -947912704)
  %i.n = icmp ult <8 x i32> %i.m, splat (i32 251658240)
  %i.o = add nuw nsw <8 x i32> %i.k, splat (i32 134221823)
  %i.p = lshr <8 x i32> %i.k, splat (i32 13)
  %i.q = and <8 x i32> %i.p, splat (i32 1)
  %i.r = add nuw nsw <8 x i32> %i.o, %i.q
  %i.s = lshr <8 x i32> %i.r, splat (i32 13)
  %i.t = trunc <8 x i32> %i.s to <8 x i16>
  %i.u = fadd <8 x float> %i.j, splat (float 5.000000e-01)
  %i.v = bitcast <8 x float> %i.u to <8 x i32>
  %i.w = trunc <8 x i32> %i.v to <8 x i16>
  %i.x = icmp samesign ugt <8 x i32> %i.k, splat (i32 2139095040)
  %i.y = select <8 x i1> %i.x, <8 x i16> splat (i16 32256), <8 x i16> splat (i16 31744)
  %predphi94 = select <8 x i1> %i.l, <8 x i16> %i.w, <8 x i16> %i.y
  %predphi95 = select <8 x i1> %i.n, <8 x i16> %i.t, <8 x i16> %predphi94
  %i.z = and <8 x i16> %wide.load93, splat (i16 -32768)
  %i.aa = or <8 x i16> %predphi95, %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index92
  store <8 x i16> %i.aa, ptr %i.ab, align 2, !tbaa !67
  %index.next96 = add nuw i64 %index92, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next96, %n.vec90
  br i1 %i.ac, label %middle.block97, label %vector.body91, !llvm.loop !3764

middle.block97:                                   ; preds = %vector.body91
  %cmp.n98 = icmp eq i64 %2, %n.vec90
  br i1 %cmp.n98, label %.loopexit, label %.lr.ph40.preheader103

.lr.ph40.preheader103:                            ; preds = %.lr.ph40.preheader, %middle.block97
  %.039.ph = phi i64 [ 0, %.lr.ph40.preheader ], [ %n.vec90, %middle.block97 ]
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader103, %_ZN2cvL13saturate_castINS_6hfloatEEET_NS_6bfloatE.exit
  %.039 = phi i64 [ %i.ba, %_ZN2cvL13saturate_castINS_6hfloatEEET_NS_6bfloatE.exit ], [ %.039.ph, %.lr.ph40.preheader103 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.039
  %.sroa.03.0.copyload = load i16, ptr %i.ad, align 2, !tbaa !67 ; 2 uses
  %i.ae = zext i16 %.sroa.03.0.copyload to i32
  %i.af = shl nuw i32 %i.ae, 16
  %i.ag = bitcast i32 %i.af to float
  %i.ah = tail call float @llvm.fabs.f32(float %i.ag) ; 2 uses
  %i.ai = bitcast float %i.ah to i32              ; 5 uses
  %i.aj = icmp samesign ugt i32 %i.ai, 1199570943
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph40
  %i.ak = icmp samesign ugt i32 %i.ai, 2139095040
  %i.al = select i1 %i.ak, i16 32256, i16 31744
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_NS_6bfloatE.exit

bb.c:                                             ; preds = %.lr.ph40
  %i.am = icmp samesign ult i32 %i.ai, 947912704
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = fadd float %i.ah, 5.000000e-01
  %i.ao = bitcast float %i.an to i32
  %i.ap = trunc i32 %i.ao to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_NS_6bfloatE.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = add nuw nsw i32 %i.ai, 134221823
  %i.ar = lshr i32 %i.ai, 13
  %i.as = and i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.aq, %i.as
  %i.au = lshr i32 %i.at, 13
  %i.av = trunc i32 %i.au to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_NS_6bfloatE.exit

_ZN2cvL13saturate_castINS_6hfloatEEET_NS_6bfloatE.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.aw = phi i16 [ %i.ap, %bb.d ], [ %i.av, %bb.e ], [ %i.al, %bb.b ]
  %i.ax = and i16 %.sroa.03.0.copyload, -32768
  %i.ay = or i16 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.039
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !67
  %i.ba = add nuw i64 %.039, 1                    ; 2 uses
  %exitcond46.not = icmp eq i64 %i.ba, %2
  br i1 %exitcond46.not, label %.loopexit, label %.lr.ph40, !llvm.loop !3765

bb.f:                                             ; preds = %bb.a
  br i1 %i.d, label %.preheader32, label %.preheader34

.preheader34:                                     ; preds = %bb.f
  br i1 %.not42, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader34
  %min.iters.check = icmp ult i64 %2, 8
  %i.bb = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bb, -16
  %or.cond101 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond101, label %.lr.ph.preheader106, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <8 x double> %broadcast.splatinsert, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert61 = insertelement <8 x double> poison, double %4, i64 0
  %broadcast.splat62 = shufflevector <8 x double> %broadcast.splatinsert61, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bc, align 2, !tbaa !79
  %i.bd = zext <8 x i16> %wide.load to <8 x i32>
  %i.be = shl nuw <8 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <8 x i32> %i.be to <8 x float>
  %i.bg = fpext <8 x float> %i.bf to <8 x double>
  %i.bh = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.bg, <8 x double> %broadcast.splat, <8 x double> %broadcast.splat62)
  %i.bi = fptrunc <8 x double> %i.bh to <8 x float> ; 2 uses
  %i.bj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bi) ; 2 uses
  %i.bk = bitcast <8 x float> %i.bj to <8 x i32>  ; 5 uses
  %i.bl = icmp samesign ult <8 x i32> %i.bk, splat (i32 1199570944)
  %i.bm = add nsw <8 x i32> %i.bk, splat (i32 -947912704)
  %i.bn = icmp ult <8 x i32> %i.bm, splat (i32 251658240)
  %i.bo = add nuw nsw <8 x i32> %i.bk, splat (i32 134221823)
  %i.bp = lshr <8 x i32> %i.bk, splat (i32 13)
  %i.bq = and <8 x i32> %i.bp, splat (i32 1)
  %i.br = add nuw nsw <8 x i32> %i.bo, %i.bq
  %i.bs = lshr <8 x i32> %i.br, splat (i32 13)
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>
  %i.bu = fadd <8 x float> %i.bj, splat (float 5.000000e-01)
  %i.bv = bitcast <8 x float> %i.bu to <8 x i32>
  %i.bw = trunc <8 x i32> %i.bv to <8 x i16>
  %i.bx = icmp samesign ugt <8 x i32> %i.bk, splat (i32 2139095040)
  %i.by = select <8 x i1> %i.bx, <8 x i16> splat (i16 32256), <8 x i16> splat (i16 31744)
  %predphi = select <8 x i1> %i.bl, <8 x i16> %i.bw, <8 x i16> %i.by
  %predphi63 = select <8 x i1> %i.bn, <8 x i16> %i.bt, <8 x i16> %predphi
  %i.bz = bitcast <8 x float> %i.bi to <8 x i32>
  %i.ca = lshr <8 x i32> %i.bz, splat (i32 16)
  %i.cb = trunc nuw <8 x i32> %i.ca to <8 x i16>
  %i.cc = and <8 x i16> %i.cb, splat (i16 -32768)
  %i.cd = or <8 x i16> %predphi63, %i.cc
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.cd, ptr %i.ce, align 2, !tbaa !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !3766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader106

.lr.ph.preheader106:                              ; preds = %.lr.ph.preheader, %middle.block
  %.236.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader32:                                     ; preds = %bb.f
  br i1 %.not42, label %.loopexit, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.preheader32
  %min.iters.check67 = icmp ult i64 %2, 8
  %i.cg = sub i64 %i.a, %i.b
  %diff.check69 = icmp ugt i64 %i.cg, -16
  %or.cond102 = or i1 %min.iters.check67, %diff.check69
  br i1 %or.cond102, label %.lr.ph38.preheader104, label %vector.ph70

vector.ph70:                                      ; preds = %.lr.ph38.preheader
  %n.vec71 = and i64 %2, -8                       ; 3 uses
  %broadcast.splatinsert72 = insertelement <8 x double> poison, double %3, i64 0
  %broadcast.splat73 = shufflevector <8 x double> %broadcast.splatinsert72, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph70
  %index75 = phi i64 [ 0, %vector.ph70 ], [ %index.next79, %vector.body74 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index75
  %wide.load76 = load <8 x i16>, ptr %i.ch, align 2, !tbaa !79
  %i.ci = zext <8 x i16> %wide.load76 to <8 x i32>
  %i.cj = shl nuw <8 x i32> %i.ci, splat (i32 16)
  %i.ck = bitcast <8 x i32> %i.cj to <8 x float>
  %i.cl = fpext <8 x float> %i.ck to <8 x double>
  %i.cm = fmul <8 x double> %broadcast.splat73, %i.cl
  %i.cn = fptrunc <8 x double> %i.cm to <8 x float> ; 2 uses
  %i.co = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cn) ; 2 uses
  %i.cp = bitcast <8 x float> %i.co to <8 x i32>  ; 5 uses
  %i.cq = icmp samesign ult <8 x i32> %i.cp, splat (i32 1199570944)
  %i.cr = add nsw <8 x i32> %i.cp, splat (i32 -947912704)
  %i.cs = icmp ult <8 x i32> %i.cr, splat (i32 251658240)
  %i.ct = add nuw nsw <8 x i32> %i.cp, splat (i32 134221823)
  %i.cu = lshr <8 x i32> %i.cp, splat (i32 13)
  %i.cv = and <8 x i32> %i.cu, splat (i32 1)
  %i.cw = add nuw nsw <8 x i32> %i.ct, %i.cv
  %i.cx = lshr <8 x i32> %i.cw, splat (i32 13)
  %i.cy = trunc <8 x i32> %i.cx to <8 x i16>
  %i.cz = fadd <8 x float> %i.co, splat (float 5.000000e-01)
  %i.da = bitcast <8 x float> %i.cz to <8 x i32>
  %i.db = trunc <8 x i32> %i.da to <8 x i16>
  %i.dc = icmp samesign ugt <8 x i32> %i.cp, splat (i32 2139095040)
  %i.dd = select <8 x i1> %i.dc, <8 x i16> splat (i16 32256), <8 x i16> splat (i16 31744)
  %predphi77 = select <8 x i1> %i.cq, <8 x i16> %i.db, <8 x i16> %i.dd
  %predphi78 = select <8 x i1> %i.cs, <8 x i16> %i.cy, <8 x i16> %predphi77
  %i.de = bitcast <8 x float> %i.cn to <8 x i32>
  %i.df = lshr <8 x i32> %i.de, splat (i32 16)
  %i.dg = trunc nuw <8 x i32> %i.df to <8 x i16>
  %i.dh = and <8 x i16> %i.dg, splat (i16 -32768)
  %i.di = or <8 x i16> %predphi78, %i.dh
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index75
  store <8 x i16> %i.di, ptr %i.dj, align 2, !tbaa !67
  %index.next79 = add nuw i64 %index75, 8         ; 2 uses
  %i.dk = icmp eq i64 %index.next79, %n.vec71
  br i1 %i.dk, label %middle.block80, label %vector.body74, !llvm.loop !3767

middle.block80:                                   ; preds = %vector.body74
  %cmp.n81 = icmp eq i64 %2, %n.vec71
  br i1 %cmp.n81, label %.loopexit, label %.lr.ph38.preheader104

.lr.ph38.preheader104:                            ; preds = %.lr.ph38.preheader, %middle.block80
  %.137.ph = phi i64 [ 0, %.lr.ph38.preheader ], [ %n.vec71, %middle.block80 ]
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader104, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit
  %.137 = phi i64 [ %i.ep, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit ], [ %.137.ph, %.lr.ph38.preheader104 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.137
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !79
  %i.dn = zext i16 %i.dm to i32
  %i.do = shl nuw i32 %i.dn, 16
  %i.dp = bitcast i32 %i.do to float
  %i.dq = fpext float %i.dp to double
  %i.dr = fmul double %3, %i.dq
  %i.ds = fptrunc double %i.dr to float           ; 2 uses
  %i.dt = tail call float @llvm.fabs.f32(float %i.ds) ; 2 uses
  %i.du = bitcast float %i.dt to i32              ; 5 uses
  %i.dv = icmp samesign ugt i32 %i.du, 1199570943
  br i1 %i.dv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph38
  %i.dw = icmp samesign ugt i32 %i.du, 2139095040
  %i.dx = select i1 %i.dw, i16 32256, i16 31744
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit

bb.h:                                             ; preds = %.lr.ph38
  %i.dy = icmp samesign ult i32 %i.du, 947912704
  br i1 %i.dy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dz = fadd float %i.dt, 5.000000e-01
  %i.ea = bitcast float %i.dz to i32
  %i.eb = trunc i32 %i.ea to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit

bb.j:                                             ; preds = %bb.h
  %i.ec = add nuw nsw i32 %i.du, 134221823
  %i.ed = lshr i32 %i.du, 13
  %i.ee = and i32 %i.ed, 1
  %i.ef = add nuw nsw i32 %i.ec, %i.ee
  %i.eg = lshr i32 %i.ef, 13
  %i.eh = trunc i32 %i.eg to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit

_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit:     ; preds = %bb.g, %bb.i, %bb.j
  %i.ei = phi i16 [ %i.eb, %bb.i ], [ %i.eh, %bb.j ], [ %i.dx, %bb.g ]
  %i.ej = bitcast float %i.ds to i32
  %i.ek = lshr i32 %i.ej, 16
  %i.el = trunc nuw i32 %i.ek to i16
  %i.em = and i16 %i.el, -32768
  %i.en = or i16 %i.ei, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.137
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !67
  %i.ep = add nuw i64 %.137, 1                    ; 2 uses
  %exitcond45.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph38, !llvm.loop !3768

.lr.ph:                                           ; preds = %.lr.ph.preheader106, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit31
  %.236 = phi i64 [ %i.fu, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit31 ], [ %.236.ph, %.lr.ph.preheader106 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.236
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !79
  %i.es = zext i16 %i.er to i32
  %i.et = shl nuw i32 %i.es, 16
  %i.eu = bitcast i32 %i.et to float
  %i.ev = fpext float %i.eu to double
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.ev, double %3, double %4)
  %i.ex = fptrunc double %i.ew to float           ; 2 uses
  %i.ey = tail call float @llvm.fabs.f32(float %i.ex) ; 2 uses
  %i.ez = bitcast float %i.ey to i32              ; 5 uses
  %i.fa = icmp samesign ugt i32 %i.ez, 1199570943
  br i1 %i.fa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.fb = icmp samesign ugt i32 %i.ez, 2139095040
  %i.fc = select i1 %i.fb, i16 32256, i16 31744
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit31

bb.l:                                             ; preds = %.lr.ph
  %i.fd = icmp samesign ult i32 %i.ez, 947912704
  br i1 %i.fd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fe = fadd float %i.ey, 5.000000e-01
  %i.ff = bitcast float %i.fe to i32
  %i.fg = trunc i32 %i.ff to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit31

bb.n:                                             ; preds = %bb.l
  %i.fh = add nuw nsw i32 %i.ez, 134221823
  %i.fi = lshr i32 %i.ez, 13
  %i.fj = and i32 %i.fi, 1
  %i.fk = add nuw nsw i32 %i.fh, %i.fj
  %i.fl = lshr i32 %i.fk, 13
  %i.fm = trunc i32 %i.fl to i16
  br label %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit31

_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit31:   ; preds = %bb.k, %bb.m, %bb.n
  %i.fn = phi i16 [ %i.fg, %bb.m ], [ %i.fm, %bb.n ], [ %i.fc, %bb.k ]
  %i.fo = bitcast float %i.ex to i32
  %i.fp = lshr i32 %i.fo, 16
  %i.fq = trunc nuw i32 %i.fp to i16
  %i.fr = and i16 %i.fq, -32768
  %i.fs = or i16 %i.fn, %i.fr
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.236
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !67
  %i.fu = add nuw i64 %.236, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fu, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3769

.loopexit:                                        ; preds = %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit31, %_ZN2cvL13saturate_castINS_6hfloatEEET_d.exit, %_ZN2cvL13saturate_castINS_6hfloatEEET_NS_6bfloatE.exit, %middle.block, %middle.block80, %middle.block97, %.preheader34, %.preheader32, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !25
  store i8 0, ptr %i.e, align 8, !tbaa !26
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !105  ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #32
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.d, %bb.c
  store ptr %i.d, ptr %i.a, align 8, !tbaa !105
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit

_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit: ; preds = %bb.f, %bb.b, %bb.a
  %i.p = phi ptr [ %i.d, %bb.f ], [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.q = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #30 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.r
  br i1 %i.v, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.g:                                             ; preds = %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #31
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.x = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !26
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.h
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.ac
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.b, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !113    ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.c) #30, !inline_history !3770
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #34
  unreachable

_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %bb.d
  ret void
}

declare void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #10

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cvlsERSoRKNS_3MatE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #24 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Ptr", align 8          ; 6 uses
  %3 = alloca %"struct.cv::Ptr.25", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN2cv9Formatter3getENS0_10FormatTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.25") align 8 %3, i32 noundef 0)
  %i.a = load ptr, ptr %3, align 8, !tbaa !3777   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !3780   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3771

.noexc:                                           ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 8, !tbaa !3780   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3771 ; 2 uses

.noexc5:                                          ; preds = %.noexc
  %.not4.i = icmp eq ptr %i.l, null
  br i1 %.not4.i, label %_ZN2cvlsERSoNS_3PtrINS_9FormattedEEE.exit, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc5, %.noexc7
  %.05.i = phi ptr [ %i.r, %.noexc7 ], [ %i.l, %.noexc5 ] ; 2 uses
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.05.i) #30
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.05.i, i64 noundef %i.m)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc6:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.o = load ptr, ptr %2, align 8, !tbaa !3780   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3771 ; 2 uses

.noexc7:                                          ; preds = %.noexc6
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN2cvlsERSoNS_3PtrINS_9FormattedEEE.exit, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, !llvm.loop !3772

_ZN2cvlsERSoNS_3PtrINS_9FormattedEEE.exit:        ; preds = %.noexc7, %.noexc5
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2cvlsERSoNS_3PtrINS_9FormattedEEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.u, align 8, !tbaa !120
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !121
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #30, !inline_history !3773
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #30, !inline_history !3773
  br label %_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.h, label %_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #30
  br label %_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2cvlsERSoNS_3PtrINS_9FormattedEEE.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN2cv9FormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.al, align 8, !tbaa !120
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !121
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #30, !inline_history !3774
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #30, !inline_history !3774
  br label %_ZNSt12__shared_ptrIN2cv9FormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i9 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.m:                                             ; preds = %bb.k
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i11 = phi i32 [ %i.ao, %bb.l ], [ %i.ay, %bb.m ]
  %i.az = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.az, label %bb.n, label %_ZNSt12__shared_ptrIN2cv9FormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #30
  br label %_ZNSt12__shared_ptrIN2cv9FormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv9FormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %0

bb.o:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc, %bb.b
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp16, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ba, %bb.o ]
  call void @_ZNSt12__shared_ptrIN2cv9FormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv9Formatter3getENS0_10FormatTypeE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.25") align 8, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !121
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !9
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv9FormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !121
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !9
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !114

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !3781
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !27   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !3781
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsIN6cvtest7MatPartEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 77 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = load ptr, ptr %1, align 8, !tbaa !109    ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !80   ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.l
  %i.q = icmp slt i32 %i.o, 3
  %or.cond.i = and i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.125, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN6cvtestlsERSoRKNS_7MatPartE, ptr noundef nonnull @.str.35, i32 noundef 3436) #31
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.u, align 8, !tbaa !26
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume.i

bb.h:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %1, align 8, !tbaa !109
  %i.z = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cvlsERSoRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.y) ; 0 uses
  br label %_ZN6cvtestlsERSoRKNS_7MatPartE.exit

bb.i:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !56  ; 2 uses
  %i.ab = and i32 %i.aa, 31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !57
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZN6cvtestlsERSoRKNS_7MatPartE.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.af = lshr i32 %i.aa, 5
  %i.ag = and i32 %i.af, 127
  %i.ah = add nuw nsw i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !81
  %i.ak = mul nsw i32 %i.aj, %i.ah                ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0                   ; 13 uses
  %i.am = zext nneg i32 %i.ak to i64              ; 26 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN6cvtestL10writeElemsERSoPKviii.exit.i ] ; 4 uses
  %i.an = phi ptr [ %i.m, %.lr.ph.i ], [ %i.lh, %_ZN6cvtestL10writeElemsERSoPKviii.exit.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28
  %i.as = mul i64 %i.ar, %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as ; 26 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !27
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp eq i64 %indvars.iv.i, %i.ax
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !27
  %i.bb = zext i32 %i.ba to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi i64 [ %i.bb, %bb.k ], [ 4294967295, %bb.j ] ; 26 uses
  switch i32 %i.ab, label %bb.bd [
    i32 0, label %bb.m
    i32 1, label %bb.p
    i32 2, label %bb.s
    i32 3, label %bb.v
    i32 4, label %bb.y
    i32 12, label %bb.ab
    i32 10, label %bb.ae
    i32 11, label %bb.ah
    i32 9, label %bb.ak
    i32 7, label %bb.an
    i32 8, label %bb.au
    i32 5, label %bb.ax
    i32 6, label %bb.ba
  ]

bb.m:                                             ; preds = %bb.l
  br i1 %i.al, label %.lr.ph.preheader.i.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bc
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.o ] ; 3 uses
  %i.be = icmp eq i64 %indvars.iv.i.i.i, %i.bc
  br i1 %i.be, label %bb.n, label %.critedge.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.bg = load i8, ptr %i.bd, align 1, !tbaa !26
  %i.bh = zext i8 %i.bg to i32
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.bh) ; 0 uses
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.o

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26
  %i.bm = zext i8 %i.bl to i32
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.bm) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i.i.i, %bb.n
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.bo = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.am ; 2 uses
  %i.bp = select i1 %i.bo, ptr @.str.74, ptr @.str.32
  %i.bq = select i1 %i.bo, i64 2, i64 0
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.bp, i64 noundef %i.bq) ; 0 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.am
  br i1 %exitcond.not.i.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3782

bb.p:                                             ; preds = %bb.l
  br i1 %i.al, label %.lr.ph.preheader.i85.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

.lr.ph.preheader.i85.i.i:                         ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bc
  br label %.lr.ph.i87.i.i

.lr.ph.i87.i.i:                                   ; preds = %bb.r, %.lr.ph.preheader.i85.i.i
  %indvars.iv.i88.i.i = phi i64 [ 0, %.lr.ph.preheader.i85.i.i ], [ %indvars.iv.next.i90.i.i, %bb.r ] ; 3 uses
  %i.bt = icmp eq i64 %indvars.iv.i88.i.i, %i.bc
  br i1 %i.bt, label %bb.q, label %.critedge.i89.i.i

bb.q:                                             ; preds = %.lr.ph.i87.i.i
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !26
  %i.bw = sext i8 %i.bv to i32
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.bw) ; 0 uses
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.r

.critedge.i89.i.i:                                ; preds = %.lr.ph.i87.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i88.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !26
  %i.cb = sext i8 %i.ca to i32
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.cb) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.critedge.i89.i.i, %bb.q
  %indvars.iv.next.i90.i.i = add nuw nsw i64 %indvars.iv.i88.i.i, 1 ; 3 uses
  %i.cd = icmp samesign ult i64 %indvars.iv.next.i90.i.i, %i.am ; 2 uses
  %i.ce = select i1 %i.cd, ptr @.str.74, ptr @.str.32
  %i.cf = select i1 %i.cd, i64 2, i64 0
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.ce, i64 noundef %i.cf) ; 0 uses
  %exitcond.not.i91.i.i = icmp eq i64 %indvars.iv.next.i90.i.i, %i.am
  br i1 %exitcond.not.i91.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, label %.lr.ph.i87.i.i, !llvm.loop !3783

bb.s:                                             ; preds = %bb.l
  br i1 %i.al, label %.lr.ph.preheader.i92.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

.lr.ph.preheader.i92.i.i:                         ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i94.i.i

.lr.ph.i94.i.i:                                   ; preds = %bb.u, %.lr.ph.preheader.i92.i.i
  %indvars.iv.i95.i.i = phi i64 [ 0, %.lr.ph.preheader.i92.i.i ], [ %indvars.iv.next.i97.i.i, %bb.u ] ; 3 uses
  %i.ci = icmp eq i64 %indvars.iv.i95.i.i, %i.bc
  br i1 %i.ci, label %bb.t, label %.critedge.i96.i.i

bb.t:                                             ; preds = %.lr.ph.i94.i.i
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.ck = load i16, ptr %i.ch, align 2, !tbaa !67
  %i.cl = zext i16 %i.ck to i32
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.cl) ; 0 uses
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.u

.critedge.i96.i.i:                                ; preds = %.lr.ph.i94.i.i
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i95.i.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !67
  %i.cq = zext i16 %i.cp to i32
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.cq) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.critedge.i96.i.i, %bb.t
  %indvars.iv.next.i97.i.i = add nuw nsw i64 %indvars.iv.i95.i.i, 1 ; 3 uses
  %i.cs = icmp samesign ult i64 %indvars.iv.next.i97.i.i, %i.am ; 2 uses
  %i.ct = select i1 %i.cs, ptr @.str.74, ptr @.str.32
  %i.cu = select i1 %i.cs, i64 2, i64 0
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.ct, i64 noundef %i.cu) ; 0 uses
  %exitcond.not.i98.i.i = icmp eq i64 %indvars.iv.next.i97.i.i, %i.am
  br i1 %exitcond.not.i98.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, label %.lr.ph.i94.i.i, !llvm.loop !3784

bb.v:                                             ; preds = %bb.l
  br i1 %i.al, label %.lr.ph.preheader.i99.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

.lr.ph.preheader.i99.i.i:                         ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i101.i.i

.lr.ph.i101.i.i:                                  ; preds = %bb.x, %.lr.ph.preheader.i99.i.i
  %indvars.iv.i102.i.i = phi i64 [ 0, %.lr.ph.preheader.i99.i.i ], [ %indvars.iv.next.i104.i.i, %bb.x ] ; 3 uses
  %i.cx = icmp eq i64 %indvars.iv.i102.i.i, %i.bc
  br i1 %i.cx, label %bb.w, label %.critedge.i103.i.i

bb.w:                                             ; preds = %.lr.ph.i101.i.i
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.cz = load i16, ptr %i.cw, align 2, !tbaa !67
  %i.da = sext i16 %i.cz to i32
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.da) ; 0 uses
  %i.dc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.x

.critedge.i103.i.i:                               ; preds = %.lr.ph.i101.i.i
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i102.i.i
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !67
  %i.df = sext i16 %i.de to i32
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.df) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.critedge.i103.i.i, %bb.w
  %indvars.iv.next.i104.i.i = add nuw nsw i64 %indvars.iv.i102.i.i, 1 ; 3 uses
  %i.dh = icmp samesign ult i64 %indvars.iv.next.i104.i.i, %i.am ; 2 uses
  %i.di = select i1 %i.dh, ptr @.str.74, ptr @.str.32
  %i.dj = select i1 %i.dh, i64 2, i64 0
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.di, i64 noundef %i.dj) ; 0 uses
  %exitcond.not.i105.i.i = icmp eq i64 %indvars.iv.next.i104.i.i, %i.am
  br i1 %exitcond.not.i105.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, label %.lr.ph.i101.i.i, !llvm.loop !3785

bb.y:                                             ; preds = %bb.l
  br i1 %i.al, label %.lr.ph.preheader.i106.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

.lr.ph.preheader.i106.i.i:                        ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i108.i.i

.lr.ph.i108.i.i:                                  ; preds = %bb.aa, %.lr.ph.preheader.i106.i.i
  %indvars.iv.i109.i.i = phi i64 [ 0, %.lr.ph.preheader.i106.i.i ], [ %indvars.iv.next.i111.i.i, %bb.aa ] ; 3 uses
  %i.dm = icmp eq i64 %indvars.iv.i109.i.i, %i.bc
  br i1 %i.dm, label %bb.z, label %.critedge.i110.i.i

bb.z:                                             ; preds = %.lr.ph.i108.i.i
  %i.dn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.do = load i32, ptr %i.dl, align 4, !tbaa !27
  %i.dp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.do) ; 0 uses
  %i.dq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.aa

.critedge.i110.i.i:                               ; preds = %.lr.ph.i108.i.i
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i109.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !27
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.ds) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge.i110.i.i, %bb.z
  %indvars.iv.next.i111.i.i = add nuw nsw i64 %indvars.iv.i109.i.i, 1 ; 3 uses
  %i.du = icmp samesign ult i64 %indvars.iv.next.i111.i.i, %i.am ; 2 uses
  %i.dv = select i1 %i.du, ptr @.str.74, ptr @.str.32
  %i.dw = select i1 %i.du, i64 2, i64 0
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.dv, i64 noundef %i.dw) ; 0 uses
  %exitcond.not.i112.i.i = icmp eq i64 %indvars.iv.next.i111.i.i, %i.am
  br i1 %exitcond.not.i112.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, label %.lr.ph.i108.i.i, !llvm.loop !3786

bb.ab:                                            ; preds = %bb.l
  br i1 %i.al, label %.lr.ph.preheader.i113.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

.lr.ph.preheader.i113.i.i:                        ; preds = %bb.ab
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i115.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ad, %.lr.ph.preheader.i113.i.i
  %indvars.iv.i116.i.i = phi i64 [ 0, %.lr.ph.preheader.i113.i.i ], [ %indvars.iv.next.i118.i.i, %bb.ad ] ; 3 uses
  %i.dz = icmp eq i64 %indvars.iv.i116.i.i, %i.bc
  br i1 %i.dz, label %bb.ac, label %.critedge.i117.i.i

bb.ac:                                            ; preds = %.lr.ph.i115.i.i
  %i.ea = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !27
  %i.ec = zext i32 %i.eb to i64
  %i.ed = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.ec) ; 0 uses
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.ad

.critedge.i117.i.i:                               ; preds = %.lr.ph.i115.i.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i116.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !27
  %i.eh = zext i32 %i.eg to i64
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.eh) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge.i117.i.i, %bb.ac
  %indvars.iv.next.i118.i.i = add nuw nsw i64 %indvars.iv.i116.i.i, 1 ; 3 uses
  %i.ej = icmp samesign ult i64 %indvars.iv.next.i118.i.i, %i.am ; 2 uses
  %i.ek = select i1 %i.ej, ptr @.str.74, ptr @.str.32
  %i.el = select i1 %i.ej, i64 2, i64 0
  %i.em = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.ek, i64 noundef %i.el) ; 0 uses
  %exitcond.not.i119.i.i = icmp eq i64 %indvars.iv.next.i118.i.i, %i.am
  br i1 %exitcond.not.i119.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, label %.lr.ph.i115.i.i, !llvm.loop !3787

bb.ae:                                            ; preds = %bb.l
  br i1 %i.al, label %.lr.ph.preheader.i120.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

.lr.ph.preheader.i120.i.i:                        ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i122.i.i

.lr.ph.i122.i.i:                                  ; preds = %bb.ag, %.lr.ph.preheader.i120.i.i
  %indvars.iv.i123.i.i = phi i64 [ 0, %.lr.ph.preheader.i120.i.i ], [ %indvars.iv.next.i125.i.i, %bb.ag ] ; 3 uses
  %i.eo = icmp eq i64 %indvars.iv.i123.i.i, %i.bc
  br i1 %i.eo, label %bb.af, label %.critedge.i124.i.i

bb.af:                                            ; preds = %.lr.ph.i122.i.i
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.eq = load i64, ptr %i.en, align 8, !tbaa !28
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.eq) ; 0 uses
  %i.es = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.ag

.critedge.i124.i.i:                               ; preds = %.lr.ph.i122.i.i
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i123.i.i
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !28
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.eu) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge.i124.i.i, %bb.af
  %indvars.iv.next.i125.i.i = add nuw nsw i64 %indvars.iv.i123.i.i, 1 ; 3 uses
  %i.ew = icmp samesign ult i64 %indvars.iv.next.i125.i.i, %i.am ; 2 uses
  %i.ex = select i1 %i.ew, ptr @.str.74, ptr @.str.32
  %i.ey = select i1 %i.ew, i64 2, i64 0
  %i.ez = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.ex, i64 noundef %i.ey) ; 0 uses
  %exitcond.not.i126.i.i = icmp eq i64 %indvars.iv.next.i125.i.i, %i.am
  br i1 %exitcond.not.i126.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, label %.lr.ph.i122.i.i, !llvm.loop !3788

bb.ah:                                            ; preds = %bb.l
  br i1 %i.al, label %.lr.ph.preheader.i127.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

.lr.ph.preheader.i127.i.i:                        ; preds = %bb.ah
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i129.i.i

.lr.ph.i129.i.i:                                  ; preds = %bb.aj, %.lr.ph.preheader.i127.i.i
  %indvars.iv.i130.i.i = phi i64 [ 0, %.lr.ph.preheader.i127.i.i ], [ %indvars.iv.next.i132.i.i, %bb.aj ] ; 3 uses
  %i.fb = icmp eq i64 %indvars.iv.i130.i.i, %i.bc
  br i1 %i.fb, label %bb.ai, label %.critedge.i131.i.i

bb.ai:                                            ; preds = %.lr.ph.i129.i.i
  %i.fc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.fd = load i64, ptr %i.fa, align 8, !tbaa !28
  %i.fe = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.fd) ; 0 uses
  %i.ff = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.aj

.critedge.i131.i.i:                               ; preds = %.lr.ph.i129.i.i
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i130.i.i
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !28
  %i.fi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.fh) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge.i131.i.i, %bb.ai
  %indvars.iv.next.i132.i.i = add nuw nsw i64 %indvars.iv.i130.i.i, 1 ; 3 uses
  %i.fj = icmp samesign ult i64 %indvars.iv.next.i132.i.i, %i.am ; 2 uses
  %i.fk = select i1 %i.fj, ptr @.str.74, ptr @.str.32
  %i.fl = select i1 %i.fj, i64 2, i64 0
  %i.fm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.fk, i64 noundef %i.fl) ; 0 uses
  %exitcond.not.i133.i.i = icmp eq i64 %indvars.iv.next.i132.i.i, %i.am
  br i1 %exitcond.not.i133.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, label %.lr.ph.i129.i.i, !llvm.loop !3789

bb.ak:                                            ; preds = %bb.l
  br i1 %i.al, label %.lr.ph.preheader.i134.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

.lr.ph.preheader.i134.i.i:                        ; preds = %bb.ak
  %i.fn = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bc
  br label %.lr.ph.i136.i.i

.lr.ph.i136.i.i:                                  ; preds = %bb.am, %.lr.ph.preheader.i134.i.i
  %indvars.iv.i137.i.i = phi i64 [ 0, %.lr.ph.preheader.i134.i.i ], [ %indvars.iv.next.i139.i.i, %bb.am ] ; 3 uses
  %i.fo = icmp eq i64 %indvars.iv.i137.i.i, %i.bc
  br i1 %i.fo, label %bb.al, label %.critedge.i138.i.i

bb.al:                                            ; preds = %.lr.ph.i136.i.i
  %i.fp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.fq = load i8, ptr %i.fn, align 1, !tbaa !72, !range !74, !noundef !75
  %i.fr = zext nneg i8 %i.fq to i32
  %i.fs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.fr) ; 0 uses
  %i.ft = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.am

.critedge.i138.i.i:                               ; preds = %.lr.ph.i136.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i137.i.i
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !72, !range !74, !noundef !75
  %i.fw = zext nneg i8 %i.fv to i32
  %i.fx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.fw) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %.critedge.i138.i.i, %bb.al
  %indvars.iv.next.i139.i.i = add nuw nsw i64 %indvars.iv.i137.i.i, 1 ; 3 uses
  %i.fy = icmp samesign ult i64 %indvars.iv.next.i139.i.i, %i.am ; 2 uses
  %i.fz = select i1 %i.fy, ptr @.str.74, ptr @.str.32
  %i.ga = select i1 %i.fy, i64 2, i64 0
  %i.gb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.fz, i64 noundef %i.ga) ; 0 uses
  %exitcond.not.i140.i.i = icmp eq i64 %indvars.iv.next.i139.i.i, %i.am
  br i1 %exitcond.not.i140.i.i, label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, label %.lr.ph.i136.i.i, !llvm.loop !3790

bb.an:                                            ; preds = %bb.l
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !90  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -24
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds i8, ptr %i.b, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !3804 ; 2 uses
  store i64 4, ptr %i.gg, align 8, !tbaa !3804
  br i1 %i.al, label %.lr.ph.preheader.i141.i.i, label %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.i.i

.lr.ph.preheader.i141.i.i:                        ; preds = %bb.an
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i143.i.i

.lr.ph.i143.i.i:                                  ; preds = %bb.at, %.lr.ph.preheader.i141.i.i
  %indvars.iv.i144.i.i = phi i64 [ 0, %.lr.ph.preheader.i141.i.i ], [ %indvars.iv.next.i146.i.i, %bb.at ] ; 3 uses
  %i.gj = icmp eq i64 %indvars.iv.i144.i.i, %i.bc
  br i1 %i.gj, label %bb.ao, label %.critedge.i145.i.i

bb.ao:                                            ; preds = %.lr.ph.i143.i.i
  %i.gk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.gl = load i16, ptr %i.gi, align 2, !tbaa !77 ; 2 uses
  %i.gm = zext i16 %i.gl to i32                   ; 2 uses
  %i.gn = shl nuw nsw i32 %i.gm, 13               ; 2 uses
  %i.go = and i32 %i.gn, 268427264                ; 2 uses
  %i.gp = add nuw nsw i32 %i.go, 939524096
  %i.gq = and i32 %i.gm, 31744
  switch i32 %i.gq, label %_ZNK2cv6hfloatcvfEv.exit.i.i.i [
    i32 31744, label %bb.ap
    i32 0, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gr = or i32 %i.gn, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.gs = add nuw nsw i32 %i.go, 947912704
  %i.gt = bitcast i32 %i.gs to float
  %i.gu = fadd float %i.gt, f0xB8800000
  %i.gv = bitcast float %i.gu to i32
  br label %_ZNK2cv6hfloatcvfEv.exit.i.i.i

_ZNK2cv6hfloatcvfEv.exit.i.i.i:                   ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.gw = phi i32 [ %i.gr, %bb.ap ], [ %i.gv, %bb.aq ], [ %i.gp, %bb.ao ]
  %.signext.i.i.i.i = sext i16 %i.gl to i32
  %i.gx = and i32 %.signext.i.i.i.i, -2147483648
  %i.gy = or i32 %i.gw, %i.gx
  %i.gz = bitcast i32 %i.gy to float
  %i.ha = fpext float %i.gz to double
  %i.hb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.ha) ; 0 uses
  %i.hc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.at

.critedge.i145.i.i:                               ; preds = %.lr.ph.i143.i.i
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i144.i.i
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !77 ; 2 uses
  %i.hf = zext i16 %i.he to i32                   ; 2 uses
  %i.hg = shl nuw nsw i32 %i.hf, 13               ; 2 uses
  %i.hh = and i32 %i.hg, 268427264                ; 2 uses
  %i.hi = add nuw nsw i32 %i.hh, 939524096
  %i.hj = and i32 %i.hf, 31744
  switch i32 %i.hj, label %_ZNK2cv6hfloatcvfEv.exit16.i.i.i [
    i32 31744, label %bb.ar
    i32 0, label %bb.as
  ]

bb.ar:                                            ; preds = %.critedge.i145.i.i
  %i.hk = or i32 %i.hg, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit16.i.i.i

bb.as:                                            ; preds = %.critedge.i145.i.i
  %i.hl = add nuw nsw i32 %i.hh, 947912704
  %i.hm = bitcast i32 %i.hl to float
  %i.hn = fadd float %i.hm, f0xB8800000
  %i.ho = bitcast float %i.hn to i32
  br label %_ZNK2cv6hfloatcvfEv.exit16.i.i.i

_ZNK2cv6hfloatcvfEv.exit16.i.i.i:                 ; preds = %bb.as, %bb.ar, %.critedge.i145.i.i
  %i.hp = phi i32 [ %i.hk, %bb.ar ], [ %i.ho, %bb.as ], [ %i.hi, %.critedge.i145.i.i ]
  %.signext.i15.i.i.i = sext i16 %i.he to i32
  %i.hq = and i32 %.signext.i15.i.i.i, -2147483648
  %i.hr = or i32 %i.hp, %i.hq
  %i.hs = bitcast i32 %i.hr to float
  %i.ht = fpext float %i.hs to double
  %i.hu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.ht) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit16.i.i.i, %_ZNK2cv6hfloatcvfEv.exit.i.i.i
  %indvars.iv.next.i146.i.i = add nuw nsw i64 %indvars.iv.i144.i.i, 1 ; 3 uses
  %i.hv = icmp samesign ult i64 %indvars.iv.next.i146.i.i, %i.am ; 2 uses
  %i.hw = select i1 %i.hv, ptr @.str.74, ptr @.str.32
  %i.hx = select i1 %i.hv, i64 2, i64 0
  %i.hy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.hw, i64 noundef %i.hx) ; 0 uses
  %exitcond.not.i147.i.i = icmp eq i64 %indvars.iv.next.i146.i.i, %i.am
  br i1 %exitcond.not.i147.i.i, label %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.sink.split.i.i, label %.lr.ph.i143.i.i, !llvm.loop !3791

bb.au:                                            ; preds = %bb.l
  %i.hz = load ptr, ptr %i.b, align 8, !tbaa !90  ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 -24
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds i8, ptr %i.b, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !3804 ; 2 uses
  store i64 4, ptr %i.id, align 8, !tbaa !3804
  br i1 %i.al, label %.lr.ph.preheader.i148.i.i, label %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.i.i

.lr.ph.preheader.i148.i.i:                        ; preds = %bb.au
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i150.i.i

.lr.ph.i150.i.i:                                  ; preds = %bb.aw, %.lr.ph.preheader.i148.i.i
  %indvars.iv.i151.i.i = phi i64 [ 0, %.lr.ph.preheader.i148.i.i ], [ %indvars.iv.next.i153.i.i, %bb.aw ] ; 3 uses
  %i.ig = icmp eq i64 %indvars.iv.i151.i.i, %i.bc
  br i1 %i.ig, label %bb.av, label %.critedge.i152.i.i

bb.av:                                            ; preds = %.lr.ph.i150.i.i
  %i.ih = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.ii = load i16, ptr %i.if, align 2, !tbaa !79
  %i.ij = zext i16 %i.ii to i32
  %i.ik = shl nuw i32 %i.ij, 16
  %i.il = bitcast i32 %i.ik to float
  %i.im = fpext float %i.il to double
  %i.in = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.im) ; 0 uses
  %i.io = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.aw

.critedge.i152.i.i:                               ; preds = %.lr.ph.i150.i.i
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i151.i.i
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !79
  %i.ir = zext i16 %i.iq to i32
  %i.is = shl nuw i32 %i.ir, 16
  %i.it = bitcast i32 %i.is to float
  %i.iu = fpext float %i.it to double
  %i.iv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.iu) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge.i152.i.i, %bb.av
  %indvars.iv.next.i153.i.i = add nuw nsw i64 %indvars.iv.i151.i.i, 1 ; 3 uses
  %i.iw = icmp samesign ult i64 %indvars.iv.next.i153.i.i, %i.am ; 2 uses
  %i.ix = select i1 %i.iw, ptr @.str.74, ptr @.str.32
  %i.iy = select i1 %i.iw, i64 2, i64 0
  %i.iz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.ix, i64 noundef %i.iy) ; 0 uses
  %exitcond.not.i154.i.i = icmp eq i64 %indvars.iv.next.i153.i.i, %i.am
  br i1 %exitcond.not.i154.i.i, label %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.sink.split.i.i, label %.lr.ph.i150.i.i, !llvm.loop !3792

bb.ax:                                            ; preds = %bb.l
  %i.ja = load ptr, ptr %i.b, align 8, !tbaa !90  ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 -24
  %i.jc = load i64, ptr %i.jb, align 8
  %i.jd = getelementptr inbounds i8, ptr %i.b, i64 %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !3804 ; 2 uses
  store i64 8, ptr %i.je, align 8, !tbaa !3804
  br i1 %i.al, label %.lr.ph.preheader.i155.i.i, label %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.i.i

.lr.ph.preheader.i155.i.i:                        ; preds = %bb.ax
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i157.i.i

.lr.ph.i157.i.i:                                  ; preds = %bb.az, %.lr.ph.preheader.i155.i.i
  %indvars.iv.i158.i.i = phi i64 [ 0, %.lr.ph.preheader.i155.i.i ], [ %indvars.iv.next.i160.i.i, %bb.az ] ; 3 uses
  %i.jh = icmp eq i64 %indvars.iv.i158.i.i, %i.bc
  br i1 %i.jh, label %bb.ay, label %.critedge.i159.i.i

bb.ay:                                            ; preds = %.lr.ph.i157.i.i
  %i.ji = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.jj = load float, ptr %i.jg, align 4, !tbaa !70
  %i.jk = fpext float %i.jj to double
  %i.jl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.jk) ; 0 uses
  %i.jm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.az

.critedge.i159.i.i:                               ; preds = %.lr.ph.i157.i.i
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i158.i.i
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !70
  %i.jp = fpext float %i.jo to double
  %i.jq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.jp) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %.critedge.i159.i.i, %bb.ay
  %indvars.iv.next.i160.i.i = add nuw nsw i64 %indvars.iv.i158.i.i, 1 ; 3 uses
  %i.jr = icmp samesign ult i64 %indvars.iv.next.i160.i.i, %i.am ; 2 uses
  %i.js = select i1 %i.jr, ptr @.str.74, ptr @.str.32
  %i.jt = select i1 %i.jr, i64 2, i64 0
  %i.ju = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.js, i64 noundef %i.jt) ; 0 uses
  %exitcond.not.i161.i.i = icmp eq i64 %indvars.iv.next.i160.i.i, %i.am
  br i1 %exitcond.not.i161.i.i, label %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.sink.split.i.i, label %.lr.ph.i157.i.i, !llvm.loop !3793

bb.ba:                                            ; preds = %bb.l
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !90  ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 -24
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = getelementptr inbounds i8, ptr %i.b, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !3804 ; 2 uses
  store i64 16, ptr %i.jz, align 8, !tbaa !3804
  br i1 %i.al, label %.lr.ph.preheader.i162.i.i, label %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.i.i

.lr.ph.preheader.i162.i.i:                        ; preds = %bb.ba
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bc
  br label %.lr.ph.i164.i.i

.lr.ph.i164.i.i:                                  ; preds = %bb.bc, %.lr.ph.preheader.i162.i.i
  %indvars.iv.i165.i.i = phi i64 [ 0, %.lr.ph.preheader.i162.i.i ], [ %indvars.iv.next.i167.i.i, %bb.bc ] ; 3 uses
  %i.kc = icmp eq i64 %indvars.iv.i165.i.i, %i.bc
  br i1 %i.kc, label %bb.bb, label %.critedge.i166.i.i

bb.bb:                                            ; preds = %.lr.ph.i164.i.i
  %i.kd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  %i.ke = load double, ptr %i.kb, align 8, !tbaa !38
  %i.kf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.ke) ; 0 uses
  %i.kg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 1) ; 0 uses
  br label %bb.bc

.critedge.i166.i.i:                               ; preds = %.lr.ph.i164.i.i
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i165.i.i
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !38
  %i.kj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.ki) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge.i166.i.i, %bb.bb
  %indvars.iv.next.i167.i.i = add nuw nsw i64 %indvars.iv.i165.i.i, 1 ; 3 uses
  %i.kk = icmp samesign ult i64 %indvars.iv.next.i167.i.i, %i.am ; 2 uses
  %i.kl = select i1 %i.kk, ptr @.str.74, ptr @.str.32
  %i.km = select i1 %i.kk, i64 2, i64 0
  %i.kn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.kl, i64 noundef %i.km) ; 0 uses
  %exitcond.not.i168.i.i = icmp eq i64 %indvars.iv.next.i167.i.i, %i.am
  br i1 %exitcond.not.i168.i.i, label %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.sink.split.i.i, label %.lr.ph.i164.i.i, !llvm.loop !3794

bb.bd:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN6cvtestL10writeElemsERSoPKviii, ptr noundef nonnull @.str.35, i32 noundef 3422) #31
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  %i.kp = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bf
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !26
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.i

_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.sink.split.i.i: ; preds = %bb.bc, %bb.az, %bb.aw, %bb.at
  %.sink.ph.i.i = phi i64 [ %i.ie, %bb.aw ], [ %i.gh, %bb.at ], [ %i.jf, %bb.az ], [ %i.ka, %bb.bc ]
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !90
  br label %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.i.i

_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.i.i: ; preds = %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.sink.split.i.i, %bb.ba, %bb.ax, %bb.au, %bb.an
  %.sink202.i.i = phi ptr [ %i.gc, %bb.an ], [ %i.hz, %bb.au ], [ %i.ja, %bb.ax ], [ %i.jv, %bb.ba ], [ %.pre.i.i, %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.sink.split.i.i ]
  %.sink.i.i = phi i64 [ %i.gh, %bb.an ], [ %i.ie, %bb.au ], [ %i.jf, %bb.ax ], [ %i.ka, %bb.ba ], [ %.sink.ph.i.i, %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.sink.split.i.i ]
  %i.ku = getelementptr i8, ptr %.sink202.i.i, i64 -24
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = getelementptr inbounds i8, ptr %i.b, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i64 %.sink.i.i, ptr %i.kx, align 8, !tbaa !3804
  br label %_ZN6cvtestL10writeElemsERSoPKviii.exit.i

_ZN6cvtestL10writeElemsERSoPKviii.exit.i:         ; preds = %bb.am, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %_ZN6cvtestL10writeElemsIhiEEvRSoPKvii.exit.sink.split.i.i, %bb.ak, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m
  %i.ky = load ptr, ptr %1, align 8, !tbaa !109
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !57
  %i.lb = add nsw i32 %i.la, -1
  %i.lc = sext i32 %i.lb to i64
  %i.ld = icmp slt i64 %indvars.iv.i, %i.lc       ; 2 uses
  %i.le = select i1 %i.ld, ptr @.str.126, ptr @.str.32
  %i.lf = select i1 %i.ld, i64 2, i64 0
  %i.lg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.le, i64 noundef %i.lf) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lh = load ptr, ptr %1, align 8, !tbaa !109   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !57
  %i.lk = sext i32 %i.lj to i64
  %i.ll = icmp slt i64 %indvars.iv.next.i, %i.lk
  br i1 %i.ll, label %bb.j, label %_ZN6cvtestlsERSoRKNS_7MatPartE.exit, !llvm.loop !3795

_ZN6cvtestlsERSoRKNS_7MatPartE.exit:              ; preds = %_ZN6cvtestL10writeElemsERSoPKviii.exit.i, %bb.h, %bb.i
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptosi.sat.i8.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptosi.sat.i16.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umax.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.round.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.round.v4f64(<4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.smax.v2i8(<2 x i8>, <2 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.smax.v4i8(<4 x i8>, <4 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smax.v8i8(<8 x i8>, <8 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smax.v2i16(<2 x i16>, <2 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smin.v8i8(<8 x i8>, <8 x i8>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #12
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.fadd.v2f64
!3545 = distinct !{!3545, !30, !62, !63}
!3546 = distinct !{!3546, !64}
!3547 = distinct !{!3547, !30, !62}
!3548 = distinct !{!3548, !30}
!3549 = distinct !{!3549, i1 false, !"LVerDomain"}
!3550 = distinct !{!3550, !3549}
!3551 = distinct !{!3551, !3549}
!3552 = distinct !{!3552, !30, !62, !63}
!3553 = distinct !{!3553, !30, !62, !63}
!3554 = distinct !{!3554, !64}
!3555 = distinct !{!3555, !30, !62}
!3556 = distinct !{!3556, !30, !62, !63}
!3557 = distinct !{!3557, !30, !62, !63}
!3558 = distinct !{!3558, !64}
!3559 = distinct !{!3559, !30, !62}
!3560 = distinct !{!3560, !30}
!3561 = distinct !{!3561, i1 false, !"LVerDomain"}
!3562 = distinct !{!3562, !3561}
!3563 = distinct !{!3563, !3561}
!3564 = distinct !{!3564, !30, !62, !63}
!3565 = distinct !{!3565, !30, !62, !63}
!3566 = distinct !{!3566, !64}
!3567 = distinct !{!3567, !30, !62}
!3568 = distinct !{!3568, !30, !62, !63}
!3569 = distinct !{!3569, !30, !62, !63}
!3570 = distinct !{!3570, !64}
!3571 = distinct !{!3571, !30, !62}
!3572 = distinct !{!3572, !30}
!3573 = distinct !{!3573, i1 false, !"LVerDomain"}
!3574 = distinct !{!3574, !3573}
!3575 = distinct !{!3575, !3573}
!3576 = distinct !{!3576, !30, !62, !63}
!3577 = distinct !{!3577, !30, !62, !63}
!3578 = distinct !{!3578, !64}
!3579 = distinct !{!3579, !30, !62}
!3580 = distinct !{!3580, !30, !62, !63}
!3581 = distinct !{!3581, !30, !62, !63}
!3582 = distinct !{!3582, !64}
!3583 = distinct !{!3583, !30, !62}
!3584 = distinct !{!3584, !30}
!3585 = distinct !{!3585, i1 false, !"LVerDomain"}
!3586 = distinct !{!3586, !3585}
!3587 = distinct !{!3587, !3585}
!3588 = distinct !{!3588, !30, !62, !63}
!3589 = distinct !{!3589, !30, !62, !63}
!3590 = distinct !{!3590, !64}
!3591 = distinct !{!3591, !30, !62}
!3592 = distinct !{!3592, !30, !62, !63}
!3593 = distinct !{!3593, !30, !62, !63}
!3594 = distinct !{!3594, !64}
!3595 = distinct !{!3595, !30, !62}
!3596 = distinct !{!3596, !30}
!3597 = distinct !{!3597, i1 false, !"LVerDomain"}
!3598 = distinct !{!3598, !3597}
!3599 = distinct !{!3599, !3597}
!3600 = distinct !{!3600, !30, !62, !63}
!3601 = distinct !{!3601, !30, !62, !63}
!3602 = distinct !{!3602, !64}
!3603 = distinct !{!3603, !30, !62}
!3604 = distinct !{!3604, i1 false, !"LVerDomain"}
!3605 = distinct !{!3605, !3604}
!3606 = distinct !{!3606, !3604}
!3607 = distinct !{!3607, !30, !62, !63}
!3608 = distinct !{!3608, !30, !62}
!3609 = distinct !{!3609, i1 false, !"LVerDomain"}
!3610 = distinct !{!3610, !3609}
!3611 = distinct !{!3611, !3609}
!3612 = distinct !{!3612, !30, !62, !63}
!3613 = distinct !{!3613, !30, !62}
!3614 = distinct !{!3614, i1 false, !"LVerDomain"}
!3615 = distinct !{!3615, !3614}
!3616 = distinct !{!3616, !3614}
!3617 = distinct !{!3617, !30, !62, !63}
!3618 = distinct !{!3618, !30, !62}
!3619 = distinct !{!3619, i1 false, !"LVerDomain"}
!3620 = distinct !{!3620, !3619}
!3621 = distinct !{!3621, !3619}
!3622 = distinct !{!3622, !30, !62, !63}
!3623 = distinct !{!3623, !30, !62}
!3624 = distinct !{!3624, i1 false, !"LVerDomain"}
!3625 = distinct !{!3625, !3624}
!3626 = distinct !{!3626, !3624}
!3627 = distinct !{!3627, !30, !62, !63}
!3628 = distinct !{!3628, !30, !62}
!3629 = !{!3550}
!3630 = !{!3551}
!3631 = !{!3562}
!3632 = !{!3563}
!3633 = !{!3574}
!3634 = !{!3575}
!3635 = !{!3586}
!3636 = !{!3587}
!3637 = !{!3598}
!3638 = !{!3599}
!3639 = !{!3605}
!3640 = !{!3606}
!3641 = !{!3610}
!3642 = !{!3611}
!3643 = !{!3615}
!3644 = !{!3616}
!3645 = !{!3620}
!3646 = !{!3621}
!3647 = !{!3625}
!3648 = !{!3626}
!3649 = distinct !{!3649, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!3650 = distinct !{!3650, !3649, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!3651 = distinct !{!3651, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!3652 = distinct !{!3652, !3651, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!3653 = distinct !{!3653, !30}
!3654 = distinct !{!3654, !30}
!3655 = !{!3650}
!3656 = !{!3652}
!3657 = distinct !{!3657, i1 false, !"LVerDomain"}
!3658 = distinct !{!3658, !3657}
!3659 = distinct !{!3659, !3657}
!3660 = distinct !{!3660, !30, !62, !63}
!3661 = distinct !{!3661, !30, !62}
!3662 = distinct !{!3662, i1 false, !"LVerDomain"}
!3663 = distinct !{!3663, !3662}
!3664 = distinct !{!3664, !3662}
!3665 = distinct !{!3665, !30, !62, !63}
!3666 = distinct !{!3666, i1 false, !"LVerDomain"}
!3667 = distinct !{!3667, !3666}
!3668 = distinct !{!3668, !3666}
!3669 = distinct !{!3669, !30, !62, !63}
!3670 = distinct !{!3670, !30, !62}
!3671 = distinct !{!3671, !30, !62}
!3672 = !{!3658}
!3673 = !{!3659}
!3674 = !{!3663}
!3675 = !{!3664}
!3676 = !{!3667}
!3677 = !{!3668}
!3678 = distinct !{!3678, i1 false, !"LVerDomain"}
!3679 = distinct !{!3679, !3678}
!3680 = distinct !{!3680, !3678}
!3681 = distinct !{!3681, !30, !62, !63}
!3682 = distinct !{!3682, !30, !62}
!3683 = distinct !{!3683, i1 false, !"LVerDomain"}
!3684 = distinct !{!3684, !3683}
!3685 = distinct !{!3685, !3683}
!3686 = distinct !{!3686, !30, !62, !63}
!3687 = distinct !{!3687, i1 false, !"LVerDomain"}
!3688 = distinct !{!3688, !3687}
!3689 = distinct !{!3689, !3687}
!3690 = distinct !{!3690, !30, !62, !63}
!3691 = distinct !{!3691, !30, !62}
!3692 = distinct !{!3692, !30, !62}
!3693 = !{!3679}
!3694 = !{!3680}
!3695 = !{!3684}
!3696 = !{!3685}
!3697 = !{!3688}
!3698 = !{!3689}
!3699 = distinct !{!3699, !30, !62, !63}
!3700 = distinct !{!3700, !30, !62}
!3701 = distinct !{!3701, !30, !62, !63}
!3702 = distinct !{!3702, !30, !62, !63}
!3703 = distinct !{!3703, !30, !62}
!3704 = distinct !{!3704, !30, !62}
!3705 = distinct !{!3705, !30, !62, !63}
!3706 = distinct !{!3706, !30, !63, !62}
!3707 = distinct !{!3707, !30, !62, !63}
!3708 = distinct !{!3708, !30, !62, !63}
!3709 = distinct !{!3709, !30, !63, !62}
!3710 = distinct !{!3710, !30, !63, !62}
!3711 = distinct !{!3711, !30, !62, !63}
!3712 = distinct !{!3712, !30, !63, !62}
!3713 = distinct !{!3713, !30, !62, !63}
!3714 = distinct !{!3714, !30, !62, !63}
!3715 = distinct !{!3715, !30, !63, !62}
!3716 = distinct !{!3716, !30, !63, !62}
!3717 = distinct !{!3717, !30}
!3718 = distinct !{!3718, !30, !62, !63}
!3719 = distinct !{!3719, !30, !62, !63}
!3720 = distinct !{!3720, !30, !63, !62}
!3721 = distinct !{!3721, !30, !63, !62}
!3722 = distinct !{!3722, !30}
!3723 = distinct !{!3723, !30, !62, !63}
!3724 = distinct !{!3724, !30}
!3725 = distinct !{!3725, !30, !63, !62}
!3726 = distinct !{!3726, !30}
!3727 = distinct !{!3727, !30}
!3728 = distinct !{!3728, !30}
!3729 = distinct !{!3729, !30}
!3730 = distinct !{!3730, !30}
!3731 = distinct !{!3731, !30}
!3732 = distinct !{!3732, !30}
!3733 = distinct !{!3733, !30}
!3734 = distinct !{!3734, !30}
!3735 = distinct !{!3735, !30}
!3736 = distinct !{!3736, !30}
!3737 = distinct !{!3737, !30}
!3738 = distinct !{!3738, !30, !62, !63}
!3739 = distinct !{!3739, !30, !63, !62}
!3740 = distinct !{!3740, !30, !62, !63}
!3741 = distinct !{!3741, !30, !62, !63}
!3742 = distinct !{!3742, !30, !63, !62}
!3743 = distinct !{!3743, !30, !63, !62}
!3744 = distinct !{!3744, !30}
!3745 = distinct !{!3745, !30}
!3746 = distinct !{!3746, !30}
!3747 = distinct !{!3747, !30}
!3748 = distinct !{!3748, !30}
!3749 = distinct !{!3749, !30}
!3750 = distinct !{!3750, !30, !62, !63}
!3751 = distinct !{!3751, !30, !62, !63}
!3752 = distinct !{!3752, !64}
!3753 = distinct !{!3753, !30, !62}
!3754 = distinct !{!3754, !30, !62, !63}
!3755 = distinct !{!3755, !30, !62, !63}
!3756 = distinct !{!3756, !30, !62}
!3757 = distinct !{!3757, !30, !62}
!3758 = distinct !{!3758, !30, !62, !63}
!3759 = distinct !{!3759, !30, !62}
!3760 = distinct !{!3760, !30, !62, !63}
!3761 = distinct !{!3761, !30, !62, !63}
!3762 = distinct !{!3762, !30, !62}
!3763 = distinct !{!3763, !30, !62}
!3764 = distinct !{!3764, !30, !62, !63}
!3765 = distinct !{!3765, !30, !62}
!3766 = distinct !{!3766, !30, !62, !63}
!3767 = distinct !{!3767, !30, !62, !63}
!3768 = distinct !{!3768, !30, !62}
!3769 = distinct !{!3769, !30, !62}
!3770 = distinct !{null, null}
!3771 = distinct !{null}
!3772 = distinct !{!3772, !30}
!3773 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3774 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv9FormatterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3775 = !{!"p1 _ZTSN2cv9FormatterE", !18, i64 0}
!3776 = !{!"_ZTSSt12__shared_ptrIN2cv9FormatterELN9__gnu_cxx12_Lock_policyE2EE", !3775, i64 0, !117, i64 8}
!3777 = !{!3776, !3775, i64 0}
!3778 = !{!"p1 _ZTSN2cv9FormattedE", !18, i64 0}
!3779 = !{!"_ZTSSt12__shared_ptrIN2cv9FormattedELN9__gnu_cxx12_Lock_policyE2EE", !3778, i64 0, !117, i64 8}
!3780 = !{!3779, !3778, i64 0}
!3781 = distinct !{null}
!3782 = distinct !{!3782, !30}
!3783 = distinct !{!3783, !30}
!3784 = distinct !{!3784, !30}
!3785 = distinct !{!3785, !30}
!3786 = distinct !{!3786, !30}
!3787 = distinct !{!3787, !30}
!3788 = distinct !{!3788, !30}
!3789 = distinct !{!3789, !30}
!3790 = distinct !{!3790, !30}
!3791 = distinct !{!3791, !30}
!3792 = distinct !{!3792, !30}
!3793 = distinct !{!3793, !30}
!3794 = distinct !{!3794, !30}
!3795 = distinct !{!3795, !30}
!3796 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!3797 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!3798 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!3799 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !23, i64 8}
!3800 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!3801 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!3802 = !{!"_ZTSSt6locale", !3801, i64 0}
!3803 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !3796, i64 24, !3797, i64 28, !3797, i64 32, !3798, i64 40, !3799, i64 48, !14, i64 64, !15, i64 192, !3800, i64 200, !3802, i64 208}
!3804 = !{!3803, !23, i64 8}
end_hunk_1
