Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seam_finders?download=true
inline.NumInlined: 2970
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail18GraphCutSeamFinder4Impl4findERKSt6vectorINS_4UMatESaIS4_EERKS3_INS_6Point_IiEESaISA_EERS6_:bb.a
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.body

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store i32 0, ptr %i.ap, align 8, !tbaa !77
  store i32 0, ptr %i.aq, align 4, !tbaa !78
  store i32 17432576, ptr %12, align 8, !tbaa !75
  store ptr %i.be, ptr %i.ar, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store i64 0, ptr %i.at, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !75
  store ptr %8, ptr %i.as, align 8, !tbaa !76
  invoke void @_ZN2cv5SobelERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 3, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 4)
          to label %bb.o unwind label %bb.af

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.bp = load ptr, ptr %1, align 8, !tbaa !39
  %i.bq = getelementptr inbounds nuw [184 x i8], ptr %i.bp, i64 %.04686
  store i32 0, ptr %i.au, align 8, !tbaa !77
  store i32 0, ptr %i.av, align 4, !tbaa !78
  store i32 17432576, ptr %14, align 8, !tbaa !75
  store ptr %i.bq, ptr %i.aw, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store i64 0, ptr %i.ay, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !75
  store ptr %9, ptr %i.ax, align 8, !tbaa !76
  invoke void @_ZN2cv5SobelERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 5, i32 noundef 0, i32 noundef 1, i32 noundef 3, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 4)
          to label %bb.p unwind label %bb.ag

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.bs = getelementptr inbounds nuw [208 x i8], ptr %i.br, i64 %.04686
  %i.bt = load ptr, ptr %1, align 8, !tbaa !39
  %i.bu = getelementptr inbounds nuw [184 x i8], ptr %i.bt, i64 %.04686 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !52 ; 6 uses
  %i.bx = icmp slt i32 %i.bw, 3
  br i1 %i.bx, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.22, i32 noundef 109) #29
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc
  unreachable

bb.s:                                             ; preds = %.noexc
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !30
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.body

bb.t:                                             ; preds = %bb.p
  %i.ce = icmp sgt i32 %i.bw, 0
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 60
  %i.cg = icmp eq i32 %i.bw, 2
  %i.ch = zext i1 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !48
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ck = icmp eq i32 %i.bw, 0
  %i.cl = zext i1 %i.ck to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cm = phi i32 [ %i.cj, %bb.u ], [ %i.cl, %bb.v ]
  %i.cn = icmp eq i32 %i.bw, 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 60
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp sgt i32 %i.bw, -1
  %i.cr = zext i1 %i.cq to i32
  %i.cs = select i1 %i.cn, i32 %i.cp, i32 %i.cr
  %.sroa.2.0.insert.ext.i = zext i32 %i.cs to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.cm to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.bs, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.ct = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.cu = getelementptr inbounds nuw [208 x i8], ptr %i.ct, i64 %.04686
  %i.cv = load ptr, ptr %1, align 8, !tbaa !39
  %i.cw = getelementptr inbounds nuw [184 x i8], ptr %i.cv, i64 %.04686 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !52 ; 6 uses
  %i.cz = icmp slt i32 %i.cy, 3
  br i1 %i.cz, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc78:                                         ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.22, i32 noundef 109) #29
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.noexc78
  unreachable

bb.aa:                                            ; preds = %.noexc78
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.aa
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body

bb.ab:                                            ; preds = %bb.x
  %i.dg = icmp sgt i32 %i.cy, 0
  br i1 %i.dg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 60
  %i.di = icmp eq i32 %i.cy, 2
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !48
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dm = icmp eq i32 %i.cy, 0
  %i.dn = zext i1 %i.dm to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.do = phi i32 [ %i.dl, %bb.ac ], [ %i.dn, %bb.ad ]
  %i.dp = icmp eq i32 %i.cy, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 60
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = icmp sgt i32 %i.cy, -1
  %i.dt = zext i1 %i.ds to i32
  %i.du = select i1 %i.dp, i32 %i.dr, i32 %i.dt
  %.sroa.2.0.insert.ext.i74 = zext i32 %i.du to i64
  %.sroa.2.0.insert.shift.i75 = shl nuw i64 %.sroa.2.0.insert.ext.i74, 32
  %.sroa.0.0.insert.ext.i76 = zext i32 %i.do to i64
  %.sroa.0.0.insert.insert.i77 = or disjoint i64 %.sroa.2.0.insert.shift.i75, %.sroa.0.0.insert.ext.i76
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.cu, i64 %.sroa.0.0.insert.insert.i77, i32 noundef 5)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.ae
  %i.dv = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %i.dw = getelementptr inbounds nuw [184 x i8], ptr %i.dv, i64 %.04686 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !431 ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.ea = load ptr, ptr %i.az, align 8, !tbaa !64 ; 4 uses
  %i.eb = load i64, ptr %i.ba, align 8, !tbaa !34 ; 3 uses
  %i.ec = load ptr, ptr %i.bb, align 8, !tbaa !64 ; 4 uses
  %i.ed = load i64, ptr %i.bc, align 8, !tbaa !34 ; 3 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.ef = getelementptr inbounds nuw [208 x i8], ptr %i.ee, i64 %.04686 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !64 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 128
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !34 ; 3 uses
  %i.ek = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.el = getelementptr inbounds nuw [208 x i8], ptr %i.ek, i64 %.04686 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !64 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 128
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !34 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !432 ; 3 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %wide.trip.count94 = zext nneg i32 %i.dy to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.er to i64   ; 5 uses
  %i.et = add nsw i64 %wide.trip.count94, -1      ; 4 uses
  %i.eu = mul i64 %i.ej, %i.et
  %i.ev = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eh, i64 %i.eu
  %scevgep = getelementptr i8, ptr %i.ew, i64 %i.ev ; 3 uses
  %i.ex = mul i64 %i.ep, %i.et
  %i.ey = getelementptr i8, ptr %i.en, i64 %i.ex
  %scevgep118 = getelementptr i8, ptr %i.ey, i64 %i.ev ; 3 uses
  %i.ez = mul i64 %i.eb, %i.et
  %i.fa = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ea, i64 %i.ez
  %scevgep119 = getelementptr i8, ptr %i.fb, i64 %i.fa ; 2 uses
  %i.fc = mul i64 %i.ed, %i.et
  %i.fd = getelementptr i8, ptr %i.ec, i64 %i.fc
  %scevgep120 = getelementptr i8, ptr %i.fd, i64 %i.fa ; 2 uses
  %min.iters.check = icmp ult i32 %i.er, 8
  %bound0 = icmp ult ptr %i.eh, %scevgep118
  %bound1 = icmp ult ptr %i.en, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.fe = or i64 %i.ep, %i.ej
  %i.ff = icmp slt i64 %i.fe, 0
  %i.fg = or i1 %found.conflict, %i.ff
  %bound0122 = icmp ult ptr %i.eh, %scevgep119
  %bound1123 = icmp ult ptr %i.ea, %scevgep
  %found.conflict124 = and i1 %bound0122, %bound1123
  %i.fh = icmp slt i64 %i.eb, 0
  %i.fi = or i1 %found.conflict124, %i.fh
  %conflict.rdx = or i1 %i.fg, %i.fi
  %bound0127 = icmp ult ptr %i.eh, %scevgep120
  %bound1128 = icmp ult ptr %i.ec, %scevgep
  %found.conflict129 = and i1 %bound0127, %bound1128
  %i.fj = icmp slt i64 %i.ed, 0
  %i.fk = or i1 %found.conflict129, %i.fj
  %conflict.rdx132 = or i1 %conflict.rdx, %i.fk
  %bound0133 = icmp ult ptr %i.en, %scevgep119
  %bound1134 = icmp ult ptr %i.ea, %scevgep118
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx138.a = or i1 %conflict.rdx132, %found.conflict135
  %bound0139 = icmp ult ptr %i.en, %scevgep120
  %bound1140 = icmp ult ptr %i.ec, %scevgep118
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx144 = or i1 %conflict.rdx138.a, %found.conflict141
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

._crit_edge85.split:                              ; preds = %._crit_edge, %.lr.ph84, %.preheader
  %i.fl = add nuw i64 %.04686, 1                  ; 2 uses
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.dv to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = sdiv exact i64 %i.fp, 184
  %i.fr = icmp ult i64 %i.fl, %i.fq
  br i1 %i.fr, label %bb.h, label %._crit_edge88, !llvm.loop !419

bb.af:                                            ; preds = %bb.n
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.body

bb.ag:                                            ; preds = %bb.o
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next92, %._crit_edge ] ; 5 uses
  %i.fu = mul i64 %i.eb, %indvars.iv91
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fu ; 5 uses
  %i.fw = mul i64 %i.ed, %indvars.iv91
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.fw ; 5 uses
  %i.fy = mul i64 %i.ej, %indvars.iv91
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fy ; 2 uses
  %i.ga = mul i64 %i.ep, %indvars.iv91
  %i.gb = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ga ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx144
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 8 uses
  %i.gc = or disjoint i64 %index, 1               ; 2 uses
  %i.gd = or disjoint i64 %index, 2               ; 2 uses
  %i.ge = or disjoint i64 %index, 3               ; 2 uses
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %i.fv, i64 %index ; 3 uses
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %i.fv, i64 %i.gc ; 3 uses
  %i.gh = getelementptr inbounds nuw [12 x i8], ptr %i.fv, i64 %i.gd ; 3 uses
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %i.fv, i64 %i.ge ; 3 uses
  %i.gj = load float, ptr %i.gf, align 4, !tbaa !165, !alias.scope !433
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !165, !alias.scope !433
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !165, !alias.scope !433
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !165, !alias.scope !433
  %i.gn = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.go = insertelement <4 x float> %i.gn, float %i.gk, i64 1
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 2
  %i.gq = insertelement <4 x float> %i.gp, float %i.gm, i64 3 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gv = load float, ptr %i.gr, align 4, !tbaa !166, !alias.scope !433
  %i.gw = load float, ptr %i.gs, align 4, !tbaa !166, !alias.scope !433
  %i.gx = load float, ptr %i.gt, align 4, !tbaa !166, !alias.scope !433
  %i.gy = load float, ptr %i.gu, align 4, !tbaa !166, !alias.scope !433
  %i.gz = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 1
  %i.hb = insertelement <4 x float> %i.ha, float %i.gx, i64 2
  %i.hc = insertelement <4 x float> %i.hb, float %i.gy, i64 3 ; 2 uses
  %i.hd = fmul <4 x float> %i.hc, %i.hc
  %i.he = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gq, <4 x float> %i.hd)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.hj = load float, ptr %i.hf, align 4, !tbaa !167, !alias.scope !433
  %i.hk = load float, ptr %i.hg, align 4, !tbaa !167, !alias.scope !433
  %i.hl = load float, ptr %i.hh, align 4, !tbaa !167, !alias.scope !433
  %i.hm = load float, ptr %i.hi, align 4, !tbaa !167, !alias.scope !433
  %i.hn = insertelement <4 x float> poison, float %i.hj, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %i.hk, i64 1
  %i.hp = insertelement <4 x float> %i.ho, float %i.hl, i64 2
  %i.hq = insertelement <4 x float> %i.hp, float %i.hm, i64 3 ; 2 uses
  %i.hr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hq, <4 x float> %i.hq, <4 x float> %i.he)
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index
  store <4 x float> %i.hr, ptr %i.hs, align 4, !tbaa !156, !alias.scope !434, !noalias !435
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.fx, i64 %index ; 3 uses
  %i.hu = getelementptr inbounds nuw [12 x i8], ptr %i.fx, i64 %i.gc ; 3 uses
  %i.hv = getelementptr inbounds nuw [12 x i8], ptr %i.fx, i64 %i.gd ; 3 uses
  %i.hw = getelementptr inbounds nuw [12 x i8], ptr %i.fx, i64 %i.ge ; 3 uses
  %i.hx = load float, ptr %i.ht, align 4, !tbaa !165, !alias.scope !436
  %i.hy = load float, ptr %i.hu, align 4, !tbaa !165, !alias.scope !436
  %i.hz = load float, ptr %i.hv, align 4, !tbaa !165, !alias.scope !436
  %i.ia = load float, ptr %i.hw, align 4, !tbaa !165, !alias.scope !436
  %i.ib = insertelement <4 x float> poison, float %i.hx, i64 0
  %i.ic = insertelement <4 x float> %i.ib, float %i.hy, i64 1
  %i.id = insertelement <4 x float> %i.ic, float %i.hz, i64 2
  %i.ie = insertelement <4 x float> %i.id, float %i.ia, i64 3 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.ij = load float, ptr %i.if, align 4, !tbaa !166, !alias.scope !436
  %i.ik = load float, ptr %i.ig, align 4, !tbaa !166, !alias.scope !436
  %i.il = load float, ptr %i.ih, align 4, !tbaa !166, !alias.scope !436
  %i.im = load float, ptr %i.ii, align 4, !tbaa !166, !alias.scope !436
  %i.in = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.io = insertelement <4 x float> %i.in, float %i.ik, i64 1
  %i.ip = insertelement <4 x float> %i.io, float %i.il, i64 2
  %i.iq = insertelement <4 x float> %i.ip, float %i.im, i64 3 ; 2 uses
  %i.ir = fmul <4 x float> %i.iq, %i.iq
  %i.is = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.ie, <4 x float> %i.ir)
  %i.it = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ix = load float, ptr %i.it, align 4, !tbaa !167, !alias.scope !436
  %i.iy = load float, ptr %i.iu, align 4, !tbaa !167, !alias.scope !436
  %i.iz = load float, ptr %i.iv, align 4, !tbaa !167, !alias.scope !436
  %i.ja = load float, ptr %i.iw, align 4, !tbaa !167, !alias.scope !436
  %i.jb = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.jc = insertelement <4 x float> %i.jb, float %i.iy, i64 1
  %i.jd = insertelement <4 x float> %i.jc, float %i.iz, i64 2
  %i.je = insertelement <4 x float> %i.jd, float %i.ja, i64 3 ; 2 uses
  %i.jf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.je, <4 x float> %i.is)
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %index
  store <4 x float> %i.jf, ptr %i.jg, align 4, !tbaa !156, !alias.scope !437, !noalias !438
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !425

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge85.split, label %.lr.ph, !llvm.loop !426

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ji = getelementptr inbounds nuw [12 x i8], ptr %i.fv, i64 %indvars.iv ; 3 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !165 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !166 ; 2 uses
  %i.jm = fmul float %i.jl, %i.jl
  %i.jn = call float @llvm.fmuladd.f32(float %i.jj, float %i.jj, float %i.jm)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !167 ; 2 uses
  %i.jq = call noundef float @llvm.fmuladd.f32(float %i.jp, float %i.jp, float %i.jn)
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv
  store float %i.jq, ptr %i.jr, align 4, !tbaa !156
  %i.js = getelementptr inbounds nuw [12 x i8], ptr %i.fx, i64 %indvars.iv ; 3 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !165 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !166 ; 2 uses
  %i.jw = fmul float %i.jv, %i.jv
  %i.jx = call float @llvm.fmuladd.f32(float %i.jt, float %i.jt, float %i.jw)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !167 ; 2 uses
  %i.ka = call noundef float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.jx)
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv
  store float %i.ka, ptr %i.kb, align 4, !tbaa !156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !427

bb.ah:                                            ; preds = %._crit_edge88
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.af, %bb.ag
  %.pn62.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fs, %bb.af ], [ %i.ft, %bb.ag ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i72 ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %.pn62.pn
}

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail18GraphCutSeamFinder4Impl20setGraphWeightsColorERKNS_3MatES5_S5_S5_RNS0_7GCGraphIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(52) %5) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
end_hunk_0
