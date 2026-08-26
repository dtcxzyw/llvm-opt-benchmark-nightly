Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_operations?download=true
inline.NumInlined: 2347
inline.NumDeleted: 595
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 249
loop-unroll.NumUnrolled: 279
begin_hunk_0_@_ZNK2cv15ReduceR_InvokerIdddNS_8OpAddSqrIdddEENS_5OpSqrIdddEEEclERKNS_5RangeE:bb.a
.lr.ph43.preheader100:                            ; preds = %.lr.ph43.preheader, %middle.block96
  %indvars.iv53.ph = phi i64 [ %i.ci, %.lr.ph43.preheader ], [ %i.cl, %middle.block96 ] ; 4 uses
  %i.cs = sub nsw i64 %wide.trip.count56, %indvars.iv53.ph
  %xtraiter105 = and i64 %i.cs, 3                 ; 2 uses
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %.lr.ph43.prol.loopexit, label %.lr.ph43.prol

.lr.ph43.prol:                                    ; preds = %.lr.ph43.preheader100, %.lr.ph43.prol
  %indvars.iv53.prol = phi i64 [ %indvars.iv.next54.prol, %.lr.ph43.prol ], [ %indvars.iv53.ph, %.lr.ph43.preheader100 ] ; 3 uses
  %prol.iter107 = phi i64 [ %prol.iter107.next, %.lr.ph43.prol ], [ 0, %.lr.ph43.preheader100 ]
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv53.prol
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !76
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv53.prol
  store double %i.cu, ptr %i.cv, align 8, !tbaa !76
  %indvars.iv.next54.prol = add nsw i64 %indvars.iv53.prol, 1 ; 2 uses
  %prol.iter107.next = add i64 %prol.iter107, 1   ; 2 uses
  %prol.iter107.cmp.not = icmp eq i64 %prol.iter107.next, %xtraiter105
  br i1 %prol.iter107.cmp.not, label %.lr.ph43.prol.loopexit, label %.lr.ph43.prol, !llvm.loop !836

.lr.ph43.prol.loopexit:                           ; preds = %.lr.ph43.prol, %.lr.ph43.preheader100
  %indvars.iv53.unr = phi i64 [ %indvars.iv53.ph, %.lr.ph43.preheader100 ], [ %indvars.iv.next54.prol, %.lr.ph43.prol ]
  %i.cw = sub nsw i64 %indvars.iv53.ph, %wide.trip.count56
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %._crit_edge44, label %.lr.ph43

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %..loopexit_crit_edge
  %i.cy = phi i32 [ %i.ch, %..loopexit_crit_edge ], [ %i.br, %.lr.ph38.preheader ]
  %.040 = phi ptr [ %i.cz, %..loopexit_crit_edge ], [ %i.d, %.lr.ph38.preheader ]
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %i.g ; 5 uses
  %brmerge = select i1 %min.iters.check72, i1 true, i1 %i.ce
  br i1 %brmerge, label %scalar.ph71.preheader, label %vector.body75

vector.body75:                                    ; preds = %.lr.ph38, %vector.body75
  %index76 = phi i64 [ %index.next81, %vector.body75 ], [ 0, %.lr.ph38 ] ; 2 uses
  %i.da = add i64 %index76, %i.bs                 ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %wide.load77 = load <2 x double>, ptr %i.db, align 8, !tbaa !76, !alias.scope !837, !noalias !840
  %wide.load78 = load <2 x double>, ptr %i.dc, align 8, !tbaa !76, !alias.scope !837, !noalias !840
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load79 = load <2 x double>, ptr %i.dd, align 8, !tbaa !76, !alias.scope !840 ; 2 uses
  %wide.load80 = load <2 x double>, ptr %i.de, align 8, !tbaa !76, !alias.scope !840 ; 2 uses
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load79, <2 x double> %wide.load79, <2 x double> %wide.load77)
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load80, <2 x double> %wide.load80, <2 x double> %wide.load78)
  store <2 x double> %i.df, ptr %i.db, align 8, !tbaa !76, !alias.scope !837, !noalias !840
  store <2 x double> %i.dg, ptr %i.dc, align 8, !tbaa !76, !alias.scope !837, !noalias !840
  %index.next81 = add nuw i64 %index76, 4         ; 2 uses
  %i.dh = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.dh, label %middle.block82, label %vector.body75, !llvm.loop !842

middle.block82:                                   ; preds = %vector.body75
  br i1 %cmp.n83, label %..loopexit_crit_edge, label %scalar.ph71.preheader

scalar.ph71.preheader:                            ; preds = %.lr.ph38, %middle.block82
  %indvars.iv47.ph = phi i64 [ %i.cf, %middle.block82 ], [ %i.bs, %.lr.ph38 ] ; 6 uses
  %i.di = sub nsw i64 %wide.trip.count50, %indvars.iv47.ph
  %xtraiter102 = and i64 %i.di, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %scalar.ph71.prol.loopexit, label %scalar.ph71.prol

scalar.ph71.prol:                                 ; preds = %scalar.ph71.preheader
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv47.ph ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !76
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %indvars.iv47.ph
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !76 ; 2 uses
  %i.dn = tail call noundef double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %i.dk)
  store double %i.dn, ptr %i.dj, align 8, !tbaa !76
  %indvars.iv.next48.prol = add nsw i64 %indvars.iv47.ph, 1
  br label %scalar.ph71.prol.loopexit

scalar.ph71.prol.loopexit:                        ; preds = %scalar.ph71.prol, %scalar.ph71.preheader
  %indvars.iv47.unr = phi i64 [ %indvars.iv47.ph, %scalar.ph71.preheader ], [ %indvars.iv.next48.prol, %scalar.ph71.prol ]
  %i.do = icmp eq i64 %indvars.iv47.ph, %i.cg
  br i1 %i.do, label %..loopexit_crit_edge, label %scalar.ph71

scalar.ph71:                                      ; preds = %scalar.ph71.prol.loopexit, %scalar.ph71
  %indvars.iv47 = phi i64 [ %indvars.iv.next48.1, %scalar.ph71 ], [ %indvars.iv47.unr, %scalar.ph71.prol.loopexit ] ; 4 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv47 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !76
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %indvars.iv47
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !76 ; 2 uses
  %i.dt = tail call noundef double @llvm.fmuladd.f64(double %i.ds, double %i.ds, double %i.dq)
  store double %i.dt, ptr %i.dp, align 8, !tbaa !76
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next48 ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !76
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %indvars.iv.next48
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !76 ; 2 uses
  %i.dy = tail call noundef double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.dv)
  store double %i.dy, ptr %i.du, align 8, !tbaa !76
  %indvars.iv.next48.1 = add nsw i64 %indvars.iv47, 2 ; 2 uses
  %exitcond51.not.1 = icmp eq i64 %indvars.iv.next48.1, %wide.trip.count50
  br i1 %exitcond51.not.1, label %..loopexit_crit_edge, label %scalar.ph71, !llvm.loop !843

.lr.ph43:                                         ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43
  %indvars.iv53 = phi i64 [ %indvars.iv.next54.3, %.lr.ph43 ], [ %indvars.iv53.unr, %.lr.ph43.prol.loopexit ] ; 6 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv53
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !76
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv53
  store double %i.ea, ptr %i.eb, align 8, !tbaa !76
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next54
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !76
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next54
  store double %i.ed, ptr %i.ee, align 8, !tbaa !76
  %indvars.iv.next54.1 = add nsw i64 %indvars.iv53, 2 ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next54.1
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !76
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next54.1
  store double %i.eg, ptr %i.eh, align 8, !tbaa !76
  %indvars.iv.next54.2 = add nsw i64 %indvars.iv53, 3 ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next54.2
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !76
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next54.2
  store double %i.ej, ptr %i.ek, align 8, !tbaa !76
  %indvars.iv.next54.3 = add nsw i64 %indvars.iv53, 4 ; 2 uses
  %exitcond57.not.3 = icmp eq i64 %indvars.iv.next54.3, %wide.trip.count56
  br i1 %exitcond57.not.3, label %._crit_edge44, label %.lr.ph43, !llvm.loop !844

._crit_edge44:                                    ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43, %middle.block96, %.preheader
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !845, !nonnull !455, !align !456 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = lshr i32 %i.d, 5                         ; 6 uses
  %i.f = and i32 %i.e, 127                        ; 7 uses
  %i.g = add nuw nsw i32 %i.f, 1                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !104  ; 4 uses
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.r = icmp eq i32 %i.i, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 23 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 35 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !116
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !293
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !847, !nonnull !455, !align !456 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !78 ; 5 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !47 ; 9 uses
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
  %wide.load208 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !16, !alias.scope !848
  %wide.load209 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !16, !alias.scope !848
  %i.bq = zext <4 x i8> %wide.load208 to <4 x i32>
  %i.br = zext <4 x i8> %wide.load209 to <4 x i32>
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index207 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x i32> %i.bq, ptr %i.bs, align 4, !tbaa !8, !alias.scope !851, !noalias !848
  store <4 x i32> %i.br, ptr %i.bt, align 4, !tbaa !8, !alias.scope !851, !noalias !848
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.bu, label %middle.block211, label %vector.body206, !llvm.loop !853

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
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv105.prol
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !8
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol, !llvm.loop !854

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %scalar.ph202.preheader ], [ %indvars.iv.next106.prol, %scalar.ph202.prol ]
  %i.ca = icmp ult i64 %i.bv, 3
  br i1 %i.ca, label %.loopexit.us, label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %scalar.ph202 ], [ %indvars.iv105.unr, %scalar.ph202.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv105
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv105
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !8
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next106
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next106
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !8
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next106.1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = zext i8 %i.ck to i32
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next106.1
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !8
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next106.2
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !16
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next106.2
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !8
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %indvars.iv.next106.3, %i.aa
  br i1 %exitcond109.not.3, label %.loopexit.us, label %scalar.ph202, !llvm.loop !855

.loopexit.us:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %middle.block211
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.cr = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next111, %i.cs
  %indvar.next196 = add i64 %indvar195, 1
  br i1 %i.ct, label %.preheader61.us, label %._crit_edge, !llvm.loop !856

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
  %i.dt = zext nneg i32 %i.ds to i64              ; 11 uses
  %i.du = shl nuw nsw i64 %i.dt, 2
  %i.dv = getelementptr i8, ptr %4, i64 %i.du
  %scevgep156 = getelementptr i8, ptr %i.dv, i64 20
  %i.dw = mul i64 %i.ak, %i.dn                    ; 3 uses
  %i.dx = shl nuw nsw i64 %i.dt, 1                ; 4 uses
  %i.dy = add nuw nsw i64 %i.dx, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.dm)
  %i.dz = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dz, %i.dx
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dx, %umin
  %i.ea = sub nsw i64 %i.dz, %6
  %7 = udiv i64 %i.ea, %i.aa
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.aa
  %i.eb = shl nuw nsw i64 %i.dt, 2
  %i.ec = getelementptr i8, ptr %4, i64 %i.eb
  %scevgep177 = getelementptr i8, ptr %i.ec, i64 20
  %i.ed = add nuw nsw i64 %i.dt, 1
  %i.ee = add nuw nsw i64 %i.dt, 1
  %i.ef = add nuw nsw i64 %i.dt, 1
  %i.eg = getelementptr i8, ptr %i.ai, i64 %i.dw
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.dt
  %i.ei = getelementptr i8, ptr %i.eh, i64 1
  %min.iters.check183 = icmp samesign ult i32 %i.f, 7
  %i.ej = getelementptr i8, ptr %i.ai, i64 %i.dw
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.dt
  %i.el = getelementptr i8, ptr %i.ek, i64 1
  %n.vec185 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n192 = icmp eq i64 %n.vec185, %i.aa
  %xtraiter222 = and i64 %i.ed, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %i.em = getelementptr i8, ptr %i.ai, i64 %9
  %i.en = getelementptr i8, ptr %i.em, i64 %i.dw
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.dx
  %i.ep = getelementptr i8, ptr %i.eo, i64 2
  %min.iters.check163 = icmp samesign ult i32 %i.f, 7
  %n.vec165 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n174 = icmp eq i64 %n.vec165, %i.aa
  %xtraiter225 = and i64 %i.ee, 3                 ; 2 uses
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  %min.iters.check144 = icmp samesign ult i32 %i.f, 7
  %invariant.op234 = add i64 %i.dr, -1
  %n.vec146 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n153 = icmp eq i64 %n.vec146, %i.aa
  %xtraiter228 = and i64 %i.ef, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar140 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next141, %.loopexit63.us ] ; 4 uses
  %indvars.iv102 = phi i64 [ %i.dn, %.preheader65.us.preheader ], [ %indvars.iv.next103, %.loopexit63.us ] ; 3 uses
  %i.eq = mul i64 %i.ak, %indvar140               ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.ei, i64 %i.eq
  %i.er = mul i64 %i.ar, %indvar140
  %i.es = mul i64 %i.ak, %indvars.iv102
  %i.et = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.es ; 8 uses
  br i1 %min.iters.check183, label %scalar.ph182.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %.preheader65.us
  %i.eu = mul i64 %i.ak, %indvar140
  %scevgep178 = getelementptr i8, ptr %i.el, i64 %i.eu
  %bound0179 = icmp ult ptr %i.ab, %scevgep178
  %bound1180 = icmp ult ptr %i.et, %scevgep177
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %scalar.ph182.preheader, label %vector.body186

vector.body186:                                   ; preds = %vector.memcheck176, %vector.body186
  %index187 = phi i64 [ %index.next190, %vector.body186 ], [ 0, %vector.memcheck176 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %index187 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %wide.load188 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !16, !alias.scope !857
  %wide.load189 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !16, !alias.scope !857
  %i.ex = zext <4 x i8> %wide.load188 to <4 x i32>
  %i.ey = zext <4 x i8> %wide.load189 to <4 x i32>
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index187 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <4 x i32> %i.ex, ptr %i.ez, align 8, !tbaa !8, !alias.scope !860, !noalias !857
  store <4 x i32> %i.ey, ptr %i.fa, align 8, !tbaa !8, !alias.scope !860, !noalias !857
  %index.next190 = add nuw i64 %index187, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next190, %n.vec185
  br i1 %i.fb, label %middle.block191, label %vector.body186, !llvm.loop !862

middle.block191:                                  ; preds = %vector.body186
  br i1 %cmp.n192, label %.preheader.us.preheader, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %vector.memcheck176, %.preheader65.us, %middle.block191
  %indvars.iv84.ph = phi i64 [ 0, %vector.memcheck176 ], [ 0, %.preheader65.us ], [ %n.vec185, %middle.block191 ] ; 3 uses
  %i.fc = sub nsw i64 %i.dt, %indvars.iv84.ph
  br i1 %lcmp.mod223.not, label %scalar.ph182.prol.loopexit, label %scalar.ph182.prol

scalar.ph182.prol:                                ; preds = %scalar.ph182.preheader, %scalar.ph182.prol
  %indvars.iv84.prol = phi i64 [ %indvars.iv.next85.prol, %scalar.ph182.prol ], [ %indvars.iv84.ph, %scalar.ph182.preheader ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %scalar.ph182.prol ], [ 0, %scalar.ph182.preheader ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv84.prol
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !16
  %i.ff = zext i8 %i.fe to i32
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv84.prol
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !8
  %indvars.iv.next85.prol = add nuw nsw i64 %indvars.iv84.prol, 1 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %scalar.ph182.prol.loopexit, label %scalar.ph182.prol, !llvm.loop !863

scalar.ph182.prol.loopexit:                       ; preds = %scalar.ph182.prol, %scalar.ph182.preheader
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %scalar.ph182.preheader ], [ %indvars.iv.next85.prol, %scalar.ph182.prol ]
  %i.fh = icmp ult i64 %i.fc, 3
  br i1 %i.fh, label %.preheader.us.preheader, label %scalar.ph182

scalar.ph182:                                     ; preds = %scalar.ph182.prol.loopexit, %scalar.ph182
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.3, %scalar.ph182 ], [ %indvars.iv84.unr, %scalar.ph182.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv84
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !16
  %i.fk = zext i8 %i.fj to i32
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv84
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !8
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv.next85
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  %i.fo = zext i8 %i.fn to i32
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next85
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !8
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv.next85.1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !16
  %i.fs = zext i8 %i.fr to i32
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next85.1
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !8
  %indvars.iv.next85.2 = add nuw nsw i64 %indvars.iv84, 3 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv.next85.2
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !16
  %i.fw = zext i8 %i.fv to i32
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next85.2
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !8
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %exitcond88.not.3 = icmp eq i64 %indvars.iv.next85.3, %i.aa
  br i1 %exitcond88.not.3, label %.preheader.us.preheader, label %scalar.ph182, !llvm.loop !864

.preheader.us.preheader:                          ; preds = %scalar.ph182.prol.loopexit, %scalar.ph182, %middle.block191
  %scevgep158 = getelementptr i8, ptr %i.ep, i64 %i.eq
  %bound0159 = icmp ult ptr %i.ab, %scevgep158
  %bound1160 = icmp ult ptr %scevgep157, %scevgep156
  %found.conflict161 = and i1 %bound0159, %bound1160
  br label %.preheader.us

scalar.ph162:                                     ; preds = %scalar.ph162.prol.loopexit, %scalar.ph162
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %scalar.ph162 ], [ %indvars.iv89.unr, %scalar.ph162.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv89 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv89
  %i.ga = load i8, ptr %gep, align 1, !tbaa !16
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nsw i32 %i.fz, %i.gb
  store i32 %i.gc, ptr %i.fy, align 4, !tbaa !8
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next90 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90
  %i.gf = load i8, ptr %gep.1, align 1, !tbaa !16
  %i.gg = zext i8 %i.gf to i32
  %i.gh = add nsw i32 %i.ge, %i.gg
  store i32 %i.gh, ptr %i.gd, align 4, !tbaa !8
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next90.1 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90.1
  %i.gk = load i8, ptr %gep.2, align 1, !tbaa !16
  %i.gl = zext i8 %i.gk to i32
  %i.gm = add nsw i32 %i.gj, %i.gl
  store i32 %i.gm, ptr %i.gi, align 4, !tbaa !8
  %indvars.iv.next90.2 = add nuw nsw i64 %indvars.iv89, 3 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next90.2 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90.2
  %i.gp = load i8, ptr %gep.3, align 1, !tbaa !16
  %i.gq = zext i8 %i.gp to i32
  %i.gr = add nsw i32 %i.go, %i.gq
  store i32 %i.gr, ptr %i.gn, align 4, !tbaa !8
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 2 uses
  %exitcond93.not.3 = icmp eq i64 %indvars.iv.next90.3, %i.aa
  br i1 %exitcond93.not.3, label %.loopexit, label %scalar.ph162, !llvm.loop !865

.loopexit:                                        ; preds = %scalar.ph162.prol.loopexit, %scalar.ph162, %middle.block173
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, %i.aa ; 2 uses
  %i.gs = icmp samesign ult i64 %indvars.iv.next95, %i.dm
  br i1 %i.gs, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !866

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.gt = mul i64 %i.ar, %indvars.iv102
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gt ; 6 uses
  %.reass235 = add i64 %i.er, %invariant.op234
  %diff.check142 = icmp ult i64 %.reass235, 31
  %or.cond = select i1 %min.iters.check144, i1 true, i1 %diff.check142
  br i1 %or.cond, label %..preheader62_crit_edge.us.preheader215, label %vector.body147

vector.body147:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body147
  %index148 = phi i64 [ %index.next151, %vector.body147 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index148 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load149 = load <4 x i32>, ptr %i.gv, align 8, !tbaa !8
  %wide.load150 = load <4 x i32>, ptr %i.gw, align 8, !tbaa !8
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index148 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <4 x i32> %wide.load149, ptr %i.gx, align 4, !tbaa !8
  store <4 x i32> %wide.load150, ptr %i.gy, align 4, !tbaa !8
  %index.next151 = add nuw i64 %index148, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.gz, label %middle.block152, label %vector.body147, !llvm.loop !867

middle.block152:                                  ; preds = %vector.body147
  br i1 %cmp.n153, label %.loopexit63.us, label %..preheader62_crit_edge.us.preheader215

..preheader62_crit_edge.us.preheader215:          ; preds = %..preheader62_crit_edge.us.preheader, %middle.block152
  %indvars.iv97.ph = phi i64 [ 0, %..preheader62_crit_edge.us.preheader ], [ %n.vec146, %middle.block152 ] ; 3 uses
  %i.ha = sub nsw i64 %i.dt, %indvars.iv97.ph
  br i1 %lcmp.mod229.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol

..preheader62_crit_edge.us.prol:                  ; preds = %..preheader62_crit_edge.us.preheader215, %..preheader62_crit_edge.us.prol
  %indvars.iv97.prol = phi i64 [ %indvars.iv.next98.prol, %..preheader62_crit_edge.us.prol ], [ %indvars.iv97.ph, %..preheader62_crit_edge.us.preheader215 ] ; 3 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %..preheader62_crit_edge.us.prol ], [ 0, %..preheader62_crit_edge.us.preheader215 ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv97.prol
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !8
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv97.prol
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !8
  %indvars.iv.next98.prol = add nuw nsw i64 %indvars.iv97.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol, !llvm.loop !868

..preheader62_crit_edge.us.prol.loopexit:         ; preds = %..preheader62_crit_edge.us.prol, %..preheader62_crit_edge.us.preheader215
  %indvars.iv97.unr = phi i64 [ %indvars.iv97.ph, %..preheader62_crit_edge.us.preheader215 ], [ %indvars.iv.next98.prol, %..preheader62_crit_edge.us.prol ]
  %i.he = icmp ult i64 %i.ha, 3
  br i1 %i.he, label %.loopexit63.us, label %..preheader62_crit_edge.us
end_hunk_0
begin_hunk_1_@_ZNK2cv15ReduceC_InvokerIhiiNS_5OpAddIiiiEENS_5OpNopIiiiEEEclERKNS_5RangeE:bb.a
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 %indvars.iv.prol
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !16
  %i.ja = zext i8 %i.iz to i32
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.prol
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol, !llvm.loop !883

scalar.ph127.prol.loopexit:                       ; preds = %scalar.ph127.prol, %scalar.ph127.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph127.preheader ], [ %indvars.iv.next.prol, %scalar.ph127.prol ]
  %i.jc = icmp ult i64 %i.ix, 3
  br i1 %i.jc, label %.preheader64.preheader, label %scalar.ph127

scalar.ph127:                                     ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph127 ], [ %indvars.iv.unr, %scalar.ph127.prol.loopexit ] ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.io, i64 %indvars.iv
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !16
  %i.jf = zext i8 %i.je to i32
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.io, i64 %indvars.iv.next
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !16
  %i.jj = zext i8 %i.ji to i32
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.io, i64 %indvars.iv.next.1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !16
  %i.jn = zext i8 %i.jm to i32
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.io, i64 %indvars.iv.next.2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !16
  %i.jr = zext i8 %i.jq to i32
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.aa
  br i1 %exitcond.not.3, label %.preheader64.preheader, label %scalar.ph127, !llvm.loop !884

.preheader64.preheader:                           ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127, %middle.block136
  %i.jt = mul i64 %i.ar, %indvars.iv81
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.jt ; 6 uses
  %.reass = add i64 %i.im, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond214 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond214, label %.preheader64.preheader217, label %vector.body

vector.body:                                      ; preds = %.preheader64.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader64.preheader ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %wide.load = load <4 x i32>, ptr %i.jv, align 8, !tbaa !8
  %wide.load124 = load <4 x i32>, ptr %i.jw, align 8, !tbaa !8
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %index ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store <4 x i32> %wide.load, ptr %i.jx, align 4, !tbaa !8
  store <4 x i32> %wide.load124, ptr %i.jy, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jz = icmp eq i64 %index.next, %n.vec
  br i1 %i.jz, label %middle.block, label %vector.body, !llvm.loop !885

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit63, label %.preheader64.preheader217

.preheader64.preheader217:                        ; preds = %.preheader64.preheader, %middle.block
  %indvars.iv76.ph = phi i64 [ 0, %.preheader64.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.ka = sub nsw i64 %i.dg, %indvars.iv76.ph
  br i1 %lcmp.mod220.not, label %.preheader64.prol.loopexit, label %.preheader64.prol

.preheader64.prol:                                ; preds = %.preheader64.preheader217, %.preheader64.prol
  %indvars.iv76.prol = phi i64 [ %indvars.iv.next77.prol, %.preheader64.prol ], [ %indvars.iv76.ph, %.preheader64.preheader217 ] ; 3 uses
  %prol.iter221 = phi i64 [ %prol.iter221.next, %.preheader64.prol ], [ 0, %.preheader64.preheader217 ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv76.prol
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !8
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv76.prol
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !8
  %indvars.iv.next77.prol = add nuw nsw i64 %indvars.iv76.prol, 1 ; 2 uses
  %prol.iter221.next = add i64 %prol.iter221, 1   ; 2 uses
  %prol.iter221.cmp.not = icmp eq i64 %prol.iter221.next, %xtraiter219
  br i1 %prol.iter221.cmp.not, label %.preheader64.prol.loopexit, label %.preheader64.prol, !llvm.loop !886

.preheader64.prol.loopexit:                       ; preds = %.preheader64.prol, %.preheader64.preheader217
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %.preheader64.preheader217 ], [ %indvars.iv.next77.prol, %.preheader64.prol ]
  %i.ke = icmp ult i64 %i.ka, 3
  br i1 %i.ke, label %.loopexit63, label %.preheader64

.preheader64:                                     ; preds = %.preheader64.prol.loopexit, %.preheader64
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.3, %.preheader64 ], [ %indvars.iv76.unr, %.preheader64.prol.loopexit ] ; 6 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv76
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !8
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv76
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !8
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next77
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !8
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next77
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !8
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next77.1
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !8
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next77.1
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !8
  %indvars.iv.next77.2 = add nuw nsw i64 %indvars.iv76, 3 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next77.2
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !8
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next77.2
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !8
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %exitcond80.not.3 = icmp eq i64 %indvars.iv.next77.3, %i.aa
  br i1 %exitcond80.not.3, label %.loopexit63, label %.preheader64, !llvm.loop !887

.loopexit63:                                      ; preds = %.preheader64.prol.loopexit, %.preheader64, %middle.block
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.kr = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.ks = sext i32 %i.kr to i64
  %i.kt = icmp slt i64 %indvars.iv.next82, %i.ks
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kt, label %.preheader65, label %._crit_edge, !llvm.loop !856
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15ReduceC_InvokerIhfiNS_5OpAddIiiiEENS_5OpNopIiiiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15ReduceC_InvokerIhfiNS_5OpAddIiiiEENS_5OpNopIiiiEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !888, !nonnull !455, !align !456 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = lshr i32 %i.c, 5                         ; 6 uses
  %i.e = and i32 %i.d, 127                        ; 7 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104  ; 4 uses
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.27, i32 noundef 109) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %i.h, 0
  br i1 %i.p, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.q = icmp eq i32 %i.h, 0
  %i.r = zext i1 %i.q to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.t = icmp eq i32 %i.h, 2
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.x = phi i32 [ %i.w, %bb.f ], [ %i.r, %.thread.i ]
  %i.y = mul i32 %i.x, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.z = zext nneg i32 %i.f to i64                ; 23 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 27 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !293
  %i.ac = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113 ; 4 uses
  %i.af = icmp slt i32 %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47 ; 13 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !890, !nonnull !455, !align !456 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47 ; 6 uses
  %i.aq = icmp eq i32 %i.y, %i.f
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ar = sext i32 %i.ac to i64                   ; 3 uses
  %i.as = sext i32 %i.ae to i64                   ; 2 uses
  %i.at = mul i64 %i.ap, %i.ar
  %scevgep194 = getelementptr i8, ptr %i.an, i64 %i.at
  %i.au = add nsw i64 %i.as, -1                   ; 2 uses
  %i.av = mul i64 %i.ap, %i.au
  %i.aw = and i32 %i.d, 127
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = getelementptr i8, ptr %i.an, i64 %i.av
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ay
  %scevgep195 = getelementptr i8, ptr %i.ba, i64 4
  %i.bb = mul i64 %i.aj, %i.ar
  %scevgep196 = getelementptr i8, ptr %i.ah, i64 %i.bb
  %i.bc = mul i64 %i.aj, %i.au
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.ax
  %scevgep197 = getelementptr i8, ptr %i.be, i64 1
  %i.bf = and i32 %i.d, 127
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 1
  %min.iters.check204 = icmp samesign ult i32 %i.e, 7
  %bound0198 = icmp ult ptr %scevgep194, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  %i.bi = or i64 %i.aj, %i.ap
  %i.bj = icmp slt i64 %i.bi, 0
  %i.bk = or i1 %found.conflict200, %i.bj
  %n.vec206 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec206, %i.z
  %xtraiter225 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br label %.preheader61.us

.preheader61.us:                                  ; preds = %.loopexit.us, %.lr.ph.split.us
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %.loopexit.us ], [ %i.ar, %.lr.ph.split.us ] ; 3 uses
  %i.bl = mul i64 %i.aj, %indvars.iv110
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bl ; 6 uses
  %i.bn = mul i64 %i.ap, %indvars.iv110
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bn ; 6 uses
  %brmerge = select i1 %min.iters.check204, i1 true, i1 %i.bk
  br i1 %brmerge, label %scalar.ph203.preheader, label %vector.body207

vector.body207:                                   ; preds = %.preheader61.us, %vector.body207
  %index208 = phi i64 [ %index.next211, %vector.body207 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index208 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %wide.load209 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !16, !alias.scope !891
  %wide.load210 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !16, !alias.scope !891
  %i.br = uitofp <4 x i8> %wide.load209 to <4 x float>
  %i.bs = uitofp <4 x i8> %wide.load210 to <4 x float>
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index208 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x float> %i.br, ptr %i.bt, align 4, !tbaa !79, !alias.scope !894, !noalias !891
  store <4 x float> %i.bs, ptr %i.bu, align 4, !tbaa !79, !alias.scope !894, !noalias !891
  %index.next211 = add nuw i64 %index208, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.bv, label %middle.block212, label %vector.body207, !llvm.loop !896

middle.block212:                                  ; preds = %vector.body207
  br i1 %cmp.n213, label %.loopexit.us, label %scalar.ph203.preheader

scalar.ph203.preheader:                           ; preds = %.preheader61.us, %middle.block212
  %indvars.iv105.ph = phi i64 [ %n.vec206, %middle.block212 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bw = sub nsw i64 %i.bg, %indvars.iv105.ph
  br i1 %lcmp.mod226.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol

scalar.ph203.prol:                                ; preds = %scalar.ph203.preheader, %scalar.ph203.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %scalar.ph203.prol ], [ %indvars.iv105.ph, %scalar.ph203.preheader ] ; 3 uses
  %prol.iter227 = phi i64 [ %prol.iter227.next, %scalar.ph203.prol ], [ 0, %scalar.ph203.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv105.prol
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = uitofp i8 %i.by to float
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv105.prol
  store float %i.bz, ptr %i.ca, align 4, !tbaa !79
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter227.next = add i64 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i64 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol, !llvm.loop !897

scalar.ph203.prol.loopexit:                       ; preds = %scalar.ph203.prol, %scalar.ph203.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %scalar.ph203.preheader ], [ %indvars.iv.next106.prol, %scalar.ph203.prol ]
  %i.cb = icmp ult i64 %i.bw, 3
  br i1 %i.cb, label %.loopexit.us, label %scalar.ph203

scalar.ph203:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %scalar.ph203 ], [ %indvars.iv105.unr, %scalar.ph203.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv105
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = uitofp i8 %i.cd to float
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv105
  store float %i.ce, ptr %i.cf, align 4, !tbaa !79
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next106
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = uitofp i8 %i.ch to float
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next106
  store float %i.ci, ptr %i.cj, align 4, !tbaa !79
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next106.1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = uitofp i8 %i.cl to float
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next106.1
  store float %i.cm, ptr %i.cn, align 4, !tbaa !79
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next106.2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = uitofp i8 %i.cp to float
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next106.2
  store float %i.cq, ptr %i.cr, align 4, !tbaa !79
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %indvars.iv.next106.3, %i.z
  br i1 %exitcond109.not.3, label %.loopexit.us, label %scalar.ph203, !llvm.loop !898

.loopexit.us:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203, %middle.block212
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next111, %i.as
  br i1 %i.cs, label %.preheader61.us, label %._crit_edge, !llvm.loop !899

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ct = icmp slt i32 %i.f, %i.y
  br i1 %i.ct, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.cu = sext i32 %i.ac to i64                   ; 2 uses
  %i.cv = sext i32 %i.ae to i64                   ; 2 uses
  %i.cw = and i32 %i.d, 127
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = getelementptr i8, ptr %4, i64 %i.cy
  %scevgep = getelementptr i8, ptr %i.cz, i64 20
  %i.da = mul i64 %i.aj, %i.cu
  %scevgep126 = getelementptr i8, ptr %i.ah, i64 %i.da
  %i.db = add nsw i64 %i.cv, -1
  %i.dc = mul i64 %i.aj, %i.db
  %i.dd = getelementptr i8, ptr %i.ah, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.cx
  %scevgep127 = getelementptr i8, ptr %i.de, i64 1
  %i.df = and i32 %i.d, 127
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 1
  %min.iters.check129 = icmp samesign ult i32 %i.e, 7
  %bound0 = icmp ult ptr %i.aa, %scevgep127
  %bound1 = icmp ult ptr %scevgep126, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.aj, 0
  %i.di = or i1 %found.conflict, %stride.check
  %n.vec131 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n138 = icmp eq i64 %n.vec131, %i.z
  %xtraiter = and i64 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.e, 7
  %n.vec = and i64 %i.z, 248                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br label %.preheader65

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.dj = zext i32 %i.y to i64                    ; 2 uses
  %i.dk = sext i32 %i.ac to i64                   ; 2 uses
  %i.dl = sext i32 %i.ae to i64                   ; 2 uses
  %i.dm = and i32 %i.d, 127
  %i.dn = zext nneg i32 %i.dm to i64              ; 9 uses
  %i.do = shl nuw nsw i64 %i.dn, 2
  %i.dp = getelementptr i8, ptr %4, i64 %i.do
  %scevgep153 = getelementptr i8, ptr %i.dp, i64 20
  %i.dq = mul i64 %i.aj, %i.dk                    ; 3 uses
  %i.dr = shl nuw nsw i64 %i.dn, 1                ; 4 uses
  %i.ds = add nuw nsw i64 %i.dr, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.dj)
  %i.dt = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dt, %i.dr
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dr, %umin
  %i.du = sub nsw i64 %i.dt, %6
  %7 = udiv i64 %i.du, %i.z
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.z
  %i.dv = shl nuw nsw i64 %i.dn, 2
  %i.dw = getelementptr i8, ptr %4, i64 %i.dv
  %scevgep174 = getelementptr i8, ptr %i.dw, i64 20
  %scevgep175 = getelementptr i8, ptr %i.ah, i64 %i.dq
  %i.dx = add nsw i64 %i.dl, -1
  %i.dy = mul i64 %i.aj, %i.dx
  %i.dz = getelementptr i8, ptr %i.ah, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dn
  %scevgep176 = getelementptr i8, ptr %i.ea, i64 1
  %i.eb = add nuw nsw i64 %i.dn, 1
  %i.ec = add nuw nsw i64 %i.dn, 1
  %i.ed = getelementptr i8, ptr %i.ah, i64 %i.dq
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.dn
  %i.ef = getelementptr i8, ptr %i.ee, i64 1
  %min.iters.check182 = icmp samesign ult i32 %i.e, 7
  %bound0177 = icmp ult ptr %i.aa, %scevgep176
  %bound1178 = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict179 = and i1 %bound0177, %bound1178
  %stride.check180 = icmp slt i64 %i.aj, 0
  %i.eg = or i1 %found.conflict179, %stride.check180
  %n.vec184 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec184, %i.z
  %xtraiter219 = and i64 %i.eb, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  %i.eh = getelementptr i8, ptr %i.ah, i64 %9
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.dq
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.dr
  %i.ek = getelementptr i8, ptr %i.ej, i64 2
  %min.iters.check160 = icmp samesign ult i32 %i.e, 7
  %n.vec162 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n171 = icmp eq i64 %n.vec162, %i.z
  %xtraiter222 = and i64 %i.ec, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %min.iters.check141 = icmp samesign ult i32 %i.e, 7
  %n.vec143 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n150 = icmp eq i64 %n.vec143, %i.z
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next, %.loopexit63.us ] ; 2 uses
  %indvars.iv102 = phi i64 [ %i.dk, %.preheader65.us.preheader ], [ %indvars.iv.next103, %.loopexit63.us ] ; 3 uses
  %i.el = mul i64 %i.aj, %indvar                  ; 2 uses
  %scevgep154 = getelementptr i8, ptr %i.ef, i64 %i.el
  %i.em = mul i64 %i.aj, %indvars.iv102
  %i.en = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.em ; 7 uses
  %brmerge228 = select i1 %min.iters.check182, i1 true, i1 %i.eg
  br i1 %brmerge228, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %.preheader65.us, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %.preheader65.us ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %index186 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %wide.load187 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !16, !alias.scope !900
  %wide.load188 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !16, !alias.scope !900
  %i.eq = zext <4 x i8> %wide.load187 to <4 x i32>
  %i.er = zext <4 x i8> %wide.load188 to <4 x i32>
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index186 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x i32> %i.eq, ptr %i.es, align 8, !tbaa !8, !alias.scope !903, !noalias !900
  store <4 x i32> %i.er, ptr %i.et, align 8, !tbaa !8, !alias.scope !903, !noalias !900
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.eu, label %middle.block190, label %vector.body185, !llvm.loop !905

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.preheader.us.preheader, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.preheader65.us, %middle.block190
  %indvars.iv84.ph = phi i64 [ %n.vec184, %middle.block190 ], [ 0, %.preheader65.us ] ; 3 uses
  %i.ev = sub nsw i64 %i.dn, %indvars.iv84.ph
  br i1 %lcmp.mod220.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader, %scalar.ph181.prol
  %indvars.iv84.prol = phi i64 [ %indvars.iv.next85.prol, %scalar.ph181.prol ], [ %indvars.iv84.ph, %scalar.ph181.preheader ] ; 3 uses
  %prol.iter221 = phi i64 [ %prol.iter221.next, %scalar.ph181.prol ], [ 0, %scalar.ph181.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv84.prol
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !16
  %i.ey = zext i8 %i.ex to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv84.prol
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !8
  %indvars.iv.next85.prol = add nuw nsw i64 %indvars.iv84.prol, 1 ; 2 uses
  %prol.iter221.next = add i64 %prol.iter221, 1   ; 2 uses
  %prol.iter221.cmp.not = icmp eq i64 %prol.iter221.next, %xtraiter219
  br i1 %prol.iter221.cmp.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol, !llvm.loop !906

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %scalar.ph181.preheader ], [ %indvars.iv.next85.prol, %scalar.ph181.prol ]
  %i.fa = icmp ult i64 %i.ev, 3
  br i1 %i.fa, label %.preheader.us.preheader, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.3, %scalar.ph181 ], [ %indvars.iv84.unr, %scalar.ph181.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv84
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !16
  %i.fd = zext i8 %i.fc to i32
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv84
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !8
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next85
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !16
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next85
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !8
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next85.1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !16
  %i.fl = zext i8 %i.fk to i32
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next85.1
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !8
  %indvars.iv.next85.2 = add nuw nsw i64 %indvars.iv84, 3 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next85.2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !16
  %i.fp = zext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next85.2
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !8
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %exitcond88.not.3 = icmp eq i64 %indvars.iv.next85.3, %i.z
  br i1 %exitcond88.not.3, label %.preheader.us.preheader, label %scalar.ph181, !llvm.loop !907

.preheader.us.preheader:                          ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block190
  %scevgep155 = getelementptr i8, ptr %i.ek, i64 %i.el
  %bound0156 = icmp ult ptr %i.aa, %scevgep155
  %bound1157 = icmp ult ptr %scevgep154, %scevgep153
  %found.conflict158 = and i1 %bound0156, %bound1157
  br label %.preheader.us

scalar.ph159:                                     ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %scalar.ph159 ], [ %indvars.iv89.unr, %scalar.ph159.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv89 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv89
  %i.ft = load i8, ptr %gep, align 1, !tbaa !16
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nsw i32 %i.fs, %i.fu
  store i32 %i.fv, ptr %i.fr, align 4, !tbaa !8
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next90 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90
  %i.fy = load i8, ptr %gep.1, align 1, !tbaa !16
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add nsw i32 %i.fx, %i.fz
  store i32 %i.ga, ptr %i.fw, align 4, !tbaa !8
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next90.1 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90.1
  %i.gd = load i8, ptr %gep.2, align 1, !tbaa !16
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nsw i32 %i.gc, %i.ge
  store i32 %i.gf, ptr %i.gb, align 4, !tbaa !8
  %indvars.iv.next90.2 = add nuw nsw i64 %indvars.iv89, 3 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next90.2 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90.2
  %i.gi = load i8, ptr %gep.3, align 1, !tbaa !16
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gh, %i.gj
  store i32 %i.gk, ptr %i.gg, align 4, !tbaa !8
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 2 uses
  %exitcond93.not.3 = icmp eq i64 %indvars.iv.next90.3, %i.z
  br i1 %exitcond93.not.3, label %.loopexit, label %scalar.ph159, !llvm.loop !908

.loopexit:                                        ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159, %middle.block170
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, %i.z ; 2 uses
  %i.gl = icmp samesign ult i64 %indvars.iv.next95, %i.dj
  br i1 %i.gl, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !909

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.gm = mul i64 %i.ap, %indvars.iv102
  %i.gn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.gm ; 2 uses
  br i1 %min.iters.check141, label %..preheader62_crit_edge.us.preheader215, label %vector.body144

vector.body144:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body144
  %index145 = phi i64 [ %index.next148, %vector.body144 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index145 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load146 = load <4 x i32>, ptr %i.go, align 8, !tbaa !8
  %wide.load147 = load <4 x i32>, ptr %i.gp, align 8, !tbaa !8
  %i.gq = sitofp <4 x i32> %wide.load146 to <4 x float>
  %i.gr = sitofp <4 x i32> %wide.load147 to <4 x float>
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %index145 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <4 x float> %i.gq, ptr %i.gs, align 4, !tbaa !79
  store <4 x float> %i.gr, ptr %i.gt, align 4, !tbaa !79
  %index.next148 = add nuw i64 %index145, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.gu, label %middle.block149, label %vector.body144, !llvm.loop !910

middle.block149:                                  ; preds = %vector.body144
  br i1 %cmp.n150, label %.loopexit63.us, label %..preheader62_crit_edge.us.preheader215

..preheader62_crit_edge.us.preheader215:          ; preds = %..preheader62_crit_edge.us.preheader, %middle.block149
  %indvars.iv97.ph = phi i64 [ 0, %..preheader62_crit_edge.us.preheader ], [ %n.vec143, %middle.block149 ]
  br label %..preheader62_crit_edge.us

..preheader62_crit_edge.us:                       ; preds = %..preheader62_crit_edge.us.preheader215, %..preheader62_crit_edge.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %..preheader62_crit_edge.us ], [ %indvars.iv97.ph, %..preheader62_crit_edge.us.preheader215 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv97
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !8
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv97
  store float %i.gx, ptr %i.gy, align 4, !tbaa !79
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %i.z
  br i1 %exitcond101.not, label %.loopexit63.us, label %..preheader62_crit_edge.us, !llvm.loop !911

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.loopexit ], [ %i.z, %.preheader.us.preheader ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv94 ; 6 uses
  %brmerge229 = select i1 %min.iters.check160, i1 true, i1 %found.conflict158
  br i1 %brmerge229, label %scalar.ph159.preheader, label %vector.body163

vector.body163:                                   ; preds = %.preheader.us, %vector.body163
  %index164 = phi i64 [ %index.next169, %vector.body163 ], [ 0, %.preheader.us ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index164 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %wide.load165 = load <4 x i32>, ptr %i.gz, align 8, !tbaa !8, !alias.scope !912, !noalias !915
  %wide.load166 = load <4 x i32>, ptr %i.ha, align 8, !tbaa !8, !alias.scope !912, !noalias !915
  %i.hb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index164 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %wide.load167 = load <4 x i8>, ptr %i.hb, align 1, !tbaa !16, !alias.scope !915
  %wide.load168 = load <4 x i8>, ptr %i.hc, align 1, !tbaa !16, !alias.scope !915
  %i.hd = zext <4 x i8> %wide.load167 to <4 x i32>
  %i.he = zext <4 x i8> %wide.load168 to <4 x i32>
end_hunk_1
begin_hunk_2_@_ZNK2cv15ReduceC_InvokerIhfiNS_5OpAddIiiiEENS_5OpNopIiiiEEEclERKNS_5RangeE:bb.a
  ret void

.preheader65:                                     ; preds = %.preheader65.preheader, %.loopexit63
  %indvars.iv81 = phi i64 [ %i.cu, %.preheader65.preheader ], [ %indvars.iv.next82, %.loopexit63 ] ; 3 uses
  %i.hs = mul i64 %i.aj, %indvars.iv81
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.hs ; 6 uses
  %brmerge230 = select i1 %min.iters.check129, i1 true, i1 %i.di
  br i1 %brmerge230, label %scalar.ph128.preheader, label %vector.body132

vector.body132:                                   ; preds = %.preheader65, %vector.body132
  %index133 = phi i64 [ %index.next136, %vector.body132 ], [ 0, %.preheader65 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %index133 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %wide.load134 = load <4 x i8>, ptr %i.hu, align 1, !tbaa !16, !alias.scope !919
  %wide.load135 = load <4 x i8>, ptr %i.hv, align 1, !tbaa !16, !alias.scope !919
  %i.hw = zext <4 x i8> %wide.load134 to <4 x i32>
  %i.hx = zext <4 x i8> %wide.load135 to <4 x i32>
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index133 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store <4 x i32> %i.hw, ptr %i.hy, align 8, !tbaa !8, !alias.scope !922, !noalias !919
  store <4 x i32> %i.hx, ptr %i.hz, align 8, !tbaa !8, !alias.scope !922, !noalias !919
  %index.next136 = add nuw i64 %index133, 8       ; 2 uses
  %i.ia = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.ia, label %middle.block137, label %vector.body132, !llvm.loop !924

middle.block137:                                  ; preds = %vector.body132
  br i1 %cmp.n138, label %.preheader64.preheader, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %.preheader65, %middle.block137
  %indvars.iv.ph = phi i64 [ %n.vec131, %middle.block137 ], [ 0, %.preheader65 ] ; 3 uses
  %i.ib = sub nsw i64 %i.dg, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol

scalar.ph128.prol:                                ; preds = %scalar.ph128.preheader, %scalar.ph128.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph128.prol ], [ %indvars.iv.ph, %scalar.ph128.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph128.prol ], [ 0, %scalar.ph128.preheader ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.prol
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !16
  %i.ie = zext i8 %i.id to i32
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.prol
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol, !llvm.loop !925

scalar.ph128.prol.loopexit:                       ; preds = %scalar.ph128.prol, %scalar.ph128.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph128.preheader ], [ %indvars.iv.next.prol, %scalar.ph128.prol ]
  %i.ig = icmp ult i64 %i.ib, 3
  br i1 %i.ig, label %.preheader64.preheader, label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph128 ], [ %indvars.iv.unr, %scalar.ph128.prol.loopexit ] ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !16
  %i.ij = zext i8 %i.ii to i32
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.next
  %i.im = load i8, ptr %i.il, align 1, !tbaa !16
  %i.in = zext i8 %i.im to i32
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next
  store i32 %i.in, ptr %i.io, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.next.1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !16
  %i.ir = zext i8 %i.iq to i32
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.1
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.next.2
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !16
  %i.iv = zext i8 %i.iu to i32
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.2
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.z
  br i1 %exitcond.not.3, label %.preheader64.preheader, label %scalar.ph128, !llvm.loop !926

.preheader64.preheader:                           ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128, %middle.block137
  %i.ix = mul i64 %i.ap, %indvars.iv81
  %i.iy = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ix ; 2 uses
  br i1 %min.iters.check, label %.preheader64.preheader217, label %vector.body

vector.body:                                      ; preds = %.preheader64.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader64.preheader ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load = load <4 x i32>, ptr %i.iz, align 8, !tbaa !8
  %wide.load125 = load <4 x i32>, ptr %i.ja, align 8, !tbaa !8
  %i.jb = sitofp <4 x i32> %wide.load to <4 x float>
  %i.jc = sitofp <4 x i32> %wide.load125 to <4 x float>
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %index ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <4 x float> %i.jb, ptr %i.jd, align 4, !tbaa !79
  store <4 x float> %i.jc, ptr %i.je, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jf = icmp eq i64 %index.next, %n.vec
  br i1 %i.jf, label %middle.block, label %vector.body, !llvm.loop !927

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit63, label %.preheader64.preheader217

.preheader64.preheader217:                        ; preds = %.preheader64.preheader, %middle.block
  %indvars.iv76.ph = phi i64 [ 0, %.preheader64.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader64

.preheader64:                                     ; preds = %.preheader64.preheader217, %.preheader64
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %.preheader64 ], [ %indvars.iv76.ph, %.preheader64.preheader217 ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv76
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !8
  %i.ji = sitofp i32 %i.jh to float
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv76
  store float %i.ji, ptr %i.jj, align 4, !tbaa !79
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %i.z
  br i1 %exitcond80.not, label %.loopexit63, label %.preheader64, !llvm.loop !928

.loopexit63:                                      ; preds = %.preheader64, %middle.block
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.jk = icmp slt i64 %indvars.iv.next82, %i.cv
  br i1 %i.jk, label %.preheader65, label %._crit_edge, !llvm.loop !899
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15ReduceC_InvokerIhdiNS_5OpAddIiiiEENS_5OpNopIiiiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15ReduceC_InvokerIhdiNS_5OpAddIiiiEENS_5OpNopIiiiEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !929, !nonnull !455, !align !456 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = lshr i32 %i.c, 5                         ; 6 uses
  %i.e = and i32 %i.d, 127                        ; 7 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104  ; 4 uses
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.27, i32 noundef 109) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %i.h, 0
  br i1 %i.p, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.q = icmp eq i32 %i.h, 0
  %i.r = zext i1 %i.q to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.t = icmp eq i32 %i.h, 2
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.x = phi i32 [ %i.w, %bb.f ], [ %i.r, %.thread.i ]
  %i.y = mul i32 %i.x, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.z = zext nneg i32 %i.f to i64                ; 23 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 27 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !293
  %i.ac = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113 ; 4 uses
  %i.af = icmp slt i32 %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47 ; 13 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !931, !nonnull !455, !align !456 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47 ; 6 uses
  %i.aq = icmp eq i32 %i.y, %i.f
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ar = sext i32 %i.ac to i64                   ; 3 uses
  %i.as = sext i32 %i.ae to i64                   ; 2 uses
  %i.at = mul i64 %i.ap, %i.ar
  %scevgep194 = getelementptr i8, ptr %i.an, i64 %i.at
  %i.au = add nsw i64 %i.as, -1                   ; 2 uses
  %i.av = mul i64 %i.ap, %i.au
  %i.aw = and i32 %i.d, 127
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = getelementptr i8, ptr %i.an, i64 %i.av
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ay
  %scevgep195 = getelementptr i8, ptr %i.ba, i64 8
  %i.bb = mul i64 %i.aj, %i.ar
  %scevgep196 = getelementptr i8, ptr %i.ah, i64 %i.bb
  %i.bc = mul i64 %i.aj, %i.au
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.ax
  %scevgep197 = getelementptr i8, ptr %i.be, i64 1
  %i.bf = and i32 %i.d, 127
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 1
  %min.iters.check204 = icmp samesign ult i32 %i.e, 5
  %bound0198 = icmp ult ptr %scevgep194, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  %i.bi = or i64 %i.aj, %i.ap
  %i.bj = icmp slt i64 %i.bi, 0
  %i.bk = or i1 %found.conflict200, %i.bj
  %n.vec206 = and i64 %i.z, 252                   ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec206, %i.z
  %xtraiter225 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br label %.preheader61.us

.preheader61.us:                                  ; preds = %.loopexit.us, %.lr.ph.split.us
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %.loopexit.us ], [ %i.ar, %.lr.ph.split.us ] ; 3 uses
  %i.bl = mul i64 %i.aj, %indvars.iv110
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bl ; 6 uses
  %i.bn = mul i64 %i.ap, %indvars.iv110
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bn ; 6 uses
  %brmerge = select i1 %min.iters.check204, i1 true, i1 %i.bk
  br i1 %brmerge, label %scalar.ph203.preheader, label %vector.body207

vector.body207:                                   ; preds = %.preheader61.us, %vector.body207
  %index208 = phi i64 [ %index.next211, %vector.body207 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index208 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %wide.load209 = load <2 x i8>, ptr %i.bp, align 1, !tbaa !16, !alias.scope !932
  %wide.load210 = load <2 x i8>, ptr %i.bq, align 1, !tbaa !16, !alias.scope !932
  %i.br = uitofp <2 x i8> %wide.load209 to <2 x double>
  %i.bs = uitofp <2 x i8> %wide.load210 to <2 x double>
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index208 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> %i.br, ptr %i.bt, align 8, !tbaa !76, !alias.scope !935, !noalias !932
  store <2 x double> %i.bs, ptr %i.bu, align 8, !tbaa !76, !alias.scope !935, !noalias !932
  %index.next211 = add nuw i64 %index208, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.bv, label %middle.block212, label %vector.body207, !llvm.loop !937

middle.block212:                                  ; preds = %vector.body207
  br i1 %cmp.n213, label %.loopexit.us, label %scalar.ph203.preheader

scalar.ph203.preheader:                           ; preds = %.preheader61.us, %middle.block212
  %indvars.iv105.ph = phi i64 [ %n.vec206, %middle.block212 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bw = sub nsw i64 %i.bg, %indvars.iv105.ph
  br i1 %lcmp.mod226.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol

scalar.ph203.prol:                                ; preds = %scalar.ph203.preheader, %scalar.ph203.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %scalar.ph203.prol ], [ %indvars.iv105.ph, %scalar.ph203.preheader ] ; 3 uses
  %prol.iter227 = phi i64 [ %prol.iter227.next, %scalar.ph203.prol ], [ 0, %scalar.ph203.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv105.prol
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = uitofp i8 %i.by to double
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv105.prol
  store double %i.bz, ptr %i.ca, align 8, !tbaa !76
  %indvars.iv.next106.prol = add nuw nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter227.next = add i64 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i64 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %scalar.ph203.prol.loopexit, label %scalar.ph203.prol, !llvm.loop !938

scalar.ph203.prol.loopexit:                       ; preds = %scalar.ph203.prol, %scalar.ph203.preheader
  %indvars.iv105.unr = phi i64 [ %indvars.iv105.ph, %scalar.ph203.preheader ], [ %indvars.iv.next106.prol, %scalar.ph203.prol ]
  %i.cb = icmp ult i64 %i.bw, 3
  br i1 %i.cb, label %.loopexit.us, label %scalar.ph203

scalar.ph203:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %scalar.ph203 ], [ %indvars.iv105.unr, %scalar.ph203.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv105
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = uitofp i8 %i.cd to double
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv105
  store double %i.ce, ptr %i.cf, align 8, !tbaa !76
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next106
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = uitofp i8 %i.ch to double
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next106
  store double %i.ci, ptr %i.cj, align 8, !tbaa !76
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next106.1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = uitofp i8 %i.cl to double
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next106.1
  store double %i.cm, ptr %i.cn, align 8, !tbaa !76
  %indvars.iv.next106.2 = add nuw nsw i64 %indvars.iv105, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next106.2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = uitofp i8 %i.cp to double
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next106.2
  store double %i.cq, ptr %i.cr, align 8, !tbaa !76
  %indvars.iv.next106.3 = add nuw nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %indvars.iv.next106.3, %i.z
  br i1 %exitcond109.not.3, label %.loopexit.us, label %scalar.ph203, !llvm.loop !939

.loopexit.us:                                     ; preds = %scalar.ph203.prol.loopexit, %scalar.ph203, %middle.block212
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next111, %i.as
  br i1 %i.cs, label %.preheader61.us, label %._crit_edge, !llvm.loop !940

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ct = icmp slt i32 %i.f, %i.y
  br i1 %i.ct, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.cu = sext i32 %i.ac to i64                   ; 2 uses
  %i.cv = sext i32 %i.ae to i64                   ; 2 uses
  %i.cw = and i32 %i.d, 127
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = getelementptr i8, ptr %4, i64 %i.cy
  %scevgep = getelementptr i8, ptr %i.cz, i64 20
  %i.da = mul i64 %i.aj, %i.cu
  %scevgep126 = getelementptr i8, ptr %i.ah, i64 %i.da
  %i.db = add nsw i64 %i.cv, -1
  %i.dc = mul i64 %i.aj, %i.db
  %i.dd = getelementptr i8, ptr %i.ah, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.cx
  %scevgep127 = getelementptr i8, ptr %i.de, i64 1
  %i.df = and i32 %i.d, 127
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 1
  %min.iters.check129 = icmp samesign ult i32 %i.e, 7
  %bound0 = icmp ult ptr %i.aa, %scevgep127
  %bound1 = icmp ult ptr %scevgep126, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.aj, 0
  %i.di = or i1 %found.conflict, %stride.check
  %n.vec131 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n138 = icmp eq i64 %n.vec131, %i.z
  %xtraiter = and i64 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.e, 3
  %n.vec = and i64 %i.z, 252                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br label %.preheader65

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.dj = zext i32 %i.y to i64                    ; 2 uses
  %i.dk = sext i32 %i.ac to i64                   ; 2 uses
  %i.dl = sext i32 %i.ae to i64                   ; 2 uses
  %i.dm = and i32 %i.d, 127
  %i.dn = zext nneg i32 %i.dm to i64              ; 9 uses
  %i.do = shl nuw nsw i64 %i.dn, 2
  %i.dp = getelementptr i8, ptr %4, i64 %i.do
  %scevgep153 = getelementptr i8, ptr %i.dp, i64 20
  %i.dq = mul i64 %i.aj, %i.dk                    ; 3 uses
  %i.dr = shl nuw nsw i64 %i.dn, 1                ; 4 uses
  %i.ds = add nuw nsw i64 %i.dr, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.dj)
  %i.dt = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dt, %i.dr
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dr, %umin
  %i.du = sub nsw i64 %i.dt, %6
  %7 = udiv i64 %i.du, %i.z
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.z
  %i.dv = shl nuw nsw i64 %i.dn, 2
  %i.dw = getelementptr i8, ptr %4, i64 %i.dv
  %scevgep174 = getelementptr i8, ptr %i.dw, i64 20
  %scevgep175 = getelementptr i8, ptr %i.ah, i64 %i.dq
  %i.dx = add nsw i64 %i.dl, -1
  %i.dy = mul i64 %i.aj, %i.dx
  %i.dz = getelementptr i8, ptr %i.ah, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dn
  %scevgep176 = getelementptr i8, ptr %i.ea, i64 1
  %i.eb = add nuw nsw i64 %i.dn, 1
  %i.ec = add nuw nsw i64 %i.dn, 1
  %i.ed = getelementptr i8, ptr %i.ah, i64 %i.dq
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.dn
  %i.ef = getelementptr i8, ptr %i.ee, i64 1
  %min.iters.check182 = icmp samesign ult i32 %i.e, 7
  %bound0177 = icmp ult ptr %i.aa, %scevgep176
  %bound1178 = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict179 = and i1 %bound0177, %bound1178
  %stride.check180 = icmp slt i64 %i.aj, 0
  %i.eg = or i1 %found.conflict179, %stride.check180
  %n.vec184 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec184, %i.z
  %xtraiter219 = and i64 %i.eb, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  %i.eh = getelementptr i8, ptr %i.ah, i64 %9
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.dq
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.dr
  %i.ek = getelementptr i8, ptr %i.ej, i64 2
  %min.iters.check160 = icmp samesign ult i32 %i.e, 7
  %n.vec162 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n171 = icmp eq i64 %n.vec162, %i.z
  %xtraiter222 = and i64 %i.ec, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %min.iters.check141 = icmp samesign ult i32 %i.e, 3
  %n.vec143 = and i64 %i.z, 252                   ; 3 uses
  %cmp.n150 = icmp eq i64 %n.vec143, %i.z
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next, %.loopexit63.us ] ; 2 uses
  %indvars.iv102 = phi i64 [ %i.dk, %.preheader65.us.preheader ], [ %indvars.iv.next103, %.loopexit63.us ] ; 3 uses
  %i.el = mul i64 %i.aj, %indvar                  ; 2 uses
  %scevgep154 = getelementptr i8, ptr %i.ef, i64 %i.el
  %i.em = mul i64 %i.aj, %indvars.iv102
  %i.en = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.em ; 7 uses
  %brmerge228 = select i1 %min.iters.check182, i1 true, i1 %i.eg
  br i1 %brmerge228, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %.preheader65.us, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %.preheader65.us ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %index186 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %wide.load187 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !16, !alias.scope !941
  %wide.load188 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !16, !alias.scope !941
  %i.eq = zext <4 x i8> %wide.load187 to <4 x i32>
  %i.er = zext <4 x i8> %wide.load188 to <4 x i32>
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index186 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x i32> %i.eq, ptr %i.es, align 8, !tbaa !8, !alias.scope !944, !noalias !941
  store <4 x i32> %i.er, ptr %i.et, align 8, !tbaa !8, !alias.scope !944, !noalias !941
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.eu, label %middle.block190, label %vector.body185, !llvm.loop !946

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.preheader.us.preheader, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.preheader65.us, %middle.block190
  %indvars.iv84.ph = phi i64 [ %n.vec184, %middle.block190 ], [ 0, %.preheader65.us ] ; 3 uses
  %i.ev = sub nsw i64 %i.dn, %indvars.iv84.ph
  br i1 %lcmp.mod220.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader, %scalar.ph181.prol
  %indvars.iv84.prol = phi i64 [ %indvars.iv.next85.prol, %scalar.ph181.prol ], [ %indvars.iv84.ph, %scalar.ph181.preheader ] ; 3 uses
  %prol.iter221 = phi i64 [ %prol.iter221.next, %scalar.ph181.prol ], [ 0, %scalar.ph181.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv84.prol
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !16
  %i.ey = zext i8 %i.ex to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv84.prol
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !8
  %indvars.iv.next85.prol = add nuw nsw i64 %indvars.iv84.prol, 1 ; 2 uses
  %prol.iter221.next = add i64 %prol.iter221, 1   ; 2 uses
  %prol.iter221.cmp.not = icmp eq i64 %prol.iter221.next, %xtraiter219
  br i1 %prol.iter221.cmp.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol, !llvm.loop !947

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %scalar.ph181.preheader ], [ %indvars.iv.next85.prol, %scalar.ph181.prol ]
  %i.fa = icmp ult i64 %i.ev, 3
  br i1 %i.fa, label %.preheader.us.preheader, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.3, %scalar.ph181 ], [ %indvars.iv84.unr, %scalar.ph181.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv84
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !16
  %i.fd = zext i8 %i.fc to i32
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv84
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !8
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next85
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !16
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next85
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !8
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next85.1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !16
  %i.fl = zext i8 %i.fk to i32
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next85.1
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !8
  %indvars.iv.next85.2 = add nuw nsw i64 %indvars.iv84, 3 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next85.2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !16
  %i.fp = zext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next85.2
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !8
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %exitcond88.not.3 = icmp eq i64 %indvars.iv.next85.3, %i.z
  br i1 %exitcond88.not.3, label %.preheader.us.preheader, label %scalar.ph181, !llvm.loop !948

.preheader.us.preheader:                          ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block190
  %scevgep155 = getelementptr i8, ptr %i.ek, i64 %i.el
  %bound0156 = icmp ult ptr %i.aa, %scevgep155
  %bound1157 = icmp ult ptr %scevgep154, %scevgep153
  %found.conflict158 = and i1 %bound0156, %bound1157
  br label %.preheader.us

scalar.ph159:                                     ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %scalar.ph159 ], [ %indvars.iv89.unr, %scalar.ph159.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv89 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv89
  %i.ft = load i8, ptr %gep, align 1, !tbaa !16
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nsw i32 %i.fs, %i.fu
  store i32 %i.fv, ptr %i.fr, align 4, !tbaa !8
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next90 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90
  %i.fy = load i8, ptr %gep.1, align 1, !tbaa !16
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add nsw i32 %i.fx, %i.fz
  store i32 %i.ga, ptr %i.fw, align 4, !tbaa !8
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next90.1 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90.1
  %i.gd = load i8, ptr %gep.2, align 1, !tbaa !16
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nsw i32 %i.gc, %i.ge
  store i32 %i.gf, ptr %i.gb, align 4, !tbaa !8
  %indvars.iv.next90.2 = add nuw nsw i64 %indvars.iv89, 3 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next90.2 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !8
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next90.2
  %i.gi = load i8, ptr %gep.3, align 1, !tbaa !16
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gh, %i.gj
  store i32 %i.gk, ptr %i.gg, align 4, !tbaa !8
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 2 uses
  %exitcond93.not.3 = icmp eq i64 %indvars.iv.next90.3, %i.z
  br i1 %exitcond93.not.3, label %.loopexit, label %scalar.ph159, !llvm.loop !949

.loopexit:                                        ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159, %middle.block170
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, %i.z ; 2 uses
  %i.gl = icmp samesign ult i64 %indvars.iv.next95, %i.dj
  br i1 %i.gl, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !950

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.gm = mul i64 %i.ap, %indvars.iv102
  %i.gn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.gm ; 2 uses
  br i1 %min.iters.check141, label %..preheader62_crit_edge.us.preheader215, label %vector.body144

vector.body144:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body144
  %index145 = phi i64 [ %index.next148, %vector.body144 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index145 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %wide.load146 = load <2 x i32>, ptr %i.go, align 8, !tbaa !8
  %wide.load147 = load <2 x i32>, ptr %i.gp, align 8, !tbaa !8
  %i.gq = sitofp <2 x i32> %wide.load146 to <2 x double>
  %i.gr = sitofp <2 x i32> %wide.load147 to <2 x double>
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %index145 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <2 x double> %i.gq, ptr %i.gs, align 8, !tbaa !76
  store <2 x double> %i.gr, ptr %i.gt, align 8, !tbaa !76
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.gu, label %middle.block149, label %vector.body144, !llvm.loop !951

middle.block149:                                  ; preds = %vector.body144
  br i1 %cmp.n150, label %.loopexit63.us, label %..preheader62_crit_edge.us.preheader215

..preheader62_crit_edge.us.preheader215:          ; preds = %..preheader62_crit_edge.us.preheader, %middle.block149
  %indvars.iv97.ph = phi i64 [ 0, %..preheader62_crit_edge.us.preheader ], [ %n.vec143, %middle.block149 ]
  br label %..preheader62_crit_edge.us

..preheader62_crit_edge.us:                       ; preds = %..preheader62_crit_edge.us.preheader215, %..preheader62_crit_edge.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %..preheader62_crit_edge.us ], [ %indvars.iv97.ph, %..preheader62_crit_edge.us.preheader215 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv97
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !8
  %i.gx = sitofp i32 %i.gw to double
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv97
  store double %i.gx, ptr %i.gy, align 8, !tbaa !76
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %i.z
  br i1 %exitcond101.not, label %.loopexit63.us, label %..preheader62_crit_edge.us, !llvm.loop !952

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.loopexit ], [ %i.z, %.preheader.us.preheader ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv94 ; 6 uses
  %brmerge229 = select i1 %min.iters.check160, i1 true, i1 %found.conflict158
  br i1 %brmerge229, label %scalar.ph159.preheader, label %vector.body163

vector.body163:                                   ; preds = %.preheader.us, %vector.body163
  %index164 = phi i64 [ %index.next169, %vector.body163 ], [ 0, %.preheader.us ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index164 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %wide.load165 = load <4 x i32>, ptr %i.gz, align 8, !tbaa !8, !alias.scope !953, !noalias !956
  %wide.load166 = load <4 x i32>, ptr %i.ha, align 8, !tbaa !8, !alias.scope !953, !noalias !956
  %i.hb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index164 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %wide.load167 = load <4 x i8>, ptr %i.hb, align 1, !tbaa !16, !alias.scope !956
  %wide.load168 = load <4 x i8>, ptr %i.hc, align 1, !tbaa !16, !alias.scope !956
  %i.hd = zext <4 x i8> %wide.load167 to <4 x i32>
  %i.he = zext <4 x i8> %wide.load168 to <4 x i32>
end_hunk_2
begin_hunk_3_@_ZNK2cv15ReduceC_InvokerIfffNS_5OpAddIfffEENS_5OpNopIfffEEEclERKNS_5RangeE:bb.a
bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.r = icmp eq i32 %i.i, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 33 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !315
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113 ; 4 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1048, !nonnull !455, !align !456 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 6 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 10 uses
  %i.at = icmp eq i32 %i.z, %i.g
  br i1 %i.at, label %.preheader61.us.preheader, label %.lr.ph.split

.preheader61.us.preheader:                        ; preds = %.lr.ph
  %i.au = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count117 = sext i32 %i.af to i64     ; 2 uses
  %i.av = mul i64 %i.as, %i.au
  %scevgep194 = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.aw = add nsw i64 %wide.trip.count117, -1     ; 2 uses
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = shl nuw nsw i32 %i.e, 2
  %i.az = and i32 %i.ay, 508
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %scevgep195 = getelementptr i8, ptr %i.bc, i64 4
  %i.bd = mul i64 %i.al, %i.au
  %scevgep196 = getelementptr i8, ptr %i.ai, i64 %i.bd
  %i.be = mul i64 %i.al, %i.aw
  %i.bf = getelementptr i8, ptr %i.ai, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
  %scevgep197 = getelementptr i8, ptr %i.bg, i64 4
  %i.bh = and i32 %i.e, 127
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %min.iters.check203 = icmp samesign ult i32 %i.f, 7
  %bound0198 = icmp ult ptr %scevgep194, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  %i.bk = or i64 %i.al, %i.as
  %i.bl = icmp slt i64 %i.bk, 0
  %i.bm = or i1 %found.conflict200, %i.bl
  %n.vec205 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec205, %i.aa
  %xtraiter231 = and i64 %i.bj, 3                 ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br label %.preheader61.us

.preheader61.us:                                  ; preds = %.preheader61.us.preheader, %.loopexit.us
  %indvars.iv114 = phi i64 [ %i.au, %.preheader61.us.preheader ], [ %indvars.iv.next115, %.loopexit.us ] ; 3 uses
  %i.bn = mul i64 %i.al, %indvars.iv114
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn ; 6 uses
  %i.bp = mul i64 %i.as, %indvars.iv114
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp ; 6 uses
  %brmerge = select i1 %min.iters.check203, i1 true, i1 %i.bm
  br i1 %brmerge, label %scalar.ph202.preheader, label %vector.body206

vector.body206:                                   ; preds = %.preheader61.us, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index207 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load208 = load <4 x float>, ptr %i.br, align 4, !tbaa !79, !alias.scope !1049
  %wide.load209 = load <4 x float>, ptr %i.bs, align 4, !tbaa !79, !alias.scope !1049
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index207 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x float> %wide.load208, ptr %i.bt, align 4, !tbaa !79, !alias.scope !1052, !noalias !1049
  store <4 x float> %wide.load209, ptr %i.bu, align 4, !tbaa !79, !alias.scope !1052, !noalias !1049
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.bv, label %middle.block211, label %vector.body206, !llvm.loop !1054

middle.block211:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %.loopexit.us, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %.preheader61.us, %middle.block211
  %indvars.iv109.ph = phi i64 [ %n.vec205, %middle.block211 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bw = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod232.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader, %scalar.ph202.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %scalar.ph202.prol ], [ %indvars.iv109.ph, %scalar.ph202.preheader ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %scalar.ph202.prol ], [ 0, %scalar.ph202.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv109.prol
  %i.by = load float, ptr %i.bx, align 4, !tbaa !79
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv109.prol
  store float %i.by, ptr %i.bz, align 4, !tbaa !79
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol, !llvm.loop !1055

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %scalar.ph202.preheader ], [ %indvars.iv.next110.prol, %scalar.ph202.prol ]
  %i.ca = icmp ult i64 %i.bw, 3
  br i1 %i.ca, label %.loopexit.us, label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %scalar.ph202 ], [ %indvars.iv109.unr, %scalar.ph202.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv109
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !79
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv109
  store float %i.cc, ptr %i.cd, align 4, !tbaa !79
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next110
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !79
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next110
  store float %i.cf, ptr %i.cg, align 4, !tbaa !79
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next110.1
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !79
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next110.1
  store float %i.ci, ptr %i.cj, align 4, !tbaa !79
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next110.2
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !79
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next110.2
  store float %i.cl, ptr %i.cm, align 4, !tbaa !79
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %scalar.ph202, !llvm.loop !1056

.loopexit.us:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %middle.block211
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader61.us, !llvm.loop !1057

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cn = icmp slt i32 %i.g, %i.z
  br i1 %i.cn, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.co = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.cp = mul i64 %i.as, %i.co
  %i.cq = add i64 %i.cp, %i.aq
  %i.cr = add i64 %i.cq, -16
  %i.cs = sub i64 %i.cr, %i.a
  %i.ct = mul i64 %i.al, %i.co
  %i.cu = add i64 %i.ct, %i.aj
  %i.cv = and i32 %i.e, 127
  %i.cw = zext nneg i32 %i.cv to i64              ; 4 uses
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = add nuw nsw i64 %i.cw, 1
  %min.iters.check135 = icmp samesign ult i32 %i.f, 7
  %n.vec137 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n144 = icmp eq i64 %n.vec137, %i.aa
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 7
  %invariant.op = add i64 %i.cs, -1
  %n.vec = and i64 %i.aa, 248                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter219 = and i64 %i.cy, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br label %.preheader65

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.cz = zext i32 %i.z to i64                    ; 2 uses
  %i.da = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.db = mul i64 %i.as, %i.da
  %i.dc = add i64 %i.db, %i.aq
  %i.dd = add i64 %i.dc, -16
  %i.de = sub i64 %i.dd, %i.a
  %i.df = and i32 %i.e, 127
  %i.dg = zext nneg i32 %i.df to i64              ; 3 uses
  %i.dh = shl nuw nsw i64 %i.dg, 2                ; 3 uses
  %i.di = getelementptr i8, ptr %4, i64 %i.dh
  %scevgep = getelementptr i8, ptr %i.di, i64 20
  %i.dj = mul i64 %i.al, %i.da                    ; 3 uses
  %i.dk = shl nuw nsw i64 %i.dg, 1                ; 3 uses
  %i.dl = add nuw nsw i64 %i.dk, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.cz)
  %i.dm = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dm, %i.dk
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dk, %umin
  %i.dn = sub nsw i64 %i.dm, %6
  %i.do = udiv i64 %i.dn, %i.aa
  %7 = add i64 %i.do, %umin
  %i.dp = add nuw nsw i64 %i.dh, 4
  %i.dq = mul i64 %7, %i.dp
  %i.dr = shl nuw nsw i64 %i.dg, 3
  %i.ds = add i64 %i.dj, %i.aj
  %i.dt = and i32 %i.e, 127
  %i.du = zext nneg i32 %i.dt to i64              ; 6 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = add nuw nsw i64 %i.du, 1
  %i.dx = add nuw nsw i64 %i.du, 1
  %i.dy = getelementptr i8, ptr %i.ai, i64 %i.dj
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.dh
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %min.iters.check182 = icmp samesign ult i32 %i.f, 7
  %n.vec184 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec184, %i.aa
  %xtraiter222 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %i.eb = getelementptr i8, ptr %i.ai, i64 %i.dq
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dj
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.dr
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %min.iters.check166 = icmp samesign ult i32 %i.f, 7
  %n.vec168 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec168, %i.aa
  %xtraiter225 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  %min.iters.check151 = icmp samesign ult i32 %i.f, 7
  %invariant.op234 = add i64 %i.de, -1
  %n.vec153 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec153, %i.aa
  %xtraiter228 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar147 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next148, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.da, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.ef = mul i64 %i.al, %indvar147               ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.ea, i64 %i.ef
  %i.eg = mul i64 %i.as, %indvar147
  %i.eh = mul i64 %i.al, %indvars.iv104
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eh ; 7 uses
  br i1 %min.iters.check182, label %scalar.ph181.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.preheader65.us
  %i.ej = mul i64 %i.al, %indvar147
  %i.ek = add i64 %i.ds, %i.ej
  %i.el = sub i64 %i.a, %i.ek
  %i.em = add i64 %i.el, 15
  %diff.check180 = icmp ult i64 %i.em, 31
  br i1 %diff.check180, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %vector.memcheck179, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %vector.memcheck179 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index186 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load187 = load <4 x float>, ptr %i.en, align 4, !tbaa !79
  %wide.load188 = load <4 x float>, ptr %i.eo, align 4, !tbaa !79
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index186 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> %wide.load187, ptr %i.ep, align 8, !tbaa !79
  store <4 x float> %wide.load188, ptr %i.eq, align 8, !tbaa !79
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.er, label %middle.block190, label %vector.body185, !llvm.loop !1058

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.preheader.us.preheader, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %vector.memcheck179, %.preheader65.us, %middle.block190
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck179 ], [ 0, %.preheader65.us ], [ %n.vec184, %middle.block190 ] ; 3 uses
  %i.es = sub nsw i64 %i.du, %indvars.iv86.ph
  br i1 %lcmp.mod223.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader, %scalar.ph181.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %scalar.ph181.prol ], [ %indvars.iv86.ph, %scalar.ph181.preheader ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %scalar.ph181.prol ], [ 0, %scalar.ph181.preheader ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv86.prol
  %i.eu = load float, ptr %i.et, align 4, !tbaa !79
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv86.prol
  store float %i.eu, ptr %i.ev, align 4, !tbaa !79
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol, !llvm.loop !1059

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph181.preheader ], [ %indvars.iv.next87.prol, %scalar.ph181.prol ]
  %i.ew = icmp ult i64 %i.es, 3
  br i1 %i.ew, label %.preheader.us.preheader, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %scalar.ph181 ], [ %indvars.iv86.unr, %scalar.ph181.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv86
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !79
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv86
  store float %i.ey, ptr %i.ez, align 4, !tbaa !79
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next87
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !79
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next87
  store float %i.fb, ptr %i.fc, align 4, !tbaa !79
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next87.1
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !79
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next87.1
  store float %i.fe, ptr %i.ff, align 4, !tbaa !79
  %indvars.iv.next87.2 = add nuw nsw i64 %indvars.iv86, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next87.2
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !79
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next87.2
  store float %i.fh, ptr %i.fi, align 4, !tbaa !79
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %exitcond90.not.3 = icmp eq i64 %indvars.iv.next87.3, %i.aa
  br i1 %exitcond90.not.3, label %.preheader.us.preheader, label %scalar.ph181, !llvm.loop !1060

.preheader.us.preheader:                          ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block190
  %scevgep164 = getelementptr i8, ptr %i.ee, i64 %i.ef
  %bound0 = icmp ult ptr %i.ab, %scevgep164
  %bound1 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

scalar.ph165:                                     ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %scalar.ph165 ], [ %indvars.iv91.unr, %scalar.ph165.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv91 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !79
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.fl = load float, ptr %gep, align 4, !tbaa !79
  %i.fm = fadd float %i.fk, %i.fl
  store float %i.fm, ptr %i.fj, align 4, !tbaa !79
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next92 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !79
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.fp = load float, ptr %gep.1, align 4, !tbaa !79
  %i.fq = fadd float %i.fo, %i.fp
  store float %i.fq, ptr %i.fn, align 4, !tbaa !79
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next92.1 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !79
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.1
  %i.ft = load float, ptr %gep.2, align 4, !tbaa !79
  %i.fu = fadd float %i.fs, %i.ft
  store float %i.fu, ptr %i.fr, align 4, !tbaa !79
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next92.2 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !79
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.2
  %i.fx = load float, ptr %gep.3, align 4, !tbaa !79
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %i.fv, align 4, !tbaa !79
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %i.aa
  br i1 %exitcond95.not.3, label %.loopexit, label %scalar.ph165, !llvm.loop !1061

.loopexit:                                        ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165, %middle.block176
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, %i.aa ; 2 uses
  %i.fz = icmp samesign ult i64 %indvars.iv.next97, %i.cz
  br i1 %i.fz, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !1062

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.ga = mul i64 %i.as, %indvars.iv104
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ga ; 6 uses
  %.reass235 = add i64 %i.eg, %invariant.op234
  %diff.check149 = icmp ult i64 %.reass235, 31
  %or.cond = select i1 %min.iters.check151, i1 true, i1 %diff.check149
  br i1 %or.cond, label %..preheader62_crit_edge.us.preheader215, label %vector.body154

vector.body154:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body154
  %index155 = phi i64 [ %index.next158, %vector.body154 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index155 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load156 = load <4 x float>, ptr %i.gc, align 8, !tbaa !79
  %wide.load157 = load <4 x float>, ptr %i.gd, align 8, !tbaa !79
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %index155 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <4 x float> %wide.load156, ptr %i.ge, align 4, !tbaa !79
  store <4 x float> %wide.load157, ptr %i.gf, align 4, !tbaa !79
  %index.next158 = add nuw i64 %index155, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.gg, label %middle.block159, label %vector.body154, !llvm.loop !1063

middle.block159:                                  ; preds = %vector.body154
  br i1 %cmp.n160, label %.loopexit63.us, label %..preheader62_crit_edge.us.preheader215

..preheader62_crit_edge.us.preheader215:          ; preds = %..preheader62_crit_edge.us.preheader, %middle.block159
  %indvars.iv99.ph = phi i64 [ 0, %..preheader62_crit_edge.us.preheader ], [ %n.vec153, %middle.block159 ] ; 3 uses
  %i.gh = sub nsw i64 %i.du, %indvars.iv99.ph
  br i1 %lcmp.mod229.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol

..preheader62_crit_edge.us.prol:                  ; preds = %..preheader62_crit_edge.us.preheader215, %..preheader62_crit_edge.us.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ], [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ] ; 3 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %..preheader62_crit_edge.us.prol ], [ 0, %..preheader62_crit_edge.us.preheader215 ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv99.prol
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !79
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv99.prol
  store float %i.gj, ptr %i.gk, align 4, !tbaa !79
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol, !llvm.loop !1064
end_hunk_3
begin_hunk_4_@_ZNK2cv15ReduceC_InvokerIdddNS_5OpAddIdddEENS_5OpNopIdddEEEclERKNS_5RangeE:bb.a
bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.r = icmp eq i32 %i.i, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 33 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !337
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113 ; 4 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1100, !nonnull !455, !align !456 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 6 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 10 uses
  %i.at = icmp eq i32 %i.z, %i.g
  br i1 %i.at, label %.preheader61.us.preheader, label %.lr.ph.split

.preheader61.us.preheader:                        ; preds = %.lr.ph
  %i.au = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count117 = sext i32 %i.af to i64     ; 2 uses
  %i.av = mul i64 %i.as, %i.au
  %scevgep194 = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.aw = add nsw i64 %wide.trip.count117, -1     ; 2 uses
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = shl nuw nsw i32 %i.e, 3
  %i.az = and i32 %i.ay, 1016
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %scevgep195 = getelementptr i8, ptr %i.bc, i64 8
  %i.bd = mul i64 %i.al, %i.au
  %scevgep196 = getelementptr i8, ptr %i.ai, i64 %i.bd
  %i.be = mul i64 %i.al, %i.aw
  %i.bf = getelementptr i8, ptr %i.ai, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
  %scevgep197 = getelementptr i8, ptr %i.bg, i64 8
  %i.bh = and i32 %i.e, 127
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %min.iters.check203 = icmp samesign ult i32 %i.f, 7
  %bound0198 = icmp ult ptr %scevgep194, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  %i.bk = or i64 %i.al, %i.as
  %i.bl = icmp slt i64 %i.bk, 0
  %i.bm = or i1 %found.conflict200, %i.bl
  %n.vec205 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec205, %i.aa
  %xtraiter231 = and i64 %i.bj, 3                 ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br label %.preheader61.us

.preheader61.us:                                  ; preds = %.preheader61.us.preheader, %.loopexit.us
  %indvars.iv114 = phi i64 [ %i.au, %.preheader61.us.preheader ], [ %indvars.iv.next115, %.loopexit.us ] ; 3 uses
  %i.bn = mul i64 %i.al, %indvars.iv114
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn ; 6 uses
  %i.bp = mul i64 %i.as, %indvars.iv114
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp ; 6 uses
  %brmerge = select i1 %min.iters.check203, i1 true, i1 %i.bm
  br i1 %brmerge, label %scalar.ph202.preheader, label %vector.body206

vector.body206:                                   ; preds = %.preheader61.us, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index207 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load208 = load <2 x double>, ptr %i.br, align 8, !tbaa !76, !alias.scope !1101
  %wide.load209 = load <2 x double>, ptr %i.bs, align 8, !tbaa !76, !alias.scope !1101
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index207 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> %wide.load208, ptr %i.bt, align 8, !tbaa !76, !alias.scope !1104, !noalias !1101
  store <2 x double> %wide.load209, ptr %i.bu, align 8, !tbaa !76, !alias.scope !1104, !noalias !1101
  %index.next210 = add nuw i64 %index207, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.bv, label %middle.block211, label %vector.body206, !llvm.loop !1106

middle.block211:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %.loopexit.us, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %.preheader61.us, %middle.block211
  %indvars.iv109.ph = phi i64 [ %n.vec205, %middle.block211 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bw = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod232.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader, %scalar.ph202.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %scalar.ph202.prol ], [ %indvars.iv109.ph, %scalar.ph202.preheader ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %scalar.ph202.prol ], [ 0, %scalar.ph202.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv109.prol
  %i.by = load double, ptr %i.bx, align 8, !tbaa !76
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv109.prol
  store double %i.by, ptr %i.bz, align 8, !tbaa !76
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol, !llvm.loop !1107

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %scalar.ph202.preheader ], [ %indvars.iv.next110.prol, %scalar.ph202.prol ]
  %i.ca = icmp ult i64 %i.bw, 3
  br i1 %i.ca, label %.loopexit.us, label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %scalar.ph202 ], [ %indvars.iv109.unr, %scalar.ph202.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv109
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !76
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv109
  store double %i.cc, ptr %i.cd, align 8, !tbaa !76
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next110
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !76
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next110
  store double %i.cf, ptr %i.cg, align 8, !tbaa !76
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next110.1
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next110.1
  store double %i.ci, ptr %i.cj, align 8, !tbaa !76
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next110.2
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next110.2
  store double %i.cl, ptr %i.cm, align 8, !tbaa !76
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %scalar.ph202, !llvm.loop !1108

.loopexit.us:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %middle.block211
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader61.us, !llvm.loop !1109

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cn = icmp slt i32 %i.g, %i.z
  br i1 %i.cn, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.co = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.cp = mul i64 %i.as, %i.co
  %i.cq = add i64 %i.cp, %i.aq
  %i.cr = add i64 %i.cq, -16
  %i.cs = sub i64 %i.cr, %i.a
  %i.ct = mul i64 %i.al, %i.co
  %i.cu = add i64 %i.ct, %i.aj
  %i.cv = and i32 %i.e, 127
  %i.cw = zext nneg i32 %i.cv to i64              ; 4 uses
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = add nuw nsw i64 %i.cw, 1
  %min.iters.check135 = icmp samesign ult i32 %i.f, 3
  %n.vec137 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n144 = icmp eq i64 %n.vec137, %i.aa
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 3
  %invariant.op = add i64 %i.cs, -1
  %n.vec = and i64 %i.aa, 252                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter219 = and i64 %i.cy, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br label %.preheader65

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.cz = zext i32 %i.z to i64                    ; 2 uses
  %i.da = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.db = mul i64 %i.as, %i.da
  %i.dc = add i64 %i.db, %i.aq
  %i.dd = add i64 %i.dc, -16
  %i.de = sub i64 %i.dd, %i.a
  %i.df = and i32 %i.e, 127
  %i.dg = zext nneg i32 %i.df to i64              ; 3 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3                ; 3 uses
  %i.di = getelementptr i8, ptr %4, i64 %i.dh
  %scevgep = getelementptr i8, ptr %i.di, i64 24
  %i.dj = mul i64 %i.al, %i.da                    ; 3 uses
  %i.dk = shl nuw nsw i64 %i.dg, 1                ; 3 uses
  %i.dl = add nuw nsw i64 %i.dk, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.cz)
  %i.dm = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dm, %i.dk
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dk, %umin
  %i.dn = sub nsw i64 %i.dm, %6
  %i.do = udiv i64 %i.dn, %i.aa
  %7 = add i64 %i.do, %umin
  %i.dp = add nuw nsw i64 %i.dh, 8
  %i.dq = mul i64 %7, %i.dp
  %i.dr = shl nuw nsw i64 %i.dg, 4
  %i.ds = add i64 %i.dj, %i.aj
  %i.dt = and i32 %i.e, 127
  %i.du = zext nneg i32 %i.dt to i64              ; 6 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = add nuw nsw i64 %i.du, 1
  %i.dx = add nuw nsw i64 %i.du, 1
  %i.dy = getelementptr i8, ptr %i.ai, i64 %i.dj
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.dh
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %min.iters.check182 = icmp samesign ult i32 %i.f, 3
  %n.vec184 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec184, %i.aa
  %xtraiter222 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %i.eb = getelementptr i8, ptr %i.ai, i64 %i.dq
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dj
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.dr
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  %min.iters.check166 = icmp samesign ult i32 %i.f, 3
  %n.vec168 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec168, %i.aa
  %xtraiter225 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  %min.iters.check151 = icmp samesign ult i32 %i.f, 3
  %invariant.op234 = add i64 %i.de, -1
  %n.vec153 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec153, %i.aa
  %xtraiter228 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar147 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next148, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.da, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.ef = mul i64 %i.al, %indvar147               ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.ea, i64 %i.ef
  %i.eg = mul i64 %i.as, %indvar147
  %i.eh = mul i64 %i.al, %indvars.iv104
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eh ; 7 uses
  br i1 %min.iters.check182, label %scalar.ph181.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.preheader65.us
  %i.ej = mul i64 %i.al, %indvar147
  %i.ek = add i64 %i.ds, %i.ej
  %i.el = sub i64 %i.a, %i.ek
  %i.em = add i64 %i.el, 15
  %diff.check180 = icmp ult i64 %i.em, 31
  br i1 %diff.check180, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %vector.memcheck179, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %vector.memcheck179 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index186 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load187 = load <2 x double>, ptr %i.en, align 8, !tbaa !76
  %wide.load188 = load <2 x double>, ptr %i.eo, align 8, !tbaa !76
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index186 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x double> %wide.load187, ptr %i.ep, align 8, !tbaa !76
  store <2 x double> %wide.load188, ptr %i.eq, align 8, !tbaa !76
  %index.next189 = add nuw i64 %index186, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.er, label %middle.block190, label %vector.body185, !llvm.loop !1110

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.preheader.us.preheader, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %vector.memcheck179, %.preheader65.us, %middle.block190
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck179 ], [ 0, %.preheader65.us ], [ %n.vec184, %middle.block190 ] ; 3 uses
  %i.es = sub nsw i64 %i.du, %indvars.iv86.ph
  br i1 %lcmp.mod223.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader, %scalar.ph181.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %scalar.ph181.prol ], [ %indvars.iv86.ph, %scalar.ph181.preheader ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %scalar.ph181.prol ], [ 0, %scalar.ph181.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv86.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !76
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv86.prol
  store double %i.eu, ptr %i.ev, align 8, !tbaa !76
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol, !llvm.loop !1111

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph181.preheader ], [ %indvars.iv.next87.prol, %scalar.ph181.prol ]
  %i.ew = icmp ult i64 %i.es, 3
  br i1 %i.ew, label %.preheader.us.preheader, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %scalar.ph181 ], [ %indvars.iv86.unr, %scalar.ph181.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv86
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !76
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv86
  store double %i.ey, ptr %i.ez, align 8, !tbaa !76
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next87
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !76
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next87
  store double %i.fb, ptr %i.fc, align 8, !tbaa !76
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next87.1
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !76
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next87.1
  store double %i.fe, ptr %i.ff, align 8, !tbaa !76
  %indvars.iv.next87.2 = add nuw nsw i64 %indvars.iv86, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next87.2
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !76
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next87.2
  store double %i.fh, ptr %i.fi, align 8, !tbaa !76
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %exitcond90.not.3 = icmp eq i64 %indvars.iv.next87.3, %i.aa
  br i1 %exitcond90.not.3, label %.preheader.us.preheader, label %scalar.ph181, !llvm.loop !1112

.preheader.us.preheader:                          ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block190
  %scevgep164 = getelementptr i8, ptr %i.ee, i64 %i.ef
  %bound0 = icmp ult ptr %i.ab, %scevgep164
  %bound1 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

scalar.ph165:                                     ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %scalar.ph165 ], [ %indvars.iv91.unr, %scalar.ph165.prol.loopexit ] ; 6 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv91 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !76
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.fl = load double, ptr %gep, align 8, !tbaa !76
  %i.fm = fadd double %i.fk, %i.fl
  store double %i.fm, ptr %i.fj, align 8, !tbaa !76
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next92 ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !76
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.fp = load double, ptr %gep.1, align 8, !tbaa !76
  %i.fq = fadd double %i.fo, %i.fp
  store double %i.fq, ptr %i.fn, align 8, !tbaa !76
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next92.1 ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !76
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.1
  %i.ft = load double, ptr %gep.2, align 8, !tbaa !76
  %i.fu = fadd double %i.fs, %i.ft
  store double %i.fu, ptr %i.fr, align 8, !tbaa !76
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next92.2 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !76
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.2
  %i.fx = load double, ptr %gep.3, align 8, !tbaa !76
  %i.fy = fadd double %i.fw, %i.fx
  store double %i.fy, ptr %i.fv, align 8, !tbaa !76
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %i.aa
  br i1 %exitcond95.not.3, label %.loopexit, label %scalar.ph165, !llvm.loop !1113

.loopexit:                                        ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165, %middle.block176
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, %i.aa ; 2 uses
  %i.fz = icmp samesign ult i64 %indvars.iv.next97, %i.cz
  br i1 %i.fz, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !1114

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.ga = mul i64 %i.as, %indvars.iv104
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ga ; 6 uses
  %.reass235 = add i64 %i.eg, %invariant.op234
  %diff.check149 = icmp ult i64 %.reass235, 31
  %or.cond = select i1 %min.iters.check151, i1 true, i1 %diff.check149
  br i1 %or.cond, label %..preheader62_crit_edge.us.preheader215, label %vector.body154

vector.body154:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body154
  %index155 = phi i64 [ %index.next158, %vector.body154 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index155 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load156 = load <2 x double>, ptr %i.gc, align 8, !tbaa !76
  %wide.load157 = load <2 x double>, ptr %i.gd, align 8, !tbaa !76
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index155 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <2 x double> %wide.load156, ptr %i.ge, align 8, !tbaa !76
  store <2 x double> %wide.load157, ptr %i.gf, align 8, !tbaa !76
  %index.next158 = add nuw i64 %index155, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.gg, label %middle.block159, label %vector.body154, !llvm.loop !1115

middle.block159:                                  ; preds = %vector.body154
  br i1 %cmp.n160, label %.loopexit63.us, label %..preheader62_crit_edge.us.preheader215

..preheader62_crit_edge.us.preheader215:          ; preds = %..preheader62_crit_edge.us.preheader, %middle.block159
  %indvars.iv99.ph = phi i64 [ 0, %..preheader62_crit_edge.us.preheader ], [ %n.vec153, %middle.block159 ] ; 3 uses
  %i.gh = sub nsw i64 %i.du, %indvars.iv99.ph
  br i1 %lcmp.mod229.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol

..preheader62_crit_edge.us.prol:                  ; preds = %..preheader62_crit_edge.us.preheader215, %..preheader62_crit_edge.us.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ], [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ] ; 3 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %..preheader62_crit_edge.us.prol ], [ 0, %..preheader62_crit_edge.us.preheader215 ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv99.prol
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !76
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv99.prol
  store double %i.gj, ptr %i.gk, align 8, !tbaa !76
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol, !llvm.loop !1116
end_hunk_4
begin_hunk_5_@_ZNK2cv15ReduceC_InvokerItttNS_5OpMaxItEENS_5OpNopItttEEEclERKNS_5RangeE:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 176
  %wide.load272.5 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !248, !alias.scope !1149
  %wide.load273.5 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !248, !alias.scope !1149
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  store <8 x i16> %wide.load272.5, ptr %i.ct, align 2, !tbaa !248, !alias.scope !1152, !noalias !1149
  store <8 x i16> %wide.load273.5, ptr %i.cu, align 2, !tbaa !248, !alias.scope !1152, !noalias !1149
  br i1 %i.bt, label %middle.block275, label %vector.body270.6

vector.body270.6:                                 ; preds = %vector.body270.5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  %wide.load272.6 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !248, !alias.scope !1149
  %wide.load273.6 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !248, !alias.scope !1149
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 208
  store <8 x i16> %wide.load272.6, ptr %i.cx, align 2, !tbaa !248, !alias.scope !1152, !noalias !1149
  store <8 x i16> %wide.load273.6, ptr %i.cy, align 2, !tbaa !248, !alias.scope !1152, !noalias !1149
  br i1 %i.bu, label %middle.block275, label %vector.body270.7

vector.body270.7:                                 ; preds = %vector.body270.6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  %i.da = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  %wide.load272.7 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !248, !alias.scope !1149
  %wide.load273.7 = load <8 x i16>, ptr %i.da, align 2, !tbaa !248, !alias.scope !1149
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 224
  %i.dc = getelementptr inbounds nuw i8, ptr %i.by, i64 240
  store <8 x i16> %wide.load272.7, ptr %i.db, align 2, !tbaa !248, !alias.scope !1152, !noalias !1149
  store <8 x i16> %wide.load273.7, ptr %i.dc, align 2, !tbaa !248, !alias.scope !1152, !noalias !1149
  br label %middle.block275

middle.block275:                                  ; preds = %vector.body270.7, %vector.body270.6, %vector.body270.5, %vector.body270.4, %vector.body270.3, %vector.body270.2, %vector.body270.1, %vector.body270
  br i1 %cmp.n276, label %.loopexit.us, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block275
  br i1 %min.epilog.iters.check281, label %vec.epilog.scalar.ph279.preheader, label %vec.epilog.ph282, !prof !581

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check266, %vec.epilog.iter.check280
  %vec.epilog.resume.val277 = phi i64 [ %n.vec269, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check266 ]
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph282
  %index285 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph282 ], [ %index.next287, %vec.epilog.vector.body284 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %index285
  %wide.load286 = load <4 x i16>, ptr %i.dd, align 2, !tbaa !248, !alias.scope !1149
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index285
  store <4 x i16> %wide.load286, ptr %i.de, align 2, !tbaa !248, !alias.scope !1152, !noalias !1149
  %index.next287 = add nuw i64 %index285, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next287, %n.vec283
  br i1 %i.df, label %vec.epilog.middle.block288, label %vec.epilog.vector.body284, !llvm.loop !1154

vec.epilog.middle.block288:                       ; preds = %vec.epilog.vector.body284
  br i1 %cmp.n289, label %.loopexit.us, label %vec.epilog.scalar.ph279.preheader

vec.epilog.scalar.ph279.preheader:                ; preds = %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block288
  %indvars.iv109.ph = phi i64 [ 0, %iter.check278 ], [ %n.vec283, %vec.epilog.middle.block288 ], [ %n.vec269, %vec.epilog.iter.check280 ] ; 3 uses
  %i.dg = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod307.not, label %vec.epilog.scalar.ph279.prol.loopexit, label %vec.epilog.scalar.ph279.prol

vec.epilog.scalar.ph279.prol:                     ; preds = %vec.epilog.scalar.ph279.preheader, %vec.epilog.scalar.ph279.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %vec.epilog.scalar.ph279.prol ], [ %indvars.iv109.ph, %vec.epilog.scalar.ph279.preheader ] ; 3 uses
  %prol.iter308 = phi i64 [ %prol.iter308.next, %vec.epilog.scalar.ph279.prol ], [ 0, %vec.epilog.scalar.ph279.preheader ]
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv109.prol
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !248
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv109.prol
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !248
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter308.next = add i64 %prol.iter308, 1   ; 2 uses
  %prol.iter308.cmp.not = icmp eq i64 %prol.iter308.next, %xtraiter306
  br i1 %prol.iter308.cmp.not, label %vec.epilog.scalar.ph279.prol.loopexit, label %vec.epilog.scalar.ph279.prol, !llvm.loop !1155

vec.epilog.scalar.ph279.prol.loopexit:            ; preds = %vec.epilog.scalar.ph279.prol, %vec.epilog.scalar.ph279.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %vec.epilog.scalar.ph279.preheader ], [ %indvars.iv.next110.prol, %vec.epilog.scalar.ph279.prol ]
  %i.dk = icmp ult i64 %i.dg, 3
  br i1 %i.dk, label %.loopexit.us, label %vec.epilog.scalar.ph279

vec.epilog.scalar.ph279:                          ; preds = %vec.epilog.scalar.ph279.prol.loopexit, %vec.epilog.scalar.ph279
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %vec.epilog.scalar.ph279 ], [ %indvars.iv109.unr, %vec.epilog.scalar.ph279.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv109
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !248
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv109
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !248
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !248
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !248
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110.1
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !248
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110.1
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !248
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110.2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !248
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110.2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !248
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %vec.epilog.scalar.ph279, !llvm.loop !1156

.loopexit.us:                                     ; preds = %vec.epilog.scalar.ph279.prol.loopexit, %vec.epilog.scalar.ph279, %vec.epilog.middle.block288, %middle.block275
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %iter.check278, !llvm.loop !1157

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dx = icmp slt i32 %i.g, %i.z
  br i1 %i.dx, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.dy = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.dz = mul i64 %i.as, %i.dy
  %i.ea = add i64 %i.dz, %i.aq
  %i.eb = add i64 %i.ea, -16
  %i.ec = sub i64 %i.eb, %i.a
  %i.ed = mul i64 %i.al, %i.dy
  %i.ee = add i64 %i.ed, %i.aj
  %i.ef = and i32 %i.e, 127
  %i.eg = zext nneg i32 %i.ef to i64              ; 4 uses
  %i.eh = add nuw nsw i64 %i.eg, 1
  %i.ei = add nuw nsw i64 %i.eg, 1
  %min.iters.check140 = icmp samesign ult i32 %i.f, 3
  %min.iters.check142 = icmp samesign ult i32 %i.f, 15
  %i.ej = and i64 %i.aa, 12
  %n.vec144 = and i64 %i.aa, 240                  ; 10 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.el = icmp eq i64 %n.vec144, 16
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.eo = icmp eq i64 %n.vec144, 32
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.er = icmp eq i64 %n.vec144, 48
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.eu = icmp eq i64 %n.vec144, 64
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ex = icmp eq i64 %n.vec144, 80
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.fa = icmp eq i64 %n.vec144, 96
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.fd = icmp eq i64 %n.vec144, 112
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n151 = icmp eq i64 %n.vec144, %i.aa
  %min.epilog.iters.check156 = icmp eq i64 %i.ej, 0
  %n.vec158 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n164 = icmp eq i64 %n.vec158, %i.aa
  %xtraiter = and i64 %i.eh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 3
  %invariant.op = add i64 %i.ec, -1
  %min.iters.check131 = icmp samesign ult i32 %i.f, 15
  %i.fg = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 240                     ; 10 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fi = icmp eq i64 %n.vec, 16
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fl = icmp eq i64 %n.vec, 32
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fo = icmp eq i64 %n.vec, 48
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.fr = icmp eq i64 %n.vec, 64
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.fu = icmp eq i64 %n.vec, 80
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.fx = icmp eq i64 %n.vec, 96
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ga = icmp eq i64 %n.vec, 112
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %min.epilog.iters.check = icmp eq i64 %i.fg, 0
  %n.vec133 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n137 = icmp eq i64 %n.vec133, %i.aa
  %xtraiter294 = and i64 %i.ei, 3                 ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br label %iter.check153

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.gd = zext i32 %i.z to i64                    ; 2 uses
  %i.ge = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.gf = mul i64 %i.as, %i.ge
  %i.gg = add i64 %i.gf, %i.aq
  %i.gh = add i64 %i.gg, -16
  %i.gi = sub i64 %i.gh, %i.a
  %i.gj = and i32 %i.e, 127
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = shl nuw nsw i64 %i.gk, 1                ; 5 uses
  %i.gm = getelementptr i8, ptr %4, i64 %i.gl
  %scevgep = getelementptr i8, ptr %i.gm, i64 18
  %i.gn = mul i64 %i.al, %i.ge                    ; 3 uses
  %i.go = add nuw nsw i64 %i.gl, 2                ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.go, i64 %i.gd)
  %i.gp = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.gp, %i.gl
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.gl, %umin
  %i.gq = sub nsw i64 %i.gp, %6
  %i.gr = udiv i64 %i.gq, %i.aa
  %7 = add i64 %i.gr, %umin
  %i.gs = mul i64 %7, %i.go
  %i.gt = shl nuw nsw i64 %i.gk, 2
  %i.gu = add i64 %i.gn, %i.aj
  %i.gv = and i32 %i.e, 127
  %i.gw = zext nneg i32 %i.gv to i64              ; 6 uses
  %i.gx = add nuw nsw i64 %i.gw, 1
  %i.gy = add nuw nsw i64 %i.gw, 1
  %i.gz = getelementptr i8, ptr %i.ai, i64 %i.gn
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gl
  %i.hb = getelementptr i8, ptr %i.ha, i64 2
  %min.iters.check230 = icmp samesign ult i32 %i.f, 3
  %min.iters.check232 = icmp samesign ult i32 %i.f, 15
  %i.hc = and i64 %i.aa, 12
  %n.vec234 = and i64 %i.aa, 240                  ; 10 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.he = icmp eq i64 %n.vec234, 16
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hh = icmp eq i64 %n.vec234, 32
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.hk = icmp eq i64 %n.vec234, 48
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.hn = icmp eq i64 %n.vec234, 64
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.hq = icmp eq i64 %n.vec234, 80
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ht = icmp eq i64 %n.vec234, 96
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.hw = icmp eq i64 %n.vec234, 112
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n241 = icmp eq i64 %n.vec234, %i.aa
  %min.epilog.iters.check246 = icmp eq i64 %i.hc, 0
  %n.vec248 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n254 = icmp eq i64 %n.vec248, %i.aa
  %xtraiter297 = and i64 %i.gx, 3                 ; 2 uses
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  %i.hz = getelementptr i8, ptr %i.ai, i64 %i.gs
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.gn
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.gt
  %i.ic = getelementptr i8, ptr %i.ib, i64 4
  %min.iters.check199 = icmp samesign ult i32 %i.f, 3
  %min.iters.check201 = icmp samesign ult i32 %i.f, 15
  %i.id = and i64 %i.aa, 12
  %n.vec203 = and i64 %i.aa, 240                  ; 10 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.if = icmp eq i64 %n.vec203, 16
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ii = icmp eq i64 %n.vec203, 32
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.il = icmp eq i64 %n.vec203, 48
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.io = icmp eq i64 %n.vec203, 64
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.ir = icmp eq i64 %n.vec203, 80
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.iu = icmp eq i64 %n.vec203, 96
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 2 uses
  %i.ix = icmp eq i64 %n.vec203, 112
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %cmp.n212 = icmp eq i64 %n.vec203, %i.aa
  %min.epilog.iters.check217 = icmp eq i64 %i.id, 0
  %n.vec219 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n226 = icmp eq i64 %n.vec219, %i.aa
  %i.ja = and i64 %i.gw, 1
  %lcmp.mod301.not.not = icmp eq i64 %i.ja, 0
  %min.iters.check170 = icmp samesign ult i32 %i.f, 3
  %invariant.op309 = add i64 %i.gi, -1
  %min.iters.check172 = icmp samesign ult i32 %i.f, 15
  %i.jb = and i64 %i.aa, 12
  %n.vec174 = and i64 %i.aa, 240                  ; 10 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jd = icmp eq i64 %n.vec174, 16
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.jg = icmp eq i64 %n.vec174, 32
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.jj = icmp eq i64 %n.vec174, 48
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.jm = icmp eq i64 %n.vec174, 64
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.jp = icmp eq i64 %n.vec174, 80
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.js = icmp eq i64 %n.vec174, 96
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.jv = icmp eq i64 %n.vec174, 112
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n181 = icmp eq i64 %n.vec174, %i.aa
  %min.epilog.iters.check186 = icmp eq i64 %i.jb, 0
  %n.vec188 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n194 = icmp eq i64 %n.vec188, %i.aa
  %xtraiter303 = and i64 %i.gy, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br label %iter.check243

iter.check243:                                    ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar167 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next168, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.ge, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.jy = mul i64 %i.al, %indvar167               ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.hb, i64 %i.jy
  %i.jz = mul i64 %i.as, %indvar167
  %i.ka = mul i64 %i.al, %indvars.iv104
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ka ; 23 uses
  br i1 %min.iters.check230, label %vec.epilog.scalar.ph244.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %iter.check243
  %i.kc = mul i64 %i.al, %indvar167
  %i.kd = add i64 %i.gu, %i.kc
  %i.ke = sub i64 %i.a, %i.kd
  %i.kf = add i64 %i.ke, 15
  %diff.check229 = icmp ult i64 %i.kf, 31
  br i1 %diff.check229, label %vec.epilog.scalar.ph244.preheader, label %vector.main.loop.iter.check231

vector.main.loop.iter.check231:                   ; preds = %vector.memcheck228
  br i1 %min.iters.check232, label %vec.epilog.ph247, label %vector.body235

vector.body235:                                   ; preds = %vector.main.loop.iter.check231
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %wide.load237 = load <8 x i16>, ptr %i.kb, align 2, !tbaa !248
  %wide.load238 = load <8 x i16>, ptr %i.kg, align 2, !tbaa !248
  store <8 x i16> %wide.load237, ptr %i.ab, align 8, !tbaa !248
  store <8 x i16> %wide.load238, ptr %i.hd, align 8, !tbaa !248
  br i1 %i.he, label %middle.block240, label %vector.body235.1

vector.body235.1:                                 ; preds = %vector.body235
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %wide.load237.1 = load <8 x i16>, ptr %i.kh, align 2, !tbaa !248
  %wide.load238.1 = load <8 x i16>, ptr %i.ki, align 2, !tbaa !248
  store <8 x i16> %wide.load237.1, ptr %i.hf, align 8, !tbaa !248
  store <8 x i16> %wide.load238.1, ptr %i.hg, align 8, !tbaa !248
  br i1 %i.hh, label %middle.block240, label %vector.body235.2

vector.body235.2:                                 ; preds = %vector.body235.1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 80
  %wide.load237.2 = load <8 x i16>, ptr %i.kj, align 2, !tbaa !248
  %wide.load238.2 = load <8 x i16>, ptr %i.kk, align 2, !tbaa !248
  store <8 x i16> %wide.load237.2, ptr %i.hi, align 8, !tbaa !248
  store <8 x i16> %wide.load238.2, ptr %i.hj, align 8, !tbaa !248
  br i1 %i.hk, label %middle.block240, label %vector.body235.3

vector.body235.3:                                 ; preds = %vector.body235.2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 112
  %wide.load237.3 = load <8 x i16>, ptr %i.kl, align 2, !tbaa !248
  %wide.load238.3 = load <8 x i16>, ptr %i.km, align 2, !tbaa !248
  store <8 x i16> %wide.load237.3, ptr %i.hl, align 8, !tbaa !248
  store <8 x i16> %wide.load238.3, ptr %i.hm, align 8, !tbaa !248
  br i1 %i.hn, label %middle.block240, label %vector.body235.4

vector.body235.4:                                 ; preds = %vector.body235.3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 128
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 144
  %wide.load237.4 = load <8 x i16>, ptr %i.kn, align 2, !tbaa !248
  %wide.load238.4 = load <8 x i16>, ptr %i.ko, align 2, !tbaa !248
  store <8 x i16> %wide.load237.4, ptr %i.ho, align 8, !tbaa !248
  store <8 x i16> %wide.load238.4, ptr %i.hp, align 8, !tbaa !248
  br i1 %i.hq, label %middle.block240, label %vector.body235.5

vector.body235.5:                                 ; preds = %vector.body235.4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 160
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 176
  %wide.load237.5 = load <8 x i16>, ptr %i.kp, align 2, !tbaa !248
  %wide.load238.5 = load <8 x i16>, ptr %i.kq, align 2, !tbaa !248
  store <8 x i16> %wide.load237.5, ptr %i.hr, align 8, !tbaa !248
  store <8 x i16> %wide.load238.5, ptr %i.hs, align 8, !tbaa !248
  br i1 %i.ht, label %middle.block240, label %vector.body235.6

vector.body235.6:                                 ; preds = %vector.body235.5
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 192
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kb, i64 208
  %wide.load237.6 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !248
  %wide.load238.6 = load <8 x i16>, ptr %i.ks, align 2, !tbaa !248
  store <8 x i16> %wide.load237.6, ptr %i.hu, align 8, !tbaa !248
  store <8 x i16> %wide.load238.6, ptr %i.hv, align 8, !tbaa !248
  br i1 %i.hw, label %middle.block240, label %vector.body235.7

vector.body235.7:                                 ; preds = %vector.body235.6
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kb, i64 224
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kb, i64 240
  %wide.load237.7 = load <8 x i16>, ptr %i.kt, align 2, !tbaa !248
  %wide.load238.7 = load <8 x i16>, ptr %i.ku, align 2, !tbaa !248
end_hunk_5
begin_hunk_6_@_ZNK2cv15ReduceC_InvokerIsssNS_5OpMaxIsEENS_5OpNopIsssEEEclERKNS_5RangeE:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 176
  %wide.load272.5 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !248, !alias.scope !1181
  %wide.load273.5 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !248, !alias.scope !1181
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  store <8 x i16> %wide.load272.5, ptr %i.ct, align 2, !tbaa !248, !alias.scope !1184, !noalias !1181
  store <8 x i16> %wide.load273.5, ptr %i.cu, align 2, !tbaa !248, !alias.scope !1184, !noalias !1181
  br i1 %i.bt, label %middle.block275, label %vector.body270.6

vector.body270.6:                                 ; preds = %vector.body270.5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  %wide.load272.6 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !248, !alias.scope !1181
  %wide.load273.6 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !248, !alias.scope !1181
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 208
  store <8 x i16> %wide.load272.6, ptr %i.cx, align 2, !tbaa !248, !alias.scope !1184, !noalias !1181
  store <8 x i16> %wide.load273.6, ptr %i.cy, align 2, !tbaa !248, !alias.scope !1184, !noalias !1181
  br i1 %i.bu, label %middle.block275, label %vector.body270.7

vector.body270.7:                                 ; preds = %vector.body270.6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  %i.da = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  %wide.load272.7 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !248, !alias.scope !1181
  %wide.load273.7 = load <8 x i16>, ptr %i.da, align 2, !tbaa !248, !alias.scope !1181
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 224
  %i.dc = getelementptr inbounds nuw i8, ptr %i.by, i64 240
  store <8 x i16> %wide.load272.7, ptr %i.db, align 2, !tbaa !248, !alias.scope !1184, !noalias !1181
  store <8 x i16> %wide.load273.7, ptr %i.dc, align 2, !tbaa !248, !alias.scope !1184, !noalias !1181
  br label %middle.block275

middle.block275:                                  ; preds = %vector.body270.7, %vector.body270.6, %vector.body270.5, %vector.body270.4, %vector.body270.3, %vector.body270.2, %vector.body270.1, %vector.body270
  br i1 %cmp.n276, label %.loopexit.us, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block275
  br i1 %min.epilog.iters.check281, label %vec.epilog.scalar.ph279.preheader, label %vec.epilog.ph282, !prof !581

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check266, %vec.epilog.iter.check280
  %vec.epilog.resume.val277 = phi i64 [ %n.vec269, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check266 ]
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph282
  %index285 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph282 ], [ %index.next287, %vec.epilog.vector.body284 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %index285
  %wide.load286 = load <4 x i16>, ptr %i.dd, align 2, !tbaa !248, !alias.scope !1181
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index285
  store <4 x i16> %wide.load286, ptr %i.de, align 2, !tbaa !248, !alias.scope !1184, !noalias !1181
  %index.next287 = add nuw i64 %index285, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next287, %n.vec283
  br i1 %i.df, label %vec.epilog.middle.block288, label %vec.epilog.vector.body284, !llvm.loop !1186

vec.epilog.middle.block288:                       ; preds = %vec.epilog.vector.body284
  br i1 %cmp.n289, label %.loopexit.us, label %vec.epilog.scalar.ph279.preheader

vec.epilog.scalar.ph279.preheader:                ; preds = %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block288
  %indvars.iv109.ph = phi i64 [ 0, %iter.check278 ], [ %n.vec283, %vec.epilog.middle.block288 ], [ %n.vec269, %vec.epilog.iter.check280 ] ; 3 uses
  %i.dg = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod307.not, label %vec.epilog.scalar.ph279.prol.loopexit, label %vec.epilog.scalar.ph279.prol

vec.epilog.scalar.ph279.prol:                     ; preds = %vec.epilog.scalar.ph279.preheader, %vec.epilog.scalar.ph279.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %vec.epilog.scalar.ph279.prol ], [ %indvars.iv109.ph, %vec.epilog.scalar.ph279.preheader ] ; 3 uses
  %prol.iter308 = phi i64 [ %prol.iter308.next, %vec.epilog.scalar.ph279.prol ], [ 0, %vec.epilog.scalar.ph279.preheader ]
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv109.prol
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !248
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv109.prol
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !248
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter308.next = add i64 %prol.iter308, 1   ; 2 uses
  %prol.iter308.cmp.not = icmp eq i64 %prol.iter308.next, %xtraiter306
  br i1 %prol.iter308.cmp.not, label %vec.epilog.scalar.ph279.prol.loopexit, label %vec.epilog.scalar.ph279.prol, !llvm.loop !1187

vec.epilog.scalar.ph279.prol.loopexit:            ; preds = %vec.epilog.scalar.ph279.prol, %vec.epilog.scalar.ph279.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %vec.epilog.scalar.ph279.preheader ], [ %indvars.iv.next110.prol, %vec.epilog.scalar.ph279.prol ]
  %i.dk = icmp ult i64 %i.dg, 3
  br i1 %i.dk, label %.loopexit.us, label %vec.epilog.scalar.ph279

vec.epilog.scalar.ph279:                          ; preds = %vec.epilog.scalar.ph279.prol.loopexit, %vec.epilog.scalar.ph279
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %vec.epilog.scalar.ph279 ], [ %indvars.iv109.unr, %vec.epilog.scalar.ph279.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv109
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !248
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv109
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !248
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !248
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !248
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110.1
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !248
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110.1
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !248
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110.2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !248
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110.2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !248
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %vec.epilog.scalar.ph279, !llvm.loop !1188

.loopexit.us:                                     ; preds = %vec.epilog.scalar.ph279.prol.loopexit, %vec.epilog.scalar.ph279, %vec.epilog.middle.block288, %middle.block275
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %iter.check278, !llvm.loop !1189

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dx = icmp slt i32 %i.g, %i.z
  br i1 %i.dx, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.dy = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.dz = mul i64 %i.as, %i.dy
  %i.ea = add i64 %i.dz, %i.aq
  %i.eb = add i64 %i.ea, -16
  %i.ec = sub i64 %i.eb, %i.a
  %i.ed = mul i64 %i.al, %i.dy
  %i.ee = add i64 %i.ed, %i.aj
  %i.ef = and i32 %i.e, 127
  %i.eg = zext nneg i32 %i.ef to i64              ; 4 uses
  %i.eh = add nuw nsw i64 %i.eg, 1
  %i.ei = add nuw nsw i64 %i.eg, 1
  %min.iters.check140 = icmp samesign ult i32 %i.f, 3
  %min.iters.check142 = icmp samesign ult i32 %i.f, 15
  %i.ej = and i64 %i.aa, 12
  %n.vec144 = and i64 %i.aa, 240                  ; 10 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.el = icmp eq i64 %n.vec144, 16
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.eo = icmp eq i64 %n.vec144, 32
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.er = icmp eq i64 %n.vec144, 48
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.eu = icmp eq i64 %n.vec144, 64
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ex = icmp eq i64 %n.vec144, 80
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.fa = icmp eq i64 %n.vec144, 96
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.fd = icmp eq i64 %n.vec144, 112
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n151 = icmp eq i64 %n.vec144, %i.aa
  %min.epilog.iters.check156 = icmp eq i64 %i.ej, 0
  %n.vec158 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n164 = icmp eq i64 %n.vec158, %i.aa
  %xtraiter = and i64 %i.eh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 3
  %invariant.op = add i64 %i.ec, -1
  %min.iters.check131 = icmp samesign ult i32 %i.f, 15
  %i.fg = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 240                     ; 10 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fi = icmp eq i64 %n.vec, 16
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fl = icmp eq i64 %n.vec, 32
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fo = icmp eq i64 %n.vec, 48
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.fr = icmp eq i64 %n.vec, 64
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.fu = icmp eq i64 %n.vec, 80
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.fx = icmp eq i64 %n.vec, 96
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ga = icmp eq i64 %n.vec, 112
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %min.epilog.iters.check = icmp eq i64 %i.fg, 0
  %n.vec133 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n137 = icmp eq i64 %n.vec133, %i.aa
  %xtraiter294 = and i64 %i.ei, 3                 ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br label %iter.check153

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.gd = zext i32 %i.z to i64                    ; 2 uses
  %i.ge = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.gf = mul i64 %i.as, %i.ge
  %i.gg = add i64 %i.gf, %i.aq
  %i.gh = add i64 %i.gg, -16
  %i.gi = sub i64 %i.gh, %i.a
  %i.gj = and i32 %i.e, 127
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = shl nuw nsw i64 %i.gk, 1                ; 5 uses
  %i.gm = getelementptr i8, ptr %4, i64 %i.gl
  %scevgep = getelementptr i8, ptr %i.gm, i64 18
  %i.gn = mul i64 %i.al, %i.ge                    ; 3 uses
  %i.go = add nuw nsw i64 %i.gl, 2                ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.go, i64 %i.gd)
  %i.gp = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.gp, %i.gl
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.gl, %umin
  %i.gq = sub nsw i64 %i.gp, %6
  %i.gr = udiv i64 %i.gq, %i.aa
  %7 = add i64 %i.gr, %umin
  %i.gs = mul i64 %7, %i.go
  %i.gt = shl nuw nsw i64 %i.gk, 2
  %i.gu = add i64 %i.gn, %i.aj
  %i.gv = and i32 %i.e, 127
  %i.gw = zext nneg i32 %i.gv to i64              ; 6 uses
  %i.gx = add nuw nsw i64 %i.gw, 1
  %i.gy = add nuw nsw i64 %i.gw, 1
  %i.gz = getelementptr i8, ptr %i.ai, i64 %i.gn
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gl
  %i.hb = getelementptr i8, ptr %i.ha, i64 2
  %min.iters.check230 = icmp samesign ult i32 %i.f, 3
  %min.iters.check232 = icmp samesign ult i32 %i.f, 15
  %i.hc = and i64 %i.aa, 12
  %n.vec234 = and i64 %i.aa, 240                  ; 10 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.he = icmp eq i64 %n.vec234, 16
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hh = icmp eq i64 %n.vec234, 32
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.hk = icmp eq i64 %n.vec234, 48
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.hn = icmp eq i64 %n.vec234, 64
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.hq = icmp eq i64 %n.vec234, 80
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ht = icmp eq i64 %n.vec234, 96
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.hw = icmp eq i64 %n.vec234, 112
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n241 = icmp eq i64 %n.vec234, %i.aa
  %min.epilog.iters.check246 = icmp eq i64 %i.hc, 0
  %n.vec248 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n254 = icmp eq i64 %n.vec248, %i.aa
  %xtraiter297 = and i64 %i.gx, 3                 ; 2 uses
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  %i.hz = getelementptr i8, ptr %i.ai, i64 %i.gs
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.gn
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.gt
  %i.ic = getelementptr i8, ptr %i.ib, i64 4
  %min.iters.check199 = icmp samesign ult i32 %i.f, 3
  %min.iters.check201 = icmp samesign ult i32 %i.f, 15
  %i.id = and i64 %i.aa, 12
  %n.vec203 = and i64 %i.aa, 240                  ; 10 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.if = icmp eq i64 %n.vec203, 16
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ii = icmp eq i64 %n.vec203, 32
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.il = icmp eq i64 %n.vec203, 48
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.io = icmp eq i64 %n.vec203, 64
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.ir = icmp eq i64 %n.vec203, 80
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.iu = icmp eq i64 %n.vec203, 96
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 2 uses
  %i.ix = icmp eq i64 %n.vec203, 112
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %cmp.n212 = icmp eq i64 %n.vec203, %i.aa
  %min.epilog.iters.check217 = icmp eq i64 %i.id, 0
  %n.vec219 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n226 = icmp eq i64 %n.vec219, %i.aa
  %i.ja = and i64 %i.gw, 1
  %lcmp.mod301.not.not = icmp eq i64 %i.ja, 0
  %min.iters.check170 = icmp samesign ult i32 %i.f, 3
  %invariant.op309 = add i64 %i.gi, -1
  %min.iters.check172 = icmp samesign ult i32 %i.f, 15
  %i.jb = and i64 %i.aa, 12
  %n.vec174 = and i64 %i.aa, 240                  ; 10 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jd = icmp eq i64 %n.vec174, 16
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.jg = icmp eq i64 %n.vec174, 32
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.jj = icmp eq i64 %n.vec174, 48
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.jm = icmp eq i64 %n.vec174, 64
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.jp = icmp eq i64 %n.vec174, 80
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.js = icmp eq i64 %n.vec174, 96
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.jv = icmp eq i64 %n.vec174, 112
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n181 = icmp eq i64 %n.vec174, %i.aa
  %min.epilog.iters.check186 = icmp eq i64 %i.jb, 0
  %n.vec188 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n194 = icmp eq i64 %n.vec188, %i.aa
  %xtraiter303 = and i64 %i.gy, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br label %iter.check243

iter.check243:                                    ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar167 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next168, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.ge, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.jy = mul i64 %i.al, %indvar167               ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.hb, i64 %i.jy
  %i.jz = mul i64 %i.as, %indvar167
  %i.ka = mul i64 %i.al, %indvars.iv104
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ka ; 23 uses
  br i1 %min.iters.check230, label %vec.epilog.scalar.ph244.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %iter.check243
  %i.kc = mul i64 %i.al, %indvar167
  %i.kd = add i64 %i.gu, %i.kc
  %i.ke = sub i64 %i.a, %i.kd
  %i.kf = add i64 %i.ke, 15
  %diff.check229 = icmp ult i64 %i.kf, 31
  br i1 %diff.check229, label %vec.epilog.scalar.ph244.preheader, label %vector.main.loop.iter.check231

vector.main.loop.iter.check231:                   ; preds = %vector.memcheck228
  br i1 %min.iters.check232, label %vec.epilog.ph247, label %vector.body235

vector.body235:                                   ; preds = %vector.main.loop.iter.check231
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %wide.load237 = load <8 x i16>, ptr %i.kb, align 2, !tbaa !248
  %wide.load238 = load <8 x i16>, ptr %i.kg, align 2, !tbaa !248
  store <8 x i16> %wide.load237, ptr %i.ab, align 8, !tbaa !248
  store <8 x i16> %wide.load238, ptr %i.hd, align 8, !tbaa !248
  br i1 %i.he, label %middle.block240, label %vector.body235.1

vector.body235.1:                                 ; preds = %vector.body235
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %wide.load237.1 = load <8 x i16>, ptr %i.kh, align 2, !tbaa !248
  %wide.load238.1 = load <8 x i16>, ptr %i.ki, align 2, !tbaa !248
  store <8 x i16> %wide.load237.1, ptr %i.hf, align 8, !tbaa !248
  store <8 x i16> %wide.load238.1, ptr %i.hg, align 8, !tbaa !248
  br i1 %i.hh, label %middle.block240, label %vector.body235.2

vector.body235.2:                                 ; preds = %vector.body235.1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 80
  %wide.load237.2 = load <8 x i16>, ptr %i.kj, align 2, !tbaa !248
  %wide.load238.2 = load <8 x i16>, ptr %i.kk, align 2, !tbaa !248
  store <8 x i16> %wide.load237.2, ptr %i.hi, align 8, !tbaa !248
  store <8 x i16> %wide.load238.2, ptr %i.hj, align 8, !tbaa !248
  br i1 %i.hk, label %middle.block240, label %vector.body235.3

vector.body235.3:                                 ; preds = %vector.body235.2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 112
  %wide.load237.3 = load <8 x i16>, ptr %i.kl, align 2, !tbaa !248
  %wide.load238.3 = load <8 x i16>, ptr %i.km, align 2, !tbaa !248
  store <8 x i16> %wide.load237.3, ptr %i.hl, align 8, !tbaa !248
  store <8 x i16> %wide.load238.3, ptr %i.hm, align 8, !tbaa !248
  br i1 %i.hn, label %middle.block240, label %vector.body235.4

vector.body235.4:                                 ; preds = %vector.body235.3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 128
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 144
  %wide.load237.4 = load <8 x i16>, ptr %i.kn, align 2, !tbaa !248
  %wide.load238.4 = load <8 x i16>, ptr %i.ko, align 2, !tbaa !248
  store <8 x i16> %wide.load237.4, ptr %i.ho, align 8, !tbaa !248
  store <8 x i16> %wide.load238.4, ptr %i.hp, align 8, !tbaa !248
  br i1 %i.hq, label %middle.block240, label %vector.body235.5

vector.body235.5:                                 ; preds = %vector.body235.4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 160
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 176
  %wide.load237.5 = load <8 x i16>, ptr %i.kp, align 2, !tbaa !248
  %wide.load238.5 = load <8 x i16>, ptr %i.kq, align 2, !tbaa !248
  store <8 x i16> %wide.load237.5, ptr %i.hr, align 8, !tbaa !248
  store <8 x i16> %wide.load238.5, ptr %i.hs, align 8, !tbaa !248
  br i1 %i.ht, label %middle.block240, label %vector.body235.6

vector.body235.6:                                 ; preds = %vector.body235.5
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 192
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kb, i64 208
  %wide.load237.6 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !248
  %wide.load238.6 = load <8 x i16>, ptr %i.ks, align 2, !tbaa !248
  store <8 x i16> %wide.load237.6, ptr %i.hu, align 8, !tbaa !248
  store <8 x i16> %wide.load238.6, ptr %i.hv, align 8, !tbaa !248
  br i1 %i.hw, label %middle.block240, label %vector.body235.7

vector.body235.7:                                 ; preds = %vector.body235.6
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kb, i64 224
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kb, i64 240
  %wide.load237.7 = load <8 x i16>, ptr %i.kt, align 2, !tbaa !248
  %wide.load238.7 = load <8 x i16>, ptr %i.ku, align 2, !tbaa !248
end_hunk_6
begin_hunk_7_@_ZNK2cv15ReduceC_InvokerIfffNS_5OpMaxIfEENS_5OpNopIfffEEEclERKNS_5RangeE:bb.a
bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.r = icmp eq i32 %i.i, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 31 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !315
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113 ; 4 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1212, !nonnull !455, !align !456 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 6 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 10 uses
  %i.at = icmp eq i32 %i.z, %i.g
  br i1 %i.at, label %.preheader61.us.preheader, label %.lr.ph.split

.preheader61.us.preheader:                        ; preds = %.lr.ph
  %i.au = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count117 = sext i32 %i.af to i64     ; 2 uses
  %i.av = mul i64 %i.as, %i.au
  %scevgep194 = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.aw = add nsw i64 %wide.trip.count117, -1     ; 2 uses
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = shl nuw nsw i32 %i.e, 2
  %i.az = and i32 %i.ay, 508
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %scevgep195 = getelementptr i8, ptr %i.bc, i64 4
  %i.bd = mul i64 %i.al, %i.au
  %scevgep196 = getelementptr i8, ptr %i.ai, i64 %i.bd
  %i.be = mul i64 %i.al, %i.aw
  %i.bf = getelementptr i8, ptr %i.ai, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
  %scevgep197 = getelementptr i8, ptr %i.bg, i64 4
  %i.bh = and i32 %i.e, 127
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %min.iters.check203 = icmp samesign ult i32 %i.f, 7
  %bound0198 = icmp ult ptr %scevgep194, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  %i.bk = or i64 %i.al, %i.as
  %i.bl = icmp slt i64 %i.bk, 0
  %i.bm = or i1 %found.conflict200, %i.bl
  %n.vec205 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec205, %i.aa
  %xtraiter231 = and i64 %i.bj, 3                 ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br label %.preheader61.us

.preheader61.us:                                  ; preds = %.preheader61.us.preheader, %.loopexit.us
  %indvars.iv114 = phi i64 [ %i.au, %.preheader61.us.preheader ], [ %indvars.iv.next115, %.loopexit.us ] ; 3 uses
  %i.bn = mul i64 %i.al, %indvars.iv114
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn ; 6 uses
  %i.bp = mul i64 %i.as, %indvars.iv114
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp ; 6 uses
  %brmerge = select i1 %min.iters.check203, i1 true, i1 %i.bm
  br i1 %brmerge, label %scalar.ph202.preheader, label %vector.body206

vector.body206:                                   ; preds = %.preheader61.us, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index207 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load208 = load <4 x float>, ptr %i.br, align 4, !tbaa !79, !alias.scope !1213
  %wide.load209 = load <4 x float>, ptr %i.bs, align 4, !tbaa !79, !alias.scope !1213
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index207 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x float> %wide.load208, ptr %i.bt, align 4, !tbaa !79, !alias.scope !1216, !noalias !1213
  store <4 x float> %wide.load209, ptr %i.bu, align 4, !tbaa !79, !alias.scope !1216, !noalias !1213
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.bv, label %middle.block211, label %vector.body206, !llvm.loop !1218

middle.block211:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %.loopexit.us, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %.preheader61.us, %middle.block211
  %indvars.iv109.ph = phi i64 [ %n.vec205, %middle.block211 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bw = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod232.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader, %scalar.ph202.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %scalar.ph202.prol ], [ %indvars.iv109.ph, %scalar.ph202.preheader ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %scalar.ph202.prol ], [ 0, %scalar.ph202.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv109.prol
  %i.by = load float, ptr %i.bx, align 4, !tbaa !79
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv109.prol
  store float %i.by, ptr %i.bz, align 4, !tbaa !79
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol, !llvm.loop !1219

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %scalar.ph202.preheader ], [ %indvars.iv.next110.prol, %scalar.ph202.prol ]
  %i.ca = icmp ult i64 %i.bw, 3
  br i1 %i.ca, label %.loopexit.us, label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %scalar.ph202 ], [ %indvars.iv109.unr, %scalar.ph202.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv109
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !79
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv109
  store float %i.cc, ptr %i.cd, align 4, !tbaa !79
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next110
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !79
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next110
  store float %i.cf, ptr %i.cg, align 4, !tbaa !79
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next110.1
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !79
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next110.1
  store float %i.ci, ptr %i.cj, align 4, !tbaa !79
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next110.2
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !79
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next110.2
  store float %i.cl, ptr %i.cm, align 4, !tbaa !79
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %scalar.ph202, !llvm.loop !1220

.loopexit.us:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %middle.block211
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader61.us, !llvm.loop !1221

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cn = icmp slt i32 %i.g, %i.z
  br i1 %i.cn, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.co = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.cp = mul i64 %i.as, %i.co
  %i.cq = add i64 %i.cp, %i.aq
  %i.cr = add i64 %i.cq, -16
  %i.cs = sub i64 %i.cr, %i.a
  %i.ct = mul i64 %i.al, %i.co
  %i.cu = add i64 %i.ct, %i.aj
  %i.cv = and i32 %i.e, 127
  %i.cw = zext nneg i32 %i.cv to i64              ; 4 uses
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = add nuw nsw i64 %i.cw, 1
  %min.iters.check135 = icmp samesign ult i32 %i.f, 7
  %n.vec137 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n144 = icmp eq i64 %n.vec137, %i.aa
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 7
  %invariant.op = add i64 %i.cs, -1
  %n.vec = and i64 %i.aa, 248                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter219 = and i64 %i.cy, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br label %.preheader65

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.cz = zext i32 %i.z to i64                    ; 2 uses
  %i.da = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.db = mul i64 %i.as, %i.da
  %i.dc = add i64 %i.db, %i.aq
  %i.dd = add i64 %i.dc, -16
  %i.de = sub i64 %i.dd, %i.a
  %i.df = and i32 %i.e, 127
  %i.dg = zext nneg i32 %i.df to i64              ; 3 uses
  %i.dh = shl nuw nsw i64 %i.dg, 2                ; 3 uses
  %i.di = getelementptr i8, ptr %4, i64 %i.dh
  %scevgep = getelementptr i8, ptr %i.di, i64 20
  %i.dj = mul i64 %i.al, %i.da                    ; 3 uses
  %i.dk = shl nuw nsw i64 %i.dg, 1                ; 3 uses
  %i.dl = add nuw nsw i64 %i.dk, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.cz)
  %i.dm = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dm, %i.dk
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dk, %umin
  %i.dn = sub nsw i64 %i.dm, %6
  %i.do = udiv i64 %i.dn, %i.aa
  %7 = add i64 %i.do, %umin
  %i.dp = add nuw nsw i64 %i.dh, 4
  %i.dq = mul i64 %7, %i.dp
  %i.dr = shl nuw nsw i64 %i.dg, 3
  %i.ds = add i64 %i.dj, %i.aj
  %i.dt = and i32 %i.e, 127
  %i.du = zext nneg i32 %i.dt to i64              ; 6 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = add nuw nsw i64 %i.du, 1
  %i.dx = getelementptr i8, ptr %i.ai, i64 %i.dj
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dh
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %min.iters.check182 = icmp samesign ult i32 %i.f, 7
  %n.vec184 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec184, %i.aa
  %xtraiter222 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %i.ea = getelementptr i8, ptr %i.ai, i64 %i.dq
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dj
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %min.iters.check166 = icmp samesign ult i32 %i.f, 7
  %n.vec168 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec168, %i.aa
  %i.ee = and i64 %i.du, 1
  %lcmp.mod226.not.not = icmp eq i64 %i.ee, 0
  %min.iters.check151 = icmp samesign ult i32 %i.f, 7
  %invariant.op234 = add i64 %i.de, -1
  %n.vec153 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec153, %i.aa
  %xtraiter228 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar147 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next148, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.da, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.ef = mul i64 %i.al, %indvar147               ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.dz, i64 %i.ef
  %i.eg = mul i64 %i.as, %indvar147
  %i.eh = mul i64 %i.al, %indvars.iv104
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eh ; 7 uses
  br i1 %min.iters.check182, label %scalar.ph181.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.preheader65.us
  %i.ej = mul i64 %i.al, %indvar147
  %i.ek = add i64 %i.ds, %i.ej
  %i.el = sub i64 %i.a, %i.ek
  %i.em = add i64 %i.el, 15
  %diff.check180 = icmp ult i64 %i.em, 31
  br i1 %diff.check180, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %vector.memcheck179, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %vector.memcheck179 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index186 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load187 = load <4 x float>, ptr %i.en, align 4, !tbaa !79
  %wide.load188 = load <4 x float>, ptr %i.eo, align 4, !tbaa !79
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index186 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> %wide.load187, ptr %i.ep, align 8, !tbaa !79
  store <4 x float> %wide.load188, ptr %i.eq, align 8, !tbaa !79
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.er, label %middle.block190, label %vector.body185, !llvm.loop !1222

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.preheader.us.preheader, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %vector.memcheck179, %.preheader65.us, %middle.block190
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck179 ], [ 0, %.preheader65.us ], [ %n.vec184, %middle.block190 ] ; 3 uses
  %i.es = sub nsw i64 %i.du, %indvars.iv86.ph
  br i1 %lcmp.mod223.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader, %scalar.ph181.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %scalar.ph181.prol ], [ %indvars.iv86.ph, %scalar.ph181.preheader ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %scalar.ph181.prol ], [ 0, %scalar.ph181.preheader ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv86.prol
  %i.eu = load float, ptr %i.et, align 4, !tbaa !79
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv86.prol
  store float %i.eu, ptr %i.ev, align 4, !tbaa !79
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol, !llvm.loop !1223

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph181.preheader ], [ %indvars.iv.next87.prol, %scalar.ph181.prol ]
  %i.ew = icmp ult i64 %i.es, 3
  br i1 %i.ew, label %.preheader.us.preheader, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %scalar.ph181 ], [ %indvars.iv86.unr, %scalar.ph181.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv86
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !79
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv86
  store float %i.ey, ptr %i.ez, align 4, !tbaa !79
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next87
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !79
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next87
  store float %i.fb, ptr %i.fc, align 4, !tbaa !79
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next87.1
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !79
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next87.1
  store float %i.fe, ptr %i.ff, align 4, !tbaa !79
  %indvars.iv.next87.2 = add nuw nsw i64 %indvars.iv86, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next87.2
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !79
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next87.2
  store float %i.fh, ptr %i.fi, align 4, !tbaa !79
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %exitcond90.not.3 = icmp eq i64 %indvars.iv.next87.3, %i.aa
  br i1 %exitcond90.not.3, label %.preheader.us.preheader, label %scalar.ph181, !llvm.loop !1224

.preheader.us.preheader:                          ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block190
  %scevgep164 = getelementptr i8, ptr %i.ed, i64 %i.ef
  %bound0 = icmp ult ptr %i.ab, %scevgep164
  %bound1 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

scalar.ph165:                                     ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.1, %scalar.ph165 ], [ %indvars.iv91.unr, %scalar.ph165.prol.loopexit ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv91 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !79 ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.fl = load float, ptr %gep, align 4, !tbaa !79 ; 2 uses
  %i.fm = fcmp olt float %i.fk, %i.fl
  %.sroa.speculated.i.us = select i1 %i.fm, float %i.fl, float %i.fk
  store float %.sroa.speculated.i.us, ptr %i.fj, align 4, !tbaa !79
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next92 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !79 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.fp = load float, ptr %gep.1, align 4, !tbaa !79 ; 2 uses
  %i.fq = fcmp olt float %i.fo, %i.fp
  %.sroa.speculated.i.us.1 = select i1 %i.fq, float %i.fp, float %i.fo
  store float %.sroa.speculated.i.us.1, ptr %i.fn, align 4, !tbaa !79
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %exitcond95.not.1 = icmp eq i64 %indvars.iv.next92.1, %i.aa
  br i1 %exitcond95.not.1, label %.loopexit, label %scalar.ph165, !llvm.loop !1225

.loopexit:                                        ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165, %middle.block176
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, %i.aa ; 2 uses
  %i.fr = icmp samesign ult i64 %indvars.iv.next97, %i.cz
  br i1 %i.fr, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !1226

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.fs = mul i64 %i.as, %indvars.iv104
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fs ; 6 uses
  %.reass235 = add i64 %i.eg, %invariant.op234
  %diff.check149 = icmp ult i64 %.reass235, 31
  %or.cond = select i1 %min.iters.check151, i1 true, i1 %diff.check149
  br i1 %or.cond, label %..preheader62_crit_edge.us.preheader215, label %vector.body154

vector.body154:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body154
  %index155 = phi i64 [ %index.next158, %vector.body154 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index155 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load156 = load <4 x float>, ptr %i.fu, align 8, !tbaa !79
  %wide.load157 = load <4 x float>, ptr %i.fv, align 8, !tbaa !79
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %index155 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <4 x float> %wide.load156, ptr %i.fw, align 4, !tbaa !79
  store <4 x float> %wide.load157, ptr %i.fx, align 4, !tbaa !79
  %index.next158 = add nuw i64 %index155, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.fy, label %middle.block159, label %vector.body154, !llvm.loop !1227

middle.block159:                                  ; preds = %vector.body154
  br i1 %cmp.n160, label %.loopexit63.us, label %..preheader62_crit_edge.us.preheader215

..preheader62_crit_edge.us.preheader215:          ; preds = %..preheader62_crit_edge.us.preheader, %middle.block159
  %indvars.iv99.ph = phi i64 [ 0, %..preheader62_crit_edge.us.preheader ], [ %n.vec153, %middle.block159 ] ; 3 uses
  %i.fz = sub nsw i64 %i.du, %indvars.iv99.ph
  br i1 %lcmp.mod229.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol

..preheader62_crit_edge.us.prol:                  ; preds = %..preheader62_crit_edge.us.preheader215, %..preheader62_crit_edge.us.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ], [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ] ; 3 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %..preheader62_crit_edge.us.prol ], [ 0, %..preheader62_crit_edge.us.preheader215 ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv99.prol
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !79
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv99.prol
  store float %i.gb, ptr %i.gc, align 4, !tbaa !79
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol, !llvm.loop !1228

..preheader62_crit_edge.us.prol.loopexit:         ; preds = %..preheader62_crit_edge.us.prol, %..preheader62_crit_edge.us.preheader215
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ], [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ]
  %i.gd = icmp ult i64 %i.fz, 3
  br i1 %i.gd, label %.loopexit63.us, label %..preheader62_crit_edge.us

..preheader62_crit_edge.us:                       ; preds = %..preheader62_crit_edge.us.prol.loopexit, %..preheader62_crit_edge.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %..preheader62_crit_edge.us ], [ %indvars.iv99.unr, %..preheader62_crit_edge.us.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv99
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !79
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv99
  store float %i.gf, ptr %i.gg, align 4, !tbaa !79
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK2cv15ReduceC_InvokerIdddNS_5OpMaxIdEENS_5OpNopIdddEEEclERKNS_5RangeE:bb.a
bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.r = icmp eq i32 %i.i, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 31 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !337
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113 ; 4 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1244, !nonnull !455, !align !456 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 6 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 10 uses
  %i.at = icmp eq i32 %i.z, %i.g
  br i1 %i.at, label %.preheader61.us.preheader, label %.lr.ph.split

.preheader61.us.preheader:                        ; preds = %.lr.ph
  %i.au = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count117 = sext i32 %i.af to i64     ; 2 uses
  %i.av = mul i64 %i.as, %i.au
  %scevgep194 = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.aw = add nsw i64 %wide.trip.count117, -1     ; 2 uses
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = shl nuw nsw i32 %i.e, 3
  %i.az = and i32 %i.ay, 1016
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %scevgep195 = getelementptr i8, ptr %i.bc, i64 8
  %i.bd = mul i64 %i.al, %i.au
  %scevgep196 = getelementptr i8, ptr %i.ai, i64 %i.bd
  %i.be = mul i64 %i.al, %i.aw
  %i.bf = getelementptr i8, ptr %i.ai, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
  %scevgep197 = getelementptr i8, ptr %i.bg, i64 8
  %i.bh = and i32 %i.e, 127
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %min.iters.check203 = icmp samesign ult i32 %i.f, 7
  %bound0198 = icmp ult ptr %scevgep194, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  %i.bk = or i64 %i.al, %i.as
  %i.bl = icmp slt i64 %i.bk, 0
  %i.bm = or i1 %found.conflict200, %i.bl
  %n.vec205 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec205, %i.aa
  %xtraiter231 = and i64 %i.bj, 3                 ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br label %.preheader61.us

.preheader61.us:                                  ; preds = %.preheader61.us.preheader, %.loopexit.us
  %indvars.iv114 = phi i64 [ %i.au, %.preheader61.us.preheader ], [ %indvars.iv.next115, %.loopexit.us ] ; 3 uses
  %i.bn = mul i64 %i.al, %indvars.iv114
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn ; 6 uses
  %i.bp = mul i64 %i.as, %indvars.iv114
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp ; 6 uses
  %brmerge = select i1 %min.iters.check203, i1 true, i1 %i.bm
  br i1 %brmerge, label %scalar.ph202.preheader, label %vector.body206

vector.body206:                                   ; preds = %.preheader61.us, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index207 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load208 = load <2 x double>, ptr %i.br, align 8, !tbaa !76, !alias.scope !1245
  %wide.load209 = load <2 x double>, ptr %i.bs, align 8, !tbaa !76, !alias.scope !1245
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index207 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> %wide.load208, ptr %i.bt, align 8, !tbaa !76, !alias.scope !1248, !noalias !1245
  store <2 x double> %wide.load209, ptr %i.bu, align 8, !tbaa !76, !alias.scope !1248, !noalias !1245
  %index.next210 = add nuw i64 %index207, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.bv, label %middle.block211, label %vector.body206, !llvm.loop !1250

middle.block211:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %.loopexit.us, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %.preheader61.us, %middle.block211
  %indvars.iv109.ph = phi i64 [ %n.vec205, %middle.block211 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bw = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod232.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader, %scalar.ph202.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %scalar.ph202.prol ], [ %indvars.iv109.ph, %scalar.ph202.preheader ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %scalar.ph202.prol ], [ 0, %scalar.ph202.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv109.prol
  %i.by = load double, ptr %i.bx, align 8, !tbaa !76
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv109.prol
  store double %i.by, ptr %i.bz, align 8, !tbaa !76
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol, !llvm.loop !1251

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %scalar.ph202.preheader ], [ %indvars.iv.next110.prol, %scalar.ph202.prol ]
  %i.ca = icmp ult i64 %i.bw, 3
  br i1 %i.ca, label %.loopexit.us, label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %scalar.ph202 ], [ %indvars.iv109.unr, %scalar.ph202.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv109
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !76
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv109
  store double %i.cc, ptr %i.cd, align 8, !tbaa !76
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next110
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !76
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next110
  store double %i.cf, ptr %i.cg, align 8, !tbaa !76
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next110.1
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next110.1
  store double %i.ci, ptr %i.cj, align 8, !tbaa !76
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next110.2
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next110.2
  store double %i.cl, ptr %i.cm, align 8, !tbaa !76
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %scalar.ph202, !llvm.loop !1252

.loopexit.us:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %middle.block211
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader61.us, !llvm.loop !1253

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cn = icmp slt i32 %i.g, %i.z
  br i1 %i.cn, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.co = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.cp = mul i64 %i.as, %i.co
  %i.cq = add i64 %i.cp, %i.aq
  %i.cr = add i64 %i.cq, -16
  %i.cs = sub i64 %i.cr, %i.a
  %i.ct = mul i64 %i.al, %i.co
  %i.cu = add i64 %i.ct, %i.aj
  %i.cv = and i32 %i.e, 127
  %i.cw = zext nneg i32 %i.cv to i64              ; 4 uses
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = add nuw nsw i64 %i.cw, 1
  %min.iters.check135 = icmp samesign ult i32 %i.f, 3
  %n.vec137 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n144 = icmp eq i64 %n.vec137, %i.aa
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 3
  %invariant.op = add i64 %i.cs, -1
  %n.vec = and i64 %i.aa, 252                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter219 = and i64 %i.cy, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br label %.preheader65

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.cz = zext i32 %i.z to i64                    ; 2 uses
  %i.da = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.db = mul i64 %i.as, %i.da
  %i.dc = add i64 %i.db, %i.aq
  %i.dd = add i64 %i.dc, -16
  %i.de = sub i64 %i.dd, %i.a
  %i.df = and i32 %i.e, 127
  %i.dg = zext nneg i32 %i.df to i64              ; 3 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3                ; 3 uses
  %i.di = getelementptr i8, ptr %4, i64 %i.dh
  %scevgep = getelementptr i8, ptr %i.di, i64 24
  %i.dj = mul i64 %i.al, %i.da                    ; 3 uses
  %i.dk = shl nuw nsw i64 %i.dg, 1                ; 3 uses
  %i.dl = add nuw nsw i64 %i.dk, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.cz)
  %i.dm = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dm, %i.dk
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dk, %umin
  %i.dn = sub nsw i64 %i.dm, %6
  %i.do = udiv i64 %i.dn, %i.aa
  %7 = add i64 %i.do, %umin
  %i.dp = add nuw nsw i64 %i.dh, 8
  %i.dq = mul i64 %7, %i.dp
  %i.dr = shl nuw nsw i64 %i.dg, 4
  %i.ds = add i64 %i.dj, %i.aj
  %i.dt = and i32 %i.e, 127
  %i.du = zext nneg i32 %i.dt to i64              ; 6 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = add nuw nsw i64 %i.du, 1
  %i.dx = getelementptr i8, ptr %i.ai, i64 %i.dj
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dh
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %min.iters.check182 = icmp samesign ult i32 %i.f, 3
  %n.vec184 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec184, %i.aa
  %xtraiter222 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %i.ea = getelementptr i8, ptr %i.ai, i64 %i.dq
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dj
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %min.iters.check166 = icmp samesign ult i32 %i.f, 3
  %n.vec168 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec168, %i.aa
  %i.ee = and i64 %i.du, 1
  %lcmp.mod226.not.not = icmp eq i64 %i.ee, 0
  %min.iters.check151 = icmp samesign ult i32 %i.f, 3
  %invariant.op234 = add i64 %i.de, -1
  %n.vec153 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec153, %i.aa
  %xtraiter228 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar147 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next148, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.da, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.ef = mul i64 %i.al, %indvar147               ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.dz, i64 %i.ef
  %i.eg = mul i64 %i.as, %indvar147
  %i.eh = mul i64 %i.al, %indvars.iv104
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eh ; 7 uses
  br i1 %min.iters.check182, label %scalar.ph181.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.preheader65.us
  %i.ej = mul i64 %i.al, %indvar147
  %i.ek = add i64 %i.ds, %i.ej
  %i.el = sub i64 %i.a, %i.ek
  %i.em = add i64 %i.el, 15
  %diff.check180 = icmp ult i64 %i.em, 31
  br i1 %diff.check180, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %vector.memcheck179, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %vector.memcheck179 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index186 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load187 = load <2 x double>, ptr %i.en, align 8, !tbaa !76
  %wide.load188 = load <2 x double>, ptr %i.eo, align 8, !tbaa !76
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index186 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x double> %wide.load187, ptr %i.ep, align 8, !tbaa !76
  store <2 x double> %wide.load188, ptr %i.eq, align 8, !tbaa !76
  %index.next189 = add nuw i64 %index186, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.er, label %middle.block190, label %vector.body185, !llvm.loop !1254

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.preheader.us.preheader, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %vector.memcheck179, %.preheader65.us, %middle.block190
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck179 ], [ 0, %.preheader65.us ], [ %n.vec184, %middle.block190 ] ; 3 uses
  %i.es = sub nsw i64 %i.du, %indvars.iv86.ph
  br i1 %lcmp.mod223.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader, %scalar.ph181.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %scalar.ph181.prol ], [ %indvars.iv86.ph, %scalar.ph181.preheader ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %scalar.ph181.prol ], [ 0, %scalar.ph181.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv86.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !76
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv86.prol
  store double %i.eu, ptr %i.ev, align 8, !tbaa !76
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol, !llvm.loop !1255

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph181.preheader ], [ %indvars.iv.next87.prol, %scalar.ph181.prol ]
  %i.ew = icmp ult i64 %i.es, 3
  br i1 %i.ew, label %.preheader.us.preheader, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %scalar.ph181 ], [ %indvars.iv86.unr, %scalar.ph181.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv86
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !76
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv86
  store double %i.ey, ptr %i.ez, align 8, !tbaa !76
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next87
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !76
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next87
  store double %i.fb, ptr %i.fc, align 8, !tbaa !76
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next87.1
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !76
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next87.1
  store double %i.fe, ptr %i.ff, align 8, !tbaa !76
  %indvars.iv.next87.2 = add nuw nsw i64 %indvars.iv86, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next87.2
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !76
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next87.2
  store double %i.fh, ptr %i.fi, align 8, !tbaa !76
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %exitcond90.not.3 = icmp eq i64 %indvars.iv.next87.3, %i.aa
  br i1 %exitcond90.not.3, label %.preheader.us.preheader, label %scalar.ph181, !llvm.loop !1256

.preheader.us.preheader:                          ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block190
  %scevgep164 = getelementptr i8, ptr %i.ed, i64 %i.ef
  %bound0 = icmp ult ptr %i.ab, %scevgep164
  %bound1 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

scalar.ph165:                                     ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.1, %scalar.ph165 ], [ %indvars.iv91.unr, %scalar.ph165.prol.loopexit ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv91 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !76 ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.fl = load double, ptr %gep, align 8, !tbaa !76 ; 2 uses
  %i.fm = fcmp olt double %i.fk, %i.fl
  %.sroa.speculated.i.us = select i1 %i.fm, double %i.fl, double %i.fk
  store double %.sroa.speculated.i.us, ptr %i.fj, align 8, !tbaa !76
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next92 ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !76 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.fp = load double, ptr %gep.1, align 8, !tbaa !76 ; 2 uses
  %i.fq = fcmp olt double %i.fo, %i.fp
  %.sroa.speculated.i.us.1 = select i1 %i.fq, double %i.fp, double %i.fo
  store double %.sroa.speculated.i.us.1, ptr %i.fn, align 8, !tbaa !76
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %exitcond95.not.1 = icmp eq i64 %indvars.iv.next92.1, %i.aa
  br i1 %exitcond95.not.1, label %.loopexit, label %scalar.ph165, !llvm.loop !1257

.loopexit:                                        ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165, %middle.block176
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, %i.aa ; 2 uses
  %i.fr = icmp samesign ult i64 %indvars.iv.next97, %i.cz
  br i1 %i.fr, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !1258

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.fs = mul i64 %i.as, %indvars.iv104
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fs ; 6 uses
  %.reass235 = add i64 %i.eg, %invariant.op234
  %diff.check149 = icmp ult i64 %.reass235, 31
  %or.cond = select i1 %min.iters.check151, i1 true, i1 %diff.check149
  br i1 %or.cond, label %..preheader62_crit_edge.us.preheader215, label %vector.body154

vector.body154:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body154
  %index155 = phi i64 [ %index.next158, %vector.body154 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index155 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load156 = load <2 x double>, ptr %i.fu, align 8, !tbaa !76
  %wide.load157 = load <2 x double>, ptr %i.fv, align 8, !tbaa !76
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index155 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <2 x double> %wide.load156, ptr %i.fw, align 8, !tbaa !76
  store <2 x double> %wide.load157, ptr %i.fx, align 8, !tbaa !76
  %index.next158 = add nuw i64 %index155, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.fy, label %middle.block159, label %vector.body154, !llvm.loop !1259

middle.block159:                                  ; preds = %vector.body154
  br i1 %cmp.n160, label %.loopexit63.us, label %..preheader62_crit_edge.us.preheader215

..preheader62_crit_edge.us.preheader215:          ; preds = %..preheader62_crit_edge.us.preheader, %middle.block159
  %indvars.iv99.ph = phi i64 [ 0, %..preheader62_crit_edge.us.preheader ], [ %n.vec153, %middle.block159 ] ; 3 uses
  %i.fz = sub nsw i64 %i.du, %indvars.iv99.ph
  br i1 %lcmp.mod229.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol

..preheader62_crit_edge.us.prol:                  ; preds = %..preheader62_crit_edge.us.preheader215, %..preheader62_crit_edge.us.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ], [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ] ; 3 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %..preheader62_crit_edge.us.prol ], [ 0, %..preheader62_crit_edge.us.preheader215 ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv99.prol
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !76
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv99.prol
  store double %i.gb, ptr %i.gc, align 8, !tbaa !76
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol, !llvm.loop !1260

..preheader62_crit_edge.us.prol.loopexit:         ; preds = %..preheader62_crit_edge.us.prol, %..preheader62_crit_edge.us.preheader215
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ], [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ]
  %i.gd = icmp ult i64 %i.fz, 3
  br i1 %i.gd, label %.loopexit63.us, label %..preheader62_crit_edge.us

..preheader62_crit_edge.us:                       ; preds = %..preheader62_crit_edge.us.prol.loopexit, %..preheader62_crit_edge.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %..preheader62_crit_edge.us ], [ %indvars.iv99.unr, %..preheader62_crit_edge.us.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv99
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !76
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv99
  store double %i.gf, ptr %i.gg, align 8, !tbaa !76
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZNK2cv15ReduceC_InvokerItttNS_5OpMinItEENS_5OpNopItttEEEclERKNS_5RangeE:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 176
  %wide.load272.5 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !248, !alias.scope !1292
  %wide.load273.5 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !248, !alias.scope !1292
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  store <8 x i16> %wide.load272.5, ptr %i.ct, align 2, !tbaa !248, !alias.scope !1295, !noalias !1292
  store <8 x i16> %wide.load273.5, ptr %i.cu, align 2, !tbaa !248, !alias.scope !1295, !noalias !1292
  br i1 %i.bt, label %middle.block275, label %vector.body270.6

vector.body270.6:                                 ; preds = %vector.body270.5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  %wide.load272.6 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !248, !alias.scope !1292
  %wide.load273.6 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !248, !alias.scope !1292
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 208
  store <8 x i16> %wide.load272.6, ptr %i.cx, align 2, !tbaa !248, !alias.scope !1295, !noalias !1292
  store <8 x i16> %wide.load273.6, ptr %i.cy, align 2, !tbaa !248, !alias.scope !1295, !noalias !1292
  br i1 %i.bu, label %middle.block275, label %vector.body270.7

vector.body270.7:                                 ; preds = %vector.body270.6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  %i.da = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  %wide.load272.7 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !248, !alias.scope !1292
  %wide.load273.7 = load <8 x i16>, ptr %i.da, align 2, !tbaa !248, !alias.scope !1292
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 224
  %i.dc = getelementptr inbounds nuw i8, ptr %i.by, i64 240
  store <8 x i16> %wide.load272.7, ptr %i.db, align 2, !tbaa !248, !alias.scope !1295, !noalias !1292
  store <8 x i16> %wide.load273.7, ptr %i.dc, align 2, !tbaa !248, !alias.scope !1295, !noalias !1292
  br label %middle.block275

middle.block275:                                  ; preds = %vector.body270.7, %vector.body270.6, %vector.body270.5, %vector.body270.4, %vector.body270.3, %vector.body270.2, %vector.body270.1, %vector.body270
  br i1 %cmp.n276, label %.loopexit.us, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block275
  br i1 %min.epilog.iters.check281, label %vec.epilog.scalar.ph279.preheader, label %vec.epilog.ph282, !prof !581

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check266, %vec.epilog.iter.check280
  %vec.epilog.resume.val277 = phi i64 [ %n.vec269, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check266 ]
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph282
  %index285 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph282 ], [ %index.next287, %vec.epilog.vector.body284 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %index285
  %wide.load286 = load <4 x i16>, ptr %i.dd, align 2, !tbaa !248, !alias.scope !1292
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index285
  store <4 x i16> %wide.load286, ptr %i.de, align 2, !tbaa !248, !alias.scope !1295, !noalias !1292
  %index.next287 = add nuw i64 %index285, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next287, %n.vec283
  br i1 %i.df, label %vec.epilog.middle.block288, label %vec.epilog.vector.body284, !llvm.loop !1297

vec.epilog.middle.block288:                       ; preds = %vec.epilog.vector.body284
  br i1 %cmp.n289, label %.loopexit.us, label %vec.epilog.scalar.ph279.preheader

vec.epilog.scalar.ph279.preheader:                ; preds = %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block288
  %indvars.iv109.ph = phi i64 [ 0, %iter.check278 ], [ %n.vec283, %vec.epilog.middle.block288 ], [ %n.vec269, %vec.epilog.iter.check280 ] ; 3 uses
  %i.dg = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod307.not, label %vec.epilog.scalar.ph279.prol.loopexit, label %vec.epilog.scalar.ph279.prol

vec.epilog.scalar.ph279.prol:                     ; preds = %vec.epilog.scalar.ph279.preheader, %vec.epilog.scalar.ph279.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %vec.epilog.scalar.ph279.prol ], [ %indvars.iv109.ph, %vec.epilog.scalar.ph279.preheader ] ; 3 uses
  %prol.iter308 = phi i64 [ %prol.iter308.next, %vec.epilog.scalar.ph279.prol ], [ 0, %vec.epilog.scalar.ph279.preheader ]
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv109.prol
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !248
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv109.prol
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !248
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter308.next = add i64 %prol.iter308, 1   ; 2 uses
  %prol.iter308.cmp.not = icmp eq i64 %prol.iter308.next, %xtraiter306
  br i1 %prol.iter308.cmp.not, label %vec.epilog.scalar.ph279.prol.loopexit, label %vec.epilog.scalar.ph279.prol, !llvm.loop !1298

vec.epilog.scalar.ph279.prol.loopexit:            ; preds = %vec.epilog.scalar.ph279.prol, %vec.epilog.scalar.ph279.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %vec.epilog.scalar.ph279.preheader ], [ %indvars.iv.next110.prol, %vec.epilog.scalar.ph279.prol ]
  %i.dk = icmp ult i64 %i.dg, 3
  br i1 %i.dk, label %.loopexit.us, label %vec.epilog.scalar.ph279

vec.epilog.scalar.ph279:                          ; preds = %vec.epilog.scalar.ph279.prol.loopexit, %vec.epilog.scalar.ph279
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %vec.epilog.scalar.ph279 ], [ %indvars.iv109.unr, %vec.epilog.scalar.ph279.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv109
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !248
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv109
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !248
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !248
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !248
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110.1
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !248
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110.1
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !248
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110.2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !248
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110.2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !248
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %vec.epilog.scalar.ph279, !llvm.loop !1299

.loopexit.us:                                     ; preds = %vec.epilog.scalar.ph279.prol.loopexit, %vec.epilog.scalar.ph279, %vec.epilog.middle.block288, %middle.block275
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %iter.check278, !llvm.loop !1300

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dx = icmp slt i32 %i.g, %i.z
  br i1 %i.dx, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.dy = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.dz = mul i64 %i.as, %i.dy
  %i.ea = add i64 %i.dz, %i.aq
  %i.eb = add i64 %i.ea, -16
  %i.ec = sub i64 %i.eb, %i.a
  %i.ed = mul i64 %i.al, %i.dy
  %i.ee = add i64 %i.ed, %i.aj
  %i.ef = and i32 %i.e, 127
  %i.eg = zext nneg i32 %i.ef to i64              ; 4 uses
  %i.eh = add nuw nsw i64 %i.eg, 1
  %i.ei = add nuw nsw i64 %i.eg, 1
  %min.iters.check140 = icmp samesign ult i32 %i.f, 3
  %min.iters.check142 = icmp samesign ult i32 %i.f, 15
  %i.ej = and i64 %i.aa, 12
  %n.vec144 = and i64 %i.aa, 240                  ; 10 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.el = icmp eq i64 %n.vec144, 16
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.eo = icmp eq i64 %n.vec144, 32
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.er = icmp eq i64 %n.vec144, 48
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.eu = icmp eq i64 %n.vec144, 64
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ex = icmp eq i64 %n.vec144, 80
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.fa = icmp eq i64 %n.vec144, 96
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.fd = icmp eq i64 %n.vec144, 112
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n151 = icmp eq i64 %n.vec144, %i.aa
  %min.epilog.iters.check156 = icmp eq i64 %i.ej, 0
  %n.vec158 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n164 = icmp eq i64 %n.vec158, %i.aa
  %xtraiter = and i64 %i.eh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 3
  %invariant.op = add i64 %i.ec, -1
  %min.iters.check131 = icmp samesign ult i32 %i.f, 15
  %i.fg = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 240                     ; 10 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fi = icmp eq i64 %n.vec, 16
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fl = icmp eq i64 %n.vec, 32
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fo = icmp eq i64 %n.vec, 48
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.fr = icmp eq i64 %n.vec, 64
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.fu = icmp eq i64 %n.vec, 80
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.fx = icmp eq i64 %n.vec, 96
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ga = icmp eq i64 %n.vec, 112
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %min.epilog.iters.check = icmp eq i64 %i.fg, 0
  %n.vec133 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n137 = icmp eq i64 %n.vec133, %i.aa
  %xtraiter294 = and i64 %i.ei, 3                 ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br label %iter.check153

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.gd = zext i32 %i.z to i64                    ; 2 uses
  %i.ge = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.gf = mul i64 %i.as, %i.ge
  %i.gg = add i64 %i.gf, %i.aq
  %i.gh = add i64 %i.gg, -16
  %i.gi = sub i64 %i.gh, %i.a
  %i.gj = and i32 %i.e, 127
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = shl nuw nsw i64 %i.gk, 1                ; 5 uses
  %i.gm = getelementptr i8, ptr %4, i64 %i.gl
  %scevgep = getelementptr i8, ptr %i.gm, i64 18
  %i.gn = mul i64 %i.al, %i.ge                    ; 3 uses
  %i.go = add nuw nsw i64 %i.gl, 2                ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.go, i64 %i.gd)
  %i.gp = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.gp, %i.gl
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.gl, %umin
  %i.gq = sub nsw i64 %i.gp, %6
  %i.gr = udiv i64 %i.gq, %i.aa
  %7 = add i64 %i.gr, %umin
  %i.gs = mul i64 %7, %i.go
  %i.gt = shl nuw nsw i64 %i.gk, 2
  %i.gu = add i64 %i.gn, %i.aj
  %i.gv = and i32 %i.e, 127
  %i.gw = zext nneg i32 %i.gv to i64              ; 6 uses
  %i.gx = add nuw nsw i64 %i.gw, 1
  %i.gy = add nuw nsw i64 %i.gw, 1
  %i.gz = getelementptr i8, ptr %i.ai, i64 %i.gn
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gl
  %i.hb = getelementptr i8, ptr %i.ha, i64 2
  %min.iters.check230 = icmp samesign ult i32 %i.f, 3
  %min.iters.check232 = icmp samesign ult i32 %i.f, 15
  %i.hc = and i64 %i.aa, 12
  %n.vec234 = and i64 %i.aa, 240                  ; 10 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.he = icmp eq i64 %n.vec234, 16
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hh = icmp eq i64 %n.vec234, 32
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.hk = icmp eq i64 %n.vec234, 48
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.hn = icmp eq i64 %n.vec234, 64
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.hq = icmp eq i64 %n.vec234, 80
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ht = icmp eq i64 %n.vec234, 96
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.hw = icmp eq i64 %n.vec234, 112
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n241 = icmp eq i64 %n.vec234, %i.aa
  %min.epilog.iters.check246 = icmp eq i64 %i.hc, 0
  %n.vec248 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n254 = icmp eq i64 %n.vec248, %i.aa
  %xtraiter297 = and i64 %i.gx, 3                 ; 2 uses
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  %i.hz = getelementptr i8, ptr %i.ai, i64 %i.gs
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.gn
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.gt
  %i.ic = getelementptr i8, ptr %i.ib, i64 4
  %min.iters.check199 = icmp samesign ult i32 %i.f, 3
  %min.iters.check201 = icmp samesign ult i32 %i.f, 15
  %i.id = and i64 %i.aa, 12
  %n.vec203 = and i64 %i.aa, 240                  ; 10 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.if = icmp eq i64 %n.vec203, 16
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ii = icmp eq i64 %n.vec203, 32
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.il = icmp eq i64 %n.vec203, 48
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.io = icmp eq i64 %n.vec203, 64
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.ir = icmp eq i64 %n.vec203, 80
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.iu = icmp eq i64 %n.vec203, 96
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 2 uses
  %i.ix = icmp eq i64 %n.vec203, 112
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %cmp.n212 = icmp eq i64 %n.vec203, %i.aa
  %min.epilog.iters.check217 = icmp eq i64 %i.id, 0
  %n.vec219 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n226 = icmp eq i64 %n.vec219, %i.aa
  %i.ja = and i64 %i.gw, 1
  %lcmp.mod301.not.not = icmp eq i64 %i.ja, 0
  %min.iters.check170 = icmp samesign ult i32 %i.f, 3
  %invariant.op309 = add i64 %i.gi, -1
  %min.iters.check172 = icmp samesign ult i32 %i.f, 15
  %i.jb = and i64 %i.aa, 12
  %n.vec174 = and i64 %i.aa, 240                  ; 10 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jd = icmp eq i64 %n.vec174, 16
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.jg = icmp eq i64 %n.vec174, 32
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.jj = icmp eq i64 %n.vec174, 48
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.jm = icmp eq i64 %n.vec174, 64
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.jp = icmp eq i64 %n.vec174, 80
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.js = icmp eq i64 %n.vec174, 96
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.jv = icmp eq i64 %n.vec174, 112
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n181 = icmp eq i64 %n.vec174, %i.aa
  %min.epilog.iters.check186 = icmp eq i64 %i.jb, 0
  %n.vec188 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n194 = icmp eq i64 %n.vec188, %i.aa
  %xtraiter303 = and i64 %i.gy, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br label %iter.check243

iter.check243:                                    ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar167 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next168, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.ge, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.jy = mul i64 %i.al, %indvar167               ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.hb, i64 %i.jy
  %i.jz = mul i64 %i.as, %indvar167
  %i.ka = mul i64 %i.al, %indvars.iv104
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ka ; 23 uses
  br i1 %min.iters.check230, label %vec.epilog.scalar.ph244.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %iter.check243
  %i.kc = mul i64 %i.al, %indvar167
  %i.kd = add i64 %i.gu, %i.kc
  %i.ke = sub i64 %i.a, %i.kd
  %i.kf = add i64 %i.ke, 15
  %diff.check229 = icmp ult i64 %i.kf, 31
  br i1 %diff.check229, label %vec.epilog.scalar.ph244.preheader, label %vector.main.loop.iter.check231

vector.main.loop.iter.check231:                   ; preds = %vector.memcheck228
  br i1 %min.iters.check232, label %vec.epilog.ph247, label %vector.body235

vector.body235:                                   ; preds = %vector.main.loop.iter.check231
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %wide.load237 = load <8 x i16>, ptr %i.kb, align 2, !tbaa !248
  %wide.load238 = load <8 x i16>, ptr %i.kg, align 2, !tbaa !248
  store <8 x i16> %wide.load237, ptr %i.ab, align 8, !tbaa !248
  store <8 x i16> %wide.load238, ptr %i.hd, align 8, !tbaa !248
  br i1 %i.he, label %middle.block240, label %vector.body235.1

vector.body235.1:                                 ; preds = %vector.body235
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %wide.load237.1 = load <8 x i16>, ptr %i.kh, align 2, !tbaa !248
  %wide.load238.1 = load <8 x i16>, ptr %i.ki, align 2, !tbaa !248
  store <8 x i16> %wide.load237.1, ptr %i.hf, align 8, !tbaa !248
  store <8 x i16> %wide.load238.1, ptr %i.hg, align 8, !tbaa !248
  br i1 %i.hh, label %middle.block240, label %vector.body235.2

vector.body235.2:                                 ; preds = %vector.body235.1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 80
  %wide.load237.2 = load <8 x i16>, ptr %i.kj, align 2, !tbaa !248
  %wide.load238.2 = load <8 x i16>, ptr %i.kk, align 2, !tbaa !248
  store <8 x i16> %wide.load237.2, ptr %i.hi, align 8, !tbaa !248
  store <8 x i16> %wide.load238.2, ptr %i.hj, align 8, !tbaa !248
  br i1 %i.hk, label %middle.block240, label %vector.body235.3

vector.body235.3:                                 ; preds = %vector.body235.2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 112
  %wide.load237.3 = load <8 x i16>, ptr %i.kl, align 2, !tbaa !248
  %wide.load238.3 = load <8 x i16>, ptr %i.km, align 2, !tbaa !248
  store <8 x i16> %wide.load237.3, ptr %i.hl, align 8, !tbaa !248
  store <8 x i16> %wide.load238.3, ptr %i.hm, align 8, !tbaa !248
  br i1 %i.hn, label %middle.block240, label %vector.body235.4

vector.body235.4:                                 ; preds = %vector.body235.3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 128
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 144
  %wide.load237.4 = load <8 x i16>, ptr %i.kn, align 2, !tbaa !248
  %wide.load238.4 = load <8 x i16>, ptr %i.ko, align 2, !tbaa !248
  store <8 x i16> %wide.load237.4, ptr %i.ho, align 8, !tbaa !248
  store <8 x i16> %wide.load238.4, ptr %i.hp, align 8, !tbaa !248
  br i1 %i.hq, label %middle.block240, label %vector.body235.5

vector.body235.5:                                 ; preds = %vector.body235.4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 160
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 176
  %wide.load237.5 = load <8 x i16>, ptr %i.kp, align 2, !tbaa !248
  %wide.load238.5 = load <8 x i16>, ptr %i.kq, align 2, !tbaa !248
  store <8 x i16> %wide.load237.5, ptr %i.hr, align 8, !tbaa !248
  store <8 x i16> %wide.load238.5, ptr %i.hs, align 8, !tbaa !248
  br i1 %i.ht, label %middle.block240, label %vector.body235.6

vector.body235.6:                                 ; preds = %vector.body235.5
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 192
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kb, i64 208
  %wide.load237.6 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !248
  %wide.load238.6 = load <8 x i16>, ptr %i.ks, align 2, !tbaa !248
  store <8 x i16> %wide.load237.6, ptr %i.hu, align 8, !tbaa !248
  store <8 x i16> %wide.load238.6, ptr %i.hv, align 8, !tbaa !248
  br i1 %i.hw, label %middle.block240, label %vector.body235.7

vector.body235.7:                                 ; preds = %vector.body235.6
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kb, i64 224
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kb, i64 240
  %wide.load237.7 = load <8 x i16>, ptr %i.kt, align 2, !tbaa !248
  %wide.load238.7 = load <8 x i16>, ptr %i.ku, align 2, !tbaa !248
end_hunk_9
begin_hunk_10_@_ZNK2cv15ReduceC_InvokerIsssNS_5OpMinIsEENS_5OpNopIsssEEEclERKNS_5RangeE:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 176
  %wide.load272.5 = load <8 x i16>, ptr %i.cr, align 2, !tbaa !248, !alias.scope !1324
  %wide.load273.5 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !248, !alias.scope !1324
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  store <8 x i16> %wide.load272.5, ptr %i.ct, align 2, !tbaa !248, !alias.scope !1327, !noalias !1324
  store <8 x i16> %wide.load273.5, ptr %i.cu, align 2, !tbaa !248, !alias.scope !1327, !noalias !1324
  br i1 %i.bt, label %middle.block275, label %vector.body270.6

vector.body270.6:                                 ; preds = %vector.body270.5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  %wide.load272.6 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !248, !alias.scope !1324
  %wide.load273.6 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !248, !alias.scope !1324
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 208
  store <8 x i16> %wide.load272.6, ptr %i.cx, align 2, !tbaa !248, !alias.scope !1327, !noalias !1324
  store <8 x i16> %wide.load273.6, ptr %i.cy, align 2, !tbaa !248, !alias.scope !1327, !noalias !1324
  br i1 %i.bu, label %middle.block275, label %vector.body270.7

vector.body270.7:                                 ; preds = %vector.body270.6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  %i.da = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  %wide.load272.7 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !248, !alias.scope !1324
  %wide.load273.7 = load <8 x i16>, ptr %i.da, align 2, !tbaa !248, !alias.scope !1324
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 224
  %i.dc = getelementptr inbounds nuw i8, ptr %i.by, i64 240
  store <8 x i16> %wide.load272.7, ptr %i.db, align 2, !tbaa !248, !alias.scope !1327, !noalias !1324
  store <8 x i16> %wide.load273.7, ptr %i.dc, align 2, !tbaa !248, !alias.scope !1327, !noalias !1324
  br label %middle.block275

middle.block275:                                  ; preds = %vector.body270.7, %vector.body270.6, %vector.body270.5, %vector.body270.4, %vector.body270.3, %vector.body270.2, %vector.body270.1, %vector.body270
  br i1 %cmp.n276, label %.loopexit.us, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block275
  br i1 %min.epilog.iters.check281, label %vec.epilog.scalar.ph279.preheader, label %vec.epilog.ph282, !prof !581

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check266, %vec.epilog.iter.check280
  %vec.epilog.resume.val277 = phi i64 [ %n.vec269, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check266 ]
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph282
  %index285 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph282 ], [ %index.next287, %vec.epilog.vector.body284 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %index285
  %wide.load286 = load <4 x i16>, ptr %i.dd, align 2, !tbaa !248, !alias.scope !1324
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index285
  store <4 x i16> %wide.load286, ptr %i.de, align 2, !tbaa !248, !alias.scope !1327, !noalias !1324
  %index.next287 = add nuw i64 %index285, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next287, %n.vec283
  br i1 %i.df, label %vec.epilog.middle.block288, label %vec.epilog.vector.body284, !llvm.loop !1329

vec.epilog.middle.block288:                       ; preds = %vec.epilog.vector.body284
  br i1 %cmp.n289, label %.loopexit.us, label %vec.epilog.scalar.ph279.preheader

vec.epilog.scalar.ph279.preheader:                ; preds = %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block288
  %indvars.iv109.ph = phi i64 [ 0, %iter.check278 ], [ %n.vec283, %vec.epilog.middle.block288 ], [ %n.vec269, %vec.epilog.iter.check280 ] ; 3 uses
  %i.dg = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod307.not, label %vec.epilog.scalar.ph279.prol.loopexit, label %vec.epilog.scalar.ph279.prol

vec.epilog.scalar.ph279.prol:                     ; preds = %vec.epilog.scalar.ph279.preheader, %vec.epilog.scalar.ph279.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %vec.epilog.scalar.ph279.prol ], [ %indvars.iv109.ph, %vec.epilog.scalar.ph279.preheader ] ; 3 uses
  %prol.iter308 = phi i64 [ %prol.iter308.next, %vec.epilog.scalar.ph279.prol ], [ 0, %vec.epilog.scalar.ph279.preheader ]
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv109.prol
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !248
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv109.prol
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !248
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter308.next = add i64 %prol.iter308, 1   ; 2 uses
  %prol.iter308.cmp.not = icmp eq i64 %prol.iter308.next, %xtraiter306
  br i1 %prol.iter308.cmp.not, label %vec.epilog.scalar.ph279.prol.loopexit, label %vec.epilog.scalar.ph279.prol, !llvm.loop !1330

vec.epilog.scalar.ph279.prol.loopexit:            ; preds = %vec.epilog.scalar.ph279.prol, %vec.epilog.scalar.ph279.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %vec.epilog.scalar.ph279.preheader ], [ %indvars.iv.next110.prol, %vec.epilog.scalar.ph279.prol ]
  %i.dk = icmp ult i64 %i.dg, 3
  br i1 %i.dk, label %.loopexit.us, label %vec.epilog.scalar.ph279

vec.epilog.scalar.ph279:                          ; preds = %vec.epilog.scalar.ph279.prol.loopexit, %vec.epilog.scalar.ph279
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %vec.epilog.scalar.ph279 ], [ %indvars.iv109.unr, %vec.epilog.scalar.ph279.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv109
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !248
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv109
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !248
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !248
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !248
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110.1
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !248
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110.1
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !248
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.next110.2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !248
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next110.2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !248
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %vec.epilog.scalar.ph279, !llvm.loop !1331

.loopexit.us:                                     ; preds = %vec.epilog.scalar.ph279.prol.loopexit, %vec.epilog.scalar.ph279, %vec.epilog.middle.block288, %middle.block275
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %iter.check278, !llvm.loop !1332

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dx = icmp slt i32 %i.g, %i.z
  br i1 %i.dx, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.dy = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.dz = mul i64 %i.as, %i.dy
  %i.ea = add i64 %i.dz, %i.aq
  %i.eb = add i64 %i.ea, -16
  %i.ec = sub i64 %i.eb, %i.a
  %i.ed = mul i64 %i.al, %i.dy
  %i.ee = add i64 %i.ed, %i.aj
  %i.ef = and i32 %i.e, 127
  %i.eg = zext nneg i32 %i.ef to i64              ; 4 uses
  %i.eh = add nuw nsw i64 %i.eg, 1
  %i.ei = add nuw nsw i64 %i.eg, 1
  %min.iters.check140 = icmp samesign ult i32 %i.f, 3
  %min.iters.check142 = icmp samesign ult i32 %i.f, 15
  %i.ej = and i64 %i.aa, 12
  %n.vec144 = and i64 %i.aa, 240                  ; 10 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.el = icmp eq i64 %n.vec144, 16
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.eo = icmp eq i64 %n.vec144, 32
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.er = icmp eq i64 %n.vec144, 48
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.eu = icmp eq i64 %n.vec144, 64
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ex = icmp eq i64 %n.vec144, 80
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.fa = icmp eq i64 %n.vec144, 96
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.fd = icmp eq i64 %n.vec144, 112
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n151 = icmp eq i64 %n.vec144, %i.aa
  %min.epilog.iters.check156 = icmp eq i64 %i.ej, 0
  %n.vec158 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n164 = icmp eq i64 %n.vec158, %i.aa
  %xtraiter = and i64 %i.eh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 3
  %invariant.op = add i64 %i.ec, -1
  %min.iters.check131 = icmp samesign ult i32 %i.f, 15
  %i.fg = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 240                     ; 10 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fi = icmp eq i64 %n.vec, 16
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fl = icmp eq i64 %n.vec, 32
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fo = icmp eq i64 %n.vec, 48
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.fr = icmp eq i64 %n.vec, 64
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.fu = icmp eq i64 %n.vec, 80
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.fx = icmp eq i64 %n.vec, 96
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ga = icmp eq i64 %n.vec, 112
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %min.epilog.iters.check = icmp eq i64 %i.fg, 0
  %n.vec133 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n137 = icmp eq i64 %n.vec133, %i.aa
  %xtraiter294 = and i64 %i.ei, 3                 ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br label %iter.check153

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.gd = zext i32 %i.z to i64                    ; 2 uses
  %i.ge = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.gf = mul i64 %i.as, %i.ge
  %i.gg = add i64 %i.gf, %i.aq
  %i.gh = add i64 %i.gg, -16
  %i.gi = sub i64 %i.gh, %i.a
  %i.gj = and i32 %i.e, 127
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = shl nuw nsw i64 %i.gk, 1                ; 5 uses
  %i.gm = getelementptr i8, ptr %4, i64 %i.gl
  %scevgep = getelementptr i8, ptr %i.gm, i64 18
  %i.gn = mul i64 %i.al, %i.ge                    ; 3 uses
  %i.go = add nuw nsw i64 %i.gl, 2                ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.go, i64 %i.gd)
  %i.gp = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.gp, %i.gl
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.gl, %umin
  %i.gq = sub nsw i64 %i.gp, %6
  %i.gr = udiv i64 %i.gq, %i.aa
  %7 = add i64 %i.gr, %umin
  %i.gs = mul i64 %7, %i.go
  %i.gt = shl nuw nsw i64 %i.gk, 2
  %i.gu = add i64 %i.gn, %i.aj
  %i.gv = and i32 %i.e, 127
  %i.gw = zext nneg i32 %i.gv to i64              ; 6 uses
  %i.gx = add nuw nsw i64 %i.gw, 1
  %i.gy = add nuw nsw i64 %i.gw, 1
  %i.gz = getelementptr i8, ptr %i.ai, i64 %i.gn
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gl
  %i.hb = getelementptr i8, ptr %i.ha, i64 2
  %min.iters.check230 = icmp samesign ult i32 %i.f, 3
  %min.iters.check232 = icmp samesign ult i32 %i.f, 15
  %i.hc = and i64 %i.aa, 12
  %n.vec234 = and i64 %i.aa, 240                  ; 10 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.he = icmp eq i64 %n.vec234, 16
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hh = icmp eq i64 %n.vec234, 32
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.hk = icmp eq i64 %n.vec234, 48
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.hn = icmp eq i64 %n.vec234, 64
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.hq = icmp eq i64 %n.vec234, 80
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ht = icmp eq i64 %n.vec234, 96
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.hw = icmp eq i64 %n.vec234, 112
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n241 = icmp eq i64 %n.vec234, %i.aa
  %min.epilog.iters.check246 = icmp eq i64 %i.hc, 0
  %n.vec248 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n254 = icmp eq i64 %n.vec248, %i.aa
  %xtraiter297 = and i64 %i.gx, 3                 ; 2 uses
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  %i.hz = getelementptr i8, ptr %i.ai, i64 %i.gs
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.gn
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.gt
  %i.ic = getelementptr i8, ptr %i.ib, i64 4
  %min.iters.check199 = icmp samesign ult i32 %i.f, 3
  %min.iters.check201 = icmp samesign ult i32 %i.f, 15
  %i.id = and i64 %i.aa, 12
  %n.vec203 = and i64 %i.aa, 240                  ; 10 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.if = icmp eq i64 %n.vec203, 16
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ii = icmp eq i64 %n.vec203, 32
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.il = icmp eq i64 %n.vec203, 48
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.io = icmp eq i64 %n.vec203, 64
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.ir = icmp eq i64 %n.vec203, 80
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.iu = icmp eq i64 %n.vec203, 96
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 2 uses
  %i.ix = icmp eq i64 %n.vec203, 112
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %cmp.n212 = icmp eq i64 %n.vec203, %i.aa
  %min.epilog.iters.check217 = icmp eq i64 %i.id, 0
  %n.vec219 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n226 = icmp eq i64 %n.vec219, %i.aa
  %i.ja = and i64 %i.gw, 1
  %lcmp.mod301.not.not = icmp eq i64 %i.ja, 0
  %min.iters.check170 = icmp samesign ult i32 %i.f, 3
  %invariant.op309 = add i64 %i.gi, -1
  %min.iters.check172 = icmp samesign ult i32 %i.f, 15
  %i.jb = and i64 %i.aa, 12
  %n.vec174 = and i64 %i.aa, 240                  ; 10 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jd = icmp eq i64 %n.vec174, 16
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.jg = icmp eq i64 %n.vec174, 32
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.jj = icmp eq i64 %n.vec174, 48
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.jm = icmp eq i64 %n.vec174, 64
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.jp = icmp eq i64 %n.vec174, 80
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.js = icmp eq i64 %n.vec174, 96
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.jv = icmp eq i64 %n.vec174, 112
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 256
  %cmp.n181 = icmp eq i64 %n.vec174, %i.aa
  %min.epilog.iters.check186 = icmp eq i64 %i.jb, 0
  %n.vec188 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n194 = icmp eq i64 %n.vec188, %i.aa
  %xtraiter303 = and i64 %i.gy, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br label %iter.check243

iter.check243:                                    ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar167 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next168, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.ge, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.jy = mul i64 %i.al, %indvar167               ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.hb, i64 %i.jy
  %i.jz = mul i64 %i.as, %indvar167
  %i.ka = mul i64 %i.al, %indvars.iv104
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ka ; 23 uses
  br i1 %min.iters.check230, label %vec.epilog.scalar.ph244.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %iter.check243
  %i.kc = mul i64 %i.al, %indvar167
  %i.kd = add i64 %i.gu, %i.kc
  %i.ke = sub i64 %i.a, %i.kd
  %i.kf = add i64 %i.ke, 15
  %diff.check229 = icmp ult i64 %i.kf, 31
  br i1 %diff.check229, label %vec.epilog.scalar.ph244.preheader, label %vector.main.loop.iter.check231

vector.main.loop.iter.check231:                   ; preds = %vector.memcheck228
  br i1 %min.iters.check232, label %vec.epilog.ph247, label %vector.body235

vector.body235:                                   ; preds = %vector.main.loop.iter.check231
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %wide.load237 = load <8 x i16>, ptr %i.kb, align 2, !tbaa !248
  %wide.load238 = load <8 x i16>, ptr %i.kg, align 2, !tbaa !248
  store <8 x i16> %wide.load237, ptr %i.ab, align 8, !tbaa !248
  store <8 x i16> %wide.load238, ptr %i.hd, align 8, !tbaa !248
  br i1 %i.he, label %middle.block240, label %vector.body235.1

vector.body235.1:                                 ; preds = %vector.body235
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %wide.load237.1 = load <8 x i16>, ptr %i.kh, align 2, !tbaa !248
  %wide.load238.1 = load <8 x i16>, ptr %i.ki, align 2, !tbaa !248
  store <8 x i16> %wide.load237.1, ptr %i.hf, align 8, !tbaa !248
  store <8 x i16> %wide.load238.1, ptr %i.hg, align 8, !tbaa !248
  br i1 %i.hh, label %middle.block240, label %vector.body235.2

vector.body235.2:                                 ; preds = %vector.body235.1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 80
  %wide.load237.2 = load <8 x i16>, ptr %i.kj, align 2, !tbaa !248
  %wide.load238.2 = load <8 x i16>, ptr %i.kk, align 2, !tbaa !248
  store <8 x i16> %wide.load237.2, ptr %i.hi, align 8, !tbaa !248
  store <8 x i16> %wide.load238.2, ptr %i.hj, align 8, !tbaa !248
  br i1 %i.hk, label %middle.block240, label %vector.body235.3

vector.body235.3:                                 ; preds = %vector.body235.2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 112
  %wide.load237.3 = load <8 x i16>, ptr %i.kl, align 2, !tbaa !248
  %wide.load238.3 = load <8 x i16>, ptr %i.km, align 2, !tbaa !248
  store <8 x i16> %wide.load237.3, ptr %i.hl, align 8, !tbaa !248
  store <8 x i16> %wide.load238.3, ptr %i.hm, align 8, !tbaa !248
  br i1 %i.hn, label %middle.block240, label %vector.body235.4

vector.body235.4:                                 ; preds = %vector.body235.3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 128
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 144
  %wide.load237.4 = load <8 x i16>, ptr %i.kn, align 2, !tbaa !248
  %wide.load238.4 = load <8 x i16>, ptr %i.ko, align 2, !tbaa !248
  store <8 x i16> %wide.load237.4, ptr %i.ho, align 8, !tbaa !248
  store <8 x i16> %wide.load238.4, ptr %i.hp, align 8, !tbaa !248
  br i1 %i.hq, label %middle.block240, label %vector.body235.5

vector.body235.5:                                 ; preds = %vector.body235.4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 160
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 176
  %wide.load237.5 = load <8 x i16>, ptr %i.kp, align 2, !tbaa !248
  %wide.load238.5 = load <8 x i16>, ptr %i.kq, align 2, !tbaa !248
  store <8 x i16> %wide.load237.5, ptr %i.hr, align 8, !tbaa !248
  store <8 x i16> %wide.load238.5, ptr %i.hs, align 8, !tbaa !248
  br i1 %i.ht, label %middle.block240, label %vector.body235.6

vector.body235.6:                                 ; preds = %vector.body235.5
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 192
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kb, i64 208
  %wide.load237.6 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !248
  %wide.load238.6 = load <8 x i16>, ptr %i.ks, align 2, !tbaa !248
  store <8 x i16> %wide.load237.6, ptr %i.hu, align 8, !tbaa !248
  store <8 x i16> %wide.load238.6, ptr %i.hv, align 8, !tbaa !248
  br i1 %i.hw, label %middle.block240, label %vector.body235.7

vector.body235.7:                                 ; preds = %vector.body235.6
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kb, i64 224
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kb, i64 240
  %wide.load237.7 = load <8 x i16>, ptr %i.kt, align 2, !tbaa !248
  %wide.load238.7 = load <8 x i16>, ptr %i.ku, align 2, !tbaa !248
end_hunk_10
begin_hunk_11_@_ZNK2cv15ReduceC_InvokerIfffNS_5OpMinIfEENS_5OpNopIfffEEEclERKNS_5RangeE:bb.a
bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.r = icmp eq i32 %i.i, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 31 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !315
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113 ; 4 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1355, !nonnull !455, !align !456 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 6 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 10 uses
  %i.at = icmp eq i32 %i.z, %i.g
  br i1 %i.at, label %.preheader61.us.preheader, label %.lr.ph.split

.preheader61.us.preheader:                        ; preds = %.lr.ph
  %i.au = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count117 = sext i32 %i.af to i64     ; 2 uses
  %i.av = mul i64 %i.as, %i.au
  %scevgep194 = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.aw = add nsw i64 %wide.trip.count117, -1     ; 2 uses
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = shl nuw nsw i32 %i.e, 2
  %i.az = and i32 %i.ay, 508
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %scevgep195 = getelementptr i8, ptr %i.bc, i64 4
  %i.bd = mul i64 %i.al, %i.au
  %scevgep196 = getelementptr i8, ptr %i.ai, i64 %i.bd
  %i.be = mul i64 %i.al, %i.aw
  %i.bf = getelementptr i8, ptr %i.ai, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
  %scevgep197 = getelementptr i8, ptr %i.bg, i64 4
  %i.bh = and i32 %i.e, 127
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %min.iters.check203 = icmp samesign ult i32 %i.f, 7
  %bound0198 = icmp ult ptr %scevgep194, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  %i.bk = or i64 %i.al, %i.as
  %i.bl = icmp slt i64 %i.bk, 0
  %i.bm = or i1 %found.conflict200, %i.bl
  %n.vec205 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec205, %i.aa
  %xtraiter231 = and i64 %i.bj, 3                 ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br label %.preheader61.us

.preheader61.us:                                  ; preds = %.preheader61.us.preheader, %.loopexit.us
  %indvars.iv114 = phi i64 [ %i.au, %.preheader61.us.preheader ], [ %indvars.iv.next115, %.loopexit.us ] ; 3 uses
  %i.bn = mul i64 %i.al, %indvars.iv114
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn ; 6 uses
  %i.bp = mul i64 %i.as, %indvars.iv114
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp ; 6 uses
  %brmerge = select i1 %min.iters.check203, i1 true, i1 %i.bm
  br i1 %brmerge, label %scalar.ph202.preheader, label %vector.body206

vector.body206:                                   ; preds = %.preheader61.us, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index207 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load208 = load <4 x float>, ptr %i.br, align 4, !tbaa !79, !alias.scope !1356
  %wide.load209 = load <4 x float>, ptr %i.bs, align 4, !tbaa !79, !alias.scope !1356
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index207 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x float> %wide.load208, ptr %i.bt, align 4, !tbaa !79, !alias.scope !1359, !noalias !1356
  store <4 x float> %wide.load209, ptr %i.bu, align 4, !tbaa !79, !alias.scope !1359, !noalias !1356
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.bv, label %middle.block211, label %vector.body206, !llvm.loop !1361

middle.block211:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %.loopexit.us, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %.preheader61.us, %middle.block211
  %indvars.iv109.ph = phi i64 [ %n.vec205, %middle.block211 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bw = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod232.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader, %scalar.ph202.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %scalar.ph202.prol ], [ %indvars.iv109.ph, %scalar.ph202.preheader ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %scalar.ph202.prol ], [ 0, %scalar.ph202.preheader ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv109.prol
  %i.by = load float, ptr %i.bx, align 4, !tbaa !79
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv109.prol
  store float %i.by, ptr %i.bz, align 4, !tbaa !79
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol, !llvm.loop !1362

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %scalar.ph202.preheader ], [ %indvars.iv.next110.prol, %scalar.ph202.prol ]
  %i.ca = icmp ult i64 %i.bw, 3
  br i1 %i.ca, label %.loopexit.us, label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %scalar.ph202 ], [ %indvars.iv109.unr, %scalar.ph202.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv109
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !79
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv109
  store float %i.cc, ptr %i.cd, align 4, !tbaa !79
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next110
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !79
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next110
  store float %i.cf, ptr %i.cg, align 4, !tbaa !79
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next110.1
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !79
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next110.1
  store float %i.ci, ptr %i.cj, align 4, !tbaa !79
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next110.2
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !79
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next110.2
  store float %i.cl, ptr %i.cm, align 4, !tbaa !79
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %scalar.ph202, !llvm.loop !1363

.loopexit.us:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %middle.block211
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader61.us, !llvm.loop !1364

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cn = icmp slt i32 %i.g, %i.z
  br i1 %i.cn, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.co = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.cp = mul i64 %i.as, %i.co
  %i.cq = add i64 %i.cp, %i.aq
  %i.cr = add i64 %i.cq, -16
  %i.cs = sub i64 %i.cr, %i.a
  %i.ct = mul i64 %i.al, %i.co
  %i.cu = add i64 %i.ct, %i.aj
  %i.cv = and i32 %i.e, 127
  %i.cw = zext nneg i32 %i.cv to i64              ; 4 uses
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = add nuw nsw i64 %i.cw, 1
  %min.iters.check135 = icmp samesign ult i32 %i.f, 7
  %n.vec137 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n144 = icmp eq i64 %n.vec137, %i.aa
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 7
  %invariant.op = add i64 %i.cs, -1
  %n.vec = and i64 %i.aa, 248                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter219 = and i64 %i.cy, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br label %.preheader65

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.cz = zext i32 %i.z to i64                    ; 2 uses
  %i.da = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.db = mul i64 %i.as, %i.da
  %i.dc = add i64 %i.db, %i.aq
  %i.dd = add i64 %i.dc, -16
  %i.de = sub i64 %i.dd, %i.a
  %i.df = and i32 %i.e, 127
  %i.dg = zext nneg i32 %i.df to i64              ; 3 uses
  %i.dh = shl nuw nsw i64 %i.dg, 2                ; 3 uses
  %i.di = getelementptr i8, ptr %4, i64 %i.dh
  %scevgep = getelementptr i8, ptr %i.di, i64 20
  %i.dj = mul i64 %i.al, %i.da                    ; 3 uses
  %i.dk = shl nuw nsw i64 %i.dg, 1                ; 3 uses
  %i.dl = add nuw nsw i64 %i.dk, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.cz)
  %i.dm = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dm, %i.dk
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dk, %umin
  %i.dn = sub nsw i64 %i.dm, %6
  %i.do = udiv i64 %i.dn, %i.aa
  %7 = add i64 %i.do, %umin
  %i.dp = add nuw nsw i64 %i.dh, 4
  %i.dq = mul i64 %7, %i.dp
  %i.dr = shl nuw nsw i64 %i.dg, 3
  %i.ds = add i64 %i.dj, %i.aj
  %i.dt = and i32 %i.e, 127
  %i.du = zext nneg i32 %i.dt to i64              ; 6 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = add nuw nsw i64 %i.du, 1
  %i.dx = getelementptr i8, ptr %i.ai, i64 %i.dj
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dh
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %min.iters.check182 = icmp samesign ult i32 %i.f, 7
  %n.vec184 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec184, %i.aa
  %xtraiter222 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %i.ea = getelementptr i8, ptr %i.ai, i64 %i.dq
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dj
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %min.iters.check166 = icmp samesign ult i32 %i.f, 7
  %n.vec168 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec168, %i.aa
  %i.ee = and i64 %i.du, 1
  %lcmp.mod226.not.not = icmp eq i64 %i.ee, 0
  %min.iters.check151 = icmp samesign ult i32 %i.f, 7
  %invariant.op234 = add i64 %i.de, -1
  %n.vec153 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec153, %i.aa
  %xtraiter228 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar147 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next148, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.da, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.ef = mul i64 %i.al, %indvar147               ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.dz, i64 %i.ef
  %i.eg = mul i64 %i.as, %indvar147
  %i.eh = mul i64 %i.al, %indvars.iv104
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eh ; 7 uses
  br i1 %min.iters.check182, label %scalar.ph181.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.preheader65.us
  %i.ej = mul i64 %i.al, %indvar147
  %i.ek = add i64 %i.ds, %i.ej
  %i.el = sub i64 %i.a, %i.ek
  %i.em = add i64 %i.el, 15
  %diff.check180 = icmp ult i64 %i.em, 31
  br i1 %diff.check180, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %vector.memcheck179, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %vector.memcheck179 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index186 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load187 = load <4 x float>, ptr %i.en, align 4, !tbaa !79
  %wide.load188 = load <4 x float>, ptr %i.eo, align 4, !tbaa !79
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index186 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> %wide.load187, ptr %i.ep, align 8, !tbaa !79
  store <4 x float> %wide.load188, ptr %i.eq, align 8, !tbaa !79
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.er, label %middle.block190, label %vector.body185, !llvm.loop !1365

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.preheader.us.preheader, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %vector.memcheck179, %.preheader65.us, %middle.block190
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck179 ], [ 0, %.preheader65.us ], [ %n.vec184, %middle.block190 ] ; 3 uses
  %i.es = sub nsw i64 %i.du, %indvars.iv86.ph
  br i1 %lcmp.mod223.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader, %scalar.ph181.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %scalar.ph181.prol ], [ %indvars.iv86.ph, %scalar.ph181.preheader ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %scalar.ph181.prol ], [ 0, %scalar.ph181.preheader ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv86.prol
  %i.eu = load float, ptr %i.et, align 4, !tbaa !79
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv86.prol
  store float %i.eu, ptr %i.ev, align 4, !tbaa !79
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol, !llvm.loop !1366

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph181.preheader ], [ %indvars.iv.next87.prol, %scalar.ph181.prol ]
  %i.ew = icmp ult i64 %i.es, 3
  br i1 %i.ew, label %.preheader.us.preheader, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %scalar.ph181 ], [ %indvars.iv86.unr, %scalar.ph181.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv86
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !79
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv86
  store float %i.ey, ptr %i.ez, align 4, !tbaa !79
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next87
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !79
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next87
  store float %i.fb, ptr %i.fc, align 4, !tbaa !79
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next87.1
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !79
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next87.1
  store float %i.fe, ptr %i.ff, align 4, !tbaa !79
  %indvars.iv.next87.2 = add nuw nsw i64 %indvars.iv86, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next87.2
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !79
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next87.2
  store float %i.fh, ptr %i.fi, align 4, !tbaa !79
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %exitcond90.not.3 = icmp eq i64 %indvars.iv.next87.3, %i.aa
  br i1 %exitcond90.not.3, label %.preheader.us.preheader, label %scalar.ph181, !llvm.loop !1367

.preheader.us.preheader:                          ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block190
  %scevgep164 = getelementptr i8, ptr %i.ed, i64 %i.ef
  %bound0 = icmp ult ptr %i.ab, %scevgep164
  %bound1 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

scalar.ph165:                                     ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.1, %scalar.ph165 ], [ %indvars.iv91.unr, %scalar.ph165.prol.loopexit ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv91 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !79 ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.fl = load float, ptr %gep, align 4, !tbaa !79 ; 2 uses
  %i.fm = fcmp olt float %i.fl, %i.fk
  %.sroa.speculated.i.us = select i1 %i.fm, float %i.fl, float %i.fk
  store float %.sroa.speculated.i.us, ptr %i.fj, align 4, !tbaa !79
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next92 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !79 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.fp = load float, ptr %gep.1, align 4, !tbaa !79 ; 2 uses
  %i.fq = fcmp olt float %i.fp, %i.fo
  %.sroa.speculated.i.us.1 = select i1 %i.fq, float %i.fp, float %i.fo
  store float %.sroa.speculated.i.us.1, ptr %i.fn, align 4, !tbaa !79
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %exitcond95.not.1 = icmp eq i64 %indvars.iv.next92.1, %i.aa
  br i1 %exitcond95.not.1, label %.loopexit, label %scalar.ph165, !llvm.loop !1368

.loopexit:                                        ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165, %middle.block176
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, %i.aa ; 2 uses
  %i.fr = icmp samesign ult i64 %indvars.iv.next97, %i.cz
  br i1 %i.fr, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !1369

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.fs = mul i64 %i.as, %indvars.iv104
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fs ; 6 uses
  %.reass235 = add i64 %i.eg, %invariant.op234
  %diff.check149 = icmp ult i64 %.reass235, 31
  %or.cond = select i1 %min.iters.check151, i1 true, i1 %diff.check149
  br i1 %or.cond, label %..preheader62_crit_edge.us.preheader215, label %vector.body154

vector.body154:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body154
  %index155 = phi i64 [ %index.next158, %vector.body154 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index155 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load156 = load <4 x float>, ptr %i.fu, align 8, !tbaa !79
  %wide.load157 = load <4 x float>, ptr %i.fv, align 8, !tbaa !79
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %index155 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <4 x float> %wide.load156, ptr %i.fw, align 4, !tbaa !79
  store <4 x float> %wide.load157, ptr %i.fx, align 4, !tbaa !79
  %index.next158 = add nuw i64 %index155, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.fy, label %middle.block159, label %vector.body154, !llvm.loop !1370

middle.block159:                                  ; preds = %vector.body154
  br i1 %cmp.n160, label %.loopexit63.us, label %..preheader62_crit_edge.us.preheader215

..preheader62_crit_edge.us.preheader215:          ; preds = %..preheader62_crit_edge.us.preheader, %middle.block159
  %indvars.iv99.ph = phi i64 [ 0, %..preheader62_crit_edge.us.preheader ], [ %n.vec153, %middle.block159 ] ; 3 uses
  %i.fz = sub nsw i64 %i.du, %indvars.iv99.ph
  br i1 %lcmp.mod229.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol

..preheader62_crit_edge.us.prol:                  ; preds = %..preheader62_crit_edge.us.preheader215, %..preheader62_crit_edge.us.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ], [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ] ; 3 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %..preheader62_crit_edge.us.prol ], [ 0, %..preheader62_crit_edge.us.preheader215 ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv99.prol
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !79
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv99.prol
  store float %i.gb, ptr %i.gc, align 4, !tbaa !79
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol, !llvm.loop !1371

..preheader62_crit_edge.us.prol.loopexit:         ; preds = %..preheader62_crit_edge.us.prol, %..preheader62_crit_edge.us.preheader215
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ], [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ]
  %i.gd = icmp ult i64 %i.fz, 3
  br i1 %i.gd, label %.loopexit63.us, label %..preheader62_crit_edge.us

..preheader62_crit_edge.us:                       ; preds = %..preheader62_crit_edge.us.prol.loopexit, %..preheader62_crit_edge.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %..preheader62_crit_edge.us ], [ %indvars.iv99.unr, %..preheader62_crit_edge.us.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv99
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !79
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv99
  store float %i.gf, ptr %i.gg, align 4, !tbaa !79
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZNK2cv15ReduceC_InvokerIdddNS_5OpMinIdEENS_5OpNopIdddEEEclERKNS_5RangeE:bb.a
bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.r = icmp eq i32 %i.i, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 31 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !337
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113 ; 4 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1387, !nonnull !455, !align !456 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 6 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 10 uses
  %i.at = icmp eq i32 %i.z, %i.g
  br i1 %i.at, label %.preheader61.us.preheader, label %.lr.ph.split

.preheader61.us.preheader:                        ; preds = %.lr.ph
  %i.au = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count117 = sext i32 %i.af to i64     ; 2 uses
  %i.av = mul i64 %i.as, %i.au
  %scevgep194 = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.aw = add nsw i64 %wide.trip.count117, -1     ; 2 uses
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = shl nuw nsw i32 %i.e, 3
  %i.az = and i32 %i.ay, 1016
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %scevgep195 = getelementptr i8, ptr %i.bc, i64 8
  %i.bd = mul i64 %i.al, %i.au
  %scevgep196 = getelementptr i8, ptr %i.ai, i64 %i.bd
  %i.be = mul i64 %i.al, %i.aw
  %i.bf = getelementptr i8, ptr %i.ai, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
  %scevgep197 = getelementptr i8, ptr %i.bg, i64 8
  %i.bh = and i32 %i.e, 127
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %min.iters.check203 = icmp samesign ult i32 %i.f, 7
  %bound0198 = icmp ult ptr %scevgep194, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict200 = and i1 %bound0198, %bound1199
  %i.bk = or i64 %i.al, %i.as
  %i.bl = icmp slt i64 %i.bk, 0
  %i.bm = or i1 %found.conflict200, %i.bl
  %n.vec205 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n212 = icmp eq i64 %n.vec205, %i.aa
  %xtraiter231 = and i64 %i.bj, 3                 ; 2 uses
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br label %.preheader61.us

.preheader61.us:                                  ; preds = %.preheader61.us.preheader, %.loopexit.us
  %indvars.iv114 = phi i64 [ %i.au, %.preheader61.us.preheader ], [ %indvars.iv.next115, %.loopexit.us ] ; 3 uses
  %i.bn = mul i64 %i.al, %indvars.iv114
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn ; 6 uses
  %i.bp = mul i64 %i.as, %indvars.iv114
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp ; 6 uses
  %brmerge = select i1 %min.iters.check203, i1 true, i1 %i.bm
  br i1 %brmerge, label %scalar.ph202.preheader, label %vector.body206

vector.body206:                                   ; preds = %.preheader61.us, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index207 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load208 = load <2 x double>, ptr %i.br, align 8, !tbaa !76, !alias.scope !1388
  %wide.load209 = load <2 x double>, ptr %i.bs, align 8, !tbaa !76, !alias.scope !1388
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index207 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> %wide.load208, ptr %i.bt, align 8, !tbaa !76, !alias.scope !1391, !noalias !1388
  store <2 x double> %wide.load209, ptr %i.bu, align 8, !tbaa !76, !alias.scope !1391, !noalias !1388
  %index.next210 = add nuw i64 %index207, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.bv, label %middle.block211, label %vector.body206, !llvm.loop !1393

middle.block211:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %.loopexit.us, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %.preheader61.us, %middle.block211
  %indvars.iv109.ph = phi i64 [ %n.vec205, %middle.block211 ], [ 0, %.preheader61.us ] ; 3 uses
  %i.bw = sub nsw i64 %i.bi, %indvars.iv109.ph
  br i1 %lcmp.mod232.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader, %scalar.ph202.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %scalar.ph202.prol ], [ %indvars.iv109.ph, %scalar.ph202.preheader ] ; 3 uses
  %prol.iter233 = phi i64 [ %prol.iter233.next, %scalar.ph202.prol ], [ 0, %scalar.ph202.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv109.prol
  %i.by = load double, ptr %i.bx, align 8, !tbaa !76
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv109.prol
  store double %i.by, ptr %i.bz, align 8, !tbaa !76
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter233.next = add i64 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i64 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol, !llvm.loop !1394

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %scalar.ph202.preheader ], [ %indvars.iv.next110.prol, %scalar.ph202.prol ]
  %i.ca = icmp ult i64 %i.bw, 3
  br i1 %i.ca, label %.loopexit.us, label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %scalar.ph202 ], [ %indvars.iv109.unr, %scalar.ph202.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv109
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !76
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv109
  store double %i.cc, ptr %i.cd, align 8, !tbaa !76
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next110
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !76
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next110
  store double %i.cf, ptr %i.cg, align 8, !tbaa !76
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next110.1
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next110.1
  store double %i.ci, ptr %i.cj, align 8, !tbaa !76
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next110.2
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next110.2
  store double %i.cl, ptr %i.cm, align 8, !tbaa !76
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %indvars.iv.next110.3, %i.aa
  br i1 %exitcond113.not.3, label %.loopexit.us, label %scalar.ph202, !llvm.loop !1395

.loopexit.us:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %middle.block211
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader61.us, !llvm.loop !1396

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cn = icmp slt i32 %i.g, %i.z
  br i1 %i.cn, label %.preheader65.us.preheader, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.lr.ph.split
  %i.co = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count84 = sext i32 %i.af to i64
  %i.cp = mul i64 %i.as, %i.co
  %i.cq = add i64 %i.cp, %i.aq
  %i.cr = add i64 %i.cq, -16
  %i.cs = sub i64 %i.cr, %i.a
  %i.ct = mul i64 %i.al, %i.co
  %i.cu = add i64 %i.ct, %i.aj
  %i.cv = and i32 %i.e, 127
  %i.cw = zext nneg i32 %i.cv to i64              ; 4 uses
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = add nuw nsw i64 %i.cw, 1
  %min.iters.check135 = icmp samesign ult i32 %i.f, 3
  %n.vec137 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n144 = icmp eq i64 %n.vec137, %i.aa
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 3
  %invariant.op = add i64 %i.cs, -1
  %n.vec = and i64 %i.aa, 252                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter219 = and i64 %i.cy, 3                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br label %.preheader65

.preheader65.us.preheader:                        ; preds = %.lr.ph.split
  %i.cz = zext i32 %i.z to i64                    ; 2 uses
  %i.da = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count107 = sext i32 %i.af to i64
  %i.db = mul i64 %i.as, %i.da
  %i.dc = add i64 %i.db, %i.aq
  %i.dd = add i64 %i.dc, -16
  %i.de = sub i64 %i.dd, %i.a
  %i.df = and i32 %i.e, 127
  %i.dg = zext nneg i32 %i.df to i64              ; 3 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3                ; 3 uses
  %i.di = getelementptr i8, ptr %4, i64 %i.dh
  %scevgep = getelementptr i8, ptr %i.di, i64 24
  %i.dj = mul i64 %i.al, %i.da                    ; 3 uses
  %i.dk = shl nuw nsw i64 %i.dg, 1                ; 3 uses
  %i.dl = add nuw nsw i64 %i.dk, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.cz)
  %i.dm = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dm, %i.dk
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dk, %umin
  %i.dn = sub nsw i64 %i.dm, %6
  %i.do = udiv i64 %i.dn, %i.aa
  %7 = add i64 %i.do, %umin
  %i.dp = add nuw nsw i64 %i.dh, 8
  %i.dq = mul i64 %7, %i.dp
  %i.dr = shl nuw nsw i64 %i.dg, 4
  %i.ds = add i64 %i.dj, %i.aj
  %i.dt = and i32 %i.e, 127
  %i.du = zext nneg i32 %i.dt to i64              ; 6 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = add nuw nsw i64 %i.du, 1
  %i.dx = getelementptr i8, ptr %i.ai, i64 %i.dj
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dh
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %min.iters.check182 = icmp samesign ult i32 %i.f, 3
  %n.vec184 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n191 = icmp eq i64 %n.vec184, %i.aa
  %xtraiter222 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %i.ea = getelementptr i8, ptr %i.ai, i64 %i.dq
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dj
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %min.iters.check166 = icmp samesign ult i32 %i.f, 3
  %n.vec168 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec168, %i.aa
  %i.ee = and i64 %i.du, 1
  %lcmp.mod226.not.not = icmp eq i64 %i.ee, 0
  %min.iters.check151 = icmp samesign ult i32 %i.f, 3
  %invariant.op234 = add i64 %i.de, -1
  %n.vec153 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec153, %i.aa
  %xtraiter228 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br label %.preheader65.us

.preheader65.us:                                  ; preds = %.preheader65.us.preheader, %.loopexit63.us
  %indvar147 = phi i64 [ 0, %.preheader65.us.preheader ], [ %indvar.next148, %.loopexit63.us ] ; 4 uses
  %indvars.iv104 = phi i64 [ %i.da, %.preheader65.us.preheader ], [ %indvars.iv.next105, %.loopexit63.us ] ; 3 uses
  %i.ef = mul i64 %i.al, %indvar147               ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.dz, i64 %i.ef
  %i.eg = mul i64 %i.as, %indvar147
  %i.eh = mul i64 %i.al, %indvars.iv104
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eh ; 7 uses
  br i1 %min.iters.check182, label %scalar.ph181.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.preheader65.us
  %i.ej = mul i64 %i.al, %indvar147
  %i.ek = add i64 %i.ds, %i.ej
  %i.el = sub i64 %i.a, %i.ek
  %i.em = add i64 %i.el, 15
  %diff.check180 = icmp ult i64 %i.em, 31
  br i1 %diff.check180, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %vector.memcheck179, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %vector.memcheck179 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index186 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load187 = load <2 x double>, ptr %i.en, align 8, !tbaa !76
  %wide.load188 = load <2 x double>, ptr %i.eo, align 8, !tbaa !76
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index186 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x double> %wide.load187, ptr %i.ep, align 8, !tbaa !76
  store <2 x double> %wide.load188, ptr %i.eq, align 8, !tbaa !76
  %index.next189 = add nuw i64 %index186, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.er, label %middle.block190, label %vector.body185, !llvm.loop !1397

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.preheader.us.preheader, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %vector.memcheck179, %.preheader65.us, %middle.block190
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck179 ], [ 0, %.preheader65.us ], [ %n.vec184, %middle.block190 ] ; 3 uses
  %i.es = sub nsw i64 %i.du, %indvars.iv86.ph
  br i1 %lcmp.mod223.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol

scalar.ph181.prol:                                ; preds = %scalar.ph181.preheader, %scalar.ph181.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %scalar.ph181.prol ], [ %indvars.iv86.ph, %scalar.ph181.preheader ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %scalar.ph181.prol ], [ 0, %scalar.ph181.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv86.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !76
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv86.prol
  store double %i.eu, ptr %i.ev, align 8, !tbaa !76
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %scalar.ph181.prol.loopexit, label %scalar.ph181.prol, !llvm.loop !1398

scalar.ph181.prol.loopexit:                       ; preds = %scalar.ph181.prol, %scalar.ph181.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %scalar.ph181.preheader ], [ %indvars.iv.next87.prol, %scalar.ph181.prol ]
  %i.ew = icmp ult i64 %i.es, 3
  br i1 %i.ew, label %.preheader.us.preheader, label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %scalar.ph181 ], [ %indvars.iv86.unr, %scalar.ph181.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv86
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !76
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv86
  store double %i.ey, ptr %i.ez, align 8, !tbaa !76
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next87
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !76
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next87
  store double %i.fb, ptr %i.fc, align 8, !tbaa !76
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next87.1
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !76
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next87.1
  store double %i.fe, ptr %i.ff, align 8, !tbaa !76
  %indvars.iv.next87.2 = add nuw nsw i64 %indvars.iv86, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next87.2
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !76
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next87.2
  store double %i.fh, ptr %i.fi, align 8, !tbaa !76
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %exitcond90.not.3 = icmp eq i64 %indvars.iv.next87.3, %i.aa
  br i1 %exitcond90.not.3, label %.preheader.us.preheader, label %scalar.ph181, !llvm.loop !1399

.preheader.us.preheader:                          ; preds = %scalar.ph181.prol.loopexit, %scalar.ph181, %middle.block190
  %scevgep164 = getelementptr i8, ptr %i.ed, i64 %i.ef
  %bound0 = icmp ult ptr %i.ab, %scevgep164
  %bound1 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

scalar.ph165:                                     ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.1, %scalar.ph165 ], [ %indvars.iv91.unr, %scalar.ph165.prol.loopexit ] ; 4 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv91 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !76 ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.fl = load double, ptr %gep, align 8, !tbaa !76 ; 2 uses
  %i.fm = fcmp olt double %i.fl, %i.fk
  %.sroa.speculated.i.us = select i1 %i.fm, double %i.fl, double %i.fk
  store double %.sroa.speculated.i.us, ptr %i.fj, align 8, !tbaa !76
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next92 ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !76 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.fp = load double, ptr %gep.1, align 8, !tbaa !76 ; 2 uses
  %i.fq = fcmp olt double %i.fp, %i.fo
  %.sroa.speculated.i.us.1 = select i1 %i.fq, double %i.fp, double %i.fo
  store double %.sroa.speculated.i.us.1, ptr %i.fn, align 8, !tbaa !76
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %exitcond95.not.1 = icmp eq i64 %indvars.iv.next92.1, %i.aa
  br i1 %exitcond95.not.1, label %.loopexit, label %scalar.ph165, !llvm.loop !1400

.loopexit:                                        ; preds = %scalar.ph165.prol.loopexit, %scalar.ph165, %middle.block176
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, %i.aa ; 2 uses
  %i.fr = icmp samesign ult i64 %indvars.iv.next97, %i.cz
  br i1 %i.fr, label %.preheader.us, label %..preheader62_crit_edge.us.preheader, !llvm.loop !1401

..preheader62_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.fs = mul i64 %i.as, %indvars.iv104
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fs ; 6 uses
  %.reass235 = add i64 %i.eg, %invariant.op234
  %diff.check149 = icmp ult i64 %.reass235, 31
  %or.cond = select i1 %min.iters.check151, i1 true, i1 %diff.check149
  br i1 %or.cond, label %..preheader62_crit_edge.us.preheader215, label %vector.body154

vector.body154:                                   ; preds = %..preheader62_crit_edge.us.preheader, %vector.body154
  %index155 = phi i64 [ %index.next158, %vector.body154 ], [ 0, %..preheader62_crit_edge.us.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index155 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load156 = load <2 x double>, ptr %i.fu, align 8, !tbaa !76
  %wide.load157 = load <2 x double>, ptr %i.fv, align 8, !tbaa !76
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index155 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <2 x double> %wide.load156, ptr %i.fw, align 8, !tbaa !76
  store <2 x double> %wide.load157, ptr %i.fx, align 8, !tbaa !76
  %index.next158 = add nuw i64 %index155, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.fy, label %middle.block159, label %vector.body154, !llvm.loop !1402

middle.block159:                                  ; preds = %vector.body154
  br i1 %cmp.n160, label %.loopexit63.us, label %..preheader62_crit_edge.us.preheader215

..preheader62_crit_edge.us.preheader215:          ; preds = %..preheader62_crit_edge.us.preheader, %middle.block159
  %indvars.iv99.ph = phi i64 [ 0, %..preheader62_crit_edge.us.preheader ], [ %n.vec153, %middle.block159 ] ; 3 uses
  %i.fz = sub nsw i64 %i.du, %indvars.iv99.ph
  br i1 %lcmp.mod229.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol

..preheader62_crit_edge.us.prol:                  ; preds = %..preheader62_crit_edge.us.preheader215, %..preheader62_crit_edge.us.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ], [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ] ; 3 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %..preheader62_crit_edge.us.prol ], [ 0, %..preheader62_crit_edge.us.preheader215 ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv99.prol
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !76
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv99.prol
  store double %i.gb, ptr %i.gc, align 8, !tbaa !76
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %..preheader62_crit_edge.us.prol.loopexit, label %..preheader62_crit_edge.us.prol, !llvm.loop !1403

..preheader62_crit_edge.us.prol.loopexit:         ; preds = %..preheader62_crit_edge.us.prol, %..preheader62_crit_edge.us.preheader215
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %..preheader62_crit_edge.us.preheader215 ], [ %indvars.iv.next100.prol, %..preheader62_crit_edge.us.prol ]
  %i.gd = icmp ult i64 %i.fz, 3
  br i1 %i.gd, label %.loopexit63.us, label %..preheader62_crit_edge.us

..preheader62_crit_edge.us:                       ; preds = %..preheader62_crit_edge.us.prol.loopexit, %..preheader62_crit_edge.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %..preheader62_crit_edge.us ], [ %indvars.iv99.unr, %..preheader62_crit_edge.us.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv99
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !76
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv99
  store double %i.gf, ptr %i.gg, align 8, !tbaa !76
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZNK2cv15ReduceC_InvokerIdddNS_5OpMinIdEENS_5OpNopIdddEEEclERKNS_5RangeE:bb.a
  %i.hs = sub nsw i64 %i.cw, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %scalar.ph134.prol.loopexit, label %scalar.ph134.prol

scalar.ph134.prol:                                ; preds = %scalar.ph134.preheader, %scalar.ph134.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph134.prol ], [ %indvars.iv.ph, %scalar.ph134.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph134.prol ], [ 0, %scalar.ph134.preheader ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.prol
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !76
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.prol
  store double %i.hu, ptr %i.hv, align 8, !tbaa !76
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph134.prol.loopexit, label %scalar.ph134.prol, !llvm.loop !1412

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
  br i1 %exitcond.not.3, label %.preheader64.preheader, label %scalar.ph134, !llvm.loop !1413

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
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !1414

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
  br i1 %prol.iter221.cmp.not, label %.preheader64.prol.loopexit, label %.preheader64.prol, !llvm.loop !1415

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
  br i1 %exitcond80.not.3, label %.loopexit63, label %.preheader64, !llvm.loop !1416

.loopexit63:                                      ; preds = %.preheader64.prol.loopexit, %.preheader64, %middle.block
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond85.not, label %._crit_edge, label %.preheader65, !llvm.loop !1396
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1417, !nonnull !455, !align !456 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = lshr i32 %i.d, 5                         ; 6 uses
  %i.f = and i32 %i.e, 127                        ; 7 uses
  %i.g = add nuw nsw i32 %i.f, 1                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !104  ; 4 uses
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.r = icmp eq i32 %i.i, 0
  %i.s = zext i1 %i.r to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 23 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 33 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !116
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !293
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1419, !nonnull !455, !align !456 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !78 ; 5 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !47 ; 9 uses
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
  %wide.load200 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !16, !alias.scope !1420
  %wide.load201 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !16, !alias.scope !1420
  %i.bq = zext <4 x i8> %wide.load200 to <4 x i32> ; 2 uses
  %i.br = zext <4 x i8> %wide.load201 to <4 x i32> ; 2 uses
  %i.bs = mul nuw nsw <4 x i32> %i.bq, %i.bq
  %i.bt = mul nuw nsw <4 x i32> %i.br, %i.br
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index199 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> %i.bs, ptr %i.bu, align 4, !tbaa !8, !alias.scope !1423, !noalias !1420
  store <4 x i32> %i.bt, ptr %i.bv, align 4, !tbaa !8, !alias.scope !1423, !noalias !1420
  %index.next202 = add nuw i64 %index199, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.bw, label %middle.block203, label %vector.body198, !llvm.loop !1425

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
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = mul nuw nsw i32 %i.ca, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv97.prol
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !8
  %indvars.iv.next98.prol = add nuw nsw i64 %indvars.iv97.prol, 1 ; 2 uses
  %prol.iter225.next = add i64 %prol.iter225, 1   ; 2 uses
  %prol.iter225.cmp.not = icmp eq i64 %prol.iter225.next, %xtraiter223
  br i1 %prol.iter225.cmp.not, label %scalar.ph194.prol.loopexit, label %scalar.ph194.prol, !llvm.loop !1426

scalar.ph194.prol.loopexit:                       ; preds = %scalar.ph194.prol, %scalar.ph194.preheader
  %indvars.iv97.unr = phi i64 [ %indvars.iv97.ph, %scalar.ph194.preheader ], [ %indvars.iv.next98.prol, %scalar.ph194.prol ]
  %i.cd = icmp ult i64 %i.bx, 3
  br i1 %i.cd, label %.loopexit.us, label %scalar.ph194

scalar.ph194:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.3, %scalar.ph194 ], [ %indvars.iv97.unr, %scalar.ph194.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv97
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = mul nuw nsw i32 %i.cg, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv97
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !8
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next98
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = mul nuw nsw i32 %i.cl, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next98
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !8
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next98.1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = mul nuw nsw i32 %i.cq, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next98.1
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !8
  %indvars.iv.next98.2 = add nuw nsw i64 %indvars.iv97, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next98.2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !16
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = mul nuw nsw i32 %i.cv, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next98.2
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !8
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %exitcond101.not.3 = icmp eq i64 %indvars.iv.next98.3, %i.aa
  br i1 %exitcond101.not.3, label %.loopexit.us, label %scalar.ph194, !llvm.loop !1427

.loopexit.us:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194, %middle.block203
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.cy = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next103, %i.cz
  %indvar.next188 = add i64 %indvar187, 1
  br i1 %i.da, label %.preheader53.us, label %._crit_edge, !llvm.loop !1428

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
  %i.ea = zext nneg i32 %i.dz to i64              ; 11 uses
  %i.eb = shl nuw nsw i64 %i.ea, 2
  %i.ec = getelementptr i8, ptr %4, i64 %i.eb
  %scevgep148 = getelementptr i8, ptr %i.ec, i64 20
  %i.ed = mul i64 %i.ak, %i.du                    ; 3 uses
  %i.ee = shl nuw nsw i64 %i.ea, 1                ; 4 uses
  %i.ef = add nuw nsw i64 %i.ee, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.dt)
  %i.eg = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.eg, %i.ee
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.ee, %umin
  %i.eh = sub nsw i64 %i.eg, %6
  %7 = udiv i64 %i.eh, %i.aa
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.aa
  %i.ei = shl nuw nsw i64 %i.ea, 2
  %i.ej = getelementptr i8, ptr %4, i64 %i.ei
  %scevgep169 = getelementptr i8, ptr %i.ej, i64 20
  %i.ek = add nuw nsw i64 %i.ea, 1
  %i.el = add nuw nsw i64 %i.ea, 1
  %i.em = getelementptr i8, ptr %i.ai, i64 %i.ed
  %i.en = getelementptr i8, ptr %i.em, i64 %i.ea
  %i.eo = getelementptr i8, ptr %i.en, i64 1
  %min.iters.check175 = icmp samesign ult i32 %i.f, 7
  %i.ep = getelementptr i8, ptr %i.ai, i64 %i.ed
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.ea
  %i.er = getelementptr i8, ptr %i.eq, i64 1
  %n.vec177 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n184 = icmp eq i64 %n.vec177, %i.aa
  %xtraiter214 = and i64 %i.ek, 3                 ; 2 uses
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  %i.es = getelementptr i8, ptr %i.ai, i64 %9
  %i.et = getelementptr i8, ptr %i.es, i64 %i.ed
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.ee
  %i.ev = getelementptr i8, ptr %i.eu, i64 2
  %min.iters.check155 = icmp samesign ult i32 %i.f, 7
  %n.vec157 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n166 = icmp eq i64 %n.vec157, %i.aa
  %i.ew = and i64 %i.ea, 1
  %lcmp.mod218.not.not = icmp eq i64 %i.ew, 0
  %min.iters.check136 = icmp samesign ult i32 %i.f, 7
  %invariant.op226 = add i64 %i.dy, -1
  %n.vec138 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n145 = icmp eq i64 %n.vec138, %i.aa
  %xtraiter220 = and i64 %i.el, 3                 ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br label %.preheader57.us

.preheader57.us:                                  ; preds = %.preheader57.us.preheader, %.loopexit55.us
  %indvar132 = phi i64 [ 0, %.preheader57.us.preheader ], [ %indvar.next133, %.loopexit55.us ] ; 4 uses
  %indvars.iv94 = phi i64 [ %i.du, %.preheader57.us.preheader ], [ %indvars.iv.next95, %.loopexit55.us ] ; 3 uses
  %i.ex = mul i64 %i.ak, %indvar132               ; 2 uses
  %scevgep149 = getelementptr i8, ptr %i.eo, i64 %i.ex
  %i.ey = mul i64 %i.ar, %indvar132
  %i.ez = mul i64 %i.ak, %indvars.iv94
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ez ; 8 uses
  br i1 %min.iters.check175, label %scalar.ph174.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.preheader57.us
  %i.fb = mul i64 %i.ak, %indvar132
  %scevgep170 = getelementptr i8, ptr %i.er, i64 %i.fb
  %bound0171 = icmp ult ptr %i.ab, %scevgep170
  %bound1172 = icmp ult ptr %i.fa, %scevgep169
  %found.conflict173 = and i1 %bound0171, %bound1172
  br i1 %found.conflict173, label %scalar.ph174.preheader, label %vector.body178

vector.body178:                                   ; preds = %vector.memcheck168, %vector.body178
  %index179 = phi i64 [ %index.next182, %vector.body178 ], [ 0, %vector.memcheck168 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %index179 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %wide.load180 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !16, !alias.scope !1429
  %wide.load181 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !16, !alias.scope !1429
  %i.fe = zext <4 x i8> %wide.load180 to <4 x i32> ; 2 uses
  %i.ff = zext <4 x i8> %wide.load181 to <4 x i32> ; 2 uses
  %i.fg = mul nuw nsw <4 x i32> %i.fe, %i.fe
  %i.fh = mul nuw nsw <4 x i32> %i.ff, %i.ff
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index179 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <4 x i32> %i.fg, ptr %i.fi, align 8, !tbaa !8, !alias.scope !1432, !noalias !1429
  store <4 x i32> %i.fh, ptr %i.fj, align 8, !tbaa !8, !alias.scope !1432, !noalias !1429
  %index.next182 = add nuw i64 %index179, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.fk, label %middle.block183, label %vector.body178, !llvm.loop !1434

middle.block183:                                  ; preds = %vector.body178
  br i1 %cmp.n184, label %.preheader.us.preheader, label %scalar.ph174.preheader

scalar.ph174.preheader:                           ; preds = %vector.memcheck168, %.preheader57.us, %middle.block183
  %indvars.iv76.ph = phi i64 [ 0, %vector.memcheck168 ], [ 0, %.preheader57.us ], [ %n.vec177, %middle.block183 ] ; 3 uses
  %i.fl = sub nsw i64 %i.ea, %indvars.iv76.ph
  br i1 %lcmp.mod215.not, label %scalar.ph174.prol.loopexit, label %scalar.ph174.prol

scalar.ph174.prol:                                ; preds = %scalar.ph174.preheader, %scalar.ph174.prol
  %indvars.iv76.prol = phi i64 [ %indvars.iv.next77.prol, %scalar.ph174.prol ], [ %indvars.iv76.ph, %scalar.ph174.preheader ] ; 3 uses
  %prol.iter216 = phi i64 [ %prol.iter216.next, %scalar.ph174.prol ], [ 0, %scalar.ph174.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv76.prol
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  %i.fo = zext i8 %i.fn to i32                    ; 2 uses
  %i.fp = mul nuw nsw i32 %i.fo, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv76.prol
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !8
  %indvars.iv.next77.prol = add nuw nsw i64 %indvars.iv76.prol, 1 ; 2 uses
  %prol.iter216.next = add i64 %prol.iter216, 1   ; 2 uses
  %prol.iter216.cmp.not = icmp eq i64 %prol.iter216.next, %xtraiter214
  br i1 %prol.iter216.cmp.not, label %scalar.ph174.prol.loopexit, label %scalar.ph174.prol, !llvm.loop !1435

scalar.ph174.prol.loopexit:                       ; preds = %scalar.ph174.prol, %scalar.ph174.preheader
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %scalar.ph174.preheader ], [ %indvars.iv.next77.prol, %scalar.ph174.prol ]
  %i.fr = icmp ult i64 %i.fl, 3
  br i1 %i.fr, label %.preheader.us.preheader, label %scalar.ph174

scalar.ph174:                                     ; preds = %scalar.ph174.prol.loopexit, %scalar.ph174
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.3, %scalar.ph174 ], [ %indvars.iv76.unr, %scalar.ph174.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv76
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !16
  %i.fu = zext i8 %i.ft to i32                    ; 2 uses
  %i.fv = mul nuw nsw i32 %i.fu, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv76
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !8
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.next77
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !16
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = mul nuw nsw i32 %i.fz, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next77
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !8
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.next77.1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !16
  %i.ge = zext i8 %i.gd to i32                    ; 2 uses
  %i.gf = mul nuw nsw i32 %i.ge, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next77.1
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !8
  %indvars.iv.next77.2 = add nuw nsw i64 %indvars.iv76, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.next77.2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !16
  %i.gj = zext i8 %i.gi to i32                    ; 2 uses
  %i.gk = mul nuw nsw i32 %i.gj, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next77.2
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !8
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %exitcond80.not.3 = icmp eq i64 %indvars.iv.next77.3, %i.aa
  br i1 %exitcond80.not.3, label %.preheader.us.preheader, label %scalar.ph174, !llvm.loop !1436

.preheader.us.preheader:                          ; preds = %scalar.ph174.prol.loopexit, %scalar.ph174, %middle.block183
  %scevgep150 = getelementptr i8, ptr %i.ev, i64 %i.ex
  %bound0151 = icmp ult ptr %i.ab, %scevgep150
  %bound1152 = icmp ult ptr %scevgep149, %scevgep148
  %found.conflict153 = and i1 %bound0151, %bound1152
  br label %.preheader.us

scalar.ph154:                                     ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.1, %scalar.ph154 ], [ %indvars.iv81.unr, %scalar.ph154.prol.loopexit ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv81 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv81
  %i.go = load i8, ptr %gep, align 1, !tbaa !16
  %i.gp = zext i8 %i.go to i32                    ; 2 uses
  %i.gq = mul nuw nsw i32 %i.gp, %i.gp
  %i.gr = add nsw i32 %i.gq, %i.gn
  store i32 %i.gr, ptr %i.gm, align 4, !tbaa !8
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next82 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next82
  %i.gu = load i8, ptr %gep.1, align 1, !tbaa !16
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = mul nuw nsw i32 %i.gv, %i.gv
  %i.gx = add nsw i32 %i.gw, %i.gt
  store i32 %i.gx, ptr %i.gs, align 4, !tbaa !8
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %exitcond85.not.1 = icmp eq i64 %indvars.iv.next82.1, %i.aa
  br i1 %exitcond85.not.1, label %.loopexit, label %scalar.ph154, !llvm.loop !1437

.loopexit:                                        ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154, %middle.block165
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %i.aa ; 2 uses
  %i.gy = icmp samesign ult i64 %indvars.iv.next87, %i.dt
  br i1 %i.gy, label %.preheader.us, label %..preheader54_crit_edge.us.preheader, !llvm.loop !1438

..preheader54_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.gz = mul i64 %i.ar, %indvars.iv94
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gz ; 6 uses
  %.reass227 = add i64 %i.ey, %invariant.op226
  %diff.check134 = icmp ult i64 %.reass227, 31
  %or.cond = select i1 %min.iters.check136, i1 true, i1 %diff.check134
  br i1 %or.cond, label %..preheader54_crit_edge.us.preheader207, label %vector.body139

vector.body139:                                   ; preds = %..preheader54_crit_edge.us.preheader, %vector.body139
  %index140 = phi i64 [ %index.next143, %vector.body139 ], [ 0, %..preheader54_crit_edge.us.preheader ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index140 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load141 = load <4 x i32>, ptr %i.hb, align 8, !tbaa !8
  %wide.load142 = load <4 x i32>, ptr %i.hc, align 8, !tbaa !8
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index140 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store <4 x i32> %wide.load141, ptr %i.hd, align 4, !tbaa !8
  store <4 x i32> %wide.load142, ptr %i.he, align 4, !tbaa !8
  %index.next143 = add nuw i64 %index140, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.hf, label %middle.block144, label %vector.body139, !llvm.loop !1439

middle.block144:                                  ; preds = %vector.body139
  br i1 %cmp.n145, label %.loopexit55.us, label %..preheader54_crit_edge.us.preheader207

..preheader54_crit_edge.us.preheader207:          ; preds = %..preheader54_crit_edge.us.preheader, %middle.block144
  %indvars.iv89.ph = phi i64 [ 0, %..preheader54_crit_edge.us.preheader ], [ %n.vec138, %middle.block144 ] ; 3 uses
  %i.hg = sub nsw i64 %i.ea, %indvars.iv89.ph
  br i1 %lcmp.mod221.not, label %..preheader54_crit_edge.us.prol.loopexit, label %..preheader54_crit_edge.us.prol

..preheader54_crit_edge.us.prol:                  ; preds = %..preheader54_crit_edge.us.preheader207, %..preheader54_crit_edge.us.prol
  %indvars.iv89.prol = phi i64 [ %indvars.iv.next90.prol, %..preheader54_crit_edge.us.prol ], [ %indvars.iv89.ph, %..preheader54_crit_edge.us.preheader207 ] ; 3 uses
  %prol.iter222 = phi i64 [ %prol.iter222.next, %..preheader54_crit_edge.us.prol ], [ 0, %..preheader54_crit_edge.us.preheader207 ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv89.prol
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !8
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv89.prol
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !8
  %indvars.iv.next90.prol = add nuw nsw i64 %indvars.iv89.prol, 1 ; 2 uses
  %prol.iter222.next = add i64 %prol.iter222, 1   ; 2 uses
  %prol.iter222.cmp.not = icmp eq i64 %prol.iter222.next, %xtraiter220
  br i1 %prol.iter222.cmp.not, label %..preheader54_crit_edge.us.prol.loopexit, label %..preheader54_crit_edge.us.prol, !llvm.loop !1440

..preheader54_crit_edge.us.prol.loopexit:         ; preds = %..preheader54_crit_edge.us.prol, %..preheader54_crit_edge.us.preheader207
  %indvars.iv89.unr = phi i64 [ %indvars.iv89.ph, %..preheader54_crit_edge.us.preheader207 ], [ %indvars.iv.next90.prol, %..preheader54_crit_edge.us.prol ]
  %i.hk = icmp ult i64 %i.hg, 3
  br i1 %i.hk, label %.loopexit55.us, label %..preheader54_crit_edge.us

..preheader54_crit_edge.us:                       ; preds = %..preheader54_crit_edge.us.prol.loopexit, %..preheader54_crit_edge.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %..preheader54_crit_edge.us ], [ %indvars.iv89.unr, %..preheader54_crit_edge.us.prol.loopexit ] ; 6 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv89
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !8
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv89
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !8
end_hunk_13
begin_hunk_14_@_ZNK2cv15ReduceC_InvokerIhiiNS_8OpAddSqrIiiiEENS_5OpSqrIiiiEEEclERKNS_5RangeE:bb.a
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph119.prol.loopexit, label %scalar.ph119.prol, !llvm.loop !1454

scalar.ph119.prol.loopexit:                       ; preds = %scalar.ph119.prol, %scalar.ph119.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph119.preheader ], [ %indvars.iv.next.prol, %scalar.ph119.prol ]
  %i.jn = icmp ult i64 %i.jh, 3
  br i1 %i.jn, label %.preheader56.preheader, label %scalar.ph119

scalar.ph119:                                     ; preds = %scalar.ph119.prol.loopexit, %scalar.ph119
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph119 ], [ %indvars.iv.unr, %scalar.ph119.prol.loopexit ] ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iw, i64 %indvars.iv
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !16
  %i.jq = zext i8 %i.jp to i32                    ; 2 uses
  %i.jr = mul nuw nsw i32 %i.jq, %i.jq
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iw, i64 %indvars.iv.next
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !16
  %i.jv = zext i8 %i.ju to i32                    ; 2 uses
  %i.jw = mul nuw nsw i32 %i.jv, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iw, i64 %indvars.iv.next.1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !16
  %i.ka = zext i8 %i.jz to i32                    ; 2 uses
  %i.kb = mul nuw nsw i32 %i.ka, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.iw, i64 %indvars.iv.next.2
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !16
  %i.kf = zext i8 %i.ke to i32                    ; 2 uses
  %i.kg = mul nuw nsw i32 %i.kf, %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.aa
  br i1 %exitcond.not.3, label %.preheader56.preheader, label %scalar.ph119, !llvm.loop !1455

.preheader56.preheader:                           ; preds = %scalar.ph119.prol.loopexit, %scalar.ph119, %middle.block128
  %i.ki = mul i64 %i.ar, %indvars.iv73
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ki ; 6 uses
  %.reass = add i64 %i.iu, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond206 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond206, label %.preheader56.preheader209, label %vector.body

vector.body:                                      ; preds = %.preheader56.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader56.preheader ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %wide.load = load <4 x i32>, ptr %i.kk, align 8, !tbaa !8
  %wide.load116 = load <4 x i32>, ptr %i.kl, align 8, !tbaa !8
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %index ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <4 x i32> %wide.load, ptr %i.km, align 4, !tbaa !8
  store <4 x i32> %wide.load116, ptr %i.kn, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ko = icmp eq i64 %index.next, %n.vec
  br i1 %i.ko, label %middle.block, label %vector.body, !llvm.loop !1456

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit55, label %.preheader56.preheader209

.preheader56.preheader209:                        ; preds = %.preheader56.preheader, %middle.block
  %indvars.iv68.ph = phi i64 [ 0, %.preheader56.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.kp = sub nsw i64 %i.dn, %indvars.iv68.ph
  br i1 %lcmp.mod212.not, label %.preheader56.prol.loopexit, label %.preheader56.prol

.preheader56.prol:                                ; preds = %.preheader56.preheader209, %.preheader56.prol
  %indvars.iv68.prol = phi i64 [ %indvars.iv.next69.prol, %.preheader56.prol ], [ %indvars.iv68.ph, %.preheader56.preheader209 ] ; 3 uses
  %prol.iter213 = phi i64 [ %prol.iter213.next, %.preheader56.prol ], [ 0, %.preheader56.preheader209 ]
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv68.prol
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !8
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv68.prol
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !8
  %indvars.iv.next69.prol = add nuw nsw i64 %indvars.iv68.prol, 1 ; 2 uses
  %prol.iter213.next = add i64 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i64 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.preheader56.prol.loopexit, label %.preheader56.prol, !llvm.loop !1457

.preheader56.prol.loopexit:                       ; preds = %.preheader56.prol, %.preheader56.preheader209
  %indvars.iv68.unr = phi i64 [ %indvars.iv68.ph, %.preheader56.preheader209 ], [ %indvars.iv.next69.prol, %.preheader56.prol ]
  %i.kt = icmp ult i64 %i.kp, 3
  br i1 %i.kt, label %.loopexit55, label %.preheader56

.preheader56:                                     ; preds = %.preheader56.prol.loopexit, %.preheader56
  %indvars.iv68 = phi i64 [ %indvars.iv.next69.3, %.preheader56 ], [ %indvars.iv68.unr, %.preheader56.prol.loopexit ] ; 6 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv68
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !8
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv68
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !8
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next69
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !8
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next69
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !8
  %indvars.iv.next69.1 = add nuw nsw i64 %indvars.iv68, 2 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next69.1
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !8
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next69.1
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !8
  %indvars.iv.next69.2 = add nuw nsw i64 %indvars.iv68, 3 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next69.2
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !8
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next69.2
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !8
  %indvars.iv.next69.3 = add nuw nsw i64 %indvars.iv68, 4 ; 2 uses
  %exitcond72.not.3 = icmp eq i64 %indvars.iv.next69.3, %i.aa
  br i1 %exitcond72.not.3, label %.loopexit55, label %.preheader56, !llvm.loop !1458

.loopexit55:                                      ; preds = %.preheader56.prol.loopexit, %.preheader56, %middle.block
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.lg = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv.next74, %i.lh
  %indvar.next = add i64 %indvar, 1
  br i1 %i.li, label %.preheader57, label %._crit_edge, !llvm.loop !1428
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15ReduceC_InvokerIhfiNS_8OpAddSqrIiiiEENS_5OpSqrIiiiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15ReduceC_InvokerIhfiNS_8OpAddSqrIiiiEENS_5OpSqrIiiiEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1459, !nonnull !455, !align !456 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = lshr i32 %i.c, 5                         ; 6 uses
  %i.e = and i32 %i.d, 127                        ; 7 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104  ; 4 uses
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.27, i32 noundef 109) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %i.h, 0
  br i1 %i.p, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.q = icmp eq i32 %i.h, 0
  %i.r = zext i1 %i.q to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.t = icmp eq i32 %i.h, 2
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.x = phi i32 [ %i.w, %bb.f ], [ %i.r, %.thread.i ]
  %i.y = mul i32 %i.x, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.z = zext nneg i32 %i.f to i64                ; 23 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 25 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !293
  %i.ac = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113 ; 4 uses
  %i.af = icmp slt i32 %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47 ; 13 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1461, !nonnull !455, !align !456 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47 ; 6 uses
  %i.aq = icmp eq i32 %i.y, %i.f
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ar = sext i32 %i.ac to i64                   ; 3 uses
  %i.as = sext i32 %i.ae to i64                   ; 2 uses
  %i.at = mul i64 %i.ap, %i.ar
  %scevgep186 = getelementptr i8, ptr %i.an, i64 %i.at
  %i.au = add nsw i64 %i.as, -1                   ; 2 uses
  %i.av = mul i64 %i.ap, %i.au
  %i.aw = and i32 %i.d, 127
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = getelementptr i8, ptr %i.an, i64 %i.av
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ay
  %scevgep187 = getelementptr i8, ptr %i.ba, i64 4
  %i.bb = mul i64 %i.aj, %i.ar
  %scevgep188 = getelementptr i8, ptr %i.ah, i64 %i.bb
  %i.bc = mul i64 %i.aj, %i.au
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.ax
  %scevgep189 = getelementptr i8, ptr %i.be, i64 1
  %i.bf = and i32 %i.d, 127
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 1
  %min.iters.check196 = icmp samesign ult i32 %i.e, 7
  %bound0190 = icmp ult ptr %scevgep186, %scevgep189
  %bound1191 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict192 = and i1 %bound0190, %bound1191
  %i.bi = or i64 %i.aj, %i.ap
  %i.bj = icmp slt i64 %i.bi, 0
  %i.bk = or i1 %found.conflict192, %i.bj
  %n.vec198 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n205 = icmp eq i64 %n.vec198, %i.z
  %xtraiter217 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod218.not = icmp eq i64 %xtraiter217, 0
  br label %.preheader53.us

.preheader53.us:                                  ; preds = %.loopexit.us, %.lr.ph.split.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.loopexit.us ], [ %i.ar, %.lr.ph.split.us ] ; 3 uses
  %i.bl = mul i64 %i.aj, %indvars.iv102
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bl ; 6 uses
  %i.bn = mul i64 %i.ap, %indvars.iv102
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bn ; 6 uses
  %brmerge = select i1 %min.iters.check196, i1 true, i1 %i.bk
  br i1 %brmerge, label %scalar.ph195.preheader, label %vector.body199

vector.body199:                                   ; preds = %.preheader53.us, %vector.body199
  %index200 = phi i64 [ %index.next203, %vector.body199 ], [ 0, %.preheader53.us ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index200 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %wide.load201 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !16, !alias.scope !1462
  %wide.load202 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !16, !alias.scope !1462
  %i.br = zext <4 x i8> %wide.load201 to <4 x i32> ; 2 uses
  %i.bs = zext <4 x i8> %wide.load202 to <4 x i32> ; 2 uses
  %i.bt = mul nuw nsw <4 x i32> %i.br, %i.br
  %i.bu = mul nuw nsw <4 x i32> %i.bs, %i.bs
  %i.bv = uitofp nneg <4 x i32> %i.bt to <4 x float>
  %i.bw = uitofp nneg <4 x i32> %i.bu to <4 x float>
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index200 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x float> %i.bv, ptr %i.bx, align 4, !tbaa !79, !alias.scope !1465, !noalias !1462
  store <4 x float> %i.bw, ptr %i.by, align 4, !tbaa !79, !alias.scope !1465, !noalias !1462
  %index.next203 = add nuw i64 %index200, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next203, %n.vec198
  br i1 %i.bz, label %middle.block204, label %vector.body199, !llvm.loop !1467

middle.block204:                                  ; preds = %vector.body199
  br i1 %cmp.n205, label %.loopexit.us, label %scalar.ph195.preheader

scalar.ph195.preheader:                           ; preds = %.preheader53.us, %middle.block204
  %indvars.iv97.ph = phi i64 [ %n.vec198, %middle.block204 ], [ 0, %.preheader53.us ] ; 3 uses
  %i.ca = sub nsw i64 %i.bg, %indvars.iv97.ph
  br i1 %lcmp.mod218.not, label %scalar.ph195.prol.loopexit, label %scalar.ph195.prol

scalar.ph195.prol:                                ; preds = %scalar.ph195.preheader, %scalar.ph195.prol
  %indvars.iv97.prol = phi i64 [ %indvars.iv.next98.prol, %scalar.ph195.prol ], [ %indvars.iv97.ph, %scalar.ph195.preheader ] ; 3 uses
  %prol.iter219 = phi i64 [ %prol.iter219.next, %scalar.ph195.prol ], [ 0, %scalar.ph195.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv97.prol
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = mul nuw nsw i32 %i.cd, %i.cd
  %i.cf = uitofp nneg i32 %i.ce to float
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv97.prol
  store float %i.cf, ptr %i.cg, align 4, !tbaa !79
  %indvars.iv.next98.prol = add nuw nsw i64 %indvars.iv97.prol, 1 ; 2 uses
  %prol.iter219.next = add i64 %prol.iter219, 1   ; 2 uses
  %prol.iter219.cmp.not = icmp eq i64 %prol.iter219.next, %xtraiter217
  br i1 %prol.iter219.cmp.not, label %scalar.ph195.prol.loopexit, label %scalar.ph195.prol, !llvm.loop !1468

scalar.ph195.prol.loopexit:                       ; preds = %scalar.ph195.prol, %scalar.ph195.preheader
  %indvars.iv97.unr = phi i64 [ %indvars.iv97.ph, %scalar.ph195.preheader ], [ %indvars.iv.next98.prol, %scalar.ph195.prol ]
  %i.ch = icmp ult i64 %i.ca, 3
  br i1 %i.ch, label %.loopexit.us, label %scalar.ph195

scalar.ph195:                                     ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.3, %scalar.ph195 ], [ %indvars.iv97.unr, %scalar.ph195.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv97
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = mul nuw nsw i32 %i.ck, %i.ck
  %i.cm = uitofp nneg i32 %i.cl to float
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv97
  store float %i.cm, ptr %i.cn, align 4, !tbaa !79
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next98
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = mul nuw nsw i32 %i.cq, %i.cq
  %i.cs = uitofp nneg i32 %i.cr to float
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next98
  store float %i.cs, ptr %i.ct, align 4, !tbaa !79
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next98.1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !16
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = mul nuw nsw i32 %i.cw, %i.cw
  %i.cy = uitofp nneg i32 %i.cx to float
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next98.1
  store float %i.cy, ptr %i.cz, align 4, !tbaa !79
  %indvars.iv.next98.2 = add nuw nsw i64 %indvars.iv97, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next98.2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !16
  %i.dc = zext i8 %i.db to i32                    ; 2 uses
  %i.dd = mul nuw nsw i32 %i.dc, %i.dc
  %i.de = uitofp nneg i32 %i.dd to float
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next98.2
  store float %i.de, ptr %i.df, align 4, !tbaa !79
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %exitcond101.not.3 = icmp eq i64 %indvars.iv.next98.3, %i.z
  br i1 %exitcond101.not.3, label %.loopexit.us, label %scalar.ph195, !llvm.loop !1469

.loopexit.us:                                     ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195, %middle.block204
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.dg = icmp slt i64 %indvars.iv.next103, %i.as
  br i1 %i.dg, label %.preheader53.us, label %._crit_edge, !llvm.loop !1470

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dh = icmp slt i32 %i.f, %i.y
  br i1 %i.dh, label %.preheader57.us.preheader, label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.lr.ph.split
  %i.di = sext i32 %i.ac to i64                   ; 2 uses
  %i.dj = sext i32 %i.ae to i64                   ; 2 uses
  %i.dk = and i32 %i.d, 127
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %i.dn = getelementptr i8, ptr %4, i64 %i.dm
  %scevgep = getelementptr i8, ptr %i.dn, i64 20
  %i.do = mul i64 %i.aj, %i.di
  %scevgep118 = getelementptr i8, ptr %i.ah, i64 %i.do
  %i.dp = add nsw i64 %i.dj, -1
  %i.dq = mul i64 %i.aj, %i.dp
  %i.dr = getelementptr i8, ptr %i.ah, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dl
  %scevgep119 = getelementptr i8, ptr %i.ds, i64 1
  %i.dt = and i32 %i.d, 127
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %min.iters.check121 = icmp samesign ult i32 %i.e, 7
  %bound0 = icmp ult ptr %i.aa, %scevgep119
  %bound1 = icmp ult ptr %scevgep118, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.aj, 0
  %i.dw = or i1 %found.conflict, %stride.check
  %n.vec123 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n130 = icmp eq i64 %n.vec123, %i.z
  %xtraiter = and i64 %i.dv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.e, 7
  %n.vec = and i64 %i.z, 248                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br label %.preheader57

.preheader57.us.preheader:                        ; preds = %.lr.ph.split
  %i.dx = zext i32 %i.y to i64                    ; 2 uses
  %i.dy = sext i32 %i.ac to i64                   ; 2 uses
  %i.dz = sext i32 %i.ae to i64                   ; 2 uses
  %i.ea = and i32 %i.d, 127
  %i.eb = zext nneg i32 %i.ea to i64              ; 9 uses
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = getelementptr i8, ptr %4, i64 %i.ec
  %scevgep145 = getelementptr i8, ptr %i.ed, i64 20
  %i.ee = mul i64 %i.aj, %i.dy                    ; 3 uses
  %i.ef = shl nuw nsw i64 %i.eb, 1                ; 4 uses
  %i.eg = add nuw nsw i64 %i.ef, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.eg, i64 %i.dx)
  %i.eh = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.eh, %i.ef
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.ef, %umin
  %i.ei = sub nsw i64 %i.eh, %6
  %7 = udiv i64 %i.ei, %i.z
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.z
  %i.ej = shl nuw nsw i64 %i.eb, 2
  %i.ek = getelementptr i8, ptr %4, i64 %i.ej
  %scevgep166 = getelementptr i8, ptr %i.ek, i64 20
  %scevgep167 = getelementptr i8, ptr %i.ah, i64 %i.ee
  %i.el = add nsw i64 %i.dz, -1
  %i.em = mul i64 %i.aj, %i.el
  %i.en = getelementptr i8, ptr %i.ah, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.eb
  %scevgep168 = getelementptr i8, ptr %i.eo, i64 1
  %i.ep = add nuw nsw i64 %i.eb, 1
  %i.eq = getelementptr i8, ptr %i.ah, i64 %i.ee
  %i.er = getelementptr i8, ptr %i.eq, i64 %i.eb
  %i.es = getelementptr i8, ptr %i.er, i64 1
  %min.iters.check174 = icmp samesign ult i32 %i.e, 7
  %bound0169 = icmp ult ptr %i.aa, %scevgep168
  %bound1170 = icmp ult ptr %scevgep167, %scevgep166
  %found.conflict171 = and i1 %bound0169, %bound1170
  %stride.check172 = icmp slt i64 %i.aj, 0
  %i.et = or i1 %found.conflict171, %stride.check172
  %n.vec176 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n183 = icmp eq i64 %n.vec176, %i.z
  %xtraiter211 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  %i.eu = getelementptr i8, ptr %i.ah, i64 %9
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.ee
  %i.ew = getelementptr i8, ptr %i.ev, i64 %i.ef
  %i.ex = getelementptr i8, ptr %i.ew, i64 2
  %min.iters.check152 = icmp samesign ult i32 %i.e, 7
  %n.vec154 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n163 = icmp eq i64 %n.vec154, %i.z
  %i.ey = and i64 %i.eb, 1
  %lcmp.mod215.not.not = icmp eq i64 %i.ey, 0
  %min.iters.check133 = icmp samesign ult i32 %i.e, 7
  %n.vec135 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %i.z
  br label %.preheader57.us

.preheader57.us:                                  ; preds = %.preheader57.us.preheader, %.loopexit55.us
  %indvar = phi i64 [ 0, %.preheader57.us.preheader ], [ %indvar.next, %.loopexit55.us ] ; 2 uses
  %indvars.iv94 = phi i64 [ %i.dy, %.preheader57.us.preheader ], [ %indvars.iv.next95, %.loopexit55.us ] ; 3 uses
  %i.ez = mul i64 %i.aj, %indvar                  ; 2 uses
  %scevgep146 = getelementptr i8, ptr %i.es, i64 %i.ez
  %i.fa = mul i64 %i.aj, %indvars.iv94
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fa ; 7 uses
  %brmerge220 = select i1 %min.iters.check174, i1 true, i1 %i.et
  br i1 %brmerge220, label %scalar.ph173.preheader, label %vector.body177

vector.body177:                                   ; preds = %.preheader57.us, %vector.body177
  %index178 = phi i64 [ %index.next181, %vector.body177 ], [ 0, %.preheader57.us ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %index178 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %wide.load179 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !16, !alias.scope !1471
  %wide.load180 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !16, !alias.scope !1471
  %i.fe = zext <4 x i8> %wide.load179 to <4 x i32> ; 2 uses
  %i.ff = zext <4 x i8> %wide.load180 to <4 x i32> ; 2 uses
  %i.fg = mul nuw nsw <4 x i32> %i.fe, %i.fe
  %i.fh = mul nuw nsw <4 x i32> %i.ff, %i.ff
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index178 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <4 x i32> %i.fg, ptr %i.fi, align 8, !tbaa !8, !alias.scope !1474, !noalias !1471
  store <4 x i32> %i.fh, ptr %i.fj, align 8, !tbaa !8, !alias.scope !1474, !noalias !1471
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.fk, label %middle.block182, label %vector.body177, !llvm.loop !1476

middle.block182:                                  ; preds = %vector.body177
  br i1 %cmp.n183, label %.preheader.us.preheader, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.preheader57.us, %middle.block182
  %indvars.iv76.ph = phi i64 [ %n.vec176, %middle.block182 ], [ 0, %.preheader57.us ] ; 3 uses
  %i.fl = sub nsw i64 %i.eb, %indvars.iv76.ph
  br i1 %lcmp.mod212.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol

scalar.ph173.prol:                                ; preds = %scalar.ph173.preheader, %scalar.ph173.prol
  %indvars.iv76.prol = phi i64 [ %indvars.iv.next77.prol, %scalar.ph173.prol ], [ %indvars.iv76.ph, %scalar.ph173.preheader ] ; 3 uses
  %prol.iter213 = phi i64 [ %prol.iter213.next, %scalar.ph173.prol ], [ 0, %scalar.ph173.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv76.prol
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  %i.fo = zext i8 %i.fn to i32                    ; 2 uses
  %i.fp = mul nuw nsw i32 %i.fo, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv76.prol
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !8
  %indvars.iv.next77.prol = add nuw nsw i64 %indvars.iv76.prol, 1 ; 2 uses
  %prol.iter213.next = add i64 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i64 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol, !llvm.loop !1477

scalar.ph173.prol.loopexit:                       ; preds = %scalar.ph173.prol, %scalar.ph173.preheader
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %scalar.ph173.preheader ], [ %indvars.iv.next77.prol, %scalar.ph173.prol ]
  %i.fr = icmp ult i64 %i.fl, 3
  br i1 %i.fr, label %.preheader.us.preheader, label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.3, %scalar.ph173 ], [ %indvars.iv76.unr, %scalar.ph173.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv76
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !16
  %i.fu = zext i8 %i.ft to i32                    ; 2 uses
  %i.fv = mul nuw nsw i32 %i.fu, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv76
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !8
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next77
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !16
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = mul nuw nsw i32 %i.fz, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next77
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !8
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next77.1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !16
  %i.ge = zext i8 %i.gd to i32                    ; 2 uses
  %i.gf = mul nuw nsw i32 %i.ge, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next77.1
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !8
  %indvars.iv.next77.2 = add nuw nsw i64 %indvars.iv76, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next77.2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !16
  %i.gj = zext i8 %i.gi to i32                    ; 2 uses
  %i.gk = mul nuw nsw i32 %i.gj, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next77.2
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !8
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %exitcond80.not.3 = icmp eq i64 %indvars.iv.next77.3, %i.z
  br i1 %exitcond80.not.3, label %.preheader.us.preheader, label %scalar.ph173, !llvm.loop !1478

.preheader.us.preheader:                          ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173, %middle.block182
  %scevgep147 = getelementptr i8, ptr %i.ex, i64 %i.ez
  %bound0148 = icmp ult ptr %i.aa, %scevgep147
  %bound1149 = icmp ult ptr %scevgep146, %scevgep145
  %found.conflict150 = and i1 %bound0148, %bound1149
  br label %.preheader.us

scalar.ph151:                                     ; preds = %scalar.ph151.prol.loopexit, %scalar.ph151
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.1, %scalar.ph151 ], [ %indvars.iv81.unr, %scalar.ph151.prol.loopexit ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv81 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv81
  %i.go = load i8, ptr %gep, align 1, !tbaa !16
  %i.gp = zext i8 %i.go to i32                    ; 2 uses
  %i.gq = mul nuw nsw i32 %i.gp, %i.gp
  %i.gr = add nsw i32 %i.gq, %i.gn
  store i32 %i.gr, ptr %i.gm, align 4, !tbaa !8
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next82 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next82
  %i.gu = load i8, ptr %gep.1, align 1, !tbaa !16
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = mul nuw nsw i32 %i.gv, %i.gv
  %i.gx = add nsw i32 %i.gw, %i.gt
  store i32 %i.gx, ptr %i.gs, align 4, !tbaa !8
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %exitcond85.not.1 = icmp eq i64 %indvars.iv.next82.1, %i.z
  br i1 %exitcond85.not.1, label %.loopexit, label %scalar.ph151, !llvm.loop !1479

.loopexit:                                        ; preds = %scalar.ph151.prol.loopexit, %scalar.ph151, %middle.block162
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %i.z ; 2 uses
  %i.gy = icmp samesign ult i64 %indvars.iv.next87, %i.dx
  br i1 %i.gy, label %.preheader.us, label %..preheader54_crit_edge.us.preheader, !llvm.loop !1480

..preheader54_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.gz = mul i64 %i.ap, %indvars.iv94
  %i.ha = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.gz ; 2 uses
  br i1 %min.iters.check133, label %..preheader54_crit_edge.us.preheader207, label %vector.body136

vector.body136:                                   ; preds = %..preheader54_crit_edge.us.preheader, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %..preheader54_crit_edge.us.preheader ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index137 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load138 = load <4 x i32>, ptr %i.hb, align 8, !tbaa !8
  %wide.load139 = load <4 x i32>, ptr %i.hc, align 8, !tbaa !8
  %i.hd = sitofp <4 x i32> %wide.load138 to <4 x float>
  %i.he = sitofp <4 x i32> %wide.load139 to <4 x float>
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index137 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <4 x float> %i.hd, ptr %i.hf, align 4, !tbaa !79
  store <4 x float> %i.he, ptr %i.hg, align 4, !tbaa !79
  %index.next140 = add nuw i64 %index137, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.hh, label %middle.block141, label %vector.body136, !llvm.loop !1481

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %.loopexit55.us, label %..preheader54_crit_edge.us.preheader207

..preheader54_crit_edge.us.preheader207:          ; preds = %..preheader54_crit_edge.us.preheader, %middle.block141
  %indvars.iv89.ph = phi i64 [ 0, %..preheader54_crit_edge.us.preheader ], [ %n.vec135, %middle.block141 ]
  br label %..preheader54_crit_edge.us

..preheader54_crit_edge.us:                       ; preds = %..preheader54_crit_edge.us.preheader207, %..preheader54_crit_edge.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %..preheader54_crit_edge.us ], [ %indvars.iv89.ph, %..preheader54_crit_edge.us.preheader207 ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv89
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !8
  %i.hk = sitofp i32 %i.hj to float
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv89
  store float %i.hk, ptr %i.hl, align 4, !tbaa !79
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %i.z
  br i1 %exitcond93.not, label %.loopexit55.us, label %..preheader54_crit_edge.us, !llvm.loop !1482

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.loopexit ], [ %i.z, %.preheader.us.preheader ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv86 ; 4 uses
  %brmerge221 = select i1 %min.iters.check152, i1 true, i1 %found.conflict150
  br i1 %brmerge221, label %scalar.ph151.preheader, label %vector.body155

vector.body155:                                   ; preds = %.preheader.us, %vector.body155
  %index156 = phi i64 [ %index.next161, %vector.body155 ], [ 0, %.preheader.us ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index156 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %i.hm, align 8, !tbaa !8, !alias.scope !1483, !noalias !1486
  %wide.load158 = load <4 x i32>, ptr %i.hn, align 8, !tbaa !8, !alias.scope !1483, !noalias !1486
  %i.ho = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index156 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %wide.load159 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !16, !alias.scope !1486
  %wide.load160 = load <4 x i8>, ptr %i.hp, align 1, !tbaa !16, !alias.scope !1486
  %i.hq = zext <4 x i8> %wide.load159 to <4 x i32> ; 2 uses
  %i.hr = zext <4 x i8> %wide.load160 to <4 x i32> ; 2 uses
  %i.hs = mul nuw nsw <4 x i32> %i.hq, %i.hq
  %i.ht = mul nuw nsw <4 x i32> %i.hr, %i.hr
  %i.hu = add nsw <4 x i32> %i.hs, %wide.load157
  %i.hv = add nsw <4 x i32> %i.ht, %wide.load158
  store <4 x i32> %i.hu, ptr %i.hm, align 8, !tbaa !8, !alias.scope !1483, !noalias !1486
  store <4 x i32> %i.hv, ptr %i.hn, align 8, !tbaa !8, !alias.scope !1483, !noalias !1486
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
end_hunk_14
begin_hunk_15_@_ZNK2cv15ReduceC_InvokerIhfiNS_8OpAddSqrIiiiEENS_5OpSqrIiiiEEEclERKNS_5RangeE:bb.a
  br i1 %brmerge222, label %scalar.ph120.preheader, label %vector.body124

vector.body124:                                   ; preds = %.preheader57, %vector.body124
  %index125 = phi i64 [ %index.next128, %vector.body124 ], [ 0, %.preheader57 ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %index125 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %wide.load126 = load <4 x i8>, ptr %i.ij, align 1, !tbaa !16, !alias.scope !1489
  %wide.load127 = load <4 x i8>, ptr %i.ik, align 1, !tbaa !16, !alias.scope !1489
  %i.il = zext <4 x i8> %wide.load126 to <4 x i32> ; 2 uses
  %i.im = zext <4 x i8> %wide.load127 to <4 x i32> ; 2 uses
  %i.in = mul nuw nsw <4 x i32> %i.il, %i.il
  %i.io = mul nuw nsw <4 x i32> %i.im, %i.im
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index125 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <4 x i32> %i.in, ptr %i.ip, align 8, !tbaa !8, !alias.scope !1492, !noalias !1489
  store <4 x i32> %i.io, ptr %i.iq, align 8, !tbaa !8, !alias.scope !1492, !noalias !1489
  %index.next128 = add nuw i64 %index125, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.ir, label %middle.block129, label %vector.body124, !llvm.loop !1494

middle.block129:                                  ; preds = %vector.body124
  br i1 %cmp.n130, label %.preheader56.preheader, label %scalar.ph120.preheader

scalar.ph120.preheader:                           ; preds = %.preheader57, %middle.block129
  %indvars.iv.ph = phi i64 [ %n.vec123, %middle.block129 ], [ 0, %.preheader57 ] ; 3 uses
  %i.is = sub nsw i64 %i.du, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %scalar.ph120.prol.loopexit, label %scalar.ph120.prol

scalar.ph120.prol:                                ; preds = %scalar.ph120.preheader, %scalar.ph120.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph120.prol ], [ %indvars.iv.ph, %scalar.ph120.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph120.prol ], [ 0, %scalar.ph120.preheader ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv.prol
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !16
  %i.iv = zext i8 %i.iu to i32                    ; 2 uses
  %i.iw = mul nuw nsw i32 %i.iv, %i.iv
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.prol
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph120.prol.loopexit, label %scalar.ph120.prol, !llvm.loop !1495

scalar.ph120.prol.loopexit:                       ; preds = %scalar.ph120.prol, %scalar.ph120.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph120.preheader ], [ %indvars.iv.next.prol, %scalar.ph120.prol ]
  %i.iy = icmp ult i64 %i.is, 3
  br i1 %i.iy, label %.preheader56.preheader, label %scalar.ph120

scalar.ph120:                                     ; preds = %scalar.ph120.prol.loopexit, %scalar.ph120
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph120 ], [ %indvars.iv.unr, %scalar.ph120.prol.loopexit ] ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !16
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = mul nuw nsw i32 %i.jb, %i.jb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv.next
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !16
  %i.jg = zext i8 %i.jf to i32                    ; 2 uses
  %i.jh = mul nuw nsw i32 %i.jg, %i.jg
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv.next.1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !16
  %i.jl = zext i8 %i.jk to i32                    ; 2 uses
  %i.jm = mul nuw nsw i32 %i.jl, %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.1
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv.next.2
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !16
  %i.jq = zext i8 %i.jp to i32                    ; 2 uses
  %i.jr = mul nuw nsw i32 %i.jq, %i.jq
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.2
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.z
  br i1 %exitcond.not.3, label %.preheader56.preheader, label %scalar.ph120, !llvm.loop !1496

.preheader56.preheader:                           ; preds = %scalar.ph120.prol.loopexit, %scalar.ph120, %middle.block129
  %i.jt = mul i64 %i.ap, %indvars.iv73
  %i.ju = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.jt ; 2 uses
  br i1 %min.iters.check, label %.preheader56.preheader209, label %vector.body

vector.body:                                      ; preds = %.preheader56.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader56.preheader ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %wide.load = load <4 x i32>, ptr %i.jv, align 8, !tbaa !8
  %wide.load117 = load <4 x i32>, ptr %i.jw, align 8, !tbaa !8
  %i.jx = sitofp <4 x i32> %wide.load to <4 x float>
  %i.jy = sitofp <4 x i32> %wide.load117 to <4 x float>
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %index ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <4 x float> %i.jx, ptr %i.jz, align 4, !tbaa !79
  store <4 x float> %i.jy, ptr %i.ka, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kb = icmp eq i64 %index.next, %n.vec
  br i1 %i.kb, label %middle.block, label %vector.body, !llvm.loop !1497

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit55, label %.preheader56.preheader209

.preheader56.preheader209:                        ; preds = %.preheader56.preheader, %middle.block
  %indvars.iv68.ph = phi i64 [ 0, %.preheader56.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.preheader209, %.preheader56
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.preheader56 ], [ %indvars.iv68.ph, %.preheader56.preheader209 ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv68
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !8
  %i.ke = sitofp i32 %i.kd to float
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv68
  store float %i.ke, ptr %i.kf, align 4, !tbaa !79
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %i.z
  br i1 %exitcond72.not, label %.loopexit55, label %.preheader56, !llvm.loop !1498

.loopexit55:                                      ; preds = %.preheader56, %middle.block
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.kg = icmp slt i64 %indvars.iv.next74, %i.dj
  br i1 %i.kg, label %.preheader57, label %._crit_edge, !llvm.loop !1470
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15ReduceC_InvokerIhdiNS_8OpAddSqrIiiiEENS_5OpSqrIiiiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15ReduceC_InvokerIhdiNS_8OpAddSqrIiiiEENS_5OpSqrIiiiEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1499, !nonnull !455, !align !456 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = lshr i32 %i.c, 5                         ; 6 uses
  %i.e = and i32 %i.d, 127                        ; 7 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104  ; 4 uses
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.27, i32 noundef 109) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %i.h, 0
  br i1 %i.p, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.q = icmp eq i32 %i.h, 0
  %i.r = zext i1 %i.q to i32
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.t = icmp eq i32 %i.h, 2
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.x = phi i32 [ %i.w, %bb.f ], [ %i.r, %.thread.i ]
  %i.y = mul i32 %i.x, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.z = zext nneg i32 %i.f to i64                ; 23 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 25 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !293
  %i.ac = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113 ; 4 uses
  %i.af = icmp slt i32 %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47 ; 13 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1501, !nonnull !455, !align !456 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47 ; 6 uses
  %i.aq = icmp eq i32 %i.y, %i.f
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ar = sext i32 %i.ac to i64                   ; 3 uses
  %i.as = sext i32 %i.ae to i64                   ; 2 uses
  %i.at = mul i64 %i.ap, %i.ar
  %scevgep186 = getelementptr i8, ptr %i.an, i64 %i.at
  %i.au = add nsw i64 %i.as, -1                   ; 2 uses
  %i.av = mul i64 %i.ap, %i.au
  %i.aw = and i32 %i.d, 127
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = getelementptr i8, ptr %i.an, i64 %i.av
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ay
  %scevgep187 = getelementptr i8, ptr %i.ba, i64 8
  %i.bb = mul i64 %i.aj, %i.ar
  %scevgep188 = getelementptr i8, ptr %i.ah, i64 %i.bb
  %i.bc = mul i64 %i.aj, %i.au
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.ax
  %scevgep189 = getelementptr i8, ptr %i.be, i64 1
  %i.bf = and i32 %i.d, 127
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 1
  %min.iters.check196 = icmp samesign ult i32 %i.e, 7
  %bound0190 = icmp ult ptr %scevgep186, %scevgep189
  %bound1191 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict192 = and i1 %bound0190, %bound1191
  %i.bi = or i64 %i.aj, %i.ap
  %i.bj = icmp slt i64 %i.bi, 0
  %i.bk = or i1 %found.conflict192, %i.bj
  %n.vec198 = and i64 %i.z, 252                   ; 3 uses
  %cmp.n205 = icmp eq i64 %n.vec198, %i.z
  %xtraiter217 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod218.not = icmp eq i64 %xtraiter217, 0
  br label %.preheader53.us

.preheader53.us:                                  ; preds = %.loopexit.us, %.lr.ph.split.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.loopexit.us ], [ %i.ar, %.lr.ph.split.us ] ; 3 uses
  %i.bl = mul i64 %i.aj, %indvars.iv102
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bl ; 6 uses
  %i.bn = mul i64 %i.ap, %indvars.iv102
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bn ; 6 uses
  %brmerge = select i1 %min.iters.check196, i1 true, i1 %i.bk
  br i1 %brmerge, label %scalar.ph195.preheader, label %vector.body199

vector.body199:                                   ; preds = %.preheader53.us, %vector.body199
  %index200 = phi i64 [ %index.next203, %vector.body199 ], [ 0, %.preheader53.us ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index200 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %wide.load201 = load <2 x i8>, ptr %i.bp, align 1, !tbaa !16, !alias.scope !1502
  %wide.load202 = load <2 x i8>, ptr %i.bq, align 1, !tbaa !16, !alias.scope !1502
  %i.br = zext <2 x i8> %wide.load201 to <2 x i32> ; 2 uses
  %i.bs = zext <2 x i8> %wide.load202 to <2 x i32> ; 2 uses
  %i.bt = mul nuw nsw <2 x i32> %i.br, %i.br
  %i.bu = mul nuw nsw <2 x i32> %i.bs, %i.bs
  %i.bv = uitofp nneg <2 x i32> %i.bt to <2 x double>
  %i.bw = uitofp nneg <2 x i32> %i.bu to <2 x double>
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index200 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x double> %i.bv, ptr %i.bx, align 8, !tbaa !76, !alias.scope !1505, !noalias !1502
  store <2 x double> %i.bw, ptr %i.by, align 8, !tbaa !76, !alias.scope !1505, !noalias !1502
  %index.next203 = add nuw i64 %index200, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next203, %n.vec198
  br i1 %i.bz, label %middle.block204, label %vector.body199, !llvm.loop !1507

middle.block204:                                  ; preds = %vector.body199
  br i1 %cmp.n205, label %.loopexit.us, label %scalar.ph195.preheader

scalar.ph195.preheader:                           ; preds = %.preheader53.us, %middle.block204
  %indvars.iv97.ph = phi i64 [ %n.vec198, %middle.block204 ], [ 0, %.preheader53.us ] ; 3 uses
  %i.ca = sub nsw i64 %i.bg, %indvars.iv97.ph
  br i1 %lcmp.mod218.not, label %scalar.ph195.prol.loopexit, label %scalar.ph195.prol

scalar.ph195.prol:                                ; preds = %scalar.ph195.preheader, %scalar.ph195.prol
  %indvars.iv97.prol = phi i64 [ %indvars.iv.next98.prol, %scalar.ph195.prol ], [ %indvars.iv97.ph, %scalar.ph195.preheader ] ; 3 uses
  %prol.iter219 = phi i64 [ %prol.iter219.next, %scalar.ph195.prol ], [ 0, %scalar.ph195.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv97.prol
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = mul nuw nsw i32 %i.cd, %i.cd
  %i.cf = uitofp nneg i32 %i.ce to double
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv97.prol
  store double %i.cf, ptr %i.cg, align 8, !tbaa !76
  %indvars.iv.next98.prol = add nuw nsw i64 %indvars.iv97.prol, 1 ; 2 uses
  %prol.iter219.next = add i64 %prol.iter219, 1   ; 2 uses
  %prol.iter219.cmp.not = icmp eq i64 %prol.iter219.next, %xtraiter217
  br i1 %prol.iter219.cmp.not, label %scalar.ph195.prol.loopexit, label %scalar.ph195.prol, !llvm.loop !1508

scalar.ph195.prol.loopexit:                       ; preds = %scalar.ph195.prol, %scalar.ph195.preheader
  %indvars.iv97.unr = phi i64 [ %indvars.iv97.ph, %scalar.ph195.preheader ], [ %indvars.iv.next98.prol, %scalar.ph195.prol ]
  %i.ch = icmp ult i64 %i.ca, 3
  br i1 %i.ch, label %.loopexit.us, label %scalar.ph195

scalar.ph195:                                     ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.3, %scalar.ph195 ], [ %indvars.iv97.unr, %scalar.ph195.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv97
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = mul nuw nsw i32 %i.ck, %i.ck
  %i.cm = uitofp nneg i32 %i.cl to double
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv97
  store double %i.cm, ptr %i.cn, align 8, !tbaa !76
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next98
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = mul nuw nsw i32 %i.cq, %i.cq
  %i.cs = uitofp nneg i32 %i.cr to double
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next98
  store double %i.cs, ptr %i.ct, align 8, !tbaa !76
  %indvars.iv.next98.1 = add nuw nsw i64 %indvars.iv97, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next98.1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !16
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = mul nuw nsw i32 %i.cw, %i.cw
  %i.cy = uitofp nneg i32 %i.cx to double
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next98.1
  store double %i.cy, ptr %i.cz, align 8, !tbaa !76
  %indvars.iv.next98.2 = add nuw nsw i64 %indvars.iv97, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next98.2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !16
  %i.dc = zext i8 %i.db to i32                    ; 2 uses
  %i.dd = mul nuw nsw i32 %i.dc, %i.dc
  %i.de = uitofp nneg i32 %i.dd to double
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next98.2
  store double %i.de, ptr %i.df, align 8, !tbaa !76
  %indvars.iv.next98.3 = add nuw nsw i64 %indvars.iv97, 4 ; 2 uses
  %exitcond101.not.3 = icmp eq i64 %indvars.iv.next98.3, %i.z
  br i1 %exitcond101.not.3, label %.loopexit.us, label %scalar.ph195, !llvm.loop !1509

.loopexit.us:                                     ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195, %middle.block204
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.dg = icmp slt i64 %indvars.iv.next103, %i.as
  br i1 %i.dg, label %.preheader53.us, label %._crit_edge, !llvm.loop !1510

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dh = icmp slt i32 %i.f, %i.y
  br i1 %i.dh, label %.preheader57.us.preheader, label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.lr.ph.split
  %i.di = sext i32 %i.ac to i64                   ; 2 uses
  %i.dj = sext i32 %i.ae to i64                   ; 2 uses
  %i.dk = and i32 %i.d, 127
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %i.dn = getelementptr i8, ptr %4, i64 %i.dm
  %scevgep = getelementptr i8, ptr %i.dn, i64 20
  %i.do = mul i64 %i.aj, %i.di
  %scevgep118 = getelementptr i8, ptr %i.ah, i64 %i.do
  %i.dp = add nsw i64 %i.dj, -1
  %i.dq = mul i64 %i.aj, %i.dp
  %i.dr = getelementptr i8, ptr %i.ah, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dl
  %scevgep119 = getelementptr i8, ptr %i.ds, i64 1
  %i.dt = and i32 %i.d, 127
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %min.iters.check121 = icmp samesign ult i32 %i.e, 7
  %bound0 = icmp ult ptr %i.aa, %scevgep119
  %bound1 = icmp ult ptr %scevgep118, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.aj, 0
  %i.dw = or i1 %found.conflict, %stride.check
  %n.vec123 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n130 = icmp eq i64 %n.vec123, %i.z
  %xtraiter = and i64 %i.dv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.e, 3
  %n.vec = and i64 %i.z, 252                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br label %.preheader57

.preheader57.us.preheader:                        ; preds = %.lr.ph.split
  %i.dx = zext i32 %i.y to i64                    ; 2 uses
  %i.dy = sext i32 %i.ac to i64                   ; 2 uses
  %i.dz = sext i32 %i.ae to i64                   ; 2 uses
  %i.ea = and i32 %i.d, 127
  %i.eb = zext nneg i32 %i.ea to i64              ; 9 uses
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = getelementptr i8, ptr %4, i64 %i.ec
  %scevgep145 = getelementptr i8, ptr %i.ed, i64 20
  %i.ee = mul i64 %i.aj, %i.dy                    ; 3 uses
  %i.ef = shl nuw nsw i64 %i.eb, 1                ; 4 uses
  %i.eg = add nuw nsw i64 %i.ef, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.eg, i64 %i.dx)
  %i.eh = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.eh, %i.ef
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.ef, %umin
  %i.ei = sub nsw i64 %i.eh, %6
  %7 = udiv i64 %i.ei, %i.z
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.z
  %i.ej = shl nuw nsw i64 %i.eb, 2
  %i.ek = getelementptr i8, ptr %4, i64 %i.ej
  %scevgep166 = getelementptr i8, ptr %i.ek, i64 20
  %scevgep167 = getelementptr i8, ptr %i.ah, i64 %i.ee
  %i.el = add nsw i64 %i.dz, -1
  %i.em = mul i64 %i.aj, %i.el
  %i.en = getelementptr i8, ptr %i.ah, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.eb
  %scevgep168 = getelementptr i8, ptr %i.eo, i64 1
  %i.ep = add nuw nsw i64 %i.eb, 1
  %i.eq = getelementptr i8, ptr %i.ah, i64 %i.ee
  %i.er = getelementptr i8, ptr %i.eq, i64 %i.eb
  %i.es = getelementptr i8, ptr %i.er, i64 1
  %min.iters.check174 = icmp samesign ult i32 %i.e, 7
  %bound0169 = icmp ult ptr %i.aa, %scevgep168
  %bound1170 = icmp ult ptr %scevgep167, %scevgep166
  %found.conflict171 = and i1 %bound0169, %bound1170
  %stride.check172 = icmp slt i64 %i.aj, 0
  %i.et = or i1 %found.conflict171, %stride.check172
  %n.vec176 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n183 = icmp eq i64 %n.vec176, %i.z
  %xtraiter211 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  %i.eu = getelementptr i8, ptr %i.ah, i64 %9
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.ee
  %i.ew = getelementptr i8, ptr %i.ev, i64 %i.ef
  %i.ex = getelementptr i8, ptr %i.ew, i64 2
  %min.iters.check152 = icmp samesign ult i32 %i.e, 7
  %n.vec154 = and i64 %i.z, 248                   ; 3 uses
  %cmp.n163 = icmp eq i64 %n.vec154, %i.z
  %i.ey = and i64 %i.eb, 1
  %lcmp.mod215.not.not = icmp eq i64 %i.ey, 0
  %min.iters.check133 = icmp samesign ult i32 %i.e, 3
  %n.vec135 = and i64 %i.z, 252                   ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %i.z
  br label %.preheader57.us

.preheader57.us:                                  ; preds = %.preheader57.us.preheader, %.loopexit55.us
  %indvar = phi i64 [ 0, %.preheader57.us.preheader ], [ %indvar.next, %.loopexit55.us ] ; 2 uses
  %indvars.iv94 = phi i64 [ %i.dy, %.preheader57.us.preheader ], [ %indvars.iv.next95, %.loopexit55.us ] ; 3 uses
  %i.ez = mul i64 %i.aj, %indvar                  ; 2 uses
  %scevgep146 = getelementptr i8, ptr %i.es, i64 %i.ez
  %i.fa = mul i64 %i.aj, %indvars.iv94
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fa ; 7 uses
  %brmerge220 = select i1 %min.iters.check174, i1 true, i1 %i.et
  br i1 %brmerge220, label %scalar.ph173.preheader, label %vector.body177

vector.body177:                                   ; preds = %.preheader57.us, %vector.body177
  %index178 = phi i64 [ %index.next181, %vector.body177 ], [ 0, %.preheader57.us ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %index178 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %wide.load179 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !16, !alias.scope !1511
  %wide.load180 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !16, !alias.scope !1511
  %i.fe = zext <4 x i8> %wide.load179 to <4 x i32> ; 2 uses
  %i.ff = zext <4 x i8> %wide.load180 to <4 x i32> ; 2 uses
  %i.fg = mul nuw nsw <4 x i32> %i.fe, %i.fe
  %i.fh = mul nuw nsw <4 x i32> %i.ff, %i.ff
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index178 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <4 x i32> %i.fg, ptr %i.fi, align 8, !tbaa !8, !alias.scope !1514, !noalias !1511
  store <4 x i32> %i.fh, ptr %i.fj, align 8, !tbaa !8, !alias.scope !1514, !noalias !1511
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.fk, label %middle.block182, label %vector.body177, !llvm.loop !1516

middle.block182:                                  ; preds = %vector.body177
  br i1 %cmp.n183, label %.preheader.us.preheader, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.preheader57.us, %middle.block182
  %indvars.iv76.ph = phi i64 [ %n.vec176, %middle.block182 ], [ 0, %.preheader57.us ] ; 3 uses
  %i.fl = sub nsw i64 %i.eb, %indvars.iv76.ph
  br i1 %lcmp.mod212.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol

scalar.ph173.prol:                                ; preds = %scalar.ph173.preheader, %scalar.ph173.prol
  %indvars.iv76.prol = phi i64 [ %indvars.iv.next77.prol, %scalar.ph173.prol ], [ %indvars.iv76.ph, %scalar.ph173.preheader ] ; 3 uses
  %prol.iter213 = phi i64 [ %prol.iter213.next, %scalar.ph173.prol ], [ 0, %scalar.ph173.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv76.prol
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  %i.fo = zext i8 %i.fn to i32                    ; 2 uses
  %i.fp = mul nuw nsw i32 %i.fo, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv76.prol
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !8
  %indvars.iv.next77.prol = add nuw nsw i64 %indvars.iv76.prol, 1 ; 2 uses
  %prol.iter213.next = add i64 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i64 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol, !llvm.loop !1517

scalar.ph173.prol.loopexit:                       ; preds = %scalar.ph173.prol, %scalar.ph173.preheader
  %indvars.iv76.unr = phi i64 [ %indvars.iv76.ph, %scalar.ph173.preheader ], [ %indvars.iv.next77.prol, %scalar.ph173.prol ]
  %i.fr = icmp ult i64 %i.fl, 3
  br i1 %i.fr, label %.preheader.us.preheader, label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.3, %scalar.ph173 ], [ %indvars.iv76.unr, %scalar.ph173.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv76
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !16
  %i.fu = zext i8 %i.ft to i32                    ; 2 uses
  %i.fv = mul nuw nsw i32 %i.fu, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv76
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !8
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next77
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !16
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = mul nuw nsw i32 %i.fz, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next77
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !8
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next77.1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !16
  %i.ge = zext i8 %i.gd to i32                    ; 2 uses
  %i.gf = mul nuw nsw i32 %i.ge, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next77.1
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !8
  %indvars.iv.next77.2 = add nuw nsw i64 %indvars.iv76, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.next77.2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !16
  %i.gj = zext i8 %i.gi to i32                    ; 2 uses
  %i.gk = mul nuw nsw i32 %i.gj, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next77.2
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !8
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %exitcond80.not.3 = icmp eq i64 %indvars.iv.next77.3, %i.z
  br i1 %exitcond80.not.3, label %.preheader.us.preheader, label %scalar.ph173, !llvm.loop !1518

.preheader.us.preheader:                          ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173, %middle.block182
  %scevgep147 = getelementptr i8, ptr %i.ex, i64 %i.ez
  %bound0148 = icmp ult ptr %i.aa, %scevgep147
  %bound1149 = icmp ult ptr %scevgep146, %scevgep145
  %found.conflict150 = and i1 %bound0148, %bound1149
  br label %.preheader.us

scalar.ph151:                                     ; preds = %scalar.ph151.prol.loopexit, %scalar.ph151
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.1, %scalar.ph151 ], [ %indvars.iv81.unr, %scalar.ph151.prol.loopexit ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv81 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv81
  %i.go = load i8, ptr %gep, align 1, !tbaa !16
  %i.gp = zext i8 %i.go to i32                    ; 2 uses
  %i.gq = mul nuw nsw i32 %i.gp, %i.gp
  %i.gr = add nsw i32 %i.gq, %i.gn
  store i32 %i.gr, ptr %i.gm, align 4, !tbaa !8
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next82 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !8
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next82
  %i.gu = load i8, ptr %gep.1, align 1, !tbaa !16
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = mul nuw nsw i32 %i.gv, %i.gv
  %i.gx = add nsw i32 %i.gw, %i.gt
  store i32 %i.gx, ptr %i.gs, align 4, !tbaa !8
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %exitcond85.not.1 = icmp eq i64 %indvars.iv.next82.1, %i.z
  br i1 %exitcond85.not.1, label %.loopexit, label %scalar.ph151, !llvm.loop !1519

.loopexit:                                        ; preds = %scalar.ph151.prol.loopexit, %scalar.ph151, %middle.block162
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %i.z ; 2 uses
  %i.gy = icmp samesign ult i64 %indvars.iv.next87, %i.dx
  br i1 %i.gy, label %.preheader.us, label %..preheader54_crit_edge.us.preheader, !llvm.loop !1520

..preheader54_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.gz = mul i64 %i.ap, %indvars.iv94
  %i.ha = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.gz ; 2 uses
  br i1 %min.iters.check133, label %..preheader54_crit_edge.us.preheader207, label %vector.body136

vector.body136:                                   ; preds = %..preheader54_crit_edge.us.preheader, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %..preheader54_crit_edge.us.preheader ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index137 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %wide.load138 = load <2 x i32>, ptr %i.hb, align 8, !tbaa !8
  %wide.load139 = load <2 x i32>, ptr %i.hc, align 8, !tbaa !8
  %i.hd = sitofp <2 x i32> %wide.load138 to <2 x double>
  %i.he = sitofp <2 x i32> %wide.load139 to <2 x double>
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %index137 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <2 x double> %i.hd, ptr %i.hf, align 8, !tbaa !76
  store <2 x double> %i.he, ptr %i.hg, align 8, !tbaa !76
  %index.next140 = add nuw i64 %index137, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.hh, label %middle.block141, label %vector.body136, !llvm.loop !1521

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %.loopexit55.us, label %..preheader54_crit_edge.us.preheader207

..preheader54_crit_edge.us.preheader207:          ; preds = %..preheader54_crit_edge.us.preheader, %middle.block141
  %indvars.iv89.ph = phi i64 [ 0, %..preheader54_crit_edge.us.preheader ], [ %n.vec135, %middle.block141 ]
  br label %..preheader54_crit_edge.us

..preheader54_crit_edge.us:                       ; preds = %..preheader54_crit_edge.us.preheader207, %..preheader54_crit_edge.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %..preheader54_crit_edge.us ], [ %indvars.iv89.ph, %..preheader54_crit_edge.us.preheader207 ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv89
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !8
  %i.hk = sitofp i32 %i.hj to double
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv89
  store double %i.hk, ptr %i.hl, align 8, !tbaa !76
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %i.z
  br i1 %exitcond93.not, label %.loopexit55.us, label %..preheader54_crit_edge.us, !llvm.loop !1522

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.loopexit ], [ %i.z, %.preheader.us.preheader ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv86 ; 4 uses
  %brmerge221 = select i1 %min.iters.check152, i1 true, i1 %found.conflict150
  br i1 %brmerge221, label %scalar.ph151.preheader, label %vector.body155

vector.body155:                                   ; preds = %.preheader.us, %vector.body155
  %index156 = phi i64 [ %index.next161, %vector.body155 ], [ 0, %.preheader.us ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index156 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %i.hm, align 8, !tbaa !8, !alias.scope !1523, !noalias !1526
  %wide.load158 = load <4 x i32>, ptr %i.hn, align 8, !tbaa !8, !alias.scope !1523, !noalias !1526
  %i.ho = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index156 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %wide.load159 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !16, !alias.scope !1526
  %wide.load160 = load <4 x i8>, ptr %i.hp, align 1, !tbaa !16, !alias.scope !1526
  %i.hq = zext <4 x i8> %wide.load159 to <4 x i32> ; 2 uses
  %i.hr = zext <4 x i8> %wide.load160 to <4 x i32> ; 2 uses
  %i.hs = mul nuw nsw <4 x i32> %i.hq, %i.hq
  %i.ht = mul nuw nsw <4 x i32> %i.hr, %i.hr
  %i.hu = add nsw <4 x i32> %i.hs, %wide.load157
  %i.hv = add nsw <4 x i32> %i.ht, %wide.load158
  store <4 x i32> %i.hu, ptr %i.hm, align 8, !tbaa !8, !alias.scope !1523, !noalias !1526
  store <4 x i32> %i.hv, ptr %i.hn, align 8, !tbaa !8, !alias.scope !1523, !noalias !1526
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
end_hunk_15
begin_hunk_16_@_ZNK2cv15ReduceC_InvokerIfffNS_8OpAddSqrIfffEENS_5OpSqrIfffEEEclERKNS_5RangeE:bb.a
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 31 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !315
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113 ; 4 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1617, !nonnull !455, !align !456 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 6 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 10 uses
  %i.at = icmp eq i32 %i.z, %i.g
  br i1 %i.at, label %.preheader53.us.preheader, label %.lr.ph.split

.preheader53.us.preheader:                        ; preds = %.lr.ph
  %i.au = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count109 = sext i32 %i.af to i64     ; 2 uses
  %i.av = mul i64 %i.as, %i.au
  %scevgep186 = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.aw = add nsw i64 %wide.trip.count109, -1     ; 2 uses
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = shl nuw nsw i32 %i.e, 2
  %i.az = and i32 %i.ay, 508
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %scevgep187 = getelementptr i8, ptr %i.bc, i64 4
  %i.bd = mul i64 %i.al, %i.au
  %scevgep188 = getelementptr i8, ptr %i.ai, i64 %i.bd
  %i.be = mul i64 %i.al, %i.aw
  %i.bf = getelementptr i8, ptr %i.ai, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
  %scevgep189 = getelementptr i8, ptr %i.bg, i64 4
  %i.bh = and i32 %i.e, 127
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %min.iters.check195 = icmp samesign ult i32 %i.f, 7
  %bound0190 = icmp ult ptr %scevgep186, %scevgep189
  %bound1191 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict192 = and i1 %bound0190, %bound1191
  %i.bk = or i64 %i.al, %i.as
  %i.bl = icmp slt i64 %i.bk, 0
  %i.bm = or i1 %found.conflict192, %i.bl
  %n.vec197 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec197, %i.aa
  %xtraiter223 = and i64 %i.bj, 3                 ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br label %.preheader53.us

.preheader53.us:                                  ; preds = %.preheader53.us.preheader, %.loopexit.us
  %indvars.iv106 = phi i64 [ %i.au, %.preheader53.us.preheader ], [ %indvars.iv.next107, %.loopexit.us ] ; 3 uses
  %i.bn = mul i64 %i.al, %indvars.iv106
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn ; 6 uses
  %i.bp = mul i64 %i.as, %indvars.iv106
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp ; 6 uses
  %brmerge = select i1 %min.iters.check195, i1 true, i1 %i.bm
  br i1 %brmerge, label %scalar.ph194.preheader, label %vector.body198

vector.body198:                                   ; preds = %.preheader53.us, %vector.body198
  %index199 = phi i64 [ %index.next202, %vector.body198 ], [ 0, %.preheader53.us ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index199 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load200 = load <4 x float>, ptr %i.br, align 4, !tbaa !79, !alias.scope !1618 ; 2 uses
  %wide.load201 = load <4 x float>, ptr %i.bs, align 4, !tbaa !79, !alias.scope !1618 ; 2 uses
  %i.bt = fmul <4 x float> %wide.load200, %wide.load200
  %i.bu = fmul <4 x float> %wide.load201, %wide.load201
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index199 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x float> %i.bt, ptr %i.bv, align 4, !tbaa !79, !alias.scope !1621, !noalias !1618
  store <4 x float> %i.bu, ptr %i.bw, align 4, !tbaa !79, !alias.scope !1621, !noalias !1618
  %index.next202 = add nuw i64 %index199, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.bx, label %middle.block203, label %vector.body198, !llvm.loop !1623

middle.block203:                                  ; preds = %vector.body198
  br i1 %cmp.n204, label %.loopexit.us, label %scalar.ph194.preheader

scalar.ph194.preheader:                           ; preds = %.preheader53.us, %middle.block203
  %indvars.iv101.ph = phi i64 [ %n.vec197, %middle.block203 ], [ 0, %.preheader53.us ] ; 3 uses
  %i.by = sub nsw i64 %i.bi, %indvars.iv101.ph
  br i1 %lcmp.mod224.not, label %scalar.ph194.prol.loopexit, label %scalar.ph194.prol

scalar.ph194.prol:                                ; preds = %scalar.ph194.preheader, %scalar.ph194.prol
  %indvars.iv101.prol = phi i64 [ %indvars.iv.next102.prol, %scalar.ph194.prol ], [ %indvars.iv101.ph, %scalar.ph194.preheader ] ; 3 uses
  %prol.iter225 = phi i64 [ %prol.iter225.next, %scalar.ph194.prol ], [ 0, %scalar.ph194.preheader ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv101.prol
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !79 ; 2 uses
  %i.cb = fmul float %i.ca, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv101.prol
  store float %i.cb, ptr %i.cc, align 4, !tbaa !79
  %indvars.iv.next102.prol = add nuw nsw i64 %indvars.iv101.prol, 1 ; 2 uses
  %prol.iter225.next = add i64 %prol.iter225, 1   ; 2 uses
  %prol.iter225.cmp.not = icmp eq i64 %prol.iter225.next, %xtraiter223
  br i1 %prol.iter225.cmp.not, label %scalar.ph194.prol.loopexit, label %scalar.ph194.prol, !llvm.loop !1624

scalar.ph194.prol.loopexit:                       ; preds = %scalar.ph194.prol, %scalar.ph194.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %scalar.ph194.preheader ], [ %indvars.iv.next102.prol, %scalar.ph194.prol ]
  %i.cd = icmp ult i64 %i.by, 3
  br i1 %i.cd, label %.loopexit.us, label %scalar.ph194

scalar.ph194:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %scalar.ph194 ], [ %indvars.iv101.unr, %scalar.ph194.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv101
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !79 ; 2 uses
  %i.cg = fmul float %i.cf, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv101
  store float %i.cg, ptr %i.ch, align 4, !tbaa !79
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next102
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !79 ; 2 uses
  %i.ck = fmul float %i.cj, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next102
  store float %i.ck, ptr %i.cl, align 4, !tbaa !79
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next102.1
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !79 ; 2 uses
  %i.co = fmul float %i.cn, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next102.1
  store float %i.co, ptr %i.cp, align 4, !tbaa !79
  %indvars.iv.next102.2 = add nuw nsw i64 %indvars.iv101, 3 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next102.2
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !79 ; 2 uses
  %i.cs = fmul float %i.cr, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next102.2
  store float %i.cs, ptr %i.ct, align 4, !tbaa !79
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %exitcond105.not.3 = icmp eq i64 %indvars.iv.next102.3, %i.aa
  br i1 %exitcond105.not.3, label %.loopexit.us, label %scalar.ph194, !llvm.loop !1625

.loopexit.us:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194, %middle.block203
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge, label %.preheader53.us, !llvm.loop !1626

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cu = icmp slt i32 %i.g, %i.z
  br i1 %i.cu, label %.preheader57.us.preheader, label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.lr.ph.split
  %i.cv = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count76 = sext i32 %i.af to i64
  %i.cw = mul i64 %i.as, %i.cv
  %i.cx = add i64 %i.cw, %i.aq
  %i.cy = add i64 %i.cx, -16
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = mul i64 %i.al, %i.cv
  %i.db = add i64 %i.da, %i.aj
  %i.dc = and i32 %i.e, 127
  %i.dd = zext nneg i32 %i.dc to i64              ; 4 uses
  %i.de = add nuw nsw i64 %i.dd, 1
  %i.df = add nuw nsw i64 %i.dd, 1
  %min.iters.check127 = icmp samesign ult i32 %i.f, 7
  %n.vec129 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n136 = icmp eq i64 %n.vec129, %i.aa
  %xtraiter = and i64 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 7
  %invariant.op = add i64 %i.cz, -1
  %n.vec = and i64 %i.aa, 248                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter211 = and i64 %i.df, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br label %.preheader57

.preheader57.us.preheader:                        ; preds = %.lr.ph.split
  %i.dg = zext i32 %i.z to i64                    ; 2 uses
  %i.dh = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count99 = sext i32 %i.af to i64
  %i.di = mul i64 %i.as, %i.dh
  %i.dj = add i64 %i.di, %i.aq
  %i.dk = add i64 %i.dj, -16
  %i.dl = sub i64 %i.dk, %i.a
  %i.dm = and i32 %i.e, 127
  %i.dn = zext nneg i32 %i.dm to i64              ; 3 uses
  %i.do = shl nuw nsw i64 %i.dn, 2                ; 3 uses
  %i.dp = getelementptr i8, ptr %4, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dp, i64 20
  %i.dq = mul i64 %i.al, %i.dh                    ; 3 uses
  %i.dr = shl nuw nsw i64 %i.dn, 1                ; 3 uses
  %i.ds = add nuw nsw i64 %i.dr, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.dg)
  %i.dt = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dt, %i.dr
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dr, %umin
  %i.du = sub nsw i64 %i.dt, %6
  %i.dv = udiv i64 %i.du, %i.aa
  %7 = add i64 %i.dv, %umin
  %i.dw = add nuw nsw i64 %i.do, 4
  %i.dx = mul i64 %7, %i.dw
  %i.dy = shl nuw nsw i64 %i.dn, 3
  %i.dz = add i64 %i.dq, %i.aj
  %i.ea = and i32 %i.e, 127
  %i.eb = zext nneg i32 %i.ea to i64              ; 6 uses
  %i.ec = add nuw nsw i64 %i.eb, 1
  %i.ed = add nuw nsw i64 %i.eb, 1
  %i.ee = getelementptr i8, ptr %i.ai, i64 %i.dq
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.do
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  %min.iters.check174 = icmp samesign ult i32 %i.f, 7
  %n.vec176 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n183 = icmp eq i64 %n.vec176, %i.aa
  %xtraiter214 = and i64 %i.ec, 3                 ; 2 uses
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  %i.eh = getelementptr i8, ptr %i.ai, i64 %i.dx
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.dq
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.dy
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %min.iters.check158 = icmp samesign ult i32 %i.f, 7
  %n.vec160 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n169 = icmp eq i64 %n.vec160, %i.aa
  %i.el = and i64 %i.eb, 1
  %lcmp.mod218.not.not = icmp eq i64 %i.el, 0
  %min.iters.check143 = icmp samesign ult i32 %i.f, 7
  %invariant.op226 = add i64 %i.dl, -1
  %n.vec145 = and i64 %i.aa, 248                  ; 3 uses
  %cmp.n152 = icmp eq i64 %n.vec145, %i.aa
  %xtraiter220 = and i64 %i.ed, 3                 ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br label %.preheader57.us

.preheader57.us:                                  ; preds = %.preheader57.us.preheader, %.loopexit55.us
  %indvar139 = phi i64 [ 0, %.preheader57.us.preheader ], [ %indvar.next140, %.loopexit55.us ] ; 4 uses
  %indvars.iv96 = phi i64 [ %i.dh, %.preheader57.us.preheader ], [ %indvars.iv.next97, %.loopexit55.us ] ; 3 uses
  %i.em = mul i64 %i.al, %indvar139               ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.eg, i64 %i.em
  %i.en = mul i64 %i.as, %indvar139
  %i.eo = mul i64 %i.al, %indvars.iv96
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eo ; 7 uses
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %.preheader57.us
  %i.eq = mul i64 %i.al, %indvar139
  %i.er = add i64 %i.dz, %i.eq
  %i.es = sub i64 %i.a, %i.er
  %i.et = add i64 %i.es, 15
  %diff.check172 = icmp ult i64 %i.et, 31
  br i1 %diff.check172, label %scalar.ph173.preheader, label %vector.body177

vector.body177:                                   ; preds = %vector.memcheck171, %vector.body177
  %index178 = phi i64 [ %index.next181, %vector.body177 ], [ 0, %vector.memcheck171 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index178 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load179 = load <4 x float>, ptr %i.eu, align 4, !tbaa !79 ; 2 uses
  %wide.load180 = load <4 x float>, ptr %i.ev, align 4, !tbaa !79 ; 2 uses
  %i.ew = fmul <4 x float> %wide.load179, %wide.load179
  %i.ex = fmul <4 x float> %wide.load180, %wide.load180
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index178 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <4 x float> %i.ew, ptr %i.ey, align 8, !tbaa !79
  store <4 x float> %i.ex, ptr %i.ez, align 8, !tbaa !79
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.fa, label %middle.block182, label %vector.body177, !llvm.loop !1627

middle.block182:                                  ; preds = %vector.body177
  br i1 %cmp.n183, label %.preheader.us.preheader, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %vector.memcheck171, %.preheader57.us, %middle.block182
  %indvars.iv78.ph = phi i64 [ 0, %vector.memcheck171 ], [ 0, %.preheader57.us ], [ %n.vec176, %middle.block182 ] ; 3 uses
  %i.fb = sub nsw i64 %i.eb, %indvars.iv78.ph
  br i1 %lcmp.mod215.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol

scalar.ph173.prol:                                ; preds = %scalar.ph173.preheader, %scalar.ph173.prol
  %indvars.iv78.prol = phi i64 [ %indvars.iv.next79.prol, %scalar.ph173.prol ], [ %indvars.iv78.ph, %scalar.ph173.preheader ] ; 3 uses
  %prol.iter216 = phi i64 [ %prol.iter216.next, %scalar.ph173.prol ], [ 0, %scalar.ph173.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv78.prol
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !79 ; 2 uses
  %i.fe = fmul float %i.fd, %i.fd
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv78.prol
  store float %i.fe, ptr %i.ff, align 4, !tbaa !79
  %indvars.iv.next79.prol = add nuw nsw i64 %indvars.iv78.prol, 1 ; 2 uses
  %prol.iter216.next = add i64 %prol.iter216, 1   ; 2 uses
  %prol.iter216.cmp.not = icmp eq i64 %prol.iter216.next, %xtraiter214
  br i1 %prol.iter216.cmp.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol, !llvm.loop !1628

scalar.ph173.prol.loopexit:                       ; preds = %scalar.ph173.prol, %scalar.ph173.preheader
  %indvars.iv78.unr = phi i64 [ %indvars.iv78.ph, %scalar.ph173.preheader ], [ %indvars.iv.next79.prol, %scalar.ph173.prol ]
  %i.fg = icmp ult i64 %i.fb, 3
  br i1 %i.fg, label %.preheader.us.preheader, label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.3, %scalar.ph173 ], [ %indvars.iv78.unr, %scalar.ph173.prol.loopexit ] ; 6 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv78
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !79 ; 2 uses
  %i.fj = fmul float %i.fi, %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv78
  store float %i.fj, ptr %i.fk, align 4, !tbaa !79
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next79
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !79 ; 2 uses
  %i.fn = fmul float %i.fm, %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next79
  store float %i.fn, ptr %i.fo, align 4, !tbaa !79
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next79.1
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !79 ; 2 uses
  %i.fr = fmul float %i.fq, %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next79.1
  store float %i.fr, ptr %i.fs, align 4, !tbaa !79
  %indvars.iv.next79.2 = add nuw nsw i64 %indvars.iv78, 3 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next79.2
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !79 ; 2 uses
  %i.fv = fmul float %i.fu, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next79.2
  store float %i.fv, ptr %i.fw, align 4, !tbaa !79
  %indvars.iv.next79.3 = add nuw nsw i64 %indvars.iv78, 4 ; 2 uses
  %exitcond82.not.3 = icmp eq i64 %indvars.iv.next79.3, %i.aa
  br i1 %exitcond82.not.3, label %.preheader.us.preheader, label %scalar.ph173, !llvm.loop !1629

.preheader.us.preheader:                          ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173, %middle.block182
  %scevgep156 = getelementptr i8, ptr %i.ek, i64 %i.em
  %bound0 = icmp ult ptr %i.ab, %scevgep156
  %bound1 = icmp ult ptr %scevgep155, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

scalar.ph157:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %scalar.ph157 ], [ %indvars.iv83.unr, %scalar.ph157.prol.loopexit ] ; 4 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv83 ; 2 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !79
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv83
  %i.fz = load float, ptr %gep, align 4, !tbaa !79 ; 2 uses
  %i.ga = call noundef float @llvm.fmuladd.f32(float %i.fz, float %i.fz, float %i.fy)
  store float %i.ga, ptr %i.fx, align 4, !tbaa !79
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next84 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !79
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next84
  %i.gd = load float, ptr %gep.1, align 4, !tbaa !79 ; 2 uses
  %i.ge = call noundef float @llvm.fmuladd.f32(float %i.gd, float %i.gd, float %i.gc)
  store float %i.ge, ptr %i.gb, align 4, !tbaa !79
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %exitcond87.not.1 = icmp eq i64 %indvars.iv.next84.1, %i.aa
  br i1 %exitcond87.not.1, label %.loopexit, label %scalar.ph157, !llvm.loop !1630

.loopexit:                                        ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157, %middle.block168
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, %i.aa ; 2 uses
  %i.gf = icmp samesign ult i64 %indvars.iv.next89, %i.dg
  br i1 %i.gf, label %.preheader.us, label %..preheader54_crit_edge.us.preheader, !llvm.loop !1631

..preheader54_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.gg = mul i64 %i.as, %indvars.iv96
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.gg ; 6 uses
  %.reass227 = add i64 %i.en, %invariant.op226
  %diff.check141 = icmp ult i64 %.reass227, 31
  %or.cond = select i1 %min.iters.check143, i1 true, i1 %diff.check141
  br i1 %or.cond, label %..preheader54_crit_edge.us.preheader207, label %vector.body146

vector.body146:                                   ; preds = %..preheader54_crit_edge.us.preheader, %vector.body146
  %index147 = phi i64 [ %index.next150, %vector.body146 ], [ 0, %..preheader54_crit_edge.us.preheader ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index147 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load148 = load <4 x float>, ptr %i.gi, align 8, !tbaa !79
  %wide.load149 = load <4 x float>, ptr %i.gj, align 8, !tbaa !79
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index147 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <4 x float> %wide.load148, ptr %i.gk, align 4, !tbaa !79
  store <4 x float> %wide.load149, ptr %i.gl, align 4, !tbaa !79
  %index.next150 = add nuw i64 %index147, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.gm, label %middle.block151, label %vector.body146, !llvm.loop !1632

middle.block151:                                  ; preds = %vector.body146
  br i1 %cmp.n152, label %.loopexit55.us, label %..preheader54_crit_edge.us.preheader207

..preheader54_crit_edge.us.preheader207:          ; preds = %..preheader54_crit_edge.us.preheader, %middle.block151
  %indvars.iv91.ph = phi i64 [ 0, %..preheader54_crit_edge.us.preheader ], [ %n.vec145, %middle.block151 ] ; 3 uses
  %i.gn = sub nsw i64 %i.eb, %indvars.iv91.ph
  br i1 %lcmp.mod221.not, label %..preheader54_crit_edge.us.prol.loopexit, label %..preheader54_crit_edge.us.prol

..preheader54_crit_edge.us.prol:                  ; preds = %..preheader54_crit_edge.us.preheader207, %..preheader54_crit_edge.us.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %..preheader54_crit_edge.us.prol ], [ %indvars.iv91.ph, %..preheader54_crit_edge.us.preheader207 ] ; 3 uses
  %prol.iter222 = phi i64 [ %prol.iter222.next, %..preheader54_crit_edge.us.prol ], [ 0, %..preheader54_crit_edge.us.preheader207 ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv91.prol
  %i.gp = load float, ptr %i.go, align 4, !tbaa !79
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv91.prol
  store float %i.gp, ptr %i.gq, align 4, !tbaa !79
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter222.next = add i64 %prol.iter222, 1   ; 2 uses
  %prol.iter222.cmp.not = icmp eq i64 %prol.iter222.next, %xtraiter220
  br i1 %prol.iter222.cmp.not, label %..preheader54_crit_edge.us.prol.loopexit, label %..preheader54_crit_edge.us.prol, !llvm.loop !1633

..preheader54_crit_edge.us.prol.loopexit:         ; preds = %..preheader54_crit_edge.us.prol, %..preheader54_crit_edge.us.preheader207
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %..preheader54_crit_edge.us.preheader207 ], [ %indvars.iv.next92.prol, %..preheader54_crit_edge.us.prol ]
  %i.gr = icmp ult i64 %i.gn, 3
  br i1 %i.gr, label %.loopexit55.us, label %..preheader54_crit_edge.us

..preheader54_crit_edge.us:                       ; preds = %..preheader54_crit_edge.us.prol.loopexit, %..preheader54_crit_edge.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %..preheader54_crit_edge.us ], [ %indvars.iv91.unr, %..preheader54_crit_edge.us.prol.loopexit ] ; 6 uses
end_hunk_16
begin_hunk_17_@_ZNK2cv15ReduceC_InvokerIdddNS_8OpAddSqrIdddEENS_5OpSqrIdddEEEclERKNS_5RangeE:bb.a
  br label %_ZNK2cv8MatShapeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.u = icmp eq i32 %i.i, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.s, %.thread.i ]
  %i.z = mul i32 %i.y, %i.g                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aa = zext nneg i32 %i.g to i64               ; 22 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 31 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !337
  %i.ad = load i32, ptr %1, align 4, !tbaa !111   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113 ; 4 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 8 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1668, !nonnull !455, !align !456 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 6 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 10 uses
  %i.at = icmp eq i32 %i.z, %i.g
  br i1 %i.at, label %.preheader53.us.preheader, label %.lr.ph.split

.preheader53.us.preheader:                        ; preds = %.lr.ph
  %i.au = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count109 = sext i32 %i.af to i64     ; 2 uses
  %i.av = mul i64 %i.as, %i.au
  %scevgep186 = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.aw = add nsw i64 %wide.trip.count109, -1     ; 2 uses
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = shl nuw nsw i32 %i.e, 3
  %i.az = and i32 %i.ay, 1016
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ba
  %scevgep187 = getelementptr i8, ptr %i.bc, i64 8
  %i.bd = mul i64 %i.al, %i.au
  %scevgep188 = getelementptr i8, ptr %i.ai, i64 %i.bd
  %i.be = mul i64 %i.al, %i.aw
  %i.bf = getelementptr i8, ptr %i.ai, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
  %scevgep189 = getelementptr i8, ptr %i.bg, i64 8
  %i.bh = and i32 %i.e, 127
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1
  %min.iters.check195 = icmp samesign ult i32 %i.f, 5
  %bound0190 = icmp ult ptr %scevgep186, %scevgep189
  %bound1191 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict192 = and i1 %bound0190, %bound1191
  %i.bk = or i64 %i.al, %i.as
  %i.bl = icmp slt i64 %i.bk, 0
  %i.bm = or i1 %found.conflict192, %i.bl
  %n.vec197 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n204 = icmp eq i64 %n.vec197, %i.aa
  %xtraiter223 = and i64 %i.bj, 3                 ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br label %.preheader53.us

.preheader53.us:                                  ; preds = %.preheader53.us.preheader, %.loopexit.us
  %indvars.iv106 = phi i64 [ %i.au, %.preheader53.us.preheader ], [ %indvars.iv.next107, %.loopexit.us ] ; 3 uses
  %i.bn = mul i64 %i.al, %indvars.iv106
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn ; 6 uses
  %i.bp = mul i64 %i.as, %indvars.iv106
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp ; 6 uses
  %brmerge = select i1 %min.iters.check195, i1 true, i1 %i.bm
  br i1 %brmerge, label %scalar.ph194.preheader, label %vector.body198

vector.body198:                                   ; preds = %.preheader53.us, %vector.body198
  %index199 = phi i64 [ %index.next202, %vector.body198 ], [ 0, %.preheader53.us ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index199 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load200 = load <2 x double>, ptr %i.br, align 8, !tbaa !76, !alias.scope !1669 ; 2 uses
  %wide.load201 = load <2 x double>, ptr %i.bs, align 8, !tbaa !76, !alias.scope !1669 ; 2 uses
  %i.bt = fmul <2 x double> %wide.load200, %wide.load200
  %i.bu = fmul <2 x double> %wide.load201, %wide.load201
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index199 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> %i.bt, ptr %i.bv, align 8, !tbaa !76, !alias.scope !1672, !noalias !1669
  store <2 x double> %i.bu, ptr %i.bw, align 8, !tbaa !76, !alias.scope !1672, !noalias !1669
  %index.next202 = add nuw i64 %index199, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.bx, label %middle.block203, label %vector.body198, !llvm.loop !1674

middle.block203:                                  ; preds = %vector.body198
  br i1 %cmp.n204, label %.loopexit.us, label %scalar.ph194.preheader

scalar.ph194.preheader:                           ; preds = %.preheader53.us, %middle.block203
  %indvars.iv101.ph = phi i64 [ %n.vec197, %middle.block203 ], [ 0, %.preheader53.us ] ; 3 uses
  %i.by = sub nsw i64 %i.bi, %indvars.iv101.ph
  br i1 %lcmp.mod224.not, label %scalar.ph194.prol.loopexit, label %scalar.ph194.prol

scalar.ph194.prol:                                ; preds = %scalar.ph194.preheader, %scalar.ph194.prol
  %indvars.iv101.prol = phi i64 [ %indvars.iv.next102.prol, %scalar.ph194.prol ], [ %indvars.iv101.ph, %scalar.ph194.preheader ] ; 3 uses
  %prol.iter225 = phi i64 [ %prol.iter225.next, %scalar.ph194.prol ], [ 0, %scalar.ph194.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv101.prol
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !76 ; 2 uses
  %i.cb = fmul double %i.ca, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv101.prol
  store double %i.cb, ptr %i.cc, align 8, !tbaa !76
  %indvars.iv.next102.prol = add nuw nsw i64 %indvars.iv101.prol, 1 ; 2 uses
  %prol.iter225.next = add i64 %prol.iter225, 1   ; 2 uses
  %prol.iter225.cmp.not = icmp eq i64 %prol.iter225.next, %xtraiter223
  br i1 %prol.iter225.cmp.not, label %scalar.ph194.prol.loopexit, label %scalar.ph194.prol, !llvm.loop !1675

scalar.ph194.prol.loopexit:                       ; preds = %scalar.ph194.prol, %scalar.ph194.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %scalar.ph194.preheader ], [ %indvars.iv.next102.prol, %scalar.ph194.prol ]
  %i.cd = icmp ult i64 %i.by, 3
  br i1 %i.cd, label %.loopexit.us, label %scalar.ph194

scalar.ph194:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %scalar.ph194 ], [ %indvars.iv101.unr, %scalar.ph194.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv101
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !76 ; 2 uses
  %i.cg = fmul double %i.cf, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv101
  store double %i.cg, ptr %i.ch, align 8, !tbaa !76
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next102
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !76 ; 2 uses
  %i.ck = fmul double %i.cj, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next102
  store double %i.ck, ptr %i.cl, align 8, !tbaa !76
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next102.1
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !76 ; 2 uses
  %i.co = fmul double %i.cn, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next102.1
  store double %i.co, ptr %i.cp, align 8, !tbaa !76
  %indvars.iv.next102.2 = add nuw nsw i64 %indvars.iv101, 3 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next102.2
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !76 ; 2 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next102.2
  store double %i.cs, ptr %i.ct, align 8, !tbaa !76
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %exitcond105.not.3 = icmp eq i64 %indvars.iv.next102.3, %i.aa
  br i1 %exitcond105.not.3, label %.loopexit.us, label %scalar.ph194, !llvm.loop !1676

.loopexit.us:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194, %middle.block203
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge, label %.preheader53.us, !llvm.loop !1677

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cu = icmp slt i32 %i.g, %i.z
  br i1 %i.cu, label %.preheader57.us.preheader, label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.lr.ph.split
  %i.cv = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count76 = sext i32 %i.af to i64
  %i.cw = mul i64 %i.as, %i.cv
  %i.cx = add i64 %i.cw, %i.aq
  %i.cy = add i64 %i.cx, -16
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = mul i64 %i.al, %i.cv
  %i.db = add i64 %i.da, %i.aj
  %i.dc = and i32 %i.e, 127
  %i.dd = zext nneg i32 %i.dc to i64              ; 4 uses
  %i.de = add nuw nsw i64 %i.dd, 1
  %i.df = add nuw nsw i64 %i.dd, 1
  %min.iters.check127 = icmp samesign ult i32 %i.f, 3
  %n.vec129 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n136 = icmp eq i64 %n.vec129, %i.aa
  %xtraiter = and i64 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp samesign ult i32 %i.f, 3
  %invariant.op = add i64 %i.cz, -1
  %n.vec = and i64 %i.aa, 252                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  %xtraiter211 = and i64 %i.df, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br label %.preheader57

.preheader57.us.preheader:                        ; preds = %.lr.ph.split
  %i.dg = zext i32 %i.z to i64                    ; 2 uses
  %i.dh = sext i32 %i.ad to i64                   ; 3 uses
  %wide.trip.count99 = sext i32 %i.af to i64
  %i.di = mul i64 %i.as, %i.dh
  %i.dj = add i64 %i.di, %i.aq
  %i.dk = add i64 %i.dj, -16
  %i.dl = sub i64 %i.dk, %i.a
  %i.dm = and i32 %i.e, 127
  %i.dn = zext nneg i32 %i.dm to i64              ; 3 uses
  %i.do = shl nuw nsw i64 %i.dn, 3                ; 3 uses
  %i.dp = getelementptr i8, ptr %4, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dp, i64 24
  %i.dq = mul i64 %i.al, %i.dh                    ; 3 uses
  %i.dr = shl nuw nsw i64 %i.dn, 1                ; 3 uses
  %i.ds = add nuw nsw i64 %i.dr, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.dg)
  %i.dt = add nsw i64 %umax, -2                   ; 2 uses
  %5 = icmp ne i64 %i.dt, %i.dr
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %i.dr, %umin
  %i.du = sub nsw i64 %i.dt, %6
  %i.dv = udiv i64 %i.du, %i.aa
  %7 = add i64 %i.dv, %umin
  %i.dw = add nuw nsw i64 %i.do, 8
  %i.dx = mul i64 %7, %i.dw
  %i.dy = shl nuw nsw i64 %i.dn, 4
  %i.dz = add i64 %i.dq, %i.aj
  %i.ea = and i32 %i.e, 127
  %i.eb = zext nneg i32 %i.ea to i64              ; 6 uses
  %i.ec = add nuw nsw i64 %i.eb, 1
  %i.ed = add nuw nsw i64 %i.eb, 1
  %i.ee = getelementptr i8, ptr %i.ai, i64 %i.dq
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.do
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %min.iters.check174 = icmp samesign ult i32 %i.f, 3
  %n.vec176 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n183 = icmp eq i64 %n.vec176, %i.aa
  %xtraiter214 = and i64 %i.ec, 3                 ; 2 uses
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  %i.eh = getelementptr i8, ptr %i.ai, i64 %i.dx
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.dq
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.dy
  %i.ek = getelementptr i8, ptr %i.ej, i64 16
  %min.iters.check158 = icmp samesign ult i32 %i.f, 3
  %n.vec160 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n169 = icmp eq i64 %n.vec160, %i.aa
  %i.el = and i64 %i.eb, 1
  %lcmp.mod218.not.not = icmp eq i64 %i.el, 0
  %min.iters.check143 = icmp samesign ult i32 %i.f, 3
  %invariant.op226 = add i64 %i.dl, -1
  %n.vec145 = and i64 %i.aa, 252                  ; 3 uses
  %cmp.n152 = icmp eq i64 %n.vec145, %i.aa
  %xtraiter220 = and i64 %i.ed, 3                 ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br label %.preheader57.us

.preheader57.us:                                  ; preds = %.preheader57.us.preheader, %.loopexit55.us
  %indvar139 = phi i64 [ 0, %.preheader57.us.preheader ], [ %indvar.next140, %.loopexit55.us ] ; 4 uses
  %indvars.iv96 = phi i64 [ %i.dh, %.preheader57.us.preheader ], [ %indvars.iv.next97, %.loopexit55.us ] ; 3 uses
  %i.em = mul i64 %i.al, %indvar139               ; 2 uses
  %scevgep155 = getelementptr i8, ptr %i.eg, i64 %i.em
  %i.en = mul i64 %i.as, %indvar139
  %i.eo = mul i64 %i.al, %indvars.iv96
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.eo ; 7 uses
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %.preheader57.us
  %i.eq = mul i64 %i.al, %indvar139
  %i.er = add i64 %i.dz, %i.eq
  %i.es = sub i64 %i.a, %i.er
  %i.et = add i64 %i.es, 15
  %diff.check172 = icmp ult i64 %i.et, 31
  br i1 %diff.check172, label %scalar.ph173.preheader, label %vector.body177

vector.body177:                                   ; preds = %vector.memcheck171, %vector.body177
  %index178 = phi i64 [ %index.next181, %vector.body177 ], [ 0, %vector.memcheck171 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index178 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load179 = load <2 x double>, ptr %i.eu, align 8, !tbaa !76 ; 2 uses
  %wide.load180 = load <2 x double>, ptr %i.ev, align 8, !tbaa !76 ; 2 uses
  %i.ew = fmul <2 x double> %wide.load179, %wide.load179
  %i.ex = fmul <2 x double> %wide.load180, %wide.load180
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index178 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <2 x double> %i.ew, ptr %i.ey, align 8, !tbaa !76
  store <2 x double> %i.ex, ptr %i.ez, align 8, !tbaa !76
  %index.next181 = add nuw i64 %index178, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.fa, label %middle.block182, label %vector.body177, !llvm.loop !1678

middle.block182:                                  ; preds = %vector.body177
  br i1 %cmp.n183, label %.preheader.us.preheader, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %vector.memcheck171, %.preheader57.us, %middle.block182
  %indvars.iv78.ph = phi i64 [ 0, %vector.memcheck171 ], [ 0, %.preheader57.us ], [ %n.vec176, %middle.block182 ] ; 3 uses
  %i.fb = sub nsw i64 %i.eb, %indvars.iv78.ph
  br i1 %lcmp.mod215.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol

scalar.ph173.prol:                                ; preds = %scalar.ph173.preheader, %scalar.ph173.prol
  %indvars.iv78.prol = phi i64 [ %indvars.iv.next79.prol, %scalar.ph173.prol ], [ %indvars.iv78.ph, %scalar.ph173.preheader ] ; 3 uses
  %prol.iter216 = phi i64 [ %prol.iter216.next, %scalar.ph173.prol ], [ 0, %scalar.ph173.preheader ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv78.prol
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !76 ; 2 uses
  %i.fe = fmul double %i.fd, %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv78.prol
  store double %i.fe, ptr %i.ff, align 8, !tbaa !76
  %indvars.iv.next79.prol = add nuw nsw i64 %indvars.iv78.prol, 1 ; 2 uses
  %prol.iter216.next = add i64 %prol.iter216, 1   ; 2 uses
  %prol.iter216.cmp.not = icmp eq i64 %prol.iter216.next, %xtraiter214
  br i1 %prol.iter216.cmp.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol, !llvm.loop !1679

scalar.ph173.prol.loopexit:                       ; preds = %scalar.ph173.prol, %scalar.ph173.preheader
  %indvars.iv78.unr = phi i64 [ %indvars.iv78.ph, %scalar.ph173.preheader ], [ %indvars.iv.next79.prol, %scalar.ph173.prol ]
  %i.fg = icmp ult i64 %i.fb, 3
  br i1 %i.fg, label %.preheader.us.preheader, label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.3, %scalar.ph173 ], [ %indvars.iv78.unr, %scalar.ph173.prol.loopexit ] ; 6 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv78
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !76 ; 2 uses
  %i.fj = fmul double %i.fi, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv78
  store double %i.fj, ptr %i.fk, align 8, !tbaa !76
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next79
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !76 ; 2 uses
  %i.fn = fmul double %i.fm, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next79
  store double %i.fn, ptr %i.fo, align 8, !tbaa !76
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next79.1
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !76 ; 2 uses
  %i.fr = fmul double %i.fq, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next79.1
  store double %i.fr, ptr %i.fs, align 8, !tbaa !76
  %indvars.iv.next79.2 = add nuw nsw i64 %indvars.iv78, 3 ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next79.2
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !76 ; 2 uses
  %i.fv = fmul double %i.fu, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next79.2
  store double %i.fv, ptr %i.fw, align 8, !tbaa !76
  %indvars.iv.next79.3 = add nuw nsw i64 %indvars.iv78, 4 ; 2 uses
  %exitcond82.not.3 = icmp eq i64 %indvars.iv.next79.3, %i.aa
  br i1 %exitcond82.not.3, label %.preheader.us.preheader, label %scalar.ph173, !llvm.loop !1680

.preheader.us.preheader:                          ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173, %middle.block182
  %scevgep156 = getelementptr i8, ptr %i.ek, i64 %i.em
  %bound0 = icmp ult ptr %i.ab, %scevgep156
  %bound1 = icmp ult ptr %scevgep155, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

scalar.ph157:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %scalar.ph157 ], [ %indvars.iv83.unr, %scalar.ph157.prol.loopexit ] ; 4 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv83 ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !76
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv83
  %i.fz = load double, ptr %gep, align 8, !tbaa !76 ; 2 uses
  %i.ga = call noundef double @llvm.fmuladd.f64(double %i.fz, double %i.fz, double %i.fy)
  store double %i.ga, ptr %i.fx, align 8, !tbaa !76
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next84 ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !76
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next84
  %i.gd = load double, ptr %gep.1, align 8, !tbaa !76 ; 2 uses
  %i.ge = call noundef double @llvm.fmuladd.f64(double %i.gd, double %i.gd, double %i.gc)
  store double %i.ge, ptr %i.gb, align 8, !tbaa !76
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %exitcond87.not.1 = icmp eq i64 %indvars.iv.next84.1, %i.aa
  br i1 %exitcond87.not.1, label %.loopexit, label %scalar.ph157, !llvm.loop !1681

.loopexit:                                        ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157, %middle.block168
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, %i.aa ; 2 uses
  %i.gf = icmp samesign ult i64 %indvars.iv.next89, %i.dg
  br i1 %i.gf, label %.preheader.us, label %..preheader54_crit_edge.us.preheader, !llvm.loop !1682

..preheader54_crit_edge.us.preheader:             ; preds = %.loopexit
  %i.gg = mul i64 %i.as, %indvars.iv96
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.gg ; 6 uses
  %.reass227 = add i64 %i.en, %invariant.op226
  %diff.check141 = icmp ult i64 %.reass227, 31
  %or.cond = select i1 %min.iters.check143, i1 true, i1 %diff.check141
  br i1 %or.cond, label %..preheader54_crit_edge.us.preheader207, label %vector.body146

vector.body146:                                   ; preds = %..preheader54_crit_edge.us.preheader, %vector.body146
  %index147 = phi i64 [ %index.next150, %vector.body146 ], [ 0, %..preheader54_crit_edge.us.preheader ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index147 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load148 = load <2 x double>, ptr %i.gi, align 8, !tbaa !76
  %wide.load149 = load <2 x double>, ptr %i.gj, align 8, !tbaa !76
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %index147 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <2 x double> %wide.load148, ptr %i.gk, align 8, !tbaa !76
  store <2 x double> %wide.load149, ptr %i.gl, align 8, !tbaa !76
  %index.next150 = add nuw i64 %index147, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.gm, label %middle.block151, label %vector.body146, !llvm.loop !1683

middle.block151:                                  ; preds = %vector.body146
  br i1 %cmp.n152, label %.loopexit55.us, label %..preheader54_crit_edge.us.preheader207

..preheader54_crit_edge.us.preheader207:          ; preds = %..preheader54_crit_edge.us.preheader, %middle.block151
  %indvars.iv91.ph = phi i64 [ 0, %..preheader54_crit_edge.us.preheader ], [ %n.vec145, %middle.block151 ] ; 3 uses
  %i.gn = sub nsw i64 %i.eb, %indvars.iv91.ph
  br i1 %lcmp.mod221.not, label %..preheader54_crit_edge.us.prol.loopexit, label %..preheader54_crit_edge.us.prol

..preheader54_crit_edge.us.prol:                  ; preds = %..preheader54_crit_edge.us.preheader207, %..preheader54_crit_edge.us.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %..preheader54_crit_edge.us.prol ], [ %indvars.iv91.ph, %..preheader54_crit_edge.us.preheader207 ] ; 3 uses
  %prol.iter222 = phi i64 [ %prol.iter222.next, %..preheader54_crit_edge.us.prol ], [ 0, %..preheader54_crit_edge.us.preheader207 ]
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv91.prol
  %i.gp = load double, ptr %i.go, align 8, !tbaa !76
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv91.prol
  store double %i.gp, ptr %i.gq, align 8, !tbaa !76
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter222.next = add i64 %prol.iter222, 1   ; 2 uses
  %prol.iter222.cmp.not = icmp eq i64 %prol.iter222.next, %xtraiter220
  br i1 %prol.iter222.cmp.not, label %..preheader54_crit_edge.us.prol.loopexit, label %..preheader54_crit_edge.us.prol, !llvm.loop !1684

..preheader54_crit_edge.us.prol.loopexit:         ; preds = %..preheader54_crit_edge.us.prol, %..preheader54_crit_edge.us.preheader207
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %..preheader54_crit_edge.us.preheader207 ], [ %indvars.iv.next92.prol, %..preheader54_crit_edge.us.prol ]
  %i.gr = icmp ult i64 %i.gn, 3
  br i1 %i.gr, label %.loopexit55.us, label %..preheader54_crit_edge.us

..preheader54_crit_edge.us:                       ; preds = %..preheader54_crit_edge.us.prol.loopexit, %..preheader54_crit_edge.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %..preheader54_crit_edge.us ], [ %indvars.iv91.unr, %..preheader54_crit_edge.us.prol.loopexit ] ; 6 uses
end_hunk_17
