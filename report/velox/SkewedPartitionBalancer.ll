Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SkewedPartitionBalancer?download=true
inline.NumInlined: 1523
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook5velox20IndexedPriorityQueueIjLb1ESaIjESt4hashIjESt8equal_toIjEE3popEv:bb.a
  %i.ch = or i64 %i.cg, 128                       ; 3 uses
  %i.ci = add nuw nsw i64 %i.cf, %i.ce            ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ch, 1
  %i.ck = or disjoint i64 %i.cj, 1
  %i.cl = trunc nuw i64 %i.ch to i8
  %i.cm = insertelement <16 x i8> poison, i8 %i.cl, i64 0
  %i.cn = shufflevector <16 x i8> %i.cm, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.co = and i64 %i.cc, 255                      ; 2 uses
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = load ptr, ptr %i.ca, align 8, !tbaa !90
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %.023.i39.i.i.i = phi i64 [ %i.cp, %bb.k ], [ %i.dk, %bb.o ]
  %.025.i38.i.i.i = phi i64 [ %i.ci, %bb.k ], [ %i.dl, %bb.o ] ; 2 uses
  %i.cr = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i.i, i64 range(i64 0, 256) %i.co)
  %i.cs = getelementptr inbounds nuw [128 x i8], ptr %i.cq, i64 %i.cr ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cu, i32 0, i32 3, i32 1)
  %i.cv = load <16 x i8>, ptr %i.cs, align 16     ; 2 uses
  %i.cw = icmp eq <16 x i8> %i.cv, %i.cn
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = and i16 %i.cx, 16383
  %i.cz = zext nneg i16 %i.cy to i32
  %i.da = icmp ne ptr %i.cs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.db = extractelement <16 x i8> %i.cv, i64 15
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.m, %bb.l
  %.sroa.012.0.i.i.i = phi i32 [ %i.cz, %bb.l ], [ %i.de, %bb.m ] ; 4 uses
  %.not.i.i.i = icmp eq i32 %.sroa.012.0.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.i.i.i.i
  %i.dc = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i.i, i1 true)
  %i.dd = add nuw nsw i32 %.sroa.012.0.i.i.i, 16383
  %i.de = and i32 %i.dd, %.sroa.012.0.i.i.i
  %i.df = zext nneg i32 %i.dc to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.da)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !64
  %i.di = icmp eq i32 %i.bz, %i.dh
  br i1 %i.di, label %bb.p, label %.critedge.i.i.i.i, !prof !65, !llvm.loop !0

bb.n:                                             ; preds = %.critedge.i.i.i.i
  %i.dj = icmp eq i8 %i.db, 0
  br i1 %i.dj, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit, label %bb.o, !prof !65

bb.o:                                             ; preds = %bb.n
  %i.dk = add i64 %.023.i39.i.i.i, -1             ; 2 uses
  %i.dl = add i64 %i.ck, %.025.i38.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit, label %bb.l, !llvm.loop !1

bb.p:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.df
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKjiEEEEESC_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr nonnull %i.dm, i64 %i.df, i64 %i.ci, i64 %i.ch)
  %.pre = load ptr, ptr %i.bv, align 8, !tbaa !70
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit: ; preds = %bb.n, %bb.o, %bb.j, %bb.p
  %i.dn = phi ptr [ %.pre, %bb.p ], [ %i.bx, %bb.j ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !68 ; 3 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 2
  %i.du = trunc i64 %i.dt to i32
  %i.dv = add nsw i32 %i.du, -1
  %.not = icmp eq i32 %i.c, %i.dv
  br i1 %.not, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit._crit_edge, label %bb.q

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit._crit_edge: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !138
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre17 = load ptr, ptr %.phi.trans.insert16, align 8, !tbaa !138
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !tbaa !116
  br label %bb.r

bb.q:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit
  %i.dw = getelementptr inbounds i8, ptr %i.dp, i64 -4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15, !noalias !207
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !207
  store ptr %i.dw, ptr %2, align 8, !tbaa !93, !alias.scope !208, !noalias !207
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !207
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !64, !noalias !209
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.dy) ; 2 uses
  %i.ea = lshr i64 %i.dz, 24
  %i.eb = or i64 %i.ea, 128
  %i.ec = add nuw nsw i64 %i.dz, %i.dy
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE19tryEmplaceValueImplIjJRKSt21piecewise_construct_tSt5tupleIJRKjEESE_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISJ_ISF_iEEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.82") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 %i.ec, i64 %i.eb, ptr noundef nonnull align 4 dereferenceable(4) %i.dw, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !207
  %.sroa.03.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !140, !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15, !noalias !207
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 4
  store i32 %i.c, ptr %i.ed, align 4, !tbaa !64
  %i.ee = load ptr, ptr %i.do, align 8, !tbaa !93 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !64
  %i.eh = load ptr, ptr %i.bv, align 8, !tbaa !70
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.bw
  store i32 %i.eg, ptr %i.ei, align 4, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !141 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !55
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !99
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.bw
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !55
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !141 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !55
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !99
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.bw
  store i64 %i.eu, ptr %i.ew, align 8, !tbaa !55
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !93 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !64
  %i.fb = sext i32 %i.fa to i64
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fb
  store i32 %i.c, ptr %i.fd, align 4, !tbaa !64
  %i.fe = load i32, ptr %i.ez, align 4, !tbaa !64
  %i.ff = load ptr, ptr %i.h, align 8, !tbaa !115
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.bw
  store i32 %i.fe, ptr %i.fg, align 4, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit._crit_edge, %bb.q
  %i.fh = phi ptr [ %i.ey, %bb.q ], [ %.pre19, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit._crit_edge ]
  %i.fi = phi ptr [ %i.es, %bb.q ], [ %.pre17, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit._crit_edge ]
  %i.fj = phi ptr [ %i.el, %bb.q ], [ %.pre15, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit._crit_edge ]
  %i.fk = phi ptr [ %i.ee, %bb.q ], [ %i.dp, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIjiSt4hashIjESt8equal_toIjEvEEE5eraseERKj.exit._crit_edge ]
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -4
  store ptr %i.fl, ptr %i.do, align 8, !tbaa !68
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 -8
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !138
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fp = getelementptr inbounds i8, ptr %i.fi, i64 -8
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !138
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fr = getelementptr inbounds i8, ptr %i.fh, i64 -4
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !116
  ret i32 %i.bz
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox6common25SkewedPartitionRebalancer18findSkewedMinTasksEjRNS0_20IndexedPriorityQueueIjLb0ESaIjESt4hashIjESt8equal_toIjEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.20") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(152) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.i = zext i32 %2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 7 uses
  %i.m = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 5 uses
  %i.n = phi ptr [ %i.d, %.lr.ph ], [ %i.az, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 11 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.q = load i32, ptr %i.p, align 4, !tbaa !64
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 4 uses
  %i.u = icmp eq i32 %i.t, %2
  br i1 %i.u, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %i.y = zext i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !55
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = uitofp i64 %i.ab to double
  %i.ad = uitofp i64 %i.x to double
  %i.ae = fdiv double %i.ac, %i.ad                ; 2 uses
  %4 = fcmp ole double %i.ae, f0x3FE6666666666666
  %5 = fcmp uno double %i.ae, 0.000000e+00
  %or.cond = or i1 %4, %5
  br i1 %or.cond, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.o, ptr %0, align 8
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.af = invoke noundef i32 @_ZN8facebook5velox20IndexedPriorityQueueIjLb0ESaIjESt4hashIjESt8equal_toIjEE3popEv(ptr noundef nonnull align 8 dereferenceable(152) %3)
          to label %bb.e unwind label %.loopexit  ; 0 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.t, ptr %i.m, align 4, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !68
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.l to i64
  %i.ai = ptrtoint ptr %i.o to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775804
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.o, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.al = ashr exact i64 %i.aj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %i.ap = select i1 %i.an, i64 2305843009213693951, i64 %i.ao ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #25
          to label %.noexc20 unwind label %.loopexit ; 4 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store i32 %i.t, ptr %i.as, align 4, !tbaa !64
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %i.o, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc20
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.aj) #27
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.au, ptr %i.j, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap ; 2 uses
  store ptr %i.av, ptr %i.k, align 8, !tbaa !69
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.f
  %i.aw = phi ptr [ %i.av, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.l, %bb.f ] ; 2 uses
  %i.ax = phi ptr [ %i.au, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ay = phi ptr [ %i.ar, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.o, %bb.f ] ; 2 uses
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread, label %bb.b

_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread:   ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.b, %bb.c
  %i.bc = phi ptr [ %i.l, %bb.c ], [ %i.aw, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.l, %bb.b ]
  %i.bd = phi ptr [ %i.m, %bb.c ], [ %i.ax, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.m, %bb.b ] ; 2 uses
  %.lcssa = phi ptr [ %i.o, %bb.c ], [ %i.ay, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.o, %bb.b ] ; 4 uses
  store ptr %.lcssa, ptr %0, align 8
  %i.be = icmp eq ptr %.lcssa, %i.bd
  br i1 %i.be, label %._crit_edge, label %.lr.ph35

.lr.ph35:                                         ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 144
  br label %bb.k

._crit_edge:                                      ; preds = %bb.l, %bb.a, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit.thread
  ret void

bb.k:                                             ; preds = %.lr.ph35, %bb.l
  %.sroa.022.034 = phi ptr [ %.lcssa, %.lr.ph35 ], [ %i.bm, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bg = load i32, ptr %.sroa.022.034, align 4, !tbaa !64 ; 2 uses
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !64
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55
  %i.bl = invoke noundef zeroext i1 @_ZN8facebook5velox20IndexedPriorityQueueIjLb0ESaIjESt4hashIjESt8equal_toIjEE11addOrUpdateERKjl(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef %i.bk)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.022.034, i64 4 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bd
  br i1 %i.bn, label %._crit_edge, label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %i.bp = phi ptr [ %i.bc, %bb.m ], [ %i.l, %.loopexit ], [ %i.l, %.loopexit.split-lp ]
  %i.bq = phi ptr [ %.lcssa, %bb.m ], [ %i.o, %.loopexit ], [ %i.o, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i21 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6common25SkewedPartitionRebalancer18rebalancePartitionEjjRNS0_20IndexedPriorityQueueIjLb1ESaIjESt4hashIjESt8equal_toIjEEERNS3_IjLb0ES4_S6_S8_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK8facebook5velox6common25SkewedPartitionRebalancer19PartitionAssignment7taskIdsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.061.065, i64 4 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.061.065 = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.m = load i32, ptr %.sroa.061.065, align 4, !tbaa !64
  %.not = icmp eq i32 %i.m, %2
  br i1 %.not, label %.critedge48, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.a
  tail call void @_ZN8facebook5velox6common25SkewedPartitionRebalancer19PartitionAssignment9addTaskIdEj(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef %2)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.c
  %i.p = tail call noundef i32 @_ZNK8facebook5velox6common25SkewedPartitionRebalancer19PartitionAssignment4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.q = icmp ult i32 %i.p, 2
  br i1 %i.q, label %bb.c, label %bb.f, !prof !54

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.c
  %i.t = tail call noundef i32 @_ZNK8facebook5velox6common25SkewedPartitionRebalancer19PartitionAssignment4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !212
  store i32 %i.t, ptr %5, align 16, !tbaa !49, !noalias !212
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %i.u, align 16, !tbaa !49, !noalias !212
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.3, i64 11, i64 18, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !212
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common25SkewedPartitionRebalancer18rebalancePartitionEjjRNS0_20IndexedPriorityQueueIjLb1ESaIjESt4hashIjESt8equal_toIjEEERNS3_IjLb0ES4_S6_S8_EEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.3) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

end_hunk_0
