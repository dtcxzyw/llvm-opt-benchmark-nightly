Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/haloexchangesetup?download=true
inline.NumInlined: 706
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3gmx12HaloExchange26checkDomainRangeAllocationERK12gmx_domdec_tRKNS_11BasicVectorIiEE:bb.a
  %wide.trip.count = zext nneg i32 %i.bg to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.bg, 8
  br i1 %min.iters.check, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check197 = icmp ult i32 %i.bg, 32
  br i1 %min.iters.check197, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi198 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi213, %vector.body ]
  %vec.phi199 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi214, %vector.body ]
  %vec.phi200 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi215, %vector.body ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %wide.load = load <8 x i32>, ptr %i.bj, align 4, !tbaa !120
  %wide.load201 = load <8 x i32>, ptr %i.bk, align 4, !tbaa !120
  %wide.load202 = load <8 x i32>, ptr %i.bl, align 4, !tbaa !120
  %wide.load203 = load <8 x i32>, ptr %i.bm, align 4, !tbaa !120
  %i.bn = sext <8 x i32> %wide.load to <8 x i64>
  %i.bo = sext <8 x i32> %wide.load201 to <8 x i64>
  %i.bp = sext <8 x i32> %wide.load202 to <8 x i64>
  %i.bq = sext <8 x i32> %wide.load203 to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.bn
  %wide.gep204 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.bo
  %wide.gep205 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.bp
  %wide.gep206 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.bq
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather207 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep204, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather208 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep205, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather209 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep206, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %i.br = icmp sgt <8 x i32> %wide.masked.gather, zeroinitializer
  %i.bs = icmp sgt <8 x i32> %wide.masked.gather207, zeroinitializer
  %i.bt = icmp sgt <8 x i32> %wide.masked.gather208, zeroinitializer
  %i.bu = icmp sgt <8 x i32> %wide.masked.gather209, zeroinitializer
  %i.bv = getelementptr [4 x i8], ptr %i.j, i64 %index ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = getelementptr i8, ptr %i.bv, i64 64
  %i.by = getelementptr i8, ptr %i.bv, i64 96
  %i.bz = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bv, <8 x i1> %i.br, <8 x i32> splat (i32 1)), !tbaa !120
  %i.ca = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bw, <8 x i1> %i.bs, <8 x i32> splat (i32 1)), !tbaa !120
  %i.cb = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bx, <8 x i1> %i.bt, <8 x i32> splat (i32 1)), !tbaa !120
  %i.cc = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.by, <8 x i1> %i.bu, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi = mul <8 x i32> %vec.phi, %i.bz        ; 2 uses
  %predphi213 = mul <8 x i32> %vec.phi198, %i.ca  ; 2 uses
  %predphi214 = mul <8 x i32> %vec.phi199, %i.cb  ; 2 uses
  %predphi215 = mul <8 x i32> %vec.phi200, %i.cc  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i32> %predphi213, %predphi
  %bin.rdx216 = mul <8 x i32> %predphi214, %bin.rdx
  %bin.rdx217 = mul <8 x i32> %predphi215, %bin.rdx216
  %i.ce = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %bin.rdx217) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ce, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec218 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.cf = insertelement <8 x i32> <i32 poison, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index219 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next226, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi220 = phi <8 x i32> [ %i.cf, %vec.epilog.ph ], [ %predphi225, %vec.epilog.vector.body ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index219
  %wide.load221 = load <8 x i32>, ptr %i.cg, align 4, !tbaa !120
  %i.ch = sext <8 x i32> %wide.load221 to <8 x i64>
  %wide.gep222 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.ch
  %wide.masked.gather223 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %i.ci = icmp sgt <8 x i32> %wide.masked.gather223, zeroinitializer
  %i.cj = getelementptr [4 x i8], ptr %i.j, i64 %index219
  %i.ck = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.cj, <8 x i1> %i.ci, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi225 = mul <8 x i32> %vec.phi220, %i.ck  ; 2 uses
  %index.next226 = add nuw i64 %index219, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next226, %n.vec218
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !253

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cm = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %predphi225) ; 2 uses
  %cmp.n227 = icmp eq i64 %n.vec218, %wide.trip.count
  br i1 %cmp.n227, label %.preheader, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv140.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec218, %vec.epilog.middle.block ]
  %.074122.ph = phi i32 [ 1, %iter.check ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph124

.preheader:                                       ; preds = %bb.f, %vec.epilog.middle.block, %middle.block
  %.175.lcssa = phi i32 [ %i.cm, %vec.epilog.middle.block ], [ %i.ce, %middle.block ], [ %.175, %bb.f ] ; 2 uses
  %i.cn = icmp sgt i32 %.175.lcssa, 0
  br i1 %i.cn, label %.lr.ph134.preheader, label %._crit_edge135

.lr.ph134.preheader:                              ; preds = %bb.d, %.preheader
  %.074.lcssa181 = phi i32 [ %.175.lcssa, %.preheader ], [ 1, %bb.d ]
  br label %.lr.ph134

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %bb.f
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %bb.f ], [ %indvars.iv140.ph, %.lr.ph124.preheader ] ; 3 uses
  %.074122 = phi i32 [ %.175, %bb.f ], [ %.074122.ph, %.lr.ph124.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv140
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !120
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !120
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph124
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv140
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !120
  %i.cw = mul nsw i32 %i.cv, %.074122
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph124, %bb.e
  %.175 = phi i32 [ %i.cw, %bb.e ], [ %.074122, %.lr.ph124 ] ; 2 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph124, !llvm.loop !254

._crit_edge135.loopexit:                          ; preds = %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit
  %.pre156 = load i32, ptr %i.a, align 4, !tbaa !120
  %.pre157 = load i32, ptr %i.ab, align 8, !tbaa !125
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge135.loopexit, %.preheader
  %i.cx = phi i32 [ %.pre157, %._crit_edge135.loopexit ], [ %i.bd, %.preheader ] ; 2 uses
  %i.cy = phi i32 [ %.pre156, %._crit_edge135.loopexit ], [ %storemerge136, %.preheader ]
  %i.cz = add nsw i32 %i.cy, 1                    ; 3 uses
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !120
  %i.da = icmp slt i32 %i.cz, %i.cx
  br i1 %i.da, label %bb.d, label %._crit_edge139, !llvm.loop !255

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit
  %.077133 = phi i32 [ %i.hk, %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit ], [ 0, %.lr.ph134.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 0, ptr %4, align 8, !tbaa !120
  store i32 0, ptr %i.ag, align 4, !tbaa !120
  store i32 0, ptr %i.ah, align 8, !tbaa !120
  %i.db = load i32, ptr %i.g, align 8, !tbaa !119 ; 3 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph130.preheader, label %._crit_edge131

.lr.ph130.preheader:                              ; preds = %.lr.ph134
  %i.dd = zext nneg i32 %i.db to i64              ; 3 uses
  %xtraiter = and i64 %i.dd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol

.lr.ph130.prol:                                   ; preds = %.lr.ph130.preheader
  %indvars.iv.next144.prol = add nsw i64 %i.dd, -1 ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.prol
  %i.df = load i32, ptr %i.de, align 4, !tbaa !120
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !120
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.g, label %.lr.ph130.prol.loopexit

bb.g:                                             ; preds = %.lr.ph130.prol
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.prol
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !120 ; 2 uses
  %i.dm = srem i32 %.077133, %i.dl
  %i.dn = add nuw nsw i32 %i.dm, 1
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dg
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !120
  %i.dp = sdiv i32 %.077133, %i.dl
  br label %.lr.ph130.prol.loopexit

.lr.ph130.prol.loopexit:                          ; preds = %.lr.ph130.prol, %bb.g, %.lr.ph130.preheader
  %indvars.iv143.unr = phi i64 [ %i.dd, %.lr.ph130.preheader ], [ %indvars.iv.next144.prol, %bb.g ], [ %indvars.iv.next144.prol, %.lr.ph130.prol ]
  %.078127.unr = phi i32 [ %.077133, %.lr.ph130.preheader ], [ %i.dp, %bb.g ], [ %.077133, %.lr.ph130.prol ]
  %i.dq = icmp eq i32 %i.db, 1
  br i1 %i.dq, label %._crit_edge131.loopexit, label %.lr.ph130

._crit_edge131.loopexit:                          ; preds = %bb.k, %.lr.ph130.prol.loopexit
  %i.dr = load <2 x i32>, ptr %4, align 8, !tbaa !120
  %.pre153 = load i32, ptr %i.ah, align 8, !tbaa !120
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %._crit_edge131.loopexit, %.lr.ph134
  %i.ds = phi i32 [ %.pre153, %._crit_edge131.loopexit ], [ 0, %.lr.ph134 ] ; 2 uses
  %i.dt = phi <2 x i32> [ %i.dr, %._crit_edge131.loopexit ], [ zeroinitializer, %.lr.ph134 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %7 = load <1 x i32>, ptr %i.ai, align 4
  %8 = load <1 x i32>, ptr %i.aj, align 8
  %i.du = load i32, ptr %i.ak, align 4, !tbaa !120 ; 2 uses
  %9 = load <1 x i32>, ptr %i.al, align 4
  %10 = load <1 x i32>, ptr %i.am, align 8
  %11 = load <1 x i32>, ptr %i.an, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.dv = sub i32 %i.du, %i.ds
  %i.dw = add nsw i32 %i.ds, %i.du
  %i.dx = insertelement <2 x i32> poison, i32 %i.dv, i64 0
  %i.dy = insertelement <2 x i32> %i.dx, i32 %i.dw, i64 1
  %i.dz = shufflevector <1 x i32> %11, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = add nsw <2 x i32> %i.dy, %i.dz
  %i.eb = srem <2 x i32> %i.ea, %i.dz             ; 2 uses
  %i.ec = extractelement <2 x i32> %i.eb, i64 0
  store i32 %i.ec, ptr %.sroa.217.0..sroa_idx, align 8
  %i.ed = shufflevector <1 x i32> %7, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = shufflevector <2 x i32> %i.dt, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ef = sub <2 x i32> %i.ed, %i.ee
  %i.eg = add nsw <2 x i32> %i.ed, %i.ee
  %i.eh = shufflevector <2 x i32> %i.eg, <2 x i32> %i.ef, <2 x i32> <i32 0, i32 3>
  %i.ei = shufflevector <1 x i32> %8, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ej = shufflevector <2 x i32> %i.dt, <2 x i32> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ek = sub <2 x i32> %i.ei, %i.ej
  %i.el = add nsw <2 x i32> %i.ei, %i.ej
  %i.em = shufflevector <2 x i32> %i.el, <2 x i32> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.en = shufflevector <1 x i32> %9, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eo = add nsw <2 x i32> %i.eh, %i.en
  %i.ep = srem <2 x i32> %i.eo, %i.en
  %i.eq = shufflevector <1 x i32> %10, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.er = add nsw <2 x i32> %i.em, %i.eq
  %i.es = srem <2 x i32> %i.er, %i.eq
  %i.et = zext <2 x i32> %i.es to <2 x i64>
  %i.eu = shl nuw <2 x i64> %i.et, splat (i64 32)
  %i.ev = zext <2 x i32> %i.ep to <2 x i64>
  %i.ew = or disjoint <2 x i64> %i.eu, %i.ev      ; 2 uses
  %i.ex = extractelement <2 x i64> %i.ew, i64 1
  store i64 %i.ex, ptr %5, align 8
  %i.ey = extractelement <2 x i64> %i.ew, i64 0
  store i64 %i.ey, ptr %6, align 8
  %i.ez = extractelement <2 x i32> %i.eb, i64 1
  store i32 %i.ez, ptr %.sroa.29.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.fa = call noundef i32 @_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 4 dereferenceable(12) %5)
  store i32 %i.fa, ptr %i.b, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.fb = call noundef i32 @_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 4 dereferenceable(12) %6)
  store i32 %i.fb, ptr %i.c, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.fc = load i32, ptr %i.ah, align 8, !tbaa !120 ; 3 uses
  %i.fd = load <2 x i32>, ptr %i.ai, align 4, !tbaa !120
  %i.fe = load <2 x i32>, ptr %4, align 8, !tbaa !120 ; 3 uses
  %i.ff = sub nsw <2 x i32> %i.fd, %i.fe
  %i.fg = load <2 x i32>, ptr %5, align 8
  %i.fh = icmp eq <2 x i32> %i.fg, %i.ff          ; 3 uses
  %i.fi = extractelement <2 x i1> %i.fh, i64 0
  %i.fj = extractelement <2 x i1> %i.fh, i64 1
  %or.cond = select i1 %i.fi, i1 %i.fj, i1 false
  %.pre154 = load i32, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !120 ; 2 uses
  br i1 %or.cond, label %bb.h, label %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge

._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge: ; preds = %._crit_edge131
  %.pre155 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !120
  %.pre158 = sub nsw i32 %.pre155, %i.fc
  br label %_ZNK3gmx11BasicVectorIiEneERKS1_.exit

bb.h:                                             ; preds = %._crit_edge131
  %i.fk = load i32, ptr %i.ak, align 4, !tbaa !120
  %i.fl = sub nsw i32 %i.fk, %i.fc                ; 2 uses
  %i.fm = icmp ne i32 %.pre154, %i.fl
  %i.fn = zext i1 %i.fm to i8
  br label %_ZNK3gmx11BasicVectorIiEneERKS1_.exit

_ZNK3gmx11BasicVectorIiEneERKS1_.exit:            ; preds = %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge, %bb.h
  %.pre-phi = phi i32 [ %.pre158, %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge ], [ %i.fl, %bb.h ]
  %i.fo = phi i8 [ 1, %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge ], [ %i.fn, %bb.h ] ; 2 uses
  store i8 %i.fo, ptr %i.d, align 1, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.fp = xor <2 x i1> %i.fh, splat (i1 true)
  %i.fq = zext <2 x i1> %i.fp to <2 x i32>
  store <2 x i32> %i.fq, ptr %i.e, align 8, !tbaa !120
  %.not82.2 = icmp ne i32 %.pre154, %.pre-phi
  %i.fr = zext i1 %.not82.2 to i32
  store i32 %i.fr, ptr %i.as, align 8, !tbaa !120
  %i.fs = load ptr, ptr @debug, align 8, !tbaa !132 ; 2 uses
  %.not = icmp eq ptr %i.fs, null
  br i1 %.not, label %bb.m, label %bb.l

.lr.ph130:                                        ; preds = %.lr.ph130.prol.loopexit, %bb.k
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.1, %bb.k ], [ %indvars.iv143.unr, %.lr.ph130.prol.loopexit ] ; 3 uses
  %.078127 = phi i32 [ %.179.1, %bb.k ], [ %.078127.unr, %.lr.ph130.prol.loopexit ] ; 3 uses
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -1 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !120
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !120
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.i, label %.lr.ph130.1

bb.i:                                             ; preds = %.lr.ph130
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !120 ; 2 uses
  %i.gb = srem i32 %.078127, %i.ga
  %i.gc = add nsw i32 %i.gb, 1
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fv
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !120
  %i.ge = sdiv i32 %.078127, %i.ga
  br label %.lr.ph130.1

.lr.ph130.1:                                      ; preds = %.lr.ph130, %bb.i
  %.179 = phi i32 [ %i.ge, %bb.i ], [ %.078127, %.lr.ph130 ] ; 3 uses
  %indvars.iv.next144.1 = add nsw i64 %indvars.iv143, -2 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.1
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !120
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !120
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph130.1
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.1
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !120 ; 2 uses
  %i.gn = srem i32 %.179, %i.gm
  %i.go = add nsw i32 %i.gn, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gh
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !120
  %i.gq = sdiv i32 %.179, %i.gm
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph130.1
  %.179.1 = phi i32 [ %i.gq, %bb.j ], [ %.179, %.lr.ph130.1 ]
  %i.gr = icmp sgt i64 %indvars.iv143, 2
  br i1 %i.gr, label %.lr.ph130, label %._crit_edge131.loopexit, !llvm.loop !256

bb.l:                                             ; preds = %_ZNK3gmx11BasicVectorIiEneERKS1_.exit
  %i.gs = load i32, ptr %i.a, align 4, !tbaa !120
  %i.gt = zext nneg i8 %i.fo to i32
  %i.gu = extractelement <2 x i32> %i.fe, i64 0
  %i.gv = extractelement <2 x i32> %i.fe, i64 1
  %i.gw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.fs, ptr noundef nonnull @.str, i32 noundef %i.gs, i32 noundef %i.gu, i32 noundef %i.gv, i32 noundef %i.fc, i32 noundef %i.gt) #13 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK3gmx11BasicVectorIiEneERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.gx = load ptr, ptr %i.ao, align 8, !tbaa !258 ; 2 uses
  store ptr %i.gx, ptr %i.f, align 8, !tbaa !133
  %i.gy = load ptr, ptr %i.ap, align 8, !tbaa !126 ; 3 uses
  %i.gz = load ptr, ptr %i.aq, align 8, !tbaa !134
  %.not.i109 = icmp eq ptr %i.gy, %i.gz
  br i1 %.not.i109, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ha = load i32, ptr %i.b, align 4, !tbaa !120
  %i.hb = load i32, ptr %i.c, align 4, !tbaa !120
  %i.hc = load i32, ptr %i.a, align 4, !tbaa !120
  %i.hd = load i32, ptr %0, align 8, !tbaa !136
  %i.he = load i8, ptr %i.d, align 1, !tbaa !130, !range !137, !noundef !138
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = load <2 x i32>, ptr %i.e, align 8, !tbaa !120
  store <2 x i32> %i.hg, ptr %3, align 8, !tbaa !120
  %i.hh = load i32, ptr %i.as, align 8, !tbaa !120
  store i32 %i.hh, ptr %i.ar, align 8, !tbaa !120
  call void @_ZN3gmx14DomainPairCommC1EiiiRKNS_11BasicVectorIiEE7PbcTypebS2_P10tmpi_comm_(ptr noundef nonnull align 8 dereferenceable(240) %i.gy, i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef %i.hc, ptr noundef nonnull align 4 dereferenceable(12) %4, i32 noundef %i.hd, i1 noundef zeroext %i.hf, ptr noundef nonnull byval(%"class.gmx::BasicVector") align 8 %3, ptr noundef %i.gx)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hi = load ptr, ptr %i.ap, align 8, !tbaa !126
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 240
  store ptr %i.hj, ptr %i.ap, align 8, !tbaa !126
  br label %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE17_M_realloc_insertIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.gy, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit

_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.hk = add nuw nsw i32 %.077133, 1             ; 2 uses
  %exitcond150.not = icmp eq i32 %i.hk, %.074.lcssa181
  br i1 %exitcond150.not, label %._crit_edge135.loopexit, label %.lr.ph134, !llvm.loop !257

bb.p:                                             ; preds = %._crit_edge139
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12HaloExchange26checkDomainRangeAllocationERK12gmx_domdec_tRKNS_11BasicVectorIiEEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 328) #20
  unreachable

bb.q:                                             ; preds = %._crit_edge139
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %sext = shl i64 %i.az, 32
  %i.hm = ashr exact i64 %sext, 32                ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !141 ; 2 uses
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !142 ; 2 uses
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 5                 ; 3 uses
  %i.hu = icmp ult i64 %i.ht, %i.hm
  br i1 %i.hu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hv = sub nuw nsw i64 %i.hm, %i.ht
  call void @_ZNSt6vectorI12tmpi_status_SaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 noundef %i.hv)
  br label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit

bb.s:                                             ; preds = %bb.q
  %i.hw = icmp ugt i64 %i.ht, %i.hm
  br i1 %i.hw, label %bb.t, label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.hm ; 2 uses
  %.not.i.i = icmp eq ptr %i.ho, %i.hx
  br i1 %.not.i.i, label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP12tmpi_status_S0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP12tmpi_status_S0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.t
  store ptr %i.hx, ptr %i.hn, align 8, !tbaa !141
  br label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit

_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit: ; preds = %bb.a, %_ZSt8_DestroyIP12tmpi_status_S0_EvT_S2_RSaIT0_E.exit.i.i, %bb.t, %bb.s, %bb.r, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
