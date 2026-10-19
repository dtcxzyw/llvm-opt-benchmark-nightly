Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/corner?download=true
inline.NumInlined: 159
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cvL19cornerEigenValsVecsERKNS_3MatERS0_iiidi:bb.a
bb.g:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #12
  br i1 %i.c, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 0, ptr %i.x, align 4, !tbaa !31
  store i32 16842752, ptr %19, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %0, ptr %i.y, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  %i.z = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.aa, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !32
  store ptr %17, ptr %i.z, align 8, !tbaa !11
  invoke void @_ZN2cv5SobelERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef %3, double noundef %i.n, double noundef 0.000000e+00, i32 noundef %6)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !31
  store i32 16842752, ptr %21, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %0, ptr %i.ad, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.af, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !32
  store ptr %18, ptr %i.ae, align 8, !tbaa !11
  invoke void @_ZN2cv5SobelERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef 5, i32 noundef 0, i32 noundef 1, i32 noundef %3, double noundef %i.n, double noundef 0.000000e+00, i32 noundef %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  br label %.body

bb.l:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  br label %.body

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.aj, align 4, !tbaa !31
  store i32 16842752, ptr %23, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %0, ptr %i.ak, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #12
  %i.al = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.am, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !32
  store ptr %17, ptr %i.al, align 8, !tbaa !11
  invoke void @_ZN2cv6ScharrERKNS_11_InputArrayERKNS_12_OutputArrayEiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 5, i32 noundef 1, i32 noundef 0, double noundef %i.n, double noundef 0.000000e+00, i32 noundef %6)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #12
  %i.an = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.ao, align 4, !tbaa !31
  store i32 16842752, ptr %25, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #12
  %i.aq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.ar, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !32
  store ptr %18, ptr %i.aq, align 8, !tbaa !11
  invoke void @_ZN2cv6ScharrERKNS_11_InputArrayERKNS_12_OutputArrayEiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 5, i32 noundef 0, i32 noundef 1, double noundef %i.n, double noundef 0.000000e+00, i32 noundef %6)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #12
  br label %.body

bb.q:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  br label %.body

bb.r:                                             ; preds = %bb.o, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load i32, ptr %i.au, align 8, !tbaa !14 ; 6 uses
  %i.aw = icmp slt i32 %i.av, 3
  br i1 %i.aw, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.7, i32 noundef 109) #13
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc
  unreachable

bb.u:                                             ; preds = %.noexc
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !20
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.bd = icmp sgt i32 %i.av, 0
  br i1 %i.bd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bf = icmp eq i32 %i.av, 2
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !21
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bj = icmp eq i32 %i.av, 0
  %i.bk = zext i1 %i.bj to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bl = phi i32 [ %i.bi, %bb.w ], [ %i.bk, %bb.x ] ; 3 uses
  %i.bm = icmp eq i32 %i.av, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp sgt i32 %i.av, -1
  %i.bq = zext i1 %i.bp to i32
  %i.br = select i1 %i.bm, i32 %i.bo, i32 %i.bq   ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.br to i64 ; 3 uses
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bl to i64 ; 8 uses
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #12
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %27, i64 %.sroa.0.0.insert.insert.i, i32 noundef 69)
          to label %.preheader unwind label %bb.aa

.preheader:                                       ; preds = %bb.y
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph157, label %._crit_edge158.split

.lr.ph157:                                        ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !34 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !33 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !34 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !33 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !34 ; 3 uses
  %i.cf = icmp sgt i32 %i.bl, 0
  br i1 %i.cf, label %.lr.ph.preheader, label %._crit_edge158.split

.lr.ph.preheader:                                 ; preds = %.lr.ph157
  %i.cg = add nsw i64 %.sroa.2.0.insert.ext.i, -1 ; 3 uses
  %i.ch = mul i64 %i.bw, %i.cg
  %i.ci = mul nuw nsw i64 %.sroa.0.0.insert.ext.i, 12
  %i.cj = getelementptr i8, ptr %i.bu, i64 %i.ch
  %scevgep = getelementptr i8, ptr %i.cj, i64 %i.ci ; 2 uses
  %i.ck = mul i64 %i.ca, %i.cg
  %i.cl = shl nuw nsw i64 %.sroa.0.0.insert.ext.i, 2 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.by, i64 %i.ck
  %scevgep196 = getelementptr i8, ptr %i.cm, i64 %i.cl
  %i.cn = mul i64 %i.ce, %i.cg
  %i.co = getelementptr i8, ptr %i.cc, i64 %i.cn
  %scevgep197 = getelementptr i8, ptr %i.co, i64 %i.cl
  %min.iters.check = icmp ult i32 %i.bl, 4
  %bound0 = icmp ult ptr %i.bu, %scevgep196
  %bound1 = icmp ult ptr %i.by, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cp = or i64 %i.ca, %i.bw
  %i.cq = icmp slt i64 %i.cp, 0
  %i.cr = or i1 %found.conflict, %i.cq
  %bound0199 = icmp ult ptr %i.bu, %scevgep197
  %bound1200 = icmp ult ptr %i.cc, %scevgep
  %found.conflict201 = and i1 %bound0199, %bound1200
  %i.cs = icmp slt i64 %i.ce, 0
  %i.ct = or i1 %found.conflict201, %i.cs
  %conflict.rdx = or i1 %i.cr, %i.ct
  %n.vec = and i64 %.sroa.0.0.insert.ext.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %.sroa.0.0.insert.ext.i
  %xtraiter = and i64 %.sroa.0.0.insert.ext.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cu = add nsw i64 %.sroa.0.0.insert.ext.i, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.cv = mul i64 %i.bw, %indvars.iv162
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cv ; 4 uses
  %i.cx = mul i64 %i.ca, %indvars.iv162
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cx ; 4 uses
  %i.cz = mul i64 %i.ce, %indvars.iv162
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cz ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index
  %wide.load = load <4 x float>, ptr %i.db, align 4, !tbaa !36, !alias.scope !63 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index
  %wide.load204 = load <4 x float>, ptr %i.dc, align 4, !tbaa !36, !alias.scope !64 ; 3 uses
  %i.dd = mul nuw nsw i64 %index, 12
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dd
  %i.df = fmul <4 x float> %wide.load204, %wide.load204
  %i.dg = shufflevector <4 x float> %wide.load, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dh = shufflevector <4 x float> %wide.load, <4 x float> %wide.load204, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.di = fmul <8 x float> %i.dg, %i.dh
  %i.dj = shufflevector <4 x float> %i.df, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.di, <8 x float> %i.dj, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.de, align 4, !tbaa !36, !alias.scope !65, !noalias !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.ph
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !36 ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.ph
  %i.do = load float, ptr %i.dn, align 4, !tbaa !36 ; 3 uses
  %i.dp = fmul float %i.dm, %i.dm
  %.idx.prol = mul nuw nsw i64 %indvars.iv.ph, 12
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.prol ; 3 uses
  store float %i.dp, ptr %i.dq, align 4, !tbaa !36
  %i.dr = fmul float %i.dm, %i.do
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store float %i.dr, ptr %i.ds, align 4, !tbaa !36
  %i.dt = fmul float %i.do, %i.do
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store float %i.dt, ptr %i.du, align 4, !tbaa !36
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dv = icmp eq i64 %indvars.iv.ph, %i.cu
  br i1 %i.dv, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !36 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !36 ; 3 uses
  %i.ea = fmul float %i.dx, %i.dx
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx ; 3 uses
  store float %i.ea, ptr %i.eb, align 4, !tbaa !36
  %i.ec = fmul float %i.dx, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store float %i.ec, ptr %i.ed, align 4, !tbaa !36
  %i.ee = fmul float %i.dz, %i.dz
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store float %i.ee, ptr %i.ef, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !36 ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !36 ; 3 uses
  %i.ek = fmul float %i.eh, %i.eh
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 12
  %i.el = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.1 ; 3 uses
  store float %i.ek, ptr %i.el, align 4, !tbaa !36
  %i.em = fmul float %i.eh, %i.ej
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store float %i.em, ptr %i.en, align 4, !tbaa !36
  %i.eo = fmul float %i.ej, %i.ej
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store float %i.eo, ptr %i.ep, align 4, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %.sroa.0.0.insert.ext.i
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !51

bb.z:                                             ; preds = %bb.s
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.y
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %.sroa.2.0.insert.ext.i
  br i1 %exitcond166.not, label %._crit_edge158.split, label %.lr.ph, !llvm.loop !52

._crit_edge158.split:                             ; preds = %._crit_edge, %.lr.ph157, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #12
  %i.es = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 0, ptr %i.es, align 8, !tbaa !30
  %i.et = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 0, ptr %i.et, align 4, !tbaa !31
  store i32 16842752, ptr %28, align 8, !tbaa !32
  %i.eu = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %27, ptr %i.eu, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #12
  %i.ev = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 0, ptr %i.ew, align 8
  store i32 33619968, ptr %29, align 8, !tbaa !32
  store ptr %27, ptr %i.ev, align 8, !tbaa !11
  %i.ex = load i32, ptr %27, align 8, !tbaa !29
  %i.ey = and i32 %i.ex, 31
  %.sroa.2145.0.insert.ext = zext i32 %2 to i64
  %.sroa.0144.0.insert.insert = mul nuw i64 %.sroa.2145.0.insert.ext, 4294967297
  invoke void @_ZN2cv9boxFilterERKNS_11_InputArrayERKNS_12_OutputArrayEiNS_5Size_IiEENS_6Point_IiEEbi(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef %i.ey, i64 %.sroa.0144.0.insert.insert, i64 -1, i1 noundef zeroext false, i32 noundef %6)
          to label %bb.ab unwind label %bb.al

bb.ab:                                            ; preds = %._crit_edge158.split
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #12
  %i.ez = getelementptr inbounds nuw i8, ptr %27, i64 72
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !14 ; 16 uses
  %i.fb = icmp slt i32 %i.fa, 3                   ; 3 uses
  switch i32 %4, label %bb.av [
    i32 0, label %bb.ac
    i32 1, label %bb.an
  ]

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.fb, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc106 unwind label %bb.am

.noexc106:                                        ; preds = %bb.ad
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.7, i32 noundef 109) #13
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc106
  unreachable

bb.af:                                            ; preds = %.noexc106
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.af
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !20
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %.body107

bb.ag:                                            ; preds = %bb.ac
  %i.fi = icmp sgt i32 %i.fa, 0
  br i1 %i.fi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fj = icmp eq i32 %i.fa, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fj, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %27, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.fk = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !21
  br label %_ZNK2cv8MatShapeclEv.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.fl = icmp eq i32 %i.fa, 0
end_hunk_0
begin_hunk_1_@_ZN2cv15preCornerDetectERKNS_11_InputArrayERKNS_12_OutputArrayEii:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.av, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !32
  store ptr %12, ptr %i.au, align 8, !tbaa !11
  invoke void @_ZN2cv5SobelERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef 5, i32 noundef 0, i32 noundef 1, i32 noundef %2, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef %3)
          to label %bb.x unwind label %bb.al

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #12
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.aw, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.ax, align 4, !tbaa !31
  store i32 16842752, ptr %22, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %16, ptr %i.ay, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #12
  %i.az = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.ba, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !32
  store ptr %13, ptr %i.az, align 8, !tbaa !11
  invoke void @_ZN2cv5SobelERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, i32 noundef 5, i32 noundef 2, i32 noundef 0, i32 noundef %2, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef %3)
          to label %bb.y unwind label %bb.am

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #12
  %i.bb = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i32 0, ptr %i.bc, align 4, !tbaa !31
  store i32 16842752, ptr %24, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %16, ptr %i.bd, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #12
  %i.be = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 0, ptr %i.bf, align 8
  store i32 33619968, ptr %25, align 8, !tbaa !32
  store ptr %14, ptr %i.be, align 8, !tbaa !11
  invoke void @_ZN2cv5SobelERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, i32 noundef 5, i32 noundef 0, i32 noundef 2, i32 noundef %2, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef %3)
          to label %bb.z unwind label %bb.an

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #12
  %i.bg = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i32 0, ptr %i.bh, align 4, !tbaa !31
  store i32 16842752, ptr %26, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %16, ptr %i.bi, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #12
  %i.bj = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.bk, align 8
  store i32 33619968, ptr %27, align 8, !tbaa !32
  store ptr %15, ptr %i.bj, align 8, !tbaa !11
  invoke void @_ZN2cv5SobelERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef %2, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef %3)
          to label %bb.aa unwind label %bb.ao

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  %i.bl = add nsw i32 %2, -1
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = sitofp i32 %i.bm to double              ; 2 uses
  %i.bo = load i32, ptr %16, align 8, !tbaa !29
  %i.bp = and i32 %i.bo, 31
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = fmul nnan double %i.bn, 2.550000e+02
  %.055 = select i1 %i.bq, double %i.br, double %i.bn ; 3 uses
  %i.bs = fmul double %.055, %.055
  %i.bt = fmul double %.055, %i.bs
  %i.bu = fdiv double 1.000000e+00, %i.bt         ; 2 uses
  %i.bv = load i32, ptr %i.n, align 8, !tbaa !14  ; 6 uses
  %i.bw = icmp slt i32 %i.bv, 3
  br i1 %i.bw, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc108 unwind label %bb.aq

.noexc108:                                        ; preds = %bb.ab
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.7, i32 noundef 109) #13
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.noexc108
  unreachable

bb.ad:                                            ; preds = %.noexc108
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101: ; preds = %bb.ad
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i102: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.body109

bb.ae:                                            ; preds = %bb.aa
  %i.cd = icmp sgt i32 %i.bv, 0
  br i1 %i.cd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ce = icmp eq i32 %i.bv, 2
  %.sroa.gep113 = getelementptr inbounds nuw i8, ptr %16, i64 88
  %.sroa.gep113.val = load i32, ptr %.sroa.gep113, align 8
  %.val = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.cf = select i1 %i.ce, i32 %.sroa.gep113.val, i32 %.val
  br label %bb.ap

bb.ag:                                            ; preds = %bb.ae
  %i.cg = icmp eq i32 %i.bv, 0
  %i.ch = zext i1 %i.cg to i32
  %.pre = load i32, ptr %i.ad, align 4
  br label %bb.ap

bb.ah:                                            ; preds = %bb.k, %bb.j, %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ai:                                            ; preds = %bb.l, %bb.r
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.u, %bb.t, %bb.s
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ak:                                            ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  br label %.body109

bb.al:                                            ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  br label %.body109

bb.am:                                            ; preds = %bb.x
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  br label %.body109

bb.an:                                            ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #12
  br label %.body109

bb.ao:                                            ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  br label %.body109

bb.ap:                                            ; preds = %bb.ag, %bb.af
  %i.cq = phi i32 [ %.val, %bb.af ], [ %.pre, %bb.ag ]
  %i.cr = phi i32 [ %i.cf, %bb.af ], [ %i.ch, %bb.ag ] ; 3 uses
  %i.cs = icmp eq i32 %i.bv, 2
  %i.ct = icmp sgt i32 %i.bv, -1
  %i.cu = zext i1 %i.ct to i32
  %i.cv = select i1 %i.cs, i32 %i.cq, i32 %i.cu   ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph119, label %._crit_edge120.split

.lr.ph119:                                        ; preds = %bb.ap
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !33 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !34 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !33 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !34 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !33 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !34 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !33 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !34 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !33 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !34 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !33 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !34 ; 3 uses
  %i.dv = icmp sgt i32 %i.cr, 0
  br i1 %i.dv, label %.lr.ph.preheader, label %._crit_edge120.split

.lr.ph.preheader:                                 ; preds = %.lr.ph119
  %wide.trip.count125 = zext nneg i32 %i.cv to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cr to i64   ; 4 uses
  %i.dw = add nsw i64 %wide.trip.count125, -1     ; 6 uses
  %i.dx = mul i64 %i.da, %i.dw
  %i.dy = shl nuw nsw i64 %wide.trip.count, 2     ; 6 uses
  %i.dz = getelementptr i8, ptr %i.cy, i64 %i.dx
  %scevgep = getelementptr i8, ptr %i.dz, i64 %i.dy ; 2 uses
  %i.ea = mul i64 %i.de, %i.dw
  %i.eb = getelementptr i8, ptr %i.dc, i64 %i.ea
  %scevgep137 = getelementptr i8, ptr %i.eb, i64 %i.dy
  %i.ec = mul i64 %i.di, %i.dw
  %i.ed = getelementptr i8, ptr %i.dg, i64 %i.ec
  %scevgep138 = getelementptr i8, ptr %i.ed, i64 %i.dy
  %i.ee = mul i64 %i.dq, %i.dw
  %i.ef = getelementptr i8, ptr %i.do, i64 %i.ee
  %scevgep139 = getelementptr i8, ptr %i.ef, i64 %i.dy
  %i.eg = mul i64 %i.dm, %i.dw
  %i.eh = getelementptr i8, ptr %i.dk, i64 %i.eg
  %scevgep140 = getelementptr i8, ptr %i.eh, i64 %i.dy
  %i.ei = mul i64 %i.du, %i.dw
  %i.ej = getelementptr i8, ptr %i.ds, i64 %i.ei
  %scevgep141 = getelementptr i8, ptr %i.ej, i64 %i.dy
  %i.ek = insertelement <4 x ptr> poison, ptr %i.cy, i64 0
  %i.el = shufflevector <4 x ptr> %i.ek, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.em = insertelement <4 x ptr> poison, ptr %scevgep137, i64 0
  %i.en = insertelement <4 x ptr> %i.em, ptr %scevgep138, i64 1
  %i.eo = insertelement <4 x ptr> %i.en, ptr %scevgep139, i64 2
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %scevgep140, i64 3
  %i.eq = insertelement <4 x ptr> poison, ptr %i.dc, i64 0
  %i.er = insertelement <4 x ptr> %i.eq, ptr %i.dg, i64 1
  %i.es = insertelement <4 x ptr> %i.er, ptr %i.do, i64 2
  %i.et = insertelement <4 x ptr> %i.es, ptr %i.dk, i64 3
  %i.eu = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.ev = shufflevector <4 x ptr> %i.eu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.cr, 8
  %i.ew = icmp ult <4 x ptr> %i.el, %i.ep
  %i.ex = icmp ult <4 x ptr> %i.et, %i.ev
  %i.ey = or i64 %i.de, %i.da
  %i.ez = and <4 x i1> %i.ew, %i.ex
  %bound0160 = icmp ult ptr %i.cy, %scevgep141
  %bound1161 = icmp ult ptr %i.ds, %scevgep
  %found.conflict162 = and i1 %bound0160, %bound1161
  %i.fa = bitcast <4 x i1> %i.ez to i4
  %i.fb = icmp ne i4 %i.fa, 0
  %i.fc = or i64 %i.dm, %i.du
  %op.rdx167 = icmp slt i64 %i.fc, 0
  %28 = or i64 %i.dq, %i.ey
  %i.fd = or i64 %28, %i.di
  %i.fe = icmp slt i64 %i.fd, 0
  %op.rdx172 = or i1 %i.fb, %i.fe
  %op.rdx173 = or i1 %op.rdx167, %found.conflict162
  %op.rdx174 = or i1 %op.rdx172, %op.rdx173
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.bu, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv122 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next123, %._crit_edge ] ; 7 uses
  %i.ff = mul i64 %i.da, %indvars.iv122
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.ff ; 2 uses
  %i.fh = mul i64 %i.de, %indvars.iv122
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fh ; 2 uses
  %i.fj = mul i64 %i.di, %indvars.iv122
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.fj ; 2 uses
  %i.fl = mul i64 %i.dm, %indvars.iv122
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fl ; 2 uses
  %i.fn = mul i64 %i.dq, %indvars.iv122
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fn ; 2 uses
  %i.fp = mul i64 %i.du, %indvars.iv122
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.fp ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx174
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 7 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index
  %wide.load = load <4 x float>, ptr %i.fr, align 4, !tbaa !36, !alias.scope !99 ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %index
  %wide.load166 = load <4 x float>, ptr %i.fs, align 4, !tbaa !36, !alias.scope !100 ; 3 uses
  %i.ft = fmul <4 x float> %wide.load, %wide.load
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index
  %wide.load167 = load <4 x float>, ptr %i.fu, align 4, !tbaa !36, !alias.scope !101
  %i.fv = fmul <4 x float> %wide.load166, %wide.load166
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %index
  %wide.load168 = load <4 x float>, ptr %i.fw, align 4, !tbaa !36, !alias.scope !102
  %i.fx = fmul <4 x float> %i.fv, %wide.load168
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ft, <4 x float> %wide.load167, <4 x float> %i.fx)
  %i.fz = fmul <4 x float> %wide.load, splat (float 2.000000e+00)
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %index
  %wide.load169 = load <4 x float>, ptr %i.ga, align 4, !tbaa !36, !alias.scope !103
  %i.gb = fneg <4 x float> %wide.load166
  %i.gc = fmul <4 x float> %i.fz, %i.gb
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %wide.load169, <4 x float> %i.fy)
  %i.ge = fpext <4 x float> %i.gd to <4 x double>
  %i.gf = fmul <4 x double> %broadcast.splat, %i.ge
  %i.gg = fptrunc <4 x double> %i.gf to <4 x float>
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %index
  store <4 x float> %i.gg, ptr %i.gh, align 4, !tbaa !36, !alias.scope !104, !noalias !105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !36 ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !36 ; 3 uses
  %i.gn = fmul float %i.gk, %i.gk
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv
  %i.gp = load float, ptr %i.go, align 4, !tbaa !36
  %i.gq = fmul float %i.gm, %i.gm
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !36
  %i.gt = fmul float %i.gq, %i.gs
  %i.gu = call float @llvm.fmuladd.f32(float %i.gn, float %i.gp, float %i.gt)
  %i.gv = fmul float %i.gk, 2.000000e+00
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !36
  %i.gy = fneg float %i.gm
  %i.gz = fmul float %i.gv, %i.gy
  %i.ha = call float @llvm.fmuladd.f32(float %i.gz, float %i.gx, float %i.gu)
  %i.hb = fpext float %i.ha to double
  %i.hc = fmul double %i.bu, %i.hb
  %i.hd = fptrunc double %i.hc to float
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv
  store float %i.hd, ptr %i.he, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !95

bb.aq:                                            ; preds = %bb.ab
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body109

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge120.split, label %.lr.ph, !llvm.loop !96

._crit_edge120.split:                             ; preds = %._crit_edge, %.lr.ph119, %bb.ap
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !24
  %.not.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge120.split
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #15
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge120.split, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void

.body109:                                         ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i102, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.pn88 = phi { ptr, i32 } [ %i.cl, %bb.ak ], [ %i.cp, %bb.ao ], [ %i.co, %bb.an ], [ %i.cn, %bb.am ], [ %i.cm, %bb.al ], [ %i.hf, %bb.aq ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i102 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #12
  br label %bb.at

bb.at:                                            ; preds = %.body109, %bb.aj
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %.body109 ], [ %i.ck, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  br label %.body

.body:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.at
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %bb.at ], [ %i.cj, %bb.ai ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #12
  br label %bb.au

bb.au:                                            ; preds = %.body, %bb.ah
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %.body ], [ %i.ci, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn88.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn, %bb.au ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.b, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %.pn88.pn.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !106
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.d, ptr %i.a, align 8, !tbaa !34
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %i.g = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.g, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i
end_hunk_1
