Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ASELoader?download=true
inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.next
  store ptr %i.hj, ptr %i.hk, align 8
  %i.hl = load i32, ptr %i.fg, align 8
  %i.hm = zext i32 %i.hl to i64
  %i.hn = icmp samesign ult i64 %indvars.iv.next, %i.hm
  br i1 %i.hn, label %bb.as, label %._crit_edge, !llvm.loop !118

bb.at:                                            ; preds = %._crit_edge
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA39_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.he, ptr noundef nonnull align 1 dereferenceable(39) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 1 dereferenceable(2) @.str.13)
          to label %bb.au unwind label %bb.aq

bb.au:                                            ; preds = %bb.at, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.d, %bb.e, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.au
  %.sroa.20.1 = phi ptr [ %.sroa.20.4, %bb.au ], [ %.sroa.20.0277, %bb.e ], [ %.sroa.20.0277, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.20.0277, %bb.c ], [ %.sroa.20.0277, %bb.d ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.2, %bb.au ], [ %.sroa.12.0279, %bb.e ], [ %.sroa.12.0279, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.12.0279, %bb.c ], [ %.sroa.12.0279, %bb.d ] ; 2 uses
  %.sroa.0152.1 = phi ptr [ %.sroa.0152.4, %bb.au ], [ %.sroa.0152.0280, %bb.e ], [ %.sroa.0152.0280, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0152.0280, %bb.c ], [ %.sroa.0152.0280, %bb.d ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0148.0278, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.ho, %i.g
  br i1 %.not178, label %._crit_edge283, label %bb.b, !llvm.loop !119

bb.av:                                            ; preds = %bb.aq, %bb.ar, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.ab
  %.pn84 = phi { ptr, i32 } [ %i.eu, %bb.ab ], [ %i.hg, %bb.ar ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.hf, %bb.aq ], [ %lpad.phi192, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.az

bb.aw:                                            ; preds = %._crit_edge283
  %i.hp = add nsw i64 %i.q, 1                     ; 2 uses
  %i.hq = icmp ugt i64 %i.hp, 2305843009213693951
  %i.hr = shl i64 %i.hp, 3
  %i.hs = select i1 %i.hq, i64 -1, i64 %i.hr
  %i.ht = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hs) #25
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 2 uses
  store ptr %i.ht, ptr %i.hu, align 8
  %.not290 = icmp eq ptr %.sroa.12.0.lcssa, %.sroa.0152.0.lcssa
  br i1 %.not290, label %.loopexit, label %.lr.ph288

bb.ay:                                            ; preds = %bb.aw
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.lr.ph288:                                        ; preds = %bb.ax, %.lr.ph288
  %indvars.iv353 = phi i64 [ %indvars.iv.next354, %.lr.ph288 ], [ 0, %bb.ax ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0152.0.lcssa, i64 %indvars.iv353
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = load ptr, ptr %i.hu, align 8
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv353
  store ptr %i.hx, ptr %i.hz, align 8
  %indvars.iv.next354 = add i64 %indvars.iv353, 1 ; 2 uses
  %i.ia = and i64 %indvars.iv.next354, 4294967295
  %i.ib = icmp ugt i64 %i.q, %i.ia
  br i1 %i.ib, label %.lr.ph288, label %.loopexit.thread, !llvm.loop !120

.loopexit:                                        ; preds = %bb.ax, %._crit_edge283
  %.not.i.i.i = icmp eq ptr %.sroa.0152.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph288, %.loopexit
  %i.ic = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.id = sub i64 %i.ic, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.0.lcssa, i64 noundef %i.id) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.az:                                            ; preds = %.loopexit182, %.loopexit.split-lp, %bb.av, %bb.aa, %bb.z, %bb.ay
  %.sroa.20.3 = phi ptr [ %.sroa.20.0.lcssa, %bb.ay ], [ %.sroa.20.0277, %bb.z ], [ %.sroa.20.4, %bb.aa ], [ %.sroa.20.4, %bb.av ], [ %.sroa.20.0277.lcssa, %.loopexit182 ], [ %.sroa.12.0279, %.loopexit.split-lp ]
  %.sroa.0152.3 = phi ptr [ %.sroa.0152.0.lcssa, %bb.ay ], [ %.sroa.0152.0280, %bb.z ], [ %.sroa.0152.4, %bb.aa ], [ %.sroa.0152.4, %bb.av ], [ %.sroa.0152.0280, %.loopexit182 ], [ %.sroa.0152.0280, %.loopexit.split-lp ] ; 3 uses
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %i.hv, %bb.ay ], [ %i.et, %bb.z ], [ %lpad.phi187, %bb.aa ], [ %.pn84, %bb.av ], [ %lpad.loopexit, %.loopexit182 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i111 = icmp eq ptr %.sroa.0152.3, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112, label %.thread169

.thread169:                                       ; preds = %bb.az
  %i.ie = ptrtoint ptr %.sroa.20.3 to i64
  %i.if = ptrtoint ptr %.sroa.0152.3 to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.3, i64 noundef %i.ig) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112:        ; preds = %bb.az, %.thread169
  resume { ptr, i32 } %.pn84.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter9AddMeshesEPKNS_3ASE8BaseNodeEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 9 uses
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
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph78, %bb.i
  %i.aj = phi ptr [ %i.ac, %.lr.ph78 ], [ %i.dj, %bb.i ] ; 2 uses
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
  %.04867 = phi ptr [ %i.ca, %.lr.ph69 ], [ %i.bb, %bb.g ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04867, i64 8
  %4 = load <3 x float>, ptr %.04867, align 4     ; 5 uses
  %i.bh = load float, ptr %.04867, align 4
  %i.bi = load <8 x float>, ptr %3, align 4       ; 4 uses
  %5 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = shufflevector <8 x float> %i.bi, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bk = fmul <2 x float> %5, %i.bj
  %i.bl = shufflevector <8 x float> %i.bi, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bm = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bm, <2 x float> %i.bk)
  %i.bo = shufflevector <8 x float> %i.bi, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %6 = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %6, <2 x float> %i.bn)
  %i.bq = shufflevector <8 x float> %i.bi, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.br = fadd <2 x float> %i.bp, %i.bq
  %i.bs = load float, ptr %i.af, align 4
  %i.bt = load float, ptr %i.ag, align 4
  %7 = extractelement <3 x float> %4, i64 1
  %i.bu = fmul float %7, %i.bt
  %i.bv = call float @llvm.fmuladd.f32(float %i.bs, float %i.bh, float %i.bu)
  %i.bw = load float, ptr %i.ah, align 4
  %8 = extractelement <3 x float> %4, i64 2
  %i.bx = call float @llvm.fmuladd.f32(float %i.bw, float %8, float %i.bv)
  %i.by = load float, ptr %i.ai, align 4
  %i.bz = fadd float %i.by, %i.bx
  store <2 x float> %i.br, ptr %.04867, align 4
  store float %i.bz, ptr %i.bg, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.04867, i64 12 ; 2 uses
  %.not51 = icmp eq ptr %i.ca, %i.bf
  br i1 %.not51, label %._crit_edge70, label %.lr.ph69, !llvm.loop !124

._crit_edge70:                                    ; preds = %.lr.ph69, %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %.not52 = icmp eq ptr %i.cc, null
  br i1 %.not52, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge70
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  %i.ce = load float, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %i.ch = load float, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  %i.cj = load <2 x float>, ptr %i.ay, align 8
  %i.ck = load <2 x float>, ptr %i.cf, align 8
  %i.cl = load <2 x float>, ptr %i.ci, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  %i.cn = load float, ptr %i.cm, align 8
  %i.co = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %.idx81 = mul nuw nsw i64 %i.cp, 12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx81
  %.not5371 = icmp eq i32 %i.co, 0
  br i1 %.not5371, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.h, %.lr.ph74
  %.14972 = phi ptr [ %i.di, %.lr.ph74 ], [ %i.cc, %bb.h ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.14972, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.14972, i64 8 ; 2 uses
  %i.ct = load float, ptr %i.cr, align 4          ; 2 uses
  %i.cu = load float, ptr %.14972, align 4        ; 2 uses
  %i.cv = load float, ptr %i.cs, align 4          ; 2 uses
  %i.cw = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.ck, %i.cx
  %i.cz = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.da, <2 x float> %i.cy)
  %i.dc = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.dd, <2 x float> %i.db)
  %i.df = fmul float %i.ch, %i.ct
  %i.dg = call float @llvm.fmuladd.f32(float %i.ce, float %i.cu, float %i.df)
  %i.dh = call float @llvm.fmuladd.f32(float %i.cn, float %i.cv, float %i.dg)
  store <2 x float> %i.de, ptr %.14972, align 4
  store float %i.dh, ptr %i.cs, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.14972, i64 12 ; 2 uses
  %.not53 = icmp eq ptr %i.di, %i.cq
  br i1 %.not53, label %.loopexit, label %.lr.ph74, !llvm.loop !125

.loopexit:                                        ; preds = %.lr.ph74, %bb.h, %._crit_edge70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.pre86 = load ptr, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %i.dj = phi ptr [ %.pre86, %.loopexit ], [ %i.aj, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %i.au, %.loopexit ], [ %.04775, %bb.f ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = zext i32 %i.dl to i64
  %i.dn = icmp samesign ult i64 %indvars.iv.next84, %i.dm
  br i1 %i.dn, label %bb.f, label %.loopexit64, !llvm.loop !126

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
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 7 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 4 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.y = fneg <4 x float> %i.x                    ; 4 uses
  %i.z = extractelement <4 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0  ; 7 uses
  %i.ab = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.ac = fneg float %i.ab                        ; 4 uses
  %i.ad = extractelement <4 x float> %i.y, i64 3  ; 3 uses
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
  %i.de = fdiv float 1.000000e+00, %i.dc          ; 3 uses
end_hunk_0
