Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt_prediction?download=true
inline.NumInlined: 145
inline.NumDeleted: 76
begin_hunk_0_@_ZNK8LightGBM4Tree12GetLeafByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE:bb.a

.thread65:                                        ; preds = %.thread63, %bb.l
  %i.bl = phi double [ %i.bd, %bb.l ], [ 0.000000e+00, %.thread63 ]
  %i.bm = fptosi double %i.bl to i32              ; 3 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %bb.m

bb.m:                                             ; preds = %.thread65
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.t
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !162
  %i.bq = fptosi double %i.bp to i32
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [4 x i8], ptr %i.q, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !161 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !161
  %i.bw = sub nsw i32 %i.bv, %i.bt
  %i.bx = lshr i32 %i.bm, 5                       ; 2 uses
  %.not.i.i.i25 = icmp slt i32 %i.bx, %i.bw
  br i1 %.not.i.i.i25, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i: ; preds = %bb.m
  %i.by = sext i32 %i.bt to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.by
  %i.ca = and i32 %i.bm, 31
  %i.cb = zext nneg i32 %i.bx to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !161
  %i.ce = lshr i32 %i.cd, %i.ca
  %i.cf = trunc i32 %i.ce to i1
  br i1 %i.cf, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i: ; preds = %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %bb.m
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

bb.n:                                             ; preds = %.thread63, %.loopexit
  %i.cg = phi i8 [ %i.bi, %.thread63 ], [ %i.bf, %.loopexit ] ; 2 uses
  %i.ch = phi double [ 0.000000e+00, %.thread63 ], [ %i.bd, %.loopexit ] ; 2 uses
  %i.ci = lshr i8 %i.cg, 2
  %i.cj = and i8 %i.ci, 3                         ; 2 uses
  %i.ck = fcmp uno double %i.ch, 0.000000e+00
  %i.cl = icmp ne i8 %i.cj, 2
  %or.cond.i.i = and i1 %i.ck, %i.cl
  %.017.i.i = select i1 %or.cond.i.i, double 0.000000e+00, double %i.ch ; 3 uses
  switch i8 %i.cj, label %bb.r [
    i8 1, label %bb.o
    i8 2, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.cm = tail call double @llvm.fabs.f64(double %.017.i.i)
  %i.cn = fcmp ugt double %i.cm, f0x38AA95A5C0000000
  br i1 %i.cn, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.co = fcmp uno double %.017.i.i, 0.000000e+00
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cp = and i8 %i.cg, 2
  %.not.i.i26 = icmp eq i8 %i.cp, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.t
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !162
  %i.cs = fcmp ugt double %.017.i.i, %i.cr
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i:  ; preds = %bb.r, %bb.q
  %.sink20.i.i = phi i1 [ %i.cs, %bb.r ], [ %.not.i.i26, %bb.q ]
  %.19.i.i = select i1 %.sink20.i.i, i64 40, i64 16
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

_ZNK8LightGBM4Tree8DecisionEdi.exit:              ; preds = %bb.l, %.thread65, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i
  %.sink.i = phi i64 [ 40, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i ], [ 40, %.thread65 ], [ 40, %bb.l ], [ %.19.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i ], [ 16, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !159
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.t
  %.0.i = load i32, ptr %i.cv, align 4, !tbaa !161 ; 3 uses
  %i.cw = icmp sgt i32 %.0.i, -1
  br i1 %i.cw, label %bb.b, label %.loopexit79, !llvm.loop !197

.preheader86:                                     ; preds = %bb.a, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit
  %.1103 = phi i32 [ %.0.i54, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit ], [ 0, %bb.a ]
  %i.cx = zext nneg i32 %.1103 to i64             ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4            ; 8 uses
  br i1 %.not.not.i.i.i, label %.preheader174, label %bb.t

.preheader174:                                    ; preds = %.preheader86, %bb.s
  %.sroa.06.0.in.i.i.i37 = phi ptr [ %.sroa.06.0.i.i.i38, %bb.s ], [ %i.k, %.preheader86 ]
  %.sroa.06.0.i.i.i38 = load ptr, ptr %.sroa.06.0.in.i.i.i37, align 8, !tbaa !179 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %.sroa.06.0.i.i.i38, null
  br i1 %.not.i.i.i39, label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5countERS5_.exit40.thread, label %bb.s

bb.s:                                             ; preds = %.preheader174
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i38, i64 8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !161
  %i.dc = icmp eq i32 %i.cz, %i.db
  br i1 %i.dc, label %.loopexit83, label %.preheader174, !llvm.loop !3

bb.t:                                             ; preds = %.preheader86
  %i.dd = sext i32 %i.cz to i64
  %i.de = urem i64 %i.dd, %i.i                    ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i28, label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5countERS5_.exit40.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !179 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !161
  %i.dk = icmp eq i32 %i.cz, %i.dj
  br i1 %i.dk, label %.thread70, label %.lr.ph.i.i.i.i.i29

bb.v:                                             ; preds = %bb.w
  %i.dl = icmp eq i32 %i.cz, %i.do
  br i1 %i.dl, label %.loopexit83, label %.lr.ph.i.i.i.i.i29, !llvm.loop !4

.lr.ph.i.i.i.i.i29:                               ; preds = %bb.u, %bb.v
  %.020.i.i.i.i.i30 = phi ptr [ %i.dm, %bb.v ], [ %i.dh, %bb.u ]
  %i.dm = load ptr, ptr %.020.i.i.i.i.i30, align 8, !tbaa !179 ; 3 uses
  %.not18.i.i.i.i.i31 = icmp eq ptr %i.dm, null
  br i1 %.not18.i.i.i.i.i31, label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5countERS5_.exit40.thread, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !161 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = urem i64 %i.dp, %i.i
  %.not19.i.i.i.i.i32 = icmp eq i64 %i.dq, %i.de
  br i1 %.not19.i.i.i.i.i32, label %bb.v, label %..loopexit_crit_edge21.i.i.i.i.i33, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i.i33:               ; preds = %bb.w
  br label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5countERS5_.exit40.thread, !llvm.loop !4

.loopexit83:                                      ; preds = %bb.v, %bb.s
  br i1 %.not.not.i.i.i, label %.preheader171, label %.loopexit83..thread70_crit_edge

.loopexit83..thread70_crit_edge:                  ; preds = %.loopexit83
  %.pre126 = sext i32 %i.cz to i64
  %.pre128 = urem i64 %.pre126, %i.i
  br label %.thread70

.preheader171:                                    ; preds = %.loopexit83, %bb.x
  %.sroa.06.0.in.i.i.i50 = phi ptr [ %.sroa.06.0.i.i.i51, %bb.x ], [ %i.k, %.loopexit83 ]
  %.sroa.06.0.i.i.i51 = load ptr, ptr %.sroa.06.0.in.i.i.i50, align 8, !tbaa !179 ; 4 uses
  %.not.i.i.i52 = icmp eq ptr %.sroa.06.0.i.i.i51, null
  br i1 %.not.i.i.i52, label %.loopexit.i.i48, label %bb.x

bb.x:                                             ; preds = %.preheader171
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i51, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !161
  %i.dt = icmp eq i32 %i.cz, %i.ds
  br i1 %i.dt, label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE2atERS5_.exit53, label %.preheader171, !llvm.loop !3

.thread70:                                        ; preds = %.loopexit83..thread70_crit_edge, %bb.u
  %.pre-phi129 = phi i64 [ %.pre128, %.loopexit83..thread70_crit_edge ], [ %i.de, %bb.u ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.pre-phi129
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i42 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i42, label %.loopexit.i.i48, label %bb.y

bb.y:                                             ; preds = %.thread70
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !179 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !161
  %i.dz = icmp eq i32 %i.cz, %i.dy
  br i1 %i.dz, label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE2atERS5_.exit53, label %.lr.ph.i.i.i.i.i43

bb.z:                                             ; preds = %bb.aa
  %i.ea = icmp eq i32 %i.cz, %i.ed
  br i1 %i.ea, label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE2atERS5_.exit53, label %.lr.ph.i.i.i.i.i43, !llvm.loop !4

.lr.ph.i.i.i.i.i43:                               ; preds = %bb.y, %bb.z
  %.020.i.i.i.i.i44 = phi ptr [ %i.eb, %bb.z ], [ %i.dw, %bb.y ]
  %i.eb = load ptr, ptr %.020.i.i.i.i.i44, align 8, !tbaa !179 ; 4 uses
  %.not18.i.i.i.i.i45 = icmp eq ptr %i.eb, null
  br i1 %.not18.i.i.i.i.i45, label %.loopexit.i.i48, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i43
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !161 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = urem i64 %i.ee, %i.i
  %.not19.i.i.i.i.i46 = icmp eq i64 %i.ef, %.pre-phi129
  br i1 %.not19.i.i.i.i.i46, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i.i47, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i.i47:               ; preds = %bb.aa
  br label %.loopexit.i.i48, !llvm.loop !4

.loopexit.i.i48:                                  ; preds = %.thread70, %.lr.ph.i.i.i.i.i43, %.preheader171, %..loopexit_crit_edge21.i.i.i.i.i47
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str) #7
  unreachable

_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE2atERS5_.exit53: ; preds = %bb.z, %bb.x, %bb.y
  %.sroa.06.1.i.i.i49 = phi ptr [ %.sroa.06.0.i.i.i51, %bb.x ], [ %i.dw, %bb.y ], [ %i.eb, %bb.z ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i49, i64 16
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !162
  br label %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5countERS5_.exit40.thread

_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5countERS5_.exit40.thread: ; preds = %.lr.ph.i.i.i.i.i29, %.preheader174, %bb.t, %..loopexit_crit_edge21.i.i.i.i.i33, %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE2atERS5_.exit53
  %i.ei = phi double [ %i.eh, %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE2atERS5_.exit53 ], [ 0.000000e+00, %..loopexit_crit_edge21.i.i.i.i.i33 ], [ 0.000000e+00, %.preheader174 ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %.lr.ph.i.i.i.i.i29 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cx
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !163 ; 2 uses
  %i.el = lshr i8 %i.ek, 2
  %i.em = and i8 %i.el, 3                         ; 2 uses
  %2 = fcmp uno double %i.ei, 0.000000e+00
  %i.en = icmp ne i8 %i.em, 2
  %or.cond.i = and i1 %2, %i.en
  %.017.i = select i1 %or.cond.i, double 0.000000e+00, double %i.ei ; 3 uses
  switch i8 %i.em, label %bb.ae [
    i8 1, label %bb.ab
    i8 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5countERS5_.exit40.thread
  %i.eo = tail call double @llvm.fabs.f64(double %.017.i)
  %i.ep = fcmp ugt double %i.eo, f0x38AA95A5C0000000
  br i1 %i.ep, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5countERS5_.exit40.thread
  %i.eq = fcmp uno double %.017.i, 0.000000e+00
  br i1 %i.eq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.er = and i8 %i.ek, 2
  %.not.i55 = icmp eq i8 %i.er, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %_ZNKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEE5countERS5_.exit40.thread
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cx
  %i.et = load double, ptr %i.es, align 8, !tbaa !162
  %i.eu = fcmp ugt double %.017.i, %i.et
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit:    ; preds = %bb.ad, %bb.ae
  %.sink20.i = phi i1 [ %i.eu, %bb.ae ], [ %.not.i55, %bb.ad ]
  %.19.i = select i1 %.sink20.i, i64 40, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %.19.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !159
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.cx
  %.0.i54 = load i32, ptr %i.ex, align 4, !tbaa !161 ; 3 uses
  %i.ey = icmp sgt i32 %.0.i54, -1
  br i1 %i.ey, label %.preheader86, label %.loopexit79, !llvm.loop !198

.loopexit79:                                      ; preds = %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit, %_ZNK8LightGBM4Tree8DecisionEdi.exit
  %.2 = phi i32 [ %.0.i, %_ZNK8LightGBM4Tree8DecisionEdi.exit ], [ %.0.i54, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit ]
  %i.ez = xor i32 %.2, -1
  ret i32 %i.ez
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK8LightGBM4GBDT7PredictEPKdPdPKNS_27PredictionEarlyStopInstanceE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = load i8, ptr %i.d, align 8, !tbaa !183, !range !155, !noundef !156
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load i32, ptr %i.g, align 8, !tbaa !125  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.k = load i32, ptr %i.j, align 4, !tbaa !127
  %i.l = sitofp i32 %i.k to double                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 3 uses
  %min.iters.check = icmp eq i32 %i.h, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.m, align 8, !tbaa !162
  %i.n = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.n, ptr %i.m, align 8, !tbaa !162
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !162
  %i.r = fdiv double %i.q, %i.l
  store double %i.r, ptr %i.p, align 8, !tbaa !162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !200

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.preheader, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !186  ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %2, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8LightGBM4GBDT12PredictByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEPdPKNS_27PredictionEarlyStopInstanceE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = load i8, ptr %i.d, align 8, !tbaa !183, !range !155, !noundef !156
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load i32, ptr %i.g, align 8, !tbaa !125  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.k = load i32, ptr %i.j, align 4, !tbaa !127
  %i.l = sitofp i32 %i.k to double                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 3 uses
  %min.iters.check = icmp eq i32 %i.h, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.m, align 8, !tbaa !162
  %i.n = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.n, ptr %i.m, align 8, !tbaa !162
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !162
  %i.r = fdiv double %i.q, %i.l
  store double %i.r, ptr %i.p, align 8, !tbaa !162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !202

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.preheader, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !186  ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %2, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}
end_hunk_0
