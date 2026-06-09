inline.NumInlined: 482
inline.NumDeleted: 180
begin_hunk_0_@_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method:bb.a
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit191

_ZNSt6vectorIdSaIdEE5clearEv.exit191:             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit188, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i190
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !92 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !91
  %.not.i.i192 = icmp eq ptr %i.fr, %i.fp
  br i1 %.not.i.i192, label %_ZNSt6vectorIdSaIdEE5clearEv.exit194, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i193

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i193:     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit191
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !91
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit194

_ZNSt6vectorIdSaIdEE5clearEv.exit194:             ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i193, %_ZNSt6vectorIdSaIdEE5clearEv.exit191, %._crit_edge513
  %i.fs = load i32, ptr %i.d, align 4, !tbaa !79
  %.not167 = icmp eq i32 %i.fs, 0
  br i1 %.not167, label %bb.r, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit194
  %i.ft = mul nuw nsw i64 %i.bw, 12
  %i.fu = call noalias ptr @malloc(i64 noundef %i.ft) #20 ; 6 uses
  %i.fv = ptrtoaddr ptr %i.fu to i64
  %i.fw = trunc nuw i64 %i.bw to i32
  invoke void @hsfc2sort(i32 noundef %i.fw, ptr noundef nonnull %.sroa.0343.4378, ptr noundef nonnull %.sroa.0333.4, i32 noundef 0, ptr noundef %i.fu, i32 noundef 1)
          to label %.preheader472 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread831

_ZNSt6vectorIiSaIiEED2Ev.exit204.thread831:       ; preds = %bb.r
  %lpad.thr_comm.split-lp840 = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.preheader472:                                    ; preds = %bb.r
  %i.fx = load i64, ptr %i.b, align 8, !tbaa !8   ; 9 uses
  %.not542 = icmp eq i64 %i.fx, 0
  br i1 %.not542, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %.lr.ph516

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %.preheader472
  call void @free(ptr noundef %i.fu) #16
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

.lr.ph516:                                        ; preds = %.preheader472
  %i.fy = load ptr, ptr %2, align 8, !tbaa !81    ; 3 uses
  %min.iters.check1001 = icmp ult i64 %i.fx, 20
  br i1 %min.iters.check1001, label %scalar.ph1000.preheader, label %vector.scevcheck997

vector.scevcheck997:                              ; preds = %.lr.ph516
  %i.fz = ptrtoaddr ptr %i.fy to i64
  %i.ga = add i64 %i.fx, -1                       ; 2 uses
  %i.gb = and i64 %i.ga, 4294967295
  %i.gc = icmp eq i64 %i.gb, 4294967295
  %i.gd = icmp ugt i64 %i.ga, 4294967295
  %i.ge = or i1 %i.gc, %i.gd
  %i.gf = sub i64 %i.fz, %i.fv
  %diff.check999 = icmp ult i64 %i.gf, 32
  %or.cond = select i1 %i.ge, i1 true, i1 %diff.check999
  br i1 %or.cond, label %scalar.ph1000.preheader, label %vector.ph1002

vector.ph1002:                                    ; preds = %vector.scevcheck997
  %n.vec1004 = and i64 %i.fx, 8589934584          ; 4 uses
  %i.gg = trunc i64 %n.vec1004 to i32
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %vector.ph1002
  %index1006 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1009, %vector.body1005 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %index1006 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %wide.load1007 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !4
  %wide.load1008 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !4
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %index1006 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <4 x i32> %wide.load1007, ptr %i.gj, align 4, !tbaa !4
  store <4 x i32> %wide.load1008, ptr %i.gk, align 4, !tbaa !4
  %index.next1009 = add nuw i64 %index1006, 8     ; 2 uses
  %i.gl = icmp eq i64 %index.next1009, %n.vec1004
  br i1 %i.gl, label %middle.block1010, label %vector.body1005, !llvm.loop !99

middle.block1010:                                 ; preds = %vector.body1005
  %cmp.n1011 = icmp eq i64 %i.fx, %n.vec1004
  br i1 %cmp.n1011, label %.loopexit, label %scalar.ph1000.preheader

scalar.ph1000.preheader:                          ; preds = %vector.scevcheck997, %.lr.ph516, %middle.block1010
  %.ph1102 = phi i64 [ 0, %vector.scevcheck997 ], [ 0, %.lr.ph516 ], [ %n.vec1004, %middle.block1010 ]
  %.0140515.ph = phi i32 [ 0, %vector.scevcheck997 ], [ 0, %.lr.ph516 ], [ %i.gg, %middle.block1010 ]
  br label %scalar.ph1000

.loopexit:                                        ; preds = %scalar.ph1000, %middle.block1010
  call void @free(ptr noundef nonnull %i.fu) #16
  %i.gm = shl nuw nsw i64 %i.fx, 2
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #17
          to label %.noexc196 unwind label %bb.ab ; 5 uses

.noexc196:                                        ; preds = %.loopexit
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.fx ; 2 uses
  store i32 0, ptr %i.gn, align 4, !tbaa !4
  %i.gp = add nsw i64 %i.fx, -1                   ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc196
  %i.gr = getelementptr i8, ptr %i.gn, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

scalar.ph1000:                                    ; preds = %scalar.ph1000.preheader, %scalar.ph1000
  %i.gs = phi i64 [ %i.gx, %scalar.ph1000 ], [ %.ph1102, %scalar.ph1000.preheader ] ; 2 uses
  %.0140515 = phi i32 [ %i.gw, %scalar.ph1000 ], [ %.0140515.ph, %scalar.ph1000.preheader ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gs
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !4
  %i.gw = add i32 %.0140515, 1                    ; 2 uses
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = icmp ugt i64 %i.fx, %i.gx
  br i1 %i.gy, label %scalar.ph1000, label %.loopexit, !llvm.loop !100

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc196
  %.sroa.0328.0 = phi ptr [ %i.gn, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.gn, %.noexc196 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ] ; 5 uses
  %.sroa.9331.0 = phi ptr [ %i.go, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.go, %.noexc196 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !53
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.gz, ptr noundef %i.hb, i32 noundef 256)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !59
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.gz, ptr noundef %i.hd, i32 noundef 256)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !60
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.gz, ptr noundef %i.hf, i32 noundef 256)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !58
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.gz, ptr noundef %i.hh, i32 noundef 256)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.hi = load ptr, ptr %2, align 8, !tbaa !81
  invoke void @_ZN10MallocPlus18memory_reorder_allEPi(ptr noundef nonnull align 8 dereferenceable(96) %i.gz, ptr noundef nonnull %i.hi)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4Mesh17memory_reset_ptrsEv(ptr noundef nonnull align 8 dereferenceable(2288) %0)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.hj = load ptr, ptr %i.bn, align 8, !tbaa !91
  %i.hk = load ptr, ptr %i.bm, align 8, !tbaa !92 ; 12 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 3
  %i.hp = load i64, ptr %i.b, align 8, !tbaa !8   ; 27 uses
  %.not168 = icmp ult i64 %i.ho, %i.hp
  br i1 %.not168, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hq = icmp ugt i64 %i.hp, 1152921504606846975
  br i1 %i.hq, label %bb.z, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc200 unwind label %bb.ad

.noexc200:                                        ; preds = %bb.z
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.y
  %.not.i.i.i.i197 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i.i197, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hr = shl nuw nsw i64 %i.hp, 3
  %i.hs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #17
          to label %.noexc201 unwind label %bb.ad ; 48 uses

.noexc201:                                        ; preds = %bb.aa
  %i.ht = ptrtoaddr ptr %i.hs to i64              ; 4 uses
  store double 0.000000e+00, ptr %i.hs, align 8, !tbaa !64
  %i.hu = add nsw i64 %i.hp, -1                   ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %.lr.ph519.preheader, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %.noexc201
  %i.hw = getelementptr i8, ptr %i.hs, i64 8
  %.idx.i.i.i.i.i.i.i198 = shl nuw nsw i64 %i.hu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hw, i8 0, i64 %.idx.i.i.i.i.i.i.i198, i1 false), !tbaa !64
  %i.hx = trunc i64 %i.hp to i32
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph519.preheader, label %.preheader471.thread

.lr.ph519.preheader:                              ; preds = %.noexc201, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %wide.trip.count583 = and i64 %i.hp, 2147483647 ; 14 uses
  %min.iters.check1017 = icmp samesign ult i64 %wide.trip.count583, 6
  %i.hz = sub i64 %i.ht, %i.hm
  %diff.check1015 = icmp ult i64 %i.hz, 32
  %or.cond1087 = or i1 %min.iters.check1017, %diff.check1015
  br i1 %or.cond1087, label %.lr.ph519.preheader1101, label %vector.ph1018

vector.ph1018:                                    ; preds = %.lr.ph519.preheader
  %n.vec1020 = and i64 %i.hp, 2147483644          ; 3 uses
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %vector.ph1018
  %index1022 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1025, %vector.body1021 ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %index1022 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %wide.load1023 = load <2 x double>, ptr %i.ia, align 8, !tbaa !64
  %wide.load1024 = load <2 x double>, ptr %i.ib, align 8, !tbaa !64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index1022 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store <2 x double> %wide.load1023, ptr %i.ic, align 8, !tbaa !64
  store <2 x double> %wide.load1024, ptr %i.id, align 8, !tbaa !64
  %index.next1025 = add nuw i64 %index1022, 4     ; 2 uses
  %i.ie = icmp eq i64 %index.next1025, %n.vec1020
  br i1 %i.ie, label %middle.block1026, label %vector.body1021, !llvm.loop !101

middle.block1026:                                 ; preds = %vector.body1021
  %cmp.n1027 = icmp eq i64 %wide.trip.count583, %n.vec1020
  br i1 %cmp.n1027, label %.lr.ph522, label %.lr.ph519.preheader1101

.lr.ph519.preheader1101:                          ; preds = %.lr.ph519.preheader, %middle.block1026
  %indvars.iv580.ph = phi i64 [ 0, %.lr.ph519.preheader ], [ %n.vec1020, %middle.block1026 ] ; 3 uses
  %xtraiter1145 = and i64 %i.hp, 3                ; 2 uses
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  br i1 %lcmp.mod1146.not, label %.lr.ph519.prol.loopexit, label %.lr.ph519.prol

.lr.ph519.prol:                                   ; preds = %.lr.ph519.preheader1101, %.lr.ph519.prol
  %indvars.iv580.prol = phi i64 [ %indvars.iv.next581.prol, %.lr.ph519.prol ], [ %indvars.iv580.ph, %.lr.ph519.preheader1101 ] ; 3 uses
  %prol.iter1147 = phi i64 [ %prol.iter1147.next, %.lr.ph519.prol ], [ 0, %.lr.ph519.preheader1101 ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv580.prol
  %i.ig = load double, ptr %i.if, align 8, !tbaa !64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv580.prol
  store double %i.ig, ptr %i.ih, align 8, !tbaa !64
  %indvars.iv.next581.prol = add nuw nsw i64 %indvars.iv580.prol, 1 ; 2 uses
  %prol.iter1147.next = add i64 %prol.iter1147, 1 ; 2 uses
  %prol.iter1147.cmp.not = icmp eq i64 %prol.iter1147.next, %xtraiter1145
  br i1 %prol.iter1147.cmp.not, label %.lr.ph519.prol.loopexit, label %.lr.ph519.prol, !llvm.loop !102

.lr.ph519.prol.loopexit:                          ; preds = %.lr.ph519.prol, %.lr.ph519.preheader1101
  %indvars.iv580.unr = phi i64 [ %indvars.iv580.ph, %.lr.ph519.preheader1101 ], [ %indvars.iv.next581.prol, %.lr.ph519.prol ]
  %i.ii = sub nsw i64 %indvars.iv580.ph, %wide.trip.count583
  %i.ij = icmp ugt i64 %i.ii, -4
  br i1 %i.ij, label %.lr.ph522, label %.lr.ph519

.lr.ph522:                                        ; preds = %.lr.ph519.prol.loopexit, %.lr.ph519, %middle.block1026
  %i.ik = load ptr, ptr %2, align 8, !tbaa !81    ; 5 uses
  %i.il = add nsw i64 %wide.trip.count583, -1     ; 4 uses
  %xtraiter1149 = and i64 %i.hp, 3                ; 3 uses
  %i.im = icmp ult i64 %i.il, 3
  br i1 %i.im, label %.epil.preheader1148, label %.lr.ph522.new

.lr.ph522.new:                                    ; preds = %.lr.ph522
  %unroll_iter1153 = and i64 %i.hp, 2147483644
  br label %bb.af

bb.ab:                                            ; preds = %.loopexit
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ac:                                            ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph519:                                        ; preds = %.lr.ph519.prol.loopexit, %.lr.ph519
  %indvars.iv580 = phi i64 [ %indvars.iv.next581.3, %.lr.ph519 ], [ %indvars.iv580.unr, %.lr.ph519.prol.loopexit ] ; 6 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv580
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv580
  store double %i.ir, ptr %i.is, align 8, !tbaa !64
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.next581
  %i.iu = load double, ptr %i.it, align 8, !tbaa !64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next581
  store double %i.iu, ptr %i.iv, align 8, !tbaa !64
  %indvars.iv.next581.1 = add nuw nsw i64 %indvars.iv580, 2 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.next581.1
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next581.1
  store double %i.ix, ptr %i.iy, align 8, !tbaa !64
  %indvars.iv.next581.2 = add nuw nsw i64 %indvars.iv580, 3 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.next581.2
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next581.2
  store double %i.ja, ptr %i.jb, align 8, !tbaa !64
  %indvars.iv.next581.3 = add nuw nsw i64 %indvars.iv580, 4 ; 2 uses
  %exitcond584.not.3 = icmp eq i64 %indvars.iv.next581.3, %wide.trip.count583
  br i1 %exitcond584.not.3, label %.lr.ph522, label %.lr.ph519, !llvm.loop !104

.lr.ph524.unr-lcssa:                              ; preds = %bb.af
  %lcmp.mod1151.not = icmp eq i64 %xtraiter1149, 0
  br i1 %lcmp.mod1151.not, label %.lr.ph524, label %.epil.preheader1148

.epil.preheader1148:                              ; preds = %.lr.ph524.unr-lcssa, %.lr.ph522
  %indvars.iv585.epil.init = phi i64 [ 0, %.lr.ph522 ], [ %indvars.iv.next586.3, %.lr.ph524.unr-lcssa ]
  %lcmp.mod1152 = icmp ne i64 %xtraiter1149, 0
  call void @llvm.assume(i1 %lcmp.mod1152)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader1148
  %indvars.iv585.epil = phi i64 [ %indvars.iv585.epil.init, %.epil.preheader1148 ], [ %indvars.iv.next586.epil, %bb.ae ] ; 3 uses
  %epil.iter1150 = phi i64 [ 0, %.epil.preheader1148 ], [ %epil.iter1150.next, %bb.ae ]
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv585.epil
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !4
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.je
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv585.epil
  store double %i.jg, ptr %i.jh, align 8, !tbaa !64
  %indvars.iv.next586.epil = add nuw nsw i64 %indvars.iv585.epil, 1
  %epil.iter1150.next = add i64 %epil.iter1150, 1 ; 2 uses
  %epil.iter1150.cmp.not = icmp eq i64 %epil.iter1150.next, %xtraiter1149
  br i1 %epil.iter1150.cmp.not, label %.lr.ph524, label %bb.ae, !llvm.loop !105

.lr.ph524:                                        ; preds = %bb.ae, %.lr.ph524.unr-lcssa
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !92 ; 7 uses
  %wide.trip.count593 = and i64 %i.hp, 2147483647
  %min.iters.check1032 = icmp samesign ult i64 %wide.trip.count583, 6
  %i.jk = ptrtoaddr ptr %i.jj to i64
  %i.jl = sub i64 %i.ht, %i.jk
  %diff.check1030 = icmp ult i64 %i.jl, 32
  %or.cond1089 = select i1 %min.iters.check1032, i1 true, i1 %diff.check1030
  br i1 %or.cond1089, label %scalar.ph1031.preheader, label %vector.ph1033

vector.ph1033:                                    ; preds = %.lr.ph524
  %n.vec1035 = and i64 %i.hp, 2147483644          ; 3 uses
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1033
  %index1037 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1040, %vector.body1036 ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %index1037 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load1038 = load <2 x double>, ptr %i.jm, align 8, !tbaa !64
  %wide.load1039 = load <2 x double>, ptr %i.jn, align 8, !tbaa !64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index1037 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store <2 x double> %wide.load1038, ptr %i.jo, align 8, !tbaa !64
  store <2 x double> %wide.load1039, ptr %i.jp, align 8, !tbaa !64
  %index.next1040 = add nuw i64 %index1037, 4     ; 2 uses
  %i.jq = icmp eq i64 %index.next1040, %n.vec1035
  br i1 %i.jq, label %middle.block1041, label %vector.body1036, !llvm.loop !106

middle.block1041:                                 ; preds = %vector.body1036
  %cmp.n1042 = icmp eq i64 %wide.trip.count583, %n.vec1035
  br i1 %cmp.n1042, label %.lr.ph526, label %scalar.ph1031.preheader

scalar.ph1031.preheader:                          ; preds = %.lr.ph524, %middle.block1041
  %indvars.iv590.ph = phi i64 [ 0, %.lr.ph524 ], [ %n.vec1035, %middle.block1041 ] ; 3 uses
  %xtraiter1155 = and i64 %i.hp, 3                ; 2 uses
  %lcmp.mod1156.not = icmp eq i64 %xtraiter1155, 0
  br i1 %lcmp.mod1156.not, label %scalar.ph1031.prol.loopexit, label %scalar.ph1031.prol

scalar.ph1031.prol:                               ; preds = %scalar.ph1031.preheader, %scalar.ph1031.prol
  %indvars.iv590.prol = phi i64 [ %indvars.iv.next591.prol, %scalar.ph1031.prol ], [ %indvars.iv590.ph, %scalar.ph1031.preheader ] ; 3 uses
  %prol.iter1157 = phi i64 [ %prol.iter1157.next, %scalar.ph1031.prol ], [ 0, %scalar.ph1031.preheader ]
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv590.prol
  %i.js = load double, ptr %i.jr, align 8, !tbaa !64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv590.prol
  store double %i.js, ptr %i.jt, align 8, !tbaa !64
  %indvars.iv.next591.prol = add nuw nsw i64 %indvars.iv590.prol, 1 ; 2 uses
  %prol.iter1157.next = add i64 %prol.iter1157, 1 ; 2 uses
  %prol.iter1157.cmp.not = icmp eq i64 %prol.iter1157.next, %xtraiter1155
  br i1 %prol.iter1157.cmp.not, label %scalar.ph1031.prol.loopexit, label %scalar.ph1031.prol, !llvm.loop !107

scalar.ph1031.prol.loopexit:                      ; preds = %scalar.ph1031.prol, %scalar.ph1031.preheader
  %indvars.iv590.unr = phi i64 [ %indvars.iv590.ph, %scalar.ph1031.preheader ], [ %indvars.iv.next591.prol, %scalar.ph1031.prol ]
  %i.ju = sub nsw i64 %indvars.iv590.ph, %wide.trip.count583
  %i.jv = icmp ugt i64 %i.ju, -4
  br i1 %i.jv, label %.lr.ph526, label %scalar.ph1031

bb.af:                                            ; preds = %bb.af, %.lr.ph522.new
  %indvars.iv585 = phi i64 [ 0, %.lr.ph522.new ], [ %indvars.iv.next586.3, %bb.af ] ; 6 uses
  %niter1154 = phi i64 [ 0, %.lr.ph522.new ], [ %niter1154.next.3, %bb.af ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv585
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv585
  store double %i.ka, ptr %i.kb, align 8, !tbaa !64
  %indvars.iv.next586 = or disjoint i64 %indvars.iv585, 1 ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next586
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ke
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.next586
  store double %i.kg, ptr %i.kh, align 8, !tbaa !64
  %indvars.iv.next586.1 = or disjoint i64 %indvars.iv585, 2 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next586.1
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !4
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.kk
  %i.km = load double, ptr %i.kl, align 8, !tbaa !64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.next586.1
  store double %i.km, ptr %i.kn, align 8, !tbaa !64
  %indvars.iv.next586.2 = or disjoint i64 %indvars.iv585, 3 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv.next586.2
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !4
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.kq
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.next586.2
  store double %i.ks, ptr %i.kt, align 8, !tbaa !64
  %indvars.iv.next586.3 = add nuw nsw i64 %indvars.iv585, 4 ; 2 uses
  %niter1154.next.3 = add i64 %niter1154, 4       ; 2 uses
  %niter1154.ncmp.3 = icmp eq i64 %niter1154.next.3, %unroll_iter1153
  br i1 %niter1154.ncmp.3, label %.lr.ph524.unr-lcssa, label %bb.af, !llvm.loop !108

.lr.ph526:                                        ; preds = %scalar.ph1031.prol.loopexit, %scalar.ph1031, %middle.block1041
  %i.ku = load ptr, ptr %2, align 8, !tbaa !81    ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !92 ; 5 uses
  %xtraiter1159 = and i64 %i.hp, 3                ; 3 uses
  %i.kx = icmp ult i64 %i.il, 3
  br i1 %i.kx, label %.epil.preheader1158, label %.lr.ph526.new

.lr.ph526.new:                                    ; preds = %.lr.ph526
  %unroll_iter1163 = and i64 %i.hp, 2147483644
  br label %bb.ah

scalar.ph1031:                                    ; preds = %scalar.ph1031.prol.loopexit, %scalar.ph1031
  %indvars.iv590 = phi i64 [ %indvars.iv.next591.3, %scalar.ph1031 ], [ %indvars.iv590.unr, %scalar.ph1031.prol.loopexit ] ; 6 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv590
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !64
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv590
  store double %i.kz, ptr %i.la, align 8, !tbaa !64
  %indvars.iv.next591 = add nuw nsw i64 %indvars.iv590, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv.next591
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next591
  store double %i.lc, ptr %i.ld, align 8, !tbaa !64
  %indvars.iv.next591.1 = add nuw nsw i64 %indvars.iv590, 2 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv.next591.1
  %i.lf = load double, ptr %i.le, align 8, !tbaa !64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next591.1
  store double %i.lf, ptr %i.lg, align 8, !tbaa !64
  %indvars.iv.next591.2 = add nuw nsw i64 %indvars.iv590, 3 ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv.next591.2
  %i.li = load double, ptr %i.lh, align 8, !tbaa !64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next591.2
  store double %i.li, ptr %i.lj, align 8, !tbaa !64
  %indvars.iv.next591.3 = add nuw nsw i64 %indvars.iv590, 4 ; 2 uses
  %exitcond594.not.3 = icmp eq i64 %indvars.iv.next591.3, %wide.trip.count593
  br i1 %exitcond594.not.3, label %.lr.ph526, label %scalar.ph1031, !llvm.loop !109

.lr.ph528.unr-lcssa:                              ; preds = %bb.ah
  %lcmp.mod1161.not = icmp eq i64 %xtraiter1159, 0
  br i1 %lcmp.mod1161.not, label %.lr.ph528, label %.epil.preheader1158

.epil.preheader1158:                              ; preds = %.lr.ph528.unr-lcssa, %.lr.ph526
  %indvars.iv595.epil.init = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next596.3, %.lr.ph528.unr-lcssa ]
  %lcmp.mod1162 = icmp ne i64 %xtraiter1159, 0
  call void @llvm.assume(i1 %lcmp.mod1162)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader1158
  %indvars.iv595.epil = phi i64 [ %indvars.iv595.epil.init, %.epil.preheader1158 ], [ %indvars.iv.next596.epil, %bb.ag ] ; 3 uses
  %epil.iter1160 = phi i64 [ 0, %.epil.preheader1158 ], [ %epil.iter1160.next, %bb.ag ]
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv595.epil
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !4
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.lm
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv595.epil
  store double %i.lo, ptr %i.lp, align 8, !tbaa !64
  %indvars.iv.next596.epil = add nuw nsw i64 %indvars.iv595.epil, 1
  %epil.iter1160.next = add i64 %epil.iter1160, 1 ; 2 uses
  %epil.iter1160.cmp.not = icmp eq i64 %epil.iter1160.next, %xtraiter1159
  br i1 %epil.iter1160.cmp.not, label %.lr.ph528, label %bb.ag, !llvm.loop !110

.lr.ph528:                                        ; preds = %bb.ag, %.lr.ph528.unr-lcssa
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !92 ; 7 uses
  %wide.trip.count603 = and i64 %i.hp, 2147483647
  %min.iters.check1047 = icmp samesign ult i64 %wide.trip.count583, 6
  %i.ls = ptrtoaddr ptr %i.lr to i64
  %i.lt = sub i64 %i.ht, %i.ls
  %diff.check1045 = icmp ult i64 %i.lt, 32
  %or.cond1091 = select i1 %min.iters.check1047, i1 true, i1 %diff.check1045
  br i1 %or.cond1091, label %scalar.ph1046.preheader, label %vector.ph1048

vector.ph1048:                                    ; preds = %.lr.ph528
  %n.vec1050 = and i64 %i.hp, 2147483644          ; 3 uses
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1048
  %index1052 = phi i64 [ 0, %vector.ph1048 ], [ %index.next1055, %vector.body1051 ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %index1052 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load1053 = load <2 x double>, ptr %i.lu, align 8, !tbaa !64
  %wide.load1054 = load <2 x double>, ptr %i.lv, align 8, !tbaa !64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index1052 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store <2 x double> %wide.load1053, ptr %i.lw, align 8, !tbaa !64
  store <2 x double> %wide.load1054, ptr %i.lx, align 8, !tbaa !64
  %index.next1055 = add nuw i64 %index1052, 4     ; 2 uses
  %i.ly = icmp eq i64 %index.next1055, %n.vec1050
  br i1 %i.ly, label %middle.block1056, label %vector.body1051, !llvm.loop !111

middle.block1056:                                 ; preds = %vector.body1051
  %cmp.n1057 = icmp eq i64 %wide.trip.count583, %n.vec1050
  br i1 %cmp.n1057, label %.lr.ph530, label %scalar.ph1046.preheader

scalar.ph1046.preheader:                          ; preds = %.lr.ph528, %middle.block1056
  %indvars.iv600.ph = phi i64 [ 0, %.lr.ph528 ], [ %n.vec1050, %middle.block1056 ] ; 3 uses
  %xtraiter1165 = and i64 %i.hp, 3                ; 2 uses
  %lcmp.mod1166.not = icmp eq i64 %xtraiter1165, 0
  br i1 %lcmp.mod1166.not, label %scalar.ph1046.prol.loopexit, label %scalar.ph1046.prol

scalar.ph1046.prol:                               ; preds = %scalar.ph1046.preheader, %scalar.ph1046.prol
  %indvars.iv600.prol = phi i64 [ %indvars.iv.next601.prol, %scalar.ph1046.prol ], [ %indvars.iv600.ph, %scalar.ph1046.preheader ] ; 3 uses
  %prol.iter1167 = phi i64 [ %prol.iter1167.next, %scalar.ph1046.prol ], [ 0, %scalar.ph1046.preheader ]
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv600.prol
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv600.prol
  store double %i.ma, ptr %i.mb, align 8, !tbaa !64
  %indvars.iv.next601.prol = add nuw nsw i64 %indvars.iv600.prol, 1 ; 2 uses
  %prol.iter1167.next = add i64 %prol.iter1167, 1 ; 2 uses
  %prol.iter1167.cmp.not = icmp eq i64 %prol.iter1167.next, %xtraiter1165
  br i1 %prol.iter1167.cmp.not, label %scalar.ph1046.prol.loopexit, label %scalar.ph1046.prol, !llvm.loop !112

scalar.ph1046.prol.loopexit:                      ; preds = %scalar.ph1046.prol, %scalar.ph1046.preheader
  %indvars.iv600.unr = phi i64 [ %indvars.iv600.ph, %scalar.ph1046.preheader ], [ %indvars.iv.next601.prol, %scalar.ph1046.prol ]
  %i.mc = sub nsw i64 %indvars.iv600.ph, %wide.trip.count583
  %i.md = icmp ugt i64 %i.mc, -4
  br i1 %i.md, label %.lr.ph530, label %scalar.ph1046

bb.ah:                                            ; preds = %bb.ah, %.lr.ph526.new
  %indvars.iv595 = phi i64 [ 0, %.lr.ph526.new ], [ %indvars.iv.next596.3, %bb.ah ] ; 6 uses
  %niter1164 = phi i64 [ 0, %.lr.ph526.new ], [ %niter1164.next.3, %bb.ah ]
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv595
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !4
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.mg
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv595
  store double %i.mi, ptr %i.mj, align 8, !tbaa !64
  %indvars.iv.next596 = or disjoint i64 %indvars.iv595, 1 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next596
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !4
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.mm
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.next596
  store double %i.mo, ptr %i.mp, align 8, !tbaa !64
  %indvars.iv.next596.1 = or disjoint i64 %indvars.iv595, 2 ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next596.1
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !4
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ms
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.next596.1
  store double %i.mu, ptr %i.mv, align 8, !tbaa !64
  %indvars.iv.next596.2 = or disjoint i64 %indvars.iv595, 3 ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next596.2
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !4
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.my
  %i.na = load double, ptr %i.mz, align 8, !tbaa !64
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.next596.2
  store double %i.na, ptr %i.nb, align 8, !tbaa !64
  %indvars.iv.next596.3 = add nuw nsw i64 %indvars.iv595, 4 ; 2 uses
  %niter1164.next.3 = add i64 %niter1164, 4       ; 2 uses
  %niter1164.ncmp.3 = icmp eq i64 %niter1164.next.3, %unroll_iter1163
  br i1 %niter1164.ncmp.3, label %.lr.ph528.unr-lcssa, label %bb.ah, !llvm.loop !113

.lr.ph530:                                        ; preds = %scalar.ph1046.prol.loopexit, %scalar.ph1046, %middle.block1056
  %i.nc = load ptr, ptr %2, align 8, !tbaa !81    ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !92 ; 5 uses
  %xtraiter1169 = and i64 %i.hp, 3                ; 3 uses
  %i.nf = icmp ult i64 %i.il, 3
  br i1 %i.nf, label %.epil.preheader1168, label %.lr.ph530.new

.lr.ph530.new:                                    ; preds = %.lr.ph530
  %unroll_iter1173 = and i64 %i.hp, 2147483644
  br label %bb.aj

scalar.ph1046:                                    ; preds = %scalar.ph1046.prol.loopexit, %scalar.ph1046
  %indvars.iv600 = phi i64 [ %indvars.iv.next601.3, %scalar.ph1046 ], [ %indvars.iv600.unr, %scalar.ph1046.prol.loopexit ] ; 6 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv600
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv600
  store double %i.nh, ptr %i.ni, align 8, !tbaa !64
  %indvars.iv.next601 = add nuw nsw i64 %indvars.iv600, 1 ; 2 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv.next601
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next601
  store double %i.nk, ptr %i.nl, align 8, !tbaa !64
  %indvars.iv.next601.1 = add nuw nsw i64 %indvars.iv600, 2 ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv.next601.1
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next601.1
  store double %i.nn, ptr %i.no, align 8, !tbaa !64
  %indvars.iv.next601.2 = add nuw nsw i64 %indvars.iv600, 3 ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv.next601.2
  %i.nq = load double, ptr %i.np, align 8, !tbaa !64
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next601.2
  store double %i.nq, ptr %i.nr, align 8, !tbaa !64
  %indvars.iv.next601.3 = add nuw nsw i64 %indvars.iv600, 4 ; 2 uses
  %exitcond604.not.3 = icmp eq i64 %indvars.iv.next601.3, %wide.trip.count603
  br i1 %exitcond604.not.3, label %.lr.ph530, label %scalar.ph1046, !llvm.loop !114

.lr.ph532.unr-lcssa:                              ; preds = %bb.aj
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1169, 0
  br i1 %lcmp.mod1171.not, label %.lr.ph532, label %.epil.preheader1168

.epil.preheader1168:                              ; preds = %.lr.ph532.unr-lcssa, %.lr.ph530
  %indvars.iv605.epil.init = phi i64 [ 0, %.lr.ph530 ], [ %indvars.iv.next606.3, %.lr.ph532.unr-lcssa ]
  %lcmp.mod1172 = icmp ne i64 %xtraiter1169, 0
  call void @llvm.assume(i1 %lcmp.mod1172)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader1168
  %indvars.iv605.epil = phi i64 [ %indvars.iv605.epil.init, %.epil.preheader1168 ], [ %indvars.iv.next606.epil, %bb.ai ] ; 3 uses
  %epil.iter1170 = phi i64 [ 0, %.epil.preheader1168 ], [ %epil.iter1170.next, %bb.ai ]
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv605.epil
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !4
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv605.epil
  store double %i.nw, ptr %i.nx, align 8, !tbaa !64
  %indvars.iv.next606.epil = add nuw nsw i64 %indvars.iv605.epil, 1
  %epil.iter1170.next = add i64 %epil.iter1170, 1 ; 2 uses
  %epil.iter1170.cmp.not = icmp eq i64 %epil.iter1170.next, %xtraiter1169
  br i1 %epil.iter1170.cmp.not, label %.lr.ph532, label %bb.ai, !llvm.loop !115

.lr.ph532:                                        ; preds = %bb.ai, %.lr.ph532.unr-lcssa
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !92 ; 7 uses
  %wide.trip.count613 = and i64 %i.hp, 2147483647
  %min.iters.check1062 = icmp samesign ult i64 %wide.trip.count583, 6
  %i.oa = ptrtoaddr ptr %i.nz to i64
  %i.ob = sub i64 %i.ht, %i.oa
  %diff.check1060 = icmp ult i64 %i.ob, 32
  %or.cond1093 = select i1 %min.iters.check1062, i1 true, i1 %diff.check1060
  br i1 %or.cond1093, label %scalar.ph1061.preheader, label %vector.ph1063

vector.ph1063:                                    ; preds = %.lr.ph532
  %n.vec1065 = and i64 %i.hp, 2147483644          ; 3 uses
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %vector.ph1063
  %index1067 = phi i64 [ 0, %vector.ph1063 ], [ %index.next1070, %vector.body1066 ] ; 3 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %index1067 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %wide.load1068 = load <2 x double>, ptr %i.oc, align 8, !tbaa !64
  %wide.load1069 = load <2 x double>, ptr %i.od, align 8, !tbaa !64
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index1067 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store <2 x double> %wide.load1068, ptr %i.oe, align 8, !tbaa !64
  store <2 x double> %wide.load1069, ptr %i.of, align 8, !tbaa !64
  %index.next1070 = add nuw i64 %index1067, 4     ; 2 uses
  %i.og = icmp eq i64 %index.next1070, %n.vec1065
  br i1 %i.og, label %middle.block1071, label %vector.body1066, !llvm.loop !116

middle.block1071:                                 ; preds = %vector.body1066
  %cmp.n1072 = icmp eq i64 %wide.trip.count583, %n.vec1065
  br i1 %cmp.n1072, label %.lr.ph534, label %scalar.ph1061.preheader

scalar.ph1061.preheader:                          ; preds = %.lr.ph532, %middle.block1071
  %indvars.iv610.ph = phi i64 [ 0, %.lr.ph532 ], [ %n.vec1065, %middle.block1071 ] ; 3 uses
  %xtraiter1175 = and i64 %i.hp, 3                ; 2 uses
  %lcmp.mod1176.not = icmp eq i64 %xtraiter1175, 0
  br i1 %lcmp.mod1176.not, label %scalar.ph1061.prol.loopexit, label %scalar.ph1061.prol

scalar.ph1061.prol:                               ; preds = %scalar.ph1061.preheader, %scalar.ph1061.prol
  %indvars.iv610.prol = phi i64 [ %indvars.iv.next611.prol, %scalar.ph1061.prol ], [ %indvars.iv610.ph, %scalar.ph1061.preheader ] ; 3 uses
  %prol.iter1177 = phi i64 [ %prol.iter1177.next, %scalar.ph1061.prol ], [ 0, %scalar.ph1061.preheader ]
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv610.prol
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv610.prol
  store double %i.oi, ptr %i.oj, align 8, !tbaa !64
  %indvars.iv.next611.prol = add nuw nsw i64 %indvars.iv610.prol, 1 ; 2 uses
  %prol.iter1177.next = add i64 %prol.iter1177, 1 ; 2 uses
  %prol.iter1177.cmp.not = icmp eq i64 %prol.iter1177.next, %xtraiter1175
  br i1 %prol.iter1177.cmp.not, label %scalar.ph1061.prol.loopexit, label %scalar.ph1061.prol, !llvm.loop !117

scalar.ph1061.prol.loopexit:                      ; preds = %scalar.ph1061.prol, %scalar.ph1061.preheader
  %indvars.iv610.unr = phi i64 [ %indvars.iv610.ph, %scalar.ph1061.preheader ], [ %indvars.iv.next611.prol, %scalar.ph1061.prol ]
  %i.ok = sub nsw i64 %indvars.iv610.ph, %wide.trip.count583
  %i.ol = icmp ugt i64 %i.ok, -4
  br i1 %i.ol, label %.lr.ph534, label %scalar.ph1061

bb.aj:                                            ; preds = %bb.aj, %.lr.ph530.new
  %indvars.iv605 = phi i64 [ 0, %.lr.ph530.new ], [ %indvars.iv.next606.3, %bb.aj ] ; 6 uses
  %niter1174 = phi i64 [ 0, %.lr.ph530.new ], [ %niter1174.next.3, %bb.aj ]
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv605
  %i.on = load i32, ptr %i.om, align 4, !tbaa !4
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.oo
  %i.oq = load double, ptr %i.op, align 8, !tbaa !64
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv605
  store double %i.oq, ptr %i.or, align 8, !tbaa !64
  %indvars.iv.next606 = or disjoint i64 %indvars.iv605, 1 ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next606
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !4
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ou
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !64
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv.next606
  store double %i.ow, ptr %i.ox, align 8, !tbaa !64
  %indvars.iv.next606.1 = or disjoint i64 %indvars.iv605, 2 ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next606.1
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !4
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.pa
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv.next606.1
  store double %i.pc, ptr %i.pd, align 8, !tbaa !64
  %indvars.iv.next606.2 = or disjoint i64 %indvars.iv605, 3 ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next606.2
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !4
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.pg
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !64
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv.next606.2
  store double %i.pi, ptr %i.pj, align 8, !tbaa !64
  %indvars.iv.next606.3 = add nuw nsw i64 %indvars.iv605, 4 ; 2 uses
  %niter1174.next.3 = add i64 %niter1174, 4       ; 2 uses
  %niter1174.ncmp.3 = icmp eq i64 %niter1174.next.3, %unroll_iter1173
  br i1 %niter1174.ncmp.3, label %.lr.ph532.unr-lcssa, label %bb.aj, !llvm.loop !118

.lr.ph534:                                        ; preds = %scalar.ph1061.prol.loopexit, %scalar.ph1061, %middle.block1071
  %i.pk = load ptr, ptr %2, align 8, !tbaa !81    ; 5 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !92 ; 5 uses
  %xtraiter1179 = and i64 %i.hp, 3                ; 3 uses
  %i.pn = icmp ult i64 %i.il, 3
  br i1 %i.pn, label %.epil.preheader1178, label %.lr.ph534.new

.lr.ph534.new:                                    ; preds = %.lr.ph534
  %unroll_iter1183 = and i64 %i.hp, 2147483644
  br label %bb.al

scalar.ph1061:                                    ; preds = %scalar.ph1061.prol.loopexit, %scalar.ph1061
  %indvars.iv610 = phi i64 [ %indvars.iv.next611.3, %scalar.ph1061 ], [ %indvars.iv610.unr, %scalar.ph1061.prol.loopexit ] ; 6 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv610
  %i.pp = load double, ptr %i.po, align 8, !tbaa !64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv610
  store double %i.pp, ptr %i.pq, align 8, !tbaa !64
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 2 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv.next611
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !64
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next611
  store double %i.ps, ptr %i.pt, align 8, !tbaa !64
  %indvars.iv.next611.1 = add nuw nsw i64 %indvars.iv610, 2 ; 2 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv.next611.1
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next611.1
  store double %i.pv, ptr %i.pw, align 8, !tbaa !64
  %indvars.iv.next611.2 = add nuw nsw i64 %indvars.iv610, 3 ; 2 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv.next611.2
  %i.py = load double, ptr %i.px, align 8, !tbaa !64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next611.2
  store double %i.py, ptr %i.pz, align 8, !tbaa !64
  %indvars.iv.next611.3 = add nuw nsw i64 %indvars.iv610, 4 ; 2 uses
  %exitcond614.not.3 = icmp eq i64 %indvars.iv.next611.3, %wide.trip.count613
  br i1 %exitcond614.not.3, label %.lr.ph534, label %scalar.ph1061, !llvm.loop !119

.preheader471.thread.loopexit.unr-lcssa:          ; preds = %bb.al
  %lcmp.mod1181.not = icmp eq i64 %xtraiter1179, 0
  br i1 %lcmp.mod1181.not, label %.preheader471.thread, label %.epil.preheader1178

.epil.preheader1178:                              ; preds = %.preheader471.thread.loopexit.unr-lcssa, %.lr.ph534
  %indvars.iv615.epil.init = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next616.3, %.preheader471.thread.loopexit.unr-lcssa ]
  %lcmp.mod1182 = icmp ne i64 %xtraiter1179, 0
  call void @llvm.assume(i1 %lcmp.mod1182)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader1178
  %indvars.iv615.epil = phi i64 [ %indvars.iv615.epil.init, %.epil.preheader1178 ], [ %indvars.iv.next616.epil, %bb.ak ] ; 3 uses
  %epil.iter1180 = phi i64 [ 0, %.epil.preheader1178 ], [ %epil.iter1180.next, %bb.ak ]
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv615.epil
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !4
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.qc
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv615.epil
  store double %i.qe, ptr %i.qf, align 8, !tbaa !64
  %indvars.iv.next616.epil = add nuw nsw i64 %indvars.iv615.epil, 1
  %epil.iter1180.next = add i64 %epil.iter1180, 1 ; 2 uses
  %epil.iter1180.cmp.not = icmp eq i64 %epil.iter1180.next, %xtraiter1179
  br i1 %epil.iter1180.cmp.not, label %.preheader471.thread, label %bb.ak, !llvm.loop !120

.preheader471.thread:                             ; preds = %.preheader471.thread.loopexit.unr-lcssa, %bb.ak, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %.idx845 = shl nuw nsw i64 %i.hp, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %.idx845) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.al:                                            ; preds = %bb.al, %.lr.ph534.new
  %indvars.iv615 = phi i64 [ 0, %.lr.ph534.new ], [ %indvars.iv.next616.3, %bb.al ] ; 6 uses
  %niter1184 = phi i64 [ 0, %.lr.ph534.new ], [ %niter1184.next.3, %bb.al ]
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv615
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !4
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.qi
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !64
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv615
  store double %i.qk, ptr %i.ql, align 8, !tbaa !64
  %indvars.iv.next616 = or disjoint i64 %indvars.iv615, 1 ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.next616
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !4
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.qo
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !64
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv.next616
  store double %i.qq, ptr %i.qr, align 8, !tbaa !64
  %indvars.iv.next616.1 = or disjoint i64 %indvars.iv615, 2 ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.next616.1
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !4
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.qu
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !64
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv.next616.1
  store double %i.qw, ptr %i.qx, align 8, !tbaa !64
  %indvars.iv.next616.2 = or disjoint i64 %indvars.iv615, 3 ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.next616.2
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !4
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ra
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !64
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv.next616.2
  store double %i.rc, ptr %i.rd, align 8, !tbaa !64
  %indvars.iv.next616.3 = add nuw nsw i64 %indvars.iv615, 4 ; 2 uses
  %niter1184.next.3 = add i64 %niter1184, 4       ; 2 uses
  %niter1184.ncmp.3 = icmp eq i64 %niter1184.next.3, %unroll_iter1183
  br i1 %niter1184.ncmp.3, label %.preheader471.thread.loopexit.unr-lcssa, label %bb.al, !llvm.loop !121

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %.preheader471.thread, %bb.x
  %.not.i.i.i202 = icmp eq ptr %.sroa.0328.0, null
  br i1 %.not.i.i.i202, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

bb.am:                                            ; preds = %bb.ad, %bb.ac
  %.pn169 = phi { ptr, i32 } [ %i.ip, %bb.ad ], [ %i.io, %bb.ac ] ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %.sroa.0328.0, null
  br i1 %.not.i.i.i203, label %.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.re = ptrtoint ptr %.sroa.9331.0 to i64
  %i.rf = ptrtoint ptr %.sroa.0328.0 to i64
  %i.rg = sub i64 %i.re, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.0, i64 noundef %i.rg) #18
  br label %.sink.split

bb.ao:                                            ; preds = %bb.k
  %i.rh = load i32, ptr %i.d, align 4, !tbaa !79
  %.not163 = icmp eq i32 %i.rh, 0
  br i1 %.not163, label %bb.ap, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ri = load i64, ptr %i.b, align 8, !tbaa !8   ; 17 uses
  %.not461 = icmp ne i64 %i.ri, 0
  call void @llvm.assume(i1 %.not461)
  %i.rj = icmp ugt i64 %i.ri, 2305843009213693951
  br i1 %i.rj, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method:bb.a

vector.body883:                                   ; preds = %vector.body883, %vector.ph876
  %index884 = phi i64 [ 0, %vector.ph876 ], [ %index.next887, %vector.body883 ] ; 5 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %index884
  %wide.load885 = load <4 x i32>, ptr %i.tl, align 4, !tbaa !4
  %i.tm = sitofp <4 x i32> %wide.load885 to <4 x double>
  %i.tn = fmul <4 x double> %broadcast.splat880, %i.tm
  %i.to = fptosi <4 x double> %i.tn to <4 x i32>
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %index884
  store <4 x i32> %i.to, ptr %i.tp, align 4, !tbaa !4
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %index884
  %wide.load886 = load <4 x i32>, ptr %i.tq, align 4, !tbaa !4
  %i.tr = sitofp <4 x i32> %wide.load886 to <4 x double>
  %i.ts = fmul <4 x double> %broadcast.splat882, %i.tr
  %i.tt = fptosi <4 x double> %i.ts to <4 x i32>
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %index884
  store <4 x i32> %i.tt, ptr %i.tu, align 4, !tbaa !4
  %index.next887 = add nuw i64 %index884, 4       ; 2 uses
  %i.tv = icmp eq i64 %index.next887, %n.vec878
  br i1 %i.tv, label %middle.block888, label %vector.body883, !llvm.loop !125

middle.block888:                                  ; preds = %vector.body883
  %cmp.n889 = icmp eq i64 %i.ri, %n.vec878
  br i1 %cmp.n889, label %._crit_edge492, label %scalar.ph874.preheader

scalar.ph874.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck866, %.lr.ph491, %middle.block888
  %.ph1105 = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck866 ], [ 0, %.lr.ph491 ], [ %n.vec878, %middle.block888 ]
  %.0130489.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck866 ], [ 0, %.lr.ph491 ], [ %i.tk, %middle.block888 ]
  br label %scalar.ph874

scalar.ph846:                                     ; preds = %scalar.ph846.preheader, %scalar.ph846
  %i.tw = phi i64 [ %i.uc, %scalar.ph846 ], [ %.ph1106, %scalar.ph846.preheader ] ; 2 uses
  %.0131486 = phi i32 [ %i.ub, %scalar.ph846 ], [ %.0131486.ph, %scalar.ph846.preheader ]
  %.0142485 = phi i32 [ %spec.select, %scalar.ph846 ], [ %.0142485.ph, %scalar.ph846.preheader ]
  %.0143484 = phi i32 [ %.1144, %scalar.ph846 ], [ %.0143484.ph, %scalar.ph846.preheader ]
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.tw
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !4
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ty, i32 %.0142485) ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.tw
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !4
  %.1144 = call i32 @llvm.smax.i32(i32 %i.ua, i32 %.0143484) ; 2 uses
  %i.ub = add i32 %.0131486, 1                    ; 2 uses
  %i.uc = zext i32 %i.ub to i64                   ; 2 uses
  %i.ud = icmp samesign ugt i64 %i.ri, %i.uc
  br i1 %i.ud, label %scalar.ph846, label %.lr.ph491, !llvm.loop !126

._crit_edge492:                                   ; preds = %scalar.ph874, %middle.block888
  %i.ue = trunc nuw i64 %i.ri to i32
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !57
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !127
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !128
  %i.ul = load ptr, ptr %4, align 8, !tbaa !81
  %i.um = load ptr, ptr %2, align 8, !tbaa !81
  invoke void @calc_zorder(i32 noundef %i.ue, ptr noundef nonnull %i.rl, ptr noundef nonnull %i.rr, ptr noundef %i.ug, i32 noundef %i.ui, i32 noundef %i.uk, ptr noundef nonnull %i.ul, ptr noundef nonnull %i.um)
          to label %bb.aq unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820

scalar.ph874:                                     ; preds = %scalar.ph874.preheader, %scalar.ph874
  %i.un = phi i64 [ %i.vb, %scalar.ph874 ], [ %.ph1105, %scalar.ph874.preheader ] ; 4 uses
  %.0130489 = phi i32 [ %i.va, %scalar.ph874 ], [ %.0130489.ph, %scalar.ph874.preheader ]
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !4
  %i.uq = sitofp i32 %i.up to double
  %i.ur = fmul double %i.ss, %i.uq
  %i.us = fptosi double %i.ur to i32
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.un
  store i32 %i.us, ptr %i.ut, align 4, !tbaa !4
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.un
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !4
  %i.uw = sitofp i32 %i.uv to double
  %i.ux = fmul double %i.st, %i.uw
  %i.uy = fptosi double %i.ux to i32
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.un
  store i32 %i.uy, ptr %i.uz, align 4, !tbaa !4
  %i.va = add i32 %.0130489, 1                    ; 2 uses
  %i.vb = zext i32 %i.va to i64                   ; 2 uses
  %i.vc = icmp samesign ugt i64 %i.ri, %i.vb
  br i1 %i.vc, label %scalar.ph874, label %._crit_edge492, !llvm.loop !129

bb.aq:                                            ; preds = %._crit_edge492
  %i.vd = load i64, ptr %i.b, align 8, !tbaa !8   ; 5 uses
  %i.ve = icmp ugt i64 %i.vd, 2305843009213693951
  br i1 %i.ve, label %bb.ar, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc219 unwind label %bb.bc

.noexc219:                                        ; preds = %bb.ar
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213: ; preds = %bb.aq
  %.not.i.i.i.i214 = icmp eq i64 %i.vd, 0
  br i1 %.not.i.i.i.i214, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213
  %i.vf = shl nuw nsw i64 %i.vd, 2
  %i.vg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vf) #17
          to label %.noexc220 unwind label %bb.bc ; 5 uses

.noexc220:                                        ; preds = %bb.as
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.vd ; 2 uses
  store i32 0, ptr %i.vg, align 4, !tbaa !4
  %i.vi = add nsw i64 %i.vd, -1                   ; 2 uses
  %i.vj = icmp eq i64 %i.vi, 0
  br i1 %i.vj, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215: ; preds = %.noexc220
  %i.vk = getelementptr i8, ptr %i.vg, i64 4
  %.idx.i.i.i.i.i.i.i216 = shl nuw nsw i64 %i.vi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.vk, i8 0, i64 %.idx.i.i.i.i.i.i.i216, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215, %.noexc220, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213
  %.sroa.0312.0 = phi ptr [ %i.vg, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215 ], [ %i.vg, %.noexc220 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213 ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %i.vh, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215 ], [ %i.vh, %.noexc220 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213 ] ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !53
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vl, ptr noundef %i.vn, i32 noundef 256)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !59
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vl, ptr noundef %i.vp, i32 noundef 256)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !60
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vl, ptr noundef %i.vr, i32 noundef 256)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !58
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.vl, ptr noundef %i.vt, i32 noundef 256)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.vu = load ptr, ptr %2, align 8, !tbaa !81
  invoke void @_ZN10MallocPlus18memory_reorder_allEPi(ptr noundef nonnull align 8 dereferenceable(96) %i.vl, ptr noundef nonnull %i.vu)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4Mesh17memory_reset_ptrsEv(ptr noundef nonnull align 8 dereferenceable(2288) %0)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !91
  %i.vy = load ptr, ptr %i.vv, align 8, !tbaa !92 ; 12 uses
  %i.vz = ptrtoint ptr %i.vx to i64
  %i.wa = ptrtoint ptr %i.vy to i64               ; 2 uses
  %i.wb = sub i64 %i.vz, %i.wa
  %i.wc = ashr exact i64 %i.wb, 3
  %i.wd = load i64, ptr %i.b, align 8, !tbaa !8   ; 27 uses
  %.not164 = icmp ult i64 %i.wc, %i.wd
  br i1 %.not164, label %_ZNSt6vectorIdSaIdEED2Ev.exit232, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.we = icmp ugt i64 %i.wd, 1152921504606846975
  br i1 %i.we, label %bb.ba, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc228 unwind label %bb.be

.noexc228:                                        ; preds = %bb.ba
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222: ; preds = %bb.az
  %.not.i.i.i.i223 = icmp eq i64 %i.wd, 0
  br i1 %.not.i.i.i.i223, label %_ZNSt6vectorIdSaIdEED2Ev.exit232, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222
  %i.wf = shl nuw nsw i64 %i.wd, 3
  %i.wg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wf) #17
          to label %.noexc229 unwind label %bb.be ; 48 uses

.noexc229:                                        ; preds = %bb.bb
  %i.wh = ptrtoaddr ptr %i.wg to i64              ; 4 uses
  store double 0.000000e+00, ptr %i.wg, align 8, !tbaa !64
  %i.wi = add nsw i64 %i.wd, -1                   ; 2 uses
  %i.wj = icmp eq i64 %i.wi, 0
  br i1 %i.wj, label %.lr.ph494.preheader, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230:            ; preds = %.noexc229
  %i.wk = getelementptr i8, ptr %i.wg, i64 8
  %.idx.i.i.i.i.i.i.i225 = shl nuw nsw i64 %i.wi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.wk, i8 0, i64 %.idx.i.i.i.i.i.i.i225, i1 false), !tbaa !64
  %i.wl = trunc i64 %i.wd to i32
  %i.wm = icmp sgt i32 %i.wl, 0
  br i1 %i.wm, label %.lr.ph494.preheader, label %.preheader479.thread

.lr.ph494.preheader:                              ; preds = %.noexc229, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230
  %wide.trip.count = and i64 %i.wd, 2147483647    ; 14 uses
  %min.iters.check895 = icmp samesign ult i64 %wide.trip.count, 6
  %i.wn = sub i64 %i.wh, %i.wa
  %diff.check893 = icmp ult i64 %i.wn, 32
  %or.cond1094 = or i1 %min.iters.check895, %diff.check893
  br i1 %or.cond1094, label %.lr.ph494.preheader1104, label %vector.ph896

vector.ph896:                                     ; preds = %.lr.ph494.preheader
  %n.vec898 = and i64 %i.wd, 2147483644           ; 3 uses
  br label %vector.body899

vector.body899:                                   ; preds = %vector.body899, %vector.ph896
  %index900 = phi i64 [ 0, %vector.ph896 ], [ %index.next903, %vector.body899 ] ; 3 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %index900 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %wide.load901 = load <2 x double>, ptr %i.wo, align 8, !tbaa !64
  %wide.load902 = load <2 x double>, ptr %i.wp, align 8, !tbaa !64
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %index900 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store <2 x double> %wide.load901, ptr %i.wq, align 8, !tbaa !64
  store <2 x double> %wide.load902, ptr %i.wr, align 8, !tbaa !64
  %index.next903 = add nuw i64 %index900, 4       ; 2 uses
  %i.ws = icmp eq i64 %index.next903, %n.vec898
  br i1 %i.ws, label %middle.block904, label %vector.body899, !llvm.loop !130

middle.block904:                                  ; preds = %vector.body899
  %cmp.n905 = icmp eq i64 %wide.trip.count, %n.vec898
  br i1 %cmp.n905, label %.lr.ph497, label %.lr.ph494.preheader1104

.lr.ph494.preheader1104:                          ; preds = %.lr.ph494.preheader, %middle.block904
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph494.preheader ], [ %n.vec898, %middle.block904 ] ; 3 uses
  %xtraiter = and i64 %i.wd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph494.prol.loopexit, label %.lr.ph494.prol

.lr.ph494.prol:                                   ; preds = %.lr.ph494.preheader1104, %.lr.ph494.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph494.prol ], [ %indvars.iv.ph, %.lr.ph494.preheader1104 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph494.prol ], [ 0, %.lr.ph494.preheader1104 ]
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.prol
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !64
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.prol
  store double %i.wu, ptr %i.wv, align 8, !tbaa !64
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph494.prol.loopexit, label %.lr.ph494.prol, !llvm.loop !131

.lr.ph494.prol.loopexit:                          ; preds = %.lr.ph494.prol, %.lr.ph494.preheader1104
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph494.preheader1104 ], [ %indvars.iv.next.prol, %.lr.ph494.prol ]
  %i.ww = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.wx = icmp ugt i64 %i.ww, -4
  br i1 %i.wx, label %.lr.ph497, label %.lr.ph494

.lr.ph497:                                        ; preds = %.lr.ph494.prol.loopexit, %.lr.ph494, %middle.block904
  %i.wy = load ptr, ptr %2, align 8, !tbaa !81    ; 5 uses
  %i.wz = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %xtraiter1112 = and i64 %i.wd, 3                ; 3 uses
  %i.xa = icmp ult i64 %i.wz, 3
  br i1 %i.xa, label %.epil.preheader, label %.lr.ph497.new

.lr.ph497.new:                                    ; preds = %.lr.ph497
  %unroll_iter = and i64 %i.wd, 2147483644
  br label %bb.bg

bb.bc:                                            ; preds = %bb.as, %bb.ar
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit248.thread

bb.bd:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.be:                                            ; preds = %bb.bb, %bb.ba
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.lr.ph494:                                        ; preds = %.lr.ph494.prol.loopexit, %.lr.ph494
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph494 ], [ %indvars.iv.unr, %.lr.ph494.prol.loopexit ] ; 6 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !64
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv
  store double %i.xf, ptr %i.xg, align 8, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !64
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next
  store double %i.xi, ptr %i.xj, align 8, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next.1
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !64
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next.1
  store double %i.xl, ptr %i.xm, align 8, !tbaa !64
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next.2
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !64
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next.2
  store double %i.xo, ptr %i.xp, align 8, !tbaa !64
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph497, label %.lr.ph494, !llvm.loop !132

.lr.ph499.unr-lcssa:                              ; preds = %bb.bg
  %lcmp.mod1113.not = icmp eq i64 %xtraiter1112, 0
  br i1 %lcmp.mod1113.not, label %.lr.ph499, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph499.unr-lcssa, %.lr.ph497
  %indvars.iv545.epil.init = phi i64 [ 0, %.lr.ph497 ], [ %indvars.iv.next546.3, %.lr.ph499.unr-lcssa ]
  %lcmp.mod1114 = icmp ne i64 %xtraiter1112, 0
  call void @llvm.assume(i1 %lcmp.mod1114)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader
  %indvars.iv545.epil = phi i64 [ %indvars.iv545.epil.init, %.epil.preheader ], [ %indvars.iv.next546.epil, %bb.bf ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bf ]
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %indvars.iv545.epil
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !4
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.xs
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !64
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv545.epil
  store double %i.xu, ptr %i.xv, align 8, !tbaa !64
  %indvars.iv.next546.epil = add nuw nsw i64 %indvars.iv545.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1112
  br i1 %epil.iter.cmp.not, label %.lr.ph499, label %bb.bf, !llvm.loop !133

.lr.ph499:                                        ; preds = %bb.bf, %.lr.ph499.unr-lcssa
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !92 ; 7 uses
  %wide.trip.count553 = and i64 %i.wd, 2147483647
  %min.iters.check910 = icmp samesign ult i64 %wide.trip.count, 6
  %i.xy = ptrtoaddr ptr %i.xx to i64
  %i.xz = sub i64 %i.wh, %i.xy
  %diff.check908 = icmp ult i64 %i.xz, 32
  %or.cond1096 = select i1 %min.iters.check910, i1 true, i1 %diff.check908
  br i1 %or.cond1096, label %scalar.ph909.preheader, label %vector.ph911

vector.ph911:                                     ; preds = %.lr.ph499
  %n.vec913 = and i64 %i.wd, 2147483644           ; 3 uses
  br label %vector.body914

vector.body914:                                   ; preds = %vector.body914, %vector.ph911
  %index915 = phi i64 [ 0, %vector.ph911 ], [ %index.next918, %vector.body914 ] ; 3 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %index915 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %wide.load916 = load <2 x double>, ptr %i.ya, align 8, !tbaa !64
  %wide.load917 = load <2 x double>, ptr %i.yb, align 8, !tbaa !64
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %index915 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  store <2 x double> %wide.load916, ptr %i.yc, align 8, !tbaa !64
  store <2 x double> %wide.load917, ptr %i.yd, align 8, !tbaa !64
  %index.next918 = add nuw i64 %index915, 4       ; 2 uses
  %i.ye = icmp eq i64 %index.next918, %n.vec913
  br i1 %i.ye, label %middle.block919, label %vector.body914, !llvm.loop !134

middle.block919:                                  ; preds = %vector.body914
  %cmp.n920 = icmp eq i64 %wide.trip.count, %n.vec913
  br i1 %cmp.n920, label %.lr.ph501, label %scalar.ph909.preheader

scalar.ph909.preheader:                           ; preds = %.lr.ph499, %middle.block919
  %indvars.iv550.ph = phi i64 [ 0, %.lr.ph499 ], [ %n.vec913, %middle.block919 ] ; 3 uses
  %xtraiter1115 = and i64 %i.wd, 3                ; 2 uses
  %lcmp.mod1116.not = icmp eq i64 %xtraiter1115, 0
  br i1 %lcmp.mod1116.not, label %scalar.ph909.prol.loopexit, label %scalar.ph909.prol

scalar.ph909.prol:                                ; preds = %scalar.ph909.preheader, %scalar.ph909.prol
  %indvars.iv550.prol = phi i64 [ %indvars.iv.next551.prol, %scalar.ph909.prol ], [ %indvars.iv550.ph, %scalar.ph909.preheader ] ; 3 uses
  %prol.iter1117 = phi i64 [ %prol.iter1117.next, %scalar.ph909.prol ], [ 0, %scalar.ph909.preheader ]
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %indvars.iv550.prol
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !64
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv550.prol
  store double %i.yg, ptr %i.yh, align 8, !tbaa !64
  %indvars.iv.next551.prol = add nuw nsw i64 %indvars.iv550.prol, 1 ; 2 uses
  %prol.iter1117.next = add i64 %prol.iter1117, 1 ; 2 uses
  %prol.iter1117.cmp.not = icmp eq i64 %prol.iter1117.next, %xtraiter1115
  br i1 %prol.iter1117.cmp.not, label %scalar.ph909.prol.loopexit, label %scalar.ph909.prol, !llvm.loop !135

scalar.ph909.prol.loopexit:                       ; preds = %scalar.ph909.prol, %scalar.ph909.preheader
  %indvars.iv550.unr = phi i64 [ %indvars.iv550.ph, %scalar.ph909.preheader ], [ %indvars.iv.next551.prol, %scalar.ph909.prol ]
  %i.yi = sub nsw i64 %indvars.iv550.ph, %wide.trip.count
  %i.yj = icmp ugt i64 %i.yi, -4
  br i1 %i.yj, label %.lr.ph501, label %scalar.ph909

bb.bg:                                            ; preds = %bb.bg, %.lr.ph497.new
  %indvars.iv545 = phi i64 [ 0, %.lr.ph497.new ], [ %indvars.iv.next546.3, %bb.bg ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph497.new ], [ %niter.next.3, %bb.bg ]
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %indvars.iv545
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !4
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.ym
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !64
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv545
  store double %i.yo, ptr %i.yp, align 8, !tbaa !64
  %indvars.iv.next546 = or disjoint i64 %indvars.iv545, 1 ; 2 uses
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %indvars.iv.next546
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !4
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.ys
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !64
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next546
  store double %i.yu, ptr %i.yv, align 8, !tbaa !64
  %indvars.iv.next546.1 = or disjoint i64 %indvars.iv545, 2 ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %indvars.iv.next546.1
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !4
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.yy
  %i.za = load double, ptr %i.yz, align 8, !tbaa !64
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next546.1
  store double %i.za, ptr %i.zb, align 8, !tbaa !64
  %indvars.iv.next546.2 = or disjoint i64 %indvars.iv545, 3 ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %indvars.iv.next546.2
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !4
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.ze
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !64
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next546.2
  store double %i.zg, ptr %i.zh, align 8, !tbaa !64
  %indvars.iv.next546.3 = add nuw nsw i64 %indvars.iv545, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph499.unr-lcssa, label %bb.bg, !llvm.loop !136

.lr.ph501:                                        ; preds = %scalar.ph909.prol.loopexit, %scalar.ph909, %middle.block919
  %i.zi = load ptr, ptr %2, align 8, !tbaa !81    ; 5 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !92 ; 5 uses
  %xtraiter1119 = and i64 %i.wd, 3                ; 3 uses
  %i.zl = icmp ult i64 %i.wz, 3
  br i1 %i.zl, label %.epil.preheader1118, label %.lr.ph501.new

.lr.ph501.new:                                    ; preds = %.lr.ph501
  %unroll_iter1123 = and i64 %i.wd, 2147483644
  br label %bb.bi

scalar.ph909:                                     ; preds = %scalar.ph909.prol.loopexit, %scalar.ph909
  %indvars.iv550 = phi i64 [ %indvars.iv.next551.3, %scalar.ph909 ], [ %indvars.iv550.unr, %scalar.ph909.prol.loopexit ] ; 6 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %indvars.iv550
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !64
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv550
  store double %i.zn, ptr %i.zo, align 8, !tbaa !64
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %indvars.iv.next551
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !64
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next551
  store double %i.zq, ptr %i.zr, align 8, !tbaa !64
  %indvars.iv.next551.1 = add nuw nsw i64 %indvars.iv550, 2 ; 2 uses
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %indvars.iv.next551.1
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !64
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next551.1
  store double %i.zt, ptr %i.zu, align 8, !tbaa !64
  %indvars.iv.next551.2 = add nuw nsw i64 %indvars.iv550, 3 ; 2 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %indvars.iv.next551.2
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !64
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next551.2
  store double %i.zw, ptr %i.zx, align 8, !tbaa !64
  %indvars.iv.next551.3 = add nuw nsw i64 %indvars.iv550, 4 ; 2 uses
  %exitcond554.not.3 = icmp eq i64 %indvars.iv.next551.3, %wide.trip.count553
  br i1 %exitcond554.not.3, label %.lr.ph501, label %scalar.ph909, !llvm.loop !137

.lr.ph503.unr-lcssa:                              ; preds = %bb.bi
  %lcmp.mod1121.not = icmp eq i64 %xtraiter1119, 0
  br i1 %lcmp.mod1121.not, label %.lr.ph503, label %.epil.preheader1118

.epil.preheader1118:                              ; preds = %.lr.ph503.unr-lcssa, %.lr.ph501
  %indvars.iv555.epil.init = phi i64 [ 0, %.lr.ph501 ], [ %indvars.iv.next556.3, %.lr.ph503.unr-lcssa ]
  %lcmp.mod1122 = icmp ne i64 %xtraiter1119, 0
  call void @llvm.assume(i1 %lcmp.mod1122)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader1118
  %indvars.iv555.epil = phi i64 [ %indvars.iv555.epil.init, %.epil.preheader1118 ], [ %indvars.iv.next556.epil, %bb.bh ] ; 3 uses
  %epil.iter1120 = phi i64 [ 0, %.epil.preheader1118 ], [ %epil.iter1120.next, %bb.bh ]
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv555.epil
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !4
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.aaa
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !64
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv555.epil
  store double %i.aac, ptr %i.aad, align 8, !tbaa !64
  %indvars.iv.next556.epil = add nuw nsw i64 %indvars.iv555.epil, 1
  %epil.iter1120.next = add i64 %epil.iter1120, 1 ; 2 uses
  %epil.iter1120.cmp.not = icmp eq i64 %epil.iter1120.next, %xtraiter1119
  br i1 %epil.iter1120.cmp.not, label %.lr.ph503, label %bb.bh, !llvm.loop !138

.lr.ph503:                                        ; preds = %bb.bh, %.lr.ph503.unr-lcssa
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !92 ; 7 uses
  %wide.trip.count563 = and i64 %i.wd, 2147483647
  %min.iters.check925 = icmp samesign ult i64 %wide.trip.count, 6
  %i.aag = ptrtoaddr ptr %i.aaf to i64
  %i.aah = sub i64 %i.wh, %i.aag
  %diff.check923 = icmp ult i64 %i.aah, 32
  %or.cond1098 = select i1 %min.iters.check925, i1 true, i1 %diff.check923
  br i1 %or.cond1098, label %scalar.ph924.preheader, label %vector.ph926

vector.ph926:                                     ; preds = %.lr.ph503
  %n.vec928 = and i64 %i.wd, 2147483644           ; 3 uses
  br label %vector.body929

vector.body929:                                   ; preds = %vector.body929, %vector.ph926
  %index930 = phi i64 [ 0, %vector.ph926 ], [ %index.next933, %vector.body929 ] ; 3 uses
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %index930 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %wide.load931 = load <2 x double>, ptr %i.aai, align 8, !tbaa !64
  %wide.load932 = load <2 x double>, ptr %i.aaj, align 8, !tbaa !64
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %index930 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  store <2 x double> %wide.load931, ptr %i.aak, align 8, !tbaa !64
  store <2 x double> %wide.load932, ptr %i.aal, align 8, !tbaa !64
  %index.next933 = add nuw i64 %index930, 4       ; 2 uses
  %i.aam = icmp eq i64 %index.next933, %n.vec928
  br i1 %i.aam, label %middle.block934, label %vector.body929, !llvm.loop !139

middle.block934:                                  ; preds = %vector.body929
  %cmp.n935 = icmp eq i64 %wide.trip.count, %n.vec928
  br i1 %cmp.n935, label %.lr.ph505, label %scalar.ph924.preheader

scalar.ph924.preheader:                           ; preds = %.lr.ph503, %middle.block934
  %indvars.iv560.ph = phi i64 [ 0, %.lr.ph503 ], [ %n.vec928, %middle.block934 ] ; 3 uses
  %xtraiter1125 = and i64 %i.wd, 3                ; 2 uses
  %lcmp.mod1126.not = icmp eq i64 %xtraiter1125, 0
  br i1 %lcmp.mod1126.not, label %scalar.ph924.prol.loopexit, label %scalar.ph924.prol

scalar.ph924.prol:                                ; preds = %scalar.ph924.preheader, %scalar.ph924.prol
  %indvars.iv560.prol = phi i64 [ %indvars.iv.next561.prol, %scalar.ph924.prol ], [ %indvars.iv560.ph, %scalar.ph924.preheader ] ; 3 uses
  %prol.iter1127 = phi i64 [ %prol.iter1127.next, %scalar.ph924.prol ], [ 0, %scalar.ph924.preheader ]
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %indvars.iv560.prol
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !64
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv560.prol
  store double %i.aao, ptr %i.aap, align 8, !tbaa !64
  %indvars.iv.next561.prol = add nuw nsw i64 %indvars.iv560.prol, 1 ; 2 uses
  %prol.iter1127.next = add i64 %prol.iter1127, 1 ; 2 uses
  %prol.iter1127.cmp.not = icmp eq i64 %prol.iter1127.next, %xtraiter1125
  br i1 %prol.iter1127.cmp.not, label %scalar.ph924.prol.loopexit, label %scalar.ph924.prol, !llvm.loop !140

scalar.ph924.prol.loopexit:                       ; preds = %scalar.ph924.prol, %scalar.ph924.preheader
  %indvars.iv560.unr = phi i64 [ %indvars.iv560.ph, %scalar.ph924.preheader ], [ %indvars.iv.next561.prol, %scalar.ph924.prol ]
  %i.aaq = sub nsw i64 %indvars.iv560.ph, %wide.trip.count
  %i.aar = icmp ugt i64 %i.aaq, -4
  br i1 %i.aar, label %.lr.ph505, label %scalar.ph924

bb.bi:                                            ; preds = %bb.bi, %.lr.ph501.new
  %indvars.iv555 = phi i64 [ 0, %.lr.ph501.new ], [ %indvars.iv.next556.3, %bb.bi ] ; 6 uses
  %niter1124 = phi i64 [ 0, %.lr.ph501.new ], [ %niter1124.next.3, %bb.bi ]
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv555
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !4
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.aau
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv555
  store double %i.aaw, ptr %i.aax, align 8, !tbaa !64
  %indvars.iv.next556 = or disjoint i64 %indvars.iv555, 1 ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next556
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !4
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.aba
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !64
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next556
  store double %i.abc, ptr %i.abd, align 8, !tbaa !64
  %indvars.iv.next556.1 = or disjoint i64 %indvars.iv555, 2 ; 2 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next556.1
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !4
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.abg
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !64
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next556.1
  store double %i.abi, ptr %i.abj, align 8, !tbaa !64
  %indvars.iv.next556.2 = or disjoint i64 %indvars.iv555, 3 ; 2 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next556.2
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !4
  %i.abm = sext i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.abm
  %i.abo = load double, ptr %i.abn, align 8, !tbaa !64
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next556.2
  store double %i.abo, ptr %i.abp, align 8, !tbaa !64
  %indvars.iv.next556.3 = add nuw nsw i64 %indvars.iv555, 4 ; 2 uses
  %niter1124.next.3 = add i64 %niter1124, 4       ; 2 uses
  %niter1124.ncmp.3 = icmp eq i64 %niter1124.next.3, %unroll_iter1123
  br i1 %niter1124.ncmp.3, label %.lr.ph503.unr-lcssa, label %bb.bi, !llvm.loop !141

.lr.ph505:                                        ; preds = %scalar.ph924.prol.loopexit, %scalar.ph924, %middle.block934
  %i.abq = load ptr, ptr %2, align 8, !tbaa !81   ; 5 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !92 ; 5 uses
  %xtraiter1129 = and i64 %i.wd, 3                ; 3 uses
  %i.abt = icmp ult i64 %i.wz, 3
  br i1 %i.abt, label %.epil.preheader1128, label %.lr.ph505.new

.lr.ph505.new:                                    ; preds = %.lr.ph505
  %unroll_iter1133 = and i64 %i.wd, 2147483644
  br label %bb.bk

scalar.ph924:                                     ; preds = %scalar.ph924.prol.loopexit, %scalar.ph924
  %indvars.iv560 = phi i64 [ %indvars.iv.next561.3, %scalar.ph924 ], [ %indvars.iv560.unr, %scalar.ph924.prol.loopexit ] ; 6 uses
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %indvars.iv560
  %i.abv = load double, ptr %i.abu, align 8, !tbaa !64
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv560
  store double %i.abv, ptr %i.abw, align 8, !tbaa !64
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, 1 ; 2 uses
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %indvars.iv.next561
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !64
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next561
  store double %i.aby, ptr %i.abz, align 8, !tbaa !64
  %indvars.iv.next561.1 = add nuw nsw i64 %indvars.iv560, 2 ; 2 uses
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %indvars.iv.next561.1
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !64
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next561.1
  store double %i.acb, ptr %i.acc, align 8, !tbaa !64
  %indvars.iv.next561.2 = add nuw nsw i64 %indvars.iv560, 3 ; 2 uses
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %indvars.iv.next561.2
  %i.ace = load double, ptr %i.acd, align 8, !tbaa !64
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next561.2
  store double %i.ace, ptr %i.acf, align 8, !tbaa !64
  %indvars.iv.next561.3 = add nuw nsw i64 %indvars.iv560, 4 ; 2 uses
  %exitcond564.not.3 = icmp eq i64 %indvars.iv.next561.3, %wide.trip.count563
  br i1 %exitcond564.not.3, label %.lr.ph505, label %scalar.ph924, !llvm.loop !142

.lr.ph507.unr-lcssa:                              ; preds = %bb.bk
  %lcmp.mod1131.not = icmp eq i64 %xtraiter1129, 0
  br i1 %lcmp.mod1131.not, label %.lr.ph507, label %.epil.preheader1128

.epil.preheader1128:                              ; preds = %.lr.ph507.unr-lcssa, %.lr.ph505
  %indvars.iv565.epil.init = phi i64 [ 0, %.lr.ph505 ], [ %indvars.iv.next566.3, %.lr.ph507.unr-lcssa ]
  %lcmp.mod1132 = icmp ne i64 %xtraiter1129, 0
  call void @llvm.assume(i1 %lcmp.mod1132)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader1128
  %indvars.iv565.epil = phi i64 [ %indvars.iv565.epil.init, %.epil.preheader1128 ], [ %indvars.iv.next566.epil, %bb.bj ] ; 3 uses
  %epil.iter1130 = phi i64 [ 0, %.epil.preheader1128 ], [ %epil.iter1130.next, %bb.bj ]
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv565.epil
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !4
  %i.aci = sext i32 %i.ach to i64
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.aci
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !64
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv565.epil
  store double %i.ack, ptr %i.acl, align 8, !tbaa !64
  %indvars.iv.next566.epil = add nuw nsw i64 %indvars.iv565.epil, 1
  %epil.iter1130.next = add i64 %epil.iter1130, 1 ; 2 uses
  %epil.iter1130.cmp.not = icmp eq i64 %epil.iter1130.next, %xtraiter1129
  br i1 %epil.iter1130.cmp.not, label %.lr.ph507, label %bb.bj, !llvm.loop !143

.lr.ph507:                                        ; preds = %bb.bj, %.lr.ph507.unr-lcssa
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !92 ; 7 uses
  %wide.trip.count573 = and i64 %i.wd, 2147483647
  %min.iters.check940 = icmp samesign ult i64 %wide.trip.count, 6
  %i.aco = ptrtoaddr ptr %i.acn to i64
  %i.acp = sub i64 %i.wh, %i.aco
  %diff.check938 = icmp ult i64 %i.acp, 32
  %or.cond1100 = select i1 %min.iters.check940, i1 true, i1 %diff.check938
  br i1 %or.cond1100, label %scalar.ph939.preheader, label %vector.ph941

vector.ph941:                                     ; preds = %.lr.ph507
  %n.vec943 = and i64 %i.wd, 2147483644           ; 3 uses
  br label %vector.body944

vector.body944:                                   ; preds = %vector.body944, %vector.ph941
  %index945 = phi i64 [ 0, %vector.ph941 ], [ %index.next948, %vector.body944 ] ; 3 uses
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %index945 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  %wide.load946 = load <2 x double>, ptr %i.acq, align 8, !tbaa !64
  %wide.load947 = load <2 x double>, ptr %i.acr, align 8, !tbaa !64
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %index945 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  store <2 x double> %wide.load946, ptr %i.acs, align 8, !tbaa !64
  store <2 x double> %wide.load947, ptr %i.act, align 8, !tbaa !64
  %index.next948 = add nuw i64 %index945, 4       ; 2 uses
  %i.acu = icmp eq i64 %index.next948, %n.vec943
  br i1 %i.acu, label %middle.block949, label %vector.body944, !llvm.loop !144

middle.block949:                                  ; preds = %vector.body944
  %cmp.n950 = icmp eq i64 %wide.trip.count, %n.vec943
  br i1 %cmp.n950, label %.lr.ph509, label %scalar.ph939.preheader

scalar.ph939.preheader:                           ; preds = %.lr.ph507, %middle.block949
  %indvars.iv570.ph = phi i64 [ 0, %.lr.ph507 ], [ %n.vec943, %middle.block949 ] ; 3 uses
  %xtraiter1135 = and i64 %i.wd, 3                ; 2 uses
  %lcmp.mod1136.not = icmp eq i64 %xtraiter1135, 0
  br i1 %lcmp.mod1136.not, label %scalar.ph939.prol.loopexit, label %scalar.ph939.prol

scalar.ph939.prol:                                ; preds = %scalar.ph939.preheader, %scalar.ph939.prol
  %indvars.iv570.prol = phi i64 [ %indvars.iv.next571.prol, %scalar.ph939.prol ], [ %indvars.iv570.ph, %scalar.ph939.preheader ] ; 3 uses
  %prol.iter1137 = phi i64 [ %prol.iter1137.next, %scalar.ph939.prol ], [ 0, %scalar.ph939.preheader ]
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %indvars.iv570.prol
  %i.acw = load double, ptr %i.acv, align 8, !tbaa !64
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv570.prol
  store double %i.acw, ptr %i.acx, align 8, !tbaa !64
  %indvars.iv.next571.prol = add nuw nsw i64 %indvars.iv570.prol, 1 ; 2 uses
  %prol.iter1137.next = add i64 %prol.iter1137, 1 ; 2 uses
  %prol.iter1137.cmp.not = icmp eq i64 %prol.iter1137.next, %xtraiter1135
  br i1 %prol.iter1137.cmp.not, label %scalar.ph939.prol.loopexit, label %scalar.ph939.prol, !llvm.loop !145

scalar.ph939.prol.loopexit:                       ; preds = %scalar.ph939.prol, %scalar.ph939.preheader
  %indvars.iv570.unr = phi i64 [ %indvars.iv570.ph, %scalar.ph939.preheader ], [ %indvars.iv.next571.prol, %scalar.ph939.prol ]
  %i.acy = sub nsw i64 %indvars.iv570.ph, %wide.trip.count
  %i.acz = icmp ugt i64 %i.acy, -4
  br i1 %i.acz, label %.lr.ph509, label %scalar.ph939

bb.bk:                                            ; preds = %bb.bk, %.lr.ph505.new
  %indvars.iv565 = phi i64 [ 0, %.lr.ph505.new ], [ %indvars.iv.next566.3, %bb.bk ] ; 6 uses
  %niter1134 = phi i64 [ 0, %.lr.ph505.new ], [ %niter1134.next.3, %bb.bk ]
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv565
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !4
  %i.adc = sext i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.adc
  %i.ade = load double, ptr %i.add, align 8, !tbaa !64
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv565
  store double %i.ade, ptr %i.adf, align 8, !tbaa !64
  %indvars.iv.next566 = or disjoint i64 %indvars.iv565, 1 ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv.next566
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !4
  %i.adi = sext i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.adi
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !64
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.next566
  store double %i.adk, ptr %i.adl, align 8, !tbaa !64
  %indvars.iv.next566.1 = or disjoint i64 %indvars.iv565, 2 ; 2 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv.next566.1
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !4
  %i.ado = sext i32 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.ado
  %i.adq = load double, ptr %i.adp, align 8, !tbaa !64
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.next566.1
  store double %i.adq, ptr %i.adr, align 8, !tbaa !64
  %indvars.iv.next566.2 = or disjoint i64 %indvars.iv565, 3 ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv.next566.2
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !4
  %i.adu = sext i32 %i.adt to i64
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.adu
  %i.adw = load double, ptr %i.adv, align 8, !tbaa !64
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv.next566.2
  store double %i.adw, ptr %i.adx, align 8, !tbaa !64
  %indvars.iv.next566.3 = add nuw nsw i64 %indvars.iv565, 4 ; 2 uses
  %niter1134.next.3 = add i64 %niter1134, 4       ; 2 uses
  %niter1134.ncmp.3 = icmp eq i64 %niter1134.next.3, %unroll_iter1133
  br i1 %niter1134.ncmp.3, label %.lr.ph507.unr-lcssa, label %bb.bk, !llvm.loop !146

.lr.ph509:                                        ; preds = %scalar.ph939.prol.loopexit, %scalar.ph939, %middle.block949
  %i.ady = load ptr, ptr %2, align 8, !tbaa !81   ; 5 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !92 ; 5 uses
  %xtraiter1139 = and i64 %i.wd, 3                ; 3 uses
  %i.aeb = icmp ult i64 %i.wz, 3
  br i1 %i.aeb, label %.epil.preheader1138, label %.lr.ph509.new

.lr.ph509.new:                                    ; preds = %.lr.ph509
  %unroll_iter1143 = and i64 %i.wd, 2147483644
  br label %bb.bm

scalar.ph939:                                     ; preds = %scalar.ph939.prol.loopexit, %scalar.ph939
  %indvars.iv570 = phi i64 [ %indvars.iv.next571.3, %scalar.ph939 ], [ %indvars.iv570.unr, %scalar.ph939.prol.loopexit ] ; 6 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %indvars.iv570
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !64
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv570
  store double %i.aed, ptr %i.aee, align 8, !tbaa !64
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %indvars.iv.next571
  %i.aeg = load double, ptr %i.aef, align 8, !tbaa !64
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next571
  store double %i.aeg, ptr %i.aeh, align 8, !tbaa !64
  %indvars.iv.next571.1 = add nuw nsw i64 %indvars.iv570, 2 ; 2 uses
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %indvars.iv.next571.1
  %i.aej = load double, ptr %i.aei, align 8, !tbaa !64
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next571.1
  store double %i.aej, ptr %i.aek, align 8, !tbaa !64
  %indvars.iv.next571.2 = add nuw nsw i64 %indvars.iv570, 3 ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %indvars.iv.next571.2
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !64
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv.next571.2
  store double %i.aem, ptr %i.aen, align 8, !tbaa !64
  %indvars.iv.next571.3 = add nuw nsw i64 %indvars.iv570, 4 ; 2 uses
  %exitcond574.not.3 = icmp eq i64 %indvars.iv.next571.3, %wide.trip.count573
  br i1 %exitcond574.not.3, label %.lr.ph509, label %scalar.ph939, !llvm.loop !147

.preheader479.thread.loopexit.unr-lcssa:          ; preds = %bb.bm
  %lcmp.mod1141.not = icmp eq i64 %xtraiter1139, 0
  br i1 %lcmp.mod1141.not, label %.preheader479.thread, label %.epil.preheader1138

.epil.preheader1138:                              ; preds = %.preheader479.thread.loopexit.unr-lcssa, %.lr.ph509
  %indvars.iv575.epil.init = phi i64 [ 0, %.lr.ph509 ], [ %indvars.iv.next576.3, %.preheader479.thread.loopexit.unr-lcssa ]
  %lcmp.mod1142 = icmp ne i64 %xtraiter1139, 0
  call void @llvm.assume(i1 %lcmp.mod1142)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader1138
  %indvars.iv575.epil = phi i64 [ %indvars.iv575.epil.init, %.epil.preheader1138 ], [ %indvars.iv.next576.epil, %bb.bl ] ; 3 uses
  %epil.iter1140 = phi i64 [ 0, %.epil.preheader1138 ], [ %epil.iter1140.next, %bb.bl ]
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.ady, i64 %indvars.iv575.epil
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !4
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.aeq
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !64
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %indvars.iv575.epil
  store double %i.aes, ptr %i.aet, align 8, !tbaa !64
  %indvars.iv.next576.epil = add nuw nsw i64 %indvars.iv575.epil, 1
  %epil.iter1140.next = add i64 %epil.iter1140, 1 ; 2 uses
  %epil.iter1140.cmp.not = icmp eq i64 %epil.iter1140.next, %xtraiter1139
  br i1 %epil.iter1140.cmp.not, label %.preheader479.thread, label %bb.bl, !llvm.loop !148

.preheader479.thread:                             ; preds = %.preheader479.thread.loopexit.unr-lcssa, %bb.bl, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230
  %.idx = shl nuw nsw i64 %i.wd, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef %.idx) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit232

bb.bm:                                            ; preds = %bb.bm, %.lr.ph509.new
  %indvars.iv575 = phi i64 [ 0, %.lr.ph509.new ], [ %indvars.iv.next576.3, %bb.bm ] ; 6 uses
  %niter1144 = phi i64 [ 0, %.lr.ph509.new ], [ %niter1144.next.3, %bb.bm ]
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.ady, i64 %indvars.iv575
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !4
  %i.aew = sext i32 %i.aev to i64
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.aew
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !64
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %indvars.iv575
  store double %i.aey, ptr %i.aez, align 8, !tbaa !64
  %indvars.iv.next576 = or disjoint i64 %indvars.iv575, 1 ; 2 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.ady, i64 %indvars.iv.next576
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !4
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.afc
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !64
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %indvars.iv.next576
  store double %i.afe, ptr %i.aff, align 8, !tbaa !64
  %indvars.iv.next576.1 = or disjoint i64 %indvars.iv575, 2 ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.ady, i64 %indvars.iv.next576.1
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !4
  %i.afi = sext i32 %i.afh to i64
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.afi
  %i.afk = load double, ptr %i.afj, align 8, !tbaa !64
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %indvars.iv.next576.1
  store double %i.afk, ptr %i.afl, align 8, !tbaa !64
  %indvars.iv.next576.2 = or disjoint i64 %indvars.iv575, 3 ; 2 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.ady, i64 %indvars.iv.next576.2
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !4
  %i.afo = sext i32 %i.afn to i64
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.afo
  %i.afq = load double, ptr %i.afp, align 8, !tbaa !64
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %indvars.iv.next576.2
  store double %i.afq, ptr %i.afr, align 8, !tbaa !64
  %indvars.iv.next576.3 = add nuw nsw i64 %indvars.iv575, 4 ; 2 uses
  %niter1144.next.3 = add i64 %niter1144, 4       ; 2 uses
  %niter1144.ncmp.3 = icmp eq i64 %niter1144.next.3, %unroll_iter1143
  br i1 %niter1144.ncmp.3, label %.preheader479.thread.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !149

_ZNSt6vectorIdSaIdEED2Ev.exit232:                 ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222, %.preheader479.thread, %bb.ay
  %.not.i.i.i233 = icmp eq ptr %.sroa.0312.0, null
  br i1 %.not.i.i.i233, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

bb.bn:                                            ; preds = %bb.be, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.xd, %bb.be ], [ %i.xc, %bb.bd ] ; 2 uses
  %.not.i.i.i235 = icmp eq ptr %.sroa.0312.0, null
  br i1 %.not.i.i.i235, label %_ZNSt6vectorIdSaIdEED2Ev.exit248.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.afs = ptrtoint ptr %.sroa.9.0 to i64
  %i.aft = ptrtoint ptr %.sroa.0312.0 to i64
  %i.afu = sub i64 %i.afs, %i.aft
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0312.0, i64 noundef %i.afu) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit248.thread

_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split:         ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit232, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.sroa.9.0.sink = phi ptr [ %.sroa.9331.0, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.sroa.9.0, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ]
  %.sroa.0312.0.sink844 = phi ptr [ %.sroa.0328.0, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.sroa.0312.0, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ] ; 2 uses
  %.sroa.16362.1.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.ru, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ]
  %.sroa.0343.1.ph = phi ptr [ %.sroa.0343.4378, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ]
  %.sroa.16351.1.ph = phi ptr [ %.sroa.16351.4381, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ]
  %.sroa.0333.1.ph = phi ptr [ %.sroa.0333.4, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ]
  %.sroa.16340.1.ph = phi ptr [ %.sroa.16340.4, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ]
  %.sroa.0354.1.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.rr, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ]
  %.sroa.16373.1.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.rq, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ]
  %.sroa.0365.1.ph = phi ptr [ null, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.rl, %_ZNSt6vectorIdSaIdEED2Ev.exit232 ]
  %i.afv = ptrtoint ptr %.sroa.9.0.sink to i64
  %i.afw = ptrtoint ptr %.sroa.0312.0.sink844 to i64
end_hunk_1
