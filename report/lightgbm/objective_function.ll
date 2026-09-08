Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4079
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNK8LightGBM10RankXENDCG23GetGradientsForOneQueryEiiPKfPKdPfS5_:bb.a
.lr.ph35.i:                                       ; preds = %middle.block, %.lr.ph35.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.lr.ph35.i ], [ %n.vec, %middle.block ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv42.i ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !192
  %i.am = fdiv double %i.al, %i.ag
  store double %i.am, ptr %i.ak, align 8, !tbaa !192
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %i.c
  br i1 %exitcond46.not.i, label %_ZN8LightGBM6CommonL7SoftmaxEPKdPdi.exit, label %.lr.ph35.i, !llvm.loop !694

_ZN8LightGBM6CommonL7SoftmaxEPKdPdi.exit:         ; preds = %.lr.ph35.i, %middle.block
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #34
          to label %.lr.ph unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit82 ; 8 uses

.lr.ph:                                           ; preds = %_ZN8LightGBM6CommonL7SoftmaxEPKdPdi.exit
  store double 0.000000e+00, ptr %i.an, align 8, !tbaa !192
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.d, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !192
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aq = sext i32 %1 to i64
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !314
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %.promoted = load i32, ptr %i.as, align 4, !tbaa !317
  br label %bb.b

.lr.ph122.preheader:                              ; preds = %bb.b
  store i32 %i.ba, ptr %i.as, align 4, !tbaa !317
  %i.at = fcmp ogt double %i.bk, f0x3CD203AFA0000000
  %.sroa.speculated = select i1 %i.at, double %i.bk, double f0x3CD203AFA0000000
  %i.au = fdiv double 1.000000e+00, %.sroa.speculated
  %wide.trip.count139 = zext nneg i32 %2 to i64
  br label %.lr.ph122

_ZNSt6vectorIdSaIdEED2Ev.exit82:                  ; preds = %_ZN8LightGBM6CommonL7SoftmaxEPKdPdi.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #35
  resume { ptr, i32 } %i.av

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.aw = phi i32 [ %.promoted, %.lr.ph ], [ %i.ba, %bb.b ]
  %.0111116 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bk, %bb.b ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !170
  %i.az = mul i32 %i.aw, 214013
  %i.ba = add i32 %i.az, 2531011                  ; 3 uses
  %i.bb = lshr i32 %i.ba, 16
  %i.bc = and i32 %i.bb, 32767
  %i.bd = uitofp nneg i32 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x38000000
  %i.bf = fpext float %i.be to double
  %i.bg = fptosi float %i.ay to i32
  %i.bh = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIiEEdT_i(i32 noundef 2, i32 noundef %i.bg)
  %i.bi = fsub double %i.bh, %i.bf                ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store double %i.bi, ptr %i.bj, align 8, !tbaa !192
  %i.bk = fadd double %.0111116, %i.bi            ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.lr.ph122.preheader, label %bb.b, !llvm.loop !695

.lr.ph126.preheader:                              ; preds = %.lr.ph122
  %wide.trip.count145 = zext nneg i32 %2 to i64
  br label %.lr.ph126

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %indvars.iv136 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next137, %.lr.ph122 ] ; 4 uses
  %.066119 = phi double [ 0.000000e+00, %.lr.ph122.preheader ], [ %i.bv, %.lr.ph122 ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv136 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !192
  %i.bn = fneg double %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv136
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !192 ; 2 uses
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.au, double %i.bp) ; 2 uses
  %i.br = fptrunc double %i.bq to float
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv136
  store float %i.br, ptr %i.bs, align 4, !tbaa !170
  %i.bt = fsub double 1.000000e+00, %i.bp
  %i.bu = fdiv double %i.bq, %i.bt                ; 2 uses
  store double %i.bu, ptr %i.bl, align 8, !tbaa !192
  %i.bv = fadd double %.066119, %i.bu             ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.lr.ph126.preheader, label %.lr.ph122, !llvm.loop !696

.lr.ph129.preheader:                              ; preds = %.lr.ph126
  %wide.trip.count151 = zext nneg i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph129.preheader177, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph129.preheader
  %i.bw = shl nuw nsw i64 %i.c, 2                 ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.bw
  %scevgep163 = getelementptr i8, ptr %6, i64 %i.bw
  %bound0 = icmp ult ptr %5, %scevgep163
  %bound1 = icmp ult ptr %6, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph129.preheader177, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck
  %n.vec166 = and i64 %i.c, 2147483646            ; 3 uses
  %broadcast.splatinsert167 = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat168 = shufflevector <2 x double> %broadcast.splatinsert167, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph165
  %index170 = phi i64 [ 0, %vector.ph165 ], [ %index.next174, %vector.body169 ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index170
  %wide.load171 = load <2 x double>, ptr %i.bx, align 8, !tbaa !192 ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index170
  %wide.load172 = load <2 x double>, ptr %i.by, align 8, !tbaa !192
  %i.bz = fsub <2 x double> %broadcast.splat168, %wide.load172
  %i.ca = fmul <2 x double> %wide.load171, %i.bz
  %i.cb = fptrunc <2 x double> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index170 ; 2 uses
  %wide.load173 = load <2 x float>, ptr %i.cc, align 4, !tbaa !170, !alias.scope !703, !noalias !704
  %i.cd = fadd <2 x float> %wide.load173, %i.cb
  store <2 x float> %i.cd, ptr %i.cc, align 4, !tbaa !170, !alias.scope !703, !noalias !704
  %i.ce = fsub <2 x double> splat (double 1.000000e+00), %wide.load171
  %i.cf = fmul <2 x double> %wide.load171, %i.ce
  %i.cg = fptrunc <2 x double> %i.cf to <2 x float>
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index170
  store <2 x float> %i.cg, ptr %i.ch, align 4, !tbaa !170, !alias.scope !704
  %index.next174 = add nuw i64 %index170, 2       ; 2 uses
  %i.ci = icmp eq i64 %index.next174, %n.vec166
  br i1 %i.ci, label %middle.block175, label %vector.body169, !llvm.loop !700

middle.block175:                                  ; preds = %vector.body169
  %cmp.n176 = icmp eq i64 %n.vec166, %i.c
  br i1 %cmp.n176, label %_ZNSt6vectorIdSaIdEED2Ev.exit80, label %.lr.ph129.preheader177

.lr.ph129.preheader177:                           ; preds = %vector.memcheck, %.lr.ph129.preheader, %middle.block175
  %indvars.iv147.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph129.preheader ], [ %n.vec166, %middle.block175 ]
  br label %.lr.ph129

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %.lr.ph126
  %indvars.iv141 = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next142, %.lr.ph126 ] ; 4 uses
  %.063124 = phi double [ 0.000000e+00, %.lr.ph126.preheader ], [ %i.cv, %.lr.ph126 ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv141
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !192 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv141 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !192
  %i.cn = fsub double %i.bv, %i.cm
  %i.co = fmul double %i.ck, %i.cn                ; 2 uses
  %i.cp = fptrunc double %i.co to float
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv141 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !170
  %i.cs = fadd float %i.cr, %i.cp
  store float %i.cs, ptr %i.cq, align 4, !tbaa !170
  %i.ct = fsub double 1.000000e+00, %i.ck
  %i.cu = fdiv double %i.co, %i.ct                ; 2 uses
  store double %i.cu, ptr %i.cl, align 8, !tbaa !192
  %i.cv = fadd double %.063124, %i.cu             ; 3 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count145
  br i1 %exitcond146.not, label %.lr.ph129.preheader, label %.lr.ph126, !llvm.loop !701

_ZNSt6vectorIdSaIdEED2Ev.exit80:                  ; preds = %.lr.ph129, %middle.block175
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.d) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #35
  br label %.loopexit

.lr.ph129:                                        ; preds = %.lr.ph129.preheader177, %.lr.ph129
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %.lr.ph129 ], [ %indvars.iv147.ph, %.lr.ph129.preheader177 ] ; 5 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv147
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !192 ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv147
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !192
  %i.da = fsub double %i.cv, %i.cz
  %i.db = fmul double %i.cx, %i.da
  %i.dc = fptrunc double %i.db to float
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv147 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !170
  %i.df = fadd float %i.de, %i.dc
  store float %i.df, ptr %i.dd, align 4, !tbaa !170
  %i.dg = fsub double 1.000000e+00, %i.cx
  %i.dh = fmul double %i.cx, %i.dg
  %i.di = fptrunc double %i.dh to float
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv147
  store float %i.di, ptr %i.dj, align 4, !tbaa !170
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count151
  br i1 %exitcond152.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit80, label %.lr.ph129, !llvm.loop !702

.loopexit:                                        ; preds = %.preheader, %.lr.ph130.split, %_ZNSt6vectorIdSaIdEED2Ev.exit80
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef double @_ZN8LightGBM6CommonL3PowIiEEdT_i(i32 noundef range(i32 2, -2147483648) %0, i32 noundef %1) unnamed_addr #26 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %common.ret40, label %.lr.ph35

common.ret40:                                     ; preds = %.lr.ph.preheader, %bb.e, %tailrecurse._crit_edge
  %common.ret36.op = phi double [ %i.p, %bb.e ], [ %i.e, %tailrecurse._crit_edge ], [ 1.000000e+00, %.lr.ph.preheader ]
  ret double %common.ret36.op

tailrecurse._crit_edge:                           ; preds = %bb.a
  %i.c = sub nsw i32 0, %1
  %i.d = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIiEEdT_i(i32 noundef %0, i32 noundef %i.c)
  %i.e = fdiv double 1.000000e+00, %i.d
  br label %common.ret40

.lr.ph35:                                         ; preds = %.lr.ph.preheader, %tailrecurse.backedge
  %.tr2234 = phi i32 [ %.tr.be, %tailrecurse.backedge ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.tr172333 = phi i32 [ %.tr17.be, %tailrecurse.backedge ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %i.f = and i32 %.tr172333, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph35
  %i.h = lshr exact i32 %.tr172333, 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.d
  %.tr22.pn = phi i32 [ %.tr2234, %bb.b ], [ %i.l, %bb.d ]
  %.tr17.be = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.d ]
  %.tr.be = mul nuw nsw i32 %.tr22.pn, %.tr2234
  br label %.lr.ph35

bb.c:                                             ; preds = %.lr.ph35
  %i.i = urem i32 %.tr172333, 3
  %i.j = udiv exact i32 %.tr172333, 3
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = mul nuw nsw i32 %.tr2234, %.tr2234
  br label %tailrecurse.backedge

bb.e:                                             ; preds = %bb.c
  %i.m = uitofp nneg i32 %.tr2234 to double
  %i.n = add nsw i32 %.tr172333, -1
  %i.o = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIiEEdT_i(i32 noundef %.tr2234, i32 noundef %i.n)
  %i.p = fmul double %i.o, %i.m
  br label %common.ret40
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM17MulticlassSoftmaxD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8LightGBM17MulticlassSoftmaxE, i64 16), ptr %0, align 8, !tbaa !99
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !304  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !305
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM17MulticlassSoftmaxD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8LightGBM17MulticlassSoftmaxE, i64 16), ptr %0, align 8, !tbaa !99
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35, !inline_history !705
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !304  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8LightGBM17MulticlassSoftmaxD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !305
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35, !inline_history !705
  br label %_ZN8LightGBM17MulticlassSoftmaxD2Ev.exit

_ZN8LightGBM17MulticlassSoftmaxD2Ev.exit:         ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MulticlassSoftmax4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 %2, ptr %i.h, align 8, !tbaa !318
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !175
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !710
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !221  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !221
  %i.p = icmp eq ptr %i.m, %i.o
  %spec.select.i = select i1 %i.p, ptr null, ptr %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %spec.select.i, ptr %i.q, align 8, !tbaa !319
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.s = sext i32 %2 to i64                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !306  ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !304  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.s
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = sub nuw nsw i64 %i.s, %i.z
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ab)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = icmp ugt i64 %i.z, %i.s
  br i1 %i.ac, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !306
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !164
  %i.ah = sext i32 %i.ag to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !192
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !194 ; 3 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !193 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.ah
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.aq = sub nuw nsw i64 %i.ah, %i.ao
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr %i.aj, i64 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ar = icmp ugt i64 %i.ao, %i.ah
  br i1 %i.ar, label %bb.g, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.aj, %i.as
  br i1 %.not.i.i29, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !194
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit:            ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %i.at = load i32, ptr %i.h, align 8, !tbaa !318 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit.._crit_edge_crit_edge

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit.._crit_edge_crit_edge: ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit
  %.pre49 = load ptr, ptr %i.q, align 8, !tbaa !319
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !304
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit.._crit_edge_crit_edge
  %i.av = phi ptr [ %.pre49, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit.._crit_edge_crit_edge ], [ %i.bh, %bb.l ]
  %.026.lcssa = phi double [ 0.000000e+00, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit.._crit_edge_crit_edge ], [ %.1, %bb.l ]
  %.lcssa = phi i32 [ %i.at, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit.._crit_edge_crit_edge ], [ %i.ce, %bb.l ]
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = sitofp i32 %.lcssa to double
  %.2 = select i1 %i.aw, double %i.ax, double %.026.lcssa ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM6CommonL4AtofEPKcPd:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.q
  %i.fe = load i64, ptr %i.ec, align 8, !tbaa !96
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.fg = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ed
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.fi = load i64, ptr %i.ed, align 8, !tbaa !96
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.y

._crit_edge.i.i219:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.fk, ptr %7, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.fk, ptr noundef nonnull align 1 dereferenceable(3) @.str.93, i64 3, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %i.fl, align 8, !tbaa !95
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 19
  store i8 0, ptr %i.fm, align 1, !tbaa !96
  %i.fn = load i64, ptr %i.ci, align 8, !tbaa !95
  %i.fo = icmp eq i64 %i.fn, 3
  br i1 %i.fo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224.thread256

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224: ; preds = %._crit_edge.i.i219
  %i.fp = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 1
  %i.fr = load i16, ptr %i.fk, align 1
  %i.fs = xor i16 %i.fq, %i.fr
  %i.ft = getelementptr i8, ptr %i.fp, i64 2
  %i.fu = getelementptr i8, ptr %i.fk, i64 2
  %i.fv = load i8, ptr %i.ft, align 1
  %i.fw = load i8, ptr %i.fu, align 1
  %i.fx = zext i8 %i.fv to i16
  %i.fy = zext i8 %i.fw to i16
  %i.fz = xor i16 %i.fx, %i.fy
  %i.ga = or i16 %i.fs, %i.fz
  %i.gb = icmp ne i16 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i231.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224.thread256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i231.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.u

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224.thread256: ; preds = %._crit_edge.i.i219, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.94, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224.thread256
  %i.ge = load i64, ptr %i.ci, align 8, !tbaa !95 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !95 ; 2 uses
  %i.gh = icmp eq i64 %i.ge, %i.gg
  br i1 %i.gh, label %bb.s, label %..critedge192_crit_edge

..critedge192_crit_edge:                          ; preds = %bb.r
  %.pre328 = load ptr, ptr %8, align 8, !tbaa !97
  br label %.critedge192

bb.s:                                             ; preds = %bb.r
  %i.gi = icmp eq i64 %i.ge, 0
  %.pre329 = load ptr, ptr %8, align 8, !tbaa !97 ; 3 uses
  br i1 %i.gi, label %.critedge192, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gj = load ptr, ptr %2, align 8, !tbaa !97
  %bcmp.i225 = call i32 @bcmp(ptr %i.gj, ptr %.pre329, i64 %i.ge)
  %i.gk = icmp eq i32 %bcmp.i225, 0
  br label %.critedge192

.critedge192:                                     ; preds = %..critedge192_crit_edge, %bb.s, %bb.t
  %i.gl = phi ptr [ %.pre329, %bb.s ], [ %.pre329, %bb.t ], [ %.pre328, %..critedge192_crit_edge ] ; 2 uses
  %.ph = phi i1 [ true, %bb.s ], [ %i.gk, %bb.t ], [ false, %..critedge192_crit_edge ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i228: ; preds = %.critedge192
  %i.go = icmp ult i64 %i.gg, 16
  call void @llvm.assume(i1 %i.go)
  br label %.critedge194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %.critedge192
  %i.gp = load i64, ptr %i.gm, align 8, !tbaa !96
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gq) #35
  br label %.critedge194

.critedge194:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %.pre330 = load ptr, ptr %7, align 8, !tbaa !97 ; 2 uses
  %i.gr = icmp eq ptr %.pre330, %i.fk
  br i1 %i.gr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i231, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i231: ; preds = %.critedge194
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br i1 %.ph, label %bb.u, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %.critedge194
  %i.gs = load i64, ptr %i.fk, align 8, !tbaa !96
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %.pre330, i64 noundef %i.gt) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br i1 %.ph, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i231.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.gu = fmul nnan double %.0129, 1.000000e+308
  br label %.sink.split

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit224.thread256
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.gw = load ptr, ptr %7, align 8, !tbaa !97    ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.fk
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.v
  %i.gy = load i64, ptr %i.fk, align 8, !tbaa !96
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.y

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.ha = load ptr, ptr %2, align 8, !tbaa !97
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.95, ptr noundef %i.ha)
          to label %bb.x unwind label %bb.p

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211.thread, %bb.u
  %.sink = phi double [ %i.gu, %bb.u ], [ +qnan, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211.thread ], [ +qnan, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i211 ], [ +qnan, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ]
  store double %.sink, ptr %1, align 8, !tbaa !192
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.w
  %i.hb = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.cb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.x
  %i.hd = load i64, ptr %i.cb, align 8, !tbaa !96
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %bb.p
  %.pn173 = phi { ptr, i32 } [ %i.fa, %bb.p ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ]
  %i.hf = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.cb
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.y
  %i.hh = load i64, ptr %i.cb, align 8, !tbaa !96
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn173

bb.z:                                             ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %.critedge6
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef double @_ZN8LightGBM6CommonL3PowIdEEdT_i(double noundef %0, i32 noundef %1) unnamed_addr #26 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %common.ret40, label %.lr.ph35

common.ret40:                                     ; preds = %.lr.ph.preheader, %bb.e, %tailrecurse._crit_edge
  %common.ret36.op = phi double [ %i.o, %bb.e ], [ %i.e, %tailrecurse._crit_edge ], [ 1.000000e+00, %.lr.ph.preheader ]
  ret double %common.ret36.op

tailrecurse._crit_edge:                           ; preds = %bb.a
  %i.c = sub nsw i32 0, %1
  %i.d = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIdEEdT_i(double noundef %0, i32 noundef %i.c)
  %i.e = fdiv double 1.000000e+00, %i.d
  br label %common.ret40

.lr.ph35:                                         ; preds = %.lr.ph.preheader, %tailrecurse.backedge
  %.tr2234 = phi double [ %.tr.be, %tailrecurse.backedge ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.tr172333 = phi i32 [ %.tr17.be, %tailrecurse.backedge ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %i.f = and i32 %.tr172333, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph35
  %i.h = lshr exact i32 %.tr172333, 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.d
  %.tr22.pn = phi double [ %.tr2234, %bb.b ], [ %i.l, %bb.d ]
  %.tr17.be = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.d ]
  %.tr.be = fmul double %.tr2234, %.tr22.pn
  br label %.lr.ph35

bb.c:                                             ; preds = %.lr.ph35
  %i.i = urem i32 %.tr172333, 3
  %i.j = udiv exact i32 %.tr172333, 3
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = fmul double %.tr2234, %.tr2234
  br label %tailrecurse.backedge

bb.e:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.tr172333, -1
  %i.n = tail call fastcc noundef double @_ZN8LightGBM6CommonL3PowIdEEdT_i(double noundef %.tr2234, i32 noundef %i.m)
  %i.o = fmul double %.tr2234, %i.n
  br label %common.ret40
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #29 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { convergent nounwind }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold noreturn }
attributes #28 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nofree nounwind }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { noreturn }
attributes #38 = { cold nounwind }
attributes #39 = { nounwind allocsize(0) }
attributes #40 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!80, !81, !82}
!llvm.ident = !{!83}
!llvm.errno.tbaa = !{!88}

!0 = distinct !{null}
!1 = distinct !{!1, !211}
!2 = distinct !{!2, !211}
!3 = distinct !{!3, !211}
!4 = distinct !{!4, !211}
!5 = distinct !{!5, !211}
!6 = distinct !{!6, !211}
!7 = distinct !{!7, !211}
!8 = distinct !{!8, !211}
!9 = distinct !{!9, !211}
!10 = distinct !{!10, !211}
!11 = distinct !{!11, !211}
!12 = distinct !{!12, !211}
!13 = distinct !{null, null, null}
!14 = distinct !{null, null, null, null}
!15 = distinct !{!15, !211}
!16 = distinct !{null, null, null, null}
!17 = distinct !{!17, !211}
!18 = distinct !{!18, !211}
!19 = distinct !{!19, !211}
!20 = distinct !{null, null, null}
!21 = distinct !{null, null, null, null}
!22 = distinct !{!22, !211}
!23 = distinct !{null, null, null, null}
!24 = distinct !{!24, !211}
!25 = distinct !{!25, !211}
!26 = distinct !{!26, !211}
!27 = distinct !{!27, !211}
!28 = distinct !{!28, !211}
!29 = distinct !{!29, !211}
!30 = distinct !{!30, !211}
!31 = distinct !{null, null, null}
!32 = distinct !{null, null, null, null}
!33 = distinct !{!33, !211}
!34 = distinct !{null, null, null, null}
!35 = distinct !{!35, !211}
!36 = distinct !{!36, !211}
!37 = distinct !{!37, !211}
!38 = distinct !{null, null, null}
!39 = distinct !{null, null, null, null}
!40 = distinct !{!40, !211}
!41 = distinct !{null, null, null, null}
!42 = distinct !{!42, !211}
!43 = distinct !{!43, !211}
!44 = distinct !{!44, !211}
!45 = distinct !{!45, !211}
!46 = distinct !{!46, !211}
!47 = distinct !{!47, !211}
!48 = distinct !{null}
!49 = distinct !{!49, !211}
!50 = distinct !{!50, !211}
!51 = distinct !{!51, !211}
!52 = distinct !{!52, !211}
!53 = distinct !{!53, !211}
!54 = distinct !{!54, !211}
!55 = distinct !{!55, !211}
!56 = distinct !{!56, !211}
!57 = distinct !{!57, !211}
!58 = distinct !{!58, !211}
!59 = distinct !{!59, !211}
!60 = distinct !{!60, !211}
!61 = distinct !{null, null, null}
!62 = distinct !{null, null, null, null}
!63 = distinct !{!63, !211}
!64 = distinct !{null, null, null, null}
!65 = distinct !{!65, !211}
!66 = distinct !{!66, !211}
!67 = distinct !{!67, !211}
end_hunk_1
