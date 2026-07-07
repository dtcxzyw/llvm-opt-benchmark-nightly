inline.NumInlined: 318
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6Assimp20ConvertListToStringsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_4listIS5_SaIS5_EEE:bb.a
.thread:                                          ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i13
  %i.aj = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %i.an = load i64, ptr %i.k, align 8
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.k, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.x

bb.l:                                             ; preds = %bb.h
  %i.aq = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr noundef nonnull @.str)
  br label %.loopexit

bb.m:                                             ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.ar = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.as = sub i64 %i.h, %i.ar
  %scevgep.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.as
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.at = phi i8 [ %i.q, %bb.m ], [ %.pre38, %bb.p ]
  %.0.i.i.i = phi ptr [ %.0.lcssa.i.i, %bb.m ], [ %i.au, %bb.p ] ; 3 uses
  switch i8 %i.at, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i [
    i8 32, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
    i8 10, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.f
  br i1 %.not.i.i.i, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  %.pre38 = load i8, ptr %i.au, align 1, !noalias !6
  br label %bb.n, !llvm.loop !3

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i: ; preds = %bb.o, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.n ], [ %scevgep.i.i.i, %bb.o ] ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i
  %storemerge.i = phi ptr [ %.0.lcssa.i.i.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i ], [ %i.aw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ] ; 4 uses
  %i.av = load i8, ptr %storemerge.i, align 1, !noalias !6
  switch i8 %i.av, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %bb.r
    i8 9, label %bb.r
    i8 13, label %bb.r
    i8 10, label %bb.r
    i8 0, label %bb.r
    i8 12, label %bb.r
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %bb.q, !llvm.loop !9

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.ax = ptrtoint ptr %storemerge.i to i64
  %i.ay = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  store ptr %i.i, ptr %2, align 8, !alias.scope !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !6
  store i64 %i.az, ptr %i.b, align 8, !noalias !6
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.r
  %i.bb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !alias.scope !6
  %i.bc = load i64, ptr %i.b, align 8, !noalias !6
  store i64 %i.bc, ptr %i.i, align 8, !alias.scope !6
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.r
  %i.bd = phi ptr [ %i.bb, %.noexc.i.i ], [ %i.i, %bb.r ] ; 2 uses
  switch i64 %i.az, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.be = load i8, ptr %.0.lcssa.i.i.i, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %.0.lcssa.i.i.i, i64 %i.az, i1 false)
  br label %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit

_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit:     ; preds = %._crit_edge.i.i.i, %bb.s, %bb.t
  %i.bf = load i64, ptr %i.b, align 8, !noalias !6 ; 2 uses
  store i64 %i.bf, ptr %i.j, align 8, !alias.scope !6
  %i.bg = load ptr, ptr %2, align 8, !alias.scope !6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !6
  %i.bi = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
          to label %.noexc unwind label %bb.w     ; 4 uses

.noexc:                                           ; preds = %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  store ptr %i.bk, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %2, align 8               ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.i
  br i1 %i.bm, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.u:                                             ; preds = %.noexc
  %i.bn = load i64, ptr %i.j, align 8             ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.bp, i1 false)
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.noexc
  store ptr %i.bl, ptr %i.bj, align 8
  %i.bq = load i64, ptr %i.i, align 8
  store i64 %i.bq, ptr %i.bk, align 8
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.u
  %i.br = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bn, %bb.u ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %i.br, ptr %i.bs, align 8
  store ptr %i.i, ptr %2, align 8
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %i.bt = load i64, ptr %i.k, align 8
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.k, align 8
  %i.bv = load ptr, ptr %2, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.i
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.bx = load i64, ptr %i.i, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.x

bb.w:                                             ; preds = %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %2, align 8               ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.i
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.w
  %i.cc = load i64, ptr %i.i, align 8
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

bb.x:                                             ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi ptr [ %i.ap, %.thread ], [ %storemerge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ce = load i8, ptr %.3, align 1               ; 2 uses
  %.not = icmp eq i8 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !10

.loopexit:                                        ; preds = %bb.x, %bb.a, %bb.l
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #2

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3) local_unnamed_addr #3 {
bb.a:
  store <2 x float> splat (float f0x51BA43B7), ptr %1, align 4
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store float f0x51BA43B7, ptr %.sroa.539.0..sroa_idx, align 4
  store <2 x float> splat (float f0xD1BA43B7), ptr %2, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float f0xD1BA43B7, ptr %.sroa.5.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.j = load float, ptr %i.i, align 4            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %4, align 4              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = load float, ptr %i.d, align 4
  %5 = load float, ptr %i.e, align 4
  %6 = fmul float %i.k, %5
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.j, float %6)
  %i.p = load float, ptr %i.f, align 4
  %7 = tail call float @llvm.fmuladd.f32(float %i.p, float %i.m, float %i.o)
  %i.q = load float, ptr %i.g, align 4
  %8 = fadd float %i.q, %7                        ; 4 uses
  %9 = load <8 x float>, ptr %3, align 4          ; 4 uses
  %10 = insertelement <2 x float> poison, float %i.k, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = shufflevector <8 x float> %9, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %13 = fmul <2 x float> %11, %12
  %14 = shufflevector <8 x float> %9, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %15 = insertelement <2 x float> poison, float %i.j, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %16, <2 x float> %13)
  %18 = shufflevector <8 x float> %9, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %19 = insertelement <2 x float> poison, float %i.m, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %20, <2 x float> %17)
  %22 = shufflevector <8 x float> %9, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %23 = fadd <2 x float> %21, %22                 ; 4 uses
  %24 = load <2 x float>, ptr %1, align 4         ; 2 uses
  %25 = fcmp olt <2 x float> %24, %23
  %26 = select <2 x i1> %25, <2 x float> %24, <2 x float> %23
  %i.r = load float, ptr %.sroa.539.0..sroa_idx, align 4 ; 2 uses
  %i.s = fcmp olt float %i.r, %8
  %i.t = select i1 %i.s, float %i.r, float %8
  store <2 x float> %26, ptr %1, align 4
  store float %i.t, ptr %.sroa.539.0..sroa_idx, align 4
  %27 = load <2 x float>, ptr %2, align 4         ; 2 uses
  %28 = fcmp olt <2 x float> %23, %27
  %29 = select <2 x i1> %28, <2 x float> %27, <2 x float> %23
  %i.u = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.v = fcmp olt float %8, %i.u
  %i.w = select i1 %i.v, float %i.u, float %8
  store <2 x float> %29, ptr %2, align 4
  store float %i.w, ptr %.sroa.5.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.a, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  store <2 x float> splat (float -1.000000e+10), ptr %3, align 4
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store float -1.000000e+10, ptr %.sroa.54.0..sroa_idx.i.i, align 4
  store <2 x float> splat (float 1.000000e+10), ptr %2, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store float 1.000000e+10, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %._ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit_crit_edge, label %.lr.ph.preheader.i

._ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit_crit_edge: ; preds = %bb.a
  %i.e = load <2 x float>, ptr %3, align 4
  %.pre30 = load float, ptr %.sroa.54.0..sroa_idx.i.i, align 4
  br label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.i ; 3 uses
  %i.g = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.h = load <2 x float>, ptr %i.f, align 4      ; 2 uses
  %i.i = fcmp olt <2 x float> %i.g, %i.h
  %i.j = select <2 x i1> %i.i, <2 x float> %i.g, <2 x float> %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load float, ptr %.sroa.5.0..sroa_idx.i.i, align 4 ; 2 uses
  %i.m = load float, ptr %i.k, align 4            ; 2 uses
  %i.n = fcmp olt float %i.l, %i.m
  %i.o = select i1 %i.n, float %i.l, float %i.m
  store <2 x float> %i.j, ptr %2, align 4
  store float %i.o, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.p = load <2 x float>, ptr %i.f, align 4      ; 2 uses
  %i.q = load <2 x float>, ptr %3, align 4        ; 2 uses
  %i.r = fcmp olt <2 x float> %i.p, %i.q
  %i.s = select <2 x i1> %i.r, <2 x float> %i.q, <2 x float> %i.p ; 2 uses
  %i.t = load float, ptr %i.k, align 4            ; 2 uses
  %i.u = load float, ptr %.sroa.54.0..sroa_idx.i.i, align 4 ; 2 uses
  %i.v = fcmp olt float %i.t, %i.u
  %i.w = select i1 %i.v, float %i.u, float %i.t   ; 2 uses
  store <2 x float> %i.s, ptr %3, align 4
  store float %i.w, ptr %.sroa.54.0..sroa_idx.i.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !12

_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit: ; preds = %.lr.ph.i
  %i.x = load <2 x float>, ptr %2, align 4
  %.pre31 = load float, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  br label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit

_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit: ; preds = %._ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit_crit_edge, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit
  %i.y = phi float [ 1.000000e+10, %._ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit_crit_edge ], [ %.pre31, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit ] ; 2 uses
  %i.z = phi float [ %.pre30, %._ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit_crit_edge ], [ %i.w, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit ]
  %i.aa = phi <2 x float> [ %i.e, %._ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit_crit_edge ], [ %i.s, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit ]
  %i.ab = phi <2 x float> [ splat (float 1.000000e+10), %._ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit_crit_edge ], [ %i.x, %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit ] ; 2 uses
  %i.ac = fsub float %i.z, %i.y
  %i.ad = fmul float %i.ac, 5.000000e-01
  %i.ae = fsub <2 x float> %i.aa, %i.ab
  %i.af = fmul <2 x float> %i.ae, splat (float 5.000000e-01)
  %i.ag = fadd <2 x float> %i.ab, %i.af
  %i.ah = fadd float %i.y, %i.ad
  store <2 x float> %i.ag, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ah, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp15FindSceneCenterEP7aiSceneR10aiVector3tIfES4_S4_(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_(ptr noundef %i.g, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %i.h = load i32, ptr %i.b, align 8
  %i.i = icmp ugt i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %i.i, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.c
  %i.k = load <2 x float>, ptr %3, align 4
  %.pre97 = load float, ptr %i.j, align 4
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.p
  %i.o = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.bf, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.q = phi float [ %.pre97, %.._crit_edge_crit_edge ], [ %i.bi, %._crit_edge.loopexit ]
  %i.r = phi <2 x float> [ %i.k, %.._crit_edge_crit_edge ], [ %i.p, %._crit_edge.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load float, ptr %i.s, align 4            ; 2 uses
  %i.u = fsub float %i.q, %i.t
  %i.v = fmul float %i.u, 5.000000e-01
  %i.w = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.x = fsub <2 x float> %i.r, %i.w
  %i.y = fmul <2 x float> %i.x, splat (float 5.000000e-01)
  %i.z = fadd <2 x float> %i.w, %i.y
  %i.aa = fadd float %i.t, %i.v
  store <2 x float> %i.z, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.aa, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.q

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.ab = load ptr, ptr %i.e, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext i32 %i.ah to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.15.0 = phi float [ -1.000000e+10, %.lr.ph.preheader.i.i ], [ %i.at, %.lr.ph.i.i ] ; 2 uses
  %.sroa.046.1 = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i.i ], [ %i.ar, %.lr.ph.i.i ] ; 2 uses
  %.sroa.067.1 = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i.i ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %.sroa.1586.0 = phi float [ 1.000000e+10, %.lr.ph.preheader.i.i ], [ %i.am, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load float, ptr %i.aj, align 4          ; 4 uses
  %i.al = fcmp olt float %.sroa.1586.0, %i.ak
  %i.am = select i1 %i.al, float %.sroa.1586.0, float %i.ak ; 2 uses
  %i.an = load <2 x float>, ptr %i.ai, align 4    ; 4 uses
  %i.ao = fcmp olt <2 x float> %.sroa.067.1, %i.an
  %i.ap = select <2 x i1> %i.ao, <2 x float> %.sroa.067.1, <2 x float> %i.an ; 2 uses
  %i.aq = fcmp olt <2 x float> %i.an, %.sroa.046.1
  %i.ar = select <2 x i1> %i.aq, <2 x float> %.sroa.046.1, <2 x float> %i.an ; 2 uses
  %i.as = fcmp olt float %i.ak, %.sroa.15.0
  %i.at = select i1 %i.as, float %.sroa.15.0, float %i.ak ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.15.1 = phi float [ -1.000000e+10, %bb.d ], [ %i.at, %.lr.ph.i.i ] ; 3 uses
  %.sroa.046.2 = phi <2 x float> [ splat (float -1.000000e+10), %bb.d ], [ %i.ar, %.lr.ph.i.i ] ; 2 uses
  %.sroa.067.2 = phi <2 x float> [ splat (float 1.000000e+10), %bb.d ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %.sroa.1586.1 = phi float [ 1.000000e+10, %bb.d ], [ %i.am, %.lr.ph.i.i ] ; 2 uses
  %i.au = load float, ptr %2, align 4
  %.sroa.067.0.vec.extract74 = extractelement <2 x float> %.sroa.067.2, i64 0 ; 2 uses
  %i.av = fcmp ogt float %i.au, %.sroa.067.0.vec.extract74
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit
  store float %.sroa.067.0.vec.extract74, ptr %2, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_.exit
  %i.aw = load float, ptr %i.l, align 4
  %.sroa.067.4.vec.extract83 = extractelement <2 x float> %.sroa.067.2, i64 1 ; 2 uses
  %i.ax = fcmp ogt float %i.aw, %.sroa.067.4.vec.extract83
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_0
