inline.NumInlined: 262
inline.NumDeleted: 134
begin_hunk_0_@_ZN2cv4usac15GammaValuesImplC2Eii:bb.a
  br label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit156

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit154

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit82
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = sitofp i32 %2 to double
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul nnan <2 x double> %i.w, <double 1.000000e+00, double 3.640000e+00>
  %i.y = fdiv <2 x double> %i.x, splat (double 2.500000e+00)
  store <2 x double> %i.y, ptr %i.t, align 8, !tbaa !41
  %i.z = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #12
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit92 unwind label %bb.g ; 5 uses

_ZNSt6vectorIdSaIdEED2Ev.exit92:                  ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 400 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.z, ptr noundef nonnull align 8 dereferenceable(400) @constinit.3, i64 400, i1 false)
  %i.ab = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #12
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit97 unwind label %bb.h ; 4 uses

_ZNSt6vectorIdSaIdEED2Ev.exit97:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 400 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.ab, ptr noundef nonnull align 8 dereferenceable(400) @constinit.4, i64 400, i1 false)
  %i.ad = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #12
          to label %_ZNSt6vectorIdSaIdEED2Ev.exit102 unwind label %bb.i ; 2 uses

_ZNSt6vectorIdSaIdEED2Ev.exit102:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit97
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.ad, ptr noundef nonnull align 8 dereferenceable(400) @constinit.5, i64 400, i1 false)
  br label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit156

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit92
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit154

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit97
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4usac15GammaValuesImplC2Eii, ptr noundef nonnull @.str.6, i32 noundef 113) #15
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit156

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit102, %_ZNSt6vectorIdSaIdEED2Ev.exit87
  %i.ao = phi double [ f0x3FFC5BF89176B569, %_ZNSt6vectorIdSaIdEED2Ev.exit87 ], [ f0x3FEC5BF89176B569, %_ZNSt6vectorIdSaIdEED2Ev.exit102 ]
  %i.ap = phi double [ f0x3FFC5BF89176B569, %_ZNSt6vectorIdSaIdEED2Ev.exit87 ], [ f0x3FEC5BF89425E745, %_ZNSt6vectorIdSaIdEED2Ev.exit102 ]
  %.sroa.0215.0 = phi ptr [ %i.p, %_ZNSt6vectorIdSaIdEED2Ev.exit87 ], [ %i.ad, %_ZNSt6vectorIdSaIdEED2Ev.exit102 ] ; 3 uses
  %.sroa.14231.0 = phi ptr [ %i.o, %_ZNSt6vectorIdSaIdEED2Ev.exit87 ], [ %i.ac, %_ZNSt6vectorIdSaIdEED2Ev.exit102 ] ; 2 uses
  %.sroa.0224.0 = phi ptr [ %i.n, %_ZNSt6vectorIdSaIdEED2Ev.exit87 ], [ %i.ab, %_ZNSt6vectorIdSaIdEED2Ev.exit102 ] ; 4 uses
  %.sroa.14242.0 = phi ptr [ %i.m, %_ZNSt6vectorIdSaIdEED2Ev.exit87 ], [ %i.aa, %_ZNSt6vectorIdSaIdEED2Ev.exit102 ] ; 2 uses
  %.sroa.0235.0 = phi ptr [ %i.l, %_ZNSt6vectorIdSaIdEED2Ev.exit87 ], [ %i.z, %_ZNSt6vectorIdSaIdEED2Ev.exit102 ] ; 4 uses
  %i.aq = sext i32 %2 to i64                      ; 9 uses
  %i.ar = icmp slt i32 %2, 0
  br i1 %i.ar, label %bb.p, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #15
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.o
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.as = shl nuw nsw i64 %i.aq, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #12
          to label %.noexc103 unwind label %bb.t  ; 8 uses

.noexc103:                                        ; preds = %bb.q
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aq
  store double 0.000000e+00, ptr %i.at, align 8, !tbaa !41
  %i.av = getelementptr i8, ptr %i.at, i64 8      ; 3 uses
  %i.aw = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc103
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aw, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.r

bb.r:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc103
  %.ph = phi ptr [ %i.av, %.noexc103 ], [ %i.ay, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.at, ptr %i.a, align 8, !tbaa !46
  store ptr %.ph, ptr %i.az, align 8, !tbaa !47
  store ptr %i.au, ptr %i.ba, align 8, !tbaa !48
  %i.bb = shl nuw nsw i64 %i.aq, 3
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #12
          to label %.noexc115 unwind label %bb.u  ; 8 uses

.noexc115:                                        ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.aq
  store double 0.000000e+00, ptr %i.bc, align 8, !tbaa !41
  %i.be = getelementptr i8, ptr %i.bc, i64 8      ; 3 uses
  %i.bf = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i110

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i110: ; preds = %.noexc115
  %.idx.i.i.i.i.i.i.i111 = shl nuw nsw i64 %i.bf, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %.idx.i.i.i.i.i.i.i111, i1 false), !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i111
  br label %bb.s

_ZNSt6vectorIdSaIdEED2Ev.exit133.thread:          ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  br label %.split.us

bb.s:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i110, %.noexc115
  %.ph378 = phi ptr [ %i.be, %.noexc115 ], [ %i.bh, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i110 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !46
  store ptr %.ph378, ptr %i.bi, align 8, !tbaa !47
  store ptr %i.bd, ptr %i.bj, align 8, !tbaa !48
  %i.bk = shl nuw nsw i64 %i.aq, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #12
          to label %.noexc128 unwind label %bb.v  ; 8 uses

.noexc128:                                        ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.aq
  store double 0.000000e+00, ptr %i.bl, align 8, !tbaa !41
  %i.bn = getelementptr i8, ptr %i.bl, i64 8      ; 3 uses
  %i.bo = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_ZNSt6vectorIdSaIdEED2Ev.exit133, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i123

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i123: ; preds = %.noexc128
  %.idx.i.i.i.i.i.i.i124 = shl nuw nsw i64 %i.bo, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 %.idx.i.i.i.i.i.i.i124, i1 false), !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i.i.i.i.i.i.i124
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit133

_ZNSt6vectorIdSaIdEED2Ev.exit133:                 ; preds = %.noexc128, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i123
  %i.br = phi ptr [ %i.bq, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i123 ], [ %i.bn, %.noexc128 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bl, ptr %i.c, align 8, !tbaa !46
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !47
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !48
  %i.bu = udiv i32 %2, 49                         ; 5 uses
  %i.bv = uitofp nneg i32 %i.bu to double         ; 2 uses
  %i.bw = icmp samesign ugt i32 %2, 48
  br i1 %i.bw, label %.lr.ph.us.preheader, label %.split.us

.lr.ph.us.preheader:                              ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit133
  %i.bx = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ap, i64 1
  %i.by = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = add nsw i32 %i.bu, -1                   ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.ca, 0
  %n.vec = and i64 %i.cc, 8589934590              ; 4 uses
  %i.cd = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %..loopexit_crit_edge.us
  %i.ce = phi double [ %i.cp, %..loopexit_crit_edge.us ], [ %i.ao, %.lr.ph.us.preheader ] ; 3 uses
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %..loopexit_crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %..loopexit_crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %i.cf = phi <2 x double> [ %i.cl, %..loopexit_crit_edge.us ], [ %i.bx, %.lr.ph.us.preheader ] ; 4 uses
  %5 = sext i32 %indvars.iv to i64                ; 3 uses
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 5 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0, i64 %indvars.iv.next360
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0224.0, i64 %indvars.iv.next360
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !41
  %i.ck = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.ch, i64 1 ; 2 uses
  %i.cm = fsub <2 x double> %i.cl, %i.cf
  %i.cn = fdiv <2 x double> %i.cm, %i.bz          ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0, i64 %indvars.iv.next360
  %i.cp = load double, ptr %i.co, align 8, !tbaa !41 ; 2 uses
  %i.cq = fsub double %i.cp, %i.ce
  %i.cr = fdiv double %i.cq, %i.bv                ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %i.cs = add nsw i64 %n.vec, %5
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat382 = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat384 = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat386 = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat388 = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert389 = insertelement <2 x double> poison, double %i.cr, i64 0
  %broadcast.splat390 = shufflevector <2 x double> %broadcast.splatinsert389, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ct = add i64 %index, %5                      ; 3 uses
  %i.cu = uitofp nneg <2 x i32> %vec.ind to <2 x double> ; 3 uses
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat386, <2 x double> %broadcast.splat384)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ct
  store <2 x double> %i.cv, ptr %i.cw, align 8, !tbaa !41
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat388, <2 x double> %broadcast.splat382)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ct
  store <2 x double> %i.cx, ptr %i.cy, align 8, !tbaa !41
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat390, <2 x double> %broadcast.splat)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ct
  store <2 x double> %i.cz, ptr %i.da, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ %5, %.lr.ph.us ], [ %i.cs, %middle.block ]
  %.068353.us.ph = phi i32 [ 0, %.lr.ph.us ], [ %i.cd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.068353.us = phi i32 [ %i.dm, %scalar.ph ], [ %.068353.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = uitofp nneg i32 %.068353.us to double   ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.a
  %i.de = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cn, <2 x double> %i.cf) ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 1
  store double %i.dh, ptr %i.dd, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.a
  %i.dj = extractelement <2 x double> %i.dg, i64 0
  store double %i.dj, ptr %i.di, align 8, !tbaa !41
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.cr, double %i.ce)
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.a
  store double %i.dk, ptr %i.dl, align 8, !tbaa !41
  %i.dm = add nuw nsw i32 %.068353.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.dm, %i.bu
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !53

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i32 %indvars.iv, %i.bu
  %exitcond362.not = icmp eq i64 %indvars.iv.next360, 49
  br i1 %exitcond362.not, label %.split.us.loopexit, label %.lr.ph.us, !llvm.loop !54

.split.us.loopexit:                               ; preds = %..loopexit_crit_edge.us
  %6 = mul nuw nsw i32 %i.bu, 49
  br label %.split.us

.split.us:                                        ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit133, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread, %.split.us.loopexit
  %i.dn = phi ptr [ %i.br, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %i.br, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.do = phi ptr [ %i.bl, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %i.bl, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.dp = phi ptr [ %.ph, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.dq = phi ptr [ %i.at, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %i.at, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.dr = phi ptr [ %i.bc, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %i.bc, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.ds = phi ptr [ %.ph378, %.split.us.loopexit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ %.ph378, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %.us-phi = phi i32 [ %6, %.split.us.loopexit ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit133.thread ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit133 ] ; 3 uses
  %i.dt = icmp slt i32 %.us-phi, %2
  br i1 %i.dt, label %bb.w, label %_ZNSt6vectorIdSaIdEED2Ev.exit150

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314

bb.u:                                             ; preds = %bb.r
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314

bb.v:                                             ; preds = %bb.s
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314

bb.w:                                             ; preds = %.split.us
  %7 = zext nneg i32 %.us-phi to i64              ; 6 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %7 ; 4 uses
  %i.dy = add nsw i32 %.us-phi, -1
  %i.dz = sext i32 %i.dy to i64                   ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !41 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dx, %i.dp
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.w
  %i.ec = ptrtoaddr ptr %i.dp to i64
  %i.ed = ptrtoaddr ptr %i.dq to i64
  %i.ee = add i64 %i.ec, -8
  %i.ef = shl nuw nsw i64 %7, 3
  %i.eg = add i64 %i.ef, %i.ed
  %i.eh = sub i64 %i.ee, %i.eg                    ; 2 uses
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.eh, 24
  br i1 %min.iters.check393, label %.lr.ph.i.i.i.i.preheader432, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec395 = and i64 %i.ej, 4611686018427387900  ; 3 uses
  %i.ek = shl i64 %n.vec395, 3
  %i.el = getelementptr i8, ptr %i.dx, i64 %i.ek
  %broadcast.splatinsert396 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat397 = shufflevector <2 x double> %broadcast.splatinsert396, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph394
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next400, %vector.body398 ] ; 2 uses
  %i.em = shl i64 %index399, 3
  %next.gep = getelementptr i8, ptr %i.dx, i64 %i.em ; 2 uses
  %i.en = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat397, ptr %next.gep, align 8, !tbaa !41
  store <2 x double> %broadcast.splat397, ptr %i.en, align 8, !tbaa !41
  %index.next400 = add nuw i64 %index399, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next400, %n.vec395
  br i1 %i.eo, label %middle.block401, label %vector.body398, !llvm.loop !55

middle.block401:                                  ; preds = %vector.body398
  %cmp.n402 = icmp eq i64 %i.ej, %n.vec395
  br i1 %cmp.n402, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader432

.lr.ph.i.i.i.i.preheader432:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block401
  %.07.i.i.i.i.ph = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.preheader ], [ %i.el, %middle.block401 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader432, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader432 ] ; 2 uses
  store double %i.eb, ptr %.07.i.i.i.i, align 8, !tbaa !41
  %i.ep = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.ep, %i.dp
  br i1 %.not.i.i.i.i134, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block401, %bb.w
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %7 ; 4 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dz
  %i.es = load double, ptr %i.er, align 8, !tbaa !41 ; 2 uses
  %.not6.i.i.i.i135 = icmp eq ptr %i.eq, %i.ds
  br i1 %.not6.i.i.i.i135, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139, label %.lr.ph.i.i.i.i136.preheader

.lr.ph.i.i.i.i136.preheader:                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit
  %i.et = ptrtoaddr ptr %i.ds to i64
  %i.eu = ptrtoaddr ptr %i.dr to i64
  %i.ev = add i64 %i.et, -8
  %i.ew = shl nuw nsw i64 %7, 3
  %i.ex = add i64 %i.ew, %i.eu
  %i.ey = sub i64 %i.ev, %i.ex                    ; 2 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check405 = icmp ult i64 %i.ey, 24
  br i1 %min.iters.check405, label %.lr.ph.i.i.i.i136.preheader431, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph.i.i.i.i136.preheader
  %n.vec407 = and i64 %i.fa, 4611686018427387900  ; 3 uses
  %i.fb = shl i64 %n.vec407, 3
  %i.fc = getelementptr i8, ptr %i.eq, i64 %i.fb
  %broadcast.splatinsert408 = insertelement <2 x double> poison, double %i.es, i64 0
  %broadcast.splat409 = shufflevector <2 x double> %broadcast.splatinsert408, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph406
  %index411 = phi i64 [ 0, %vector.ph406 ], [ %index.next413, %vector.body410 ] ; 2 uses
  %i.fd = shl i64 %index411, 3
  %next.gep412 = getelementptr i8, ptr %i.eq, i64 %i.fd ; 2 uses
  %i.fe = getelementptr i8, ptr %next.gep412, i64 16
  store <2 x double> %broadcast.splat409, ptr %next.gep412, align 8, !tbaa !41
  store <2 x double> %broadcast.splat409, ptr %i.fe, align 8, !tbaa !41
  %index.next413 = add nuw i64 %index411, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next413, %n.vec407
  br i1 %i.ff, label %middle.block414, label %vector.body410, !llvm.loop !57

middle.block414:                                  ; preds = %vector.body410
  %cmp.n415 = icmp eq i64 %i.fa, %n.vec407
  br i1 %cmp.n415, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139, label %.lr.ph.i.i.i.i136.preheader431

.lr.ph.i.i.i.i136.preheader431:                   ; preds = %.lr.ph.i.i.i.i136.preheader, %middle.block414
  %.07.i.i.i.i137.ph = phi ptr [ %i.eq, %.lr.ph.i.i.i.i136.preheader ], [ %i.fc, %middle.block414 ]
  br label %.lr.ph.i.i.i.i136

.lr.ph.i.i.i.i136:                                ; preds = %.lr.ph.i.i.i.i136.preheader431, %.lr.ph.i.i.i.i136
  %.07.i.i.i.i137 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i136 ], [ %.07.i.i.i.i137.ph, %.lr.ph.i.i.i.i136.preheader431 ] ; 2 uses
  store double %i.es, ptr %.07.i.i.i.i137, align 8, !tbaa !41
  %i.fg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i137, i64 8 ; 2 uses
  %.not.i.i.i.i138 = icmp eq ptr %i.fg, %i.ds
  br i1 %.not.i.i.i.i138, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139, label %.lr.ph.i.i.i.i136, !llvm.loop !58

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139: ; preds = %.lr.ph.i.i.i.i136, %middle.block414, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %7 ; 4 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dz
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !41 ; 2 uses
  %.not6.i.i.i.i140 = icmp eq ptr %i.fh, %i.dn
  br i1 %.not6.i.i.i.i140, label %_ZNSt6vectorIdSaIdEED2Ev.exit150, label %.lr.ph.i.i.i.i141.preheader

.lr.ph.i.i.i.i141.preheader:                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139
  %i.fk = ptrtoaddr ptr %i.dn to i64
  %i.fl = ptrtoaddr ptr %i.do to i64
  %i.fm = add i64 %i.fk, -8
  %i.fn = shl nuw nsw i64 %7, 3
  %i.fo = add i64 %i.fn, %i.fl
  %i.fp = sub i64 %i.fm, %i.fo                    ; 2 uses
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %i.fp, 24
  br i1 %min.iters.check418, label %.lr.ph.i.i.i.i141.preheader430, label %vector.ph419

vector.ph419:                                     ; preds = %.lr.ph.i.i.i.i141.preheader
  %n.vec420 = and i64 %i.fr, 4611686018427387900  ; 3 uses
  %i.fs = shl i64 %n.vec420, 3
  %i.ft = getelementptr i8, ptr %i.fh, i64 %i.fs
  %broadcast.splatinsert421 = insertelement <2 x double> poison, double %i.fj, i64 0
  %broadcast.splat422 = shufflevector <2 x double> %broadcast.splatinsert421, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph419
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next426, %vector.body423 ] ; 2 uses
  %i.fu = shl i64 %index424, 3
  %next.gep425 = getelementptr i8, ptr %i.fh, i64 %i.fu ; 2 uses
  %i.fv = getelementptr i8, ptr %next.gep425, i64 16
  store <2 x double> %broadcast.splat422, ptr %next.gep425, align 8, !tbaa !41
  store <2 x double> %broadcast.splat422, ptr %i.fv, align 8, !tbaa !41
  %index.next426 = add nuw i64 %index424, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next426, %n.vec420
  br i1 %i.fw, label %middle.block427, label %vector.body423, !llvm.loop !59

middle.block427:                                  ; preds = %vector.body423
  %cmp.n428 = icmp eq i64 %i.fr, %n.vec420
  br i1 %cmp.n428, label %_ZNSt6vectorIdSaIdEED2Ev.exit150, label %.lr.ph.i.i.i.i141.preheader430

.lr.ph.i.i.i.i141.preheader430:                   ; preds = %.lr.ph.i.i.i.i141.preheader, %middle.block427
  %.07.i.i.i.i142.ph = phi ptr [ %i.fh, %.lr.ph.i.i.i.i141.preheader ], [ %i.ft, %middle.block427 ]
  br label %.lr.ph.i.i.i.i141

.lr.ph.i.i.i.i141:                                ; preds = %.lr.ph.i.i.i.i141.preheader430, %.lr.ph.i.i.i.i141
  %.07.i.i.i.i142 = phi ptr [ %i.fx, %.lr.ph.i.i.i.i141 ], [ %.07.i.i.i.i142.ph, %.lr.ph.i.i.i.i141.preheader430 ] ; 2 uses
  store double %i.fj, ptr %.07.i.i.i.i142, align 8, !tbaa !41
  %i.fx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i142, i64 8 ; 2 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.fx, %i.dn
  br i1 %.not.i.i.i.i143, label %_ZNSt6vectorIdSaIdEED2Ev.exit150, label %.lr.ph.i.i.i.i141, !llvm.loop !60

_ZNSt6vectorIdSaIdEED2Ev.exit150:                 ; preds = %.lr.ph.i.i.i.i141, %middle.block427, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_.exit139, %.split.us
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.0, i64 noundef 400) #13
  %i.fy = ptrtoint ptr %.sroa.14231.0 to i64
  %i.fz = ptrtoint ptr %.sroa.0224.0 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0224.0, i64 noundef %i.ga) #13
  %i.gb = ptrtoint ptr %.sroa.14242.0 to i64
  %i.gc = ptrtoint ptr %.sroa.0235.0 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0235.0, i64 noundef %i.gd) #13
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314:       ; preds = %bb.v, %bb.t, %bb.u
  %.pn75.pn276.ph = phi { ptr, i32 } [ %i.dv, %bb.u ], [ %i.du, %bb.t ], [ %i.dw, %bb.v ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.0, i64 noundef 400) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread

_ZNSt6vectorIdSaIdEED2Ev.exit154.thread:          ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314, %bb.i, %bb.e
  %.sroa.14231.1254312 = phi ptr [ %.sroa.14231.0, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.o, %bb.e ], [ %i.ac, %bb.i ]
  %.sroa.0224.1255311 = phi ptr [ %.sroa.0224.0, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.n, %bb.e ], [ %i.ab, %bb.i ] ; 2 uses
  %.sroa.14242.1256310 = phi ptr [ %.sroa.14242.0, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.m, %bb.e ], [ %i.aa, %bb.i ]
  %.sroa.0235.1257309 = phi ptr [ %.sroa.0235.0, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.l, %bb.e ], [ %i.z, %bb.i ]
  %.pn75.pn258308 = phi { ptr, i32 } [ %.pn75.pn276.ph, %_ZNSt6vectorIdSaIdEED2Ev.exit152.thread314 ], [ %i.s, %bb.e ], [ %i.ag, %bb.i ]
  %i.ge = ptrtoint ptr %.sroa.14231.1254312 to i64
  %i.gf = ptrtoint ptr %.sroa.0224.1255311 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0224.1255311, i64 noundef %i.gg) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit154

_ZNSt6vectorIdSaIdEED2Ev.exit154:                 ; preds = %bb.d, %bb.h, %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread
  %.pn75.pn258294340 = phi { ptr, i32 } [ %.pn75.pn258308, %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread ], [ %i.af, %bb.h ], [ %i.r, %bb.d ]
  %.sroa.0235.1257295339 = phi ptr [ %.sroa.0235.1257309, %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread ], [ %i.z, %bb.h ], [ %i.l, %bb.d ] ; 2 uses
  %.sroa.14242.1256296338 = phi ptr [ %.sroa.14242.1256310, %_ZNSt6vectorIdSaIdEED2Ev.exit154.thread ], [ %i.aa, %bb.h ], [ %i.m, %bb.d ]
  %i.gh = ptrtoint ptr %.sroa.14242.1256296338 to i64
  %i.gi = ptrtoint ptr %.sroa.0235.1257295339 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0235.1257295339, i64 noundef %i.gj) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit156

_ZNSt6vectorIdSaIdEED2Ev.exit156:                 ; preds = %bb.g, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIdSaIdEED2Ev.exit154
  %.pn75.pn258294341 = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %.pn75.pn258294340, %_ZNSt6vectorIdSaIdEED2Ev.exit154 ], [ %i.q, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.gk = load ptr, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %.not.i.i.i157 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIdSaIdEED2Ev.exit158, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit156
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !48
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit158

_ZNSt6vectorIdSaIdEED2Ev.exit158:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit156, %bb.x
  %i.gq = load ptr, ptr %i.b, align 8, !tbaa !46  ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIdSaIdEED2Ev.exit160, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit158
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !48
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gv) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit160

_ZNSt6vectorIdSaIdEED2Ev.exit160:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit158, %bb.y
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %.not.i.i.i161 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i161, label %_ZNSt6vectorIdSaIdEED2Ev.exit162, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit160
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !48
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hb) #13
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit162

_ZNSt6vectorIdSaIdEED2Ev.exit162:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit160, %bb.z
  call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %.pn75.pn258294341
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !61
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !42
  %i.g = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.g, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.i, ptr %i.h, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !63
  %i.l = load ptr, ptr %0, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac15GammaValuesImplD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN2cv4usac15GammaValuesImplE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
end_hunk_0
