inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
  %lpad.loopexit.split-lp190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp188, %.loopexit187
  %lpad.phi191 = phi { ptr, i32 } [ %lpad.loopexit189, %.loopexit187 ], [ %lpad.loopexit.split-lp190, %.loopexit.split-lp188 ]
  %i.gi = load ptr, ptr %8, align 8, !alias.scope !117 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.l
  br i1 %i.gj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ao
  %i.gk = load i64, ptr %i.l, align 8, !alias.scope !117
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #23
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.gm = load i64, ptr %i.m, align 8             ; 5 uses
  %i.gn = icmp ugt i64 %i.gm, 1023
  %.pre352 = load ptr, ptr %8, align 8            ; 3 uses
  br i1 %i.gn, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107, label %bb.ap

bb.ap:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.go = trunc nuw nsw i64 %i.gm to i32
  store i32 %i.go, ptr %i.fw, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gp, ptr align 1 %.pre352, i64 %i.gm, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gm
  store i8 0, ptr %i.gq, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %bb.ap
  %i.gr = icmp eq ptr %.pre352, %i.l
  br i1 %i.gr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107
  %i.gs = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit107
  %i.gt = load i64, ptr %i.l, align 8
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %.pre352, i64 noundef %i.gu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.gv = load float, ptr %i.fp, align 8
  %i.gw = load float, ptr %i.cm, align 4
  %i.gx = fsub float %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fw, i64 1040
  store float %i.gx, ptr %i.gy, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.ha = load float, ptr %i.gz, align 4
  %i.hb = load float, ptr %i.cn, align 4
  %i.hc = fsub float %i.ha, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fw, i64 1056
  store float %i.hc, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.hf = load float, ptr %i.he, align 8
  %i.hg = load float, ptr %i.co, align 4
  %i.hh = fsub float %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fw, i64 1072
  store float %i.hh, ptr %i.hi, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fw, i64 1096
  store ptr %i.at, ptr %i.hj, align 8
  %i.hk = load i32, ptr %i.fs, align 8
  %.not288 = icmp eq i32 %i.hk, 0
  br i1 %.not288, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.hl = getelementptr inbounds nuw i8, ptr %i.at, i64 1112
  br label %bb.as

._crit_edge:                                      ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.hm = getelementptr inbounds nuw i8, ptr %i.at, i64 1112
  %i.hn = load ptr, ptr %i.hm, align 8
  store ptr %i.fw, ptr %i.hn, align 8
  %i.ho = load i32, ptr %i.fs, align 8
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.fs, align 8
  %i.hq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.at unwind label %bb.aq

bb.aq:                                            ; preds = %bb.at, %._crit_edge, %bb.ak
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ar:                                            ; preds = %bb.al
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 1144) #23
  br label %bb.av

.body:                                            ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.av

bb.as:                                            ; preds = %.lr.ph, %bb.as
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %i.ht = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv
  %i.hv = load ptr, ptr %i.hu, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next
  store ptr %i.hv, ptr %i.hw, align 8
  %i.hx = load i32, ptr %i.fs, align 8
  %i.hy = zext i32 %i.hx to i64
  %i.hz = icmp samesign ult i64 %indvars.iv.next, %i.hy
  br i1 %i.hz, label %bb.as, label %._crit_edge, !llvm.loop !120

bb.at:                                            ; preds = %._crit_edge
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA39_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.hq, ptr noundef nonnull align 1 dereferenceable(39) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 1 dereferenceable(2) @.str.13)
          to label %bb.au unwind label %bb.aq

bb.au:                                            ; preds = %bb.at, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.d, %bb.e, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.au
  %.sroa.20.1 = phi ptr [ %.sroa.20.4, %bb.au ], [ %.sroa.20.0277, %bb.e ], [ %.sroa.20.0277, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.20.0277, %bb.c ], [ %.sroa.20.0277, %bb.d ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.2, %bb.au ], [ %.sroa.12.0278, %bb.e ], [ %.sroa.12.0278, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.12.0278, %bb.c ], [ %.sroa.12.0278, %bb.d ] ; 2 uses
  %.sroa.0152.1 = phi ptr [ %.sroa.0152.4, %bb.au ], [ %.sroa.0152.0279, %bb.e ], [ %.sroa.0152.0279, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0152.0279, %bb.c ], [ %.sroa.0152.0279, %bb.d ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0148.0276, i64 8 ; 2 uses
  %.not177 = icmp eq ptr %i.ia, %i.g
  br i1 %.not177, label %._crit_edge282, label %bb.b, !llvm.loop !121

bb.av:                                            ; preds = %bb.aq, %bb.ar, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.ab
  %.pn84 = phi { ptr, i32 } [ %i.fg, %bb.ab ], [ %i.hs, %bb.ar ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.hr, %bb.aq ], [ %lpad.phi191, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.az

bb.aw:                                            ; preds = %._crit_edge282
  %i.ib = add nsw i64 %i.q, 1                     ; 2 uses
  %i.ic = icmp ugt i64 %i.ib, 2305843009213693951
  %i.id = shl i64 %i.ib, 3
  %i.ie = select i1 %i.ic, i64 -1, i64 %i.id
  %i.if = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ie) #25
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 2 uses
  store ptr %i.if, ptr %i.ig, align 8
  %.not289 = icmp eq ptr %.sroa.12.0.lcssa, %.sroa.0152.0.lcssa
  br i1 %.not289, label %.loopexit, label %.lr.ph287

bb.ay:                                            ; preds = %bb.aw
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.lr.ph287:                                        ; preds = %bb.ax, %.lr.ph287
  %i.ii = phi i64 [ %i.io, %.lr.ph287 ], [ 0, %bb.ax ] ; 2 uses
  %.0285 = phi i32 [ %i.in, %.lr.ph287 ], [ 0, %bb.ax ]
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0152.0.lcssa, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = load ptr, ptr %i.ig, align 8
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ii
  store ptr %i.ik, ptr %i.im, align 8
  %i.in = add i32 %.0285, 1                       ; 2 uses
  %i.io = zext i32 %i.in to i64                   ; 2 uses
  %i.ip = icmp ugt i64 %i.q, %i.io
  br i1 %i.ip, label %.lr.ph287, label %.loopexit.thread, !llvm.loop !122

.loopexit:                                        ; preds = %bb.ax, %._crit_edge282
  %.not.i.i.i = icmp eq ptr %.sroa.0152.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph287, %.loopexit
  %i.iq = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.ir = sub i64 %i.iq, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.0.lcssa, i64 noundef %i.ir) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.az:                                            ; preds = %.loopexit181, %.loopexit.split-lp, %bb.av, %bb.aa, %bb.z, %bb.ay
  %.sroa.20.3 = phi ptr [ %.sroa.20.0.lcssa, %bb.ay ], [ %.sroa.20.0277, %bb.z ], [ %.sroa.20.4, %bb.aa ], [ %.sroa.20.4, %bb.av ], [ %.sroa.20.0277.lcssa, %.loopexit181 ], [ %.sroa.12.0278, %.loopexit.split-lp ]
  %.sroa.0152.3 = phi ptr [ %.sroa.0152.0.lcssa, %bb.ay ], [ %.sroa.0152.0279, %bb.z ], [ %.sroa.0152.4, %bb.aa ], [ %.sroa.0152.4, %bb.av ], [ %.sroa.0152.0279, %.loopexit181 ], [ %.sroa.0152.0279, %.loopexit.split-lp ] ; 3 uses
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.ay ], [ %i.ff, %bb.z ], [ %lpad.phi186, %bb.aa ], [ %.pn84, %bb.av ], [ %lpad.loopexit, %.loopexit181 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i111 = icmp eq ptr %.sroa.0152.3, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112, label %.thread168

.thread168:                                       ; preds = %bb.az
  %i.is = ptrtoint ptr %.sroa.20.3 to i64
  %i.it = ptrtoint ptr %.sroa.0152.3 to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.3, i64 noundef %i.iu) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112:        ; preds = %bb.az, %.thread168
  resume { ptr, i32 } %.pn84.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter9AddMeshesEPKNS_3ASE8BaseNodeEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %.not79 = icmp eq i32 %i.d, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1120 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1120
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit64, label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.h = phi ptr [ %i.b, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %spec.select = select i1 %i.o, ptr null, ptr %i.p
  %i.q = icmp eq ptr %spec.select, %1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.e, align 8
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.e, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !123

bb.e:                                             ; preds = %._crit_edge
  %i.y = zext i32 %i.g to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1128 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %.not80 = icmp eq i32 %i.ae, 0
  br i1 %.not80, label %.loopexit64, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph78, %bb.i
  %i.aj = phi ptr [ %i.ac, %.lr.ph78 ], [ %i.db, %bb.i ] ; 2 uses
  %indvars.iv83 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next84, %bb.i ] ; 3 uses
  %.04775 = phi i32 [ 0, %.lr.ph78 ], [ %.1, %bb.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv83
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8            ; 8 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %spec.select1 = select i1 %i.aq, ptr null, ptr %i.ar
  %i.as = icmp eq ptr %spec.select1, %1
  br i1 %i.as, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.ab, align 8
  %i.au = add i32 %.04775, 1
  %i.av = zext i32 %.04775 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = trunc nuw i64 %indvars.iv83 to i32
  store i32 %i.ax, ptr %i.aw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i64 64, i1 false)
  %i.az = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %3) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %.idx = mul nuw nsw i64 %i.be, 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  %.not5166 = icmp eq i32 %i.bd, 0
  br i1 %.not5166, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.g, %.lr.ph69
  %.04867 = phi ptr [ %i.bs, %.lr.ph69 ], [ %i.bb, %bb.g ] ; 5 uses
  %i.bg = load float, ptr %3, align 4
  %11 = load float, ptr %.04867, align 4          ; 3 uses
  %i.bh = load float, ptr %4, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.04867, i64 4
  %i.bj = load float, ptr %i.bi, align 4          ; 3 uses
  %12 = fmul float %i.bh, %i.bj
  %13 = call float @llvm.fmuladd.f32(float %i.bg, float %11, float %12)
  %14 = load float, ptr %5, align 4
  %15 = getelementptr inbounds nuw i8, ptr %.04867, i64 8 ; 2 uses
  %16 = load float, ptr %15, align 4              ; 3 uses
  %17 = call float @llvm.fmuladd.f32(float %14, float %16, float %13)
  %18 = load float, ptr %6, align 4
  %19 = fadd float %17, %18
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %19, i64 0
  %20 = load float, ptr %7, align 4
  %21 = load float, ptr %8, align 4
  %22 = fmul float %i.bj, %21
  %23 = call float @llvm.fmuladd.f32(float %20, float %11, float %22)
  %24 = load float, ptr %9, align 4
  %25 = call float @llvm.fmuladd.f32(float %24, float %16, float %23)
  %26 = load float, ptr %10, align 4
  %27 = fadd float %26, %25
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %27, i64 1
  %i.bk = load float, ptr %i.af, align 4
  %i.bl = load float, ptr %i.ag, align 4
  %i.bm = fmul float %i.bj, %i.bl
  %i.bn = call float @llvm.fmuladd.f32(float %i.bk, float %11, float %i.bm)
  %i.bo = load float, ptr %i.ah, align 4
  %i.bp = call float @llvm.fmuladd.f32(float %i.bo, float %16, float %i.bn)
  %i.bq = load float, ptr %i.ai, align 4
  %i.br = fadd float %i.bq, %i.bp
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %.04867, align 4
  store float %i.br, ptr %15, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.04867, i64 12 ; 2 uses
  %.not51 = icmp eq ptr %i.bs, %i.bf
  br i1 %.not51, label %._crit_edge70, label %.lr.ph69, !llvm.loop !124

._crit_edge70:                                    ; preds = %.lr.ph69, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %.not52 = icmp eq ptr %i.bu, null
  br i1 %.not52, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge70
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  %i.cb = load <2 x float>, ptr %i.ay, align 4
  %i.cc = load <2 x float>, ptr %i.bx, align 4
  %i.cd = load <2 x float>, ptr %i.ca, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %.idx81 = mul nuw nsw i64 %i.ch, 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx81
  %.not5371 = icmp eq i32 %i.cg, 0
  br i1 %.not5371, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.h, %.lr.ph74
  %.14972 = phi ptr [ %i.da, %.lr.ph74 ], [ %i.bu, %bb.h ] ; 5 uses
  %i.cj = load float, ptr %.14972, align 4        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.14972, i64 4
  %i.cl = load float, ptr %i.ck, align 4          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.14972, i64 8 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4          ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cc, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cs, <2 x float> %i.cq)
  %i.cu = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cv, <2 x float> %i.ct)
  %i.cx = fmul float %i.bz, %i.cl
  %i.cy = call float @llvm.fmuladd.f32(float %i.bw, float %i.cj, float %i.cx)
  %i.cz = call float @llvm.fmuladd.f32(float %i.cf, float %i.cn, float %i.cy)
  store <2 x float> %i.cw, ptr %.14972, align 4
  store float %i.cz, ptr %i.cm, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.14972, i64 12 ; 2 uses
  %.not53 = icmp eq ptr %i.da, %i.ci
  br i1 %.not53, label %.loopexit, label %.lr.ph74, !llvm.loop !125

.loopexit:                                        ; preds = %.lr.ph74, %bb.h, %._crit_edge70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.pre86 = load ptr, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %i.db = phi ptr [ %.pre86, %.loopexit ], [ %i.aj, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %i.au, %.loopexit ], [ %.04775, %bb.f ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next84, %i.de
  br i1 %i.df, label %bb.f, label %.loopexit64, !llvm.loop !126

.loopexit64:                                      ; preds = %bb.i, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.b, align 4      ; 9 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.a, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 8 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 5 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.y = fneg <2 x float> %i.x                    ; 3 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0  ; 7 uses
  %i.ab = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.ac = fneg float %i.ab                        ; 4 uses
  %i.ad = extractelement <2 x float> %i.y, i64 1  ; 3 uses
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.am = fmul float %i.t, %i.al
  %i.an = fmul float %i.t, %i.aj
  %i.ao = fmul float %i.an, %i.z
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.am, float %i.e, float %i.ao)
  %i.aq = extractelement <2 x float> %i.ah, i64 0
  %i.ar = fmul float %i.a, %i.aq                  ; 2 uses
  %i.as = fmul float %i.aj, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.aa, float %i.ap)
  %i.au = fmul float %i.ar, %i.ac
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.e, float %i.at)
  %foldExtExtBinop = fmul <2 x float> %i.ah, %i.ae
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ax = fmul float %i.aw, %i.ak
  %i.ay = load <2 x float>, ptr %i.q, align 4     ; 7 uses
  %i.az = load <2 x float>, ptr %i.k, align 4     ; 8 uses
  %i.ba = load float, ptr %i.o, align 4           ; 6 uses
  %i.bb = fneg float %i.ba                        ; 4 uses
  %i.bc = load <2 x float>, ptr %i.ag, align 4    ; 8 uses
  %i.bd = load float, ptr %i.p, align 4           ; 5 uses
  %i.be = fmul float %i.af, %i.bd                 ; 2 uses
  %i.bf = fmul float %i.be, %i.ad
  %i.bg = extractelement <2 x float> %i.az, i64 0
  %i.bh = fmul float %i.a, %i.bg                  ; 2 uses
  %i.bi = fmul float %i.ab, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.w, float %i.av)
  %i.bk = fmul float %i.bh, %i.ad
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.aa, float %i.bj)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.n, float %i.bl)
  %i.bn = fmul float %i.aw, %i.ba
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.e, float %i.bm)
  %foldExtExtBinop47 = fmul <2 x float> %i.az, %i.ae ; 2 uses
  %i.bp = extractelement <2 x float> %foldExtExtBinop47, i64 0
  %i.bq = fmul float %i.bp, %i.bb
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.w, float %i.bo)
  %foldExtExtBinop49 = fmul <2 x float> %i.ai, %foldExtExtBinop47
  %i.bs = extractelement <2 x float> %foldExtExtBinop49, i64 0
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.n, float %i.br)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.e, float %i.bt)
  %i.bv = fmul float %i.aj, %i.be
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.w, float %i.bu)
  %i.bx = extractelement <2 x float> %i.ay, i64 0
  %foldExtExtBinop51 = fmul <2 x float> %i.az, %i.ay
  %i.by = extractelement <2 x float> %foldExtExtBinop51, i64 0 ; 2 uses
  %i.bz = fmul float %i.ba, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aa, float %i.bw)
  %i.cb = fmul float %i.by, %i.ac
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.n, float %i.ca)
  %i.cd = fmul float %i.bd, %i.bx                 ; 2 uses
  %i.ce = fmul float %i.ab, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.e, float %i.cc)
  %i.cg = fmul float %i.cd, %i.ak
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.aa, float %i.cf)
  %foldExtExtBinop53 = fmul <2 x float> %i.r, %i.ay
  %i.ci = extractelement <2 x float> %foldExtExtBinop53, i64 0 ; 2 uses
  %i.cj = fmul float %i.aj, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.n, float %i.ch)
  %i.cl = fmul float %i.ci, %i.bb
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.e, float %i.ck)
  %i.cn = extractelement <2 x float> %i.bc, i64 0
  %i.co = fmul float %i.bd, %i.cn                 ; 2 uses
  %i.cp = fmul float %i.co, %i.ac
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.w, float %i.cm)
  %i.cr = fmul float %i.al, %i.co
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.aa, float %i.cq)
  %foldExtExtBinop55 = fmul <2 x float> %i.r, %i.bc
  %i.ct = extractelement <2 x float> %foldExtExtBinop55, i64 0 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ad
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.n, float %i.cs)
  %i.cw = fmul float %i.ba, %i.ct
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.w, float %i.cv)
  %foldExtExtBinop57 = fmul <2 x float> %i.ah, %i.bc ; 2 uses
  %i.cy = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.cz = fmul float %i.cy, %i.bb
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.aa, float %i.cx)
  %foldExtExtBinop59 = fmul <2 x float> %i.u, %foldExtExtBinop57
  %i.db = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.n, float %i.da) ; 2 uses
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %i.dg = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.di = fmul <4 x float> %i.dh, %i.de
end_hunk_0
begin_hunk_1_@_ZN6Assimp11ASEImporter15ConvertMaterialERNS_3ASE8MaterialE:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.fo = load ptr, ptr %i.e, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %2, i8 0, i64 1028, i1 false)
  %i.fp = icmp ugt i64 %i.fm, 1023
  br i1 %i.fp, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i74, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.fr = trunc nuw nsw i64 %i.fm to i32
  store i32 %i.fr, ptr %2, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ft = load ptr, ptr %i.fq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 1 %i.ft, i64 %i.fm, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fm
  store i8 0, ptr %i.fu, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i74

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i74: ; preds = %bb.ap, %bb.ao
  %i.fv = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull %2, ptr noundef nonnull @.str.18, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.fw = load float, ptr %i.fn, align 8
  %i.fx = fcmp ord float %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.aq, label %_ZN6Assimp14CopyASETextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType.exit75

bb.aq:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i74
  %i.fy = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(72) %i.fn, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 7, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %_ZN6Assimp14CopyASETextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType.exit75

_ZN6Assimp14CopyASETextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType.exit75: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i74, %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.ga = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull %i.fz, i32 noundef 20, ptr noundef nonnull @.str.20, i32 noundef 7, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN6Assimp14CopyASETextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType.exit75, %bb.an
  %i.gb = load i64, ptr %i.z, align 8             ; 5 uses
  %.not63 = icmp eq i64 %i.gb, 0
  br i1 %.not63, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %10, i8 0, i64 1028, i1 false)
  %i.gc = icmp ugt i64 %i.gb, 1023
  br i1 %i.gc, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gd = trunc nuw nsw i64 %i.gb to i32
  store i32 %i.gd, ptr %10, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.gf = load ptr, ptr %i.y, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ge, ptr align 1 %i.gf, i64 %i.gb, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gb
  store i8 0, ptr %i.gg, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76: ; preds = %bb.as, %bb.at
  %i.gh = load ptr, ptr %i.e, align 8
  %i.gi = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull %10, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.au

bb.au:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !79

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.aiVector3t, align 8          ; 5 uses
  %2 = alloca %"class.std::vector.38", align 8    ; 12 uses
  %3 = alloca %"class.Assimp::SGSpatialSort", align 8 ; 15 uses
  %4 = alloca %"class.std::vector.112", align 8   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store <2 x float> zeroinitializer, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 12                  ; 3 uses
  %i.q = icmp ugt i64 %i.h, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.h, %i.p
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(12) %1)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.h, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not253 = icmp eq ptr %i.w, %i.x
  br i1 %.not253, label %.preheader212, label %.lr.ph

.preheader212:                                    ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %.not254 = icmp eq ptr %i.y, %i.z
  br i1 %.not254, label %._crit_edge, label %.lr.ph224

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, %.lr.ph
  %i.ae = phi ptr [ %i.bn, %.lr.ph ], [ %i.x, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.af = phi i64 [ %i.bl, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %.082216 = phi i32 [ %i.bk, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.ag = getelementptr inbounds nuw [132 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load ptr, ptr %0, align 8               ; 3 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ar ; 3 uses
  %i.at = load float, ptr %i.ao, align 4
  %i.au = load float, ptr %i.ak, align 4          ; 2 uses
  %5 = fsub float %i.at, %i.au                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %6 = load float, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ax = load float, ptr %i.aw, align 4          ; 2 uses
  %7 = fsub float %6, %i.ax                       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %8 = load float, ptr %i.ay, align 4
  %9 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %10 = load float, ptr %9, align 4               ; 2 uses
  %11 = fsub float %8, %10                        ; 2 uses
  %12 = load float, ptr %i.as, align 4
  %13 = fsub float %12, %i.au                     ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %15 = load float, ptr %14, align 4
  %16 = fsub float %15, %i.ax                     ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %18 = load float, ptr %17, align 4
  %19 = fsub float %18, %10                       ; 2 uses
  %20 = fneg float %16
  %21 = fmul float %11, %20
  %22 = call float @llvm.fmuladd.f32(float %7, float %19, float %21)
  %23 = fneg float %19
  %24 = fmul float %5, %23
  %25 = call float @llvm.fmuladd.f32(float %11, float %13, float %24)
  %26 = fneg float %13
  %i.az = fmul float %7, %26
  %27 = call float @llvm.fmuladd.f32(float %5, float %16, float %i.az) ; 3 uses
  %.sroa.0.0.vec.insert.i99 = insertelement <2 x float> poison, float %22, i64 0
  %.sroa.0.4.vec.insert.i100 = insertelement <2 x float> %.sroa.0.0.vec.insert.i99, float %25, i64 1 ; 3 uses
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.ai ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i100, ptr %i.bb, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store float %27, ptr %.sroa.4.0..sroa_idx, align 4
  %i.bc = load i32, ptr %i.al, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.bd ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i100, ptr %i.bf, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store float %27, ptr %.sroa.4.0..sroa_idx.1, align 4
  %i.bg = load i32, ptr %i.ap, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i100, ptr %i.bj, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store float %27, ptr %.sroa.4.0..sroa_idx.2, align 4
  %i.bk = add i32 %.082216, 1                     ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = load ptr, ptr %i.v, align 8
  %i.bn = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 132
  %i.bs = icmp ugt i64 %i.br, %i.bl
  br i1 %i.bs, label %.lr.ph, label %.preheader212, !llvm.loop !130

._crit_edge.loopexit:                             ; preds = %.lr.ph224
  %foldExtExtBinop = fsub <2 x float> %i.cw, %i.cu
  %i.bt = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop315 = fsub <2 x float> %i.cw, %i.cu ; 2 uses
  %i.bu = fsub float %.sroa.speculated, %.sroa.speculated191 ; 2 uses
  %foldExtExtBinop317 = fmul <2 x float> %foldExtExtBinop315, %foldExtExtBinop315
  %i.bv = extractelement <2 x float> %foldExtExtBinop317, i64 1
  %i.bw = call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bv)
  %i.bx = call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bw)
  %i.by = call float @llvm.sqrt.f32(float %i.bx)
  %i.bz = fmul float %i.by, f0x3727C5AC
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader212
  %sqrt.i = phi float [ f0x48A92544, %.preheader212 ], [ %i.bz, %._crit_edge.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not293 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not293, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.cg = sdiv exact i64 %i.ce, 12
  %i.ch = icmp ugt i64 %i.cg, 768614336404564650
  br i1 %i.ch, label %.noexc133, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

.noexc133:                                        ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #25 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cj, i8 0, i64 %i.ce, i1 false)
  store ptr %i.cj, ptr %2, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ce ; 2 uses
  store ptr %i.ck, ptr %i.cf, align 8
  store ptr %i.ck, ptr %i.ci, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

.lr.ph224:                                        ; preds = %.preheader212, %.lr.ph224
  %i.cl = phi i64 [ %i.cz, %.lr.ph224 ], [ 0, %.preheader212 ]
  %.084223 = phi i32 [ %i.cy, %.lr.ph224 ], [ 0, %.preheader212 ]
  %.sroa.13188.0220 = phi float [ %.sroa.speculated191, %.lr.ph224 ], [ 1.000000e+10, %.preheader212 ] ; 2 uses
  %.sroa.13176.0217 = phi float [ %.sroa.speculated, %.lr.ph224 ], [ -1.000000e+10, %.preheader212 ] ; 2 uses
  %i.cm = phi <2 x float> [ %i.cw, %.lr.ph224 ], [ splat (float -1.000000e+10), %.preheader212 ] ; 2 uses
  %i.cn = phi <2 x float> [ %i.cu, %.lr.ph224 ], [ splat (float 1.000000e+10), %.preheader212 ] ; 2 uses
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.cl ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load float, ptr %i.cp, align 4          ; 4 uses
  %i.cr = fcmp olt float %i.cq, %.sroa.13188.0220
  %.sroa.speculated191 = select i1 %i.cr, float %i.cq, float %.sroa.13188.0220 ; 2 uses
  %i.cs = load <2 x float>, ptr %i.co, align 4    ; 4 uses
  %i.ct = fcmp olt <2 x float> %i.cs, %i.cn
  %i.cu = select <2 x i1> %i.ct, <2 x float> %i.cs, <2 x float> %i.cn ; 3 uses
  %i.cv = fcmp olt <2 x float> %i.cm, %i.cs
  %i.cw = select <2 x i1> %i.cv, <2 x float> %i.cs, <2 x float> %i.cm ; 3 uses
  %i.cx = fcmp olt float %.sroa.13176.0217, %i.cq
  %.sroa.speculated = select i1 %i.cx, float %i.cq, float %.sroa.13176.0217 ; 2 uses
  %i.cy = add i32 %.084223, 1                     ; 2 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = icmp ugt i64 %i.ad, %i.cz
  br i1 %i.da, label %.lr.ph224, label %._crit_edge.loopexit, !llvm.loop !131

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %._crit_edge, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.db = phi ptr [ %i.cj, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN6Assimp13SGSpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.dc = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dd = load ptr, ptr %i.v, align 8
  %.not231 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not231, label %._crit_edge233, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %.sroa.0166.0232 = phi ptr [ %i.dx, %bb.j ], [ %i.dc, %bb.f ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 12 ; 3 uses
  %i.df = load i32, ptr %.sroa.0166.0232, align 4 ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = load ptr, ptr %0, align 8
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load i32, ptr %i.de, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i32 noundef %i.df, i32 noundef %i.dj)
          to label %bb.h unwind label %bb.k

._crit_edge233:                                   ; preds = %bb.j, %bb.f
  invoke void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.l unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 4
  %i.dm = load i32, ptr %i.dl, align 4            ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = load ptr, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %i.do, i64 %i.dn
  %i.dq = load i32, ptr %i.de, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dp, i32 noundef %i.dm, i32 noundef %i.dq)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 8
  %i.ds = load i32, ptr %i.dr, align 4            ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = load ptr, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load i32, ptr %i.de, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dv, i32 noundef %i.ds, i32 noundef %i.dw)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 132 ; 2 uses
  %i.dy = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.dx, %i.dy
  br i1 %.not, label %._crit_edge233, label %.preheader, !llvm.loop !132

bb.k:                                             ; preds = %bb.i, %bb.h, %.preheader
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.l:                                             ; preds = %._crit_edge233
  %i.ea = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.eb = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not.i.i114, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = sdiv exact i64 %i.ee, 12
  %i.eg = add nsw i64 %i.ef, 63                   ; 2 uses
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = and i64 %i.eh, 2305843009213693944
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #25
          to label %.noexc115 unwind label %bb.o  ; 3 uses

.noexc115:                                        ; preds = %bb.m
  %i.ek = lshr i64 %i.eg, 6                       ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ek
  %.idx.i = shl nuw nsw i64 %i.ek, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ej, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc115, %bb.l
  %.sroa.0157.0 = phi ptr [ null, %bb.l ], [ %i.ej, %.noexc115 ] ; 10 uses
  %.sroa.15163.0 = phi ptr [ null, %bb.l ], [ %i.el, %.noexc115 ] ; 4 uses
  %i.em = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.en = load ptr, ptr %i.v, align 8
  %.not208249 = icmp eq ptr %i.em, %i.en
  br i1 %.not208249, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.p

._crit_edge252:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.eq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ac unwind label %bb.ag     ; 0 uses

bb.n:                                             ; preds = %._crit_edge233
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.o:                                             ; preds = %bb.m
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.p:                                             ; preds = %.lr.ph251, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0152.0250 = phi ptr [ %i.em, %.lr.ph251 ], [ %i.fg, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 12 ; 3 uses
  %i.eu = load i32, ptr %.sroa.0152.0250, align 4 ; 2 uses
end_hunk_1
