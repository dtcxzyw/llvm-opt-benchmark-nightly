Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_operations?download=true
inline.NumInlined: 2347
inline.NumDeleted: 595
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 249
loop-unroll.NumUnrolled: 279
begin_hunk_0_@_ZNK2cv15ReduceR_InvokerIdddNS_8OpAddSqrIdddEENS_5OpSqrIdddEEEclERKNS_5RangeE:bb.a
  store double %i.cv, ptr %i.cw, align 8, !tbaa !76
  %indvars.iv.next53.prol = add nsw i64 %indvars.iv52.prol, 1 ; 2 uses
  %prol.iter107.next = add i64 %prol.iter107, 1   ; 2 uses
  %prol.iter107.cmp.not = icmp eq i64 %prol.iter107.next, %xtraiter105
  br i1 %prol.iter107.cmp.not, label %.lr.ph43.prol.loopexit, label %.lr.ph43.prol, !llvm.loop !863

.lr.ph43.prol.loopexit:                           ; preds = %.lr.ph43.prol, %.lr.ph43.preheader100
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %.lr.ph43.preheader100 ], [ %indvars.iv.next53.prol, %.lr.ph43.prol ]
  %i.cx = sub nsw i64 %indvars.iv52.ph, %wide.trip.count55
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %._crit_edge44, label %.lr.ph43

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %..loopexit_crit_edge
  %i.cz = phi i32 [ %i.ci, %..loopexit_crit_edge ], [ %i.bs, %.lr.ph38.preheader ]
  %.040 = phi ptr [ %i.da, %..loopexit_crit_edge ], [ %i.d, %.lr.ph38.preheader ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %i.g ; 5 uses
  %brmerge = select i1 %min.iters.check71, i1 true, i1 %i.cf
  br i1 %brmerge, label %scalar.ph70.preheader, label %vector.body74

vector.body74:                                    ; preds = %.lr.ph38, %vector.body74
  %index75 = phi i64 [ %index.next80, %vector.body74 ], [ 0, %.lr.ph38 ] ; 2 uses
  %i.db = add i64 %index75, %i.bt                 ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.dc, align 8, !tbaa !76, !alias.scope !873, !noalias !874
  %wide.load77 = load <2 x double>, ptr %i.dd, align 8, !tbaa !76, !alias.scope !873, !noalias !874
  %i.de = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load78 = load <2 x double>, ptr %i.de, align 8, !tbaa !76, !alias.scope !874 ; 2 uses
  %wide.load79 = load <2 x double>, ptr %i.df, align 8, !tbaa !76, !alias.scope !874 ; 2 uses
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load78, <2 x double> %wide.load78, <2 x double> %wide.load76)
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load79, <2 x double> %wide.load79, <2 x double> %wide.load77)
  store <2 x double> %i.dg, ptr %i.dc, align 8, !tbaa !76, !alias.scope !873, !noalias !874
  store <2 x double> %i.dh, ptr %i.dd, align 8, !tbaa !76, !alias.scope !873, !noalias !874
  %index.next80 = add nuw i64 %index75, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next80, %n.vec73
  br i1 %i.di, label %middle.block81, label %vector.body74, !llvm.loop !867

middle.block81:                                   ; preds = %vector.body74
  br i1 %cmp.n82, label %..loopexit_crit_edge, label %scalar.ph70.preheader

scalar.ph70.preheader:                            ; preds = %.lr.ph38, %middle.block81
  %indvars.iv46.ph = phi i64 [ %i.cg, %middle.block81 ], [ %i.bt, %.lr.ph38 ] ; 6 uses
  %i.dj = sub nsw i64 %wide.trip.count49, %indvars.iv46.ph
  %xtraiter102 = and i64 %i.dj, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %scalar.ph70.prol.loopexit, label %scalar.ph70.prol

scalar.ph70.prol:                                 ; preds = %scalar.ph70.preheader
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv46.ph ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !76
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.da, i64 %indvars.iv46.ph
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !76 ; 2 uses
  %i.do = tail call noundef double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %i.dl)
  store double %i.do, ptr %i.dk, align 8, !tbaa !76
  %indvars.iv.next47.prol = add nsw i64 %indvars.iv46.ph, 1
  br label %scalar.ph70.prol.loopexit

scalar.ph70.prol.loopexit:                        ; preds = %scalar.ph70.prol, %scalar.ph70.preheader
  %indvars.iv46.unr = phi i64 [ %indvars.iv46.ph, %scalar.ph70.preheader ], [ %indvars.iv.next47.prol, %scalar.ph70.prol ]
  %i.dp = icmp eq i64 %indvars.iv46.ph, %i.ch
  br i1 %i.dp, label %..loopexit_crit_edge, label %scalar.ph70

scalar.ph70:                                      ; preds = %scalar.ph70.prol.loopexit, %scalar.ph70
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.1, %scalar.ph70 ], [ %indvars.iv46.unr, %scalar.ph70.prol.loopexit ] ; 4 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv46 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !76
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.da, i64 %indvars.iv46
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !76 ; 2 uses
  %i.du = tail call noundef double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %i.dr)
  store double %i.du, ptr %i.dq, align 8, !tbaa !76
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next47 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !76
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.da, i64 %indvars.iv.next47
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !76 ; 2 uses
  %i.dz = tail call noundef double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.dw)
  store double %i.dz, ptr %i.dv, align 8, !tbaa !76
  %indvars.iv.next47.1 = add nsw i64 %indvars.iv46, 2 ; 2 uses
  %exitcond50.not.1 = icmp eq i64 %indvars.iv.next47.1, %wide.trip.count49
  br i1 %exitcond50.not.1, label %..loopexit_crit_edge, label %scalar.ph70, !llvm.loop !868

.lr.ph43:                                         ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.3, %.lr.ph43 ], [ %indvars.iv52.unr, %.lr.ph43.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv52
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !76
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv52
  store double %i.eb, ptr %i.ec, align 8, !tbaa !76
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next53
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !76
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next53
  store double %i.ee, ptr %i.ef, align 8, !tbaa !76
  %indvars.iv.next53.1 = add nsw i64 %indvars.iv52, 2 ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next53.1
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !76
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next53.1
  store double %i.eh, ptr %i.ei, align 8, !tbaa !76
  %indvars.iv.next53.2 = add nsw i64 %indvars.iv52, 3 ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next53.2
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !76
  %i.el = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next53.2
  store double %i.ek, ptr %i.el, align 8, !tbaa !76
  %indvars.iv.next53.3 = add nsw i64 %indvars.iv52, 4 ; 2 uses
  %exitcond56.not.3 = icmp eq i64 %indvars.iv.next53.3, %wide.trip.count55
  br i1 %exitcond56.not.3, label %._crit_edge44, label %.lr.ph43, !llvm.loop !869

._crit_edge44:                                    ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43, %middle.block95, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15ReduceC_InvokerIhiiNS_5OpAddIiiiEENS_5OpNopIiiiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15ReduceC_InvokerIhiiNS_5OpAddIiiiEENS_5OpNopIiiiEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::AutoBuffer", align 8    ; 10 uses
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !908, !nonnull !200, !align !201 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = lshr i32 %i.d, 5                         ; 6 uses
  %i.f = and i32 %i.e, 127                        ; 7 uses
  %i.g = add nuw nsw i32 %i.f, 1                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83   ; 4 uses
  %i.j = icmp slt i32 %i.i, 3
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.27, i32 noundef 109) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !43
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.s = icmp eq i32 %i.i, 2
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.i, 0
  %i.x = zext i1 %i.w to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.y = phi i32 [ %i.v, %bb.f ], [ %i.x, %bb.g ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 35 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !196
  %i.ad = load i32, ptr %1, align 4, !tbaa !85    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !86
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !68 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !909, !nonnull !200, !align !201 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !77 ; 5 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68 ; 9 uses
  %i.as = icmp eq i32 %i.z, %i.g
  br i1 %i.as, label %.preheader61.us.preheader, label %.lr.ph.split

.preheader61.us.preheader:                        ; preds = %.lr.ph
  %i.at = sext i32 %i.ad to i64                   ; 3 uses
  %i.au = mul i64 %i.ar, %i.at
  %i.av = and i32 %i.e, 127
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = mul i64 %i.ak, %i.at
  %i.az = and i32 %i.e, 127
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1
  %min.iters.check203 = icmp samesign ult i32 %i.f, 7
  %i.bc = getelementptr i8, ptr %i.ai, i64 %i.ay
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.aw
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %i.bf = getelementptr i8, ptr %i.ao, i64 %i.au
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ax
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %n.vec205 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec205, %i.aa
  %xtraiter231 = and i64 %i.bb, 3                 ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br label %.preheader61.us

.preheader61.us:                                  ; preds = %.preheader61.us.preheader, %.loopexit.us
  %indvar195 = phi i64 [ 0, %.preheader61.us.preheader ], [ %indvar.next196, %.loopexit.us ] ; 3 uses
  %indvars.iv110 = phi i64 [ %i.at, %.preheader61.us.preheader ], [ %indvars.iv.next111, %.loopexit.us ] ; 3 uses
  %i.bi = mul i64 %i.ak, %indvars.iv110
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bi ; 7 uses
  %i.bk = mul i64 %i.ar, %indvars.iv110
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bk ; 7 uses
  br i1 %min.iters.check203, label %scalar.ph202.preheader, label %vector.memcheck194

vector.memcheck194:                               ; preds = %.preheader61.us
  %i.bm = mul i64 %i.ak, %indvar195
  %scevgep198 = getelementptr i8, ptr %i.be, i64 %i.bm
  %i.bn = mul i64 %i.ar, %indvar195
  %scevgep197 = getelementptr i8, ptr %i.bh, i64 %i.bn
  %bound0199 = icmp ult ptr %i.bl, %scevgep198
  %bound1200 = icmp ult ptr %i.bj, %scevgep197
  %found.conflict201 = and i1 %bound0199, %bound1200
  br i1 %found.conflict201, label %scalar.ph202.preheader, label %vector.body206

vector.body206:                                   ; preds = %vector.memcheck194, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %vector.memcheck194 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index207 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %wide.load208.a = load <4 x i8>, ptr %i.bo, align 1, !tbaa !43, !alias.scope !910
  %wide.load209 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !43, !alias.scope !910
  %i.bq = zext <4 x i8> %wide.load208.a to <4 x i32>
  %i.br = zext <4 x i8> %wide.load209 to <4 x i32>
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index207 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x i32> %i.bq, ptr %i.bs, align 4, !tbaa !37, !alias.scope !911, !noalias !910
  store <4 x i32> %i.br, ptr %i.bt, align 4, !tbaa !37, !alias.scope !911, !noalias !910
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.bu, label %middle.block211, label %vector.body206, !llvm.loop !878

middle.block211:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %.loopexit.us, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %vector.memcheck194, %.preheader61.us, %middle.block211
  %indvars.iv105.ph = phi i64 [ 0, %vector.memcheck194 ], [ 0, %.preheader61.us ], [ %n.vec205, %middle.block211 ] ; 3 uses
  %i.bv = sub nsw i64 %i.ba, %indvars.iv105.ph
  br i1 %lcmp.mod232.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader, %scalar.ph202.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %scalar.ph202.prol ], [ %indvars.iv105.ph, %scalar.ph202.preheader ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %scalar.ph202.prol ], [ 0, %scalar.ph202.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv105.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !43
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv105.prol
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !37
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol, !llvm.loop !879

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %scalar.ph202.preheader ], [ %indvars.iv.next106.prol, %scalar.ph202.prol ]
  %i.ca = icmp ult i64 %i.bv, 3
  br i1 %i.ca, label %.loopexit.us, label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %scalar.ph202 ], [ %indvars.iv105.unr, %scalar.ph202.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv105
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !43
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv105
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !37
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next106
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !43
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next106
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !37
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next106.1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !43
  %i.cl = zext i8 %i.ck to i32
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next106.1
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !37
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next106.2
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !43
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next106.2
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !37
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %indvars.iv.next106.3, %i.aa
  br i1 %exitcond109.not.3, label %.loopexit.us, label %scalar.ph202, !llvm.loop !880

.loopexit.us:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %middle.block211
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.cr = load i32, ptr %i.ae, align 4, !tbaa !86
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next111, %i.cs
  %indvar.next196 = add i64 %indvar195, 1
  br i1 %i.ct, label %.preheader61.us, label %._crit_edge, !llvm.loop !881

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cu = icmp slt i32 %i.g, %i.z
  br i1 %i.cu, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.cv = sext i32 %i.ad to i64                   ; 3 uses
  %i.cw = mul i64 %i.ar, %i.cv
  %i.cx = add i64 %i.cw, %i.ap
  %i.cy = add i64 %i.cx, -16
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = and i32 %i.e, 127
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 2
  %i.dd = getelementptr i8, ptr %4, i64 %i.dc
  %scevgep = getelementptr i8, ptr %i.dd, i64 20
  %i.de = mul i64 %i.ak, %i.cv
  %i.df = and i32 %i.e, 127
  %i.dg = zext nneg i32 %i.df to i64              ; 4 uses
  %i.dh = add nuw nsw i64 %i.dg, 1
  %i.di = add nuw nsw i64 %i.dg, 1
  %min.iters.check128 = icmp samesign ult i32 %i.f, 7
  %i.dj = getelementptr i8, ptr %i.ai, i64 %i.de
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.db
  %i.dl = getelementptr i8, ptr %i.dk, i64 1
  %n.vec130 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n137 = icmp eq i64 %n.vec130, %i.aa
  %xtraiter = and i64 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 7
  %invariant.op = add i64 %i.cz, -1
  %n.vec = and i64 %i.aa, 248                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter219 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br label %.preheader65

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.dm = zext i32 %i.z to i64                    ; 2 uses
  %i.dn = sext i32 %i.ad to i64                   ; 3 uses
  %i.do = mul i64 %i.ar, %i.dn
  %i.dp = add i64 %i.do, %i.ap
  %i.dq = add i64 %i.dp, -16
  %i.dr = sub i64 %i.dq, %i.a
  %i.ds = and i32 %i.e, 127
  %i.dt = zext nneg i32 %i.ds to i64              ; 12 uses
  %i.du = shl nuw nsw i64 %i.dt, 2
  %i.dv = getelementptr i8, ptr %4, i64 %i.du
  %scevgep156 = getelementptr i8, ptr %i.dv, i64 20
  %i.dw = mul i64 %i.ak, %i.dn                    ; 3 uses
  %i.dx = shl nuw nsw i64 %i.dt, 1                ; 2 uses
  %i.dy = add nuw nsw i64 %i.dx, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.dm)
  %i.dz = add nsw i64 %umax, -2
  %i.ea = sub nsw i64 %i.dz, %i.dt
  %.fr = freeze i64 %i.ea                         ; 2 uses
  %i.eb = urem i64 %.fr, %i.aa
  %i.ec = sub nuw i64 %.fr, %i.eb
  %i.ed = shl nuw nsw i64 %i.dt, 2
  %i.ee = getelementptr i8, ptr %4, i64 %i.ed
  %scevgep177 = getelementptr i8, ptr %i.ee, i64 20
  %i.ef = add nuw nsw i64 %i.dt, 1
  %i.eg = add nuw nsw i64 %i.dt, 1
  %i.eh = add nuw nsw i64 %i.dt, 1
  %i.ei = getelementptr i8, ptr %i.ai, i64 %i.dw
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.dt
  %i.ek = getelementptr i8, ptr %i.ej, i64 1
  %min.iters.check183 = icmp samesign ult i32 %i.f, 7
  %5 = getelementptr i8, ptr %i.ai, i64 %i.dw
  %6 = getelementptr i8, ptr %5, i64 %i.dt
  %7 = getelementptr i8, ptr %6, i64 1
  %n.vec185 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n192 = icmp eq i64 %n.vec185, %i.aa
  %xtraiter222 = and i64 %i.ef, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %i.el = getelementptr i8, ptr %i.ai, i64 %i.ec
  %i.em = getelementptr i8, ptr %i.el, i64 %i.dw
  %i.en = getelementptr i8, ptr %i.em, i64 %i.dx
  %i.eo = getelementptr i8, ptr %i.en, i64 2
  %min.iters.check163 = icmp samesign ult i32 %i.f, 7
  %n.vec165 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n174 = icmp eq i64 %n.vec165, %i.aa
  %xtraiter225 = and i64 %i.eg, 3                 ; 2 uses
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  %min.iters.check144 = icmp samesign ult i32 %i.f, 7
  %invariant.op234 = add i64 %i.dr, -1
  %n.vec146 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n153 = icmp eq i64 %n.vec146, %i.aa
  %xtraiter228 = and i64 %i.eh, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar140 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next141, %.loopexit63.us ] ; 4 uses
  %indvars.iv102 = phi i64 [ %i.dn, %.preheader65.us.preheader ], [ %indvars.iv.next103, %.loopexit63.us ] ; 3 uses
  %i.ep = mul i64 %i.ak, %indvar140               ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.ek, i64 %i.ep
  %i.eq = mul i64 %i.ar, %indvar140
  %i.er = mul i64 %i.ak, %indvars.iv102
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.er ; 8 uses
  br i1 %min.iters.check183, label %scalar.ph182.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %.preheader65.us
  %8 = mul i64 %i.ak, %indvar140
  %scevgep178 = getelementptr i8, ptr %7, i64 %8
  %bound0179 = icmp ult ptr %i.ab, %scevgep178
  %bound1180 = icmp ult ptr %i.es, %scevgep177
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %scalar.ph182.preheader, label %vector.body186

vector.body186:                                   ; preds = %vector.memcheck176, %vector.body186
  %index187 = phi i64 [ %index.next190, %vector.body186 ], [ 0, %vector.memcheck176 ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %index187 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %wide.load188.a = load <4 x i8>, ptr %i.et, align 1, !tbaa !43, !alias.scope !912
  %wide.load189 = load <4 x i8>, ptr %i.eu, align 1, !tbaa !43, !alias.scope !912
  %i.ev = zext <4 x i8> %wide.load188.a to <4 x i32>
  %i.ew = zext <4 x i8> %wide.load189 to <4 x i32>
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index187 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <4 x i32> %i.ev, ptr %i.ex, align 8, !tbaa !37, !alias.scope !913, !noalias !912
  store <4 x i32> %i.ew, ptr %i.ey, align 8, !tbaa !37, !alias.scope !913, !noalias !912
  %index.next190 = add nuw i64 %index187, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next190, %n.vec185
  br i1 %i.ez, label %middle.block191, label %vector.body186, !llvm.loop !885

middle.block191:                                  ; preds = %vector.body186
  br i1 %cmp.n192, label %.preheader.us.preheader, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %vector.memcheck176, %.preheader65.us, %middle.block191
  %indvars.iv84.ph = phi i64 [ 0, %vector.memcheck176 ], [ 0, %.preheader65.us ], [ %n.vec185, %middle.block191 ] ; 3 uses
  %i.fa = sub nsw i64 %i.dt, %indvars.iv84.ph
  br i1 %lcmp.mod223.not, label %scalar.ph182.prol.loopexit, label %scalar.ph182.prol

scalar.ph182.prol:                                ; preds = %scalar.ph182.preheader, %scalar.ph182.prol
  %indvars.iv84.prol = phi i64 [ %indvars.iv.next85.prol, %scalar.ph182.prol ], [ %indvars.iv84.ph, %scalar.ph182.preheader ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %scalar.ph182.prol ], [ 0, %scalar.ph182.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv84.prol
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !43
  %i.fd = zext i8 %i.fc to i32
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv84.prol
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !37
  %indvars.iv.next85.prol = add nuw nsw i64 %indvars.iv84.prol, 1 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %scalar.ph182.prol.loopexit, label %scalar.ph182.prol, !llvm.loop !886

scalar.ph182.prol.loopexit:                       ; preds = %scalar.ph182.prol, %scalar.ph182.preheader
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %scalar.ph182.preheader ], [ %indvars.iv.next85.prol, %scalar.ph182.prol ]
  %i.ff = icmp ult i64 %i.fa, 3
  br i1 %i.ff, label %.preheader.us.preheader, label %scalar.ph182

scalar.ph182:                                     ; preds = %scalar.ph182.prol.loopexit, %scalar.ph182
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.3, %scalar.ph182 ], [ %indvars.iv84.unr, %scalar.ph182.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv84
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !43
  %i.fi = zext i8 %i.fh to i32
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv84
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !37
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.next85
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !43
  %i.fm = zext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next85
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !37
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.next85.1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !43
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next85.1
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !37
  %indvars.iv.next85.2 = add nuw nsw i64 %indvars.iv84, 3 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.next85.2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !43
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next85.2
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !37
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %exitcond88.not.3 = icmp eq i64 %indvars.iv.next85.3, %i.aa
  br i1 %exitcond88.not.3, label %.preheader.us.preheader, label %scalar.ph182, !llvm.loop !887

.preheader.us.preheader:                          ; preds = %scalar.ph182.prol.loopexit, %scalar.ph182, %middle.block191
  %scevgep158 = getelementptr i8, ptr %i.eo, i64 %i.ep
  %bound0159 = icmp ult ptr %i.ab, %scevgep158
  %bound1160 = icmp ult ptr %scevgep157, %scevgep156
  %found.conflict161 = and i1 %bound0159, %bound1160
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.loopexit ], [ %i.aa, %.preheader.us.preheader ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv94 ; 6 uses
  %brmerge = select i1 %min.iters.check163, i1 true, i1 %found.conflict161
  br i1 %brmerge, label %scalar.ph162.preheader, label %vector.body166

vector.body166:                                   ; preds = %.preheader.us, %vector.body166
  %index167 = phi i64 [ %index.next172, %vector.body166 ], [ 0, %.preheader.us ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index167 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %wide.load168 = load <4 x i32>, ptr %i.fw, align 8, !tbaa !37, !alias.scope !914, !noalias !915
  %wide.load169 = load <4 x i32>, ptr %i.fx, align 8, !tbaa !37, !alias.scope !914, !noalias !915
  %i.fy = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index167 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %wide.load170 = load <4 x i8>, ptr %i.fy, align 1, !tbaa !43, !alias.scope !915
  %wide.load171 = load <4 x i8>, ptr %i.fz, align 1, !tbaa !43, !alias.scope !915
  %i.ga = zext <4 x i8> %wide.load170 to <4 x i32>
  %i.gb = zext <4 x i8> %wide.load171 to <4 x i32>
  %i.gc = add nsw <4 x i32> %wide.load168, %i.ga
  %i.gd = add nsw <4 x i32> %wide.load169, %i.gb
  store <4 x i32> %i.gc, ptr %i.fw, align 8, !tbaa !37, !alias.scope !914, !noalias !915
  store <4 x i32> %i.gd, ptr %i.fx, align 8, !tbaa !37, !alias.scope !914, !noalias !915
  %index.next172 = add nuw i64 %index167, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.ge, label %middle.block173, label %vector.body166, !llvm.loop !891

middle.block173:                                  ; preds = %vector.body166
  br i1 %cmp.n174, label %.loopexit, label %scalar.ph162.preheader

scalar.ph162.preheader:                           ; preds = %.preheader.us, %middle.block173
  %indvars.iv89.ph = phi i64 [ %n.vec165, %middle.block173 ], [ 0, %.preheader.us ] ; 3 uses
  %i.gf = sub nsw i64 %i.dt, %indvars.iv89.ph
  br i1 %lcmp.mod226.not, label %scalar.ph162.prol.loopexit, label %scalar.ph162.prol

scalar.ph162.prol:                                ; preds = %scalar.ph162.preheader, %scalar.ph162.prol
  %indvars.iv89.prol = phi i64 [ %indvars.iv.next90.prol, %scalar.ph162.prol ], [ %indvars.iv89.ph, %scalar.ph162.preheader ] ; 3 uses
  %prol.iter227 = phi i64 [ %prol.iter227.next, %scalar.ph162.prol ], [ 0, %scalar.ph162.preheader ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv89.prol ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !37
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv89.prol
  %i.gi = load i8, ptr %gep.prol, align 1, !tbaa !43
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gh, %i.gj
  store i32 %i.gk, ptr %i.gg, align 4, !tbaa !37
  %indvars.iv.next90.prol = add nuw nsw i64 %indvars.iv89.prol, 1 ; 2 uses
  %prol.iter227.next = add i64 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i64 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %scalar.ph162.prol.loopexit, label %scalar.ph162.prol, !llvm.loop !892

scalar.ph162.prol.loopexit:                       ; preds = %scalar.ph162.prol, %scalar.ph162.preheader
  %indvars.iv89.unr = phi i64 [ %indvars.iv89.ph, %scalar.ph162.preheader ], [ %indvars.iv.next90.prol, %scalar.ph162.prol ]
  %i.gl = icmp ult i64 %i.gf, 3
  br i1 %i.gl, label %.loopexit, label %scalar.ph162

scalar.ph162:                                     ; preds = %scalar.ph162.prol.loopexit, %scalar.ph162
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %scalar.ph162 ], [ %indvars.iv89.unr, %scalar.ph162.prol.loopexit ] ; 6 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv89 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !37
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv89
  %i.go = load i8, ptr %gep, align 1, !tbaa !43
  %i.gp = zext i8 %i.go to i32
  %i.gq = add nsw i32 %i.gn, %i.gp
  store i32 %i.gq, ptr %i.gm, align 4, !tbaa !37
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next90 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !37
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90
  %i.gt = load i8, ptr %gep.1, align 1, !tbaa !43
  %i.gu = zext i8 %i.gt to i32
  %i.gv = add nsw i32 %i.gs, %i.gu
  store i32 %i.gv, ptr %i.gr, align 4, !tbaa !37
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next90.1 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !37
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90.1
  %i.gy = load i8, ptr %gep.2, align 1, !tbaa !43
  %i.gz = zext i8 %i.gy to i32
  %i.ha = add nsw i32 %i.gx, %i.gz
  store i32 %i.ha, ptr %i.gw, align 4, !tbaa !37
  %indvars.iv.next90.2 = add nuw nsw i64 %indvars.iv89, 3 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next90.2 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !37
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90.2
  %i.hd = load i8, ptr %gep.3, align 1, !tbaa !43
  %i.he = zext i8 %i.hd to i32
  %i.hf = add nsw i32 %i.hc, %i.he
  store i32 %i.hf, ptr %i.hb, align 4, !tbaa !37
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 2 uses
  %exitcond93.not.3 = icmp eq i64 %indvars.iv.next90.3, %i.aa
  br i1 %exitcond93.not.3, label %.loopexit, label %scalar.ph162, !llvm.loop !893

.loopexit:                                        ; preds = %scalar.ph162.prol.loopexit, %scalar.ph162, %middle.block173
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, %i.aa ; 2 uses
  %i.hg = icmp samesign ult i64 %indvars.iv.next95, %i.dm
  br i1 %i.hg, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !894

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.hh = mul i64 %i.ar, %indvars.iv102
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.hh ; 6 uses
  %.reass235 = add i64 %i.eq, %invariant.op234
  %diff.check142 = icmp ult i64 %.reass235, 31
  %or.cond = select i1 %min.iters.check144, i1 true, i1 %diff.check142
  br i1 %or.cond, label %..preheader62_crit_edge.us.preheader215, label %vector.body147

vector.body147:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body147
  %index148 = phi i64 [ %index.next151, %vector.body147 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index148 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %wide.load149 = load <4 x i32>, ptr %i.hj, align 8, !tbaa !37
  %wide.load150 = load <4 x i32>, ptr %i.hk, align 8, !tbaa !37
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %index148 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <4 x i32> %wide.load149, ptr %i.hl, align 4, !tbaa !37
  store <4 x i32> %wide.load150, ptr %i.hm, align 4, !tbaa !37
  %index.next151 = add nuw i64 %index148, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.hn, label %middle.block152, label %vector.body147, !llvm.loop !895

end_hunk_0
begin_hunk_1_@_ZNK2cv15ReduceC_InvokerIdddNS_5OpMinIdEENS_5OpNopIdddEEEclERKNS_5RangeE:bb.a
  br i1 %prol.iter.cmp.not, label %scalar.ph134.prol.loopexit, label %scalar.ph134.prol, !llvm.loop !1435

scalar.ph134.prol.loopexit:                       ; preds = %scalar.ph134.prol, %scalar.ph134.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph134.preheader ], [ %indvars.iv.next.prol, %scalar.ph134.prol ]
  %i.hw = icmp ult i64 %i.hs, 3
  br i1 %i.hw, label %.preheader64.preheader, label %scalar.ph134

scalar.ph134:                                     ; preds = %scalar.ph134.prol.loopexit, %scalar.ph134
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph134 ], [ %indvars.iv.unr, %scalar.ph134.prol.loopexit ] ; 6 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !76
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store double %i.hy, ptr %i.hz, align 8, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !76
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  store double %i.ib, ptr %i.ic, align 8, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next.1
  %i.ie = load double, ptr %i.id, align 8, !tbaa !76
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  store double %i.ie, ptr %i.if, align 8, !tbaa !76
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next.2
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !76
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  store double %i.ih, ptr %i.ii, align 8, !tbaa !76
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.aa
  br i1 %exitcond.not.3, label %.preheader64.preheader, label %scalar.ph134, !llvm.loop !1436

.preheader64.preheader:                           ; preds = %scalar.ph134.prol.loopexit, %scalar.ph134, %middle.block143
  %i.ij = mul i64 %i.as, %indvars.iv81
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ij ; 6 uses
  %.reass = add i64 %i.hg, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond214 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond214, label %.preheader64.preheader217, label %vector.body

vector.body:                                      ; preds = %.preheader64.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader64.preheader ] ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %wide.load = load <2 x double>, ptr %i.il, align 8, !tbaa !76
  %wide.load131 = load <2 x double>, ptr %i.im, align 8, !tbaa !76
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %index ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store <2 x double> %wide.load, ptr %i.in, align 8, !tbaa !76
  store <2 x double> %wide.load131, ptr %i.io, align 8, !tbaa !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !1437

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit63, label %.preheader64.preheader217

.preheader64.preheader217:                        ; preds = %.preheader64.preheader, %middle.block
  %indvars.iv76.ph = phi i64 [ 0, %.preheader64.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.iq = sub nsw i64 %i.cw, %indvars.iv76.ph
  br i1 %lcmp.mod220.not, label %.preheader64.prol.loopexit, label %.preheader64.prol

.preheader64.prol:                                ; preds = %.preheader64.preheader217, %.preheader64.prol
  %indvars.iv76.prol = phi i64 [ %indvars.iv.next77.prol, %.preheader64.prol ], [ %indvars.iv76.ph, %.preheader64.preheader217 ] ; 3 uses
  %prol.iter221 = phi i64 [ %prol.iter221.next, %.preheader64.prol ], [ 0, %.preheader64.preheader217 ]
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv76.prol
  %i.is = load double, ptr %i.ir, align 8, !tbaa !76
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv76.prol
  store double %i.is, ptr %i.it, align 8, !tbaa !76
  %indvars.iv.next77.prol = add nuw nsw i64 %indvars.iv76.prol, 1 ; 2 uses
  %prol.iter221.next = add i64 %prol.iter221, 1   ; 2 uses
  %prol.iter221.cmp.not = icmp eq i64 %prol.iter221.next, %xtraiter219
  br i1 %prol.iter221.cmp.not, label %.preheader64.prol.loopexit, label %.preheader64.prol, !llvm.loop !1438

.preheader64.prol.loopexit:                       ; preds = %.preheader64.prol, %.preheader64.preheader217
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %.preheader64.preheader217 ], [ %indvars.iv.next77.prol, %.preheader64.prol ]
  %i.iu = icmp ult i64 %i.iq, 3
  br i1 %i.iu, label %.loopexit63, label %.preheader64

.preheader64:                                     ; preds = %.preheader64.prol.loopexit, %.preheader64
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.3, %.preheader64 ], [ %indvars.iv76.unr, %.preheader64.prol.loopexit ] ; 6 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv76
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !76
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv76
  store double %i.iw, ptr %i.ix, align 8, !tbaa !76
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next77
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !76
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next77
  store double %i.iz, ptr %i.ja, align 8, !tbaa !76
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next77.1
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !76
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next77.1
  store double %i.jc, ptr %i.jd, align 8, !tbaa !76
  %indvars.iv.next77.2 = add nuw nsw i64 %indvars.iv76, 3 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next77.2
  %i.jf = load double, ptr %i.je, align 8, !tbaa !76
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next77.2
  store double %i.jf, ptr %i.jg, align 8, !tbaa !76
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %exitcond80.not.3 = icmp eq i64 %indvars.iv.next77.3, %i.aa
  br i1 %exitcond80.not.3, label %.loopexit63, label %.preheader64, !llvm.loop !1439

.loopexit63:                                      ; preds = %.preheader64.prol.loopexit, %.preheader64, %middle.block
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond85.not, label %._crit_edge, label %.preheader65, !llvm.loop !1421
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15ReduceC_InvokerIhiiNS_8OpAddSqrIiiiEENS_5OpSqrIiiiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15ReduceC_InvokerIhiiNS_8OpAddSqrIiiiEENS_5OpSqrIiiiEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::AutoBuffer", align 8    ; 10 uses
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1479, !nonnull !200, !align !201 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = lshr i32 %i.d, 5                         ; 6 uses
  %i.f = and i32 %i.e, 127                        ; 7 uses
  %i.g = add nuw nsw i32 %i.f, 1                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83   ; 4 uses
  %i.j = icmp slt i32 %i.i, 3
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.27, i32 noundef 109) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !43
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.s = icmp eq i32 %i.i, 2
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.i, 0
  %i.x = zext i1 %i.w to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.y = phi i32 [ %i.v, %bb.f ], [ %i.x, %bb.g ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 33 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !196
  %i.ad = load i32, ptr %1, align 4, !tbaa !85    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !86
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !68 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1480, !nonnull !200, !align !201 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !77 ; 5 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68 ; 9 uses
  %i.as = icmp eq i32 %i.z, %i.g
  br i1 %i.as, label %.preheader53.us.preheader, label %.lr.ph.split

.preheader53.us.preheader:                        ; preds = %.lr.ph
  %i.at = sext i32 %i.ad to i64                   ; 3 uses
  %i.au = mul i64 %i.ar, %i.at
  %i.av = and i32 %i.e, 127
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = mul i64 %i.ak, %i.at
  %i.az = and i32 %i.e, 127
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1
  %min.iters.check195 = icmp samesign ult i32 %i.f, 7
  %i.bc = getelementptr i8, ptr %i.ai, i64 %i.ay
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.aw
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %i.bf = getelementptr i8, ptr %i.ao, i64 %i.au
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ax
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %n.vec197 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec197, %i.aa
  %xtraiter223 = and i64 %i.bb, 3                 ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br label %.preheader53.us

.preheader53.us:                                  ; preds = %.preheader53.us.preheader, %.loopexit.us
  %indvar187 = phi i64 [ 0, %.preheader53.us.preheader ], [ %indvar.next188, %.loopexit.us ] ; 3 uses
  %indvars.iv102 = phi i64 [ %i.at, %.preheader53.us.preheader ], [ %indvars.iv.next103, %.loopexit.us ] ; 3 uses
  %i.bi = mul i64 %i.ak, %indvars.iv102
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bi ; 7 uses
  %i.bk = mul i64 %i.ar, %indvars.iv102
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bk ; 7 uses
  br i1 %min.iters.check195, label %scalar.ph194.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.preheader53.us
  %i.bm = mul i64 %i.ak, %indvar187
  %scevgep190 = getelementptr i8, ptr %i.be, i64 %i.bm
  %i.bn = mul i64 %i.ar, %indvar187
  %scevgep189 = getelementptr i8, ptr %i.bh, i64 %i.bn
  %bound0191 = icmp ult ptr %i.bl, %scevgep190
  %bound1192 = icmp ult ptr %i.bj, %scevgep189
  %found.conflict193 = and i1 %bound0191, %bound1192
  br i1 %found.conflict193, label %scalar.ph194.preheader, label %vector.body198

vector.body198:                                   ; preds = %vector.memcheck186, %vector.body198
  %index199 = phi i64 [ %index.next202, %vector.body198 ], [ 0, %vector.memcheck186 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index199 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %wide.load200.a = load <4 x i8>, ptr %i.bo, align 1, !tbaa !43, !alias.scope !1481
  %wide.load201 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !43, !alias.scope !1481
  %i.bq = zext <4 x i8> %wide.load200.a to <4 x i32> ; 2 uses
  %i.br = zext <4 x i8> %wide.load201 to <4 x i32> ; 2 uses
  %i.bs = mul nuw nsw <4 x i32> %i.bq, %i.bq
  %i.bt = mul nuw nsw <4 x i32> %i.br, %i.br
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index199 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> %i.bs, ptr %i.bu, align 4, !tbaa !37, !alias.scope !1482, !noalias !1481
  store <4 x i32> %i.bt, ptr %i.bv, align 4, !tbaa !37, !alias.scope !1482, !noalias !1481
  %index.next202 = add nuw i64 %index199, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.bw, label %middle.block203, label %vector.body198, !llvm.loop !1450

middle.block203:                                  ; preds = %vector.body198
  br i1 %cmp.n204, label %.loopexit.us, label %scalar.ph194.preheader

scalar.ph194.preheader:                           ; preds = %vector.memcheck186, %.preheader53.us, %middle.block203
  %indvars.iv97.ph = phi i64 [ 0, %vector.memcheck186 ], [ 0, %.preheader53.us ], [ %n.vec197, %middle.block203 ] ; 3 uses
  %i.bx = sub nsw i64 %i.ba, %indvars.iv97.ph
  br i1 %lcmp.mod224.not, label %scalar.ph194.prol.loopexit, label %scalar.ph194.prol

scalar.ph194.prol:                                ; preds = %scalar.ph194.preheader, %scalar.ph194.prol
  %indvars.iv97.prol = phi i64 [ %indvars.iv.next98.prol, %scalar.ph194.prol ], [ %indvars.iv97.ph, %scalar.ph194.preheader ] ; 3 uses
  %prol.iter225 = phi i64 [ %prol.iter225.next, %scalar.ph194.prol ], [ 0, %scalar.ph194.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv97.prol
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !43
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = mul nuw nsw i32 %i.ca, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv97.prol
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !37
  %indvars.iv.next98.prol = add nuw nsw i64 %indvars.iv97.prol, 1 ; 2 uses
  %prol.iter225.next = add i64 %prol.iter225, 1   ; 2 uses
  %prol.iter225.cmp.not = icmp eq i64 %prol.iter225.next, %xtraiter223
  br i1 %prol.iter225.cmp.not, label %scalar.ph194.prol.loopexit, label %scalar.ph194.prol, !llvm.loop !1451

scalar.ph194.prol.loopexit:                       ; preds = %scalar.ph194.prol, %scalar.ph194.preheader
  %indvars.iv97.unr = phi i64 [ %indvars.iv97.ph, %scalar.ph194.preheader ], [ %indvars.iv.next98.prol, %scalar.ph194.prol ]
  %i.cd = icmp ult i64 %i.bx, 3
  br i1 %i.cd, label %.loopexit.us, label %scalar.ph194

scalar.ph194:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.3, %scalar.ph194 ], [ %indvars.iv97.unr, %scalar.ph194.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv97
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !43
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = mul nuw nsw i32 %i.cg, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv97
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !37
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next98
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !43
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = mul nuw nsw i32 %i.cl, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next98
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !37
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next98.1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !43
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = mul nuw nsw i32 %i.cq, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next98.1
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !37
  %indvars.iv.next98.2 = add nuw nsw i64 %indvars.iv97, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next98.2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !43
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = mul nuw nsw i32 %i.cv, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next98.2
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !37
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %exitcond101.not.3 = icmp eq i64 %indvars.iv.next98.3, %i.aa
  br i1 %exitcond101.not.3, label %.loopexit.us, label %scalar.ph194, !llvm.loop !1452

.loopexit.us:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194, %middle.block203
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.cy = load i32, ptr %i.ae, align 4, !tbaa !86
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next103, %i.cz
  %indvar.next188 = add i64 %indvar187, 1
  br i1 %i.da, label %.preheader53.us, label %._crit_edge, !llvm.loop !1453

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.db = icmp slt i32 %i.g, %i.z
  br i1 %i.db, label %.preheader57.us.preheader, label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.lr.ph.split
  %i.dc = sext i32 %i.ad to i64                   ; 3 uses
  %i.dd = mul i64 %i.ar, %i.dc
  %i.de = add i64 %i.dd, %i.ap
  %i.df = add i64 %i.de, -16
  %i.dg = sub i64 %i.df, %i.a
  %i.dh = and i32 %i.e, 127
  %i.di = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = getelementptr i8, ptr %4, i64 %i.dj
  %scevgep = getelementptr i8, ptr %i.dk, i64 20
  %i.dl = mul i64 %i.ak, %i.dc
  %i.dm = and i32 %i.e, 127
  %i.dn = zext nneg i32 %i.dm to i64              ; 4 uses
  %i.do = add nuw nsw i64 %i.dn, 1
  %i.dp = add nuw nsw i64 %i.dn, 1
  %min.iters.check120 = icmp samesign ult i32 %i.f, 7
  %i.dq = getelementptr i8, ptr %i.ai, i64 %i.dl
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.di
  %i.ds = getelementptr i8, ptr %i.dr, i64 1
  %n.vec122 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n129 = icmp eq i64 %n.vec122, %i.aa
  %xtraiter = and i64 %i.do, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 7
  %invariant.op = add i64 %i.dg, -1
  %n.vec = and i64 %i.aa, 248                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter211 = and i64 %i.dp, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br label %.preheader57

.preheader57.us.preheader:                        ; preds = %.lr.ph.split
  %i.dt = zext i32 %i.z to i64                    ; 2 uses
  %i.du = sext i32 %i.ad to i64                   ; 3 uses
  %i.dv = mul i64 %i.ar, %i.du
  %i.dw = add i64 %i.dv, %i.ap
  %i.dx = add i64 %i.dw, -16
  %i.dy = sub i64 %i.dx, %i.a
  %i.dz = and i32 %i.e, 127
  %i.ea = zext nneg i32 %i.dz to i64              ; 12 uses
  %i.eb = shl nuw nsw i64 %i.ea, 2
  %i.ec = getelementptr i8, ptr %4, i64 %i.eb
  %scevgep148 = getelementptr i8, ptr %i.ec, i64 20
  %i.ed = mul i64 %i.ak, %i.du                    ; 3 uses
  %i.ee = shl nuw nsw i64 %i.ea, 1                ; 2 uses
  %i.ef = add nuw nsw i64 %i.ee, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.dt)
  %i.eg = add nsw i64 %umax, -2
  %i.eh = sub nsw i64 %i.eg, %i.ea
  %.fr = freeze i64 %i.eh                         ; 2 uses
  %i.ei = urem i64 %.fr, %i.aa
  %i.ej = sub nuw i64 %.fr, %i.ei
  %i.ek = shl nuw nsw i64 %i.ea, 2
  %i.el = getelementptr i8, ptr %4, i64 %i.ek
  %scevgep169 = getelementptr i8, ptr %i.el, i64 20
  %i.em = add nuw nsw i64 %i.ea, 1
  %i.en = add nuw nsw i64 %i.ea, 1
  %i.eo = getelementptr i8, ptr %i.ai, i64 %i.ed
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ea
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  %min.iters.check175 = icmp samesign ult i32 %i.f, 7
  %5 = getelementptr i8, ptr %i.ai, i64 %i.ed
  %6 = getelementptr i8, ptr %5, i64 %i.ea
  %7 = getelementptr i8, ptr %6, i64 1
  %n.vec177 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n184 = icmp eq i64 %n.vec177, %i.aa
  %xtraiter214 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  %i.er = getelementptr i8, ptr %i.ai, i64 %i.ej
  %i.es = getelementptr i8, ptr %i.er, i64 %i.ed
  %i.et = getelementptr i8, ptr %i.es, i64 %i.ee
  %i.eu = getelementptr i8, ptr %i.et, i64 2
  %min.iters.check155 = icmp samesign ult i32 %i.f, 7
  %n.vec157 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n166 = icmp eq i64 %n.vec157, %i.aa
  %i.ev = and i64 %i.ea, 1
  %lcmp.mod218.not.not = icmp eq i64 %i.ev, 0
  %min.iters.check136 = icmp samesign ult i32 %i.f, 7
  %invariant.op226 = add i64 %i.dy, -1
  %n.vec138 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n145 = icmp eq i64 %n.vec138, %i.aa
  %xtraiter220 = and i64 %i.en, 3                 ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br label %.preheader57.us

.preheader57.us:                                  ; preds = %.preheader57.us.preheader, %.loopexit55.us
  %indvar132 = phi i64 [ 0, %.preheader57.us.preheader ], [ %indvar.next133, %.loopexit55.us ] ; 4 uses
  %indvars.iv94 = phi i64 [ %i.du, %.preheader57.us.preheader ], [ %indvars.iv.next95, %.loopexit55.us ] ; 3 uses
  %i.ew = mul i64 %i.ak, %indvar132               ; 2 uses
  %scevgep149 = getelementptr i8, ptr %i.eq, i64 %i.ew
  %i.ex = mul i64 %i.ar, %indvar132
  %i.ey = mul i64 %i.ak, %indvars.iv94
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ey ; 8 uses
  br i1 %min.iters.check175, label %scalar.ph174.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.preheader57.us
  %8 = mul i64 %i.ak, %indvar132
  %scevgep170 = getelementptr i8, ptr %7, i64 %8
  %bound0171 = icmp ult ptr %i.ab, %scevgep170
  %bound1172 = icmp ult ptr %i.ez, %scevgep169
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %scalar.ph174.preheader, label %vector.body178

vector.body178:                                   ; preds = %vector.memcheck168, %vector.body178
  %index179 = phi i64 [ %index.next182, %vector.body178 ], [ 0, %vector.memcheck168 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %index179 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %wide.load180.a = load <4 x i8>, ptr %i.fa, align 1, !tbaa !43, !alias.scope !1483
  %wide.load181 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !43, !alias.scope !1483
  %i.fc = zext <4 x i8> %wide.load180.a to <4 x i32> ; 2 uses
  %i.fd = zext <4 x i8> %wide.load181 to <4 x i32> ; 2 uses
  %i.fe = mul nuw nsw <4 x i32> %i.fc, %i.fc
  %i.ff = mul nuw nsw <4 x i32> %i.fd, %i.fd
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index179 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x i32> %i.fe, ptr %i.fg, align 8, !tbaa !37, !alias.scope !1484, !noalias !1483
  store <4 x i32> %i.ff, ptr %i.fh, align 8, !tbaa !37, !alias.scope !1484, !noalias !1483
  %index.next182 = add nuw i64 %index179, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.fi, label %middle.block183, label %vector.body178, !llvm.loop !1457

middle.block183:                                  ; preds = %vector.body178
  br i1 %cmp.n184, label %.preheader.us.preheader, label %scalar.ph174.preheader

scalar.ph174.preheader:                           ; preds = %vector.memcheck168, %.preheader57.us, %middle.block183
  %indvars.iv76.ph = phi i64 [ 0, %vector.memcheck168 ], [ 0, %.preheader57.us ], [ %n.vec177, %middle.block183 ] ; 3 uses
  %i.fj = sub nsw i64 %i.ea, %indvars.iv76.ph
  br i1 %lcmp.mod215.not, label %scalar.ph174.prol.loopexit, label %scalar.ph174.prol

scalar.ph174.prol:                                ; preds = %scalar.ph174.preheader, %scalar.ph174.prol
  %indvars.iv76.prol = phi i64 [ %indvars.iv.next77.prol, %scalar.ph174.prol ], [ %indvars.iv76.ph, %scalar.ph174.preheader ] ; 3 uses
  %prol.iter216 = phi i64 [ %prol.iter216.next, %scalar.ph174.prol ], [ 0, %scalar.ph174.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv76.prol
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !43
  %i.fm = zext i8 %i.fl to i32                    ; 2 uses
  %i.fn = mul nuw nsw i32 %i.fm, %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv76.prol
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !37
  %indvars.iv.next77.prol = add nuw nsw i64 %indvars.iv76.prol, 1 ; 2 uses
  %prol.iter216.next = add i64 %prol.iter216, 1   ; 2 uses
  %prol.iter216.cmp.not = icmp eq i64 %prol.iter216.next, %xtraiter214
  br i1 %prol.iter216.cmp.not, label %scalar.ph174.prol.loopexit, label %scalar.ph174.prol, !llvm.loop !1458

scalar.ph174.prol.loopexit:                       ; preds = %scalar.ph174.prol, %scalar.ph174.preheader
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %scalar.ph174.preheader ], [ %indvars.iv.next77.prol, %scalar.ph174.prol ]
  %i.fp = icmp ult i64 %i.fj, 3
  br i1 %i.fp, label %.preheader.us.preheader, label %scalar.ph174

scalar.ph174:                                     ; preds = %scalar.ph174.prol.loopexit, %scalar.ph174
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.3, %scalar.ph174 ], [ %indvars.iv76.unr, %scalar.ph174.prol.loopexit ] ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv76
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !43
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  %i.ft = mul nuw nsw i32 %i.fs, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv76
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !37
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next77
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !43
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  %i.fy = mul nuw nsw i32 %i.fx, %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next77
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !37
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next77.1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !43
  %i.gc = zext i8 %i.gb to i32                    ; 2 uses
  %i.gd = mul nuw nsw i32 %i.gc, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next77.1
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !37
  %indvars.iv.next77.2 = add nuw nsw i64 %indvars.iv76, 3 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.next77.2
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !43
  %i.gh = zext i8 %i.gg to i32                    ; 2 uses
  %i.gi = mul nuw nsw i32 %i.gh, %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next77.2
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !37
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %exitcond80.not.3 = icmp eq i64 %indvars.iv.next77.3, %i.aa
  br i1 %exitcond80.not.3, label %.preheader.us.preheader, label %scalar.ph174, !llvm.loop !1459

.preheader.us.preheader:                          ; preds = %scalar.ph174.prol.loopexit, %scalar.ph174, %middle.block183
  %scevgep150 = getelementptr i8, ptr %i.eu, i64 %i.ew
  %bound0151 = icmp ult ptr %i.ab, %scevgep150
  %bound1152 = icmp ult ptr %scevgep149, %scevgep148
  %found.conflict153 = and i1 %bound0151, %bound1152
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.loopexit ], [ %i.aa, %.preheader.us.preheader ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv86 ; 4 uses
  %brmerge = select i1 %min.iters.check155, i1 true, i1 %found.conflict153
  br i1 %brmerge, label %scalar.ph154.preheader, label %vector.body158

vector.body158:                                   ; preds = %.preheader.us, %vector.body158
  %index159 = phi i64 [ %index.next164, %vector.body158 ], [ 0, %.preheader.us ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index159 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %wide.load160 = load <4 x i32>, ptr %i.gk, align 8, !tbaa !37, !alias.scope !1485, !noalias !1486
  %wide.load161 = load <4 x i32>, ptr %i.gl, align 8, !tbaa !37, !alias.scope !1485, !noalias !1486
  %i.gm = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index159 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %wide.load162 = load <4 x i8>, ptr %i.gm, align 1, !tbaa !43, !alias.scope !1486
  %wide.load163 = load <4 x i8>, ptr %i.gn, align 1, !tbaa !43, !alias.scope !1486
  %i.go = zext <4 x i8> %wide.load162 to <4 x i32> ; 2 uses
  %i.gp = zext <4 x i8> %wide.load163 to <4 x i32> ; 2 uses
  %i.gq = mul nuw nsw <4 x i32> %i.go, %i.go
  %i.gr = mul nuw nsw <4 x i32> %i.gp, %i.gp
  %i.gs = add nsw <4 x i32> %i.gq, %wide.load160
  %i.gt = add nsw <4 x i32> %i.gr, %wide.load161
  store <4 x i32> %i.gs, ptr %i.gk, align 8, !tbaa !37, !alias.scope !1485, !noalias !1486
  store <4 x i32> %i.gt, ptr %i.gl, align 8, !tbaa !37, !alias.scope !1485, !noalias !1486
  %index.next164 = add nuw i64 %index159, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.gu, label %middle.block165, label %vector.body158, !llvm.loop !1463

middle.block165:                                  ; preds = %vector.body158
  br i1 %cmp.n166, label %.loopexit, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %.preheader.us, %middle.block165
  %indvars.iv81.ph = phi i64 [ %n.vec157, %middle.block165 ], [ 0, %.preheader.us ] ; 5 uses
  br i1 %lcmp.mod218.not.not, label %scalar.ph154.prol, label %scalar.ph154.prol.loopexit

scalar.ph154.prol:                                ; preds = %scalar.ph154.preheader
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv81.ph ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !37
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv81.ph
  %i.gx = load i8, ptr %gep.prol, align 1, !tbaa !43
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = mul nuw nsw i32 %i.gy, %i.gy
  %i.ha = add nsw i32 %i.gz, %i.gw
  store i32 %i.ha, ptr %i.gv, align 8, !tbaa !37
  %indvars.iv.next82.prol = or disjoint i64 %indvars.iv81.ph, 1
  br label %scalar.ph154.prol.loopexit

scalar.ph154.prol.loopexit:                       ; preds = %scalar.ph154.prol, %scalar.ph154.preheader
  %indvars.iv81.unr = phi i64 [ %indvars.iv81.ph, %scalar.ph154.preheader ], [ %indvars.iv.next82.prol, %scalar.ph154.prol ]
  %i.hb = icmp eq i64 %indvars.iv81.ph, %i.ea
  br i1 %i.hb, label %.loopexit, label %scalar.ph154

scalar.ph154:                                     ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.1, %scalar.ph154 ], [ %indvars.iv81.unr, %scalar.ph154.prol.loopexit ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv81 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !37
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv81
  %i.he = load i8, ptr %gep, align 1, !tbaa !43
  %i.hf = zext i8 %i.he to i32                    ; 2 uses
  %i.hg = mul nuw nsw i32 %i.hf, %i.hf
  %i.hh = add nsw i32 %i.hg, %i.hd
  store i32 %i.hh, ptr %i.hc, align 4, !tbaa !37
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next82 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !37
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next82
  %i.hk = load i8, ptr %gep.1, align 1, !tbaa !43
  %i.hl = zext i8 %i.hk to i32                    ; 2 uses
  %i.hm = mul nuw nsw i32 %i.hl, %i.hl
  %i.hn = add nsw i32 %i.hm, %i.hj
  store i32 %i.hn, ptr %i.hi, align 4, !tbaa !37
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %exitcond85.not.1 = icmp eq i64 %indvars.iv.next82.1, %i.aa
  br i1 %exitcond85.not.1, label %.loopexit, label %scalar.ph154, !llvm.loop !1464

.loopexit:                                        ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154, %middle.block165
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %i.aa ; 2 uses
  %i.ho = icmp samesign ult i64 %indvars.iv.next87, %i.dt
  br i1 %i.ho, label %.preheader.us, label %..preheader54_crit_edge.us.preheader, !llvm.loop !1465

..preheader54_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.hp = mul i64 %i.ar, %indvars.iv94
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.hp ; 6 uses
  %.reass227 = add i64 %i.ex, %invariant.op226
  %diff.check134 = icmp ult i64 %.reass227, 31
  %or.cond = select i1 %min.iters.check136, i1 true, i1 %diff.check134
  br i1 %or.cond, label %..preheader54_crit_edge.us.preheader207, label %vector.body139

vector.body139:                                   ; preds = %..preheader54_crit_edge.us.preheader, %vector.body139
  %index140 = phi i64 [ %index.next143, %vector.body139 ], [ 0, %..preheader54_crit_edge.us.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index140 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %wide.load141 = load <4 x i32>, ptr %i.hr, align 8, !tbaa !37
  %wide.load142 = load <4 x i32>, ptr %i.hs, align 8, !tbaa !37
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %index140 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store <4 x i32> %wide.load141, ptr %i.ht, align 4, !tbaa !37
  store <4 x i32> %wide.load142, ptr %i.hu, align 4, !tbaa !37
  %index.next143 = add nuw i64 %index140, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.hv, label %middle.block144, label %vector.body139, !llvm.loop !1466

middle.block144:                                  ; preds = %vector.body139
  br i1 %cmp.n145, label %.loopexit55.us, label %..preheader54_crit_edge.us.preheader207

..preheader54_crit_edge.us.preheader207:          ; preds = %..preheader54_crit_edge.us.preheader, %middle.block144
  %indvars.iv89.ph = phi i64 [ 0, %..preheader54_crit_edge.us.preheader ], [ %n.vec138, %middle.block144 ] ; 3 uses
  %i.hw = sub nsw i64 %i.ea, %indvars.iv89.ph
  br i1 %lcmp.mod221.not, label %..preheader54_crit_edge.us.prol.loopexit, label %..preheader54_crit_edge.us.prol

..preheader54_crit_edge.us.prol:                  ; preds = %..preheader54_crit_edge.us.preheader207, %..preheader54_crit_edge.us.prol
end_hunk_1
