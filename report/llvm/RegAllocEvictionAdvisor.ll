Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegAllocEvictionAdvisor?download=true
inline.NumInlined: 742
inline.NumDeleted: 512
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm22DefaultEvictionAdvisor31canEvictInterferenceBasedOnCostERKNS_12LiveIntervalENS_10MCRegisterEbRNS_12EvictionCostERKNS_8SmallSetINS_8RegisterELj16ESt4lessIS8_EEE:bb.a
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !445 ; 2 uses
  %i.dk = load i32, ptr %i.dh, align 8, !tbaa !446
  %.not.i.i.i77 = icmp eq i32 %i.dj, %i.dk
  br i1 %.not.i.i.i77, label %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNK4llvm17RegisterClassInfo7computeEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(320) %i.cu, ptr noundef nonnull %i.dc) #19
  %.pre.i = load ptr, ptr %i.ar, align 8, !tbaa !439 ; 3 uses
  %.pre10.i = load ptr, ptr %i.as, align 8, !tbaa !272
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre10.i, i64 48
  %.pre11.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !14
  %.pre12.i = load ptr, ptr %.pre.i, align 8, !tbaa !444
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre14.i = load i32, ptr %.phi.trans.insert13.i, align 8, !tbaa !445
  %.sroa.0.0.copyload.i6.i.pre = load i32, ptr %i.bp, align 8, !tbaa !440 ; 2 uses
  %.pre178 = and i32 %.sroa.0.0.copyload.i6.i.pre, 2147483647
  %.pre180 = zext nneg i32 %.pre178 to i64
  br label %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit.i

_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit.i: ; preds = %bb.n, %bb.m
  %.pre-phi181 = phi i64 [ %.pre180, %bb.n ], [ %i.ck, %bb.m ] ; 2 uses
  %.sroa.0.0.copyload.i6.i = phi i32 [ %.sroa.0.0.copyload.i6.i.pre, %bb.n ], [ %.sroa.0.0.copyload.i75, %bb.m ]
  %i.dl = phi i32 [ %.pre14.i, %bb.n ], [ %i.dj, %bb.m ]
  %i.dm = phi ptr [ %.pre12.i, %bb.n ], [ %i.dg, %bb.m ]
  %i.dn = phi ptr [ %.pre11.i, %bb.n ], [ %i.cz, %bb.m ]
  %i.do = phi ptr [ %.pre.i, %bb.n ], [ %i.cu, %bb.m ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !454
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %.pre-phi181
  %.0.copyload.i.i.i.i.i.i7.i = load i64, ptr %i.dr, align 8
  %i.ds = and i64 %.0.copyload.i.i.i.i.i.i7.i, -5
  %i.dt = inttoptr i64 %i.ds to ptr               ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dv = load i16, ptr %i.du, align 4, !tbaa !441
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !446
  %.not.i.i8.i = icmp eq i32 %i.dl, %i.dy
  br i1 %.not.i.i8.i, label %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit9.i, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit.i
  tail call void @_ZNK4llvm17RegisterClassInfo7computeEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(320) %i.do, ptr noundef nonnull %i.dt) #19
  %.sroa.0.0.copyload.i78.pre.pre = load i32, ptr %i.bp, align 8, !tbaa !440 ; 2 uses
  %.pre182 = and i32 %.sroa.0.0.copyload.i78.pre.pre, 2147483647
  %.pre183 = zext nneg i32 %.pre182 to i64
  br label %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit9.i

_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit9.i: ; preds = %bb.o, %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit.i
  %.pre176.pre-phi = phi i64 [ %.pre183, %bb.o ], [ %.pre-phi181, %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit.i ]
  %.sroa.0.0.copyload.i78.pre = phi i32 [ %.sroa.0.0.copyload.i78.pre.pre, %bb.o ], [ %.sroa.0.0.copyload.i6.i, %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !454
  %i.eb = icmp ult i32 %i.dq, %i.ea
  %.pre171 = load ptr, ptr %i.l, align 8, !tbaa !455
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre171, i64 912
  %.pre173 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %_ZNK4llvm23RegAllocEvictionAdvisor16isUrgentEvictionERKNS_12LiveIntervalES3_.exit

_ZNK4llvm23RegAllocEvictionAdvisor16isUrgentEvictionERKNS_12LiveIntervalES3_.exit: ; preds = %bb.k, %bb.l, %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit9.i
  %.pre-phi177 = phi i64 [ %i.ck, %bb.k ], [ %i.ck, %bb.l ], [ %.pre176.pre-phi, %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit9.i ] ; 2 uses
  %i.ec = phi ptr [ %i.cl, %bb.k ], [ %i.cl, %bb.l ], [ %.pre173, %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit9.i ]
  %.sroa.0.0.copyload.i78 = phi i32 [ %.sroa.0.0.copyload.i75, %bb.k ], [ %.sroa.0.0.copyload.i75, %bb.l ], [ %.sroa.0.0.copyload.i78.pre, %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit9.i ]
  %i.ed = phi i1 [ false, %bb.k ], [ true, %bb.l ], [ %i.eb, %_ZNK4llvm17RegisterClassInfo21getNumAllocatableRegsEPKNS_15MCRegisterClassE.exit9.i ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.pre-phi177
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !466 ; 2 uses
  %i.eh = icmp eq i32 %.0.i, %i.eg
  br i1 %i.eh, label %.thread, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm23RegAllocEvictionAdvisor16isUrgentEvictionERKNS_12LiveIntervalES3_.exit
  %i.ei = icmp ult i32 %.0.i, %i.eg
  br i1 %i.ei, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.ed, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ej = load ptr, ptr %i.as, align 8, !tbaa !272
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !14
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %.pre-phi177
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.em, align 8
  %i.en = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 22
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !461
  %i.er = zext i8 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.er, 10
  %i.et = add i32 %i.es, %.sroa.0102.1156
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sroa.0102.2 = phi i32 [ %i.et, %bb.r ], [ %.sroa.0102.1156, %bb.p ] ; 2 uses
  %i.eu = load ptr, ptr %i.at, align 8, !tbaa !249
  %i.ev = tail call noundef zeroext i1 @_ZNK4llvm10VirtRegMap16hasPreferredPhysENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(128) %i.eu, i32 %.sroa.0.0.copyload.i78) #19 ; 2 uses
  br i1 %i.ev, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ew = load ptr, ptr %i.as, align 8, !tbaa !272
  %.sroa.0.0.copyload.i81 = load i32, ptr %i.bp, align 8, !tbaa !440
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.ey = and i32 %.sroa.0.0.copyload.i81, 2147483647
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !14
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.ez
  %.0.copyload.i.i.i.i.i.i82 = load i64, ptr %i.fb, align 8
  %i.fc = and i64 %.0.copyload.i.i.i.i.i.i82, -5
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 22
  %i.ff = load i8, ptr %i.fe, align 2, !tbaa !461
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add i32 %.sroa.0102.2, %i.fg
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.0102.3 = phi i32 [ %i.fh, %bb.t ], [ %.sroa.0102.2, %bb.s ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bo, i64 116
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !416 ; 3 uses
  %i.fk = fcmp olt float %.sroa.9106.1158, %i.fj
  %.sroa.speculated = select i1 %i.fk, float %i.fj, float %.sroa.9106.1158 ; 3 uses
  %i.fl = load i32, ptr %4, align 4, !tbaa !440   ; 3 uses
  %i.fm = icmp ult i32 %.sroa.0102.3, %i.fl
  br i1 %i.fm, label %_ZNK4llvm12EvictionCostgeERKS0_.exit.thread114, label %bb.v

_ZNK4llvm12EvictionCostgeERKS0_.exit.thread114:   ; preds = %bb.u
  br i1 %i.ed, label %bb.ac, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fn = icmp ult i32 %i.fl, %.sroa.0102.3
  br i1 %i.fn, label %.thread, label %_ZNK4llvm12EvictionCostgeERKS0_.exit

_ZNK4llvm12EvictionCostgeERKS0_.exit:             ; preds = %bb.v
  %i.fo = load float, ptr %i.au, align 4, !tbaa !438
  %i.fp = fcmp uge float %.sroa.speculated, %i.fo
  %cond.fr = freeze i1 %i.fp
  br i1 %cond.fr, label %.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK4llvm12EvictionCostgeERKS0_.exit
  br i1 %i.ed, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm12EvictionCostgeERKS0_.exit.thread114, %bb.w
  %i.fq = load ptr, ptr %i.l, align 8, !tbaa !455, !nonnull !22, !align !172
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 912
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bp, align 8, !tbaa !440
  %i.fs = and i32 %.sroa.0.0.copyload.i.i.i, 2147483647
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !14
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !456
  %i.fx = icmp slt i32 %i.fw, 4
  %or.cond.i = and i1 %3, %i.fx
  %i.fy = load float, ptr %i.ap, align 4
  %i.fz = fcmp ogt float %i.fy, %i.fj
  %.not.i83 = xor i1 %i.ev, true
  %not.or.cond3.i = and i1 %or.cond.i, %.not.i83
  %.0.i84 = select i1 %not.or.cond3.i, i1 true, i1 %i.fz
  br i1 %.0.i84, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.ga = icmp ne i32 %i.fl, -1
  %or.cond = and i1 %i.k, %i.ga
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.gb = load ptr, ptr %i.av, align 8, !tbaa !465
  %i.gc = tail call noundef ptr @_ZNK4llvm13LiveIntervals18intervalIsInOneMBBERKNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424) %i.gb, ptr noundef nonnull align 8 dereferenceable(120) %i.bo) #19
  %.not74 = icmp eq ptr %i.gc, null
  br i1 %.not74, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gd = load i8, ptr %i.aw, align 8, !tbaa !415, !range !21, !noundef !22
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.gf = tail call noundef zeroext i1 @_ZNK4llvm23RegAllocEvictionAdvisor11canReassignERKNS_12LiveIntervalENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.bo, i32 %2) #19
  br i1 %i.gf, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.y, %bb.z, %bb.ab, %bb.w, %_ZNK4llvm12EvictionCostgeERKS0_.exit.thread114
  %.not147 = icmp eq ptr %i.bn, %i.bk
  br i1 %.not147, label %_ZN4llvm17MCRegUnitIteratorppEv.exit, label %.lr.ph

_ZN4llvm17MCRegUnitIteratorppEv.exit:             ; preds = %bb.ac, %bb.g
  %.sroa.0102.1.lcssa = phi i32 [ %.sroa.0102.0161, %bb.g ], [ %.sroa.0102.3, %bb.ac ] ; 2 uses
  %.sroa.9106.1.lcssa = phi float [ %.sroa.9106.0164, %bb.g ], [ %.sroa.speculated, %bb.ac ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.595.0163, i64 2
  %i.gh = load i16, ptr %.sroa.595.0163, align 2, !tbaa !515 ; 2 uses
  %i.gi = sext i16 %i.gh to i32
  %i.gj = add i32 %.sroa.9.0162, %i.gi
  %.not.i.i85 = icmp eq i16 %i.gh, 0
  br i1 %.not.i.i85, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit, %bb.d
  %.sroa.0102.0.lcssa = phi i32 [ 0, %bb.d ], [ %.sroa.0102.1.lcssa, %_ZN4llvm17MCRegUnitIteratorppEv.exit ]
  %.sroa.9106.0.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %.sroa.9106.1.lcssa, %_ZN4llvm17MCRegUnitIteratorppEv.exit ]
  store i32 %.sroa.0102.0.lcssa, ptr %4, align 4
  %.sroa_idx101 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %.sroa.9106.0.lcssa, ptr %.sroa_idx101, align 4
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm17LiveIntervalUnion5Query16interferingVRegsEj.exit, %_ZNK4llvm12EvictionCostgeERKS0_.exit, %bb.v, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5countERKS1_.exit.thread, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5countERKS1_.exit, %_ZNK4llvm23RegAllocEvictionAdvisor16isUrgentEvictionERKNS_12LiveIntervalES3_.exit, %bb.q, %bb.aa, %bb.x, %bb.ab, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5vfindERKS1_.exit.i.i, %._crit_edge, %bb.a
  %.9 = phi i1 [ false, %bb.a ], [ true, %._crit_edge ], [ false, %_ZNK4llvm12EvictionCostgeERKS0_.exit ], [ false, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5vfindERKS1_.exit.i.i ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.aa ], [ false, %bb.q ], [ false, %_ZNK4llvm23RegAllocEvictionAdvisor16isUrgentEvictionERKNS_12LiveIntervalES3_.exit ], [ false, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5countERKS1_.exit ], [ false, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5countERKS1_.exit.thread ], [ false, %bb.v ], [ false, %_ZN4llvm17LiveIntervalUnion5Query16interferingVRegsEj.exit ]
  ret i1 %.9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef i32 @_ZN4llvm13LiveRegMatrix17checkInterferenceERKNS_12LiveIntervalENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(120), i32) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm13LiveIntervals18intervalIsInOneMBBERKNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(172) ptr @_ZN4llvm13LiveRegMatrix5queryERKNS_9LiveRangeENS_9MCRegUnitE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm10VirtRegMap16hasPreferredPhysENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(128), i32) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm23RegAllocEvictionAdvisor11canReassignERKNS_12LiveIntervalENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(120), i32) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 65536) i32 @_ZNK4llvm22DefaultEvictionAdvisor24tryFindEvictionCandidateERKNS_12LiveIntervalERKNS_15AllocationOrderEhRKNS_8SmallSetINS_8RegisterELj16ESt4lessIS8_EEE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(76) %2, i8 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(128) %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EvictionCost", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !459
  store i32 -1, ptr %5, align 4, !tbaa !462
  %i.b = zext i8 %3 to i32                        ; 2 uses
  %i.c = tail call i64 @_ZNK4llvm23RegAllocEvictionAdvisor13getOrderLimitERKNS_12LiveIntervalERKNS_15AllocationOrderEj(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(76) %2, i32 noundef %i.b) #19 ; 2 uses
  %.sroa.026.0.extract.trunc = trunc i64 %i.c to i32
  %i.d = and i64 %i.c, 4294967296
  %.not36 = icmp eq i64 %i.d, 0
  br i1 %.not36, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %3, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %5, align 4, !tbaa !462
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.f = load float, ptr %i.e, align 4, !tbaa !416
  store float %i.f, ptr %i.a, align 4, !tbaa !459
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !516
  %i.i = trunc i64 %i.h to i32
  %i.j = sub nsw i32 0, %i.i                      ; 2 uses
  %i.k = tail call { ptr, i32 } @_ZNK4llvm15AllocationOrder16getOrderLimitEndEj(ptr noundef nonnull align 8 dereferenceable(76) %2, i32 noundef %.sroa.026.0.extract.trunc)
  %.fca.1.extract = extractvalue { ptr, i32 } %i.k, 1 ; 2 uses
  %.not3760 = icmp eq i32 %.fca.1.extract, %i.j
  br i1 %.not3760, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph63, %_ZN4llvm15AllocationOrder8IteratorppEv.exit
  %.sroa.522.062 = phi i32 [ %i.j, %.lr.ph63 ], [ %.sroa.522.3, %_ZN4llvm15AllocationOrder8IteratorppEv.exit ] ; 5 uses
  %.sroa.028.061 = phi i32 [ 0, %.lr.ph63 ], [ %.sroa.028.1.ph, %_ZN4llvm15AllocationOrder8IteratorppEv.exit ] ; 2 uses
  %i.n = icmp slt i32 %.sroa.522.062, 0           ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !517
  %i.p = load i64, ptr %i.g, align 8, !tbaa !516
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.p
  %i.r = sext i32 %.sroa.522.062 to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.r
  br label %_ZNK4llvm15AllocationOrder8IteratordeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %.sroa.522.062 to i64
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !518
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.t
  br label %_ZNK4llvm15AllocationOrder8IteratordeEv.exit

_ZNK4llvm15AllocationOrder8IteratordeEv.exit:     ; preds = %bb.f, %bb.g
  %.sroa.0.0.in.in.i = phi ptr [ %i.s, %bb.f ], [ %i.v, %bb.g ]
  %.sroa.0.0.in.i = load i16, ptr %.sroa.0.0.in.in.i, align 2, !tbaa !515
  %.sroa.0.0.i = zext i16 %.sroa.0.0.in.i to i32  ; 4 uses
  %i.w = tail call noundef zeroext i1 @_ZNK4llvm23RegAllocEvictionAdvisor18canAllocatePhysRegEjNS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(89) %0, i32 noundef %i.b, i32 %.sroa.0.0.i) #19
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm15AllocationOrder8IteratordeEv.exit
  %i.x = call noundef zeroext i1 @_ZNK4llvm22DefaultEvictionAdvisor31canEvictInterferenceBasedOnCostERKNS_12LiveIntervalENS_10MCRegisterEbRNS_12EvictionCostERKNS_8SmallSetINS_8RegisterELj16ESt4lessIS8_EEE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 %.sroa.0.0.i, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(128) %4) ; 2 uses
  %brmerge.not = and i1 %i.n, %i.x
  %.sroa.028.0.mux = select i1 %i.x, i32 %.sroa.0.0.i, i32 %.sroa.028.061
  br i1 %brmerge.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK4llvm15AllocationOrder8IteratordeEv.exit
  %.sroa.028.1.ph = phi i32 [ %.sroa.028.061, %_ZNK4llvm15AllocationOrder8IteratordeEv.exit ], [ %.sroa.028.0.mux, %bb.h ] ; 2 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !520  ; 5 uses
  %i.z = icmp slt i32 %.sroa.522.062, %i.y
  %i.aa = zext i1 %i.z to i32
  %spec.select = add nsw i32 %.sroa.522.062, %i.aa ; 8 uses
  %i.ab = icmp sgt i32 %spec.select, -1
  %i.ac = icmp slt i32 %spec.select, %i.y
  %or.cond13.i = and i1 %i.ab, %i.ac
  br i1 %or.cond13.i, label %.lr.ph.i, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !518 ; 3 uses
  %i.ae = zext nneg i32 %spec.select to i64       ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !515 ; 3 uses
  %.not.i47 = icmp eq i16 %i.ag, 0
  br i1 %.not.i47, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.ah = load ptr, ptr %2, align 8, !tbaa !517   ; 8 uses
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !516 ; 4 uses
  %.idx4.i.i.i = shl nuw nsw i64 %i.ai, 1         ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx4.i.i.i ; 2 uses
  %i.ak = lshr i64 %i.ai, 2                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = and i64 %.idx4.i.i.i, 9223372036854775800
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ah, i64 %i.al ; 5 uses
  %i.am = and i64 %i.ai, 3
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  br label %._crit_edge.i.i.i.i.i.i.us

._crit_edge.i.i.i.i.i.i.us:                       ; preds = %bb.j, %.lr.ph.split.us
  %i.ao = phi i16 [ %i.ag, %.lr.ph.split.us ], [ %i.aq, %bb.j ] ; 3 uses
  %indvars.iv.i50.us = phi i64 [ %i.ae, %.lr.ph.split.us ], [ %indvars.iv.next.i.us, %bb.j ]
  %.sroa.522.248.us = phi i32 [ %spec.select, %.lr.ph.split.us ], [ %i.ay, %bb.j ] ; 2 uses
  switch i64 %i.ai, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.us
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.us
  ]

bb.j:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.next.i.us
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !515 ; 2 uses
  %.not.i.us = icmp eq i16 %i.aq, 0
  br i1 %.not.i.us, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %._crit_edge.i.i.i.i.i.i.us, !llvm.loop !522

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.us
  %i.ar = load i16, ptr %i.ah, align 2, !tbaa !515
  %i.as = icmp eq i16 %i.ao, %i.ar
  br i1 %i.as, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us, label %._crit_edge._crit_edge.i.i.i.i.i.i.us

._crit_edge._crit_edge.i.i.i.i.i.i.us:            ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.us
  %.1.i.i.i.i.i.i.us = phi ptr [ %i.ah, %._crit_edge.i.i.i.i.i.i.us ], [ %i.an, %bb.k ] ; 3 uses
  %i.at = load i16, ptr %.1.i.i.i.i.i.i.us, align 2, !tbaa !515
  %i.au = icmp eq i16 %i.ao, %i.at
  br i1 %i.au, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us, label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.us
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.us, i64 2
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.us

._crit_edge._crit_edge52.i.i.i.i.i.i.us:          ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i.us
  %.2.i.i.i.i.i.i.us = phi ptr [ %i.av, %bb.l ], [ %i.ah, %._crit_edge.i.i.i.i.i.i.us ] ; 2 uses
  %i.aw = load i16, ptr %.2.i.i.i.i.i.i.us, align 2, !tbaa !515
  %i.ax = icmp eq i16 %i.ao, %i.aw
  br i1 %i.ax, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us: ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i.us, %._crit_edge._crit_edge.i.i.i.i.i.i.us, %bb.k
  %.028.i.i.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.i.i.us, %._crit_edge._crit_edge.i.i.i.i.i.i.us ], [ %i.ah, %bb.k ], [ %.2.i.i.i.i.i.i.us, %._crit_edge._crit_edge52.i.i.i.i.i.i.us ]
  %.not4.i.us = icmp eq ptr %.028.i.i.i.i.i.i.us, %i.aj
  br i1 %.not4.i.us, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i50.us, 1 ; 3 uses
  %i.ay = trunc nuw i64 %indvars.iv.next.i.us to i32 ; 3 uses
  %i.az = icmp sgt i32 %i.y, %i.ay
  br i1 %i.az, label %bb.j, label %._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge, !llvm.loop !522

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i, i64 2
  br label %.lr.ph.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !515 ; 2 uses
  %.not.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !522

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.split, %bb.n
  %i.bd = phi i16 [ %i.ag, %.lr.ph.split ], [ %i.bc, %bb.n ] ; 7 uses
  %indvars.iv.i50 = phi i64 [ %i.ae, %.lr.ph.split ], [ %indvars.iv.next.i, %bb.n ]
  %.sroa.522.248 = phi i32 [ %spec.select, %.lr.ph.split ], [ %i.cc, %bb.n ] ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.bp, %bb.s ] ; 9 uses
  %i.be = load i16, ptr %.02946.i.i.i.i.i.i, align 2, !tbaa !515
  %i.bf = icmp eq i16 %i.bd, %i.be
  br i1 %i.bf, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !515
  %i.bi = icmp eq i16 %i.bd, %i.bh
end_hunk_0
