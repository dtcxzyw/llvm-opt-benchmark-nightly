Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/haloexchangesetup?download=true
inline.NumInlined: 706
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3gmx12HaloExchange5setupEP12gmx_domdec_tP7t_stateRK11gmx_ddbox_tP10t_forcerecb:bb.a

bb.cr:                                            ; preds = %._crit_edge322, %._crit_edge316
  %i.xk = load ptr, ptr %i.th, align 8, !tbaa !355
  invoke void @_ZN3gmx16nbnxn_atomdata_t18resizeForceBuffersEv(ptr noundef nonnull align 8 dereferenceable(656) %i.xk)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.xl = load ptr, ptr %11, align 8, !tbaa !304  ; 2 uses
  %.not.i.i191 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i191, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit192, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.xm = load ptr, ptr %i.cz, align 8, !tbaa !308 ; 2 uses
  %i.xn = ptrtoint ptr %i.xm to i64
  %i.xo = ptrtoint ptr %i.xl to i64
  %i.xp = sub i64 %i.xn, %i.xo                    ; 2 uses
  %i.xq = ashr exact i64 %i.xp, 3
  %i.xr = sub nsw i64 0, %i.xq
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.xm, i64 %i.xr
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xp) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit192

_ZNSt13_Bvector_baseISaIbEED2Ev.exit192:          ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  ret void

bb.cu:                                            ; preds = %bb.cr
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cv:                                            ; preds = %bb.bu, %bb.bv, %bb.bj, %bb.ch, %bb.cu, %bb.ce, %bb.bg, %bb.bd
  %.pn141 = phi { ptr, i32 } [ %i.nk, %bb.bg ], [ %i.mk, %bb.bd ], [ %i.pt, %bb.bv ], [ %i.oc, %bb.bj ], [ %i.xt, %bb.cu ], [ %i.tv, %bb.ce ], [ %i.up, %bb.ch ], [ %i.ps, %bb.bu ]
  %i.xu = load ptr, ptr %11, align 8, !tbaa !304  ; 2 uses
  %.not.i.i193 = icmp eq ptr %i.xu, null
  br i1 %.not.i.i193, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit194, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xv = load ptr, ptr %i.cz, align 8, !tbaa !308 ; 2 uses
  %i.xw = ptrtoint ptr %i.xv to i64
  %i.xx = ptrtoint ptr %i.xu to i64
  %i.xy = sub i64 %i.xw, %i.xx                    ; 2 uses
  %i.xz = ashr exact i64 %i.xy, 3
  %i.ya = sub nsw i64 0, %i.xz
  %i.yb = getelementptr inbounds [8 x i8], ptr %i.xv, i64 %i.ya
  call void @_ZdlPvm(ptr noundef %i.yb, i64 noundef %i.xy) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit194

_ZNSt13_Bvector_baseISaIbEED2Ev.exit194:          ; preds = %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  resume { ptr, i32 } %.pn141
}

declare void @_ZN3gmx18DomainCommBackward20getTargetZoneCornersERK12gmx_domdec_tPA3_KfRKNS_14DomainPairCommE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(1097), ptr noundef, ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #2

declare noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx12HaloExchange5setupEP12gmx_domdec_tP7t_stateRK11gmx_ddbox_tP10t_forcerecb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(65) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1792) %6, ptr noundef nonnull align 4 dereferenceable(200) %7, ptr noundef nonnull align 4 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(40) %9) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = sdiv exact i64 %i.k, 240
  %i.m = add nsw i64 %i.l, -1                     ; 3 uses
  %i.n = icmp sgt i64 %i.k, 0
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 %i.m, ptr %i.b, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 1, ptr %i.c, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !120
  %i.o = load i32, ptr %0, align 4, !tbaa !120    ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.o, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.p = load i64, ptr %i.b, align 8, !tbaa !166
  %i.q = call i64 @llvm.smin.i64(i64 %i.p, i64 %i.m) ; 3 uses
  store i64 %i.q, ptr %i.b, align 8, !tbaa !166
  %i.r = load i64, ptr %i.a, align 8, !tbaa !166  ; 2 uses
  %.not46 = icmp sgt i64 %i.r, %i.q
  br i1 %.not46, label %._crit_edge47, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 540
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 600
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 36
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge44
  %i.w = phi i64 [ %i.q, %.preheader.lr.ph ], [ %i.cb, %._crit_edge44 ] ; 2 uses
  %i.x = phi i64 [ %i.r, %.preheader.lr.ph ], [ %i.bz, %._crit_edge44 ] ; 3 uses
  %.not3541 = icmp sgt i64 %i.x, %i.w
  br i1 %.not3541, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader, %bb.e
  %.03342 = phi i64 [ %i.bv, %bb.e ], [ %i.x, %.preheader ] ; 3 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.z = getelementptr inbounds nuw [240 x i8], ptr %i.y, i64 %.03342 ; 3 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !168   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !119 ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %iter.check, label %.critedge

iter.check:                                       ; preds = %.lr.ph43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 180 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp ult i32 %i.ac, 32
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi56 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi57 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi58 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %wide.load = load <8 x i32>, ptr %i.ah, align 4, !tbaa !120
  %wide.load59 = load <8 x i32>, ptr %i.ai, align 4, !tbaa !120
  %wide.load60 = load <8 x i32>, ptr %i.aj, align 4, !tbaa !120
  %wide.load61 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !120
  %i.al = sext <8 x i32> %wide.load to <8 x i64>
  %i.am = sext <8 x i32> %wide.load59 to <8 x i64>
  %i.an = sext <8 x i32> %wide.load60 to <8 x i64>
  %i.ao = sext <8 x i32> %wide.load61 to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.af, <8 x i64> %i.al
  %wide.gep62 = getelementptr inbounds nuw [4 x i8], ptr %i.af, <8 x i64> %i.am
  %wide.gep63 = getelementptr inbounds nuw [4 x i8], ptr %i.af, <8 x i64> %i.an
  %wide.gep64 = getelementptr inbounds nuw [4 x i8], ptr %i.af, <8 x i64> %i.ao
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather65 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep62, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather66 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep63, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather67 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep64, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %wide.load68 = load <8 x i32>, ptr %i.ap, align 4, !tbaa !120
  %wide.load69 = load <8 x i32>, ptr %i.aq, align 4, !tbaa !120
  %wide.load70 = load <8 x i32>, ptr %i.ar, align 4, !tbaa !120
  %wide.load71 = load <8 x i32>, ptr %i.as, align 4, !tbaa !120
  %i.at = icmp sgt <8 x i32> %wide.masked.gather, %wide.load68
  %i.au = icmp sgt <8 x i32> %wide.masked.gather65, %wide.load69
  %i.av = icmp sgt <8 x i32> %wide.masked.gather66, %wide.load70
  %i.aw = icmp sgt <8 x i32> %wide.masked.gather67, %wide.load71
  %i.ax = or <8 x i1> %vec.phi, %i.at             ; 2 uses
  %i.ay = or <8 x i1> %vec.phi56, %i.au           ; 2 uses
  %i.az = or <8 x i1> %vec.phi57, %i.av           ; 2 uses
  %i.ba = or <8 x i1> %vec.phi58, %i.aw           ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !364

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.ay, %i.ax
  %bin.rdx72 = or <8 x i1> %i.az, %bin.rdx
  %bin.rdx73 = or <8 x i1> %i.ba, %bin.rdx72
  %bin.rdx73.fr = freeze <8 x i1> %bin.rdx73
  %i.bc = bitcast <8 x i1> %bin.rdx73.fr to i8
  %.not84 = icmp eq i8 %i.bc, 0                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not84, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %10 = xor i1 %bc.merge.rdx, true
  %n.vec74 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %10, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi76 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr85, %vec.epilog.vector.body ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index75
  %wide.load77 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !120
  %i.be = sext <4 x i32> %wide.load77 to <4 x i64>
  %wide.gep78 = getelementptr inbounds nuw [4 x i8], ptr %i.af, <4 x i64> %i.be
  %wide.masked.gather79 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep78, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !120
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index75
  %wide.load80 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !120
  %i.bg = icmp sgt <4 x i32> %wide.masked.gather79, %wide.load80
  %i.bh = or <4 x i1> %vec.phi76, %i.bg
  %.fr85 = freeze <4 x i1> %i.bh                  ; 2 uses
  %index.next81 = add nuw i64 %index75, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !365

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bj = bitcast <4 x i1> %.fr85 to i4
  %.not86 = icmp eq i4 %i.bj, 0                   ; 2 uses
  %cmp.n82 = icmp eq i64 %n.vec74, %wide.trip.count
  br i1 %cmp.n82, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec74, %vec.epilog.middle.block ]
  %.03238.ph = phi i1 [ true, %iter.check ], [ %.not84, %vec.epilog.iter.check ], [ %.not86, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %.not86, %vec.epilog.middle.block ], [ %.not84, %middle.block ], [ %spec.select, %vec.epilog.scalar.ph ]
  br i1 %spec.select.lcssa, label %.critedge, label %bb.d

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.03238 = phi i1 [ %spec.select, %vec.epilog.scalar.ph ], [ %.03238.ph, %vec.epilog.scalar.ph.preheader ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !120
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !120
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !120
  %i.br = icmp sle i32 %i.bo, %i.bq
  %spec.select = select i1 %i.br, i1 %.03238, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !366

.critedge:                                        ; preds = %.lr.ph43, %._crit_edge
  %i.bs = invoke noundef nonnull align 8 dereferenceable(372) ptr @_ZNK3gmx18nonbonded_verlet_t9localGridEv(ptr noundef nonnull align 8 dereferenceable(65) %5)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %.critedge
  %i.bt = load float, ptr %i.s, align 4, !tbaa !367
  %i.bu = load float, ptr %i.t, align 8, !tbaa !368
  invoke void @_ZN3gmx18DomainCommBackward15selectHaloAtomsERK12gmx_domdec_tRKNS_4GridEffPKiNS_8ArrayRefIKNS_11BasicVectorIfEEEERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(184) %i.z, ptr noundef nonnull align 8 dereferenceable(1097) %i.aa, ptr noundef nonnull align 8 dereferenceable(372) %i.bs, float noundef %i.bt, float noundef %i.bu, ptr noundef nonnull %i.u, ptr nonnull %8, ptr nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %bb.e unwind label %bb.g

bb.d:                                             ; preds = %._crit_edge
  invoke void @_ZN3gmx18DomainCommBackward5clearEv(ptr noundef nonnull align 8 dereferenceable(184) %i.z)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bv = add nsw i64 %.03342, 1
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !166 ; 2 uses
  %.not35.not = icmp slt i64 %.03342, %i.bw
  br i1 %.not35.not, label %.lr.ph43, label %._crit_edge44.loopexit

._crit_edge44.loopexit:                           ; preds = %bb.e
  %.pre = load i64, ptr %i.a, align 8, !tbaa !166
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %._crit_edge44.loopexit, %.preheader
  %i.bx = phi i64 [ %i.x, %.preheader ], [ %.pre, %._crit_edge44.loopexit ]
  %.lcssa36 = phi i64 [ %i.w, %.preheader ], [ %i.bw, %._crit_edge44.loopexit ]
  %i.by = load i64, ptr %i.c, align 8, !tbaa !166 ; 2 uses
  %i.bz = add nsw i64 %i.by, %i.bx                ; 3 uses
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !166
  %i.ca = add nsw i64 %i.by, %.lcssa36
  %i.cb = call i64 @llvm.smin.i64(i64 %i.ca, i64 %i.m) ; 3 uses
  store i64 %i.cb, ptr %i.b, align 8, !tbaa !166
  %.not = icmp sgt i64 %i.bz, %i.cb
  br i1 %.not, label %._crit_edge47, label %.preheader

._crit_edge47:                                    ; preds = %._crit_edge44, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge47, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d, %bb.c, %.critedge
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #22
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #13

declare void @_ZN3gmx18DomainCommBackward15selectHaloAtomsERK12gmx_domdec_tRKNS_4GridEffPKiNS_8ArrayRefIKNS_11BasicVectorIfEEEERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(1097), ptr noundef nonnull align 8 dereferenceable(372), float noundef, float noundef, ptr noundef, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(372) ptr @_ZNK3gmx18nonbonded_verlet_t9localGridEv(ptr noundef nonnull align 8 dereferenceable(65)) local_unnamed_addr #2

declare void @_ZN3gmx18DomainCommBackward5clearEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare !callback !250 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #13

declare void @_ZN3gmx17DomainCommForward5setupERKNS_18DomainCommBackwardEi(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !150    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !151
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not37.i = icmp ult i64 %i.n, %i.i
  br i1 %.not37.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i, ptr %i.a, align 8, !tbaa !165
  br label %_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
  unreachable

_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not13.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i
  %i.y = ptrtoaddr ptr %i.w to i64
  %i.z = add i64 %i.d, -4
  %i.aa = sub i64 %i.z, %i.e                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.aa, 28
  %i.ad = sub i64 %i.e, %i.y
  %diff.check = icmp ugt i64 %i.ad, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.aa, 124
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ac, 24
end_hunk_0
