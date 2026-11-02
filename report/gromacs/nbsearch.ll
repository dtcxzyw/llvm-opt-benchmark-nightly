Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nbsearch?download=true
inline.NumInlined: 744
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl5resetEi:bb.a
  tail call void @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i(ptr noundef nonnull align 8 dereferenceable(624) %i.z, ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, i32 noundef 1)
  %i.ba = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !91, !align !92
  tail call void @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i(ptr noundef nonnull align 8 dereferenceable(624) %i.ba, ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, i32 noundef 0)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !80, !range !94, !noundef !91
  %i.bd = trunc nuw i8 %i.bc to i1
  %.pre = load ptr, ptr %0, align 8, !tbaa !90    ; 9 uses
  br i1 %i.bd, label %bb.g, label %bb.r

bb.g:                                             ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.pre, i64 442
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre, i64 520 ; 2 uses
  %i.bg = load float, ptr %i.x, align 8, !tbaa !81
  %i.bh = tail call noundef float @llvm.floor.f32(float %i.bg)
  %i.bi = fptosi float %i.bh to i32               ; 3 uses
  %i.bj = load i8, ptr %i.be, align 1, !tbaa !46, !range !94, !noundef !91
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = icmp slt i32 %i.bi, 0
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load i32, ptr %i.bf, align 4, !tbaa !47
  %i.bn = add nsw i32 %i.bm, -1
  %spec.select.i12 = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.bn)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.1.i13 = phi i32 [ %i.bi, %bb.g ], [ %spec.select.i12, %bb.i ], [ 0, %bb.h ]
  %i.bo = load float, ptr %i.ac, align 4, !tbaa !81
  %i.bp = tail call noundef float @llvm.floor.f32(float %i.bo)
  %i.bq = fptosi float %i.bp to i32               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.pre, i64 443
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !46, !range !94, !noundef !91
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = icmp slt i32 %i.bq, 0
  br i1 %i.bu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre, i64 524
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47
  %i.bx = add nsw i32 %i.bw, -1
  %spec.select.1.i = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bx)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.1.i = phi i32 [ %i.bq, %bb.j ], [ %spec.select.1.i, %bb.l ], [ 0, %bb.k ]
  %i.by = load float, ptr %i.ad, align 8, !tbaa !81
  %i.bz = tail call noundef float @llvm.floor.f32(float %i.by)
  %i.ca = fptosi float %i.bz to i32               ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre, i64 444
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !46, !range !94, !noundef !91
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = icmp slt i32 %i.ca, 0
  br i1 %i.ce, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 528
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !47
  %i.ch = add nsw i32 %i.cg, -1
  %spec.select.2.i = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.ch)
  br label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit

_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.1.2.i = phi i32 [ %i.ca, %bb.m ], [ %spec.select.2.i, %bb.o ], [ 0, %bb.n ]
  %i.ci = load i32, ptr %i.bf, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 524
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !47
  %i.cl = mul i32 %i.ck, %.1.2.i
  %reass.add.i.i = add i32 %i.cl, %.1.1.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %i.ci
  %i.cm = add i32 %reass.mul.i.i, %.1.i13
  store i32 %i.cm, ptr %i.b, align 4, !tbaa !83
  br label %bb.r

bb.p:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.co = load float, ptr %i.w, align 4, !tbaa !81
  store float %i.co, ptr %i.cn, align 4, !tbaa !81
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !81
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.cq, ptr %i.cr, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !81
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.ct, ptr %i.cu, align 4, !tbaa !81
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !80, !range !94, !noundef !91
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %1, ptr %i.c, align 8, !tbaa !84
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit
  %i.cy = phi ptr [ %i.p, %bb.p ], [ %i.p, %bb.q ], [ %.pre, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit ], [ %.pre, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl16getGridCellIndexEPKf.exit ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !95 ; 4 uses
  %.not11 = icmp eq ptr %i.da, null
  br i1 %.not11, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !155
  %i.dd = sext i32 %i.o to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !47
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !96
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !67 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2
  %i.do = add nsw i64 %i.dn, -1
  %i.dp = icmp sgt i64 %i.do, %i.dg
  br i1 %i.dp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !67 ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.dj, i64 %i.dg ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !47
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.ds, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !47
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.dv, ptr %i.ea, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.dz, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 0, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 144) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN3gmx8internal34AnalysisNeighborhoodPairSearchImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !62     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #39
  unreachable

_ZNKSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #40 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !97
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !97
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !47
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !47
  br label %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit

_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit
  %i.z = add i64 %i.m, -16
  %i.aa = sub i64 %i.z, %i.e                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ac, 2305843009213693948     ; 3 uses
  %i.ad = shl i64 %n.vec, 4                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 4                       ; 3 uses
  %3 = or disjoint i64 %i.ag, 32                  ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ag
  %next.gep37 = getelementptr i8, ptr %i.p, i64 %3
  %next.gep.a = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  %next.gep37.a = getelementptr i8, ptr %i.c, i64 %3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %wide.vec = load <4 x ptr>, ptr %next.gep.a, align 8, !tbaa !97, !alias.scope !167
  %wide.vec41 = load <4 x ptr>, ptr %next.gep37.a, align 8, !tbaa !97, !alias.scope !167
  store <4 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !97, !alias.scope !166
  store <4 x ptr> %wide.vec41, ptr %next.gep37, align 8, !tbaa !97, !alias.scope !166
  store <4 x ptr> splat (ptr null), ptr %next.gep.a, align 8, !tbaa !97, !alias.scope !167
  store <4 x ptr> splat (ptr null), ptr %next.gep37.a, align 8, !tbaa !97, !alias.scope !167
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader69

.lr.ph.i.i.i.preheader69:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader69, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader69 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader69 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !97, !alias.scope !167
  store ptr null, ptr %i.ai, align 8, !tbaa !50, !alias.scope !167
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !97, !alias.scope !166
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !74, !alias.scope !167
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !160

_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEEC2ERKS3_.exit ], [ %i.ae, %middle.block ], [ %i.al, %.lr.ph.i.i.i ] ; 4 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 7 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.an = add i64 %i.d, -16
  %i.ao = sub i64 %i.an, %i.m                     ; 3 uses
  %i.ap = lshr i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check49 = icmp ult i64 %i.ao, 304
  br i1 %min.iters.check49, label %.lr.ph.i.i.i18.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i18.preheader
  %i.ar = and i64 %i.ao, -16                      ; 4 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = getelementptr i8, ptr %1, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = getelementptr i8, ptr %1, i64 8
  %i.ax = getelementptr i8, ptr %1, i64 %i.ar
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.ba = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %bound0 = icmp ult ptr %i.am, %i.av
  %bound1 = icmp ult ptr %1, %i.at
  %found.conflict = and i1 %bound0, %bound1
  %bound050 = icmp ult ptr %i.aw, %i.bb
  %bound151 = icmp ult ptr %i.az, %i.ay
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx = or i1 %found.conflict, %found.conflict52
  br i1 %conflict.rdx, label %.lr.ph.i.i.i18.preheader68, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck
  %n.vec54 = and i64 %i.aq, 2305843009213693948   ; 3 uses
  %i.bc = shl i64 %n.vec54, 4                     ; 2 uses
  %i.bd = getelementptr i8, ptr %i.am, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bc
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next63, %vector.body55 ] ; 2 uses
  %i.bf = shl i64 %index56, 4                     ; 3 uses
  %4 = or disjoint i64 %i.bf, 32                  ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.am, i64 %i.bf
  %next.gep64 = getelementptr i8, ptr %i.am, i64 %4
  %next.gep57 = getelementptr i8, ptr %1, i64 %i.bf ; 2 uses
  %next.gep58 = getelementptr i8, ptr %1, i64 %4  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %wide.vec67 = load <4 x ptr>, ptr %next.gep57, align 8, !tbaa !97, !alias.scope !169
  %wide.vec70 = load <4 x ptr>, ptr %next.gep58, align 8, !tbaa !97, !alias.scope !169
  store <4 x ptr> %wide.vec67, ptr %next.gep63, align 8, !tbaa !97, !alias.scope !168
  store <4 x ptr> %wide.vec70, ptr %next.gep64, align 8, !tbaa !97, !alias.scope !168
  store <4 x ptr> splat (ptr null), ptr %next.gep57, align 8, !tbaa !97, !alias.scope !169
  store <4 x ptr> splat (ptr null), ptr %next.gep58, align 8, !tbaa !97, !alias.scope !169
  %index.next63 = add nuw i64 %index56, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next63, %n.vec54
  br i1 %i.bg, label %middle.block64, label %vector.body55, !llvm.loop !164

middle.block64:                                   ; preds = %vector.body55
  %cmp.n65 = icmp eq i64 %i.aq, %n.vec54
  br i1 %cmp.n65, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18.preheader68

.lr.ph.i.i.i18.preheader68:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i18.preheader, %middle.block64
  %.012.i.i.i19.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i18.preheader ], [ %i.bd, %middle.block64 ]
  %.0911.i.i.i20.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.be, %middle.block64 ]
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader68, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.bk, %.lr.ph.i.i.i18 ], [ %.012.i.i.i19.ph, %.lr.ph.i.i.i18.preheader68 ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.bj, %.lr.ph.i.i.i18 ], [ %.0911.i.i.i20.ph, %.lr.ph.i.i.i18.preheader68 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.bi = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !97, !alias.scope !169
  store ptr null, ptr %i.bh, align 8, !tbaa !50, !alias.scope !169
  store <2 x ptr> %i.bi, ptr %.012.i.i.i19, align 8, !tbaa !97, !alias.scope !168
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !74, !alias.scope !169
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bj, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !165

_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %middle.block64, %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.am, %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bd, %middle.block64 ], [ %i.bk, %.lr.ph.i.i.i18 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !63
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #38
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx8internal34AnalysisNeighborhoodPairSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !62
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !88
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !63
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3gmx8internal30AnalysisNeighborhoodSearchImpl13initGridCellsEPA3_KfPbi(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 442 ; 2 uses
  %i.b = sitofp i32 %3 to float
  %.pre = load float, ptr %1, align 4, !tbaa !81  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 443
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert128 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 444
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.070 = phi float [ 0.000000e+00, %bb.a ], [ %i.an, %bb.j ] ; 6 uses
  %.068 = phi i32 [ 4, %bb.a ], [ %.161.2, %bb.j ]
  %i.i = fcmp olt float %.pre, %.070
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1, !tbaa !46
  %i.j = load i8, ptr %i.a, align 2, !tbaa !46, !range !94, !noundef !91
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread95, label %.thread136

bb.d:                                             ; preds = %bb.b
  %.pre124 = load i8, ptr %2, align 1, !tbaa !46, !range !94
  %.pre124.fr = freeze i8 %.pre124
  %i.l = trunc i8 %.pre124.fr to i1
  br i1 %i.l, label %.thread136, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %.thread136

.thread136:                                       ; preds = %bb.e, %bb.c, %bb.d
  %i.m = phi float [ %.pre, %bb.e ], [ 1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.d ] ; 3 uses
  %i.n = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.d ]
  %i.o = phi i32 [ 3, %bb.e ], [ 2, %bb.c ], [ 2, %bb.d ]
  %i.p = load float, ptr %i.c, align 4, !tbaa !81 ; 3 uses
  %i.q = fcmp olt float %i.p, %.070
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread136
  store i8 1, ptr %i.d, align 1, !tbaa !46
  %i.r = load i8, ptr %i.e, align 1, !tbaa !46, !range !94, !noundef !91
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.thread95, label %.thread141

bb.g:                                             ; preds = %.thread136
  %.pre126 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !46, !range !94
  %.pre126.fr = freeze i8 %.pre126
  %i.t = trunc i8 %.pre126.fr to i1               ; 2 uses
  %i.u = fmul float %i.m, %i.p
  %spec.select153 = select i1 %i.t, float %i.m, float %i.u
  br label %.thread141

.thread141:                                       ; preds = %bb.g, %bb.f
  %i.v = phi i1 [ %i.t, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.w = phi float [ %spec.select153, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %i.x = sext i1 %i.v to i32
  %.161.1 = add nsw i32 %i.o, %i.x
  %i.y = load float, ptr %i.f, align 4, !tbaa !81 ; 3 uses
  %i.z = fcmp olt float %i.y, %.070
  br i1 %i.z, label %bb.h, label %._crit_edge127

._crit_edge127:                                   ; preds = %.thread141
  %.pre129 = load i8, ptr %.phi.trans.insert128, align 1, !tbaa !46, !range !94
  %i.aa = trunc nuw i8 %.pre129 to i1
  br label %bb.i

bb.h:                                             ; preds = %.thread141
  store i8 1, ptr %i.g, align 1, !tbaa !46
  %i.ab = load i8, ptr %i.h, align 4, !tbaa !46, !range !94, !noundef !91
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.thread95, label %bb.i

bb.i:                                             ; preds = %._crit_edge127, %bb.h
  %i.ad = phi i1 [ %i.aa, %._crit_edge127 ], [ true, %bb.h ] ; 3 uses
  %i.ae = sext i1 %i.ad to i32
  %.161.2 = add nsw i32 %.161.1, %i.ae            ; 4 uses
  %i.af = icmp ne i32 %.161.2, 0
  %i.ag = icmp ne i32 %.161.2, %.068
  %or.cond78.not = and i1 %i.af, %i.ag
  br i1 %or.cond78.not, label %bb.j, label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.ah = fmul float %i.w, %i.y
  %.165.2 = select i1 %i.ad, float %i.w, float %i.ah
  %i.ai = fmul float %.165.2, 1.000000e+01
  %i.aj = fdiv float %i.ai, %i.b
  %i.ak = uitofp nneg i32 %.161.2 to double
  %i.al = fdiv double 1.000000e+00, %i.ak
  %i.am = fptrunc double %i.al to float
  %i.an = tail call noundef float @powf(float noundef %i.aj, float noundef %i.am) #35
  br label %bb.b

.preheader:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 520
  br i1 %i.n, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.ap = fdiv float %.pre, %.070
  %i.aq = fptosi float %i.ap to i32               ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 1)
  %i.ar = load i8, ptr %i.a, align 2, !tbaa !46, !range !94, !noundef !91
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = icmp slt i32 %i.aq, 3
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %.thread95, label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader
  %.053 = phi i32 [ %.sroa.speculated, %bb.k ], [ 1, %.preheader ] ; 2 uses
  store i32 %.053, ptr %i.ao, align 8, !tbaa !47
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = fdiv float %i.p, %.070
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.av, i32 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 443
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !46, !range !94, !noundef !91
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = icmp slt i32 %i.av, 3
  %or.cond.1 = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond.1, label %.thread95, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.053.1 = phi i32 [ %.sroa.speculated.1, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %i.ba = mul nuw nsw i32 %.053.1, %.053
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 %.053.1, ptr %i.bb, align 4, !tbaa !47
  br i1 %i.ad, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = fdiv float %i.y, %.070
  %i.bd = fptosi float %i.bc to i32               ; 2 uses
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !46, !range !94, !noundef !91
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = icmp slt i32 %i.bd, 3
  %or.cond.2 = select i1 %i.bg, i1 %i.bh, i1 false
end_hunk_0
begin_hunk_1_@_ZN3gmx20AnalysisNeighborhood4Impl9getSearchEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127  ; 2 uses
  %.not18 = icmp eq ptr %i.c, %i.e
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread
  %.sroa.09.019 = phi ptr [ %i.p, %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread ], [ %i.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 4 uses
  %.not.i.i5 = icmp eq ptr %i.g, null
  br i1 %.not.i.i5, label %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread, label %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit

_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit: ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i32, ptr %i.h monotonic, align 8
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread

bb.c:                                             ; preds = %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.l = load ptr, ptr %.sroa.09.019, align 8, !tbaa !129
  store ptr %i.l, ptr %0, align 8, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.m, align 8, !tbaa !50
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.k, align 4, !tbaa !47
  br label %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit

_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread: ; preds = %.lr.ph, %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !217

._crit_edge:                                      ; preds = %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.q = invoke noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #40
          to label %bb.f unwind label %bb.q       ; 7 uses

bb.f:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load float, ptr %i.r, align 8, !tbaa !136
  invoke void @_ZN3gmx8internal30AnalysisNeighborhoodSearchImplC1Ef(ptr noundef nonnull align 8 dereferenceable(624) %i.q, float noundef %i.s)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !50
  %i.u = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #40
          to label %bb.l unwind label %bb.h       ; 6 uses

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #35 ; 0 uses
  tail call void @_ZN3gmx8internal30AnalysisNeighborhoodSearchImplD1Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %i.q) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 624) #38
  invoke void @__cxa_rethrow() #39
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #36
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store i32 1, ptr %i.ab, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 1, ptr %i.ac, align 4, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.u, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.q, ptr %i.ad, align 8, !tbaa !138
  store ptr %i.u, ptr %i.t, align 8, !tbaa !50
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !139 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !140
  %.not.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.q, ptr %i.ae, align 8, !tbaa !129
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.u, ptr %i.ah, align 8, !tbaa !50
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 2, ptr %i.ab, align 8, !tbaa !47
  br label %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.aj = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !139
  br label %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit.i: ; preds = %bb.o, %bb.n
  %i.ak = phi ptr [ %.pre.i, %bb.o ], [ %i.ae, %bb.n ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.al, ptr %i.d, align 8, !tbaa !139
  br label %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit

bb.p:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit unwind label %bb.s

bb.q:                                             ; preds = %._crit_edge
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 624) #38
  br label %.body

bb.s:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #35
  br label %.body

_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit.i, %bb.p, %bb.e, %bb.d
  %i.ap = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #35 ; 0 uses
  ret void

.body:                                            ; preds = %bb.q, %bb.i, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %i.an, %bb.r ], [ %i.am, %bb.q ], [ %i.y, %bb.i ]
  %i.aq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #35 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal30AnalysisNeighborhoodSearchImplD1Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %i.b) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 624) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !141    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #39
  unreachable

_ZNKSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #40 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !97
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !97
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !47
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !47
  br label %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit

_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit
  %i.z = add i64 %i.m, -16
  %i.aa = sub i64 %i.z, %i.e                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ac, 2305843009213693948     ; 3 uses
  %i.ad = shl i64 %n.vec, 4                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 4                       ; 3 uses
  %3 = or disjoint i64 %i.ag, 32                  ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ag
  %next.gep37 = getelementptr i8, ptr %i.p, i64 %3
  %next.gep.a = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  %next.gep37.a = getelementptr i8, ptr %i.c, i64 %3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %wide.vec = load <4 x ptr>, ptr %next.gep.a, align 8, !tbaa !97, !alias.scope !229
  %wide.vec41 = load <4 x ptr>, ptr %next.gep37.a, align 8, !tbaa !97, !alias.scope !229
  store <4 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !97, !alias.scope !228
  store <4 x ptr> %wide.vec41, ptr %next.gep37, align 8, !tbaa !97, !alias.scope !228
  store <4 x ptr> splat (ptr null), ptr %next.gep.a, align 8, !tbaa !97, !alias.scope !229
  store <4 x ptr> splat (ptr null), ptr %next.gep37.a, align 8, !tbaa !97, !alias.scope !229
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader69

.lr.ph.i.i.i.preheader69:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader69, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader69 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader69 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !97, !alias.scope !229
  store ptr null, ptr %i.ai, align 8, !tbaa !50, !alias.scope !229
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !97, !alias.scope !228
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !129, !alias.scope !229
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !222

_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEC2ERKS3_.exit ], [ %i.ae, %middle.block ], [ %i.al, %.lr.ph.i.i.i ] ; 4 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 7 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.an = add i64 %i.d, -16
  %i.ao = sub i64 %i.an, %i.m                     ; 3 uses
  %i.ap = lshr i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check49 = icmp ult i64 %i.ao, 304
  br i1 %min.iters.check49, label %.lr.ph.i.i.i18.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i18.preheader
  %i.ar = and i64 %i.ao, -16                      ; 4 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = getelementptr i8, ptr %1, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = getelementptr i8, ptr %1, i64 8
  %i.ax = getelementptr i8, ptr %1, i64 %i.ar
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.ba = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %bound0 = icmp ult ptr %i.am, %i.av
  %bound1 = icmp ult ptr %1, %i.at
  %found.conflict = and i1 %bound0, %bound1
  %bound050 = icmp ult ptr %i.aw, %i.bb
  %bound151 = icmp ult ptr %i.az, %i.ay
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx = or i1 %found.conflict, %found.conflict52
  br i1 %conflict.rdx, label %.lr.ph.i.i.i18.preheader68, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck
  %n.vec54 = and i64 %i.aq, 2305843009213693948   ; 3 uses
  %i.bc = shl i64 %n.vec54, 4                     ; 2 uses
  %i.bd = getelementptr i8, ptr %i.am, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bc
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next63, %vector.body55 ] ; 2 uses
  %i.bf = shl i64 %index56, 4                     ; 3 uses
  %4 = or disjoint i64 %i.bf, 32                  ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.am, i64 %i.bf
  %next.gep64 = getelementptr i8, ptr %i.am, i64 %4
  %next.gep57 = getelementptr i8, ptr %1, i64 %i.bf ; 2 uses
  %next.gep58 = getelementptr i8, ptr %1, i64 %4  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %wide.vec67 = load <4 x ptr>, ptr %next.gep57, align 8, !tbaa !97, !alias.scope !231
  %wide.vec70 = load <4 x ptr>, ptr %next.gep58, align 8, !tbaa !97, !alias.scope !231
  store <4 x ptr> %wide.vec67, ptr %next.gep63, align 8, !tbaa !97, !alias.scope !230
  store <4 x ptr> %wide.vec70, ptr %next.gep64, align 8, !tbaa !97, !alias.scope !230
  store <4 x ptr> splat (ptr null), ptr %next.gep57, align 8, !tbaa !97, !alias.scope !231
  store <4 x ptr> splat (ptr null), ptr %next.gep58, align 8, !tbaa !97, !alias.scope !231
  %index.next63 = add nuw i64 %index56, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next63, %n.vec54
  br i1 %i.bg, label %middle.block64, label %vector.body55, !llvm.loop !226

middle.block64:                                   ; preds = %vector.body55
  %cmp.n65 = icmp eq i64 %i.aq, %n.vec54
  br i1 %cmp.n65, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18.preheader68

.lr.ph.i.i.i18.preheader68:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i18.preheader, %middle.block64
  %.012.i.i.i19.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i18.preheader ], [ %i.bd, %middle.block64 ]
  %.0911.i.i.i20.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.be, %middle.block64 ]
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader68, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.bk, %.lr.ph.i.i.i18 ], [ %.012.i.i.i19.ph, %.lr.ph.i.i.i18.preheader68 ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.bj, %.lr.ph.i.i.i18 ], [ %.0911.i.i.i20.ph, %.lr.ph.i.i.i18.preheader68 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.bi = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !97, !alias.scope !231
  store ptr null, ptr %i.bh, align 8, !tbaa !50, !alias.scope !231
  store <2 x ptr> %i.bi, ptr %.012.i.i.i19, align 8, !tbaa !97, !alias.scope !230
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !129, !alias.scope !231
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bj, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !227

_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %middle.block64, %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.am, %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bd, %middle.block64 ], [ %i.bk, %.lr.ph.i.i.i18 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !140
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #38
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !139
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20AnalysisNeighborhoodC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.b, align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 0, ptr %i.c, align 8, !tbaa !143
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i8 0, ptr %i.d, align 4, !tbaa !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(85) %i.a, i8 0, i64 68, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx20AnalysisNeighborhoodD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !146    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx20AnalysisNeighborhood4ImplESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx20AnalysisNeighborhood4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx20AnalysisNeighborhood4ImplEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN3gmx20AnalysisNeighborhood4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(85) dereferenceable(85) %i.a) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #38
  br label %_ZNSt10unique_ptrIN3gmx20AnalysisNeighborhood4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx20AnalysisNeighborhood4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN3gmx20AnalysisNeighborhood4ImplEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20AnalysisNeighborhood4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(85) dereferenceable(85) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %.not1011 = icmp eq ptr %i.b, %i.d
  br i1 %.not1011, label %_ZSt8_DestroyIPSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.q, %bb.c ], [ %i.d, %bb.a ]
  %.sroa.05.012 = phi ptr [ %i.r, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.012, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.thread, label %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit

.thread:                                          ; preds = %.lr.ph
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !60
  br label %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit2

_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 8
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.l = load atomic i32, ptr %i.i monotonic, align 8
  %i.m = sext i32 %i.l to i64
  br label %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit2

_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit2: ; preds = %.thread, %bb.b
  %i.n = phi ptr [ %i.k, %bb.b ], [ %i.h, %.thread ]
  %i.o = phi i64 [ %i.m, %bb.b ], [ 0, %.thread ]
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.15, i64 noundef %i.o) #37 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit, %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit2
  %i.q = phi ptr [ %i.e, %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit ], [ %.pre, %_ZNKSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit2 ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.012, i64 16 ; 2 uses
  %.not10 = icmp eq ptr %i.r, %i.q
  br i1 %.not10, label %._crit_edge, label %.lr.ph, !llvm.loop !232

._crit_edge:                                      ; preds = %bb.c
  %.pre14 = load ptr, ptr %i.a, align 8, !tbaa !141 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.pre14, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEEvPT_.exit.i.i.i ], [ %.pre14, %._crit_edge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.u, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !53
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #35, !inline_history !233
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #35, !inline_history !233
  br label %_ZSt8_DestroyISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEEvPT_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.g ], [ %i.ah, %bb.h ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.i, label %_ZSt8_DestroyISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEEvPT_.exit.i.i.i, !prof !57

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #35
  br label %_ZSt8_DestroyISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEEvPT_.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !234

_ZSt8_DestroyIPSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %bb.a, %_ZSt8_DestroyIPSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.ak = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %.pre14, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEESaIS4_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplEES4_EvT_S6_RSaIT0_E.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !140
end_hunk_1
