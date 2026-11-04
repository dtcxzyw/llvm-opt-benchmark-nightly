Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/haloexchangesetup?download=true
inline.NumInlined: 706
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3gmx12HaloExchange26checkDomainRangeAllocationERK12gmx_domdec_tRKNS_11BasicVectorIiEE:bb.a
  %i.bz = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bv, <8 x i1> %i.br, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi = mul <8 x i32> %vec.phi, %i.bw        ; 2 uses
  %predphi213 = mul <8 x i32> %vec.phi198, %i.bx  ; 2 uses
  %predphi214 = mul <8 x i32> %vec.phi199, %i.by  ; 2 uses
  %predphi215 = mul <8 x i32> %vec.phi200, %i.bz  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i32> %predphi213, %predphi
  %bin.rdx216 = mul <8 x i32> %predphi214, %bin.rdx
  %bin.rdx217 = mul <8 x i32> %predphi215, %bin.rdx216
  %i.cb = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %bin.rdx217) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.cb, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec218 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.cc = insertelement <8 x i32> <i32 poison, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index219 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next226, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi220 = phi <8 x i32> [ %i.cc, %vec.epilog.ph ], [ %predphi225, %vec.epilog.vector.body ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index219
  %wide.load221 = load <8 x i32>, ptr %i.cd, align 4, !tbaa !120
  %i.ce = sext <8 x i32> %wide.load221 to <8 x i64>
  %wide.gep222 = getelementptr inbounds nuw [4 x i8], ptr %i.bc, <8 x i64> %i.ce
  %wide.masked.gather223 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %i.cf = icmp sgt <8 x i32> %wide.masked.gather223, zeroinitializer
  %i.cg = getelementptr [4 x i8], ptr %i.j, i64 %index219
  %i.ch = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.cg, <8 x i1> %i.cf, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi225 = mul <8 x i32> %vec.phi220, %i.ch  ; 2 uses
  %index.next226 = add nuw i64 %index219, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next226, %n.vec218
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !254

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cj = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %predphi225) ; 2 uses
  %cmp.n227 = icmp eq i64 %n.vec218, %wide.trip.count
  br i1 %cmp.n227, label %.preheader, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv140.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec218, %vec.epilog.middle.block ]
  %.074122.ph = phi i32 [ 1, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  br label %.lr.ph124

.preheader:                                       ; preds = %bb.f, %vec.epilog.middle.block, %middle.block
  %.175.lcssa = phi i32 [ %i.cj, %vec.epilog.middle.block ], [ %i.cb, %middle.block ], [ %.175, %bb.f ] ; 2 uses
  %i.ck = icmp sgt i32 %.175.lcssa, 0
  br i1 %i.ck, label %.lr.ph134.preheader, label %._crit_edge135

.lr.ph134.preheader:                              ; preds = %bb.d, %.preheader
  %.074.lcssa181 = phi i32 [ %.175.lcssa, %.preheader ], [ 1, %bb.d ]
  br label %.lr.ph134

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %bb.f
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %bb.f ], [ %indvars.iv140.ph, %.lr.ph124.preheader ] ; 3 uses
  %.074122 = phi i32 [ %.175, %bb.f ], [ %.074122.ph, %.lr.ph124.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv140
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !120
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !120
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph124
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv140
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !120
  %i.ct = mul nsw i32 %i.cs, %.074122
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph124, %bb.e
  %.175 = phi i32 [ %i.ct, %bb.e ], [ %.074122, %.lr.ph124 ] ; 2 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph124, !llvm.loop !255

._crit_edge135.loopexit:                          ; preds = %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit
  %.pre156 = load i32, ptr %i.a, align 4, !tbaa !120
  %.pre157 = load i32, ptr %i.ab, align 8, !tbaa !125
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge135.loopexit, %.preheader
  %i.cu = phi i32 [ %.pre157, %._crit_edge135.loopexit ], [ %i.ba, %.preheader ] ; 2 uses
  %i.cv = phi i32 [ %.pre156, %._crit_edge135.loopexit ], [ %storemerge136, %.preheader ]
  %i.cw = add nsw i32 %i.cv, 1                    ; 3 uses
  store i32 %i.cw, ptr %i.a, align 4, !tbaa !120
  %i.cx = icmp slt i32 %i.cw, %i.cu
  br i1 %i.cx, label %bb.d, label %._crit_edge139, !llvm.loop !256

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit
  %.077133 = phi i32 [ %i.hq, %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit ], [ 0, %.lr.ph134.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 0, ptr %4, align 16, !tbaa !120
  store i32 0, ptr %i.ag, align 4, !tbaa !120
  store i32 0, ptr %i.ah, align 8, !tbaa !120
  %i.cy = load i32, ptr %i.g, align 8, !tbaa !119 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph130.preheader, label %._crit_edge131

.lr.ph130.preheader:                              ; preds = %.lr.ph134
  %i.da = zext nneg i32 %i.cy to i64              ; 3 uses
  %xtraiter = and i64 %i.da, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol

.lr.ph130.prol:                                   ; preds = %.lr.ph130.preheader, %bb.h
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %bb.h ], [ %i.da, %.lr.ph130.preheader ]
  %.078127.prol = phi i32 [ %.179.prol, %bb.h ], [ %.077133, %.lr.ph130.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.h ], [ 0, %.lr.ph130.preheader ]
  %indvars.iv.next144.prol = add nsw i64 %indvars.iv143.prol, -1 ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.prol
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !120
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !120
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph130.prol
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.prol
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !120 ; 2 uses
  %i.dj = srem i32 %.078127.prol, %i.di
  %i.dk = add nsw i32 %i.dj, 1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dd
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !120
  %i.dm = sdiv i32 %.078127.prol, %i.di
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph130.prol
  %.179.prol = phi i32 [ %i.dm, %bb.g ], [ %.078127.prol, %.lr.ph130.prol ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol, !llvm.loop !257

.lr.ph130.prol.loopexit:                          ; preds = %bb.h, %.lr.ph130.preheader
  %indvars.iv143.unr = phi i64 [ %i.da, %.lr.ph130.preheader ], [ %indvars.iv.next144.prol, %bb.h ]
  %.078127.unr = phi i32 [ %.077133, %.lr.ph130.preheader ], [ %.179.prol, %bb.h ]
  %i.dn = icmp ult i32 %i.cy, 4
  br i1 %i.dn, label %._crit_edge131.loopexit, label %.lr.ph130

._crit_edge131.loopexit:                          ; preds = %bb.n, %.lr.ph130.prol.loopexit
  %i.do = load <3 x i32>, ptr %4, align 16, !tbaa !120
  %i.dp = shufflevector <3 x i32> %i.do, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %._crit_edge131.loopexit, %.lr.ph134
  %i.dq = phi <4 x i32> [ %i.dp, %._crit_edge131.loopexit ], [ zeroinitializer, %.lr.ph134 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.dr = load <3 x i32>, ptr %i.ai, align 4, !tbaa !120 ; 2 uses
  %i.ds = shufflevector <3 x i32> %i.dr, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.dt = load <3 x i32>, ptr %i.ak, align 4, !tbaa !120 ; 2 uses
  %i.du = shufflevector <3 x i32> %i.dt, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.dv = sub <4 x i32> %i.ds, %i.dq
  %i.dw = add nsw <4 x i32> %i.ds, %i.dq
  %i.dx = shufflevector <4 x i32> %i.dv, <4 x i32> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dy = add nsw <4 x i32> %i.dx, %i.du
  %i.dz = srem <4 x i32> %i.dy, %i.du             ; 3 uses
  %.sroa.0.sroa.0.0.insert.insert.i.v.bc = bitcast <4 x i32> %i.dz to <2 x i64>
  %.sroa.0.sroa.0.0.insert.insert.i.v.extract = extractelement <2 x i64> %.sroa.0.sroa.0.0.insert.insert.i.v.bc, i64 0
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.v.extract, ptr %5, align 8
  %i.ea = extractelement <4 x i32> %i.dz, i64 2
  store i32 %i.ea, ptr %.sroa.217.0..sroa_idx, align 8
  %i.eb = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ec = shufflevector <3 x i32> %i.dr, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ed = add nsw <2 x i32> %i.eb, %i.ec
  %i.ee = shufflevector <3 x i32> %i.dt, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ef = add nsw <2 x i32> %i.ed, %i.ee
  %i.eg = srem <2 x i32> %i.ef, %i.ee             ; 2 uses
  %i.eh = extractelement <2 x i32> %i.eg, i64 0
  %.sroa.0.sroa.4.0.insert.ext.i97 = zext i32 %i.eh to i64
  %.sroa.0.sroa.4.0.insert.shift.i98 = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext.i97, 32
  %i.ei = extractelement <4 x i32> %i.dz, i64 3
  %.sroa.0.sroa.0.0.insert.ext.i99 = zext i32 %i.ei to i64
  %.sroa.0.sroa.0.0.insert.insert.i100 = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift.i98, %.sroa.0.sroa.0.0.insert.ext.i99
  store i64 %.sroa.0.sroa.0.0.insert.insert.i100, ptr %6, align 8
  %i.ej = extractelement <2 x i32> %i.eg, i64 1
  store i32 %i.ej, ptr %.sroa.29.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ek = call noundef i32 @_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 4 dereferenceable(12) %5)
  store i32 %i.ek, ptr %i.b, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.el = call noundef i32 @_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 4 dereferenceable(12) %6)
  store i32 %i.el, ptr %i.c, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.em = load i32, ptr %i.ah, align 8, !tbaa !120 ; 3 uses
  %i.en = load <2 x i32>, ptr %i.ai, align 4, !tbaa !120
  %i.eo = load <2 x i32>, ptr %4, align 16, !tbaa !120 ; 3 uses
  %i.ep = sub nsw <2 x i32> %i.en, %i.eo
  %i.eq = load <2 x i32>, ptr %5, align 8
  %i.er = icmp eq <2 x i32> %i.eq, %i.ep          ; 3 uses
  %7 = extractelement <2 x i1> %i.er, i64 0
  %8 = extractelement <2 x i1> %i.er, i64 1
  %or.cond = select i1 %7, i1 %8, i1 false
  %.pre154 = load i32, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !120 ; 2 uses
  br i1 %or.cond, label %bb.i, label %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge

._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge: ; preds = %._crit_edge131
  %.pre155 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !120
  %.pre158 = sub nsw i32 %.pre155, %i.em
  br label %_ZNK3gmx11BasicVectorIiEneERKS1_.exit

bb.i:                                             ; preds = %._crit_edge131
  %i.es = load i32, ptr %i.aj, align 4, !tbaa !120
  %i.et = sub nsw i32 %i.es, %i.em                ; 2 uses
  %i.eu = icmp ne i32 %.pre154, %i.et
  %i.ev = zext i1 %i.eu to i8
  br label %_ZNK3gmx11BasicVectorIiEneERKS1_.exit

_ZNK3gmx11BasicVectorIiEneERKS1_.exit:            ; preds = %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge, %bb.i
  %.pre-phi = phi i32 [ %.pre158, %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge ], [ %i.et, %bb.i ]
  %i.ew = phi i8 [ 1, %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge ], [ %i.ev, %bb.i ] ; 2 uses
  store i8 %i.ew, ptr %i.d, align 1, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.ex = xor <2 x i1> %i.er, splat (i1 true)
  %i.ey = zext <2 x i1> %i.ex to <2 x i32>
  store <2 x i32> %i.ey, ptr %i.e, align 8, !tbaa !120
  %.not82.2 = icmp ne i32 %.pre154, %.pre-phi
  %i.ez = zext i1 %.not82.2 to i32
  store i32 %i.ez, ptr %i.ap, align 8, !tbaa !120
  %i.fa = load ptr, ptr @debug, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %i.fa, null
  br i1 %.not, label %bb.p, label %bb.o

.lr.ph130:                                        ; preds = %.lr.ph130.prol.loopexit, %bb.n
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %bb.n ], [ %indvars.iv143.unr, %.lr.ph130.prol.loopexit ] ; 5 uses
  %.078127 = phi i32 [ %.179.3, %bb.n ], [ %.078127.unr, %.lr.ph130.prol.loopexit ] ; 3 uses
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !120
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !120
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %bb.j, label %.lr.ph130.1

bb.j:                                             ; preds = %.lr.ph130
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !120 ; 2 uses
  %i.fj = srem i32 %.078127, %i.fi
  %i.fk = add nsw i32 %i.fj, 1
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fd
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !120
  %i.fm = sdiv i32 %.078127, %i.fi
  br label %.lr.ph130.1

.lr.ph130.1:                                      ; preds = %.lr.ph130, %bb.j
  %.179 = phi i32 [ %i.fm, %bb.j ], [ %.078127, %.lr.ph130 ] ; 3 uses
  %indvars.iv.next144.1 = add nsw i64 %indvars.iv143, -2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.1
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !120
  %i.fp = sext i32 %i.fo to i64                   ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !120
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %bb.k, label %.lr.ph130.2

bb.k:                                             ; preds = %.lr.ph130.1
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.1
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !120 ; 2 uses
  %i.fv = srem i32 %.179, %i.fu
  %i.fw = add nsw i32 %i.fv, 1
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fp
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !120
  %i.fy = sdiv i32 %.179, %i.fu
  br label %.lr.ph130.2

.lr.ph130.2:                                      ; preds = %bb.k, %.lr.ph130.1
  %.179.1 = phi i32 [ %i.fy, %bb.k ], [ %.179, %.lr.ph130.1 ] ; 3 uses
  %indvars.iv.next144.2 = add nsw i64 %indvars.iv143, -3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.2
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !120
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !120
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %bb.l, label %.lr.ph130.3

bb.l:                                             ; preds = %.lr.ph130.2
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.2
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !120 ; 2 uses
  %i.gh = srem i32 %.179.1, %i.gg
  %i.gi = add nsw i32 %i.gh, 1
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gb
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !120
  %i.gk = sdiv i32 %.179.1, %i.gg
  br label %.lr.ph130.3

.lr.ph130.3:                                      ; preds = %bb.l, %.lr.ph130.2
  %.179.2 = phi i32 [ %i.gk, %bb.l ], [ %.179.1, %.lr.ph130.2 ] ; 3 uses
  %indvars.iv.next144.3 = add nsw i64 %indvars.iv143, -4 ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.3
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !120
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !120
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph130.3
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.3
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !120 ; 2 uses
  %i.gt = srem i32 %.179.2, %i.gs
  %i.gu = add nsw i32 %i.gt, 1
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gn
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !120
  %i.gw = sdiv i32 %.179.2, %i.gs
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph130.3
  %.179.3 = phi i32 [ %i.gw, %bb.m ], [ %.179.2, %.lr.ph130.3 ]
  %i.gx = icmp sgt i64 %indvars.iv143, 4
  br i1 %i.gx, label %.lr.ph130, label %._crit_edge131.loopexit, !llvm.loop !258

bb.o:                                             ; preds = %_ZNK3gmx11BasicVectorIiEneERKS1_.exit
  %i.gy = load i32, ptr %i.a, align 4, !tbaa !120
  %i.gz = zext nneg i8 %i.ew to i32
  %i.ha = extractelement <2 x i32> %i.eo, i64 0
  %i.hb = extractelement <2 x i32> %i.eo, i64 1
  %i.hc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.fa, ptr noundef nonnull @.str, i32 noundef %i.gy, i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef %i.em, i32 noundef %i.gz) #13 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK3gmx11BasicVectorIiEneERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.hd = load ptr, ptr %i.al, align 8, !tbaa !260 ; 2 uses
  store ptr %i.hd, ptr %i.f, align 8, !tbaa !134
  %i.he = load ptr, ptr %i.am, align 8, !tbaa !126 ; 3 uses
  %i.hf = load ptr, ptr %i.an, align 8, !tbaa !135
  %.not.i109 = icmp eq ptr %i.he, %i.hf
  br i1 %.not.i109, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.hg = load i32, ptr %i.b, align 4, !tbaa !120
  %i.hh = load i32, ptr %i.c, align 4, !tbaa !120
  %i.hi = load i32, ptr %i.a, align 4, !tbaa !120
  %i.hj = load i32, ptr %0, align 8, !tbaa !137
  %i.hk = load i8, ptr %i.d, align 1, !tbaa !131, !range !138, !noundef !139
  %i.hl = trunc nuw i8 %i.hk to i1
  %i.hm = load <2 x i32>, ptr %i.e, align 8, !tbaa !120
  store <2 x i32> %i.hm, ptr %3, align 8, !tbaa !120
  %i.hn = load i32, ptr %i.ap, align 8, !tbaa !120
  store i32 %i.hn, ptr %i.ao, align 8, !tbaa !120
  call void @_ZN3gmx14DomainPairCommC1EiiiRKNS_11BasicVectorIiEE7PbcTypebS2_P10tmpi_comm_(ptr noundef nonnull align 8 dereferenceable(240) %i.he, i32 noundef %i.hg, i32 noundef %i.hh, i32 noundef %i.hi, ptr noundef nonnull align 4 dereferenceable(12) %4, i32 noundef %i.hj, i1 noundef zeroext %i.hl, ptr noundef nonnull byval(%"class.gmx::BasicVector") align 8 %3, ptr noundef %i.hd)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ho = load ptr, ptr %i.am, align 8, !tbaa !126
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 240
  store ptr %i.hp, ptr %i.am, align 8, !tbaa !126
  br label %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit

bb.r:                                             ; preds = %bb.p
  call void @_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE17_M_realloc_insertIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.he, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit

_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.hq = add nuw nsw i32 %.077133, 1             ; 2 uses
  %exitcond150.not = icmp eq i32 %i.hq, %.074.lcssa181
  br i1 %exitcond150.not, label %._crit_edge135.loopexit, label %.lr.ph134, !llvm.loop !259

bb.s:                                             ; preds = %._crit_edge139
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12HaloExchange26checkDomainRangeAllocationERK12gmx_domdec_tRKNS_11BasicVectorIiEEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 328) #20
  unreachable

bb.t:                                             ; preds = %._crit_edge139
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %sext = shl i64 %i.aw, 32
  %i.hs = ashr exact i64 %sext, 32                ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !142 ; 2 uses
  %i.hv = load ptr, ptr %i.hr, align 8, !tbaa !143 ; 2 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 5                 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %i.hs
  br i1 %i.ia, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ib = sub nuw nsw i64 %i.hs, %i.hz
  call void @_ZNSt6vectorI12tmpi_status_SaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %i.ib)
  br label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit

bb.v:                                             ; preds = %bb.t
  %i.ic = icmp ugt i64 %i.hz, %i.hs
  br i1 %i.ic, label %bb.w, label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit

bb.w:                                             ; preds = %bb.v
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.hv, i64 %i.hs ; 2 uses
  %.not.i.i = icmp eq ptr %i.hu, %i.id
  br i1 %.not.i.i, label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP12tmpi_status_S0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP12tmpi_status_S0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.w
  store ptr %i.id, ptr %i.ht, align 8, !tbaa !142
  br label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit

_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit: ; preds = %bb.a, %_ZSt8_DestroyIP12tmpi_status_S0_EvT_S2_RSaIT0_E.exit.i.i, %bb.w, %bb.v, %bb.u, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1
end_hunk_0
