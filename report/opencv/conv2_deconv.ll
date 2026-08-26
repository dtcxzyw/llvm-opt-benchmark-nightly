Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_deconv?download=true
inline.NumInlined: 138
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS3_PvRKNS1_9ConvStateES3_PKfS9_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !35
  store i32 %i.bo, ptr %i.f, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.bp = load i32, ptr %i.ae, align 4, !tbaa !36 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %_ZNK2cv8MatShapeixEm.exit90, label %bb.w

bb.w:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %22)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.6, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.y
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !31
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit90:                      ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !35
  store i32 %i.bz, ptr %i.g, align 4, !tbaa !35
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 132
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !38 ; 2 uses
  store i32 %i.cd, ptr %i.h, align 4, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.cg = sdiv i32 %i.cd, %i.cf
  store i32 %i.cg, ptr %i.i, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.ch = sdiv i32 %i.cb, %i.cf
  store i32 %i.ch, ptr %i.j, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.ci = load i32, ptr %i.ap, align 8, !tbaa !36 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZNK2cv8MatShapeixEm.exit96, label %bb.z

bb.z:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.6, i32 noundef 103) #17
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93: ; preds = %bb.ab
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit96:                      ; preds = %_ZNK2cv8MatShapeixEm.exit90
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !35
  store i32 %i.cr, ptr %i.k, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  %.not = icmp eq i32 %i.ci, 2
  br i1 %.not, label %bb.ac, label %_ZNK2cv8MatShapeixEm.exit102

bb.ac:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit96
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.6, i32 noundef 103) #17
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %bb.ae
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !31
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit102:                     ; preds = %_ZNK2cv8MatShapeixEm.exit96
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !35 ; 4 uses
  store i32 %i.cz, ptr %i.l, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  %i.da = icmp samesign ugt i32 %i.ci, 3
  br i1 %i.da, label %_ZNK2cv8MatShapeixEm.exit108, label %bb.af

bb.af:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.6, i32 noundef 103) #17
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105: ; preds = %bb.ah
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit108:                     ; preds = %_ZNK2cv8MatShapeixEm.exit102
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !35
  store i32 %i.di, ptr %i.m, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i32 1, ptr %i.n, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  store i32 1, ptr %i.o, align 4, !tbaa !35
  %i.dj = icmp sgt i32 %.fr, 0
  br i1 %i.dj, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNK2cv8MatShapeixEm.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  store i32 1, ptr %i.q, align 4, !tbaa !35
  store i32 1, ptr %i.p, align 4, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 1, ptr %i.dk, align 4, !tbaa !35
  %i.dl = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 1, ptr %i.dl, align 4, !tbaa !35
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.dm, align 4, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.dn, align 4, !tbaa !35
  br label %._crit_edge153

.lr.ph.preheader:                                 ; preds = %_ZNK2cv8MatShapeixEm.exit108
  %i.do = add nsw i32 %i.bd, -2
  %wide.trip.count = zext nneg i32 %i.do to i64   ; 2 uses
  %i.dp = add nsw i32 %i.bp, -2
  %wide.trip.count166 = zext i32 %i.dp to i64     ; 5 uses
  %wide.trip.count168 = zext nneg i32 %.fr to i64 ; 5 uses
  %i.dq = add nsw i64 %wide.trip.count168, -1
  %i.dr = tail call i64 @llvm.umin.i64(i64 %wide.trip.count166, i64 %wide.trip.count)
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 %i.dr) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ds, 8
  br i1 %min.iters.check, label %.lr.ph.preheader309, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %i.du = and i64 %i.dt, 7                        ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = select i1 %i.dv, i64 8, i64 %i.du
  %n.vec = sub nsw i64 %i.dt, %i.dw               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ea, %vector.body ]
  %vec.phi288 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.eb, %vector.body ]
  %vec.phi289 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi290 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ef, %vector.body ]
  %i.dx = or disjoint i64 %index, 2               ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load = load <4 x i32>, ptr %i.dy, align 4, !tbaa !35
  %wide.load291 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !35
  %i.ea = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.eb = mul <4 x i32> %wide.load291, %vec.phi288 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dx ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load292 = load <4 x i32>, ptr %i.ec, align 8, !tbaa !35
  %wide.load293 = load <4 x i32>, ptr %i.ed, align 8, !tbaa !35
  %i.ee = mul <4 x i32> %wide.load292, %vec.phi289 ; 2 uses
  %i.ef = mul <4 x i32> %wide.load293, %vec.phi290 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.eb, %i.ea
  %i.eh = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx294 = mul <4 x i32> %i.ef, %i.ee
  %i.ei = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx294) ; 2 uses
  store i32 %i.eh, ptr %i.n, align 4, !tbaa !35
  store i32 %i.ei, ptr %i.o, align 4, !tbaa !35
  br label %.lr.ph.preheader309

.lr.ph.preheader309:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi i32 [ 1, %.lr.ph.preheader ], [ %i.eh, %middle.block ]
  %.ph310 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.ei, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader309, %_ZNK2cv8MatShapeixEm.exit120
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit120 ], [ %indvars.iv.ph, %.lr.ph.preheader309 ] ; 4 uses
  %i.ej = phi i32 [ %i.eu, %_ZNK2cv8MatShapeixEm.exit120 ], [ %.ph, %.lr.ph.preheader309 ]
  %i.ek = phi i32 [ %i.fd, %_ZNK2cv8MatShapeixEm.exit120 ], [ %.ph310, %.lr.ph.preheader309 ]
  %i.el = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.ai, label %_ZNK2cv8MatShapeixEm.exit114

bb.ai:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.6, i32 noundef 103) #17
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111: ; preds = %bb.ak
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !31
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i112: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit114:                     ; preds = %.lr.ph
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.el
  %i.et = load i32, ptr %i.es, align 4, !tbaa !35
  %i.eu = mul nsw i32 %i.et, %i.ej                ; 2 uses
  store i32 %i.eu, ptr %i.n, align 4, !tbaa !35
  %exitcond167.not = icmp eq i64 %indvars.iv, %wide.trip.count166
  br i1 %exitcond167.not, label %bb.al, label %_ZNK2cv8MatShapeixEm.exit120

bb.al:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.6, i32 noundef 103) #17
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117: ; preds = %bb.an
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !31
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit120:                     ; preds = %_ZNK2cv8MatShapeixEm.exit114
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.el
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !35
  %i.fd = mul nsw i32 %i.fc, %i.ek                ; 2 uses
  store i32 %i.fd, ptr %i.o, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next, %wide.trip.count168
  br i1 %exitcond169.not, label %.lr.ph152, label %.lr.ph, !llvm.loop !44

.lr.ph152:                                        ; preds = %_ZNK2cv8MatShapeixEm.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  store i32 1, ptr %i.q, align 4, !tbaa !35
  store i32 1, ptr %i.p, align 4, !tbaa !35
  %i.fe = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 1, ptr %i.fe, align 4, !tbaa !35
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 1, ptr %i.ff, align 4, !tbaa !35
  %i.fg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.fg, align 4, !tbaa !35
  %i.fh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.fh, align 4, !tbaa !35
  %34 = add nsw i64 %wide.trip.count168, -1
  %i.fi = tail call i64 @llvm.umin.i64(i64 %34, i64 %wide.trip.count166) ; 2 uses
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check297 = icmp samesign ult i64 %i.fi, 8
  br i1 %min.iters.check297, label %scalar.ph296.preheader, label %vector.scevcheck

scalar.ph296.preheader:                           ; preds = %vector.body300, %vector.scevcheck, %.lr.ph152
  %indvars.iv174.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph152 ], [ %n.vec299, %vector.body300 ]
  %invariant.op318 = sub i32 3, %.fr
  br label %scalar.ph296

vector.scevcheck:                                 ; preds = %.lr.ph152
  %35 = add nsw i64 %wide.trip.count168, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %35, i64 %wide.trip.count166)
  %i.fk = sub nsw i32 3, %.fr                     ; 2 uses
  %i.fl = trunc nuw i64 %umin to i32
  %i.fm = add i32 %i.fk, %i.fl
  %i.fn = icmp slt i32 %i.fm, %i.fk
  br i1 %i.fn, label %scalar.ph296.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %vector.scevcheck
  %i.fo = and i64 %i.fj, 7                        ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = select i1 %i.fp, i64 8, i64 %i.fo
  %n.vec299 = sub nsw i64 %i.fj, %i.fq            ; 2 uses
  %invariant.op = sub i32 3, %.fr
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next306, %vector.body300 ] ; 3 uses
  %i.fr = or disjoint i64 %index301, 2            ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load302 = load <4 x i32>, ptr %i.fs, align 8, !tbaa !35
  %wide.load303 = load <4 x i32>, ptr %i.ft, align 8, !tbaa !35
  %i.fu = trunc i64 %index301 to i32
  %.reass317 = add i32 %i.fu, %invariant.op
  %i.fv = sext i32 %.reass317 to i64              ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <4 x i32> %wide.load302, ptr %i.fw, align 4, !tbaa !35
  store <4 x i32> %wide.load303, ptr %i.fx, align 4, !tbaa !35
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.fr ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %wide.load304 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !35
  %wide.load305 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !35
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.fv ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %wide.load304, ptr %i.ga, align 4, !tbaa !35
  store <4 x i32> %wide.load305, ptr %i.gb, align 4, !tbaa !35
  %index.next306 = add nuw i64 %index301, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next306, %n.vec299
  br i1 %i.gc, label %scalar.ph296.preheader, label %vector.body300, !llvm.loop !45

._crit_edge153:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit127, %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  %i.gd = sext i32 %i.cz to i64                   ; 3 uses
  %i.ge = icmp slt i32 %i.cz, 0
  br i1 %i.ge, label %bb.ao, label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.ao:                                            ; preds = %._crit_edge153
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.ao
  unreachable

_ZNSt6vectorISt5arrayIiLm3EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.gf = mul nuw nsw i64 %i.gd, 12
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #19
          to label %.noexc121 unwind label %bb.ax ; 7 uses

.noexc121:                                        ; preds = %bb.ap
  store ptr %i.gg, ptr %31, align 8, !tbaa !46
  %i.gh = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %i.gd
  %i.gi = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gg, i8 0, i64 12, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 12 ; 3 uses
  %i.gk = add nsw i64 %i.gd, -1                   ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %.noexc121
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.gk, 12
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.aq
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.gj, %bb.aq ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.gg, i64 12, i1 false), !tbaa.struct !50
  %i.gn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gn, %i.gm
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !51

scalar.ph296:                                     ; preds = %scalar.ph296.preheader, %_ZNK2cv8MatShapeixEm.exit127
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %_ZNK2cv8MatShapeixEm.exit127 ], [ %indvars.iv174.ph, %scalar.ph296.preheader ] ; 4 uses
  %exitcond179.not = icmp eq i64 %indvars.iv174, %wide.trip.count166
  br i1 %exitcond179.not, label %bb.ar, label %_ZNK2cv8MatShapeixEm.exit127

bb.ar:                                            ; preds = %scalar.ph296
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.6, i32 noundef 103) #17
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.go = landingpad { ptr, i32 }
          cleanup
  %i.gp = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124: ; preds = %bb.at
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !31
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i125: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit127:                     ; preds = %scalar.ph296
  %i.gu = add nuw nsw i64 %indvars.iv174, 2       ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !35
  %i.gx = trunc i64 %indvars.iv174 to i32
  %.reass.reass.reass = add i32 %i.gx, %invariant.op318
  %i.gy = sext i32 %.reass.reass.reass to i64     ; 2 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.gy
  store i32 %i.gw, ptr %i.gz, align 4, !tbaa !35
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.gu
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !35
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.gy
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !35
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count168
  br i1 %exitcond184.not, label %._crit_edge153, label %scalar.ph296, !llvm.loop !52

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc121
  %i.hd = phi ptr [ null, %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.gg, %.noexc121 ], [ %i.gg, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.gj, %.noexc121 ], [ %i.gm, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.he, align 8, !tbaa !53
  %i.hf = load i32, ptr %i.l, align 4, !tbaa !35  ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %.loopexit
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.hi = load i32, ptr %i.c, align 4, !tbaa !35  ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph161.split.preheader, label %._crit_edge162

.lr.ph161.split.preheader:                        ; preds = %.lr.ph161
  %i.hk = zext nneg i32 %i.hf to i64
  %i.hl = zext nneg i32 %i.hi to i64              ; 2 uses
  %invariant.op319 = sub i64 2, %i.hl
  br label %.lr.ph157

._crit_edge162:                                   ; preds = %._crit_edge158, %.lr.ph161, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  store ptr %4, ptr %i.r, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #16
  store ptr %6, ptr %i.s, align 8, !tbaa !54
  %i.hm = load i32, ptr %i.g, align 4, !tbaa !35
  %i.hn = mul nsw i32 %i.hm, %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  store i32 0, ptr %32, align 4, !tbaa !55
  %i.ho = getelementptr inbounds nuw i8, ptr %32, i64 4
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !57
  %i.hp = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, i8 0, i64 32, i1 false)
  %i.hq = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #19
          to label %bb.az unwind label %bb.au     ; 23 uses

bb.au:                                            ; preds = %._crit_edge162
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = load ptr, ptr %i.hp, align 8, !tbaa !58 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i, label %.body, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ht = invoke noundef zeroext i1 %i.hs(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 3)
          to label %.body unwind label %bb.aw     ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #20
  unreachable

bb.ax:                                            ; preds = %bb.ap, %bb.ao
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit143

.lr.ph157:                                        ; preds = %._crit_edge158, %.lr.ph161.split.preheader
  %indvars.iv185 = phi i64 [ 0, %.lr.ph161.split.preheader ], [ %indvars.iv.next186, %._crit_edge158 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [12 x i8], ptr %i.hd, i64 %indvars.iv185
end_hunk_0
